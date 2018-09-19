# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c"
# 1 "D:\\ESP32\\esp-idf-v3.1-rc1\\ESP32_PIC_A2DP\\build\\soc//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c"
# 15 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c"
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
# 16 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c" 2
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
# 17 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c" 2
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
# 18 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc_cntl_reg.h" 1
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc_cntl_reg.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/soc.h" 1
# 22 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc_cntl_reg.h" 2
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/timer_group_reg.h" 1
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c" 2
# 41 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c"
static uint32_t rtc_clk_cal_internal(rtc_cal_sel_t cal_clk, uint32_t slowclk_cycles)
{

    int dig_32k_xtal_state = ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC)), 1), "(Cannot use REG_GET_FIELD for DPORT registers use DPORT_REG_GET_FIELD)"); (("(Cannot use REG_GET_FIELD for DPORT registers use DPORT_REG_GET_FIELD)" && (!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 44, __func__, "\"(Cannot use REG_GET_FIELD for DPORT registers use DPORT_REG_GET_FIELD)\" && (!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC))")); } while(0);; ((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 44, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((0x3ff48000 + 0x70))); }) >> (8)) & (0x1)); });
    if (cal_clk == RTC_CAL_32K_XTAL && !dig_32k_xtal_state) {
        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)"); (("(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)" && (!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 46, __func__, "\"(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)\" && (!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC))")); } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff48000 + 0x70)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x70)))) <= 0x3ff13FFC)), (!((((((0x3ff48000 + 0x70)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x70)))) <= 0x3ff13FFC)), 1), "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)"); (("(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)" && (!((((((0x3ff48000 + 0x70)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x70)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 46, __func__, "\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!((((((0x3ff48000 + 0x70)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x70)))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)(((0x3ff48000 + 0x70)))) = (((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 46, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((0x3ff48000 + 0x70))); }) & ~((0x1) << (8)))|(((1) & (0x1))<<(8)))); })); });
    }

    if (cal_clk == RTC_CAL_8MD256) {
        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC)), 1), "(Cannot use SET_PERI_REG_MASK for DPORT registers use DPORT_SET_PERI_REG_MASK)"); (("(Cannot use SET_PERI_REG_MASK for DPORT registers use DPORT_SET_PERI_REG_MASK)" && (!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 50, __func__, "\"(Cannot use SET_PERI_REG_MASK for DPORT registers use DPORT_SET_PERI_REG_MASK)\" && (!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC))")); } while(0);; ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff48000 + 0x70)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x70)))) <= 0x3ff13FFC)), (!((((((0x3ff48000 + 0x70)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x70)))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!((((((0x3ff48000 + 0x70)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x70)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 50, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!((((((0x3ff48000 + 0x70)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x70)))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)(((0x3ff48000 + 0x70))))) = (uint32_t)((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 50, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff48000 + 0x70)))); })|(((1UL << (9)))))); }); });
    }

    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC)), (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)"); (("(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)" && (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 53, __func__, "\"(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)\" && (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC))")); } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((((0x3ff5F000 + 0*0x1000) + 0x0068)))) >= 0x3ff00000) && (((((0x3ff5F000 + 0*0x1000) + 0x0068)))) <= 0x3ff13FFC)), (!(((((((0x3ff5F000 + 0*0x1000) + 0x0068)))) >= 0x3ff00000) && (((((0x3ff5F000 + 0*0x1000) + 0x0068)))) <= 0x3ff13FFC)), 1), "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)"); (("(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)" && (!(((((((0x3ff5F000 + 0*0x1000) + 0x0068)))) >= 0x3ff00000) && (((((0x3ff5F000 + 0*0x1000) + 0x0068)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 53, __func__, "\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!(((((((0x3ff5F000 + 0*0x1000) + 0x0068)))) >= 0x3ff00000) && (((((0x3ff5F000 + 0*0x1000) + 0x0068)))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((((0x3ff5F000 + 0*0x1000) + 0x0068)))) = (((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC)), (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 53, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)(((0x3ff5F000 + 0*0x1000) + 0x0068))); }) & ~((0x3) << (13)))|(((cal_clk) & (0x3))<<(13)))); })); });
    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC)), (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC)), 1), "(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)"); (("(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)" && (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 54, __func__, "\"(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)\" && (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC))")); } while(0);; ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((((0x3ff5F000 + 0*0x1000) + 0x0068)))) >= 0x3ff00000) && (((((0x3ff5F000 + 0*0x1000) + 0x0068)))) <= 0x3ff13FFC)), (!(((((((0x3ff5F000 + 0*0x1000) + 0x0068)))) >= 0x3ff00000) && (((((0x3ff5F000 + 0*0x1000) + 0x0068)))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!(((((((0x3ff5F000 + 0*0x1000) + 0x0068)))) >= 0x3ff00000) && (((((0x3ff5F000 + 0*0x1000) + 0x0068)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 54, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!(((((((0x3ff5F000 + 0*0x1000) + 0x0068)))) >= 0x3ff00000) && (((((0x3ff5F000 + 0*0x1000) + 0x0068)))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((((0x3ff5F000 + 0*0x1000) + 0x0068))))) = (uint32_t)((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC)), (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 54, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)(((0x3ff5F000 + 0*0x1000) + 0x0068)))); })&(~(((1UL << (12))))))); }); });
    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC)), (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)"); (("(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)" && (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 55, __func__, "\"(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)\" && (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC))")); } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((((0x3ff5F000 + 0*0x1000) + 0x0068)))) >= 0x3ff00000) && (((((0x3ff5F000 + 0*0x1000) + 0x0068)))) <= 0x3ff13FFC)), (!(((((((0x3ff5F000 + 0*0x1000) + 0x0068)))) >= 0x3ff00000) && (((((0x3ff5F000 + 0*0x1000) + 0x0068)))) <= 0x3ff13FFC)), 1), "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)"); (("(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)" && (!(((((((0x3ff5F000 + 0*0x1000) + 0x0068)))) >= 0x3ff00000) && (((((0x3ff5F000 + 0*0x1000) + 0x0068)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 55, __func__, "\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!(((((((0x3ff5F000 + 0*0x1000) + 0x0068)))) >= 0x3ff00000) && (((((0x3ff5F000 + 0*0x1000) + 0x0068)))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((((0x3ff5F000 + 0*0x1000) + 0x0068)))) = (((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC)), (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 55, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)(((0x3ff5F000 + 0*0x1000) + 0x0068))); }) & ~((0x7FFF) << (16)))|(((slowclk_cycles) & (0x7FFF))<<(16)))); })); });

    uint32_t expected_freq;
    rtc_slow_freq_t slow_freq = ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC)), 1), "(Cannot use REG_GET_FIELD for DPORT registers use DPORT_REG_GET_FIELD)"); (("(Cannot use REG_GET_FIELD for DPORT registers use DPORT_REG_GET_FIELD)" && (!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 58, __func__, "\"(Cannot use REG_GET_FIELD for DPORT registers use DPORT_REG_GET_FIELD)\" && (!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC))")); } while(0);; ((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 58, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((0x3ff48000 + 0x70))); }) >> (30)) & (0x3)); });
    if (cal_clk == RTC_CAL_32K_XTAL ||
        (cal_clk == RTC_CAL_RTC_MUX && slow_freq == RTC_SLOW_FREQ_32K_XTAL)) {
        expected_freq = 32768;
    } else if (cal_clk == RTC_CAL_8MD256 ||
            (cal_clk == RTC_CAL_RTC_MUX && slow_freq == RTC_SLOW_FREQ_8MD256)) {
        expected_freq = 8500000 / 256;
    } else {
        expected_freq = 150000;
    }
    uint32_t us_time_estimate = (uint32_t) (((uint64_t) slowclk_cycles) * (1000000) / expected_freq);

    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC)), (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC)), 1), "(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)"); (("(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)" && (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 70, __func__, "\"(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)\" && (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC))")); } while(0);; ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((((0x3ff5F000 + 0*0x1000) + 0x0068)))) >= 0x3ff00000) && (((((0x3ff5F000 + 0*0x1000) + 0x0068)))) <= 0x3ff13FFC)), (!(((((((0x3ff5F000 + 0*0x1000) + 0x0068)))) >= 0x3ff00000) && (((((0x3ff5F000 + 0*0x1000) + 0x0068)))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!(((((((0x3ff5F000 + 0*0x1000) + 0x0068)))) >= 0x3ff00000) && (((((0x3ff5F000 + 0*0x1000) + 0x0068)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 70, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!(((((((0x3ff5F000 + 0*0x1000) + 0x0068)))) >= 0x3ff00000) && (((((0x3ff5F000 + 0*0x1000) + 0x0068)))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((((0x3ff5F000 + 0*0x1000) + 0x0068))))) = (uint32_t)((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC)), (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 70, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)(((0x3ff5F000 + 0*0x1000) + 0x0068)))); })&(~(((1UL << (31))))))); }); });
    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC)), (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC)), 1), "(Cannot use SET_PERI_REG_MASK for DPORT registers use DPORT_SET_PERI_REG_MASK)"); (("(Cannot use SET_PERI_REG_MASK for DPORT registers use DPORT_SET_PERI_REG_MASK)" && (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 71, __func__, "\"(Cannot use SET_PERI_REG_MASK for DPORT registers use DPORT_SET_PERI_REG_MASK)\" && (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC))")); } while(0);; ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((((0x3ff5F000 + 0*0x1000) + 0x0068)))) >= 0x3ff00000) && (((((0x3ff5F000 + 0*0x1000) + 0x0068)))) <= 0x3ff13FFC)), (!(((((((0x3ff5F000 + 0*0x1000) + 0x0068)))) >= 0x3ff00000) && (((((0x3ff5F000 + 0*0x1000) + 0x0068)))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!(((((((0x3ff5F000 + 0*0x1000) + 0x0068)))) >= 0x3ff00000) && (((((0x3ff5F000 + 0*0x1000) + 0x0068)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 71, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!(((((((0x3ff5F000 + 0*0x1000) + 0x0068)))) >= 0x3ff00000) && (((((0x3ff5F000 + 0*0x1000) + 0x0068)))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((((0x3ff5F000 + 0*0x1000) + 0x0068))))) = (uint32_t)((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC)), (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 71, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)(((0x3ff5F000 + 0*0x1000) + 0x0068)))); })|(((1UL << (31)))))); }); });




    ets_delay_us(us_time_estimate);

    int timeout_us = us_time_estimate;
    while (!({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC)), (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC)), 1), "(Cannot use GET_PERI_REG_MASK for DPORT registers use DPORT_GET_PERI_REG_MASK)"); (("(Cannot use GET_PERI_REG_MASK for DPORT registers use DPORT_GET_PERI_REG_MASK)" && (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 79, __func__, "\"(Cannot use GET_PERI_REG_MASK for DPORT registers use DPORT_GET_PERI_REG_MASK)\" && (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC))")); } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC)), (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 79, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)(((0x3ff5F000 + 0*0x1000) + 0x0068)))); }) & (((1UL << (15))))); }) &&
            timeout_us > 0) {
        timeout_us--;
        ets_delay_us(1);
    }

    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)"); (("(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)" && (!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 85, __func__, "\"(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)\" && (!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC))")); } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff48000 + 0x70)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x70)))) <= 0x3ff13FFC)), (!((((((0x3ff48000 + 0x70)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x70)))) <= 0x3ff13FFC)), 1), "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)"); (("(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)" && (!((((((0x3ff48000 + 0x70)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x70)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 85, __func__, "\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!((((((0x3ff48000 + 0x70)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x70)))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)(((0x3ff48000 + 0x70)))) = (((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 85, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((0x3ff48000 + 0x70))); }) & ~((0x1) << (8)))|(((dig_32k_xtal_state) & (0x1))<<(8)))); })); });

    if (cal_clk == RTC_CAL_8MD256) {
        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC)), 1), "(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)"); (("(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)" && (!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 88, __func__, "\"(Cannot use CLEAR_PERI_REG_MASK for DPORT registers use DPORT_CLEAR_PERI_REG_MASK)\" && (!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC))")); } while(0);; ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff48000 + 0x70)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x70)))) <= 0x3ff13FFC)), (!((((((0x3ff48000 + 0x70)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x70)))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!((((((0x3ff48000 + 0x70)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x70)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 88, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!((((((0x3ff48000 + 0x70)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x70)))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)(((0x3ff48000 + 0x70))))) = (uint32_t)((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 88, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!(((((0x3ff48000 + 0x70))) >= 0x3ff00000) && (((0x3ff48000 + 0x70))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff48000 + 0x70)))); })&(~(((1UL << (9))))))); }); });
    }
    if (timeout_us == 0) {

        return 0;
    }

    return ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff5F000 + 0*0x1000) + 0x006c))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x006c))) <= 0x3ff13FFC)), (!((((((0x3ff5F000 + 0*0x1000) + 0x006c))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x006c))) <= 0x3ff13FFC)), 1), "(Cannot use REG_GET_FIELD for DPORT registers use DPORT_REG_GET_FIELD)"); (("(Cannot use REG_GET_FIELD for DPORT registers use DPORT_REG_GET_FIELD)" && (!((((((0x3ff5F000 + 0*0x1000) + 0x006c))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x006c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 95, __func__, "\"(Cannot use REG_GET_FIELD for DPORT registers use DPORT_REG_GET_FIELD)\" && (!((((((0x3ff5F000 + 0*0x1000) + 0x006c))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x006c))) <= 0x3ff13FFC))")); } while(0);; ((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff5F000 + 0*0x1000) + 0x006c))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x006c))) <= 0x3ff13FFC)), (!((((((0x3ff5F000 + 0*0x1000) + 0x006c))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x006c))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!((((((0x3ff5F000 + 0*0x1000) + 0x006c))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x006c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 95, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!((((((0x3ff5F000 + 0*0x1000) + 0x006c))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x006c))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)(((0x3ff5F000 + 0*0x1000) + 0x006c))); }) >> (7)) & (0x1FFFFFF)); });
}

