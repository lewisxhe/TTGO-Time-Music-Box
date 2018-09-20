# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c"
# 1 "D:\\ESP32\\esp-idf-v3.1-rc1\\ESP32_PIC_A2DP\\build\\bootloader_support//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c"
# 14 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c"
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


# 15 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c" 2
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
# 16 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/limits.h" 1
# 131 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/limits.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include-fixed\\limits.h" 1 3 4
# 132 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/limits.h" 2
# 17 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/param.h" 1
# 9 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/param.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/syslimits.h" 1
# 10 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/param.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/endian.h" 1
# 11 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/param.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/param.h" 1
# 12 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/param.h" 2
# 18 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_attr.h" 1
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h" 1
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdarg.h" 1 3 4
# 40 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdarg.h" 3 4

# 40 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 98 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdarg.h" 3 4
typedef __gnuc_va_list va_list;
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/ESP32_PIC_A2DP/build/include/sdkconfig.h" 1
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h" 1
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdbool.h" 1 3 4
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h" 2

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
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/cache.h" 1
# 18 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/cache.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/dport_access.h" 1
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/dport_access.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_dport_access.h" 1
# 15 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_dport_access.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/ESP32_PIC_A2DP/build/include/sdkconfig.h" 1
# 16 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_dport_access.h" 2
# 24 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_dport_access.h"
void esp_dport_access_stall_other_cpu_start(void);
void esp_dport_access_stall_other_cpu_end(void);
void esp_dport_access_int_init(void);
void esp_dport_access_int_pause(void);
void esp_dport_access_int_resume(void);
void esp_dport_access_read_buffer(uint32_t *buff_out, uint32_t address, uint32_t num_words);
uint32_t esp_dport_access_reg_read(uint32_t reg);
uint32_t esp_dport_access_sequence_reg_read(uint32_t reg);


void esp_dport_access_int_abort(void);
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/dport_access.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/soc.h" 1
# 22 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/dport_access.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/uart_reg.h" 1
# 23 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/dport_access.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/xtruntime.h" 1
# 29 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/xtruntime.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/config/core.h" 1
# 41 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/config/core.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/hal.h" 1
# 148 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/hal.h"
extern const unsigned int Xthal_rev_no;







extern void xthal_save_extra(void *base);
extern void xthal_restore_extra(void *base);

extern void xthal_save_cpregs(void *base, int);
extern void xthal_restore_cpregs(void *base, int);

extern void xthal_save_cp0(void *base);
extern void xthal_save_cp1(void *base);
extern void xthal_save_cp2(void *base);
extern void xthal_save_cp3(void *base);
extern void xthal_save_cp4(void *base);
extern void xthal_save_cp5(void *base);
extern void xthal_save_cp6(void *base);
extern void xthal_save_cp7(void *base);
extern void xthal_restore_cp0(void *base);
extern void xthal_restore_cp1(void *base);
extern void xthal_restore_cp2(void *base);
extern void xthal_restore_cp3(void *base);
extern void xthal_restore_cp4(void *base);
extern void xthal_restore_cp5(void *base);
extern void xthal_restore_cp6(void *base);
extern void xthal_restore_cp7(void *base);

extern void* Xthal_cpregs_save_fn[8];
extern void* Xthal_cpregs_restore_fn[8];

extern void* Xthal_cpregs_save_nw_fn[8];
extern void* Xthal_cpregs_restore_nw_fn[8];





extern const unsigned int Xthal_extra_size;
extern const unsigned int Xthal_extra_align;
extern const unsigned int Xthal_cpregs_size[8];
extern const unsigned int Xthal_cpregs_align[8];
extern const unsigned int Xthal_all_extra_size;
extern const unsigned int Xthal_all_extra_align;

extern const char * const Xthal_cp_names[8];







extern void xthal_init_mem_extra(void *);

extern void xthal_init_mem_cp(void *, int);


extern const unsigned int Xthal_num_coprocessors;


extern const unsigned char Xthal_cp_num;

extern const unsigned char Xthal_cp_max;



extern const unsigned int Xthal_cp_mask;
# 237 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/hal.h"
extern const unsigned int Xthal_num_aregs;
extern const unsigned char Xthal_num_aregs_log2;







extern const unsigned char Xthal_icache_linewidth;
extern const unsigned char Xthal_dcache_linewidth;

extern const unsigned short Xthal_icache_linesize;
extern const unsigned short Xthal_dcache_linesize;


extern const unsigned int Xthal_icache_size;
extern const unsigned int Xthal_dcache_size;

extern const unsigned char Xthal_dcache_is_writeback;



extern void xthal_icache_region_invalidate( void *addr, unsigned size );
extern void xthal_dcache_region_invalidate( void *addr, unsigned size );

extern void xthal_icache_line_invalidate(void *addr);
extern void xthal_dcache_line_invalidate(void *addr);


extern void xthal_dcache_region_writeback( void *addr, unsigned size );

extern void xthal_dcache_line_writeback(void *addr);


extern void xthal_dcache_region_writeback_inv( void *addr, unsigned size );

extern void xthal_dcache_line_writeback_inv(void *addr);

extern void xthal_icache_sync( void );

extern void xthal_dcache_sync( void );



extern unsigned int xthal_icache_get_ways(void);

extern void xthal_icache_set_ways(unsigned int ways);

extern unsigned int xthal_dcache_get_ways(void);

extern void xthal_dcache_set_ways(unsigned int ways);


extern void xthal_cache_coherence_on( void );
extern void xthal_cache_coherence_off( void );

extern void xthal_cache_coherence_optin( void );
extern void xthal_cache_coherence_optout( void );
# 339 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/hal.h"
extern int xthal_get_cache_prefetch( void );
extern int xthal_set_cache_prefetch( int );
extern int xthal_set_cache_prefetch_long( unsigned long long );
# 352 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/hal.h"
extern const int Xthal_debug_configured;


extern unsigned int xthal_set_soft_break(void *addr);
extern void xthal_remove_soft_break(void *addr, unsigned int);
# 374 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/hal.h"
extern int xthal_disassemble( unsigned char *instr_buf, void *tgt_addr,
         char *buffer, unsigned buflen, unsigned options );



extern int xthal_disassemble_size( unsigned char *instr_buf );






extern void* xthal_memcpy(void *dst, const void *src, unsigned len);
extern void* xthal_bcopy(const void *src, void *dst, unsigned len);






extern int xthal_compare_and_set( int *addr, int test_val, int compare_val );
# 403 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/hal.h"
extern const unsigned int Xthal_release_major;
extern const unsigned int Xthal_release_minor;
extern const char * const Xthal_release_name;
extern const char * const Xthal_release_internal;

extern const unsigned char Xthal_memory_order;
extern const unsigned char Xthal_have_windowed;
extern const unsigned char Xthal_have_density;
extern const unsigned char Xthal_have_booleans;
extern const unsigned char Xthal_have_loops;
extern const unsigned char Xthal_have_nsa;
extern const unsigned char Xthal_have_minmax;
extern const unsigned char Xthal_have_sext;
extern const unsigned char Xthal_have_clamps;
extern const unsigned char Xthal_have_mac16;
extern const unsigned char Xthal_have_mul16;
extern const unsigned char Xthal_have_fp;
extern const unsigned char Xthal_have_speculation;
extern const unsigned char Xthal_have_threadptr;

extern const unsigned char Xthal_have_pif;
extern const unsigned short Xthal_num_writebuffer_entries;

extern const unsigned int Xthal_build_unique_id;

extern const unsigned int Xthal_hw_configid0;
extern const unsigned int Xthal_hw_configid1;
extern const unsigned int Xthal_hw_release_major;
extern const unsigned int Xthal_hw_release_minor;
extern const char * const Xthal_hw_release_name;
extern const char * const Xthal_hw_release_internal;


extern void xthal_clear_regcached_code( void );
# 653 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/hal.h"
extern void xthal_window_spill( void );







extern void xthal_validate_cp(int);
extern void xthal_invalidate_cp(int);


extern void xthal_set_cpenable(unsigned);
extern unsigned xthal_get_cpenable(void);







extern const unsigned char Xthal_num_intlevels;

extern const unsigned char Xthal_num_interrupts;

extern const unsigned char Xthal_excm_level;


extern const unsigned int Xthal_intlevel_mask[16];

extern const unsigned int Xthal_intlevel_andbelow_mask[16];


extern const unsigned char Xthal_intlevel[32];


extern const unsigned char Xthal_inttype[32];


extern const unsigned int Xthal_inttype_mask[8];


extern const int Xthal_timer_interrupt[4];


extern unsigned xthal_get_intenable( void );
extern void xthal_set_intenable( unsigned );
extern unsigned xthal_get_interrupt( void );

extern void xthal_set_intset( unsigned );
extern void xthal_set_intclear( unsigned );







extern const int Xthal_num_ibreak;
extern const int Xthal_num_dbreak;







extern const unsigned char Xthal_have_ccount;
extern const unsigned char Xthal_num_ccompare;


extern unsigned xthal_get_ccount(void);


extern void xthal_set_ccompare(int, unsigned);
extern unsigned xthal_get_ccompare(int);






extern const unsigned char Xthal_have_prid;
extern const unsigned char Xthal_have_exceptions;
extern const unsigned char Xthal_xea_version;
extern const unsigned char Xthal_have_interrupts;
extern const unsigned char Xthal_have_highlevel_interrupts;
extern const unsigned char Xthal_have_nmi;

extern unsigned xthal_get_prid( void );







extern unsigned xthal_vpri_to_intlevel(unsigned vpri);
extern unsigned xthal_intlevel_to_vpri(unsigned intlevel);


extern unsigned xthal_int_enable(unsigned);
extern unsigned xthal_int_disable(unsigned);


extern int xthal_set_int_vpri(int intnum, int vpri);
extern int xthal_get_int_vpri(int intnum);


extern void xthal_set_vpri_locklevel(unsigned intlevel);
extern unsigned xthal_get_vpri_locklevel(void);


extern unsigned xthal_set_vpri(unsigned vpri);
extern unsigned xthal_get_vpri(void);
extern unsigned xthal_set_vpri_intlevel(unsigned intlevel);
extern unsigned xthal_set_vpri_lock(void);






typedef void (XtHalVoidFunc)(void);


extern unsigned Xthal_tram_pending;
# 789 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/hal.h"
extern unsigned Xthal_tram_enabled;


extern unsigned Xthal_tram_sync;


extern unsigned xthal_tram_pending_to_service( void );
extern void xthal_tram_done( unsigned serviced_mask );
extern int xthal_tram_set_sync( int intnum, int sync );
extern XtHalVoidFunc* xthal_set_tram_trigger_func( XtHalVoidFunc *trigger_fn );






extern const unsigned char Xthal_num_instrom;
extern const unsigned char Xthal_num_instram;
extern const unsigned char Xthal_num_datarom;
extern const unsigned char Xthal_num_dataram;
extern const unsigned char Xthal_num_xlmi;



extern const unsigned int Xthal_instrom_vaddr[];
extern const unsigned int Xthal_instrom_paddr[];
extern const unsigned int Xthal_instrom_size [];
extern const unsigned int Xthal_instram_vaddr[];
extern const unsigned int Xthal_instram_paddr[];
extern const unsigned int Xthal_instram_size [];
extern const unsigned int Xthal_datarom_vaddr[];
extern const unsigned int Xthal_datarom_paddr[];
extern const unsigned int Xthal_datarom_size [];
extern const unsigned int Xthal_dataram_vaddr[];
extern const unsigned int Xthal_dataram_paddr[];
extern const unsigned int Xthal_dataram_size [];
extern const unsigned int Xthal_xlmi_vaddr[];
extern const unsigned int Xthal_xlmi_paddr[];
extern const unsigned int Xthal_xlmi_size [];







extern const unsigned char Xthal_icache_setwidth;
extern const unsigned char Xthal_dcache_setwidth;

extern const unsigned int Xthal_icache_ways;
extern const unsigned int Xthal_dcache_ways;

extern const unsigned char Xthal_icache_line_lockable;
extern const unsigned char Xthal_dcache_line_lockable;


extern unsigned xthal_get_cacheattr( void );
extern unsigned xthal_get_icacheattr( void );
extern unsigned xthal_get_dcacheattr( void );
extern void xthal_set_cacheattr( unsigned );
extern void xthal_set_icacheattr( unsigned );
extern void xthal_set_dcacheattr( unsigned );

extern int xthal_set_region_attribute( void *addr, unsigned size,
         unsigned cattr, unsigned flags );
# 862 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/hal.h"
extern void xthal_icache_enable( void );
extern void xthal_dcache_enable( void );

extern void xthal_icache_disable( void );
extern void xthal_dcache_disable( void );


extern void xthal_icache_all_invalidate( void );
extern void xthal_dcache_all_invalidate( void );

extern void xthal_dcache_all_writeback( void );

extern void xthal_dcache_all_writeback_inv( void );

extern void xthal_icache_region_lock( void *addr, unsigned size );
extern void xthal_dcache_region_lock( void *addr, unsigned size );

extern void xthal_icache_line_lock(void *addr);
extern void xthal_dcache_line_lock(void *addr);


extern void xthal_icache_all_unlock( void );
extern void xthal_dcache_all_unlock( void );
extern void xthal_icache_region_unlock( void *addr, unsigned size );
extern void xthal_dcache_region_unlock( void *addr, unsigned size );

extern void xthal_icache_line_unlock(void *addr);
extern void xthal_dcache_line_unlock(void *addr);
# 899 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/hal.h"
extern void xthal_memep_inject_error(void *addr, int size, int flags);







extern const unsigned char Xthal_have_spanning_way;
extern const unsigned char Xthal_have_identity_map;
extern const unsigned char Xthal_have_mimic_cacheattr;
extern const unsigned char Xthal_have_xlt_cacheattr;
extern const unsigned char Xthal_have_cacheattr;
extern const unsigned char Xthal_have_tlbs;

extern const unsigned char Xthal_mmu_asid_bits;
extern const unsigned char Xthal_mmu_asid_kernel;
extern const unsigned char Xthal_mmu_rings;
extern const unsigned char Xthal_mmu_ring_bits;
extern const unsigned char Xthal_mmu_sr_bits;
extern const unsigned char Xthal_mmu_ca_bits;
extern const unsigned int Xthal_mmu_max_pte_page_size;
extern const unsigned int Xthal_mmu_min_pte_page_size;

extern const unsigned char Xthal_itlb_way_bits;
extern const unsigned char Xthal_itlb_ways;
extern const unsigned char Xthal_itlb_arf_ways;
extern const unsigned char Xthal_dtlb_way_bits;
extern const unsigned char Xthal_dtlb_ways;
extern const unsigned char Xthal_dtlb_arf_ways;



