#ifndef __WIFI_H
#define __WIFI_H

#include "esp_wifi.h"
/**
 * @brief      Peripheral Wi-Fi event id
 */
typedef enum
{
    PERIPH_WIFI_UNCHANGE = 0,
    PERIPH_WIFI_CONNECTING,
    PERIPH_WIFI_CONNECTED,
    PERIPH_WIFI_DISCONNECTED,
    PERIPH_WIFI_SETTING,
    PERIPH_WIFI_SMARTCONFIG_DONE,
    PERIPH_WIFI_SMARTCONFIG_ERROR,
    PERIPH_WIFI_ERROR,
} periph_wifi_state_t;

/**
 * @brief   Wi-Fi setup mode type
 */
typedef enum
{
    WIFI_CONFIG_ESPTOUCH,         /*!< Using smartconfig with ESPTOUCH protocol */
    WIFI_CONFIG_AIRKISS,          /*!< Using smartconfig with AIRKISS protocol */
    WIFI_CONFIG_ESPTOUCH_AIRKISS, /*!< Using smartconfig with ESPTOUCH_AIRKISS protocol */
    WIFI_CONFIG_WPS,              /*!< Using WPS (not support) */
    WIFI_CONFIG_BLUEFI,           /*!< Using BLUEFI (not support) */
    WIFI_CONFIG_WEB,              /*!< Using HTTP Server (not support) */
} periph_wifi_config_mode_t;

/**
 * @brief The Wi-Fi peripheral configuration
 */
typedef struct
{
    bool disable_auto_reconnect; /*!< Disable Wi-Fi auto reconnect */
    int reconnect_timeout_ms;    /*!< The reconnect timeout after disconnected from Wi-Fi network */
    const char *ssid;            /*!< SSID of target AP */
    const char *password;        /*!< password of target AP */
} periph_wifi_cfg_t;

esp_err_t periph_wifi_init(periph_wifi_cfg_t *config);
esp_err_t periph_wifi_config_wait_done(TickType_t tick_to_wait);
esp_err_t periph_wifi_config_start(periph_wifi_config_mode_t mode);
esp_err_t periph_wifi_wait_for_disconnected(TickType_t tick_to_wait);
esp_err_t periph_wifi_wait_for_connected(TickType_t tick_to_wait);
periph_wifi_state_t periph_wifi_is_connected(void);

#endif /*__WIFI_H*/