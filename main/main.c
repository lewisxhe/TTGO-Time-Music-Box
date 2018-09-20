// Copyright 2015-2016 Espressif Systems (Shanghai) PTE LTD
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at

//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "nvs.h"
#include "nvs_flash.h"
#include "esp_system.h"
#include "esp_log.h"

#include "esp_bt.h"
#include "bt_app_core.h"
#include "bt_app_av.h"
#include "esp_bt_main.h"
#include "esp_bt_device.h"
#include "esp_gap_bt_api.h"
#include "esp_a2dp_api.h"
#include "esp_avrc_api.h"
#include "driver/i2s.h"
#include "freertos/event_groups.h"
#include "tftspi.h"
#include "tft.h"
#include "wifi.h"
#include <time.h>
#include <sys/time.h>
#include "apps/sntp/sntp.h"

#include <sys/types.h>
#include <sys/socket.h>
#include <unistd.h>
#include <fcntl.h>
#include <arpa/inet.h>
#include <netinet/in.h>
#include <netdb.h>

#include "esp_vfs_fat.h"
#include "driver/sdmmc_host.h"
#include "driver/sdspi_host.h"
#include "sdmmc_cmd.h"

#define TAG "[main]"

// ets_printf("err_code : %d file: \"%s\" line %d\nfunc: %s\nexpression: %s\ninfo:%s\n", code, __FILE__, __LINE__, __ASSERT_FUNC, info);
#define APP_ERROR_CHECK(code, info, go)                                                                 \
    do                                                                                                  \
    {                                                                                                   \
        if (code)                                                                                       \
        {                                                                                               \
            ets_printf("err_code : %d file: \"%s\" line %d info:%s\n", code, __FILE__, __LINE__, info); \
            go;                                                                                         \
        }                                                                                               \
    } while (0)

#define SD_ROOT "/sdcard"
#define BIJINT_SERVER "www.bijint.com"
#define BIJINT_PORT 80
#define HTTP_REQUEST_RETRY_COUNT 5

// ==========================================================
// Define which spi bus to use TFT_VSPI_HOST or TFT_HSPI_HOST
#define SPI_BUS TFT_VSPI_HOST
// ==========================================================
#define MARGIN_X 12
#define MARGIN_Y 12

static char http_buf[1024];
static const char *HTTP_REQUEST =
    // "GET /assets/toppict/jp/t1/%.2d%.2d.jpg HTTP/1.1\r\n"
    // "GET /assets/pict/jp/pc/%.2d%.2d.jpg HTTP/1.1\r\n"
    // "GET /assets/pict/hiroshima/pc/%.2d%.2d.jpg HTTP/1.1\r\n"
    "GET /assets/pict/kids-fo/pc/%.2d%.2d.jpg HTTP/1.1\r\n"
    "Host: " BIJINT_SERVER "\r\n"
    "User-Agent: esp-idf/3.1 espressif-esp32\r\n"
    "Accept: image/webp,image/apng,image/*,*/*;q=0.8\r\n"
    "Referer: http://" BIJINT_SERVER "/\r\n"
    "\r\n";

static time_t now = 0;
static struct tm timeinfo = {0};
static SemaphoreHandle_t xDisplaySemaphore = NULL;
static SemaphoreHandle_t xHttpSemaphore = NULL;
static TimerHandle_t xTimer = NULL;
static char recv_buf[1024];
static QueueHandle_t xQueue = NULL;

/* event for handler "bt_av_hdl_stack_up */
enum
{
    BT_APP_EVT_STACK_UP = 0,
};

