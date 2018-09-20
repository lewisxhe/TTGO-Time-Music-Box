# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c"
# 1 "D:\\ESP32\\esp-idf-v3.1-rc1\\ESP32_PIC_A2DP\\build\\wpa_supplicant//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c"







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


# 9 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/includes.h" 1
# 11 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/wpa.h" 1
# 18 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/wpa.h"
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
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/wpa.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/common.h" 1
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/common.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/port/include/os.h" 1
# 17 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/port/include/os.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_types.h" 1
# 23 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_types.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 24 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_types.h" 2
# 18 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/port/include/os.h" 2

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

# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/port/include/os.h" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h" 1
# 14 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
       
# 24 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
typedef int32_t esp_err_t;
# 58 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
const char *esp_err_to_name(esp_err_t code);
# 76 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
const char *esp_err_to_name_r(esp_err_t code, char *buf, size_t buflen);


void _esp_error_check_failed(esp_err_t rc, const char *file, int line, const char *function, const char *expression) __attribute__((noreturn));
# 22 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/port/include/os.h" 2


typedef long os_time_t;






void os_sleep(os_time_t sec, os_time_t usec);

struct os_time {
 os_time_t sec;
 os_time_t usec;
};






int os_get_time(struct os_time *t);
# 76 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/port/include/os.h"
int os_mktime(int year, int month, int day, int hour, int min, int sec,
       os_time_t *t);







int os_daemonize(const char *pid_file);





void os_daemonize_terminate(const char *pid_file);







int os_get_random(unsigned char *buf, size_t len);





unsigned long os_random(void);
# 120 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/port/include/os.h"
char * os_rel2abs_path(const char *rel_path);
# 130 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/port/include/os.h"
int os_program_init(void);
# 140 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/port/include/os.h"
void os_program_deinit(void);
# 152 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/port/include/os.h"
int os_setenv(const char *name, const char *value, int overwrite);
# 162 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/port/include/os.h"
int os_unsetenv(const char *name);
# 174 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/port/include/os.h"
char * os_readfile(const char *name, size_t *len);
# 217 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/port/include/os.h"
char * ets_strdup(const char *s);
# 287 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/port/include/os.h"
size_t os_strlcpy(char *dest, const char *src, size_t siz);
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/common.h" 2




typedef uint64_t u64;
typedef uint32_t u32;
typedef uint16_t u16;
typedef uint8_t u8;
typedef int64_t s64;
typedef int32_t s32;
typedef int16_t s16;
typedef int8_t s8;



# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/endian.h" 1
# 37 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/common.h" 2






# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/port/include/endian.h" 1
# 32 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/port/include/endian.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/port/include/byteswap.h" 1
# 33 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/port/include/endian.h" 2
# 124 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/port/include/endian.h"
static __inline__ uint16_t
be16dec(const void *pp)
{
 uint8_t const *p = (uint8_t const *)pp;

 return ((p[0] << 8) | p[1]);
}

static __inline__ uint32_t
be32dec(const void *pp)
{
 uint8_t const *p = (uint8_t const *)pp;

 return (((unsigned)p[0] << 24) | (p[1] << 16) | (p[2] << 8) | p[3]);
}

static __inline__ uint64_t
be64dec(const void *pp)
{
 uint8_t const *p = (uint8_t const *)pp;

 return (((uint64_t)be32dec(p) << 32) | be32dec(p + 4));
}

static __inline__ uint16_t
le16dec(const void *pp)
{
 uint8_t const *p = (uint8_t const *)pp;

 return ((p[1] << 8) | p[0]);
}

static __inline__ uint32_t
le32dec(const void *pp)
{
 uint8_t const *p = (uint8_t const *)pp;

 return (((unsigned)p[3] << 24) | (p[2] << 16) | (p[1] << 8) | p[0]);
}

static __inline__ uint64_t
le64dec(const void *pp)
{
 uint8_t const *p = (uint8_t const *)pp;

 return (((uint64_t)le32dec(p + 4) << 32) | le32dec(p));
}

static __inline__ void
be16enc(void *pp, uint16_t u)
{
 uint8_t *p = (uint8_t *)pp;

 p[0] = (u >> 8) & 0xff;
 p[1] = u & 0xff;
}

static __inline__ void
be32enc(void *pp, uint32_t u)
{
 uint8_t *p = (uint8_t *)pp;

 p[0] = (u >> 24) & 0xff;
 p[1] = (u >> 16) & 0xff;
 p[2] = (u >> 8) & 0xff;
 p[3] = u & 0xff;
}

static __inline__ void
be64enc(void *pp, uint64_t u)
{
 uint8_t *p = (uint8_t *)pp;

 be32enc(p, (uint32_t)(u >> 32));
 be32enc(p + 4, (uint32_t)(u & 0xffffffffU));
}

static __inline__ void
le16enc(void *pp, uint16_t u)
{
 uint8_t *p = (uint8_t *)pp;

 p[0] = u & 0xff;
 p[1] = (u >> 8) & 0xff;
}

static __inline__ void
le32enc(void *pp, uint32_t u)
{
 uint8_t *p = (uint8_t *)pp;

 p[0] = u & 0xff;
 p[1] = (u >> 8) & 0xff;
 p[2] = (u >> 16) & 0xff;
 p[3] = (u >> 24) & 0xff;
}

static __inline__ void
le64enc(void *pp, uint64_t u)
{
 uint8_t *p = (uint8_t *)pp;

 le32enc(p, (uint32_t)(u & 0xffffffffU));
 le32enc(p + 4, (uint32_t)(u >> 32));
}
# 44 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/common.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/port/include/byteswap.h" 1
# 45 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/common.h" 2
# 278 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/common.h"
typedef u16 be16;
typedef u16 le16;
typedef u32 be32;
typedef u32 le32;
typedef u64 be64;
typedef u64 le64;
# 293 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/common.h"
int hwaddr_aton(const char *txt, u8 *addr);
int hwaddr_aton2(const char *txt, u8 *addr);
int hexstr2bin(const char *hex, u8 *buf, size_t len);
void inc_byte_array(u8 *counter, size_t len);
void wpa_get_ntp_timestamp(u8 *buf);
int wpa_snprintf_hex(char *buf, size_t buf_size, const u8 *data, size_t len);
int wpa_snprintf_hex_uppercase(char *buf, size_t buf_size, const u8 *data,
          size_t len);
# 310 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/common.h"
const char * wpa_ssid_txt(const u8 *ssid, size_t ssid_len);
char * wpa_config_parse_string(const char *value, size_t *len);

static inline int is_zero_ether_addr(const u8 *a)
{
 return !(a[0] | a[1] | a[2] | a[3] | a[4] | a[5]);
}

extern const struct eth_addr ethbroadcast;


# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/wpabuf.h" 1
# 23 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/wpabuf.h"
struct wpabuf {
 size_t size;
 size_t used;
 u8 *ext_data;


};


int wpabuf_resize(struct wpabuf **buf, size_t add_len);
struct wpabuf * wpabuf_alloc(size_t len);
struct wpabuf * wpabuf_alloc_ext_data(u8 *data, size_t len);
struct wpabuf * wpabuf_alloc_copy(const void *data, size_t len);
struct wpabuf * wpabuf_dup(const struct wpabuf *src);
void wpabuf_free(struct wpabuf *buf);
void * wpabuf_put(struct wpabuf *buf, size_t len);
struct wpabuf * wpabuf_concat(struct wpabuf *a, struct wpabuf *b);
struct wpabuf * wpabuf_zeropad(struct wpabuf *buf, size_t len);
void wpabuf_printf(struct wpabuf *buf, char *fmt, ...) __attribute__ ((format (printf, (2), (3))));







static inline size_t wpabuf_size(const struct wpabuf *buf)
{
 return buf->size;
}






static inline size_t wpabuf_len(const struct wpabuf *buf)
{
 return buf->used;
}






static inline size_t wpabuf_tailroom(const struct wpabuf *buf)
{
 return buf->size - buf->used;
}






static inline const void * wpabuf_head(const struct wpabuf *buf)
{
 if (buf->ext_data)
  return buf->ext_data;
 return buf + 1;
}

static inline const u8 * wpabuf_head_u8(const struct wpabuf *buf)
{
 return wpabuf_head(buf);
}






static inline void * wpabuf_mhead(struct wpabuf *buf)
{
 if (buf->ext_data)
  return buf->ext_data;
 return buf + 1;
}

static inline u8 * wpabuf_mhead_u8(struct wpabuf *buf)
{
 return wpabuf_mhead(buf);
}

static inline void wpabuf_put_u8(struct wpabuf *buf, u8 data)
{
 u8 *pos = wpabuf_put(buf, 1);
 *pos = data;
}

static inline void wpabuf_put_le16(struct wpabuf *buf, u16 data)
{
 u8 *pos = wpabuf_put(buf, 2);
 do { (pos)[1] = ((u16) (data)) >> 8; (pos)[0] = ((u16) (data)) & 0xff; } while (0);
}

static inline void wpabuf_put_le32(struct wpabuf *buf, u32 data)
{
 u8 *pos = wpabuf_put(buf, 4);
 do { (pos)[3] = (u8) ((((u32) (data)) >> 24) & 0xff); (pos)[2] = (u8) ((((u32) (data)) >> 16) & 0xff); (pos)[1] = (u8) ((((u32) (data)) >> 8) & 0xff); (pos)[0] = (u8) (((u32) (data)) & 0xff); } while (0);
}

static inline void wpabuf_put_be16(struct wpabuf *buf, u16 data)
{
 u8 *pos = wpabuf_put(buf, 2);
 do { (pos)[0] = ((u16) (data)) >> 8; (pos)[1] = ((u16) (data)) & 0xff; } while (0);
}

static inline void wpabuf_put_be24(struct wpabuf *buf, u32 data)
{
 u8 *pos = wpabuf_put(buf, 3);
 do { (pos)[0] = (u8) ((((u32) (data)) >> 16) & 0xff); (pos)[1] = (u8) ((((u32) (data)) >> 8) & 0xff); (pos)[2] = (u8) (((u32) (data)) & 0xff); } while (0);
}

static inline void wpabuf_put_be32(struct wpabuf *buf, u32 data)
{
 u8 *pos = wpabuf_put(buf, 4);
 do { (pos)[0] = (u8) ((((u32) (data)) >> 24) & 0xff); (pos)[1] = (u8) ((((u32) (data)) >> 16) & 0xff); (pos)[2] = (u8) ((((u32) (data)) >> 8) & 0xff); (pos)[3] = (u8) (((u32) (data)) & 0xff); } while (0);
}

static inline void wpabuf_put_data(struct wpabuf *buf, const void *data,
       size_t len)
{
 if (data)
  memcpy((wpabuf_put(buf, len)), (data), (len));
}

static inline void wpabuf_put_buf(struct wpabuf *dst,
      const struct wpabuf *src)
{
 wpabuf_put_data(dst, wpabuf_head(src), wpabuf_len(src));
}

static inline void wpabuf_set(struct wpabuf *buf, const void *data, size_t len)
{
 buf->ext_data = (u8 *) data;
 buf->size = buf->used = len;
}

static inline void wpabuf_put_str(struct wpabuf *dst, const char *str)
{
 wpabuf_put_data(dst, str, strlen(str));
}
# 322 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/common.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/wpa_debug.h" 1
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/wpa_debug.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h" 1
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdarg.h" 1 3 4
# 98 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdarg.h" 3 4

# 98 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdarg.h" 3 4
typedef __gnuc_va_list va_list;
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/ESP32_PIC_A2DP/build/include/sdkconfig.h" 1
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h" 2
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
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/wpa_debug.h" 2
# 38 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/wpa_debug.h"
int wpa_debug_open_file(const char *path);
void wpa_debug_close_file(void);
# 48 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/wpa_debug.h"
void wpa_debug_print_timestamp(void);
# 78 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/wpa_debug.h"
static inline void wpa_hexdump_ascii(int level, const char *title, const u8 *buf, size_t len)
{

}

static inline void wpa_hexdump_ascii_key(int level, const char *title, const u8 *buf, size_t len)
{
}


void wpa_hexdump(int level, const char *title, const u8 *buf, size_t len);

static inline void wpa_hexdump_buf(int level, const char *title,
       const struct wpabuf *buf)
{
 wpa_hexdump(level, title, wpabuf_head(buf), wpabuf_len(buf));
}
# 109 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/wpa_debug.h"
void wpa_hexdump_key(int level, const char *title, const u8 *buf, size_t len);


static inline void wpa_hexdump_buf_key(int level, const char *title,
           const struct wpabuf *buf)
{
 wpa_hexdump_key(level, title, wpabuf_head(buf), wpabuf_len(buf));
}
# 131 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/wpa_debug.h"
void wpa_hexdump_ascii(int level, const char *title, const u8 *buf,
         size_t len);
# 148 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/wpa_debug.h"
void wpa_hexdump_ascii_key(int level, const char *title, const u8 *buf,
      size_t len);
# 177 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/wpa_debug.h"
void wpa_msg(void *ctx, int level, const char *fmt, ...) __attribute__ ((format (printf, (3), (4))));
# 191 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/wpa_debug.h"
void wpa_msg_ctrl(void *ctx, int level, const char *fmt, ...)
__attribute__ ((format (printf, (3), (4))));

typedef void (*wpa_msg_cb_func)(void *ctx, int level, const char *txt,
    size_t len);

typedef void (*eloop_timeout_handler)(void *eloop_data, void *user_ctx);

int eloop_cancel_timeout(eloop_timeout_handler handler,
    void *eloop_data, void *user_data);

int eloop_register_timeout(unsigned int secs, unsigned int usecs,
      eloop_timeout_handler handler,
      void *eloop_data, void *user_data);
# 323 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/common.h" 2
# 334 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/common.h"
void * __hide_aliasing_typecast(void *foo);
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/wpa.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/defs.h" 1
# 24 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/defs.h"
typedef enum { FALSE = 0, TRUE = 1 } Boolean;
# 90 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/defs.h"
static inline int wpa_key_mgmt_wpa_ieee8021x(int akm)
{
 return !!(akm & ((1UL << (0)) |
    (1UL << (5)) |
    (1UL << (14)) |
    (1UL << (7))));
}