extern int xthal_static_v2p( unsigned vaddr, unsigned *paddrp );
extern int xthal_static_p2v( unsigned paddr, unsigned *vaddrp, unsigned cached );
# 948 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/hal.h"
extern int xthal_set_region_translation(void* vaddr, void* paddr, unsigned size, unsigned cache_atr, unsigned flags);
extern int xthal_v2p(void*, void**, unsigned*, unsigned*);
extern int xthal_invalidate_region(void* addr);
extern int xthal_set_region_translation_raw(void *vaddr, void *paddr, unsigned cattr);
# 42 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/config/core.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/xtensa-versions.h" 1
# 43 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/config/core.h" 2
# 51 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/config/core.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/config/core-matmap.h" 1
# 52 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/config/core.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/config/tie.h" 1
# 53 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/config/core.h" 2
# 1279 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/config/core.h"
extern const unsigned char Xthal_cp_id_FPU;
extern const unsigned int Xthal_cp_mask_FPU;


extern const unsigned char Xthal_cp_id_XCHAL_CP1_IDENT;
extern const unsigned int Xthal_cp_mask_XCHAL_CP1_IDENT;


extern const unsigned char Xthal_cp_id_XCHAL_CP2_IDENT;
extern const unsigned int Xthal_cp_mask_XCHAL_CP2_IDENT;


extern const unsigned char Xthal_cp_id_XCHAL_CP3_IDENT;
extern const unsigned int Xthal_cp_mask_XCHAL_CP3_IDENT;


extern const unsigned char Xthal_cp_id_XCHAL_CP4_IDENT;
extern const unsigned int Xthal_cp_mask_XCHAL_CP4_IDENT;


extern const unsigned char Xthal_cp_id_XCHAL_CP5_IDENT;
extern const unsigned int Xthal_cp_mask_XCHAL_CP5_IDENT;


extern const unsigned char Xthal_cp_id_XCHAL_CP6_IDENT;
extern const unsigned int Xthal_cp_mask_XCHAL_CP6_IDENT;


extern const unsigned char Xthal_cp_id_XCHAL_CP7_IDENT;
extern const unsigned int Xthal_cp_mask_XCHAL_CP7_IDENT;
# 30 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/xtruntime.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/config/specreg.h" 1
# 32 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/config/specreg.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/corebits.h" 1
# 33 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/config/specreg.h" 2
# 31 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/xtruntime.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/xtruntime-core-state.h" 1
# 31 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/xtruntime-core-state.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/xtruntime-frames.h" 1
# 56 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/xtruntime-frames.h"
typedef struct {
long pc;
long ps;
long areg[4];
long sar;

long lcount;
long lbeg;
long lend;


long acclo;
long acchi;
long mr[4];

} KernelFrame;
# 80 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/xtruntime-frames.h"
typedef struct {
long pc;
long ps;
long sar;
long vpri;



long a2;
long a3;
long a4;
long a5;
# 104 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/xtruntime-frames.h"
long exccause;

long lcount;
long lbeg;
long lend;


long acclo;
long acchi;
long mr[4];
# 123 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/xtruntime-frames.h"
long pad[((3 + 1*1 + 1*2 + 0*1) & 3)];


} UserFrame;
# 32 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/xtruntime-core-state.h" 2
# 44 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/xtruntime-core-state.h"
typedef struct {
long signature;
long restore_label;
long aftersave_label;
long areg[64];

long caller_regs[16];
long caller_regs_saved;





long windowbase;
long windowstart;

long sar;

long epc1;
long ps;
long excsave1;

long depc;



long epc[6 + 1 - 1];
long eps[6 + 1 - 1];
long excsave[6 + 1 - 1];


long lcount;
long lbeg;
long lend;





long vecbase;


long atomctl;





long memctl;


long ccount;
long ccompare[3];


long intenable;
long interrupt;


long icount;
long icountlevel;
long debugcause;


long dbreakc[2];
long dbreaka[2];


long ibreaka[2];
long ibreakenable;



long misc[4];
# 131 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/xtruntime-core-state.h"
long cpenable;




long tlbs[8*2];
# 163 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/xtruntime-core-state.h"
char ncp[48] __attribute__((aligned(4)));

char cp0[72] __attribute__((aligned(4)));
char cp1[0] __attribute__((aligned(1)));
char cp2[0] __attribute__((aligned(1)));
char cp3[0] __attribute__((aligned(1)));
char cp4[0] __attribute__((aligned(1)));
char cp5[0] __attribute__((aligned(1)));
char cp6[0] __attribute__((aligned(1)));
char cp7[0] __attribute__((aligned(1)));
# 183 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/xtruntime-core-state.h"
} XtosCoreState;
# 32 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/xtruntime.h" 2
# 61 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/xtruntime.h"
typedef void (_xtos_handler_func)();

typedef _xtos_handler_func *_xtos_handler;
# 151 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/xtruntime.h"
extern unsigned int _xtos_ints_off( unsigned int mask );
extern unsigned int _xtos_ints_on( unsigned int mask );
extern unsigned _xtos_set_intlevel( int intlevel );
extern unsigned _xtos_set_min_intlevel( int intlevel );
extern unsigned _xtos_restore_intlevel( unsigned restoreval );
extern unsigned _xtos_restore_just_intlevel( unsigned restoreval );
extern _xtos_handler _xtos_set_interrupt_handler( int n, _xtos_handler f );
extern _xtos_handler _xtos_set_interrupt_handler_arg( int n, _xtos_handler f, void *arg );
extern _xtos_handler _xtos_set_exception_handler( int n, _xtos_handler f );

extern void _xtos_memep_initrams( void );
extern void _xtos_memep_enable( int flags );



extern void _xtos_dispatch_level1_interrupts( void );


extern void _xtos_dispatch_level2_interrupts( void );


extern void _xtos_dispatch_level3_interrupts( void );


extern void _xtos_dispatch_level4_interrupts( void );


extern void _xtos_dispatch_level5_interrupts( void );


extern void _xtos_dispatch_level6_interrupts( void );



extern unsigned int _xtos_read_ints( void );
extern void _xtos_clear_ints( unsigned int mask );



extern int _xtos_core_shutoff(unsigned flags);
extern int _xtos_core_save(unsigned flags, XtosCoreState *savearea, void *code);
extern void _xtos_core_restore(unsigned retvalue, XtosCoreState *savearea);
# 202 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/xtruntime.h"
extern void _xtos_timer_0_delta( int cycles );


extern void _xtos_timer_1_delta( int cycles );


extern void _xtos_timer_2_delta( int cycles );
# 24 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/dport_access.h" 2
# 74 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/dport_access.h"
static inline uint32_t __attribute__((section(".iram1"))) DPORT_REG_READ(uint32_t reg)
{



    return esp_dport_access_reg_read(reg);

}
# 107 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/dport_access.h"
static inline uint32_t __attribute__((section(".iram1"))) DPORT_SEQUENCE_REG_READ(uint32_t reg)
{



    return esp_dport_access_sequence_reg_read(reg);

}
# 167 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/dport_access.h"
static inline uint32_t __attribute__((section(".iram1"))) DPORT_READ_PERI_REG(uint32_t reg)
{



    return esp_dport_access_reg_read(reg);

}
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/cache.h" 2
# 40 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/cache.h"
void mmu_init(int cpu_no);
# 69 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/cache.h"
static inline unsigned int __attribute__((section(".iram1"))) cache_flash_mmu_set(int cpu_no, int pid, unsigned int vaddr, unsigned int paddr, int psize, int num)
{
    extern unsigned int cache_flash_mmu_set_rom(int cpu_no, int pid, unsigned int vaddr, unsigned int paddr, int psize, int num);

    unsigned int ret;

    esp_dport_access_stall_other_cpu_start();
    ret = cache_flash_mmu_set_rom(cpu_no, pid, vaddr, paddr, psize, num);
    esp_dport_access_stall_other_cpu_end();

    return ret;
}
# 109 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/cache.h"
static inline unsigned int __attribute__((section(".iram1"))) cache_sram_mmu_set(int cpu_no, int pid, unsigned int vaddr, unsigned int paddr, int psize, int num)
{
    extern unsigned int cache_sram_mmu_set_rom(int cpu_no, int pid, unsigned int vaddr, unsigned int paddr, int psize, int num);

    unsigned int ret;

    esp_dport_access_stall_other_cpu_start();
    ret = cache_sram_mmu_set_rom(cpu_no, pid, vaddr, paddr, psize, num);
    esp_dport_access_stall_other_cpu_end();

    return ret;
}
# 130 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/cache.h"
static inline void __attribute__((section(".iram1"))) Cache_Read_Init(int cpu_no)
{
    extern void Cache_Read_Init_rom(int cpu_no);
    esp_dport_access_stall_other_cpu_start();
    Cache_Read_Init_rom(cpu_no);
    esp_dport_access_stall_other_cpu_end();
}
# 146 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/cache.h"
static inline void __attribute__((section(".iram1"))) Cache_Flush(int cpu_no)
{
    extern void Cache_Flush_rom(int cpu_no);
    esp_dport_access_stall_other_cpu_start();
    Cache_Flush_rom(cpu_no);
    esp_dport_access_stall_other_cpu_end();
}
# 162 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/cache.h"
static inline void __attribute__((section(".iram1"))) Cache_Read_Disable(int cpu_no)
{
    extern void Cache_Read_Disable_rom(int cpu_no);
    esp_dport_access_stall_other_cpu_start();
    Cache_Read_Disable_rom(cpu_no);
    esp_dport_access_stall_other_cpu_end();
}
# 178 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/cache.h"
static inline void __attribute__((section(".iram1"))) Cache_Read_Enable(int cpu_no)
{
    extern void Cache_Read_Enable_rom(int cpu_no);
    esp_dport_access_stall_other_cpu_start();
    Cache_Read_Enable_rom(cpu_no);
    esp_dport_access_stall_other_cpu_end();
}
# 23 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/efuse.h" 1
# 41 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/efuse.h"
void ets_efuse_read_op(void);
# 50 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/efuse.h"
void ets_efuse_program_op(void);
# 60 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/efuse.h"
uint32_t ets_efuse_get_8M_clock(void);
# 72 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/efuse.h"
uint32_t ets_efuse_get_spiconfig(void);
# 107 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/efuse.h"
unsigned char esp_crc8(unsigned char const *p, unsigned int len);
# 24 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h" 1
# 23 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/spi_reg.h" 1
# 24 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h" 2
# 122 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
typedef enum {
    ESP_ROM_SPIFLASH_QIO_MODE = 0,
    ESP_ROM_SPIFLASH_QOUT_MODE,
    ESP_ROM_SPIFLASH_DIO_MODE,
    ESP_ROM_SPIFLASH_DOUT_MODE,
    ESP_ROM_SPIFLASH_FASTRD_MODE,
    ESP_ROM_SPIFLASH_SLOWRD_MODE
} esp_rom_spiflash_read_mode_t;

typedef enum {
    ESP_ROM_SPIFLASH_RESULT_OK,
    ESP_ROM_SPIFLASH_RESULT_ERR,
    ESP_ROM_SPIFLASH_RESULT_TIMEOUT
} esp_rom_spiflash_result_t;

typedef struct {
    uint32_t device_id;
    uint32_t chip_size;
    uint32_t block_size;
    uint32_t sector_size;
    uint32_t page_size;
    uint32_t status_mask;
} esp_rom_spiflash_chip_t;

typedef struct {
    uint8_t data_length;
    uint8_t read_cmd0;
    uint8_t read_cmd1;
    uint8_t write_cmd;
    uint16_t data_mask;
    uint16_t data;
} esp_rom_spiflash_common_cmd_t;
# 165 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
void esp_rom_spiflash_fix_dummylen(uint8_t spi, uint8_t freqdiv);
# 178 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
void esp_rom_spiflash_select_qiomode(uint8_t wp_gpio_num, uint32_t ishspi);
# 196 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
void esp_rom_spiflash_set_drvs(uint8_t wp_gpio_num, uint32_t ishspi, uint8_t *drvs);
# 207 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
void esp_rom_spiflash_select_padsfunc(uint32_t ishspi);
# 220 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
void esp_rom_spiflash_attach(uint32_t ishspi, 
# 220 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h" 3 4
                                             _Bool 
# 220 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
                                                  legacy);
# 234 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
esp_rom_spiflash_result_t esp_rom_spiflash_read_status(esp_rom_spiflash_chip_t *spi, uint32_t *status);
# 248 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
esp_rom_spiflash_result_t esp_rom_spiflash_read_statushigh(esp_rom_spiflash_chip_t *spi, uint32_t *status);
# 262 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
esp_rom_spiflash_result_t esp_rom_spiflash_write_status(esp_rom_spiflash_chip_t *spi, uint32_t status_value);
# 276 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
esp_rom_spiflash_result_t esp_rom_spiflash_read_user_cmd(uint32_t *status, uint8_t cmd);
# 290 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
esp_rom_spiflash_result_t esp_rom_spiflash_config_readmode(esp_rom_spiflash_read_mode_t mode);
# 304 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
esp_rom_spiflash_result_t esp_rom_spiflash_config_clk(uint8_t freqdiv, uint8_t spi);
# 316 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
uint16_t esp_rom_spiflash_common_cmd(esp_rom_spiflash_common_cmd_t *cmd);
# 328 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
esp_rom_spiflash_result_t esp_rom_spiflash_unlock(void);
# 340 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
esp_rom_spiflash_result_t esp_rom_spiflash_lock(void);
# 362 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
esp_rom_spiflash_result_t esp_rom_spiflash_config_param(uint32_t deviceId, uint32_t chip_size, uint32_t block_size,
                                                        uint32_t sector_size, uint32_t page_size, uint32_t status_mask);
# 375 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
esp_rom_spiflash_result_t esp_rom_spiflash_erase_chip(void);
# 388 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
esp_rom_spiflash_result_t esp_rom_spiflash_erase_block(uint32_t block_num);
# 401 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
esp_rom_spiflash_result_t esp_rom_spiflash_erase_sector(uint32_t sector_num);
# 415 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
esp_rom_spiflash_result_t esp_rom_spiflash_erase_area(uint32_t start_addr, uint32_t area_len);
# 431 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
esp_rom_spiflash_result_t esp_rom_spiflash_write(uint32_t dest_addr, const uint32_t *src, int32_t len);
# 447 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
esp_rom_spiflash_result_t esp_rom_spiflash_read(uint32_t src_addr, uint32_t *dest, int32_t len);
# 457 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
void esp_rom_spiflash_write_encrypted_enable(void);
# 471 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
esp_rom_spiflash_result_t esp_rom_spiflash_prepare_encrypted_data(uint32_t flash_addr, uint32_t *data);
# 481 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
void esp_rom_spiflash_write_encrypted_disable(void);
# 501 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
esp_rom_spiflash_result_t esp_rom_spiflash_write_encrypted(uint32_t flash_addr, uint32_t *data, uint32_t len);
# 514 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
esp_rom_spiflash_result_t esp_rom_spiflash_wait_idle(esp_rom_spiflash_chip_t *spi);
# 533 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
void esp_rom_spiflash_select_qio_pins(uint8_t wp_gpio_num, uint32_t spiconfig);




