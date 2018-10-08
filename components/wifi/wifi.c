#include <stdlib.h>
#include <string.h>
#include "esp_peripherals.h"
#include "wifi.h"
#include "esp_wifi.h"
#include "esp_wpa2.h"
#include "esp_event_loop.h"
#include "esp_smartconfig.h"
#include "freertos/event_groups.h"
#include "esp_log.h"
#include "tft.h"

#define TAG "[WiFi]"

#define MARGIN_X 12
#define DEFAULT_RECONNECT_TIMEOUT_MS (1000)

EventGroupHandle_t wifi_event_group = NULL;

static const int CONNECTED_BIT = BIT0;
static const int DISCONNECTED_BIT = BIT1;
static const int SMARTCONFIG_DONE_BIT = BIT2;
static const int SMARTCONFIG_ERROR_BIT = BIT3;

typedef struct periph_wifi *periph_wifi_handle_t;

struct periph_wifi
{
    periph_wifi_state_t wifi_state;
    bool disable_auto_reconnect;
    bool backup_reconnect;
    bool is_open;
    uint8_t max_recon_time;
    char *ssid;
    char *password;
    TimerHandle_t timer;
    EventGroupHandle_t state_event;
    int reconnect_timeout_ms;
};

periph_wifi_handle_t periph_wifi = NULL;

static void wifi_reconnect_timer(xTimerHandle tmr)
{
    esp_periph_stop_timer(periph_wifi->timer);
    esp_wifi_connect();
}

esp_err_t periph_wifi_wait_for_connected(TickType_t tick_to_wait)
{
    EventBits_t connected_bit = xEventGroupWaitBits(periph_wifi->state_event, CONNECTED_BIT, false, true, tick_to_wait);
    if (connected_bit & CONNECTED_BIT)
    {
        return ESP_OK;
    }
    return ESP_FAIL;
}

periph_wifi_state_t periph_wifi_is_connected(void)
{
    return periph_wifi->wifi_state;
}

static void _wifi_smartconfig_event_callback(smartconfig_status_t status, void *pdata)
{
    wifi_config_t sta_conf;
    smartconfig_type_t *type;
    switch (status)
    {
    case SC_STATUS_WAIT:
        ESP_LOGD(TAG, "SC_STATUS_WAIT");
        break;

    case SC_STATUS_FIND_CHANNEL:
        ESP_LOGD(TAG, "SC_STATUS_FIND_CHANNEL");
        break;

    case SC_STATUS_GETTING_SSID_PSWD:
        type = pdata;
        ESP_LOGD(TAG, "SC_STATUS_GETTING_SSID_PSWD, SC_TYPE=%d", (int)*type);
        break;

    case SC_STATUS_LINK:
        ESP_LOGE(TAG, "SC_STATUS_LINK");
        memset(&sta_conf, 0x00, sizeof(sta_conf));
        memcpy(&sta_conf.sta, pdata, sizeof(wifi_sta_config_t));
        ESP_LOGE(TAG, "SSID=%s, PASS=%s", sta_conf.sta.ssid, sta_conf.sta.password);
        esp_wifi_disconnect();

        if (esp_wifi_set_config(WIFI_IF_STA, &sta_conf) != ESP_OK)
        {
            ESP_LOGI(TAG, "esp_wifi_set_config FAIL");
            periph_wifi->wifi_state = PERIPH_WIFI_SMARTCONFIG_ERROR;
            xEventGroupSetBits(periph_wifi->state_event, SMARTCONFIG_ERROR_BIT);
        }

        if (esp_wifi_connect() != ESP_OK)
        {
            ESP_LOGI(TAG, "esp_wifi_connect FAIL");
            periph_wifi->wifi_state = PERIPH_WIFI_SMARTCONFIG_ERROR;
            xEventGroupSetBits(periph_wifi->state_event, SMARTCONFIG_ERROR_BIT);
            // esp_periph_send_event(g_periph, PERIPH_WIFI_SMARTCONFIG_ERROR, NULL, 0);
            break;
        }
        break;

    case SC_STATUS_LINK_OVER:
        ESP_LOGE(TAG, "SC_STATUS_LINK_OVER");

        if (pdata != NULL)
        {
            char phone_ip[4] = {0};
            memcpy(phone_ip, (const void *)pdata, 4);
            ESP_LOGD(TAG, "Phone ip: %d.%d.%d.%d", phone_ip[0], phone_ip[1], phone_ip[2], phone_ip[3]);
            periph_wifi->wifi_state = PERIPH_WIFI_SMARTCONFIG_DONE;
            // esp_periph_send_event(g_periph, PERIPH_WIFI_SMARTCONFIG_DONE, NULL, 0);
            xEventGroupSetBits(periph_wifi->state_event, SMARTCONFIG_DONE_BIT);
        }
        else
        {
            periph_wifi->wifi_state = PERIPH_WIFI_SMARTCONFIG_ERROR;
            // esp_periph_send_event(g_periph, PERIPH_WIFI_SMARTCONFIG_ERROR, NULL, 0);
            xEventGroupSetBits(periph_wifi->state_event, SMARTCONFIG_ERROR_BIT);
        }
        esp_smartconfig_stop();
        break;
    }
}

