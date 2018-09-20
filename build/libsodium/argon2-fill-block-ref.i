# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/argon2-fill-block-ref.c"
# 1 "D:\\ESP32\\esp-idf-v3.1-rc1\\ESP32_PIC_A2DP\\build\\libsodium//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/argon2-fill-block-ref.c"
# 14 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/argon2-fill-block-ref.c"
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
# 15 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/argon2-fill-block-ref.c" 2
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




# 16 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/argon2-fill-block-ref.c" 2
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


# 17 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/argon2-fill-block-ref.c" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/argon2-core.h" 1
# 17 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/argon2-core.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/argon2.h" 1
# 15 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/argon2.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/limits.h" 1
# 131 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/limits.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include-fixed\\limits.h" 1 3 4
# 132 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/limits.h" 2
# 16 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/argon2.h" 2
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 17 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/argon2.h" 2
# 75 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/argon2.h"
typedef enum Argon2_ErrorCodes {
    ARGON2_OK = 0,

    ARGON2_OUTPUT_PTR_NULL = -1,

    ARGON2_OUTPUT_TOO_SHORT = -2,
    ARGON2_OUTPUT_TOO_LONG = -3,

    ARGON2_PWD_TOO_SHORT = -4,
    ARGON2_PWD_TOO_LONG = -5,

    ARGON2_SALT_TOO_SHORT = -6,
    ARGON2_SALT_TOO_LONG = -7,

    ARGON2_AD_TOO_SHORT = -8,
    ARGON2_AD_TOO_LONG = -9,

    ARGON2_SECRET_TOO_SHORT = -10,
    ARGON2_SECRET_TOO_LONG = -11,

    ARGON2_TIME_TOO_SMALL = -12,
    ARGON2_TIME_TOO_LARGE = -13,

    ARGON2_MEMORY_TOO_LITTLE = -14,
    ARGON2_MEMORY_TOO_MUCH = -15,

    ARGON2_LANES_TOO_FEW = -16,
    ARGON2_LANES_TOO_MANY = -17,

    ARGON2_PWD_PTR_MISMATCH = -18,
    ARGON2_SALT_PTR_MISMATCH = -19,
    ARGON2_SECRET_PTR_MISMATCH = -20,
    ARGON2_AD_PTR_MISMATCH = -21,

    ARGON2_MEMORY_ALLOCATION_ERROR = -22,

    ARGON2_FREE_MEMORY_CBK_NULL = -23,
    ARGON2_ALLOCATE_MEMORY_CBK_NULL = -24,

    ARGON2_INCORRECT_PARAMETER = -25,
    ARGON2_INCORRECT_TYPE = -26,

    ARGON2_OUT_PTR_MISMATCH = -27,

    ARGON2_THREADS_TOO_FEW = -28,
    ARGON2_THREADS_TOO_MANY = -29,

    ARGON2_MISSING_ARGS = -30,

    ARGON2_ENCODING_FAIL = -31,

    ARGON2_DECODING_FAIL = -32,

    ARGON2_THREAD_FAIL = -33,

    ARGON2_DECODING_LENGTH_FAIL = -34,

    ARGON2_VERIFY_MISMATCH = -35
} argon2_error_codes;
# 163 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/argon2.h"
typedef struct Argon2_Context {
    uint8_t *out;
    uint32_t outlen;

    uint8_t *pwd;
    uint32_t pwdlen;

    uint8_t *salt;
    uint32_t saltlen;

    uint8_t *secret;
    uint32_t secretlen;

    uint8_t *ad;
    uint32_t adlen;

    uint32_t t_cost;
    uint32_t m_cost;
    uint32_t lanes;
    uint32_t threads;

    uint32_t flags;
} argon2_context;


typedef enum Argon2_type { Argon2_i = 1 } argon2_type;






int argon2_ctx(argon2_context *context, argon2_type type);
# 212 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/argon2.h"
int argon2i_hash_encoded(const uint32_t t_cost, const uint32_t m_cost,
                         const uint32_t parallelism, const void *pwd,
                         const size_t pwdlen, const void *salt,
                         const size_t saltlen, const size_t hashlen,
                         char *encoded, const size_t encodedlen);
# 232 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/argon2.h"
int argon2i_hash_raw(const uint32_t t_cost, const uint32_t m_cost,
                     const uint32_t parallelism, const void *pwd,
                     const size_t pwdlen, const void *salt,
                     const size_t saltlen, void *hash, const size_t hashlen);


int argon2_hash(const uint32_t t_cost, const uint32_t m_cost,
                const uint32_t parallelism, const void *pwd,
                const size_t pwdlen, const void *salt, const size_t saltlen,
                void *hash, const size_t hashlen, char *encoded,
                const size_t encodedlen, argon2_type type);
# 251 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/argon2.h"
int argon2i_verify(const char *encoded, const void *pwd, const size_t pwdlen);


int argon2_verify(const char *encoded, const void *pwd, const size_t pwdlen,
                  argon2_type type);
# 18 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/argon2-core.h" 2




enum argon2_ctx_constants {

    ARGON2_VERSION_NUMBER = 0x13,


    ARGON2_BLOCK_SIZE = 1024,
    ARGON2_QWORDS_IN_BLOCK = ARGON2_BLOCK_SIZE / 8,
    ARGON2_OWORDS_IN_BLOCK = ARGON2_BLOCK_SIZE / 16,




    ARGON2_ADDRESSES_IN_BLOCK = 128,


    ARGON2_PREHASH_DIGEST_LENGTH = 64,
    ARGON2_PREHASH_SEED_LENGTH = 72
};
# 49 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/argon2-core.h"
typedef struct block_ {
    uint64_t v[ARGON2_QWORDS_IN_BLOCK];
} block;

typedef struct block_region_ {
    void * base;
    block *memory;
    size_t size;
} block_region;




void init_block_value(block *b, uint8_t in);


void copy_block(block *dst, const block *src);


void xor_block(block *dst, const block *src);







typedef struct Argon2_instance_t {
    block_region *region;
    uint32_t passes;
    uint32_t memory_blocks;
    uint32_t segment_length;
    uint32_t lane_length;
    uint32_t lanes;
    uint32_t threads;
    argon2_type type;
    int print_internals;
} argon2_instance_t;





typedef struct Argon2_position_t {
    uint32_t pass;
    uint32_t lane;
    uint8_t slice;
    uint32_t index;
} argon2_position_t;