static inline int wpa_key_mgmt_wpa_psk(int akm)
{
 return akm == (1UL << (1)) ||
  akm == (1UL << (6)) ||
  akm == (1UL << (8));
}

static inline int wpa_key_mgmt_ft(int akm)
{
 return akm == (1UL << (6)) ||
  akm == (1UL << (5));
}

static inline int wpa_key_mgmt_sha256(int akm)
{
 return akm == (1UL << (8)) ||
  akm == (1UL << (7));
}
# 127 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/defs.h"
enum ieee80211_key_alg {
 ALG_WEP,
 ALG_TKIP,
 ALG_CCMP,
 ALG_AES_CMAC,
};

enum wpa_alg {
 WPA_ALG_NONE =0,
 WPA_ALG_WEP40 = 1,
 WPA_ALG_TKIP = 2,
 WPA_ALG_CCMP = 3,
 WPA_ALG_WAPI = 4,
 WPA_ALG_WEP104 = 5,
 WPA_ALG_WEP,
 WPA_ALG_IGTK,
 WPA_ALG_PMK,
 WPA_ALG_GCMP
};




enum wpa_cipher {
 CIPHER_NONE,
 CIPHER_WEP40,
 CIPHER_TKIP,
 CIPHER_CCMP,
 CIPHER_WEP104
};




enum wpa_key_mgmt {
 KEY_MGMT_802_1X,
 KEY_MGMT_PSK,
 KEY_MGMT_NONE,
 KEY_MGMT_802_1X_NO_WPA,
 KEY_MGMT_WPA_NONE,
 KEY_MGMT_FT_802_1X,
 KEY_MGMT_FT_PSK,
 KEY_MGMT_802_1X_SHA256,
 KEY_MGMT_PSK_SHA256,
 KEY_MGMT_WPS
};
# 184 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/defs.h"
enum wpa_states {







 WPA_DISCONNECTED,
# 202 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/defs.h"
 WPA_INACTIVE,







 WPA_SCANNING,
# 220 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/defs.h"
 WPA_AUTHENTICATING,
# 231 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/defs.h"
 WPA_ASSOCIATING,
# 241 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/defs.h"
 WPA_ASSOCIATED,
# 251 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/defs.h"
 WPA_FIRST_HALF_4WAY_HANDSHAKE,

 WPA_LAST_HALF_4WAY_HANDSHAKE,
# 263 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/defs.h"
 WPA_GROUP_HANDSHAKE,
# 281 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/defs.h"
 WPA_COMPLETED,

 WPA_MIC_FAILURE,

 WPA_TKIP_COUNTERMEASURES
};
# 299 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/defs.h"
enum hostapd_hw_mode {
 HOSTAPD_MODE_IEEE80211B,
 HOSTAPD_MODE_IEEE80211G,
 HOSTAPD_MODE_IEEE80211A,
 HOSTAPD_MODE_IEEE80211AD,
 NUM_HOSTAPD_MODES
};
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/wpa.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/wpa_common.h" 1
# 150 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/wpa_common.h"
struct wpa_eapol_key {
 u8 type;

 u8 key_info[2];
 u8 key_length[2];
 u8 replay_counter[8];
 u8 key_nonce[32];
 u8 key_iv[16];
 u8 key_rsc[8];
 u8 key_id[8];
 u8 key_mic[16];
 u8 key_data_length[2];

} __attribute__ ((packed));





struct wpa_ptk {
 u8 kck[16];
 u8 kek[16];
 u8 tk1[16];
 union {
  u8 tk2[16];
  struct {
   u8 tx_mic_key[8];
   u8 rx_mic_key[8];
  } auth;
 } u;
} __attribute__ ((packed));

struct wpa_gtk_data {
 enum wpa_alg alg;
 int tx, key_rsc_len, keyidx;
 u8 gtk[32];
 int gtk_len;
};
# 204 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/wpa_common.h"
struct wpa_ie_hdr {
 u8 elem_id;
 u8 len;
 u8 oui[4];
 u8 version[2];
} __attribute__ ((packed));
# 236 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/wpa_common.h"
struct rsn_ie_hdr {
 u8 elem_id;
 u8 len;
 u8 version[2];
} __attribute__ ((packed));
# 259 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/wpa_common.h"
struct rsn_error_kde {
 be16 mui;
 be16 error_type;
} __attribute__ ((packed));
# 302 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/wpa_common.h"
struct wpa_ie_data {
 int proto;
 int pairwise_cipher;
 int group_cipher;
 int key_mgmt;
 int capabilities;
 size_t num_pmkid;
 const u8 *pmkid;
 int mgmt_group_cipher;
};

const char * wpa_cipher_txt(int cipher);

int wpa_parse_wpa_ie_rsn(const u8 *rsn_ie, size_t rsn_ie_len,
    struct wpa_ie_data *data);

int wpa_eapol_key_mic(const u8 *key, int ver, const u8 *buf, size_t len,
        u8 *mic);
int wpa_compare_rsn_ie(int ft_initial_assoc,
         const u8 *ie1, size_t ie1len,
         const u8 *ie2, size_t ie2len);

void wpa_pmk_to_ptk(const u8 *pmk, size_t pmk_len, const char *label,
      const u8 *addr1, const u8 *addr2,
      const u8 *nonce1, const u8 *nonce2,
      u8 *ptk, size_t ptk_len, int use_sha256);

void rsn_pmkid(const u8 *pmk, size_t pmk_len, const u8 *aa, const u8 *spa,
        u8 *pmkid, int use_sha256);
# 22 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/wpa.h" 2




struct wpa_sm;

int wpa_sm_rx_eapol(u8 *src_addr, u8 *buf, u32 len);



struct install_key {
    int mic_errors_seen;
    int keys_cleared;
    enum wpa_alg alg;
    u8 addr[6];
    int key_idx;
    int set_tx;
    u8 seq[10];
    u8 key[32];
};




struct wpa_sm {
    u8 pmk[32];
    size_t pmk_len;

    struct wpa_ptk ptk, tptk;
    int ptk_set, tptk_set;
    u8 snonce[32];
    u8 anonce[32];
    int renew_snonce;
    u8 rx_replay_counter[8];
    int rx_replay_counter_set;
    u8 request_counter[8];

    unsigned int pairwise_cipher;
    unsigned int group_cipher;
    unsigned int key_mgmt;
    unsigned int mgmt_group_cipher;

    int rsn_enabled;

    int countermeasures;
    ETSTimer cm_timer;

    u8 *assoc_wpa_ie;
    size_t assoc_wpa_ie_len;

    u8 eapol_version;

    int wpa_ptk_rekey;
    u8 own_addr[6];

    u8 bssid[6];

    unsigned int proto;
    enum wpa_states wpa_state;

    u8 *ap_wpa_ie, *ap_rsn_ie;
    size_t ap_wpa_ie_len, ap_rsn_ie_len;

    struct install_key install_ptk;
    struct install_key install_gtk;
    int key_entry_valid;

    struct pbuf *pb;

    void (* sendto) (struct pbuf *pb);
    void (*config_assoc_ie) (u8 proto, u8 *assoc_buf, u32 assoc_wpa_ie_len);
    void (*install_ppkey) (enum wpa_alg alg, u8 *addr, int key_idx, int set_tx,
               u8 *seq, unsigned int seq_len, u8 *key, unsigned int key_len, int key_entry_valid);
    void (*wpa_deauthenticate)(u8 reason_code);
    void (*wpa_neg_complete)();
    struct wpa_gtk_data gd;
    u16 key_info;
};

struct l2_ethhdr {
    u8 h_dest[6];
    u8 h_source[6];
    be16 h_proto;
} __attribute__ ((packed));
# 174 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/wpa.h"
void wpa_sm_set_state(enum wpa_states state);

char * dup_binstr(const void *src, size_t len);
# 12 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/common.h" 1
# 13 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/eapol_common.h" 1
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/eapol_common.h"
struct ieee802_1x_hdr {
 u8 version;
 u8 type;
 be16 length;

} __attribute__ ((packed));




enum { IEEE802_1X_TYPE_EAP_PACKET = 0,
       IEEE802_1X_TYPE_EAPOL_START = 1,
       IEEE802_1X_TYPE_EAPOL_LOGOFF = 2,
       IEEE802_1X_TYPE_EAPOL_KEY = 3,
       IEEE802_1X_TYPE_EAPOL_ENCAPSULATED_ASF_ALERT = 4
};

enum { EAPOL_KEY_TYPE_RC4 = 1, EAPOL_KEY_TYPE_RSN = 2,
       EAPOL_KEY_TYPE_WPA = 254 };
# 47 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/eapol_common.h"
struct ieee802_1x_eapol_key {
 u8 type;

 u8 key_length[2];


 u8 replay_counter[8];
 u8 key_iv[16];
 u8 key_index;





 u8 key_signature[16];







} __attribute__ ((packed));
# 14 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/wpa_debug.h" 1
# 15 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/ieee802_11_defs.h" 1
# 240 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/ieee802_11_defs.h"
struct ieee80211_hdr {
 le16 frame_control;
 le16 duration_id;
 u8 addr1[6];
 u8 addr2[6];
 u8 addr3[6];
 le16 seq_ctrl;


} __attribute__ ((packed));
# 259 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/ieee802_11_defs.h"
struct ieee80211_mgmt {
 le16 frame_control;
 le16 duration;
 u8 da[6];
 u8 sa[6];
 u8 bssid[6];
 le16 seq_ctrl;
 union {
  struct {
   le16 auth_alg;
   le16 auth_transaction;
   le16 status_code;

   u8 variable[0];
  } __attribute__ ((packed)) auth;
  struct {
   le16 reason_code;
  } __attribute__ ((packed)) deauth;
  struct {
   le16 capab_info;
   le16 listen_interval;

   u8 variable[0];
  } __attribute__ ((packed)) assoc_req;
  struct {
   le16 capab_info;
   le16 status_code;
   le16 aid;

   u8 variable[0];
  } __attribute__ ((packed)) assoc_resp, reassoc_resp;
  struct {
   le16 capab_info;
   le16 listen_interval;
   u8 current_ap[6];

   u8 variable[0];
  } __attribute__ ((packed)) reassoc_req;
  struct {
   le16 reason_code;
  } __attribute__ ((packed)) disassoc;
  struct {
   u8 timestamp[8];
   le16 beacon_int;
   le16 capab_info;


   u8 variable[0];
  } __attribute__ ((packed)) beacon;
  struct {

   u8 variable[0];
  } __attribute__ ((packed)) probe_req;
  struct {
   u8 timestamp[8];
   le16 beacon_int;
   le16 capab_info;


   u8 variable[0];
  } __attribute__ ((packed)) probe_resp;
  struct {
   u8 category;
   union {
    struct {
     u8 action_code;
     u8 dialog_token;
     u8 status_code;
     u8 variable[0];
    } __attribute__ ((packed)) wmm_action;
    struct{
     u8 action_code;
     u8 element_id;
     u8 length;
     u8 switch_mode;
     u8 new_chan;
     u8 switch_count;
    } __attribute__ ((packed)) chan_switch;
    struct {
     u8 action;
     u8 sta_addr[6];
     u8 target_ap_addr[6];
     u8 variable[0];
    } __attribute__ ((packed)) ft_action_req;
    struct {
     u8 action;
     u8 sta_addr[6];
     u8 target_ap_addr[6];
     le16 status_code;
     u8 variable[0];
    } __attribute__ ((packed)) ft_action_resp;
    struct {
     u8 action;
     u8 trans_id[2];
    } __attribute__ ((packed)) sa_query_req;
    struct {
     u8 action;
     u8 trans_id[2];
    } __attribute__ ((packed)) sa_query_resp;
   } u;
  } __attribute__ ((packed)) action;
 } u;
} __attribute__ ((packed));


struct ieee80211_ht_capabilities {
 le16 ht_capabilities_info;
 u8 a_mpdu_params;
 u8 supported_mcs_set[16];
 le16 ht_extended_capabilities;
 le32 tx_bf_capability_info;
 u8 asel_capabilities;
} __attribute__ ((packed));


struct ieee80211_ht_operation {
 u8 control_chan;
 u8 ht_param;
 le16 operation_mode;
 le16 stbc_param;
 u8 basic_set[16];
} __attribute__ ((packed));
# 508 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/ieee802_11_defs.h"
struct wmm_information_element {


 u8 oui[3];
 u8 oui_type;
 u8 oui_subtype;
 u8 version;
 u8 qos_info;

} __attribute__ ((packed));
# 530 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/ieee802_11_defs.h"
struct wmm_ac_parameter {
 u8 aci_aifsn;
 u8 cw;
 le16 txop_limit;
} __attribute__ ((packed));





struct wmm_parameter_element {


 u8 oui[3];
 u8 oui_type;
 u8 oui_subtype;
 u8 version;
 u8 qos_info;
 u8 reserved;
 struct wmm_ac_parameter ac[4];

} __attribute__ ((packed));


struct wmm_tspec_element {
 u8 eid;
 u8 length;
 u8 oui[3];
 u8 oui_type;
 u8 oui_subtype;
 u8 version;

 u8 ts_info[3];
 le16 nominal_msdu_size;
 le16 maximum_msdu_size;
 le32 minimum_service_interval;
 le32 maximum_service_interval;
 le32 inactivity_interval;
 le32 suspension_interval;
 le32 service_start_time;
 le32 minimum_data_rate;
 le32 mean_data_rate;
 le32 peak_data_rate;
 le32 maximum_burst_size;
 le32 delay_bound;
 le32 minimum_phy_rate;
 le16 surplus_bandwidth_allowance;
 le16 medium_time;
} __attribute__ ((packed));



enum {
 WMM_AC_BE = 0 ,
 WMM_AC_BK = 1 ,
 WMM_AC_VI = 2 ,
 WMM_AC_VO = 3
};
# 16 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/dh_group5.h" 1
# 18 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/dh_group5.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/wpabuf.h" 1
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/dh_group5.h" 2

void * dh5_init(struct wpabuf **priv, struct wpabuf **publ);
struct wpabuf * dh5_derive_shared(void *ctx, const struct wpabuf *peer_public,
      const struct wpabuf *own_private);
