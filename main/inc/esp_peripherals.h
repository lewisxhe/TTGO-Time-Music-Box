#ifndef ESP_PERIPHERALS_H
#define ESP_PERIPHERALS_H
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "freertos/timers.h"

typedef void (*timer_callback)(xTimerHandle tmr);
esp_err_t esp_periph_start_timer(TimerHandle_t timer, TickType_t interval_tick, timer_callback callback);
esp_err_t esp_periph_stop_timer(TimerHandle_t timer);


#endif