typedef struct Argon2_thread_data {
    argon2_instance_t *instance_ptr;
    argon2_position_t pos;
} argon2_thread_data;
# 118 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/argon2-core.h"
uint32_t index_alpha(const argon2_instance_t *instance,
                     const argon2_position_t *position, uint32_t pseudo_rand,
                     int same_lane);
# 129 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/argon2-core.h"
int validate_inputs(const argon2_context *context);
# 141 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/argon2-core.h"
void initial_hash(uint8_t *blockhash, argon2_context *context,
                  argon2_type type);







void fill_first_blocks(uint8_t *blockhash, const argon2_instance_t *instance);
# 162 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/argon2-core.h"
int initialize(argon2_instance_t *instance, argon2_context *context);
# 175 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/argon2-core.h"
void finalize(const argon2_context *context, argon2_instance_t *instance);
# 184 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/argon2-core.h"
typedef int (*fill_segment_fn)(const argon2_instance_t *instance,
                               argon2_position_t position);
int argon2_pick_best_implementation(void);
int fill_segment_ssse3(const argon2_instance_t *instance,
                       argon2_position_t position);
int fill_segment_ref(const argon2_instance_t *instance,
                     argon2_position_t position);







int fill_memory_blocks(argon2_instance_t *instance);
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/argon2-fill-block-ref.c" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/blamka-round-ref.h" 1



# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/private/common.h" 1
# 11 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/private/common.h"
static inline uint32_t
rotl32(const uint32_t x, const int b)
{
    return (x << b) | (x >> (32 - b));
}


static inline uint64_t
rotl64(const uint64_t x, const int b)
{
    return (x << b) | (x >> (64 - b));
}


static inline uint32_t
rotr32(const uint32_t x, const int b)
{
    return (x >> b) | (x << (32 - b));
}


static inline uint64_t
rotr64(const uint64_t x, const int b)
{
    return (x >> b) | (x << (64 - b));
}


static inline uint64_t
load64_le(const uint8_t src[8])
{

    uint64_t w;
    memcpy(&w, src, sizeof w);
    return w;
# 57 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/private/common.h"
}


static inline void
store64_le(uint8_t dst[8], uint64_t w)
{

    memcpy(dst, &w, sizeof w);
# 75 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/private/common.h"
}


static inline uint32_t
load32_le(const uint8_t src[4])
{

    uint32_t w;
    memcpy(&w, src, sizeof w);
    return w;







}


static inline void
store32_le(uint8_t dst[4], uint32_t w)
{

    memcpy(dst, &w, sizeof w);






}




static inline uint64_t
load64_be(const uint8_t src[8])
{





    uint64_t w = (uint64_t) src[7];
    w |= (uint64_t) src[6] << 8;
    w |= (uint64_t) src[5] << 16;
    w |= (uint64_t) src[4] << 24;
    w |= (uint64_t) src[3] << 32;
    w |= (uint64_t) src[2] << 40;
    w |= (uint64_t) src[1] << 48;
    w |= (uint64_t) src[0] << 56;
    return w;

}


static inline void
store64_be(uint8_t dst[8], uint64_t w)
{



    dst[7] = (uint8_t) w; w >>= 8;
    dst[6] = (uint8_t) w; w >>= 8;
    dst[5] = (uint8_t) w; w >>= 8;
    dst[4] = (uint8_t) w; w >>= 8;
    dst[3] = (uint8_t) w; w >>= 8;
    dst[2] = (uint8_t) w; w >>= 8;
    dst[1] = (uint8_t) w; w >>= 8;
    dst[0] = (uint8_t) w;

}


static inline uint32_t
load32_be(const uint8_t src[4])
{





    uint32_t w = (uint32_t) src[3];
    w |= (uint32_t) src[2] << 8;
    w |= (uint32_t) src[1] << 16;
    w |= (uint32_t) src[0] << 24;
    return w;

}


static inline void
store32_be(uint8_t dst[4], uint32_t w)
{



    dst[3] = (uint8_t) w; w >>= 8;
    dst[2] = (uint8_t) w; w >>= 8;
    dst[1] = (uint8_t) w; w >>= 8;
    dst[0] = (uint8_t) w;

}
# 5 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/blamka-round-ref.h" 2


static inline uint64_t
fBlaMka(uint64_t x, uint64_t y)
{
    const uint64_t m = 0xFFFFFFFFULL;
    const uint64_t xy = (x & m) * (y & m);
    return x + y + 2 * xy;
}
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/argon2-fill-block-ref.c" 2


