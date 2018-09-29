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
/*spiram*/
#include "esp_heap_caps.h"

#include "hal_i2c.h"
#include "wm8978.h"
#include "board.h"

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
extern EventGroupHandle_t wifi_event_group;

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

void i2s_init(void)
{
    i2s_config_t i2s_config = {
        .mode = I2S_MODE_MASTER | I2S_MODE_TX, // Only TX
        .sample_rate = 44100,
        .bits_per_sample = 16,
        .channel_format = I2S_CHANNEL_FMT_RIGHT_LEFT, //2-channels
        .communication_format = I2S_COMM_FORMAT_I2S_MSB,
        .dma_buf_count = 6,
        .dma_buf_len = 60,                       //
        .intr_alloc_flags = ESP_INTR_FLAG_LEVEL1 //Interrupt level 1
    };

    i2s_driver_install(0, &i2s_config, 0, NULL);

    i2s_pin_config_t pin_config = {
        .bck_io_num = IIS_BCK,
        .ws_io_num = IIS_LRCK,
        .data_out_num = IIS_DOUT,
        .data_in_num = IIS_DSIN};

    i2s_set_pin(0, &pin_config);

#ifdef CONFIG_TTGO_T9_BOARD
    PIN_FUNC_SELECT(PERIPHS_IO_MUX_GPIO0_U, FUNC_GPIO0_CLK_OUT1);
    REG_WRITE(PIN_CTRL, 0xFFFFFFF0);
#endif
}

void bt_task_init(void)
{
    esp_bt_controller_config_t bt_cfg = BT_CONTROLLER_INIT_CONFIG_DEFAULT();
    ESP_ERROR_CHECK(esp_bt_controller_mem_release(ESP_BT_MODE_BLE));
    ESP_ERROR_CHECK(esp_bt_controller_init(&bt_cfg))
    ESP_ERROR_CHECK(esp_bt_controller_enable(ESP_BT_MODE_CLASSIC_BT));
    ESP_ERROR_CHECK(esp_bluedroid_init());
    ESP_ERROR_CHECK(esp_bluedroid_enable());
    /* create application task */
    bt_app_task_start_up();

    /* Bluetooth device name, connection mode and profile set up */
    bt_app_work_dispatch(bt_av_hdl_stack_evt, BT_APP_EVT_STACK_UP, NULL, 0, NULL);
}

void initHardware(void)
{
    tft_disp_type = DISP_TYPE_ILI9341;
    _width = DEFAULT_TFT_DISPLAY_WIDTH;   // smaller dimension
    _height = DEFAULT_TFT_DISPLAY_HEIGHT; // larger dimension
    max_rdclock = 8000000;
    TFT_PinsInit();

    // ====  CONFIGURE SPI DEVICES(s)  ====================================================================================

    spi_lobo_device_handle_t spi;

    spi_lobo_bus_config_t buscfg = {
        .miso_io_num = TFT_SPI_MISO, //PIN_NUM_MISO, // set SPI MISO pin
        .mosi_io_num = TFT_SPI_MOSI, //PIN_NUM_MOSI, // set SPI MOSI pin
        .sclk_io_num = TFT_SPI_SCLK, //PIN_NUM_CLK,  // set SPI CLK pin
        .quadwp_io_num = -1,
        .quadhd_io_num = -1,
        .max_transfer_sz = 6 * 1024,
    };
    spi_lobo_device_interface_config_t devcfg = {
        .clock_speed_hz = 8000000,         // Initial clock out at 8 MHz
        .mode = 0,                         // SPI mode 0
        .spics_io_num = TFT_SPI_CS,        //PIN_NUM_CS,        // set SPI CS pin
        .flags = LB_SPI_DEVICE_HALFDUPLEX, // ALWAYS SET  to HALF DUPLEX MODE!! for display spi
    };

    ESP_ERROR_CHECK(spi_lobo_bus_add_device(SPI_BUS, &buscfg, &devcfg, &spi));
    ESP_LOGI(TAG, "SPI: display device added to spi bus (%d)\r\n", SPI_BUS);
    disp_spi = spi;

    // ==== Test select/deselect ====
    ESP_ERROR_CHECK(spi_lobo_device_select(spi, 1));
    ESP_ERROR_CHECK(spi_lobo_device_deselect(spi));

    ESP_LOGI(TAG, "SPI: attached display device, speed=%u\r\n", spi_lobo_get_speed(spi));
    ESP_LOGI(TAG, "SPI: bus uses native pins: %s\r\n", spi_lobo_uses_native_pins(spi) ? "true" : "false");

    // ================================
    // ==== Initialize the Display ====
    ESP_LOGI(TAG, "SPI: display init...\r\n");
    TFT_display_init();
    ESP_LOGI(TAG, "OK\r\n");

#if 0
    // ---- Detect maximum read speed ----
    max_rdclock = find_rd_speed();
    ESP_LOGI(TAG, "SPI: Max rd speed = %u\r\n", max_rdclock);

    // ==== Set SPI clock used for display operations ====
    spi_lobo_set_speed(spi, DEFAULT_SPI_CLOCK);
    ESP_LOGI(TAG, "SPI: Changed speed to %u\r\n", spi_lobo_get_speed(spi));

    ESP_LOGI(TAG, "\r\n---------------------\r\n");
    ESP_LOGI(TAG, "Graphics demo started\r\n");
    ESP_LOGI(TAG, "---------------------\r\n");
#endif

    font_rotate = 0;
    text_wrap = 0;
    font_transparent = 0;
    font_forceFixed = 0;
    image_debug = 0;
    TFT_setGammaCurve(DEFAULT_GAMMA_CURVE);
    TFT_setRotation(LANDSCAPE);
    TFT_setFont(DEFAULT_FONT, NULL);

    _fg = TFT_WHITE;

    TFT_print("TTGO T14 Bluetooth player & HTTP Clock", MARGIN_X, MARGIN_Y);
}

