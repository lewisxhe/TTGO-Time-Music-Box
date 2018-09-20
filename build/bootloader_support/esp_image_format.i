# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c"
# 1 "D:\\ESP32\\esp-idf-v3.1-rc1\\ESP32_PIC_A2DP\\build\\bootloader_support//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c"
# 14 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c"
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


# 15 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/param.h" 1
# 9 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/param.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/syslimits.h" 1
# 10 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/param.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/endian.h" 1
# 11 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/param.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/param.h" 1
# 12 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/param.h" 2
# 16 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/rtc.h" 1
# 18 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/rtc.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h" 1
# 18 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
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
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h" 2
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
# 18 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/cpu.h" 1
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/cpu.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/cpu.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/corebits.h" 1
# 22 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/cpu.h" 2
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
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_image_format.h" 1
# 14 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_image_format.h"
       


# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h" 1
# 14 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
       


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
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_secure_boot.h" 1
# 14 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_secure_boot.h"
       



# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/efuse_reg.h" 1
# 18 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/efuse_reg.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/soc.h" 1
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/efuse_reg.h" 2
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_secure_boot.h" 2
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
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c" 2
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
# 22 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h" 2
# 31 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"

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
# 22 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c" 2
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
# 23 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c" 2
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
# 24 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_random.h" 1
# 15 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_random.h"
       

# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 18 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_random.h" 2
# 33 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_random.h"
void bootloader_random_enable(void);







void bootloader_random_disable(void);







void bootloader_fill_random(void *buffer, size_t length);
# 25 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_sha.h" 1
# 14 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_sha.h"
       
# 26 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_sha.h"
typedef void *bootloader_sha256_handle_t;

bootloader_sha256_handle_t bootloader_sha256_start();

void bootloader_sha256_data(bootloader_sha256_handle_t handle, const void *data, size_t data_len);

void bootloader_sha256_finish(bootloader_sha256_handle_t handle, uint8_t *digest);
# 26 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c" 2

static const char *TAG = "esp_image";
# 48 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c"
static 
# 48 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c" 3 4
      _Bool 
# 48 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c"
           should_load(uint32_t load_addr);

static 
# 50 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c" 3 4
      _Bool 
# 50 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c"
           should_map(uint32_t load_addr);


static esp_err_t process_segment(int index, uint32_t flash_addr, esp_image_segment_header_t *header, 
# 53 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c" 3 4
                                                                                                    _Bool 
# 53 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c"
                                                                                                         silent, 
# 53 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c" 3 4
                                                                                                                 _Bool 
# 53 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c"
                                                                                                                      do_load, bootloader_sha256_handle_t sha_handle, uint32_t *checksum);


static esp_err_t process_segment_data(intptr_t load_addr, uint32_t data_addr, uint32_t data_len, 
# 56 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c" 3 4
                                                                                                _Bool 
# 56 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c"
                                                                                                     do_load, bootloader_sha256_handle_t sha_handle, uint32_t *checksum);


static esp_err_t verify_image_header(uint32_t src_addr, const esp_image_header_t *image, 
# 59 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c" 3 4
                                                                                        _Bool 
# 59 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c"
                                                                                             silent);


static esp_err_t verify_segment_header(int index, const esp_image_segment_header_t *segment, uint32_t segment_data_offs, 
# 62 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c" 3 4
                                                                                                                        _Bool 
# 62 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c"
                                                                                                                             silent);
# 73 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c"
static esp_err_t verify_checksum(bootloader_sha256_handle_t sha_handle, uint32_t checksum_word, esp_image_metadata_t *data);

static esp_err_t __attribute__((unused)) verify_secure_boot_signature(bootloader_sha256_handle_t sha_handle, esp_image_metadata_t *data);
static esp_err_t __attribute__((unused)) verify_simple_hash(bootloader_sha256_handle_t sha_handle, esp_image_metadata_t *data);

