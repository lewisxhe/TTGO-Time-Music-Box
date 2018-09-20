# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avdt/avdt_scb.c"
# 1 "D:\\ESP32\\esp-idf-v3.1-rc1\\ESP32_PIC_A2DP\\build\\bt//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avdt/avdt_scb.c"
# 26 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avdt/avdt_scb.c"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h" 1
# 10 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/_ansi.h" 1
# 15 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/_ansi.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/newlib.h" 1
# 16 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/_ansi.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/config.h" 1



# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/ieeefp.h" 1
# 5 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/config.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/features.h" 1
# 6 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/config.h" 2
# 189 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/config.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/config/core-isa.h" 1
# 190 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/config.h" 2
# 17 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/_ansi.h" 2
# 11 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/reent.h" 1
# 13 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/reent.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/_ansi.h" 1
# 14 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/reent.h" 2
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 149 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4

# 149 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef int ptrdiff_t;
# 216 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef unsigned int size_t;
# 328 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef short unsigned int wchar_t;
# 15 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/reent.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/_types.h" 1
# 12 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/_types.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_types.h" 1






# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h" 1
# 17 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"

# 17 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
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
# 8 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_types.h" 2
# 13 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/_types.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/lock.h" 1
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
# 12 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/cdefs.h" 1
# 45 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/cdefs.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 46 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/cdefs.h" 2
# 13 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h" 2




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


# 27 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avdt/avdt_scb.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h" 1
# 22 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h" 1
# 13 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
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
# 28 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avdt/avdt_scb.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/common/include/common/bt_target.h" 1
# 37 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/common/include/common/bt_target.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/ESP32_PIC_A2DP/build/include/sdkconfig.h" 1
# 38 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/common/include/common/bt_target.h" 2


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
# 36 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdio.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 37 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdio.h" 2


# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdarg.h" 1 3 4
# 40 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdarg.h" 3 4

# 40 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 40 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdio.h" 2
# 48 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdio.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/types.h" 1
# 69 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/types.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 70 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/types.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/types.h" 1
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/types.h"

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
# 29 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avdt/avdt_scb.c" 2
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
# 30 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avdt/avdt_scb.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avdt_api.h" 1
# 94 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avdt_api.h"
typedef UINT8 AVDT_REPORT_TYPE;
# 213 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avdt_api.h"
typedef struct {
    UINT32 ntp_sec;
    UINT32 ntp_frac;
    UINT32 rtp_time;
    UINT32 pkt_count;

    UINT32 octet_count;
} tAVDT_SENDER_INFO;

typedef struct {
    UINT8 frag_lost;
    UINT32 packet_lost;
    UINT32 seq_num_rcvd;
    UINT32 jitter;
    UINT32 lsr;
    UINT32 dlsr;
} tAVDT_REPORT_BLK;

typedef union {
    tAVDT_SENDER_INFO sr;
    tAVDT_REPORT_BLK rr;
    UINT8 cname[28 + 1];
} tAVDT_REPORT_DATA;


typedef struct {
    UINT16 ctrl_mtu;
    UINT8 ret_tout;
    UINT8 sig_tout;
    UINT8 idle_tout;
    UINT8 sec_mask;
} tAVDT_REG;




typedef struct {
    BOOLEAN in_use;
    UINT8 seid;
    UINT8 media_type;
    UINT8 tsep;
} tAVDT_SEP_INFO;


typedef struct {
    UINT8 codec_info[10];
    UINT8 protect_info[90];
    UINT8 num_codec;
    UINT8 num_protect;
    UINT16 psc_mask;
    UINT8 recov_type;
    UINT8 recov_mrws;
    UINT8 recov_mnmp;
    UINT8 hdrcmp_mask;

    UINT8 mux_mask;
    UINT8 mux_tsid_media;
    UINT8 mux_tcid_media;
    UINT8 mux_tsid_report;
    UINT8 mux_tcid_report;
    UINT8 mux_tsid_recov;
    UINT8 mux_tcid_recov;

} tAVDT_CFG;


typedef struct {
    UINT8 err_code;
    UINT8 err_param;
    UINT8 label;
    UINT8 seid;
    UINT8 sig_id;
    UINT8 ccb_idx;
} tAVDT_EVT_HDR;




typedef struct {
    tAVDT_EVT_HDR hdr;
    tAVDT_CFG *p_cfg;
} tAVDT_CONFIG;


typedef struct {
    tAVDT_EVT_HDR hdr;
    tAVDT_CFG *p_cfg;
    UINT8 int_seid;
} tAVDT_SETCONFIG;


typedef struct {
    tAVDT_EVT_HDR hdr;
    UINT16 peer_mtu;
    UINT16 lcid;
} tAVDT_OPEN;




typedef struct {
    tAVDT_EVT_HDR hdr;
    UINT8 *p_data;
    UINT16 len;
} tAVDT_SECURITY;


typedef struct {
    tAVDT_EVT_HDR hdr;
    tAVDT_SEP_INFO *p_sep_info;
    UINT8 num_seps;
} tAVDT_DISCOVER;


typedef struct {
    tAVDT_EVT_HDR hdr;
    UINT16 delay;
} tAVDT_DELAY_RPT;


typedef union {
    tAVDT_EVT_HDR hdr;
    tAVDT_DISCOVER discover_cfm;
    tAVDT_CONFIG getcap_cfm;
    tAVDT_OPEN open_cfm;
    tAVDT_OPEN open_ind;
    tAVDT_SETCONFIG config_ind;
    tAVDT_EVT_HDR start_cfm;
    tAVDT_EVT_HDR suspend_cfm;
    tAVDT_EVT_HDR close_cfm;
    tAVDT_CONFIG reconfig_cfm;
    tAVDT_CONFIG reconfig_ind;
    tAVDT_SECURITY security_cfm;
    tAVDT_SECURITY security_ind;
    tAVDT_EVT_HDR connect_ind;
    tAVDT_EVT_HDR disconnect_ind;
    tAVDT_EVT_HDR report_conn;
    tAVDT_DELAY_RPT delay_rpt_cmd;
} tAVDT_CTRL;






typedef void (tAVDT_CTRL_CBACK)(UINT8 handle, BD_ADDR bd_addr, UINT8 event,
                                tAVDT_CTRL *p_data);





typedef void (tAVDT_DATA_CBACK)(UINT8 handle, BT_HDR *p_pkt, UINT32 time_stamp,
                                UINT8 m_pt);
# 375 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avdt_api.h"
typedef void (tAVDT_MEDIA_CBACK)(UINT8 handle, UINT8 *p_payload, UINT32 payload_len,
                                 UINT32 time_stamp, UINT16 seq_num, UINT8 m_pt, UINT8 marker);







typedef void (tAVDT_REPORT_CBACK)(UINT8 handle, AVDT_REPORT_TYPE type,
                                  tAVDT_REPORT_DATA *p_data);


typedef UINT16 (tAVDT_GETCAP_REQ) (BD_ADDR bd_addr, UINT8 seid, tAVDT_CFG *p_cfg, tAVDT_CTRL_CBACK *p_cback);




typedef struct {
    tAVDT_CFG cfg;
    tAVDT_CTRL_CBACK *p_ctrl_cback;
    tAVDT_DATA_CBACK *p_data_cback;

    tAVDT_MEDIA_CBACK *p_media_cback;


    tAVDT_REPORT_CBACK *p_report_cback;

    UINT16 mtu;
    UINT16 flush_to;
    UINT8 tsep;
    UINT8 media_type;
    UINT16 nsc_mask;
} tAVDT_CS;





typedef UINT8 tAVDT_DATA_OPT_MASK;
# 440 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avdt_api.h"
extern void AVDT_Register(tAVDT_REG *p_reg, tAVDT_CTRL_CBACK *p_cback);
# 455 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avdt_api.h"
extern void AVDT_Deregister(void);
# 470 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avdt_api.h"
extern void AVDT_SINK_Activate(void);
# 484 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avdt_api.h"
extern void AVDT_SINK_Deactivate(void);
# 496 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avdt_api.h"
extern void AVDT_AbortReq(UINT8 handle);
# 512 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avdt_api.h"
extern UINT16 AVDT_CreateStream(UINT8 *p_handle, tAVDT_CS *p_cs);
# 528 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avdt_api.h"
extern UINT16 AVDT_RemoveStream(UINT8 handle);
# 556 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avdt_api.h"
extern UINT16 AVDT_DiscoverReq(BD_ADDR bd_addr, tAVDT_SEP_INFO *p_sep_info,
                               UINT8 max_seps, tAVDT_CTRL_CBACK *p_cback);
# 584 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avdt_api.h"
extern UINT16 AVDT_GetCapReq(BD_ADDR bd_addr, UINT8 seid, tAVDT_CFG *p_cfg,
                             tAVDT_CTRL_CBACK *p_cback);
# 611 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avdt_api.h"
extern UINT16 AVDT_GetAllCapReq(BD_ADDR bd_addr, UINT8 seid, tAVDT_CFG *p_cfg,
                                tAVDT_CTRL_CBACK *p_cback);
# 625 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avdt_api.h"
extern UINT16 AVDT_DelayReport(UINT8 handle, UINT8 seid, UINT16 delay);
# 640 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avdt_api.h"
extern UINT16 AVDT_OpenReq(UINT8 handle, BD_ADDR bd_addr, UINT8 seid,
                           tAVDT_CFG *p_cfg);
# 656 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avdt_api.h"
extern UINT16 AVDT_ConfigRsp(UINT8 handle, UINT8 label, UINT8 error_code,
                             UINT8 category);
# 673 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avdt_api.h"
extern UINT16 AVDT_StartReq(UINT8 *p_handles, UINT8 num_handles);
# 690 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avdt_api.h"
extern UINT16 AVDT_SuspendReq(UINT8 *p_handles, UINT8 num_handles);
# 706 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avdt_api.h"
extern UINT16 AVDT_CloseReq(UINT8 handle);
# 724 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avdt_api.h"
extern UINT16 AVDT_ReconfigReq(UINT8 handle, tAVDT_CFG *p_cfg);
# 738 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avdt_api.h"
extern UINT16 AVDT_ReconfigRsp(UINT8 handle, UINT8 label, UINT8 error_code,
                               UINT8 category);
# 755 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avdt_api.h"
extern UINT16 AVDT_SecurityReq(UINT8 handle, UINT8 *p_data, UINT16 len);
# 771 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avdt_api.h"
extern UINT16 AVDT_SecurityRsp(UINT8 handle, UINT8 label, UINT8 error_code,
                               UINT8 *p_data, UINT16 len);
# 807 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avdt_api.h"
extern UINT16 AVDT_WriteReq(UINT8 handle, BT_HDR *p_pkt, UINT32 time_stamp,
                            UINT8 m_pt);
# 845 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avdt_api.h"
extern UINT16 AVDT_WriteReqOpt(UINT8 handle, BT_HDR *p_pkt, UINT32 time_stamp,
                               UINT8 m_pt, tAVDT_DATA_OPT_MASK opt);
# 863 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avdt_api.h"
extern UINT16 AVDT_ConnectReq(BD_ADDR bd_addr, UINT8 sec_mask,
                              tAVDT_CTRL_CBACK *p_cback);
# 878 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avdt_api.h"
extern UINT16 AVDT_DisconnectReq(BD_ADDR bd_addr, tAVDT_CTRL_CBACK *p_cback);
# 889 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avdt_api.h"
extern UINT16 AVDT_GetL2CapChannel(UINT8 handle);
# 900 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avdt_api.h"
extern UINT16 AVDT_GetSignalChannel(UINT8 handle, BD_ADDR bd_addr);
# 923 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avdt_api.h"
extern UINT16 AVDT_WriteDataReq(UINT8 handle, UINT8 *p_data, UINT32 data_len,
                                UINT32 time_stamp, UINT8 m_pt, UINT8 marker);
# 944 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avdt_api.h"
extern UINT16 AVDT_SetMediaBuf(UINT8 handle, UINT8 *p_buf, UINT32 buf_len);
# 957 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avdt_api.h"
extern UINT16 AVDT_SendReport(UINT8 handle, AVDT_REPORT_TYPE type,
                              tAVDT_REPORT_DATA *p_data);
# 981 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avdt_api.h"
extern UINT8 AVDT_SetTraceLevel (UINT8 new_level);
# 31 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avdt/avdt_scb.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avdtc_api.h" 1
# 47 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avdtc_api.h"
typedef struct {
    tAVDT_EVT_HDR hdr;
    UINT8 seid_list[3];
    UINT8 num_seps;
} tAVDT_MULTI;


typedef union {
    tAVDT_EVT_HDR hdr;
    tAVDT_CONFIG getconfig_cfm;
    tAVDT_MULTI start_ind;
    tAVDT_MULTI suspend_ind;
} tAVDTC_CTRL;

typedef void tAVDTC_CTRL_CBACK(UINT8 handle, BD_ADDR bd_addr, UINT8 event, tAVDTC_CTRL *p_data);
# 79 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avdtc_api.h"
extern void AVDTC_Init(tAVDTC_CTRL_CBACK *p_cback);
# 90 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avdtc_api.h"
extern void AVDTC_DiscoverRsp(BD_ADDR bd_addr, UINT8 label,
                              tAVDT_SEP_INFO sep_info[], UINT8 num_seps);
# 102 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avdtc_api.h"
extern void AVDTC_GetCapRsp(BD_ADDR bd_addr, UINT8 label, tAVDT_CFG *p_cap);
# 113 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avdtc_api.h"
extern void AVDTC_GetAllCapRsp(BD_ADDR bd_addr, UINT8 label, tAVDT_CFG *p_cap);
# 124 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avdtc_api.h"
extern void AVDTC_GetConfigReq(UINT8 handle);
# 135 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avdtc_api.h"
extern void AVDTC_GetConfigRsp(UINT8 handle, UINT8 label, tAVDT_CFG *p_cfg);
# 146 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avdtc_api.h"
extern void AVDTC_OpenReq(UINT8 handle);
# 157 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avdtc_api.h"
extern void AVDTC_OpenRsp(UINT8 handle, UINT8 label);
# 168 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avdtc_api.h"
extern void AVDTC_StartRsp(UINT8 *p_handles, UINT8 num_handles, UINT8 label);
# 179 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avdtc_api.h"
extern void AVDTC_CloseRsp(UINT8 handle, UINT8 label);
# 190 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avdtc_api.h"
extern void AVDTC_SuspendRsp(UINT8 *p_handles, UINT8 num_handles, UINT8 label);
# 201 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avdtc_api.h"
extern void AVDTC_AbortReq(UINT8 handle);
# 212 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avdtc_api.h"
extern void AVDTC_AbortRsp(UINT8 handle, UINT8 label);
# 223 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avdtc_api.h"
extern void AVDTC_Rej(UINT8 handle, BD_ADDR bd_addr, UINT8 cmd, UINT8 label,
                      UINT8 err_code, UINT8 err_param);
# 32 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avdt/avdt_scb.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avdt/include/avdt_int.h" 1
# 29 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avdt/include/avdt_int.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avdt/include/avdt_defs.h" 1
# 30 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avdt/include/avdt_int.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h" 1
# 30 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2cdefs.h" 1
# 31 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h" 2
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
# 32 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h" 2
# 64 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
typedef UINT8 tL2CAP_CHNL_PRIORITY;







typedef UINT8 tL2CAP_CHNL_DATA_RATE;
# 134 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
typedef struct {




    UINT8 mode;

    UINT8 tx_win_sz;
    UINT8 max_transmit;
    UINT16 rtrans_tout;
    UINT16 mon_tout;
    UINT16 mps;
} tL2CAP_FCR_OPTS;





typedef struct {
    UINT16 result;
    BOOLEAN mtu_present;
    UINT16 mtu;
    BOOLEAN qos_present;
    FLOW_SPEC qos;
    BOOLEAN flush_to_present;
    UINT16 flush_to;
    BOOLEAN fcr_present;
    tL2CAP_FCR_OPTS fcr;
    BOOLEAN fcs_present;
    UINT8 fcs;
    BOOLEAN ext_flow_spec_present;
    tHCI_EXT_FLOW_SPEC ext_flow_spec;
    UINT16 flags;
} tL2CAP_CFG_INFO;




typedef struct
{
    UINT16 mtu;
    UINT16 mps;
    UINT16 credits;
} tL2CAP_LE_CFG_INFO;
# 188 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
typedef UINT16 tL2CAP_CH_CFG_BITS;
# 200 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
typedef void (tL2CA_CONNECT_IND_CB) (BD_ADDR, UINT16, UINT16, UINT8);






typedef void (tL2CA_CONNECT_CFM_CB) (UINT16, UINT16);





typedef void (tL2CA_CONNECT_PND_CB) (UINT16);






typedef void (tL2CA_CONFIG_IND_CB) (UINT16, tL2CAP_CFG_INFO *);






typedef void (tL2CA_CONFIG_CFM_CB) (UINT16, tL2CAP_CFG_INFO *);






typedef void (tL2CA_DISCONNECT_IND_CB) (UINT16, BOOLEAN);






typedef void (tL2CA_DISCONNECT_CFM_CB) (UINT16, UINT16);





typedef void (tL2CA_QOS_VIOLATION_IND_CB) (BD_ADDR);






typedef void (tL2CA_DATA_IND_CB) (UINT16, BT_HDR *);







typedef void (tL2CA_ECHO_RSP_CB) (UINT16);




typedef void (tL2CA_ECHO_DATA_CB) (BD_ADDR, UINT16, UINT8 *);
# 276 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
typedef void (tL2CA_CONGESTION_STATUS_CB) (UINT16, BOOLEAN);
# 285 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
typedef void (tL2CA_NOCP_CB) (BD_ADDR);
# 294 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
typedef void (tL2CA_TX_COMPLETE_CB) (UINT16, UINT16);






typedef struct {
    tL2CA_CONNECT_IND_CB *pL2CA_ConnectInd_Cb;
    tL2CA_CONNECT_CFM_CB *pL2CA_ConnectCfm_Cb;
    tL2CA_CONNECT_PND_CB *pL2CA_ConnectPnd_Cb;
    tL2CA_CONFIG_IND_CB *pL2CA_ConfigInd_Cb;
    tL2CA_CONFIG_CFM_CB *pL2CA_ConfigCfm_Cb;
    tL2CA_DISCONNECT_IND_CB *pL2CA_DisconnectInd_Cb;
    tL2CA_DISCONNECT_CFM_CB *pL2CA_DisconnectCfm_Cb;
    tL2CA_QOS_VIOLATION_IND_CB *pL2CA_QoSViolationInd_Cb;
    tL2CA_DATA_IND_CB *pL2CA_DataInd_Cb;
    tL2CA_CONGESTION_STATUS_CB *pL2CA_CongestionStatus_Cb;
    tL2CA_TX_COMPLETE_CB *pL2CA_TxComplete_Cb;

} tL2CAP_APPL_INFO;




