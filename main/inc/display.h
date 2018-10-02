#ifndef DISPLAY_H
#define DISPLAY_H

#include <stdint.h>

void display_init(void);
void send_info_to_display(int16_t x,int16_t y,const char * str);

#endif