esp_err_t periph_wifi_wait_for_disconnected(TickType_t tick_to_wait)
{
    EventBits_t disconnected_bit = xEventGroupWaitBits(periph_wifi->state_event, DISCONNECTED_BIT, false, true, tick_to_wait);
    if (disconnected_bit & DISCONNECTED_BIT)
    {
        return ESP_OK;
    }
    return ESP_FAIL;
}

esp_err_t periph_wifi_config_start(periph_wifi_config_mode_t mode)
{
    esp_err_t err = ESP_OK;
    periph_wifi->disable_auto_reconnect = true;
    esp_wifi_disconnect();

    if (periph_wifi_wait_for_disconnected(portMAX_DELAY) != ESP_OK)
    {
        return ESP_FAIL;
    }
    periph_wifi->wifi_state = PERIPH_WIFI_SETTING;
    if (mode >= WIFI_CONFIG_ESPTOUCH && mode <= WIFI_CONFIG_ESPTOUCH_AIRKISS)
    {
        err = ESP_OK; //0;
        // esp_wifi_start();
        err |= esp_smartconfig_set_type(mode);
        err |= esp_smartconfig_fast_mode(true);
        err |= esp_smartconfig_start(_wifi_smartconfig_event_callback, 0);
        xEventGroupClearBits(periph_wifi->state_event, SMARTCONFIG_DONE_BIT);
        xEventGroupClearBits(periph_wifi->state_event, SMARTCONFIG_ERROR_BIT);
    }
    else if (mode == WIFI_CONFIG_WPS)
    {
        //todo : add wps
        return ESP_OK;
    }
    else if (mode == WIFI_CONFIG_BLUEFI)
    {
        //todo : add ble config
        return ESP_OK;
    }

    return err;
}

esp_err_t periph_wifi_config_wait_done(TickType_t tick_to_wait)
{
    EventBits_t smartconfig_bit = xEventGroupWaitBits(periph_wifi->state_event,
                                                      SMARTCONFIG_DONE_BIT | SMARTCONFIG_ERROR_BIT, false, false, tick_to_wait);
    
    if (smartconfig_bit & SMARTCONFIG_DONE_BIT)
    {
        return ESP_OK;
    }
    if (smartconfig_bit & SMARTCONFIG_ERROR_BIT)
    {
        return ESP_FAIL;
    }
    esp_smartconfig_stop();

    return ESP_FAIL;
}

static esp_err_t _wifi_event_callback(void *ctx, system_event_t *event)
{
    switch (event->event_id)
    {
    case SYSTEM_EVENT_STA_START:
        periph_wifi->wifi_state = PERIPH_WIFI_CONNECTING;
        esp_wifi_connect();
        break;

    case SYSTEM_EVENT_STA_CONNECTED:
        break;
    case SYSTEM_EVENT_STA_GOT_IP:
        periph_wifi->wifi_state = PERIPH_WIFI_CONNECTED;
        xEventGroupClearBits(periph_wifi->state_event, DISCONNECTED_BIT);
        // esp_periph_send_event(self, PERIPH_WIFI_CONNECTED, NULL, 0);
        xEventGroupSetBits(periph_wifi->state_event, CONNECTED_BIT);
        break;

    case SYSTEM_EVENT_STA_DISCONNECTED:
        periph_wifi->wifi_state = PERIPH_WIFI_DISCONNECTED;
        xEventGroupClearBits(periph_wifi->state_event, CONNECTED_BIT);
        xEventGroupSetBits(periph_wifi->state_event, DISCONNECTED_BIT);
        // esp_periph_send_event(self, PERIPH_WIFI_DISCONNECTED, NULL, 0);

        ESP_LOGW(TAG, "Wi-Fi disconnected from SSID %s, auto-reconnect %s, reconnect after %d ms",
                 periph_wifi->ssid,
                 periph_wifi->disable_auto_reconnect == 0 ? "enabled" : "disabled",
                 periph_wifi->reconnect_timeout_ms);

        if (periph_wifi->disable_auto_reconnect)
        {
            break;
        }
        {

            esp_err_t err = esp_periph_start_timer(periph_wifi->timer, periph_wifi->reconnect_timeout_ms / portTICK_RATE_MS, wifi_reconnect_timer);
            ESP_LOGI(TAG, "esp_periph_start_timer [%s]", err != ESP_OK ? "FAIL" : "OK");
        }
        break;
    default:
        break;
    }
    return ESP_OK;
}