static void
fill_block(const block *prev_block, const block *ref_block, block *next_block)
{
    block blockR, block_tmp;
    unsigned i;

    copy_block(&blockR, ref_block);
    xor_block(&blockR, prev_block);
    copy_block(&block_tmp, &blockR);



    for (i = 0; i < 8; ++i) {
        do { do { blockR.v[16 * i] = fBlaMka(blockR.v[16 * i], blockR.v[16 * i + 4]); blockR.v[16 * i + 12] = rotr64((blockR.v[16 * i + 12] ^ blockR.v[16 * i]), (32)); blockR.v[16 * i + 8] = fBlaMka(blockR.v[16 * i + 8], blockR.v[16 * i + 12]); blockR.v[16 * i + 4] = rotr64((blockR.v[16 * i + 4] ^ blockR.v[16 * i + 8]), (24)); blockR.v[16 * i] = fBlaMka(blockR.v[16 * i], blockR.v[16 * i + 4]); blockR.v[16 * i + 12] = rotr64((blockR.v[16 * i + 12] ^ blockR.v[16 * i]), (16)); blockR.v[16 * i + 8] = fBlaMka(blockR.v[16 * i + 8], blockR.v[16 * i + 12]); blockR.v[16 * i + 4] = rotr64((blockR.v[16 * i + 4] ^ blockR.v[16 * i + 8]), (63)); } while ((void) 0, 0); do { blockR.v[16 * i + 1] = fBlaMka(blockR.v[16 * i + 1], blockR.v[16 * i + 5]); blockR.v[16 * i + 13] = rotr64((blockR.v[16 * i + 13] ^ blockR.v[16 * i + 1]), (32)); blockR.v[16 * i + 9] = fBlaMka(blockR.v[16 * i + 9], blockR.v[16 * i + 13]); blockR.v[16 * i + 5] = rotr64((blockR.v[16 * i + 5] ^ blockR.v[16 * i + 9]), (24)); blockR.v[16 * i + 1] = fBlaMka(blockR.v[16 * i + 1], blockR.v[16 * i + 5]); blockR.v[16 * i + 13] = rotr64((blockR.v[16 * i + 13] ^ blockR.v[16 * i + 1]), (16)); blockR.v[16 * i + 9] = fBlaMka(blockR.v[16 * i + 9], blockR.v[16 * i + 13]); blockR.v[16 * i + 5] = rotr64((blockR.v[16 * i + 5] ^ blockR.v[16 * i + 9]), (63)); } while ((void) 0, 0); do { blockR.v[16 * i + 2] = fBlaMka(blockR.v[16 * i + 2], blockR.v[16 * i + 6]); blockR.v[16 * i + 14] = rotr64((blockR.v[16 * i + 14] ^ blockR.v[16 * i + 2]), (32)); blockR.v[16 * i + 10] = fBlaMka(blockR.v[16 * i + 10], blockR.v[16 * i + 14]); blockR.v[16 * i + 6] = rotr64((blockR.v[16 * i + 6] ^ blockR.v[16 * i + 10]), (24)); blockR.v[16 * i + 2] = fBlaMka(blockR.v[16 * i + 2], blockR.v[16 * i + 6]); blockR.v[16 * i + 14] = rotr64((blockR.v[16 * i + 14] ^ blockR.v[16 * i + 2]), (16)); blockR.v[16 * i + 10] = fBlaMka(blockR.v[16 * i + 10], blockR.v[16 * i + 14]); blockR.v[16 * i + 6] = rotr64((blockR.v[16 * i + 6] ^ blockR.v[16 * i + 10]), (63)); } while ((void) 0, 0); do { blockR.v[16 * i + 3] = fBlaMka(blockR.v[16 * i + 3], blockR.v[16 * i + 7]); blockR.v[16 * i + 15] = rotr64((blockR.v[16 * i + 15] ^ blockR.v[16 * i + 3]), (32)); blockR.v[16 * i + 11] = fBlaMka(blockR.v[16 * i + 11], blockR.v[16 * i + 15]); blockR.v[16 * i + 7] = rotr64((blockR.v[16 * i + 7] ^ blockR.v[16 * i + 11]), (24)); blockR.v[16 * i + 3] = fBlaMka(blockR.v[16 * i + 3], blockR.v[16 * i + 7]); blockR.v[16 * i + 15] = rotr64((blockR.v[16 * i + 15] ^ blockR.v[16 * i + 3]), (16)); blockR.v[16 * i + 11] = fBlaMka(blockR.v[16 * i + 11], blockR.v[16 * i + 15]); blockR.v[16 * i + 7] = rotr64((blockR.v[16 * i + 7] ^ blockR.v[16 * i + 11]), (63)); } while ((void) 0, 0); do { blockR.v[16 * i] = fBlaMka(blockR.v[16 * i], blockR.v[16 * i + 5]); blockR.v[16 * i + 15] = rotr64((blockR.v[16 * i + 15] ^ blockR.v[16 * i]), (32)); blockR.v[16 * i + 10] = fBlaMka(blockR.v[16 * i + 10], blockR.v[16 * i + 15]); blockR.v[16 * i + 5] = rotr64((blockR.v[16 * i + 5] ^ blockR.v[16 * i + 10]), (24)); blockR.v[16 * i] = fBlaMka(blockR.v[16 * i], blockR.v[16 * i + 5]); blockR.v[16 * i + 15] = rotr64((blockR.v[16 * i + 15] ^ blockR.v[16 * i]), (16)); blockR.v[16 * i + 10] = fBlaMka(blockR.v[16 * i + 10], blockR.v[16 * i + 15]); blockR.v[16 * i + 5] = rotr64((blockR.v[16 * i + 5] ^ blockR.v[16 * i + 10]), (63)); } while ((void) 0, 0); do { blockR.v[16 * i + 1] = fBlaMka(blockR.v[16 * i + 1], blockR.v[16 * i + 6]); blockR.v[16 * i + 12] = rotr64((blockR.v[16 * i + 12] ^ blockR.v[16 * i + 1]), (32)); blockR.v[16 * i + 11] = fBlaMka(blockR.v[16 * i + 11], blockR.v[16 * i + 12]); blockR.v[16 * i + 6] = rotr64((blockR.v[16 * i + 6] ^ blockR.v[16 * i + 11]), (24)); blockR.v[16 * i + 1] = fBlaMka(blockR.v[16 * i + 1], blockR.v[16 * i + 6]); blockR.v[16 * i + 12] = rotr64((blockR.v[16 * i + 12] ^ blockR.v[16 * i + 1]), (16)); blockR.v[16 * i + 11] = fBlaMka(blockR.v[16 * i + 11], blockR.v[16 * i + 12]); blockR.v[16 * i + 6] = rotr64((blockR.v[16 * i + 6] ^ blockR.v[16 * i + 11]), (63)); } while ((void) 0, 0); do { blockR.v[16 * i + 2] = fBlaMka(blockR.v[16 * i + 2], blockR.v[16 * i + 7]); blockR.v[16 * i + 13] = rotr64((blockR.v[16 * i + 13] ^ blockR.v[16 * i + 2]), (32)); blockR.v[16 * i + 8] = fBlaMka(blockR.v[16 * i + 8], blockR.v[16 * i + 13]); blockR.v[16 * i + 7] = rotr64((blockR.v[16 * i + 7] ^ blockR.v[16 * i + 8]), (24)); blockR.v[16 * i + 2] = fBlaMka(blockR.v[16 * i + 2], blockR.v[16 * i + 7]); blockR.v[16 * i + 13] = rotr64((blockR.v[16 * i + 13] ^ blockR.v[16 * i + 2]), (16)); blockR.v[16 * i + 8] = fBlaMka(blockR.v[16 * i + 8], blockR.v[16 * i + 13]); blockR.v[16 * i + 7] = rotr64((blockR.v[16 * i + 7] ^ blockR.v[16 * i + 8]), (63)); } while ((void) 0, 0); do { blockR.v[16 * i + 3] = fBlaMka(blockR.v[16 * i + 3], blockR.v[16 * i + 4]); blockR.v[16 * i + 14] = rotr64((blockR.v[16 * i + 14] ^ blockR.v[16 * i + 3]), (32)); blockR.v[16 * i + 9] = fBlaMka(blockR.v[16 * i + 9], blockR.v[16 * i + 14]); blockR.v[16 * i + 4] = rotr64((blockR.v[16 * i + 4] ^ blockR.v[16 * i + 9]), (24)); blockR.v[16 * i + 3] = fBlaMka(blockR.v[16 * i + 3], blockR.v[16 * i + 4]); blockR.v[16 * i + 14] = rotr64((blockR.v[16 * i + 14] ^ blockR.v[16 * i + 3]), (16)); blockR.v[16 * i + 9] = fBlaMka(blockR.v[16 * i + 9], blockR.v[16 * i + 14]); blockR.v[16 * i + 4] = rotr64((blockR.v[16 * i + 4] ^ blockR.v[16 * i + 9]), (63)); } while ((void) 0, 0); } while ((void) 0, 0)





                                  ;
    }



    for (i = 0; i < 8; i++) {
        do { do { blockR.v[2 * i] = fBlaMka(blockR.v[2 * i], blockR.v[2 * i + 32]); blockR.v[2 * i + 96] = rotr64((blockR.v[2 * i + 96] ^ blockR.v[2 * i]), (32)); blockR.v[2 * i + 64] = fBlaMka(blockR.v[2 * i + 64], blockR.v[2 * i + 96]); blockR.v[2 * i + 32] = rotr64((blockR.v[2 * i + 32] ^ blockR.v[2 * i + 64]), (24)); blockR.v[2 * i] = fBlaMka(blockR.v[2 * i], blockR.v[2 * i + 32]); blockR.v[2 * i + 96] = rotr64((blockR.v[2 * i + 96] ^ blockR.v[2 * i]), (16)); blockR.v[2 * i + 64] = fBlaMka(blockR.v[2 * i + 64], blockR.v[2 * i + 96]); blockR.v[2 * i + 32] = rotr64((blockR.v[2 * i + 32] ^ blockR.v[2 * i + 64]), (63)); } while ((void) 0, 0); do { blockR.v[2 * i + 1] = fBlaMka(blockR.v[2 * i + 1], blockR.v[2 * i + 33]); blockR.v[2 * i + 97] = rotr64((blockR.v[2 * i + 97] ^ blockR.v[2 * i + 1]), (32)); blockR.v[2 * i + 65] = fBlaMka(blockR.v[2 * i + 65], blockR.v[2 * i + 97]); blockR.v[2 * i + 33] = rotr64((blockR.v[2 * i + 33] ^ blockR.v[2 * i + 65]), (24)); blockR.v[2 * i + 1] = fBlaMka(blockR.v[2 * i + 1], blockR.v[2 * i + 33]); blockR.v[2 * i + 97] = rotr64((blockR.v[2 * i + 97] ^ blockR.v[2 * i + 1]), (16)); blockR.v[2 * i + 65] = fBlaMka(blockR.v[2 * i + 65], blockR.v[2 * i + 97]); blockR.v[2 * i + 33] = rotr64((blockR.v[2 * i + 33] ^ blockR.v[2 * i + 65]), (63)); } while ((void) 0, 0); do { blockR.v[2 * i + 16] = fBlaMka(blockR.v[2 * i + 16], blockR.v[2 * i + 48]); blockR.v[2 * i + 112] = rotr64((blockR.v[2 * i + 112] ^ blockR.v[2 * i + 16]), (32)); blockR.v[2 * i + 80] = fBlaMka(blockR.v[2 * i + 80], blockR.v[2 * i + 112]); blockR.v[2 * i + 48] = rotr64((blockR.v[2 * i + 48] ^ blockR.v[2 * i + 80]), (24)); blockR.v[2 * i + 16] = fBlaMka(blockR.v[2 * i + 16], blockR.v[2 * i + 48]); blockR.v[2 * i + 112] = rotr64((blockR.v[2 * i + 112] ^ blockR.v[2 * i + 16]), (16)); blockR.v[2 * i + 80] = fBlaMka(blockR.v[2 * i + 80], blockR.v[2 * i + 112]); blockR.v[2 * i + 48] = rotr64((blockR.v[2 * i + 48] ^ blockR.v[2 * i + 80]), (63)); } while ((void) 0, 0); do { blockR.v[2 * i + 17] = fBlaMka(blockR.v[2 * i + 17], blockR.v[2 * i + 49]); blockR.v[2 * i + 113] = rotr64((blockR.v[2 * i + 113] ^ blockR.v[2 * i + 17]), (32)); blockR.v[2 * i + 81] = fBlaMka(blockR.v[2 * i + 81], blockR.v[2 * i + 113]); blockR.v[2 * i + 49] = rotr64((blockR.v[2 * i + 49] ^ blockR.v[2 * i + 81]), (24)); blockR.v[2 * i + 17] = fBlaMka(blockR.v[2 * i + 17], blockR.v[2 * i + 49]); blockR.v[2 * i + 113] = rotr64((blockR.v[2 * i + 113] ^ blockR.v[2 * i + 17]), (16)); blockR.v[2 * i + 81] = fBlaMka(blockR.v[2 * i + 81], blockR.v[2 * i + 113]); blockR.v[2 * i + 49] = rotr64((blockR.v[2 * i + 49] ^ blockR.v[2 * i + 81]), (63)); } while ((void) 0, 0); do { blockR.v[2 * i] = fBlaMka(blockR.v[2 * i], blockR.v[2 * i + 33]); blockR.v[2 * i + 113] = rotr64((blockR.v[2 * i + 113] ^ blockR.v[2 * i]), (32)); blockR.v[2 * i + 80] = fBlaMka(blockR.v[2 * i + 80], blockR.v[2 * i + 113]); blockR.v[2 * i + 33] = rotr64((blockR.v[2 * i + 33] ^ blockR.v[2 * i + 80]), (24)); blockR.v[2 * i] = fBlaMka(blockR.v[2 * i], blockR.v[2 * i + 33]); blockR.v[2 * i + 113] = rotr64((blockR.v[2 * i + 113] ^ blockR.v[2 * i]), (16)); blockR.v[2 * i + 80] = fBlaMka(blockR.v[2 * i + 80], blockR.v[2 * i + 113]); blockR.v[2 * i + 33] = rotr64((blockR.v[2 * i + 33] ^ blockR.v[2 * i + 80]), (63)); } while ((void) 0, 0); do { blockR.v[2 * i + 1] = fBlaMka(blockR.v[2 * i + 1], blockR.v[2 * i + 48]); blockR.v[2 * i + 96] = rotr64((blockR.v[2 * i + 96] ^ blockR.v[2 * i + 1]), (32)); blockR.v[2 * i + 81] = fBlaMka(blockR.v[2 * i + 81], blockR.v[2 * i + 96]); blockR.v[2 * i + 48] = rotr64((blockR.v[2 * i + 48] ^ blockR.v[2 * i + 81]), (24)); blockR.v[2 * i + 1] = fBlaMka(blockR.v[2 * i + 1], blockR.v[2 * i + 48]); blockR.v[2 * i + 96] = rotr64((blockR.v[2 * i + 96] ^ blockR.v[2 * i + 1]), (16)); blockR.v[2 * i + 81] = fBlaMka(blockR.v[2 * i + 81], blockR.v[2 * i + 96]); blockR.v[2 * i + 48] = rotr64((blockR.v[2 * i + 48] ^ blockR.v[2 * i + 81]), (63)); } while ((void) 0, 0); do { blockR.v[2 * i + 16] = fBlaMka(blockR.v[2 * i + 16], blockR.v[2 * i + 49]); blockR.v[2 * i + 97] = rotr64((blockR.v[2 * i + 97] ^ blockR.v[2 * i + 16]), (32)); blockR.v[2 * i + 64] = fBlaMka(blockR.v[2 * i + 64], blockR.v[2 * i + 97]); blockR.v[2 * i + 49] = rotr64((blockR.v[2 * i + 49] ^ blockR.v[2 * i + 64]), (24)); blockR.v[2 * i + 16] = fBlaMka(blockR.v[2 * i + 16], blockR.v[2 * i + 49]); blockR.v[2 * i + 97] = rotr64((blockR.v[2 * i + 97] ^ blockR.v[2 * i + 16]), (16)); blockR.v[2 * i + 64] = fBlaMka(blockR.v[2 * i + 64], blockR.v[2 * i + 97]); blockR.v[2 * i + 49] = rotr64((blockR.v[2 * i + 49] ^ blockR.v[2 * i + 64]), (63)); } while ((void) 0, 0); do { blockR.v[2 * i + 17] = fBlaMka(blockR.v[2 * i + 17], blockR.v[2 * i + 32]); blockR.v[2 * i + 112] = rotr64((blockR.v[2 * i + 112] ^ blockR.v[2 * i + 17]), (32)); blockR.v[2 * i + 65] = fBlaMka(blockR.v[2 * i + 65], blockR.v[2 * i + 112]); blockR.v[2 * i + 32] = rotr64((blockR.v[2 * i + 32] ^ blockR.v[2 * i + 65]), (24)); blockR.v[2 * i + 17] = fBlaMka(blockR.v[2 * i + 17], blockR.v[2 * i + 32]); blockR.v[2 * i + 112] = rotr64((blockR.v[2 * i + 112] ^ blockR.v[2 * i + 17]), (16)); blockR.v[2 * i + 65] = fBlaMka(blockR.v[2 * i + 65], blockR.v[2 * i + 112]); blockR.v[2 * i + 32] = rotr64((blockR.v[2 * i + 32] ^ blockR.v[2 * i + 65]), (63)); } while ((void) 0, 0); } while ((void) 0, 0)





                                  ;
    }

    copy_block(next_block, &block_tmp);
    xor_block(next_block, &blockR);
}