uint32_t rtc_clk_cal_ratio(rtc_cal_sel_t cal_clk, uint32_t slowclk_cycles)
{
    uint64_t xtal_cycles = rtc_clk_cal_internal(cal_clk, slowclk_cycles);
    uint64_t ratio_64 = ((xtal_cycles << 19)) / slowclk_cycles;
    uint32_t ratio = (uint32_t)(ratio_64 & 0xffffffffUL);
    return ratio;
}

uint32_t rtc_clk_cal(rtc_cal_sel_t cal_clk, uint32_t slowclk_cycles)
{
    rtc_xtal_freq_t xtal_freq = rtc_clk_xtal_freq_get();
    uint64_t xtal_cycles = rtc_clk_cal_internal(cal_clk, slowclk_cycles);
    uint64_t divider = ((uint64_t)xtal_freq) * slowclk_cycles;
    uint64_t period_64 = ((xtal_cycles << 19) + divider / 2 - 1) / divider;
    uint32_t period = (uint32_t)(period_64 & 0xffffffffUL);
    return period;
}

uint64_t rtc_time_us_to_slowclk(uint64_t time_in_us, uint32_t period)
{



    return (time_in_us << 19) / period;
}

uint64_t rtc_time_slowclk_to_us(uint64_t rtc_cycles, uint32_t period)
{
    return (rtc_cycles * period) >> 19;
}

