#ifndef TTGO_BOARD_H
#define TTGO_BOARD_H

#include "sdkconfig.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef CONFIG_TTGO_T14_BOARD
#include "ttgo_t14_board.h"
#endif

#ifdef CONFIG_TTGO_T9_BOARD
#include "ttgo_t9_board.h"
#endif


#ifdef __cplusplus
}
#endif

#endif /*TTGO_BOARD_H*/