void dh5_free(void *ctx);
# 18 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wps/wps_i.h" 1
# 12 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wps/wps_i.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wps/wps.h" 1
# 13 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wps/wps.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wps/wps_defs.h" 1
# 51 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wps/wps_defs.h"
enum wps_attribute {
 ATTR_AP_CHANNEL = 0x1001,
 ATTR_ASSOC_STATE = 0x1002,
 ATTR_AUTH_TYPE = 0x1003,
 ATTR_AUTH_TYPE_FLAGS = 0x1004,
 ATTR_AUTHENTICATOR = 0x1005,
 ATTR_CONFIG_METHODS = 0x1008,
 ATTR_CONFIG_ERROR = 0x1009,
 ATTR_CONFIRM_URL4 = 0x100a,
 ATTR_CONFIRM_URL6 = 0x100b,
 ATTR_CONN_TYPE = 0x100c,
 ATTR_CONN_TYPE_FLAGS = 0x100d,
 ATTR_CRED = 0x100e,
 ATTR_ENCR_TYPE = 0x100f,
 ATTR_ENCR_TYPE_FLAGS = 0x1010,
 ATTR_DEV_NAME = 0x1011,
 ATTR_DEV_PASSWORD_ID = 0x1012,
 ATTR_E_HASH1 = 0x1014,
 ATTR_E_HASH2 = 0x1015,
 ATTR_E_SNONCE1 = 0x1016,
 ATTR_E_SNONCE2 = 0x1017,
 ATTR_ENCR_SETTINGS = 0x1018,
 ATTR_ENROLLEE_NONCE = 0x101a,
 ATTR_FEATURE_ID = 0x101b,
 ATTR_IDENTITY = 0x101c,
 ATTR_IDENTITY_PROOF = 0x101d,
 ATTR_KEY_WRAP_AUTH = 0x101e,
 ATTR_KEY_ID = 0x101f,
 ATTR_MAC_ADDR = 0x1020,
 ATTR_MANUFACTURER = 0x1021,
 ATTR_MSG_TYPE = 0x1022,
 ATTR_MODEL_NAME = 0x1023,
 ATTR_MODEL_NUMBER = 0x1024,
 ATTR_NETWORK_INDEX = 0x1026,
 ATTR_NETWORK_KEY = 0x1027,
 ATTR_NETWORK_KEY_INDEX = 0x1028,
 ATTR_NEW_DEVICE_NAME = 0x1029,
 ATTR_NEW_PASSWORD = 0x102a,
 ATTR_OOB_DEVICE_PASSWORD = 0x102c,
 ATTR_OS_VERSION = 0x102d,
 ATTR_POWER_LEVEL = 0x102f,
 ATTR_PSK_CURRENT = 0x1030,
 ATTR_PSK_MAX = 0x1031,
 ATTR_PUBLIC_KEY = 0x1032,
 ATTR_RADIO_ENABLE = 0x1033,
 ATTR_REBOOT = 0x1034,
 ATTR_REGISTRAR_CURRENT = 0x1035,
 ATTR_REGISTRAR_ESTABLISHED = 0x1036,
 ATTR_REGISTRAR_LIST = 0x1037,
 ATTR_REGISTRAR_MAX = 0x1038,
 ATTR_REGISTRAR_NONCE = 0x1039,
 ATTR_REQUEST_TYPE = 0x103a,
 ATTR_RESPONSE_TYPE = 0x103b,
 ATTR_RF_BANDS = 0x103c,
 ATTR_R_HASH1 = 0x103d,
 ATTR_R_HASH2 = 0x103e,
 ATTR_R_SNONCE1 = 0x103f,
 ATTR_R_SNONCE2 = 0x1040,
 ATTR_SELECTED_REGISTRAR = 0x1041,
 ATTR_SERIAL_NUMBER = 0x1042,
 ATTR_WPS_STATE = 0x1044,
 ATTR_SSID = 0x1045,
 ATTR_TOTAL_NETWORKS = 0x1046,
 ATTR_UUID_E = 0x1047,
 ATTR_UUID_R = 0x1048,
 ATTR_VENDOR_EXT = 0x1049,
 ATTR_VERSION = 0x104a,
 ATTR_X509_CERT_REQ = 0x104b,
 ATTR_X509_CERT = 0x104c,
 ATTR_EAP_IDENTITY = 0x104d,
 ATTR_MSG_COUNTER = 0x104e,
 ATTR_PUBKEY_HASH = 0x104f,
 ATTR_REKEY_KEY = 0x1050,
 ATTR_KEY_LIFETIME = 0x1051,
 ATTR_PERMITTED_CFG_METHODS = 0x1052,
 ATTR_SELECTED_REGISTRAR_CONFIG_METHODS = 0x1053,
 ATTR_PRIMARY_DEV_TYPE = 0x1054,
 ATTR_SECONDARY_DEV_TYPE_LIST = 0x1055,
 ATTR_PORTABLE_DEV = 0x1056,
 ATTR_AP_SETUP_LOCKED = 0x1057,
 ATTR_APPLICATION_EXT = 0x1058,
 ATTR_EAP_TYPE = 0x1059,
 ATTR_IV = 0x1060,
 ATTR_KEY_PROVIDED_AUTO = 0x1061,
 ATTR_802_1X_ENABLED = 0x1062,
 ATTR_APPSESSIONKEY = 0x1063,
 ATTR_WEPTRANSMITKEY = 0x1064,
 ATTR_REQUESTED_DEV_TYPE = 0x106a,
 ATTR_EXTENSIBILITY_TEST = 0x10fa
};




enum {
 WFA_ELEM_VERSION2 = 0x00,
 WFA_ELEM_AUTHORIZEDMACS = 0x01,
 WFA_ELEM_NETWORK_KEY_SHAREABLE = 0x02,
 WFA_ELEM_REQUEST_TO_ENROLL = 0x03,
 WFA_ELEM_SETTINGS_DELAY_TIME = 0x04
};


enum wps_dev_password_id {
 DEV_PW_DEFAULT = 0x0000,
 DEV_PW_USER_SPECIFIED = 0x0001,
 DEV_PW_MACHINE_SPECIFIED = 0x0002,
 DEV_PW_REKEY = 0x0003,
 DEV_PW_PUSHBUTTON = 0x0004,
 DEV_PW_REGISTRAR_SPECIFIED = 0x0005
};


enum wps_msg_flag {
 WPS_MSG_FLAG_MORE = 0x01,
 WPS_MSG_FLAG_LEN = 0x02
};


enum wps_msg_type {
 WPS_Beacon = 0x01,
 WPS_ProbeRequest = 0x02,
 WPS_ProbeResponse = 0x03,
 WPS_M1 = 0x04,
 WPS_M2 = 0x05,
 WPS_M2D = 0x06,
 WPS_M3 = 0x07,
 WPS_M4 = 0x08,
 WPS_M5 = 0x09,
 WPS_M6 = 0x0a,
 WPS_M7 = 0x0b,
 WPS_M8 = 0x0c,
 WPS_WSC_ACK = 0x0d,
 WPS_WSC_NACK = 0x0e,
 WPS_WSC_DONE = 0x0f
};
# 207 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wps/wps_defs.h"
enum wps_config_error {
 WPS_CFG_NO_ERROR = 0,
 WPS_CFG_OOB_IFACE_READ_ERROR = 1,
 WPS_CFG_DECRYPTION_CRC_FAILURE = 2,
 WPS_CFG_24_CHAN_NOT_SUPPORTED = 3,
 WPS_CFG_50_CHAN_NOT_SUPPORTED = 4,
 WPS_CFG_SIGNAL_TOO_WEAK = 5,
 WPS_CFG_NETWORK_AUTH_FAILURE = 6,
 WPS_CFG_NETWORK_ASSOC_FAILURE = 7,
 WPS_CFG_NO_DHCP_RESPONSE = 8,
 WPS_CFG_FAILED_DHCP_CONFIG = 9,
 WPS_CFG_IP_ADDR_CONFLICT = 10,
 WPS_CFG_NO_CONN_TO_REGISTRAR = 11,
 WPS_CFG_MULTIPLE_PBC_DETECTED = 12,
 WPS_CFG_ROGUE_SUSPECTED = 13,
 WPS_CFG_DEVICE_BUSY = 14,
 WPS_CFG_SETUP_LOCKED = 15,
 WPS_CFG_MSG_TIMEOUT = 16,
 WPS_CFG_REG_SESS_TIMEOUT = 17,
 WPS_CFG_DEV_PASSWORD_AUTH_FAILURE = 18
};


enum wps_error_indication {
 WPS_EI_NO_ERROR,
 WPS_EI_SECURITY_TKIP_ONLY_PROHIBITED,
 WPS_EI_SECURITY_WEP_PROHIBITED,
 NUM_WPS_EI_VALUES
};
# 263 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wps/wps_defs.h"
enum wps_state {
 WPS_STATE_NOT_CONFIGURED = 1,
 WPS_STATE_CONFIGURED = 2
};


enum wps_assoc_state {
 WPS_ASSOC_NOT_ASSOC = 0,
 WPS_ASSOC_CONN_SUCCESS = 1,
 WPS_ASSOC_CFG_FAILURE = 2,
 WPS_ASSOC_FAILURE = 3,
 WPS_ASSOC_IP_FAILURE = 4
};




enum wps_dev_categ {
 WPS_DEV_COMPUTER = 1,
 WPS_DEV_INPUT = 2,
 WPS_DEV_PRINTER = 3,
 WPS_DEV_CAMERA = 4,
 WPS_DEV_STORAGE = 5,
 WPS_DEV_NETWORK_INFRA = 6,
 WPS_DEV_DISPLAY = 7,
 WPS_DEV_MULTIMEDIA = 8,
 WPS_DEV_GAMING = 9,
 WPS_DEV_PHONE = 10
};

enum wps_dev_subcateg {
 WPS_DEV_COMPUTER_PC = 1,
 WPS_DEV_COMPUTER_SERVER = 2,
 WPS_DEV_COMPUTER_MEDIA_CENTER = 3,
 WPS_DEV_PRINTER_PRINTER = 1,
 WPS_DEV_PRINTER_SCANNER = 2,
 WPS_DEV_CAMERA_DIGITAL_STILL_CAMERA = 1,
 WPS_DEV_STORAGE_NAS = 1,
 WPS_DEV_NETWORK_INFRA_AP = 1,
 WPS_DEV_NETWORK_INFRA_ROUTER = 2,
 WPS_DEV_NETWORK_INFRA_SWITCH = 3,
 WPS_DEV_DISPLAY_TV = 1,
 WPS_DEV_DISPLAY_PICTURE_FRAME = 2,
 WPS_DEV_DISPLAY_PROJECTOR = 3,
 WPS_DEV_MULTIMEDIA_DAR = 1,
 WPS_DEV_MULTIMEDIA_PVR = 2,
 WPS_DEV_MULTIMEDIA_MCX = 3,
 WPS_DEV_GAMING_XBOX = 1,
 WPS_DEV_GAMING_XBOX360 = 2,
 WPS_DEV_GAMING_PLAYSTATION = 3,
 WPS_DEV_PHONE_WINDOWS_MOBILE = 1
};



enum wps_request_type {
 WPS_REQ_ENROLLEE_INFO = 0,
 WPS_REQ_ENROLLEE = 1,
 WPS_REQ_REGISTRAR = 2,
 WPS_REQ_WLAN_MANAGER_REGISTRAR = 3
};


enum wps_response_type {
 WPS_RESP_ENROLLEE_INFO = 0,
 WPS_RESP_ENROLLEE = 1,
 WPS_RESP_REGISTRAR = 2,
 WPS_RESP_AP = 3
};
# 14 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wps/wps.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_types.h" 1
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_types.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/queue.h" 1
# 22 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_types.h" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_interface.h" 1
# 25 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_interface.h"
typedef enum {
    ESP_IF_WIFI_STA = 0,
    ESP_IF_WIFI_AP,
    ESP_IF_ETH,
    ESP_IF_MAX
} esp_interface_t;
# 24 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_types.h" 2





typedef enum {
    WIFI_MODE_NULL = 0,
    WIFI_MODE_STA,
    WIFI_MODE_AP,
    WIFI_MODE_APSTA,
    WIFI_MODE_MAX
} wifi_mode_t;

typedef esp_interface_t wifi_interface_t;




typedef enum {
    WIFI_COUNTRY_POLICY_AUTO,
    WIFI_COUNTRY_POLICY_MANUAL,
} wifi_country_policy_t;


typedef struct {
    char cc[3];
    uint8_t schan;
    uint8_t nchan;
    int8_t max_tx_power;
    wifi_country_policy_t policy;
} wifi_country_t;

typedef enum {
    WIFI_AUTH_OPEN = 0,
    WIFI_AUTH_WEP,
    WIFI_AUTH_WPA_PSK,
    WIFI_AUTH_WPA2_PSK,
    WIFI_AUTH_WPA_WPA2_PSK,
    WIFI_AUTH_WPA2_ENTERPRISE,
    WIFI_AUTH_MAX
} wifi_auth_mode_t;

typedef enum {
    WIFI_REASON_UNSPECIFIED = 1,
    WIFI_REASON_AUTH_EXPIRE = 2,
    WIFI_REASON_AUTH_LEAVE = 3,
    WIFI_REASON_ASSOC_EXPIRE = 4,
    WIFI_REASON_ASSOC_TOOMANY = 5,
    WIFI_REASON_NOT_AUTHED = 6,
    WIFI_REASON_NOT_ASSOCED = 7,
    WIFI_REASON_ASSOC_LEAVE = 8,
    WIFI_REASON_ASSOC_NOT_AUTHED = 9,
    WIFI_REASON_DISASSOC_PWRCAP_BAD = 10,
    WIFI_REASON_DISASSOC_SUPCHAN_BAD = 11,
    WIFI_REASON_IE_INVALID = 13,
    WIFI_REASON_MIC_FAILURE = 14,
    WIFI_REASON_4WAY_HANDSHAKE_TIMEOUT = 15,
    WIFI_REASON_GROUP_KEY_UPDATE_TIMEOUT = 16,
    WIFI_REASON_IE_IN_4WAY_DIFFERS = 17,
    WIFI_REASON_GROUP_CIPHER_INVALID = 18,
    WIFI_REASON_PAIRWISE_CIPHER_INVALID = 19,
    WIFI_REASON_AKMP_INVALID = 20,
    WIFI_REASON_UNSUPP_RSN_IE_VERSION = 21,
    WIFI_REASON_INVALID_RSN_IE_CAP = 22,
    WIFI_REASON_802_1X_AUTH_FAILED = 23,
    WIFI_REASON_CIPHER_SUITE_REJECTED = 24,

    WIFI_REASON_BEACON_TIMEOUT = 200,
    WIFI_REASON_NO_AP_FOUND = 201,
    WIFI_REASON_AUTH_FAIL = 202,
    WIFI_REASON_ASSOC_FAIL = 203,
    WIFI_REASON_HANDSHAKE_TIMEOUT = 204,
} wifi_err_reason_t;