static void
fill_block_with_xor(const block *prev_block, const block *ref_block,
                    block *next_block)
{
    block blockR, block_tmp;
    unsigned i;

    copy_block(&blockR, ref_block);
    xor_block(&blockR, prev_block);
    copy_block(&block_tmp, &blockR);
    xor_block(&block_tmp,
              next_block);




    for (i = 0; i < 8; ++i) {
        do { do { blockR.v[16 * i] = fBlaMka(blockR.v[16 * i], blockR.v[16 * i + 4]); blockR.v[16 * i + 12] = rotr64((blockR.v[16 * i + 12] ^ blockR.v[16 * i]), (32)); blockR.v[16 * i + 8] = fBlaMka(blockR.v[16 * i + 8], blockR.v[16 * i + 12]); blockR.v[16 * i + 4] = rotr64((blockR.v[16 * i + 4] ^ blockR.v[16 * i + 8]), (24)); blockR.v[16 * i] = fBlaMka(blockR.v[16 * i], blockR.v[16 * i + 4]); blockR.v[16 * i + 12] = rotr64((blockR.v[16 * i + 12] ^ blockR.v[16 * i]), (16)); blockR.v[16 * i + 8] = fBlaMka(blockR.v[16 * i + 8], blockR.v[16 * i + 12]); blockR.v[16 * i + 4] = rotr64((blockR.v[16 * i + 4] ^ blockR.v[16 * i + 8]), (63)); } while ((void) 0, 0); do { blockR.v[16 * i + 1] = fBlaMka(blockR.v[16 * i + 1], blockR.v[16 * i + 5]); blockR.v[16 * i + 13] = rotr64((blockR.v[16 * i + 13] ^ blockR.v[16 * i + 1]), (32)); blockR.v[16 * i + 9] = fBlaMka(blockR.v[16 * i + 9], blockR.v[16 * i + 13]); blockR.v[16 * i + 5] = rotr64((blockR.v[16 * i + 5] ^ blockR.v[16 * i + 9]), (24)); blockR.v[16 * i + 1] = fBlaMka(blockR.v[16 * i + 1], blockR.v[16 * i + 5]); blockR.v[16 * i + 13] = rotr64((blockR.v[16 * i + 13] ^ blockR.v[16 * i + 1]), (16)); blockR.v[16 * i + 9] = fBlaMka(blockR.v[16 * i + 9], blockR.v[16 * i + 13]); blockR.v[16 * i + 5] = rotr64((blockR.v[16 * i + 5] ^ blockR.v[16 * i + 9]), (63)); } while ((void) 0, 0); do { blockR.v[16 * i + 2] = fBlaMka(blockR.v[16 * i + 2], blockR.v[16 * i + 6]); blockR.v[16 * i + 14] = rotr64((blockR.v[16 * i + 14] ^ blockR.v[16 * i + 2]), (32)); blockR.v[16 * i + 10] = fBlaMka(blockR.v[16 * i + 10], blockR.v[16 * i + 14]); blockR.v[16 * i + 6] = rotr64((blockR.v[16 * i + 6] ^ blockR.v[16 * i + 10]), (24)); blockR.v[16 * i + 2] = fBlaMka(blockR.v[16 * i + 2], blockR.v[16 * i + 6]); blockR.v[16 * i + 14] = rotr64((blockR.v[16 * i + 14] ^ blockR.v[16 * i + 2]), (16)); blockR.v[16 * i + 10] = fBlaMka(blockR.v[16 * i + 10], blockR.v[16 * i + 14]); blockR.v[16 * i + 6] = rotr64((blockR.v[16 * i + 6] ^ blockR.v[16 * i + 10]), (63)); } while ((void) 0, 0); do { blockR.v[16 * i + 3] = fBlaMka(blockR.v[16 * i + 3], blockR.v[16 * i + 7]); blockR.v[16 * i + 15] = rotr64((blockR.v[16 * i + 15] ^ blockR.v[16 * i + 3]), (32)); blockR.v[16 * i + 11] = fBlaMka(blockR.v[16 * i + 11], blockR.v[16 * i + 15]); blockR.v[16 * i + 7] = rotr64((blockR.v[16 * i + 7] ^ blockR.v[16 * i + 11]), (24)); blockR.v[16 * i + 3] = fBlaMka(blockR.v[16 * i + 3], blockR.v[16 * i + 7]); blockR.v[16 * i + 15] = rotr64((blockR.v[16 * i + 15] ^ blockR.v[16 * i + 3]), (16)); blockR.v[16 * i + 11] = fBlaMka(blockR.v[16 * i + 11], blockR.v[16 * i + 15]); blockR.v[16 * i + 7] = rotr64((blockR.v[16 * i + 7] ^ blockR.v[16 * i + 11]), (63)); } while ((void) 0, 0); do { blockR.v[16 * i] = fBlaMka(blockR.v[16 * i], blockR.v[16 * i + 5]); blockR.v[16 * i + 15] = rotr64((blockR.v[16 * i + 15] ^ blockR.v[16 * i]), (32)); blockR.v[16 * i + 10] = fBlaMka(blockR.v[16 * i + 10], blockR.v[16 * i + 15]); blockR.v[16 * i + 5] = rotr64((blockR.v[16 * i + 5] ^ blockR.v[16 * i + 10]), (24)); blockR.v[16 * i] = fBlaMka(blockR.v[16 * i], blockR.v[16 * i + 5]); blockR.v[16 * i + 15] = rotr64((blockR.v[16 * i + 15] ^ blockR.v[16 * i]), (16)); blockR.v[16 * i + 10] = fBlaMka(blockR.v[16 * i + 10], blockR.v[16 * i + 15]); blockR.v[16 * i + 5] = rotr64((blockR.v[16 * i + 5] ^ blockR.v[16 * i + 10]), (63)); } while ((void) 0, 0); do { blockR.v[16 * i + 1] = fBlaMka(blockR.v[16 * i + 1], blockR.v[16 * i + 6]); blockR.v[16 * i + 12] = rotr64((blockR.v[16 * i + 12] ^ blockR.v[16 * i + 1]), (32)); blockR.v[16 * i + 11] = fBlaMka(blockR.v[16 * i + 11], blockR.v[16 * i + 12]); blockR.v[16 * i + 6] = rotr64((blockR.v[16 * i + 6] ^ blockR.v[16 * i + 11]), (24)); blockR.v[16 * i + 1] = fBlaMka(blockR.v[16 * i + 1], blockR.v[16 * i + 6]); blockR.v[16 * i + 12] = rotr64((blockR.v[16 * i + 12] ^ blockR.v[16 * i + 1]), (16)); blockR.v[16 * i + 11] = fBlaMka(blockR.v[16 * i + 11], blockR.v[16 * i + 12]); blockR.v[16 * i + 6] = rotr64((blockR.v[16 * i + 6] ^ blockR.v[16 * i + 11]), (63)); } while ((void) 0, 0); do { blockR.v[16 * i + 2] = fBlaMka(blockR.v[16 * i + 2], blockR.v[16 * i + 7]); blockR.v[16 * i + 13] = rotr64((blockR.v[16 * i + 13] ^ blockR.v[16 * i + 2]), (32)); blockR.v[16 * i + 8] = fBlaMka(blockR.v[16 * i + 8], blockR.v[16 * i + 13]); blockR.v[16 * i + 7] = rotr64((blockR.v[16 * i + 7] ^ blockR.v[16 * i + 8]), (24)); blockR.v[16 * i + 2] = fBlaMka(blockR.v[16 * i + 2], blockR.v[16 * i + 7]); blockR.v[16 * i + 13] = rotr64((blockR.v[16 * i + 13] ^ blockR.v[16 * i + 2]), (16)); blockR.v[16 * i + 8] = fBlaMka(blockR.v[16 * i + 8], blockR.v[16 * i + 13]); blockR.v[16 * i + 7] = rotr64((blockR.v[16 * i + 7] ^ blockR.v[16 * i + 8]), (63)); } while ((void) 0, 0); do { blockR.v[16 * i + 3] = fBlaMka(blockR.v[16 * i + 3], blockR.v[16 * i + 4]); blockR.v[16 * i + 14] = rotr64((blockR.v[16 * i + 14] ^ blockR.v[16 * i + 3]), (32)); blockR.v[16 * i + 9] = fBlaMka(blockR.v[16 * i + 9], blockR.v[16 * i + 14]); blockR.v[16 * i + 4] = rotr64((blockR.v[16 * i + 4] ^ blockR.v[16 * i + 9]), (24)); blockR.v[16 * i + 3] = fBlaMka(blockR.v[16 * i + 3], blockR.v[16 * i + 4]); blockR.v[16 * i + 14] = rotr64((blockR.v[16 * i + 14] ^ blockR.v[16 * i + 3]), (16)); blockR.v[16 * i + 9] = fBlaMka(blockR.v[16 * i + 9], blockR.v[16 * i + 14]); blockR.v[16 * i + 4] = rotr64((blockR.v[16 * i + 4] ^ blockR.v[16 * i + 9]), (63)); } while ((void) 0, 0); } while ((void) 0, 0)





                                  ;
    }



    for (i = 0; i < 8; i++) {
        do { do { blockR.v[2 * i] = fBlaMka(blockR.v[2 * i], blockR.v[2 * i + 32]); blockR.v[2 * i + 96] = rotr64((blockR.v[2 * i + 96] ^ blockR.v[2 * i]), (32)); blockR.v[2 * i + 64] = fBlaMka(blockR.v[2 * i + 64], blockR.v[2 * i + 96]); blockR.v[2 * i + 32] = rotr64((blockR.v[2 * i + 32] ^ blockR.v[2 * i + 64]), (24)); blockR.v[2 * i] = fBlaMka(blockR.v[2 * i], blockR.v[2 * i + 32]); blockR.v[2 * i + 96] = rotr64((blockR.v[2 * i + 96] ^ blockR.v[2 * i]), (16)); blockR.v[2 * i + 64] = fBlaMka(blockR.v[2 * i + 64], blockR.v[2 * i + 96]); blockR.v[2 * i + 32] = rotr64((blockR.v[2 * i + 32] ^ blockR.v[2 * i + 64]), (63)); } while ((void) 0, 0); do { blockR.v[2 * i + 1] = fBlaMka(blockR.v[2 * i + 1], blockR.v[2 * i + 33]); blockR.v[2 * i + 97] = rotr64((blockR.v[2 * i + 97] ^ blockR.v[2 * i + 1]), (32)); blockR.v[2 * i + 65] = fBlaMka(blockR.v[2 * i + 65], blockR.v[2 * i + 97]); blockR.v[2 * i + 33] = rotr64((blockR.v[2 * i + 33] ^ blockR.v[2 * i + 65]), (24)); blockR.v[2 * i + 1] = fBlaMka(blockR.v[2 * i + 1], blockR.v[2 * i + 33]); blockR.v[2 * i + 97] = rotr64((blockR.v[2 * i + 97] ^ blockR.v[2 * i + 1]), (16)); blockR.v[2 * i + 65] = fBlaMka(blockR.v[2 * i + 65], blockR.v[2 * i + 97]); blockR.v[2 * i + 33] = rotr64((blockR.v[2 * i + 33] ^ blockR.v[2 * i + 65]), (63)); } while ((void) 0, 0); do { blockR.v[2 * i + 16] = fBlaMka(blockR.v[2 * i + 16], blockR.v[2 * i + 48]); blockR.v[2 * i + 112] = rotr64((blockR.v[2 * i + 112] ^ blockR.v[2 * i + 16]), (32)); blockR.v[2 * i + 80] = fBlaMka(blockR.v[2 * i + 80], blockR.v[2 * i + 112]); blockR.v[2 * i + 48] = rotr64((blockR.v[2 * i + 48] ^ blockR.v[2 * i + 80]), (24)); blockR.v[2 * i + 16] = fBlaMka(blockR.v[2 * i + 16], blockR.v[2 * i + 48]); blockR.v[2 * i + 112] = rotr64((blockR.v[2 * i + 112] ^ blockR.v[2 * i + 16]), (16)); blockR.v[2 * i + 80] = fBlaMka(blockR.v[2 * i + 80], blockR.v[2 * i + 112]); blockR.v[2 * i + 48] = rotr64((blockR.v[2 * i + 48] ^ blockR.v[2 * i + 80]), (63)); } while ((void) 0, 0); do { blockR.v[2 * i + 17] = fBlaMka(blockR.v[2 * i + 17], blockR.v[2 * i + 49]); blockR.v[2 * i + 113] = rotr64((blockR.v[2 * i + 113] ^ blockR.v[2 * i + 17]), (32)); blockR.v[2 * i + 81] = fBlaMka(blockR.v[2 * i + 81], blockR.v[2 * i + 113]); blockR.v[2 * i + 49] = rotr64((blockR.v[2 * i + 49] ^ blockR.v[2 * i + 81]), (24)); blockR.v[2 * i + 17] = fBlaMka(blockR.v[2 * i + 17], blockR.v[2 * i + 49]); blockR.v[2 * i + 113] = rotr64((blockR.v[2 * i + 113] ^ blockR.v[2 * i + 17]), (16)); blockR.v[2 * i + 81] = fBlaMka(blockR.v[2 * i + 81], blockR.v[2 * i + 113]); blockR.v[2 * i + 49] = rotr64((blockR.v[2 * i + 49] ^ blockR.v[2 * i + 81]), (63)); } while ((void) 0, 0); do { blockR.v[2 * i] = fBlaMka(blockR.v[2 * i], blockR.v[2 * i + 33]); blockR.v[2 * i + 113] = rotr64((blockR.v[2 * i + 113] ^ blockR.v[2 * i]), (32)); blockR.v[2 * i + 80] = fBlaMka(blockR.v[2 * i + 80], blockR.v[2 * i + 113]); blockR.v[2 * i + 33] = rotr64((blockR.v[2 * i + 33] ^ blockR.v[2 * i + 80]), (24)); blockR.v[2 * i] = fBlaMka(blockR.v[2 * i], blockR.v[2 * i + 33]); blockR.v[2 * i + 113] = rotr64((blockR.v[2 * i + 113] ^ blockR.v[2 * i]), (16)); blockR.v[2 * i + 80] = fBlaMka(blockR.v[2 * i + 80], blockR.v[2 * i + 113]); blockR.v[2 * i + 33] = rotr64((blockR.v[2 * i + 33] ^ blockR.v[2 * i + 80]), (63)); } while ((void) 0, 0); do { blockR.v[2 * i + 1] = fBlaMka(blockR.v[2 * i + 1], blockR.v[2 * i + 48]); blockR.v[2 * i + 96] = rotr64((blockR.v[2 * i + 96] ^ blockR.v[2 * i + 1]), (32)); blockR.v[2 * i + 81] = fBlaMka(blockR.v[2 * i + 81], blockR.v[2 * i + 96]); blockR.v[2 * i + 48] = rotr64((blockR.v[2 * i + 48] ^ blockR.v[2 * i + 81]), (24)); blockR.v[2 * i + 1] = fBlaMka(blockR.v[2 * i + 1], blockR.v[2 * i + 48]); blockR.v[2 * i + 96] = rotr64((blockR.v[2 * i + 96] ^ blockR.v[2 * i + 1]), (16)); blockR.v[2 * i + 81] = fBlaMka(blockR.v[2 * i + 81], blockR.v[2 * i + 96]); blockR.v[2 * i + 48] = rotr64((blockR.v[2 * i + 48] ^ blockR.v[2 * i + 81]), (63)); } while ((void) 0, 0); do { blockR.v[2 * i + 16] = fBlaMka(blockR.v[2 * i + 16], blockR.v[2 * i + 49]); blockR.v[2 * i + 97] = rotr64((blockR.v[2 * i + 97] ^ blockR.v[2 * i + 16]), (32)); blockR.v[2 * i + 64] = fBlaMka(blockR.v[2 * i + 64], blockR.v[2 * i + 97]); blockR.v[2 * i + 49] = rotr64((blockR.v[2 * i + 49] ^ blockR.v[2 * i + 64]), (24)); blockR.v[2 * i + 16] = fBlaMka(blockR.v[2 * i + 16], blockR.v[2 * i + 49]); blockR.v[2 * i + 97] = rotr64((blockR.v[2 * i + 97] ^ blockR.v[2 * i + 16]), (16)); blockR.v[2 * i + 64] = fBlaMka(blockR.v[2 * i + 64], blockR.v[2 * i + 97]); blockR.v[2 * i + 49] = rotr64((blockR.v[2 * i + 49] ^ blockR.v[2 * i + 64]), (63)); } while ((void) 0, 0); do { blockR.v[2 * i + 17] = fBlaMka(blockR.v[2 * i + 17], blockR.v[2 * i + 32]); blockR.v[2 * i + 112] = rotr64((blockR.v[2 * i + 112] ^ blockR.v[2 * i + 17]), (32)); blockR.v[2 * i + 65] = fBlaMka(blockR.v[2 * i + 65], blockR.v[2 * i + 112]); blockR.v[2 * i + 32] = rotr64((blockR.v[2 * i + 32] ^ blockR.v[2 * i + 65]), (24)); blockR.v[2 * i + 17] = fBlaMka(blockR.v[2 * i + 17], blockR.v[2 * i + 32]); blockR.v[2 * i + 112] = rotr64((blockR.v[2 * i + 112] ^ blockR.v[2 * i + 17]), (16)); blockR.v[2 * i + 65] = fBlaMka(blockR.v[2 * i + 65], blockR.v[2 * i + 112]); blockR.v[2 * i + 32] = rotr64((blockR.v[2 * i + 32] ^ blockR.v[2 * i + 65]), (63)); } while ((void) 0, 0); } while ((void) 0, 0)





                                  ;
    }

    copy_block(next_block, &block_tmp);
    xor_block(next_block, &blockR);
}
# 111 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/argon2-fill-block-ref.c"
static void
generate_addresses(const argon2_instance_t *instance,
                   const argon2_position_t *position, uint64_t *pseudo_rands)
{
    block zero_block, input_block, address_block, tmp_block;
    uint32_t i;

    init_block_value(&zero_block, 0);
    init_block_value(&input_block, 0);

    if (instance != 
# 121 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/argon2-fill-block-ref.c" 3 4
                   ((void *)0) 
# 121 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/argon2-fill-block-ref.c"
                        && position != 
# 121 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/argon2-fill-block-ref.c" 3 4
                                       ((void *)0)
# 121 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/argon2-fill-block-ref.c"
                                           ) {
        input_block.v[0] = position->pass;
        input_block.v[1] = position->lane;
        input_block.v[2] = position->slice;
        input_block.v[3] = instance->memory_blocks;
        input_block.v[4] = instance->passes;
        input_block.v[5] = instance->type;

        for (i = 0; i < instance->segment_length; ++i) {
            if (i % ARGON2_ADDRESSES_IN_BLOCK == 0) {
                input_block.v[6]++;
                init_block_value(&tmp_block, 0);
                init_block_value(&address_block, 0);
                fill_block_with_xor(&zero_block, &input_block, &tmp_block);
                fill_block_with_xor(&zero_block, &tmp_block, &address_block);
            }

            pseudo_rands[i] = address_block.v[i % ARGON2_ADDRESSES_IN_BLOCK];
        }
    }
}