extern esp_rom_spiflash_chip_t g_rom_flashchip;
# 26 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/crc.h" 1
# 51 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/crc.h"
uint32_t crc32_le(uint32_t crc, uint8_t const *buf, uint32_t len);
# 64 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/crc.h"
uint32_t crc32_be(uint32_t crc, uint8_t const *buf, uint32_t len);
# 77 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/crc.h"
uint16_t crc16_le(uint16_t crc, uint8_t const *buf, uint32_t len);
# 90 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/crc.h"
uint16_t crc16_be(uint16_t crc, uint8_t const *buf, uint32_t len);
# 103 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/crc.h"
uint8_t crc8_le(uint8_t crc, uint8_t const *buf, uint32_t len);
# 116 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/crc.h"
uint8_t crc8_be(uint8_t crc, uint8_t const *buf, uint32_t len);
# 27 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/rtc.h" 1
# 18 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/rtc.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h" 1
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/rtc.h" 2
# 74 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/rtc.h"
typedef enum {
    AWAKE = 0,
    LIGHT_SLEEP = 0x00000001,
    DEEP_SLEEP = 0x00000002
} SLEEP_MODE;

typedef enum {
    NO_MEAN = 0,
    POWERON_RESET = 1,
    SW_RESET = 3,
    OWDT_RESET = 4,
    DEEPSLEEP_RESET = 5,
    SDIO_RESET = 6,
    TG0WDT_SYS_RESET = 7,
    TG1WDT_SYS_RESET = 8,
    RTCWDT_SYS_RESET = 9,
    INTRUSION_RESET = 10,
    TGWDT_CPU_RESET = 11,
    SW_CPU_RESET = 12,
    RTCWDT_CPU_RESET = 13,
    EXT_CPU_RESET = 14,
    RTCWDT_BROWN_OUT_RESET = 15,
    RTCWDT_RTC_RESET = 16
} RESET_REASON;

typedef enum {
    NO_SLEEP = 0,
    EXT_EVENT0_TRIG = 0x00000001,
    EXT_EVENT1_TRIG = 0x00000002,
    GPIO_TRIG = 0x00000004,
    TIMER_EXPIRE = 0x00000008,
    SDIO_TRIG = 0x00000010,
    MAC_TRIG = 0x00000020,
    UART0_TRIG = 0x00000040,
    UART1_TRIG = 0x00000080,
    TOUCH_TRIG = 0x00000100,
    SAR_TRIG = 0x00000200,
    BT_TRIG = 0x00000400
} WAKEUP_REASON;

typedef enum {
    DISEN_WAKEUP = NO_SLEEP,
    EXT_EVENT0_TRIG_EN = EXT_EVENT0_TRIG,
    EXT_EVENT1_TRIG_EN = EXT_EVENT1_TRIG,
    GPIO_TRIG_EN = GPIO_TRIG,
    TIMER_EXPIRE_EN = TIMER_EXPIRE,
    SDIO_TRIG_EN = SDIO_TRIG,
    MAC_TRIG_EN = MAC_TRIG,
    UART0_TRIG_EN = UART0_TRIG,
    UART1_TRIG_EN = UART1_TRIG,
    TOUCH_TRIG_EN = TOUCH_TRIG,
    SAR_TRIG_EN = SAR_TRIG,
    BT_TRIG_EN = BT_TRIG
} WAKEUP_ENABLE;

typedef enum {
    NO_INT = 0,
    WAKEUP_INT = 0x00000001,
    REJECT_INT = 0x00000002,
    SDIO_IDLE_INT = 0x00000004,
    RTC_WDT_INT = 0x00000008,
    RTC_TIME_VALID_INT = 0x00000010
} RTC_INT_REASON;

typedef enum {
    DISEN_INT = 0,
    WAKEUP_INT_EN = WAKEUP_INT,
    REJECT_INT_EN = REJECT_INT,
    SDIO_IDLE_INT_EN = SDIO_IDLE_INT,
    RTC_WDT_INT_EN = RTC_WDT_INT,
    RTC_TIME_VALID_INT_EN = RTC_TIME_VALID_INT
} RTC_INT_EN;
# 154 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/rtc.h"
RESET_REASON rtc_get_reset_reason(int cpu_no);
# 163 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/rtc.h"
WAKEUP_REASON rtc_get_wakeup_cause(void);
# 174 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/rtc.h"
uint32_t calc_rtc_memory_crc(uint32_t start_addr, uint32_t crc_len);
# 183 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/rtc.h"
void set_rtc_memory_crc(void);
# 195 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/rtc.h"
void software_reset(void);
# 207 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/rtc.h"
void software_reset_cpu(int cpu_no);
# 28 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/uart.h" 1
# 18 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/uart.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_types.h" 1
# 23 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_types.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 24 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_types.h" 2
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/uart.h" 2



# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/uart_reg.h" 1
# 23 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/uart.h" 2
# 68 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/uart.h"
typedef enum {
    UART_LINE_STATUS_INT_FLAG = 0x06,
    UART_RCV_FIFO_INT_FLAG = 0x04,
    UART_RCV_TMOUT_INT_FLAG = 0x0C,
    UART_TXBUFF_EMPTY_INT_FLAG = 0x02
} UartIntType;

typedef enum {
    RCV_ONE_BYTE = 0x0,
    RCV_FOUR_BYTE = 0x1,
    RCV_EIGHT_BYTE = 0x2,
    RCV_FOURTEEN_BYTE = 0x3
} UartRcvFifoTrgLvl;

typedef enum {
    FIVE_BITS = 0x0,
    SIX_BITS = 0x1,
    SEVEN_BITS = 0x2,
    EIGHT_BITS = 0x3
} UartBitsNum4Char;

typedef enum {
    ONE_STOP_BIT = 1,
    ONE_HALF_STOP_BIT = 2,
    TWO_STOP_BIT = 3
} UartStopBitsNum;

typedef enum {
    NONE_BITS = 0,
    ODD_BITS = 2,
    EVEN_BITS = 3

} UartParityMode;

typedef enum {
    STICK_PARITY_DIS = 0,
    STICK_PARITY_EN = 2
} UartExistParity;

typedef enum {
    BIT_RATE_9600 = 9600,
    BIT_RATE_19200 = 19200,
    BIT_RATE_38400 = 38400,
    BIT_RATE_57600 = 57600,
    BIT_RATE_115200 = 115200,
    BIT_RATE_230400 = 230400,
    BIT_RATE_460800 = 460800,
    BIT_RATE_921600 = 921600
} UartBautRate;

typedef enum {
    NONE_CTRL,
    HARDWARE_CTRL,
    XON_XOFF_CTRL
} UartFlowCtrl;

typedef enum {
    EMPTY,
    UNDER_WRITE,
    WRITE_OVER
} RcvMsgBuffState;

typedef struct {
    uint8_t *pRcvMsgBuff;
    uint8_t *pWritePos;
    uint8_t *pReadPos;
    uint8_t TrigLvl;
    RcvMsgBuffState BuffState;
} RcvMsgBuff;

typedef struct {
    uint32_t TrxBuffSize;
    uint8_t *pTrxBuff;
} TrxMsgBuff;

typedef enum {
    BAUD_RATE_DET,
    WAIT_SYNC_FRM,
    SRCH_MSG_HEAD,
    RCV_MSG_BODY,
    RCV_ESC_CHAR,
} RcvMsgState;