bool obtain_time(void)
{
    char strftime_buf[64];
    TFT_print("Initializing SNTP", MARGIN_X, LASTY + TFT_getfontheight() + 2);
    sntp_setoperatingmode(SNTP_OPMODE_POLL);
    sntp_setservername(0, "pool.ntp.org");
    sntp_init();

    time(&now);
    localtime_r(&now, &timeinfo);
    // wait for time to be set
    int retry = 0;
    const int retry_count = 10;
    int16_t x = MARGIN_X, y = LASTY + TFT_getfontheight() + 2;
    while (timeinfo.tm_year < (2016 - 1900) && ++retry < retry_count)
    {
        snprintf(recv_buf, sizeof(recv_buf), "Waiting for system time to be set... (%d/%d)", retry, retry_count);
        TFT_print(recv_buf, x, y);
        vTaskDelay(2000 / portTICK_PERIOD_MS);
        time(&now);
        localtime_r(&now, &timeinfo);
    }

    if (timeinfo.tm_year < (2016 - 1900))
    {
        TFT_print("System time NOT set. Restart now . ", MARGIN_X, LASTY + TFT_getfontheight() + 2);
        vTaskDelay(2000 / portTICK_PERIOD_MS);
        esp_restart();
        return false;
    }

    setenv("TZ", "CST-8", 1);
    tzset();
    localtime_r(&now, &timeinfo);
    strftime(strftime_buf, sizeof(strftime_buf), "%c", &timeinfo);
    snprintf(recv_buf, sizeof(recv_buf), "The current date/time in Shanghai is: %s", strftime_buf);
    TFT_print(strftime_buf, MARGIN_X, LASTY + TFT_getfontheight() + 2);
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
    // APP_ERROR_CHECK(fd < 0, "Create socket fail", goto ERR0);
    if (fd < 0)
    {
        static uint8_t failCount = 0;
        if (failCount++ > 5)
        {
            esp_restart();
        }
        perror("Create socket : ");
        goto ERR0;
    }

    ESP_LOGI(TAG, "fd : %d", fd);

    bcopy((char *)server->h_addr, (char *)&add.sin_addr.s_addr, server->h_length);

    ret = connect(fd, (struct sockaddr *)&add, sizeof(add));
    // APP_ERROR_CHECK(ret < 0, "Connect host fail", goto ERR1);
    if (ret == -1)
    {
        perror("Create socket : ");
        goto ERR1;
    }

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

    snprintf(filename, sizeof(filename), "%s/%d%d-A.jpg", SD_ROOT, hours, mintues);

    if (stat(filename, &st) == 0)
    {
        if (st.st_size != 0)
        {
            if (st.st_size == length)
            {
                ESP_LOGI(TAG, "The file already exists");
                close(fd);
                return true;
            }
            ESP_LOGI(TAG, "The file duplicate file name .rename .");

            char rename_buf[64] = {0};
            snprintf(rename_buf, sizeof(rename_buf), "%s/%d%d-B.jpg", SD_ROOT, hours, mintues);
            if (stat(rename_buf, &st) == 0)
            {
                ESP_LOGI(TAG, "%s  - The file already exists, Unlink it", rename_buf);
                unlink(rename_buf);
            }
            ESP_LOGI(TAG, "Reamne file name : %s", rename_buf);
            rename(filename, rename_buf);
        }
        else
        {
            unlink(filename);
        }
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
            perror("recv:");
            goto ERR2;
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
                vTaskDelay(5000 / portTICK_PERIOD_MS);
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
    for (;;)
    {
        if (xSemaphoreTake(xHttpSemaphore, portMAX_DELAY) == pdTRUE)
        {
            xEventGroupWaitBits(wifi_event_group, CONNECTED_BIT,
                                pdFALSE, pdTRUE, portMAX_DELAY);
            get_pic();
            vTaskDelay(500 / portTICK_PERIOD_MS);
        }
    }
}

void display_task(void *param)
{
    char filename[64];
    char time_buf[256];
    struct stat st;

    for (;;)
    {
        if (xSemaphoreTake(xDisplaySemaphore, portMAX_DELAY) == pdTRUE)
        {
            bzero(filename, sizeof(filename));
            bzero(time_buf, sizeof(time_buf));
            snprintf(filename, sizeof(filename), "%s/%d%d-A.jpg", SD_ROOT, timeinfo.tm_hour, timeinfo.tm_min);
            snprintf(time_buf, sizeof(time_buf), "%s/%d%d-B.jpg", SD_ROOT, timeinfo.tm_hour, timeinfo.tm_min);
            // Check if destination file exists before renaming
            if (stat(filename, &st) == 0)
            {
                if (st.st_size != 0)
                {
                    ESP_LOGI(TAG, "Update Images A ...");
                    TFT_jpg_image(CENTER, CENTER, 1, -1, filename, NULL, 0);
                }
                else
                    goto LOCAL_TIME;
            }
            else if (stat(time_buf, &st) == 0)
            {
                if (st.st_size != 0)
                {
                    ESP_LOGI(TAG, "Update Images B ...");
                    TFT_jpg_image(CENTER, CENTER, 1, -1, time_buf, NULL, 0);
                }
                else
                    goto LOCAL_TIME;
            }
            else
            {
            LOCAL_TIME:
                bzero(time_buf, sizeof(time_buf));
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

esp_err_t init_sd_card(void)
{
    esp_err_t ret;
    sdmmc_card_t *card = NULL;
    sdmmc_host_t host = SDMMC_HOST_DEFAULT();
    sdmmc_slot_config_t slot_config = SDMMC_SLOT_CONFIG_DEFAULT();
    gpio_set_pull_mode(SDCARD_CMD, GPIO_PULLUP_ONLY); // CMD, needed in 4- and 1- line modes
    gpio_set_pull_mode(SDCARD_D0, GPIO_PULLUP_ONLY);  // D0, needed in 4- and 1-line modes
    gpio_set_pull_mode(SDCARD_D1, GPIO_PULLUP_ONLY);  // D1, needed in 4-line mode only
    gpio_set_pull_mode(SDCARD_D2, GPIO_PULLUP_ONLY);  // D2, needed in 4-line mode only
    gpio_set_pull_mode(SDCARD_D3, GPIO_PULLUP_ONLY);  // D3, needed in 4- and 1-line modes

    esp_vfs_fat_sdmmc_mount_config_t mount_config = {
        .format_if_mount_failed = false,
        .max_files = 5,
        .allocation_unit_size = 16 * 1024};

    ret = esp_vfs_fat_sdmmc_mount(SD_ROOT, &host, &slot_config, &mount_config, &card);

    return ret;
}

void app_main()
{

    /* Initialize NVS — it is used to store PHY calibration data */
    esp_err_t ret = nvs_flash_init();

    if (ret == ESP_ERR_NVS_NO_FREE_PAGES || ret == ESP_ERR_NVS_NEW_VERSION_FOUND)
    {
        ESP_ERROR_CHECK(nvs_flash_erase());
        ESP_ERROR_CHECK(nvs_flash_init());
    }

    xHttpSemaphore = xSemaphoreCreateBinary();

    xDisplaySemaphore = xSemaphoreCreateBinary();

    // ====================================================================
    // === initialization i2s interface                                 ===
    // ====================================================================
    i2s_init();

#ifdef CONFIG_TTGO_T9_BOARD
    hal_i2c_init(0, IIC_SDA, IIC_CLK);

    WM8978_Init();

    WM8978_ADDA_Cfg(1, 0);

    // WM8978_Input_Cfg(1, 0, 0);

    WM8978_Output_Cfg(1, 0);

    // WM8978_MIC_Gain(25);

    // WM8978_AUX_Gain(0);

    // WM8978_LINEIN_Gain(0);

    // WM8978_SPKvol_Set(0);

    WM8978_HPvol_Set(100, 100);
    // WM8978_EQ_3D_Dir(0);
    // WM8978_EQ1_Set(0, 24);
    // WM8978_EQ2_Set(0, 24);
    // WM8978_EQ3_Set(0, 24);
    // WM8978_EQ4_Set(0, 24);
    // WM8978_EQ5_Set(0, 24);

#else

    initHardware();

    // ====================================================================
    // === initialization sdcard                                        ===
    // ====================================================================
    TFT_print("Initializing SD card", MARGIN_X, LASTY + TFT_getfontheight() + 2);

    ret = init_sd_card();

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
        }

        for (;;)
        {
            vTaskDelay(1000 / portTICK_PERIOD_MS);
        }
    }

    init_wifi();

    obtain_time();

    xTimer = xTimerCreate("http_timer",
                          1000 / portTICK_PERIOD_MS,
                          pdTRUE,
                          (void *)0,
                          timing_callback);

    APP_ERROR_CHECK(!xTimer, "Create xTimer timer fail", esp_restart());

    xTaskCreate(http_task, "http_task", 4096, NULL, 2, NULL);

    xTaskCreate(display_task, "display_task", 4096, NULL, 2, NULL);

    xTimerStart(xTimer, 100);
#endif
    bt_task_init();
}