typedef struct {
    UINT8 preferred_mode;
    UINT8 allowed_modes;
    UINT16 user_rx_buf_size;
    UINT16 user_tx_buf_size;
    UINT16 fcr_rx_buf_size;
    UINT16 fcr_tx_buf_size;

} tL2CAP_ERTM_INFO;
# 362 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
extern UINT16 L2CA_Register (UINT16 psm, tL2CAP_APPL_INFO *p_cb_info);
# 374 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
extern void L2CA_Deregister (UINT16 psm);
# 386 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
extern UINT16 L2CA_AllocatePSM(void);
# 400 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
extern UINT16 L2CA_ConnectReq (UINT16 psm, BD_ADDR p_bd_addr);
# 413 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
extern BOOLEAN L2CA_ConnectRsp (BD_ADDR p_bd_addr, UINT8 id, UINT16 lcid,
                                UINT16 result, UINT16 status);
# 429 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
extern UINT16 L2CA_ErtmConnectReq (UINT16 psm, BD_ADDR p_bd_addr,
                                   tL2CAP_ERTM_INFO *p_ertm_info);







# 437 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h" 3 4
_Bool 
# 437 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
    L2CA_SetConnectionCallbacks(uint16_t local_cid, const tL2CAP_APPL_INFO *callbacks);
# 451 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
extern BOOLEAN L2CA_ErtmConnectRsp (BD_ADDR p_bd_addr, UINT8 id, UINT16 lcid,
                                     UINT16 result, UINT16 status,
                                     tL2CAP_ERTM_INFO *p_ertm_info);
# 464 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
extern BOOLEAN L2CA_ConfigReq (UINT16 cid, tL2CAP_CFG_INFO *p_cfg);
# 476 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
extern BOOLEAN L2CA_ConfigRsp (UINT16 cid, tL2CAP_CFG_INFO *p_cfg);
# 487 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
extern BOOLEAN L2CA_DisconnectReq (UINT16 cid);
# 499 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
extern BOOLEAN L2CA_DisconnectRsp (UINT16 cid);
# 516 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
extern UINT16 L2CA_RegisterLECoc (UINT16 psm, tL2CAP_APPL_INFO *p_cb_info);
# 528 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
extern void L2CA_DeregisterLECoc (UINT16 psm);
# 542 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
extern UINT16 L2CA_ConnectLECocReq (UINT16 psm, BD_ADDR p_bd_addr, tL2CAP_LE_CFG_INFO *p_cfg);
# 555 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
extern BOOLEAN L2CA_ConnectLECocRsp (BD_ADDR p_bd_addr, UINT8 id, UINT16 lcid, UINT16 result,
                                         UINT16 status, tL2CAP_LE_CFG_INFO *p_cfg);
# 567 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
extern BOOLEAN L2CA_GetPeerLECocConfig (UINT16 lcid, tL2CAP_LE_CFG_INFO* peer_cfg);
# 580 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
extern UINT8 L2CA_DataWrite (UINT16 cid, BT_HDR *p_data);
# 593 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
extern BOOLEAN L2CA_Ping (BD_ADDR p_bd_addr, tL2CA_ECHO_RSP_CB *p_cb);
# 605 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
extern BOOLEAN L2CA_Echo (BD_ADDR p_bd_addr, BT_HDR *p_data, tL2CA_ECHO_DATA_CB *p_callback);








# 613 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h" 3 4
_Bool 
# 613 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
    L2CA_GetIdentifiers(uint16_t lcid, uint16_t *rcid, uint16_t *handle);
# 630 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
extern BOOLEAN L2CA_SetIdleTimeout (UINT16 cid, UINT16 timeout,
                                    BOOLEAN is_global);
# 653 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
extern BOOLEAN L2CA_SetIdleTimeoutByBdAddr(BD_ADDR bd_addr, UINT16 timeout,
        tBT_TRANSPORT transport);
# 667 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
extern UINT8 L2CA_SetTraceLevel (UINT8 trace_level);
# 686 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
extern UINT8 L2CA_SetDesireRole (UINT8 new_role);
# 697 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
extern UINT16 L2CA_LocalLoopbackReq (UINT16 psm, UINT16 handle, BD_ADDR p_bd_addr);
# 713 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
extern UINT16 L2CA_FlushChannel (UINT16 lcid, UINT16 num_to_flush);
# 727 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
extern BOOLEAN L2CA_SetAclPriority (BD_ADDR bd_addr, UINT8 priority);
# 740 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
extern BOOLEAN L2CA_FlowControl (UINT16 cid, BOOLEAN data_enabled);
# 751 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
extern BOOLEAN L2CA_SendTestSFrame (UINT16 cid, UINT8 sup_type,
                                    UINT8 back_track);
# 763 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
extern BOOLEAN L2CA_SetTxPriority (UINT16 cid, tL2CAP_CHNL_PRIORITY priority);
# 777 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
extern BOOLEAN L2CA_RegForNoCPEvt(tL2CA_NOCP_CB *p_cb, BD_ADDR p_bda);
# 788 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
extern BOOLEAN L2CA_SetChnlDataRate (UINT16 cid, tL2CAP_CHNL_DATA_RATE tx, tL2CAP_CHNL_DATA_RATE rx);

typedef void (tL2CA_RESERVE_CMPL_CBACK) (void);
# 813 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
extern BOOLEAN L2CA_SetFlushTimeout (BD_ADDR bd_addr, UINT16 flush_tout);
# 831 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
extern UINT8 L2CA_DataWriteEx (UINT16 cid, BT_HDR *p_data, UINT16 flags);
# 843 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
extern BOOLEAN L2CA_SetChnlFlushability (UINT16 cid, BOOLEAN is_flushable);
# 857 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
extern BOOLEAN L2CA_GetPeerFeatures (BD_ADDR bd_addr, UINT32 *p_ext_feat, UINT8 *p_chnl_mask);
# 871 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
extern BOOLEAN L2CA_GetBDAddrbyHandle (UINT16 handle, BD_ADDR bd_addr);
# 886 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
extern UINT8 L2CA_GetChnlFcrMode (UINT16 lcid);
# 904 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
typedef void (tL2CA_UCD_DISCOVER_CB) (BD_ADDR, UINT8, UINT32);





typedef void (tL2CA_UCD_DATA_CB) (BD_ADDR, BT_HDR *);







typedef void (tL2CA_UCD_CONGESTION_STATUS_CB) (BD_ADDR, BOOLEAN);



typedef struct {
    tL2CA_UCD_DISCOVER_CB *pL2CA_UCD_Discover_Cb;
    tL2CA_UCD_DATA_CB *pL2CA_UCD_Data_Cb;
    tL2CA_UCD_CONGESTION_STATUS_CB *pL2CA_UCD_Congestion_Status_Cb;
} tL2CAP_UCD_CB_INFO;
# 939 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
extern BOOLEAN L2CA_UcdRegister ( UINT16 psm, tL2CAP_UCD_CB_INFO *p_cb_info );
# 952 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
extern BOOLEAN L2CA_UcdDeregister ( UINT16 psm );
# 969 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
extern BOOLEAN L2CA_UcdDiscover ( UINT16 psm, BD_ADDR rem_bda, UINT8 info_type );
# 988 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
extern UINT16 L2CA_UcdDataWrite (UINT16 psm, BD_ADDR rem_bda, BT_HDR *p_buf, UINT16 flags);
# 1002 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
extern BOOLEAN L2CA_UcdSetIdleTimeout ( BD_ADDR rem_bda, UINT16 timeout );
# 1013 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
extern BOOLEAN L2CA_UCDSetTxPriority ( BD_ADDR rem_bda, tL2CAP_CHNL_PRIORITY priority );
# 1029 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
typedef void (tL2CA_FIXED_CHNL_CB) (UINT16, BD_ADDR, BOOLEAN, UINT16, tBT_TRANSPORT);






typedef void (tL2CA_FIXED_DATA_CB) (UINT16, BD_ADDR, BT_HDR *);







typedef void (tL2CA_FIXED_CONGESTION_STATUS_CB) (BD_ADDR, BOOLEAN);



typedef struct {
    tL2CA_FIXED_CHNL_CB *pL2CA_FixedConn_Cb;
    tL2CA_FIXED_DATA_CB *pL2CA_FixedData_Cb;
    tL2CA_FIXED_CONGESTION_STATUS_CB *pL2CA_FixedCong_Cb;
    tL2CAP_FCR_OPTS fixed_chnl_opts;

    UINT16 default_idle_tout;
    tL2CA_TX_COMPLETE_CB *pL2CA_FixedTxComplete_Cb;
} tL2CAP_FIXED_CHNL_REG;
# 1072 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
extern BOOLEAN L2CA_RegisterFixedChannel (UINT16 fixed_cid, tL2CAP_FIXED_CHNL_REG *p_freg);
# 1087 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
extern BOOLEAN L2CA_ConnectFixedChnl (UINT16 fixed_cid, BD_ADDR bd_addr, tBLE_ADDR_TYPE bd_addr_type);
# 1103 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
extern UINT16 L2CA_SendFixedChnlData (UINT16 fixed_cid, BD_ADDR rem_bda, BT_HDR *p_buf);
# 1118 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
extern BOOLEAN L2CA_RemoveFixedChnl (UINT16 fixed_cid, BD_ADDR rem_bda);
# 1137 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
extern BOOLEAN L2CA_SetFixedChannelTout (BD_ADDR rem_bda, UINT16 fixed_cid, UINT16 idle_tout);
# 1155 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
extern BOOLEAN L2CA_GetCurrentConfig (UINT16 lcid,
                                      tL2CAP_CFG_INFO **pp_our_cfg, tL2CAP_CH_CFG_BITS *p_our_cfg_bits,
                                      tL2CAP_CFG_INFO **pp_peer_cfg, tL2CAP_CH_CFG_BITS *p_peer_cfg_bits);
# 1173 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
extern BOOLEAN L2CA_CancelBleConnectReq (BD_ADDR rem_bda);
# 1186 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
extern BOOLEAN L2CA_UpdateBleConnParams (BD_ADDR rem_bdRa, UINT16 min_int,
        UINT16 max_int, UINT16 latency, UINT16 timeout);
# 1201 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
extern BOOLEAN L2CA_EnableUpdateBleConnParams (BD_ADDR rem_bda, BOOLEAN enable);
# 1212 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
extern UINT8 L2CA_GetBleConnRole (BD_ADDR bd_addr);
# 1226 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
extern UINT16 L2CA_GetDisconnectReason (BD_ADDR remote_bda, tBT_TRANSPORT transport);

extern BOOLEAN L2CA_CheckIsCongest(UINT16 fixed_cid, UINT16 handle);
# 31 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avdt/include/avdt_int.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h" 1
# 33 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/sdp_api.h" 1
# 22 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/sdp_api.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/sdpdefs.h" 1
# 23 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/sdp_api.h" 2
# 72 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/sdp_api.h"
typedef void (tSDP_DISC_CMPL_CB) (UINT16 result);
typedef void (tSDP_DISC_CMPL_CB2) (UINT16 result, void *user_data);

typedef struct {
    BD_ADDR peer_addr;
    UINT16 peer_mtu;
} tSDP_DR_OPEN;

typedef struct {
    UINT8 *p_data;
    UINT16 data_len;
} tSDP_DR_DATA;

typedef union {
    tSDP_DR_OPEN open;
    tSDP_DR_DATA data;
} tSDP_DATA;


typedef void (tSDP_DISC_RES_CB) (UINT16 event, tSDP_DATA *p_data);


typedef struct {
    union {
        UINT8 u8;
        UINT16 u16;
        UINT32 u32;
        UINT8 array[4];
        struct t_sdp_disc_attr *p_sub_attr;
    } v;

} tSDP_DISC_ATVAL;

typedef struct t_sdp_disc_attr {
    struct t_sdp_disc_attr *p_next_attr;
    UINT16 attr_id;
    UINT16 attr_len_type;
    tSDP_DISC_ATVAL attr_value;
} tSDP_DISC_ATTR;

typedef struct t_sdp_disc_rec {
    tSDP_DISC_ATTR *p_first_attr;
    struct t_sdp_disc_rec *p_next_rec;
    UINT32 time_read;
    BD_ADDR remote_bd_addr;
} tSDP_DISC_REC;

typedef struct {
    UINT32 mem_size;
    UINT32 mem_free;
    tSDP_DISC_REC *p_first_rec;
    UINT16 num_uuid_filters;
    tBT_UUID uuid_filters[3];
    UINT16 num_attr_filters;
    UINT16 attr_filters[15];
    UINT8 *p_free_mem;

    UINT8 *raw_data;
    UINT32 raw_size;
    UINT32 raw_used;

} tSDP_DISCOVERY_DB;


typedef struct {
    UINT16 protocol_uuid;
    UINT16 num_params;
    UINT16 params[2];
} tSDP_PROTOCOL_ELEM;

typedef struct {
    UINT16 num_elems;
    tSDP_PROTOCOL_ELEM list_elem[3];
} tSDP_PROTO_LIST_ELEM;




typedef struct t_sdp_di_record {
    UINT16 vendor;
    UINT16 vendor_id_source;
    UINT16 product;
    UINT16 version;
    BOOLEAN primary_record;
    char client_executable_url[400];
    char service_description[400];
    char documentation_url[400];
} tSDP_DI_RECORD;


typedef struct t_sdp_di_get_record {
    UINT16 spec_id;
    tSDP_DI_RECORD rec;
} tSDP_DI_GET_RECORD;
# 187 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/sdp_api.h"
extern BOOLEAN SDP_InitDiscoveryDb (tSDP_DISCOVERY_DB *p_db, UINT32 len,
                                    UINT16 num_uuid,
                                    tBT_UUID *p_uuid_list,
                                    UINT16 num_attr,
                                    UINT16 *p_attr_list);
# 202 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/sdp_api.h"
extern BOOLEAN SDP_CancelServiceSearch (tSDP_DISCOVERY_DB *p_db);
# 213 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/sdp_api.h"
extern BOOLEAN SDP_ServiceSearchRequest (UINT8 *p_bd_addr,
        tSDP_DISCOVERY_DB *p_db,
        tSDP_DISC_CMPL_CB *p_cb);
# 231 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/sdp_api.h"
extern BOOLEAN SDP_ServiceSearchAttributeRequest (UINT8 *p_bd_addr,
        tSDP_DISCOVERY_DB *p_db,
        tSDP_DISC_CMPL_CB *p_cb);
# 249 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/sdp_api.h"
extern BOOLEAN SDP_ServiceSearchAttributeRequest2 (UINT8 *p_bd_addr,
        tSDP_DISCOVERY_DB *p_db,
        tSDP_DISC_CMPL_CB2 *p_cb, void *user_data);
# 267 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/sdp_api.h"
extern tSDP_DISC_REC *SDP_FindAttributeInDb (tSDP_DISCOVERY_DB *p_db,
        UINT16 attr_id,
        tSDP_DISC_REC *p_start_rec);
# 282 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/sdp_api.h"
extern tSDP_DISC_ATTR *SDP_FindAttributeInRec (tSDP_DISC_REC *p_rec,
        UINT16 attr_id);
# 298 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/sdp_api.h"
extern tSDP_DISC_REC *SDP_FindServiceInDb (tSDP_DISCOVERY_DB *p_db,
        UINT16 service_uuid,
        tSDP_DISC_REC *p_start_rec);
# 319 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/sdp_api.h"
extern tSDP_DISC_REC *SDP_FindServiceUUIDInDb (tSDP_DISCOVERY_DB *p_db,
        tBT_UUID *p_uuid,
        tSDP_DISC_REC *p_start_rec);
# 336 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/sdp_api.h"
extern BOOLEAN SDP_FindServiceUUIDInRec_128bit(tSDP_DISC_REC *p_rec, tBT_UUID *p_uuid);
# 350 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/sdp_api.h"
extern tSDP_DISC_REC *SDP_FindServiceInDb_128bit(tSDP_DISCOVERY_DB *p_db,
        tSDP_DISC_REC *p_start_rec);
# 364 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/sdp_api.h"
extern BOOLEAN SDP_FindProtocolListElemInRec (tSDP_DISC_REC *p_rec,
        UINT16 layer_uuid,
        tSDP_PROTOCOL_ELEM *p_elem);
# 380 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/sdp_api.h"
extern BOOLEAN SDP_FindAddProtoListsElemInRec (tSDP_DISC_REC *p_rec,
        UINT16 layer_uuid,
        tSDP_PROTOCOL_ELEM *p_elem);
# 399 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/sdp_api.h"
extern BOOLEAN SDP_FindProfileVersionInRec (tSDP_DISC_REC *p_rec,
        UINT16 profile_uuid,
        UINT16 *p_version);
# 418 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/sdp_api.h"
extern UINT32 SDP_CreateRecord (void);
# 434 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/sdp_api.h"
extern BOOLEAN SDP_DeleteRecord (UINT32 handle);
# 450 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/sdp_api.h"
extern INT32 SDP_ReadRecord(UINT32 handle, UINT8 *p_data, INT32 *p_data_len);
# 466 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/sdp_api.h"
extern BOOLEAN SDP_AddAttribute (UINT32 handle, UINT16 attr_id,
                                 UINT8 attr_type, UINT32 attr_len,
                                 UINT8 *p_val);
# 485 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/sdp_api.h"
extern BOOLEAN SDP_AddSequence (UINT32 handle, UINT16 attr_id,
                                UINT16 num_elem, UINT8 type[],
                                UINT8 len[], UINT8 *p_val[]);
# 502 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/sdp_api.h"
extern BOOLEAN SDP_AddUuidSequence (UINT32 handle, UINT16 attr_id,
                                    UINT16 num_uuids, UINT16 *p_uuids);
# 518 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/sdp_api.h"
extern BOOLEAN SDP_AddProtocolList (UINT32 handle, UINT16 num_elem,
                                    tSDP_PROTOCOL_ELEM *p_elem_list);
# 534 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/sdp_api.h"
extern BOOLEAN SDP_AddAdditionProtoLists (UINT32 handle, UINT16 num_elem,
        tSDP_PROTO_LIST_ELEM *p_proto_list);
# 550 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/sdp_api.h"
extern BOOLEAN SDP_AddProfileDescriptorList (UINT32 handle,
        UINT16 profile_uuid,
        UINT16 version);
# 567 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/sdp_api.h"
extern BOOLEAN SDP_AddLanguageBaseAttrIDList (UINT32 handle,
        UINT16 lang, UINT16 char_enc,
        UINT16 base_id);