esp_err_t esp_image_load(esp_image_load_mode_t mode, const esp_partition_pos_t *part, esp_image_metadata_t *data)
{



    
# 83 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c" 3 4
   _Bool 
# 83 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c"
        do_load = 
# 83 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c" 3 4
                  0
# 83 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c"
                       ;

    
# 85 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c" 3 4
   _Bool 
# 85 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c"
        silent = (mode == ESP_IMAGE_VERIFY_SILENT);
    esp_err_t err = 0;

    uint32_t checksum_word = 0xEF;
    bootloader_sha256_handle_t sha_handle = 
# 89 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c" 3 4
                                           ((void *)0)
# 89 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c"
                                               ;

    if (data == 
# 91 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c" 3 4
               ((void *)0) 
# 91 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c"
                    || part == 
# 91 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c" 3 4
                               ((void *)0)
# 91 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c"
                                   ) {
        return 0x102;
    }

    if (part->size > 0x1000000) {
        err = 0x102;
        do { if (!silent) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "partition size 0x%x invalid, larger than 16MB" "\033[0m" "\n", esp_log_timestamp(), TAG, part->size); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "partition size 0x%x invalid, larger than 16MB" "\033[0m" "\n", esp_log_timestamp(), TAG, part->size); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "partition size 0x%x invalid, larger than 16MB" "\033[0m" "\n", esp_log_timestamp(), TAG, part->size); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "partition size 0x%x invalid, larger than 16MB" "\033[0m" "\n", esp_log_timestamp(), TAG, part->size); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "partition size 0x%x invalid, larger than 16MB" "\033[0m" "\n", esp_log_timestamp(), TAG, part->size); } } while(0); } while(0); } goto err; } while(0);
    }

    bzero(data, sizeof(esp_image_metadata_t));
    data->start_addr = part->offset;

    do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "reading image header @ 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, data->start_addr); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "reading image header @ 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, data->start_addr); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "reading image header @ 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, data->start_addr); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "reading image header @ 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, data->start_addr); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "reading image header @ 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, data->start_addr); } } while(0); } while(0);
    err = bootloader_flash_read(data->start_addr, &data->image, sizeof(esp_image_header_t), 
# 104 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c" 3 4
                                                                                           1
# 104 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c"
                                                                                               );
    if (err != 0) {
        goto err;
    }





    if (data->image.hash_appended) {

        sha_handle = bootloader_sha256_start();
        if (sha_handle == 
# 116 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c" 3 4
                         ((void *)0)
# 116 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c"
                             ) {
            return 0x101;
        }
        bootloader_sha256_data(sha_handle, &data->image, sizeof(esp_image_header_t));
    }

    do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "image header: 0x%02x 0x%02x 0x%02x 0x%02x %08x" "\033[0m" "\n", esp_log_timestamp(), TAG, data->image.magic, data->image.segment_count, data->image.spi_mode, data->image.spi_size, data->image.entry_addr); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "image header: 0x%02x 0x%02x 0x%02x 0x%02x %08x" "\033[0m" "\n", esp_log_timestamp(), TAG, data->image.magic, data->image.segment_count, data->image.spi_mode, data->image.spi_size, data->image.entry_addr); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "image header: 0x%02x 0x%02x 0x%02x 0x%02x %08x" "\033[0m" "\n", esp_log_timestamp(), TAG, data->image.magic, data->image.segment_count, data->image.spi_mode, data->image.spi_size, data->image.entry_addr); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "image header: 0x%02x 0x%02x 0x%02x 0x%02x %08x" "\033[0m" "\n", esp_log_timestamp(), TAG, data->image.magic, data->image.segment_count, data->image.spi_mode, data->image.spi_size, data->image.entry_addr); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "image header: 0x%02x 0x%02x 0x%02x 0x%02x %08x" "\033[0m" "\n", esp_log_timestamp(), TAG, data->image.magic, data->image.segment_count, data->image.spi_mode, data->image.spi_size, data->image.entry_addr); } } while(0); } while(0)




                                    ;

    err = verify_image_header(data->start_addr, &data->image, silent);
    if (err != 0) {
goto err;
    }

    if (data->image.segment_count > 16) {
        do { if (!silent) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "image at 0x%x segment count %d exceeds max %d" "\033[0m" "\n", esp_log_timestamp(), TAG, data->start_addr, data->image.segment_count, 16); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "image at 0x%x segment count %d exceeds max %d" "\033[0m" "\n", esp_log_timestamp(), TAG, data->start_addr, data->image.segment_count, 16); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "image at 0x%x segment count %d exceeds max %d" "\033[0m" "\n", esp_log_timestamp(), TAG, data->start_addr, data->image.segment_count, 16); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "image at 0x%x segment count %d exceeds max %d" "\033[0m" "\n", esp_log_timestamp(), TAG, data->start_addr, data->image.segment_count, 16); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "image at 0x%x segment count %d exceeds max %d" "\033[0m" "\n", esp_log_timestamp(), TAG, data->start_addr, data->image.segment_count, 16); } } while(0); } while(0); } goto err; } while(0)
                                                                                      ;
    }

    uint32_t next_addr = data->start_addr + sizeof(esp_image_header_t);
    for(int i = 0; i < data->image.segment_count; i++) {
        esp_image_segment_header_t *header = &data->segments[i];
        do { if ( 3 >= ESP_LOG_VERBOSE ) do { if (ESP_LOG_VERBOSE==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "loading segment header %d at offset 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, i, next_addr); } else if (ESP_LOG_VERBOSE==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "loading segment header %d at offset 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, i, next_addr); } else if (ESP_LOG_VERBOSE==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "loading segment header %d at offset 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, i, next_addr); } else if (ESP_LOG_VERBOSE==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "loading segment header %d at offset 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, i, next_addr); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "loading segment header %d at offset 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, i, next_addr); } } while(0); } while(0);
        err = process_segment(i, next_addr, header, silent, do_load, sha_handle, &checksum_word);
        if (err != 0) {
            goto err;
        }
        next_addr += sizeof(esp_image_segment_header_t);
        data->segment_data[i] = next_addr;
        next_addr += header->data_len;
    }


    uint32_t end_addr = next_addr;
    if (end_addr < data->start_addr) {
        do { if (!silent) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "image offset has wrapped" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "image offset has wrapped" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "image offset has wrapped" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "image offset has wrapped" "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "image offset has wrapped" "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0); } goto err; } while(0);
    }

    data->image_len = end_addr - data->start_addr;
    do { if ( 3 >= ESP_LOG_VERBOSE ) do { if (ESP_LOG_VERBOSE==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "image start 0x%08x end of last section 0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, data->start_addr, end_addr); } else if (ESP_LOG_VERBOSE==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "image start 0x%08x end of last section 0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, data->start_addr, end_addr); } else if (ESP_LOG_VERBOSE==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "image start 0x%08x end of last section 0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, data->start_addr, end_addr); } else if (ESP_LOG_VERBOSE==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "image start 0x%08x end of last section 0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, data->start_addr, end_addr); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "image start 0x%08x end of last section 0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, data->start_addr, end_addr); } } while(0); } while(0);
    if (!esp_cpu_in_ocd_debug_mode()) {
        err = verify_checksum(sha_handle, checksum_word, data);
        if (err != 0) {
            goto err;
        }
    }
    if (data->image_len > part->size) {
        do { if (!silent) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Image length %d doesn't fit in partition length %d" "\033[0m" "\n", esp_log_timestamp(), TAG, data->image_len, part->size); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Image length %d doesn't fit in partition length %d" "\033[0m" "\n", esp_log_timestamp(), TAG, data->image_len, part->size); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Image length %d doesn't fit in partition length %d" "\033[0m" "\n", esp_log_timestamp(), TAG, data->image_len, part->size); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Image length %d doesn't fit in partition length %d" "\033[0m" "\n", esp_log_timestamp(), TAG, data->image_len, part->size); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Image length %d doesn't fit in partition length %d" "\033[0m" "\n", esp_log_timestamp(), TAG, data->image_len, part->size); } } while(0); } while(0); } goto err; } while(0);
    }

    
# 170 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c" 3 4
   _Bool 
# 170 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c"
        is_bootloader = (data->start_addr == 0x1000);





    if (!is_bootloader) {





        if (sha_handle != 
# 182 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c" 3 4
                         ((void *)0) 
# 182 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c"
                              && !esp_cpu_in_ocd_debug_mode()) {
            err = verify_simple_hash(sha_handle, data);
        }

    } else {

        if (sha_handle != 
# 188 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c" 3 4
                         ((void *)0)
# 188 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c"
                             ) {
            bootloader_sha256_finish(sha_handle, 
# 189 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c" 3 4
                                                ((void *)0)
# 189 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c"
                                                    );
        }
    }
    sha_handle = 
# 192 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c" 3 4
                ((void *)0)
# 192 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c"
                    ;
    if (err != 0) {
        goto err;
    }
# 212 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c"
    return 0;

 err:
    if (err == 0) {
      err = (0x2000 + 2);
    }
    if (sha_handle != 
# 218 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c" 3 4
                     ((void *)0)
# 218 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c"
                         ) {

        bootloader_sha256_finish(sha_handle, 
# 220 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c" 3 4
                                            ((void *)0)
# 220 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c"
                                                );
    }

    bzero(data, sizeof(esp_image_metadata_t));
    return err;
}

static esp_err_t verify_image_header(uint32_t src_addr, const esp_image_header_t *image, 
# 227 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c" 3 4
                                                                                        _Bool 
# 227 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c"
                                                                                             silent)
{
    esp_err_t err = 0;

    if (image->magic != 0xE9) {
        if (!silent) {
            do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "image at 0x%x has invalid magic byte" "\033[0m" "\n", esp_log_timestamp(), TAG, src_addr); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "image at 0x%x has invalid magic byte" "\033[0m" "\n", esp_log_timestamp(), TAG, src_addr); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "image at 0x%x has invalid magic byte" "\033[0m" "\n", esp_log_timestamp(), TAG, src_addr); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "image at 0x%x has invalid magic byte" "\033[0m" "\n", esp_log_timestamp(), TAG, src_addr); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "image at 0x%x has invalid magic byte" "\033[0m" "\n", esp_log_timestamp(), TAG, src_addr); } } while(0); } while(0);
        }
        err = (0x2000 + 2);
    }
    if (!silent) {
        if (image->spi_mode > ESP_IMAGE_SPI_MODE_SLOW_READ) {
            do { if ( 3 >= ESP_LOG_WARN ) do { if (ESP_LOG_WARN==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "image at 0x%x has invalid SPI mode %d" "\033[0m" "\n", esp_log_timestamp(), TAG, src_addr, image->spi_mode); } else if (ESP_LOG_WARN==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "image at 0x%x has invalid SPI mode %d" "\033[0m" "\n", esp_log_timestamp(), TAG, src_addr, image->spi_mode); } else if (ESP_LOG_WARN==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "image at 0x%x has invalid SPI mode %d" "\033[0m" "\n", esp_log_timestamp(), TAG, src_addr, image->spi_mode); } else if (ESP_LOG_WARN==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "image at 0x%x has invalid SPI mode %d" "\033[0m" "\n", esp_log_timestamp(), TAG, src_addr, image->spi_mode); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "image at 0x%x has invalid SPI mode %d" "\033[0m" "\n", esp_log_timestamp(), TAG, src_addr, image->spi_mode); } } while(0); } while(0);
        }
        if (image->spi_speed > ESP_IMAGE_SPI_SPEED_80M) {
            do { if ( 3 >= ESP_LOG_WARN ) do { if (ESP_LOG_WARN==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "image at 0x%x has invalid SPI speed %d" "\033[0m" "\n", esp_log_timestamp(), TAG, src_addr, image->spi_speed); } else if (ESP_LOG_WARN==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "image at 0x%x has invalid SPI speed %d" "\033[0m" "\n", esp_log_timestamp(), TAG, src_addr, image->spi_speed); } else if (ESP_LOG_WARN==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "image at 0x%x has invalid SPI speed %d" "\033[0m" "\n", esp_log_timestamp(), TAG, src_addr, image->spi_speed); } else if (ESP_LOG_WARN==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "image at 0x%x has invalid SPI speed %d" "\033[0m" "\n", esp_log_timestamp(), TAG, src_addr, image->spi_speed); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "image at 0x%x has invalid SPI speed %d" "\033[0m" "\n", esp_log_timestamp(), TAG, src_addr, image->spi_speed); } } while(0); } while(0);
        }
        if (image->spi_size > ESP_IMAGE_FLASH_SIZE_MAX) {
            do { if ( 3 >= ESP_LOG_WARN ) do { if (ESP_LOG_WARN==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "image at 0x%x has invalid SPI size %d" "\033[0m" "\n", esp_log_timestamp(), TAG, src_addr, image->spi_size); } else if (ESP_LOG_WARN==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "image at 0x%x has invalid SPI size %d" "\033[0m" "\n", esp_log_timestamp(), TAG, src_addr, image->spi_size); } else if (ESP_LOG_WARN==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "image at 0x%x has invalid SPI size %d" "\033[0m" "\n", esp_log_timestamp(), TAG, src_addr, image->spi_size); } else if (ESP_LOG_WARN==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "image at 0x%x has invalid SPI size %d" "\033[0m" "\n", esp_log_timestamp(), TAG, src_addr, image->spi_size); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "image at 0x%x has invalid SPI size %d" "\033[0m" "\n", esp_log_timestamp(), TAG, src_addr, image->spi_size); } } while(0); } while(0);
        }
    }
    return err;
}

