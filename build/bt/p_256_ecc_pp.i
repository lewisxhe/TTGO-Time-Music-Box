# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/smp/p_256_ecc_pp.c"
# 1 "D:\\ESP32\\esp-idf-v3.1-rc1\\ESP32_PIC_A2DP\\build\\bt//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/smp/p_256_ecc_pp.c"
# 26 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/smp/p_256_ecc_pp.c"
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


# 27 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/smp/p_256_ecc_pp.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/smp/include/p_256_ecc_pp.h" 1
# 25 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/smp/include/p_256_ecc_pp.h"
       

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/smp/include/p_256_multprecision.h" 1
# 24 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/smp/include/p_256_multprecision.h"
       

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
# 27 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/smp/include/p_256_multprecision.h" 2


typedef unsigned long DWORD;
# 39 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/smp/include/p_256_multprecision.h"
int multiprecision_compare(DWORD *a, DWORD *b, uint32_t keyLength);
int multiprecision_iszero(DWORD *a, uint32_t keyLength);
void multiprecision_init(DWORD *c, uint32_t keyLength);
void multiprecision_copy(DWORD *c, DWORD *a, uint32_t keyLength);
UINT32 multiprecision_dword_bits (DWORD a);
UINT32 multiprecision_most_signdwords(DWORD *a, uint32_t keyLength);
UINT32 multiprecision_most_signbits(DWORD *a, uint32_t keyLength);
void multiprecision_inv_mod(DWORD *aminus, DWORD *a, uint32_t keyLength);
DWORD multiprecision_add(DWORD *c, DWORD *a, DWORD *b, uint32_t keyLength);
void multiprecision_add_mod(DWORD *c, DWORD *a, DWORD *b, uint32_t keyLength);
DWORD multiprecision_sub(DWORD *c, DWORD *a, DWORD *b, uint32_t keyLength);
void multiprecision_sub_mod(DWORD *c, DWORD *a, DWORD *b, uint32_t keyLength);
void multiprecision_rshift(DWORD *c, DWORD *a, uint32_t keyLength);
void multiprecision_lshift_mod(DWORD *c, DWORD *a, uint32_t keyLength);
DWORD multiprecision_lshift(DWORD *c, DWORD *a, uint32_t keyLength);
void multiprecision_mult(DWORD *c, DWORD *a, DWORD *b, uint32_t keyLength);
void multiprecision_mersenns_mult_mod(DWORD *c, DWORD *a, DWORD *b, uint32_t keyLength);
void multiprecision_mersenns_squa_mod(DWORD *c, DWORD *a, uint32_t keyLength);
DWORD multiprecision_lshift(DWORD *c, DWORD *a, uint32_t keyLength);
void multiprecision_mult(DWORD *c, DWORD *a, DWORD *b, uint32_t keyLength);
void multiprecision_fast_mod(DWORD *c, DWORD *a);
void multiprecision_fast_mod_P256(DWORD *c, DWORD *a);
# 28 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/smp/include/p_256_ecc_pp.h" 2

typedef unsigned long DWORD;

typedef struct {
    DWORD x[8];
    DWORD y[8];
    DWORD z[8];
} Point;

typedef struct {

    DWORD a[8];
    DWORD b[8];


    int a_minus3;


    DWORD p[8];


    DWORD omega[8];


    Point G;

} elliptic_curve_t;

extern elliptic_curve_t curve;
extern elliptic_curve_t curve_p256;

void ECC_PointMult_Bin_NAF(Point *q, Point *p, DWORD *n, uint32_t keyLength);


# 61 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/smp/include/p_256_ecc_pp.h" 3 4
_Bool 
# 61 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/smp/include/p_256_ecc_pp.h"
    ECC_CheckPointIsInElliCur_P256(Point *p);



void p_256_init_curve(UINT32 keyLength);
# 28 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/smp/p_256_ecc_pp.c" 2


elliptic_curve_t curve;
elliptic_curve_t curve_p256;

static void p_256_init_point(Point *q)
{
    memset(q, 0, sizeof(Point));
}

static void p_256_copy_point(Point *q, Point *p)
{
    memcpy(q, p, sizeof(Point));
}