# 584 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/sdp_api.h"
extern BOOLEAN SDP_AddServiceClassIdList (UINT32 handle,
        UINT16 num_services,
        UINT16 *p_service_uuids);
# 599 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/sdp_api.h"
extern BOOLEAN SDP_DeleteAttribute (UINT32 handle, UINT16 attr_id);
# 613 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/sdp_api.h"
extern UINT16 SDP_SetLocalDiRecord (tSDP_DI_RECORD *device_info,
                                    UINT32 *p_handle);
# 625 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/sdp_api.h"
extern UINT16 SDP_DiDiscover (BD_ADDR remote_device,
                              tSDP_DISCOVERY_DB *p_db, UINT32 len,
                              tSDP_DISC_CMPL_CB *p_cb);
# 639 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/sdp_api.h"
extern UINT8 SDP_GetNumDiRecords (tSDP_DISCOVERY_DB *p_db);
# 652 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/sdp_api.h"
extern UINT16 SDP_GetDiRecord (UINT8 getRecordIndex,
                               tSDP_DI_GET_RECORD *device_info,
                               tSDP_DISCOVERY_DB *p_db);
# 667 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/sdp_api.h"
extern UINT8 SDP_SetTraceLevel (UINT8 new_level);
# 679 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/sdp_api.h"
UINT32 SDP_ConnOpen (UINT8 *p_bd_addr, tSDP_DISC_RES_CB *p_rcb,
                     tSDP_DISC_CMPL_CB *p_cb);
# 691 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/sdp_api.h"
BOOLEAN SDP_WriteData (UINT32 handle, BT_HDR *p_msg);
# 704 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/sdp_api.h"
BOOLEAN SDP_ConnClose (UINT32 handle);
# 718 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/sdp_api.h"
BOOLEAN SDP_FindServiceUUIDInRec(tSDP_DISC_REC *p_rec, tBT_UUID *p_uuid);
# 34 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h" 2



# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/smp_api.h" 1
# 67 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/smp_api.h"
typedef UINT8 tSMP_EVT;
# 107 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/smp_api.h"
typedef UINT8 tSMP_STATUS;
# 117 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/smp_api.h"
typedef UINT8 tSMP_IO_CAP;






enum {
    SMP_OOB_NONE,
    SMP_OOB_PRESENT,
    SMP_OOB_UNKNOWN
};
typedef UINT8 tSMP_OOB_FLAG;


enum {
    SMP_OOB_INVALID_TYPE,
    SMP_OOB_PEER,
    SMP_OOB_LOCAL,
    SMP_OOB_BOTH
};
typedef UINT8 tSMP_OOB_DATA_TYPE;
# 179 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/smp_api.h"
typedef UINT8 tSMP_AUTH_REQ;




typedef UINT8 tSMP_SEC_LEVEL;
# 195 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/smp_api.h"
typedef UINT8 tSMP_KEYS;
# 210 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/smp_api.h"
typedef UINT8 tSMP_SC_KEY_TYPE;


typedef struct {
    tSMP_IO_CAP io_cap;
    tSMP_OOB_FLAG oob_data;
    tSMP_AUTH_REQ auth_req;
    UINT8 max_key_size;
    tSMP_KEYS init_keys;
    tSMP_KEYS resp_keys;
} tSMP_IO_REQ;

typedef struct {
    tSMP_STATUS reason;
    tSMP_SEC_LEVEL sec_level;
    BOOLEAN is_pair_cancel;
    BOOLEAN smp_over_br;
} tSMP_CMPL;

typedef struct {
    BT_OCTET32 x;
    BT_OCTET32 y;
} tSMP_PUBLIC_KEY;


typedef struct {
    BOOLEAN present;
    BT_OCTET16 randomizer;
    BT_OCTET16 commitment;

    tBLE_BD_ADDR addr_sent_to;
    BT_OCTET32 private_key_used;



    tSMP_PUBLIC_KEY publ_key_used;
} tSMP_LOC_OOB_DATA;


typedef struct {
    BOOLEAN present;
    BT_OCTET16 randomizer;
    BT_OCTET16 commitment;
    tBLE_BD_ADDR addr_rcvd_from;
} tSMP_PEER_OOB_DATA;

typedef struct {
    tSMP_LOC_OOB_DATA loc_oob_data;
    tSMP_PEER_OOB_DATA peer_oob_data;
} tSMP_SC_OOB_DATA;


typedef union {
    UINT32 passkey;
    tSMP_IO_REQ io_req;
    tSMP_CMPL cmplt;
    tSMP_OOB_DATA_TYPE req_oob_type;
    tSMP_LOC_OOB_DATA loc_oob_data;
} tSMP_EVT_DATA;



typedef struct {
    UINT8 status;
    UINT8 param_len;
    UINT16 opcode;
    UINT8 param_buf[16];
} tSMP_ENC;


typedef UINT8 (tSMP_CALLBACK) (tSMP_EVT event, BD_ADDR bd_addr, tSMP_EVT_DATA *p_data);



typedef void (tCMAC_CMPL_CBACK)(UINT8 *p_mac, UINT16 tlen, UINT32 sign_counter);
# 304 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/smp_api.h"
extern void SMP_Init(void);
# 315 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/smp_api.h"
extern void SMP_Free(void);
# 328 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/smp_api.h"
extern UINT8 SMP_SetTraceLevel (UINT8 new_level);
# 339 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/smp_api.h"
extern BOOLEAN SMP_Register (tSMP_CALLBACK *p_cback);
# 350 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/smp_api.h"
extern tSMP_STATUS SMP_Pair (BD_ADDR bd_addr);
# 361 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/smp_api.h"
extern tSMP_STATUS SMP_BR_PairWith (BD_ADDR bd_addr);
# 372 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/smp_api.h"
extern BOOLEAN SMP_PairCancel (BD_ADDR bd_addr);
# 387 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/smp_api.h"
extern void SMP_SecurityGrant(BD_ADDR bd_addr, UINT8 res);
# 402 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/smp_api.h"
extern void SMP_PasskeyReply (BD_ADDR bd_addr, UINT8 res, UINT32 passkey);
# 416 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/smp_api.h"
extern void SMP_ConfirmReply (BD_ADDR bd_addr, UINT8 res);
# 430 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/smp_api.h"
extern void SMP_OobDataReply(BD_ADDR bd_addr, tSMP_STATUS res, UINT8 len,
                             UINT8 *p_data);
# 443 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/smp_api.h"
extern void SMP_SecureConnectionOobDataReply(UINT8 *p_data);
# 461 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/smp_api.h"
extern BOOLEAN SMP_Encrypt (UINT8 *key, UINT8 key_len,
                            UINT8 *plain_text, UINT8 pt_len,
                            tSMP_ENC *p_out);
# 476 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/smp_api.h"
extern void SMP_KeypressNotification (BD_ADDR bd_addr, UINT8 value);
# 490 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/smp_api.h"
extern BOOLEAN SMP_CreateLocalSecureConnectionsOobData (
    tBLE_BD_ADDR *addr_to_send_to);
# 38 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h" 2
# 49 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
enum {
    BTM_SUCCESS = 0,
    BTM_CMD_STARTED,
    BTM_BUSY,
    BTM_NO_RESOURCES,
    BTM_MODE_UNSUPPORTED,
    BTM_ILLEGAL_VALUE,
    BTM_WRONG_MODE,
    BTM_UNKNOWN_ADDR,
    BTM_DEVICE_TIMEOUT,
    BTM_BAD_VALUE_RET,
    BTM_ERR_PROCESSING,
    BTM_NOT_AUTHORIZED,
    BTM_DEV_RESET,
    BTM_CMD_STORED,
    BTM_ILLEGAL_ACTION,
    BTM_DELAY_CHECK,
    BTM_SCO_BAD_LENGTH,
    BTM_SUCCESS_NO_SECURITY,
    BTM_FAILED_ON_SECURITY,
    BTM_REPEATED_ATTEMPTS,
    BTM_MODE4_LEVEL4_NOT_SUPPORTED,
    BTM_PEER_LE_DATA_LEN_UNSUPPORTED,
    BTM_CONTROL_LE_DATA_LEN_UNSUPPORTED,
    BTM_SET_PRIVACY_SUCCESS,
    BTM_SET_PRIVACY_FAIL,
    BTM_SET_STATIC_RAND_ADDR_FAIL,
    BTM_INVALID_STATIC_RAND_ADDR,
};

typedef uint8_t tBTM_STATUS;
# 100 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
typedef UINT8 tBTM_DEVICE_ROLE;


typedef UINT8 tBTM_BD_NAME[64 + 1];


typedef struct {
    UINT8 hci_version;
    UINT16 hci_revision;
    UINT8 lmp_version;
    UINT16 manufacturer;
    UINT16 lmp_subversion;
} tBTM_VERSION_INFO;


typedef struct {
    UINT16 opcode;
    UINT16 param_len;
    UINT8 *p_param_buf;
} tBTM_VSC_CMPL;
# 130 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
enum {
    BTM_DEV_STATUS_UP,
    BTM_DEV_STATUS_DOWN,
    BTM_DEV_STATUS_CMD_TOUT
};

typedef UINT8 tBTM_DEV_STATUS;

typedef struct {
    UINT16 rx_len;
    UINT16 tx_len;
}tBTM_LE_SET_PKT_DATA_LENGTH_PARAMS;

typedef struct {
    UINT16 min_conn_int;
    UINT16 max_conn_int;
    UINT16 conn_int;
    UINT16 slave_latency;
    UINT16 supervision_tout;
}tBTM_LE_UPDATE_CONN_PRAMS;

typedef enum{
    BTM_WHITELIST_REMOVE = 0X00,
    BTM_WHITELIST_ADD = 0X01,
}tBTM_WL_OPERATION;


typedef void (tBTM_DEV_STATUS_CB) (tBTM_DEV_STATUS status);






typedef void (tBTM_VS_EVT_CB) (UINT8 len, UINT8 *p);





typedef void (tBTM_CMPL_CB) (void *p1);




typedef void (tBTM_VSC_CMPL_CB) (tBTM_VSC_CMPL *p1);





typedef UINT8 (tBTM_FILTER_CB) (BD_ADDR bd_addr, DEV_CLASS dc);

typedef void (tBTM_UPDATE_CONN_PARAM_CBACK) (UINT8 status, BD_ADDR bd_addr, tBTM_LE_UPDATE_CONN_PRAMS *update_conn_params);

typedef void (tBTM_SET_PKT_DATA_LENGTH_CBACK) (UINT8 status, tBTM_LE_SET_PKT_DATA_LENGTH_PARAMS *data_length_params);

typedef void (tBTM_SET_RAND_ADDR_CBACK) (UINT8 status);

typedef void (tBTM_ADD_WHITELIST_CBACK) (UINT8 status, tBTM_WL_OPERATION wl_opration);

typedef void (tBTM_SET_LOCAL_PRIVACY_CBACK) (UINT8 status);
# 448 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
enum {
    BTM_EIR_UUID_SERVCLASS_SERVICE_DISCOVERY_SERVER,


    BTM_EIR_UUID_SERVCLASS_SERIAL_PORT,
    BTM_EIR_UUID_SERVCLASS_LAN_ACCESS_USING_PPP,
    BTM_EIR_UUID_SERVCLASS_DIALUP_NETWORKING,
    BTM_EIR_UUID_SERVCLASS_IRMC_SYNC,
    BTM_EIR_UUID_SERVCLASS_OBEX_OBJECT_PUSH,
    BTM_EIR_UUID_SERVCLASS_OBEX_FILE_TRANSFER,
    BTM_EIR_UUID_SERVCLASS_IRMC_SYNC_COMMAND,
    BTM_EIR_UUID_SERVCLASS_HEADSET,
    BTM_EIR_UUID_SERVCLASS_CORDLESS_TELEPHONY,
    BTM_EIR_UUID_SERVCLASS_AUDIO_SOURCE,
    BTM_EIR_UUID_SERVCLASS_AUDIO_SINK,
    BTM_EIR_UUID_SERVCLASS_AV_REM_CTRL_TARGET,

    BTM_EIR_UUID_SERVCLASS_AV_REMOTE_CONTROL,

    BTM_EIR_UUID_SERVCLASS_INTERCOM,
    BTM_EIR_UUID_SERVCLASS_FAX,
    BTM_EIR_UUID_SERVCLASS_HEADSET_AUDIO_GATEWAY,


    BTM_EIR_UUID_SERVCLASS_PANU,
    BTM_EIR_UUID_SERVCLASS_NAP,
    BTM_EIR_UUID_SERVCLASS_GN,
    BTM_EIR_UUID_SERVCLASS_DIRECT_PRINTING,

    BTM_EIR_UUID_SERVCLASS_IMAGING,
    BTM_EIR_UUID_SERVCLASS_IMAGING_RESPONDER,
    BTM_EIR_UUID_SERVCLASS_IMAGING_AUTO_ARCHIVE,
    BTM_EIR_UUID_SERVCLASS_IMAGING_REF_OBJECTS,
    BTM_EIR_UUID_SERVCLASS_HF_HANDSFREE,
    BTM_EIR_UUID_SERVCLASS_AG_HANDSFREE,
    BTM_EIR_UUID_SERVCLASS_DIR_PRT_REF_OBJ_SERVICE,

    BTM_EIR_UUID_SERVCLASS_BASIC_PRINTING,
    BTM_EIR_UUID_SERVCLASS_PRINTING_STATUS,
    BTM_EIR_UUID_SERVCLASS_HUMAN_INTERFACE,
    BTM_EIR_UUID_SERVCLASS_CABLE_REPLACEMENT,
    BTM_EIR_UUID_SERVCLASS_HCRP_PRINT,
    BTM_EIR_UUID_SERVCLASS_HCRP_SCAN,





    BTM_EIR_UUID_SERVCLASS_SAP,
    BTM_EIR_UUID_SERVCLASS_PBAP_PCE,
    BTM_EIR_UUID_SERVCLASS_PBAP_PSE,


    BTM_EIR_UUID_SERVCLASS_PHONE_ACCESS,
    BTM_EIR_UUID_SERVCLASS_HEADSET_HS,
    BTM_EIR_UUID_SERVCLASS_PNP_INFORMATION,
# 513 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
    BTM_EIR_UUID_SERVCLASS_VIDEO_SOURCE,
    BTM_EIR_UUID_SERVCLASS_VIDEO_SINK,


    BTM_EIR_UUID_SERVCLASS_MESSAGE_ACCESS,
    BTM_EIR_UUID_SERVCLASS_MESSAGE_NOTIFICATION,
    BTM_EIR_UUID_SERVCLASS_HDP_SOURCE,
    BTM_EIR_UUID_SERVCLASS_HDP_SINK,
    BTM_EIR_MAX_SERVICES
};






typedef UINT8 tBTM_EIR_SEARCH_RESULT;
# 562 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
typedef UINT8 tBTM_BLE_SEC_ACT;
# 594 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
typedef struct {
    DEV_CLASS dev_class;
    DEV_CLASS dev_class_mask;
} tBTM_COD_COND;


typedef union {
    BD_ADDR bdaddr_cond;
    tBTM_COD_COND cod_cond;
} tBTM_INQ_FILT_COND;


typedef struct {
    UINT8 mode;
    UINT8 duration;
    UINT8 max_resps;
    BOOLEAN report_dup;
    UINT8 filter_cond_type;
    tBTM_INQ_FILT_COND filter_cond;



} tBTM_INQ_PARMS;
# 627 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
typedef UINT8 tBTM_BLE_EVT_TYPE;





typedef struct {
    UINT16 clock_offset;
    BD_ADDR remote_bd_addr;
    DEV_CLASS dev_class;
    UINT8 page_scan_rep_mode;
    UINT8 page_scan_per_mode;
    UINT8 page_scan_mode;
    INT8 rssi;
    UINT32 eir_uuid[(((UINT32)BTM_EIR_MAX_SERVICES / 32) + (((UINT32)BTM_EIR_MAX_SERVICES % 32) ? 1 : 0))];
    BOOLEAN eir_complete_list;

    tBT_DEVICE_TYPE device_type;
    UINT8 inq_result_type;
    UINT8 ble_addr_type;
    tBTM_BLE_EVT_TYPE ble_evt_type;
    UINT8 flag;
    UINT8 adv_data_len;
    UINT8 scan_rsp_len;

} tBTM_INQ_RESULTS;





typedef struct {
    tBTM_INQ_RESULTS results;

    BOOLEAN appl_knows_rem_name;



    UINT16 remote_name_len;
    tBTM_BD_NAME remote_name;
    UINT8 remote_name_state;
    UINT8 remote_name_type;


} tBTM_INQ_INFO;



typedef struct {
    tBTM_STATUS status;
    UINT8 num_resp;
} tBTM_INQUIRY_CMPL;



typedef struct {
    UINT16 status;
    BD_ADDR bd_addr;
    UINT16 length;
    BD_NAME remote_bd_name;
} tBTM_REMOTE_DEV_NAME;

typedef struct {
    UINT8 pcm_intf_rate;

    UINT8 frame_type;
    UINT8 sync_mode;
    UINT8 clock_mode;

} tBTM_SCO_PCM_PARAM;
# 705 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
typedef void (tBTM_INQ_DB_CHANGE_CB) (void *p1, BOOLEAN is_new);




typedef void (tBTM_INQ_RESULTS_CB) (tBTM_INQ_RESULTS *p_inq_results, UINT8 *p_eir);
# 751 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
typedef struct {
    UINT8 hci_status;
    UINT8 role;
    BD_ADDR remote_bd_addr;
} tBTM_ROLE_SWITCH_CMPL;




typedef struct {
    FLOW_SPEC flow;
    UINT16 handle;
    UINT8 status;
} tBTM_QOS_SETUP_CMPL;





typedef struct {
    tBTM_STATUS status;
    UINT8 hci_status;
    INT8 rssi;
    BD_ADDR rem_bda;
} tBTM_RSSI_RESULTS;




typedef struct {
    tBTM_STATUS status;
    UINT8 hci_status;
    INT8 tx_power;
    BD_ADDR rem_bda;
} tBTM_TX_POWER_RESULTS;




typedef struct {
    tBTM_STATUS status;
    UINT8 hci_status;
    UINT8 link_quality;
    BD_ADDR rem_bda;
} tBTM_LINK_QUALITY_RESULTS;




typedef struct {
    tBTM_STATUS status;
    UINT8 hci_status;
    INT8 tx_power;
} tBTM_INQ_TXPWR_RESULTS;

