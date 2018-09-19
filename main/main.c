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

#define SD_ROOT "/sdcard"

/* event for handler "bt_av_hdl_stack_up */
enum
{
    BT_APP_EVT_STACK_UP = 0,
};

/* handler for bluetooth stack enabled events */
static void bt_av_hdl_stack_evt(uint16_t event, void *p_param);

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

// ==========================================================
// Define which spi bus to use TFT_VSPI_HOST or TFT_HSPI_HOST
#define SPI_BUS TFT_VSPI_HOST
    // ==========================================================
#define MARGIN_X 12
#define MARGIN_Y 12

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

    // TFT_fillScreen(TFT_ORANGE);
    // vTaskDelay(2000 / portTICK_RATE_MS);
    // TFT_fillScreen(TFT_OLIVE);
    // vTaskDelay(2000 / portTICK_RATE_MS);

    vTaskDelay(2000 / portTICK_RATE_MS);

    _fg = TFT_BLUE;
}

/*-------------------------------------------*/

static time_t now = 0;
static struct tm timeinfo = {0};

void refresh_time(void)
{
    time(&now);
    localtime_r(&now, &timeinfo);
    // now += (TIMEZONE * 60 * 60);
    // timeinfo = gmtime(&now);
}

bool obtain_time(void)
{
    char strftime_buf[64];
    ESP_LOGI(TAG, "Initializing SNTP");
    sntp_setoperatingmode(SNTP_OPMODE_POLL);
    sntp_setservername(0, "pool.ntp.org");
    sntp_init();

    refresh_time();
    // wait for time to be set
    int retry = 0;
    const int retry_count = 10;
    while (timeinfo.tm_year < (2016 - 1900) && ++retry < retry_count)
    {
        ESP_LOGI(TAG, "Waiting for system time to be set... (%d/%d)", retry, retry_count);
        vTaskDelay(2000 / portTICK_PERIOD_MS);
        refresh_time();
    }

    if (timeinfo.tm_year < (2016 - 1900))
    {
        ESP_LOGI(TAG, "System time NOT set.");
        return false;
    }

    setenv("TZ", "CST-8", 1);
    tzset();
    localtime_r(&now, &timeinfo);
    strftime(strftime_buf, sizeof(strftime_buf), "%c", &timeinfo);
    ESP_LOGI(TAG, "The current date/time in Shanghai is: %s", strftime_buf);
    return true;
}

#define APP_ERROR_CHECK(code, info, go)                                                                                                           \
    do                                                                                                                                            \
    {                                                                                                                                             \
        if (code)                                                                                                                                 \
        {                                                                                                                                         \
            ets_printf("err_code : %d file: \"%s\" line %d\nfunc: %s\nexpression: %s\ninfo:%s\n", code, __FILE__, __LINE__, __ASSERT_FUNC, info); \
            go;                                                                                                                                   \
        }                                                                                                                                         \
    } while (0)
#define BIJINT_SERVER "www.bijint.com"
#define BIJINT_PORT 80
static char http_buf[1024];
static const char *HTTP_REQUEST =
    // "GET /assets/toppict/jp/t1/%.2d%.2d.jpg HTTP/1.1\r\n"
    // "GET /assets/pict/jp/pc/%.2d%.2d.jpg HTTP/1.1\r\n"
    // "GET /assets/pict/hiroshima/pc/%.2d%.2d.jpg HTTP/1.1\r\n"
    "GET /assets/pict/kids-fo/pc/%.2d%.2d.jpg HTTP/1.1\r\n"
    "Host: " BIJINT_SERVER "\r\n"
    "User-Agent: esp-idf/1.0 esp32\r\n"
    "Accept: image/webp,image/apng,image/*,*/*;q=0.8\r\n"
    "Referer: http://" BIJINT_SERVER "/\r\n"
    "\r\n";





size_t readBytesUntil(char terminator,const char *src, char *buffer, size_t length)
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
    struct sockaddr_in add;
    struct hostent *server = NULL;
    struct timeval timeout = {5, 0};

    bzero(&add, sizeof(add));
    add.sin_family = AF_INET;
    add.sin_port = htons(BIJINT_PORT);

    server = gethostbyname(BIJINT_SERVER);
    APP_ERROR_CHECK(!server, " Get host ip fail", goto ERR0);

    fd = socket(AF_INET, SOCK_STREAM, 0);
    APP_ERROR_CHECK(fd < 0, "Create socket fail", goto ERR0);

    bcopy((char *)server->h_addr, (char *)&add.sin_addr.s_addr, server->h_length);

    ret = connect(fd, (struct sockaddr *)&add, sizeof(add));
    APP_ERROR_CHECK(ret < 0, "Connect host fail", goto ERR1);

    snprintf(http_buf, sizeof(http_buf), HTTP_REQUEST, hours, mintues);
    ret = write(fd, http_buf, strlen(http_buf));
    APP_ERROR_CHECK(ret < 0, "Send HTTP Request fail", goto ERR1);

    ret = setsockopt(fd, SOL_SOCKET, SO_RCVTIMEO, &timeout, sizeof(timeout));
    APP_ERROR_CHECK(ret < 0, "Set recv time out fail", goto ERR1);

