#ifndef __WIFI_H
#define __WIFI_H


#define ESPTOUCH_DONE_BIT 0x01
#define CONNECTED_BIT 0x02

void init_wifi(void);
esp_err_t wifi_init(void);
void wifi_start_connect(void);
void wifi_start_smartconfig(void);
void wifi_wait_smartconfig_done(void);

#endif /*__WIFI_H*/