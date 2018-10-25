/*
 * ESPRESSIF MIT License
 *
 * Copyright (c) 2018 <ESPRESSIF SYSTEMS (SHANGHAI) PTE LTD>
 *
 * Permission is hereby granted for use on all ESPRESSIF SYSTEMS products, in which case,
 * it is free of charge, to any person obtaining a copy of this software and associated
 * documentation files (the "Software"), to deal in the Software without restriction, including
 * without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the Software is furnished
 * to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all copies or
 * substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
 * FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
 * COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
 * IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
 * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 *
 */

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include "soc/soc.h"
#include "soc/rtc_cntl_reg.h"
#include "soc/sens_reg.h"

#include "esp_log.h"
#include "esp_system.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "freertos/queue.h"
#include "board.h"
#include "button.h"
#include "periph_button.h"

static const char *TAG = "PERIPH_BUTTON";

typedef struct
{
    esp_button_handle_t btn;
    uint64_t gpio_mask;
    int long_press_time_ms;
} periph_button_t;

periph_button_t *periph_btn = NULL;
static TimerHandle_t btn_timer = NULL;

static void button_send_event(int event_id, uint64_t mask)
{
    int gpio_num = 0;
    while (mask)
    {
        if (mask & 0x01)
        {
            // esp_periph_send_event(event_id, (void *)gpio_num, 0);
            ESP_LOGI(TAG, "id:%x gpio:%d", event_id, gpio_num);
        }
        mask >>= 1;
        gpio_num++;
    }
}

static esp_err_t _button_run(void)
{
    button_result_t result;
    if (button_read(periph_btn->btn, &result))
    {
        ESP_LOGI(TAG, "Button event, press_mask %llx, release_mask: %llx, long_press_mask: %llx, long_release_mask: %llx",
                 result.press_mask, result.release_mask, result.long_press_mask, result.long_release_mask);
        button_send_event(PERIPH_BUTTON_PRESSED, result.press_mask);
        button_send_event(PERIPH_BUTTON_RELEASE, result.release_mask);
        button_send_event(PERIPH_BUTTON_LONG_PRESSED, result.long_press_mask);
        button_send_event(PERIPH_BUTTON_LONG_RELEASE, result.long_release_mask);
    }
    return ESP_OK;
}

static esp_err_t _button_destroy(void)
{
    button_destroy(periph_btn->btn);
    free(periph_btn);
    return ESP_OK;
}

static void IRAM_ATTR button_intr_handler(void *param)
{
}

static void button_timer_handler(xTimerHandle tmr)
{
    _button_run();
}

esp_err_t periph_button_init(periph_button_cfg_t *config)
{
    periph_btn = calloc(1, sizeof(periph_button_t));
    ESP_MEM_CHECK(TAG, periph_btn, return ESP_FAIL);

    button_config_t btn_config = {
        .gpio_mask = config->gpio_mask,
        .long_press_time_ms = config->long_press_time_ms,
        .button_intr_handler = button_intr_handler,
        .intr_context = NULL,
    };

    periph_btn->btn = button_init(&btn_config);
    esp_periph_start_timer(btn_timer, 50 / portTICK_RATE_MS, button_timer_handler);

    return ESP_OK;
}