typedef enum {
    WIFI_SECOND_CHAN_NONE = 0,
    WIFI_SECOND_CHAN_ABOVE,
    WIFI_SECOND_CHAN_BELOW,
} wifi_second_chan_t;

typedef enum {
    WIFI_SCAN_TYPE_ACTIVE = 0,
    WIFI_SCAN_TYPE_PASSIVE,
} wifi_scan_type_t;


typedef struct {
    uint32_t min;
    uint32_t max;

} wifi_active_scan_time_t;


typedef union {
    wifi_active_scan_time_t active;
    uint32_t passive;

} wifi_scan_time_t;


typedef struct {
    uint8_t *ssid;
    uint8_t *bssid;
    uint8_t channel;
    
# 128 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_types.h" 3 4
   _Bool 
# 128 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_types.h"
        show_hidden;
    wifi_scan_type_t scan_type;
    wifi_scan_time_t scan_time;
} wifi_scan_config_t;

typedef enum {
    WIFI_CIPHER_TYPE_NONE = 0,
    WIFI_CIPHER_TYPE_WEP40,
    WIFI_CIPHER_TYPE_WEP104,
    WIFI_CIPHER_TYPE_TKIP,
    WIFI_CIPHER_TYPE_CCMP,
    WIFI_CIPHER_TYPE_TKIP_CCMP,
    WIFI_CIPHER_TYPE_UNKNOWN,
} wifi_cipher_type_t;





typedef enum {
    WIFI_ANT_ANT0,
    WIFI_ANT_ANT1,
    WIFI_ANT_MAX,
} wifi_ant_t;


typedef struct {
    uint8_t bssid[6];
    uint8_t ssid[33];
    uint8_t primary;
    wifi_second_chan_t second;
    int8_t rssi;
    wifi_auth_mode_t authmode;
    wifi_cipher_type_t pairwise_cipher;
    wifi_cipher_type_t group_cipher;
    wifi_ant_t ant;
    uint32_t phy_11b:1;
    uint32_t phy_11g:1;
    uint32_t phy_11n:1;
    uint32_t phy_lr:1;
    uint32_t wps:1;
    uint32_t reserved:27;
    wifi_country_t country;
} wifi_ap_record_t;

typedef enum {
    WIFI_FAST_SCAN = 0,
    WIFI_ALL_CHANNEL_SCAN,
}wifi_scan_method_t;

typedef enum {
    WIFI_CONNECT_AP_BY_SIGNAL = 0,
    WIFI_CONNECT_AP_BY_SECURITY,
}wifi_sort_method_t;


typedef struct {
    int8_t rssi;
    wifi_auth_mode_t authmode;
}wifi_fast_scan_threshold_t;

typedef wifi_fast_scan_threshold_t wifi_scan_threshold_t;

typedef enum {
    WIFI_PS_NONE,
    WIFI_PS_MIN_MODEM,
    WIFI_PS_MAX_MODEM,
} wifi_ps_type_t;
# 204 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_types.h"
typedef enum {
    WIFI_BW_HT20 = 1,
    WIFI_BW_HT40,
} wifi_bandwidth_t;


typedef struct {
    uint8_t ssid[32];
    uint8_t password[64];
    uint8_t ssid_len;
    uint8_t channel;
    wifi_auth_mode_t authmode;
    uint8_t ssid_hidden;
    uint8_t max_connection;
    uint16_t beacon_interval;
} wifi_ap_config_t;


typedef struct {
    uint8_t ssid[32];
    uint8_t password[64];
    wifi_scan_method_t scan_method;
    
# 226 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_types.h" 3 4
   _Bool 
# 226 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_types.h"
        bssid_set;
    uint8_t bssid[6];
    uint8_t channel;
    uint16_t listen_interval;
    wifi_sort_method_t sort_method;
    wifi_scan_threshold_t threshold;
} wifi_sta_config_t;







typedef union {
    wifi_ap_config_t ap;
    wifi_sta_config_t sta;
} wifi_config_t;


typedef struct {
    uint8_t mac[6];
    int8_t rssi;
    uint32_t phy_11b:1;
    uint32_t phy_11g:1;
    uint32_t phy_11n:1;
    uint32_t phy_lr:1;
    uint32_t reserved:28;
} wifi_sta_info_t;




typedef struct {
    wifi_sta_info_t sta[(10)];
    int num;
} wifi_sta_list_t;

typedef enum {
    WIFI_STORAGE_FLASH,
    WIFI_STORAGE_RAM,
} wifi_storage_t;






typedef enum {
    WIFI_VND_IE_TYPE_BEACON,
    WIFI_VND_IE_TYPE_PROBE_REQ,
    WIFI_VND_IE_TYPE_PROBE_RESP,
    WIFI_VND_IE_TYPE_ASSOC_REQ,
    WIFI_VND_IE_TYPE_ASSOC_RESP,
} wifi_vendor_ie_type_t;






typedef enum {
    WIFI_VND_IE_ID_0,
    WIFI_VND_IE_ID_1,
} wifi_vendor_ie_id_t;
# 299 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_types.h"
typedef struct {
    uint8_t element_id;
    uint8_t length;
    uint8_t vendor_oui[3];
    uint8_t vendor_oui_type;
    uint8_t payload[0];
} vendor_ie_data_t;


typedef struct {
    signed rssi:8;
    unsigned rate:5;
    unsigned :1;
    unsigned sig_mode:2;
    unsigned :16;
    unsigned mcs:7;
    unsigned cwb:1;
    unsigned :16;
    unsigned smoothing:1;
    unsigned not_sounding:1;
    unsigned :1;
    unsigned aggregation:1;
    unsigned stbc:2;
    unsigned fec_coding:1;
    unsigned sgi:1;
    signed noise_floor:8;
    unsigned ampdu_cnt:8;
    unsigned channel:4;
    unsigned secondary_channel:4;
    unsigned :8;
    unsigned timestamp:32;
    unsigned :32;
    unsigned :31;
    unsigned ant:1;
    unsigned sig_len:12;
    unsigned :12;
    unsigned rx_state:8;
} wifi_pkt_rx_ctrl_t;



typedef struct {
    wifi_pkt_rx_ctrl_t rx_ctrl;
    uint8_t payload[0];
} wifi_promiscuous_pkt_t;







typedef enum {
    WIFI_PKT_MGMT,
    WIFI_PKT_CTRL,
    WIFI_PKT_DATA,
    WIFI_PKT_MISC,
} wifi_promiscuous_pkt_type_t;
# 379 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_types.h"
typedef struct {
    uint32_t filter_mask;
} wifi_promiscuous_filter_t;
# 391 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_types.h"
typedef struct {
    
# 392 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_types.h" 3 4
   _Bool 
# 392 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_types.h"
        lltf_en;
    
# 393 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_types.h" 3 4
   _Bool 
# 393 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_types.h"
        htltf_en;
    
# 394 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_types.h" 3 4
   _Bool 
# 394 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_types.h"
        stbc_htltf2_en;
    
# 395 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_types.h" 3 4
   _Bool 
# 395 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_types.h"
        manu_scale;
    uint8_t shift;
} wifi_csi_config_t;





typedef struct {
    wifi_pkt_rx_ctrl_t rx_ctrl;
    uint8_t mac[6];
    
# 406 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_types.h" 3 4
   _Bool 
# 406 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_types.h"
        last_word_invalid;
    int8_t *buf;
    uint16_t len;
} wifi_csi_info_t;





typedef struct {
    uint8_t gpio_select: 1,
            gpio_num: 7;
} wifi_ant_gpio_t;





typedef struct {
    wifi_ant_gpio_t gpio_cfg[4];
} wifi_ant_gpio_config_t;





typedef enum {
    WIFI_ANT_MODE_ANT0,
    WIFI_ANT_MODE_ANT1,
    WIFI_ANT_MODE_AUTO,
    WIFI_ANT_MODE_MAX,
} wifi_ant_mode_t;





typedef struct {
    wifi_ant_mode_t rx_ant_mode;
    wifi_ant_t rx_ant_default;
    wifi_ant_mode_t tx_ant_mode;
    uint8_t enabled_ant0: 4,
                    enabled_ant1: 4;
} wifi_ant_config_t;
# 15 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wps/wps.h" 2




enum wsc_op_code {
 WSC_UPnP = 0 ,
 WSC_Start = 0x01,
 WSC_ACK = 0x02,
 WSC_NACK = 0x03,
 WSC_MSG = 0x04,
 WSC_Done = 0x05,
 WSC_FRAG_ACK = 0x06
};

struct wps_registrar;

struct wps_er;
struct wps_parse_attr;
# 49 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wps/wps.h"
struct wps_credential {
 u8 ssid[32];
 size_t ssid_len;
 u16 auth_type;
 u16 encr_type;
 u8 key_idx;
 u8 key[64];
 size_t key_len;
 u8 mac_addr[6];
 const u8 *cred_attr;
 size_t cred_attr_len;
 u16 ap_channel;
};
# 88 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wps/wps.h"
struct wps_device_data {
 u8 mac_addr[6];
 char *device_name;
 char *manufacturer;
 char *model_name;
 char *model_number;
 char *serial_number;
 u8 pri_dev_type[8];

 u8 sec_dev_type[5][8];
 u8 num_sec_dev_types;
 u32 os_version;
 u8 rf_bands;
 u16 config_methods;
 struct wpabuf *vendor_ext_m1;
 struct wpabuf *vendor_ext[10];

 int p2p;
};




struct wps_config {



 struct wps_context *wps;




 int registrar;




 const u8 *pin;




 size_t pin_len;




 int pbc;




 const struct wpabuf *assoc_wps_ie;
# 150 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wps/wps.h"
 const struct wps_credential *new_ap_settings;




 const u8 *peer_addr;
# 164 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wps/wps.h"
 int use_psk_key;




 u16 dev_pw_id;
# 179 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wps/wps.h"
 const u8 *p2p_dev_addr;







 int pbc_in_m1;
};


struct discard_ap_list_t{
 u8 bssid[6];
};


struct wps_data * wps_init(void);


void wps_deinit(void);




enum wps_process_res {



 WPS_DONE,




 WPS_CONTINUE,




 WPS_FAILURE,





 WPS_PENDING,
 WPS_IGNORE,

 WPS_FRAGMENT
};
enum wps_process_res wps_process_msg(struct wps_data *wps,
         enum wsc_op_code op_code,
         const struct wpabuf *msg);

struct wpabuf * wps_get_msg(struct wps_data *wps, enum wsc_op_code *op_code);

int wps_is_selected_pbc_registrar(const struct wpabuf *msg, u8 *bssid);
int wps_is_selected_pin_registrar(const struct wpabuf *msg, u8 *bssid);
int wps_ap_priority_compar(const struct wpabuf *wps_a,
      const struct wpabuf *wps_b);
int wps_is_addr_authorized(const struct wpabuf *msg, const u8 *addr,
      int ver1_compat);
const u8 * wps_get_uuid_e(const struct wpabuf *msg);
int wps_is_20(const struct wpabuf *msg);

struct wpabuf * wps_build_assoc_req_ie(enum wps_request_type req_type);
struct wpabuf * wps_build_assoc_resp_ie(void);
struct wpabuf * wps_build_probe_req_ie(u16 pw_id, struct wps_device_data *dev,
           const u8 *uuid,
           enum wps_request_type req_type,
           unsigned int num_req_dev_types,
           const u8 *req_dev_types);





struct wps_registrar_config {
# 267 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wps/wps.h"
 int (*new_psk_cb)(void *ctx, const u8 *mac_addr, const u8 *psk,
     size_t psk_len);
# 281 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wps/wps.h"
 int (*set_ie_cb)(void *ctx, struct wpabuf *beacon_ie,
    struct wpabuf *probe_resp_ie);
# 294 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wps/wps.h"
 void (*pin_needed_cb)(void *ctx, const u8 *uuid_e,
         const struct wps_device_data *dev);
# 308 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wps/wps.h"
 void (*reg_success_cb)(void *ctx, const u8 *mac_addr,
          const u8 *uuid_e, const u8 *dev_pw,
          size_t dev_pw_len);
# 327 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wps/wps.h"
 void (*set_sel_reg_cb)(void *ctx, int sel_reg, u16 dev_passwd_id,
          u16 sel_reg_config_methods);
# 341 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wps/wps.h"
 void (*enrollee_seen_cb)(void *ctx, const u8 *addr, const u8 *uuid_e,
     const u8 *pri_dev_type, u16 config_methods,
     u16 dev_password_id, u8 request_type,
     const char *dev_name);




 void *cb_ctx;
# 359 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wps/wps.h"
 int skip_cred_build;
# 369 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wps/wps.h"
 const u8 *extra_cred;




 size_t extra_cred_len;
# 386 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wps/wps.h"
 int disable_auto_conf;




 int static_wep_only;




 int dualband;
};





enum wps_event {



 WPS_EV_M2D,




 WPS_EV_FAIL,




 WPS_EV_SUCCESS,




 WPS_EV_PWD_AUTH_FAIL,




 WPS_EV_PBC_OVERLAP,




 WPS_EV_PBC_TIMEOUT,




 WPS_EV_ER_AP_ADD,




 WPS_EV_ER_AP_REMOVE,




 WPS_EV_ER_ENROLLEE_ADD,




 WPS_EV_ER_ENROLLEE_REMOVE,




 WPS_EV_ER_AP_SETTINGS,




 WPS_EV_ER_SET_SELECTED_REGISTRAR,




 WPS_EV_AP_PIN_SUCCESS
};




union wps_event_data {