enum {
    BTM_BL_CONN_EVT,
    BTM_BL_DISCN_EVT,
    BTM_BL_UPDATE_EVT,
    BTM_BL_ROLE_CHG_EVT,
    BTM_BL_COLLISION_EVT
};
typedef UINT8 tBTM_BL_EVENT;
typedef UINT16 tBTM_BL_EVENT_MASK;
# 826 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
typedef struct {
    tBTM_BL_EVENT event;
    BD_ADDR_PTR p_bda;
    DEV_CLASS_PTR p_dc;
    BD_NAME_PTR p_bdn;
    UINT8 *p_features;

    UINT16 handle;
    tBT_TRANSPORT transport;

} tBTM_BL_CONN_DATA;


typedef struct {
    tBTM_BL_EVENT event;
    BD_ADDR_PTR p_bda;

    UINT16 handle;
    tBT_TRANSPORT transport;

} tBTM_BL_DISCN_DATA;
# 857 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
typedef struct {
    tBTM_BL_EVENT event;
    UINT8 busy_level;

    UINT8 busy_level_flags;
} tBTM_BL_UPDATE_DATA;


typedef struct {
    tBTM_BL_EVENT event;
    BD_ADDR_PTR p_bda;
    UINT8 new_role;
    UINT8 hci_status;
} tBTM_BL_ROLE_CHG_DATA;

typedef union {
    tBTM_BL_EVENT event;
    tBTM_BL_CONN_DATA conn;
    tBTM_BL_DISCN_DATA discn;
    tBTM_BL_UPDATE_DATA update;
    tBTM_BL_ROLE_CHG_DATA role_chg;
} tBTM_BL_EVENT_DATA;




typedef void (tBTM_BL_CHANGE_CB) (tBTM_BL_EVENT_DATA *p_data);
# 893 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
typedef void (tBTM_ACL_DB_CHANGE_CB) (BD_ADDR p_bda, DEV_CLASS p_dc,
                                      BD_NAME p_bdn, UINT8 *features,
                                      BOOLEAN is_new, UINT16 handle,
                                      tBT_TRANSPORT transport);
# 952 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
typedef UINT8 tBTM_SCO_TYPE;







typedef UINT8 tBTM_SCO_ROUTE_TYPE;
# 971 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
typedef UINT16 tBTM_SCO_CODEC_TYPE;
# 982 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
typedef UINT8 tBTM_SCO_AIR_MODE_TYPE;
# 1000 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
enum {
    BTM_SCO_DATA_CORRECT,
    BTM_SCO_DATA_PAR_ERR,
    BTM_SCO_DATA_NONE,
    BTM_SCO_DATA_PAR_LOST
};
typedef UINT8 tBTM_SCO_DATA_FLAG;




typedef void (tBTM_SCO_CB) (UINT16 sco_inx);
typedef void (tBTM_SCO_DATA_CB) (UINT16 sco_inx, BT_HDR *p_data, tBTM_SCO_DATA_FLAG status);
# 1034 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
typedef UINT8 tBTM_ESCO_EVT;


typedef struct {
    UINT32 tx_bw;
    UINT32 rx_bw;
    UINT16 max_latency;
    UINT16 voice_contfmt;
    UINT16 packet_types;
    UINT8 retrans_effort;
} tBTM_ESCO_PARAMS;

typedef struct {
    UINT16 max_latency;
    UINT16 packet_types;
    UINT8 retrans_effort;
} tBTM_CHG_ESCO_PARAMS;


typedef struct {
    UINT16 rx_pkt_len;
    UINT16 tx_pkt_len;
    BD_ADDR bd_addr;
    UINT8 link_type;
    UINT8 tx_interval;
    UINT8 retrans_window;
    UINT8 air_mode;
} tBTM_ESCO_DATA;

typedef struct {
    UINT16 sco_inx;
    UINT16 rx_pkt_len;
    UINT16 tx_pkt_len;
    BD_ADDR bd_addr;
    UINT8 hci_status;
    UINT8 tx_interval;
    UINT8 retrans_window;
} tBTM_CHG_ESCO_EVT_DATA;

typedef struct {
    UINT16 sco_inx;
    BD_ADDR bd_addr;
    DEV_CLASS dev_class;
    tBTM_SCO_TYPE link_type;
} tBTM_ESCO_CONN_REQ_EVT_DATA;

typedef union {
    tBTM_CHG_ESCO_EVT_DATA chg_evt;
    tBTM_ESCO_CONN_REQ_EVT_DATA conn_evt;
} tBTM_ESCO_EVT_DATA;




typedef void (tBTM_ESCO_CBACK) (tBTM_ESCO_EVT event, tBTM_ESCO_EVT_DATA *p_data);
# 1159 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
typedef UINT8 tBTM_LINK_KEY_TYPE;
# 1334 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
typedef UINT8 (tBTM_AUTHORIZE_CALLBACK) (BD_ADDR bd_addr, DEV_CLASS dev_class,
        tBTM_BD_NAME bd_name, UINT8 *service_name,
        UINT8 service_id, BOOLEAN is_originator);







typedef UINT8 (tBTM_PIN_CALLBACK) (BD_ADDR bd_addr, DEV_CLASS dev_class,
                                   tBTM_BD_NAME bd_name, BOOLEAN min_16_digit);






typedef UINT8 (tBTM_LINK_KEY_CALLBACK) (BD_ADDR bd_addr, DEV_CLASS dev_class,
                                        tBTM_BD_NAME bd_name, UINT8 *key,
                                        UINT8 key_type);






typedef void (tBTM_RMT_NAME_CALLBACK) (BD_ADDR bd_addr, DEV_CLASS dc,
                                       tBTM_BD_NAME bd_name);
# 1371 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
typedef UINT8 (tBTM_AUTH_COMPLETE_CALLBACK) (BD_ADDR bd_addr, DEV_CLASS dev_class,
        tBTM_BD_NAME bd_name, int result);

enum {
    BTM_SP_IO_REQ_EVT,
    BTM_SP_IO_RSP_EVT,
    BTM_SP_CFM_REQ_EVT,
    BTM_SP_KEY_NOTIF_EVT,
    BTM_SP_KEY_REQ_EVT,
    BTM_SP_KEYPRESS_EVT,
    BTM_SP_LOC_OOB_EVT,
    BTM_SP_RMT_OOB_EVT,
    BTM_SP_COMPLT_EVT,
    BTM_SP_UPGRADE_EVT
};
typedef UINT8 tBTM_SP_EVT;
# 1400 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
typedef UINT8 tBTM_IO_CAP;
# 1432 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
typedef UINT8 tBTM_AUTH_REQ;

enum {
    BTM_OOB_NONE,
    BTM_OOB_PRESENT

    , BTM_OOB_UNKNOWN

};
typedef UINT8 tBTM_OOB_DATA;


typedef struct {
    BD_ADDR bd_addr;
    tBTM_IO_CAP io_cap;
    tBTM_OOB_DATA oob_data;
    tBTM_AUTH_REQ auth_req;
    BOOLEAN is_orig;
} tBTM_SP_IO_REQ;


typedef struct {
    BD_ADDR bd_addr;
    tBTM_IO_CAP io_cap;
    tBTM_OOB_DATA oob_data;
    tBTM_AUTH_REQ auth_req;
} tBTM_SP_IO_RSP;


typedef struct {
    BD_ADDR bd_addr;
    DEV_CLASS dev_class;
    tBTM_BD_NAME bd_name;
    UINT32 num_val;
    BOOLEAN just_works;
    tBTM_AUTH_REQ loc_auth_req;
    tBTM_AUTH_REQ rmt_auth_req;
    tBTM_IO_CAP loc_io_caps;
    tBTM_IO_CAP rmt_io_caps;
} tBTM_SP_CFM_REQ;


typedef struct {
    BD_ADDR bd_addr;
    DEV_CLASS dev_class;
    tBTM_BD_NAME bd_name;
} tBTM_SP_KEY_REQ;


typedef struct {
    BD_ADDR bd_addr;
    DEV_CLASS dev_class;
    tBTM_BD_NAME bd_name;
    UINT32 passkey;
} tBTM_SP_KEY_NOTIF;

enum {
    BTM_SP_KEY_STARTED,
    BTM_SP_KEY_ENTERED,
    BTM_SP_KEY_ERASED,
    BTM_SP_KEY_CLEARED,
    BTM_SP_KEY_COMPLT,
    BTM_SP_KEY_OUT_OF_RANGE
};
typedef UINT8 tBTM_SP_KEY_TYPE;


typedef struct {
    BD_ADDR bd_addr;
    tBTM_SP_KEY_TYPE notif_type;
} tBTM_SP_KEYPRESS;


typedef struct {
    tBTM_STATUS status;
    BT_OCTET16 c;
    BT_OCTET16 r;
} tBTM_SP_LOC_OOB;


typedef struct {
    BD_ADDR bd_addr;
    DEV_CLASS dev_class;
    tBTM_BD_NAME bd_name;
} tBTM_SP_RMT_OOB;



typedef struct {
    BD_ADDR bd_addr;
    DEV_CLASS dev_class;
    tBTM_BD_NAME bd_name;
    tBTM_STATUS status;
} tBTM_SP_COMPLT;


typedef struct {
    BD_ADDR bd_addr;
    BOOLEAN upgrade;
} tBTM_SP_UPGRADE;

typedef union {
    tBTM_SP_IO_REQ io_req;
    tBTM_SP_IO_RSP io_rsp;
    tBTM_SP_CFM_REQ cfm_req;
    tBTM_SP_KEY_NOTIF key_notif;
    tBTM_SP_KEY_REQ key_req;
    tBTM_SP_KEYPRESS key_press;
    tBTM_SP_LOC_OOB loc_oob;
    tBTM_SP_RMT_OOB rmt_oob;
    tBTM_SP_COMPLT complt;
    tBTM_SP_UPGRADE upgrade;
} tBTM_SP_EVT_DATA;




typedef UINT8 (tBTM_SP_CALLBACK) (tBTM_SP_EVT event, tBTM_SP_EVT_DATA *p_data);


typedef void (tBTM_MKEY_CALLBACK) (BD_ADDR bd_addr, UINT8 status, UINT8 key_flag) ;







typedef void (tBTM_SEC_CBACK) (BD_ADDR bd_addr, tBT_TRANSPORT trasnport,
                               void *p_ref_data, tBTM_STATUS result);





typedef void (tBTM_BOND_CANCEL_CMPL_CALLBACK) (tBTM_STATUS result);
# 1589 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
typedef UINT8 tBTM_LE_EVT;
# 1602 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
typedef UINT8 tBTM_LE_KEY_TYPE;







typedef UINT8 tBTM_LE_AUTH_REQ;
# 1626 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
typedef UINT8 tBTM_LE_SEC;


typedef struct {
    tBTM_IO_CAP io_cap;
    UINT8 oob_data;
    tBTM_LE_AUTH_REQ auth_req;
    UINT8 max_key_size;
    tBTM_LE_KEY_TYPE init_keys;
    tBTM_LE_KEY_TYPE resp_keys;
} tBTM_LE_IO_REQ;



typedef struct {
    UINT8 reason;
    UINT8 sec_level;
    BOOLEAN is_pair_cancel;
    BOOLEAN smp_over_br;
} tBTM_LE_COMPLT;



typedef struct {
    BT_OCTET16 ltk;
    BT_OCTET8 rand;
    UINT16 ediv;
    UINT8 sec_level;
    UINT8 key_size;
} tBTM_LE_PENC_KEYS;


typedef struct {
    UINT32 counter;
    BT_OCTET16 csrk;
    UINT8 sec_level;
} tBTM_LE_PCSRK_KEYS;


typedef struct {
    BT_OCTET16 ltk;
    UINT16 div;
    UINT8 key_size;
    UINT8 sec_level;
} tBTM_LE_LENC_KEYS;


typedef struct {
    UINT32 counter;
    UINT16 div;
    UINT8 sec_level;
    BT_OCTET16 csrk;
} tBTM_LE_LCSRK_KEYS;

typedef struct {
    BT_OCTET16 irk;
    tBLE_ADDR_TYPE addr_type;
    BD_ADDR static_addr;
} tBTM_LE_PID_KEYS;

typedef union {
    tBTM_LE_PENC_KEYS penc_key;
    tBTM_LE_PCSRK_KEYS pcsrk_key;
    tBTM_LE_PID_KEYS pid_key;
    tBTM_LE_LENC_KEYS lenc_key;
    tBTM_LE_LCSRK_KEYS lcsrk_key;
} tBTM_LE_KEY_VALUE;

typedef struct {
    tBTM_LE_KEY_TYPE key_type;
    tBTM_LE_KEY_VALUE *p_key_value;
} tBTM_LE_KEY;

typedef union {
    tBTM_LE_IO_REQ io_req;
    UINT32 key_notif;




    tBTM_LE_COMPLT complt;
    tSMP_OOB_DATA_TYPE req_oob_type;

    tBTM_LE_KEY key;
} tBTM_LE_EVT_DATA;




typedef UINT8 (tBTM_LE_CALLBACK) (tBTM_LE_EVT event, BD_ADDR bda, tBTM_LE_EVT_DATA *p_data);





typedef struct {
    BT_OCTET16 ir;
    BT_OCTET16 irk;
    BT_OCTET16 dhk;

} tBTM_BLE_LOCAL_ID_KEYS;

typedef union {
    tBTM_BLE_LOCAL_ID_KEYS id_keys;
    BT_OCTET16 er;
} tBTM_BLE_LOCAL_KEYS;




typedef void (tBTM_LE_KEY_CALLBACK) (UINT8 key_type, tBTM_BLE_LOCAL_KEYS *p_key);






typedef struct {
    tBTM_AUTHORIZE_CALLBACK *p_authorize_callback;
    tBTM_PIN_CALLBACK *p_pin_callback;
    tBTM_LINK_KEY_CALLBACK *p_link_key_callback;
    tBTM_AUTH_COMPLETE_CALLBACK *p_auth_complete_callback;
    tBTM_BOND_CANCEL_CMPL_CALLBACK *p_bond_cancel_cmpl_callback;
    tBTM_SP_CALLBACK *p_sp_callback;


    tBTM_LE_CALLBACK *p_le_callback;

    tBTM_LE_KEY_CALLBACK *p_le_key_callback;

} tBTM_APPL_INFO;




typedef void (tBTM_LSTO_CBACK) (BD_ADDR remote_bda, UINT16 timeout);
# 1770 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
enum {
    BTM_PM_STS_ACTIVE = 0x00,
    BTM_PM_STS_HOLD = 0x01,
    BTM_PM_STS_SNIFF = 0x02,
    BTM_PM_STS_PARK = 0x03,
    BTM_PM_STS_SSR,
    BTM_PM_STS_PENDING,
    BTM_PM_STS_ERROR
};
typedef UINT8 tBTM_PM_STATUS;


enum {
    BTM_PM_MD_ACTIVE = BTM_PM_STS_ACTIVE,
    BTM_PM_MD_HOLD = BTM_PM_STS_HOLD,
    BTM_PM_MD_SNIFF = BTM_PM_STS_SNIFF,
    BTM_PM_MD_PARK = BTM_PM_STS_PARK,
    BTM_PM_MD_FORCE = 0x10
};
typedef UINT8 tBTM_PM_MODE;
# 1801 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
typedef struct {
    UINT16 max;
    UINT16 min;
    UINT16 attempt;
    UINT16 timeout;
    tBTM_PM_MODE mode;
} tBTM_PM_PWR_MD;




typedef void (tBTM_PM_STATUS_CBACK) (BD_ADDR p_bda, tBTM_PM_STATUS status,
                                     UINT16 value, UINT8 hci_status);







typedef struct {
    UINT8 event;
    UINT8 status;
    UINT16 num_keys;

} tBTM_DELETE_STORED_LINK_KEY_COMPLETE;


enum {
    BTM_MIP_MODE_CHG_EVT,
    BTM_MIP_DISCONNECT_EVT,
    BTM_MIP_PKTS_COMPL_EVT,
    BTM_MIP_RXDATA_EVT
};
typedef UINT8 tBTM_MIP_EVT;

typedef struct {
    tBTM_MIP_EVT event;
    BD_ADDR bd_addr;
    UINT16 mip_id;
} tBTM_MIP_MODE_CHANGE;

typedef struct {
    tBTM_MIP_EVT event;
    UINT16 mip_id;
    UINT8 disc_reason;
} tBTM_MIP_CONN_TIMEOUT;



typedef struct {
    tBTM_MIP_EVT event;
    UINT16 mip_id;
    UINT8 rx_len;
    UINT8 rx_data[17];
} tBTM_MIP_RXDATA;

typedef struct {
    tBTM_MIP_EVT event;
    BD_ADDR bd_addr;
    UINT8 data[11];
} tBTM_MIP_EIR_HANDSHAKE;

typedef struct {
    tBTM_MIP_EVT event;
    UINT16 num_sent;
} tBTM_MIP_PKTS_COMPL;

typedef union {
    tBTM_MIP_EVT event;
    tBTM_MIP_MODE_CHANGE mod_chg;
    tBTM_MIP_CONN_TIMEOUT conn_tmo;
    tBTM_MIP_EIR_HANDSHAKE eir;
    tBTM_MIP_PKTS_COMPL completed;
    tBTM_MIP_RXDATA rxdata;
} tBTM_MIP_EVENT_DATA;


typedef void (tBTM_MIP_EVENTS_CB) (tBTM_MIP_EVT event, tBTM_MIP_EVENT_DATA data);


typedef BOOLEAN (tBTM_MIP_QUERY_CB) (BD_ADDR dev_addr, UINT8 *p_mode, LINK_KEY link_key);





typedef UINT8 tBTM_CONTRL_STATE;
# 1914 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
void BTM_DeviceReset (tBTM_CMPL_CB *p_cb);
# 1927 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
BOOLEAN BTM_IsDeviceUp (void);
# 1940 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_SetLocalDeviceName (char *p_name);
# 1952 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_SetDeviceClass (DEV_CLASS dev_class);
# 1969 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_ReadLocalDeviceName (char **p_name);
# 1982 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_ReadLocalDeviceNameFromController (tBTM_CMPL_CB *p_rln_cmpl_cback);
# 1994 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
UINT8 *BTM_ReadDeviceClass (void);
# 2007 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
UINT8 *BTM_ReadLocalFeatures (void);
# 2021 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_DEV_STATUS_CB *BTM_RegisterForDeviceStatusNotif (tBTM_DEV_STATUS_CB *p_cb);
# 2040 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_RegisterForVSEvents (tBTM_VS_EVT_CB *p_cb, BOOLEAN is_register);
# 2058 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_VendorSpecificCommand(UINT16 opcode,
                                      UINT8 param_len,
                                      UINT8 *p_param_buf,
                                      tBTM_VSC_CMPL_CB *p_cb);