static esp_err_t process_segment(int index, uint32_t flash_addr, esp_image_segment_header_t *header, 
# 251 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c" 3 4
                                                                                                    _Bool 
# 251 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c"
                                                                                                         silent, 
# 251 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c" 3 4
                                                                                                                 _Bool 
# 251 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c"
                                                                                                                      do_load, bootloader_sha256_handle_t sha_handle, uint32_t *checksum)
{
    esp_err_t err;


    err = bootloader_flash_read(flash_addr, header, sizeof(esp_image_segment_header_t), 
# 256 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c" 3 4
                                                                                       1
# 256 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c"
                                                                                           );
    if (err != 0) {
        do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "bootloader_flash_read failed at 0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, flash_addr); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "bootloader_flash_read failed at 0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, flash_addr); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "bootloader_flash_read failed at 0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, flash_addr); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "bootloader_flash_read failed at 0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, flash_addr); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "bootloader_flash_read failed at 0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, flash_addr); } } while(0); } while(0);
        return err;
    }
    if (sha_handle != 
# 261 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c" 3 4
                     ((void *)0)
# 261 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c"
                         ) {
        bootloader_sha256_data(sha_handle, header, sizeof(esp_image_segment_header_t));
    }

    intptr_t load_addr = header->load_addr;
    uint32_t data_len = header->data_len;
    uint32_t data_addr = flash_addr + sizeof(esp_image_segment_header_t);

    do { if ( 3 >= ESP_LOG_VERBOSE ) do { if (ESP_LOG_VERBOSE==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "segment data length 0x%x data starts 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, data_len, data_addr); } else if (ESP_LOG_VERBOSE==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "segment data length 0x%x data starts 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, data_len, data_addr); } else if (ESP_LOG_VERBOSE==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "segment data length 0x%x data starts 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, data_len, data_addr); } else if (ESP_LOG_VERBOSE==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "segment data length 0x%x data starts 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, data_len, data_addr); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "segment data length 0x%x data starts 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, data_len, data_addr); } } while(0); } while(0);

    err = verify_segment_header(index, header, data_addr, silent);
    if (err != 0) {
        return err;
    }

    if (data_len % 4 != 0) {
        do { if (!silent) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "unaligned segment length 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, data_len); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "unaligned segment length 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, data_len); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "unaligned segment length 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, data_len); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "unaligned segment length 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, data_len); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "unaligned segment length 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, data_len); } } while(0); } while(0); } goto err; } while(0);
    }

    