 struct wps_event_m2d {
  u16 config_methods;
  const u8 *manufacturer;
  size_t manufacturer_len;
  const u8 *model_name;
  size_t model_name_len;
  const u8 *model_number;
  size_t model_number_len;
  const u8 *serial_number;
  size_t serial_number_len;
  const u8 *dev_name;
  size_t dev_name_len;
  const u8 *primary_dev_type;
  u16 config_error;
  u16 dev_password_id;
 } m2d;





 struct wps_event_fail {
  int msg;
  u16 config_error;
  u16 error_indication;
 } fail;

 struct wps_event_pwd_auth_fail {
  int enrollee;
  int part;
 } pwd_auth_fail;

 struct wps_event_er_ap {
  const u8 *uuid;
  const u8 *mac_addr;
  const char *friendly_name;
  const char *manufacturer;
  const char *manufacturer_url;
  const char *model_description;
  const char *model_name;
  const char *model_number;
  const char *model_url;
  const char *serial_number;
  const char *upc;
  const u8 *pri_dev_type;
  u8 wps_state;
 } ap;

 struct wps_event_er_enrollee {
  const u8 *uuid;
  const u8 *mac_addr;
  int m1_received;
  u16 config_methods;
  u16 dev_passwd_id;
  const u8 *pri_dev_type;
  const char *dev_name;
  const char *manufacturer;
  const char *model_name;
  const char *model_number;
  const char *serial_number;
 } enrollee;

 struct wps_event_er_ap_settings {
  const u8 *uuid;
  const struct wps_credential *cred;
 } ap_settings;

 struct wps_event_er_set_selected_registrar {
  const u8 *uuid;
  int sel_reg;
  u16 dev_passwd_id;
  u16 sel_reg_config_methods;
  enum {
   WPS_ER_SET_SEL_REG_START,
   WPS_ER_SET_SEL_REG_DONE,
   WPS_ER_SET_SEL_REG_FAILED
  } state;
 } set_sel_reg;
};
# 578 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wps/wps.h"
struct wps_context {



 int ap;




 struct wps_registrar *registrar;




 enum wps_state wps_state;




 int ap_setup_locked;




 u8 uuid[16];
# 611 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wps/wps.h"
 u8 ssid[32];




 size_t ssid_len;




 struct wps_device_data dev;




 void *dh_ctx;




 struct wpabuf *dh_privkey;




 struct wpabuf *dh_pubkey;






 u16 config_methods;




 u16 encr_types;




 u16 auth_types;
# 670 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wps/wps.h"
 u8 *network_key;




 size_t network_key_len;







 u8 psk[32];




 int psk_set;







 u8 *ap_settings;




 size_t ap_settings_len;




 char *friendly_name;




 char *manufacturer_url;




 char *model_description;




 char *model_url;




 char *upc;







 int (*cred_cb)(void *ctx, const struct wps_credential *cred);







 void (*event_cb)(void *ctx, enum wps_event event,
    union wps_event_data *data);




 void *cb_ctx;
# 761 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wps/wps.h"
};

struct wps_registrar *
wps_registrar_init(struct wps_context *wps,
     const struct wps_registrar_config *cfg);
void wps_registrar_deinit(struct wps_registrar *reg);


int wps_registrar_add_pin(struct wps_registrar *reg, const u8 *addr,
     const u8 *uuid, const u8 *pin, size_t pin_len,
     int timeout);
int wps_registrar_invalidate_pin(struct wps_registrar *reg, const u8 *uuid);
int wps_registrar_unlock_pin(struct wps_registrar *reg, const u8 *uuid);

int wps_registrar_wps_cancel(struct wps_registrar *reg);

int wps_registrar_button_pushed(struct wps_registrar *reg,
    const u8 *p2p_dev_addr);
void wps_registrar_complete(struct wps_registrar *registrar, const u8 *uuid_e,
       const u8 *dev_pw, size_t dev_pw_len);
void wps_registrar_probe_req_rx(struct wps_registrar *reg, const u8 *addr,
    const struct wpabuf *wps_data,
    int p2p_wildcard);
int wps_registrar_update_ie(struct wps_registrar *reg);
int wps_registrar_get_info(struct wps_registrar *reg, const u8 *addr,
      char *buf, size_t buflen);
int wps_registrar_config_ap(struct wps_registrar *reg,
       struct wps_credential *cred);
# 798 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wps/wps.h"
int wps_build_credential_wrap(struct wpabuf *msg,
         const struct wps_credential *cred);


unsigned int wps_pin_checksum(unsigned int pin);
unsigned int wps_pin_valid(unsigned int pin);
int wps_pin_str_valid(const char *pin);

unsigned int wps_generate_pin(void);






int wps_attr_text(struct wpabuf *data, char *buf, char *end);

struct wps_er * wps_er_init(struct wps_context *wps, const char *ifname,
       const char *filter);
void wps_er_refresh(struct wps_er *er);
void wps_er_deinit(struct wps_er *er, void (*cb)(void *ctx), void *ctx);
void wps_er_set_sel_reg(struct wps_er *er, int sel_reg, u16 dev_passwd_id,
   u16 sel_reg_config_methods);
int wps_er_pbc(struct wps_er *er, const u8 *uuid);
int wps_er_learn(struct wps_er *er, const u8 *uuid, const u8 *pin,
   size_t pin_len);
int wps_er_set_config(struct wps_er *er, const u8 *uuid,
        const struct wps_credential *cred);
int wps_er_config(struct wps_er *er, const u8 *uuid, const u8 *pin,
    size_t pin_len, const struct wps_credential *cred);






int wps_dev_type_str2bin(const char *str, u8 dev_type[8]);
char * wps_dev_type_bin2str(const u8 dev_type[8], char *buf,
       size_t buf_len);
void uuid_gen_mac_addr(const u8 *mac_addr, u8 *uuid);
u16 wps_config_methods_str2bin(const char *str);
# 851 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wps/wps.h"
struct wpabuf * ndef_parse_wifi(const struct wpabuf *buf);
struct wpabuf * ndef_build_wifi(const struct wpabuf *buf);
struct wpabuf * ndef_build_wifi_hr(void);


int wps_validate_beacon(const struct wpabuf *wps_ie);
int wps_validate_beacon_probe_resp(const struct wpabuf *wps_ie, int probe,
       const u8 *addr);
int wps_validate_probe_req(const struct wpabuf *wps_ie, const u8 *addr);
int wps_validate_assoc_req(const struct wpabuf *wps_ie);
int wps_validate_assoc_resp(const struct wpabuf *wps_ie);
int wps_validate_m1(const struct wpabuf *tlvs);
int wps_validate_m2(const struct wpabuf *tlvs);
int wps_validate_m2d(const struct wpabuf *tlvs);
int wps_validate_m3(const struct wpabuf *tlvs);
int wps_validate_m4(const struct wpabuf *tlvs);
int wps_validate_m4_encr(const struct wpabuf *tlvs, int wps2);
int wps_validate_m5(const struct wpabuf *tlvs);
int wps_validate_m5_encr(const struct wpabuf *tlvs, int wps2);
int wps_validate_m6(const struct wpabuf *tlvs);
int wps_validate_m6_encr(const struct wpabuf *tlvs, int wps2);
int wps_validate_m7(const struct wpabuf *tlvs);
int wps_validate_m7_encr(const struct wpabuf *tlvs, int ap, int wps2);
int wps_validate_m8(const struct wpabuf *tlvs);
int wps_validate_m8_encr(const struct wpabuf *tlvs, int ap, int wps2);
int wps_validate_wsc_ack(const struct wpabuf *tlvs);
int wps_validate_wsc_nack(const struct wpabuf *tlvs);
int wps_validate_wsc_done(const struct wpabuf *tlvs);
int wps_validate_upnp_set_selected_registrar(const struct wpabuf *tlvs);
# 1001 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wps/wps.h"
enum wps_cb_status {
 WPS_CB_ST_SUCCESS = 0,
 WPS_CB_ST_FAILED,
 WPS_CB_ST_TIMEOUT,
 WPS_CB_ST_WEP,
 WPS_CB_ST_SCAN_ERR,
};

typedef void (*wps_st_cb_t)(int status);
# 1019 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wps/wps.h"
struct wps_sm {
    struct wps_config *wps_cfg;
    struct wps_context *wps_ctx;
    struct wps_data *wps;
    char identity[32];
    u8 identity_len;
    u8 ownaddr[6];
    u8 bssid[6];
    u8 ssid[32];
    u8 ssid_len;
    struct wps_device_data *dev;
    u8 uuid[16];
    u8 eapol_version;
    char key[64];
    u8 key_len;
    ETSTimer wps_timeout_timer;
    ETSTimer wps_msg_timeout_timer;
    ETSTimer wps_scan_timer;
    ETSTimer wps_success_cb_timer;
    ETSTimer wps_eapol_start_timer;
    wps_st_cb_t st_cb;
    u8 current_identifier;
    
# 1041 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wps/wps.h" 3 4
   _Bool 
# 1041 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wps/wps.h"
        is_wps_scan;
    u8 channel;
    u8 scan_cnt;

    u8 wps_sig_cnt[2];

    u8 discover_ssid_cnt;
    
# 1048 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wps/wps.h" 3 4
   _Bool 
# 1048 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wps/wps.h"
        ignore_sel_reg;
    struct discard_ap_list_t dis_ap_list[10];
    u8 discard_ap_cnt;
    wifi_sta_config_t config;
};



struct wps_sm *wps_sm_get(void);
int wps_ssid_save(u8 *ssid, u8 ssid_len);
int wps_key_save(char *key, u8 key_len);
int wps_station_wps_register_cb(wps_st_cb_t cb);
int wps_station_wps_unregister_cb(void);
int wps_start_pending(void);
int wps_sm_rx_eapol(u8 *src_addr, u8 *buf, u32 len);

int wps_dev_deinit(struct wps_device_data *dev);
# 13 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wps/wps_i.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wps/wps_attr_parse.h" 1
# 12 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wps/wps_attr_parse.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wps/wps.h" 1
# 13 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wps/wps_attr_parse.h" 2

struct wps_parse_attr {

 const u8 *version;
 const u8 *version2;
 const u8 *msg_type;
 const u8 *enrollee_nonce;
 const u8 *registrar_nonce;
 const u8 *uuid_r;
 const u8 *uuid_e;
 const u8 *auth_type_flags;
 const u8 *encr_type_flags;
 const u8 *conn_type_flags;
 const u8 *config_methods;
 const u8 *sel_reg_config_methods;
 const u8 *primary_dev_type;
 const u8 *rf_bands;
 const u8 *assoc_state;
 const u8 *config_error;
 const u8 *dev_password_id;
 const u8 *os_version;
 const u8 *wps_state;
 const u8 *authenticator;
 const u8 *r_hash1;
 const u8 *r_hash2;
 const u8 *e_hash1;
 const u8 *e_hash2;
 const u8 *r_snonce1;
 const u8 *r_snonce2;
 const u8 *e_snonce1;
 const u8 *e_snonce2;
 const u8 *key_wrap_auth;
 const u8 *auth_type;
 const u8 *encr_type;
 const u8 *network_idx;
 const u8 *network_key_idx;
 const u8 *mac_addr;
 const u8 *key_prov_auto;
 const u8 *dot1x_enabled;
 const u8 *selected_registrar;
 const u8 *request_type;
 const u8 *response_type;
 const u8 *ap_setup_locked;
 const u8 *settings_delay_time;
 const u8 *network_key_shareable;
 const u8 *request_to_enroll;
 const u8 *ap_channel;


 const u8 *manufacturer;
 size_t manufacturer_len;
 const u8 *model_name;
 size_t model_name_len;
 const u8 *model_number;
 size_t model_number_len;
 const u8 *serial_number;
 size_t serial_number_len;
 const u8 *dev_name;
 size_t dev_name_len;
 const u8 *public_key;
 size_t public_key_len;
 const u8 *encr_settings;
 size_t encr_settings_len;
 const u8 *ssid;
 size_t ssid_len;
 const u8 *network_key;
 size_t network_key_len;
 const u8 *eap_type;
 size_t eap_type_len;
 const u8 *eap_identity;
 size_t eap_identity_len;
 const u8 *authorized_macs;
 size_t authorized_macs_len;
 const u8 *sec_dev_type_list;
 size_t sec_dev_type_list_len;
 const u8 *oob_dev_password;
 size_t oob_dev_password_len;



 const u8 *cred[10];
 size_t cred_len[10];
 size_t num_cred;


 const u8 *req_dev_type[10];
 size_t num_req_dev_type;

 const u8 *vendor_ext[10];
 size_t vendor_ext_len[10];
 size_t num_vendor_ext;
};

int wps_parse_msg(const struct wpabuf *msg, struct wps_parse_attr *attr);
# 14 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wps/wps_i.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_crypto_types.h" 1
# 37 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_crypto_types.h"
typedef enum {
    ESP_CRYPTO_HASH_ALG_MD5, ESP_CRYPTO_HASH_ALG_SHA1,
    ESP_CRYPTO_HASH_ALG_HMAC_MD5, ESP_CRYPTO_HASH_ALG_HMAC_SHA1,
    ESP_CRYPTO_HASH_ALG_SHA256, ESP_CRYPTO_HASH_ALG_HMAC_SHA256
}esp_crypto_hash_alg_t;






typedef enum {
    ESP_CRYPTO_CIPHER_NULL, ESP_CRYPTO_CIPHER_ALG_AES, ESP_CRYPTO_CIPHER_ALG_3DES,
    ESP_CRYPTO_CIPHER_ALG_DES, ESP_CRYPTO_CIPHER_ALG_RC2, ESP_CRYPTO_CIPHER_ALG_RC4
} esp_crypto_cipher_alg_t;





typedef struct crypto_hash esp_crypto_hash_t;