# 2076 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
UINT8 BTM_AllocateSCN(void);
# 2089 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
BOOLEAN BTM_TryAllocateSCN(UINT8 scn);
# 2103 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
BOOLEAN BTM_FreeSCN(UINT8 scn);
# 2118 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
UINT8 BTM_SetTraceLevel (UINT8 new_level);
# 2133 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_WritePageTimeout(UINT16 timeout);
# 2149 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_WriteVoiceSettings(UINT16 settings);
# 2167 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_EnableTestMode(void);
# 2191 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_SetDiscoverability (UINT16 inq_mode, UINT16 window,
                                     UINT16 interval);
# 2210 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
UINT16 BTM_ReadDiscoverability (UINT16 *p_window,
                                      UINT16 *p_interval);
# 2242 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_SetPeriodicInquiryMode (tBTM_INQ_PARMS *p_inqparms,
        UINT16 max_delay, UINT16 min_delay,
        tBTM_INQ_RESULTS_CB *p_results_cb);
# 2277 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_StartInquiry (tBTM_INQ_PARMS *p_inqparms,
                               tBTM_INQ_RESULTS_CB *p_results_cb,
                               tBTM_CMPL_CB *p_cmpl_cb);
# 2295 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
UINT16 BTM_IsInquiryActive (void);
# 2310 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_CancelInquiry(void);
# 2326 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_CancelPeriodicInquiry(void);
# 2343 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_SetConnectability (UINT16 page_mode, UINT16 window,
                                   UINT16 interval);
# 2360 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
UINT16 BTM_ReadConnectability (UINT16 *p_window, UINT16 *p_interval);
# 2380 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_SetInquiryMode (UINT8 mode);
# 2397 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_SetInquiryScanType (UINT16 scan_type);
# 2415 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_SetPageScanType (UINT16 scan_type);
# 2440 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_ReadRemoteDeviceName (BD_ADDR remote_bda,
                                       tBTM_CMPL_CB *p_cb,
                                       tBT_TRANSPORT transport);
# 2462 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_CancelRemoteDeviceName (void);
# 2474 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_ReadRemoteVersion (BD_ADDR addr,
                                   UINT8 *lmp_version,
                                   UINT16 *manufacturer,
                                   UINT16 *lmp_sub_version);
# 2493 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
UINT8 *BTM_ReadRemoteFeatures (BD_ADDR addr);
# 2513 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
UINT8 *BTM_ReadRemoteExtendedFeatures (BD_ADDR addr, UINT8 page_number);
# 2526 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
UINT8 BTM_ReadNumberRemoteFeaturesPages (BD_ADDR addr);
# 2542 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
UINT8 *BTM_ReadAllRemoteFeatures (BD_ADDR addr);
# 2556 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_INQ_INFO *BTM_InqDbRead (BD_ADDR p_bda);
# 2572 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_INQ_INFO *BTM_InqDbFirst (void);
# 2587 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_INQ_INFO *BTM_InqDbNext (tBTM_INQ_INFO *p_cur);
# 2605 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_ClearInqDb (BD_ADDR p_bda);
# 2619 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_ReadInquiryRspTxPower (tBTM_CMPL_CB *p_cb);
# 2638 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_StartDiscovery (tBTM_CMPL_CB *p_cmpl_cb,
                                BD_ADDR_PTR p_rem_addr);
# 2654 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tSDP_DISC_REC *BTM_FindAttribute (UINT16 attr_id,
                                  tSDP_DISC_REC *p_start_rec);
# 2670 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tSDP_DISC_REC *BTM_FindService (UINT16 service_uuid,
                                tSDP_DISC_REC *p_start_rec);
# 2686 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
void BTM_SetDiscoveryParams (UINT16 num_uuid, tBT_UUID *p_uuid_list,
                             UINT16 num_attr, UINT16 *p_attr_list);
# 2703 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_SetLinkPolicy (BD_ADDR remote_bda,
                               UINT16 *settings);
# 2717 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
void BTM_SetDefaultLinkPolicy (UINT16 settings);
# 2731 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
void BTM_SetDefaultLinkSuperTout (UINT16 timeout);
# 2744 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_SetLinkSuperTout (BD_ADDR remote_bda,
                                  UINT16 timeout);
# 2756 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_GetLinkSuperTout (BD_ADDR remote_bda,
                                  UINT16 *p_timeout);
# 2770 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
BOOLEAN BTM_IsAclConnectionUp (BD_ADDR remote_bda, tBT_TRANSPORT transport);
# 2785 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_GetRole (BD_ADDR remote_bd_addr, UINT8 *p_role);
# 2806 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_SwitchRole (BD_ADDR remote_bd_addr,
                            UINT8 new_role,
                            tBTM_CMPL_CB *p_cb);
# 2825 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_ReadRSSI (BD_ADDR remote_bda, tBT_TRANSPORT transport, tBTM_CMPL_CB *p_cb);
# 2844 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_ReadTxPower (BD_ADDR remote_bda,
                             tBT_TRANSPORT transport, tBTM_CMPL_CB *p_cb);

tBTM_STATUS BTM_BleReadAdvTxPower(tBTM_CMPL_CB *p_cb);

void BTM_BleGetWhiteListSize(uint16_t *length);
# 2867 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_ReadLinkQuality (BD_ADDR remote_bda, tBTM_CMPL_CB *p_cb);
# 2880 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_RegBusyLevelNotif (tBTM_BL_CHANGE_CB *p_cb, UINT8 *p_level,
                                   tBTM_BL_EVENT_MASK evt_mask);
# 2894 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_AclRegisterForChanges (tBTM_ACL_DB_CHANGE_CB *p_cb);
# 2907 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
UINT16 BTM_GetNumAclLinks (void);
# 2919 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_SetQoS(BD_ADDR bd, FLOW_SPEC *p_flow,
                       tBTM_CMPL_CB *p_cb);
# 2944 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_CreateSco (BD_ADDR remote_bda, BOOLEAN is_orig,
                           UINT16 pkt_types, UINT16 *p_sco_inx,
                           tBTM_SCO_CB *p_conn_cb,
                           tBTM_SCO_CB *p_disc_cb);
# 2960 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_RemoveSco (UINT16 sco_inx);
# 2984 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_SetScoPacketTypes (UINT16 sco_inx, UINT16 pkt_types);
# 3006 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
UINT16 BTM_ReadScoPacketTypes (UINT16 sco_inx);
# 3020 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
UINT16 BTM_ReadDeviceScoPacketTypes (void);
# 3034 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
UINT16 BTM_ReadScoHandle (UINT16 sco_inx);
# 3048 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
UINT8 *BTM_ReadScoBdAddr (UINT16 sco_inx);
# 3063 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
UINT16 BTM_ReadScoDiscReason (void);
# 3080 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_SetEScoMode (tBTM_SCO_TYPE sco_mode,
                             tBTM_ESCO_PARAMS *p_parms);
# 3095 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_SetWBSCodec (tBTM_SCO_CODEC_TYPE codec_type);
# 3111 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_RegForEScoEvts (UINT16 sco_inx,
                                tBTM_ESCO_CBACK *p_esco_cback);
# 3136 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_ReadEScoLinkParms (UINT16 sco_inx,
                                   tBTM_ESCO_DATA *p_parms);
# 3159 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_ChangeEScoLinkParms (UINT16 sco_inx,
                                     tBTM_CHG_ESCO_PARAMS *p_parms);
# 3181 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
void BTM_EScoConnRsp (UINT16 sco_inx, UINT8 hci_status,
                      tBTM_ESCO_PARAMS *p_parms);
# 3194 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
UINT8 BTM_GetNumScoLinks (void);
# 3211 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
BOOLEAN BTM_SecRegister (tBTM_APPL_INFO *p_cb_info);
# 3224 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
BOOLEAN BTM_SecRegisterLinkKeyNotificationCallback(
    tBTM_LINK_KEY_CALLBACK *p_callback);
# 3238 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
BOOLEAN BTM_SecAddRmtNameNotifyCallback (tBTM_RMT_NAME_CALLBACK *p_callback);
# 3252 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
BOOLEAN BTM_SecDeleteRmtNameNotifyCallback (tBTM_RMT_NAME_CALLBACK *p_callback);
# 3264 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
BOOLEAN BTM_GetSecurityFlags (BD_ADDR bd_addr, UINT8 *p_sec_flags);
# 3280 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
BOOLEAN BTM_GetSecurityFlagsByTransport (BD_ADDR bd_addr,
        UINT8 *p_sec_flags, tBT_TRANSPORT transport);
# 3294 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
UINT32 *BTM_ReadTrustedMask (BD_ADDR bd_addr);
# 3306 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
void BTM_SetPinType (UINT8 pin_type, PIN_CODE pin_code, UINT8 pin_code_len);
# 3324 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
void BTM_SetPairableMode (BOOLEAN allow_pairing, BOOLEAN connect_only_paired);
# 3342 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
void BTM_SetSecureConnectionsOnly (BOOLEAN secure_connections_only_mode);
# 3357 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
BOOLEAN BTM_SetSecurityLevel (BOOLEAN is_originator, const char *p_name,
                              UINT8 service_id, UINT16 sec_level,
                              UINT16 psm, UINT32 mx_proto_id,
                              UINT32 mx_chan_id);
# 3373 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
void BTM_SetOutService(BD_ADDR bd_addr, UINT8 service_id, UINT32 mx_chan_id);
# 3389 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
UINT8 BTM_SecClrService (UINT8 service_id);
# 3404 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
BOOLEAN BTM_SecAddDevice (BD_ADDR bd_addr, DEV_CLASS dev_class,
                          BD_NAME bd_name, UINT8 *features,
                          UINT32 trusted_mask[], LINK_KEY link_key,
                          UINT8 key_type, tBTM_IO_CAP io_cap, UINT8 pin_length);
# 3420 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
BOOLEAN BTM_SecDeleteDevice (BD_ADDR bd_addr);
# 3436 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_SecGetDeviceLinkKey (BD_ADDR bd_addr,
                                     LINK_KEY link_key);
# 3455 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_LINK_KEY_TYPE BTM_SecGetDeviceLinkKeyType (BD_ADDR bd_addr);
# 3475 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
void BTM_PINCodeReply (BD_ADDR bd_addr, UINT8 res, UINT8 pin_len,
                       UINT8 *p_pin, UINT32 trusted_mask[]);
# 3494 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_SecBond (BD_ADDR bd_addr,
                         UINT8 pin_len, UINT8 *p_pin,
                         UINT32 trusted_mask[]);
# 3514 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_SecBondByTransport (BD_ADDR bd_addr,
                                    tBT_TRANSPORT transport,
                                    UINT8 pin_len, UINT8 *p_pin,
                                    UINT32 trusted_mask[]);
# 3530 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_SecBondCancel (BD_ADDR bd_addr);
# 3558 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_SetEncryption (BD_ADDR bd_addr, tBT_TRANSPORT transport,
                               tBTM_SEC_CBACK *p_callback, void *p_ref_data);
# 3573 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
void BTM_ConfirmReqReply(tBTM_STATUS res, BD_ADDR bd_addr);
# 3588 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
void BTM_PasskeyReqReply(tBTM_STATUS res, BD_ADDR bd_addr, UINT32 passkey);
# 3605 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
void BTM_SendKeypressNotif(BD_ADDR bd_addr, tBTM_SP_KEY_TYPE type);
# 3623 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
void BTM_IoCapRsp(BD_ADDR bd_addr, tBTM_IO_CAP io_cap,
                  tBTM_OOB_DATA oob, tBTM_AUTH_REQ auth_req);
# 3635 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_ReadLocalOobData(void);
# 3650 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
void BTM_RemoteOobDataReply(tBTM_STATUS res, BD_ADDR bd_addr,
                            BT_OCTET16 c, BT_OCTET16 r);
# 3672 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
UINT16 BTM_BuildOobData(UINT8 *p_data, UINT16 max_len, BT_OCTET16 c,
                        BT_OCTET16 r, UINT8 name_len);
# 3690 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
BOOLEAN BTM_BothEndsSupportSecureConnections(BD_ADDR bd_addr);
# 3706 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
BOOLEAN BTM_PeerSupportsSecureConnections(BD_ADDR bd_addr);
# 3724 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
UINT8 *BTM_ReadOobData(UINT8 *p_data, UINT8 eir_tag, UINT8 *p_len);
# 3737 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
char *BTM_SecReadDevName (BD_ADDR bd_addr);
# 3747 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
extern void BTM_SecClearSecurityFlags (BD_ADDR bd_addr);
# 3766 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_PmRegister (UINT8 mask, UINT8 *p_pm_id,
                            tBTM_PM_STATUS_CBACK *p_cb);
# 3782 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_SetPowerMode (UINT8 pm_id, BD_ADDR remote_bda,
                              tBTM_PM_PWR_MD *p_mode);
# 3807 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_ReadPowerMode (BD_ADDR remote_bda,
                               tBTM_PM_MODE *p_mode);
# 3829 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_SetSsrParams (BD_ADDR remote_bda, UINT16 max_lat,
                              UINT16 min_rmt_to, UINT16 min_loc_to);
# 3843 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
UINT16 BTM_GetHCIConnHandle (BD_ADDR remote_bda, tBT_TRANSPORT transport);
# 3859 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_DeleteStoredLinkKey(BD_ADDR bd_addr, tBTM_CMPL_CB *p_cb);
# 3875 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_WriteEIR( BT_HDR *p_buff );
# 3891 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
UINT8 *BTM_CheckEirData( UINT8 *p_eir, UINT8 type, UINT8 *p_length );
# 3907 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
BOOLEAN BTM_HasEirService( UINT32 *p_eir_uuid, UINT16 uuid16 );
# 3924 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_EIR_SEARCH_RESULT BTM_HasInquiryEirService( tBTM_INQ_RESULTS *p_results,
        UINT16 uuid16 );
# 3940 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
void BTM_AddEirService( UINT32 *p_eir_uuid, UINT16 uuid16 );
# 3955 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
void BTM_RemoveEirService( UINT32 *p_eir_uuid, UINT16 uuid16 );
# 3973 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
UINT8 BTM_GetEirSupportedServices( UINT32 *p_eir_uuid, UINT8 **p,
                                   UINT8 max_num_uuid16, UINT8 *p_num_uuid16);
# 3998 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
UINT8 BTM_GetEirUuidList( UINT8 *p_eir, UINT8 uuid_size, UINT8 *p_num_uuid,
                          UINT8 *p_uuid_list, UINT8 max_num_uuid);
# 4029 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_ConfigScoPath (tBTM_SCO_ROUTE_TYPE path,
                               tBTM_SCO_DATA_CB *p_sco_data_cb,
                               tBTM_SCO_PCM_PARAM *p_pcm_param,
                               BOOLEAN err_data_rpt);
# 4056 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_STATUS BTM_WriteScoData (UINT16 sco_inx, BT_HDR *p_buf);
# 4068 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
void BTM_SetARCMode (UINT8 iface, UINT8 arc_mode, tBTM_VSC_CMPL_CB *p_arc_cb);
# 4081 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
void BTM_PCM2Setup_Write (BOOLEAN clk_master, tBTM_VSC_CMPL_CB *p_arc_cb);
# 4094 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
tBTM_CONTRL_STATE BTM_PM_ReadControllerState(void);
# 32 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avdt/include/avdt_int.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/fixed_queue.h" 1
# 23 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/fixed_queue.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/list.h" 1




# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 6 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/list.h" 2
struct list_node_t;
typedef struct list_node_t list_node_t;

struct list_t;
typedef struct list_t list_t;

typedef void (*list_free_cb)(void *data);
typedef 
# 13 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/list.h" 3 4
       _Bool 
# 13 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/list.h"
            (*list_iter_cb)(void *data, void *context);







list_t *list_new(list_free_cb callback);


list_node_t *list_free_node(list_t *list, list_node_t *node);


void list_free(list_t *list);




# 31 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/list.h" 3 4
_Bool 
# 31 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/list.h"
    list_is_empty(const list_t *list);




# 35 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/list.h" 3 4
_Bool 
# 35 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/list.h"
    list_contains(const list_t *list, const void *data);


size_t list_length(const list_t *list);



void *list_front(const list_t *list);



void *list_back(const list_t *list);
list_node_t *list_back_node(const list_t *list);







# 54 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/list.h" 3 4
_Bool 
# 54 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/list.h"
    list_insert_after(list_t *list, list_node_t *prev_node, void *data);






# 60 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/list.h" 3 4
_Bool 
# 60 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/list.h"
    list_prepend(list_t *list, void *data);






# 66 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/list.h" 3 4
_Bool 
# 66 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/list.h"
    list_append(list_t *list, void *data);
# 76 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/list.h"

# 76 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/list.h" 3 4
_Bool 
# 76 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/list.h"
    list_remove(list_t *list, void *data);



void list_clear(list_t *list);






list_node_t *list_foreach(const list_t *list, list_iter_cb callback, void *context);




list_node_t *list_begin(const list_t *list);





list_node_t *list_end(const list_t *list);





list_node_t *list_next(const list_node_t *node);



void *list_node(const list_node_t *node);
# 24 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/fixed_queue.h" 2





struct fixed_queue_t;

typedef struct fixed_queue_t fixed_queue_t;


typedef void (*fixed_queue_free_cb)(void *data);
typedef void (*fixed_queue_cb)(fixed_queue_t *queue);





fixed_queue_t *fixed_queue_new(size_t capacity);



void fixed_queue_free(fixed_queue_t *queue, fixed_queue_free_cb free_cb);




# 49 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/fixed_queue.h" 3 4
_Bool 
# 49 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/fixed_queue.h"
    fixed_queue_is_empty(fixed_queue_t *queue);



size_t fixed_queue_length(fixed_queue_t *queue);



size_t fixed_queue_capacity(fixed_queue_t *queue);




void fixed_queue_enqueue(fixed_queue_t *queue, void *data);




void *fixed_queue_dequeue(fixed_queue_t *queue);






# 73 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/fixed_queue.h" 3 4
_Bool 
# 73 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/fixed_queue.h"
    fixed_queue_try_enqueue(fixed_queue_t *queue, void *data);





void *fixed_queue_try_dequeue(fixed_queue_t *queue);




void *fixed_queue_try_peek_first(fixed_queue_t *queue);




void *fixed_queue_try_peek_last(fixed_queue_t *queue);






void *fixed_queue_try_remove_from_queue(fixed_queue_t *queue, void *data);
# 105 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/fixed_queue.h"
list_t *fixed_queue_get_list(fixed_queue_t *queue);
# 125 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/fixed_queue.h"
void fixed_queue_register_dequeue(fixed_queue_t *queue, fixed_queue_cb ready_cb);



