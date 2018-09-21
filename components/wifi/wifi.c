#include <stdlib.h>
#include <string.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
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

EventGroupHandle_t wifi_event_group = NULL;

static char tmp_buf[256];
/** 
 * @brief  sc_callback
 * @note   
 * @param  status: 
 * @param  *pdata: 
 * @retval None
 */
static void sc_callback(smartconfig_status_t status, void *pdata)
{
    switch (status)
    {
    case SC_STATUS_WAIT:
        ESP_LOGI(TAG, "SC_STATUS_WAIT");
        break;
    case SC_STATUS_FIND_CHANNEL:
        ESP_LOGI(TAG, "SC_STATUS_FINDING_CHANNEL");
        break;
    case SC_STATUS_GETTING_SSID_PSWD:
        ESP_LOGI(TAG, "SC_STATUS_GETTING_SSID_PSWD");
        break;
    case SC_STATUS_LINK:
        ESP_LOGI(TAG, "SC_STATUS_LINK");
        wifi_config_t *wifi_config = pdata;
        ESP_LOGI(TAG, "SSID:%s", wifi_config->sta.ssid);
        ESP_LOGI(TAG, "PASSWORD:%s", wifi_config->sta.password);

        // save_wifi_info(wifi_config);

        ESP_ERROR_CHECK(esp_wifi_disconnect());
        ESP_ERROR_CHECK(esp_wifi_set_config(ESP_IF_WIFI_STA, wifi_config));
        ESP_ERROR_CHECK(esp_wifi_connect());
        break;

    case SC_STATUS_LINK_OVER:
        ESP_LOGI(TAG, "SC_STATUS_LINK_OVER");
        if (pdata != NULL)
        {
            uint8_t phone_ip[4] = {0};
            memcpy(phone_ip, (uint8_t *)pdata, 4);
            ESP_LOGI(TAG, "ip: %d.%d.%d.%d\n", phone_ip[0], phone_ip[1], phone_ip[2], phone_ip[3]);
        }
        xEventGroupSetBits(wifi_event_group, ESPTOUCH_DONE_BIT);
        break;
    default:
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
static esp_err_t sys_event_handler(void *ctx, system_event_t *event)
{
    switch (event->event_id)
    {
    case SYSTEM_EVENT_STA_CONNECTED:
        ESP_LOGI(TAG, "SYSTEM_EVENT_STA_CONNECTED\n");
        break;

    case SYSTEM_EVENT_STA_START:
        ESP_LOGI(TAG, "SYSTEM_EVENT_STA_START\n");
        if ((xEventGroupGetBits(wifi_event_group) & PREPARE_CONNECT_BIT))
        {
            ESP_ERROR_CHECK(esp_wifi_connect());
        }
        break;

    case SYSTEM_EVENT_STA_GOT_IP:
        ESP_LOGI(TAG, "SYSTEM_EVENT_STA_GOT_IP\n");

        snprintf(tmp_buf, sizeof(tmp_buf), "got ip:%s", ip4addr_ntoa(&event->event_info.got_ip.ip_info.ip));
        TFT_print(tmp_buf, MARGIN_X, LASTY + TFT_getfontheight() + 2);
        xEventGroupSetBits(wifi_event_group, CONNECTED_BIT);

        break;

    case SYSTEM_EVENT_STA_DISCONNECTED:
        ESP_LOGI(TAG, "SYSTEM_EVENT_STA_DISCONNECTED\n");
        esp_wifi_connect();
        xEventGroupClearBits(wifi_event_group, CONNECTED_BIT);
        break;

    default:
        break;
    }
    return ESP_OK;
}

/** 
 * @brief  init_wifi
 * @note   
 * @retval None
 */
void init_wifi(void)
{

    tcpip_adapter_init();

    wifi_event_group = xEventGroupCreate();

    ESP_ERROR_CHECK(esp_event_loop_init(sys_event_handler, NULL));

    wifi_init_config_t cfg = WIFI_INIT_CONFIG_DEFAULT();

    ESP_ERROR_CHECK(esp_wifi_init(&cfg));
    ESP_ERROR_CHECK(esp_wifi_set_storage(WIFI_STORAGE_FLASH));
    ESP_ERROR_CHECK(esp_wifi_set_mode(WIFI_MODE_STA));

    wifi_config_t conf;
    ESP_ERROR_CHECK(esp_wifi_get_config(ESP_IF_WIFI_STA, &conf));

    ESP_LOGI(TAG, "ssid : %s", conf.sta.ssid);
    ESP_LOGI(TAG, "passwd : %s", conf.sta.password);

    if (!strlen((char*)conf.sta.ssid))
    {
        ESP_LOGI(TAG, "wifi is not config ,Start SmartConfig  Start...");
        snprintf(tmp_buf, sizeof(tmp_buf), "wifi is not config,Start SmartConfig  Start...");
        TFT_print(tmp_buf, MARGIN_X, LASTY + TFT_getfontheight() + 2);

        ESP_ERROR_CHECK(esp_wifi_start());
        ESP_ERROR_CHECK(esp_smartconfig_set_type(SC_TYPE_ESPTOUCH));
        ESP_ERROR_CHECK(esp_smartconfig_start(sc_callback));

        xEventGroupWaitBits(wifi_event_group, ESPTOUCH_DONE_BIT, true, false, portMAX_DELAY);
        esp_smartconfig_stop();

        ESP_LOGI(TAG, "SmartConfig Done...");
        snprintf(tmp_buf, sizeof(tmp_buf), "SmartConfig Done...");
        TFT_print(tmp_buf, MARGIN_X, LASTY + TFT_getfontheight() + 2);
    }
    else
    {
        ESP_LOGI(TAG, "Start WiFi Connect ...");
        snprintf(tmp_buf, sizeof(tmp_buf), "Start WiFi Connect ...");
        TFT_print(tmp_buf, MARGIN_X, LASTY + TFT_getfontheight() + 2);
        xEventGroupSetBits(wifi_event_group, PREPARE_CONNECT_BIT);
        ESP_ERROR_CHECK(esp_wifi_start());

        xEventGroupWaitBits(wifi_event_group, CONNECTED_BIT, pdFALSE, pdTRUE, portMAX_DELAY);
    }
    ESP_LOGI(TAG, "wifi task exit...");
}