uint64_t rtc_time_get()
{
    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0xc))) >= 0x3ff00000) && (((0x3ff48000 + 0xc))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0xc))) >= 0x3ff00000) && (((0x3ff48000 + 0xc))) <= 0x3ff13FFC)), 1), "(Cannot use SET_PERI_REG_MASK for DPORT registers use DPORT_SET_PERI_REG_MASK)"); (("(Cannot use SET_PERI_REG_MASK for DPORT registers use DPORT_SET_PERI_REG_MASK)" && (!(((((0x3ff48000 + 0xc))) >= 0x3ff00000) && (((0x3ff48000 + 0xc))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 131, __func__, "\"(Cannot use SET_PERI_REG_MASK for DPORT registers use DPORT_SET_PERI_REG_MASK)\" && (!(((((0x3ff48000 + 0xc))) >= 0x3ff00000) && (((0x3ff48000 + 0xc))) <= 0x3ff13FFC))")); } while(0);; ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff48000 + 0xc)))) >= 0x3ff00000) && ((((0x3ff48000 + 0xc)))) <= 0x3ff13FFC)), (!((((((0x3ff48000 + 0xc)))) >= 0x3ff00000) && ((((0x3ff48000 + 0xc)))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!((((((0x3ff48000 + 0xc)))) >= 0x3ff00000) && ((((0x3ff48000 + 0xc)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 131, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!((((((0x3ff48000 + 0xc)))) >= 0x3ff00000) && ((((0x3ff48000 + 0xc)))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)(((0x3ff48000 + 0xc))))) = (uint32_t)((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0xc))) >= 0x3ff00000) && (((0x3ff48000 + 0xc))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0xc))) >= 0x3ff00000) && (((0x3ff48000 + 0xc))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!(((((0x3ff48000 + 0xc))) >= 0x3ff00000) && (((0x3ff48000 + 0xc))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 131, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!(((((0x3ff48000 + 0xc))) >= 0x3ff00000) && (((0x3ff48000 + 0xc))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff48000 + 0xc)))); })|(((1UL << (31)))))); }); });
    while (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0xc))) >= 0x3ff00000) && (((0x3ff48000 + 0xc))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0xc))) >= 0x3ff00000) && (((0x3ff48000 + 0xc))) <= 0x3ff13FFC)), 1), "(Cannot use GET_PERI_REG_MASK for DPORT registers use DPORT_GET_PERI_REG_MASK)"); (("(Cannot use GET_PERI_REG_MASK for DPORT registers use DPORT_GET_PERI_REG_MASK)" && (!(((((0x3ff48000 + 0xc))) >= 0x3ff00000) && (((0x3ff48000 + 0xc))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 132, __func__, "\"(Cannot use GET_PERI_REG_MASK for DPORT registers use DPORT_GET_PERI_REG_MASK)\" && (!(((((0x3ff48000 + 0xc))) >= 0x3ff00000) && (((0x3ff48000 + 0xc))) <= 0x3ff13FFC))")); } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0xc))) >= 0x3ff00000) && (((0x3ff48000 + 0xc))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0xc))) >= 0x3ff00000) && (((0x3ff48000 + 0xc))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!(((((0x3ff48000 + 0xc))) >= 0x3ff00000) && (((0x3ff48000 + 0xc))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 132, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!(((((0x3ff48000 + 0xc))) >= 0x3ff00000) && (((0x3ff48000 + 0xc))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff48000 + 0xc)))); }) & (((1UL << (30))))); }) == 0) {
        ets_delay_us(1);
    }
    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x48))) >= 0x3ff00000) && (((0x3ff48000 + 0x48))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x48))) >= 0x3ff00000) && (((0x3ff48000 + 0x48))) <= 0x3ff13FFC)), 1), "(Cannot use SET_PERI_REG_MASK for DPORT registers use DPORT_SET_PERI_REG_MASK)"); (("(Cannot use SET_PERI_REG_MASK for DPORT registers use DPORT_SET_PERI_REG_MASK)" && (!(((((0x3ff48000 + 0x48))) >= 0x3ff00000) && (((0x3ff48000 + 0x48))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 135, __func__, "\"(Cannot use SET_PERI_REG_MASK for DPORT registers use DPORT_SET_PERI_REG_MASK)\" && (!(((((0x3ff48000 + 0x48))) >= 0x3ff00000) && (((0x3ff48000 + 0x48))) <= 0x3ff13FFC))")); } while(0);; ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff48000 + 0x48)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x48)))) <= 0x3ff13FFC)), (!((((((0x3ff48000 + 0x48)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x48)))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!((((((0x3ff48000 + 0x48)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x48)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 135, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!((((((0x3ff48000 + 0x48)))) >= 0x3ff00000) && ((((0x3ff48000 + 0x48)))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)(((0x3ff48000 + 0x48))))) = (uint32_t)((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x48))) >= 0x3ff00000) && (((0x3ff48000 + 0x48))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x48))) >= 0x3ff00000) && (((0x3ff48000 + 0x48))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!(((((0x3ff48000 + 0x48))) >= 0x3ff00000) && (((0x3ff48000 + 0x48))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 135, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!(((((0x3ff48000 + 0x48))) >= 0x3ff00000) && (((0x3ff48000 + 0x48))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff48000 + 0x48)))); })|(((1UL << (4)))))); }); });
    uint64_t t = ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x10))) >= 0x3ff00000) && (((0x3ff48000 + 0x10))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x10))) >= 0x3ff00000) && (((0x3ff48000 + 0x10))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!(((((0x3ff48000 + 0x10))) >= 0x3ff00000) && (((0x3ff48000 + 0x10))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 136, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!(((((0x3ff48000 + 0x10))) >= 0x3ff00000) && (((0x3ff48000 + 0x10))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff48000 + 0x10)))); });
    t |= ((uint64_t) ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff48000 + 0x14))) >= 0x3ff00000) && (((0x3ff48000 + 0x14))) <= 0x3ff13FFC)), (!(((((0x3ff48000 + 0x14))) >= 0x3ff00000) && (((0x3ff48000 + 0x14))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!(((((0x3ff48000 + 0x14))) >= 0x3ff00000) && (((0x3ff48000 + 0x14))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 137, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!(((((0x3ff48000 + 0x14))) >= 0x3ff00000) && (((0x3ff48000 + 0x14))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff48000 + 0x14)))); })) << 32;
    return t;
}