# 280 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c" 3 4
   _Bool 
# 280 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c"
        is_mapping = should_map(load_addr);
    do_load = do_load && should_load(load_addr);

    if (!silent) {
        do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "segment %d: paddr=0x%08x vaddr=0x%08x size=0x%05x (%6d) %s" "\033[0m" "\n", esp_log_timestamp(), TAG, index, data_addr, load_addr, data_len, data_len, (do_load)?"load":(is_mapping)?"map":""); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "segment %d: paddr=0x%08x vaddr=0x%08x size=0x%05x (%6d) %s" "\033[0m" "\n", esp_log_timestamp(), TAG, index, data_addr, load_addr, data_len, data_len, (do_load)?"load":(is_mapping)?"map":""); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "segment %d: paddr=0x%08x vaddr=0x%08x size=0x%05x (%6d) %s" "\033[0m" "\n", esp_log_timestamp(), TAG, index, data_addr, load_addr, data_len, data_len, (do_load)?"load":(is_mapping)?"map":""); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "segment %d: paddr=0x%08x vaddr=0x%08x size=0x%05x (%6d) %s" "\033[0m" "\n", esp_log_timestamp(), TAG, index, data_addr, load_addr, data_len, data_len, (do_load)?"load":(is_mapping)?"map":""); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "segment %d: paddr=0x%08x vaddr=0x%08x size=0x%05x (%6d) %s" "\033[0m" "\n", esp_log_timestamp(), TAG, index, data_addr, load_addr, data_len, data_len, (do_load)?"load":(is_mapping)?"map":""); } } while(0); } while(0)


                                                        ;
    }

    if (do_load) {

        uint32_t end_addr = load_addr + data_len;
        if (end_addr < 0x40000000) {
            intptr_t sp = (intptr_t)get_sp();
            if (end_addr > sp - 32768) {
                do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Segment %d end address 0x%08x too high (bootloader stack 0x%08x liimit 0x%08x)" "\033[0m" "\n", esp_log_timestamp(), TAG, index, end_addr, sp, sp - 32768); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Segment %d end address 0x%08x too high (bootloader stack 0x%08x liimit 0x%08x)" "\033[0m" "\n", esp_log_timestamp(), TAG, index, end_addr, sp, sp - 32768); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Segment %d end address 0x%08x too high (bootloader stack 0x%08x liimit 0x%08x)" "\033[0m" "\n", esp_log_timestamp(), TAG, index, end_addr, sp, sp - 32768); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Segment %d end address 0x%08x too high (bootloader stack 0x%08x liimit 0x%08x)" "\033[0m" "\n", esp_log_timestamp(), TAG, index, end_addr, sp, sp - 32768); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Segment %d end address 0x%08x too high (bootloader stack 0x%08x liimit 0x%08x)" "\033[0m" "\n", esp_log_timestamp(), TAG, index, end_addr, sp, sp - 32768); } } while(0); } while(0)
                                                                       ;
                return (0x2000 + 2);
            }
        }
    }

    uint32_t free_page_count = spi_flash_mmap_get_free_pages(SPI_FLASH_MMAP_DATA);
    do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "free data page_count 0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG,free_page_count); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "free data page_count 0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG,free_page_count); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "free data page_count 0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG,free_page_count); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "free data page_count 0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG,free_page_count); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "free data page_count 0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG,free_page_count); } } while(0); } while(0);
    uint32_t offset_page = 0;
    while (data_len >= free_page_count * 0x10000) {
        offset_page = ((data_addr & 0x0000FFFF) != 0)?1:0;
        err = process_segment_data(load_addr, data_addr, (free_page_count - offset_page) * 0x10000, do_load, sha_handle, checksum);
        if (err != 0) {
            return err;
        }
        data_addr += (free_page_count - offset_page) * 0x10000;
        data_len -= (free_page_count - offset_page) * 0x10000;
    }

    err = process_segment_data(load_addr, data_addr, data_len, do_load, sha_handle, checksum);
    if (err != 0) {
        return err;
    }
    return 0;

