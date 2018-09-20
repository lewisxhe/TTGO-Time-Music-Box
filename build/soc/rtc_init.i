# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c"
# 1 "D:\\ESP32\\esp-idf-v3.1-rc1\\ESP32_PIC_A2DP\\build\\soc//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c"
# 15 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c"
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
# 16 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c" 2

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
# 12 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h" 2




# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 216 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4

# 216 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef unsigned int size_t;
# 328 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef short unsigned int wchar_t;
# 17 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/reent.h" 1
# 13 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/reent.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/_ansi.h" 1
# 14 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/reent.h" 2
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 149 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef int ptrdiff_t;
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
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/cdefs.h" 1
# 45 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/cdefs.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 46 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/cdefs.h" 2
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h" 2
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
# 18 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc.h" 1
# 14 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc.h"
       

# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdbool.h" 1 3 4
# 17 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc.h" 2
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
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc_cntl_reg.h" 1
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc_cntl_reg.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/soc.h" 1
# 22 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc_cntl_reg.h" 2
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/dport_reg.h" 1
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/dport_reg.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/dport_access.h" 1
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/dport_access.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_attr.h" 1
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/dport_access.h" 2
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
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/dport_reg.h" 2
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/efuse_reg.h" 1
# 22 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/gpio_reg.h" 1
# 23 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c" 2