typedef struct {
    UartBautRate baut_rate;
    UartBitsNum4Char data_bits;
    UartExistParity exist_parity;
    UartParityMode parity;
    UartStopBitsNum stop_bits;
    UartFlowCtrl flow_ctrl;
    uint8_t buff_uart_no;
    uint8_t tx_uart_no;
    RcvMsgBuff rcv_buff;

    RcvMsgState rcv_state;
    int received;
} UartDevice;
# 174 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/uart.h"
void uartAttach(void);
# 186 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/uart.h"
void Uart_Init(uint8_t uart_no, uint32_t clock);
# 198 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/uart.h"
void uart_div_modify(uint8_t uart_no, uint32_t DivLatchValue);
# 211 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/uart.h"
int uart_baudrate_detect(uint8_t uart_no, uint8_t is_sync);
# 221 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/uart.h"
void uart_tx_switch(uint8_t uart_no);
# 231 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/uart.h"
void uart_buff_switch(uint8_t uart_no);
# 240 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/uart.h"
STATUS uart_tx_one_char(uint8_t TxChar);
# 250 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/uart.h"
STATUS uart_tx_one_char2(uint8_t TxChar);
# 259 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/uart.h"
void uart_tx_flush(uint8_t uart_no);
# 269 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/uart.h"
static inline void __attribute__((section(".iram1"))) uart_tx_wait_idle(uint8_t uart_no) {
    while(({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C))) >= 0x3ff00000) && ((((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C))) <= 0x3ff13FFC)), (!((((((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C))) >= 0x3ff00000) && ((((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C))) <= 0x3ff13FFC)), 1), "(Cannot use REG_GET_FIELD for DPORT registers use DPORT_REG_GET_FIELD)"); (("(Cannot use REG_GET_FIELD for DPORT registers use DPORT_REG_GET_FIELD)" && (!((((((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C))) >= 0x3ff00000) && ((((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/uart.h", 270, __func__, "\"(Cannot use REG_GET_FIELD for DPORT registers use DPORT_REG_GET_FIELD)\" && (!((((((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C))) >= 0x3ff00000) && ((((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C))) <= 0x3ff13FFC))")); } while(0);; ((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C))) >= 0x3ff00000) && ((((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C))) <= 0x3ff13FFC)), (!((((((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C))) >= 0x3ff00000) && ((((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!((((((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C))) >= 0x3ff00000) && ((((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/uart.h", 270, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!((((((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C))) >= 0x3ff00000) && ((((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)(((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C))); }) >> (24)) & (0xF)); })) {
        ;
    }
}
# 284 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/uart.h"
STATUS uart_rx_one_char(uint8_t *pRxChar);
# 294 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/uart.h"
char uart_rx_one_char_block(void);
# 306 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/uart.h"
STATUS UartRxString(uint8_t *pString, uint8_t MaxStrlen);
# 316 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/uart.h"
void uart_rx_intr_handler(void *para);
# 329 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/uart.h"
STATUS uart_rx_readbuff( RcvMsgBuff *pRxBuff, uint8_t *pRxByte);
# 340 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/uart.h"
STATUS UartGetCmdLn(uint8_t *pCmdLn);
# 350 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/uart.h"
UartDevice *GetUartDevice(void);
# 362 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/uart.h"
void send_packet(uint8_t *p, int len);
# 377 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/uart.h"
int recv_packet(uint8_t *p, int len, uint8_t is_sync);
# 390 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/uart.h"
STATUS SendMsg(uint8_t *pData, uint16_t DataLen);
# 406 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/uart.h"
STATUS RcvMsg(uint8_t *pData, uint16_t MaxDataLen, uint8_t is_sync);

extern UartDevice UartDev;
# 29 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/gpio.h" 1
# 22 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/gpio.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/gpio_reg.h" 1
# 23 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/gpio.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/gpio_pins.h" 1
# 24 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/gpio.h" 2
# 51 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/gpio.h"
typedef enum {
    GPIO_PIN_INTR_DISABLE = 0,
    GPIO_PIN_INTR_POSEDGE = 1,
    GPIO_PIN_INTR_NEGEDGE = 2,
    GPIO_PIN_INTR_ANYEDGE = 3,
    GPIO_PIN_INTR_LOLEVEL = 4,
    GPIO_PIN_INTR_HILEVEL = 5
} GPIO_INT_TYPE;
# 67 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/gpio.h"
typedef void (* gpio_intr_handler_fn_t)(uint32_t intr_mask, 
# 67 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/gpio.h" 3 4
                                                           _Bool 
# 67 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/gpio.h"
                                                                high, void *arg);
# 78 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/gpio.h"
void gpio_init(void);
# 95 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/gpio.h"
void gpio_output_set(uint32_t set_mask, uint32_t clear_mask, uint32_t enable_mask, uint32_t disable_mask);
# 112 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/gpio.h"
void gpio_output_set_high(uint32_t set_mask, uint32_t clear_mask, uint32_t enable_mask, uint32_t disable_mask);
# 121 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/gpio.h"
uint32_t gpio_input_get(void);
# 130 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/gpio.h"
uint32_t gpio_input_get_high(void);
# 143 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/gpio.h"
void gpio_intr_handler_register(gpio_intr_handler_fn_t fn, void *arg);
# 153 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/gpio.h"
uint32_t gpio_intr_pending(void);
# 163 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/gpio.h"
uint32_t gpio_intr_pending_high(void);
# 173 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/gpio.h"
void gpio_intr_ack(uint32_t ack_mask);
# 183 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/gpio.h"
void gpio_intr_ack_high(uint32_t ack_mask);
# 195 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/gpio.h"
void gpio_pin_wakeup_enable(uint32_t i, GPIO_INT_TYPE intr_state);
# 205 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/gpio.h"
void gpio_pin_wakeup_disable(void);
# 221 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/gpio.h"
void gpio_matrix_in(uint32_t gpio, uint32_t signal_idx, 
# 221 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/gpio.h" 3 4
                                                       _Bool 
# 221 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/gpio.h"
                                                            inv);
# 237 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/gpio.h"
void gpio_matrix_out(uint32_t gpio, uint32_t signal_idx, 
# 237 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/gpio.h" 3 4
                                                        _Bool 
# 237 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/gpio.h"
                                                             out_inv, 
# 237 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/gpio.h" 3 4
                                                                      _Bool 
# 237 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/gpio.h"
                                                                           oen_inv);
# 246 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/gpio.h"
void gpio_pad_select_gpio(uint8_t gpio_num);
# 257 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/gpio.h"
void gpio_pad_set_drv(uint8_t gpio_num, uint8_t drv);
# 266 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/gpio.h"
void gpio_pad_pullup(uint8_t gpio_num);
# 275 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/gpio.h"
void gpio_pad_pulldown(uint8_t gpio_num);
# 284 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/gpio.h"
void gpio_pad_unhold(uint8_t gpio_num);
# 293 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/gpio.h"
void gpio_pad_hold(uint8_t gpio_num);
# 30 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/secure_boot.h" 1
# 24 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/secure_boot.h"
void ets_secure_boot_start(void);

void ets_secure_boot_finish(void);

void ets_secure_boot_hash(const uint32_t *buf);

void ets_secure_boot_obtain(void);

int ets_secure_boot_check(uint32_t *buf);

void ets_secure_boot_rd_iv(uint32_t *buf);

void ets_secure_boot_rd_abstract(uint32_t *buf);


# 38 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/secure_boot.h" 3 4
_Bool 
# 38 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/secure_boot.h"
    ets_secure_boot_check_start(uint8_t abs_index, uint32_t iv_addr);

int ets_secure_boot_check_finish(uint32_t *abstract);
# 31 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c" 2


# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/cpu.h" 1
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/cpu.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/cpu.h" 2
# 32 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/cpu.h"
static inline void *get_sp()
{
    void *sp;
    asm volatile ("mov %0, sp;" : "=r" (sp));
    return sp;
}





static inline void cpu_write_dtlb(uint32_t vpn, unsigned attr)
{
    asm volatile ("wdtlb  %1, %0; dsync\n" :: "r" (vpn), "r" (attr));
}


static inline void cpu_write_itlb(unsigned vpn, unsigned attr)
{
    asm volatile ("witlb  %1, %0; isync\n" :: "r" (vpn), "r" (attr));
}
# 65 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/cpu.h"
static inline void cpu_configure_region_protection()
{
    const uint32_t pages_to_protect[] = {0x00000000, 0x80000000, 0xa0000000, 0xc0000000, 0xe0000000};
    for (int i = 0; i < sizeof(pages_to_protect)/sizeof(pages_to_protect[0]); ++i) {
        cpu_write_dtlb(pages_to_protect[i], 0xf);
        cpu_write_itlb(pages_to_protect[i], 0xf);
    }
    cpu_write_dtlb(0x20000000, 0);
    cpu_write_itlb(0x20000000, 0);
}





void esp_cpu_stall(int cpu_id);





void esp_cpu_unstall(int cpu_id);





void esp_cpu_reset(int cpu_id);
# 102 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/cpu.h"

# 102 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/cpu.h" 3 4
_Bool 
# 102 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/cpu.h"
    esp_cpu_in_ocd_debug_mode();
# 34 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc.h" 1
# 14 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc.h"
       


# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 18 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc.h" 2
# 60 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc.h"
typedef enum {
    RTC_XTAL_FREQ_AUTO = 0,
    RTC_XTAL_FREQ_40M = 40,
    RTC_XTAL_FREQ_26M = 26,
    RTC_XTAL_FREQ_24M = 24,
} rtc_xtal_freq_t;




typedef enum {
    RTC_CPU_FREQ_XTAL = 0,
    RTC_CPU_FREQ_80M = 1,
    RTC_CPU_FREQ_160M = 2,
    RTC_CPU_FREQ_240M = 3,
    RTC_CPU_FREQ_2M = 4,
} rtc_cpu_freq_t;




typedef enum {
    RTC_SLOW_FREQ_RTC = 0,
    RTC_SLOW_FREQ_32K_XTAL = 1,
    RTC_SLOW_FREQ_8MD256 = 2,
} rtc_slow_freq_t;




typedef enum {
    RTC_FAST_FREQ_XTALD4 = 0,
    RTC_FAST_FREQ_8M = 1,
} rtc_fast_freq_t;







typedef enum {
    RTC_CAL_RTC_MUX = 0,
    RTC_CAL_8MD256 = 1,
    RTC_CAL_32K_XTAL = 2
} rtc_cal_sel_t;




typedef struct {
    rtc_xtal_freq_t xtal_freq : 8;
    rtc_cpu_freq_t cpu_freq : 3;
    rtc_fast_freq_t fast_freq : 1;
    rtc_slow_freq_t slow_freq : 2;
    uint32_t clk_8m_div : 3;
    uint32_t slow_clk_dcap : 8;
    uint32_t clk_8m_dfreq : 8;
} rtc_clk_config_t;
# 147 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc.h"
void rtc_clk_init(rtc_clk_config_t cfg);
# 158 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc.h"
rtc_xtal_freq_t rtc_clk_xtal_freq_get();
# 168 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc.h"
void rtc_clk_xtal_freq_update(rtc_xtal_freq_t xtal_freq);





void rtc_clk_32k_enable(
# 174 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc.h" 3 4
                       _Bool 
# 174 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc.h"
                            en);






# 180 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc.h" 3 4
_Bool 
# 180 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc.h"
    rtc_clk_32k_enabled();
# 192 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc.h"
void rtc_clk_32k_bootstrap(uint32_t cycle);
# 210 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc.h"
void rtc_clk_8m_enable(
# 210 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc.h" 3 4
                      _Bool 
# 210 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc.h"
                           clk_8m_en, 
# 210 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc.h" 3 4
                                      _Bool 
# 210 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc.h"
                                           d256_en);






# 216 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc.h" 3 4
_Bool 
# 216 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc.h"
    rtc_clk_8m_enabled();






# 222 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc.h" 3 4
_Bool 
# 222 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc.h"
    rtc_clk_8md256_enabled();
# 240 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc.h"
void rtc_clk_apll_enable(
# 240 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc.h" 3 4
                        _Bool 
# 240 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc.h"
                             enable, uint32_t sdm0, uint32_t sdm1,
        uint32_t sdm2, uint32_t o_div);





void rtc_clk_slow_freq_set(rtc_slow_freq_t slow_freq);





rtc_slow_freq_t rtc_clk_slow_freq_get();
# 267 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc.h"
uint32_t rtc_clk_slow_freq_get_hz();





void rtc_clk_fast_freq_set(rtc_fast_freq_t fast_freq);





rtc_fast_freq_t rtc_clk_fast_freq_get();
# 291 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc.h"
void rtc_clk_cpu_freq_set(rtc_cpu_freq_t cpu_freq);
# 310 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc.h"
void rtc_clk_cpu_freq_set_fast(rtc_cpu_freq_t cpu_freq);
# 323 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc.h"
rtc_cpu_freq_t rtc_clk_cpu_freq_get();






uint32_t rtc_clk_cpu_freq_value(rtc_cpu_freq_t cpu_freq);







 
# 338 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc.h" 3 4
_Bool 
# 338 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc.h"
     rtc_clk_cpu_freq_from_mhz(int cpu_freq_mhz, rtc_cpu_freq_t* out_val);
# 352 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc.h"
void rtc_clk_apb_freq_update(uint32_t apb_freq);





uint32_t rtc_clk_apb_freq_get();
# 375 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc.h"
uint32_t rtc_clk_cal(rtc_cal_sel_t cal_clk, uint32_t slow_clk_cycles);
# 384 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc.h"
uint32_t rtc_clk_cal_ratio(rtc_cal_sel_t cal_clk, uint32_t slow_clk_cycles);
# 393 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc.h"
uint64_t rtc_time_us_to_slowclk(uint64_t time_in_us, uint32_t period);
# 402 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc.h"
uint64_t rtc_time_slowclk_to_us(uint64_t rtc_cycles, uint32_t period);
# 415 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc.h"
uint64_t rtc_time_get();
# 424 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc.h"
void rtc_clk_wait_for_slow_cycle();




typedef struct {
    uint32_t lslp_mem_inf_fpu : 1;
    uint32_t rtc_mem_inf_fpu : 1;
    uint32_t rtc_mem_inf_follow_cpu : 1;
    uint32_t rtc_fastmem_pd_en : 1;
    uint32_t rtc_slowmem_pd_en : 1;
    uint32_t rtc_peri_pd_en : 1;
    uint32_t wifi_pd_en : 1;
    uint32_t rom_mem_pd_en : 1;
    uint32_t deep_slp : 1;
    uint32_t wdt_flashboot_mod_en : 1;
    uint32_t dig_dbias_wak : 3;
    uint32_t dig_dbias_slp : 3;
    uint32_t rtc_dbias_wak : 3;
    uint32_t rtc_dbias_slp : 3;
    uint32_t lslp_meminf_pd : 1;
    uint32_t vddsdio_pd_en : 1;
    uint32_t xtal_fpu : 1;
} rtc_sleep_config_t;
# 498 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc.h"
void rtc_sleep_init(rtc_sleep_config_t cfg);







void rtc_sleep_set_wakeup_time(uint64_t t);
# 546 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc.h"
uint32_t rtc_sleep_start(uint32_t wakeup_opt, uint32_t reject_opt);




typedef struct {
    uint32_t ck8m_wait : 8;
    uint32_t xtal_wait : 8;
    uint32_t pll_wait : 8;
    uint32_t clkctl_init : 1;
    uint32_t pwrctl_init : 1;
    uint32_t rtc_dboost_fpd : 1;
} rtc_config_t;
# 579 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc.h"
void rtc_init(rtc_config_t cfg);







typedef struct {
    uint32_t force : 1;
    uint32_t enable : 1;
    uint32_t tieh : 1;
    uint32_t drefh : 2;
    uint32_t drefm : 2;
    uint32_t drefl : 2;
} rtc_vddsdio_config_t;
# 603 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc.h"
rtc_vddsdio_config_t rtc_vddsdio_get_config();
# 612 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc.h"
void rtc_vddsdio_set_config(rtc_vddsdio_config_t config);
# 35 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/dport_reg.h" 1
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/dport_reg.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/dport_access.h" 1
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/dport_reg.h" 2
# 36 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/io_mux_reg.h" 1
# 93 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/io_mux_reg.h"
static inline void __attribute__ ((deprecated)) PIN_PULLUP_DIS(uint32_t PIN_NAME)
{
    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC)), (!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC)), 1), "(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)"); (("(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)" && (!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/io_mux_reg.h", 95, __func__, "\"(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)\" && (!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t*)(PIN_NAME) &= ~(((1UL << (8))))); });
}

static inline void __attribute__ ((deprecated)) PIN_PULLUP_EN(uint32_t PIN_NAME)
{
    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC)), (!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)"); (("(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)" && (!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/io_mux_reg.h", 100, __func__, "\"(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)\" && (!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t*)(PIN_NAME) |= (((1UL << (8))))); });
}

static inline void __attribute__ ((deprecated)) PIN_PULLDWN_DIS(uint32_t PIN_NAME)
{
    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC)), (!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC)), 1), "(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)"); (("(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)" && (!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/io_mux_reg.h", 105, __func__, "\"(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)\" && (!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t*)(PIN_NAME) &= ~(((1UL << (7))))); });
}

static inline void __attribute__ ((deprecated)) PIN_PULLDWN_EN(uint32_t PIN_NAME)
{
    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC)), (!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)"); (("(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)" && (!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/io_mux_reg.h", 110, __func__, "\"(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)\" && (!((((PIN_NAME)) >= 0x3ff00000) && ((PIN_NAME)) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t*)(PIN_NAME) |= (((1UL << (7))))); });
}
# 37 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/efuse_reg.h" 1
# 38 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc_cntl_reg.h" 1
# 39 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/timer_group_reg.h" 1
# 40 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/gpio_sig_map.h" 1
# 42 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/ESP32_PIC_A2DP/build/include/sdkconfig.h" 1
# 44 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_image_format.h" 1
# 14 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_image_format.h"
       


# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h" 1
# 14 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
       


# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdio.h" 1
# 36 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdio.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 37 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdio.h" 2
# 48 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdio.h"
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

# 18 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h" 2






typedef int32_t esp_err_t;
# 58 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
const char *esp_err_to_name(esp_err_t code);
# 76 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
const char *esp_err_to_name_r(esp_err_t code, char *buf, size_t buflen);


void _esp_error_check_failed(esp_err_t rc, const char *file, int line, const char *function, const char *expression) __attribute__((noreturn));
# 18 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_image_format.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_flash_partitions.h" 1
# 18 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_flash_partitions.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_flash_data_types.h" 1
# 29 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_flash_data_types.h"
typedef struct {
    uint32_t ota_seq;
    uint8_t seq_label[24];
    uint32_t crc;
} esp_ota_select_entry_t;


typedef struct {
    uint32_t offset;
    uint32_t size;
} esp_partition_pos_t;




typedef struct {
 uint16_t magic;
 uint8_t type;
    uint8_t subtype;
    esp_partition_pos_t pos;
 uint8_t label[16];
    uint32_t flags;
} esp_partition_info_t;
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_flash_partitions.h" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/ESP32_PIC_A2DP/build/include/sdkconfig.h" 1
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_flash_partitions.h" 2
# 38 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_flash_partitions.h"
esp_err_t esp_partition_table_verify(const esp_partition_info_t *partition_table, 
# 38 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_flash_partitions.h" 3 4
                                                                                 _Bool 
# 38 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_flash_partitions.h"
                                                                                      log_errors, int *num_partitions);



inline static __attribute__((deprecated)) esp_err_t esp_partition_table_basic_verify(const esp_partition_info_t *partition_table, 
# 42 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_flash_partitions.h" 3 4
                                                                                                                                 _Bool 
# 42 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_flash_partitions.h"
                                                                                                                                      log_errors, int *num_partitions)
{
    return esp_partition_table_verify(partition_table, log_errors, num_partitions);
}
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_image_format.h" 2
# 29 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_image_format.h"
typedef enum {
    ESP_IMAGE_SPI_MODE_QIO,
    ESP_IMAGE_SPI_MODE_QOUT,
    ESP_IMAGE_SPI_MODE_DIO,
    ESP_IMAGE_SPI_MODE_DOUT,
    ESP_IMAGE_SPI_MODE_FAST_READ,
    ESP_IMAGE_SPI_MODE_SLOW_READ
} esp_image_spi_mode_t;


enum {
    ESP_IMAGE_SPI_SPEED_40M,
    ESP_IMAGE_SPI_SPEED_26M,
    ESP_IMAGE_SPI_SPEED_20M,
    ESP_IMAGE_SPI_SPEED_80M = 0xF
} esp_image_spi_freq_t;


typedef enum {
    ESP_IMAGE_FLASH_SIZE_1MB = 0,
    ESP_IMAGE_FLASH_SIZE_2MB,
    ESP_IMAGE_FLASH_SIZE_4MB,
    ESP_IMAGE_FLASH_SIZE_8MB,
    ESP_IMAGE_FLASH_SIZE_16MB,
    ESP_IMAGE_FLASH_SIZE_MAX
} esp_image_flash_size_t;




typedef struct {
    uint8_t magic;
    uint8_t segment_count;

    uint8_t spi_mode;

    uint8_t spi_speed: 4;

    uint8_t spi_size: 4;
    uint32_t entry_addr;


    uint8_t wp_pin;

    uint8_t spi_pin_drv[3];

    uint8_t reserved[11];



    uint8_t hash_appended;
} __attribute__((packed)) esp_image_header_t;

_Static_assert(sizeof(esp_image_header_t) == 24, "binary image header should be 24 bytes");


typedef struct {
    uint32_t load_addr;
    uint32_t data_len;
} esp_image_segment_header_t;




typedef struct {
  uint32_t start_addr;
  esp_image_header_t image;
  esp_image_segment_header_t segments[16];
  uint32_t segment_data[16];
  uint32_t image_len;
} esp_image_metadata_t;


typedef enum {
    ESP_IMAGE_VERIFY,
    ESP_IMAGE_VERIFY_SILENT,



} esp_image_load_mode_t;
# 133 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_image_format.h"
esp_err_t esp_image_load(esp_image_load_mode_t mode, const esp_partition_pos_t *part, esp_image_metadata_t *data);
# 143 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_image_format.h"
esp_err_t esp_image_verify_bootloader(uint32_t *length);

typedef struct {
    uint32_t drom_addr;
    uint32_t drom_load_addr;
    uint32_t drom_size;
    uint32_t irom_addr;
    uint32_t irom_load_addr;
    uint32_t irom_size;
} esp_image_flash_mapping_t;
# 45 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_secure_boot.h" 1
# 14 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_secure_boot.h"
       
# 37 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_secure_boot.h"
static inline 
# 37 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_secure_boot.h" 3 4
             _Bool 
# 37 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_secure_boot.h"
                  esp_secure_boot_enabled(void) {
    return ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff5A000 + 0x018))) >= 0x3ff00000) && (((0x3ff5A000 + 0x018))) <= 0x3ff13FFC)), (!(((((0x3ff5A000 + 0x018))) >= 0x3ff00000) && (((0x3ff5A000 + 0x018))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!(((((0x3ff5A000 + 0x018))) >= 0x3ff00000) && (((0x3ff5A000 + 0x018))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_secure_boot.h", 38, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!(((((0x3ff5A000 + 0x018))) >= 0x3ff00000) && (((0x3ff5A000 + 0x018))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((0x3ff5A000 + 0x018))); }) & ((1UL << (4)));
}
# 64 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_secure_boot.h"
esp_err_t esp_secure_boot_permanently_enable(void);
# 78 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_secure_boot.h"
esp_err_t esp_secure_boot_verify_signature(uint32_t src_addr, uint32_t length);
# 89 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_secure_boot.h"
typedef struct {
    uint32_t version;
    uint8_t signature[64];
} esp_secure_boot_sig_block_t;

esp_err_t esp_secure_boot_verify_signature_block(const esp_secure_boot_sig_block_t *sig_block, const uint8_t *image_digest);




typedef struct {
    uint8_t iv[128];
    uint8_t digest[64];
} esp_secure_boot_iv_digest_t;
# 46 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_flash_encrypt.h" 1
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_flash_encrypt.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_spi_flash.h" 1
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_spi_flash.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_spi_flash.h" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/ESP32_PIC_A2DP/build/include/sdkconfig.h" 1
# 23 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_spi_flash.h" 2
# 45 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_spi_flash.h"
void spi_flash_init();
# 54 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_spi_flash.h"
size_t spi_flash_get_chip_size();
# 63 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_spi_flash.h"
esp_err_t spi_flash_erase_sector(size_t sector);
# 74 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_spi_flash.h"
esp_err_t spi_flash_erase_range(size_t start_address, size_t size);
# 93 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_spi_flash.h"
esp_err_t spi_flash_write(size_t dest_addr, const void *src, size_t size);
# 116 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_spi_flash.h"
esp_err_t spi_flash_write_encrypted(size_t dest_addr, const void *src, size_t size);
# 139 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_spi_flash.h"
esp_err_t spi_flash_read(size_t src_addr, void *dest, size_t size);
# 156 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_spi_flash.h"
esp_err_t spi_flash_read_encrypted(size_t src, void *dest, size_t size);




typedef enum {
    SPI_FLASH_MMAP_DATA,
    SPI_FLASH_MMAP_INST,
} spi_flash_mmap_memory_t;




typedef uint32_t spi_flash_mmap_handle_t;
# 193 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_spi_flash.h"
esp_err_t spi_flash_mmap(size_t src_addr, size_t size, spi_flash_mmap_memory_t memory,
                         const void** out_ptr, spi_flash_mmap_handle_t* out_handle);
# 219 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_spi_flash.h"
esp_err_t spi_flash_mmap_pages(const int *pages, size_t page_count, spi_flash_mmap_memory_t memory,
                         const void** out_ptr, spi_flash_mmap_handle_t* out_handle);
# 233 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_spi_flash.h"
void spi_flash_munmap(spi_flash_mmap_handle_t handle);
# 242 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_spi_flash.h"
void spi_flash_mmap_dump();
# 257 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_spi_flash.h"
uint32_t spi_flash_mmap_get_free_pages(spi_flash_mmap_memory_t memory);
# 273 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_spi_flash.h"
size_t spi_flash_cache2phys(const void *cached);
# 293 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_spi_flash.h"
const void *spi_flash_phys2cache(size_t phys_offs, spi_flash_mmap_memory_t memory);






# 299 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_spi_flash.h" 3 4
_Bool 
# 299 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_spi_flash.h"
    spi_flash_cache_enabled();





typedef void (*spi_flash_guard_start_func_t)(void);



typedef void (*spi_flash_guard_end_func_t)(void);



typedef void (*spi_flash_op_lock_func_t)(void);



typedef void (*spi_flash_op_unlock_func_t)(void);
# 347 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_spi_flash.h"
typedef struct {
    spi_flash_guard_start_func_t start;
    spi_flash_guard_end_func_t end;
    spi_flash_op_lock_func_t op_lock;
    spi_flash_op_unlock_func_t op_unlock;
} spi_flash_guard_funcs_t;
# 362 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_spi_flash.h"
void spi_flash_guard_set(const spi_flash_guard_funcs_t* funcs);
# 371 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_spi_flash.h"
const spi_flash_guard_funcs_t *spi_flash_guard_get();




extern const spi_flash_guard_funcs_t g_flash_guard_default_ops;







extern const spi_flash_guard_funcs_t g_flash_guard_no_os_ops;
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_flash_encrypt.h" 2
# 36 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_flash_encrypt.h"
static inline __attribute__((section(".iram1"))) 
# 36 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_flash_encrypt.h" 3 4
                                                    _Bool 
# 36 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_flash_encrypt.h"
                                                         esp_flash_encryption_enabled(void) {
    uint32_t flash_crypt_cnt = ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff5A000 + 0x000))) >= 0x3ff00000) && (((0x3ff5A000 + 0x000))) <= 0x3ff13FFC)), (!(((((0x3ff5A000 + 0x000))) >= 0x3ff00000) && (((0x3ff5A000 + 0x000))) <= 0x3ff13FFC)), 1), "(Cannot use REG_GET_FIELD for DPORT registers use DPORT_REG_GET_FIELD)"); (("(Cannot use REG_GET_FIELD for DPORT registers use DPORT_REG_GET_FIELD)" && (!(((((0x3ff5A000 + 0x000))) >= 0x3ff00000) && (((0x3ff5A000 + 0x000))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_flash_encrypt.h", 37, __func__, "\"(Cannot use REG_GET_FIELD for DPORT registers use DPORT_REG_GET_FIELD)\" && (!(((((0x3ff5A000 + 0x000))) >= 0x3ff00000) && (((0x3ff5A000 + 0x000))) <= 0x3ff13FFC))")); } while(0);; ((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff5A000 + 0x000))) >= 0x3ff00000) && (((0x3ff5A000 + 0x000))) <= 0x3ff13FFC)), (!(((((0x3ff5A000 + 0x000))) >= 0x3ff00000) && (((0x3ff5A000 + 0x000))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!(((((0x3ff5A000 + 0x000))) >= 0x3ff00000) && (((0x3ff5A000 + 0x000))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_flash_encrypt.h", 37, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!(((((0x3ff5A000 + 0x000))) >= 0x3ff00000) && (((0x3ff5A000 + 0x000))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((0x3ff5A000 + 0x000))); }) >> (20)) & (0xFF)); });

    
# 39 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_flash_encrypt.h" 3 4
   _Bool 
# 39 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_flash_encrypt.h"
        enabled = 
# 39 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_flash_encrypt.h" 3 4
                  0
# 39 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_flash_encrypt.h"
                       ;
    while(flash_crypt_cnt) {
        if (flash_crypt_cnt & 1) {
            enabled = !enabled;
        }
        flash_crypt_cnt >>= 1;
    }
    return enabled;
}
# 89 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_flash_encrypt.h"
esp_err_t esp_flash_encrypt_check_and_update(void);
# 100 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_flash_encrypt.h"
esp_err_t esp_flash_encrypt_region(uint32_t src_addr, size_t data_length);
# 47 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_flash_partitions.h" 1
# 48 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_flash.h" 1
# 17 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_flash.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 18 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_flash.h" 2
# 49 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_flash.h"
const void *bootloader_mmap(uint32_t src_addr, uint32_t size);







void bootloader_munmap(const void *mapping);
# 74 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_flash.h"
esp_err_t bootloader_flash_read(size_t src_addr, void *dest, size_t size, 
# 74 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_flash.h" 3 4
                                                                         _Bool 
# 74 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_flash.h"
                                                                              allow_decrypt);
# 92 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_flash.h"
esp_err_t bootloader_flash_write(size_t dest_addr, void *src, size_t size, 
# 92 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_flash.h" 3 4
                                                                          _Bool 
# 92 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_flash.h"
                                                                               write_encrypted);
# 101 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_flash.h"
esp_err_t bootloader_flash_erase_sector(size_t sector);
# 49 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_random.h" 1
# 15 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_random.h"
       

# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 18 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_random.h" 2
# 33 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_random.h"
void bootloader_random_enable(void);







void bootloader_random_disable(void);







void bootloader_fill_random(void *buffer, size_t length);
# 50 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_config.h" 1
# 33 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_config.h"
typedef struct {
    esp_partition_pos_t ota_info;
    esp_partition_pos_t factory;
    esp_partition_pos_t test;
    esp_partition_pos_t ota[16];
    uint32_t app_count;
    uint32_t selected_subtype;
} bootloader_state_t;


# 42 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_config.h" 3 4
_Bool 
# 42 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_config.h"
    flash_encrypt(bootloader_state_t *bs);
# 51 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/bootloader_clock.h" 1
# 15 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/bootloader_clock.h"
       





void bootloader_clock_configure(void);
# 52 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/flash_qio_mode.h" 1
# 14 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/flash_qio_mode.h"
       
# 25 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/flash_qio_mode.h"
void bootloader_enable_qio_mode(void);







uint32_t bootloader_read_flash_id();
# 54 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c" 2

extern int _bss_start;
extern int _bss_end;
extern int _data_start;
extern int _data_end;

static const char* TAG = "boot";

static esp_err_t bootloader_main();
static void print_flash_info(const esp_image_header_t* pfhdr);
static void update_flash_config(const esp_image_header_t* pfhdr);
static void vddsdio_configure();
static void flash_gpio_configure(const esp_image_header_t* pfhdr);
static void uart_console_configure(void);
static void wdt_reset_check(void);


esp_err_t bootloader_init()
{
    cpu_configure_region_protection();



    {
        int *sp = get_sp();
        ((&_bss_start <= &_bss_end) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c", 79, __func__, "&_bss_start <= &_bss_end"));
        ((&_data_start <= &_data_end) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c", 80, __func__, "&_data_start <= &_data_end"));
        ((sp < &_bss_start) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c", 81, __func__, "sp < &_bss_start"));
        ((sp < &_data_start) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c", 82, __func__, "sp < &_data_start"));
    }



    memset(&_bss_start, 0, (&_bss_end - &_bss_start) * sizeof(_bss_start));



    Cache_Read_Disable(0);
    Cache_Read_Disable(1);
    Cache_Flush(0);
    Cache_Flush(1);
    mmu_init(0);
    (*(volatile uint32_t *)((((0x3ff00000 + 0x05C))))) = (((DPORT_REG_READ((0x3ff00000 + 0x05C))|(((1UL << (13)))))));
    mmu_init(1);
    (*(volatile uint32_t *)((((0x3ff00000 + 0x05C))))) = (((DPORT_REG_READ((0x3ff00000 + 0x05C)) & (~(((1UL << (13))))))));
# 109 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c"
    (*(volatile uint32_t *)((((0x3ff00000 + 0x044))))) = (((DPORT_REG_READ((0x3ff00000 + 0x044)) & (~(((1UL << (4))))))));
    (*(volatile uint32_t *)((((0x3ff00000 + 0x05C))))) = (((DPORT_REG_READ((0x3ff00000 + 0x05C)) & (~(((1UL << (4))))))));

    if(bootloader_main() != 0){
        return -1;
    }
    return 0;
}

static esp_err_t bootloader_main()
{
    vddsdio_configure();

    g_rom_flashchip.device_id = bootloader_read_flash_id();
    esp_image_header_t fhdr;
    if (bootloader_flash_read(0x1000, &fhdr, sizeof(esp_image_header_t), 
# 124 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c" 3 4
                                                                                       1
# 124 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c"
                                                                                           ) != 0) {
        do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "failed to load bootloader header!" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "failed to load bootloader header!" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "failed to load bootloader header!" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "failed to load bootloader header!" "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "failed to load bootloader header!" "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
        return -1;
    }
    flash_gpio_configure(&fhdr);
# 137 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c"
    bootloader_clock_configure();
    uart_console_configure();
    wdt_reset_check();
    do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "ESP-IDF %s 2nd stage bootloader" "\033[0m" "\n", esp_log_timestamp(), TAG, "v3.1-rc1-dirty"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "ESP-IDF %s 2nd stage bootloader" "\033[0m" "\n", esp_log_timestamp(), TAG, "v3.1-rc1-dirty"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "ESP-IDF %s 2nd stage bootloader" "\033[0m" "\n", esp_log_timestamp(), TAG, "v3.1-rc1-dirty"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "ESP-IDF %s 2nd stage bootloader" "\033[0m" "\n", esp_log_timestamp(), TAG, "v3.1-rc1-dirty"); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "ESP-IDF %s 2nd stage bootloader" "\033[0m" "\n", esp_log_timestamp(), TAG, "v3.1-rc1-dirty"); } } while(0); } while(0);

    do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "compile time " "09:08:24" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "compile time " "09:08:24" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "compile time " "09:08:24" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "compile time " "09:08:24" "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "compile time " "09:08:24" "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
    ets_set_appcpu_boot_addr(0);


    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC)), 1), "(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)"); (("(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)" && (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c", 146, __func__, "\"(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)\" && (!(((((0x3ff48000 + 0x8c))) >= 0x3ff00000) && (((0x3ff48000 + 0x8c))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t*)((0x3ff48000 + 0x8c)) &= ~(((1UL << (10))))); });
    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff5F000 + 0*0x1000) + 0x0048))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0048))) <= 0x3ff13FFC)), (!((((((0x3ff5F000 + 0*0x1000) + 0x0048))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0048))) <= 0x3ff13FFC)), 1), "(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)"); (("(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)" && (!((((((0x3ff5F000 + 0*0x1000) + 0x0048))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0048))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c", 147, __func__, "\"(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)\" && (!((((((0x3ff5F000 + 0*0x1000) + 0x0048))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0048))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t*)(((0x3ff5F000 + 0*0x1000) + 0x0048)) &= ~(((1UL << (14))))); });
# 157 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c"
    esp_rom_spiflash_unlock();

    do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Enabling RNG early entropy source..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Enabling RNG early entropy source..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Enabling RNG early entropy source..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Enabling RNG early entropy source..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Enabling RNG early entropy source..." "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
    bootloader_random_enable();





    print_flash_info(&fhdr);

    update_flash_config(&fhdr);
    return 0;
}

static void update_flash_config(const esp_image_header_t* pfhdr)
{
    uint32_t size;
    switch(pfhdr->spi_size) {
        case ESP_IMAGE_FLASH_SIZE_1MB:
            size = 1;
            break;
        case ESP_IMAGE_FLASH_SIZE_2MB:
            size = 2;
            break;
        case ESP_IMAGE_FLASH_SIZE_4MB:
            size = 4;
            break;
        case ESP_IMAGE_FLASH_SIZE_8MB:
            size = 8;
            break;
        case ESP_IMAGE_FLASH_SIZE_16MB:
            size = 16;
            break;
        default:
            size = 2;
    }
    Cache_Read_Disable( 0 );

    esp_rom_spiflash_config_param(g_rom_flashchip.device_id, size * 0x100000, 0x10000, 0x1000, 0x100, 0xffff);


    Cache_Flush(0);
    Cache_Read_Enable( 0 );
}

static void print_flash_info(const esp_image_header_t* phdr)
{


    do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "magic %02x" "\033[0m" "\n", esp_log_timestamp(), TAG, phdr->magic); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "magic %02x" "\033[0m" "\n", esp_log_timestamp(), TAG, phdr->magic); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "magic %02x" "\033[0m" "\n", esp_log_timestamp(), TAG, phdr->magic); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "magic %02x" "\033[0m" "\n", esp_log_timestamp(), TAG, phdr->magic); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "magic %02x" "\033[0m" "\n", esp_log_timestamp(), TAG, phdr->magic); } } while(0); } while(0);
    do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "segments %02x" "\033[0m" "\n", esp_log_timestamp(), TAG, phdr->segment_count); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "segments %02x" "\033[0m" "\n", esp_log_timestamp(), TAG, phdr->segment_count); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "segments %02x" "\033[0m" "\n", esp_log_timestamp(), TAG, phdr->segment_count); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "segments %02x" "\033[0m" "\n", esp_log_timestamp(), TAG, phdr->segment_count); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "segments %02x" "\033[0m" "\n", esp_log_timestamp(), TAG, phdr->segment_count); } } while(0); } while(0);
    do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "spi_mode %02x" "\033[0m" "\n", esp_log_timestamp(), TAG, phdr->spi_mode); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "spi_mode %02x" "\033[0m" "\n", esp_log_timestamp(), TAG, phdr->spi_mode); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "spi_mode %02x" "\033[0m" "\n", esp_log_timestamp(), TAG, phdr->spi_mode); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "spi_mode %02x" "\033[0m" "\n", esp_log_timestamp(), TAG, phdr->spi_mode); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "spi_mode %02x" "\033[0m" "\n", esp_log_timestamp(), TAG, phdr->spi_mode); } } while(0); } while(0);
    do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "spi_speed %02x" "\033[0m" "\n", esp_log_timestamp(), TAG, phdr->spi_speed); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "spi_speed %02x" "\033[0m" "\n", esp_log_timestamp(), TAG, phdr->spi_speed); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "spi_speed %02x" "\033[0m" "\n", esp_log_timestamp(), TAG, phdr->spi_speed); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "spi_speed %02x" "\033[0m" "\n", esp_log_timestamp(), TAG, phdr->spi_speed); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "spi_speed %02x" "\033[0m" "\n", esp_log_timestamp(), TAG, phdr->spi_speed); } } while(0); } while(0);
    do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "spi_size %02x" "\033[0m" "\n", esp_log_timestamp(), TAG, phdr->spi_size); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "spi_size %02x" "\033[0m" "\n", esp_log_timestamp(), TAG, phdr->spi_size); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "spi_size %02x" "\033[0m" "\n", esp_log_timestamp(), TAG, phdr->spi_size); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "spi_size %02x" "\033[0m" "\n", esp_log_timestamp(), TAG, phdr->spi_size); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "spi_size %02x" "\033[0m" "\n", esp_log_timestamp(), TAG, phdr->spi_size); } } while(0); } while(0);

    const char* str;
    switch ( phdr->spi_speed ) {
    case ESP_IMAGE_SPI_SPEED_40M:
        str = "40MHz";
        break;
    case ESP_IMAGE_SPI_SPEED_26M:
        str = "26.7MHz";
        break;
    case ESP_IMAGE_SPI_SPEED_20M:
        str = "20MHz";
        break;
    case ESP_IMAGE_SPI_SPEED_80M:
        str = "80MHz";
        break;
    default:
        str = "20MHz";
        break;
    }
    do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "SPI Speed      : %s" "\033[0m" "\n", esp_log_timestamp(), TAG, str); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "SPI Speed      : %s" "\033[0m" "\n", esp_log_timestamp(), TAG, str); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "SPI Speed      : %s" "\033[0m" "\n", esp_log_timestamp(), TAG, str); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "SPI Speed      : %s" "\033[0m" "\n", esp_log_timestamp(), TAG, str); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "SPI Speed      : %s" "\033[0m" "\n", esp_log_timestamp(), TAG, str); } } while(0); } while(0);



    uint32_t spi_ctrl = ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x8))) >= 0x3ff00000) && ((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x8))) <= 0x3ff13FFC)), (!((((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x8))) >= 0x3ff00000) && ((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x8))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!((((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x8))) >= 0x3ff00000) && ((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x8))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c", 235, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!((((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x8))) >= 0x3ff00000) && ((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x8))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)(((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x8))); });
    if (spi_ctrl & ((1UL << (24)))) {
        str = "QIO";
    } else if (spi_ctrl & ((1UL << (20)))) {
        str = "QOUT";
    } else if (spi_ctrl & ((1UL << (23)))) {
        str = "DIO";
    } else if (spi_ctrl & ((1UL << (14)))) {
        str = "DOUT";
    } else if (spi_ctrl & ((1UL << (13)))) {
        str = "FAST READ";
    } else {
        str = "SLOW READ";
    }
    do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "SPI Mode       : %s" "\033[0m" "\n", esp_log_timestamp(), TAG, str); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "SPI Mode       : %s" "\033[0m" "\n", esp_log_timestamp(), TAG, str); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "SPI Mode       : %s" "\033[0m" "\n", esp_log_timestamp(), TAG, str); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "SPI Mode       : %s" "\033[0m" "\n", esp_log_timestamp(), TAG, str); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "SPI Mode       : %s" "\033[0m" "\n", esp_log_timestamp(), TAG, str); } } while(0); } while(0);

    switch ( phdr->spi_size ) {
    case ESP_IMAGE_FLASH_SIZE_1MB:
        str = "1MB";
        break;
    case ESP_IMAGE_FLASH_SIZE_2MB:
        str = "2MB";
        break;
    case ESP_IMAGE_FLASH_SIZE_4MB:
        str = "4MB";
        break;
    case ESP_IMAGE_FLASH_SIZE_8MB:
        str = "8MB";
        break;
    case ESP_IMAGE_FLASH_SIZE_16MB:
        str = "16MB";
        break;
    default:
        str = "2MB";
        break;
    }
    do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "SPI Flash Size : %s" "\033[0m" "\n", esp_log_timestamp(), TAG, str); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "SPI Flash Size : %s" "\033[0m" "\n", esp_log_timestamp(), TAG, str); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "SPI Flash Size : %s" "\033[0m" "\n", esp_log_timestamp(), TAG, str); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "SPI Flash Size : %s" "\033[0m" "\n", esp_log_timestamp(), TAG, str); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "SPI Flash Size : %s" "\033[0m" "\n", esp_log_timestamp(), TAG, str); } } while(0); } while(0);

}