/* handler for bluetooth stack enabled events */
static void bt_av_hdl_stack_evt(uint16_t event, void *p_param)
{
    ESP_LOGD(BT_AV_TAG, "%s evt %d", __func__, event);
    switch (event)
    {
    case BT_APP_EVT_STACK_UP:
    {
        /* set up device name */
        char *dev_name = "ESP_SPEAKER";
        esp_bt_dev_set_device_name(dev_name);

        /* initialize A2DP sink */
        esp_a2d_register_callback(&bt_app_a2d_cb);
        esp_a2d_sink_register_data_callback(bt_app_a2d_data_cb);
        esp_a2d_sink_init();

        /* initialize AVRCP controller */
        esp_avrc_ct_init();
        esp_avrc_ct_register_callback(bt_app_rc_ct_cb);

        /* set discoverable and connectable mode, wait to be connected */
        esp_bt_gap_set_scan_mode(ESP_BT_SCAN_MODE_CONNECTABLE_DISCOVERABLE);
        break;
    }
    default:
        ESP_LOGE(BT_AV_TAG, "%s unhandled evt %d", __func__, event);
        break;
    }
}

void bt_task_init(void)
{
    esp_err_t ret = 0;
    i2s_config_t i2s_config = {
#ifdef CONFIG_A2DP_SINK_OUTPUT_INTERNAL_DAC
        .mode = I2S_MODE_MASTER | I2S_MODE_TX | I2S_MODE_DAC_BUILT_IN,
#else
        .mode = I2S_MODE_MASTER | I2S_MODE_TX, // Only TX
#endif
        .sample_rate = 44100,
        .bits_per_sample = 16,
        .channel_format = I2S_CHANNEL_FMT_RIGHT_LEFT, //2-channels
        .communication_format = I2S_COMM_FORMAT_I2S_MSB,
        .dma_buf_count = 6,
        .dma_buf_len = 60,                       //
        .intr_alloc_flags = ESP_INTR_FLAG_LEVEL1 //Interrupt level 1
    };

    i2s_driver_install(0, &i2s_config, 0, NULL);
#ifdef CONFIG_A2DP_SINK_OUTPUT_INTERNAL_DAC
    i2s_set_dac_mode(I2S_DAC_CHANNEL_BOTH_EN);
    i2s_set_pin(0, NULL);
#else
    i2s_pin_config_t pin_config = {
        .bck_io_num = CONFIG_I2S_BCK_PIN,
        .ws_io_num = CONFIG_I2S_LRCK_PIN,
        .data_out_num = CONFIG_I2S_DATA_PIN,
        .data_in_num = -1 //Not used
    };

    i2s_set_pin(0, &pin_config);
#endif

    ESP_ERROR_CHECK(esp_bt_controller_mem_release(ESP_BT_MODE_BLE));

    esp_err_t err;
    esp_bt_controller_config_t bt_cfg = BT_CONTROLLER_INIT_CONFIG_DEFAULT();
    if ((err = esp_bt_controller_init(&bt_cfg)) != ESP_OK)
    {
        ESP_LOGE(BT_AV_TAG, "%s initialize controller failed: %s\n", __func__, esp_err_to_name(ret));
        return;
    }

    if ((err = esp_bt_controller_enable(ESP_BT_MODE_CLASSIC_BT)) != ESP_OK)
    {
        ESP_LOGE(BT_AV_TAG, "%s enable controller failed: %s\n", __func__, esp_err_to_name(ret));
        return;
    }

    if ((err = esp_bluedroid_init()) != ESP_OK)
    {
        ESP_LOGE(BT_AV_TAG, "%s initialize bluedroid failed: %s\n", __func__, esp_err_to_name(ret));
        return;
    }

    if ((err = esp_bluedroid_enable()) != ESP_OK)
    {
        ESP_LOGE(BT_AV_TAG, "%s enable bluedroid failed: %s\n", __func__, esp_err_to_name(ret));
        return;
    }

    /* create application task */
    bt_app_task_start_up();

    /* Bluetooth device name, connection mode and profile set up */
    bt_app_work_dispatch(bt_av_hdl_stack_evt, BT_APP_EVT_STACK_UP, NULL, 0, NULL);
}

