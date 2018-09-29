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
#define IIS_DOUT                    GPIO_NUM_26
#define IIS_LRCK                    GPIO_NUM_25
#define IIS_BCK                     GPIO_NUM_33
#define IIS_DSIN                    GPIO_NUM_27
#define IIS_SCLK                    -1

/* SPI gpios */
#define TFT_SPI_MISO                    -1
#define TFT_SPI_MOSI                    GPIO_NUM_23
#define TFT_SPI_SCLK                    GPIO_NUM_18
#define TFT_SPI_CS                      GPIO_NUM_5
#define TFT_DC                          GPIO_NUM_16
#define TFT_RESET                       GPIO_NUM_17



#define SDCARD_CMD                      GPIO_NUM_15
#define SDCARD_D0                       GPIO_NUM_2
#define SDCARD_D1                       GPIO_NUM_4
#define SDCARD_D2                       GPIO_NUM_12
#define SDCARD_D3                       GPIO_NUM_13
//SDCARD_CLK    GPIO14






#ifdef __cplusplus
}
#endif

#endif /*_TTGO_T14_BOARD_H_*/