static void vddsdio_configure()
{

    rtc_vddsdio_config_t cfg = rtc_vddsdio_get_config();
    if (cfg.enable == 1 && cfg.tieh == 0) {
        cfg.drefh = 3;
        cfg.drefm = 3;
        cfg.drefl = 3;
        cfg.force = 1;
        rtc_vddsdio_set_config(cfg);
        ets_delay_us(10);
    }

}
# 304 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c"
static void __attribute__((section(".iram1"))) flash_gpio_configure(const esp_image_header_t* pfhdr)
{
    int spi_cache_dummy = 0;
    int drv = 2;
    switch (pfhdr->spi_mode) {
        case ESP_IMAGE_SPI_MODE_QIO:
            spi_cache_dummy = 3;
            break;
        case ESP_IMAGE_SPI_MODE_DIO:
            spi_cache_dummy = 3;
            break;
        case ESP_IMAGE_SPI_MODE_QOUT:
        case ESP_IMAGE_SPI_MODE_DOUT:
        default:
            spi_cache_dummy = 7;
            break;
    }


    extern uint8_t g_rom_spiflash_dummy_len_plus[];
    switch (pfhdr->spi_speed) {
        case ESP_IMAGE_SPI_SPEED_80M:
            g_rom_spiflash_dummy_len_plus[0] = 2;
            g_rom_spiflash_dummy_len_plus[1] = 2;
            ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x20))) >= 0x3ff00000) && ((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x20))) <= 0x3ff13FFC)), (!((((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x20))) >= 0x3ff00000) && ((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x20))) <= 0x3ff13FFC)), 1), "(Cannot use SET_PERI_REG_BITS for DPORT registers use DPORT_SET_PERI_REG_BITS)"); (("(Cannot use SET_PERI_REG_BITS for DPORT registers use DPORT_SET_PERI_REG_BITS)" && (!((((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x20))) >= 0x3ff00000) && ((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x20))) <= 0x3ff13FFC))) ? (void)0 : __assert_func (
 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c"
# 328 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c"
            ,
 329
# 328 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c"
            , __func__, "\"(Cannot use SET_PERI_REG_BITS for DPORT registers use DPORT_SET_PERI_REG_BITS)\" && (!((((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x20))) >= 0x3ff00000) && ((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x20))) <= 0x3ff13FFC))")); } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x20)))) >= 0x3ff00000) && (((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x20)))) <= 0x3ff13FFC)), (!(((((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x20)))) >= 0x3ff00000) && (((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x20)))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!(((((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x20)))) >= 0x3ff00000) && (((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x20)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func (
 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c"
# 328 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c"
            ,
 329
# 328 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c"
            , __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!(((((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x20)))) >= 0x3ff00000) && (((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x20)))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x20))))) = (uint32_t)((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x20))) >= 0x3ff00000) && ((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x20))) <= 0x3ff13FFC)), (!((((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x20))) >= 0x3ff00000) && ((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x20))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!((((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x20))) >= 0x3ff00000) && ((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x20))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c", 329, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!((((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x20))) >= 0x3ff00000) && ((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x20))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)(((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x20)))); })&(~((0xFF)<<(0))))|(((spi_cache_dummy + 2) & 0xFF)<<(0))); })); })
                                             ;
            drv = 3;
            break;
        case ESP_IMAGE_SPI_SPEED_40M:
            g_rom_spiflash_dummy_len_plus[0] = 1;
            g_rom_spiflash_dummy_len_plus[1] = 1;
            ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x20))) >= 0x3ff00000) && ((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x20))) <= 0x3ff13FFC)), (!((((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x20))) >= 0x3ff00000) && ((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x20))) <= 0x3ff13FFC)), 1), "(Cannot use SET_PERI_REG_BITS for DPORT registers use DPORT_SET_PERI_REG_BITS)"); (("(Cannot use SET_PERI_REG_BITS for DPORT registers use DPORT_SET_PERI_REG_BITS)" && (!((((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x20))) >= 0x3ff00000) && ((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x20))) <= 0x3ff13FFC))) ? (void)0 : __assert_func (
 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c"
# 335 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c"
            ,
 336
# 335 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c"
            , __func__, "\"(Cannot use SET_PERI_REG_BITS for DPORT registers use DPORT_SET_PERI_REG_BITS)\" && (!((((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x20))) >= 0x3ff00000) && ((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x20))) <= 0x3ff13FFC))")); } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x20)))) >= 0x3ff00000) && (((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x20)))) <= 0x3ff13FFC)), (!(((((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x20)))) >= 0x3ff00000) && (((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x20)))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!(((((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x20)))) >= 0x3ff00000) && (((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x20)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func (
 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c"
# 335 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c"
            ,
 336
# 335 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c"
            , __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!(((((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x20)))) >= 0x3ff00000) && (((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x20)))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x20))))) = (uint32_t)((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x20))) >= 0x3ff00000) && ((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x20))) <= 0x3ff13FFC)), (!((((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x20))) >= 0x3ff00000) && ((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x20))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!((((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x20))) >= 0x3ff00000) && ((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x20))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c", 336, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!((((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x20))) >= 0x3ff00000) && ((((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x20))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)(((0x3ff42000 + (((0)>1) ? (((0)* 0x1000) + 0x20000) : (((~(0)) & 1)* 0x1000 ))) + 0x20)))); })&(~((0xFF)<<(0))))|(((spi_cache_dummy + 1) & 0xFF)<<(0))); })); })
                                             ;
            break;
        default:
            break;
    }

    uint32_t chip_ver = ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff5A000 + 0x00c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x00c))) <= 0x3ff13FFC)), (!(((((0x3ff5A000 + 0x00c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x00c))) <= 0x3ff13FFC)), 1), "(Cannot use REG_GET_FIELD for DPORT registers use DPORT_REG_GET_FIELD)"); (("(Cannot use REG_GET_FIELD for DPORT registers use DPORT_REG_GET_FIELD)" && (!(((((0x3ff5A000 + 0x00c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x00c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c", 342, __func__, "\"(Cannot use REG_GET_FIELD for DPORT registers use DPORT_REG_GET_FIELD)\" && (!(((((0x3ff5A000 + 0x00c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x00c))) <= 0x3ff13FFC))")); } while(0);; ((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff5A000 + 0x00c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x00c))) <= 0x3ff13FFC)), (!(((((0x3ff5A000 + 0x00c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x00c))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!(((((0x3ff5A000 + 0x00c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x00c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c", 342, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!(((((0x3ff5A000 + 0x00c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x00c))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((0x3ff5A000 + 0x00c))); }) >> (9)) & (0x7)); });
    uint32_t pkg_ver = chip_ver & 0x7;

    if (pkg_ver == 2) {


        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC)), (!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)"); (("(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)" && (!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c", 348, __func__, "\"(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)\" && (!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC))")); } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff49000 +0x60)))) >= 0x3ff00000) && ((((0x3ff49000 +0x60)))) <= 0x3ff13FFC)), (!((((((0x3ff49000 +0x60)))) >= 0x3ff00000) && ((((0x3ff49000 +0x60)))) <= 0x3ff13FFC)), 1), "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)"); (("(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)" && (!((((((0x3ff49000 +0x60)))) >= 0x3ff00000) && ((((0x3ff49000 +0x60)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c", 348, __func__, "\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!((((((0x3ff49000 +0x60)))) >= 0x3ff00000) && ((((0x3ff49000 +0x60)))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)(((0x3ff49000 +0x60)))) = (((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC)), (!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c", 348, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((0x3ff49000 +0x60))); }) & ~((0x7) << (12)))|(((1) & (0x7))<<(12)))); })); });
        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC)), (!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC)), 1), "(Cannot use SET_PERI_REG_BITS for DPORT registers use DPORT_SET_PERI_REG_BITS)"); (("(Cannot use SET_PERI_REG_BITS for DPORT registers use DPORT_SET_PERI_REG_BITS)" && (!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c", 349, __func__, "\"(Cannot use SET_PERI_REG_BITS for DPORT registers use DPORT_SET_PERI_REG_BITS)\" && (!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC))")); } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff49000 +0x60)))) >= 0x3ff00000) && ((((0x3ff49000 +0x60)))) <= 0x3ff13FFC)), (!((((((0x3ff49000 +0x60)))) >= 0x3ff00000) && ((((0x3ff49000 +0x60)))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!((((((0x3ff49000 +0x60)))) >= 0x3ff00000) && ((((0x3ff49000 +0x60)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c", 349, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!((((((0x3ff49000 +0x60)))) >= 0x3ff00000) && ((((0x3ff49000 +0x60)))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)(((0x3ff49000 +0x60))))) = (uint32_t)((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC)), (!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c", 349, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff49000 +0x60)))); })&(~((0x3)<<(10))))|(((drv) & 0x3)<<(10))); })); });
    } else if (pkg_ver == 4) {


        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC)), (!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)"); (("(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)" && (!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c", 353, __func__, "\"(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)\" && (!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC))")); } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff49000 +0x60)))) >= 0x3ff00000) && ((((0x3ff49000 +0x60)))) <= 0x3ff13FFC)), (!((((((0x3ff49000 +0x60)))) >= 0x3ff00000) && ((((0x3ff49000 +0x60)))) <= 0x3ff13FFC)), 1), "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)"); (("(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)" && (!((((((0x3ff49000 +0x60)))) >= 0x3ff00000) && ((((0x3ff49000 +0x60)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c", 353, __func__, "\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!((((((0x3ff49000 +0x60)))) >= 0x3ff00000) && ((((0x3ff49000 +0x60)))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)(((0x3ff49000 +0x60)))) = (((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC)), (!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c", 353, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((0x3ff49000 +0x60))); }) & ~((0x7) << (12)))|(((1) & (0x7))<<(12)))); })); });
        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC)), (!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC)), 1), "(Cannot use SET_PERI_REG_BITS for DPORT registers use DPORT_SET_PERI_REG_BITS)"); (("(Cannot use SET_PERI_REG_BITS for DPORT registers use DPORT_SET_PERI_REG_BITS)" && (!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c", 354, __func__, "\"(Cannot use SET_PERI_REG_BITS for DPORT registers use DPORT_SET_PERI_REG_BITS)\" && (!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC))")); } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff49000 +0x60)))) >= 0x3ff00000) && ((((0x3ff49000 +0x60)))) <= 0x3ff13FFC)), (!((((((0x3ff49000 +0x60)))) >= 0x3ff00000) && ((((0x3ff49000 +0x60)))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!((((((0x3ff49000 +0x60)))) >= 0x3ff00000) && ((((0x3ff49000 +0x60)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c", 354, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!((((((0x3ff49000 +0x60)))) >= 0x3ff00000) && ((((0x3ff49000 +0x60)))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)(((0x3ff49000 +0x60))))) = (uint32_t)((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC)), (!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c", 354, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff49000 +0x60)))); })&(~((0x3)<<(10))))|(((drv) & 0x3)<<(10))); })); });
    } else if (pkg_ver == 5) {


        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC)), (!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)"); (("(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)" && (!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c", 358, __func__, "\"(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)\" && (!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC))")); } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff49000 +0x60)))) >= 0x3ff00000) && ((((0x3ff49000 +0x60)))) <= 0x3ff13FFC)), (!((((((0x3ff49000 +0x60)))) >= 0x3ff00000) && ((((0x3ff49000 +0x60)))) <= 0x3ff13FFC)), 1), "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)"); (("(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)" && (!((((((0x3ff49000 +0x60)))) >= 0x3ff00000) && ((((0x3ff49000 +0x60)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c", 358, __func__, "\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!((((((0x3ff49000 +0x60)))) >= 0x3ff00000) && ((((0x3ff49000 +0x60)))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)(((0x3ff49000 +0x60)))) = (((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC)), (!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c", 358, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((0x3ff49000 +0x60))); }) & ~((0x7) << (12)))|(((1) & (0x7))<<(12)))); })); });
        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC)), (!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC)), 1), "(Cannot use SET_PERI_REG_BITS for DPORT registers use DPORT_SET_PERI_REG_BITS)"); (("(Cannot use SET_PERI_REG_BITS for DPORT registers use DPORT_SET_PERI_REG_BITS)" && (!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c", 359, __func__, "\"(Cannot use SET_PERI_REG_BITS for DPORT registers use DPORT_SET_PERI_REG_BITS)\" && (!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC))")); } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff49000 +0x60)))) >= 0x3ff00000) && ((((0x3ff49000 +0x60)))) <= 0x3ff13FFC)), (!((((((0x3ff49000 +0x60)))) >= 0x3ff00000) && ((((0x3ff49000 +0x60)))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!((((((0x3ff49000 +0x60)))) >= 0x3ff00000) && ((((0x3ff49000 +0x60)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c", 359, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!((((((0x3ff49000 +0x60)))) >= 0x3ff00000) && ((((0x3ff49000 +0x60)))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)(((0x3ff49000 +0x60))))) = (uint32_t)((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC)), (!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c", 359, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff49000 +0x60)))); })&(~((0x3)<<(10))))|(((drv) & 0x3)<<(10))); })); });
    } else {
        const uint32_t spiconfig = ets_efuse_get_spiconfig();
        if (spiconfig == 0) {
            gpio_matrix_out(11, 5, 0, 0);
            gpio_matrix_out(7, 1, 0, 0);
            gpio_matrix_in(7, 1, 0);
            gpio_matrix_out(8, 2, 0, 0);
            gpio_matrix_in(8, 2, 0);
            gpio_matrix_out(10, 4, 0, 0);
            gpio_matrix_in(10, 4, 0);
            gpio_matrix_out(9, 3, 0, 0);
            gpio_matrix_in(9, 3, 0);

            ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff49000 +0x64))) >= 0x3ff00000) && (((0x3ff49000 +0x64))) <= 0x3ff13FFC)), (!(((((0x3ff49000 +0x64))) >= 0x3ff00000) && (((0x3ff49000 +0x64))) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)"); (("(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)" && (!(((((0x3ff49000 +0x64))) >= 0x3ff00000) && (((0x3ff49000 +0x64))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c", 373, __func__, "\"(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)\" && (!(((((0x3ff49000 +0x64))) >= 0x3ff00000) && (((0x3ff49000 +0x64))) <= 0x3ff13FFC))")); } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff49000 +0x64)))) >= 0x3ff00000) && ((((0x3ff49000 +0x64)))) <= 0x3ff13FFC)), (!((((((0x3ff49000 +0x64)))) >= 0x3ff00000) && ((((0x3ff49000 +0x64)))) <= 0x3ff13FFC)), 1), "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)"); (("(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)" && (!((((((0x3ff49000 +0x64)))) >= 0x3ff00000) && ((((0x3ff49000 +0x64)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c", 373, __func__, "\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!((((((0x3ff49000 +0x64)))) >= 0x3ff00000) && ((((0x3ff49000 +0x64)))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)(((0x3ff49000 +0x64)))) = (((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff49000 +0x64))) >= 0x3ff00000) && (((0x3ff49000 +0x64))) <= 0x3ff13FFC)), (!(((((0x3ff49000 +0x64))) >= 0x3ff00000) && (((0x3ff49000 +0x64))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!(((((0x3ff49000 +0x64))) >= 0x3ff00000) && (((0x3ff49000 +0x64))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c", 373, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!(((((0x3ff49000 +0x64))) >= 0x3ff00000) && (((0x3ff49000 +0x64))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((0x3ff49000 +0x64))); }) & ~((0x7) << (12)))|(((2) & (0x7))<<(12)))); })); });
            ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff49000 +0x68))) >= 0x3ff00000) && (((0x3ff49000 +0x68))) <= 0x3ff13FFC)), (!(((((0x3ff49000 +0x68))) >= 0x3ff00000) && (((0x3ff49000 +0x68))) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)"); (("(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)" && (!(((((0x3ff49000 +0x68))) >= 0x3ff00000) && (((0x3ff49000 +0x68))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c", 374, __func__, "\"(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)\" && (!(((((0x3ff49000 +0x68))) >= 0x3ff00000) && (((0x3ff49000 +0x68))) <= 0x3ff13FFC))")); } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff49000 +0x68)))) >= 0x3ff00000) && ((((0x3ff49000 +0x68)))) <= 0x3ff13FFC)), (!((((((0x3ff49000 +0x68)))) >= 0x3ff00000) && ((((0x3ff49000 +0x68)))) <= 0x3ff13FFC)), 1), "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)"); (("(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)" && (!((((((0x3ff49000 +0x68)))) >= 0x3ff00000) && ((((0x3ff49000 +0x68)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c", 374, __func__, "\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!((((((0x3ff49000 +0x68)))) >= 0x3ff00000) && ((((0x3ff49000 +0x68)))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)(((0x3ff49000 +0x68)))) = (((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff49000 +0x68))) >= 0x3ff00000) && (((0x3ff49000 +0x68))) <= 0x3ff13FFC)), (!(((((0x3ff49000 +0x68))) >= 0x3ff00000) && (((0x3ff49000 +0x68))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!(((((0x3ff49000 +0x68))) >= 0x3ff00000) && (((0x3ff49000 +0x68))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c", 374, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!(((((0x3ff49000 +0x68))) >= 0x3ff00000) && (((0x3ff49000 +0x68))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((0x3ff49000 +0x68))); }) & ~((0x7) << (12)))|(((2) & (0x7))<<(12)))); })); });
            ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff49000 +0x54))) >= 0x3ff00000) && (((0x3ff49000 +0x54))) <= 0x3ff13FFC)), (!(((((0x3ff49000 +0x54))) >= 0x3ff00000) && (((0x3ff49000 +0x54))) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)"); (("(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)" && (!(((((0x3ff49000 +0x54))) >= 0x3ff00000) && (((0x3ff49000 +0x54))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c", 375, __func__, "\"(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)\" && (!(((((0x3ff49000 +0x54))) >= 0x3ff00000) && (((0x3ff49000 +0x54))) <= 0x3ff13FFC))")); } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff49000 +0x54)))) >= 0x3ff00000) && ((((0x3ff49000 +0x54)))) <= 0x3ff13FFC)), (!((((((0x3ff49000 +0x54)))) >= 0x3ff00000) && ((((0x3ff49000 +0x54)))) <= 0x3ff13FFC)), 1), "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)"); (("(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)" && (!((((((0x3ff49000 +0x54)))) >= 0x3ff00000) && ((((0x3ff49000 +0x54)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c", 375, __func__, "\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!((((((0x3ff49000 +0x54)))) >= 0x3ff00000) && ((((0x3ff49000 +0x54)))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)(((0x3ff49000 +0x54)))) = (((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff49000 +0x54))) >= 0x3ff00000) && (((0x3ff49000 +0x54))) <= 0x3ff13FFC)), (!(((((0x3ff49000 +0x54))) >= 0x3ff00000) && (((0x3ff49000 +0x54))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!(((((0x3ff49000 +0x54))) >= 0x3ff00000) && (((0x3ff49000 +0x54))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c", 375, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!(((((0x3ff49000 +0x54))) >= 0x3ff00000) && (((0x3ff49000 +0x54))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((0x3ff49000 +0x54))); }) & ~((0x7) << (12)))|(((2) & (0x7))<<(12)))); })); });
            ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff49000 +0x58))) >= 0x3ff00000) && (((0x3ff49000 +0x58))) <= 0x3ff13FFC)), (!(((((0x3ff49000 +0x58))) >= 0x3ff00000) && (((0x3ff49000 +0x58))) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)"); (("(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)" && (!(((((0x3ff49000 +0x58))) >= 0x3ff00000) && (((0x3ff49000 +0x58))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c", 376, __func__, "\"(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)\" && (!(((((0x3ff49000 +0x58))) >= 0x3ff00000) && (((0x3ff49000 +0x58))) <= 0x3ff13FFC))")); } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff49000 +0x58)))) >= 0x3ff00000) && ((((0x3ff49000 +0x58)))) <= 0x3ff13FFC)), (!((((((0x3ff49000 +0x58)))) >= 0x3ff00000) && ((((0x3ff49000 +0x58)))) <= 0x3ff13FFC)), 1), "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)"); (("(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)" && (!((((((0x3ff49000 +0x58)))) >= 0x3ff00000) && ((((0x3ff49000 +0x58)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c", 376, __func__, "\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!((((((0x3ff49000 +0x58)))) >= 0x3ff00000) && ((((0x3ff49000 +0x58)))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)(((0x3ff49000 +0x58)))) = (((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff49000 +0x58))) >= 0x3ff00000) && (((0x3ff49000 +0x58))) <= 0x3ff13FFC)), (!(((((0x3ff49000 +0x58))) >= 0x3ff00000) && (((0x3ff49000 +0x58))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!(((((0x3ff49000 +0x58))) >= 0x3ff00000) && (((0x3ff49000 +0x58))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c", 376, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!(((((0x3ff49000 +0x58))) >= 0x3ff00000) && (((0x3ff49000 +0x58))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((0x3ff49000 +0x58))); }) & ~((0x7) << (12)))|(((2) & (0x7))<<(12)))); })); });
            ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff49000 +0x5c))) >= 0x3ff00000) && (((0x3ff49000 +0x5c))) <= 0x3ff13FFC)), (!(((((0x3ff49000 +0x5c))) >= 0x3ff00000) && (((0x3ff49000 +0x5c))) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)"); (("(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)" && (!(((((0x3ff49000 +0x5c))) >= 0x3ff00000) && (((0x3ff49000 +0x5c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c", 377, __func__, "\"(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)\" && (!(((((0x3ff49000 +0x5c))) >= 0x3ff00000) && (((0x3ff49000 +0x5c))) <= 0x3ff13FFC))")); } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff49000 +0x5c)))) >= 0x3ff00000) && ((((0x3ff49000 +0x5c)))) <= 0x3ff13FFC)), (!((((((0x3ff49000 +0x5c)))) >= 0x3ff00000) && ((((0x3ff49000 +0x5c)))) <= 0x3ff13FFC)), 1), "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)"); (("(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)" && (!((((((0x3ff49000 +0x5c)))) >= 0x3ff00000) && ((((0x3ff49000 +0x5c)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c", 377, __func__, "\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!((((((0x3ff49000 +0x5c)))) >= 0x3ff00000) && ((((0x3ff49000 +0x5c)))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)(((0x3ff49000 +0x5c)))) = (((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff49000 +0x5c))) >= 0x3ff00000) && (((0x3ff49000 +0x5c))) <= 0x3ff13FFC)), (!(((((0x3ff49000 +0x5c))) >= 0x3ff00000) && (((0x3ff49000 +0x5c))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!(((((0x3ff49000 +0x5c))) >= 0x3ff00000) && (((0x3ff49000 +0x5c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c", 377, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!(((((0x3ff49000 +0x5c))) >= 0x3ff00000) && (((0x3ff49000 +0x5c))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((0x3ff49000 +0x5c))); }) & ~((0x7) << (12)))|(((2) & (0x7))<<(12)))); })); });


            ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC)), (!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)"); (("(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)" && (!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c", 380, __func__, "\"(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)\" && (!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC))")); } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff49000 +0x60)))) >= 0x3ff00000) && ((((0x3ff49000 +0x60)))) <= 0x3ff13FFC)), (!((((((0x3ff49000 +0x60)))) >= 0x3ff00000) && ((((0x3ff49000 +0x60)))) <= 0x3ff13FFC)), 1), "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)"); (("(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)" && (!((((((0x3ff49000 +0x60)))) >= 0x3ff00000) && ((((0x3ff49000 +0x60)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c", 380, __func__, "\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!((((((0x3ff49000 +0x60)))) >= 0x3ff00000) && ((((0x3ff49000 +0x60)))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)(((0x3ff49000 +0x60)))) = (((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC)), (!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c", 380, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((0x3ff49000 +0x60))); }) & ~((0x7) << (12)))|(((1) & (0x7))<<(12)))); })); });
            ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC)), (!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC)), 1), "(Cannot use SET_PERI_REG_BITS for DPORT registers use DPORT_SET_PERI_REG_BITS)"); (("(Cannot use SET_PERI_REG_BITS for DPORT registers use DPORT_SET_PERI_REG_BITS)" && (!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c", 381, __func__, "\"(Cannot use SET_PERI_REG_BITS for DPORT registers use DPORT_SET_PERI_REG_BITS)\" && (!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC))")); } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff49000 +0x60)))) >= 0x3ff00000) && ((((0x3ff49000 +0x60)))) <= 0x3ff13FFC)), (!((((((0x3ff49000 +0x60)))) >= 0x3ff00000) && ((((0x3ff49000 +0x60)))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!((((((0x3ff49000 +0x60)))) >= 0x3ff00000) && ((((0x3ff49000 +0x60)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c", 381, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!((((((0x3ff49000 +0x60)))) >= 0x3ff00000) && ((((0x3ff49000 +0x60)))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)(((0x3ff49000 +0x60))))) = (uint32_t)((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC)), (!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c", 381, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!(((((0x3ff49000 +0x60))) >= 0x3ff00000) && (((0x3ff49000 +0x60))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff49000 +0x60)))); })&(~((0x3)<<(10))))|(((drv) & 0x3)<<(10))); })); });