void initHardware(void)
{
    // static char tmp_buf[64]; // buffer for formating TFT display string

    // ========  PREPARE DISPLAY INITIALIZATION  =========

    // === SET GLOBAL VARIABLES ==========================

    // ===================================================
    // ==== Set display type                         =====
    tft_disp_type = DEFAULT_DISP_TYPE;
    //tft_disp_type = DISP_TYPE_ILI9341;
    //tft_disp_type = DISP_TYPE_ILI9488;
    //tft_disp_type = DISP_TYPE_ST7735B;
    // ===================================================

    // ===================================================
    // === Set display resolution if NOT using default ===
    // === DEFAULT_TFT_DISPLAY_WIDTH &                 ===
    // === DEFAULT_TFT_DISPLAY_HEIGHT                  ===
    _width = DEFAULT_TFT_DISPLAY_WIDTH;   // smaller dimension
    _height = DEFAULT_TFT_DISPLAY_HEIGHT; // larger dimension
    //_width = 128;  // smaller dimension
    //_height = 160; // larger dimension
    // ===================================================

    // ===================================================
    // ==== Set maximum spi clock for display read    ====
    //      operations, function 'find_rd_speed()'    ====
    //      can be used after display initialization  ====
    max_rdclock = 8000000;
    // ===================================================

    // ====================================================================
    // === Pins MUST be initialized before SPI interface initialization ===
    // ====================================================================
    TFT_PinsInit();

    // ====  CONFIGURE SPI DEVICES(s)  ====================================================================================

    spi_lobo_device_handle_t spi;

    spi_lobo_bus_config_t buscfg = {
        .miso_io_num = PIN_NUM_MISO, // set SPI MISO pin
        .mosi_io_num = PIN_NUM_MOSI, // set SPI MOSI pin
        .sclk_io_num = PIN_NUM_CLK,  // set SPI CLK pin
        .quadwp_io_num = -1,
        .quadhd_io_num = -1,
        .max_transfer_sz = 6 * 1024,
    };
    spi_lobo_device_interface_config_t devcfg = {
        .clock_speed_hz = 8000000,         // Initial clock out at 8 MHz
        .mode = 0,                         // SPI mode 0
        .spics_io_num = PIN_NUM_CS,        // set SPI CS pin
        .flags = LB_SPI_DEVICE_HALFDUPLEX, // ALWAYS SET  to HALF DUPLEX MODE!! for display spi
    };

    // ====================================================================================================================

    vTaskDelay(500 / portTICK_RATE_MS);
    printf("\r\n==============================\r\n");
    printf("Pins used: miso=%d, mosi=%d, sck=%d, cs=%d\r\n", PIN_NUM_MISO, PIN_NUM_MOSI, PIN_NUM_CLK, PIN_NUM_CS);
    printf("==============================\r\n\r\n");

    // ==================================================================
    // ==== Initialize the SPI bus and attach the LCD to the SPI bus ====

    ESP_ERROR_CHECK(spi_lobo_bus_add_device(SPI_BUS, &buscfg, &devcfg, &spi));
    printf("SPI: display device added to spi bus (%d)\r\n", SPI_BUS);
    disp_spi = spi;

    // ==== Test select/deselect ====
    ESP_ERROR_CHECK(spi_lobo_device_select(spi, 1));
    ESP_ERROR_CHECK(spi_lobo_device_deselect(spi));

    printf("SPI: attached display device, speed=%u\r\n", spi_lobo_get_speed(spi));
    printf("SPI: bus uses native pins: %s\r\n", spi_lobo_uses_native_pins(spi) ? "true" : "false");

    // ================================
    // ==== Initialize the Display ====

    printf("SPI: display init...\r\n");
    TFT_display_init();
    printf("OK\r\n");

    // ---- Detect maximum read speed ----
    max_rdclock = find_rd_speed();
    printf("SPI: Max rd speed = %u\r\n", max_rdclock);

    // ==== Set SPI clock used for display operations ====
    spi_lobo_set_speed(spi, DEFAULT_SPI_CLOCK);
    printf("SPI: Changed speed to %u\r\n", spi_lobo_get_speed(spi));

    printf("\r\n---------------------\r\n");
    printf("Graphics demo started\r\n");
    printf("---------------------\r\n");

    font_rotate = 0;
    text_wrap = 0;
    font_transparent = 0;
    font_forceFixed = 0;
    image_debug = 0;

    TFT_setGammaCurve(DEFAULT_GAMMA_CURVE);
    TFT_setRotation(LANDSCAPE);
    TFT_setFont(DEFAULT_FONT, NULL);

    _fg = TFT_ORANGE;
    TFT_print("BiJin ToKei", MARGIN_X, MARGIN_Y);

    _fg = TFT_BLUE;
}

