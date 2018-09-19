# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
# 1 "D:\\ESP32\\esp-idf-v3.1-rc1\\ESP32_PIC_A2DP\\build\\bt//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
# 26 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/common/include/common/bt_target.h" 1
# 37 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/common/include/common/bt_target.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/ESP32_PIC_A2DP/build/include/sdkconfig.h" 1
# 38 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/common/include/common/bt_target.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h" 1
# 22 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h" 1
# 12 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h" 1
# 11 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/features.h" 1
# 12 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h" 2





typedef signed char __int8_t ;
typedef unsigned char __uint8_t ;


typedef signed short __int16_t;
typedef unsigned short __uint16_t;


typedef signed int __int32_t;
typedef unsigned int __uint32_t;


typedef signed long long __int64_t;
typedef unsigned long long __uint64_t;


typedef __int8_t __int_least8_t;
typedef __uint8_t __uint_least8_t;


typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;


typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;


typedef __int64_t __int_least64_t;
typedef __uint64_t __uint_least64_t;


typedef int __intptr_t;
typedef unsigned int __uintptr_t;
# 13 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/_intsup.h" 1
# 14 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h" 2






typedef __int8_t int8_t ;
typedef __uint8_t uint8_t ;




typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int16_t int16_t ;
typedef __uint16_t uint16_t ;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int32_t int32_t ;
typedef __uint32_t uint32_t ;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int64_t int64_t ;
typedef __uint64_t uint64_t ;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 74 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 84 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 94 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 104 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 153 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
  typedef long long int intmax_t;
# 162 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
  typedef long long unsigned int uintmax_t;






typedef __intptr_t intptr_t;
typedef __uintptr_t uintptr_t;
# 23 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h" 2
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdbool.h" 1 3 4
# 24 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h" 2
# 33 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
typedef uint8_t UINT8;
typedef uint16_t UINT16;
typedef uint32_t UINT32;
typedef uint64_t UINT64;

typedef int8_t INT8;
typedef int16_t INT16;
typedef int32_t INT32;
typedef 
# 41 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h" 3 4
       _Bool 
# 41 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
            BOOLEAN;
# 198 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
typedef struct {
    uint16_t event;
    uint16_t len;
    uint16_t offset;
    uint16_t layer_specific;
    uint8_t data[];
} BT_HDR;
# 306 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
typedef UINT8 BD_ADDR[6];
typedef UINT8 *BD_ADDR_PTR;




typedef UINT8 tAMP_KEY_TYPE;


typedef UINT8 BT_OCTET8[8];


typedef UINT8 LINK_KEY[16];


typedef UINT8 AMP_LINK_KEY[32];


typedef UINT8 BT_OCTET16[16];


typedef UINT8 PIN_CODE[16];
typedef UINT8 *PIN_CODE_PTR;


typedef UINT8 BT_OCTET32[32];


typedef UINT8 DEV_CLASS[3];
typedef UINT8 *DEV_CLASS_PTR;


typedef UINT8 EXT_INQ_RESP[3];
typedef UINT8 *EXT_INQ_RESP_PTR;


typedef UINT8 BD_NAME[248 + 1];
typedef UINT8 *BD_NAME_PTR;


typedef UINT8 BD_FEATURES[8];


typedef UINT8 BT_EVENT_MASK[8];


typedef UINT8 LAP[3];
typedef UINT8 INQ_LAP[3];


typedef UINT8 RAND_NUM[16];


typedef UINT8 ACO[12];


typedef UINT8 COF[12];

typedef struct {
    UINT8 qos_flags;
    UINT8 service_type;
    UINT32 token_rate;
    UINT32 token_bucket_size;
    UINT32 peak_bandwidth;
    UINT32 latency;
    UINT32 delay_variation;
} FLOW_SPEC;
# 396 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
typedef UINT8 ACCESS_CODE[9];
# 420 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
typedef struct {




    UINT16 len;

    union {
        UINT16 uuid16;
        UINT32 uuid32;
        UINT8 uuid128[16];
    } uu;

} tBT_UUID;
# 482 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
typedef struct {
    UINT32 is_connected;
    INT32 rssi;
    UINT32 bytes_sent;
    UINT32 bytes_rcvd;
    UINT32 duration;
} tBT_CONN_STATS;
# 504 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
typedef UINT8 tBLE_ADDR_TYPE;





typedef UINT8 tBT_TRANSPORT;



typedef struct {
    tBLE_ADDR_TYPE type;
    BD_ADDR bda;
} tBLE_BD_ADDR;






typedef UINT8 tBT_DEVICE_TYPE;
# 701 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
typedef void (BT_LOG_FUNC) (int trace_type, const char *fmt_str, ...);
# 716 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
static const BD_ADDR bd_addr_any = {0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF};
static const BD_ADDR bd_addr_null = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
# 733 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
static inline void bdcpy(BD_ADDR a, const BD_ADDR b)
{
    int i;

    for (i = 6; i != 0; i--) {
        *a++ = *b++;
    }
}
# 752 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
static inline int bdcmp(const BD_ADDR a, const BD_ADDR b)
{
    int i;

    for (i = 6; i != 0; i--) {
        if (*a++ != *b++) {
            return -1;
        }
    }
    return 0;
}
# 774 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
static inline int bdcmpany(const BD_ADDR a)
{
    return bdcmp(a, bd_addr_any);
}
# 789 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
static inline void bdsetany(BD_ADDR a)
{
    bdcpy(a, bd_addr_any);
}
# 39 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/common/include/common/bt_target.h" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/dyn_mem.h" 1
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/dyn_mem.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/ESP32_PIC_A2DP/build/include/sdkconfig.h" 1
# 22 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/dyn_mem.h" 2
# 41 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/common/include/common/bt_target.h" 2
# 1950 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/common/include/common/bt_target.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/common/include/common/bt_trace.h" 1
# 22 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/common/include/common/bt_trace.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/ESP32_PIC_A2DP/build/include/sdkconfig.h" 1
# 23 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/common/include/common/bt_trace.h" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdio.h" 1
# 29 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdio.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/_ansi.h" 1
# 15 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/_ansi.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/newlib.h" 1
# 16 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/_ansi.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/config.h" 1



# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/ieeefp.h" 1
# 5 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/config.h" 2
# 189 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/config.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/config/core-isa.h" 1
# 190 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/config.h" 2
# 17 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/_ansi.h" 2
# 30 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdio.h" 2





# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/cdefs.h" 1
# 45 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/cdefs.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 216 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4

# 216 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef unsigned int size_t;
# 46 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/cdefs.h" 2
# 36 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdio.h" 2
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 149 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef int ptrdiff_t;
# 328 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef short unsigned int wchar_t;
# 37 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdio.h" 2


# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdarg.h" 1 3 4
# 40 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 40 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdio.h" 2







# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/reent.h" 1
# 13 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/reent.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/_ansi.h" 1
# 14 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/reent.h" 2
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 15 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/reent.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/_types.h" 1
# 12 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/_types.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_types.h" 1
# 13 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/_types.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/lock.h" 1
# 11 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/lock.h"

# 11 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/lock.h"
typedef int _lock_t;
typedef _lock_t _LOCK_RECURSIVE_T;
typedef _lock_t _LOCK_T;
# 28 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/lock.h"
void _lock_init(_lock_t *lock);
void _lock_init_recursive(_lock_t *lock);
void _lock_close(_lock_t *lock);
void _lock_close_recursive(_lock_t *lock);
void _lock_acquire(_lock_t *lock);
void _lock_acquire_recursive(_lock_t *lock);
int _lock_try_acquire(_lock_t *lock);
int _lock_try_acquire_recursive(_lock_t *lock);
void _lock_release(_lock_t *lock);
void _lock_release_recursive(_lock_t *lock);
# 14 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/_types.h" 2


typedef long _off_t;



typedef short __dev_t;



typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



__extension__ typedef long long _off64_t;







typedef long _fpos_t;
# 55 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/_types.h"
typedef signed int _ssize_t;
# 67 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/_types.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 357 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4

# 357 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef unsigned int wint_t;
# 68 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/_types.h" 2




# 71 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/_types.h"
typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;



typedef _LOCK_RECURSIVE_T _flock_t;




typedef void *_iconv_t;
# 16 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/reent.h" 2






typedef unsigned long __ULong;
# 38 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/reent.h"
struct _reent;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};


struct _atexit {
 struct _atexit *_next;
 int _ind;
 void (*_fns[32])(void);
        struct _on_exit_args * _on_exit_args_ptr;
};
# 115 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/reent.h"
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 151 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/reent.h"
struct __sFILE_fake {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;

  struct _reent *_data;
};




extern void __sinit (struct _reent *);
# 179 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/reent.h"
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;


  struct _reent *_data;



  void * _cookie;

  int (* _read) (struct _reent *, void *, char *, int)
                                          ;
  int (* _write) (struct _reent *, void *, const char *, int)

                                   ;
  _fpos_t (* _seek) (struct _reent *, void *, _fpos_t, int);
  int (* _close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  _off_t _offset;






  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 285 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/reent.h"
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 317 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/reent.h"
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;


  __extension__ unsigned long long _rand_next;

};
# 342 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/reent.h"
struct _mprec
{

  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;
};


struct _misc_reent
{

  char *_strtok_last;
  _mbstate_t _mblen_state;
  _mbstate_t _wctomb_state;
  _mbstate_t _mbtowc_state;
  char _l64a_buf[8];
  int _getdate_err;
  _mbstate_t _mbrlen_state;
  _mbstate_t _mbrtowc_state;
  _mbstate_t _mbsrtowcs_state;
  _mbstate_t _wcrtomb_state;
  _mbstate_t _wcsrtombs_state;
};



struct _reent
{


  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;

  char *_emergency;

  int __sdidinit;

  int _current_category;
  const char *_current_locale;

  struct _mprec *_mp;

  void (* __cleanup) (struct _reent *);

  int _gamma_signgam;


  int _cvtlen;
  char *_cvtbuf;

  struct _rand48 *_r48;
  struct __tm *_localtime_buf;
  char *_asctime_buf;


  void (**(_sig_func))(int);



  struct _atexit *_atexit;
  struct _atexit _atexit0;


  struct _glue __sglue;
  __FILE *__sf;
  struct _misc_reent *_misc;
  char *_signal_buf;
};

extern const struct __sFILE_fake __sf_fake_stdin;
extern const struct __sFILE_fake __sf_fake_stdout;
extern const struct __sFILE_fake __sf_fake_stderr;
# 458 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/reent.h"
extern void esp_reent_init(struct _reent* reent);
# 771 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/reent.h"
extern struct _reent *_global_impure_ptr ;

void _reclaim_reent (struct _reent *);





  struct _reent * __getreent (void);
# 48 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdio.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/types.h" 1
# 69 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/types.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 70 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/types.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/types.h" 1
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/types.h"
typedef long int __off_t;
typedef int __pid_t;

__extension__ typedef long long int __loff_t;
# 71 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/types.h" 2
# 93 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/types.h"
typedef unsigned char u_char;



typedef unsigned short u_short;



typedef unsigned int u_int;



typedef unsigned long u_long;





typedef unsigned short ushort;
typedef unsigned int uint;
typedef unsigned long ulong;



typedef unsigned long clock_t;




typedef long time_t;







struct timespec {
  time_t tv_sec;
  long tv_nsec;
};


struct itimerspec {
  struct timespec it_interval;
  struct timespec it_value;
};


typedef long daddr_t;



typedef char * caddr_t;
# 155 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/types.h"
typedef unsigned short ino_t;
# 184 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/types.h"
typedef _off_t off_t;
typedef __dev_t dev_t;
typedef __uid_t uid_t;
typedef __gid_t gid_t;





typedef int pid_t;







typedef long key_t;

typedef _ssize_t ssize_t;
# 217 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/types.h"
typedef unsigned int mode_t __attribute__ ((__mode__ (__SI__)));




typedef unsigned short nlink_t;
# 244 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/types.h"
typedef long fd_mask;







typedef struct _types_fd_set {
 fd_mask fds_bits[(((64)+(((sizeof (fd_mask) * 8))-1))/((sizeof (fd_mask) * 8)))];
} _types_fd_set;
# 275 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/types.h"
typedef unsigned long clockid_t;




typedef unsigned long timer_t;



typedef unsigned long useconds_t;
typedef long suseconds_t;
# 299 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/types.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/sched.h" 1
# 46 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/sched.h"
struct sched_param {
  int sched_priority;
# 59 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/sched.h"
};

int sched_yield( void );
# 300 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/types.h" 2
# 308 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/types.h"
typedef __uint32_t pthread_t;
# 341 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/types.h"
typedef struct {
  int is_initialized;
  void *stackaddr;
  int stacksize;
  int contentionscope;
  int inheritsched;
  int schedpolicy;
  struct sched_param schedparam;
# 357 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/types.h"
  int detachstate;





} pthread_attr_t;
# 442 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/types.h"
typedef __uint32_t pthread_mutex_t;

typedef struct {
  int is_initialized;
# 454 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/types.h"
  int type;

  int recursive;
} pthread_mutexattr_t;




typedef __uint32_t pthread_cond_t;

typedef struct {
  int is_initialized;



} pthread_condattr_t;



typedef __uint32_t pthread_key_t;

typedef struct {
  int is_initialized;
  int init_executed;
} pthread_once_t;
# 49 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdio.h" 2



typedef __FILE FILE;




typedef _fpos_t fpos_t;





# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/stdio.h" 1
# 64 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdio.h" 2
# 164 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdio.h"
FILE * tmpfile (void);
char * tmpnam (char *);

char * tempnam (const char *, const char *);