err:
    if (err == 0) {
        err = (0x2000 + 2);
    }

    return err;
}

static esp_err_t process_segment_data(intptr_t load_addr, uint32_t data_addr, uint32_t data_len, 
# 330 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c" 3 4
                                                                                                _Bool 
# 330 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c"
                                                                                                     do_load, bootloader_sha256_handle_t sha_handle, uint32_t *checksum)
{
    const uint32_t *data = (const uint32_t *)bootloader_mmap(data_addr, data_len);
    if(!data) {
        do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "bootloader_mmap(0x%x, 0x%x) failed" "\033[0m" "\n", esp_log_timestamp(), TAG, data_addr, data_len); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "bootloader_mmap(0x%x, 0x%x) failed" "\033[0m" "\n", esp_log_timestamp(), TAG, data_addr, data_len); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "bootloader_mmap(0x%x, 0x%x) failed" "\033[0m" "\n", esp_log_timestamp(), TAG, data_addr, data_len); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "bootloader_mmap(0x%x, 0x%x) failed" "\033[0m" "\n", esp_log_timestamp(), TAG, data_addr, data_len); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "bootloader_mmap(0x%x, 0x%x) failed" "\033[0m" "\n", esp_log_timestamp(), TAG, data_addr, data_len); } } while(0); } while(0)
                                     ;
        return -1;
    }