void rtc_init(rtc_config_t cfg)
{
    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x30))) >= 0x3ff00000) && (((0x3ff48000 + 0x30))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x30))) >= 0x3ff00000) && (((0x3ff48000 + 0x30))) <= 0x3ff13FFC)), 1), "(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)"); (("(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)" && (!(((((0x3ff48000 + 0x30))) >= 0x3ff00000) && (((0x3ff48000 + 0x30))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 27, __func__, "\"(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)\" && (!(((((0x3ff48000 + 0x30))) >= 0x3ff00000) && (((0x3ff48000 + 0x30))) <= 0x3ff13FFC))")); } while(0);; ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff48000 + 0x30)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x30)))) <= 0x3ff13FFC)), (!((((((0x3ff48000 + 0x30)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x30)))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!((((((0x3ff48000 + 0x30)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x30)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 27, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!((((((0x3ff48000 + 0x30)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x30)))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)(((0x3ff48000 + 0x30))))) = (uint32_t)((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x30))) >= 0x3ff00000) && (((0x3ff48000 + 0x30))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x30))) >= 0x3ff00000) && (((0x3ff48000 + 0x30))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!(((((0x3ff48000 + 0x30))) >= 0x3ff00000) && (((0x3ff48000 + 0x30))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 27, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!(((((0x3ff48000 + 0x30))) >= 0x3ff00000) && (((0x3ff48000 + 0x30))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff48000 + 0x30)))); })&(~(((1UL << (26))))))); }); });

    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x1c))) >= 0x3ff00000) && (((0x3ff48000 + 0x1c))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x1c))) >= 0x3ff00000) && (((0x3ff48000 + 0x1c))) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)"); (("(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)" && (!(((((0x3ff48000 + 0x1c))) >= 0x3ff00000) && (((0x3ff48000 + 0x1c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 29, __func__, "\"(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)\" && (!(((((0x3ff48000 + 0x1c))) >= 0x3ff00000) && (((0x3ff48000 + 0x1c))) <= 0x3ff13FFC))")); } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff48000 + 0x1c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x1c)))) <= 0x3ff13FFC)), (!((((((0x3ff48000 + 0x1c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x1c)))) <= 0x3ff13FFC)), 1), "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)"); (("(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)" && (!((((((0x3ff48000 + 0x1c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x1c)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 29, __func__, "\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!((((((0x3ff48000 + 0x1c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x1c)))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)(((0x3ff48000 + 0x1c)))) = (((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x1c))) >= 0x3ff00000) && (((0x3ff48000 + 0x1c))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x1c))) >= 0x3ff00000) && (((0x3ff48000 + 0x1c))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!(((((0x3ff48000 + 0x1c))) >= 0x3ff00000) && (((0x3ff48000 + 0x1c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 29, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!(((((0x3ff48000 + 0x1c))) >= 0x3ff00000) && (((0x3ff48000 + 0x1c))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((0x3ff48000 + 0x1c))); }) & ~((0xFF) << (24)))|(((cfg.pll_wait) & (0xFF))<<(24)))); })); });
    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x1c))) >= 0x3ff00000) && (((0x3ff48000 + 0x1c))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x1c))) >= 0x3ff00000) && (((0x3ff48000 + 0x1c))) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)"); (("(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)" && (!(((((0x3ff48000 + 0x1c))) >= 0x3ff00000) && (((0x3ff48000 + 0x1c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 30, __func__, "\"(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)\" && (!(((((0x3ff48000 + 0x1c))) >= 0x3ff00000) && (((0x3ff48000 + 0x1c))) <= 0x3ff13FFC))")); } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff48000 + 0x1c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x1c)))) <= 0x3ff13FFC)), (!((((((0x3ff48000 + 0x1c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x1c)))) <= 0x3ff13FFC)), 1), "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)"); (("(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)" && (!((((((0x3ff48000 + 0x1c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x1c)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 30, __func__, "\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!((((((0x3ff48000 + 0x1c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x1c)))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)(((0x3ff48000 + 0x1c)))) = (((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x1c))) >= 0x3ff00000) && (((0x3ff48000 + 0x1c))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x1c))) >= 0x3ff00000) && (((0x3ff48000 + 0x1c))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!(((((0x3ff48000 + 0x1c))) >= 0x3ff00000) && (((0x3ff48000 + 0x1c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 30, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!(((((0x3ff48000 + 0x1c))) >= 0x3ff00000) && (((0x3ff48000 + 0x1c))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((0x3ff48000 + 0x1c))); }) & ~((0x3FF) << (14)))|(((cfg.xtal_wait) & (0x3FF))<<(14)))); })); });
    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x1c))) >= 0x3ff00000) && (((0x3ff48000 + 0x1c))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x1c))) >= 0x3ff00000) && (((0x3ff48000 + 0x1c))) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)"); (("(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)" && (!(((((0x3ff48000 + 0x1c))) >= 0x3ff00000) && (((0x3ff48000 + 0x1c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 31, __func__, "\"(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)\" && (!(((((0x3ff48000 + 0x1c))) >= 0x3ff00000) && (((0x3ff48000 + 0x1c))) <= 0x3ff13FFC))")); } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff48000 + 0x1c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x1c)))) <= 0x3ff13FFC)), (!((((((0x3ff48000 + 0x1c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x1c)))) <= 0x3ff13FFC)), 1), "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)"); (("(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)" && (!((((((0x3ff48000 + 0x1c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x1c)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 31, __func__, "\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!((((((0x3ff48000 + 0x1c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x1c)))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)(((0x3ff48000 + 0x1c)))) = (((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x1c))) >= 0x3ff00000) && (((0x3ff48000 + 0x1c))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x1c))) >= 0x3ff00000) && (((0x3ff48000 + 0x1c))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!(((((0x3ff48000 + 0x1c))) >= 0x3ff00000) && (((0x3ff48000 + 0x1c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 31, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!(((((0x3ff48000 + 0x1c))) >= 0x3ff00000) && (((0x3ff48000 + 0x1c))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((0x3ff48000 + 0x1c))); }) & ~((0xFF) << (6)))|(((cfg.ck8m_wait) & (0xFF))<<(6)))); })); });

    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x78))) >= 0x3ff00000) && (((0x3ff48000 + 0x78))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x78))) >= 0x3ff00000) && (((0x3ff48000 + 0x78))) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)"); (("(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)" && (!(((((0x3ff48000 + 0x78))) >= 0x3ff00000) && (((0x3ff48000 + 0x78))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 33, __func__, "\"(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)\" && (!(((((0x3ff48000 + 0x78))) >= 0x3ff00000) && (((0x3ff48000 + 0x78))) <= 0x3ff13FFC))")); } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff48000 + 0x78)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x78)))) <= 0x3ff13FFC)), (!((((((0x3ff48000 + 0x78)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x78)))) <= 0x3ff13FFC)), 1), "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)"); (("(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)" && (!((((((0x3ff48000 + 0x78)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x78)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 33, __func__, "\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!((((((0x3ff48000 + 0x78)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x78)))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)(((0x3ff48000 + 0x78)))) = (((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x78))) >= 0x3ff00000) && (((0x3ff48000 + 0x78))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x78))) >= 0x3ff00000) && (((0x3ff48000 + 0x78))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!(((((0x3ff48000 + 0x78))) >= 0x3ff00000) && (((0x3ff48000 + 0x78))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 33, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!(((((0x3ff48000 + 0x78))) >= 0x3ff00000) && (((0x3ff48000 + 0x78))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((0x3ff48000 + 0x78))); }) & ~((0x3) << (24)))|(((3) & (0x3))<<(24)))); })); });
    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x78))) >= 0x3ff00000) && (((0x3ff48000 + 0x78))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x78))) >= 0x3ff00000) && (((0x3ff48000 + 0x78))) <= 0x3ff13FFC)), 1), "(Cannot use SET_PERI_REG_MASK for DPORT registers use DPORT_SET_PERI_REG_MASK)"); (("(Cannot use SET_PERI_REG_MASK for DPORT registers use DPORT_SET_PERI_REG_MASK)" && (!(((((0x3ff48000 + 0x78))) >= 0x3ff00000) && (((0x3ff48000 + 0x78))) <= 0x3ff13FFC))) ? (void)0 : __assert_func (
 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c"
# 34 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c"
    ,
 35
# 34 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c"
    , __func__, "\"(Cannot use SET_PERI_REG_MASK for DPORT registers use DPORT_SET_PERI_REG_MASK)\" && (!(((((0x3ff48000 + 0x78))) >= 0x3ff00000) && (((0x3ff48000 + 0x78))) <= 0x3ff13FFC))")); } while(0);; ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff48000 + 0x78)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x78)))) <= 0x3ff13FFC)), (!((((((0x3ff48000 + 0x78)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x78)))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!((((((0x3ff48000 + 0x78)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x78)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func (
 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c"
# 34 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c"
    ,
 35
# 34 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c"
    , __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!((((((0x3ff48000 + 0x78)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x78)))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)(((0x3ff48000 + 0x78))))) = (uint32_t)((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x78))) >= 0x3ff00000) && (((0x3ff48000 + 0x78))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x78))) >= 0x3ff00000) && (((0x3ff48000 + 0x78))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!(((((0x3ff48000 + 0x78))) >= 0x3ff00000) && (((0x3ff48000 + 0x78))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 35, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!(((((0x3ff48000 + 0x78))) >= 0x3ff00000) && (((0x3ff48000 + 0x78))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff48000 + 0x78)))); })|(((1UL << (30))) | ((1UL << (29)))))); }); })
                                                                         ;


    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x7c))) >= 0x3ff00000) && (((0x3ff48000 + 0x7c))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x7c))) >= 0x3ff00000) && (((0x3ff48000 + 0x7c))) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)"); (("(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)" && (!(((((0x3ff48000 + 0x7c))) >= 0x3ff00000) && (((0x3ff48000 + 0x7c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 38, __func__, "\"(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)\" && (!(((((0x3ff48000 + 0x7c))) >= 0x3ff00000) && (((0x3ff48000 + 0x7c))) <= 0x3ff13FFC))")); } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff48000 + 0x7c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x7c)))) <= 0x3ff13FFC)), (!((((((0x3ff48000 + 0x7c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x7c)))) <= 0x3ff13FFC)), 1), "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)"); (("(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)" && (!((((((0x3ff48000 + 0x7c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x7c)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 38, __func__, "\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!((((((0x3ff48000 + 0x7c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x7c)))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)(((0x3ff48000 + 0x7c)))) = (((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x7c))) >= 0x3ff00000) && (((0x3ff48000 + 0x7c))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x7c))) >= 0x3ff00000) && (((0x3ff48000 + 0x7c))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!(((((0x3ff48000 + 0x7c))) >= 0x3ff00000) && (((0x3ff48000 + 0x7c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 38, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!(((((0x3ff48000 + 0x7c))) >= 0x3ff00000) && (((0x3ff48000 + 0x7c))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((0x3ff48000 + 0x7c))); }) & ~((0x7) << (25)))|(((4) & (0x7))<<(25)))); })); });
    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x7c))) >= 0x3ff00000) && (((0x3ff48000 + 0x7c))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x7c))) >= 0x3ff00000) && (((0x3ff48000 + 0x7c))) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)"); (("(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)" && (!(((((0x3ff48000 + 0x7c))) >= 0x3ff00000) && (((0x3ff48000 + 0x7c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 39, __func__, "\"(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)\" && (!(((((0x3ff48000 + 0x7c))) >= 0x3ff00000) && (((0x3ff48000 + 0x7c))) <= 0x3ff13FFC))")); } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff48000 + 0x7c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x7c)))) <= 0x3ff13FFC)), (!((((((0x3ff48000 + 0x7c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x7c)))) <= 0x3ff13FFC)), 1), "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)"); (("(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)" && (!((((((0x3ff48000 + 0x7c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x7c)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 39, __func__, "\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!((((((0x3ff48000 + 0x7c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x7c)))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)(((0x3ff48000 + 0x7c)))) = (((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x7c))) >= 0x3ff00000) && (((0x3ff48000 + 0x7c))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x7c))) >= 0x3ff00000) && (((0x3ff48000 + 0x7c))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!(((((0x3ff48000 + 0x7c))) >= 0x3ff00000) && (((0x3ff48000 + 0x7c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 39, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!(((((0x3ff48000 + 0x7c))) >= 0x3ff00000) && (((0x3ff48000 + 0x7c))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((0x3ff48000 + 0x7c))); }) & ~((0x7) << (22)))|(((4) & (0x7))<<(22)))); })); });

    if (cfg.clkctl_init) {

        (*((volatile uint32_t *)((((0x3ff00000 + 0x044)))))) = (uint32_t)(((DPORT_READ_PERI_REG((0x3ff00000 + 0x044))&(~(((1UL << (11))))))));
        (*((volatile uint32_t *)((((0x3ff00000 + 0x05C)))))) = (uint32_t)(((DPORT_READ_PERI_REG((0x3ff00000 + 0x05C))&(~(((1UL << (11))))))));

        (*((volatile uint32_t *)((((0x3ff00000 + 0x094)))))) = (uint32_t)((((DPORT_READ_PERI_REG((0x3ff00000 + 0x094))&(~((0x0000003F)<<(2))))|(((0) & 0x0000003F)<<(2)))));
        (*((volatile uint32_t *)((((0x3ff00000 + 0x094)))))) = (uint32_t)(((DPORT_READ_PERI_REG((0x3ff00000 + 0x094))&(~(((1UL << (1))))))));
        (*((volatile uint32_t *)((((0x3ff00000 + 0x094)))))) = (uint32_t)(((DPORT_READ_PERI_REG((0x3ff00000 + 0x094))&(~(((1UL << (0))))))));

        (*((volatile uint32_t *)((((0x3ff00000 + 0x0A0)))))) = (uint32_t)(((DPORT_READ_PERI_REG((0x3ff00000 + 0x0A0))&(~(0xFFFFFFFF)))));
        (*((volatile uint32_t *)((((0x3ff00000 + 0x0A4)))))) = (uint32_t)(((DPORT_READ_PERI_REG((0x3ff00000 + 0x0A4))&(~(((1UL << (0))))))));

        (*((volatile uint32_t *)((((0x3ff00000 + 0x0AC)))))) = (uint32_t)(((DPORT_READ_PERI_REG((0x3ff00000 + 0x0AC))&(~(((1UL << (8))))))));
        (*((volatile uint32_t *)((((0x3ff00000 + 0x0AC)))))) = (uint32_t)(((DPORT_READ_PERI_REG((0x3ff00000 + 0x0AC))&(~(((1UL << (0))))))));
    }

    if (cfg.pwrctl_init) {
        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC)), 1), "(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)"); (("(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)" && (!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 58, __func__, "\"(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)\" && (!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC))")); } while(0);; ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff48000 + 0x70)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x70)))) <= 0x3ff13FFC)), (!((((((0x3ff48000 + 0x70)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x70)))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!((((((0x3ff48000 + 0x70)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x70)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 58, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!((((((0x3ff48000 + 0x70)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x70)))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)(((0x3ff48000 + 0x70))))) = (uint32_t)((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 58, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff48000 + 0x70)))); })&(~(((1UL << (26))))))); }); });

        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC)), 1), "(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)"); (("(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)" && (!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 60, __func__, "\"(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)\" && (!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC))")); } while(0);; ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff48000 + 0x0)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x0)))) <= 0x3ff13FFC)), (!((((((0x3ff48000 + 0x0)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x0)))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!((((((0x3ff48000 + 0x0)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x0)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 60, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!((((((0x3ff48000 + 0x0)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x0)))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)(((0x3ff48000 + 0x0))))) = (uint32_t)((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 60, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff48000 + 0x0)))); })&(~(((1UL << (13))))))); }); });

        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC)), 1), "(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)"); (("(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)" && (!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 62, __func__, "\"(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)\" && (!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC))")); } while(0);; ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff48000 + 0x0)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x0)))) <= 0x3ff13FFC)), (!((((((0x3ff48000 + 0x0)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x0)))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!((((((0x3ff48000 + 0x0)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x0)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 62, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!((((((0x3ff48000 + 0x0)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x0)))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)(((0x3ff48000 + 0x0))))) = (uint32_t)((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 62, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff48000 + 0x0)))); })&(~(((1UL << (22))))))); }); });
        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC)), 1), "(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)"); (("(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)" && (!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 63, __func__, "\"(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)\" && (!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC))")); } while(0);; ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff48000 + 0x0)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x0)))) <= 0x3ff13FFC)), (!((((((0x3ff48000 + 0x0)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x0)))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!((((((0x3ff48000 + 0x0)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x0)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 63, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!((((((0x3ff48000 + 0x0)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x0)))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)(((0x3ff48000 + 0x0))))) = (uint32_t)((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 63, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff48000 + 0x0)))); })&(~(((1UL << (19))))))); }); });
        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC)), 1), "(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)"); (("(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)" && (!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 64, __func__, "\"(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)\" && (!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC))")); } while(0);; ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff48000 + 0x0)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x0)))) <= 0x3ff13FFC)), (!((((((0x3ff48000 + 0x0)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x0)))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!((((((0x3ff48000 + 0x0)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x0)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 64, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!((((((0x3ff48000 + 0x0)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x0)))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)(((0x3ff48000 + 0x0))))) = (uint32_t)((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 64, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff48000 + 0x0)))); })&(~(((1UL << (16))))))); }); });

        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC)), 1), "(Cannot use SET_PERI_REG_MASK for DPORT registers use DPORT_SET_PERI_REG_MASK)"); (("(Cannot use SET_PERI_REG_MASK for DPORT registers use DPORT_SET_PERI_REG_MASK)" && (!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 66, __func__, "\"(Cannot use SET_PERI_REG_MASK for DPORT registers use DPORT_SET_PERI_REG_MASK)\" && (!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC))")); } while(0);; ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff48000 + 0x0)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x0)))) <= 0x3ff13FFC)), (!((((((0x3ff48000 + 0x0)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x0)))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!((((((0x3ff48000 + 0x0)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x0)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 66, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!((((((0x3ff48000 + 0x0)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x0)))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)(((0x3ff48000 + 0x0))))) = (uint32_t)((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 66, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff48000 + 0x0)))); })|(((1UL << (20)))))); }); });
        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC)), 1), "(Cannot use SET_PERI_REG_MASK for DPORT registers use DPORT_SET_PERI_REG_MASK)"); (("(Cannot use SET_PERI_REG_MASK for DPORT registers use DPORT_SET_PERI_REG_MASK)" && (!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 67, __func__, "\"(Cannot use SET_PERI_REG_MASK for DPORT registers use DPORT_SET_PERI_REG_MASK)\" && (!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC))")); } while(0);; ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff48000 + 0x0)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x0)))) <= 0x3ff13FFC)), (!((((((0x3ff48000 + 0x0)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x0)))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!((((((0x3ff48000 + 0x0)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x0)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 67, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!((((((0x3ff48000 + 0x0)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x0)))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)(((0x3ff48000 + 0x0))))) = (uint32_t)((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 67, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff48000 + 0x0)))); })|(((1UL << (17)))))); }); });
        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC)), 1), "(Cannot use SET_PERI_REG_MASK for DPORT registers use DPORT_SET_PERI_REG_MASK)"); (("(Cannot use SET_PERI_REG_MASK for DPORT registers use DPORT_SET_PERI_REG_MASK)" && (!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 68, __func__, "\"(Cannot use SET_PERI_REG_MASK for DPORT registers use DPORT_SET_PERI_REG_MASK)\" && (!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC))")); } while(0);; ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff48000 + 0x0)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x0)))) <= 0x3ff13FFC)), (!((((((0x3ff48000 + 0x0)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x0)))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!((((((0x3ff48000 + 0x0)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x0)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 68, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!((((((0x3ff48000 + 0x0)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x0)))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)(((0x3ff48000 + 0x0))))) = (uint32_t)((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 68, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff48000 + 0x0)))); })|(((1UL << (14)))))); }); });

        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x30))) >= 0x3ff00000) && (((0x3ff48000 + 0x30))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x30))) >= 0x3ff00000) && (((0x3ff48000 + 0x30))) <= 0x3ff13FFC)), 1), "(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)"); (("(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)" && (!(((((0x3ff48000 + 0x30))) >= 0x3ff00000) && (((0x3ff48000 + 0x30))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 70, __func__, "\"(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)\" && (!(((((0x3ff48000 + 0x30))) >= 0x3ff00000) && (((0x3ff48000 + 0x30))) <= 0x3ff13FFC))")); } while(0);; ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff48000 + 0x30)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x30)))) <= 0x3ff13FFC)), (!((((((0x3ff48000 + 0x30)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x30)))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!((((((0x3ff48000 + 0x30)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x30)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 70, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!((((((0x3ff48000 + 0x30)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x30)))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)(((0x3ff48000 + 0x30))))) = (uint32_t)((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x30))) >= 0x3ff00000) && (((0x3ff48000 + 0x30))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x30))) >= 0x3ff00000) && (((0x3ff48000 + 0x30))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!(((((0x3ff48000 + 0x30))) >= 0x3ff00000) && (((0x3ff48000 + 0x30))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 70, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!(((((0x3ff48000 + 0x30))) >= 0x3ff00000) && (((0x3ff48000 + 0x30))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff48000 + 0x30)))); })&(~(((1UL << (24))))))); }); });
        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x30))) >= 0x3ff00000) && (((0x3ff48000 + 0x30))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x30))) >= 0x3ff00000) && (((0x3ff48000 + 0x30))) <= 0x3ff13FFC)), 1), "(Cannot use SET_PERI_REG_MASK for DPORT registers use DPORT_SET_PERI_REG_MASK)"); (("(Cannot use SET_PERI_REG_MASK for DPORT registers use DPORT_SET_PERI_REG_MASK)" && (!(((((0x3ff48000 + 0x30))) >= 0x3ff00000) && (((0x3ff48000 + 0x30))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 71, __func__, "\"(Cannot use SET_PERI_REG_MASK for DPORT registers use DPORT_SET_PERI_REG_MASK)\" && (!(((((0x3ff48000 + 0x30))) >= 0x3ff00000) && (((0x3ff48000 + 0x30))) <= 0x3ff13FFC))")); } while(0);; ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff48000 + 0x30)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x30)))) <= 0x3ff13FFC)), (!((((((0x3ff48000 + 0x30)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x30)))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!((((((0x3ff48000 + 0x30)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x30)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 71, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!((((((0x3ff48000 + 0x30)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x30)))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)(((0x3ff48000 + 0x30))))) = (uint32_t)((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x30))) >= 0x3ff00000) && (((0x3ff48000 + 0x30))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x30))) >= 0x3ff00000) && (((0x3ff48000 + 0x30))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!(((((0x3ff48000 + 0x30))) >= 0x3ff00000) && (((0x3ff48000 + 0x30))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 71, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!(((((0x3ff48000 + 0x30))) >= 0x3ff00000) && (((0x3ff48000 + 0x30))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff48000 + 0x30)))); })|(((1UL << (23)))))); }); });
        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC)), 1), "(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)"); (("(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)" && (!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 72, __func__, "\"(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)\" && (!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC))")); } while(0);; ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff48000 + 0x0)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x0)))) <= 0x3ff13FFC)), (!((((((0x3ff48000 + 0x0)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x0)))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!((((((0x3ff48000 + 0x0)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x0)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 72, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!((((((0x3ff48000 + 0x0)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x0)))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)(((0x3ff48000 + 0x0))))) = (uint32_t)((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 72, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff48000 + 0x0)))); })&(~(((1UL << (11))))))); }); });
        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC)), 1), "(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)"); (("(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)" && (!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 73, __func__, "\"(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)\" && (!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC))")); } while(0);; ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff48000 + 0x0)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x0)))) <= 0x3ff13FFC)), (!((((((0x3ff48000 + 0x0)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x0)))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!((((((0x3ff48000 + 0x0)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x0)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 73, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!((((((0x3ff48000 + 0x0)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x0)))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)(((0x3ff48000 + 0x0))))) = (uint32_t)((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 73, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!(((((0x3ff48000 + 0x0))) >= 0x3ff00000) && (((0x3ff48000 + 0x0))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff48000 + 0x0)))); })&(~(((1UL << (9))))))); }); });

        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x7c))) >= 0x3ff00000) && (((0x3ff48000 + 0x7c))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x7c))) >= 0x3ff00000) && (((0x3ff48000 + 0x7c))) <= 0x3ff13FFC)), 1), "(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)"); (("(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)" && (!(((((0x3ff48000 + 0x7c))) >= 0x3ff00000) && (((0x3ff48000 + 0x7c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 75, __func__, "\"(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)\" && (!(((((0x3ff48000 + 0x7c))) >= 0x3ff00000) && (((0x3ff48000 + 0x7c))) <= 0x3ff13FFC))")); } while(0);; ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff48000 + 0x7c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x7c)))) <= 0x3ff13FFC)), (!((((((0x3ff48000 + 0x7c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x7c)))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!((((((0x3ff48000 + 0x7c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x7c)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 75, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!((((((0x3ff48000 + 0x7c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x7c)))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)(((0x3ff48000 + 0x7c))))) = (uint32_t)((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x7c))) >= 0x3ff00000) && (((0x3ff48000 + 0x7c))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x7c))) >= 0x3ff00000) && (((0x3ff48000 + 0x7c))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!(((((0x3ff48000 + 0x7c))) >= 0x3ff00000) && (((0x3ff48000 + 0x7c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 75, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!(((((0x3ff48000 + 0x7c))) >= 0x3ff00000) && (((0x3ff48000 + 0x7c))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff48000 + 0x7c)))); })&(~(((1UL << (31))))))); }); });
        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x7c))) >= 0x3ff00000) && (((0x3ff48000 + 0x7c))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x7c))) >= 0x3ff00000) && (((0x3ff48000 + 0x7c))) <= 0x3ff13FFC)), 1), "(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)"); (("(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)" && (!(((((0x3ff48000 + 0x7c))) >= 0x3ff00000) && (((0x3ff48000 + 0x7c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 76, __func__, "\"(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)\" && (!(((((0x3ff48000 + 0x7c))) >= 0x3ff00000) && (((0x3ff48000 + 0x7c))) <= 0x3ff13FFC))")); } while(0);; ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff48000 + 0x7c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x7c)))) <= 0x3ff13FFC)), (!((((((0x3ff48000 + 0x7c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x7c)))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!((((((0x3ff48000 + 0x7c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x7c)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 76, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!((((((0x3ff48000 + 0x7c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x7c)))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)(((0x3ff48000 + 0x7c))))) = (uint32_t)((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x7c))) >= 0x3ff00000) && (((0x3ff48000 + 0x7c))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x7c))) >= 0x3ff00000) && (((0x3ff48000 + 0x7c))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!(((((0x3ff48000 + 0x7c))) >= 0x3ff00000) && (((0x3ff48000 + 0x7c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 76, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!(((((0x3ff48000 + 0x7c))) >= 0x3ff00000) && (((0x3ff48000 + 0x7c))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff48000 + 0x7c)))); })&(~(((1UL << (29))))))); }); });
        if (cfg.rtc_dboost_fpd) {
            ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x7c))) >= 0x3ff00000) && (((0x3ff48000 + 0x7c))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x7c))) >= 0x3ff00000) && (((0x3ff48000 + 0x7c))) <= 0x3ff13FFC)), 1), "(Cannot use SET_PERI_REG_MASK for DPORT registers use DPORT_SET_PERI_REG_MASK)"); (("(Cannot use SET_PERI_REG_MASK for DPORT registers use DPORT_SET_PERI_REG_MASK)" && (!(((((0x3ff48000 + 0x7c))) >= 0x3ff00000) && (((0x3ff48000 + 0x7c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 78, __func__, "\"(Cannot use SET_PERI_REG_MASK for DPORT registers use DPORT_SET_PERI_REG_MASK)\" && (!(((((0x3ff48000 + 0x7c))) >= 0x3ff00000) && (((0x3ff48000 + 0x7c))) <= 0x3ff13FFC))")); } while(0);; ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff48000 + 0x7c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x7c)))) <= 0x3ff13FFC)), (!((((((0x3ff48000 + 0x7c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x7c)))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!((((((0x3ff48000 + 0x7c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x7c)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 78, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!((((((0x3ff48000 + 0x7c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x7c)))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)(((0x3ff48000 + 0x7c))))) = (uint32_t)((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x7c))) >= 0x3ff00000) && (((0x3ff48000 + 0x7c))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x7c))) >= 0x3ff00000) && (((0x3ff48000 + 0x7c))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!(((((0x3ff48000 + 0x7c))) >= 0x3ff00000) && (((0x3ff48000 + 0x7c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 78, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!(((((0x3ff48000 + 0x7c))) >= 0x3ff00000) && (((0x3ff48000 + 0x7c))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff48000 + 0x7c)))); })|(((1UL << (28)))))); }); });
        } else {
            ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x7c))) >= 0x3ff00000) && (((0x3ff48000 + 0x7c))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x7c))) >= 0x3ff00000) && (((0x3ff48000 + 0x7c))) <= 0x3ff13FFC)), 1), "(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)"); (("(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)" && (!(((((0x3ff48000 + 0x7c))) >= 0x3ff00000) && (((0x3ff48000 + 0x7c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 80, __func__, "\"(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)\" && (!(((((0x3ff48000 + 0x7c))) >= 0x3ff00000) && (((0x3ff48000 + 0x7c))) <= 0x3ff13FFC))")); } while(0);; ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff48000 + 0x7c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x7c)))) <= 0x3ff13FFC)), (!((((((0x3ff48000 + 0x7c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x7c)))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!((((((0x3ff48000 + 0x7c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x7c)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 80, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!((((((0x3ff48000 + 0x7c)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x7c)))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)(((0x3ff48000 + 0x7c))))) = (uint32_t)((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x7c))) >= 0x3ff00000) && (((0x3ff48000 + 0x7c))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x7c))) >= 0x3ff00000) && (((0x3ff48000 + 0x7c))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!(((((0x3ff48000 + 0x7c))) >= 0x3ff00000) && (((0x3ff48000 + 0x7c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 80, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!(((((0x3ff48000 + 0x7c))) >= 0x3ff00000) && (((0x3ff48000 + 0x7c))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff48000 + 0x7c)))); })&(~(((1UL << (28))))))); }); });
        }

        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x84))) >= 0x3ff00000) && (((0x3ff48000 + 0x84))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x84))) >= 0x3ff00000) && (((0x3ff48000 + 0x84))) <= 0x3ff13FFC)), 1), "(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)"); (("(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)" && (!(((((0x3ff48000 + 0x84))) >= 0x3ff00000) && (((0x3ff48000 + 0x84))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 83, __func__, "\"(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)\" && (!(((((0x3ff48000 + 0x84))) >= 0x3ff00000) && (((0x3ff48000 + 0x84))) <= 0x3ff13FFC))")); } while(0);; ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff48000 + 0x84)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x84)))) <= 0x3ff13FFC)), (!((((((0x3ff48000 + 0x84)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x84)))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!((((((0x3ff48000 + 0x84)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x84)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 83, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!((((((0x3ff48000 + 0x84)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x84)))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)(((0x3ff48000 + 0x84))))) = (uint32_t)((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x84))) >= 0x3ff00000) && (((0x3ff48000 + 0x84))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x84))) >= 0x3ff00000) && (((0x3ff48000 + 0x84))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!(((((0x3ff48000 + 0x84))) >= 0x3ff00000) && (((0x3ff48000 + 0x84))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 83, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!(((((0x3ff48000 + 0x84))) >= 0x3ff00000) && (((0x3ff48000 + 0x84))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff48000 + 0x84)))); })&(~(((1UL << (4))))))); }); });
        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x84))) >= 0x3ff00000) && (((0x3ff48000 + 0x84))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x84))) >= 0x3ff00000) && (((0x3ff48000 + 0x84))) <= 0x3ff13FFC)), 1), "(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)"); (("(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)" && (!(((((0x3ff48000 + 0x84))) >= 0x3ff00000) && (((0x3ff48000 + 0x84))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 84, __func__, "\"(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)\" && (!(((((0x3ff48000 + 0x84))) >= 0x3ff00000) && (((0x3ff48000 + 0x84))) <= 0x3ff13FFC))")); } while(0);; ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff48000 + 0x84)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x84)))) <= 0x3ff13FFC)), (!((((((0x3ff48000 + 0x84)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x84)))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!((((((0x3ff48000 + 0x84)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x84)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 84, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!((((((0x3ff48000 + 0x84)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x84)))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)(((0x3ff48000 + 0x84))))) = (uint32_t)((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x84))) >= 0x3ff00000) && (((0x3ff48000 + 0x84))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x84))) >= 0x3ff00000) && (((0x3ff48000 + 0x84))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!(((((0x3ff48000 + 0x84))) >= 0x3ff00000) && (((0x3ff48000 + 0x84))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 84, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!(((((0x3ff48000 + 0x84))) >= 0x3ff00000) && (((0x3ff48000 + 0x84))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff48000 + 0x84)))); })&(~(((1UL << (20))))))); }); });
        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x84))) >= 0x3ff00000) && (((0x3ff48000 + 0x84))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x84))) >= 0x3ff00000) && (((0x3ff48000 + 0x84))) <= 0x3ff13FFC)), 1), "(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)"); (("(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)" && (!(((((0x3ff48000 + 0x84))) >= 0x3ff00000) && (((0x3ff48000 + 0x84))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 85, __func__, "\"(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)\" && (!(((((0x3ff48000 + 0x84))) >= 0x3ff00000) && (((0x3ff48000 + 0x84))) <= 0x3ff13FFC))")); } while(0);; ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff48000 + 0x84)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x84)))) <= 0x3ff13FFC)), (!((((((0x3ff48000 + 0x84)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x84)))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!((((((0x3ff48000 + 0x84)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x84)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 85, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!((((((0x3ff48000 + 0x84)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x84)))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)(((0x3ff48000 + 0x84))))) = (uint32_t)((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x84))) >= 0x3ff00000) && (((0x3ff48000 + 0x84))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x84))) >= 0x3ff00000) && (((0x3ff48000 + 0x84))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!(((((0x3ff48000 + 0x84))) >= 0x3ff00000) && (((0x3ff48000 + 0x84))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 85, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!(((((0x3ff48000 + 0x84))) >= 0x3ff00000) && (((0x3ff48000 + 0x84))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff48000 + 0x84)))); })&(~(((1UL << (18))))))); }); });
        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x84))) >= 0x3ff00000) && (((0x3ff48000 + 0x84))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x84))) >= 0x3ff00000) && (((0x3ff48000 + 0x84))) <= 0x3ff13FFC)), 1), "(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)"); (("(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)" && (!(((((0x3ff48000 + 0x84))) >= 0x3ff00000) && (((0x3ff48000 + 0x84))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 86, __func__, "\"(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)\" && (!(((((0x3ff48000 + 0x84))) >= 0x3ff00000) && (((0x3ff48000 + 0x84))) <= 0x3ff13FFC))")); } while(0);; ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff48000 + 0x84)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x84)))) <= 0x3ff13FFC)), (!((((((0x3ff48000 + 0x84)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x84)))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!((((((0x3ff48000 + 0x84)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x84)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 86, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!((((((0x3ff48000 + 0x84)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x84)))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)(((0x3ff48000 + 0x84))))) = (uint32_t)((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x84))) >= 0x3ff00000) && (((0x3ff48000 + 0x84))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x84))) >= 0x3ff00000) && (((0x3ff48000 + 0x84))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!(((((0x3ff48000 + 0x84))) >= 0x3ff00000) && (((0x3ff48000 + 0x84))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 86, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!(((((0x3ff48000 + 0x84))) >= 0x3ff00000) && (((0x3ff48000 + 0x84))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff48000 + 0x84)))); })&(~((((1UL << (16))) | ((1UL << (14))) | ((1UL << (12))) | ((1UL << (10))) | ((1UL << (8))) | ((1UL << (6)))))))); }); });
        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x80))) >= 0x3ff00000) && (((0x3ff48000 + 0x80))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x80))) >= 0x3ff00000) && (((0x3ff48000 + 0x80))) <= 0x3ff13FFC)), 1), "(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)"); (("(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)" && (!(((((0x3ff48000 + 0x80))) >= 0x3ff00000) && (((0x3ff48000 + 0x80))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 87, __func__, "\"(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)\" && (!(((((0x3ff48000 + 0x80))) >= 0x3ff00000) && (((0x3ff48000 + 0x80))) <= 0x3ff13FFC))")); } while(0);; ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff48000 + 0x80)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x80)))) <= 0x3ff13FFC)), (!((((((0x3ff48000 + 0x80)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x80)))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!((((((0x3ff48000 + 0x80)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x80)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 87, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!((((((0x3ff48000 + 0x80)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x80)))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)(((0x3ff48000 + 0x80))))) = (uint32_t)((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x80))) >= 0x3ff00000) && (((0x3ff48000 + 0x80))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x80))) >= 0x3ff00000) && (((0x3ff48000 + 0x80))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!(((((0x3ff48000 + 0x80))) >= 0x3ff00000) && (((0x3ff48000 + 0x80))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 87, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!(((((0x3ff48000 + 0x80))) >= 0x3ff00000) && (((0x3ff48000 + 0x80))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff48000 + 0x80)))); })&(~((((1UL << (16))) | ((1UL << (13)))))))); }); });
        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x80))) >= 0x3ff00000) && (((0x3ff48000 + 0x80))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x80))) >= 0x3ff00000) && (((0x3ff48000 + 0x80))) <= 0x3ff13FFC)), 1), "(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)"); (("(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)" && (!(((((0x3ff48000 + 0x80))) >= 0x3ff00000) && (((0x3ff48000 + 0x80))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 88, __func__, "\"(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)\" && (!(((((0x3ff48000 + 0x80))) >= 0x3ff00000) && (((0x3ff48000 + 0x80))) <= 0x3ff13FFC))")); } while(0);; ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff48000 + 0x80)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x80)))) <= 0x3ff13FFC)), (!((((((0x3ff48000 + 0x80)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x80)))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!((((((0x3ff48000 + 0x80)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x80)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 88, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!((((((0x3ff48000 + 0x80)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x80)))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)(((0x3ff48000 + 0x80))))) = (uint32_t)((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x80))) >= 0x3ff00000) && (((0x3ff48000 + 0x80))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x80))) >= 0x3ff00000) && (((0x3ff48000 + 0x80))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!(((((0x3ff48000 + 0x80))) >= 0x3ff00000) && (((0x3ff48000 + 0x80))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 88, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!(((((0x3ff48000 + 0x80))) >= 0x3ff00000) && (((0x3ff48000 + 0x80))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff48000 + 0x80)))); })&(~(((1UL << (19))))))); }); });
        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x88))) >= 0x3ff00000) && (((0x3ff48000 + 0x88))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x88))) >= 0x3ff00000) && (((0x3ff48000 + 0x88))) <= 0x3ff13FFC)), 1), "(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)"); (("(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)" && (!(((((0x3ff48000 + 0x88))) >= 0x3ff00000) && (((0x3ff48000 + 0x88))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 89, __func__, "\"(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)\" && (!(((((0x3ff48000 + 0x88))) >= 0x3ff00000) && (((0x3ff48000 + 0x88))) <= 0x3ff13FFC))")); } while(0);; ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff48000 + 0x88)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x88)))) <= 0x3ff13FFC)), (!((((((0x3ff48000 + 0x88)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x88)))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!((((((0x3ff48000 + 0x88)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x88)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 89, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!((((((0x3ff48000 + 0x88)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x88)))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)(((0x3ff48000 + 0x88))))) = (uint32_t)((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x88))) >= 0x3ff00000) && (((0x3ff48000 + 0x88))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x88))) >= 0x3ff00000) && (((0x3ff48000 + 0x88))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!(((((0x3ff48000 + 0x88))) >= 0x3ff00000) && (((0x3ff48000 + 0x88))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 89, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!(((((0x3ff48000 + 0x88))) >= 0x3ff00000) && (((0x3ff48000 + 0x88))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff48000 + 0x88)))); })&(~(((1UL << (31))))))); }); });
        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x88))) >= 0x3ff00000) && (((0x3ff48000 + 0x88))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x88))) >= 0x3ff00000) && (((0x3ff48000 + 0x88))) <= 0x3ff13FFC)), 1), "(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)"); (("(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)" && (!(((((0x3ff48000 + 0x88))) >= 0x3ff00000) && (((0x3ff48000 + 0x88))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 90, __func__, "\"(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)\" && (!(((((0x3ff48000 + 0x88))) >= 0x3ff00000) && (((0x3ff48000 + 0x88))) <= 0x3ff13FFC))")); } while(0);; ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff48000 + 0x88)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x88)))) <= 0x3ff13FFC)), (!((((((0x3ff48000 + 0x88)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x88)))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!((((((0x3ff48000 + 0x88)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x88)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 90, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!((((((0x3ff48000 + 0x88)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x88)))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)(((0x3ff48000 + 0x88))))) = (uint32_t)((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x88))) >= 0x3ff00000) && (((0x3ff48000 + 0x88))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x88))) >= 0x3ff00000) && (((0x3ff48000 + 0x88))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!(((((0x3ff48000 + 0x88))) >= 0x3ff00000) && (((0x3ff48000 + 0x88))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 90, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!(((((0x3ff48000 + 0x88))) >= 0x3ff00000) && (((0x3ff48000 + 0x88))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff48000 + 0x88)))); })&(~(((1UL << (29))))))); }); });
        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x88))) >= 0x3ff00000) && (((0x3ff48000 + 0x88))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x88))) >= 0x3ff00000) && (((0x3ff48000 + 0x88))) <= 0x3ff13FFC)), 1), "(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)"); (("(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)" && (!(((((0x3ff48000 + 0x88))) >= 0x3ff00000) && (((0x3ff48000 + 0x88))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 91, __func__, "\"(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)\" && (!(((((0x3ff48000 + 0x88))) >= 0x3ff00000) && (((0x3ff48000 + 0x88))) <= 0x3ff13FFC))")); } while(0);; ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff48000 + 0x88)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x88)))) <= 0x3ff13FFC)), (!((((((0x3ff48000 + 0x88)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x88)))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!((((((0x3ff48000 + 0x88)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x88)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 91, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!((((((0x3ff48000 + 0x88)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x88)))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)(((0x3ff48000 + 0x88))))) = (uint32_t)((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x88))) >= 0x3ff00000) && (((0x3ff48000 + 0x88))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x88))) >= 0x3ff00000) && (((0x3ff48000 + 0x88))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!(((((0x3ff48000 + 0x88))) >= 0x3ff00000) && (((0x3ff48000 + 0x88))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 91, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!(((((0x3ff48000 + 0x88))) >= 0x3ff00000) && (((0x3ff48000 + 0x88))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff48000 + 0x88)))); })&(~((((1UL << (27))) | ((1UL << (25))) | ((1UL << (23))) | ((1UL << (21))) | ((1UL << (19))) | ((1UL << (17)))))))); }); });
        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x80))) >= 0x3ff00000) && (((0x3ff48000 + 0x80))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x80))) >= 0x3ff00000) && (((0x3ff48000 + 0x80))) <= 0x3ff13FFC)), 1), "(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)"); (("(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)" && (!(((((0x3ff48000 + 0x80))) >= 0x3ff00000) && (((0x3ff48000 + 0x80))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 92, __func__, "\"(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)\" && (!(((((0x3ff48000 + 0x80))) >= 0x3ff00000) && (((0x3ff48000 + 0x80))) <= 0x3ff13FFC))")); } while(0);; ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff48000 + 0x80)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x80)))) <= 0x3ff13FFC)), (!((((((0x3ff48000 + 0x80)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x80)))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!((((((0x3ff48000 + 0x80)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x80)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 92, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!((((((0x3ff48000 + 0x80)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x80)))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)(((0x3ff48000 + 0x80))))) = (uint32_t)((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x80))) >= 0x3ff00000) && (((0x3ff48000 + 0x80))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x80))) >= 0x3ff00000) && (((0x3ff48000 + 0x80))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!(((((0x3ff48000 + 0x80))) >= 0x3ff00000) && (((0x3ff48000 + 0x80))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 92, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!(((((0x3ff48000 + 0x80))) >= 0x3ff00000) && (((0x3ff48000 + 0x80))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff48000 + 0x80)))); })&(~((((1UL << (2))) | ((1UL << (0)))))))); }); });
        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x80))) >= 0x3ff00000) && (((0x3ff48000 + 0x80))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x80))) >= 0x3ff00000) && (((0x3ff48000 + 0x80))) <= 0x3ff13FFC)), 1), "(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)"); (("(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)" && (!(((((0x3ff48000 + 0x80))) >= 0x3ff00000) && (((0x3ff48000 + 0x80))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 93, __func__, "\"(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)\" && (!(((((0x3ff48000 + 0x80))) >= 0x3ff00000) && (((0x3ff48000 + 0x80))) <= 0x3ff13FFC))")); } while(0);; ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff48000 + 0x80)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x80)))) <= 0x3ff13FFC)), (!((((((0x3ff48000 + 0x80)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x80)))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!((((((0x3ff48000 + 0x80)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x80)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 93, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!((((((0x3ff48000 + 0x80)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x80)))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)(((0x3ff48000 + 0x80))))) = (uint32_t)((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x80))) >= 0x3ff00000) && (((0x3ff48000 + 0x80))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x80))) >= 0x3ff00000) && (((0x3ff48000 + 0x80))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!(((((0x3ff48000 + 0x80))) >= 0x3ff00000) && (((0x3ff48000 + 0x80))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 93, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!(((((0x3ff48000 + 0x80))) >= 0x3ff00000) && (((0x3ff48000 + 0x80))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff48000 + 0x80)))); })&(~(((1UL << (5))))))); }); });

        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x88))) >= 0x3ff00000) && (((0x3ff48000 + 0x88))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x88))) >= 0x3ff00000) && (((0x3ff48000 + 0x88))) <= 0x3ff13FFC)), 1), "(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)"); (("(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)" && (!(((((0x3ff48000 + 0x88))) >= 0x3ff00000) && (((0x3ff48000 + 0x88))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 95, __func__, "\"(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)\" && (!(((((0x3ff48000 + 0x88))) >= 0x3ff00000) && (((0x3ff48000 + 0x88))) <= 0x3ff13FFC))")); } while(0);; ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff48000 + 0x88)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x88)))) <= 0x3ff13FFC)), (!((((((0x3ff48000 + 0x88)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x88)))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!((((((0x3ff48000 + 0x88)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x88)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 95, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!((((((0x3ff48000 + 0x88)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x88)))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)(((0x3ff48000 + 0x88))))) = (uint32_t)((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x88))) >= 0x3ff00000) && (((0x3ff48000 + 0x88))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x88))) >= 0x3ff00000) && (((0x3ff48000 + 0x88))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!(((((0x3ff48000 + 0x88))) >= 0x3ff00000) && (((0x3ff48000 + 0x88))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 95, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!(((((0x3ff48000 + 0x88))) >= 0x3ff00000) && (((0x3ff48000 + 0x88))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff48000 + 0x88)))); })&(~(((1UL << (14))))))); }); });
        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x88))) >= 0x3ff00000) && (((0x3ff48000 + 0x88))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x88))) >= 0x3ff00000) && (((0x3ff48000 + 0x88))) <= 0x3ff13FFC)), 1), "(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)"); (("(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)" && (!(((((0x3ff48000 + 0x88))) >= 0x3ff00000) && (((0x3ff48000 + 0x88))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 96, __func__, "\"(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)\" && (!(((((0x3ff48000 + 0x88))) >= 0x3ff00000) && (((0x3ff48000 + 0x88))) <= 0x3ff13FFC))")); } while(0);; ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff48000 + 0x88)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x88)))) <= 0x3ff13FFC)), (!((((((0x3ff48000 + 0x88)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x88)))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!((((((0x3ff48000 + 0x88)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x88)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 96, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!((((((0x3ff48000 + 0x88)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x88)))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)(((0x3ff48000 + 0x88))))) = (uint32_t)((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x88))) >= 0x3ff00000) && (((0x3ff48000 + 0x88))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x88))) >= 0x3ff00000) && (((0x3ff48000 + 0x88))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!(((((0x3ff48000 + 0x88))) >= 0x3ff00000) && (((0x3ff48000 + 0x88))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 96, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!(((((0x3ff48000 + 0x88))) >= 0x3ff00000) && (((0x3ff48000 + 0x88))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff48000 + 0x88)))); })&(~(((1UL << (12))))))); }); });
    }
}