bool obtain_time(void)
{
    char strftime_buf[64];
    ESP_LOGI(TAG, "Initializing SNTP");
    sntp_setoperatingmode(SNTP_OPMODE_POLL);
    sntp_setservername(0, "pool.ntp.org");
    sntp_init();

    time(&now);
    localtime_r(&now, &timeinfo);
    // wait for time to be set
    int retry = 0;
    const int retry_count = 10;
    while (timeinfo.tm_year < (2016 - 1900) && ++retry < retry_count)
    {
        ESP_LOGI(TAG, "Waiting for system time to be set... (%d/%d)", retry, retry_count);
        vTaskDelay(2000 / portTICK_PERIOD_MS);
        time(&now);
        localtime_r(&now, &timeinfo);
    }

    if (timeinfo.tm_year < (2016 - 1900))
    {
        ESP_LOGI(TAG, "System time NOT set.");
        esp_restart();
        return false;
    }

    setenv("TZ", "CST-8", 1);
    tzset();
    localtime_r(&now, &timeinfo);
    strftime(strftime_buf, sizeof(strftime_buf), "%c", &timeinfo);
    ESP_LOGI(TAG, "The current date/time in Shanghai is: %s", strftime_buf);
    return true;
}

size_t readBytesUntil(char terminator, const char *src, char *buffer, size_t length)
{
    if (length < 1)
    {
        return 0;
    }
    size_t index = 0;
    while (index < length)
    {
        int c = *src++;
        if (c < 0 || c == terminator)
        {
            break;
        }
        *buffer++ = (char)c;
        index++;
    }
    return index; // return number of characters, not including null terminator
}