# 347 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c"
    const uint32_t *src = data;

    for (int i = 0; i < data_len; i += 4) {
        int w_i = i/4;
        uint32_t w = src[w_i];
        *checksum ^= w;
# 362 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c"
        const size_t SHA_CHUNK = 1024;
        if (sha_handle != 
# 363 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c" 3 4
                         ((void *)0) 
# 363 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c"
                              && i % SHA_CHUNK == 0) {
            bootloader_sha256_data(sha_handle, &src[w_i],
                                   ((SHA_CHUNK) < (data_len - i) ? (SHA_CHUNK) : (data_len - i)));
        }
    }

    bootloader_munmap(data);

    return 0;
}

static esp_err_t verify_segment_header(int index, const esp_image_segment_header_t *segment, uint32_t segment_data_offs, 
# 374 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c" 3 4
                                                                                                                        _Bool 
# 374 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c"
                                                                                                                             silent)
{
    if ((segment->data_len & 3) != 0
        || segment->data_len >= 0x1000000) {
        if (!silent) {
            do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "invalid segment length 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, segment->data_len); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "invalid segment length 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, segment->data_len); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "invalid segment length 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, segment->data_len); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "invalid segment length 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, segment->data_len); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "invalid segment length 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, segment->data_len); } } while(0); } while(0);
        }
        return (0x2000 + 2);
    }

    uint32_t load_addr = segment->load_addr;
    
# 385 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c" 3 4
   _Bool 
# 385 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c"
        map_segment = should_map(load_addr);




    do { if ( 3 >= ESP_LOG_VERBOSE ) do { if (ESP_LOG_VERBOSE==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "segment %d map_segment %d segment_data_offs 0x%x load_addr 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, index, map_segment, segment_data_offs, load_addr); } else if (ESP_LOG_VERBOSE==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "segment %d map_segment %d segment_data_offs 0x%x load_addr 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, index, map_segment, segment_data_offs, load_addr); } else if (ESP_LOG_VERBOSE==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "segment %d map_segment %d segment_data_offs 0x%x load_addr 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, index, map_segment, segment_data_offs, load_addr); } else if (ESP_LOG_VERBOSE==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "segment %d map_segment %d segment_data_offs 0x%x load_addr 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, index, map_segment, segment_data_offs, load_addr); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "segment %d map_segment %d segment_data_offs 0x%x load_addr 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, index, map_segment, segment_data_offs, load_addr); } } while(0); } while(0)
                                                              ;
    if (map_segment
        && ((segment_data_offs % 0x10000) != (load_addr % 0x10000))) {
        if (!silent) {
            do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Segment %d load address 0x%08x, doesn't match data 0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, index, load_addr, segment_data_offs); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Segment %d load address 0x%08x, doesn't match data 0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, index, load_addr, segment_data_offs); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Segment %d load address 0x%08x, doesn't match data 0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, index, load_addr, segment_data_offs); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Segment %d load address 0x%08x, doesn't match data 0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, index, load_addr, segment_data_offs); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Segment %d load address 0x%08x, doesn't match data 0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, index, load_addr, segment_data_offs); } } while(0); } while(0)
                                                         ;
        }
        return (0x2000 + 2);
    }

    return 0;
}