void fixed_queue_unregister_dequeue(fixed_queue_t *queue);

void fixed_queue_process(fixed_queue_t *queue);

list_t *fixed_queue_get_list(fixed_queue_t *queue);
# 33 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avdt/include/avdt_int.h" 2
# 45 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avdt/include/avdt_int.h"
enum {
    AVDT_CHAN_SIG,
    AVDT_CHAN_MEDIA,

    AVDT_CHAN_REPORT,

    AVDT_CHAN_NUM_TYPES
};
# 119 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avdt/include/avdt_int.h"
enum {
    AVDT_CCB_IDLE_ST,
    AVDT_CCB_OPENING_ST,
    AVDT_CCB_OPEN_ST,
    AVDT_CCB_CLOSING_ST
};


enum {
    AVDT_CCB_CHAN_OPEN,
    AVDT_CCB_CHAN_CLOSE,
    AVDT_CCB_CHK_CLOSE,
    AVDT_CCB_HDL_DISCOVER_CMD,
    AVDT_CCB_HDL_DISCOVER_RSP,
    AVDT_CCB_HDL_GETCAP_CMD,
    AVDT_CCB_HDL_GETCAP_RSP,
    AVDT_CCB_HDL_START_CMD,
    AVDT_CCB_HDL_START_RSP,
    AVDT_CCB_HDL_SUSPEND_CMD,
    AVDT_CCB_HDL_SUSPEND_RSP,
    AVDT_CCB_SND_DISCOVER_CMD,
    AVDT_CCB_SND_DISCOVER_RSP,
    AVDT_CCB_SND_GETCAP_CMD,
    AVDT_CCB_SND_GETCAP_RSP,
    AVDT_CCB_SND_START_CMD,
    AVDT_CCB_SND_START_RSP,
    AVDT_CCB_SND_SUSPEND_CMD,
    AVDT_CCB_SND_SUSPEND_RSP,
    AVDT_CCB_CLEAR_CMDS,
    AVDT_CCB_CMD_FAIL,
    AVDT_CCB_FREE_CMD,
    AVDT_CCB_CONG_STATE,
    AVDT_CCB_RET_CMD,
    AVDT_CCB_SND_CMD,
    AVDT_CCB_SND_MSG,
    AVDT_CCB_SET_RECONN,
    AVDT_CCB_CLR_RECONN,
    AVDT_CCB_CHK_RECONN,
    AVDT_CCB_CHK_TIMER,
    AVDT_CCB_SET_CONN,
    AVDT_CCB_SET_DISCONN,
    AVDT_CCB_DO_DISCONN,
    AVDT_CCB_LL_CLOSED,
    AVDT_CCB_LL_OPENED,
    AVDT_CCB_DEALLOC,
    AVDT_CCB_NUM_ACTIONS
};




enum {
    AVDT_CCB_API_DISCOVER_REQ_EVT,
    AVDT_CCB_API_GETCAP_REQ_EVT,
    AVDT_CCB_API_START_REQ_EVT,
    AVDT_CCB_API_SUSPEND_REQ_EVT,
    AVDT_CCB_API_DISCOVER_RSP_EVT,
    AVDT_CCB_API_GETCAP_RSP_EVT,
    AVDT_CCB_API_START_RSP_EVT,
    AVDT_CCB_API_SUSPEND_RSP_EVT,
    AVDT_CCB_API_CONNECT_REQ_EVT,
    AVDT_CCB_API_DISCONNECT_REQ_EVT,
    AVDT_CCB_MSG_DISCOVER_CMD_EVT,
    AVDT_CCB_MSG_GETCAP_CMD_EVT,
    AVDT_CCB_MSG_START_CMD_EVT,
    AVDT_CCB_MSG_SUSPEND_CMD_EVT,
    AVDT_CCB_MSG_DISCOVER_RSP_EVT,
    AVDT_CCB_MSG_GETCAP_RSP_EVT,
    AVDT_CCB_MSG_START_RSP_EVT,
    AVDT_CCB_MSG_SUSPEND_RSP_EVT,
    AVDT_CCB_RCVRSP_EVT,
    AVDT_CCB_SENDMSG_EVT,
    AVDT_CCB_RET_TOUT_EVT,
    AVDT_CCB_RSP_TOUT_EVT,
    AVDT_CCB_IDLE_TOUT_EVT,
    AVDT_CCB_UL_OPEN_EVT,
    AVDT_CCB_UL_CLOSE_EVT,
    AVDT_CCB_LL_OPEN_EVT,
    AVDT_CCB_LL_CLOSE_EVT,
    AVDT_CCB_LL_CONG_EVT
};





enum {
    AVDT_SCB_IDLE_ST,
    AVDT_SCB_CONF_ST,
    AVDT_SCB_OPENING_ST,
    AVDT_SCB_OPEN_ST,
    AVDT_SCB_STREAM_ST,
    AVDT_SCB_CLOSING_ST
};


enum {
    AVDT_SCB_HDL_ABORT_CMD,
    AVDT_SCB_HDL_ABORT_RSP,
    AVDT_SCB_HDL_CLOSE_CMD,
    AVDT_SCB_HDL_CLOSE_RSP,
    AVDT_SCB_HDL_GETCONFIG_CMD,
    AVDT_SCB_HDL_GETCONFIG_RSP,
    AVDT_SCB_HDL_OPEN_CMD,
    AVDT_SCB_HDL_OPEN_REJ,
    AVDT_SCB_HDL_OPEN_RSP,
    AVDT_SCB_HDL_PKT,
    AVDT_SCB_DROP_PKT,
    AVDT_SCB_HDL_RECONFIG_CMD,
    AVDT_SCB_HDL_RECONFIG_RSP,
    AVDT_SCB_HDL_SECURITY_CMD,
    AVDT_SCB_HDL_SECURITY_RSP,
    AVDT_SCB_HDL_SETCONFIG_CMD,
    AVDT_SCB_HDL_SETCONFIG_REJ,
    AVDT_SCB_HDL_SETCONFIG_RSP,
    AVDT_SCB_HDL_START_CMD,
    AVDT_SCB_HDL_START_RSP,
    AVDT_SCB_HDL_SUSPEND_CMD,
    AVDT_SCB_HDL_SUSPEND_RSP,
    AVDT_SCB_HDL_TC_CLOSE,

    AVDT_SCB_HDL_TC_CLOSE_STO,

    AVDT_SCB_HDL_TC_OPEN,

    AVDT_SCB_HDL_TC_OPEN_STO,

    AVDT_SCB_SND_DELAY_RPT_REQ,
    AVDT_SCB_HDL_DELAY_RPT_CMD,
    AVDT_SCB_HDL_DELAY_RPT_RSP,
    AVDT_SCB_HDL_WRITE_REQ,
    AVDT_SCB_SND_ABORT_REQ,
    AVDT_SCB_SND_ABORT_RSP,
    AVDT_SCB_SND_CLOSE_REQ,
    AVDT_SCB_SND_STREAM_CLOSE,
    AVDT_SCB_SND_CLOSE_RSP,
    AVDT_SCB_SND_GETCONFIG_REQ,
    AVDT_SCB_SND_GETCONFIG_RSP,
    AVDT_SCB_SND_OPEN_REQ,
    AVDT_SCB_SND_OPEN_RSP,
    AVDT_SCB_SND_RECONFIG_REQ,
    AVDT_SCB_SND_RECONFIG_RSP,
    AVDT_SCB_SND_SECURITY_REQ,
    AVDT_SCB_SND_SECURITY_RSP,
    AVDT_SCB_SND_SETCONFIG_REQ,
    AVDT_SCB_SND_SETCONFIG_REJ,
    AVDT_SCB_SND_SETCONFIG_RSP,
    AVDT_SCB_SND_TC_CLOSE,
    AVDT_SCB_CB_ERR,
    AVDT_SCB_CONG_STATE,
    AVDT_SCB_REJ_STATE,
    AVDT_SCB_REJ_IN_USE,
    AVDT_SCB_REJ_NOT_IN_USE,
    AVDT_SCB_SET_REMOVE,
    AVDT_SCB_FREE_PKT,
    AVDT_SCB_CLR_PKT,
    AVDT_SCB_CHK_SND_PKT,
    AVDT_SCB_TC_TIMER,
    AVDT_SCB_CLR_VARS,
    AVDT_SCB_DEALLOC,
    AVDT_SCB_NUM_ACTIONS
};




enum {
    AVDT_SCB_API_REMOVE_EVT,
    AVDT_SCB_API_WRITE_REQ_EVT,
    AVDT_SCB_API_GETCONFIG_REQ_EVT,
    AVDT_SCB_API_DELAY_RPT_REQ_EVT,
    AVDT_SCB_API_SETCONFIG_REQ_EVT,
    AVDT_SCB_API_OPEN_REQ_EVT,
    AVDT_SCB_API_CLOSE_REQ_EVT,
    AVDT_SCB_API_RECONFIG_REQ_EVT,
    AVDT_SCB_API_SECURITY_REQ_EVT,
    AVDT_SCB_API_ABORT_REQ_EVT,
    AVDT_SCB_API_GETCONFIG_RSP_EVT,
    AVDT_SCB_API_SETCONFIG_RSP_EVT,
    AVDT_SCB_API_SETCONFIG_REJ_EVT,
    AVDT_SCB_API_OPEN_RSP_EVT,
    AVDT_SCB_API_CLOSE_RSP_EVT,
    AVDT_SCB_API_RECONFIG_RSP_EVT,
    AVDT_SCB_API_SECURITY_RSP_EVT,
    AVDT_SCB_API_ABORT_RSP_EVT,
    AVDT_SCB_MSG_SETCONFIG_CMD_EVT,
    AVDT_SCB_MSG_GETCONFIG_CMD_EVT,
    AVDT_SCB_MSG_OPEN_CMD_EVT,
    AVDT_SCB_MSG_START_CMD_EVT,
    AVDT_SCB_MSG_SUSPEND_CMD_EVT,
    AVDT_SCB_MSG_CLOSE_CMD_EVT,
    AVDT_SCB_MSG_ABORT_CMD_EVT,
    AVDT_SCB_MSG_RECONFIG_CMD_EVT,
    AVDT_SCB_MSG_SECURITY_CMD_EVT,
    AVDT_SCB_MSG_DELAY_RPT_CMD_EVT,
    AVDT_SCB_MSG_DELAY_RPT_RSP_EVT,
    AVDT_SCB_MSG_SETCONFIG_RSP_EVT,
    AVDT_SCB_MSG_GETCONFIG_RSP_EVT,
    AVDT_SCB_MSG_OPEN_RSP_EVT,
    AVDT_SCB_MSG_START_RSP_EVT,
    AVDT_SCB_MSG_SUSPEND_RSP_EVT,
    AVDT_SCB_MSG_CLOSE_RSP_EVT,
    AVDT_SCB_MSG_ABORT_RSP_EVT,
    AVDT_SCB_MSG_RECONFIG_RSP_EVT,
    AVDT_SCB_MSG_SECURITY_RSP_EVT,
    AVDT_SCB_MSG_SETCONFIG_REJ_EVT,
    AVDT_SCB_MSG_OPEN_REJ_EVT,
    AVDT_SCB_MSG_START_REJ_EVT,
    AVDT_SCB_MSG_SUSPEND_REJ_EVT,
    AVDT_SCB_TC_TOUT_EVT,
    AVDT_SCB_TC_OPEN_EVT,
    AVDT_SCB_TC_CLOSE_EVT,
    AVDT_SCB_TC_CONG_EVT,
    AVDT_SCB_TC_DATA_EVT,
    AVDT_SCB_CC_CLOSE_EVT
};
# 375 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avdt/include/avdt_int.h"
typedef union {
    tAVDT_EVT_HDR hdr;
    tAVDT_EVT_HDR single;
    tAVDT_SETCONFIG config_cmd;
    tAVDT_CONFIG reconfig_cmd;
    tAVDT_MULTI multi;
    tAVDT_SECURITY security_cmd;
    tAVDT_DISCOVER discover_rsp;
    tAVDT_CONFIG svccap;
    tAVDT_SECURITY security_rsp;
    tAVDT_DELAY_RPT delay_rpt_cmd;
} tAVDT_MSG;


typedef struct {
    tAVDT_CTRL_CBACK *p_cback;
    tAVDT_SEP_INFO *p_sep_info;
    UINT8 num_seps;
} tAVDT_CCB_API_DISCOVER;


typedef struct {
    tAVDT_EVT_HDR single;
    tAVDT_CTRL_CBACK *p_cback;
    tAVDT_CFG *p_cfg;
} tAVDT_CCB_API_GETCAP;


typedef struct {
    tAVDT_CTRL_CBACK *p_cback;
    UINT8 sec_mask;
} tAVDT_CCB_API_CONNECT;


typedef struct {
    tAVDT_CTRL_CBACK *p_cback;
} tAVDT_CCB_API_DISCONNECT;


typedef union {
    tAVDT_CCB_API_DISCOVER discover;
    tAVDT_CCB_API_GETCAP getcap;
    tAVDT_CCB_API_CONNECT connect;
    tAVDT_CCB_API_DISCONNECT disconnect;
    tAVDT_MSG msg;
    BOOLEAN llcong;
    UINT8 err_code;
} tAVDT_CCB_EVT;


typedef struct {
    BD_ADDR peer_addr;
    TIMER_LIST_ENT timer_entry;
    fixed_queue_t *cmd_q;
    fixed_queue_t *rsp_q;
    tAVDT_CTRL_CBACK *proc_cback;
    tAVDT_CTRL_CBACK *p_conn_cback;
    void *p_proc_data;
    BT_HDR *p_curr_cmd;
    BT_HDR *p_curr_msg;
    BT_HDR *p_rx_msg;
    BOOLEAN allocated;
    UINT8 state;
    BOOLEAN ll_opened;
    BOOLEAN proc_busy;
    UINT8 proc_param;
    BOOLEAN cong;
    UINT8 label;
    BOOLEAN reconn;
    UINT8 ret_count;
    UINT8 disc_rsn;
} tAVDT_CCB;


typedef void (*tAVDT_CCB_ACTION)(tAVDT_CCB *p_ccb, tAVDT_CCB_EVT *p_data);


typedef struct {
    BT_HDR *p_buf;
    UINT32 time_stamp;

    fixed_queue_t *frag_q;
    UINT8 *p_data;
    UINT32 data_len;

    UINT8 m_pt;
    tAVDT_DATA_OPT_MASK opt;
} tAVDT_SCB_APIWRITE;


typedef struct {
    UINT8 old_tc_state;
    UINT8 tcid;
    UINT8 type;
    UINT8 disc_rsn;
} tAVDT_SCB_TC_CLOSE;


typedef union {
    tAVDT_MSG msg;
    tAVDT_SCB_APIWRITE apiwrite;
    tAVDT_DELAY_RPT apidelay;
    tAVDT_OPEN open;
    tAVDT_SCB_TC_CLOSE close;
    BOOLEAN llcong;
    BT_HDR *p_pkt;
} tAVDT_SCB_EVT;


typedef struct {
    tAVDT_CS cs;
    tAVDT_CFG curr_cfg;
    tAVDT_CFG req_cfg;
    TIMER_LIST_ENT timer_entry;
    BT_HDR *p_pkt;
    tAVDT_CCB *p_ccb;
    UINT16 media_seq;
    BOOLEAN allocated;
    BOOLEAN in_use;
    BOOLEAN sink_activated;
    UINT8 role;
    BOOLEAN remove;
    UINT8 state;
    UINT8 peer_seid;
    UINT8 curr_evt;
    BOOLEAN cong;
    UINT8 close_code;

    fixed_queue_t *frag_q;
    UINT32 frag_off;
    UINT32 frag_org_len;
    UINT8 *p_next_frag;
    UINT8 *p_media_buf;
    UINT32 media_buf_len;

} tAVDT_SCB;


typedef void (*tAVDT_SCB_ACTION)(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);


typedef struct {
    UINT16 peer_mtu;
    UINT16 my_mtu;
    UINT16 my_flush_to;
    UINT16 lcid;
    UINT8 tcid;
    UINT8 ccb_idx;
    UINT8 state;
    UINT8 cfg_flags;
    UINT8 id;
} tAVDT_TC_TBL;


typedef struct {
    UINT16 lcid;
    UINT8 scb_hdl;
} tAVDT_RT_TBL;



typedef struct {
    tAVDT_RT_TBL rt_tbl[2][((3<<1) + 1)];
    tAVDT_TC_TBL tc_tbl[6];
    UINT8 lcid_tbl[16];
} tAVDT_AD;


typedef struct {
    tAVDT_REG rcb;
    tAVDT_CCB ccb[2];
    tAVDT_SCB scb[3];
    tAVDT_AD ad;
    tAVDTC_CTRL_CBACK *p_conf_cback;
    tAVDT_CCB_ACTION *p_ccb_act;
    tAVDT_SCB_ACTION *p_scb_act;
    tAVDT_CTRL_CBACK *p_conn_cback;
    UINT8 trace_level;
} tAVDT_CB;







extern void avdt_ccb_init(void);
extern void avdt_ccb_event(tAVDT_CCB *p_ccb, UINT8 event, tAVDT_CCB_EVT *p_data);
extern tAVDT_CCB *avdt_ccb_by_bd(BD_ADDR bd_addr);
extern tAVDT_CCB *avdt_ccb_alloc(BD_ADDR bd_addr);
extern void avdt_ccb_dealloc(tAVDT_CCB *p_ccb, tAVDT_CCB_EVT *p_data);
extern UINT8 avdt_ccb_to_idx(tAVDT_CCB *p_ccb);
extern tAVDT_CCB *avdt_ccb_by_idx(UINT8 idx);


