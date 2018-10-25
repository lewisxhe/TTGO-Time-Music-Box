#ifndef _TTGO_T14_BOARD_H_
#define _TTGO_T14_BOARD_H_

#ifdef __cplusplus
extern "C" {
#endif
#include "tftspi.h"

#define GPIO_AUXIN_DETECT           12


// /* I2C gpios */
// #define IIC_CLK                     18
// #define IIC_SDA                     19

#define PCM5102_MUTE                21
#define PCM5102_MUTE_ON             0
#define PCM5102_MUTE_OFF            1

/* I2S gpios */
#define IIS_DOUT                    22
#define IIS_LRCK                    25
#define IIS_BCK                     26
#define IIS_DSIN                    -1
#define IIS_SCLK                    -1

/* SPI gpios */
#define TFT_SPI_MISO                    -1
#define TFT_SPI_MOSI                    19
#define TFT_SPI_SCLK                    18
#define TFT_SPI_CS                      5
#define TFT_DC                          23
#define TFT_RESET                       -1
#define TFT_BACKLIGHT                   27
#define TFT_CHIP_TYPE                   DISP_TYPE_ST7789V   //DISP_TYPE_ILI9341

#define SDCARD_CMD                      15
#define SDCARD_D0                       2
#define SDCARD_D1                       4
#define SDCARD_D2                       12
#define SDCARD_D3                       13


#ifdef __cplusplus
}
#endif

#endif /*_TTGO_T14_BOARD_H_*/