bool request_image(uint8_t hours, uint8_t mintues)
{
    int fd, ret;
    int offset = -1;
    uint32_t file_size = 0;
    char filename[64] = {0};
    struct sockaddr_in add;
    struct hostent *server = NULL;
    struct timeval timeout = {5, 0};
    FILE *f = NULL;
    char status[32] = {0};
    static struct stat st;

    bzero(&add, sizeof(add));
    add.sin_family = AF_INET;
    add.sin_port = htons(BIJINT_PORT);

    server = gethostbyname(BIJINT_SERVER);
    APP_ERROR_CHECK(!server, " Get host ip fail", goto ERR0);

    fd = socket(AF_INET, SOCK_STREAM, 0);
    APP_ERROR_CHECK(fd < 0, "Create socket fail", goto ERR0);

    ESP_LOGI(TAG, "fd : %d", fd);

    bcopy((char *)server->h_addr, (char *)&add.sin_addr.s_addr, server->h_length);

    ret = connect(fd, (struct sockaddr *)&add, sizeof(add));
    APP_ERROR_CHECK(ret < 0, "Connect host fail", goto ERR1);

    ret = setsockopt(fd, SOL_SOCKET, SO_RCVTIMEO, &timeout, sizeof(timeout));
    APP_ERROR_CHECK(ret < 0, "Set recv time out fail", goto ERR1);

    snprintf(http_buf, sizeof(http_buf), HTTP_REQUEST, hours, mintues);
    ret = write(fd, http_buf, strlen(http_buf));
    APP_ERROR_CHECK(ret < 0, "Send HTTP Request fail", goto ERR1);

#if 1

    ret = read(fd, recv_buf, sizeof(recv_buf));
    APP_ERROR_CHECK(ret < 0, "Read socket fail", goto ERR1);

    readBytesUntil('\r', recv_buf, status, sizeof(status));

    if (strcmp(status, "HTTP/1.1 200 OK") != 0)
    {
        ESP_LOGI(TAG, "Request fail HTTP Return %s", status);
        goto ERR1;
    }

    char *s = strstr(recv_buf, "Content-Length");
    APP_ERROR_CHECK(!s, "Can't find length", goto ERR1);

    while (*s++ != ' ')
    {
    }

    size_t length = atoi(s);
    ESP_LOGI(TAG, "Content-Length: %u", length);

    // Skip HTTP headers
    for (int i = 0; i < ret; ++i)
    {
        if ((recv_buf[i] == '\r') && (recv_buf[i + 1] == '\n') && (recv_buf[i + 2] == '\r') && (recv_buf[i + 3] == '\n'))
        {
            offset = i + 4;
            ESP_LOGI(TAG, "Find offset : %d", offset);
        }
    }

    if (offset == -1)
    {
        ESP_LOGI(TAG, "Can't not find HTTP headers");
        goto ERR1;
    }

    snprintf(filename, sizeof(filename), "%s/%d%d.jpg", SD_ROOT, hours, mintues);

    if (stat(filename, &st) == 0)
    {
        ESP_LOGI(TAG, "The file already exists");
        st.st_size == length;
        close(fd);
        return true;
    }

    f = fopen(filename, "w");
    APP_ERROR_CHECK(f == NULL, "Open file fail", goto ERR1);

    if (offset > 0 && offset < ret)
    {
        ESP_LOGI(TAG, "Found response content offset: %d", offset);
        file_size += fwrite(recv_buf + offset, 1, ret - offset, f);
    }

    timeout.tv_sec = 30;
    timeout.tv_usec = 0;
    ret = setsockopt(fd, SOL_SOCKET, SO_RCVTIMEO, (char *)&timeout, sizeof(struct timeval));

    APP_ERROR_CHECK(ret < 0, "setsockopt  fail", goto ERR2);
    for (;;)
    {
        if ((ret = recv(fd, recv_buf, sizeof(recv_buf), 0)) == -1)
        {
            if (errno == EWOULDBLOCK || errno == EAGAIN)
            {
                ESP_LOGI(TAG, "recv timeout ...\n");
                goto ERR2;
            }
            else if (errno == EINTR)
            {
                ESP_LOGI(TAG, "interrupt by signal...\n");
                continue;
            }
            else if (errno == ENOENT)
            {
                ESP_LOGI(TAG, "recv RST segement...\n");
                goto ERR2;
            }
            else
            {
                ESP_LOGI(TAG, "unknown error!\n");
                // exit(1);
                goto ERR2;
            }
        }
        else if (ret == 0)
        {
            ESP_LOGI(TAG, "peer closed ...\n");
            break;
        }
        else
        {
            file_size += fwrite(recv_buf, 1, ret, f);
        }
        if (file_size == length)
        {
            break;
        }
    }

    if (file_size != length)
    {
        ESP_LOGI(TAG, "Recv Image fail");
        goto ERR2;
    }

    ESP_LOGI(TAG, " file_size : %u", file_size);
    fclose(f);
#endif

    // TFT_jpg_image(CENTER, CENTER, 1, -1, filename, NULL, 0);
    // TFT_jpg_image(CENTER, CENTER, 1, fd, NULL, NULL, 0);
    close(fd);
    ESP_LOGI(TAG, "Close fd: %d", fd);
    return true;

ERR2:
    fclose(f);
    unlink(filename);
ERR1:
    close(fd);
    ESP_LOGI(TAG, "ERR1 Close fd: %d", fd);
ERR0:
    return false;
}

void timing_callback(void *param)
{
    static uint8_t last_mintues = 0;
    static uint8_t last_day = 0;

    time(&now);
    localtime_r(&now, &timeinfo);

    if (last_day != timeinfo.tm_mday)
    {
        last_day = timeinfo.tm_mday;
        xSemaphoreGiveFromISR(xHttpSemaphore, NULL);
    }

    if (last_mintues != timeinfo.tm_min)
    {
        last_mintues = timeinfo.tm_min;
        xSemaphoreGiveFromISR(xDisplaySemaphore, NULL);
    }
}