rtc_vddsdio_config_t rtc_vddsdio_get_config()
{
    rtc_vddsdio_config_t result;
    uint32_t sdio_conf_reg = ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x74))) >= 0x3ff00000) && (((0x3ff48000 + 0x74))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x74))) >= 0x3ff00000) && (((0x3ff48000 + 0x74))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!(((((0x3ff48000 + 0x74))) >= 0x3ff00000) && (((0x3ff48000 + 0x74))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 103, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!(((((0x3ff48000 + 0x74))) >= 0x3ff00000) && (((0x3ff48000 + 0x74))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((0x3ff48000 + 0x74))); });
    result.drefh = (sdio_conf_reg & ((0x3)<<(29))) >> 29;
    result.drefm = (sdio_conf_reg & ((0x3)<<(27))) >> 27;
    result.drefl = (sdio_conf_reg & ((0x3)<<(25))) >> 25;
    if (sdio_conf_reg & ((1UL << (22)))) {

        result.force = 1;
        result.enable = (sdio_conf_reg & ((1UL << (31)))) >> 31;
        result.tieh = (sdio_conf_reg & ((1UL << (23)))) >> 23;
        return result;
    }
    uint32_t efuse_reg = ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff5A000 + 0x010))) >= 0x3ff00000) && (((0x3ff5A000 + 0x010))) <= 0x3ff13FFC)), (!(((((0x3ff5A000 + 0x010))) >= 0x3ff00000) && (((0x3ff5A000 + 0x010))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!(((((0x3ff5A000 + 0x010))) >= 0x3ff00000) && (((0x3ff5A000 + 0x010))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 114, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!(((((0x3ff5A000 + 0x010))) >= 0x3ff00000) && (((0x3ff5A000 + 0x010))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((0x3ff5A000 + 0x010))); });
    if (efuse_reg & ((1UL << (16)))) {

        result.force = 0;
        result.enable = (efuse_reg & ((1UL << (14)))) >> 14;
        result.tieh = (efuse_reg & ((1UL << (15)))) >> 15;


        if(({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff5A000 + 0x00c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x00c))) <= 0x3ff13FFC)), (!(((((0x3ff5A000 + 0x00c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x00c))) <= 0x3ff13FFC)), 1), "(Cannot use REG_GET_FIELD for DPORT registers use DPORT_REG_GET_FIELD)"); (("(Cannot use REG_GET_FIELD for DPORT registers use DPORT_REG_GET_FIELD)" && (!(((((0x3ff5A000 + 0x00c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x00c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 122, __func__, "\"(Cannot use REG_GET_FIELD for DPORT registers use DPORT_REG_GET_FIELD)\" && (!(((((0x3ff5A000 + 0x00c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x00c))) <= 0x3ff13FFC))")); } while(0);; ((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff5A000 + 0x00c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x00c))) <= 0x3ff13FFC)), (!(((((0x3ff5A000 + 0x00c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x00c))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!(((((0x3ff5A000 + 0x00c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x00c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 122, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!(((((0x3ff5A000 + 0x00c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x00c))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((0x3ff5A000 + 0x00c))); }) >> (14)) & (0x1)); }) == 0){


            result.drefh = (efuse_reg & ((0x3)<<(8))) >> 8;
            result.drefm = (efuse_reg & ((0x3)<<(10))) >> 10;
            result.drefl = (efuse_reg & ((0x3)<<(12))) >> 12;
        }
        return result;
    }


    uint32_t strap_reg = ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff44000 + 0x0038))) >= 0x3ff00000) && (((0x3ff44000 + 0x0038))) <= 0x3ff13FFC)), (!(((((0x3ff44000 + 0x0038))) >= 0x3ff00000) && (((0x3ff44000 + 0x0038))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!(((((0x3ff44000 + 0x0038))) >= 0x3ff00000) && (((0x3ff44000 + 0x0038))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 133, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!(((((0x3ff44000 + 0x0038))) >= 0x3ff00000) && (((0x3ff44000 + 0x0038))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((0x3ff44000 + 0x0038))); });
    result.force = 0;
    result.tieh = (strap_reg & (1UL << (5))) ? 0 : 1;
    result.enable = 1;
    return result;
}

void rtc_vddsdio_set_config(rtc_vddsdio_config_t config)
{
    uint32_t val = 0;
    val |= (config.force << 22);
    val |= (config.enable << 31);
    val |= (config.drefh << 29);
    val |= (config.drefm << 27);
    val |= (config.drefl << 25);
    val |= (config.tieh << 23);
    val |= ((1UL << (21)));
    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x74))) >= 0x3ff00000) && (((0x3ff48000 + 0x74))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x74))) >= 0x3ff00000) && (((0x3ff48000 + 0x74))) <= 0x3ff13FFC)), 1), "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)"); (("(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)" && (!(((((0x3ff48000 + 0x74))) >= 0x3ff00000) && (((0x3ff48000 + 0x74))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c", 150, __func__, "\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!(((((0x3ff48000 + 0x74))) >= 0x3ff00000) && (((0x3ff48000 + 0x74))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((0x3ff48000 + 0x74))) = (val); });
}