static esp_err_t _wifi_init(void)
{
    esp_err_t ret;
    wifi_config_t wifi_config;

    if (periph_wifi->is_open)
    {
        ESP_LOGE(TAG, "Wifi has initialized");
        return ESP_FAIL;
    }
    tcpip_adapter_init();

    wifi_init_config_t cfg = WIFI_INIT_CONFIG_DEFAULT();
    ESP_ERROR_CHECK(esp_wifi_init(&cfg));

    if (esp_event_loop_get_queue() == NULL)
    {
        ESP_ERROR_CHECK(esp_event_loop_init(_wifi_event_callback, NULL));
    }
    else
    {
        esp_event_loop_set_cb(_wifi_event_callback, NULL);
    }

    ESP_ERROR_CHECK(esp_wifi_set_storage(WIFI_STORAGE_FLASH));
    ESP_ERROR_CHECK(esp_wifi_set_mode(WIFI_MODE_STA));

    memset(&wifi_config, 0x00, sizeof(wifi_config_t));

    if (strlen(periph_wifi->ssid) == 0)
    {
        ret = esp_wifi_get_config(WIFI_IF_STA, &wifi_config);
        if (ret != ESP_OK || !strlen((char *)wifi_config.sta.ssid))
        {
            ret = ESP_ERR_WIFI_SSID;
        }
        ESP_LOGI(TAG, "get ssid : %s password: %s", wifi_config.sta.ssid, wifi_config.sta.password);
    }
    else
    {
        strcpy((char *)wifi_config.sta.ssid, periph_wifi->ssid);
        ESP_LOGD(TAG, "WIFI_SSID=%s", wifi_config.sta.ssid);
        if (periph_wifi->password)
        {
            strcpy((char *)wifi_config.sta.password, periph_wifi->password);
            ESP_LOGD(TAG, "WIFI_PASS=%s", wifi_config.sta.password);
        }
        ESP_ERROR_CHECK(esp_wifi_set_config(WIFI_IF_STA, &wifi_config));
        ret = ESP_OK;
    }

    // if (periph_wifi->ssid)
    // {
        // strcpy((char *)wifi_config.sta.ssid, periph_wifi->ssid);
        // ESP_LOGD(TAG, "WIFI_SSID=%s", wifi_config.sta.ssid);
        // if (periph_wifi->password)
        // {
        //     strcpy((char *)wifi_config.sta.password, periph_wifi->password);
        //     ESP_LOGD(TAG, "WIFI_PASS=%s", wifi_config.sta.password);
        // }
        // ESP_ERROR_CHECK(esp_wifi_set_storage(WIFI_STORAGE_RAM));
        // ESP_ERROR_CHECK(esp_wifi_set_mode(WIFI_MODE_STA));
        // ESP_ERROR_CHECK(esp_wifi_set_config(WIFI_IF_STA, &wifi_config));
    // }

    ESP_ERROR_CHECK(esp_wifi_start());
    periph_wifi->is_open = true;
    periph_wifi->wifi_state = PERIPH_WIFI_DISCONNECTED;
    xEventGroupClearBits(periph_wifi->state_event, CONNECTED_BIT);
    xEventGroupSetBits(periph_wifi->state_event, DISCONNECTED_BIT);
    return ret;
}

static esp_err_t _wifi_destroy(void)
{
    esp_periph_stop_timer(periph_wifi->timer);
    periph_wifi->disable_auto_reconnect = true;
    esp_wifi_disconnect();
    periph_wifi_wait_for_disconnected(portMAX_DELAY);
    esp_wifi_stop();
    esp_wifi_deinit();
    free(periph_wifi->ssid);
    free(periph_wifi->password);

    vEventGroupDelete(periph_wifi->state_event);
    free(periph_wifi);
    periph_wifi = NULL;
    return ESP_OK;
}