void get_pic(void)
{
    int hh = timeinfo.tm_hour, mm = timeinfo.tm_min, max_hh = 23;
RELOAD:
    for (int h = hh; h < max_hh; h++)
    {
        for (int m = mm; m < 59; m++)
        {
            int retry = 0;
            bool isSuccess = false;
            ESP_LOGI(TAG, "update images [%d]:[%d] Images", h, m);
            do
            {
                isSuccess = request_image(h, m);
                vTaskDelay(1000 / portTICK_PERIOD_MS);
                retry++;
            } while (retry < HTTP_REQUEST_RETRY_COUNT && !isSuccess);
        }
        mm = 0;
    }

    if (hh != 0)
    {
        max_hh = hh;
        hh = 0;
        goto RELOAD;
    }
}

void http_task(void *param)
{
    xHttpSemaphore = xSemaphoreCreateBinary();
    for (;;)
    {
        if (xSemaphoreTake(xHttpSemaphore, portMAX_DELAY) == pdTRUE)
        {
            get_pic();
        }
    }
}

void display_task(void *param)
{
    char filename[64];
    char time_buf[256];
    struct stat st;
    xDisplaySemaphore = xSemaphoreCreateBinary();

    for (;;)
    {
        if (xSemaphoreTake(xDisplaySemaphore, portMAX_DELAY) == pdTRUE)
        {
            bzero(filename, sizeof(filename));
            snprintf(filename, sizeof(filename), "%s/%d%d.jpg", SD_ROOT, timeinfo.tm_hour, timeinfo.tm_min);

            // Check if destination file exists before renaming
            if (stat(filename, &st) == 0)
            {
                ESP_LOGI(TAG, "Update Images ...");
                TFT_jpg_image(CENTER, CENTER, 1, -1, filename, NULL, 0);
            }
            else
            {

                ESP_LOGI(TAG, "Update local time ...");
                TFT_fillRect(0, 0, _width, _height, TFT_BLACK);
                TFT_setFont(FONT_7SEG, NULL);
                _fg = TFT_GREEN;
                set_7seg_font_atrib(24, 6, 1, TFT_GREEN);
                sprintf(time_buf, "%.2d:%.2d", timeinfo.tm_hour, timeinfo.tm_min);
                TFT_print(time_buf, CENTER, CENTER);
                _fg = TFT_CYAN;
                set_7seg_font_atrib(8, 2, 1, TFT_CYAN);
                sprintf(time_buf, "%d-%.2d-%.2d", (timeinfo.tm_year + 1900), (timeinfo.tm_mon + 1), timeinfo.tm_mday);
                TFT_print(time_buf, CENTER, _height - MARGIN_Y - TFT_getfontheight());
            }
        }
    }
}