# 395 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c"
        }
    }
}

static void uart_console_configure(void)
{




    const int uart_num = 0;

    uartAttach();
    ets_install_uart_printf();


    uart_tx_wait_idle(0);
# 438 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_init.c"
    const int uart_baud = 115200;
    uart_div_modify(uart_num, (rtc_clk_apb_freq_get() << 4) / uart_baud);


}

static void wdt_reset_cpu0_info_enable(void)
{

    (*(volatile uint32_t *)((((0x3ff00000 + 0x440))))) = (((DPORT_REG_READ((0x3ff00000 + 0x440))|(((1UL << (8))) | ((1UL << (0)))))));
    (*(volatile uint32_t *)((((0x3ff00000 + 0x440))))) = (((DPORT_REG_READ((0x3ff00000 + 0x440)) & (~(((1UL << (0))))))));
}

static void wdt_reset_info_dump(int cpu)
{
    uint32_t inst = 0, pid = 0, stat = 0, data = 0, pc = 0,
             lsstat = 0, lsaddr = 0, lsdata = 0, dstat = 0;
    const char *cpu_name = cpu ? "APP" : "PRO";

    if (cpu == 0) {
        stat = DPORT_REG_READ((0x3ff00000 + 0x444));
        pid = DPORT_REG_READ((0x3ff00000 + 0x448));
        inst = DPORT_REG_READ((0x3ff00000 + 0x44C));
        dstat = DPORT_REG_READ((0x3ff00000 + 0x450));
        data = DPORT_REG_READ((0x3ff00000 + 0x454));
        pc = DPORT_REG_READ((0x3ff00000 + 0x458));
        lsstat = DPORT_REG_READ((0x3ff00000 + 0x45C));
        lsaddr = DPORT_REG_READ((0x3ff00000 + 0x460));
        lsdata = DPORT_REG_READ((0x3ff00000 + 0x464));

    } else {
        stat = DPORT_REG_READ((0x3ff00000 + 0x46C));
        pid = DPORT_REG_READ((0x3ff00000 + 0x470));
        inst = DPORT_REG_READ((0x3ff00000 + 0x474));
        dstat = DPORT_REG_READ((0x3ff00000 + 0x478));
        data = DPORT_REG_READ((0x3ff00000 + 0x47C));
        pc = DPORT_REG_READ((0x3ff00000 + 0x480));
        lsstat = DPORT_REG_READ((0x3ff00000 + 0x484));
        lsaddr = DPORT_REG_READ((0x3ff00000 + 0x488));
        lsdata = DPORT_REG_READ((0x3ff00000 + 0x48C));
    }
    if ((((inst)>>0) & 0xFF) == 0 &&
        (((dstat)>>0) & 0x3F) == 0x28) {
        do { if ( 3 >= ESP_LOG_WARN ) do { if (ESP_LOG_WARN==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "WDT reset info: %s CPU PC=0x%x (waiti mode)" "\033[0m" "\n", esp_log_timestamp(), TAG, cpu_name, pc); } else if (ESP_LOG_WARN==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "WDT reset info: %s CPU PC=0x%x (waiti mode)" "\033[0m" "\n", esp_log_timestamp(), TAG, cpu_name, pc); } else if (ESP_LOG_WARN==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "WDT reset info: %s CPU PC=0x%x (waiti mode)" "\033[0m" "\n", esp_log_timestamp(), TAG, cpu_name, pc); } else if (ESP_LOG_WARN==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "WDT reset info: %s CPU PC=0x%x (waiti mode)" "\033[0m" "\n", esp_log_timestamp(), TAG, cpu_name, pc); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "WDT reset info: %s CPU PC=0x%x (waiti mode)" "\033[0m" "\n", esp_log_timestamp(), TAG, cpu_name, pc); } } while(0); } while(0);
    } else {
        do { if ( 3 >= ESP_LOG_WARN ) do { if (ESP_LOG_WARN==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "WDT reset info: %s CPU PC=0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, cpu_name, pc); } else if (ESP_LOG_WARN==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "WDT reset info: %s CPU PC=0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, cpu_name, pc); } else if (ESP_LOG_WARN==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "WDT reset info: %s CPU PC=0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, cpu_name, pc); } else if (ESP_LOG_WARN==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "WDT reset info: %s CPU PC=0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, cpu_name, pc); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "WDT reset info: %s CPU PC=0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, cpu_name, pc); } } while(0); } while(0);
    }
    do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "WDT reset info: %s CPU STATUS        0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, cpu_name, stat); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "WDT reset info: %s CPU STATUS        0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, cpu_name, stat); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "WDT reset info: %s CPU STATUS        0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, cpu_name, stat); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "WDT reset info: %s CPU STATUS        0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, cpu_name, stat); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "WDT reset info: %s CPU STATUS        0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, cpu_name, stat); } } while(0); } while(0);
    do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "WDT reset info: %s CPU PID           0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, cpu_name, pid); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "WDT reset info: %s CPU PID           0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, cpu_name, pid); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "WDT reset info: %s CPU PID           0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, cpu_name, pid); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "WDT reset info: %s CPU PID           0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, cpu_name, pid); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "WDT reset info: %s CPU PID           0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, cpu_name, pid); } } while(0); } while(0);
    do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "WDT reset info: %s CPU PDEBUGINST    0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, cpu_name, inst); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "WDT reset info: %s CPU PDEBUGINST    0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, cpu_name, inst); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "WDT reset info: %s CPU PDEBUGINST    0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, cpu_name, inst); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "WDT reset info: %s CPU PDEBUGINST    0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, cpu_name, inst); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "WDT reset info: %s CPU PDEBUGINST    0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, cpu_name, inst); } } while(0); } while(0);
    do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "WDT reset info: %s CPU PDEBUGSTATUS  0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, cpu_name, dstat); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "WDT reset info: %s CPU PDEBUGSTATUS  0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, cpu_name, dstat); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "WDT reset info: %s CPU PDEBUGSTATUS  0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, cpu_name, dstat); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "WDT reset info: %s CPU PDEBUGSTATUS  0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, cpu_name, dstat); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "WDT reset info: %s CPU PDEBUGSTATUS  0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, cpu_name, dstat); } } while(0); } while(0);
    do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "WDT reset info: %s CPU PDEBUGDATA    0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, cpu_name, data); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "WDT reset info: %s CPU PDEBUGDATA    0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, cpu_name, data); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "WDT reset info: %s CPU PDEBUGDATA    0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, cpu_name, data); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "WDT reset info: %s CPU PDEBUGDATA    0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, cpu_name, data); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "WDT reset info: %s CPU PDEBUGDATA    0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, cpu_name, data); } } while(0); } while(0);
    do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "WDT reset info: %s CPU PDEBUGPC      0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, cpu_name, pc); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "WDT reset info: %s CPU PDEBUGPC      0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, cpu_name, pc); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "WDT reset info: %s CPU PDEBUGPC      0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, cpu_name, pc); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "WDT reset info: %s CPU PDEBUGPC      0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, cpu_name, pc); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "WDT reset info: %s CPU PDEBUGPC      0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, cpu_name, pc); } } while(0); } while(0);
    do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "WDT reset info: %s CPU PDEBUGLS0STAT 0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, cpu_name, lsstat); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "WDT reset info: %s CPU PDEBUGLS0STAT 0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, cpu_name, lsstat); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "WDT reset info: %s CPU PDEBUGLS0STAT 0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, cpu_name, lsstat); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "WDT reset info: %s CPU PDEBUGLS0STAT 0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, cpu_name, lsstat); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "WDT reset info: %s CPU PDEBUGLS0STAT 0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, cpu_name, lsstat); } } while(0); } while(0);
    do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "WDT reset info: %s CPU PDEBUGLS0ADDR 0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, cpu_name, lsaddr); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "WDT reset info: %s CPU PDEBUGLS0ADDR 0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, cpu_name, lsaddr); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "WDT reset info: %s CPU PDEBUGLS0ADDR 0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, cpu_name, lsaddr); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "WDT reset info: %s CPU PDEBUGLS0ADDR 0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, cpu_name, lsaddr); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "WDT reset info: %s CPU PDEBUGLS0ADDR 0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, cpu_name, lsaddr); } } while(0); } while(0);
    do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "WDT reset info: %s CPU PDEBUGLS0DATA 0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, cpu_name, lsdata); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "WDT reset info: %s CPU PDEBUGLS0DATA 0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, cpu_name, lsdata); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "WDT reset info: %s CPU PDEBUGLS0DATA 0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, cpu_name, lsdata); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "WDT reset info: %s CPU PDEBUGLS0DATA 0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, cpu_name, lsdata); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "WDT reset info: %s CPU PDEBUGLS0DATA 0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, cpu_name, lsdata); } } while(0); } while(0);
}