extern void avdt_ccb_chan_open(tAVDT_CCB *p_ccb, tAVDT_CCB_EVT *p_data);
extern void avdt_ccb_chan_close(tAVDT_CCB *p_ccb, tAVDT_CCB_EVT *p_data);
extern void avdt_ccb_chk_close(tAVDT_CCB *p_ccb, tAVDT_CCB_EVT *p_data);
extern void avdt_ccb_hdl_discover_cmd(tAVDT_CCB *p_ccb, tAVDT_CCB_EVT *p_data);
extern void avdt_ccb_hdl_discover_rsp(tAVDT_CCB *p_ccb, tAVDT_CCB_EVT *p_data);
extern void avdt_ccb_hdl_getcap_cmd(tAVDT_CCB *p_ccb, tAVDT_CCB_EVT *p_data);
extern void avdt_ccb_hdl_getcap_rsp(tAVDT_CCB *p_ccb, tAVDT_CCB_EVT *p_data);
extern void avdt_ccb_hdl_start_cmd(tAVDT_CCB *p_ccb, tAVDT_CCB_EVT *p_data);
extern void avdt_ccb_hdl_start_rsp(tAVDT_CCB *p_ccb, tAVDT_CCB_EVT *p_data);
extern void avdt_ccb_hdl_suspend_cmd(tAVDT_CCB *p_ccb, tAVDT_CCB_EVT *p_data);
extern void avdt_ccb_hdl_suspend_rsp(tAVDT_CCB *p_ccb, tAVDT_CCB_EVT *p_data);
extern void avdt_ccb_snd_discover_cmd(tAVDT_CCB *p_ccb, tAVDT_CCB_EVT *p_data);
extern void avdt_ccb_snd_discover_rsp(tAVDT_CCB *p_ccb, tAVDT_CCB_EVT *p_data);
extern void avdt_ccb_snd_getcap_cmd(tAVDT_CCB *p_ccb, tAVDT_CCB_EVT *p_data);
extern void avdt_ccb_snd_getcap_rsp(tAVDT_CCB *p_ccb, tAVDT_CCB_EVT *p_data);
extern void avdt_ccb_snd_start_cmd(tAVDT_CCB *p_ccb, tAVDT_CCB_EVT *p_data);
extern void avdt_ccb_snd_start_rsp(tAVDT_CCB *p_ccb, tAVDT_CCB_EVT *p_data);
extern void avdt_ccb_snd_suspend_cmd(tAVDT_CCB *p_ccb, tAVDT_CCB_EVT *p_data);
extern void avdt_ccb_snd_suspend_rsp(tAVDT_CCB *p_ccb, tAVDT_CCB_EVT *p_data);
extern void avdt_ccb_clear_cmds(tAVDT_CCB *p_ccb, tAVDT_CCB_EVT *p_data);
extern void avdt_ccb_cmd_fail(tAVDT_CCB *p_ccb, tAVDT_CCB_EVT *p_data);
extern void avdt_ccb_free_cmd(tAVDT_CCB *p_ccb, tAVDT_CCB_EVT *p_data);
extern void avdt_ccb_cong_state(tAVDT_CCB *p_ccb, tAVDT_CCB_EVT *p_data);
extern void avdt_ccb_ret_cmd(tAVDT_CCB *p_ccb, tAVDT_CCB_EVT *p_data);
extern void avdt_ccb_snd_cmd(tAVDT_CCB *p_ccb, tAVDT_CCB_EVT *p_data);
extern void avdt_ccb_snd_msg(tAVDT_CCB *p_ccb, tAVDT_CCB_EVT *p_data);
extern void avdt_ccb_set_reconn(tAVDT_CCB *p_ccb, tAVDT_CCB_EVT *p_data);
extern void avdt_ccb_clr_reconn(tAVDT_CCB *p_ccb, tAVDT_CCB_EVT *p_data);
extern void avdt_ccb_chk_reconn(tAVDT_CCB *p_ccb, tAVDT_CCB_EVT *p_data);
extern void avdt_ccb_chk_timer(tAVDT_CCB *p_ccb, tAVDT_CCB_EVT *p_data);
extern void avdt_ccb_set_conn(tAVDT_CCB *p_ccb, tAVDT_CCB_EVT *p_data);
extern void avdt_ccb_set_disconn(tAVDT_CCB *p_ccb, tAVDT_CCB_EVT *p_data);
extern void avdt_ccb_do_disconn(tAVDT_CCB *p_ccb, tAVDT_CCB_EVT *p_data);
extern void avdt_ccb_ll_closed(tAVDT_CCB *p_ccb, tAVDT_CCB_EVT *p_data);
extern void avdt_ccb_ll_opened(tAVDT_CCB *p_ccb, tAVDT_CCB_EVT *p_data);