void init_sd_card(void)
{

    TFT_print("Initializing SD card", MARGIN_X, LASTY + TFT_getfontheight() + 2);

#ifndef USE_SPI_MODE

    TFT_print("Using SDMMC peripheral", MARGIN_X, LASTY + TFT_getfontheight() + 2);

    sdmmc_host_t host = SDMMC_HOST_DEFAULT();

    // To use 1-line SD mode, uncomment the following line:
    // host.flags = SDMMC_HOST_FLAG_1BIT;

    // This initializes the slot without card detect (CD) and write protect (WP) signals.
    // Modify slot_config.gpio_cd and slot_config.gpio_wp if your board has these signals.
    sdmmc_slot_config_t slot_config = SDMMC_SLOT_CONFIG_DEFAULT();

    // GPIOs 15, 2, 4, 12, 13 should have external 10k pull-ups.
    // Internal pull-ups are not sufficient. However, enabling internal pull-ups
    // does make a difference some boards, so we do that here.
    gpio_set_pull_mode(15, GPIO_PULLUP_ONLY); // CMD, needed in 4- and 1- line modes
    gpio_set_pull_mode(2, GPIO_PULLUP_ONLY);  // D0, needed in 4- and 1-line modes
    gpio_set_pull_mode(4, GPIO_PULLUP_ONLY);  // D1, needed in 4-line mode only
    gpio_set_pull_mode(12, GPIO_PULLUP_ONLY); // D2, needed in 4-line mode only
    gpio_set_pull_mode(13, GPIO_PULLUP_ONLY); // D3, needed in 4- and 1-line modes

#else
    TFT_print("Using SPI peripheral", MARGIN_X, LASTY + TFT_getfontheight() + 2);

    sdmmc_host_t host = SDSPI_HOST_DEFAULT();
    sdspi_slot_config_t slot_config = SDSPI_SLOT_CONFIG_DEFAULT();
    slot_config.gpio_miso = PIN_NUM_MISO;
    slot_config.gpio_mosi = PIN_NUM_MOSI;
    slot_config.gpio_sck = PIN_NUM_CLK;
    slot_config.gpio_cs = PIN_NUM_CS;
    // This initializes the slot without card detect (CD) and write protect (WP) signals.
    // Modify slot_config.gpio_cd and slot_config.gpio_wp if your board has these signals.
#endif //USE_SPI_MODE

    // Options for mounting the filesystem.
    // If format_if_mount_failed is set to true, SD card will be partitioned and
    // formatted in case when mounting fails.
    esp_vfs_fat_sdmmc_mount_config_t mount_config = {
        .format_if_mount_failed = false,
        .max_files = 5,
        .allocation_unit_size = 16 * 1024};

    // Use settings defined above to initialize SD card and mount FAT filesystem.
    // Note: esp_vfs_fat_sdmmc_mount is an all-in-one convenience function.
    // Please check its source code and implement error recovery when developing
    // production applications.
    sdmmc_card_t *card;
    esp_err_t ret = esp_vfs_fat_sdmmc_mount("/sdcard", &host, &slot_config, &mount_config, &card);

    if (ret != ESP_OK)
    {
        if (ret == ESP_FAIL)
        {
            TFT_print("Failed to mount filesystem.", MARGIN_X, LASTY + TFT_getfontheight() + 2);
            TFT_print("If you want the card to be formatted, set format_if_mount_failed = true.", MARGIN_X, LASTY + TFT_getfontheight() + 2);
        }
        else
        {
            snprintf(recv_buf, sizeof(recv_buf), "Failed to initialize the card (%s). ", esp_err_to_name(ret));
            TFT_print(recv_buf, MARGIN_X, LASTY + TFT_getfontheight() + 2);
            TFT_print("Make sure SD card lines have pull-up resistors in place.", MARGIN_X, LASTY + TFT_getfontheight() + 2);
        }

        for (;;)
        {
            vTaskDelay(1000 / portTICK_PERIOD_MS);
        }
    }

    // Card has been initialized, print its properties
    sdmmc_card_print_info(stdout, card);
}

void app_main()
{

    xQueue = xQueueCreate(10, sizeof(uint8_t));

    /* Initialize NVS — it is used to store PHY calibration data */
    esp_err_t ret = nvs_flash_init();
    if (ret == ESP_ERR_NVS_NO_FREE_PAGES || ret == ESP_ERR_NVS_NEW_VERSION_FOUND)
    {
        ESP_ERROR_CHECK(nvs_flash_erase());
        ret = nvs_flash_init();
    }
    ESP_ERROR_CHECK(ret);

    initHardware();

    init_wifi();

    init_sd_card();

    obtain_time();

    bt_task_init();

    xTimer = xTimerCreate("http_timer",
                          1000 / portTICK_PERIOD_MS,
                          pdTRUE,
                          (void *)0,
                          timing_callback);

    APP_ERROR_CHECK(!xTimer, "Create xTimer timer fail", esp_restart());

    xTaskCreate(http_task, "http_task", 4096, NULL, 2, NULL);

    xTaskCreate(display_task, "display_task", 4096, NULL, 2, NULL);

    xTimerStart(xTimer, 100);
}