esp_err_t periph_wifi_init(periph_wifi_cfg_t *config)
{
    bool _success =
        ((periph_wifi = calloc(1, sizeof(struct periph_wifi))) &&
         (periph_wifi->state_event = xEventGroupCreate()) &&
         (config->ssid ? (bool)(periph_wifi->ssid = strdup(config->ssid)) : true) &&
         (config->password ? (bool)(periph_wifi->password = strdup(config->password)) : true));

    if (!_success)
        goto _periph_wifi_init_failed;

    periph_wifi->reconnect_timeout_ms = config->reconnect_timeout_ms;
    if (periph_wifi->reconnect_timeout_ms == 0)
    {
        periph_wifi->reconnect_timeout_ms = DEFAULT_RECONNECT_TIMEOUT_MS;
    }
    periph_wifi->disable_auto_reconnect = config->disable_auto_reconnect;
    periph_wifi->backup_reconnect = config->disable_auto_reconnect;

    return _wifi_init();

_periph_wifi_init_failed:
    if (periph_wifi)
    {
        vEventGroupDelete(periph_wifi->state_event);
        free(periph_wifi->ssid);
        free(periph_wifi->password);
        free(periph_wifi);
    }
    return ESP_FAIL;
}

#if 0
static void wifi_smartconfig_event_callback(smartconfig_status_t status, void *pdata)
{
    wifi_config_t sta_conf;
    smartconfig_type_t *type;
    switch (status)
    {
    case SC_STATUS_WAIT:
        ESP_LOGD(TAG, "SC_STATUS_WAIT");
        break;

    case SC_STATUS_FIND_CHANNEL:
        ESP_LOGD(TAG, "SC_STATUS_FIND_CHANNEL");
        break;

    case SC_STATUS_GETTING_SSID_PSWD:
        type = pdata;
        ESP_LOGD(TAG, "SC_STATUS_GETTING_SSID_PSWD, SC_TYPE=%d", (int)*type);
        break;

    case SC_STATUS_LINK:
        ESP_LOGE(TAG, "SC_STATUS_LINK");
        memset(&sta_conf, 0x00, sizeof(sta_conf));
        memcpy(&sta_conf.sta, pdata, sizeof(wifi_sta_config_t));
        ESP_LOGE(TAG, "SSID=%s, PASS=%s", sta_conf.sta.ssid, sta_conf.sta.password);
        esp_wifi_disconnect();

        if (esp_wifi_set_config(WIFI_IF_STA, &sta_conf) != ESP_OK)
        {
            // wifi_state = WIFI_SMARTCONFIG_ERROR;
            xEventGroupSetBits(wifi_event_group, SMARTCONFIG_ERROR_BIT);
        }
        if (esp_wifi_connect() != ESP_OK)
        {
            // wifi_state = WIFI_SMARTCONFIG_ERROR;
            xEventGroupSetBits(wifi_event_group, SMARTCONFIG_ERROR_BIT);
            break;
        }
        break;

    case SC_STATUS_LINK_OVER:
        ESP_LOGE(TAG, "SC_STATUS_LINK_OVER");

        if (pdata != NULL)
        {
            char phone_ip[4] = {0};
            memcpy(phone_ip, (const void *)pdata, 4);
            ESP_LOGD(TAG, "Phone ip: %d.%d.%d.%d", phone_ip[0], phone_ip[1], phone_ip[2], phone_ip[3]);
            // wifi_state = WIFI_SMARTCONFIG_DONE;
            // esp_periph_send_event(g_periph, WIFI_SMARTCONFIG_DONE, NULL, 0);
            xEventGroupSetBits(wifi_event_group, SMARTCONFIG_DONE_BIT);
        }
        else
        {
            // wifi_state = WIFI_SMARTCONFIG_ERROR;
            // esp_periph_send_event(g_periph, WIFI_SMARTCONFIG_ERROR, NULL, 0);
            xEventGroupSetBits(wifi_event_group, SMARTCONFIG_ERROR_BIT);
        }
        esp_smartconfig_stop();
        break;
    }
}
/** 
 * @brief  sys_event_handler
 * @note   
 * @param  *ctx: 
 * @param  *event: 
 * @retval 
 */
