#ifndef MERROR_H
#define MERROR_H

#define ESP_MEM_CHECK(TAG, a, action)                                                                            \
        if (!(a))                                                                                                \
        {                                                                                                        \
                ESP_LOGE("[MEM ERROR]", "%s:%d (%s): %s", __FILE__, __LINE__, __FUNCTION__, "Memory exhausted"); \
                action;                                                                                          \
        }

#define APP_ERROR_CHECK(code, info, action)                                                                              \
        if (code)                                                                                                        \
        {                                                                                                                \
                ESP_LOGE("[APP ERROR]", "err_code : %d file: \"%s\" line %d info:%s\n", code, __FILE__, __LINE__, info); \
                action;                                                                                                  \
        }

#endif