void rtc_clk_wait_for_slow_cycle()
{
    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC)), (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC)), 1), "(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)"); (("(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)" && (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 143, __func__, "\"(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)\" && (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t*)(((0x3ff5F000 + 0*0x1000) + 0x0068)) &= ~(((1UL << (12))) | ((1UL << (31))))); });
    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC)), (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC)), 1), "(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)"); (("(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)" && (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 144, __func__, "\"(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)\" && (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t*)(((0x3ff5F000 + 0*0x1000) + 0x0068)) &= ~(((1UL << (15))))); });
    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC)), (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)"); (("(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)" && (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 145, __func__, "\"(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)\" && (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC))")); } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((((0x3ff5F000 + 0*0x1000) + 0x0068)))) >= 0x3ff00000) && (((((0x3ff5F000 + 0*0x1000) + 0x0068)))) <= 0x3ff13FFC)), (!(((((((0x3ff5F000 + 0*0x1000) + 0x0068)))) >= 0x3ff00000) && (((((0x3ff5F000 + 0*0x1000) + 0x0068)))) <= 0x3ff13FFC)), 1), "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)"); (("(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)" && (!(((((((0x3ff5F000 + 0*0x1000) + 0x0068)))) >= 0x3ff00000) && (((((0x3ff5F000 + 0*0x1000) + 0x0068)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 145, __func__, "\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!(((((((0x3ff5F000 + 0*0x1000) + 0x0068)))) >= 0x3ff00000) && (((((0x3ff5F000 + 0*0x1000) + 0x0068)))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((((0x3ff5F000 + 0*0x1000) + 0x0068)))) = (((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC)), (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 145, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)(((0x3ff5F000 + 0*0x1000) + 0x0068))); }) & ~((0x3) << (13)))|(((RTC_CAL_RTC_MUX) & (0x3))<<(13)))); })); });



    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC)), (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)"); (("(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)" && (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 149, __func__, "\"(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)\" && (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC))")); } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((((0x3ff5F000 + 0*0x1000) + 0x0068)))) >= 0x3ff00000) && (((((0x3ff5F000 + 0*0x1000) + 0x0068)))) <= 0x3ff13FFC)), (!(((((((0x3ff5F000 + 0*0x1000) + 0x0068)))) >= 0x3ff00000) && (((((0x3ff5F000 + 0*0x1000) + 0x0068)))) <= 0x3ff13FFC)), 1), "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)"); (("(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)" && (!(((((((0x3ff5F000 + 0*0x1000) + 0x0068)))) >= 0x3ff00000) && (((((0x3ff5F000 + 0*0x1000) + 0x0068)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 149, __func__, "\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!(((((((0x3ff5F000 + 0*0x1000) + 0x0068)))) >= 0x3ff00000) && (((((0x3ff5F000 + 0*0x1000) + 0x0068)))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((((0x3ff5F000 + 0*0x1000) + 0x0068)))) = (((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC)), (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 149, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)(((0x3ff5F000 + 0*0x1000) + 0x0068))); }) & ~((0x7FFF) << (16)))|(((0) & (0x7FFF))<<(16)))); })); });
    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC)), (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)"); (("(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)" && (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 150, __func__, "\"(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)\" && (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t*)(((0x3ff5F000 + 0*0x1000) + 0x0068)) |= (((1UL << (31))))); });
    ets_delay_us(1);
    while (!({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC)), (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC)), 1), "(Cannot use GET_PERI_REG_MASK for DPORT registers use DPORT_GET_PERI_REG_MASK)"); (("(Cannot use GET_PERI_REG_MASK for DPORT registers use DPORT_GET_PERI_REG_MASK)" && (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 152, __func__, "\"(Cannot use GET_PERI_REG_MASK for DPORT registers use DPORT_GET_PERI_REG_MASK)\" && (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC))")); } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC)), (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_time.c", 152, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!((((((0x3ff5F000 + 0*0x1000) + 0x0068))) >= 0x3ff00000) && ((((0x3ff5F000 + 0*0x1000) + 0x0068))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)(((0x3ff5F000 + 0*0x1000) + 0x0068)))); }) & (((1UL << (15))))); })) {
        ets_delay_us(1);
    }
}