static void wdt_reset_check(void)
{
    int wdt_rst = 0;
    RESET_REASON rst_reas[2];

    rst_reas[0] = rtc_get_reset_reason(0);
    rst_reas[1] = rtc_get_reset_reason(1);
    if (rst_reas[0] == RTCWDT_SYS_RESET || rst_reas[0] == TG0WDT_SYS_RESET || rst_reas[0] == TG1WDT_SYS_RESET ||
        rst_reas[0] == TGWDT_CPU_RESET || rst_reas[0] == RTCWDT_CPU_RESET) {
        do { if ( 3 >= ESP_LOG_WARN ) do { if (ESP_LOG_WARN==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "PRO CPU has been reset by WDT." "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_WARN==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "PRO CPU has been reset by WDT." "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_WARN==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "PRO CPU has been reset by WDT." "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_WARN==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "PRO CPU has been reset by WDT." "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "PRO CPU has been reset by WDT." "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
        wdt_rst = 1;
    }
    if (rst_reas[1] == RTCWDT_SYS_RESET || rst_reas[1] == TG0WDT_SYS_RESET || rst_reas[1] == TG1WDT_SYS_RESET ||
        rst_reas[1] == TGWDT_CPU_RESET || rst_reas[1] == RTCWDT_CPU_RESET) {
        do { if ( 3 >= ESP_LOG_WARN ) do { if (ESP_LOG_WARN==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "APP CPU has been reset by WDT." "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_WARN==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "APP CPU has been reset by WDT." "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_WARN==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "APP CPU has been reset by WDT." "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_WARN==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "APP CPU has been reset by WDT." "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "APP CPU has been reset by WDT." "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
        wdt_rst = 1;
    }
    if (wdt_rst) {

        wdt_reset_info_dump(0);
        wdt_reset_info_dump(1);
    }
    wdt_reset_cpu0_info_enable();
}

void __assert_func(const char *file, int line, const char *func, const char *expr)
{
    do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Assert failed in %s, %s:%d (%s)" "\033[0m" "\n", esp_log_timestamp(), TAG, func, file, line, expr); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Assert failed in %s, %s:%d (%s)" "\033[0m" "\n", esp_log_timestamp(), TAG, func, file, line, expr); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Assert failed in %s, %s:%d (%s)" "\033[0m" "\n", esp_log_timestamp(), TAG, func, file, line, expr); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Assert failed in %s, %s:%d (%s)" "\033[0m" "\n", esp_log_timestamp(), TAG, func, file, line, expr); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Assert failed in %s, %s:%d (%s)" "\033[0m" "\n", esp_log_timestamp(), TAG, func, file, line, expr); } } while(0); } while(0);
    while(1) {}
}
