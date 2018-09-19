# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
# 1 "D:\\ESP32\\esp-idf-v3.1-rc1\\ESP32_PIC_A2DP\\build\\bt//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
# 27 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
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


# 28 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 2


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
# 31 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/allocator.h" 1
# 22 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/allocator.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 23 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/allocator.h" 2
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




# 24 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/allocator.h" 2
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
# 32 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btu.h" 1
# 30 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btu.h"
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


# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h" 1
# 39 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"

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
# 31 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btu.h" 2
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
# 33 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2cdefs.h" 1
# 35 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 2
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
# 36 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 2
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
# 37 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 2

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
# 39 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/include/sdpint.h" 1
# 31 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/include/sdpint.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h" 1
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
# 32 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/include/sdpint.h" 2
# 94 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/include/sdpint.h"
typedef struct {
    UINT16 len;
    UINT8 value[16];
} tUID_ENT;

typedef struct {
    UINT16 num_uids;
    tUID_ENT uuid_entry[8];
} tSDP_UUID_SEQ;



typedef struct {
    UINT16 start;
    UINT16 end;
} tATT_ENT;

typedef struct {
    UINT16 num_attr;
    tATT_ENT attr_entry[8];
} tSDP_ATTR_SEQ;



typedef struct {
    UINT32 len;
    UINT8 *value_ptr;
    UINT16 id;
    UINT8 type;
} tSDP_ATTRIBUTE;


typedef struct {
    UINT32 record_handle;
    UINT32 free_pad_ptr;
    UINT16 num_attributes;
    tSDP_ATTRIBUTE attribute[8];
    UINT8 attr_pad[300];
} tSDP_RECORD;



typedef struct {
    UINT32 di_primary_handle;
    UINT16 num_records;
    tSDP_RECORD record[6];
} tSDP_DB;

enum {
    SDP_IS_SEARCH,
    SDP_IS_ATTR_SEARCH,
};



typedef struct {
    UINT16 next_attr_index;
    UINT16 next_attr_start_id;
    tSDP_RECORD *prev_sdp_rec;
    BOOLEAN last_attr_seq_desc_sent;
    UINT16 attr_offset;
} tSDP_CONT_INFO;



typedef struct {




    UINT8 con_state;




    UINT8 con_flags;

    BD_ADDR device_address;
    TIMER_LIST_ENT timer_entry;
    UINT16 rem_mtu_size;
    UINT16 connection_id;
    UINT16 list_len;
    UINT8 *rsp_list;


    tSDP_DISCOVERY_DB *p_db;
    tSDP_DISC_CMPL_CB *p_cb;
    tSDP_DISC_CMPL_CB2 *p_cb2;
    void *user_data;
    UINT32 handles[21];
    UINT16 num_handles;
    UINT16 cur_handle;
    UINT16 transaction_id;
    UINT16 disconnect_reason;
# 198 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/include/sdpint.h"
    UINT8 disc_state;
    UINT8 is_attr_search;



    UINT16 cont_offset;
    tSDP_CONT_INFO cont_info;


} tCONN_CB;



typedef struct {
    tL2CAP_CFG_INFO l2cap_my_cfg;
    tCONN_CB ccb[2];

    tSDP_DB server_db;

    tL2CAP_APPL_INFO reg_info;
    UINT16 max_attr_list_size;
    UINT16 max_recs_per_search;
    UINT8 trace_level;
} tSDP_CB;






extern tSDP_CB sdp_cb;
# 239 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/include/sdpint.h"
extern void sdp_init (void);
extern void sdp_deinit (void);
extern void sdp_disconnect (tCONN_CB *p_ccb, UINT16 reason);


extern UINT16 sdp_set_max_attr_list_size (UINT16 max_size);




extern void sdp_conn_rcv_l2e_conn_ind (BT_HDR *p_msg);
extern void sdp_conn_rcv_l2e_conn_cfm (BT_HDR *p_msg);
extern void sdp_conn_rcv_l2e_disc (BT_HDR *p_msg);
extern void sdp_conn_rcv_l2e_config_ind (BT_HDR *p_msg);
extern void sdp_conn_rcv_l2e_config_cfm (BT_HDR *p_msg);
extern void sdp_conn_rcv_l2e_conn_failed (BT_HDR *p_msg);
extern void sdp_conn_rcv_l2e_connected (BT_HDR *p_msg);
extern void sdp_conn_rcv_l2e_conn_failed (BT_HDR *p_msg);
extern void sdp_conn_rcv_l2e_data (BT_HDR *p_msg);
extern void sdp_conn_timeout (tCONN_CB *p_ccb);

extern tCONN_CB *sdp_conn_originate (UINT8 *p_bd_addr);



extern tCONN_CB *sdpu_find_ccb_by_cid (UINT16 cid);
extern tCONN_CB *sdpu_find_ccb_by_db (tSDP_DISCOVERY_DB *p_db);
extern tCONN_CB *sdpu_allocate_ccb (void);
extern void sdpu_release_ccb (tCONN_CB *p_ccb);