#if 1
    int offset = -1;
    int file_size = 0;
    char filename[64];
    char recv_buf[512];
    bzero(filename, sizeof(filename));
    snprintf(filename, sizeof(filename), "%s/%d%d.jpg", SD_ROOT, hours, mintues);

    ESP_LOGI(TAG, "open %s", filename);
    FILE *f = fopen(filename, "w");
    // APP_ERROR_CHECK(f ==NULL, "Open file fail", goto ERR1);

    if (f == NULL)
    {
        perror("Open");
        ESP_LOGI(TAG, "Open fail");
        goto ERR1;
    }

    ret = read(fd, recv_buf, sizeof(recv_buf));
    APP_ERROR_CHECK(ret < 0, "Read socket fail", goto ERR1);

    for (int i = 0; i < ret; ++i)
    {
        if ((recv_buf[i] == '\r') && (recv_buf[i + 1] == '\n') && (recv_buf[i + 2] == '\r') && (recv_buf[i + 3] == '\n'))
        {
            ESP_LOGI(TAG, "Find offset : %d", offset);
            offset = i + 4;
        }
    }

    if (offset > 0 && offset < ret)
    {
        ESP_LOGI(TAG, "Found response content offset: %d", offset);
        file_size += fwrite(recv_buf + offset, 1, ret - offset, f);
    }

    do
    {
        ret = read(fd, recv_buf, sizeof(recv_buf));
        file_size += fwrite(recv_buf, 1, ret, f);
    } while (ret > 0);

    ESP_LOGI(TAG, " file_size : %d", file_size);
    fclose(f);

#endif
    TFT_jpg_image(CENTER, CENTER, 1, -1, filename, NULL, 0);
    // TFT_jpg_image(CENTER, CENTER, 1, fd, NULL, NULL, 0);
    close(fd);
    return true;
ERR1:
    close(fd);
ERR0:
    return false;
}

SemaphoreHandle_t xSemaphore = NULL;

void timing_callback(void *param)
{
    static uint8_t last_mintues = 0;
    time(&now);
    localtime_r(&now, &timeinfo);

    if (last_mintues != timeinfo.tm_min)
    {
        last_mintues = timeinfo.tm_min;
        xSemaphoreGiveFromISR(xSemaphore, NULL);
    }
    // ESP_LOGI(TAG,"%.2d:%.2d ",timeinfo.tm_hour,timeinfo.tm_min);
}

void http_task(void *param)
{
    xSemaphore = xSemaphoreCreateBinary();
    TimerHandle_t xTimer = xTimerCreate("http_timer",
                                        1000 / portTICK_PERIOD_MS,
                                        pdTRUE,
                                        (void *)0,
                                        timing_callback);
    APP_ERROR_CHECK(!xTimer, "Create xTimer timer fail", esp_restart());
    xTimerStart(xTimer, 100);

    for (;;)
    {
        if (xSemaphoreTake(xSemaphore, portMAX_DELAY) == pdTRUE)
        {
            ESP_LOGI(TAG, "update images  .....");
            request_image(timeinfo.tm_hour, timeinfo.tm_min);
        }
        vTaskDelay(1000 / portTICK_PERIOD_MS);
    }
}

void init_sd_card(void)
{
    ESP_LOGI(TAG, "Initializing SD card");

#ifndef USE_SPI_MODE
    ESP_LOGI(TAG, "Using SDMMC peripheral");
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
    ESP_LOGI(TAG, "Using SPI peripheral");

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
            ESP_LOGE(TAG, "Failed to mount filesystem. "
                          "If you want the card to be formatted, set format_if_mount_failed = true.");
        }
        else
        {
            ESP_LOGE(TAG, "Failed to initialize the card (%s). "
                          "Make sure SD card lines have pull-up resistors in place.",
                     esp_err_to_name(ret));
        }
        return;
    }

    // Card has been initialized, print its properties
    sdmmc_card_print_info(stdout, card);
}

void app_main()
{

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

    xTaskCreate(http_task, "http_task", 4096, NULL, 2, NULL);
}

// python /d/ESP32/esp-idf-v3.1-rc1/components/esptool_py/esptool/esptool.py --chip esp32 --port COM30 --baud 115200 --before default_reset --after hard_reset write_flash -z --flash_mode dio --flash_freq 40m --flash_size detect 0x1000 /d/ESP32/esp-idf-v3.1-rc1/ESP32_PIC_A2DP/build/bootloader/bootloader.bin 0x10000 /d/ESP32/esp-idf-v3.1-rc1/ESP32_PIC_A2DP/build/a2dp_sink.bin 0x8000 /d/ESP32/esp-idf-v3.1-rc1/ESP32_PIC_A2DP/build/partitions_singleapp.bin