static 
# 404 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c" 3 4
      _Bool 
# 404 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c"
           should_map(uint32_t load_addr)
{
    return (load_addr >= 0x400D0000 && load_addr < 0x40400000)
        || (load_addr >= 0x3F400000 && load_addr < 0x3F800000);
}

static 
# 410 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c" 3 4
      _Bool 
# 410 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c"
           should_load(uint32_t load_addr)
{


    
# 414 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c" 3 4
   _Bool 
# 414 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c"
        load_rtc_memory = rtc_get_reset_reason(0) != DEEPSLEEP_RESET;

    if (should_map(load_addr)) {
        return 
# 417 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c" 3 4
              0
# 417 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c"
                   ;
    }

    if (load_addr < 0x10000000) {




        return 
# 425 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c" 3 4
              0
# 425 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c"
                   ;
    }

    if (!load_rtc_memory) {
        if (load_addr >= 0x400C0000 && load_addr < 0x400C2000) {
            do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Skipping RTC code segment at 0x%08x\n" "\033[0m" "\n", esp_log_timestamp(), TAG, load_addr); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Skipping RTC code segment at 0x%08x\n" "\033[0m" "\n", esp_log_timestamp(), TAG, load_addr); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Skipping RTC code segment at 0x%08x\n" "\033[0m" "\n", esp_log_timestamp(), TAG, load_addr); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Skipping RTC code segment at 0x%08x\n" "\033[0m" "\n", esp_log_timestamp(), TAG, load_addr); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Skipping RTC code segment at 0x%08x\n" "\033[0m" "\n", esp_log_timestamp(), TAG, load_addr); } } while(0); } while(0);
            return 
# 431 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c" 3 4
                  0
# 431 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c"
                       ;
        }
        if (load_addr >= 0x50000000 && load_addr < 0x50002000) {
            do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Skipping RTC data segment at 0x%08x\n" "\033[0m" "\n", esp_log_timestamp(), TAG, load_addr); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Skipping RTC data segment at 0x%08x\n" "\033[0m" "\n", esp_log_timestamp(), TAG, load_addr); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Skipping RTC data segment at 0x%08x\n" "\033[0m" "\n", esp_log_timestamp(), TAG, load_addr); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Skipping RTC data segment at 0x%08x\n" "\033[0m" "\n", esp_log_timestamp(), TAG, load_addr); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Skipping RTC data segment at 0x%08x\n" "\033[0m" "\n", esp_log_timestamp(), TAG, load_addr); } } while(0); } while(0);
            return 
# 435 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c" 3 4
                  0
# 435 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c"
                       ;
        }
    }

    return 
# 439 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c" 3 4
          1
# 439 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c"
              ;
}

esp_err_t esp_image_verify_bootloader(uint32_t *length)
{
    esp_image_metadata_t data;
    const esp_partition_pos_t bootloader_part = {
        .offset = 0x1000,
        .size = 0x10000 - 0x1000,
    };
    esp_err_t err = esp_image_load(ESP_IMAGE_VERIFY,
                                   &bootloader_part,
                                   &data);
    if (length != 
# 452 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c" 3 4
                 ((void *)0)
# 452 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c"
                     ) {
        *length = (err == 0) ? data.image_len : 0;
    }
    return err;
}

static esp_err_t verify_checksum(bootloader_sha256_handle_t sha_handle, uint32_t checksum_word, esp_image_metadata_t *data)
{
    uint32_t unpadded_length = data->image_len;
    uint32_t length = unpadded_length + 1;
    length = (length + 15) & ~15;


    uint8_t buf[16];
    esp_err_t err = bootloader_flash_read(data->start_addr + unpadded_length, buf, length - unpadded_length, 
# 466 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c" 3 4
                                                                                                            1
# 466 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c"
                                                                                                                );
    uint8_t calc = buf[length - unpadded_length - 1];
    uint8_t checksum = (checksum_word >> 24)
        ^ (checksum_word >> 16)
        ^ (checksum_word >> 8)
        ^ (checksum_word >> 0);
    if (err != 0 || checksum != calc) {
        do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Checksum failed. Calculated 0x%x read 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, checksum, calc); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Checksum failed. Calculated 0x%x read 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, checksum, calc); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Checksum failed. Calculated 0x%x read 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, checksum, calc); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Checksum failed. Calculated 0x%x read 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, checksum, calc); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Checksum failed. Calculated 0x%x read 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, checksum, calc); } } while(0); } while(0);
        return (0x2000 + 2);
    }
    if (sha_handle != 
# 476 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c" 3 4
                     ((void *)0)
# 476 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c"
                         ) {
        bootloader_sha256_data(sha_handle, buf, length - unpadded_length);
    }

    if (data->image.hash_appended) {

        length += 32;
    }
    data->image_len = length;

    return 0;
}