int
fill_segment_ref(const argon2_instance_t *instance, argon2_position_t position)
{
    block *ref_block = 
# 146 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/argon2-fill-block-ref.c" 3 4
                         ((void *)0)
# 146 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/argon2-fill-block-ref.c"
                             , *curr_block = 
# 146 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/argon2-fill-block-ref.c" 3 4
                                             ((void *)0)
# 146 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/argon2-fill-block-ref.c"
                                                 ;
    uint64_t pseudo_rand, ref_index, ref_lane;
    uint32_t prev_offset, curr_offset;
    uint32_t starting_index;
    uint32_t i;
    const int data_independent_addressing = 1;

    uint64_t *pseudo_rands = 
# 153 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/argon2-fill-block-ref.c" 3 4
                            ((void *)0)
# 153 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/argon2-fill-block-ref.c"
                                ;

    if (instance == 
# 155 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/argon2-fill-block-ref.c" 3 4
                   ((void *)0)
# 155 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/argon2-fill-block-ref.c"
                       ) {
        return ARGON2_OK;
    }

    pseudo_rands =
        (uint64_t *) malloc(sizeof(uint64_t) * (instance->segment_length));

    if (pseudo_rands == 
# 162 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/argon2-fill-block-ref.c" 3 4
                       ((void *)0)
# 162 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/argon2-fill-block-ref.c"
                           ) {
        return ARGON2_MEMORY_ALLOCATION_ERROR;
    }

    if (data_independent_addressing) {
        generate_addresses(instance, &position, pseudo_rands);
    }

    starting_index = 0;

    if ((0 == position.pass) && (0 == position.slice)) {
        starting_index = 2;
    }


    curr_offset = position.lane * instance->lane_length +
                  position.slice * instance->segment_length + starting_index;

    if (0 == curr_offset % instance->lane_length) {

        prev_offset = curr_offset + instance->lane_length - 1;
    } else {

        prev_offset = curr_offset - 1;
    }

    for (i = starting_index; i < instance->segment_length;
         ++i, ++curr_offset, ++prev_offset) {

        if (curr_offset % instance->lane_length == 1) {
            prev_offset = curr_offset - 1;
        }



        if (data_independent_addressing) {
#pragma warning(push)
#pragma warning(disable : 6385)
            pseudo_rand = pseudo_rands[i];
#pragma warning(pop)
        } else {
            pseudo_rand = instance->region->memory[prev_offset].v[0];
        }


        ref_lane = ((pseudo_rand >> 32)) % instance->lanes;

        if ((position.pass == 0) && (position.slice == 0)) {

            ref_lane = position.lane;
        }




        position.index = i;
        ref_index = index_alpha(instance, &position, pseudo_rand & 0xFFFFFFFF,
                                ref_lane == position.lane);


        ref_block = instance->region->memory +
                    instance->lane_length * ref_lane + ref_index;
        curr_block = instance->region->memory + curr_offset;
        if (position.pass != 0) {
            fill_block_with_xor(instance->region->memory + prev_offset,
                                ref_block, curr_block);
        } else {
            fill_block(instance->region->memory + prev_offset, ref_block,
                       curr_block);
        }
    }

    free(pseudo_rands);

    return ARGON2_OK;
}