extern UINT8 *sdpu_build_attrib_seq (UINT8 *p_out, UINT16 *p_attr, UINT16 num_attrs);
extern UINT8 *sdpu_build_attrib_entry (UINT8 *p_out, tSDP_ATTRIBUTE *p_attr);
extern void sdpu_build_n_send_error (tCONN_CB *p_ccb, UINT16 trans_num, UINT16 error_code, char *p_error_text);

extern UINT8 *sdpu_extract_attr_seq (UINT8 *p, UINT16 param_len, tSDP_ATTR_SEQ *p_seq);
extern UINT8 *sdpu_extract_uid_seq (UINT8 *p, UINT16 param_len, tSDP_UUID_SEQ *p_seq);

extern UINT8 *sdpu_get_len_from_type (UINT8 *p, UINT8 type, UINT32 *p_len);
extern BOOLEAN sdpu_is_base_uuid (UINT8 *p_uuid);
extern BOOLEAN sdpu_compare_uuid_arrays (UINT8 *p_uuid1, UINT32 len1, UINT8 *p_uuid2, UINT16 len2);
extern BOOLEAN sdpu_compare_bt_uuids (tBT_UUID *p_uuid1, tBT_UUID *p_uuid2);
extern BOOLEAN sdpu_compare_uuid_with_attr (tBT_UUID *p_btuuid, tSDP_DISC_ATTR *p_attr);

extern void sdpu_sort_attr_list( UINT16 num_attr, tSDP_DISCOVERY_DB *p_db );
extern UINT16 sdpu_get_list_len( tSDP_UUID_SEQ *uid_seq, tSDP_ATTR_SEQ *attr_seq );
extern UINT16 sdpu_get_attrib_seq_len(tSDP_RECORD *p_rec, tSDP_ATTR_SEQ *attr_seq);
extern UINT16 sdpu_get_attrib_entry_len(tSDP_ATTRIBUTE *p_attr);
extern UINT8 *sdpu_build_partial_attrib_entry (UINT8 *p_out, tSDP_ATTRIBUTE *p_attr, UINT16 len, UINT16 *offset);
extern void sdpu_uuid16_to_uuid128(UINT16 uuid16, UINT8 *p_uuid128);



extern tSDP_RECORD *sdp_db_service_search (tSDP_RECORD *p_rec, tSDP_UUID_SEQ *p_seq);
extern tSDP_RECORD *sdp_db_find_record (UINT32 handle);
extern tSDP_ATTRIBUTE *sdp_db_find_attr_in_rec (tSDP_RECORD *p_rec, UINT16 start_attr, UINT16 end_attr);





extern void sdp_server_handle_client_req (tCONN_CB *p_ccb, BT_HDR *p_msg);







extern void sdp_disc_connected (tCONN_CB *p_ccb);
extern void sdp_disc_server_rsp (tCONN_CB *p_ccb, BT_HDR *p_msg);
# 40 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 2
# 52 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
static void process_service_search (tCONN_CB *p_ccb, UINT16 trans_num,
                                    UINT16 param_len, UINT8 *p_req,
                                    UINT8 *p_req_end);

static void process_service_attr_req (tCONN_CB *p_ccb, UINT16 trans_num,
                                      UINT16 param_len, UINT8 *p_req,
                                      UINT8 *p_req_end);

static void process_service_search_attr_req (tCONN_CB *p_ccb, UINT16 trans_num,
        UINT16 param_len, UINT8 *p_req,
        UINT8 *p_req_end);