typedef struct crypto_cipher esp_crypto_cipher_t;
# 74 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_crypto_types.h"
typedef esp_crypto_hash_t * (*esp_crypto_hash_init_t)(esp_crypto_hash_alg_t alg, const unsigned char *key, int key_len);
# 85 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_crypto_types.h"
typedef void (*esp_crypto_hash_update_t)(esp_crypto_hash_t *ctx, const unsigned char *data, int len);
# 100 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_crypto_types.h"
typedef int (*esp_crypto_hash_finish_t)(esp_crypto_hash_t *ctx, unsigned char *hash, int *len);
# 110 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_crypto_types.h"
typedef int (*esp_aes_128_encrypt_t)(const unsigned char *key, const unsigned char *iv, unsigned char *data, int data_len);
# 121 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_crypto_types.h"
typedef int (*esp_aes_128_decrypt_t)(const unsigned char *key, const unsigned char *iv, unsigned char *data, int data_len);
# 132 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_crypto_types.h"
typedef int (*esp_aes_wrap_t)(const unsigned char *kek, int n, const unsigned char *plain, unsigned char *cipher);
# 143 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_crypto_types.h"
typedef int (*esp_aes_unwrap_t)(const unsigned char *kek, int n, const unsigned char *cipher, unsigned char *plain);
# 155 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_crypto_types.h"
typedef esp_crypto_cipher_t * (*esp_crypto_cipher_init_t)(esp_crypto_cipher_alg_t alg, const unsigned char *iv, const unsigned char *key, int key_len);
# 167 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_crypto_types.h"
typedef int (*esp_crypto_cipher_encrypt_t)(esp_crypto_cipher_t *ctx,
                 const unsigned char *plain, unsigned char *crypt, int len);
# 179 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_crypto_types.h"
typedef int (*esp_crypto_cipher_decrypt_t)(esp_crypto_cipher_t *ctx,
                 const unsigned char *crypt, unsigned char *plain, int len);







typedef void (*esp_crypto_cipher_deinit_t)(esp_crypto_cipher_t *ctx);
# 200 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_crypto_types.h"
typedef void (*esp_hmac_sha256_t)(const unsigned char *key, int key_len, const unsigned char *data,
                      int data_len, unsigned char *mac);
# 214 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_crypto_types.h"
typedef void (*esp_hmac_sha256_vector_t)(const unsigned char *key, int key_len, int num_elem,
                      const unsigned char *addr[], const int *len, unsigned char *mac);
# 229 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_crypto_types.h"
typedef void (*esp_sha256_prf_t)(const unsigned char *key, int key_len, const char *label,
                            const unsigned char *data, int data_len, unsigned char *buf, int buf_len);
# 241 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_crypto_types.h"
typedef int (*esp_sha256_vector_t)(int num_elem, const unsigned char *addr[], const int *len,
                       unsigned char *mac);
# 258 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_crypto_types.h"
typedef int (*esp_crypto_mod_exp_t)(const unsigned char *base, int base_len,
                        const unsigned char *power, int power_len,
                        const unsigned char *modulus, int modulus_len,
                        unsigned char *result, unsigned int *result_len);
# 273 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_crypto_types.h"
typedef int (*esp_hmac_md5_t)(const unsigned char *key, unsigned int key_len, const unsigned char *data,
                              unsigned int data_len, unsigned char *mac);
# 287 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_crypto_types.h"
typedef int (*esp_hmac_md5_vector_t)(const unsigned char *key, unsigned int key_len, unsigned int num_elem,
                              const unsigned char *addr[], const unsigned int *len, unsigned char *mac);
# 300 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_crypto_types.h"
typedef int (*esp_hmac_sha1_t)(const unsigned char *key, unsigned int key_len, const unsigned char *data,
                              unsigned int data_len, unsigned char *mac);
# 314 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_crypto_types.h"
typedef int (*esp_hmac_sha1_vector_t)(const unsigned char *key, unsigned int key_len, unsigned int num_elem,
                              const unsigned char *addr[], const unsigned int *len, unsigned char *mac);
# 332 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_crypto_types.h"
typedef int (*esp_sha1_prf_t)(const unsigned char *key, unsigned int key_len, const char *label,
                              const unsigned char *data, unsigned int data_len, unsigned char *buf, unsigned int buf_len);
# 344 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_crypto_types.h"
typedef int (*esp_sha1_vector_t)(unsigned int num_elem, const unsigned char *addr[], const unsigned int *len,
                              unsigned char *mac);
# 362 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_crypto_types.h"
typedef int (*esp_pbkdf2_sha1_t)(const char *passphrase, const char *ssid, unsigned int ssid_len,
                              int iterations, unsigned char *buf, unsigned int buflen);
# 379 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_crypto_types.h"
typedef int (*esp_rc4_skip_t)(const unsigned char *key, unsigned int keylen, unsigned int skip,
                              unsigned char *data, unsigned int data_len);
# 391 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_crypto_types.h"
typedef int (*esp_md5_vector_t)(unsigned int num_elem, const unsigned char *addr[], const unsigned int *len,
                              unsigned char *mac);
# 401 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_crypto_types.h"
typedef void (*esp_aes_encrypt_t)(void *ctx, const unsigned char *plain, unsigned char *crypt);
# 410 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_crypto_types.h"
typedef void * (*esp_aes_encrypt_init_t)(const unsigned char *key, unsigned int len);






typedef void (*esp_aes_encrypt_deinit_t)(void *ctx);
# 426 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_crypto_types.h"
typedef void (*esp_aes_decrypt_t)(void *ctx, const unsigned char *crypt, unsigned char *plain);
# 435 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_crypto_types.h"
typedef void * (*esp_aes_decrypt_init_t)(const unsigned char *key, unsigned int len);






typedef void (*esp_aes_decrypt_deinit_t)(void *ctx);
# 457 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_crypto_types.h"
typedef void * (*esp_tls_init_t)(void);
# 470 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_crypto_types.h"
typedef void (*esp_tls_deinit_t)(void *tls_ctx);
# 479 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_crypto_types.h"
typedef int (*esp_eap_peer_blob_init_t)(void *sm);







typedef void (*esp_eap_peer_blob_deinit_t)(void *sm);
# 499 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_crypto_types.h"
typedef int (*esp_eap_peer_config_init_t)(void *sm, unsigned char *private_key_passwd,int private_key_passwd_len);







typedef void (*esp_eap_peer_config_deinit_t)(void *sm);







typedef int (*esp_eap_peer_register_methods_t)(void);







typedef void (*esp_eap_peer_unregister_methods_t)(void);







typedef void (*esp_eap_deinit_prev_method_t)(void *sm, const char *txt);
# 540 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_crypto_types.h"
typedef const void * (*esp_eap_peer_get_eap_method_t)(int vendor, int method);
# 550 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_crypto_types.h"
typedef void (*esp_eap_sm_abort_t)(void *sm);
# 562 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_crypto_types.h"
typedef void * (*esp_eap_sm_build_nak_t)(void *sm, int type, unsigned char id);
# 576 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_crypto_types.h"
typedef void * (*esp_eap_sm_build_identity_resp_t)(void *sm, unsigned char id, int encrypted);
# 595 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_crypto_types.h"
typedef void * (*esp_eap_msg_alloc_t)(int vendor, int type, unsigned int payload_len,
                             unsigned char code, unsigned char identifier);







typedef void (*esp_uuid_gen_mac_addr_t)(const unsigned char *mac_addr, unsigned char *uuid);





typedef void (*esp_dh5_free_t)(void *ctx);
# 620 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_crypto_types.h"
typedef void * (*esp_wps_build_assoc_req_ie_t)(int req_type);
# 629 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_crypto_types.h"
typedef void * (*esp_wps_build_assoc_resp_ie_t)(void);
# 646 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_crypto_types.h"
typedef void * (*esp_wps_build_probe_req_ie_t)(uint16_t pw_id, void *dev, const unsigned char *uuid,
                             int req_type, unsigned int num_req_dev_types, const unsigned char *req_dev_types);






typedef int (*esp_wps_build_public_key_t)(void *wps, void *msg, int mode);







typedef void * (*esp_wps_enrollee_get_msg_t)(void *wps, void *op_code);






typedef int (*esp_wps_enrollee_process_msg_t)(void *wps, int op_code, const void *msg);






typedef unsigned int (*esp_wps_generate_pin_t)(void);







typedef int (*esp_wps_is_selected_pin_registrar_t)(const void *msg, unsigned char *bssid);







typedef int (*esp_wps_is_selected_pbc_registrar_t)(const void *msg, unsigned char *bssid);
# 701 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_crypto_types.h"
typedef struct {
    uint32_t size;
    uint32_t version;
    esp_aes_wrap_t aes_wrap;
    esp_aes_unwrap_t aes_unwrap;
    esp_hmac_sha256_vector_t hmac_sha256_vector;
    esp_sha256_prf_t sha256_prf;
    esp_hmac_md5_t hmac_md5;
    esp_hmac_md5_vector_t hamc_md5_vector;
    esp_hmac_sha1_t hmac_sha1;
    esp_hmac_sha1_vector_t hmac_sha1_vector;
    esp_sha1_prf_t sha1_prf;
    esp_sha1_vector_t sha1_vector;
    esp_pbkdf2_sha1_t pbkdf2_sha1;
    esp_rc4_skip_t rc4_skip;
    esp_md5_vector_t md5_vector;
    esp_aes_encrypt_t aes_encrypt;
    esp_aes_encrypt_init_t aes_encrypt_init;
    esp_aes_encrypt_deinit_t aes_encrypt_deinit;
    esp_aes_decrypt_t aes_decrypt;
    esp_aes_decrypt_init_t aes_decrypt_init;
    esp_aes_decrypt_deinit_t aes_decrypt_deinit;
}wpa_crypto_funcs_t;






typedef struct{
    uint32_t size;
    uint32_t version;
    esp_aes_128_encrypt_t aes_128_encrypt;
    esp_aes_128_decrypt_t aes_128_decrypt;
    esp_crypto_mod_exp_t crypto_mod_exp;
    esp_hmac_sha256_t hmac_sha256;
    esp_hmac_sha256_vector_t hmac_sha256_vector;
    esp_sha256_vector_t sha256_vector;
    esp_uuid_gen_mac_addr_t uuid_gen_mac_addr;
    esp_dh5_free_t dh5_free;
    esp_wps_build_assoc_req_ie_t wps_build_assoc_req_ie;
    esp_wps_build_assoc_resp_ie_t wps_build_assoc_resp_ie;
    esp_wps_build_probe_req_ie_t wps_build_probe_req_ie;
    esp_wps_build_public_key_t wps_build_public_key;
    esp_wps_enrollee_get_msg_t wps_enrollee_get_msg;
    esp_wps_enrollee_process_msg_t wps_enrollee_process_msg;
    esp_wps_generate_pin_t wps_generate_pin;
    esp_wps_is_selected_pin_registrar_t wps_is_selected_pin_registrar;
    esp_wps_is_selected_pbc_registrar_t wps_is_selected_pbc_registrar;
    esp_eap_msg_alloc_t eap_msg_alloc;
}wps_crypto_funcs_t;






typedef struct {
    uint32_t size;
    uint32_t version;
    esp_crypto_hash_init_t crypto_hash_init;
    esp_crypto_hash_update_t crypto_hash_update;
    esp_crypto_hash_finish_t crypto_hash_finish;
    esp_crypto_cipher_init_t crypto_cipher_init;
    esp_crypto_cipher_encrypt_t crypto_cipher_encrypt;
    esp_crypto_cipher_decrypt_t crypto_cipher_decrypt;
    esp_crypto_cipher_deinit_t crypto_cipher_deinit;
    esp_crypto_mod_exp_t crypto_mod_exp;
    esp_sha256_vector_t sha256_vector;
    esp_tls_init_t tls_init;
    esp_tls_deinit_t tls_deinit;
    esp_eap_peer_blob_init_t eap_peer_blob_init;
    esp_eap_peer_blob_deinit_t eap_peer_blob_deinit;
    esp_eap_peer_config_init_t eap_peer_config_init;
    esp_eap_peer_config_deinit_t eap_peer_config_deinit;
    esp_eap_peer_register_methods_t eap_peer_register_methods;
    esp_eap_peer_unregister_methods_t eap_peer_unregister_methods;
    esp_eap_deinit_prev_method_t eap_deinit_prev_method;
    esp_eap_peer_get_eap_method_t eap_peer_get_eap_method;
    esp_eap_sm_abort_t eap_sm_abort;
    esp_eap_sm_build_nak_t eap_sm_build_nak;
    esp_eap_sm_build_identity_resp_t eap_sm_build_identity_resp;
    esp_eap_msg_alloc_t eap_msg_alloc;
} wpa2_crypto_funcs_t;






typedef struct{
    esp_aes_128_encrypt_t aes_128_encrypt;
    esp_aes_128_decrypt_t aes_128_decrypt;
} mesh_crypto_funcs_t;
# 15 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wps/wps_i.h" 2
# 25 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wps/wps_i.h"
struct wps_data {



 struct wps_context *wps;




 int registrar;




 int er;

 enum {

  SEND_M1, RECV_M2, SEND_M3, RECV_M4, SEND_M5, RECV_M6, SEND_M7,
  RECV_M8, RECEIVED_M2D, WPS_MSG_DONE, RECV_ACK, WPS_FINISHED,
  SEND_WSC_NACK,


  RECV_M1, SEND_M2, RECV_M3, SEND_M4, RECV_M5, SEND_M6,
  RECV_M7, SEND_M8, RECV_DONE, SEND_M2D, RECV_M2D_ACK
 } state;

 u8 uuid_e[16];
 u8 uuid_r[16];
 u8 mac_addr_e[6];
 u8 nonce_e[16];
 u8 nonce_r[16];
 u8 psk1[16];
 u8 psk2[16];
 u8 snonce[2 * 16];
 u8 peer_hash1[32];
 u8 peer_hash2[32];

 struct wpabuf *dh_privkey;
 struct wpabuf *dh_pubkey_e;
 struct wpabuf *dh_pubkey_r;
 u8 authkey[32];
 u8 keywrapkey[16];
 u8 emsk[32];

 struct wpabuf *last_msg;

 u8 *dev_password;
 size_t dev_password_len;
 u16 dev_pw_id;
 int pbc;




 u8 request_type;




 u16 encr_type;




 u16 auth_type;

 u8 *new_psk;
 size_t new_psk_len;

 int wps_pin_revealed;
 struct wps_credential cred;

 struct wps_device_data peer_dev;




 u16 config_error;
 u16 error_indication;

 int ext_reg;
 int int_reg;

 struct wps_credential *new_ap_settings;

 void *dh_ctx;

 void (*ap_settings_cb)(void *ctx, const struct wps_credential *cred);
 void *ap_settings_cb_ctx;