static void ECC_Double(Point *q, Point *p, uint32_t keyLength)
{
    DWORD t1[8];
    DWORD t2[8];
    DWORD t3[8];
    DWORD *x1;
    DWORD *x3;
    DWORD *y1;
    DWORD *y3;
    DWORD *z1;
    DWORD *z3;

    if (multiprecision_iszero(p->z, keyLength)) {
        multiprecision_init(q->z, keyLength);
        return;
    }

    x1 = p->x; y1 = p->y; z1 = p->z;
    x3 = q->x; y3 = q->y; z3 = q->z;

    multiprecision_mersenns_squa_mod(t1, z1, keyLength);
    multiprecision_sub_mod(t2, x1, t1, keyLength);
    multiprecision_add_mod(t1, x1, t1, keyLength);
    multiprecision_mersenns_mult_mod(t2, t1, t2, keyLength);
    multiprecision_lshift_mod(t3, t2, keyLength);
    multiprecision_add_mod(t2, t3, t2, keyLength);

    multiprecision_mersenns_mult_mod(z3, y1, z1, keyLength);
    multiprecision_lshift_mod(z3, z3, keyLength);

    multiprecision_mersenns_squa_mod(y3, y1, keyLength);
    multiprecision_lshift_mod(y3, y3, keyLength);
    multiprecision_mersenns_mult_mod(t3, y3, x1, keyLength);
    multiprecision_lshift_mod(t3, t3, keyLength);
    multiprecision_mersenns_squa_mod(y3, y3, keyLength);
    multiprecision_lshift_mod(y3, y3, keyLength);

    multiprecision_mersenns_squa_mod(x3, t2, keyLength);
    multiprecision_lshift_mod(t1, t3, keyLength);
    multiprecision_sub_mod(x3, x3, t1, keyLength);
    multiprecision_sub_mod(t1, t3, x3, keyLength);
    multiprecision_mersenns_mult_mod(t1, t1, t2, keyLength);
    multiprecision_sub_mod(y3, t1, y3, keyLength);
}


static void ECC_Add(Point *r, Point *p, Point *q, uint32_t keyLength)
{
    DWORD t1[8];
    DWORD t2[8];
    DWORD *x1;
    DWORD *x2;
    DWORD *x3;
    DWORD *y1;
    DWORD *y2;
    DWORD *y3;
    DWORD *z1;
    DWORD *z2;
    DWORD *z3;

    x1 = p->x; y1 = p->y; z1 = p->z;
    x2 = q->x; y2 = q->y; z2 = q->z;
    x3 = r->x; y3 = r->y; z3 = r->z;


    if (multiprecision_iszero(z2, keyLength)) {
        p_256_copy_point(r, p);
        return;
    }


    if (multiprecision_iszero(z1, keyLength)) {
        p_256_copy_point(r, q);
        return;
    }

    multiprecision_mersenns_squa_mod(t1, z1, keyLength);
    multiprecision_mersenns_mult_mod(t2, z1, t1, keyLength);
    multiprecision_mersenns_mult_mod(t1, x2, t1, keyLength);
    multiprecision_mersenns_mult_mod(t2, y2, t2, keyLength);

    multiprecision_sub_mod(t1, t1, x1, keyLength);
    multiprecision_sub_mod(t2, t2, y1, keyLength);

    if (multiprecision_iszero(t1, keyLength)) {
        if (multiprecision_iszero(t2, keyLength)) {
            ECC_Double(r, q, keyLength) ;
            return;
        } else {
            multiprecision_init(z3, keyLength);
            return;
        }
    }

    multiprecision_mersenns_mult_mod(z3, z1, t1, keyLength);
    multiprecision_mersenns_squa_mod(y3, t1, keyLength);
    multiprecision_mersenns_mult_mod(z1, y3, t1, keyLength);
    multiprecision_mersenns_mult_mod(y3, y3, x1, keyLength);
    multiprecision_lshift_mod(t1, y3, keyLength);
    multiprecision_mersenns_squa_mod(x3, t2, keyLength);
    multiprecision_sub_mod(x3, x3, t1, keyLength);
    multiprecision_sub_mod(x3, x3, z1, keyLength);
    multiprecision_sub_mod(y3, y3, x3, keyLength);
    multiprecision_mersenns_mult_mod(y3, y3, t2, keyLength);
    multiprecision_mersenns_mult_mod(z1, z1, y1, keyLength);
    multiprecision_sub_mod(y3, y3, z1, keyLength);
}


