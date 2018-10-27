#include "tft.h"
#include "tftspi.h"
#include "board.h"
#include "merror.h"
#include "freertos/FreeRTOS.h"
#include "esp_log.h"

#define DISPLAY_TAG "[scrren]"

// ==========================================================
// Define which spi bus to use TFT_VSPI_HOST or TFT_HSPI_HOST
#define SPI_BUS TFT_VSPI_HOST
// ==========================================================


void display_init(void)
{
    tft_disp_type = TFT_CHIP_TYPE;
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
    ESP_LOGI(DISPLAY_TAG, "SPI: display device added to spi bus (%d)", SPI_BUS);
    disp_spi = spi;

    // ==== Test select/deselect ====
    ESP_ERROR_CHECK(spi_lobo_device_select(spi, 1));
    ESP_ERROR_CHECK(spi_lobo_device_deselect(spi));

    ESP_LOGI(DISPLAY_TAG, "SPI: attached display device, speed=%u", spi_lobo_get_speed(spi));
    ESP_LOGI(DISPLAY_TAG, "SPI: bus uses native pins: %s", spi_lobo_uses_native_pins(spi) ? "true" : "false");

    // ================================
    // ==== Initialize the Display ====
    TFT_display_init();

    font_rotate = 0;
    text_wrap = 0;
    font_transparent = 0;
    font_forceFixed = 0;
    image_debug = 0;
    TFT_setGammaCurve(DEFAULT_GAMMA_CURVE);
    TFT_setRotation(LANDSCAPE);
    TFT_setFont(DEFAULT_FONT, NULL);
    _fg = TFT_WHITE;
}
