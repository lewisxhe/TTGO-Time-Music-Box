#ifndef _TTGO_T14_BOARD_H_
#define _TTGO_T14_BOARD_H_

#ifdef __cplusplus
extern "C" {
#endif

#define GPIO_AUXIN_DETECT           12


/* I2C gpios */
#define IIC_CLK                     GPIO_NUM_18
#define IIC_SDA                     GPIO_NUM_19


/* I2S gpios */
#define IIS_DOUT                    26
#define IIS_LRCK                    25
#define IIS_BCK                     33
#define IIS_DSIN                    27
#define IIS_SCLK                    -1

/* SPI gpios */
#define TFT_SPI_MISO                    22//-1
#define TFT_SPI_MOSI                    19
#define TFT_SPI_SCLK                    18
#define TFT_SPI_CS                      5
#define TFT_DC                          23
#define TFT_RESET                       33



#define SDCARD_CMD                      15
#define SDCARD_D0                       2
#define SDCARD_D1                       4
#define SDCARD_D2                       12
#define SDCARD_D3                       13
//SDCARD_CLK    GPIO14






#ifdef __cplusplus
}
#endif

#endif /*_TTGO_T14_BOARD_H_*/