 struct wps_credential *use_cred;

 int use_psk_key;
 u8 p2p_dev_addr[6];

 int pbc_in_m1;



};

wps_crypto_funcs_t wps_crypto_funcs;


void wps_kdf(const u8 *key, const u8 *label_prefix, size_t label_prefix_len,
      const char *label, u8 *res, size_t res_len);
int wps_derive_keys(struct wps_data *wps);
void wps_derive_psk(struct wps_data *wps, const u8 *dev_passwd,
      size_t dev_passwd_len);
struct wpabuf * wps_decrypt_encr_settings(struct wps_data *wps, const u8 *encr,
       size_t encr_len);
void wps_fail_event(struct wps_context *wps, enum wps_msg_type msg,
      u16 config_error, u16 error_indication);
void wps_success_event(struct wps_context *wps);
void wps_pwd_auth_fail_event(struct wps_context *wps, int enrollee, int part);
void wps_pbc_overlap_event(struct wps_context *wps);
void wps_pbc_timeout_event(struct wps_context *wps);

struct wpabuf * wps_build_wsc_ack(struct wps_data *wps);
struct wpabuf * wps_build_wsc_nack(struct wps_data *wps);

typedef enum wps_calc_key_mode {
 WPS_CALC_KEY_NORMAL = 0,
 WPS_CALC_KEY_NO_CALC,
 WPS_CALC_KEY_PRE_CALC,
 WPS_CALC_KEY_MAX,
} wps_key_mode_t;


int wps_build_public_key(struct wps_data *wps, struct wpabuf *msg, wps_key_mode_t mode);
int wps_build_req_type(struct wpabuf *msg, enum wps_request_type type);
int wps_build_resp_type(struct wpabuf *msg, enum wps_response_type type);
int wps_build_config_methods(struct wpabuf *msg, u16 methods);
int wps_build_uuid_e(struct wpabuf *msg, const u8 *uuid);
int wps_build_dev_password_id(struct wpabuf *msg, u16 id);
int wps_build_config_error(struct wpabuf *msg, u16 err);
int wps_build_authenticator(struct wps_data *wps, struct wpabuf *msg);
int wps_build_key_wrap_auth(struct wps_data *wps, struct wpabuf *msg);
int wps_build_encr_settings(struct wps_data *wps, struct wpabuf *msg,
       struct wpabuf *plain);
int wps_build_version(struct wpabuf *msg);
int wps_build_wfa_ext(struct wpabuf *msg, int req_to_enroll,
        const u8 *auth_macs, size_t auth_macs_count);
int wps_build_msg_type(struct wpabuf *msg, enum wps_msg_type msg_type);
int wps_build_enrollee_nonce(struct wps_data *wps, struct wpabuf *msg);
int wps_build_registrar_nonce(struct wps_data *wps, struct wpabuf *msg);
int wps_build_auth_type_flags(struct wps_data *wps, struct wpabuf *msg);
int wps_build_encr_type_flags(struct wps_data *wps, struct wpabuf *msg);
int wps_build_conn_type_flags(struct wps_data *wps, struct wpabuf *msg);
int wps_build_assoc_state(struct wps_data *wps, struct wpabuf *msg);
int wps_build_oob_dev_pw(struct wpabuf *msg, u16 dev_pw_id,
    const struct wpabuf *pubkey, const u8 *dev_pw,
    size_t dev_pw_len);
struct wpabuf * wps_ie_encapsulate(struct wpabuf *data);


int wps_process_authenticator(struct wps_data *wps, const u8 *authenticator,
         const struct wpabuf *msg);
int wps_process_key_wrap_auth(struct wps_data *wps, struct wpabuf *msg,
         const u8 *key_wrap_auth);
int wps_process_cred(struct wps_parse_attr *attr,
       struct wps_credential *cred);
int wps_process_ap_settings(struct wps_parse_attr *attr,
       struct wps_credential *cred);


struct wpabuf * wps_enrollee_get_msg(struct wps_data *wps,
         enum wsc_op_code *op_code);
enum wps_process_res wps_enrollee_process_msg(struct wps_data *wps,
           enum wsc_op_code op_code,
           const struct wpabuf *msg);


struct wpabuf * wps_registrar_get_msg(struct wps_data *wps,
          enum wsc_op_code *op_code);
enum wps_process_res wps_registrar_process_msg(struct wps_data *wps,
            enum wsc_op_code op_code,
            const struct wpabuf *msg);
int wps_build_cred(struct wps_data *wps, struct wpabuf *msg);
int wps_device_store(struct wps_registrar *reg,
       struct wps_device_data *dev, const u8 *uuid);
void wps_registrar_selected_registrar_changed(struct wps_registrar *reg);
const u8 * wps_authorized_macs(struct wps_registrar *reg, size_t *count);
int wps_registrar_pbc_overlap(struct wps_registrar *reg,
         const u8 *addr, const u8 *uuid_e);
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wps/wps_dev_attr.h" 1
# 12 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wps/wps_dev_attr.h"
struct wps_parse_attr;

int wps_build_manufacturer(struct wps_device_data *dev, struct wpabuf *msg);
int wps_build_model_name(struct wps_device_data *dev, struct wpabuf *msg);
int wps_build_model_number(struct wps_device_data *dev, struct wpabuf *msg);
int wps_build_dev_name(struct wps_device_data *dev, struct wpabuf *msg);
int wps_build_device_attrs(struct wps_device_data *dev, struct wpabuf *msg);
int wps_build_os_version(struct wps_device_data *dev, struct wpabuf *msg);
int wps_build_vendor_ext_m1(struct wps_device_data *dev, struct wpabuf *msg);
int wps_build_rf_bands(struct wps_device_data *dev, struct wpabuf *msg);
int wps_build_primary_dev_type(struct wps_device_data *dev,
          struct wpabuf *msg);
int wps_build_secondary_dev_type(struct wps_device_data *dev,
     struct wpabuf *msg);
int wps_build_dev_name(struct wps_device_data *dev, struct wpabuf *msg);
int wps_process_device_attrs(struct wps_device_data *dev,
        struct wps_parse_attr *attr);
int wps_process_os_version(struct wps_device_data *dev, const u8 *ver);
int wps_process_rf_bands(struct wps_device_data *dev, const u8 *bands);
void wps_device_data_dup(struct wps_device_data *dst,
    const struct wps_device_data *src);
void wps_device_data_free(struct wps_device_data *dev);
int wps_build_vendor_ext(struct wps_device_data *dev, struct wpabuf *msg);
int wps_build_req_dev_type(struct wps_device_data *dev, struct wpabuf *msg,
      unsigned int num_req_dev_types,
      const u8 *req_dev_types);
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa2/eap_peer/eap_defs.h" 1
# 18 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa2/eap_peer/eap_defs.h"
struct eap_hdr {
 u8 code;
 u8 identifier;
 be16 length;

} __attribute__ ((packed));






enum { EAP_CODE_REQUEST = 1, EAP_CODE_RESPONSE = 2, EAP_CODE_SUCCESS = 3,
       EAP_CODE_FAILURE = 4 };
# 40 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa2/eap_peer/eap_defs.h"
typedef enum {
 EAP_TYPE_NONE = 0,
 EAP_TYPE_IDENTITY = 1 ,
 EAP_TYPE_NOTIFICATION = 2 ,
 EAP_TYPE_NAK = 3 ,
 EAP_TYPE_MD5 = 4,
 EAP_TYPE_OTP = 5 ,
 EAP_TYPE_GTC = 6,
 EAP_TYPE_TLS = 13 ,
 EAP_TYPE_LEAP = 17 ,
 EAP_TYPE_SIM = 18 ,
 EAP_TYPE_TTLS = 21 ,
 EAP_TYPE_AKA = 23 ,
 EAP_TYPE_PEAP = 25 ,
 EAP_TYPE_MSCHAPV2 = 26 ,
 EAP_TYPE_TLV = 33 ,
 EAP_TYPE_TNC = 38

                                      ,
 EAP_TYPE_FAST = 43 ,
 EAP_TYPE_PAX = 46 ,
 EAP_TYPE_PSK = 47 ,
 EAP_TYPE_SAKE = 48 ,
 EAP_TYPE_IKEV2 = 49 ,
 EAP_TYPE_AKA_PRIME = 50 ,
 EAP_TYPE_GPSK = 51 ,
 EAP_TYPE_PWD = 52 ,
 EAP_TYPE_EKE = 53 ,
 EAP_TYPE_EXPANDED = 254
} EapType;



enum {
 EAP_VENDOR_IETF = 0,
 EAP_VENDOR_MICROSOFT = 0x000137 ,
 EAP_VENDOR_WFA = 0x00372A ,
 EAP_VENDOR_HOSTAP = 39068
};

struct eap_expand {
    u8 vendor_id[3];
    be32 vendor_type;
    u8 opcode;
} __attribute__ ((packed));
# 23 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa2/eap_peer/eap_common.h" 1
# 14 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa2/eap_peer/eap_common.h"
int eap_hdr_len_valid(const struct wpabuf *msg, size_t min_payload);
const u8 * eap_hdr_validate(int vendor, EapType eap_type,
       const struct wpabuf *msg, size_t *plen);
struct wpabuf * eap_msg_alloc(int vendor, EapType type, size_t payload_len,
         u8 code, u8 identifier);
void eap_update_len(struct wpabuf *msg);
u8 eap_get_id(const struct wpabuf *msg);
EapType eap_get_type(const struct wpabuf *msg);
# 24 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c" 2
# 38 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c"
enum wps_process_res wps_process_msg(struct wps_data *wps,
                     enum wsc_op_code op_code,
                     const struct wpabuf *msg)
{
    if (wps->registrar)
        return wps_registrar_process_msg(wps, op_code, msg);
    else
        return wps_enrollee_process_msg(wps, op_code, msg);
}
# 58 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c"
struct wpabuf * wps_get_msg(struct wps_data *wps, enum wsc_op_code *op_code)
{
    if (wps->registrar)
        return wps_registrar_get_msg(wps, op_code);
    else
        return wps_enrollee_get_msg(wps, op_code);
}







int wps_is_selected_pbc_registrar(const struct wpabuf *msg, u8 *bssid)
{
 struct wps_sm *sm = wps_sm_get();
    struct wps_parse_attr *attr = (struct wps_parse_attr *)calloc(1, (sizeof(struct wps_parse_attr)));
    int i = 0;
# 85 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c"
    if (wps_parse_msg(msg, attr) < 0) {
     free((attr));
     return 0;
    }

    if(!attr->selected_registrar || *attr->selected_registrar == 0) {
     if (sm->ignore_sel_reg == 
# 91 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c" 3 4
                              0
# 91 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c"
                                   ) {
      free((attr));
         return 0;
     }
     else {
        for (i = 0; i < 10; i++) {
          if (0 == memcmp((sm->dis_ap_list[i].bssid), (bssid), (6))) {
           do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "discard ap bssid[%02x:%02x:%02x:%02x:%02x:%02x]\n" "\033[0m" "\n", esp_log_timestamp(), "wpa", bssid[0], bssid[1], bssid[2], bssid[3], bssid[4], bssid[5]); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "discard ap bssid[%02x:%02x:%02x:%02x:%02x:%02x]\n" "\033[0m" "\n", esp_log_timestamp(), "wpa", bssid[0], bssid[1], bssid[2], bssid[3], bssid[4], bssid[5]); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "discard ap bssid[%02x:%02x:%02x:%02x:%02x:%02x]\n" "\033[0m" "\n", esp_log_timestamp(), "wpa", bssid[0], bssid[1], bssid[2], bssid[3], bssid[4], bssid[5]); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "discard ap bssid[%02x:%02x:%02x:%02x:%02x:%02x]\n" "\033[0m" "\n", esp_log_timestamp(), "wpa", bssid[0], bssid[1], bssid[2], bssid[3], bssid[4], bssid[5]); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "discard ap bssid[%02x:%02x:%02x:%02x:%02x:%02x]\n" "\033[0m" "\n", esp_log_timestamp(), "wpa", bssid[0], bssid[1], bssid[2], bssid[3], bssid[4], bssid[5]); } } while(0); } while(0)
                                                                        ;
           free((attr));
           return 0;
          }
        }
     }
    }

    if (!attr->dev_password_id ||
        ((u16) (((attr->dev_password_id)[0] << 8) | (attr->dev_password_id)[1])) != DEV_PW_PUSHBUTTON) {
        free((attr));
        return 0;
    }
# 122 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c"
    free((attr));
    return 1;
}



static int is_selected_pin_registrar(struct wps_parse_attr *attr, u8 *bssid)
{
 struct wps_sm *sm = wps_sm_get();
 int i = 0;

 if (!sm || !bssid){
  return 0;
 }
# 144 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c"
    if (!attr->selected_registrar || *attr->selected_registrar == 0) {
     if (sm->ignore_sel_reg == 
# 145 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c" 3 4
                              0
# 145 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c"
                                   ) {
      return 0;
        }
     else {
      for (i = 0; i < 10; i++) {
          if (0 == memcmp((sm->dis_ap_list[i].bssid), (bssid), (6))) {
           do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "discard ap bssid[%02x:%02x:%02x:%02x:%02x:%02x]\n" "\033[0m" "\n", esp_log_timestamp(), "wpa", bssid[0], bssid[1], bssid[2], bssid[3], bssid[4], bssid[5]); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "discard ap bssid[%02x:%02x:%02x:%02x:%02x:%02x]\n" "\033[0m" "\n", esp_log_timestamp(), "wpa", bssid[0], bssid[1], bssid[2], bssid[3], bssid[4], bssid[5]); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "discard ap bssid[%02x:%02x:%02x:%02x:%02x:%02x]\n" "\033[0m" "\n", esp_log_timestamp(), "wpa", bssid[0], bssid[1], bssid[2], bssid[3], bssid[4], bssid[5]); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "discard ap bssid[%02x:%02x:%02x:%02x:%02x:%02x]\n" "\033[0m" "\n", esp_log_timestamp(), "wpa", bssid[0], bssid[1], bssid[2], bssid[3], bssid[4], bssid[5]); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "discard ap bssid[%02x:%02x:%02x:%02x:%02x:%02x]\n" "\033[0m" "\n", esp_log_timestamp(), "wpa", bssid[0], bssid[1], bssid[2], bssid[3], bssid[4], bssid[5]); } } while(0); } while(0)
                                                                          ;
              return 0;
          }
      }
     }
    }
    if (attr->dev_password_id != 
# 158 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c" 3 4
                                ((void *)0) 
# 158 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c"
                                     &&
        ((u16) (((attr->dev_password_id)[0] << 8) | (attr->dev_password_id)[1])) == DEV_PW_PUSHBUTTON) {
        return 0;
    }

    if (!attr->sel_reg_config_methods)


        return 0;

    return 1;
}