static void debug_log_hash(const uint8_t *image_hash, const char *caption);

static esp_err_t verify_secure_boot_signature(bootloader_sha256_handle_t sha_handle, esp_image_metadata_t *data)
{
    uint8_t image_hash[32] = { 0 };



    if (data->image.hash_appended) {
        const void *simple_hash = bootloader_mmap(data->start_addr + data->image_len - 32, 32);
        bootloader_sha256_data(sha_handle, simple_hash, 32);
        bootloader_munmap(simple_hash);
    }

    bootloader_sha256_finish(sha_handle, image_hash);


    debug_log_hash(image_hash, "Calculated secure boot hash");


    const esp_secure_boot_sig_block_t *sig_block = bootloader_mmap(data->start_addr + data->image_len, sizeof(esp_secure_boot_sig_block_t));
    esp_err_t err = esp_secure_boot_verify_signature_block(sig_block, image_hash);
    bootloader_munmap(sig_block);
    if (err != 0) {
        do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Secure boot signature verification failed" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Secure boot signature verification failed" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Secure boot signature verification failed" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Secure boot signature verification failed" "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Secure boot signature verification failed" "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);


        do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Calculating simple hash to check for corruption..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Calculating simple hash to check for corruption..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Calculating simple hash to check for corruption..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Calculating simple hash to check for corruption..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Calculating simple hash to check for corruption..." "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
        const void *whole_image = bootloader_mmap(data->start_addr, data->image_len - 32);
        if (whole_image != 
# 518 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c" 3 4
                          ((void *)0)
# 518 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c"
                              ) {
            sha_handle = bootloader_sha256_start();
            bootloader_sha256_data(sha_handle, whole_image, data->image_len - 32);
            bootloader_munmap(whole_image);
            if (verify_simple_hash(sha_handle, data) != 0) {
                do { if ( 3 >= ESP_LOG_WARN ) do { if (ESP_LOG_WARN==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "image corrupted on flash" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_WARN==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "image corrupted on flash" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_WARN==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "image corrupted on flash" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_WARN==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "image corrupted on flash" "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "image corrupted on flash" "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
            } else {
                do { if ( 3 >= ESP_LOG_WARN ) do { if (ESP_LOG_WARN==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "image valid, signature bad" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_WARN==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "image valid, signature bad" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_WARN==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "image valid, signature bad" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_WARN==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "image valid, signature bad" "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "image valid, signature bad" "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
            }
        }
        return (0x2000 + 2);
    }

    return 0;
}

static esp_err_t verify_simple_hash(bootloader_sha256_handle_t sha_handle, esp_image_metadata_t *data)
{
    uint8_t image_hash[32] = { 0 };
    bootloader_sha256_finish(sha_handle, image_hash);


    debug_log_hash(image_hash, "Calculated hash");


    const void *hash = bootloader_mmap(data->start_addr + data->image_len - 32, 32);
    if (memcmp(hash, image_hash, 32) != 0) {
        do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Image hash failed - image is corrupt" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Image hash failed - image is corrupt" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Image hash failed - image is corrupt" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Image hash failed - image is corrupt" "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Image hash failed - image is corrupt" "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
        debug_log_hash(hash, "Expected hash");
        bootloader_munmap(hash);
        return (0x2000 + 2);
    }

    bootloader_munmap(hash);
    return 0;
}


static void debug_log_hash(const uint8_t *image_hash, const char *label)
{

        char hash_print[sizeof(image_hash)*2 + 1];
        hash_print[sizeof(image_hash)*2] = 0;
        for (int i = 0; i < sizeof(image_hash); i++) {
            for (int shift = 0; shift < 2; shift++) {
                uint8_t nibble = (image_hash[i] >> (shift ? 0 : 4)) & 0x0F;
                if (nibble < 10) {
                    hash_print[i*2+shift] = '0' + nibble;
                } else {
                    hash_print[i*2+shift] = 'a' + nibble - 10;
                }
            }
        }
        do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s: %s" "\033[0m" "\n", esp_log_timestamp(), TAG, label, hash_print); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s: %s" "\033[0m" "\n", esp_log_timestamp(), TAG, label, hash_print); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "%s: %s" "\033[0m" "\n", esp_log_timestamp(), TAG, label, hash_print); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "%s: %s" "\033[0m" "\n", esp_log_timestamp(), TAG, label, hash_print); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s: %s" "\033[0m" "\n", esp_log_timestamp(), TAG, label, hash_print); } } while(0); } while(0);

}