int fclose (FILE *);
int fflush (FILE *);
FILE * freopen (const char *restrict, const char *restrict, FILE *restrict);
void setbuf (FILE *restrict, char *restrict);
int setvbuf (FILE *restrict, char *restrict, int, size_t);
int fprintf (FILE *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int fscanf (FILE *restrict, const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int printf (const char *restrict, ...) __attribute__ ((__format__ (__printf__, 1, 2)))
                                                            ;
int scanf (const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 1, 2)))
                                                           ;
int sscanf (const char *restrict, const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int vfprintf (FILE *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vprintf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 1, 0)))
                                                            ;
int vsprintf (char *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int fgetc (FILE *);
char * fgets (char *restrict, int, FILE *restrict);
int fputc (int, FILE *);
int fputs (const char *restrict, FILE *restrict);
int getc (FILE *);
int getchar (void);
char * gets (char *);
int putc (int, FILE *);
int putchar (int);
int puts (const char *);
int ungetc (int, FILE *);
size_t fread (void * restrict, size_t _size, size_t _n, FILE *restrict);
size_t fwrite (const void * restrict , size_t _size, size_t _n, FILE *);



int fgetpos (FILE *restrict, fpos_t *restrict);

int fseek (FILE *, long, int);



int fsetpos (FILE *, const fpos_t *);

long ftell ( FILE *);
void rewind (FILE *);
void clearerr (FILE *);
int feof (FILE *);
int ferror (FILE *);
void perror (const char *);

FILE * fopen (const char *restrict _name, const char *restrict _type);
int sprintf (char *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int remove (const char *);
int rename (const char *, const char *);
# 235 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdio.h"
int fseeko (FILE *, off_t, int);
off_t ftello ( FILE *);







int asiprintf (char **, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
char * asniprintf (char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
char * asnprintf (char *restrict, size_t *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int asprintf (char **restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;

int diprintf (int, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;

int fiprintf (FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int fiscanf (FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int iprintf (const char *, ...) __attribute__ ((__format__ (__printf__, 1, 2)))
                                                            ;
int iscanf (const char *, ...) __attribute__ ((__format__ (__scanf__, 1, 2)))
                                                           ;
int siprintf (char *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int siscanf (const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int snprintf (char *restrict, size_t, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int sniprintf (char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int vasiprintf (char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
char * vasniprintf (char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
char * vasnprintf (char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int vasprintf (char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vdiprintf (int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vfiprintf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vfiscanf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int vfscanf (FILE *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int viprintf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 1, 0)))
                                                            ;
int viscanf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 1, 0)))
                                                           ;
int vscanf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 1, 0)))
                                                           ;
int vsiprintf (char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vsiscanf (const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int vsniprintf (char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int vsnprintf (char *restrict, size_t, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int vsscanf (const char *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
# 313 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdio.h"
FILE * fdopen (int, const char *);

int fileno (FILE *);
int getw (FILE *);
int pclose (FILE *);
FILE * popen (const char *, const char *);
int putw (int, FILE *);
void setbuffer (FILE *, char *, int);
int setlinebuf (FILE *);
int getc_unlocked (FILE *);
int getchar_unlocked (void);
void flockfile (FILE *);
int ftrylockfile (FILE *);
void funlockfile (FILE *);
int putc_unlocked (int, FILE *);
int putchar_unlocked (int);
# 338 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdio.h"
int dprintf (int, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;

FILE * fmemopen (void *restrict, size_t, const char *restrict);


FILE * open_memstream (char **, size_t *);

int renameat (int, const char *, int, const char *);

int vdprintf (int, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;







int _asiprintf_r (struct _reent *, char **, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
char * _asniprintf_r (struct _reent *, char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
char * _asnprintf_r (struct _reent *, char *restrict, size_t *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _asprintf_r (struct _reent *, char **restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _diprintf_r (struct _reent *, int, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _dprintf_r (struct _reent *, int, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fclose_r (struct _reent *, FILE *);
int _fcloseall_r (struct _reent *);
FILE * _fdopen_r (struct _reent *, int, const char *);
int _fflush_r (struct _reent *, FILE *);
int _fgetc_r (struct _reent *, FILE *);
int _fgetc_unlocked_r (struct _reent *, FILE *);
char * _fgets_r (struct _reent *, char *restrict, int, FILE *restrict);
char * _fgets_unlocked_r (struct _reent *, char *restrict, int, FILE *restrict);




int _fgetpos_r (struct _reent *, FILE *, fpos_t *);
int _fsetpos_r (struct _reent *, FILE *, const fpos_t *);

int _fiprintf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fiscanf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
FILE * _fmemopen_r (struct _reent *, void *restrict, size_t, const char *restrict);
FILE * _fopen_r (struct _reent *, const char *restrict, const char *restrict);
FILE * _freopen_r (struct _reent *, const char *restrict, const char *restrict, FILE *restrict);
int _fprintf_r (struct _reent *, FILE *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fpurge_r (struct _reent *, FILE *);
int _fputc_r (struct _reent *, int, FILE *);
int _fputc_unlocked_r (struct _reent *, int, FILE *);
int _fputs_r (struct _reent *, const char *restrict, FILE *restrict);
int _fputs_unlocked_r (struct _reent *, const char *restrict, FILE *restrict);
size_t _fread_r (struct _reent *, void * restrict, size_t _size, size_t _n, FILE *restrict);
size_t _fread_unlocked_r (struct _reent *, void * restrict, size_t _size, size_t _n, FILE *restrict);
int _fscanf_r (struct _reent *, FILE *restrict, const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
int _fseek_r (struct _reent *, FILE *, long, int);
int _fseeko_r (struct _reent *, FILE *, _off_t, int);
long _ftell_r (struct _reent *, FILE *);
_off_t _ftello_r (struct _reent *, FILE *);
void _rewind_r (struct _reent *, FILE *);
size_t _fwrite_r (struct _reent *, const void * restrict, size_t _size, size_t _n, FILE *restrict);
size_t _fwrite_unlocked_r (struct _reent *, const void * restrict, size_t _size, size_t _n, FILE *restrict);
int _getc_r (struct _reent *, FILE *);
int _getc_unlocked_r (struct _reent *, FILE *);
int _getchar_r (struct _reent *);
int _getchar_unlocked_r (struct _reent *);
char * _gets_r (struct _reent *, char *);
int _iprintf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int _iscanf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
FILE * _open_memstream_r (struct _reent *, char **, size_t *);
void _perror_r (struct _reent *, const char *);
int _printf_r (struct _reent *, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int _putc_r (struct _reent *, int, FILE *);
int _putc_unlocked_r (struct _reent *, int, FILE *);
int _putchar_unlocked_r (struct _reent *, int);
int _putchar_r (struct _reent *, int);
int _puts_r (struct _reent *, const char *);
int _remove_r (struct _reent *, const char *);
int _rename_r (struct _reent *, const char *_old, const char *_new)
                                          ;
int _scanf_r (struct _reent *, const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int _siprintf_r (struct _reent *, char *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _siscanf_r (struct _reent *, const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
int _sniprintf_r (struct _reent *, char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _snprintf_r (struct _reent *, char *restrict, size_t, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _sprintf_r (struct _reent *, char *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _sscanf_r (struct _reent *, const char *restrict, const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
char * _tempnam_r (struct _reent *, const char *, const char *);
FILE * _tmpfile_r (struct _reent *);
char * _tmpnam_r (struct _reent *, char *);
int _ungetc_r (struct _reent *, int, FILE *);
int _vasiprintf_r (struct _reent *, char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
char * _vasniprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
char * _vasnprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vasprintf_r (struct _reent *, char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vdiprintf_r (struct _reent *, int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vdprintf_r (struct _reent *, int, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfiprintf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfiscanf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _vfprintf_r (struct _reent *, FILE *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfscanf_r (struct _reent *, FILE *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _viprintf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int _viscanf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int _vprintf_r (struct _reent *, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int _vscanf_r (struct _reent *, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int _vsiprintf_r (struct _reent *, char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vsiscanf_r (struct _reent *, const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _vsniprintf_r (struct _reent *, char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vsnprintf_r (struct _reent *, char *restrict, size_t, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vsprintf_r (struct _reent *, char *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vsscanf_r (struct _reent *, const char *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;



int fpurge (FILE *);
ssize_t __getdelim (char **, size_t *, int, FILE *);
ssize_t __getline (char **, size_t *, FILE *);


void clearerr_unlocked (FILE *);
int feof_unlocked (FILE *);
int ferror_unlocked (FILE *);
int fileno_unlocked (FILE *);
int fflush_unlocked (FILE *);
int fgetc_unlocked (FILE *);
int fputc_unlocked (int, FILE *);
size_t fread_unlocked (void * restrict, size_t _size, size_t _n, FILE *restrict);
size_t fwrite_unlocked (const void * restrict , size_t _size, size_t _n, FILE *);
# 538 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdio.h"
int __srget_r (struct _reent *, FILE *);
int __swbuf_r (struct _reent *, int, FILE *);
# 562 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdio.h"
FILE *funopen (const void * __cookie, int (*__readfn)(void * __cookie, char *__buf, int __n), int (*__writefn)(void * __cookie, const char *__buf, int __n), fpos_t (*__seekfn)(void * __cookie, fpos_t __off, int __whence), int (*__closefn)(void * __cookie))





                                   ;
FILE *_funopen_r (struct _reent *, const void * __cookie, int (*__readfn)(void * __cookie, char *__buf, int __n), int (*__writefn)(void * __cookie, const char *__buf, int __n), fpos_t (*__seekfn)(void * __cookie, fpos_t __off, int __whence), int (*__closefn)(void * __cookie))





                                   ;







typedef ssize_t cookie_read_function_t(void *__cookie, char *__buf, size_t __n);
typedef ssize_t cookie_write_function_t(void *__cookie, const char *__buf,
     size_t __n);




typedef int cookie_seek_function_t(void *__cookie, off_t *__off, int __whence);

typedef int cookie_close_function_t(void *__cookie);
typedef struct
{


  cookie_read_function_t *read;
  cookie_write_function_t *write;
  cookie_seek_function_t *seek;
  cookie_close_function_t *close;
} cookie_io_functions_t;
FILE *fopencookie (void *__cookie, const char *__mode, cookie_io_functions_t __functions)
                                                         ;
FILE *_fopencookie_r (struct _reent *, void *__cookie, const char *__mode, cookie_io_functions_t __functions)
                                                         ;
# 725 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdio.h"

# 25 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/common/include/common/bt_trace.h" 2
# 35 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/common/include/common/bt_trace.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h" 1
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdarg.h" 1 3 4
# 98 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdarg.h" 3 4

# 98 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdarg.h" 3 4
typedef __gnuc_va_list va_list;
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/ESP32_PIC_A2DP/build/include/sdkconfig.h" 1
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h" 1
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/soc.h" 1
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/soc.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_assert.h" 1
# 17 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_assert.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/platform_include/assert.h" 1
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/platform_include/assert.h"
       
# 1 "D:/ESP32/esp-idf-v3.1-rc1/ESP32_PIC_A2DP/build/include/sdkconfig.h" 1
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/platform_include/assert.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h" 1
# 10 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/ieeefp.h" 1
# 11 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h" 2





# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 17 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h" 2



# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/stdlib.h" 1
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/alloca.h" 1
# 23 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h" 2









# 31 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
typedef struct
{
  int quot;
  int rem;
} div_t;

typedef struct
{
  long quot;
  long rem;
} ldiv_t;




typedef struct
{
  long long int quot;
  long long int rem;
} lldiv_t;




typedef int (*__compar_fn_t) (const void *, const void *);
# 67 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
int __locale_mb_cur_max (void);



void abort (void) __attribute__ ((__noreturn__));
int abs (int);
int atexit (void (*__func)(void));
double atof (const char *__nptr);

float atoff (const char *__nptr);

int atoi (const char *__nptr);
int _atoi_r (struct _reent *, const char *__nptr);
long atol (const char *__nptr);
long _atol_r (struct _reent *, const char *__nptr);
void * bsearch (const void * __key, const void * __base, size_t __nmemb, size_t __size, __compar_fn_t _compar)



                                ;
void * calloc (size_t __nmemb, size_t __size) ;
div_t div (int __numer, int __denom);
void exit (int __status) __attribute__ ((__noreturn__));
void free (void *) ;
char * getenv (const char *__string);
char * _getenv_r (struct _reent *, const char *__string);
char * _findenv (const char *, int *);
char * _findenv_r (struct _reent *, const char *, int *);

extern char *suboptarg;
int getsubopt (char **, char * const *, char **);

long labs (long);
ldiv_t ldiv (long __numer, long __denom);
void * malloc (size_t __size) ;
int mblen (const char *, size_t);
int _mblen_r (struct _reent *, const char *, size_t, _mbstate_t *);
int mbtowc (wchar_t *restrict, const char *restrict, size_t);
int _mbtowc_r (struct _reent *, wchar_t *restrict, const char *restrict, size_t, _mbstate_t *);
int wctomb (char *, wchar_t);
int _wctomb_r (struct _reent *, char *, wchar_t, _mbstate_t *);
size_t mbstowcs (wchar_t *restrict, const char *restrict, size_t);
size_t _mbstowcs_r (struct _reent *, wchar_t *restrict, const char *restrict, size_t, _mbstate_t *);
size_t wcstombs (char *restrict, const wchar_t *restrict, size_t);
size_t _wcstombs_r (struct _reent *, char *restrict, const wchar_t *restrict, size_t, _mbstate_t *);


char * mkdtemp (char *);
int mkostemp (char *, int);
int mkostemps (char *, int, int);
int mkstemp (char *);
int mkstemps (char *, int);

char * mktemp (char *);




char * _mkdtemp_r (struct _reent *, char *);
int _mkostemp_r (struct _reent *, char *, int);
int _mkostemps_r (struct _reent *, char *, int, int);
int _mkstemp_r (struct _reent *, char *);
int _mkstemps_r (struct _reent *, char *, int);

char * _mktemp_r (struct _reent *, char *);




void qsort (void * __base, size_t __nmemb, size_t __size, __compar_fn_t _compar);
int rand (void);
void * realloc (void * __r, size_t __size) ;

void * reallocf (void * __r, size_t __size);
char * realpath (const char *restrict path, char *restrict resolved_path);

void srand (unsigned __seed);
double strtod (const char *restrict __n, char **restrict __end_PTR);
double _strtod_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR);



float strtof (const char *restrict __n, char **restrict __end_PTR);







long strtol (const char *restrict __n, char **restrict __end_PTR, int __base);
long _strtol_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR, int __base);
unsigned long strtoul (const char *restrict __n, char **restrict __end_PTR, int __base);
unsigned long _strtoul_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR, int __base);

int system (const char *__string);


long a64l (const char *__input);
char * l64a (long __input);
char * _l64a_r (struct _reent *,long __input);
int on_exit (void (*__func)(int, void *),void * __arg);




void _Exit (int __status) __attribute__ ((__noreturn__));


int putenv (char *__string);
int _putenv_r (struct _reent *, char *__string);
void * _reallocf_r (struct _reent *, void *, size_t);
int setenv (const char *__string, const char *__value, int __overwrite);
int _setenv_r (struct _reent *, const char *__string, const char *__value, int __overwrite);

char * gcvt (double,int,char *);
char * gcvtf (float,int,char *);
char * fcvt (double,int,int *,int *);
char * fcvtf (float,int,int *,int *);
char * ecvt (double,int,int *,int *);
char * ecvtbuf (double, int, int*, int*, char *);
char * fcvtbuf (double, int, int*, int*, char *);
char * ecvtf (float,int,int *,int *);
char * dtoa (double, int, int, int *, int*, char**);

char * __itoa (int, char *, int);
char * __utoa (unsigned, char *, int);

char * itoa (int, char *, int);
char * utoa (unsigned, char *, int);
int rand_r (unsigned *__seed);

double drand48 (void);
double _drand48_r (struct _reent *);
double erand48 (unsigned short [3]);
double _erand48_r (struct _reent *, unsigned short [3]);
long jrand48 (unsigned short [3]);
long _jrand48_r (struct _reent *, unsigned short [3]);
void lcong48 (unsigned short [7]);
void _lcong48_r (struct _reent *, unsigned short [7]);
long lrand48 (void);
long _lrand48_r (struct _reent *);
long mrand48 (void);
long _mrand48_r (struct _reent *);
long nrand48 (unsigned short [3]);
long _nrand48_r (struct _reent *, unsigned short [3]);
unsigned short *
       seed48 (unsigned short [3]);
unsigned short *
       _seed48_r (struct _reent *, unsigned short [3]);
void srand48 (long);
void _srand48_r (struct _reent *, long);




long long atoll (const char *__nptr);


long long _atoll_r (struct _reent *, const char *__nptr);




long long llabs (long long);
lldiv_t lldiv (long long __numer, long long __denom);
long long strtoll (const char *restrict __n, char **restrict __end_PTR, int __base);


long long _strtoll_r (struct _reent *, const char *restrict __n, char **restrict __end_PTR, int __base);




unsigned long long strtoull (const char *restrict __n, char **restrict __end_PTR, int __base);


unsigned long long _strtoull_r (struct _reent *, const char *restrict __n, char **restrict __end_PTR, int __base);


void cfree (void *);
int unsetenv (const char *__string);
int _unsetenv_r (struct _reent *, const char *__string);
# 258 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
char * _dtoa_r (struct _reent *, double, int, int, int *, int*, char**);

void * _malloc_r (struct _reent *, size_t) ;
void * _calloc_r (struct _reent *, size_t, size_t) ;
void _free_r (struct _reent *, void *) ;
void * _realloc_r (struct _reent *, void *, size_t) ;
void _mstats_r (struct _reent *, char *);

int _system_r (struct _reent *, const char *);

void __eprintf (const char *, const char *, unsigned int, const char *);
# 291 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
extern long double strtold (const char *restrict, char **restrict);




# 22 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/platform_include/assert.h" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h" 1
# 39 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
void __assert (const char *, int, const char *) __attribute__ ((__noreturn__))
                                 ;
void __assert_func (const char *, int, const char *, const char *) __attribute__ ((__noreturn__))
                                 ;
# 24 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/platform_include/assert.h" 2
# 18 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_assert.h" 2
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/soc.h" 2
# 22 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h" 2
# 54 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
typedef enum {
    ETS_OK = 0,
    ETS_FAILED = 1
} ETS_STATUS;

typedef uint32_t ETSSignal;
typedef uint32_t ETSParam;

typedef struct ETSEventTag ETSEvent;

struct ETSEventTag {
    ETSSignal sig;
    ETSParam par;
};

typedef void (*ETSTask)(ETSEvent *e);
typedef void (* ets_idle_cb_t)(void *arg);
# 79 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
void ets_run(void);
# 90 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
void ets_set_idle_cb(ets_idle_cb_t func, void *arg);
# 105 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
void ets_task(ETSTask task, uint8_t prio, ETSEvent *queue, uint8_t qlen);
# 119 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
ETS_STATUS ets_post(uint8_t prio, ETSSignal sig, ETSParam par);
# 133 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
extern const char *const exc_cause_table[40];
# 143 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
void ets_set_user_start(uint32_t start);
# 153 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
void ets_set_startup_callback(uint32_t callback);
# 163 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
void ets_set_appcpu_boot_addr(uint32_t start);
# 179 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
ETS_STATUS ets_unpack_flash_code_legacy(uint32_t pos, uint32_t *entry_addr, 
# 179 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h" 3 4
                                                                           _Bool 
# 179 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
                                                                                jump, 
# 179 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h" 3 4
                                                                                      _Bool 
# 179 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
                                                                                           config);
# 197 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
ETS_STATUS ets_unpack_flash_code(uint32_t pos, uint32_t *entry_addr, 
# 197 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h" 3 4
                                                                    _Bool 
# 197 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
                                                                         jump, 
# 197 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h" 3 4
                                                                               _Bool 
# 197 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
                                                                                    sb_need_check, 
# 197 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h" 3 4
                                                                                                   _Bool 
# 197 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
                                                                                                        config);
# 222 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
int ets_printf(const char *fmt, ...);
# 232 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
void ets_write_char_uart(char c);
# 242 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
void ets_install_putc1(void (*p)(char c));
# 252 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
void ets_install_putc2(void (*p)(char c));
# 262 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
void ets_install_uart_printf(void);
# 284 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
typedef void ETSTimerFunc(void *timer_arg);

typedef struct _ETSTIMER_ {
    struct _ETSTIMER_ *timer_next;
    uint32_t timer_expire;
    uint32_t timer_period;
    ETSTimerFunc *timer_func;
    void *timer_arg;
} ETSTimer;
# 302 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
void ets_timer_init(void);
# 311 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
void ets_timer_deinit(void);
# 325 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
void ets_timer_arm(ETSTimer *timer, uint32_t tmout, 
# 325 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h" 3 4
                                                   _Bool 
# 325 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
                                                        repeat);
# 339 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
void ets_timer_arm_us(ETSTimer *ptimer, uint32_t us, 
# 339 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h" 3 4
                                                    _Bool 
# 339 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
                                                         repeat);
# 349 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
void ets_timer_disarm(ETSTimer *timer);
# 363 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
void ets_timer_setfn(ETSTimer *ptimer, ETSTimerFunc *pfunction, void *parg);
# 373 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
void ets_timer_done(ETSTimer *ptimer);
# 383 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
void ets_delay_us(uint32_t us);
# 393 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
void ets_update_cpu_frequency(uint32_t ticks_per_us);
# 405 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
void ets_update_cpu_frequency_rom(uint32_t ticks_per_us);
# 415 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
uint32_t ets_get_cpu_frequency(void);
# 424 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
uint32_t ets_get_xtal_scale(void);
# 437 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
uint32_t ets_get_detected_xtal_freq(void);
# 451 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
typedef void (* ets_isr_t)(void *);
# 466 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
void ets_isr_attach(int i, ets_isr_t func, void *arg);
# 477 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
void ets_isr_mask(uint32_t mask);
# 488 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
void ets_isr_unmask(uint32_t unmask);
# 499 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
void ets_intr_lock(void);
# 510 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
void ets_intr_unlock(void);
# 521 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
void ets_waiti0(void);
# 539 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
void intr_matrix_set(int cpu_no, uint32_t model_num, uint32_t intr_num);
# 629 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
typedef enum {
    OK = 0,
    FAIL,
    PENDING,
    BUSY,
    CANCEL,
} STATUS;
# 22 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h" 2
# 31 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
typedef enum {
    ESP_LOG_NONE,
    ESP_LOG_ERROR,
    ESP_LOG_WARN,
    ESP_LOG_INFO,
    ESP_LOG_DEBUG,
    ESP_LOG_VERBOSE
} esp_log_level_t;

typedef int (*vprintf_like_t)(const char *, va_list);
# 60 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
void esp_log_level_set(const char* tag, esp_log_level_t level);
# 73 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
vprintf_like_t esp_log_set_vprintf(vprintf_like_t func);
# 87 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
uint32_t esp_log_timestamp(void);
# 97 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
uint32_t esp_log_early_timestamp(void);
# 107 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
void esp_log_write(esp_log_level_t level, const char* tag, const char* format, ...) __attribute__ ((format (printf, 3, 4)));



# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log_internal.h" 1
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log_internal.h"
void esp_log_buffer_hex_internal(const char *tag, const void *buffer, uint16_t buff_len, esp_log_level_t level);
void esp_log_buffer_char_internal(const char *tag, const void *buffer, uint16_t buff_len, esp_log_level_t level);
void esp_log_buffer_hexdump_internal( const char *tag, const void *buffer, uint16_t buff_len, esp_log_level_t log_level);
# 112 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h" 2
# 36 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/common/include/common/bt_trace.h" 2
# 59 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/common/include/common/bt_trace.h"
inline void trc_dump_buffer(const char *prefix, uint8_t *data, uint16_t len)
{
    uint16_t i;

    if (!data || !len) {
        return;
    }

    if (prefix) {
        printf("%s: len %d\r\n", prefix, len);
    }

    for (i = 0; i < len; i+=16) {
        printf("%02x, %02x, %02x, %02x, %02x, %02x, %02x, %02x, %02x, %02x, %02x, %02x, %02x, %02x, %02x, %02x\r\n",
                *(data + i), *(data + i + 1), *(data + i + 2), *(data + i + 3), *(data + i + 4), *(data + i + 5), *(data + i + 6), *(data + i + 7),
                *(data + i + 8), *(data + i + 9), *(data + i + 10), *(data + i + 11), *(data + i + 12), *(data + i + 13), *(data + i + 14), *(data + i + 15));
    }
    printf("\r\n");
}
# 472 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/common/include/common/bt_trace.h"
extern UINT8 btif_trace_level;
# 726 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/common/include/common/bt_trace.h"
typedef UINT8 tBTTRC_PARAM_TYPE;
typedef UINT8 tBTTRC_LAYER_ID;
typedef UINT8 tBTTRC_TYPE;

typedef struct {
    tBTTRC_LAYER_ID layer_id;
    tBTTRC_TYPE type;
} tBTTRC_LEVEL;

typedef UINT8 (tBTTRC_SET_TRACE_LEVEL)( UINT8 );

typedef struct {
    const tBTTRC_LAYER_ID layer_id_start;
    const tBTTRC_LAYER_ID layer_id_end;
    tBTTRC_SET_TRACE_LEVEL *p_f;
    const char *trc_name;
    UINT8 trace_level;
} tBTTRC_FUNC_MAP;


extern UINT8 appl_trace_level;
# 1951 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/common/include/common/bt_target.h" 2
# 27 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/allocator.h" 1
# 22 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/allocator.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 23 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/allocator.h" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/esp_heap_caps.h" 1
# 14 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/esp_heap_caps.h"
       



# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/multi_heap.h" 1
# 14 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/multi_heap.h"
       
# 30 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/multi_heap.h"
typedef struct multi_heap_info *multi_heap_handle_t;
# 41 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/multi_heap.h"
void *multi_heap_malloc(multi_heap_handle_t heap, size_t size);
# 50 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/multi_heap.h"
void multi_heap_free(multi_heap_handle_t heap, void *p);
# 62 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/multi_heap.h"
void *multi_heap_realloc(multi_heap_handle_t heap, void *p, size_t size);
# 73 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/multi_heap.h"
size_t multi_heap_get_allocated_size(multi_heap_handle_t heap, void *p);
# 87 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/multi_heap.h"
multi_heap_handle_t multi_heap_register(void *start, size_t size);
# 101 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/multi_heap.h"
void multi_heap_set_lock(multi_heap_handle_t heap, void* lock);







void multi_heap_dump(multi_heap_handle_t heap);
# 121 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/multi_heap.h"

# 121 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/multi_heap.h" 3 4
_Bool 
# 121 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/multi_heap.h"
    multi_heap_check(multi_heap_handle_t heap, 
# 121 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/multi_heap.h" 3 4
                                               _Bool 
# 121 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/multi_heap.h"
                                                    print_errors);
# 135 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/multi_heap.h"
size_t multi_heap_free_size(multi_heap_handle_t heap);
# 147 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/multi_heap.h"
size_t multi_heap_minimum_free_size(multi_heap_handle_t heap);


typedef struct {
    size_t total_free_bytes;
    size_t total_allocated_bytes;
    size_t largest_free_block;
    size_t minimum_free_bytes;
    size_t allocated_blocks;
    size_t free_blocks;
    size_t total_blocks;
} multi_heap_info_t;
# 167 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/multi_heap.h"
void multi_heap_get_info(multi_heap_handle_t heap, multi_heap_info_t *info);
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/esp_heap_caps.h" 2
# 55 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/esp_heap_caps.h"
void *heap_caps_malloc(size_t size, uint32_t caps);
# 67 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/esp_heap_caps.h"
void heap_caps_free( void *ptr);
# 86 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/esp_heap_caps.h"
void *heap_caps_realloc( void *ptr, size_t size, int caps);
# 102 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/esp_heap_caps.h"
void *heap_caps_calloc(size_t n, size_t size, uint32_t caps);
# 118 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/esp_heap_caps.h"
size_t heap_caps_get_free_size( uint32_t caps );
# 136 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/esp_heap_caps.h"
size_t heap_caps_get_minimum_free_size( uint32_t caps );
# 148 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/esp_heap_caps.h"
size_t heap_caps_get_largest_free_block( uint32_t caps );
# 164 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/esp_heap_caps.h"
void heap_caps_get_info( multi_heap_info_t *info, uint32_t caps );
# 177 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/esp_heap_caps.h"
void heap_caps_print_heap_info( uint32_t caps );
# 191 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/esp_heap_caps.h"

# 191 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/esp_heap_caps.h" 3 4
_Bool 
# 191 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/esp_heap_caps.h"
    heap_caps_check_integrity_all(
# 191 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/esp_heap_caps.h" 3 4
                                  _Bool 
# 191 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/esp_heap_caps.h"
                                       print_errors);
# 209 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/esp_heap_caps.h"

# 209 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/esp_heap_caps.h" 3 4
_Bool 
# 209 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/esp_heap_caps.h"
    heap_caps_check_integrity(uint32_t caps, 
# 209 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/esp_heap_caps.h" 3 4
                                             _Bool 
# 209 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/esp_heap_caps.h"
                                                  print_errors);
# 232 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/esp_heap_caps.h"

# 232 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/esp_heap_caps.h" 3 4
_Bool 
# 232 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/esp_heap_caps.h"
    heap_caps_check_integrity_addr(intptr_t addr, 
# 232 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/esp_heap_caps.h" 3 4
                                                  _Bool 
# 232 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/esp_heap_caps.h"
                                                       print_errors);
# 245 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/esp_heap_caps.h"
void heap_caps_malloc_extmem_enable(size_t limit);
# 260 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/esp_heap_caps.h"
void *heap_caps_malloc_prefer( size_t size, size_t num, ... );
# 271 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/esp_heap_caps.h"
void *heap_caps_realloc_prefer( void *ptr, size_t size, size_t num, ... );
# 282 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/esp_heap_caps.h"
void *heap_caps_calloc_prefer( size_t n, size_t size, size_t num, ... );
# 301 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/esp_heap_caps.h"
void heap_caps_dump(uint32_t caps);
# 311 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/esp_heap_caps.h"
void heap_caps_dump_all();
# 25 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/allocator.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/ESP32_PIC_A2DP/build/include/sdkconfig.h" 1
# 26 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/allocator.h" 2

typedef void *(*alloc_fn)(size_t size);
typedef void (*free_fn)(void *ptr);

typedef struct {
    alloc_fn alloc;
    free_fn free;
} allocator_t;


extern const allocator_t allocator_malloc;
extern const allocator_t allocator_calloc;

char *osi_strdup(const char *str);

void *osi_malloc_func(size_t size);
void *osi_calloc_func(size_t size);
void osi_free_func(void *ptr);
# 28 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/hcidefs.h" 1
# 1339 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/hcidefs.h"
typedef struct {
    UINT8 id;
    UINT8 stype;
    UINT16 max_sdu_size;
    UINT32 sdu_inter_time;
    UINT32 access_latency;
    UINT32 flush_timeout;
} tHCI_EXT_FLOW_SPEC;
# 29 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/hcimsgs.h" 1
# 26 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/hcimsgs.h"
void bte_main_hci_send(BT_HDR *p_msg, UINT16 event);
void bte_main_lpm_allow_bt_device_sleep(void);



BOOLEAN btsnd_hcic_inquiry(const LAP inq_lap, UINT8 duration,
                           UINT8 response_cnt);
# 43 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/hcimsgs.h"
BOOLEAN btsnd_hcic_inq_cancel(void);




BOOLEAN btsnd_hcic_per_inq_mode(UINT16 max_period, UINT16 min_period,
                                const LAP inq_lap, UINT8 duration,
                                UINT8 response_cnt);
# 62 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/hcimsgs.h"
BOOLEAN btsnd_hcic_exit_per_inq(void);



BOOLEAN btsnd_hcic_create_conn(BD_ADDR dest, UINT16 packet_types,
                               UINT8 page_scan_rep_mode,
                               UINT8 page_scan_mode,
                               UINT16 clock_offset,
                               UINT8 allow_switch);
# 83 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/hcimsgs.h"
BOOLEAN btsnd_hcic_disconnect(UINT16 handle, UINT8 reason);
# 103 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/hcimsgs.h"
BOOLEAN btsnd_hcic_create_conn_cancel(BD_ADDR dest);







BOOLEAN btsnd_hcic_accept_conn (BD_ADDR bd_addr, UINT8 role);
# 120 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/hcimsgs.h"
BOOLEAN btsnd_hcic_reject_conn (BD_ADDR bd_addr, UINT8 reason);
# 129 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/hcimsgs.h"
BOOLEAN btsnd_hcic_link_key_req_reply (BD_ADDR bd_addr,
                                       LINK_KEY link_key);
# 139 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/hcimsgs.h"
BOOLEAN btsnd_hcic_link_key_neg_reply (BD_ADDR bd_addr);







BOOLEAN btsnd_hcic_pin_code_req_reply (BD_ADDR bd_addr,
                                       UINT8 pin_code_len,
                                       PIN_CODE pin_code);
# 159 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/hcimsgs.h"
BOOLEAN btsnd_hcic_pin_code_neg_reply (BD_ADDR bd_addr);







BOOLEAN btsnd_hcic_change_conn_type (UINT16 handle, UINT16 packet_types);
# 179 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/hcimsgs.h"
BOOLEAN btsnd_hcic_auth_request (UINT16 handle);


BOOLEAN btsnd_hcic_set_conn_encrypt (UINT16 handle, BOOLEAN enable);
# 191 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/hcimsgs.h"
BOOLEAN btsnd_hcic_rmt_name_req (BD_ADDR bd_addr,
                                 UINT8 page_scan_rep_mode,
                                 UINT8 page_scan_mode,
                                 UINT16 clock_offset);
# 205 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/hcimsgs.h"
BOOLEAN btsnd_hcic_rmt_name_req_cancel(BD_ADDR bd_addr);






BOOLEAN btsnd_hcic_rmt_features_req(UINT16 handle);


BOOLEAN btsnd_hcic_rmt_ext_features(UINT16 handle, UINT8 page_num);
# 224 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/hcimsgs.h"
BOOLEAN btsnd_hcic_rmt_ver_req(UINT16 handle);
BOOLEAN btsnd_hcic_read_rmt_clk_offset(UINT16 handle);
BOOLEAN btsnd_hcic_read_lmp_handle(UINT16 handle);

BOOLEAN btsnd_hcic_setup_esco_conn (UINT16 handle,
                                    UINT32 tx_bw, UINT32 rx_bw,
                                    UINT16 max_latency, UINT16 voice,
                                    UINT8 retrans_effort,
                                    UINT16 packet_types);
# 244 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/hcimsgs.h"
BOOLEAN btsnd_hcic_accept_esco_conn (BD_ADDR bd_addr,
                                     UINT32 tx_bw, UINT32 rx_bw,
                                     UINT16 max_latency,
                                     UINT16 content_fmt,
                                     UINT8 retrans_effort,
                                     UINT16 packet_types);
# 261 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/hcimsgs.h"
BOOLEAN btsnd_hcic_reject_esco_conn (BD_ADDR bd_addr, UINT8 reason);






BOOLEAN btsnd_hcic_hold_mode(UINT16 handle, UINT16 max_hold_period,
                             UINT16 min_hold_period);
# 279 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/hcimsgs.h"
BOOLEAN btsnd_hcic_sniff_mode(UINT16 handle,
                              UINT16 max_sniff_period,
                              UINT16 min_sniff_period,
                              UINT16 sniff_attempt,
                              UINT16 sniff_timeout);
# 295 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/hcimsgs.h"
BOOLEAN btsnd_hcic_exit_sniff_mode(UINT16 handle);


BOOLEAN btsnd_hcic_park_mode (UINT16 handle,
                              UINT16 beacon_max_interval,
                              UINT16 beacon_min_interval);
# 309 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/hcimsgs.h"
BOOLEAN btsnd_hcic_exit_park_mode(UINT16 handle);


BOOLEAN btsnd_hcic_qos_setup (UINT16 handle, UINT8 flags,
                              UINT8 service_type,
                              UINT32 token_rate, UINT32 peak,
                              UINT32 latency, UINT32 delay_var);
# 329 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/hcimsgs.h"
BOOLEAN btsnd_hcic_switch_role (BD_ADDR bd_addr, UINT8 role);
# 338 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/hcimsgs.h"
BOOLEAN btsnd_hcic_write_policy_set(UINT16 handle, UINT16 settings);
# 347 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/hcimsgs.h"
BOOLEAN btsnd_hcic_write_def_policy_set(UINT16 settings);
# 378 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/hcimsgs.h"
void btsnd_hcic_write_ext_inquiry_response(void *buffer, UINT8 fec_req);






BOOLEAN btsnd_hcic_io_cap_req_reply (BD_ADDR bd_addr, UINT8 capability,
                                     UINT8 oob_present, UINT8 auth_req);
# 396 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/hcimsgs.h"
BOOLEAN btsnd_hcic_io_cap_req_neg_reply (BD_ADDR bd_addr, UINT8 err_code);







BOOLEAN btsnd_hcic_read_local_oob_data (void);




BOOLEAN btsnd_hcic_user_conf_reply (BD_ADDR bd_addr, BOOLEAN is_yes);






BOOLEAN btsnd_hcic_user_passkey_reply (BD_ADDR bd_addr, UINT32 value);







BOOLEAN btsnd_hcic_user_passkey_neg_reply (BD_ADDR bd_addr);






BOOLEAN btsnd_hcic_rem_oob_reply (BD_ADDR bd_addr, UINT8 *p_c,
                                  UINT8 *p_r);
# 441 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/hcimsgs.h"
BOOLEAN btsnd_hcic_rem_oob_neg_reply (BD_ADDR bd_addr);






BOOLEAN btsnd_hcic_read_inq_tx_power (void);




BOOLEAN btsnd_hcic_read_default_erroneous_data_rpt (void);




BOOLEAN btsnd_hcic_enhanced_flush (UINT16 handle, UINT8 packet_type);





BOOLEAN btsnd_hcic_send_keypress_notif (BD_ADDR bd_addr, UINT8 notif);
# 476 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/hcimsgs.h"
BOOLEAN btsnd_hcic_set_event_filter(UINT8 filt_type,
                                    UINT8 filt_cond_type,
                                    UINT8 *filt_cond,
                                    UINT8 filt_cond_len);
# 489 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/hcimsgs.h"
BOOLEAN btsnd_hcic_delete_stored_key (BD_ADDR bd_addr, BOOLEAN delete_all_flag);
# 498 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/hcimsgs.h"
BOOLEAN btsnd_hcic_change_name(BD_NAME name);
# 522 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/hcimsgs.h"
BOOLEAN btsnd_hcic_write_pin_type(UINT8 type);
BOOLEAN btsnd_hcic_write_auto_accept(UINT8 flag);
BOOLEAN btsnd_hcic_read_name (void);
BOOLEAN btsnd_hcic_write_page_tout(UINT16 timeout);
BOOLEAN btsnd_hcic_write_scan_enable(UINT8 flag);
BOOLEAN btsnd_hcic_write_pagescan_cfg(UINT16 interval,
                                      UINT16 window);
# 537 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/hcimsgs.h"
BOOLEAN btsnd_hcic_write_inqscan_cfg(UINT16 interval, UINT16 window);







BOOLEAN btsnd_hcic_write_auth_enable(UINT8 flag);
BOOLEAN btsnd_hcic_write_dev_class(DEV_CLASS dev);
BOOLEAN btsnd_hcic_write_voice_settings(UINT16 flags);







BOOLEAN btsnd_hcic_write_auto_flush_tout(UINT16 handle,
        UINT16 timeout);






BOOLEAN btsnd_hcic_read_tx_power(UINT16 handle, UINT8 type);
# 574 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/hcimsgs.h"
BOOLEAN btsnd_hcic_host_num_xmitted_pkts (UINT8 num_handles,
        UINT16 *handle,
        UINT16 *num_pkts);
# 587 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/hcimsgs.h"
BOOLEAN btsnd_hcic_write_link_super_tout(UINT8 local_controller_id, UINT16 handle, UINT16 timeout);







BOOLEAN btsnd_hcic_write_cur_iac_lap (UINT8 num_cur_iac,
                                      LAP *const iac_lap);







BOOLEAN btsnd_hcic_get_link_quality (UINT16 handle);
BOOLEAN btsnd_hcic_read_rssi (UINT16 handle);
BOOLEAN btsnd_hcic_enable_test_mode (void);
BOOLEAN btsnd_hcic_write_pagescan_type(UINT8 type);
BOOLEAN btsnd_hcic_write_inqscan_type(UINT8 type);
BOOLEAN btsnd_hcic_write_inquiry_mode(UINT8 type);
# 633 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/hcimsgs.h"
void btsnd_hcic_vendor_spec_cmd (void *buffer, UINT16 opcode,
                                 UINT8 len, UINT8 *p_data,
                                 void *p_cmd_cplt_cback);
# 686 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/hcimsgs.h"
BOOLEAN btsnd_hcic_ble_set_evt_mask (BT_EVENT_MASK event_mask);

BOOLEAN btsnd_hcic_ble_read_buffer_size (void);

BOOLEAN btsnd_hcic_ble_read_local_spt_feat (void);

BOOLEAN btsnd_hcic_ble_set_local_used_feat (UINT8 feat_set[8]);

BOOLEAN btsnd_hcic_ble_set_random_addr (BD_ADDR random_addr);

BOOLEAN btsnd_hcic_ble_write_adv_params (UINT16 adv_int_min, UINT16 adv_int_max,
        UINT8 adv_type, UINT8 addr_type_own,
        UINT8 addr_type_dir, BD_ADDR direct_bda,
        UINT8 channel_map, UINT8 adv_filter_policy);

BOOLEAN btsnd_hcic_ble_read_adv_chnl_tx_power (void);

BOOLEAN btsnd_hcic_ble_set_adv_data (UINT8 data_len, UINT8 *p_data);

BOOLEAN btsnd_hcic_ble_set_scan_rsp_data (UINT8 data_len, UINT8 *p_scan_rsp);

BOOLEAN btsnd_hcic_ble_set_adv_enable (UINT8 adv_enable);

BOOLEAN btsnd_hcic_ble_set_scan_params (UINT8 scan_type,
                                        UINT16 scan_int, UINT16 scan_win,
                                        UINT8 addr_type, UINT8 scan_filter_policy);

BOOLEAN btsnd_hcic_ble_set_scan_enable (UINT8 scan_enable, UINT8 duplicate);

BOOLEAN btsnd_hcic_ble_create_ll_conn (UINT16 scan_int, UINT16 scan_win,
                                       UINT8 init_filter_policy, UINT8 addr_type_peer, BD_ADDR bda_peer, UINT8 addr_type_own,
                                       UINT16 conn_int_min, UINT16 conn_int_max, UINT16 conn_latency, UINT16 conn_timeout,
                                       UINT16 min_ce_len, UINT16 max_ce_len);

BOOLEAN btsnd_hcic_ble_create_conn_cancel (void);

BOOLEAN btsnd_hcic_ble_read_white_list_size (void);

BOOLEAN btsnd_hcic_ble_clear_white_list (void);

BOOLEAN btsnd_hcic_ble_add_white_list (UINT8 addr_type, BD_ADDR bda);

BOOLEAN btsnd_hcic_ble_remove_from_white_list (UINT8 addr_type, BD_ADDR bda);

BOOLEAN btsnd_hcic_ble_upd_ll_conn_params (UINT16 handle, UINT16 conn_int_min, UINT16 conn_int_max,
        UINT16 conn_latency, UINT16 conn_timeout, UINT16 min_len, UINT16 max_len);

BOOLEAN btsnd_hcic_ble_set_host_chnl_class (UINT8 chnl_map[5]);

BOOLEAN btsnd_hcic_ble_read_chnl_map (UINT16 handle);

BOOLEAN btsnd_hcic_ble_read_remote_feat ( UINT16 handle);

BOOLEAN btsnd_hcic_ble_encrypt (UINT8 *key, UINT8 key_len, UINT8 *plain_text, UINT8 pt_len, void *p_cmd_cplt_cback);

BOOLEAN btsnd_hcic_ble_rand (void *p_cmd_cplt_cback);

BOOLEAN btsnd_hcic_ble_start_enc ( UINT16 handle,
                                   UINT8 rand[8],
                                   UINT16 ediv, UINT8 ltk[16]);

BOOLEAN btsnd_hcic_ble_ltk_req_reply (UINT16 handle, UINT8 ltk[16]);

BOOLEAN btsnd_hcic_ble_ltk_req_neg_reply (UINT16 handle);

BOOLEAN btsnd_hcic_ble_read_supported_states (void);

BOOLEAN btsnd_hcic_ble_write_host_supported (UINT8 le_host_spt, UINT8 simul_le_host_spt);

BOOLEAN btsnd_hcic_ble_read_host_supported (void);

BOOLEAN btsnd_hcic_ble_receiver_test(UINT8 rx_freq);

BOOLEAN btsnd_hcic_ble_transmitter_test(UINT8 tx_freq, UINT8 test_data_len,
                                        UINT8 payload);
BOOLEAN btsnd_hcic_ble_test_end(void);




BOOLEAN btsnd_hcic_ble_rc_param_req_reply(UINT16 handle,
        UINT16 conn_int_min, UINT16 conn_int_max,
        UINT16 conn_latency, UINT16 conn_timeout,
        UINT16 min_ce_len, UINT16 max_ce_len);


BOOLEAN btsnd_hcic_ble_rc_param_req_neg_reply(UINT16 handle, UINT8 reason);



BOOLEAN btsnd_hcic_ble_set_data_length(UINT16 conn_handle, UINT16 tx_octets,
                                       UINT16 tx_time);

BOOLEAN btsnd_hcic_ble_add_device_resolving_list (UINT8 addr_type_peer,
        BD_ADDR bda_peer,
        UINT8 irk_peer[16],
        UINT8 irk_local[16]);

BOOLEAN btsnd_hcic_ble_rm_device_resolving_list (UINT8 addr_type_peer,
        BD_ADDR bda_peer);

BOOLEAN btsnd_hcic_ble_clear_resolving_list (void);

BOOLEAN btsnd_hcic_ble_read_resolvable_addr_peer (UINT8 addr_type_peer,
        BD_ADDR bda_peer);

BOOLEAN btsnd_hcic_ble_read_resolvable_addr_local (UINT8 addr_type_peer,
        BD_ADDR bda_peer);

BOOLEAN btsnd_hcic_ble_set_addr_resolution_enable (UINT8 addr_resolution_enable);

BOOLEAN btsnd_hcic_ble_set_rand_priv_addr_timeout (UINT16 rpa_timout);



BOOLEAN btsnd_hcic_read_authenticated_payload_tout(UINT16 handle);

BOOLEAN btsnd_hcic_write_authenticated_payload_tout(UINT16 handle,
        UINT16 timeout);
# 30 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btu.h" 1
# 31 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btu.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/common/include/common/bt_defs.h" 1
# 32 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/common/include/common/bt_defs.h"
typedef void (TIMER_CBACK)(void *p_tle);
typedef struct _tle {
    struct _tle *p_next;
    struct _tle *p_prev;
    TIMER_CBACK *p_cback;
    INT32 ticks;
    INT32 ticks_initial;
    UINT32 param;
    UINT32 data;
    UINT16 event;
    UINT8 in_use;
} TIMER_LIST_ENT;
# 59 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/common/include/common/bt_defs.h"
typedef struct {
    uint8_t address[6];
} __attribute__ ((__packed__)) bt_bdaddr_t;


typedef struct {
    uint8_t uu[16];
} bt_uuid_t;





typedef enum {
    BT_STATUS_SUCCESS = 0,
    BT_STATUS_FAIL,
    BT_STATUS_NOT_READY,
    BT_STATUS_NOMEM,
    BT_STATUS_BUSY,
    BT_STATUS_DONE,
    BT_STATUS_UNSUPPORTED,
    BT_STATUS_PARM_INVALID,
    BT_STATUS_UNHANDLED,
    BT_STATUS_AUTH_FAILURE,
    BT_STATUS_RMT_DEV_DOWN,
    BT_STATUS_AUTH_REJECTED,
    BT_STATUS_INVALID_STATIC_RAND_ADDR,
    BT_STATUS_PENDING,
    BT_STATUS_UNACCEPT_CONN_INTERVAL,
    BT_STATUS_PARAM_OUT_OF_RANGE,
    BT_STATUS_TIMEOUT,
    BT_STATUS_MEMORY_FULL,
} bt_status_t;





inline uint16_t swap_byte_16(uint16_t x)
{
    return (((x & 0x00ffU) << 8) |
            ((x & 0xff00U) >> 8));
}

inline uint32_t swap_byte_32(uint32_t x)
{
    return (((x & 0x000000ffUL) << 24) |
            ((x & 0x0000ff00UL) << 8) |
            ((x & 0x00ff0000UL) >> 8) |
            ((x & 0xff000000UL) >> 24));
}


inline uint16_t ntohs(uint16_t x)
{

    return swap_byte_16(x);



}



inline uint16_t htons(uint16_t x)
{

    return swap_byte_16(x);



}



inline uint32_t ntohl(uint32_t x)
{

    return swap_byte_32(x);



}



inline uint32_t htonl(uint32_t x)
{

    return swap_byte_32(x);



}
# 32 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btu.h" 2



typedef struct {
    void (*callback)(BT_HDR *);
} post_to_task_hack_t;

typedef struct {
    void (*callback)(BT_HDR *);
    BT_HDR *response;
    void *context;
} command_complete_hack_t;

typedef struct {
    void (*callback)(BT_HDR *);
    uint8_t status;
    BT_HDR *command;
    void *context;
} command_status_hack_t;



typedef void (*tBTU_TIMER_CALLBACK)(TIMER_LIST_ENT *p_tle);
typedef void (*tBTU_EVENT_CALLBACK)(BT_HDR *p_hdr);
# 170 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btu.h"
typedef struct {
    BD_ADDR remote_bd_addr;
    UINT8 page_scan_rep_mode;
    UINT8 page_scan_per_mode;
    UINT8 page_scan_mode;
    DEV_CLASS dev_class;
    UINT16 clock_offset;
} tBTU_INQ_INFO;
# 190 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btu.h"
typedef struct {
    TIMER_LIST_ENT *p_tle;
    tBTU_TIMER_CALLBACK timer_cb;
} tBTU_TIMER_REG;


typedef struct {
    UINT16 event_range;
    tBTU_EVENT_CALLBACK event_cb;
} tBTU_EVENT_REG;
# 209 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btu.h"
typedef struct {
    tBTU_TIMER_REG timer_reg[(2)];
    tBTU_EVENT_REG event_reg[(6)];

    BOOLEAN reset_complete;
    UINT8 trace_level;
} tBTU_CB;
# 224 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btu.h"
extern tBTU_CB btu_cb;





extern const BD_ADDR BT_BD_ANY;




void btu_start_timer (TIMER_LIST_ENT *p_tle, UINT16 type, UINT32 timeout);
void btu_stop_timer (TIMER_LIST_ENT *p_tle);
void btu_free_timer (TIMER_LIST_ENT *p_tle);
void btu_start_timer_oneshot(TIMER_LIST_ENT *p_tle, UINT16 type, UINT32 timeout);
void btu_stop_timer_oneshot(TIMER_LIST_ENT *p_tle);

void btu_uipc_rx_cback(BT_HDR *p_msg);





void btu_start_quick_timer (TIMER_LIST_ENT *p_tle, UINT16 type, UINT32 timeout);
void btu_stop_quick_timer (TIMER_LIST_ENT *p_tle);
void btu_free_quick_timer (TIMER_LIST_ENT *p_tle);
void btu_process_quick_timer_evt (void);
# 260 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btu.h"
void btu_hcif_process_event (UINT8 controller_id, BT_HDR *p_buf);
void btu_hcif_send_cmd (UINT8 controller_id, BT_HDR *p_msg);
void btu_hcif_send_host_rdy_for_data(void);
void btu_hcif_cmd_timeout (UINT8 controller_id);




void btu_init_core(void);
void btu_free_core(void);

void BTU_StartUp(void);
void BTU_ShutDown(void);

void btu_task_start_up(void);
void btu_task_shut_down(void);

UINT16 BTU_BleAclPktSize(void);
# 32 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 2

# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 34 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h" 1
# 17 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 18 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h" 2



void * memchr (const void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void * memcpy (void * restrict, const void * restrict, size_t);
void * memmove (void *, const void *, size_t);
void * memset (void *, int, size_t);
char *strcat (char *restrict, const char *restrict);
char *strchr (const char *, int);
int strcmp (const char *, const char *);
int strcoll (const char *, const char *);
char *strcpy (char *restrict, const char *restrict);
size_t strcspn (const char *, const char *);
char *strerror (int);
size_t strlen (const char *);
char *strncat (char *restrict, const char *restrict, size_t);
int strncmp (const char *, const char *, size_t);
char *strncpy (char *restrict, const char *restrict, size_t);
char *strpbrk (const char *, const char *);
char *strrchr (const char *, int);
size_t strspn (const char *, const char *);
char *strstr (const char *, const char *);

char *strtok (char *restrict, const char *restrict);

size_t strxfrm (char *restrict, const char *restrict, size_t);


char *strtok_r (char *restrict, const char *restrict, char **restrict);


int bcmp (const void *, const void *, size_t);
void bcopy (const void *, void *, size_t);
void bzero (void *, size_t);
int ffs (int);
char *index (const char *, int);


void * memccpy (void * restrict, const void * restrict, int, size_t);





void * memrchr (const void *, int, size_t);




char *rindex (const char *, int);

char *stpcpy (char *restrict, const char *restrict);
char *stpncpy (char *restrict, const char *restrict, size_t);

int strcasecmp (const char *, const char *);






char *strdup (const char *);


char *_strdup_r (struct _reent *, const char *);


char *strndup (const char *, size_t);



char *_strndup_r (struct _reent *, const char *, size_t);
# 106 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h"
int strerror_r (int, char *, size_t)
             __asm__ ("" "__xpg_strerror_r");







char * _strerror_r (struct _reent *, int, int, int *);


size_t strlcat (char *, const char *, size_t);
size_t strlcpy (char *, const char *, size_t);


int strncasecmp (const char *, const char *, size_t);



size_t strnlen (const char *, size_t);


char *strsep (char **, const char *);







char *strlwr (char *);
char *strupr (char *);



char *strsignal (int __signo);
# 163 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/string.h" 1
# 164 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h" 2


# 35 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 2





BOOLEAN btsnd_hcic_ble_set_local_used_feat (UINT8 feat_set[8])
{
    BT_HDR *p;
    UINT8 *pp;

    if ((p = ((BT_HDR *)malloc((660)))) == 
# 45 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
                                                                   ((void *)0)
# 45 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                                                                       ) {
        return (
# 46 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
               0
# 46 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                    );
    }

    pp = (UINT8 *)(p + 1);

    p->len = 3 + 8;
    p->offset = 0;

    {*(pp)++ = (UINT8)((0x0004 | (0x08 << 10))); *(pp)++ = (UINT8)(((0x0004 | (0x08 << 10))) >> 8);};
    {register int ijk; for (ijk = 0; ijk < 8; ijk++) *(pp)++ = (UINT8) feat_set[ijk];};

    btu_hcif_send_cmd (0, p);
    return (
# 58 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
           1
# 58 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
               );
}

BOOLEAN btsnd_hcic_ble_set_random_addr (BD_ADDR random_bda)
{
    BT_HDR *p;
    UINT8 *pp;

    if ((p = ((BT_HDR *)malloc((660)))) == 
# 66 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
                                                                       ((void *)0)
# 66 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                                                                           ) {
        return (
# 67 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
               0
# 67 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                    );
    }

    pp = (UINT8 *)(p + 1);

    p->len = 3 + 6;
    p->offset = 0;

    {*(pp)++ = (UINT8)((0x0005 | (0x08 << 10))); *(pp)++ = (UINT8)(((0x0005 | (0x08 << 10))) >> 8);};
    {*(pp)++ = (UINT8)(6);};

    {register int ijk; for (ijk = 0; ijk < 6; ijk++) *(pp)++ = (UINT8) random_bda[6 - 1 - ijk];};

    btu_hcif_send_cmd (0, p);
    return (
# 81 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
           1
# 81 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
               );
}

BOOLEAN btsnd_hcic_ble_write_adv_params (UINT16 adv_int_min, UINT16 adv_int_max,
        UINT8 adv_type, UINT8 addr_type_own,
        UINT8 addr_type_dir, BD_ADDR direct_bda,
        UINT8 channel_map, UINT8 adv_filter_policy)
{
    BT_HDR *p;
    UINT8 *pp;
    if ((p = ((BT_HDR *)malloc((660)))) == 
# 91 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
                                                                      ((void *)0)
# 91 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                                                                          ) {
        return (
# 92 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
               0
# 92 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                    );
    }

    pp = (UINT8 *)(p + 1);

    p->len = 3 + 15 ;
    p->offset = 0;

    {*(pp)++ = (UINT8)((0x0006 | (0x08 << 10))); *(pp)++ = (UINT8)(((0x0006 | (0x08 << 10))) >> 8);};
    {*(pp)++ = (UINT8)(15);};

    {*(pp)++ = (UINT8)(adv_int_min); *(pp)++ = (UINT8)((adv_int_min) >> 8);};
    {*(pp)++ = (UINT8)(adv_int_max); *(pp)++ = (UINT8)((adv_int_max) >> 8);};
    {*(pp)++ = (UINT8)(adv_type);};
    {*(pp)++ = (UINT8)(addr_type_own);};
    {*(pp)++ = (UINT8)(addr_type_dir);};
    {register int ijk; for (ijk = 0; ijk < 6; ijk++) *(pp)++ = (UINT8) direct_bda[6 - 1 - ijk];};
    {*(pp)++ = (UINT8)(channel_map);};
    {*(pp)++ = (UINT8)(adv_filter_policy);};

    btu_hcif_send_cmd (0, p);
    return (
# 113 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
           1
# 113 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
               );
}
BOOLEAN btsnd_hcic_ble_read_adv_chnl_tx_power (void)
{
    BT_HDR *p;
    UINT8 *pp;

    if ((p = ((BT_HDR *)malloc((660)))) == 
# 120 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
                                                          ((void *)0)
# 120 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                                                              ) {
        return (
# 121 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
               0
# 121 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                    );
    }

    pp = (UINT8 *)(p + 1);

    p->len = 3 + 0;
    p->offset = 0;

    {*(pp)++ = (UINT8)((0x0007 | (0x08 << 10))); *(pp)++ = (UINT8)(((0x0007 | (0x08 << 10))) >> 8);};
    {*(pp)++ = (UINT8)(0);};

    btu_hcif_send_cmd (0, p);
    return (
# 133 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
           1
# 133 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
               );

}

BOOLEAN btsnd_hcic_ble_set_adv_data (UINT8 data_len, UINT8 *p_data)
{
    BT_HDR *p;
    UINT8 *pp;

    for (int i = 0; i < data_len; i++) {
        {if (2 >= 5 && (((2) > (3) ? (2) : (3)) >= 5)) {esp_log_write(ESP_LOG_DEBUG, "BT_HCI", "D" " (%d) %s: " "p_data[%d] = %x\n" "\033[0m" "\n", esp_log_timestamp(), "BT_HCI", i, p_data[i]); };};
    }

    if ((p = ((BT_HDR *)malloc((660)))) == 
# 146 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
                                                                        ((void *)0)
# 146 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                                                                            ) {
        return (
# 147 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
               0
# 147 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                    );
    }

    pp = (UINT8 *)(p + 1);

    p->len = 3 + 31 + 1;
    p->offset = 0;

    {*(pp)++ = (UINT8)((0x0008 | (0x08 << 10))); *(pp)++ = (UINT8)(((0x0008 | (0x08 << 10))) >> 8);};
    {*(pp)++ = (UINT8)(31 + 1);};

    memset(pp, 0, 31);

    if (p_data != 
# 160 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
                 ((void *)0) 
# 160 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                      && data_len > 0) {
        if (data_len > 31) {
            data_len = 31;
        }

        {*(pp)++ = (UINT8)(data_len);};

        {register int ijk; for (ijk = 0; ijk < data_len; ijk++) *(pp)++ = (UINT8) p_data[ijk];};
    }
    btu_hcif_send_cmd (0, p);

    return (
# 171 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
           1
# 171 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
               );
}
BOOLEAN btsnd_hcic_ble_set_scan_rsp_data (UINT8 data_len, UINT8 *p_scan_rsp)
{
    BT_HDR *p;
    UINT8 *pp;

    if ((p = ((BT_HDR *)malloc((660)))) == 
# 178 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
                                                                        ((void *)0)
# 178 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                                                                            ) {
        return (
# 179 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
               0
# 179 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                    );
    }

    pp = (UINT8 *)(p + 1);

    p->len = 3 + 31 + 1;
    p->offset = 0;

    {*(pp)++ = (UINT8)((0x0009 | (0x08 << 10))); *(pp)++ = (UINT8)(((0x0009 | (0x08 << 10))) >> 8);};
    {*(pp)++ = (UINT8)(31 + 1);};

    memset(pp, 0, 31);

    if (p_scan_rsp != 
# 192 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
                     ((void *)0) 
# 192 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                          && data_len > 0) {

        if (data_len > 31 ) {
            data_len = 31;
        }

        {*(pp)++ = (UINT8)(data_len);};

        {register int ijk; for (ijk = 0; ijk < data_len; ijk++) *(pp)++ = (UINT8) p_scan_rsp[ijk];};
    }

    btu_hcif_send_cmd (0, p);

    return (
# 205 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
           1
# 205 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
               );
}

BOOLEAN btsnd_hcic_ble_set_adv_enable (UINT8 adv_enable)
{
    BT_HDR *p;
    UINT8 *pp;

    if ((p = ((BT_HDR *)malloc((660)))) == 
# 213 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
                                                                  ((void *)0)
# 213 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                                                                      ) {
        return (
# 214 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
               0
# 214 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                    );
    }

    pp = (UINT8 *)(p + 1);

    p->len = 3 + 1;
    p->offset = 0;

    {*(pp)++ = (UINT8)((0x000A | (0x08 << 10))); *(pp)++ = (UINT8)(((0x000A | (0x08 << 10))) >> 8);};
    {*(pp)++ = (UINT8)(1);};

    {*(pp)++ = (UINT8)(adv_enable);};

    btu_hcif_send_cmd (0, p);
    return (
# 228 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
           1
# 228 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
               );
}
BOOLEAN btsnd_hcic_ble_set_scan_params (UINT8 scan_type,
                                        UINT16 scan_int, UINT16 scan_win,
                                        UINT8 addr_type_own, UINT8 scan_filter_policy)
{
    BT_HDR *p;
    UINT8 *pp;

    if ((p = ((BT_HDR *)malloc((660)))) == 
# 237 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
                                                                      ((void *)0)
# 237 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                                                                          ) {
        return (
# 238 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
               0
# 238 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                    );
    }

    pp = (UINT8 *)(p + 1);

    p->len = 3 + 7;
    p->offset = 0;

    {*(pp)++ = (UINT8)((0x000B | (0x08 << 10))); *(pp)++ = (UINT8)(((0x000B | (0x08 << 10))) >> 8);};
    {*(pp)++ = (UINT8)(7);};

    {*(pp)++ = (UINT8)(scan_type);};
    {*(pp)++ = (UINT8)(scan_int); *(pp)++ = (UINT8)((scan_int) >> 8);};
    {*(pp)++ = (UINT8)(scan_win); *(pp)++ = (UINT8)((scan_win) >> 8);};
    {*(pp)++ = (UINT8)(addr_type_own);};
    {*(pp)++ = (UINT8)(scan_filter_policy);};

    btu_hcif_send_cmd (0, p);
    return (
# 256 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
           1
# 256 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
               );
}

BOOLEAN btsnd_hcic_ble_set_scan_enable (UINT8 scan_enable, UINT8 duplicate)
{
    BT_HDR *p;
    UINT8 *pp;

    if ((p = ((BT_HDR *)malloc((660)))) == 
# 264 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
                                                                       ((void *)0)
# 264 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                                                                           ) {
        return (
# 265 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
               0
# 265 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                    );
    }

    pp = (UINT8 *)(p + 1);

    p->len = 3 + 2;
    p->offset = 0;

    {*(pp)++ = (UINT8)((0x000C | (0x08 << 10))); *(pp)++ = (UINT8)(((0x000C | (0x08 << 10))) >> 8);};
    {*(pp)++ = (UINT8)(2);};

    {*(pp)++ = (UINT8)(scan_enable);};
    {*(pp)++ = (UINT8)(duplicate);};

    btu_hcif_send_cmd (0, p);
    return (
# 280 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
           1
# 280 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
               );
}


BOOLEAN btsnd_hcic_ble_create_ll_conn (UINT16 scan_int, UINT16 scan_win,
                                       UINT8 init_filter_policy,
                                       UINT8 addr_type_peer, BD_ADDR bda_peer,
                                       UINT8 addr_type_own,
                                       UINT16 conn_int_min, UINT16 conn_int_max,
                                       UINT16 conn_latency, UINT16 conn_timeout,
                                       UINT16 min_ce_len, UINT16 max_ce_len)
{
    BT_HDR *p;
    UINT8 *pp;

    if ((p = ((BT_HDR *)malloc((660)))) == 
# 295 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
                                                                    ((void *)0)
# 295 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                                                                        ) {
        return (
# 296 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
               0
# 296 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                    );
    }

    pp = (UINT8 *)(p + 1);

    p->len = 3 + 25;
    p->offset = 0;

    {*(pp)++ = (UINT8)((0x000D | (0x08 << 10))); *(pp)++ = (UINT8)(((0x000D | (0x08 << 10))) >> 8);};
    {*(pp)++ = (UINT8)(25);};

    {*(pp)++ = (UINT8)(scan_int); *(pp)++ = (UINT8)((scan_int) >> 8);};
    {*(pp)++ = (UINT8)(scan_win); *(pp)++ = (UINT8)((scan_win) >> 8);};
    {*(pp)++ = (UINT8)(init_filter_policy);};

    {*(pp)++ = (UINT8)(addr_type_peer);};
    {register int ijk; for (ijk = 0; ijk < 6; ijk++) *(pp)++ = (UINT8) bda_peer[6 - 1 - ijk];};
    {*(pp)++ = (UINT8)(addr_type_own);};

    {*(pp)++ = (UINT8)(conn_int_min); *(pp)++ = (UINT8)((conn_int_min) >> 8);};
    {*(pp)++ = (UINT8)(conn_int_max); *(pp)++ = (UINT8)((conn_int_max) >> 8);};
    {*(pp)++ = (UINT8)(conn_latency); *(pp)++ = (UINT8)((conn_latency) >> 8);};
    {*(pp)++ = (UINT8)(conn_timeout); *(pp)++ = (UINT8)((conn_timeout) >> 8);};

    {*(pp)++ = (UINT8)(min_ce_len); *(pp)++ = (UINT8)((min_ce_len) >> 8);};
    {*(pp)++ = (UINT8)(max_ce_len); *(pp)++ = (UINT8)((max_ce_len) >> 8);};

    btu_hcif_send_cmd (0, p);
    return (
# 324 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
           1
# 324 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
               );
}

BOOLEAN btsnd_hcic_ble_create_conn_cancel (void)
{
    BT_HDR *p;
    UINT8 *pp;

    if ((p = ((BT_HDR *)malloc((660)))) == 
# 332 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
                                                                        ((void *)0)
# 332 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                                                                            ) {
        return (
# 333 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
               0
# 333 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                    );
    }

    pp = (UINT8 *)(p + 1);

    p->len = 3 + 0;
    p->offset = 0;

    {*(pp)++ = (UINT8)((0x000E | (0x08 << 10))); *(pp)++ = (UINT8)(((0x000E | (0x08 << 10))) >> 8);};
    {*(pp)++ = (UINT8)(0);};

    btu_hcif_send_cmd (0, p);
    return (
# 345 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
           1
# 345 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
               );
}

BOOLEAN btsnd_hcic_ble_clear_white_list (void)
{
    BT_HDR *p;
    UINT8 *pp;

    if ((p = ((BT_HDR *)malloc((660)))) == 
# 353 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
                                                                  ((void *)0)
# 353 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                                                                      ) {
        return (
# 354 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
               0
# 354 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                    );
    }

    pp = (UINT8 *)(p + 1);

    p->len = 3 + 0;
    p->offset = 0;

    {*(pp)++ = (UINT8)((0x0010 | (0x08 << 10))); *(pp)++ = (UINT8)(((0x0010 | (0x08 << 10))) >> 8);};
    {*(pp)++ = (UINT8)(0);};

    btu_hcif_send_cmd (0, p);
    return (
# 366 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
           1
# 366 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
               );
}

BOOLEAN btsnd_hcic_ble_add_white_list (UINT8 addr_type, BD_ADDR bda)
{
    BT_HDR *p;
    UINT8 *pp;

    if ((p = ((BT_HDR *)malloc((660)))) == 
# 374 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
                                                                ((void *)0)
# 374 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                                                                    ) {
        return (
# 375 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
               0
# 375 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                    );
    }

    pp = (UINT8 *)(p + 1);

    p->len = 3 + 7;
    p->offset = 0;

    {*(pp)++ = (UINT8)((0x0011 | (0x08 << 10))); *(pp)++ = (UINT8)(((0x0011 | (0x08 << 10))) >> 8);};
    {*(pp)++ = (UINT8)(7);};

    {*(pp)++ = (UINT8)(addr_type);};
    {register int ijk; for (ijk = 0; ijk < 6; ijk++) *(pp)++ = (UINT8) bda[6 - 1 - ijk];};

    btu_hcif_send_cmd (0, p);
    return (
# 390 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
           1
# 390 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
               );
}

BOOLEAN btsnd_hcic_ble_remove_from_white_list (UINT8 addr_type, BD_ADDR bda)
{
    BT_HDR *p;
    UINT8 *pp;

    if ((p = ((BT_HDR *)malloc((660)))) == 
# 398 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
                                                                   ((void *)0)
# 398 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                                                                       ) {
        return (
# 399 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
               0
# 399 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                    );
    }

    pp = (UINT8 *)(p + 1);

    p->len = 3 + 7;
    p->offset = 0;

    {*(pp)++ = (UINT8)((0x0012 | (0x08 << 10))); *(pp)++ = (UINT8)(((0x0012 | (0x08 << 10))) >> 8);};
    {*(pp)++ = (UINT8)(7);};

    {*(pp)++ = (UINT8)(addr_type);};
    {register int ijk; for (ijk = 0; ijk < 6; ijk++) *(pp)++ = (UINT8) bda[6 - 1 - ijk];};

    btu_hcif_send_cmd (0, p);
    return (
# 414 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
           1
# 414 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
               );
}

BOOLEAN btsnd_hcic_ble_upd_ll_conn_params (UINT16 handle,
        UINT16 conn_int_min, UINT16 conn_int_max,
        UINT16 conn_latency, UINT16 conn_timeout,
        UINT16 min_ce_len, UINT16 max_ce_len)
{
    BT_HDR *p;
    UINT8 *pp;

    if ((p = ((BT_HDR *)malloc((660)))) == 
# 425 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
                                                                        ((void *)0)
# 425 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                                                                            ) {
        return (
# 426 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
               0
# 426 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                    );
    }

    pp = (UINT8 *)(p + 1);

    p->len = 3 + 14;
    p->offset = 0;

    {*(pp)++ = (UINT8)((0x0013 | (0x08 << 10))); *(pp)++ = (UINT8)(((0x0013 | (0x08 << 10))) >> 8);};
    {*(pp)++ = (UINT8)(14);};

    {*(pp)++ = (UINT8)(handle); *(pp)++ = (UINT8)((handle) >> 8);};

    {*(pp)++ = (UINT8)(conn_int_min); *(pp)++ = (UINT8)((conn_int_min) >> 8);};
    {*(pp)++ = (UINT8)(conn_int_max); *(pp)++ = (UINT8)((conn_int_max) >> 8);};
    {*(pp)++ = (UINT8)(conn_latency); *(pp)++ = (UINT8)((conn_latency) >> 8);};
    {*(pp)++ = (UINT8)(conn_timeout); *(pp)++ = (UINT8)((conn_timeout) >> 8);};
    {*(pp)++ = (UINT8)(min_ce_len); *(pp)++ = (UINT8)((min_ce_len) >> 8);};
    {*(pp)++ = (UINT8)(max_ce_len); *(pp)++ = (UINT8)((max_ce_len) >> 8);};

    btu_hcif_send_cmd (0, p);
    return (
# 447 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
           1
# 447 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
               );
}

BOOLEAN btsnd_hcic_ble_set_host_chnl_class (UINT8 chnl_map[5])
{
    BT_HDR *p;
    UINT8 *pp;

    if ((p = ((BT_HDR *)malloc((660)))) == 
# 455 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
                                                                     ((void *)0)
# 455 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                                                                         ) {
        return (
# 456 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
               0
# 456 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                    );
    }

    pp = (UINT8 *)(p + 1);

    p->len = 3 + 5;
    p->offset = 0;

    {*(pp)++ = (UINT8)((0x0014 | (0x08 << 10))); *(pp)++ = (UINT8)(((0x0014 | (0x08 << 10))) >> 8);};
    {*(pp)++ = (UINT8)(5);};

    {register int ijk; for (ijk = 0; ijk < 5; ijk++) *(pp)++ = (UINT8) chnl_map[ijk];};

    btu_hcif_send_cmd (0, p);
    return (
# 470 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
           1
# 470 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
               );
}

BOOLEAN btsnd_hcic_ble_read_chnl_map (UINT16 handle)
{
    BT_HDR *p;
    UINT8 *pp;

    if ((p = ((BT_HDR *)malloc((660)))) == 
# 478 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
                                                               ((void *)0)
# 478 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                                                                   ) {
        return (
# 479 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
               0
# 479 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                    );
    }

    pp = (UINT8 *)(p + 1);

    p->len = 3 + 2;
    p->offset = 0;

    {*(pp)++ = (UINT8)((0x0015 | (0x08 << 10))); *(pp)++ = (UINT8)(((0x0015 | (0x08 << 10))) >> 8);};
    {*(pp)++ = (UINT8)(2);};

    {*(pp)++ = (UINT8)(handle); *(pp)++ = (UINT8)((handle) >> 8);};

    btu_hcif_send_cmd (0, p);
    return (
# 493 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
           1
# 493 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
               );
}

BOOLEAN btsnd_hcic_ble_read_remote_feat (UINT16 handle)
{
    BT_HDR *p;
    UINT8 *pp;

    if ((p = ((BT_HDR *)malloc((660)))) == 
# 501 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
                                                                      ((void *)0)
# 501 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                                                                          ) {
        return (
# 502 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
               0
# 502 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                    );
    }

    pp = (UINT8 *)(p + 1);

    p->len = 3 + 2;
    p->offset = 0;

    {*(pp)++ = (UINT8)((0x0016 | (0x08 << 10))); *(pp)++ = (UINT8)(((0x0016 | (0x08 << 10))) >> 8);};
    {*(pp)++ = (UINT8)(2);};

    {*(pp)++ = (UINT8)(handle); *(pp)++ = (UINT8)((handle) >> 8);};

    btu_hcif_send_cmd (0, p);
    return (
# 516 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
           1
# 516 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
               );
}


BOOLEAN btsnd_hcic_ble_encrypt (UINT8 *key, UINT8 key_len,
                                UINT8 *plain_text, UINT8 pt_len,
                                void *p_cmd_cplt_cback)
{
    BT_HDR *p;
    UINT8 *pp;

    if ((p = ((BT_HDR *)malloc((660)))
                                                         ) == 
# 528 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
                                                             ((void *)0)
# 528 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                                                                 ) {
        return (
# 529 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
               0
# 529 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                    );
    }

    pp = (UINT8 *)(p + 1);

    p->len = 3 + 32;
    p->offset = sizeof(void *);

    *((void **)pp) = p_cmd_cplt_cback;
    pp += sizeof(void *);


    {*(pp)++ = (UINT8)((0x0017 | (0x08 << 10))); *(pp)++ = (UINT8)(((0x0017 | (0x08 << 10))) >> 8);};
    {*(pp)++ = (UINT8)(32);};

    memset(pp, 0, 32);

    if (key_len > 16) {
        key_len = 16;
    }
    if (pt_len > 16) {
        pt_len = 16;
    }

    {register int ijk; for (ijk = 0; ijk < key_len; ijk++) *(pp)++ = (UINT8) key[ijk];};
    pp += (16 - key_len);
    {register int ijk; for (ijk = 0; ijk < pt_len; ijk++) *(pp)++ = (UINT8) plain_text[ijk];};

    btu_hcif_send_cmd (0, p);
    return (
# 558 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
           1
# 558 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
               );
}

BOOLEAN btsnd_hcic_ble_rand (void *p_cmd_cplt_cback)
{
    BT_HDR *p;
    UINT8 *pp;

    if ((p = ((BT_HDR *)malloc((660)))
                                                      ) == 
# 567 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
                                                          ((void *)0)
# 567 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                                                              ) {
        return (
# 568 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
               0
# 568 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                    );
    }

    pp = (UINT8 *)(p + 1);

    p->len = 3 + 0;
    p->offset = sizeof(void *);

    *((void **)pp) = p_cmd_cplt_cback;
    pp += sizeof(void *);

    {*(pp)++ = (UINT8)((0x0018 | (0x08 << 10))); *(pp)++ = (UINT8)(((0x0018 | (0x08 << 10))) >> 8);};
    {*(pp)++ = (UINT8)(0);};

    btu_hcif_send_cmd (0, p);
    return (
# 583 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
           1
# 583 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
               );
}

BOOLEAN btsnd_hcic_ble_start_enc (UINT16 handle, UINT8 rand[8],
                                  UINT16 ediv, UINT8 ltk[16])
{
    BT_HDR *p;
    UINT8 *pp;

    if ((p = ((BT_HDR *)malloc((660)))) == 
# 592 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
                                                               ((void *)0)
# 592 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                                                                   ) {
        return (
# 593 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
               0
# 593 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                    );
    }

    pp = (UINT8 *)(p + 1);

    p->len = 3 + (4 + 8 + 16);
    p->offset = 0;

    {*(pp)++ = (UINT8)((0x0019 | (0x08 << 10))); *(pp)++ = (UINT8)(((0x0019 | (0x08 << 10))) >> 8);};
    {*(pp)++ = (UINT8)((4 + 8 + 16));};

    {*(pp)++ = (UINT8)(handle); *(pp)++ = (UINT8)((handle) >> 8);};
    {register int ijk; for (ijk = 0; ijk < 8; ijk++) *(pp)++ = (UINT8) rand[ijk];};
    {*(pp)++ = (UINT8)(ediv); *(pp)++ = (UINT8)((ediv) >> 8);};
    {register int ijk; for (ijk = 0; ijk < 16; ijk++) *(pp)++ = (UINT8) ltk[ijk];};

    btu_hcif_send_cmd (0, p);
    return (
# 610 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
           1
# 610 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
               );
}

BOOLEAN btsnd_hcic_ble_ltk_req_reply (UINT16 handle, UINT8 ltk[16])
{
    BT_HDR *p;
    UINT8 *pp;

    if ((p = ((BT_HDR *)malloc((660)))) == 
# 618 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
                                                               ((void *)0)
# 618 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                                                                   ) {
        return (
# 619 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
               0
# 619 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                    );
    }

    pp = (UINT8 *)(p + 1);

    p->len = 3 + (2 + 16);
    p->offset = 0;

    {*(pp)++ = (UINT8)((0x001A | (0x08 << 10))); *(pp)++ = (UINT8)(((0x001A | (0x08 << 10))) >> 8);};
    {*(pp)++ = (UINT8)((2 + 16));};

    {*(pp)++ = (UINT8)(handle); *(pp)++ = (UINT8)((handle) >> 8);};
    {register int ijk; for (ijk = 0; ijk < 16; ijk++) *(pp)++ = (UINT8) ltk[ijk];};

    btu_hcif_send_cmd (0, p);
    return (
# 634 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
           1
# 634 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
               );
}

BOOLEAN btsnd_hcic_ble_ltk_req_neg_reply (UINT16 handle)
{
    BT_HDR *p;
    UINT8 *pp;

    if ((p = ((BT_HDR *)malloc((660)))) == 
# 642 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
                                                                   ((void *)0)
# 642 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                                                                       ) {
        return (
# 643 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
               0
# 643 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                    );
    }

    pp = (UINT8 *)(p + 1);

    p->len = 3 + 2;
    p->offset = 0;

    {*(pp)++ = (UINT8)((0x001B | (0x08 << 10))); *(pp)++ = (UINT8)(((0x001B | (0x08 << 10))) >> 8);};
    {*(pp)++ = (UINT8)(2);};

    {*(pp)++ = (UINT8)(handle); *(pp)++ = (UINT8)((handle) >> 8);};

    btu_hcif_send_cmd (0, p);
    return (
# 657 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
           1
# 657 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
               );
}

BOOLEAN btsnd_hcic_ble_receiver_test(UINT8 rx_freq)
{
    BT_HDR *p;
    UINT8 *pp;

    if ((p = ((BT_HDR *)malloc((660)))) == 
# 665 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
                                                              ((void *)0)
# 665 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                                                                  ) {
        return (
# 666 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
               0
# 666 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                    );
    }

    pp = (UINT8 *)(p + 1);

    p->len = 3 + 1;
    p->offset = 0;

    {*(pp)++ = (UINT8)((0x001D | (0x08 << 10))); *(pp)++ = (UINT8)(((0x001D | (0x08 << 10))) >> 8);};
    {*(pp)++ = (UINT8)(1);};

    {*(pp)++ = (UINT8)(rx_freq);};

    btu_hcif_send_cmd (0, p);
    return (
# 680 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
           1
# 680 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
               );
}

BOOLEAN btsnd_hcic_ble_transmitter_test(UINT8 tx_freq, UINT8 test_data_len, UINT8 payload)
{
    BT_HDR *p;
    UINT8 *pp;

    if ((p = ((BT_HDR *)malloc((660)))) == 
# 688 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
                                                              ((void *)0)
# 688 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                                                                  ) {
        return (
# 689 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
               0
# 689 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                    );
    }

    pp = (UINT8 *)(p + 1);

    p->len = 3 + 3;
    p->offset = 0;

    {*(pp)++ = (UINT8)((0x001E | (0x08 << 10))); *(pp)++ = (UINT8)(((0x001E | (0x08 << 10))) >> 8);};
    {*(pp)++ = (UINT8)(3);};

    {*(pp)++ = (UINT8)(tx_freq);};
    {*(pp)++ = (UINT8)(test_data_len);};
    {*(pp)++ = (UINT8)(payload);};

    btu_hcif_send_cmd (0, p);
    return (
# 705 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
           1
# 705 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
               );
}

BOOLEAN btsnd_hcic_ble_test_end(void)
{
    BT_HDR *p;
    UINT8 *pp;

    if ((p = ((BT_HDR *)malloc((660)))) == 
# 713 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
                                                          ((void *)0)
# 713 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                                                              ) {
        return (
# 714 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
               0
# 714 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                    );
    }

    pp = (UINT8 *)(p + 1);

    p->len = 3 + 0;
    p->offset = 0;

    {*(pp)++ = (UINT8)((0x001F | (0x08 << 10))); *(pp)++ = (UINT8)(((0x001F | (0x08 << 10))) >> 8);};
    {*(pp)++ = (UINT8)(0);};

    btu_hcif_send_cmd (0, p);
    return (
# 726 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
           1
# 726 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
               );
}

BOOLEAN btsnd_hcic_ble_read_host_supported (void)
{
    BT_HDR *p;
    UINT8 *pp;

    if ((p = ((BT_HDR *)malloc((660)))) == 
# 734 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
                                                          ((void *)0)
# 734 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                                                              ) {
        return (
# 735 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
               0
# 735 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                    );
    }

    pp = (UINT8 *)(p + 1);

    p->len = 3 + 0;
    p->offset = 0;

    {*(pp)++ = (UINT8)((0x006C | (0x03 << 10))); *(pp)++ = (UINT8)(((0x006C | (0x03 << 10))) >> 8);};
    {*(pp)++ = (UINT8)(0);};

    btu_hcif_send_cmd (0, p);
    return (
# 747 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
           1
# 747 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
               );
}



BOOLEAN btsnd_hcic_ble_rc_param_req_reply( UINT16 handle,
        UINT16 conn_int_min, UINT16 conn_int_max,
        UINT16 conn_latency, UINT16 conn_timeout,
        UINT16 min_ce_len, UINT16 max_ce_len )
{
    BT_HDR *p;
    UINT8 *pp;

    if ((p = ((BT_HDR *)malloc((660)))) == 
# 760 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
                                                                        ((void *)0)
# 760 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                                                                            ) {
        return (
# 761 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
               0
# 761 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                    );
    }

    pp = (UINT8 *)(p + 1);

    p->len = 3 + 14;
    p->offset = 0;

    {*(pp)++ = (UINT8)((0x0020 | (0x08 << 10))); *(pp)++ = (UINT8)(((0x0020 | (0x08 << 10))) >> 8);};
    {*(pp)++ = (UINT8)(14);};

    {*(pp)++ = (UINT8)(handle); *(pp)++ = (UINT8)((handle) >> 8);};
    {*(pp)++ = (UINT8)(conn_int_min); *(pp)++ = (UINT8)((conn_int_min) >> 8);};
    {*(pp)++ = (UINT8)(conn_int_max); *(pp)++ = (UINT8)((conn_int_max) >> 8);};
    {*(pp)++ = (UINT8)(conn_latency); *(pp)++ = (UINT8)((conn_latency) >> 8);};
    {*(pp)++ = (UINT8)(conn_timeout); *(pp)++ = (UINT8)((conn_timeout) >> 8);};
    {*(pp)++ = (UINT8)(min_ce_len); *(pp)++ = (UINT8)((min_ce_len) >> 8);};
    {*(pp)++ = (UINT8)(max_ce_len); *(pp)++ = (UINT8)((max_ce_len) >> 8);};

    btu_hcif_send_cmd (0, p);
    return (
# 781 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
           1
# 781 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
               );
}

BOOLEAN btsnd_hcic_ble_rc_param_req_neg_reply(UINT16 handle, UINT8 reason)
{
    BT_HDR *p;
    UINT8 *pp;

    if ((p = ((BT_HDR *)malloc((660)))) == 
# 789 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
                                                                            ((void *)0)
# 789 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                                                                                ) {
        return (
# 790 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
               0
# 790 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                    );
    }

    pp = (UINT8 *)(p + 1);

    p->len = 3 + 3;
    p->offset = 0;

    {*(pp)++ = (UINT8)((0x0021 | (0x08 << 10))); *(pp)++ = (UINT8)(((0x0021 | (0x08 << 10))) >> 8);};
    {*(pp)++ = (UINT8)(3);};

    {*(pp)++ = (UINT8)(handle); *(pp)++ = (UINT8)((handle) >> 8);};
    {*(pp)++ = (UINT8)(reason);};

    btu_hcif_send_cmd (0, p);
    return (
# 805 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
           1
# 805 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
               );
}


BOOLEAN btsnd_hcic_ble_add_device_resolving_list (UINT8 addr_type_peer, BD_ADDR bda_peer,
        UINT8 irk_peer[16],
        UINT8 irk_local[16])
{
    BT_HDR *p;
    UINT8 *pp;

    if ((p = ((BT_HDR *)malloc((660)))) == 
# 816 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
                                                                             ((void *)0)
# 816 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                                                                                 ) {
        return (
# 817 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
               0
# 817 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                    );
    }

    pp = (UINT8 *)(p + 1);

    p->len = 3 + (7 + 16 * 2);
    p->offset = 0;

    {*(pp)++ = (UINT8)((0x0027 | (0x08 << 10))); *(pp)++ = (UINT8)(((0x0027 | (0x08 << 10))) >> 8);};
    {*(pp)++ = (UINT8)((7 + 16 * 2));};
    {*(pp)++ = (UINT8)(addr_type_peer);};
    {register int ijk; for (ijk = 0; ijk < 6; ijk++) *(pp)++ = (UINT8) bda_peer[6 - 1 - ijk];};
    {register int ijk; for (ijk = 0; ijk < 16; ijk++) *(pp)++ = (UINT8) irk_peer[ijk];};
    {register int ijk; for (ijk = 0; ijk < 16; ijk++) *(pp)++ = (UINT8) irk_local[ijk];};

    btu_hcif_send_cmd (0, p);

    return (
# 834 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
           1
# 834 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
               );
}

BOOLEAN btsnd_hcic_ble_rm_device_resolving_list (UINT8 addr_type_peer, BD_ADDR bda_peer)
{
    BT_HDR *p;
    UINT8 *pp;

    if ((p = ((BT_HDR *)malloc((660)))) == 
# 842 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
                                                                            ((void *)0)
# 842 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                                                                                ) {
        return (
# 843 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
               0
# 843 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                    );
    }

    pp = (UINT8 *)(p + 1);

    p->len = 3 + 7;
    p->offset = 0;

    {*(pp)++ = (UINT8)((0x0028 | (0x08 << 10))); *(pp)++ = (UINT8)(((0x0028 | (0x08 << 10))) >> 8);};
    {*(pp)++ = (UINT8)(7);};
    {*(pp)++ = (UINT8)(addr_type_peer);};
    {register int ijk; for (ijk = 0; ijk < 6; ijk++) *(pp)++ = (UINT8) bda_peer[6 - 1 - ijk];};

    btu_hcif_send_cmd (0, p);

    return (
# 858 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
           1
# 858 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
               );
}

BOOLEAN btsnd_hcic_ble_clear_resolving_list (void)
{
    BT_HDR *p;
    UINT8 *pp;

    if ((p = ((BT_HDR *)malloc((660)))) == 
# 866 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
                                                                           ((void *)0)
# 866 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                                                                               ) {
        return (
# 867 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
               0
# 867 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                    );
    }

    pp = (UINT8 *)(p + 1);

    p->len = 3 + 0;
    p->offset = 0;

    {*(pp)++ = (UINT8)((0x0029 | (0x08 << 10))); *(pp)++ = (UINT8)(((0x0029 | (0x08 << 10))) >> 8);};
    {*(pp)++ = (UINT8)(0);};

    btu_hcif_send_cmd (0, p);

    return (
# 880 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
           1
# 880 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
               );
}

BOOLEAN btsnd_hcic_ble_read_resolvable_addr_peer (UINT8 addr_type_peer, BD_ADDR bda_peer)
{
    BT_HDR *p;
    UINT8 *pp;

    if ((p = ((BT_HDR *)malloc((660)))) == 
# 888 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
                                                                                ((void *)0)
# 888 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                                                                                    ) {
        return (
# 889 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
               0
# 889 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                    );
    }

    pp = (UINT8 *)(p + 1);

    p->len = 3 + 7;
    p->offset = 0;

    {*(pp)++ = (UINT8)((0x002B | (0x08 << 10))); *(pp)++ = (UINT8)(((0x002B | (0x08 << 10))) >> 8);};
    {*(pp)++ = (UINT8)(7);};
    {*(pp)++ = (UINT8)(addr_type_peer);};
    {register int ijk; for (ijk = 0; ijk < 6; ijk++) *(pp)++ = (UINT8) bda_peer[6 - 1 - ijk];};

    btu_hcif_send_cmd (0, p);

    return (
# 904 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
           1
# 904 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
               );
}

BOOLEAN btsnd_hcic_ble_read_resolvable_addr_local (UINT8 addr_type_peer, BD_ADDR bda_peer)
{
    BT_HDR *p;
    UINT8 *pp;

    if ((p = ((BT_HDR *)malloc((660)))) == 
# 912 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
                                                                                 ((void *)0)
# 912 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                                                                                     ) {
        return (
# 913 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
               0
# 913 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                    );
    }

    pp = (UINT8 *)(p + 1);

    p->len = 3 + 7;
    p->offset = 0;

    {*(pp)++ = (UINT8)((0x002C | (0x08 << 10))); *(pp)++ = (UINT8)(((0x002C | (0x08 << 10))) >> 8);};
    {*(pp)++ = (UINT8)(7);};
    {*(pp)++ = (UINT8)(addr_type_peer);};
    {register int ijk; for (ijk = 0; ijk < 6; ijk++) *(pp)++ = (UINT8) bda_peer[6 - 1 - ijk];};

    btu_hcif_send_cmd (0, p);

    return (
# 928 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
           1
# 928 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
               );
}

BOOLEAN btsnd_hcic_ble_set_addr_resolution_enable (UINT8 addr_resolution_enable)
{
    BT_HDR *p;
    UINT8 *pp;

    if ((p = ((BT_HDR *)malloc((660)))) == 
# 936 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
                                                                                 ((void *)0)
# 936 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                                                                                     ) {
        return (
# 937 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
               0
# 937 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                    );
    }

    pp = (UINT8 *)(p + 1);

    p->len = 3 + 1;
    p->offset = 0;

    {*(pp)++ = (UINT8)((0x002D | (0x08 << 10))); *(pp)++ = (UINT8)(((0x002D | (0x08 << 10))) >> 8);};
    {*(pp)++ = (UINT8)(1);};
    {*(pp)++ = (UINT8)(addr_resolution_enable);};

    btu_hcif_send_cmd (0, p);

    return (
# 951 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
           1
# 951 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
               );
}

BOOLEAN btsnd_hcic_ble_set_rand_priv_addr_timeout (UINT16 rpa_timout)
{
    BT_HDR *p;
    UINT8 *pp;

    if ((p = ((BT_HDR *)malloc((660)))) == 
# 959 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
                                                                                ((void *)0)
# 959 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                                                                                    ) {
        return (
# 960 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
               0
# 960 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                    );
    }

    pp = (UINT8 *)(p + 1);

    p->len = 3 + 2;
    p->offset = 0;

    {*(pp)++ = (UINT8)((0x002E | (0x08 << 10))); *(pp)++ = (UINT8)(((0x002E | (0x08 << 10))) >> 8);};
    {*(pp)++ = (UINT8)(2);};
    {*(pp)++ = (UINT8)(rpa_timout); *(pp)++ = (UINT8)((rpa_timout) >> 8);};

    btu_hcif_send_cmd (0, p);

    return (
# 974 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
           1
# 974 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
               );
}

BOOLEAN btsnd_hcic_ble_set_data_length(UINT16 conn_handle, UINT16 tx_octets, UINT16 tx_time)
{
    BT_HDR *p;
    UINT8 *pp;

    if ((p = ((BT_HDR *)malloc((660)))) == 
# 982 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
                                                                     ((void *)0)
# 982 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                                                                         ) {
        return 
# 983 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
              0
# 983 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
                   ;
    }

    pp = p->data;

    p->len = 3 + 6;
    p->offset = 0;

    {*(pp)++ = (UINT8)((0x0022 | (0x08 << 10))); *(pp)++ = (UINT8)(((0x0022 | (0x08 << 10))) >> 8);};
    {*(pp)++ = (UINT8)(6);};

    {*(pp)++ = (UINT8)(conn_handle); *(pp)++ = (UINT8)((conn_handle) >> 8);};
    {*(pp)++ = (UINT8)(tx_octets); *(pp)++ = (UINT8)((tx_octets) >> 8);};
    {*(pp)++ = (UINT8)(tx_time); *(pp)++ = (UINT8)((tx_time) >> 8);};

    btu_hcif_send_cmd (0, p);
    return 
# 999 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c" 3 4
          1
# 999 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/hcic/hciblecmds.c"
              ;
}