static void ECC_NAF(uint8_t *naf, uint32_t *NumNAF, DWORD *k, uint32_t keyLength)
{
    uint32_t sign;
    int i = 0;
    int j;
    uint32_t var;

    while ((var = multiprecision_most_signbits(k, keyLength)) >= 1) {
        if (k[0] & 0x01) {
            sign = (k[0] & 0x03);


            if (sign == 1) {
                k[0] = k[0] & 0xFFFFFFFE;
            } else {
                k[0] = k[0] + 1;
                if (k[0] == 0) {
                    j = 1;
                    do {
                        k[j]++;
                    } while (k[j++] == 0);
                }
            }
        } else {
            sign = 0;
        }

        multiprecision_rshift(k, k, keyLength);
        naf[i / 4] |= (sign) << ((i % 4) * 2);
        i++;
    }

    *NumNAF = i;
}


void ECC_PointMult_Bin_NAF(Point *q, Point *p, DWORD *n, uint32_t keyLength)
{
    uint32_t sign;
    UINT8 naf[256 / 4 + 1];
    uint32_t NumNaf;
    Point minus_p;
    Point r;
    DWORD *modp;

    if (keyLength == 8) {
        modp = curve_p256.p;
    } else {
        modp = curve.p;
    }

    p_256_init_point(&r);
    multiprecision_init(p->z, keyLength);
    p->z[0] = 1;


    p_256_init_point(q);


    multiprecision_copy(minus_p.x, p->x, keyLength);
    multiprecision_sub(minus_p.y, modp, p->y, keyLength);

    multiprecision_init(minus_p.z, keyLength);
    minus_p.z[0] = 1;


    memset(naf, 0, sizeof(naf));
    ECC_NAF(naf, &NumNaf, n, keyLength);

    for (int i = NumNaf - 1; i >= 0; i--) {
        p_256_copy_point(&r, q);
        ECC_Double(q, &r, keyLength);
        sign = (naf[i / 4] >> ((i % 4) * 2)) & 0x03;

        if (sign == 1) {
            p_256_copy_point(&r, q);
            ECC_Add(q, &r, p, keyLength);
        } else if (sign == 3) {
            p_256_copy_point(&r, q);
            ECC_Add(q, &r, &minus_p, keyLength);
        }
    }

    multiprecision_inv_mod(minus_p.x, q->z, keyLength);
    multiprecision_mersenns_squa_mod(q->z, minus_p.x, keyLength);
    multiprecision_mersenns_mult_mod(q->x, q->x, q->z, keyLength);
    multiprecision_mersenns_mult_mod(q->z, q->z, minus_p.x, keyLength);
    multiprecision_mersenns_mult_mod(q->y, q->y, q->z, keyLength);
}


# 243 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/smp/p_256_ecc_pp.c" 3 4
_Bool 
# 243 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/smp/p_256_ecc_pp.c"
    ECC_CheckPointIsInElliCur_P256(Point *p)
{

    DWORD y_y_q[8] = {0x0};

    DWORD x_x_q[8] = {0x0};

    DWORD x_q[8] = {0x0};


    DWORD x_x[2*8] = {0x0};

    multiprecision_mersenns_squa_mod(y_y_q, p->y, 8);

    multiprecision_mult(x_x, p->x, p->x, 8);



    x_x[0] -= 3;


    multiprecision_fast_mod_P256(x_x_q, x_x);

    multiprecision_mult(x_x, x_x_q, p->x, 8);

    multiprecision_fast_mod_P256(x_q, x_x);

    multiprecision_add_mod(x_x_q, x_q, curve_p256.b, 8);

    if (multiprecision_compare(y_y_q, x_x_q, 8)) {
        return 
# 273 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/smp/p_256_ecc_pp.c" 3 4
              0
# 273 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/smp/p_256_ecc_pp.c"
                   ;
    } else {
        return 
# 275 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/smp/p_256_ecc_pp.c" 3 4
              1
# 275 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/smp/p_256_ecc_pp.c"
                  ;
    }
}