static esp_err_t wifi_event_callback(void *ctx, system_event_t *event)
{
    switch (event->event_id)
    {
    case SYSTEM_EVENT_STA_START:
        wifi_state = WIFI_CONNECTING;
        esp_wifi_connect();
        break;

    case SYSTEM_EVENT_STA_CONNECTED:
        break;
    case SYSTEM_EVENT_STA_GOT_IP:
        wifi_state = WIFI_CONNECTED;
        xEventGroupClearBits(state_event, DISCONNECTED_BIT);
        xEventGroupSetBits(state_event, CONNECTED_BIT);
        break;

    case SYSTEM_EVENT_STA_DISCONNECTED:
        wifi_state = WIFI_DISCONNECTED;
        xEventGroupClearBits(state_event, CONNECTED_BIT);
        xEventGroupSetBits(state_event, DISCONNECTED_BIT);
        esp_periph_send_event(self, WIFI_DISCONNECTED, NULL, 0);

        ESP_LOGW(TAG, "Wi-Fi disconnected from SSID %s, auto-reconnect %s, reconnect after %d ms",
                 ssid,
                 disable_auto_reconnect == 0 ? "enabled" : "disabled",
                 reconnect_timeout_ms);
        if (disable_auto_reconnect)
        {
            break;
        }
        esp_periph_start_timer(self, reconnect_timeout_ms / portTICK_RATE_MS, wifi_reconnect_timer);
        break;
    default:
        break;
    }
    return ESP_OK;
}

/** 
 * @brief  wifi_init
 * @note   
 * @retval None
 */
esp_err_t wifi_init(void)
{
    wifi_config_t conf;
    wifi_init_config_t cfg = WIFI_INIT_CONFIG_DEFAULT();
    wifi_event_group = xEventGroupCreate();

    tcpip_adapter_init();
    ESP_ERROR_CHECK(esp_event_loop_init(sys_event_handler, NULL));
    ESP_ERROR_CHECK(esp_wifi_init(&cfg));
    ESP_ERROR_CHECK(esp_wifi_set_storage(WIFI_STORAGE_FLASH));
    ESP_ERROR_CHECK(esp_wifi_set_mode(WIFI_MODE_STA));
    ESP_ERROR_CHECK(esp_wifi_get_config(ESP_IF_WIFI_STA, &conf));
    return strlen((char *)conf.sta.ssid) == 0 ? ESP_ERR_INVALID_ARG : ESP_OK;
}

esp_err_t wifi_wait_for_connected(TickType_t tick_to_wait)
{
    EventBits_t connected_bit = xEventGroupWaitBits(wifi_event_group, CONNECTED_BIT, false, true, tick_to_wait);
    if (connected_bit & CONNECTED_BIT)
    {
        return ESP_OK;
    }
    return ESP_FAIL;
}

esp_err_t wifi_connect(void)
{
    ESP_ERROR_CHECK(esp_wifi_start());
    if (wifi_wait_for_connected(30000 / portTICK_PERIOD_MS) != ESP_OK)
    {
        return ESP_FAIL;
    }
    return ESP_OK;
}

esp_err_t wifi_wait_for_disconnected(TickType_t tick_to_wait)
{
    EventBits_t disconnected_bit = xEventGroupWaitBits(wifi_event_group, DISCONNECTED_BIT, false, true, tick_to_wait);
    if (disconnected_bit & DISCONNECTED_BIT)
    {
        return ESP_OK;
    }
    return ESP_FAIL;
}

esp_err_t wifi_smartconfig_start(void)
{
    esp_wifi_disconnect();
    if (wifi_wait_for_disconnected(portMAX_DELAY) != ESP_OK)
    {
        return ESP_FAIL;
    }
    esp_err_t err = esp_wifi_start();
    err |= esp_smartconfig_set_type(SC_TYPE_ESPTOUCH);
    err |= esp_smartconfig_start(wifi_smartconfig_event_callback);
    xEventGroupClearBits(wifi_event_group, SMARTCONFIG_DONE_BIT);
    xEventGroupClearBits(wifi_event_group, SMARTCONFIG_ERROR_BIT);
    return err;
}

esp_err_t wifi_smartconfig_wait(TickType_t tick_to_wait)
{
    EventBits_t smartconfig_bit = xEventGroupWaitBits(wifi_event_group,
                                                      SMARTCONFIG_DONE_BIT | SMARTCONFIG_ERROR_BIT, false, true, tick_to_wait);

    if (smartconfig_bit & SMARTCONFIG_DONE_BIT)
    {
        return ESP_OK;
    }
    if (smartconfig_bit & SMARTCONFIG_ERROR_BIT)
    {
        return ESP_FAIL;
    }
    esp_smartconfig_stop();
    return ESP_FAIL;
}
#endif