int wps_is_selected_pin_registrar(const struct wpabuf *msg, u8 *bssid)
{
    struct wps_parse_attr *attr;
    int ret;

    attr = (struct wps_parse_attr *)calloc(1, (sizeof(struct wps_parse_attr)));
    if (attr == 
# 183 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c" 3 4
               ((void *)0)
# 183 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c"
                   )
        return -99;

    if (wps_parse_msg(msg, attr) < 0) {
        free((attr));
        return 0;
    }

    ret = is_selected_pin_registrar(attr, bssid);
    free((attr));

    return ret;
}
# 206 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c"
int wps_is_addr_authorized(const struct wpabuf *msg, const u8 *addr,
               int ver1_compat)
{
 struct wps_sm *sm = wps_sm_get();
    struct wps_parse_attr *attr;
    int ret = 0;
    unsigned int i;
    const u8 *pos;
    const u8 bcast[6] = { 0xff, 0xff, 0xff, 0xff, 0xff, 0xff };

    if (!sm){
     return -10;
    }

    attr = (struct wps_parse_attr *)calloc(1, (sizeof(struct wps_parse_attr)));
    if (attr == 
# 221 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c" 3 4
               ((void *)0)
# 221 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c"
                   ) {
        ret = -99;
        goto _out;
    }

    if (wps_parse_msg(msg, attr) < 0) {
        ret = 0;
        goto _out;
    }

    if (!attr->version2 && ver1_compat) {






        ret = is_selected_pin_registrar(attr, sm->config.bssid);
        goto _out;

    }

    if (!attr->authorized_macs) {
        ret = 0;
        goto _out;
    }

    pos = attr->authorized_macs;
    for (i = 0; i < attr->authorized_macs_len / 6; i++) {
        if (memcmp((pos), (addr), (6)) == 0) {
            ret = 2;
            goto _out;
        }
        if (memcmp((pos), (bcast), (6)) == 0) {
            ret = 1;
            goto _out;
        }
        pos += 6;
    }
_out:
    if (attr)
        free((attr));

    return ret;
}
# 275 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c"
int wps_ap_priority_compar(const struct wpabuf *wps_a,
               const struct wpabuf *wps_b)
{
    struct wps_parse_attr *attr_a, *attr_b;
    int sel_a, sel_b;
    int ret = 0;

    attr_a = (struct wps_parse_attr *)calloc(1, (sizeof(struct wps_parse_attr)));
    attr_b = (struct wps_parse_attr *)calloc(1, (sizeof(struct wps_parse_attr)));

    if (attr_a == 
# 285 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c" 3 4
                 ((void *)0) 
# 285 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c"
                      || attr_b == 
# 285 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c" 3 4
                                   ((void *)0)
# 285 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c"
                                       ) {
        ret = 0;
        goto _out;
    }

    if (wps_a == 
# 290 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c" 3 4
                ((void *)0) 
# 290 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c"
                     || wps_parse_msg(wps_a, attr_a) < 0)
        return 1;
    if (wps_b == 
# 292 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c" 3 4
                ((void *)0) 
# 292 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c"
                     || wps_parse_msg(wps_b, attr_b) < 0)
        return -1;

    sel_a = attr_a->selected_registrar && *attr_a->selected_registrar != 0;
    sel_b = attr_b->selected_registrar && *attr_b->selected_registrar != 0;

    if (sel_a && !sel_b) {
        ret = -1;
        goto _out;
    }
    if (!sel_a && sel_b) {
        ret = 1;
        goto _out;
    }

_out:
    if (attr_a)
        free((attr_a));
    if (attr_b)
        free((attr_b));
    return ret;
}
# 324 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c"
const u8 * wps_get_uuid_e(const struct wpabuf *msg)
{
    struct wps_parse_attr *attr;
    const u8 *uuid_e;

    attr = (struct wps_parse_attr *)calloc(1, (sizeof(struct wps_parse_attr)));
    if (attr == 
# 330 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c" 3 4
               ((void *)0)
# 330 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c"
                   )
        return 
# 331 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c" 3 4
              ((void *)0)
# 331 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c"
                  ;

    if (wps_parse_msg(msg, attr) < 0) {
        uuid_e = 
# 334 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c" 3 4
                ((void *)0)
# 334 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c"
                    ;
    } else {
        uuid_e = attr->uuid_e;
    }
    free((attr));
    return uuid_e;
}





int wps_is_20(const struct wpabuf *msg)
{
    struct wps_parse_attr *attr;
    int ret;

    attr = (struct wps_parse_attr *)calloc(1, (sizeof(struct wps_parse_attr)));
    if (attr == 
# 352 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c" 3 4
               ((void *)0)
# 352 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c"
                   )
        return 0;

    if (msg == 
# 355 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c" 3 4
              ((void *)0) 
# 355 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c"
                   || wps_parse_msg(msg, attr) < 0) {
        ret = 0;
    } else {
        ret = (attr->version2 != 
# 358 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c" 3 4
                                ((void *)0)
# 358 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c"
                                    );
    }
    free((attr));
    return ret;
}
# 372 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c"
struct wpabuf * wps_build_assoc_req_ie(enum wps_request_type req_type)
{
    struct wpabuf *ie;
    u8 *len;

    do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Building WPS IE for (Re)Association " "Request" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Building WPS IE for (Re)Association " "Request" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Building WPS IE for (Re)Association " "Request" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Building WPS IE for (Re)Association " "Request" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Building WPS IE for (Re)Association " "Request" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                     ;
    ie = wpabuf_alloc(100);
    if (ie == 
# 380 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c" 3 4
             ((void *)0)
# 380 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c"
                 )
        return 
# 381 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c" 3 4
              ((void *)0)
# 381 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c"
                  ;

    wpabuf_put_u8(ie, 221);
    len = wpabuf_put(ie, 1);
    wpabuf_put_be32(ie, 0x0050f204);

    if (wps_build_version(ie) ||
        wps_build_req_type(ie, req_type) ||
        wps_build_wfa_ext(ie, 0, 
# 389 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c" 3 4
                                ((void *)0)
# 389 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c"
                                    , 0)) {
        wpabuf_free(ie);
        return 
# 391 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c" 3 4
              ((void *)0)
# 391 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c"
                  ;
    }

    *len = wpabuf_len(ie) - 2;

    return ie;
}
# 406 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c"
struct wpabuf * wps_build_assoc_resp_ie(void)
{
    struct wpabuf *ie;
    u8 *len;

    do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Building WPS IE for (Re)Association " "Response" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Building WPS IE for (Re)Association " "Response" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Building WPS IE for (Re)Association " "Response" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Building WPS IE for (Re)Association " "Response" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Building WPS IE for (Re)Association " "Response" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                      ;
    ie = wpabuf_alloc(100);
    if (ie == 
# 414 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c" 3 4
             ((void *)0)
# 414 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c"
                 )
        return 
# 415 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c" 3 4
              ((void *)0)
# 415 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c"
                  ;

    wpabuf_put_u8(ie, 221);
    len = wpabuf_put(ie, 1);
    wpabuf_put_be32(ie, 0x0050f204);

    if (wps_build_version(ie) ||
        wps_build_resp_type(ie, WPS_RESP_AP) ||
        wps_build_wfa_ext(ie, 0, 
# 423 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c" 3 4
                                ((void *)0)
# 423 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c"
                                    , 0)) {
        wpabuf_free(ie);
        return 
# 425 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c" 3 4
              ((void *)0)
# 425 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c"
                  ;
    }

    *len = wpabuf_len(ie) - 2;

    return ie;
}
# 448 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c"
struct wpabuf * wps_build_probe_req_ie(u16 pw_id, struct wps_device_data *dev,
                       const u8 *uuid,
                       enum wps_request_type req_type,
                       unsigned int num_req_dev_types,
                       const u8 *req_dev_types)
{
    struct wpabuf *ie;

    do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Building WPS IE for Probe Request\n" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Building WPS IE for Probe Request\n" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Building WPS IE for Probe Request\n" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Building WPS IE for Probe Request\n" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Building WPS IE for Probe Request\n" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);

    ie = wpabuf_alloc(400);
    if (ie == 
# 459 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c" 3 4
             ((void *)0)
# 459 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c"
                 ) {
        do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: ie alloc failed." "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: ie alloc failed." "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: ie alloc failed." "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: ie alloc failed." "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: ie alloc failed." "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
        return 
# 461 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c" 3 4
              ((void *)0)
# 461 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c"
                  ;
    }

    if (wps_build_version(ie) ||
        wps_build_req_type(ie, req_type) ||
        wps_build_config_methods(ie, dev->config_methods) ||
        wps_build_uuid_e(ie, uuid) ||
        wps_build_primary_dev_type(dev, ie) ||
        wps_build_rf_bands(dev, ie) ||
        wps_build_assoc_state(
# 470 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c" 3 4
                             ((void *)0)
# 470 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c"
                                 , ie) ||
        wps_build_config_error(ie, WPS_CFG_NO_ERROR) ||
        wps_build_dev_password_id(ie, pw_id) ||

        wps_build_manufacturer(dev, ie) ||
        wps_build_model_name(dev, ie) ||
        wps_build_model_number(dev, ie) ||
        wps_build_dev_name(dev, ie) ||
        wps_build_wfa_ext(ie, req_type == WPS_REQ_ENROLLEE, 
# 478 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c" 3 4
                                                           ((void *)0)
# 478 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c"
                                                               , 0) ||

        wps_build_req_dev_type(dev, ie, num_req_dev_types, req_dev_types)
        ||
        wps_build_secondary_dev_type(dev, ie)
        ) {
        wpabuf_free(ie);
        return 
# 485 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c" 3 4
              ((void *)0)
# 485 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c"
                  ;
    }
# 495 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c"
    return wps_ie_encapsulate(ie);
}
# 514 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c"
int wps_attr_text(struct wpabuf *data, char *buf, char *end)
{
    struct wps_parse_attr *attr;
    char *pos = buf;
    int ret;

    attr = (struct wps_parse_attr *)calloc(1, (sizeof(struct wps_parse_attr)));
    if (attr == 
# 521 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c" 3 4
               ((void *)0)
# 521 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c"
                   )
        return -99;

    if (wps_parse_msg(data, attr) < 0) {
        ret = -1;
        goto _out;
    }

    if (attr->wps_state) {
        if (*attr->wps_state == WPS_STATE_NOT_CONFIGURED)
            ret = snprintf(pos, end - pos,
                      "wps_state=unconfigured\n");
        else if (*attr->wps_state == WPS_STATE_CONFIGURED)
            ret = snprintf(pos, end - pos,
                      "wps_state=configured\n");
        else
            ret = 0;
        if (ret < 0 || ret >= end - pos) {
            ret = pos - buf;
            goto _out;
        }
        pos += ret;
    }

    if (attr->ap_setup_locked && *attr->ap_setup_locked) {
        ret = snprintf(pos, end - pos,
                  "wps_ap_setup_locked=1\n");
        if (ret < 0 || ret >= end - pos) {
            ret = pos - buf;
            goto _out;
        }
        pos += ret;
    }

    if (attr->selected_registrar && *attr->selected_registrar) {
        ret = snprintf(pos, end - pos,
                  "wps_selected_registrar=1\n");
        if (ret < 0 || ret >= end - pos) {
            ret = pos - buf;
            goto _out;
        }
        pos += ret;
    }

    if (attr->dev_password_id) {
        ret = snprintf(pos, end - pos,
                  "wps_device_password_id=%u\n",
                  ((u16) (((attr->dev_password_id)[0] << 8) | (attr->dev_password_id)[1])));
        if (ret < 0 || ret >= end - pos) {
            ret = pos - buf;
            goto _out;
        }
        pos += ret;
    }

    if (attr->sel_reg_config_methods) {
        ret = snprintf(pos, end - pos,
                  "wps_selected_registrar_config_methods="
                  "0x%04x\n",
                  ((u16) (((attr->sel_reg_config_methods)[0] << 8) | (attr->sel_reg_config_methods)[1])));
        if (ret < 0 || ret >= end - pos) {
            ret = pos - buf;
            goto _out;
        }
        pos += ret;
    }

    if (attr->primary_dev_type) {
        char devtype[21];
        ret = snprintf(pos, end - pos,
                  "wps_primary_device_type=%s\n",
                  wps_dev_type_bin2str(attr->primary_dev_type,
                               devtype,
                               sizeof(devtype)));
        if (ret < 0 || ret >= end - pos) {
            ret = pos - buf;
            goto _out;
        }
        pos += ret;
    }

    if (attr->dev_name) {
        char *str = (char *)malloc((attr->dev_name_len + 1));
        size_t i;
        if (str == 
# 605 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c" 3 4
                  ((void *)0)
# 605 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps.c"
                      ) {
            ret = pos - buf;
            goto _out;
        }
        for (i = 0; i < attr->dev_name_len; i++) {
            if (attr->dev_name[i] < 32)
                str[i] = '_';
            else
                str[i] = attr->dev_name[i];
        }
        str[i] = '\0';
        ret = snprintf(pos, end - pos, "wps_device_name=%s\n", str);
        free((str));
        if (ret < 0 || ret >= end - pos) {
            ret = pos - buf;
            goto _out;
        }
        pos += ret;
    }

    if (attr->config_methods) {
        ret = snprintf(pos, end - pos,
                  "wps_config_methods=0x%04x\n",
                  ((u16) (((attr->config_methods)[0] << 8) | (attr->config_methods)[1])));
        if (ret < 0 || ret >= end - pos) {
            ret = pos - buf;
            goto _out;
        }
        pos += ret;
    }

    ret = pos - buf;
_out:
    if (attr)
        free((attr));
    return ret;
}