extern void avdt_scb_event(tAVDT_SCB *p_scb, UINT8 event, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_init(void);
extern tAVDT_SCB *avdt_scb_alloc(tAVDT_CS *p_cs);
extern void avdt_scb_dealloc(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern UINT8 avdt_scb_to_hdl(tAVDT_SCB *p_scb);
extern tAVDT_SCB *avdt_scb_by_hdl(UINT8 hdl);
extern UINT8 avdt_scb_verify(tAVDT_CCB *p_ccb, UINT8 state, UINT8 *p_seid, UINT16 num_seid, UINT8 *p_err_code);
extern void avdt_scb_peer_seid_list(tAVDT_MULTI *p_multi);
extern UINT32 avdt_scb_gen_ssrc(tAVDT_SCB *p_scb);


extern void avdt_scb_hdl_abort_cmd(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_hdl_abort_rsp(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_hdl_close_cmd(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_hdl_close_rsp(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_hdl_getconfig_cmd(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_hdl_getconfig_rsp(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_hdl_open_cmd(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_hdl_open_rej(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_hdl_open_rsp(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_hdl_pkt(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_drop_pkt(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_hdl_reconfig_cmd(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_hdl_reconfig_rsp(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_hdl_security_cmd(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_hdl_security_rsp(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_hdl_setconfig_cmd(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_hdl_setconfig_rej(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_hdl_setconfig_rsp(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_hdl_start_cmd(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_hdl_start_rsp(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_hdl_suspend_cmd(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_hdl_suspend_rsp(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_snd_delay_rpt_req(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_hdl_delay_rpt_cmd(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_hdl_delay_rpt_rsp(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_hdl_tc_close(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_hdl_tc_open(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_hdl_tc_close_sto(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_hdl_tc_open_sto(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_hdl_write_req(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_snd_abort_req(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_snd_abort_rsp(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_snd_close_req(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_snd_stream_close(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_snd_close_rsp(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_snd_getconfig_req(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_snd_getconfig_rsp(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_snd_open_req(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_snd_open_rsp(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_snd_reconfig_req(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_snd_reconfig_rsp(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_snd_security_req(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_snd_security_rsp(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_snd_setconfig_req(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_snd_setconfig_rej(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_snd_setconfig_rsp(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_snd_tc_close(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_cb_err(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_cong_state(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_rej_state(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_rej_in_use(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_rej_not_in_use(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_set_remove(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_free_pkt(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_chk_snd_pkt(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_clr_pkt(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_tc_timer(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_clr_vars(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data);
extern void avdt_scb_queue_frags(tAVDT_SCB *p_scb, UINT8 **pp_data, UINT32 *p_data_len, fixed_queue_t *pq);


extern BOOLEAN avdt_msg_send(tAVDT_CCB *p_ccb, BT_HDR *p_msg);
extern void avdt_msg_send_cmd(tAVDT_CCB *p_ccb, void *p_scb, UINT8 sig_id, tAVDT_MSG *p_params);
extern void avdt_msg_send_rsp(tAVDT_CCB *p_ccb, UINT8 sig_id, tAVDT_MSG *p_params);
extern void avdt_msg_send_rej(tAVDT_CCB *p_ccb, UINT8 sig_id, tAVDT_MSG *p_params);
extern void avdt_msg_send_grej(tAVDT_CCB *p_ccb, UINT8 sig_id, tAVDT_MSG *p_params);
extern void avdt_msg_ind(tAVDT_CCB *p_ccb, BT_HDR *p_buf);


extern void avdt_ad_init(void);
extern UINT8 avdt_ad_type_to_tcid(UINT8 type, tAVDT_SCB *p_scb);
extern tAVDT_TC_TBL *avdt_ad_tc_tbl_by_st(UINT8 type, tAVDT_CCB *p_ccb, UINT8 state);
extern tAVDT_TC_TBL *avdt_ad_tc_tbl_by_lcid(UINT16 lcid);
extern tAVDT_TC_TBL *avdt_ad_tc_tbl_alloc(tAVDT_CCB *p_ccb);
extern UINT8 avdt_ad_tc_tbl_to_idx(tAVDT_TC_TBL *p_tbl);
extern void avdt_ad_tc_close_ind(tAVDT_TC_TBL *p_tbl, UINT16 reason);
extern void avdt_ad_tc_open_ind(tAVDT_TC_TBL *p_tbl);
extern void avdt_ad_tc_cong_ind(tAVDT_TC_TBL *p_tbl, BOOLEAN is_congested);
extern void avdt_ad_tc_data_ind(tAVDT_TC_TBL *p_tbl, BT_HDR *p_buf);
extern tAVDT_TC_TBL *avdt_ad_tc_tbl_by_type(UINT8 type, tAVDT_CCB *p_ccb, tAVDT_SCB *p_scb);
extern UINT8 avdt_ad_write_req(UINT8 type, tAVDT_CCB *p_ccb, tAVDT_SCB *p_scb, BT_HDR *p_buf);
extern void avdt_ad_open_req(UINT8 type, tAVDT_CCB *p_ccb, tAVDT_SCB *p_scb, UINT8 role);
extern void avdt_ad_close_req(UINT8 type, tAVDT_CCB *p_ccb, tAVDT_SCB *p_scb);

extern void avdt_process_timeout(TIMER_LIST_ENT *p_tle);
# 730 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avdt/include/avdt_int.h"
extern tAVDT_CB avdt_cb;







extern const tL2CAP_APPL_INFO avdt_l2c_appl;


extern const UINT8 avdt_msg_rej_2_evt[];
# 33 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avdt/avdt_scb.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btu.h" 1
# 35 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btu.h"
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
# 34 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avdt/avdt_scb.c" 2
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
# 35 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avdt/avdt_scb.c" 2
# 110 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avdt/avdt_scb.c"
const tAVDT_SCB_ACTION avdt_scb_action[] = {
    avdt_scb_hdl_abort_cmd,
    avdt_scb_hdl_abort_rsp,
    avdt_scb_hdl_close_cmd,
    avdt_scb_hdl_close_rsp,
    avdt_scb_hdl_getconfig_cmd,
    avdt_scb_hdl_getconfig_rsp,
    avdt_scb_hdl_open_cmd,
    avdt_scb_hdl_open_rej,
    avdt_scb_hdl_open_rsp,
    avdt_scb_hdl_pkt,
    avdt_scb_drop_pkt,
    avdt_scb_hdl_reconfig_cmd,
    avdt_scb_hdl_reconfig_rsp,
    avdt_scb_hdl_security_cmd,
    avdt_scb_hdl_security_rsp,
    avdt_scb_hdl_setconfig_cmd,
    avdt_scb_hdl_setconfig_rej,
    avdt_scb_hdl_setconfig_rsp,
    avdt_scb_hdl_start_cmd,
    avdt_scb_hdl_start_rsp,
    avdt_scb_hdl_suspend_cmd,
    avdt_scb_hdl_suspend_rsp,
    avdt_scb_hdl_tc_close,

    avdt_scb_hdl_tc_close_sto,

    avdt_scb_hdl_tc_open,

    avdt_scb_hdl_tc_open_sto,

    avdt_scb_snd_delay_rpt_req,
    avdt_scb_hdl_delay_rpt_cmd,
    avdt_scb_hdl_delay_rpt_rsp,
    avdt_scb_hdl_write_req,
    avdt_scb_snd_abort_req,
    avdt_scb_snd_abort_rsp,
    avdt_scb_snd_close_req,
    avdt_scb_snd_stream_close,
    avdt_scb_snd_close_rsp,
    avdt_scb_snd_getconfig_req,
    avdt_scb_snd_getconfig_rsp,
    avdt_scb_snd_open_req,
    avdt_scb_snd_open_rsp,
    avdt_scb_snd_reconfig_req,
    avdt_scb_snd_reconfig_rsp,
    avdt_scb_snd_security_req,
    avdt_scb_snd_security_rsp,
    avdt_scb_snd_setconfig_req,
    avdt_scb_snd_setconfig_rej,
    avdt_scb_snd_setconfig_rsp,
    avdt_scb_snd_tc_close,
    avdt_scb_cb_err,
    avdt_scb_cong_state,
    avdt_scb_rej_state,
    avdt_scb_rej_in_use,
    avdt_scb_rej_not_in_use,
    avdt_scb_set_remove,
    avdt_scb_free_pkt,
    avdt_scb_clr_pkt,
    avdt_scb_chk_snd_pkt,
    avdt_scb_tc_timer,
    avdt_scb_clr_vars,
    avdt_scb_dealloc
};







const UINT8 avdt_scb_st_idle[][3] = {

                                {AVDT_SCB_DEALLOC, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_IDLE_ST},
                                {AVDT_SCB_FREE_PKT, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_IDLE_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_IDLE_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_IDLE_ST},
                                {AVDT_SCB_SND_SETCONFIG_REQ, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_IDLE_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_IDLE_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_IDLE_ST},
                                {AVDT_SCB_CB_ERR, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_IDLE_ST},
                                {AVDT_SCB_CB_ERR, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_IDLE_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_IDLE_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_IDLE_ST},
                                {AVDT_SCB_SND_SETCONFIG_RSP, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CONF_ST},
                                {AVDT_SCB_SND_SETCONFIG_REJ, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_IDLE_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_IDLE_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_IDLE_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_IDLE_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_IDLE_ST},
                                {AVDT_SCB_SND_ABORT_RSP, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_IDLE_ST},
                                {AVDT_SCB_HDL_SETCONFIG_CMD, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_IDLE_ST},
                                {AVDT_SCB_REJ_STATE, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_IDLE_ST},
                                {AVDT_SCB_REJ_STATE, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_IDLE_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_IDLE_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_IDLE_ST},
                                {AVDT_SCB_REJ_STATE, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_IDLE_ST},
                                {AVDT_SCB_HDL_ABORT_CMD, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_IDLE_ST},
                                {AVDT_SCB_REJ_NOT_IN_USE, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_IDLE_ST},
                                {AVDT_SCB_REJ_STATE, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_IDLE_ST},
                                {AVDT_SCB_REJ_STATE, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_IDLE_ST},
                                {AVDT_SCB_HDL_DELAY_RPT_RSP, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_IDLE_ST},
                                {AVDT_SCB_HDL_SETCONFIG_RSP, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CONF_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_IDLE_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_IDLE_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_IDLE_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_IDLE_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_IDLE_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_IDLE_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_IDLE_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_IDLE_ST},
                                {AVDT_SCB_HDL_SETCONFIG_REJ, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_IDLE_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_IDLE_ST},
                                {AVDT_SCB_HDL_START_RSP, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_IDLE_ST},
                                {AVDT_SCB_HDL_SUSPEND_RSP, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_IDLE_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_IDLE_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_IDLE_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_IDLE_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_IDLE_ST},
                                {AVDT_SCB_DROP_PKT, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_IDLE_ST},
                                {AVDT_SCB_CLR_VARS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_IDLE_ST}
};


const UINT8 avdt_scb_st_conf[][3] = {

                                {AVDT_SCB_SND_ABORT_REQ, AVDT_SCB_SET_REMOVE, AVDT_SCB_CONF_ST},
                                {AVDT_SCB_FREE_PKT, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CONF_ST},
                                {AVDT_SCB_SND_GETCONFIG_REQ, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CONF_ST},
                                {AVDT_SCB_SND_DELAY_RPT_REQ, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CONF_ST},
                                {AVDT_SCB_CB_ERR, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CONF_ST},
                                {AVDT_SCB_SND_OPEN_REQ, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CONF_ST},
                                {AVDT_SCB_SND_ABORT_REQ, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CONF_ST},
                                {AVDT_SCB_CB_ERR, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CONF_ST},
                                {AVDT_SCB_SND_SECURITY_REQ, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CONF_ST},
                                {AVDT_SCB_SND_ABORT_REQ, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CONF_ST},
                                {AVDT_SCB_SND_GETCONFIG_RSP, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CONF_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CONF_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CONF_ST},
                                {AVDT_SCB_SND_OPEN_RSP, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPENING_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CONF_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CONF_ST},
                                {AVDT_SCB_SND_SECURITY_RSP, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CONF_ST},
                                {AVDT_SCB_SND_ABORT_RSP, AVDT_SCB_HDL_TC_CLOSE, AVDT_SCB_IDLE_ST},
                                {AVDT_SCB_REJ_IN_USE, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CONF_ST},
                                {AVDT_SCB_HDL_GETCONFIG_CMD, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CONF_ST},
                                {AVDT_SCB_HDL_OPEN_CMD, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CONF_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CONF_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CONF_ST},
                                {AVDT_SCB_REJ_STATE, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CONF_ST},
                                {AVDT_SCB_HDL_ABORT_CMD, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CONF_ST},
                                {AVDT_SCB_REJ_STATE, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CONF_ST},
                                {AVDT_SCB_HDL_SECURITY_CMD, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CONF_ST},
                                {AVDT_SCB_HDL_DELAY_RPT_CMD, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CONF_ST},
                                {AVDT_SCB_HDL_DELAY_RPT_RSP, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CONF_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CONF_ST},
                                {AVDT_SCB_HDL_GETCONFIG_RSP, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CONF_ST},
                                {AVDT_SCB_HDL_OPEN_RSP, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPENING_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CONF_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CONF_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CONF_ST},
                                {AVDT_SCB_HDL_ABORT_RSP, AVDT_SCB_HDL_TC_CLOSE, AVDT_SCB_IDLE_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CONF_ST},
                                {AVDT_SCB_HDL_SECURITY_RSP, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CONF_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CONF_ST},
                                {AVDT_SCB_HDL_OPEN_REJ, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_IDLE_ST},
                                {AVDT_SCB_HDL_START_RSP, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CONF_ST},
                                {AVDT_SCB_HDL_SUSPEND_RSP, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CONF_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CONF_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CONF_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CONF_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CONF_ST},
                                {AVDT_SCB_DROP_PKT, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CONF_ST},
                                {AVDT_SCB_HDL_TC_CLOSE, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_IDLE_ST}
};


const UINT8 avdt_scb_st_opening[][3] = {

                                {AVDT_SCB_SND_CLOSE_REQ, AVDT_SCB_SET_REMOVE, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_FREE_PKT, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPENING_ST},
                                {AVDT_SCB_SND_GETCONFIG_REQ, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPENING_ST},
                                {AVDT_SCB_SND_DELAY_RPT_REQ, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPENING_ST},
                                {AVDT_SCB_CB_ERR, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPENING_ST},
                                {AVDT_SCB_CB_ERR, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPENING_ST},
                                {AVDT_SCB_SND_CLOSE_REQ, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_CB_ERR, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPENING_ST},
                                {AVDT_SCB_SND_SECURITY_REQ, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPENING_ST},
                                {AVDT_SCB_SND_ABORT_REQ, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_SND_GETCONFIG_RSP, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPENING_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPENING_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPENING_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPENING_ST},
                                {AVDT_SCB_SND_CLOSE_RSP, AVDT_SCB_SND_TC_CLOSE, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPENING_ST},
                                {AVDT_SCB_SND_SECURITY_RSP, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPENING_ST},
                                {AVDT_SCB_SND_ABORT_RSP, AVDT_SCB_SND_TC_CLOSE, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_REJ_STATE, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPENING_ST},
                                {AVDT_SCB_HDL_GETCONFIG_CMD, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPENING_ST},
                                {AVDT_SCB_REJ_STATE, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPENING_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPENING_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPENING_ST},
                                {AVDT_SCB_HDL_CLOSE_CMD, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPENING_ST},
                                {AVDT_SCB_HDL_ABORT_CMD, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPENING_ST},
                                {AVDT_SCB_REJ_STATE, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPENING_ST},
                                {AVDT_SCB_HDL_SECURITY_CMD, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPENING_ST},
                                {AVDT_SCB_HDL_DELAY_RPT_CMD, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPENING_ST},
                                {AVDT_SCB_HDL_DELAY_RPT_RSP, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPENING_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPENING_ST},
                                {AVDT_SCB_HDL_GETCONFIG_RSP, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPENING_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPENING_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPENING_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPENING_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPENING_ST},
                                {AVDT_SCB_SND_TC_CLOSE, AVDT_SCB_HDL_ABORT_RSP, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPENING_ST},
                                {AVDT_SCB_HDL_SECURITY_RSP, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPENING_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPENING_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPENING_ST},
                                {AVDT_SCB_HDL_START_RSP, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPENING_ST},
                                {AVDT_SCB_HDL_SUSPEND_RSP, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPENING_ST},
                                {AVDT_SCB_SND_ABORT_REQ, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_HDL_TC_OPEN, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPEN_ST},
                                {AVDT_SCB_HDL_TC_CLOSE, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_IDLE_ST},
                                {AVDT_SCB_CONG_STATE, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPENING_ST},
                                {AVDT_SCB_DROP_PKT, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPENING_ST},
                                {AVDT_SCB_SND_TC_CLOSE, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CLOSING_ST}
};


const UINT8 avdt_scb_st_open[][3] = {

                                {AVDT_SCB_SND_CLOSE_REQ, AVDT_SCB_SET_REMOVE, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_FREE_PKT, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPEN_ST},
                                {AVDT_SCB_SND_GETCONFIG_REQ, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPEN_ST},
                                {AVDT_SCB_SND_DELAY_RPT_REQ, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPEN_ST},
                                {AVDT_SCB_CB_ERR, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPEN_ST},
                                {AVDT_SCB_CB_ERR, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPEN_ST},
                                {AVDT_SCB_SND_CLOSE_REQ, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_SND_RECONFIG_REQ, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPEN_ST},
                                {AVDT_SCB_SND_SECURITY_REQ, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPEN_ST},
                                {AVDT_SCB_SND_ABORT_REQ, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_SND_GETCONFIG_RSP, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPEN_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPEN_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPEN_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPEN_ST},
                                {AVDT_SCB_SND_CLOSE_RSP, AVDT_SCB_TC_TIMER, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_SND_RECONFIG_RSP, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPEN_ST},
                                {AVDT_SCB_SND_SECURITY_RSP, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPEN_ST},
                                {AVDT_SCB_SND_ABORT_RSP, AVDT_SCB_TC_TIMER, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_REJ_STATE, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPEN_ST},
                                {AVDT_SCB_HDL_GETCONFIG_CMD, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPEN_ST},
                                {AVDT_SCB_REJ_STATE, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPEN_ST},
                                {AVDT_SCB_HDL_START_CMD, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_STREAM_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPEN_ST},
                                {AVDT_SCB_HDL_CLOSE_CMD, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPEN_ST},
                                {AVDT_SCB_HDL_ABORT_CMD, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPEN_ST},
                                {AVDT_SCB_HDL_RECONFIG_CMD, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPEN_ST},
                                {AVDT_SCB_HDL_SECURITY_CMD, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPEN_ST},
                                {AVDT_SCB_HDL_DELAY_RPT_CMD, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPEN_ST},
                                {AVDT_SCB_HDL_DELAY_RPT_RSP, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPEN_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPEN_ST},
                                {AVDT_SCB_HDL_GETCONFIG_RSP, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPEN_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPEN_ST},
                                {AVDT_SCB_HDL_START_RSP, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_STREAM_ST},
                                {AVDT_SCB_HDL_SUSPEND_RSP, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPEN_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPEN_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_IDLE_ST},
                                {AVDT_SCB_HDL_RECONFIG_RSP, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPEN_ST},
                                {AVDT_SCB_HDL_SECURITY_RSP, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPEN_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPEN_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPEN_ST},
                                {AVDT_SCB_HDL_START_RSP, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPEN_ST},
                                {AVDT_SCB_HDL_SUSPEND_RSP, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPEN_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPEN_ST},

                                {AVDT_SCB_HDL_TC_OPEN_STO, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPEN_ST},
                                {AVDT_SCB_HDL_TC_CLOSE_STO, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPEN_ST},




                                {AVDT_SCB_CONG_STATE, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPEN_ST},
                                {AVDT_SCB_DROP_PKT, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_OPEN_ST},
                                {AVDT_SCB_SND_TC_CLOSE, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CLOSING_ST}
};


const UINT8 avdt_scb_st_stream[][3] = {

                                {AVDT_SCB_SND_STREAM_CLOSE, AVDT_SCB_SET_REMOVE, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_HDL_WRITE_REQ, AVDT_SCB_CHK_SND_PKT, AVDT_SCB_STREAM_ST},
                                {AVDT_SCB_SND_GETCONFIG_REQ, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_STREAM_ST},
                                {AVDT_SCB_SND_DELAY_RPT_REQ, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_STREAM_ST},
                                {AVDT_SCB_CB_ERR, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_STREAM_ST},
                                {AVDT_SCB_CB_ERR, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_STREAM_ST},
                                {AVDT_SCB_SND_STREAM_CLOSE, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_CB_ERR, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_STREAM_ST},
                                {AVDT_SCB_SND_SECURITY_REQ, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_STREAM_ST},
                                {AVDT_SCB_SND_ABORT_REQ, AVDT_SCB_CLR_PKT, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_SND_GETCONFIG_RSP, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_STREAM_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_STREAM_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_STREAM_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_STREAM_ST},
                                {AVDT_SCB_SND_CLOSE_RSP, AVDT_SCB_TC_TIMER, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_STREAM_ST},
                                {AVDT_SCB_SND_SECURITY_RSP, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_STREAM_ST},
                                {AVDT_SCB_SND_ABORT_RSP, AVDT_SCB_TC_TIMER, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_REJ_STATE, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_STREAM_ST},
                                {AVDT_SCB_HDL_GETCONFIG_CMD, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_STREAM_ST},
                                {AVDT_SCB_REJ_STATE, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_STREAM_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_STREAM_ST},
                                {AVDT_SCB_HDL_SUSPEND_CMD, AVDT_SCB_CLR_PKT, AVDT_SCB_OPEN_ST},
                                {AVDT_SCB_HDL_CLOSE_CMD, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_STREAM_ST},
                                {AVDT_SCB_HDL_ABORT_CMD, AVDT_SCB_CLR_PKT, AVDT_SCB_STREAM_ST},
                                {AVDT_SCB_REJ_STATE, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_STREAM_ST},
                                {AVDT_SCB_HDL_SECURITY_CMD, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_STREAM_ST},
                                {AVDT_SCB_HDL_DELAY_RPT_CMD, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_STREAM_ST},
                                {AVDT_SCB_HDL_DELAY_RPT_RSP, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_STREAM_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_STREAM_ST},
                                {AVDT_SCB_HDL_GETCONFIG_RSP, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_STREAM_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_STREAM_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_STREAM_ST},
                                {AVDT_SCB_HDL_SUSPEND_RSP, AVDT_SCB_CLR_PKT, AVDT_SCB_OPEN_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_STREAM_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_STREAM_ST},
                                {AVDT_SCB_HDL_RECONFIG_RSP, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_STREAM_ST},
                                {AVDT_SCB_HDL_SECURITY_RSP, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_STREAM_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_STREAM_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_STREAM_ST},
                                {AVDT_SCB_HDL_START_RSP, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_STREAM_ST},
                                {AVDT_SCB_HDL_SUSPEND_RSP, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_STREAM_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_STREAM_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_STREAM_ST},
                                {AVDT_SCB_HDL_TC_CLOSE, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_IDLE_ST},
                                {AVDT_SCB_CONG_STATE, AVDT_SCB_CHK_SND_PKT, AVDT_SCB_STREAM_ST},
                                {AVDT_SCB_HDL_PKT, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_STREAM_ST},
                                {AVDT_SCB_SND_TC_CLOSE, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CLOSING_ST}
};


const UINT8 avdt_scb_st_closing[][3] = {

                                {AVDT_SCB_SET_REMOVE, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_FREE_PKT, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_CB_ERR, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_CB_ERR, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_CB_ERR, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_SND_ABORT_RSP, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_REJ_STATE, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_REJ_STATE, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_REJ_STATE, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_REJ_STATE, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_HDL_ABORT_CMD, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_REJ_STATE, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_REJ_STATE, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_REJ_STATE, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_HDL_DELAY_RPT_RSP, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_SND_TC_CLOSE, AVDT_SCB_HDL_CLOSE_RSP, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_SND_TC_CLOSE, AVDT_SCB_HDL_ABORT_RSP, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_HDL_START_RSP, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_HDL_SUSPEND_RSP, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_SND_TC_CLOSE, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_SND_TC_CLOSE, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_HDL_TC_CLOSE, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_IDLE_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_DROP_PKT, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CLOSING_ST},
                                {AVDT_SCB_NUM_ACTIONS, AVDT_SCB_NUM_ACTIONS, AVDT_SCB_CLOSING_ST}
};


typedef const UINT8 (*tAVDT_SCB_ST_TBL)[3];


const tAVDT_SCB_ST_TBL avdt_scb_st_tbl[] = {
    avdt_scb_st_idle,
    avdt_scb_st_conf,
    avdt_scb_st_opening,
    avdt_scb_st_open,
    avdt_scb_st_stream,
    avdt_scb_st_closing
};
# 528 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avdt/avdt_scb.c"
void avdt_scb_event(tAVDT_SCB *p_scb, UINT8 event, tAVDT_SCB_EVT *p_data)
{
    tAVDT_SCB_ST_TBL state_table;
    UINT8 action;
    int i;





    p_scb->curr_evt = event;


    state_table = avdt_scb_st_tbl[p_scb->state];


    if (p_scb->state != state_table[event][2]) {
        p_scb->state = state_table[event][2];
    }


    for (i = 0; i < 2; i++) {
        if ((action = state_table[event][i]) != AVDT_SCB_NUM_ACTIONS) {
            (*avdt_cb.p_scb_act[action])(p_scb, p_data);
        } else {
            break;
        }
    }
}
# 569 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avdt/avdt_scb.c"
void avdt_scb_init(void)
{
    memset(&avdt_cb.scb[0], 0, sizeof(tAVDT_SCB) * 3);
    avdt_cb.p_scb_act = (tAVDT_SCB_ACTION *) avdt_scb_action;
}
# 586 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avdt/avdt_scb.c"
tAVDT_SCB *avdt_scb_alloc(tAVDT_CS *p_cs)
{
    tAVDT_SCB *p_scb = &avdt_cb.scb[0];
    int i;


    for (i = 0; i < 3; i++, p_scb++) {
        if (!p_scb->allocated) {
            memset(p_scb, 0, sizeof(tAVDT_SCB));
            p_scb->allocated = 
# 595 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avdt/avdt_scb.c" 3 4
                              1
# 595 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avdt/avdt_scb.c"
                                  ;
            p_scb->p_ccb = 
# 596 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avdt/avdt_scb.c" 3 4
                          ((void *)0)
# 596 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avdt/avdt_scb.c"
                              ;


            if (p_cs->tsep == 1) {
                p_scb->sink_activated = 
# 600 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avdt/avdt_scb.c" 3 4
                                       1
# 600 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avdt/avdt_scb.c"
                                           ;
            }

            memcpy(&p_scb->cs, p_cs, sizeof(tAVDT_CS));


            p_scb->frag_q = fixed_queue_new(254);

            if (p_cs->cfg.psc_mask & (1<<6)) {
                p_scb->cs.cfg.mux_tcid_media = avdt_ad_type_to_tcid(AVDT_CHAN_MEDIA, p_scb);

                if (p_cs->cfg.psc_mask & (1<<2)) {
                    p_scb->cs.cfg.mux_tcid_report = avdt_ad_type_to_tcid(AVDT_CHAN_REPORT, p_scb);
                }

            }

            p_scb->timer_entry.param = (UINT32) p_scb;
            {if (avdt_cb.trace_level >= 5 && (((2) > (3) ? (2) : (3)) >= 5)) {esp_log_write(ESP_LOG_DEBUG, "BT_AVDT", "D" " (%d) %s: " "avdt_scb_alloc hdl=%d, psc_mask:0x%x\n" "\033[0m" "\n", esp_log_timestamp(), "BT_AVDT", i + 1, p_cs->cfg.psc_mask); };};
            break;
        }
    }

    if (i == 3) {

        p_scb = 
# 625 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avdt/avdt_scb.c" 3 4
               ((void *)0)
# 625 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avdt/avdt_scb.c"
                   ;
        {if (avdt_cb.trace_level >= 2 && (((2) > (3) ? (2) : (3)) >= 2)) {esp_log_write(ESP_LOG_WARN, "BT_AVDT", "\033[0;" "33" "m" "W" " (%d) %s: " "Out of scbs" "\033[0m" "\n", esp_log_timestamp(), "BT_AVDT"); };};
    }

    return p_scb;
}
# 642 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avdt/avdt_scb.c"
void avdt_scb_dealloc(tAVDT_SCB *p_scb, tAVDT_SCB_EVT *p_data)
{
    (void)(p_data);

    {if (avdt_cb.trace_level >= 5 && (((2) > (3) ? (2) : (3)) >= 5)) {esp_log_write(ESP_LOG_DEBUG, "BT_AVDT", "D" " (%d) %s: " "avdt_scb_dealloc hdl=%d\n" "\033[0m" "\n", esp_log_timestamp(), "BT_AVDT", avdt_scb_to_hdl(p_scb)); };};
    btu_free_timer(&p_scb->timer_entry);



    fixed_queue_free(p_scb->frag_q, osi_free_func);


    memset(p_scb, 0, sizeof(tAVDT_SCB));
}
# 667 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avdt/avdt_scb.c"
UINT8 avdt_scb_to_hdl(tAVDT_SCB *p_scb)
{
    return (UINT8) (p_scb - avdt_cb.scb + 1);
}
# 683 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avdt/avdt_scb.c"
tAVDT_SCB *avdt_scb_by_hdl(UINT8 hdl)
{
    tAVDT_SCB *p_scb;


    if ((hdl > 0) && (hdl <= 3)) {
        p_scb = &avdt_cb.scb[hdl - 1];


        if (!p_scb->allocated) {
            p_scb = 
# 693 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avdt/avdt_scb.c" 3 4
                   ((void *)0)
# 693 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avdt/avdt_scb.c"
                       ;
            {if (avdt_cb.trace_level >= 2 && (((2) > (3) ? (2) : (3)) >= 2)) {esp_log_write(ESP_LOG_WARN, "BT_AVDT", "\033[0;" "33" "m" "W" " (%d) %s: " "scb hdl %d not allocated\n" "\033[0m" "\n", esp_log_timestamp(), "BT_AVDT", hdl); };};
        }
    } else {
        p_scb = 
# 697 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avdt/avdt_scb.c" 3 4
               ((void *)0)
# 697 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avdt/avdt_scb.c"
                   ;
        {if (avdt_cb.trace_level >= 2 && (((2) > (3) ? (2) : (3)) >= 2)) {esp_log_write(ESP_LOG_WARN, "BT_AVDT", "\033[0;" "33" "m" "W" " (%d) %s: " "scb hdl %d out of range\n" "\033[0m" "\n", esp_log_timestamp(), "BT_AVDT", hdl); };};
    }
    return p_scb;
}
# 713 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avdt/avdt_scb.c"
UINT8 avdt_scb_verify(tAVDT_CCB *p_ccb, UINT8 state, UINT8 *p_seid, UINT16 num_seid, UINT8 *p_err_code)
{
    int i;
    tAVDT_SCB *p_scb;
    UINT8 nsc_mask;
    UINT8 ret = 0;

    {if (avdt_cb.trace_level >= 5 && (((2) > (3) ? (2) : (3)) >= 5)) {esp_log_write(ESP_LOG_DEBUG, "BT_AVDT", "D" " (%d) %s: " "avdt_scb_verify state %d\n" "\033[0m" "\n", esp_log_timestamp(), "BT_AVDT", state); };};


    nsc_mask = 0;
    if (state == 2) {
        nsc_mask = 0x01;
    }


    for (i = 0, *p_err_code = 0; (i < num_seid) && (*p_err_code == 0) && (i < 3); i++) {
        if ((p_scb = avdt_scb_by_hdl(p_seid[i])) == 
# 730 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avdt/avdt_scb.c" 3 4
                                                   ((void *)0)
# 730 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avdt/avdt_scb.c"
                                                       ) {
            *p_err_code = 0x31;
        } else if (p_scb->p_ccb != p_ccb) {
            *p_err_code = 0x31;
        } else if (p_scb->cs.nsc_mask & nsc_mask) {
            *p_err_code = 0x19;
        }

        switch (state) {
        case 0:
        case 3:
            if (p_scb->state != AVDT_SCB_OPEN_ST && p_scb->state != AVDT_SCB_STREAM_ST) {
                *p_err_code = 0x31;
            }
            break;

        case 2:
        case 1:
            if (p_scb->state != AVDT_SCB_STREAM_ST) {
                *p_err_code = 0x31;
            }
            break;
        }
    }

    if ((i != num_seid) && (i < 3)) {
        ret = p_seid[i];
    }

    return ret;
}
# 773 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avdt/avdt_scb.c"
void avdt_scb_peer_seid_list(tAVDT_MULTI *p_multi)
{
    int i;
    tAVDT_SCB *p_scb;

    for (i = 0; i < p_multi->num_seps; i++) {
        if ((p_scb = avdt_scb_by_hdl(p_multi->seid_list[i])) != 
# 779 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avdt/avdt_scb.c" 3 4
                                                               ((void *)0)
# 779 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avdt/avdt_scb.c"
                                                                   ) {
            p_multi->seid_list[i] = p_scb->peer_seid;
        }
    }
}
