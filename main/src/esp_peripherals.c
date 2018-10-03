#include <stdlib.h>
#include "esp_log.h"
#include "esp_peripherals.h"

#define TAG "[Peripherals]"

esp_err_t esp_periph_start_timer(TimerHandle_t timer, TickType_t interval_tick, timer_callback callback)
{
    if (timer == NULL)
    {
        timer = xTimerCreate("periph_itmer", interval_tick, pdTRUE, timer, callback);
        if (xTimerStart(timer, 0) != pdTRUE)
        {
            ESP_LOGE(TAG, "Error to start timer");
            return ESP_FAIL;
        }
    }
    return ESP_OK;
}

esp_err_t esp_periph_stop_timer(TimerHandle_t timer)
{
    if (timer)
    {
        xTimerStop(timer, portMAX_DELAY);
        xTimerDelete(timer, portMAX_DELAY);
        timer = NULL;
    }
    return ESP_OK;
}