# 114 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
void sdp_server_handle_client_req (tCONN_CB *p_ccb, BT_HDR *p_msg)
{
    UINT8 *p_req = (UINT8 *) (p_msg + 1) + p_msg->offset;
    UINT8 *p_req_end = p_req + p_msg->len;
    UINT8 pdu_id;
    UINT16 trans_num, param_len;



    btu_start_timer (&p_ccb->timer_entry, 5, 30);


    pdu_id = *p_req++;


    {trans_num = (UINT16)(((UINT16)(*(p_req)) << 8) + (UINT16)(*((p_req) + 1))); (p_req) += 2;};
    {param_len = (UINT16)(((UINT16)(*(p_req)) << 8) + (UINT16)(*((p_req) + 1))); (p_req) += 2;};

    if ((p_req + param_len) != p_req_end) {
        sdpu_build_n_send_error (p_ccb, trans_num, 0x0004, 
# 133 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 3 4
                                                                        ((void *)0)
# 133 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
                                                                                           );
        return;
    }

    switch (pdu_id) {
    case 0x02:
        process_service_search (p_ccb, trans_num, param_len, p_req, p_req_end);
        break;

    case 0x04:
        process_service_attr_req (p_ccb, trans_num, param_len, p_req, p_req_end);
        break;

    case 0x06:
        process_service_search_attr_req (p_ccb, trans_num, param_len, p_req, p_req_end);
        break;

    default:
        sdpu_build_n_send_error (p_ccb, trans_num, 0x0003, 
# 151 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 3 4
                                                                          ((void *)0)
# 151 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
                                                                                          );
        {if (sdp_cb.trace_level >= 2 && (((2) > (3) ? (2) : (3)) >= 2)) {esp_log_write(ESP_LOG_WARN, "BT_SDP", "\033[0;" "33" "m" "W" " (%d) %s: " "SDP - server got unknown PDU: 0x%x\n" "\033[0m" "\n", esp_log_timestamp(), "BT_SDP", pdu_id); };};
        break;
    }
}
# 170 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
static void process_service_search (tCONN_CB *p_ccb, UINT16 trans_num,
                                    UINT16 param_len, UINT8 *p_req,
                                    UINT8 *p_req_end)
{
    UINT16 max_replies, cur_handles, rem_handles, cont_offset;
    tSDP_UUID_SEQ uid_seq;
    UINT8 *p_rsp, *p_rsp_start, *p_rsp_param_len;
    UINT16 rsp_param_len, num_rsp_handles, xx;
    UINT32 rsp_handles[6] = {0};
    tSDP_RECORD *p_rec = 
# 179 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 3 4
                           ((void *)0)
# 179 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
                               ;
    BT_HDR *p_buf;
    BOOLEAN is_cont = 
# 181 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 3 4
                             0
# 181 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
                                  ;
    (void)(p_req_end);

    p_req = sdpu_extract_uid_seq (p_req, param_len, &uid_seq);

    if ((!p_req) || (!uid_seq.num_uids)) {
        sdpu_build_n_send_error (p_ccb, trans_num, 0x0003, 
# 187 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 3 4
                                                                          ((void *)0)
# 187 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
                                                                                                );
        return;
    }


    {max_replies = (UINT16)(((UINT16)(*(p_req)) << 8) + (UINT16)(*((p_req) + 1))); (p_req) += 2;};

    if (max_replies > 6) {
        max_replies = 6;
    }


    if ((!p_req) || (p_req > p_req_end)) {
        sdpu_build_n_send_error (p_ccb, trans_num, 0x0003, 
# 200 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 3 4
                                                                          ((void *)0)
# 200 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
                                                                                                       );
        return;
    }



    for (num_rsp_handles = 0; num_rsp_handles < max_replies; ) {
        p_rec = sdp_db_service_search (p_rec, &uid_seq);

        if (p_rec) {
            rsp_handles[num_rsp_handles++] = p_rec->record_handle;
        } else {
            break;
        }
    }


    if (*p_req) {
        if (*p_req++ != 2 || (p_req >= p_req_end)) {
            sdpu_build_n_send_error (p_ccb, trans_num, 0x0005,
                                     
# 220 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 3 4
                                    ((void *)0)
# 220 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
                                                         );
            return;
        }
        {cont_offset = (UINT16)(((UINT16)(*(p_req)) << 8) + (UINT16)(*((p_req) + 1))); (p_req) += 2;};

        if (cont_offset != p_ccb->cont_offset || num_rsp_handles < cont_offset) {
            sdpu_build_n_send_error (p_ccb, trans_num, 0x0005,
                                     
# 227 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 3 4
                                    ((void *)0)
# 227 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
                                                         );
            return;
        }

        rem_handles = num_rsp_handles - cont_offset;
    } else {
        rem_handles = num_rsp_handles;
        cont_offset = 0;
        p_ccb->cont_offset = 0;
    }


    cur_handles = (UINT16)((p_ccb->rem_mtu_size - 12) / 4);

    if (rem_handles <= cur_handles) {
        cur_handles = rem_handles;
    } else {
        p_ccb->cont_offset += cur_handles;
        is_cont = 
# 245 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 3 4
                 1
# 245 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
                     ;
    }


    if ((p_buf = (BT_HDR *)malloc(((4096 + 16)))) == 
# 249 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 3 4
                                                            ((void *)0)
# 249 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
                                                                ) {
        {if (sdp_cb.trace_level >= 1 && (((2) > (3) ? (2) : (3)) >= 1)) {esp_log_write(ESP_LOG_ERROR, "BT_SDP", "\033[0;" "31" "m" "E" " (%d) %s: " "SDP - no buf for search rsp\n" "\033[0m" "\n", esp_log_timestamp(), "BT_SDP"); };};
        return;
    }
    p_buf->offset = 13;
    p_rsp = p_rsp_start = (UINT8 *)(p_buf + 1) + 13;


    {*(p_rsp)++ = (UINT8)(0x03);};
    {*(p_rsp)++ = (UINT8)((trans_num) >> 8); *(p_rsp)++ = (UINT8)(trans_num);};


    p_rsp_param_len = p_rsp;
    p_rsp += 2;


    {*(p_rsp)++ = (UINT8)((num_rsp_handles) >> 8); *(p_rsp)++ = (UINT8)(num_rsp_handles);};
    {*(p_rsp)++ = (UINT8)((cur_handles) >> 8); *(p_rsp)++ = (UINT8)(cur_handles);};




    for (xx = cont_offset; xx < cont_offset + cur_handles; xx++) {
        {*(p_rsp)++ = (UINT8)((rsp_handles[xx]) >> 24); *(p_rsp)++ = (UINT8)((rsp_handles[xx]) >> 16); *(p_rsp)++ = (UINT8)((rsp_handles[xx]) >> 8); *(p_rsp)++ = (UINT8)(rsp_handles[xx]); };
    }

    if (is_cont) {
        {*(p_rsp)++ = (UINT8)(2);};
        {*(p_rsp)++ = (UINT8)((p_ccb->cont_offset) >> 8); *(p_rsp)++ = (UINT8)(p_ccb->cont_offset);};
    } else {
        {*(p_rsp)++ = (UINT8)(0);};
    }


    rsp_param_len = p_rsp - p_rsp_param_len - 2;
    {*(p_rsp_param_len)++ = (UINT8)((rsp_param_len) >> 8); *(p_rsp_param_len)++ = (UINT8)(rsp_param_len);};


    p_buf->len = p_rsp - p_rsp_start;



    L2CA_DataWrite (p_ccb->connection_id, p_buf);
}
# 306 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
static void process_service_attr_req (tCONN_CB *p_ccb, UINT16 trans_num,
                                      UINT16 param_len, UINT8 *p_req,
                                      UINT8 *p_req_end)
{
    UINT16 max_list_len, len_to_send, cont_offset;
    INT16 rem_len;
    tSDP_ATTR_SEQ attr_seq, attr_seq_sav;
    UINT8 *p_rsp, *p_rsp_start, *p_rsp_param_len;
    UINT16 rsp_param_len, xx;
    UINT32 rec_handle;
    tSDP_RECORD *p_rec;
    tSDP_ATTRIBUTE *p_attr;
    BT_HDR *p_buf;
    BOOLEAN is_cont = 
# 319 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 3 4
                             0
# 319 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
                                  ;
    UINT16 attr_len;


    {rec_handle = ((UINT32)(*((p_req) + 3)) + ((UINT32)(*((p_req) + 2)) << 8) + ((UINT32)(*((p_req) + 1)) << 16) + ((UINT32)(*(p_req)) << 24)); (p_req) += 4;};

    if (p_req > p_req_end) {
        sdpu_build_n_send_error (p_ccb, trans_num, 0x0002, 
# 326 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 3 4
                                                                            ((void *)0)
# 326 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
                                                                                               );
        return;
    }


    {max_list_len = (UINT16)(((UINT16)(*(p_req)) << 8) + (UINT16)(*((p_req) + 1))); (p_req) += 2;};

    if (max_list_len > (p_ccb->rem_mtu_size - 10)) {
        max_list_len = p_ccb->rem_mtu_size - 10;
    }

    p_req = sdpu_extract_attr_seq (p_req, param_len, &attr_seq);

    if ((!p_req) || (!attr_seq.num_attr) || (p_req > p_req_end)) {
        sdpu_build_n_send_error (p_ccb, trans_num, 0x0003, 
# 340 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 3 4
                                                                          ((void *)0)
# 340 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
                                                                                                );
        return;
    }

    memcpy(&attr_seq_sav, &attr_seq, sizeof(tSDP_ATTR_SEQ)) ;


    p_rec = sdp_db_find_record (rec_handle);
    if (!p_rec) {
        sdpu_build_n_send_error (p_ccb, trans_num, 0x0002, 
# 349 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 3 4
                                                                            ((void *)0)
# 349 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
                                                                                               );
        return;
    }


    if (*p_req) {

        if (p_ccb->rsp_list) {
            free((p_ccb->rsp_list));
        }

        p_ccb->rsp_list = (UINT8 *)malloc((max_list_len));
        if (p_ccb->rsp_list == 
# 361 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 3 4
                              ((void *)0)
# 361 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
                                  ) {
            {if (sdp_cb.trace_level >= 1 && (((2) > (3) ? (2) : (3)) >= 1)) {esp_log_write(ESP_LOG_ERROR, "BT_SDP", "\033[0;" "31" "m" "E" " (%d) %s: " "%s No scratch buf for attr rsp\n" "\033[0m" "\n", esp_log_timestamp(), "BT_SDP", __func__); };};
            return;
        }

        if (*p_req++ != 2) {
            sdpu_build_n_send_error (p_ccb, trans_num, 0x0005, 
# 367 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 3 4
                                                                              ((void *)0)
# 367 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
                                                                                                   );
            return;
        }
        {cont_offset = (UINT16)(((UINT16)(*(p_req)) << 8) + (UINT16)(*((p_req) + 1))); (p_req) += 2;};

        if (cont_offset != p_ccb->cont_offset) {
            sdpu_build_n_send_error (p_ccb, trans_num, 0x0005, 
# 373 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 3 4
                                                                              ((void *)0)
# 373 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
                                                                                                   );
            return;
        }

        if (!p_ccb->rsp_list) {
            sdpu_build_n_send_error (p_ccb, trans_num, 0x0006, 
# 378 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 3 4
                                                                        ((void *)0)
# 378 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
                                                                            );
            return;
        }
        is_cont = 
# 381 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 3 4
                 1
# 381 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
                     ;


        p_rsp = &p_ccb->rsp_list[0];
        attr_seq.attr_entry[p_ccb->cont_info.next_attr_index].start = p_ccb->cont_info.next_attr_start_id;
    } else {
     if (p_ccb->rsp_list) {
            free((p_ccb->rsp_list));
        }

        p_ccb->rsp_list = (UINT8 *)malloc((max_list_len));
        if (p_ccb->rsp_list == 
# 392 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 3 4
                              ((void *)0)
# 392 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
                                  ) {
            {if (sdp_cb.trace_level >= 1 && (((2) > (3) ? (2) : (3)) >= 1)) {esp_log_write(ESP_LOG_ERROR, "BT_SDP", "\033[0;" "31" "m" "E" " (%d) %s: " "SDP - no scratch buf for search rsp\n" "\033[0m" "\n", esp_log_timestamp(), "BT_SDP"); };};
            return;
        }

        p_ccb->cont_offset = 0;
        p_rsp = &p_ccb->rsp_list[3];


        p_ccb->cont_info.prev_sdp_rec = 
# 401 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 3 4
                                       ((void *)0)
# 401 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
                                           ;
        p_ccb->cont_info.next_attr_index = 0;
        p_ccb->cont_info.attr_offset = 0;
    }


    for (xx = p_ccb->cont_info.next_attr_index; xx < attr_seq.num_attr; xx++) {
        p_attr = sdp_db_find_attr_in_rec (p_rec, attr_seq.attr_entry[xx].start, attr_seq.attr_entry[xx].end);

        if (p_attr) {

            rem_len = max_list_len - (INT16) (p_rsp - &p_ccb->rsp_list[0]);


            if (rem_len <= 0) {
                p_ccb->cont_info.next_attr_index = xx;
                p_ccb->cont_info.next_attr_start_id = p_attr->id;
                break;
            }

            attr_len = sdpu_get_attrib_entry_len(p_attr);

            if (p_ccb->cont_info.attr_offset) {
                p_rsp = sdpu_build_partial_attrib_entry (p_rsp, p_attr, rem_len,
                        &p_ccb->cont_info.attr_offset);


                if (p_ccb->cont_info.attr_offset != attr_len) {
                    break;
                } else {
                    p_ccb->cont_info.attr_offset = 0;
                }
            } else if (rem_len < attr_len) {
                if (attr_len >= 400) {
                    {if (sdp_cb.trace_level >= 1 && (((2) > (3) ? (2) : (3)) >= 1)) {esp_log_write(ESP_LOG_ERROR, "BT_SDP", "\033[0;" "31" "m" "E" " (%d) %s: " "SDP attr too big: max_list_len=%d,attr_len=%d\n" "\033[0m" "\n", esp_log_timestamp(), "BT_SDP", max_list_len, attr_len); };};
                    sdpu_build_n_send_error (p_ccb, trans_num, 0x0006, 
# 436 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 3 4
                                                                                ((void *)0)
# 436 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
                                                                                    );
                    return;
                }


                p_rsp = sdpu_build_partial_attrib_entry (p_rsp, p_attr, (UINT16)rem_len,
                        &p_ccb->cont_info.attr_offset);

                p_ccb->cont_info.next_attr_index = xx;
                p_ccb->cont_info.next_attr_start_id = p_attr->id;
                break;
            } else {
                p_rsp = sdpu_build_attrib_entry (p_rsp, p_attr);
            }


            if (attr_seq.attr_entry[xx].start != attr_seq.attr_entry[xx].end) {

                attr_seq.attr_entry[xx].start = p_attr->id + 1;

                xx--;
            }
        }
    }


    if (xx == attr_seq.num_attr) {
        p_ccb->cont_info.next_attr_index = 0;
    }

    len_to_send = (UINT16) (p_rsp - &p_ccb->rsp_list[0]);
    cont_offset = 0;

    if (!is_cont) {
        p_ccb->list_len = sdpu_get_attrib_seq_len(p_rec, &attr_seq_sav) + 3;

        if (p_ccb->list_len > 255) {
            p_ccb->rsp_list[0] = (UINT8) ((6 << 3) | 6);
            p_ccb->rsp_list[1] = (UINT8) ((p_ccb->list_len - 3) >> 8);
            p_ccb->rsp_list[2] = (UINT8) (p_ccb->list_len - 3);
        } else {
            cont_offset = 1;

            p_ccb->rsp_list[1] = (UINT8) ((6 << 3) | 5);
            p_ccb->rsp_list[2] = (UINT8) (p_ccb->list_len - 3);

            p_ccb->list_len--;
            len_to_send--;
        }
    }


    if ((p_buf = (BT_HDR *)malloc(((4096 + 16)))) == 
# 488 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 3 4
                                                            ((void *)0)
# 488 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
                                                                ) {
        {if (sdp_cb.trace_level >= 1 && (((2) > (3) ? (2) : (3)) >= 1)) {esp_log_write(ESP_LOG_ERROR, "BT_SDP", "\033[0;" "31" "m" "E" " (%d) %s: " "SDP - no buf for search rsp\n" "\033[0m" "\n", esp_log_timestamp(), "BT_SDP"); };};
        return;
    }
    p_buf->offset = 13;
    p_rsp = p_rsp_start = (UINT8 *)(p_buf + 1) + 13;


    {*(p_rsp)++ = (UINT8)(0x05);};
    {*(p_rsp)++ = (UINT8)((trans_num) >> 8); *(p_rsp)++ = (UINT8)(trans_num);};


    p_rsp_param_len = p_rsp;
    p_rsp += 2;

    {*(p_rsp)++ = (UINT8)((len_to_send) >> 8); *(p_rsp)++ = (UINT8)(len_to_send);};

    memcpy (p_rsp, &p_ccb->rsp_list[cont_offset], len_to_send);
    p_rsp += len_to_send;

    p_ccb->cont_offset += len_to_send;


    if (p_ccb->cont_offset < p_ccb->list_len) {
        is_cont = 
# 512 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 3 4
                 1
# 512 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
                     ;

        {*(p_rsp)++ = (UINT8)(2);};
        {*(p_rsp)++ = (UINT8)((p_ccb->cont_offset) >> 8); *(p_rsp)++ = (UINT8)(p_ccb->cont_offset);};
    } else {
        {*(p_rsp)++ = (UINT8)(0);};
    }


    rsp_param_len = p_rsp - p_rsp_param_len - 2;
    {*(p_rsp_param_len)++ = (UINT8)((rsp_param_len) >> 8); *(p_rsp_param_len)++ = (UINT8)(rsp_param_len);};


    p_buf->len = p_rsp - p_rsp_start;



    L2CA_DataWrite (p_ccb->connection_id, p_buf);
}
# 545 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
static void process_service_search_attr_req (tCONN_CB *p_ccb, UINT16 trans_num,
        UINT16 param_len, UINT8 *p_req,
        UINT8 *p_req_end)
{
    UINT16 max_list_len;
    INT16 rem_len;
    UINT16 len_to_send, cont_offset;
    tSDP_UUID_SEQ uid_seq;
    UINT8 *p_rsp, *p_rsp_start, *p_rsp_param_len;
    UINT16 rsp_param_len, xx;
    tSDP_RECORD *p_rec;
    tSDP_ATTR_SEQ attr_seq, attr_seq_sav;
    tSDP_ATTRIBUTE *p_attr;
    BT_HDR *p_buf;
    BOOLEAN maxxed_out = 
# 559 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 3 4
                                0
# 559 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
                                     , is_cont = 
# 559 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 3 4
                                                 0
# 559 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
                                                      ;
    UINT8 *p_seq_start;
    UINT16 seq_len, attr_len;
    (void)(p_req_end);


    p_req = sdpu_extract_uid_seq (p_req, param_len, &uid_seq);

    if ((!p_req) || (!uid_seq.num_uids)) {
        sdpu_build_n_send_error (p_ccb, trans_num, 0x0003, 
# 568 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 3 4
                                                                          ((void *)0)
# 568 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
                                                                                                );
        return;
    }


    {max_list_len = (UINT16)(((UINT16)(*(p_req)) << 8) + (UINT16)(*((p_req) + 1))); (p_req) += 2;};

    if (max_list_len > (p_ccb->rem_mtu_size - 10)) {
        max_list_len = p_ccb->rem_mtu_size - 10;
    }

    p_req = sdpu_extract_attr_seq (p_req, param_len, &attr_seq);

    if ((!p_req) || (!attr_seq.num_attr)) {
        sdpu_build_n_send_error (p_ccb, trans_num, 0x0003, 
# 582 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 3 4
                                                                          ((void *)0)
# 582 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
                                                                                                );
        return;
    }

    memcpy(&attr_seq_sav, &attr_seq, sizeof(tSDP_ATTR_SEQ)) ;


    if (*p_req) {

        if (p_ccb->rsp_list) {
            free((p_ccb->rsp_list));
        }

        p_ccb->rsp_list = (UINT8 *)malloc((max_list_len));
        if (p_ccb->rsp_list == 
# 596 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 3 4
                              ((void *)0)
# 596 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
                                  ) {
            {if (sdp_cb.trace_level >= 1 && (((2) > (3) ? (2) : (3)) >= 1)) {esp_log_write(ESP_LOG_ERROR, "BT_SDP", "\033[0;" "31" "m" "E" " (%d) %s: " "SDP - no scratch buf for search rsp\n" "\033[0m" "\n", esp_log_timestamp(), "BT_SDP"); };};
            return;
        }

        if (*p_req++ != 2) {
            sdpu_build_n_send_error (p_ccb, trans_num, 0x0005, 
# 602 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 3 4
                                                                              ((void *)0)
# 602 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
                                                                                                   );
            return;
        }
        {cont_offset = (UINT16)(((UINT16)(*(p_req)) << 8) + (UINT16)(*((p_req) + 1))); (p_req) += 2;};

        if (cont_offset != p_ccb->cont_offset) {
            sdpu_build_n_send_error (p_ccb, trans_num, 0x0005, 
# 608 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 3 4
                                                                              ((void *)0)
# 608 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
                                                                                                   );
            return;
        }

        if (!p_ccb->rsp_list) {
            sdpu_build_n_send_error (p_ccb, trans_num, 0x0006, 
# 613 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 3 4
                                                                        ((void *)0)
# 613 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
                                                                            );
            return;
        }
        is_cont = 
# 616 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 3 4
                 1
# 616 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
                     ;


        p_rsp = &p_ccb->rsp_list[0];
        attr_seq.attr_entry[p_ccb->cont_info.next_attr_index].start = p_ccb->cont_info.next_attr_start_id;
    } else {


        if (p_ccb->rsp_list) {
            free((p_ccb->rsp_list));
        }

        p_ccb->rsp_list = (UINT8 *)malloc((max_list_len));
        if (p_ccb->rsp_list == 
# 629 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 3 4
                              ((void *)0)
# 629 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
                                  ) {
            {if (sdp_cb.trace_level >= 1 && (((2) > (3) ? (2) : (3)) >= 1)) {esp_log_write(ESP_LOG_ERROR, "BT_SDP", "\033[0;" "31" "m" "E" " (%d) %s: " "SDP - no scratch buf for search rsp\n" "\033[0m" "\n", esp_log_timestamp(), "BT_SDP"); };};
            return;
        }

        p_ccb->cont_offset = 0;
        p_rsp = &p_ccb->rsp_list[3];


        p_ccb->cont_info.prev_sdp_rec = 
# 638 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 3 4
                                       ((void *)0)
# 638 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
                                           ;
        p_ccb->cont_info.next_attr_index = 0;
        p_ccb->cont_info.last_attr_seq_desc_sent = 
# 640 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 3 4
                                                  0
# 640 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
                                                       ;
        p_ccb->cont_info.attr_offset = 0;
    }


    for (p_rec = sdp_db_service_search (p_ccb->cont_info.prev_sdp_rec, &uid_seq); p_rec; p_rec = sdp_db_service_search (p_rec, &uid_seq)) {

        p_seq_start = p_rsp;
        if (p_ccb->cont_info.last_attr_seq_desc_sent == 
# 648 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 3 4
                                                       0
# 648 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
                                                            ) {

            rem_len = max_list_len - (INT16) (p_rsp - &p_ccb->rsp_list[0]);
            if (rem_len < 3) {

                p_ccb->cont_info.next_attr_index = 0;
                p_ccb->cont_info.next_attr_start_id = attr_seq.attr_entry[0].start;
                break;
            }
            p_rsp += 3;
        }


        for (xx = p_ccb->cont_info.next_attr_index; xx < attr_seq.num_attr; xx++) {
            p_attr = sdp_db_find_attr_in_rec (p_rec, attr_seq.attr_entry[xx].start, attr_seq.attr_entry[xx].end);

            if (p_attr) {

                rem_len = max_list_len - (INT16) (p_rsp - &p_ccb->rsp_list[0]);


                if (rem_len <= 0) {
                    p_ccb->cont_info.next_attr_index = xx;
                    p_ccb->cont_info.next_attr_start_id = p_attr->id;
                    maxxed_out = 
# 672 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 3 4
                                1
# 672 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
                                    ;
                    break;
                }

                attr_len = sdpu_get_attrib_entry_len(p_attr);

                if (p_ccb->cont_info.attr_offset) {
                    p_rsp = sdpu_build_partial_attrib_entry (p_rsp, p_attr, rem_len,
                            &p_ccb->cont_info.attr_offset);


                    if (p_ccb->cont_info.attr_offset != attr_len) {
                        maxxed_out = 
# 684 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 3 4
                                    1
# 684 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
                                        ;
                        break;
                    } else {
                        p_ccb->cont_info.attr_offset = 0;
                    }
                } else if (rem_len < attr_len) {
                    if (attr_len >= 400) {
                        {if (sdp_cb.trace_level >= 1 && (((2) > (3) ? (2) : (3)) >= 1)) {esp_log_write(ESP_LOG_ERROR, "BT_SDP", "\033[0;" "31" "m" "E" " (%d) %s: " "SDP attr too big: max_list_len=%d,attr_len=%d\n" "\033[0m" "\n", esp_log_timestamp(), "BT_SDP", max_list_len, attr_len); };};
                        sdpu_build_n_send_error (p_ccb, trans_num, 0x0006, 
# 692 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 3 4
                                                                                    ((void *)0)
# 692 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
                                                                                        );
                        return;
                    }


                    p_rsp = sdpu_build_partial_attrib_entry (p_rsp, p_attr, (UINT16)rem_len,
                            &p_ccb->cont_info.attr_offset);

                    p_ccb->cont_info.next_attr_index = xx;
                    p_ccb->cont_info.next_attr_start_id = p_attr->id;
                    maxxed_out = 
# 702 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 3 4
                                1
# 702 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
                                    ;
                    break;
                } else {
                    p_rsp = sdpu_build_attrib_entry (p_rsp, p_attr);
                }


                if (attr_seq.attr_entry[xx].start != attr_seq.attr_entry[xx].end) {

                    attr_seq.attr_entry[xx].start = p_attr->id + 1;

                    xx--;
                }
            }
        }


        if (p_ccb->cont_info.last_attr_seq_desc_sent == 
# 719 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 3 4
                                                       0
# 719 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
                                                            ) {
            seq_len = sdpu_get_attrib_seq_len(p_rec, &attr_seq_sav);
            if (seq_len != 0) {
                {*(p_seq_start)++ = (UINT8)((6 << 3) | 6);};
                {*(p_seq_start)++ = (UINT8)((seq_len) >> 8); *(p_seq_start)++ = (UINT8)(seq_len);};

                if (maxxed_out) {
                    p_ccb->cont_info.last_attr_seq_desc_sent = 
# 726 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 3 4
                                                              1
# 726 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
                                                                  ;
                }
            } else {
                p_rsp = p_seq_start;
            }
        }

        if (maxxed_out) {
            break;
        }


        memcpy(&attr_seq, &attr_seq_sav, sizeof(tSDP_ATTR_SEQ)) ;


        p_ccb->cont_info.next_attr_index = 0;
        p_ccb->cont_info.prev_sdp_rec = p_rec;
        p_ccb->cont_info.last_attr_seq_desc_sent = 
# 743 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 3 4
                                                  0
# 743 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
                                                       ;
    }


    len_to_send = (UINT16) (p_rsp - &p_ccb->rsp_list[0]);
    cont_offset = 0;
# 766 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
    if (is_cont && len_to_send == 0) {
        sdpu_build_n_send_error(p_ccb, trans_num, 0x0005, 
# 767 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 3 4
                                                                         ((void *)0)
# 767 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
                                                                             );
        return;
    }


    if (!is_cont) {

        p_ccb->list_len = sdpu_get_list_len(&uid_seq, &attr_seq_sav) + 3;

        if (p_ccb->list_len > 255) {
            p_ccb->rsp_list[0] = (UINT8) ((6 << 3) | 6);
            p_ccb->rsp_list[1] = (UINT8) ((p_ccb->list_len - 3) >> 8);
            p_ccb->rsp_list[2] = (UINT8) (p_ccb->list_len - 3);
        } else {
            cont_offset = 1;

            p_ccb->rsp_list[1] = (UINT8) ((6 << 3) | 5);
            p_ccb->rsp_list[2] = (UINT8) (p_ccb->list_len - 3);

            p_ccb->list_len--;
            len_to_send--;
        }
    }


    if ((p_buf = (BT_HDR *)malloc(((4096 + 16)))) == 
# 792 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 3 4
                                                            ((void *)0)
# 792 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
                                                                ) {
        {if (sdp_cb.trace_level >= 1 && (((2) > (3) ? (2) : (3)) >= 1)) {esp_log_write(ESP_LOG_ERROR, "BT_SDP", "\033[0;" "31" "m" "E" " (%d) %s: " "SDP - no buf for search rsp\n" "\033[0m" "\n", esp_log_timestamp(), "BT_SDP"); };};
        return;
    }
    p_buf->offset = 13;
    p_rsp = p_rsp_start = (UINT8 *)(p_buf + 1) + 13;


    {*(p_rsp)++ = (UINT8)(0x07);};
    {*(p_rsp)++ = (UINT8)((trans_num) >> 8); *(p_rsp)++ = (UINT8)(trans_num);};


    p_rsp_param_len = p_rsp;
    p_rsp += 2;


    {*(p_rsp)++ = (UINT8)((len_to_send) >> 8); *(p_rsp)++ = (UINT8)(len_to_send);};


    memcpy (p_rsp, &p_ccb->rsp_list[cont_offset], len_to_send);
    p_rsp += len_to_send;

    p_ccb->cont_offset += len_to_send;


    if (p_ccb->cont_offset < p_ccb->list_len) {
        is_cont = 
# 818 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c" 3 4
                 1
# 818 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/sdp_server.c"
                     ;

        {*(p_rsp)++ = (UINT8)(2);};
        {*(p_rsp)++ = (UINT8)((p_ccb->cont_offset) >> 8); *(p_rsp)++ = (UINT8)(p_ccb->cont_offset);};
    } else {
        {*(p_rsp)++ = (UINT8)(0);};
    }


    rsp_param_len = p_rsp - p_rsp_param_len - 2;
    {*(p_rsp_param_len)++ = (UINT8)((rsp_param_len) >> 8); *(p_rsp_param_len)++ = (UINT8)(rsp_param_len);};


    p_buf->len = p_rsp - p_rsp_start;



    L2CA_DataWrite (p_ccb->connection_id, p_buf);
}
