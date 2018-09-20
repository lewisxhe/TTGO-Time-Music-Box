# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
# 1 "D:\\ESP32\\esp-idf-v3.1-rc1\\ESP32_PIC_A2DP\\build\\driver//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
# 14 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
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


# 15 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/math.h" 1





# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/ieeefp.h" 1
# 7 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/math.h" 2







union __dmath
{
  double d;
  __ULong i[2];
};

union __fmath
{
  float f;
  __ULong i[1];
};


union __ldmath
{
  long double ld;
  __ULong i[4];
};
# 108 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/math.h"
extern double atan (double);
extern double cos (double);
extern double sin (double);
extern double tan (double);
extern double tanh (double);
extern double frexp (double, int *);
extern double modf (double, double *);
extern double ceil (double);
extern double fabs (double);
extern double floor (double);






extern double acos (double);
extern double asin (double);
extern double atan2 (double, double);
extern double cosh (double);
extern double sinh (double);
extern double exp (double);
extern double ldexp (double, int);
extern double log (double);
extern double log10 (double);
extern double pow (double, double);
extern double sqrt (double);
extern double fmod (double, double);
# 155 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/math.h"
    typedef float float_t;
    typedef double double_t;
# 199 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/math.h"
extern int __isinff (float x);
extern int __isinfd (double x);
extern int __isnanf (float x);
extern int __isnand (double x);
extern int __fpclassifyf (float x);
extern int __fpclassifyd (double x);
extern int __signbitf (float x);
extern int __signbitd (double x);
# 259 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/math.h"
extern double infinity (void);
extern double nan (const char *);
extern int finite (double);
extern double copysign (double, double);
extern double logb (double);
extern int ilogb (double);

extern double asinh (double);
extern double cbrt (double);
extern double nextafter (double, double);
extern double rint (double);
extern double scalbn (double, int);

extern double exp2 (double);
extern double scalbln (double, long int);
extern double tgamma (double);
extern double nearbyint (double);
extern long int lrint (double);
extern long long int llrint (double);
extern double round (double);
extern long int lround (double);
extern long long int llround (double);
extern double trunc (double);
extern double remquo (double, double, int *);
extern double fdim (double, double);
extern double fmax (double, double);
extern double fmin (double, double);
extern double fma (double, double, double);


extern double log1p (double);
extern double expm1 (double);



extern double acosh (double);
extern double atanh (double);
extern double remainder (double, double);
extern double gamma (double);
extern double lgamma (double);
extern double erf (double);
extern double erfc (double);
extern double log2 (double);





extern double hypot (double, double);






extern float atanf (float);
extern float cosf (float);
extern float sinf (float);
extern float tanf (float);
extern float tanhf (float);
extern float frexpf (float, int *);
extern float modff (float, float *);
extern float ceilf (float);
extern float fabsf (float);
extern float floorf (float);


extern float acosf (float);
extern float asinf (float);
extern float atan2f (float, float);
extern float coshf (float);
extern float sinhf (float);
extern float expf (float);
extern float ldexpf (float, int);
extern float logf (float);
extern float log10f (float);
extern float powf (float, float);
extern float sqrtf (float);
extern float fmodf (float, float);




extern float exp2f (float);
extern float scalblnf (float, long int);
extern float tgammaf (float);
extern float nearbyintf (float);
extern long int lrintf (float);
extern long long int llrintf (float);
extern float roundf (float);
extern long int lroundf (float);
extern long long int llroundf (float);
extern float truncf (float);
extern float remquof (float, float, int *);
extern float fdimf (float, float);
extern float fmaxf (float, float);
extern float fminf (float, float);
extern float fmaf (float, float, float);

extern float infinityf (void);
extern float nanf (const char *);
extern int finitef (float);
extern float copysignf (float, float);
extern float logbf (float);
extern int ilogbf (float);

extern float asinhf (float);
extern float cbrtf (float);
extern float nextafterf (float, float);
extern float rintf (float);
extern float scalbnf (float, int);
extern float log1pf (float);
extern float expm1f (float);


extern float acoshf (float);
extern float atanhf (float);
extern float remainderf (float, float);
extern float gammaf (float);
extern float lgammaf (float);
extern float erff (float);
extern float erfcf (float);
extern float log2f (float);
extern float hypotf (float, float);






extern long double atanl (long double);
extern long double cosl (long double);
extern long double sinl (long double);
extern long double tanl (long double);
extern long double tanhl (long double);
extern long double frexpl (long double, int *);
extern long double modfl (long double, long double *);
extern long double ceill (long double);
extern long double fabsl (long double);
extern long double floorl (long double);
extern long double log1pl (long double);
extern long double expm1l (long double);




extern long double acosl (long double);
extern long double asinl (long double);
extern long double atan2l (long double, long double);
extern long double coshl (long double);
extern long double sinhl (long double);
extern long double expl (long double);
extern long double ldexpl (long double, int);
extern long double logl (long double);
extern long double log10l (long double);
extern long double powl (long double, long double);
extern long double sqrtl (long double);
extern long double fmodl (long double, long double);
extern long double hypotl (long double, long double);


extern long double copysignl (long double, long double);
extern long double nanl (const char *);
extern int ilogbl (long double);
extern long double asinhl (long double);
extern long double cbrtl (long double);
extern long double nextafterl (long double, long double);
extern float nexttowardf (float, long double);
extern double nexttoward (double, long double);
extern long double nexttowardl (long double, long double);
extern long double logbl (long double);
extern long double log2l (long double);
extern long double rintl (long double);
extern long double scalbnl (long double, int);
extern long double exp2l (long double);
extern long double scalblnl (long double, long);
extern long double tgammal (long double);
extern long double nearbyintl (long double);
extern long int lrintl (long double);
extern long long int llrintl (long double);
extern long double roundl (long double);
extern long lroundl (long double);
extern long long int llroundl (long double);
extern long double truncl (long double);
extern long double remquol (long double, long double, int *);
extern long double fdiml (long double, long double);
extern long double fmaxl (long double, long double);
extern long double fminl (long double, long double);
extern long double fmal (long double, long double, long double);

extern long double acoshl (long double);
extern long double atanhl (long double);
extern long double remainderl (long double, long double);
extern long double lgammal (long double);
extern long double erfl (long double);
extern long double erfcl (long double);
# 469 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/math.h"
extern double drem (double, double);
extern void sincos (double, double *, double *);
extern double gamma_r (double, int *);
extern double lgamma_r (double, int *);

extern double y0 (double);
extern double y1 (double);
extern double yn (int, double);
extern double j0 (double);
extern double j1 (double);
extern double jn (int, double);

extern float dremf (float, float);
extern void sincosf (float, float *, float *);
extern float gammaf_r (float, int *);
extern float lgammaf_r (float, int *);

extern float y0f (float);
extern float y1f (float);
extern float ynf (int, float);
extern float j0f (float);
extern float j1f (float);
extern float jnf (int, float);



extern double exp10 (double);


extern double pow10 (double);


extern float exp10f (float);


extern float pow10f (float);
# 514 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/math.h"
extern int *__signgam (void);
# 525 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/math.h"
struct exception

{
  int type;
  char *name;
  double arg1;
  double arg2;
  double retval;
  int err;
};




extern int matherr (struct exception *e);
# 589 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/math.h"
enum __fdlibm_version
{
  __fdlibm_ieee = -1,
  __fdlibm_svid,
  __fdlibm_xopen,
  __fdlibm_posix
};




extern enum __fdlibm_version __fdlib_version;
# 609 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/math.h"

# 16 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_types.h" 1
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_types.h"
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
# 22 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_types.h" 2
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdbool.h" 1 3 4
# 23 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_types.h" 2
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 24 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_types.h" 2
# 17 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/FreeRTOS.h" 1
# 76 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/FreeRTOS.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 77 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/FreeRTOS.h" 2
# 99 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/FreeRTOS.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/FreeRTOSConfig.h" 1
# 73 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/FreeRTOSConfig.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/ESP32_PIC_A2DP/build/include/sdkconfig.h" 1
# 74 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/FreeRTOSConfig.h" 2
# 106 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/FreeRTOSConfig.h"
int xt_clock_freq(void) __attribute__((deprecated));







# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/xtensa_config.h" 1
# 40 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/xtensa_config.h"
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
# 41 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/xtensa_config.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/config/core.h" 1
# 42 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/config/core.h"
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
# 42 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/xtensa_config.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/config/system.h" 1
# 43 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/xtensa_config.h" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/xtensa_context.h" 1
# 45 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/xtensa_context.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/corebits.h" 1
# 46 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/xtensa_context.h" 2

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
# 48 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/xtensa_context.h" 2
# 103 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/xtensa_context.h"
typedef struct {
long exit;
long pc;
long ps;
long a0;
long a1;
long a2;
long a3;
long a4;
long a5;
long a6;
long a7;
long a8;
long a9;
long a10;
long a11;
long a12;
long a13;
long a14;
long a15;
long sar;
long exccause;
long excvaddr;

long lbeg;
long lend;
long lcount;



long tmp0;
long tmp1;
long tmp2;
# 145 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/xtensa_context.h"
} XtExcFrame;
# 202 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/xtensa_context.h"
typedef struct {
# 213 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/xtensa_context.h"
long exit;
long pc;
long ps;
long next;
long a0;
long a1;
long a2;
long a3;

} XtSolFrame;
# 45 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/xtensa_config.h" 2
# 115 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/FreeRTOSConfig.h" 2




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




# 120 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/FreeRTOSConfig.h" 2
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
# 121 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/FreeRTOSConfig.h" 2
# 100 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/FreeRTOS.h" 2


# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/projdefs.h" 1
# 77 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/projdefs.h"
typedef void (*TaskFunction_t)( void * );
# 103 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/FreeRTOS.h" 2


# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portable.h" 1
# 87 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portable.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/deprecated_definitions.h" 1
# 88 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portable.h" 2






# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h" 1
# 80 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/xtruntime.h" 1
# 30 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/xtruntime.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/config/specreg.h" 1
# 31 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/xtruntime.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/xtruntime-core-state.h" 1
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
# 81 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_crosscore_int.h" 1
# 27 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_crosscore_int.h"
void esp_crosscore_int_init();
# 40 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_crosscore_int.h"
void esp_crosscore_int_send_yield(int core_id);
# 52 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_crosscore_int.h"
void esp_crosscore_int_send_freq_switch(int core_id);
# 82 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_timer.h" 1
# 15 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_timer.h"
       
# 43 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_timer.h"
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

# 44 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_timer.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h" 1
# 14 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
       
# 24 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
typedef int32_t esp_err_t;
# 58 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
const char *esp_err_to_name(esp_err_t code);
# 76 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
const char *esp_err_to_name_r(esp_err_t code, char *buf, size_t buflen);


void _esp_error_check_failed(esp_err_t rc, const char *file, int line, const char *function, const char *expression) __attribute__((noreturn));
# 45 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_timer.h" 2
# 53 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_timer.h"
typedef struct esp_timer* esp_timer_handle_t;





typedef void (*esp_timer_cb_t)(void* arg);





typedef enum {
    ESP_TIMER_TASK,







} esp_timer_dispatch_t;




typedef struct {
    esp_timer_cb_t callback;
    void* arg;
    esp_timer_dispatch_t dispatch_method;
    const char* name;
} esp_timer_create_args_t;
# 98 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_timer.h"
esp_err_t esp_timer_init();
# 109 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_timer.h"
esp_err_t esp_timer_deinit();
# 127 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_timer.h"
esp_err_t esp_timer_create(const esp_timer_create_args_t* create_args,
                           esp_timer_handle_t* out_handle);
# 142 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_timer.h"
esp_err_t esp_timer_start_once(esp_timer_handle_t timer, uint64_t timeout_us);
# 157 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_timer.h"
esp_err_t esp_timer_start_periodic(esp_timer_handle_t timer, uint64_t period);
# 170 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_timer.h"
esp_err_t esp_timer_stop(esp_timer_handle_t timer);
# 183 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_timer.h"
esp_err_t esp_timer_delete(esp_timer_handle_t timer);






int64_t esp_timer_get_time();






int64_t esp_timer_get_next_alarm();
# 227 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_timer.h"
esp_err_t esp_timer_dump(FILE* stream);
# 83 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h" 2


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
# 86 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/include/soc/soc_memory_layout.h" 1
# 14 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/include/soc/soc_memory_layout.h"
       





# 1 "D:/ESP32/esp-idf-v3.1-rc1/ESP32_PIC_A2DP/build/include/sdkconfig.h" 1
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/include/soc/soc_memory_layout.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_attr.h" 1
# 22 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/include/soc/soc_memory_layout.h" 2





typedef struct {
    const char *name;
    uint32_t caps[3];
    
# 30 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/include/soc/soc_memory_layout.h" 3 4
   _Bool 
# 30 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/include/soc/soc_memory_layout.h"
        aliased_iram;
    
# 31 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/include/soc/soc_memory_layout.h" 3 4
   _Bool 
# 31 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/include/soc/soc_memory_layout.h"
        startup_stack;
} soc_memory_type_desc_t;


extern const soc_memory_type_desc_t soc_memory_types[];
extern const size_t soc_memory_type_count;



typedef struct
{
    intptr_t start;
    size_t size;
    size_t type;
    intptr_t iram_address;
} soc_memory_region_t;

extern const soc_memory_region_t soc_memory_regions[];
extern const size_t soc_memory_region_count;




typedef struct
{
    intptr_t start;
    intptr_t end;
} soc_reserved_region_t;

extern const soc_reserved_region_t soc_reserved_regions[];
extern const size_t soc_reserved_region_count;

inline static 
# 63 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/include/soc/soc_memory_layout.h" 3 4
             _Bool 
# 63 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/include/soc/soc_memory_layout.h"
                  __attribute__((section(".iram1"))) esp_ptr_dma_capable(const void *p)
{
    return (intptr_t)p >= 0x3FFAE000 && (intptr_t)p < 0x40000000;
}

inline static 
# 68 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/include/soc/soc_memory_layout.h" 3 4
             _Bool 
# 68 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/include/soc/soc_memory_layout.h"
                  __attribute__((section(".iram1"))) esp_ptr_executable(const void *p)
{
    intptr_t ip = (intptr_t) p;
    return (ip >= 0x400D0000 && ip < 0x40400000)
        || (ip >= 0x40080000 && ip < 0x400A0000)
        || (ip >= 0x400C0000 && ip < 0x400C2000);
}

inline static 
# 76 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/include/soc/soc_memory_layout.h" 3 4
             _Bool 
# 76 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/include/soc/soc_memory_layout.h"
                  __attribute__((section(".iram1"))) esp_ptr_byte_accessible(const void *p)
{
    
# 78 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/include/soc/soc_memory_layout.h" 3 4
   _Bool 
# 78 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/include/soc/soc_memory_layout.h"
        r;
    r = ((intptr_t)p >= 0x3FF90000 && (intptr_t)p < 0x40000000);



    return r;
}

inline static 
# 86 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/include/soc/soc_memory_layout.h" 3 4
             _Bool 
# 86 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/include/soc/soc_memory_layout.h"
                  __attribute__((section(".iram1"))) esp_ptr_internal(const void *p) {
    
# 87 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/include/soc/soc_memory_layout.h" 3 4
   _Bool 
# 87 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/include/soc/soc_memory_layout.h"
        r;
    r = ((intptr_t)p >= 0x3FF90000 && (intptr_t)p < 0x400C2000);
    r |= ((intptr_t)p >= 0x50000000 && (intptr_t)p < 0x50002000);
    return r;
}


inline static 
# 94 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/include/soc/soc_memory_layout.h" 3 4
             _Bool 
# 94 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/include/soc/soc_memory_layout.h"
                  __attribute__((section(".iram1"))) esp_ptr_external_ram(const void *p) {
    return ((intptr_t)p >= 0x3F800000 && (intptr_t)p < 0x3FC00000);
}
# 87 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h" 2
# 110 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h"
typedef uint8_t StackType_t;
typedef int BaseType_t;
typedef unsigned int UBaseType_t;





 typedef uint32_t TickType_t;





# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portbenchmark.h" 1
# 125 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/ESP32_PIC_A2DP/build/include/sdkconfig.h" 1
# 127 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h" 2



typedef struct {







 uint32_t owner;




 uint32_t count;




} portMUX_TYPE;
# 173 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h"
void vPortAssertIfInISR();
# 203 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h"
void vPortCPUInitializeMutex(portMUX_TYPE *mux);
# 217 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h"
void vTaskExitCritical( portMUX_TYPE *mux );
void vTaskEnterCritical( portMUX_TYPE *mux );
void vPortCPUAcquireMutex(portMUX_TYPE *mux);
# 229 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h"

# 229 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h" 3 4
_Bool 
# 229 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h"
    vPortCPUAcquireMutexTimeout(portMUX_TYPE *mux, int timeout_cycles);
void vPortCPUReleaseMutex(portMUX_TYPE *mux);
# 248 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h"
static inline unsigned portENTER_CRITICAL_NESTED() {
 unsigned state = ({ unsigned __tmp; __asm__ __volatile__( "rsil	%0, " "3" "\n" : "=a" (__tmp) : : "memory" ); __tmp;});
 ;
 return state;
}
# 281 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h"
static inline void uxPortCompareSet(volatile uint32_t *addr, uint32_t compare, uint32_t *set) {
    __asm__ __volatile__ (
        "WSR 	    %2,SCOMPARE1 \n"
        "S32C1I     %0, %1, 0	 \n"
        :"=r"(*set)
        :"r"(addr), "r"(compare), "0"(*set)
        );
}
# 313 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h"
void vPortYield( void );
void _frxt_setup_switch( void );



static inline uint32_t xPortGetCoreID();
# 339 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h"
typedef struct {

 volatile StackType_t* coproc_area;
# 356 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h"
} xMPU_SETTINGS;
# 367 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h"
extern void esp_vApplicationIdleHook( void );
extern void esp_vApplicationWaitiHook( void );

void _xt_coproc_release(volatile void * coproc_sa_base);

# 371 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h" 3 4
_Bool 
# 371 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h"
    vApplicationSleep( TickType_t xExpectedIdleTime );
# 95 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portable.h" 2
# 125 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portable.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/mpu_wrappers.h" 1
# 126 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portable.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_system.h" 1
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_system.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_sleep.h" 1
# 15 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_sleep.h"
       



# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/gpio.h" 1
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/gpio.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/gpio_reg.h" 1
# 17 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/gpio_reg.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/soc.h" 1
# 18 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/gpio_reg.h" 2
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/gpio.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/gpio_struct.h" 1
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/gpio_struct.h"
typedef volatile struct {
    uint32_t bt_select;
    uint32_t out;
    uint32_t out_w1ts;
    uint32_t out_w1tc;
    union {
        struct {
            uint32_t data: 8;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } out1;
    union {
        struct {
            uint32_t data: 8;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } out1_w1ts;
    union {
        struct {
            uint32_t data: 8;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } out1_w1tc;
    union {
        struct {
            uint32_t sel: 8;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } sdio_select;
    uint32_t enable;
    uint32_t enable_w1ts;
    uint32_t enable_w1tc;
    union {
        struct {
            uint32_t data: 8;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } enable1;
    union {
        struct {
            uint32_t data: 8;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } enable1_w1ts;
    union {
        struct {
            uint32_t data: 8;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } enable1_w1tc;
    union {
        struct {
            uint32_t strapping: 16;
            uint32_t reserved16:16;
        };
        uint32_t val;
    } strap;
    uint32_t in;
    union {
        struct {
            uint32_t data: 8;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } in1;
    uint32_t status;
    uint32_t status_w1ts;
    uint32_t status_w1tc;
    union {
        struct {
            uint32_t intr_st: 8;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } status1;
    union {
        struct {
            uint32_t intr_st: 8;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } status1_w1ts;
    union {
        struct {
            uint32_t intr_st: 8;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } status1_w1tc;
    uint32_t reserved_5c;
    uint32_t acpu_int;
    uint32_t acpu_nmi_int;
    uint32_t pcpu_int;
    uint32_t pcpu_nmi_int;
    uint32_t cpusdio_int;
    union {
        struct {
            uint32_t intr: 8;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } acpu_int1;
    union {
        struct {
            uint32_t intr: 8;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } acpu_nmi_int1;
    union {
        struct {
            uint32_t intr: 8;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } pcpu_int1;
    union {
        struct {
            uint32_t intr: 8;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } pcpu_nmi_int1;
    union {
        struct {
            uint32_t intr: 8;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } cpusdio_int1;
    union {
        struct {
            uint32_t reserved0: 2;
            uint32_t pad_driver: 1;
            uint32_t reserved3: 4;
            uint32_t int_type: 3;
            uint32_t wakeup_enable: 1;
            uint32_t config: 2;
            uint32_t int_ena: 5;
            uint32_t reserved18: 14;
        };
        uint32_t val;
    } pin[40];
    union {
        struct {
            uint32_t rtc_max: 10;
            uint32_t reserved10: 21;
            uint32_t start: 1;
        };
        uint32_t val;
    } cali_conf;
    union {
        struct {
            uint32_t value_sync2: 20;
            uint32_t reserved20: 10;
            uint32_t rdy_real: 1;
            uint32_t rdy_sync2: 1;
        };
        uint32_t val;
    } cali_data;
    union {
        struct {
            uint32_t func_sel: 6;
            uint32_t sig_in_inv: 1;
            uint32_t sig_in_sel: 1;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } func_in_sel_cfg[256];
    union {
        struct {
            uint32_t func_sel: 9;
            uint32_t inv_sel: 1;
            uint32_t oen_sel: 1;
            uint32_t oen_inv_sel: 1;
            uint32_t reserved12: 20;
        };
        uint32_t val;
    } func_out_sel_cfg[40];
} gpio_dev_t;
extern gpio_dev_t GPIO;
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/gpio.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc_io_reg.h" 1
# 22 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/gpio.h" 2
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
# 23 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/gpio.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/gpio_sig_map.h" 1
# 24 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/gpio.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/gpio.h" 1
# 23 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/gpio.h"
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
# 25 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/gpio.h" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_intr_alloc.h" 1
# 83 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_intr_alloc.h"
typedef void (*intr_handler_t)(void *arg);


typedef struct intr_handle_data_t intr_handle_data_t;
typedef intr_handle_data_t* intr_handle_t ;
# 104 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_intr_alloc.h"
esp_err_t esp_intr_mark_shared(int intno, int cpu, 
# 104 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_intr_alloc.h" 3 4
                                                  _Bool 
# 104 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_intr_alloc.h"
                                                       is_in_iram);
# 118 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_intr_alloc.h"
esp_err_t esp_intr_reserve(int intno, int cpu);
# 153 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_intr_alloc.h"
esp_err_t esp_intr_alloc(int source, int flags, intr_handler_t handler, void *arg, intr_handle_t *ret_handle);
# 191 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_intr_alloc.h"
esp_err_t esp_intr_alloc_intrstatus(int source, int flags, uint32_t intrstatusreg, uint32_t intrstatusmask, intr_handler_t handler, void *arg, intr_handle_t *ret_handle);
# 211 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_intr_alloc.h"
esp_err_t esp_intr_free(intr_handle_t handle);
# 221 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_intr_alloc.h"
int esp_intr_get_cpu(intr_handle_t handle);
# 230 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_intr_alloc.h"
int esp_intr_get_intno(intr_handle_t handle);
# 248 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_intr_alloc.h"
esp_err_t esp_intr_disable(intr_handle_t handle);
# 261 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_intr_alloc.h"
esp_err_t esp_intr_enable(intr_handle_t handle);
# 275 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_intr_alloc.h"
esp_err_t esp_intr_set_in_iram(intr_handle_t handle, 
# 275 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_intr_alloc.h" 3 4
                                                    _Bool 
# 275 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_intr_alloc.h"
                                                         is_in_iram);




void esp_intr_noniram_disable();





void esp_intr_noniram_enable();
# 27 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/gpio.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/include/soc/gpio_periph.h" 1
# 25 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/include/soc/gpio_periph.h"
extern const uint32_t GPIO_PIN_MUX_REG[40];
# 28 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/gpio.h" 2
# 130 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/gpio.h"
typedef enum {
    GPIO_NUM_0 = 0,
    GPIO_NUM_1 = 1,
    GPIO_NUM_2 = 2,





    GPIO_NUM_3 = 3,
    GPIO_NUM_4 = 4,
    GPIO_NUM_5 = 5,
    GPIO_NUM_6 = 6,
    GPIO_NUM_7 = 7,
    GPIO_NUM_8 = 8,
    GPIO_NUM_9 = 9,
    GPIO_NUM_10 = 10,
    GPIO_NUM_11 = 11,
    GPIO_NUM_12 = 12,
    GPIO_NUM_13 = 13,
    GPIO_NUM_14 = 14,
    GPIO_NUM_15 = 15,
    GPIO_NUM_16 = 16,
    GPIO_NUM_17 = 17,
    GPIO_NUM_18 = 18,
    GPIO_NUM_19 = 19,

    GPIO_NUM_21 = 21,
    GPIO_NUM_22 = 22,
    GPIO_NUM_23 = 23,

    GPIO_NUM_25 = 25,
    GPIO_NUM_26 = 26,
    GPIO_NUM_27 = 27,

    GPIO_NUM_32 = 32,
    GPIO_NUM_33 = 33,
    GPIO_NUM_34 = 34,
    GPIO_NUM_35 = 35,
    GPIO_NUM_36 = 36,
    GPIO_NUM_37 = 37,
    GPIO_NUM_38 = 38,
    GPIO_NUM_39 = 39,
    GPIO_NUM_MAX = 40,

} gpio_num_t;

typedef enum {
    GPIO_INTR_DISABLE = 0,
    GPIO_INTR_POSEDGE = 1,
    GPIO_INTR_NEGEDGE = 2,
    GPIO_INTR_ANYEDGE = 3,
    GPIO_INTR_LOW_LEVEL = 4,
    GPIO_INTR_HIGH_LEVEL = 5,
    GPIO_INTR_MAX,
} gpio_int_type_t;

typedef enum {
    GPIO_MODE_DISABLE = (0),
    GPIO_MODE_INPUT = (0x00000001),
    GPIO_MODE_OUTPUT = (0x00000002),
    GPIO_MODE_OUTPUT_OD = (((0x00000002))|((0x00000004))),
    GPIO_MODE_INPUT_OUTPUT_OD = (((0x00000001))|((0x00000002))|((0x00000004))),
    GPIO_MODE_INPUT_OUTPUT = (((0x00000001))|((0x00000002))),
} gpio_mode_t;

typedef enum {
    GPIO_PULLUP_DISABLE = 0x0,
    GPIO_PULLUP_ENABLE = 0x1,
} gpio_pullup_t;

typedef enum {
    GPIO_PULLDOWN_DISABLE = 0x0,
    GPIO_PULLDOWN_ENABLE = 0x1,
} gpio_pulldown_t;




typedef struct {
    uint64_t pin_bit_mask;
    gpio_mode_t mode;
    gpio_pullup_t pull_up_en;
    gpio_pulldown_t pull_down_en;
    gpio_int_type_t intr_type;
} gpio_config_t;

typedef enum {
    GPIO_PULLUP_ONLY,
    GPIO_PULLDOWN_ONLY,
    GPIO_PULLUP_PULLDOWN,
    GPIO_FLOATING,
} gpio_pull_mode_t;

typedef enum {
    GPIO_DRIVE_CAP_0 = 0,
    GPIO_DRIVE_CAP_1 = 1,
    GPIO_DRIVE_CAP_2 = 2,
    GPIO_DRIVE_CAP_DEFAULT = 2,
    GPIO_DRIVE_CAP_3 = 3,
    GPIO_DRIVE_CAP_MAX,
} gpio_drive_cap_t;

typedef void (*gpio_isr_t)(void*);
typedef intr_handle_t gpio_isr_handle_t;
# 248 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/gpio.h"
esp_err_t gpio_config(const gpio_config_t *pGPIOConfig);
# 261 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/gpio.h"
esp_err_t gpio_reset_pin(gpio_num_t gpio_num);
# 274 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/gpio.h"
esp_err_t gpio_set_intr_type(gpio_num_t gpio_num, gpio_int_type_t intr_type);
# 290 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/gpio.h"
esp_err_t gpio_intr_enable(gpio_num_t gpio_num);
# 302 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/gpio.h"
esp_err_t gpio_intr_disable(gpio_num_t gpio_num);
# 315 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/gpio.h"
esp_err_t gpio_set_level(gpio_num_t gpio_num, uint32_t level);
# 329 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/gpio.h"
int gpio_get_level(gpio_num_t gpio_num);
# 344 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/gpio.h"
esp_err_t gpio_set_direction(gpio_num_t gpio_num, gpio_mode_t mode);
# 359 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/gpio.h"
esp_err_t gpio_set_pull_mode(gpio_num_t gpio_num, gpio_pull_mode_t pull);
# 372 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/gpio.h"
esp_err_t gpio_wakeup_enable(gpio_num_t gpio_num, gpio_int_type_t intr_type);
# 383 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/gpio.h"
esp_err_t gpio_wakeup_disable(gpio_num_t gpio_num);
# 409 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/gpio.h"
esp_err_t gpio_isr_register(void (*fn)(void*), void * arg, int intr_alloc_flags, gpio_isr_handle_t *handle);
# 420 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/gpio.h"
esp_err_t gpio_pullup_en(gpio_num_t gpio_num);
# 431 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/gpio.h"
esp_err_t gpio_pullup_dis(gpio_num_t gpio_num);
# 442 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/gpio.h"
esp_err_t gpio_pulldown_en(gpio_num_t gpio_num);
# 453 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/gpio.h"
esp_err_t gpio_pulldown_dis(gpio_num_t gpio_num);
# 470 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/gpio.h"
esp_err_t gpio_install_isr_service(int intr_alloc_flags);




void gpio_uninstall_isr_service();
# 501 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/gpio.h"
esp_err_t gpio_isr_handler_add(gpio_num_t gpio_num, gpio_isr_t isr_handler, void* args);
# 513 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/gpio.h"
esp_err_t gpio_isr_handler_remove(gpio_num_t gpio_num);
# 525 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/gpio.h"
esp_err_t gpio_set_drive_capability(gpio_num_t gpio_num, gpio_drive_cap_t strength);
# 537 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/gpio.h"
esp_err_t gpio_get_drive_capability(gpio_num_t gpio_num, gpio_drive_cap_t* strength);
# 555 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/gpio.h"
esp_err_t gpio_hold_en(gpio_num_t gpio_num);
# 566 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/gpio.h"
 esp_err_t gpio_hold_dis(gpio_num_t gpio_num);






void gpio_iomux_in(uint32_t gpio_num, uint32_t signal_idx);
# 582 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/gpio.h"
void gpio_iomux_out(uint8_t gpio_num, int func, 
# 582 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/gpio.h" 3 4
                                               _Bool 
# 582 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/gpio.h"
                                                    oen_inv);
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_sleep.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/touch_pad.h" 1
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/touch_pad.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_intr.h" 1
# 18 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_intr.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h" 1
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_intr.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/xtensa_api.h" 1
# 37 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/xtensa_api.h"
typedef void (*xt_handler)(void *);


typedef void (*xt_exc_handler)(XtExcFrame *);
# 60 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/xtensa_api.h"
extern xt_exc_handler xt_set_exception_handler(int n, xt_exc_handler f);
# 73 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/xtensa_api.h"
extern xt_handler xt_set_interrupt_handler(int n, xt_handler f, void * arg);
# 84 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/xtensa_api.h"
extern void xt_ints_on(unsigned int mask);
# 95 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/xtensa_api.h"
extern void xt_ints_off(unsigned int mask);







static inline void xt_set_intset(unsigned int arg)
{
    xthal_set_intset(arg);
}
# 115 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/xtensa_api.h"
static inline void xt_set_intclear(unsigned int arg)
{
    xthal_set_intclear(arg);
}
# 127 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/xtensa_api.h"
extern void * xt_get_interrupt_handler_arg(int n);
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_intr.h" 2
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/touch_pad.h" 2


# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/touch_channel.h" 1
# 24 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/touch_pad.h" 2

typedef enum {
    TOUCH_PAD_NUM0 = 0,
    TOUCH_PAD_NUM1,
    TOUCH_PAD_NUM2,
    TOUCH_PAD_NUM3,
    TOUCH_PAD_NUM4,
    TOUCH_PAD_NUM5,
    TOUCH_PAD_NUM6,
    TOUCH_PAD_NUM7,
    TOUCH_PAD_NUM8,
    TOUCH_PAD_NUM9,
    TOUCH_PAD_MAX,
} touch_pad_t;

typedef enum {
    TOUCH_HVOLT_KEEP = -1,
    TOUCH_HVOLT_2V4 = 0,
    TOUCH_HVOLT_2V5,
    TOUCH_HVOLT_2V6,
    TOUCH_HVOLT_2V7,
    TOUCH_HVOLT_MAX,
} touch_high_volt_t;

typedef enum {
    TOUCH_LVOLT_KEEP = -1,
    TOUCH_LVOLT_0V5 = 0,
    TOUCH_LVOLT_0V6,
    TOUCH_LVOLT_0V7,
    TOUCH_LVOLT_0V8,
    TOUCH_LVOLT_MAX,
} touch_low_volt_t;

typedef enum {
    TOUCH_HVOLT_ATTEN_KEEP = -1,
    TOUCH_HVOLT_ATTEN_1V5 = 0,
    TOUCH_HVOLT_ATTEN_1V,
    TOUCH_HVOLT_ATTEN_0V5,
    TOUCH_HVOLT_ATTEN_0V,
    TOUCH_HVOLT_ATTEN_MAX,
} touch_volt_atten_t;

typedef enum {
    TOUCH_PAD_SLOPE_0 = 0,
    TOUCH_PAD_SLOPE_1 = 1,
    TOUCH_PAD_SLOPE_2 = 2,
    TOUCH_PAD_SLOPE_3 = 3,
    TOUCH_PAD_SLOPE_4 = 4,
    TOUCH_PAD_SLOPE_5 = 5,
    TOUCH_PAD_SLOPE_6 = 6,
    TOUCH_PAD_SLOPE_7 = 7,
    TOUCH_PAD_SLOPE_MAX,
} touch_cnt_slope_t;

typedef enum {
    TOUCH_TRIGGER_BELOW = 0,
    TOUCH_TRIGGER_ABOVE = 1,
    TOUCH_TRIGGER_MAX,
} touch_trigger_mode_t;

typedef enum {
    TOUCH_TRIGGER_SOURCE_BOTH = 0,
    TOUCH_TRIGGER_SOURCE_SET1 = 1,
    TOUCH_TRIGGER_SOURCE_MAX,
} touch_trigger_src_t;

typedef enum {
    TOUCH_PAD_TIE_OPT_LOW = 0,
    TOUCH_PAD_TIE_OPT_HIGH = 1,
    TOUCH_PAD_TIE_OPT_MAX,
} touch_tie_opt_t;

typedef enum {
    TOUCH_FSM_MODE_TIMER = 0,
    TOUCH_FSM_MODE_SW,
    TOUCH_FSM_MODE_MAX,
} touch_fsm_mode_t;


typedef intr_handle_t touch_isr_handle_t;
# 121 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_init();
# 130 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_deinit();
# 145 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_config(touch_pad_t touch_num, uint16_t threshold);
# 165 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_read(touch_pad_t touch_num, uint16_t * touch_value);
# 182 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_read_filtered(touch_pad_t touch_num, uint16_t *touch_value);
# 200 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_read_raw_data(touch_pad_t touch_num, uint16_t *touch_value);
# 212 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/touch_pad.h"
typedef void (* filter_cb_t)(uint16_t *raw_value, uint16_t *filtered_value);
# 223 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_set_filter_read_cb(filter_cb_t read_cb);
# 238 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_isr_handler_register(void(*fn)(void *), void *arg, int unused, intr_handle_t *handle_unused) __attribute__ ((deprecated));
# 250 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_isr_register(intr_handler_t fn, void* arg);
# 261 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_isr_deregister(void(*fn)(void *), void *arg);
# 274 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_set_meas_time(uint16_t sleep_cycle, uint16_t meas_cycle);
# 283 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_get_meas_time(uint16_t *sleep_cycle, uint16_t *meas_cycle);
# 298 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_set_voltage(touch_high_volt_t refh, touch_low_volt_t refl, touch_volt_atten_t atten);
# 308 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_get_voltage(touch_high_volt_t *refh, touch_low_volt_t *refl, touch_volt_atten_t *atten);
# 323 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_set_cnt_mode(touch_pad_t touch_num, touch_cnt_slope_t slope, touch_tie_opt_t opt);
# 334 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_get_cnt_mode(touch_pad_t touch_num, touch_cnt_slope_t *slope, touch_tie_opt_t *opt);
# 343 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_io_init(touch_pad_t touch_num);
# 353 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_set_fsm_mode(touch_fsm_mode_t mode);







esp_err_t touch_pad_get_fsm_mode(touch_fsm_mode_t *mode);






esp_err_t touch_pad_sw_start();
# 378 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_set_thresh(touch_pad_t touch_num, uint16_t threshold);
# 388 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_get_thresh(touch_pad_t touch_num, uint16_t *threshold);
# 399 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_set_trigger_mode(touch_trigger_mode_t mode);







esp_err_t touch_pad_get_trigger_mode(touch_trigger_mode_t *mode);
# 419 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_set_trigger_source(touch_trigger_src_t src);







esp_err_t touch_pad_get_trigger_source(touch_trigger_src_t *src);
# 441 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_set_group_mask(uint16_t set1_mask, uint16_t set2_mask, uint16_t en_mask);
# 451 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_get_group_mask(uint16_t *set1_mask, uint16_t *set2_mask, uint16_t *en_mask);
# 465 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_clear_group_mask(uint16_t set1_mask, uint16_t set2_mask, uint16_t en_mask);






esp_err_t touch_pad_clear_status();






uint32_t touch_pad_get_status();






esp_err_t touch_pad_intr_enable();






esp_err_t touch_pad_intr_disable();
# 504 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_set_filter_period(uint32_t new_period_ms);
# 515 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_get_filter_period(uint32_t* p_period_ms);
# 534 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_filter_start(uint32_t filter_period_ms);
# 543 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_filter_stop();
# 552 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_filter_delete();
# 561 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/touch_pad.h"
esp_err_t touch_pad_get_wakeup_status(touch_pad_t *pad_num);
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_sleep.h" 2
# 29 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_sleep.h"
typedef enum {
    ESP_EXT1_WAKEUP_ALL_LOW = 0,
    ESP_EXT1_WAKEUP_ANY_HIGH = 1
} esp_sleep_ext1_wakeup_mode_t;




typedef enum {
    ESP_PD_DOMAIN_RTC_PERIPH,
    ESP_PD_DOMAIN_RTC_SLOW_MEM,
    ESP_PD_DOMAIN_RTC_FAST_MEM,
    ESP_PD_DOMAIN_XTAL,
    ESP_PD_DOMAIN_MAX
} esp_sleep_pd_domain_t;




typedef enum {
    ESP_PD_OPTION_OFF,
    ESP_PD_OPTION_ON,
    ESP_PD_OPTION_AUTO
} esp_sleep_pd_option_t;




typedef enum {
    ESP_SLEEP_WAKEUP_UNDEFINED,
    ESP_SLEEP_WAKEUP_EXT0,
    ESP_SLEEP_WAKEUP_EXT1,
    ESP_SLEEP_WAKEUP_TIMER,
    ESP_SLEEP_WAKEUP_TOUCHPAD,
    ESP_SLEEP_WAKEUP_ULP,
} esp_sleep_source_t;


typedef esp_sleep_source_t esp_sleep_wakeup_cause_t;
# 85 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_sleep.h"
esp_err_t esp_sleep_disable_wakeup_source(esp_sleep_source_t source);
# 97 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_sleep.h"
esp_err_t esp_sleep_enable_ulp_wakeup();
# 106 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_sleep.h"
esp_err_t esp_sleep_enable_timer_wakeup(uint64_t time_in_us);
# 123 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_sleep.h"
esp_err_t esp_sleep_enable_touchpad_wakeup();
# 132 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_sleep.h"
touch_pad_t esp_sleep_get_touchpad_wakeup_status();
# 158 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_sleep.h"
esp_err_t esp_sleep_enable_ext0_wakeup(gpio_num_t gpio_num, int level);
# 190 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_sleep.h"
esp_err_t esp_sleep_enable_ext1_wakeup(uint64_t mask, esp_sleep_ext1_wakeup_mode_t mode);
# 200 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_sleep.h"
uint64_t esp_sleep_get_ext1_wakeup_status();
# 213 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_sleep.h"
esp_err_t esp_sleep_pd_config(esp_sleep_pd_domain_t domain,
                                   esp_sleep_pd_option_t option);






void esp_deep_sleep_start() __attribute__((noreturn));
# 230 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_sleep.h"
esp_err_t esp_light_sleep_start();
# 254 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_sleep.h"
void esp_deep_sleep(uint64_t time_in_us) __attribute__((noreturn));
# 264 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_sleep.h"
void system_deep_sleep(uint64_t time_in_us) __attribute__((noreturn, deprecated));







esp_sleep_wakeup_cause_t esp_sleep_get_wakeup_cause();
# 287 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_sleep.h"
void esp_wake_deep_sleep(void);





typedef void (*esp_deep_sleep_wake_stub_fn_t)(void);
# 306 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_sleep.h"
void esp_set_deep_sleep_wake_stub(esp_deep_sleep_wake_stub_fn_t new_stub);






esp_deep_sleep_wake_stub_fn_t esp_get_deep_sleep_wake_stub(void);






void esp_default_wake_deep_sleep(void);
# 22 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_system.h" 2





typedef enum {
    ESP_MAC_WIFI_STA,
    ESP_MAC_WIFI_SOFTAP,
    ESP_MAC_BT,
    ESP_MAC_ETH,
} esp_mac_type_t;
# 42 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_system.h"
void system_init(void) __attribute__ ((deprecated));







void system_restore(void) __attribute__ ((deprecated));

typedef void (*shutdown_handler_t)(void);






esp_err_t esp_register_shutdown_handler(shutdown_handler_t handle);
# 69 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_system.h"
void esp_restart(void) __attribute__ ((noreturn));
# 80 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_system.h"
void esp_restart_noos() __attribute__ ((noreturn));







void system_restart(void) __attribute__ ((deprecated, noreturn));







uint32_t system_get_time(void) __attribute__ ((deprecated));
# 106 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_system.h"
uint32_t esp_get_free_heap_size(void);
# 116 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_system.h"
uint32_t system_get_free_heap_size(void) __attribute__ ((deprecated));






uint32_t esp_get_minimum_free_heap_size( void );
# 138 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_system.h"
uint32_t esp_random(void);
# 153 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_system.h"
esp_err_t esp_base_mac_addr_set(uint8_t *mac);
# 163 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_system.h"
esp_err_t esp_base_mac_addr_get(uint8_t *mac);
# 179 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_system.h"
esp_err_t esp_efuse_mac_get_custom(uint8_t *mac);
# 188 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_system.h"
esp_err_t esp_efuse_mac_get_default(uint8_t *mac);
# 200 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_system.h"
esp_err_t esp_efuse_read_mac(uint8_t *mac) __attribute__ ((deprecated));
# 211 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_system.h"
esp_err_t system_efuse_read_mac(uint8_t *mac) __attribute__ ((deprecated));
# 225 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_system.h"
esp_err_t esp_read_mac(uint8_t* mac, esp_mac_type_t type);
# 241 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_system.h"
esp_err_t esp_derive_local_mac(uint8_t* local_mac, const uint8_t* universal_mac);
# 250 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_system.h"
const char* system_get_sdk_version(void) __attribute__ ((deprecated));






const char* esp_get_idf_version(void);





typedef enum {
    CHIP_ESP32 = 1,
} esp_chip_model_t;
# 278 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_system.h"
typedef struct {
    esp_chip_model_t model;
    uint32_t features;
    uint8_t cores;
    uint8_t revision;
} esp_chip_info_t;





void esp_chip_info(esp_chip_info_t* out_info);
# 127 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portable.h" 2
# 135 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portable.h"
 StackType_t *pxPortInitialiseStack( StackType_t *pxTopOfStack, TaskFunction_t pxCode, void *pvParameters, BaseType_t xRunPrivileged ) ;
# 156 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portable.h"
BaseType_t xPortStartScheduler( void ) ;






void vPortEndScheduler( void ) ;







void vPortYieldOtherCore( BaseType_t coreid) ;






void vPortSetStackWatchpoint( void* pxStackStart );





BaseType_t xPortInIsrContext();





BaseType_t xPortInterruptedFromISRContext();
# 200 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portable.h"
 struct xMEMORY_REGION;
 void vPortStoreTaskMPUSettings( xMPU_SETTINGS *xMPUSettings, const struct xMEMORY_REGION * const xRegions, StackType_t *pxBottomOfStack, uint32_t usStackDepth ) ;
 void vPortReleaseTaskMPUSettings( xMPU_SETTINGS *xMPUSettings );



static inline uint32_t __attribute__((section(".iram1"))) xPortGetCoreID() {
    int id;
    __asm__ (
        "rsr.prid %0\n"
        " extui %0,%0,13,1"
        :"=r"(id));
    return id;
}


uint32_t xPortGetTickRateHz(void);





void uxPortCompareSetExtram(volatile uint32_t *addr, uint32_t compare, uint32_t *set);
# 106 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/FreeRTOS.h" 2
# 851 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/FreeRTOS.h"
struct xSTATIC_LIST_ITEM
{
 TickType_t xDummy1;
 void *pvDummy2[ 4 ];
};
typedef struct xSTATIC_LIST_ITEM StaticListItem_t;


struct xSTATIC_MINI_LIST_ITEM
{
 TickType_t xDummy1;
 void *pvDummy2[ 2 ];
};
typedef struct xSTATIC_MINI_LIST_ITEM StaticMiniListItem_t;


typedef struct xSTATIC_LIST
{
 UBaseType_t uxDummy1;
 void *pvDummy2;
 StaticMiniListItem_t xDummy3;
} StaticList_t;
# 887 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/FreeRTOS.h"
typedef struct xSTATIC_TCB
{
 void *pxDummy1;

  xMPU_SETTINGS xDummy2;

 StaticListItem_t xDummy3[ 2 ];
 UBaseType_t uxDummy5;
 void *pxDummy6;
 uint8_t ucDummy7[ ( 16 ) ];
    UBaseType_t uxDummyCoreId;

  void *pxDummy8;


  UBaseType_t uxDummy9;
        uint32_t OldInterruptState;





  UBaseType_t uxDummy12[ 2 ];





  void *pvDummy15[ 1 ];

  void *pvDummyLocalStorageCallBack[ 1 ];






  struct _reent xDummy17;


  uint32_t ulDummy18;
  uint32_t ucDummy19;



  uint8_t uxDummy20;


} StaticTask_t;
# 951 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/FreeRTOS.h"
typedef struct xSTATIC_QUEUE
{
 void *pvDummy1[ 3 ];

 union
 {
  void *pvDummy2;
  UBaseType_t uxDummy2;
 } u;

 StaticList_t xDummy3[ 2 ];
 UBaseType_t uxDummy4[ 3 ];






  void *pvDummy7;







 portMUX_TYPE muxDummy;

} StaticQueue_t;
typedef StaticQueue_t StaticSemaphore_t;
# 996 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/FreeRTOS.h"
typedef struct xSTATIC_EVENT_GROUP
{
 TickType_t xDummy1;
 StaticList_t xDummy2;
# 1009 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/FreeRTOS.h"
 portMUX_TYPE muxDummy;

} StaticEventGroup_t;
# 1027 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/FreeRTOS.h"
typedef struct xSTATIC_TIMER
{
 void *pvDummy1;
 StaticListItem_t xDummy2;
 TickType_t xDummy3;
 UBaseType_t uxDummy4;
 void *pvDummy5[ 2 ];
# 1042 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/FreeRTOS.h"
} StaticTimer_t;
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/queue.h" 1
# 88 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/queue.h"
typedef void * QueueHandle_t;






typedef void * QueueSetHandle_t;






typedef void * QueueSetMemberHandle_t;
# 613 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/queue.h"
BaseType_t xQueueGenericSend( QueueHandle_t xQueue, const void * const pvItemToQueue, TickType_t xTicksToWait, const BaseType_t xCopyPosition ) ;
# 725 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/queue.h"
BaseType_t xQueuePeekFromISR( QueueHandle_t xQueue, void * const pvBuffer ) ;
# 906 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/queue.h"
BaseType_t xQueueGenericReceive( QueueHandle_t xQueue, void * const pvBuffer, TickType_t xTicksToWait, const BaseType_t xJustPeek ) ;
# 917 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/queue.h"
UBaseType_t uxQueueMessagesWaiting( const QueueHandle_t xQueue ) ;
# 930 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/queue.h"
UBaseType_t uxQueueSpacesAvailable( const QueueHandle_t xQueue ) ;
# 940 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/queue.h"
void vQueueDelete( QueueHandle_t xQueue ) ;
# 1267 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/queue.h"
BaseType_t xQueueGenericSendFromISR( QueueHandle_t xQueue, const void * const pvItemToQueue, BaseType_t * const pxHigherPriorityTaskWoken, const BaseType_t xCopyPosition ) ;
BaseType_t xQueueGiveFromISR( QueueHandle_t xQueue, BaseType_t * const pxHigherPriorityTaskWoken ) ;
# 1347 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/queue.h"
BaseType_t xQueueReceiveFromISR( QueueHandle_t xQueue, void * const pvBuffer, BaseType_t * const pxHigherPriorityTaskWoken ) ;






BaseType_t xQueueIsQueueEmptyFromISR( const QueueHandle_t xQueue ) ;
BaseType_t xQueueIsQueueFullFromISR( const QueueHandle_t xQueue ) ;
UBaseType_t uxQueueMessagesWaitingFromISR( const QueueHandle_t xQueue ) ;
# 1374 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/queue.h"
BaseType_t xQueueAltGenericSend( QueueHandle_t xQueue, const void * const pvItemToQueue, TickType_t xTicksToWait, BaseType_t xCopyPosition );
BaseType_t xQueueAltGenericReceive( QueueHandle_t xQueue, void * const pvBuffer, TickType_t xTicksToWait, BaseType_t xJustPeeking );
# 1390 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/queue.h"
BaseType_t xQueueCRSendFromISR( QueueHandle_t xQueue, const void *pvItemToQueue, BaseType_t xCoRoutinePreviouslyWoken );
BaseType_t xQueueCRReceiveFromISR( QueueHandle_t xQueue, void *pvBuffer, BaseType_t *pxTaskWoken );
BaseType_t xQueueCRSend( QueueHandle_t xQueue, const void *pvItemToQueue, TickType_t xTicksToWait );
BaseType_t xQueueCRReceive( QueueHandle_t xQueue, void *pvBuffer, TickType_t xTicksToWait );






QueueHandle_t xQueueCreateMutex( const uint8_t ucQueueType ) ;
QueueHandle_t xQueueCreateMutexStatic( const uint8_t ucQueueType, StaticQueue_t *pxStaticQueue ) ;
QueueHandle_t xQueueCreateCountingSemaphore( const UBaseType_t uxMaxCount, const UBaseType_t uxInitialCount ) ;
QueueHandle_t xQueueCreateCountingSemaphoreStatic( const UBaseType_t uxMaxCount, const UBaseType_t uxInitialCount, StaticQueue_t *pxStaticQueue ) ;
void* xQueueGetMutexHolder( QueueHandle_t xSemaphore ) ;





BaseType_t xQueueTakeMutexRecursive( QueueHandle_t xMutex, TickType_t xTicksToWait ) ;
BaseType_t xQueueGiveMutexRecursive( QueueHandle_t pxMutex ) ;
# 1488 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/queue.h"
 QueueHandle_t xQueueGenericCreate( const UBaseType_t uxQueueLength, const UBaseType_t uxItemSize, const uint8_t ucQueueType ) ;
# 1548 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/queue.h"
QueueSetHandle_t xQueueCreateSet( const UBaseType_t uxEventQueueLength ) ;
# 1572 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/queue.h"
BaseType_t xQueueAddToSet( QueueSetMemberHandle_t xQueueOrSemaphore, QueueSetHandle_t xQueueSet ) ;
# 1591 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/queue.h"
BaseType_t xQueueRemoveFromSet( QueueSetMemberHandle_t xQueueOrSemaphore, QueueSetHandle_t xQueueSet ) ;
# 1627 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/queue.h"
QueueSetMemberHandle_t xQueueSelectFromSet( QueueSetHandle_t xQueueSet, const TickType_t xTicksToWait ) ;




QueueSetMemberHandle_t xQueueSelectFromSetFromISR( QueueSetHandle_t xQueueSet ) ;



void vQueueWaitForMessageRestricted( QueueHandle_t xQueue, TickType_t xTicksToWait ) ;
BaseType_t xQueueGenericReset( QueueHandle_t xQueue, BaseType_t xNewQueue ) ;
void vQueueSetQueueNumber( QueueHandle_t xQueue, UBaseType_t uxQueueNumber ) ;
UBaseType_t uxQueueGetQueueNumber( QueueHandle_t xQueue ) ;
uint8_t ucQueueGetQueueType( QueueHandle_t xQueue ) ;
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 2


# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/dport_reg.h" 1
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/dport_reg.h"
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

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/uart_reg.h" 1
# 23 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/dport_access.h" 2
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
# 23 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc_cntl_reg.h" 1
# 24 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/sens_reg.h" 1
# 26 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 2
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
# 27 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/efuse_reg.h" 1
# 28 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/lldesc.h" 1
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/lldesc.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/queue.h" 1
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/lldesc.h" 2
# 67 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/lldesc.h"
typedef struct lldesc_s {
    volatile uint32_t size :12,
                        length:12,
                        offset: 5,
                        sosf : 1,
                        eof : 1,
                        owner : 1;
    volatile uint8_t *buf;
    union{
        volatile uint32_t empty;
        struct { struct lldesc_s *stqe_next; } qe;
    };
} lldesc_t;

typedef struct tx_ampdu_entry_s{
    uint32_t sub_len :12,
              dili_num : 7,
                       : 1,
              null_byte: 2,
              data : 1,
              enc : 1,
              seq : 8;
} tx_ampdu_entry_t;

typedef struct lldesc_chain_s {
    lldesc_t *head;
    lldesc_t *tail;
} lldesc_chain_t;
# 127 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/lldesc.h"
void lldesc_build_chain(uint8_t *descptr, uint32_t desclen, uint8_t * mblkptr, uint32_t buflen, uint32_t blksz, uint8_t owner,
                          lldesc_t **head,



                          lldesc_t **tail);

lldesc_t *lldesc_num2link(lldesc_t * head, uint16_t nblks);

lldesc_t *lldesc_set_owner(lldesc_t * head, uint16_t nblks, uint8_t owner);

static inline uint32_t lldesc_get_chain_length(lldesc_t *head)
{
    lldesc_t *ds = head;
    uint32_t len = 0;

    while (ds) {
        len += ds->length;
        ds = ((ds)->qe.stqe_next);
    }

    return len;
}

static inline void lldesc_config(lldesc_t *ds, uint8_t owner, uint8_t eof, uint8_t sosf, uint16_t len)
{
    ds->owner = owner;
    ds->eof = eof;
    ds->sosf = sosf;
    ds->length = len;
}
# 29 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 2


# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2s.h" 1
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2s.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/i2s_struct.h" 1
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/i2s_struct.h"
typedef volatile struct {
    uint32_t reserved_0;
    uint32_t reserved_4;
    union {
        struct {
            uint32_t tx_reset: 1;
            uint32_t rx_reset: 1;
            uint32_t tx_fifo_reset: 1;
            uint32_t rx_fifo_reset: 1;
            uint32_t tx_start: 1;
            uint32_t rx_start: 1;
            uint32_t tx_slave_mod: 1;
            uint32_t rx_slave_mod: 1;
            uint32_t tx_right_first: 1;
            uint32_t rx_right_first: 1;
            uint32_t tx_msb_shift: 1;
            uint32_t rx_msb_shift: 1;
            uint32_t tx_short_sync: 1;
            uint32_t rx_short_sync: 1;
            uint32_t tx_mono: 1;
            uint32_t rx_mono: 1;
            uint32_t tx_msb_right: 1;
            uint32_t rx_msb_right: 1;
            uint32_t sig_loopback: 1;
            uint32_t reserved19: 13;
        };
        uint32_t val;
    } conf;
    union {
        struct {
            uint32_t rx_take_data: 1;
            uint32_t tx_put_data: 1;
            uint32_t rx_wfull: 1;
            uint32_t rx_rempty: 1;
            uint32_t tx_wfull: 1;
            uint32_t tx_rempty: 1;
            uint32_t rx_hung: 1;
            uint32_t tx_hung: 1;
            uint32_t in_done: 1;
            uint32_t in_suc_eof: 1;
            uint32_t in_err_eof: 1;
            uint32_t out_done: 1;
            uint32_t out_eof: 1;
            uint32_t in_dscr_err: 1;
            uint32_t out_dscr_err: 1;
            uint32_t in_dscr_empty: 1;
            uint32_t out_total_eof: 1;
            uint32_t reserved17: 15;
        };
        uint32_t val;
    } int_raw;
    union {
        struct {
            uint32_t rx_take_data: 1;
            uint32_t tx_put_data: 1;
            uint32_t rx_wfull: 1;
            uint32_t rx_rempty: 1;
            uint32_t tx_wfull: 1;
            uint32_t tx_rempty: 1;
            uint32_t rx_hung: 1;
            uint32_t tx_hung: 1;
            uint32_t in_done: 1;
            uint32_t in_suc_eof: 1;
            uint32_t in_err_eof: 1;
            uint32_t out_done: 1;
            uint32_t out_eof: 1;
            uint32_t in_dscr_err: 1;
            uint32_t out_dscr_err: 1;
            uint32_t in_dscr_empty: 1;
            uint32_t out_total_eof: 1;
            uint32_t reserved17: 15;
        };
        uint32_t val;
    } int_st;
    union {
        struct {
            uint32_t rx_take_data: 1;
            uint32_t tx_put_data: 1;
            uint32_t rx_wfull: 1;
            uint32_t rx_rempty: 1;
            uint32_t tx_wfull: 1;
            uint32_t tx_rempty: 1;
            uint32_t rx_hung: 1;
            uint32_t tx_hung: 1;
            uint32_t in_done: 1;
            uint32_t in_suc_eof: 1;
            uint32_t in_err_eof: 1;
            uint32_t out_done: 1;
            uint32_t out_eof: 1;
            uint32_t in_dscr_err: 1;
            uint32_t out_dscr_err: 1;
            uint32_t in_dscr_empty: 1;
            uint32_t out_total_eof: 1;
            uint32_t reserved17: 15;
        };
        uint32_t val;
    } int_ena;
    union {
        struct {
            uint32_t take_data: 1;
            uint32_t put_data: 1;
            uint32_t rx_wfull: 1;
            uint32_t rx_rempty: 1;
            uint32_t tx_wfull: 1;
            uint32_t tx_rempty: 1;
            uint32_t rx_hung: 1;
            uint32_t tx_hung: 1;
            uint32_t in_done: 1;
            uint32_t in_suc_eof: 1;
            uint32_t in_err_eof: 1;
            uint32_t out_done: 1;
            uint32_t out_eof: 1;
            uint32_t in_dscr_err: 1;
            uint32_t out_dscr_err: 1;
            uint32_t in_dscr_empty: 1;
            uint32_t out_total_eof: 1;
            uint32_t reserved17: 15;
        };
        uint32_t val;
    } int_clr;
    union {
        struct {
            uint32_t tx_bck_in_delay: 2;
            uint32_t tx_ws_in_delay: 2;
            uint32_t rx_bck_in_delay: 2;
            uint32_t rx_ws_in_delay: 2;
            uint32_t rx_sd_in_delay: 2;
            uint32_t tx_bck_out_delay: 2;
            uint32_t tx_ws_out_delay: 2;
            uint32_t tx_sd_out_delay: 2;
            uint32_t rx_ws_out_delay: 2;
            uint32_t rx_bck_out_delay: 2;
            uint32_t tx_dsync_sw: 1;
            uint32_t rx_dsync_sw: 1;
            uint32_t data_enable_delay: 2;
            uint32_t tx_bck_in_inv: 1;
            uint32_t reserved25: 7;
        };
        uint32_t val;
    } timing;
    union {
        struct {
            uint32_t rx_data_num: 6;
            uint32_t tx_data_num: 6;
            uint32_t dscr_en: 1;
            uint32_t tx_fifo_mod: 3;
            uint32_t rx_fifo_mod: 3;
            uint32_t tx_fifo_mod_force_en: 1;
            uint32_t rx_fifo_mod_force_en: 1;
            uint32_t reserved21: 11;
        };
        uint32_t val;
    } fifo_conf;
    uint32_t rx_eof_num;
    uint32_t conf_single_data;
    union {
        struct {
            uint32_t tx_chan_mod: 3;
            uint32_t rx_chan_mod: 2;
            uint32_t reserved5: 27;
        };
        uint32_t val;
    } conf_chan;
    union {
        struct {
            uint32_t addr: 20;
            uint32_t reserved20: 8;
            uint32_t stop: 1;
            uint32_t start: 1;
            uint32_t restart: 1;
            uint32_t park: 1;
        };
        uint32_t val;
    } out_link;
    union {
        struct {
            uint32_t addr: 20;
            uint32_t reserved20: 8;
            uint32_t stop: 1;
            uint32_t start: 1;
            uint32_t restart: 1;
            uint32_t park: 1;
        };
        uint32_t val;
    } in_link;
    uint32_t out_eof_des_addr;
    uint32_t in_eof_des_addr;
    uint32_t out_eof_bfr_des_addr;
    union {
        struct {
            uint32_t mode: 3;
            uint32_t reserved3: 1;
            uint32_t addr: 2;
            uint32_t reserved6: 26;
        };
        uint32_t val;
    } ahb_test;
    uint32_t in_link_dscr;
    uint32_t in_link_dscr_bf0;
    uint32_t in_link_dscr_bf1;
    uint32_t out_link_dscr;
    uint32_t out_link_dscr_bf0;
    uint32_t out_link_dscr_bf1;
    union {
        struct {
            uint32_t in_rst: 1;
            uint32_t out_rst: 1;
            uint32_t ahbm_fifo_rst: 1;
            uint32_t ahbm_rst: 1;
            uint32_t out_loop_test: 1;
            uint32_t in_loop_test: 1;
            uint32_t out_auto_wrback: 1;
            uint32_t out_no_restart_clr: 1;
            uint32_t out_eof_mode: 1;
            uint32_t outdscr_burst_en: 1;
            uint32_t indscr_burst_en: 1;
            uint32_t out_data_burst_en: 1;
            uint32_t check_owner: 1;
            uint32_t mem_trans_en: 1;
            uint32_t reserved14: 18;
        };
        uint32_t val;
    } lc_conf;
    union {
        struct {
            uint32_t wdata: 9;
            uint32_t reserved9: 7;
            uint32_t push: 1;
            uint32_t reserved17: 15;
        };
        uint32_t val;
    } out_fifo_push;
    union {
        struct {
            uint32_t rdata: 12;
            uint32_t reserved12: 4;
            uint32_t pop: 1;
            uint32_t reserved17: 15;
        };
        uint32_t val;
    } in_fifo_pop;
    uint32_t lc_state0;
    uint32_t lc_state1;
    union {
        struct {
            uint32_t fifo_timeout: 8;
            uint32_t fifo_timeout_shift: 3;
            uint32_t fifo_timeout_ena: 1;
            uint32_t reserved12: 20;
        };
        uint32_t val;
    } lc_hung_conf;
    uint32_t reserved_78;
    uint32_t reserved_7c;
    union {
        struct {
            uint32_t y_max:16;
            uint32_t y_min:16;
        };
        uint32_t val;
    } cvsd_conf0;
    union {
        struct {
            uint32_t sigma_max:16;
            uint32_t sigma_min:16;
        };
        uint32_t val;
    } cvsd_conf1;
    union {
        struct {
            uint32_t cvsd_k: 3;
            uint32_t cvsd_j: 3;
            uint32_t cvsd_beta: 10;
            uint32_t cvsd_h: 3;
            uint32_t reserved19:13;
        };
        uint32_t val;
    } cvsd_conf2;
    union {
        struct {
            uint32_t good_pack_max: 6;
            uint32_t n_err_seg: 3;
            uint32_t shift_rate: 3;
            uint32_t max_slide_sample: 8;
            uint32_t pack_len_8k: 5;
            uint32_t n_min_err: 3;
            uint32_t reserved28: 4;
        };
        uint32_t val;
    } plc_conf0;
    union {
        struct {
            uint32_t bad_cef_atten_para: 8;
            uint32_t bad_cef_atten_para_shift: 4;
            uint32_t bad_ola_win2_para_shift: 4;
            uint32_t bad_ola_win2_para: 8;
            uint32_t slide_win_len: 8;
        };
        uint32_t val;
    } plc_conf1;
    union {
        struct {
            uint32_t cvsd_seg_mod: 2;
            uint32_t min_period: 5;
            uint32_t reserved7: 25;
        };
        uint32_t val;
    } plc_conf2;
    union {
        struct {
            uint32_t en: 1;
            uint32_t chan_mod: 1;
            uint32_t cvsd_dec_pack_err: 1;
            uint32_t cvsd_pack_len_8k: 5;
            uint32_t cvsd_inf_en: 1;
            uint32_t cvsd_dec_start: 1;
            uint32_t cvsd_dec_reset: 1;
            uint32_t plc_en: 1;
            uint32_t plc2dma_en: 1;
            uint32_t reserved13: 19;
        };
        uint32_t val;
    } esco_conf0;
    union {
        struct {
            uint32_t with_en: 1;
            uint32_t no_en: 1;
            uint32_t cvsd_enc_start: 1;
            uint32_t cvsd_enc_reset: 1;
            uint32_t reserved4: 28;
        };
        uint32_t val;
    } sco_conf0;
    union {
        struct {
            uint32_t tx_pcm_conf: 3;
            uint32_t tx_pcm_bypass: 1;
            uint32_t rx_pcm_conf: 3;
            uint32_t rx_pcm_bypass: 1;
            uint32_t tx_stop_en: 1;
            uint32_t tx_zeros_rm_en: 1;
            uint32_t reserved10: 22;
        };
        uint32_t val;
    } conf1;
    union {
        struct {
            uint32_t fifo_force_pd: 1;
            uint32_t fifo_force_pu: 1;
            uint32_t plc_mem_force_pd: 1;
            uint32_t plc_mem_force_pu: 1;
            uint32_t reserved4: 28;
        };
        uint32_t val;
    } pd_conf;
    union {
        struct {
            uint32_t camera_en: 1;
            uint32_t lcd_tx_wrx2_en: 1;
            uint32_t lcd_tx_sdx2_en: 1;
            uint32_t data_enable_test_en: 1;
            uint32_t data_enable: 1;
            uint32_t lcd_en: 1;
            uint32_t ext_adc_start_en: 1;
            uint32_t inter_valid_en: 1;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } conf2;
    union {
        struct {
            uint32_t clkm_div_num: 8;
            uint32_t clkm_div_b: 6;
            uint32_t clkm_div_a: 6;
            uint32_t clk_en: 1;
            uint32_t clka_en: 1;
            uint32_t reserved22: 10;
        };
        uint32_t val;
    } clkm_conf;
    union {
        struct {
            uint32_t tx_bck_div_num: 6;
            uint32_t rx_bck_div_num: 6;
            uint32_t tx_bits_mod: 6;
            uint32_t rx_bits_mod: 6;
            uint32_t reserved24: 8;
        };
        uint32_t val;
    } sample_rate_conf;
    union {
        struct {
            uint32_t tx_pdm_en: 1;
            uint32_t rx_pdm_en: 1;
            uint32_t pcm2pdm_conv_en: 1;
            uint32_t pdm2pcm_conv_en: 1;
            uint32_t tx_sinc_osr2: 4;
            uint32_t tx_prescale: 8;
            uint32_t tx_hp_in_shift: 2;
            uint32_t tx_lp_in_shift: 2;
            uint32_t tx_sinc_in_shift: 2;
            uint32_t tx_sigmadelta_in_shift: 2;
            uint32_t rx_sinc_dsr_16_en: 1;
            uint32_t txhp_bypass: 1;
            uint32_t reserved26: 6;
        };
        uint32_t val;
    } pdm_conf;
    union {
        struct {
            uint32_t tx_pdm_fs: 10;
            uint32_t tx_pdm_fp: 10;
            uint32_t reserved20:12;
        };
        uint32_t val;
    } pdm_freq_conf;
    union {
        struct {
            uint32_t tx_idle: 1;
            uint32_t tx_fifo_reset_back: 1;
            uint32_t rx_fifo_reset_back: 1;
            uint32_t reserved3: 29;
        };
        uint32_t val;
    } state;
    uint32_t reserved_c0;
    uint32_t reserved_c4;
    uint32_t reserved_c8;
    uint32_t reserved_cc;
    uint32_t reserved_d0;
    uint32_t reserved_d4;
    uint32_t reserved_d8;
    uint32_t reserved_dc;
    uint32_t reserved_e0;
    uint32_t reserved_e4;
    uint32_t reserved_e8;
    uint32_t reserved_ec;
    uint32_t reserved_f0;
    uint32_t reserved_f4;
    uint32_t reserved_f8;
    uint32_t date;
} i2s_dev_t;
extern i2s_dev_t I2S0;
extern i2s_dev_t I2S1;
# 22 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2s.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/i2s_reg.h" 1
# 23 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2s.h" 2





# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/periph_ctrl.h" 1
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/periph_ctrl.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/periph_defs.h" 1
# 22 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/periph_defs.h"
typedef enum {
    PERIPH_LEDC_MODULE = 0,
    PERIPH_UART0_MODULE,
    PERIPH_UART1_MODULE,
    PERIPH_UART2_MODULE,
    PERIPH_I2C0_MODULE,
    PERIPH_I2C1_MODULE,
    PERIPH_I2S0_MODULE,
    PERIPH_I2S1_MODULE,
    PERIPH_TIMG0_MODULE,
    PERIPH_TIMG1_MODULE,
    PERIPH_PWM0_MODULE,
    PERIPH_PWM1_MODULE,
    PERIPH_PWM2_MODULE,
    PERIPH_PWM3_MODULE,
    PERIPH_UHCI0_MODULE,
    PERIPH_UHCI1_MODULE,
    PERIPH_RMT_MODULE,
    PERIPH_PCNT_MODULE,
    PERIPH_SPI_MODULE,
    PERIPH_HSPI_MODULE,
    PERIPH_VSPI_MODULE,
    PERIPH_SPI_DMA_MODULE,
    PERIPH_SDMMC_MODULE,
    PERIPH_SDIO_SLAVE_MODULE,
    PERIPH_CAN_MODULE,
    PERIPH_EMAC_MODULE,
    PERIPH_RNG_MODULE,
    PERIPH_WIFI_MODULE,
    PERIPH_BT_MODULE,
    PERIPH_WIFI_BT_COMMON_MODULE,
    PERIPH_BT_BASEBAND_MODULE,
    PERIPH_BT_LC_MODULE,
} periph_module_t;
# 22 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/periph_ctrl.h" 2
# 37 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/periph_ctrl.h"
void periph_module_enable(periph_module_t periph);
# 49 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/periph_ctrl.h"
void periph_module_disable(periph_module_t periph);
# 63 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/periph_ctrl.h"
void periph_module_reset(periph_module_t periph);
# 29 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2s.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/adc.h" 1
# 26 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/adc.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/adc_channel.h" 1
# 27 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/adc.h" 2

typedef enum {
    ADC_ATTEN_DB_0 = 0,
    ADC_ATTEN_DB_2_5 = 1,
    ADC_ATTEN_DB_6 = 2,
    ADC_ATTEN_DB_11 = 3,
    ADC_ATTEN_MAX,
} adc_atten_t;

typedef enum {
    ADC_WIDTH_BIT_9 = 0,
    ADC_WIDTH_BIT_10 = 1,
    ADC_WIDTH_BIT_11 = 2,
    ADC_WIDTH_BIT_12 = 3,
    ADC_WIDTH_MAX,
} adc_bits_width_t;
# 55 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/adc.h"
typedef enum {
    ADC1_CHANNEL_0 = 0,
    ADC1_CHANNEL_1,
    ADC1_CHANNEL_2,
    ADC1_CHANNEL_3,
    ADC1_CHANNEL_4,
    ADC1_CHANNEL_5,
    ADC1_CHANNEL_6,
    ADC1_CHANNEL_7,
    ADC1_CHANNEL_MAX,
} adc1_channel_t;

typedef enum {
    ADC2_CHANNEL_0 = 0,
    ADC2_CHANNEL_1,
    ADC2_CHANNEL_2,
    ADC2_CHANNEL_3,
    ADC2_CHANNEL_4,
    ADC2_CHANNEL_5,
    ADC2_CHANNEL_6,
    ADC2_CHANNEL_7,
    ADC2_CHANNEL_8,
    ADC2_CHANNEL_9,
    ADC2_CHANNEL_MAX,
} adc2_channel_t;

typedef enum {
    ADC_CHANNEL_0 = 0,
    ADC_CHANNEL_1,
    ADC_CHANNEL_2,
    ADC_CHANNEL_3,
    ADC_CHANNEL_4,
    ADC_CHANNEL_5,
    ADC_CHANNEL_6,
    ADC_CHANNEL_7,
    ADC_CHANNEL_8,
    ADC_CHANNEL_9,
    ADC_CHANNEL_MAX,
} adc_channel_t;

typedef enum {
    ADC_UNIT_1 = 1,
    ADC_UNIT_2 = 2,
    ADC_UNIT_BOTH = 3,
    ADC_UNIT_ALTER = 7,
    ADC_UNIT_MAX,
} adc_unit_t;

typedef enum {
    ADC_ENCODE_12BIT,
    ADC_ENCODE_11BIT,
    ADC_ENCODE_MAX,
} adc_i2s_encode_t;

typedef enum {
    ADC_I2S_DATA_SRC_IO_SIG = 0,
    ADC_I2S_DATA_SRC_ADC = 1,
    ADC_I2S_DATA_SRC_MAX,
} adc_i2s_source_t;
# 126 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/adc.h"
esp_err_t adc1_pad_get_io_num(adc1_channel_t channel, gpio_num_t *gpio_num);
# 137 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/adc.h"
esp_err_t adc1_config_width(adc_bits_width_t width_bit);
# 147 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/adc.h"
esp_err_t adc_set_data_width(adc_unit_t adc_unit, adc_bits_width_t width_bit);
# 191 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/adc.h"
esp_err_t adc1_config_channel_atten(adc1_channel_t channel, adc_atten_t atten);
# 213 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/adc.h"
int adc1_get_raw(adc1_channel_t channel);
# 226 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/adc.h"
int adc1_get_voltage(adc1_channel_t channel) __attribute__((deprecated));





void adc_power_on();





void adc_power_off();
# 248 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/adc.h"
esp_err_t adc_gpio_init(adc_unit_t adc_unit, adc_channel_t channel);
# 258 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/adc.h"
esp_err_t adc_set_data_inv(adc_unit_t adc_unit, 
# 258 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/adc.h" 3 4
                                               _Bool 
# 258 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/adc.h"
                                                    inv_en);







esp_err_t adc_set_clk_div(uint8_t clk_div);







esp_err_t adc_set_i2s_data_source(adc_i2s_source_t src);
# 284 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/adc.h"
esp_err_t adc_i2s_mode_init(adc_unit_t adc_unit, adc_channel_t channel);
# 295 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/adc.h"
void adc1_ulp_enable();
# 316 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/adc.h"
int hall_sensor_read();
# 329 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/adc.h"
esp_err_t adc2_pad_get_io_num(adc2_channel_t channel, gpio_num_t *gpio_num);
# 361 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/adc.h"
esp_err_t adc2_config_channel_atten(adc2_channel_t channel, adc_atten_t atten);
# 385 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/adc.h"
esp_err_t adc2_get_raw(adc2_channel_t channel, adc_bits_width_t width_bit, int* raw_out);
# 401 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/adc.h"
esp_err_t adc2_vref_to_gpio(gpio_num_t gpio);
# 30 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2s.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/semphr.h" 1
# 77 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/semphr.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/queue.h" 1
# 78 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/semphr.h" 2

typedef QueueHandle_t SemaphoreHandle_t;
# 31 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2s.h" 2
# 40 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2s.h"
typedef enum {
    I2S_BITS_PER_SAMPLE_8BIT = 8,
    I2S_BITS_PER_SAMPLE_16BIT = 16,
    I2S_BITS_PER_SAMPLE_24BIT = 24,
    I2S_BITS_PER_SAMPLE_32BIT = 32,
} i2s_bits_per_sample_t;





typedef enum {
    I2S_CHANNEL_MONO = 1,
    I2S_CHANNEL_STEREO = 2
} i2s_channel_t;





typedef enum {
    I2S_COMM_FORMAT_I2S = 0x01,
    I2S_COMM_FORMAT_I2S_MSB = 0x02,
    I2S_COMM_FORMAT_I2S_LSB = 0x04,
    I2S_COMM_FORMAT_PCM = 0x08,
    I2S_COMM_FORMAT_PCM_SHORT = 0x10,
    I2S_COMM_FORMAT_PCM_LONG = 0x20,
} i2s_comm_format_t;





typedef enum {
    I2S_CHANNEL_FMT_RIGHT_LEFT = 0x00,
    I2S_CHANNEL_FMT_ALL_RIGHT,
    I2S_CHANNEL_FMT_ALL_LEFT,
    I2S_CHANNEL_FMT_ONLY_RIGHT,
    I2S_CHANNEL_FMT_ONLY_LEFT,
} i2s_channel_fmt_t;





typedef enum {
    PDM_SAMPLE_RATE_RATIO_64,
    PDM_SAMPLE_RATE_RATIO_128,
} pdm_sample_rate_ratio_t;





typedef enum {
    PDM_PCM_CONV_ENABLE,
    PDM_PCM_CONV_DISABLE,
} pdm_pcm_conv_t;






typedef enum {
    I2S_NUM_0 = 0x0,
    I2S_NUM_1 = 0x1,
    I2S_NUM_MAX,
} i2s_port_t;







typedef enum {
    I2S_MODE_MASTER = 1,
    I2S_MODE_SLAVE = 2,
    I2S_MODE_TX = 4,
    I2S_MODE_RX = 8,
    I2S_MODE_DAC_BUILT_IN = 16,
    I2S_MODE_ADC_BUILT_IN = 32,
    I2S_MODE_PDM = 64,
} i2s_mode_t;







typedef struct {
    i2s_mode_t mode;
    int sample_rate;
    i2s_bits_per_sample_t bits_per_sample;
    i2s_channel_fmt_t channel_format;
    i2s_comm_format_t communication_format;
    int intr_alloc_flags;
    int dma_buf_count;
    int dma_buf_len;
    
# 141 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2s.h" 3 4
   _Bool 
# 141 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2s.h"
                           use_apll;
    int fixed_mclk;
} i2s_config_t;





typedef enum {
    I2S_EVENT_DMA_ERROR,
    I2S_EVENT_TX_DONE,
    I2S_EVENT_RX_DONE,
    I2S_EVENT_MAX,
} i2s_event_type_t;






typedef enum {
    I2S_DAC_CHANNEL_DISABLE = 0,
    I2S_DAC_CHANNEL_RIGHT_EN = 1,
    I2S_DAC_CHANNEL_LEFT_EN = 2,
    I2S_DAC_CHANNEL_BOTH_EN = 0x3,
    I2S_DAC_CHANNEL_MAX = 0x4,
} i2s_dac_mode_t;





typedef struct {
    i2s_event_type_t type;
    size_t size;
} i2s_event_t;







typedef struct {
    int bck_io_num;
    int ws_io_num;
    int data_out_num;
    int data_in_num;
} i2s_pin_config_t;


typedef intr_handle_t i2s_isr_handle_t;
# 215 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2s.h"
esp_err_t i2s_set_pin(i2s_port_t i2s_num, const i2s_pin_config_t *pin);
# 230 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2s.h"
esp_err_t i2s_set_dac_mode(i2s_dac_mode_t dac_mode);
# 250 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2s.h"
esp_err_t i2s_driver_install(i2s_port_t i2s_num, const i2s_config_t *i2s_config, int queue_size, void* i2s_queue);
# 261 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2s.h"
esp_err_t i2s_driver_uninstall(i2s_port_t i2s_num);
# 273 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2s.h"
int i2s_write_bytes(i2s_port_t i2s_num, const void *src, size_t size, TickType_t ticks_to_wait) __attribute__ ((deprecated));
# 297 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2s.h"
esp_err_t i2s_write(i2s_port_t i2s_num, const void *src, size_t size, size_t *bytes_written, TickType_t ticks_to_wait);
# 328 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2s.h"
esp_err_t i2s_write_expand(i2s_port_t i2s_num, const void *src, size_t size, size_t src_bits, size_t aim_bits, size_t *bytes_written, TickType_t ticks_to_wait);
# 340 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2s.h"
int i2s_read_bytes(i2s_port_t i2s_num, void *dest, size_t size, TickType_t ticks_to_wait) __attribute__ ((deprecated));
# 362 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2s.h"
esp_err_t i2s_read(i2s_port_t i2s_num, void *dest, size_t size, size_t *bytes_read, TickType_t ticks_to_wait);
# 380 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2s.h"
int i2s_push_sample(i2s_port_t i2s_num, const void *sample, TickType_t ticks_to_wait) __attribute__ ((deprecated));
# 398 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2s.h"
int i2s_pop_sample(i2s_port_t i2s_num, void *sample, TickType_t ticks_to_wait) __attribute__ ((deprecated));
# 416 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2s.h"
esp_err_t i2s_set_sample_rates(i2s_port_t i2s_num, uint32_t rate);
# 429 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2s.h"
esp_err_t i2s_stop(i2s_port_t i2s_num);
# 443 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2s.h"
esp_err_t i2s_start(i2s_port_t i2s_num);
# 456 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2s.h"
esp_err_t i2s_zero_dma_buffer(i2s_port_t i2s_num);
# 476 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2s.h"
esp_err_t i2s_set_clk(i2s_port_t i2s_num, uint32_t rate, i2s_bits_per_sample_t bits, i2s_channel_t ch);
# 487 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2s.h"
esp_err_t i2s_set_adc_mode(adc_unit_t adc_unit, adc1_channel_t adc_channel);
# 500 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2s.h"
esp_err_t i2s_adc_enable(i2s_port_t i2s_num);
# 511 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2s.h"
esp_err_t i2s_adc_disable(i2s_port_t i2s_num);
# 32 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/rtc_io.h" 1
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/rtc_io.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc_gpio_channel.h" 1
# 22 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/rtc_io.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/include/soc/rtc_periph.h" 1
# 33 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/include/soc/rtc_periph.h"
typedef struct {
    uint32_t reg;
    uint32_t mux;
    uint32_t func;
    uint32_t ie;
    uint32_t pullup;
    uint32_t pulldown;
    uint32_t slpsel;
    uint32_t slpie;
    uint32_t hold;
    uint32_t hold_force;
    uint32_t drv_v;
    uint32_t drv_s;
    int rtc_num;
} rtc_gpio_desc_t;
# 56 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/include/soc/rtc_periph.h"
extern const rtc_gpio_desc_t rtc_gpio_desc[40];
# 23 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/rtc_io.h" 2




typedef enum {
    RTC_GPIO_MODE_INPUT_ONLY ,
    RTC_GPIO_MODE_OUTPUT_ONLY,
    RTC_GPIO_MODE_INPUT_OUTPUT,
    RTC_GPIO_MODE_DISABLED,
} rtc_gpio_mode_t;







inline static 
# 40 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/rtc_io.h" 3 4
             _Bool 
# 40 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/rtc_io.h"
                  rtc_gpio_is_valid_gpio(gpio_num_t gpio_num)
{
    return gpio_num < 40
        && rtc_gpio_desc[gpio_num].reg != 0;
}
# 59 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/rtc_io.h"
esp_err_t rtc_gpio_init(gpio_num_t gpio_num);
# 70 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/rtc_io.h"
esp_err_t rtc_gpio_deinit(gpio_num_t gpio_num);
# 82 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/rtc_io.h"
uint32_t rtc_gpio_get_level(gpio_num_t gpio_num);
# 94 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/rtc_io.h"
esp_err_t rtc_gpio_set_level(gpio_num_t gpio_num, uint32_t level);
# 109 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/rtc_io.h"
esp_err_t rtc_gpio_set_direction(gpio_num_t gpio_num, rtc_gpio_mode_t mode);
# 123 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/rtc_io.h"
esp_err_t rtc_gpio_pullup_en(gpio_num_t gpio_num);
# 137 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/rtc_io.h"
esp_err_t rtc_gpio_pulldown_en(gpio_num_t gpio_num);
# 151 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/rtc_io.h"
esp_err_t rtc_gpio_pullup_dis(gpio_num_t gpio_num);
# 165 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/rtc_io.h"
esp_err_t rtc_gpio_pulldown_dis(gpio_num_t gpio_num);
# 180 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/rtc_io.h"
esp_err_t rtc_gpio_hold_en(gpio_num_t gpio_num);
# 194 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/rtc_io.h"
esp_err_t rtc_gpio_hold_dis(gpio_num_t gpio_num);
# 212 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/rtc_io.h"
esp_err_t rtc_gpio_isolate(gpio_num_t gpio_num);
# 223 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/rtc_io.h"
void rtc_gpio_force_hold_dis_all();
# 235 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/rtc_io.h"
esp_err_t rtc_gpio_set_drive_capability(gpio_num_t gpio_num, gpio_drive_cap_t strength);
# 247 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/rtc_io.h"
esp_err_t rtc_gpio_get_drive_capability(gpio_num_t gpio_num, gpio_drive_cap_t* strength);
# 33 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/dac.h" 1
# 24 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/dac.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/dac_channel.h" 1
# 25 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/dac.h" 2

typedef enum {
    DAC_CHANNEL_1 = 1,
    DAC_CHANNEL_2,
    DAC_CHANNEL_MAX,
} dac_channel_t;
# 43 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/dac.h"
esp_err_t dac_pad_get_io_num(dac_channel_t channel, gpio_num_t *gpio_num);
# 61 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/dac.h"
esp_err_t dac_out_voltage(dac_channel_t channel, uint8_t dac_value) __attribute__ ((deprecated));
# 79 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/dac.h"
esp_err_t dac_output_voltage(dac_channel_t channel, uint8_t dac_value);
# 89 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/dac.h"
esp_err_t dac_output_enable(dac_channel_t channel);







esp_err_t dac_output_disable(dac_channel_t channel);




esp_err_t dac_i2s_enable();




esp_err_t dac_i2s_disable();
# 34 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/adc1_i2s_private.h" 1
# 32 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/adc1_i2s_private.h"
void adc_power_always_on();
# 44 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/adc1_i2s_private.h"
esp_err_t adc1_i2s_mode_acquire();
# 56 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/adc1_i2s_private.h"
esp_err_t adc1_adc_mode_acquire();
# 66 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/adc1_i2s_private.h"
esp_err_t adc1_lock_release();
# 35 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 2



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
# 39 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 2

static const char* I2S_TAG = "I2S";
# 60 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
typedef struct {
    char **buf;
    int buf_size;
    int rw_pos;
    void *curr_ptr;
    SemaphoreHandle_t mux;
    QueueHandle_t queue;
    lldesc_t **desc;
} i2s_dma_t;





typedef struct {
    i2s_port_t i2s_num;
    int queue_size;
    QueueHandle_t i2s_queue;
    int dma_buf_count;
    int dma_buf_len;
    i2s_dma_t *rx;
    i2s_dma_t *tx;
    i2s_isr_handle_t i2s_isr_handle;
    int channel_num;
    int bytes_per_sample;
    int bits_per_sample;
    i2s_mode_t mode;
    uint32_t sample_rate;
    
# 88 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 3 4
   _Bool 
# 88 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
        use_apll;
    int fixed_mclk;
} i2s_obj_t;

static i2s_obj_t *p_i2s_obj[I2S_NUM_MAX] = {0};
static i2s_dev_t* I2S[I2S_NUM_MAX] = {&I2S0, &I2S1};
static portMUX_TYPE i2s_spinlock[I2S_NUM_MAX] = {{ .owner = 0xB33FFFFF, .count = 0, }, { .owner = 0xB33FFFFF, .count = 0, }};
static int _i2s_adc_unit = -1;
static int _i2s_adc_channel = -1;

static i2s_dma_t *i2s_create_dma_queue(i2s_port_t i2s_num, int dma_buf_count, int dma_buf_len);
static esp_err_t i2s_destroy_dma_queue(i2s_port_t i2s_num, i2s_dma_t *dma);
static esp_err_t i2s_reset_fifo(i2s_port_t i2s_num)
{
    if (!((i2s_num < I2S_NUM_MAX))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 102, __FUNCTION__, "i2s_num error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 102, __FUNCTION__, "i2s_num error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 102, __FUNCTION__, "i2s_num error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 102, __FUNCTION__, "i2s_num error"); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 102, __FUNCTION__, "i2s_num error"); } } while(0); } while(0); return (0x102); };
    vTaskEnterCritical(&i2s_spinlock[i2s_num]);
    I2S[i2s_num]->conf.rx_fifo_reset = 1;
    I2S[i2s_num]->conf.rx_fifo_reset = 0;
    I2S[i2s_num]->conf.tx_fifo_reset = 1;
    I2S[i2s_num]->conf.tx_fifo_reset = 0;
    vTaskExitCritical(&i2s_spinlock[i2s_num]);
    return 0;
}

inline static void gpio_matrix_out_check(uint32_t gpio, uint32_t signal_idx, 
# 112 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 3 4
                                                                            _Bool 
# 112 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
                                                                                 out_inv, 
# 112 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 3 4
                                                                                          _Bool 
# 112 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
                                                                                               oen_inv)
{

    if (gpio != -1) {
        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((GPIO_PIN_MUX_REG[gpio])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[gpio])) <= 0x3ff13FFC)), (!((((GPIO_PIN_MUX_REG[gpio])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[gpio])) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)"); (("(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)" && (!((((GPIO_PIN_MUX_REG[gpio])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[gpio])) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 116, __func__, "\"(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)\" && (!((((GPIO_PIN_MUX_REG[gpio])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[gpio])) <= 0x3ff13FFC))")); } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((GPIO_PIN_MUX_REG[gpio]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[gpio]))) <= 0x3ff13FFC)), (!(((((GPIO_PIN_MUX_REG[gpio]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[gpio]))) <= 0x3ff13FFC)), 1), "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)"); (("(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)" && (!(((((GPIO_PIN_MUX_REG[gpio]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[gpio]))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 116, __func__, "\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!(((((GPIO_PIN_MUX_REG[gpio]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[gpio]))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((GPIO_PIN_MUX_REG[gpio]))) = (((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((GPIO_PIN_MUX_REG[gpio])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[gpio])) <= 0x3ff13FFC)), (!((((GPIO_PIN_MUX_REG[gpio])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[gpio])) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!((((GPIO_PIN_MUX_REG[gpio])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[gpio])) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 116, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!((((GPIO_PIN_MUX_REG[gpio])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[gpio])) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)(GPIO_PIN_MUX_REG[gpio])); }) & ~((0x7) << (12)))|(((2) & (0x7))<<(12)))); })); });
        gpio_set_direction(gpio, (0x00000002));
        gpio_matrix_out(gpio, signal_idx, out_inv, oen_inv);
    }
}
inline static void gpio_matrix_in_check(uint32_t gpio, uint32_t signal_idx, 
# 121 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 3 4
                                                                           _Bool 
# 121 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
                                                                                inv)
{
    if (gpio != -1) {
        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((GPIO_PIN_MUX_REG[gpio])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[gpio])) <= 0x3ff13FFC)), (!((((GPIO_PIN_MUX_REG[gpio])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[gpio])) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)"); (("(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)" && (!((((GPIO_PIN_MUX_REG[gpio])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[gpio])) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 124, __func__, "\"(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)\" && (!((((GPIO_PIN_MUX_REG[gpio])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[gpio])) <= 0x3ff13FFC))")); } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((GPIO_PIN_MUX_REG[gpio]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[gpio]))) <= 0x3ff13FFC)), (!(((((GPIO_PIN_MUX_REG[gpio]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[gpio]))) <= 0x3ff13FFC)), 1), "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)"); (("(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)" && (!(((((GPIO_PIN_MUX_REG[gpio]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[gpio]))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 124, __func__, "\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!(((((GPIO_PIN_MUX_REG[gpio]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[gpio]))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((GPIO_PIN_MUX_REG[gpio]))) = (((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((GPIO_PIN_MUX_REG[gpio])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[gpio])) <= 0x3ff13FFC)), (!((((GPIO_PIN_MUX_REG[gpio])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[gpio])) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!((((GPIO_PIN_MUX_REG[gpio])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[gpio])) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 124, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!((((GPIO_PIN_MUX_REG[gpio])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[gpio])) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)(GPIO_PIN_MUX_REG[gpio])); }) & ~((0x7) << (12)))|(((2) & (0x7))<<(12)))); })); });

        gpio_set_direction(gpio, (0x00000001));
        gpio_matrix_in(gpio, signal_idx, inv);
    }
}


esp_err_t i2s_clear_intr_status(i2s_port_t i2s_num, uint32_t clr_mask)
{
    if (!((i2s_num < I2S_NUM_MAX))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 134, __FUNCTION__, "i2s_num error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 134, __FUNCTION__, "i2s_num error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 134, __FUNCTION__, "i2s_num error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 134, __FUNCTION__, "i2s_num error"); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 134, __FUNCTION__, "i2s_num error"); } } while(0); } while(0); return (0x102); };
    I2S[i2s_num]->int_clr.val = clr_mask;
    return 0;
}

esp_err_t i2s_enable_rx_intr(i2s_port_t i2s_num)
{

    vTaskEnterCritical(&i2s_spinlock[i2s_num]);
    I2S[i2s_num]->int_ena.in_suc_eof = 1;
    I2S[i2s_num]->int_ena.in_dscr_err = 1;
    vTaskExitCritical(&i2s_spinlock[i2s_num]);
    return 0;
}

esp_err_t i2s_disable_rx_intr(i2s_port_t i2s_num)
{
    vTaskEnterCritical(&i2s_spinlock[i2s_num]);
    I2S[i2s_num]->int_ena.in_suc_eof = 0;
    I2S[i2s_num]->int_ena.in_dscr_err = 0;
    vTaskExitCritical(&i2s_spinlock[i2s_num]);
    return 0;
}

esp_err_t i2s_disable_tx_intr(i2s_port_t i2s_num)
{
    vTaskEnterCritical(&i2s_spinlock[i2s_num]);
    I2S[i2s_num]->int_ena.out_eof = 0;
    I2S[i2s_num]->int_ena.out_dscr_err = 0;
    vTaskExitCritical(&i2s_spinlock[i2s_num]);
    return 0;
}

esp_err_t i2s_enable_tx_intr(i2s_port_t i2s_num)
{
    vTaskEnterCritical(&i2s_spinlock[i2s_num]);
    I2S[i2s_num]->int_ena.out_eof = 1;
    I2S[i2s_num]->int_ena.out_dscr_err = 1;
    vTaskExitCritical(&i2s_spinlock[i2s_num]);
    return 0;
}

static esp_err_t i2s_isr_register(i2s_port_t i2s_num, int intr_alloc_flags, void (*fn)(void*), void * arg, i2s_isr_handle_t *handle)
{
    return esp_intr_alloc(32 + i2s_num, intr_alloc_flags, fn, arg, handle);
}


static float i2s_apll_get_fi2s(int bits_per_sample, int sdm0, int sdm1, int sdm2, int odir)
{
    int f_xtal = (int)rtc_clk_xtal_freq_get() * 1000000;
    uint32_t is_rev0 = (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff5A000 + 0x00c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x00c))) <= 0x3ff13FFC)), (!(((((0x3ff5A000 + 0x00c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x00c))) <= 0x3ff13FFC)), 1), "(Cannot use GET_PERI_REG_BITS2 for DPORT registers use DPORT_GET_PERI_REG_BITS2)"); (("(Cannot use GET_PERI_REG_BITS2 for DPORT registers use DPORT_GET_PERI_REG_BITS2)" && (!(((((0x3ff5A000 + 0x00c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x00c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 185, __func__, "\"(Cannot use GET_PERI_REG_BITS2 for DPORT registers use DPORT_GET_PERI_REG_BITS2)\" && (!(((((0x3ff5A000 + 0x00c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x00c))) <= 0x3ff13FFC))")); } while(0);; ((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff5A000 + 0x00c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x00c))) <= 0x3ff13FFC)), (!(((((0x3ff5A000 + 0x00c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x00c))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!(((((0x3ff5A000 + 0x00c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x00c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 185, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!(((((0x3ff5A000 + 0x00c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x00c))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff5A000 + 0x00c)))); })>>(15))&(1)); }) == 0);
    if (is_rev0) {
        sdm0 = 0;
        sdm1 = 0;
    }
    float fout = f_xtal * (sdm2 + sdm1 / 256.0f + sdm0 / 65536.0f + 4);
    if (fout < (250000000) || fout > (500000000)) {
        return (500000000);
    }
    float fpll = fout / (2 * (odir+2));
    return fpll/2;
}
# 232 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
static esp_err_t i2s_apll_calculate_fi2s(int rate, int bits_per_sample, int *sdm0, int *sdm1, int *sdm2, int *odir)
{
    int _odir, _sdm0, _sdm1, _sdm2;
    float avg;
    float min_rate, max_rate, min_diff;
    if (rate/bits_per_sample/2/8 < (10675)) {
        return 0x102;
    }

    *sdm0 = 0;
    *sdm1 = 0;
    *sdm2 = 0;
    *odir = 0;
    min_diff = (500000000);

    for (_sdm2 = 4; _sdm2 < 9; _sdm2 ++) {
        max_rate = i2s_apll_get_fi2s(bits_per_sample, 255, 255, _sdm2, 0);
        min_rate = i2s_apll_get_fi2s(bits_per_sample, 0, 0, _sdm2, 31);
        avg = (max_rate + min_rate)/2;
        if(abs(avg - rate) < min_diff) {
            min_diff = abs(avg - rate);
            *sdm2 = _sdm2;
        }
    }
    min_diff = (500000000);
    for (_odir = 0; _odir < 32; _odir ++) {
        max_rate = i2s_apll_get_fi2s(bits_per_sample, 255, 255, *sdm2, _odir);
        min_rate = i2s_apll_get_fi2s(bits_per_sample, 0, 0, *sdm2, _odir);
        avg = (max_rate + min_rate)/2;
        if(abs(avg - rate) < min_diff) {
            min_diff = abs(avg - rate);
            *odir = _odir;
        }
    }

    min_diff = (500000000);
    for (_sdm1 = 0; _sdm1 < 256; _sdm1 ++) {
        max_rate = i2s_apll_get_fi2s(bits_per_sample, 255, _sdm1, *sdm2, *odir);
        min_rate = i2s_apll_get_fi2s(bits_per_sample, 0, _sdm1, *sdm2, *odir);
        avg = (max_rate + min_rate)/2;
        if (abs(avg - rate) < min_diff) {
            min_diff = abs(avg - rate);
            *sdm1 = _sdm1;
        }
    }

    min_diff = (500000000);
    for (_sdm0 = 0; _sdm0 < 256; _sdm0 ++) {
        avg = i2s_apll_get_fi2s(bits_per_sample, _sdm0, *sdm1, *sdm2, *odir);
        if (abs(avg - rate) < min_diff) {
            min_diff = abs(avg - rate);
            *sdm0 = _sdm0;
        }
    }

    return 0;
}
esp_err_t i2s_set_clk(i2s_port_t i2s_num, uint32_t rate, i2s_bits_per_sample_t bits, i2s_channel_t ch)
{
    int factor = (256%bits)? 384 : 256;
    int clkmInteger, clkmDecimals, bck = 0;
    double denom = (double)1 / 64;
    int channel = 2;
    i2s_dma_t *save_tx = 
# 295 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 3 4
                        ((void *)0)
# 295 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
                            , *save_rx = 
# 295 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 3 4
                                         ((void *)0)
# 295 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
                                             ;

    if (!((i2s_num < I2S_NUM_MAX))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 297, __FUNCTION__, "i2s_num error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 297, __FUNCTION__, "i2s_num error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 297, __FUNCTION__, "i2s_num error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 297, __FUNCTION__, "i2s_num error"); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 297, __FUNCTION__, "i2s_num error"); } } while(0); } while(0); return (0x102); };

    if (bits % 8 != 0 || bits > I2S_BITS_PER_SAMPLE_32BIT || bits < I2S_BITS_PER_SAMPLE_16BIT) {
        do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Invalid bits per sample" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Invalid bits per sample" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "Invalid bits per sample" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "Invalid bits per sample" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Invalid bits per sample" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } } while(0); } while(0);
        return 0x102;
    }

    if (p_i2s_obj[i2s_num] == 
# 304 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 3 4
                             ((void *)0)
# 304 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
                                 ) {
        do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Not initialized yet" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Not initialized yet" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "Not initialized yet" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "Not initialized yet" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Not initialized yet" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } } while(0); } while(0);
        return 0x102;
    }
    p_i2s_obj[i2s_num]->sample_rate = rate;
    double clkmdiv = (double)(2*( 80*1000000 )) / (rate * factor);

    if (clkmdiv > 256) {
        do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "clkmdiv is too large\r\n" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "clkmdiv is too large\r\n" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "clkmdiv is too large\r\n" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "clkmdiv is too large\r\n" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "clkmdiv is too large\r\n" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } } while(0); } while(0);
        return 0x102;
    }


    if ((p_i2s_obj[i2s_num]->mode & I2S_MODE_TX) && p_i2s_obj[i2s_num]->tx) {
        xQueueGenericReceive( ( QueueHandle_t ) ( p_i2s_obj[i2s_num]->tx->mux ), 
# 318 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 3 4
       ((void *)0)
# 318 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
       , ( (TickType_t)( TickType_t ) 0xffffffffUL ), ( ( BaseType_t ) 0 ) );
    }
    if ((p_i2s_obj[i2s_num]->mode & I2S_MODE_RX) && p_i2s_obj[i2s_num]->rx) {
        xQueueGenericReceive( ( QueueHandle_t ) ( p_i2s_obj[i2s_num]->rx->mux ), 
# 321 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 3 4
       ((void *)0)
# 321 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
       , ( (TickType_t)( TickType_t ) 0xffffffffUL ), ( ( BaseType_t ) 0 ) );
    }

    i2s_stop(i2s_num);


    uint32_t cur_mode = 0;
    if (p_i2s_obj[i2s_num]->channel_num != ch) {
        p_i2s_obj[i2s_num]->channel_num = (ch == 2) ? 2 : 1;
        cur_mode = I2S[i2s_num]->fifo_conf.tx_fifo_mod;
        I2S[i2s_num]->fifo_conf.tx_fifo_mod = (ch == 2) ? cur_mode - 1 : cur_mode + 1;
        cur_mode = I2S[i2s_num]->fifo_conf.rx_fifo_mod;
        I2S[i2s_num]->fifo_conf.rx_fifo_mod = (ch == 2) ? cur_mode -1 : cur_mode + 1;
        I2S[i2s_num]->conf_chan.tx_chan_mod = (ch == 2) ? 0 : 1;
        I2S[i2s_num]->conf_chan.rx_chan_mod = (ch == 2) ? 0 : 1;
    }

    if (bits != p_i2s_obj[i2s_num]->bits_per_sample) {


        if (p_i2s_obj[i2s_num]->bits_per_sample <= 16 && bits > 16) {
            I2S[i2s_num]->fifo_conf.tx_fifo_mod += 2;
            I2S[i2s_num]->fifo_conf.rx_fifo_mod += 2;
        } else if (p_i2s_obj[i2s_num]->bits_per_sample > 16 && bits <= 16) {
            I2S[i2s_num]->fifo_conf.tx_fifo_mod -= 2;
            I2S[i2s_num]->fifo_conf.rx_fifo_mod -= 2;
        }

        p_i2s_obj[i2s_num]->bits_per_sample = bits;
        p_i2s_obj[i2s_num]->bytes_per_sample = p_i2s_obj[i2s_num]->bits_per_sample / 8;


        int halfwords_per_sample = (p_i2s_obj[i2s_num]->bits_per_sample + 15) / 16;
        p_i2s_obj[i2s_num]->bytes_per_sample = halfwords_per_sample * 2;


        if (p_i2s_obj[i2s_num]->dma_buf_len * p_i2s_obj[i2s_num]->bytes_per_sample * p_i2s_obj[i2s_num]->channel_num > 4092) {
            p_i2s_obj[i2s_num]->dma_buf_len = 4092 / p_i2s_obj[i2s_num]->bytes_per_sample / p_i2s_obj[i2s_num]->channel_num;
        }

        if (p_i2s_obj[i2s_num]->mode & I2S_MODE_TX) {

            save_tx = p_i2s_obj[i2s_num]->tx;

            p_i2s_obj[i2s_num]->tx = i2s_create_dma_queue(i2s_num, p_i2s_obj[i2s_num]->dma_buf_count, p_i2s_obj[i2s_num]->dma_buf_len);
            if (p_i2s_obj[i2s_num]->tx == 
# 366 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 3 4
                                         ((void *)0)
# 366 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
                                             ) {
                do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Failed to create tx dma buffer" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Failed to create tx dma buffer" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "Failed to create tx dma buffer" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "Failed to create tx dma buffer" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Failed to create tx dma buffer" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } } while(0); } while(0);
                i2s_driver_uninstall(i2s_num);
                return 0x101;
            }
            I2S[i2s_num]->out_link.addr = (uint32_t) p_i2s_obj[i2s_num]->tx->desc[0];


            if (save_tx) {
                i2s_destroy_dma_queue(i2s_num, save_tx);
            }
        }

        if (p_i2s_obj[i2s_num]->mode & I2S_MODE_RX) {

            save_rx = p_i2s_obj[i2s_num]->rx;

            p_i2s_obj[i2s_num]->rx = i2s_create_dma_queue(i2s_num, p_i2s_obj[i2s_num]->dma_buf_count, p_i2s_obj[i2s_num]->dma_buf_len);
            if (p_i2s_obj[i2s_num]->rx == 
# 384 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 3 4
                                         ((void *)0)
# 384 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
                                             ){
                do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Failed to create rx dma buffer" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Failed to create rx dma buffer" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "Failed to create rx dma buffer" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "Failed to create rx dma buffer" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Failed to create rx dma buffer" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } } while(0); } while(0);
                i2s_driver_uninstall(i2s_num);
                return 0x101;
            }
            I2S[i2s_num]->rx_eof_num = (p_i2s_obj[i2s_num]->dma_buf_len * p_i2s_obj[i2s_num]->channel_num * p_i2s_obj[i2s_num]->bytes_per_sample)/4;
            I2S[i2s_num]->in_link.addr = (uint32_t) p_i2s_obj[i2s_num]->rx->desc[0];


            if (save_rx) {
                i2s_destroy_dma_queue(i2s_num, save_rx);
            }
        }

    }

    double mclk;
    if (p_i2s_obj[i2s_num]->mode & (I2S_MODE_DAC_BUILT_IN | I2S_MODE_ADC_BUILT_IN)) {



        uint32_t b_clk = rate * 2;
        int factor2 = 60;
        mclk = b_clk * factor2;
        clkmdiv = ((double) (2*( 80*1000000 ))) / mclk;
        clkmInteger = clkmdiv;
        clkmDecimals = (clkmdiv - clkmInteger) / denom;
        bck = mclk / b_clk;
    } else if (p_i2s_obj[i2s_num]->mode & I2S_MODE_PDM) {
        uint32_t b_clk = 0;
        if (p_i2s_obj[i2s_num]->mode & I2S_MODE_TX) {
            int fp = I2S[i2s_num]->pdm_freq_conf.tx_pdm_fp;
            int fs = I2S[i2s_num]->pdm_freq_conf.tx_pdm_fs;
            b_clk = rate * 64 * (fp / fs);
        } else if (p_i2s_obj[i2s_num]->mode & I2S_MODE_RX) {
            b_clk = rate * 64 * (I2S[i2s_num]->pdm_conf.rx_sinc_dsr_16_en + 1);
        }
        int factor2 = 5 ;
        mclk = b_clk * factor2;
        clkmdiv = ((double) (2*( 80*1000000 ))) / mclk;
        clkmInteger = clkmdiv;
        clkmDecimals = (clkmdiv - clkmInteger) / denom;
        bck = mclk / b_clk;
    } else {
        clkmInteger = clkmdiv;
        clkmDecimals = (clkmdiv - clkmInteger) / denom;
        mclk = clkmInteger + denom * clkmDecimals;
        bck = factor/(bits * channel);
    }
    int sdm0, sdm1, sdm2, odir, m_scale = 8;
    int fi2s_clk = rate*channel*bits*m_scale;
    if(p_i2s_obj[i2s_num]->use_apll && p_i2s_obj[i2s_num]->fixed_mclk) {
        fi2s_clk = p_i2s_obj[i2s_num]->fixed_mclk;
        m_scale = fi2s_clk/bits/rate/channel;
    }
    if(p_i2s_obj[i2s_num]->use_apll && i2s_apll_calculate_fi2s(fi2s_clk, bits, &sdm0, &sdm1, &sdm2, &odir) == 0) {
        do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "sdm0=%d, sdm1=%d, sdm2=%d, odir=%d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, sdm0, sdm1, sdm2, odir); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "sdm0=%d, sdm1=%d, sdm2=%d, odir=%d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, sdm0, sdm1, sdm2, odir); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "sdm0=%d, sdm1=%d, sdm2=%d, odir=%d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, sdm0, sdm1, sdm2, odir); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "sdm0=%d, sdm1=%d, sdm2=%d, odir=%d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, sdm0, sdm1, sdm2, odir); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "sdm0=%d, sdm1=%d, sdm2=%d, odir=%d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, sdm0, sdm1, sdm2, odir); } } while(0); } while(0);
        rtc_clk_apll_enable(1, sdm0, sdm1, sdm2, odir);
        I2S[i2s_num]->clkm_conf.clkm_div_num = 1;
        I2S[i2s_num]->clkm_conf.clkm_div_b = 0;
        I2S[i2s_num]->clkm_conf.clkm_div_a = 1;
        I2S[i2s_num]->sample_rate_conf.tx_bck_div_num = m_scale;
        I2S[i2s_num]->sample_rate_conf.rx_bck_div_num = m_scale;
        I2S[i2s_num]->clkm_conf.clka_en = 1;
        double fi2s_rate = i2s_apll_get_fi2s(bits, sdm0, sdm1, sdm2, odir);
        do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "APLL: Req RATE: %d, real rate: %0.3f, BITS: %u, CLKM: %u, BCK_M: %u, MCLK: %0.3f, SCLK: %f, diva: %d, divb: %d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, rate, fi2s_rate/bits/channel/m_scale, bits, 1, m_scale, fi2s_rate, fi2s_rate/8, 1, 0); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "APLL: Req RATE: %d, real rate: %0.3f, BITS: %u, CLKM: %u, BCK_M: %u, MCLK: %0.3f, SCLK: %f, diva: %d, divb: %d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, rate, fi2s_rate/bits/channel/m_scale, bits, 1, m_scale, fi2s_rate, fi2s_rate/8, 1, 0); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "APLL: Req RATE: %d, real rate: %0.3f, BITS: %u, CLKM: %u, BCK_M: %u, MCLK: %0.3f, SCLK: %f, diva: %d, divb: %d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, rate, fi2s_rate/bits/channel/m_scale, bits, 1, m_scale, fi2s_rate, fi2s_rate/8, 1, 0); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "APLL: Req RATE: %d, real rate: %0.3f, BITS: %u, CLKM: %u, BCK_M: %u, MCLK: %0.3f, SCLK: %f, diva: %d, divb: %d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, rate, fi2s_rate/bits/channel/m_scale, bits, 1, m_scale, fi2s_rate, fi2s_rate/8, 1, 0); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "APLL: Req RATE: %d, real rate: %0.3f, BITS: %u, CLKM: %u, BCK_M: %u, MCLK: %0.3f, SCLK: %f, diva: %d, divb: %d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, rate, fi2s_rate/bits/channel/m_scale, bits, 1, m_scale, fi2s_rate, fi2s_rate/8, 1, 0); } } while(0); } while(0)
                                                                                                 ;
    } else {
        I2S[i2s_num]->clkm_conf.clka_en = 0;
        I2S[i2s_num]->clkm_conf.clkm_div_a = 63;
        I2S[i2s_num]->clkm_conf.clkm_div_b = clkmDecimals;
        I2S[i2s_num]->clkm_conf.clkm_div_num = clkmInteger;
        I2S[i2s_num]->sample_rate_conf.tx_bck_div_num = bck;
        I2S[i2s_num]->sample_rate_conf.rx_bck_div_num = bck;
        double real_rate = (double) ((2*( 80*1000000 )) / (bck * bits * clkmInteger) / 2);
        do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "PLL_D2: Req RATE: %d, real rate: %0.3f, BITS: %u, CLKM: %u, BCK: %u, MCLK: %0.3f, SCLK: %f, diva: %d, divb: %d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, rate, real_rate, bits, clkmInteger, bck, (double)(2*( 80*1000000 )) / mclk, real_rate*bits*channel, 64, clkmDecimals); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "PLL_D2: Req RATE: %d, real rate: %0.3f, BITS: %u, CLKM: %u, BCK: %u, MCLK: %0.3f, SCLK: %f, diva: %d, divb: %d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, rate, real_rate, bits, clkmInteger, bck, (double)(2*( 80*1000000 )) / mclk, real_rate*bits*channel, 64, clkmDecimals); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "PLL_D2: Req RATE: %d, real rate: %0.3f, BITS: %u, CLKM: %u, BCK: %u, MCLK: %0.3f, SCLK: %f, diva: %d, divb: %d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, rate, real_rate, bits, clkmInteger, bck, (double)(2*( 80*1000000 )) / mclk, real_rate*bits*channel, 64, clkmDecimals); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "PLL_D2: Req RATE: %d, real rate: %0.3f, BITS: %u, CLKM: %u, BCK: %u, MCLK: %0.3f, SCLK: %f, diva: %d, divb: %d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, rate, real_rate, bits, clkmInteger, bck, (double)(2*( 80*1000000 )) / mclk, real_rate*bits*channel, 64, clkmDecimals); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "PLL_D2: Req RATE: %d, real rate: %0.3f, BITS: %u, CLKM: %u, BCK: %u, MCLK: %0.3f, SCLK: %f, diva: %d, divb: %d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, rate, real_rate, bits, clkmInteger, bck, (double)(2*( 80*1000000 )) / mclk, real_rate*bits*channel, 64, clkmDecimals); } } while(0); } while(0)
                                                                                                                           ;
    }

    I2S[i2s_num]->sample_rate_conf.tx_bits_mod = bits;
    I2S[i2s_num]->sample_rate_conf.rx_bits_mod = bits;


    if ((p_i2s_obj[i2s_num]->mode & I2S_MODE_TX) && p_i2s_obj[i2s_num]->tx) {
        xQueueGenericSend( ( QueueHandle_t ) ( p_i2s_obj[i2s_num]->tx->mux ), 
# 468 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 3 4
       ((void *)0)
# 468 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
       , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
    }
    if ((p_i2s_obj[i2s_num]->mode & I2S_MODE_RX) && p_i2s_obj[i2s_num]->rx) {
        xQueueGenericSend( ( QueueHandle_t ) ( p_i2s_obj[i2s_num]->rx->mux ), 
# 471 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 3 4
       ((void *)0)
# 471 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
       , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
    }
    i2s_start(i2s_num);
    return 0;
}

static void __attribute__((section(".iram1"))) i2s_intr_handler_default(void *arg)
{
    i2s_obj_t *p_i2s = (i2s_obj_t*) arg;
    uint8_t i2s_num = p_i2s->i2s_num;
    i2s_dev_t* i2s_reg = I2S[i2s_num];
    i2s_event_t i2s_event;
    int dummy;

    int high_priority_task_awoken = 0;

    lldesc_t *finish_desc;

    if (i2s_reg->int_st.out_dscr_err || i2s_reg->int_st.in_dscr_err) {
        do { if (3 >= ESP_LOG_ERROR) { ets_printf("\033[0;" "31" "m" "E" " (%d) %s: " "dma error, interrupt status: 0x%08x" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, i2s_reg->int_st.val); }} while(0);
        if (p_i2s->i2s_queue) {
            i2s_event.type = I2S_EVENT_DMA_ERROR;
            if (xQueueIsQueueFullFromISR(p_i2s->i2s_queue)) {
                xQueueReceiveFromISR(p_i2s->i2s_queue, &dummy, &high_priority_task_awoken);
            }
            xQueueGenericSendFromISR( ( p_i2s->i2s_queue ), ( (void * )&i2s_event ), ( &high_priority_task_awoken ), ( ( BaseType_t ) 0 ) );
        }
    }

    if (i2s_reg->int_st.out_eof && p_i2s->tx) {
        finish_desc = (lldesc_t*) i2s_reg->out_eof_des_addr;

        if (xQueueIsQueueFullFromISR(p_i2s->tx->queue)) {
            xQueueReceiveFromISR(p_i2s->tx->queue, &dummy, &high_priority_task_awoken);
        }
        xQueueGenericSendFromISR( ( p_i2s->tx->queue ), ( (void*)(&finish_desc->buf) ), ( &high_priority_task_awoken ), ( ( BaseType_t ) 0 ) );
        if (p_i2s->i2s_queue) {
            i2s_event.type = I2S_EVENT_TX_DONE;
            if (xQueueIsQueueFullFromISR(p_i2s->i2s_queue)) {
                xQueueReceiveFromISR(p_i2s->i2s_queue, &dummy, &high_priority_task_awoken);
            }
            xQueueGenericSendFromISR( ( p_i2s->i2s_queue ), ( (void * )&i2s_event ), ( &high_priority_task_awoken ), ( ( BaseType_t ) 0 ) );
        }

    }

    if (i2s_reg->int_st.in_suc_eof && p_i2s->rx) {

        finish_desc = (lldesc_t*) i2s_reg->in_eof_des_addr;
        if (xQueueIsQueueFullFromISR(p_i2s->rx->queue)) {
            xQueueReceiveFromISR(p_i2s->rx->queue, &dummy, &high_priority_task_awoken);
        }
        xQueueGenericSendFromISR( ( p_i2s->rx->queue ), ( (void*)(&finish_desc->buf) ), ( &high_priority_task_awoken ), ( ( BaseType_t ) 0 ) );
        if (p_i2s->i2s_queue) {
            i2s_event.type = I2S_EVENT_RX_DONE;
            if (p_i2s->i2s_queue && xQueueIsQueueFullFromISR(p_i2s->i2s_queue)) {
                xQueueReceiveFromISR(p_i2s->i2s_queue, &dummy, &high_priority_task_awoken);
            }
            xQueueGenericSendFromISR( ( p_i2s->i2s_queue ), ( (void * )&i2s_event ), ( &high_priority_task_awoken ), ( ( BaseType_t ) 0 ) );
        }
    }
    if (high_priority_task_awoken == ( ( BaseType_t ) 1 )) {
        {; _frxt_setup_switch();};
    }

    i2s_reg->int_clr.val = I2S[i2s_num]->int_st.val;
}

static esp_err_t i2s_destroy_dma_queue(i2s_port_t i2s_num, i2s_dma_t *dma)
{
    int bux_idx;
    if (p_i2s_obj[i2s_num] == 
# 542 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 3 4
                             ((void *)0)
# 542 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
                                 ) {
        do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Not initialized yet" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Not initialized yet" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "Not initialized yet" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "Not initialized yet" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Not initialized yet" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } } while(0); } while(0);
        return 0x102;
    }
    if (dma == 
# 546 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 3 4
              ((void *)0)
# 546 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
                  ) {
        do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "dma is NULL" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "dma is NULL" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "dma is NULL" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "dma is NULL" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "dma is NULL" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } } while(0); } while(0);
        return 0x102;
    }
    for (bux_idx = 0; bux_idx < p_i2s_obj[i2s_num]->dma_buf_count; bux_idx++) {
        if (dma->desc && dma->desc[bux_idx]) {
            free(dma->desc[bux_idx]);
        }
        if (dma->buf && dma->buf[bux_idx]) {
            free(dma->buf[bux_idx]);
        }
    }
    if (dma->buf) {
        free(dma->buf);
    }
    if (dma->desc) {
        free(dma->desc);
    }
    vQueueDelete(dma->queue);
    vQueueDelete( ( QueueHandle_t ) ( dma->mux ) );
    free(dma);
    return 0;
}

static i2s_dma_t *i2s_create_dma_queue(i2s_port_t i2s_num, int dma_buf_count, int dma_buf_len)
{
    int bux_idx;
    int sample_size = p_i2s_obj[i2s_num]->bytes_per_sample * p_i2s_obj[i2s_num]->channel_num;
    i2s_dma_t *dma = (i2s_dma_t*) malloc(sizeof(i2s_dma_t));
    if (dma == 
# 575 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 3 4
              ((void *)0)
# 575 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
                  ) {
        do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Error malloc i2s_dma_t" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Error malloc i2s_dma_t" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "Error malloc i2s_dma_t" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "Error malloc i2s_dma_t" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Error malloc i2s_dma_t" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } } while(0); } while(0);
        return 
# 577 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 3 4
              ((void *)0)
# 577 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
                  ;
    }
    memset(dma, 0, sizeof(i2s_dma_t));

    dma->buf = (char **)malloc(sizeof(char*) * dma_buf_count);
    if (dma->buf == 
# 582 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 3 4
                   ((void *)0)
# 582 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
                       ) {
        do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Error malloc dma buffer pointer" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Error malloc dma buffer pointer" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "Error malloc dma buffer pointer" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "Error malloc dma buffer pointer" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Error malloc dma buffer pointer" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } } while(0); } while(0);
        free(dma);
        return 
# 585 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 3 4
              ((void *)0)
# 585 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
                  ;
    }
    memset(dma->buf, 0, sizeof(char*) * dma_buf_count);

    for (bux_idx = 0; bux_idx < dma_buf_count; bux_idx++) {
        dma->buf[bux_idx] = (char*) heap_caps_calloc(1, dma_buf_len * sample_size, (1<<3));
        if (dma->buf[bux_idx] == 
# 591 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 3 4
                                ((void *)0)
# 591 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
                                    ) {
            do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Error malloc dma buffer" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Error malloc dma buffer" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "Error malloc dma buffer" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "Error malloc dma buffer" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Error malloc dma buffer" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } } while(0); } while(0);
            i2s_destroy_dma_queue(i2s_num, dma);
            return 
# 594 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 3 4
                  ((void *)0)
# 594 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
                      ;
        }
        do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Addr[%d] = %d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, bux_idx, (int)dma->buf[bux_idx]); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Addr[%d] = %d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, bux_idx, (int)dma->buf[bux_idx]); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "Addr[%d] = %d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, bux_idx, (int)dma->buf[bux_idx]); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "Addr[%d] = %d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, bux_idx, (int)dma->buf[bux_idx]); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Addr[%d] = %d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, bux_idx, (int)dma->buf[bux_idx]); } } while(0); } while(0);
    }

    dma->desc = (lldesc_t**) malloc(sizeof(lldesc_t*) * dma_buf_count);
    if (dma->desc == 
# 600 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 3 4
                    ((void *)0)
# 600 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
                        ) {
        do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Error malloc dma description" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Error malloc dma description" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "Error malloc dma description" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "Error malloc dma description" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Error malloc dma description" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } } while(0); } while(0);
        i2s_destroy_dma_queue(i2s_num, dma);
        return 
# 603 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 3 4
              ((void *)0)
# 603 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
                  ;
    }
    for (bux_idx = 0; bux_idx < dma_buf_count; bux_idx++) {
        dma->desc[bux_idx] = (lldesc_t*) heap_caps_malloc(sizeof(lldesc_t), (1<<3));
        if (dma->desc[bux_idx] == 
# 607 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 3 4
                                 ((void *)0)
# 607 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
                                     ) {
            do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Error malloc dma description entry" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Error malloc dma description entry" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "Error malloc dma description entry" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "Error malloc dma description entry" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Error malloc dma description entry" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } } while(0); } while(0);
            i2s_destroy_dma_queue(i2s_num, dma);
            return 
# 610 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 3 4
                  ((void *)0)
# 610 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
                      ;
        }
    }

    for (bux_idx = 0; bux_idx < dma_buf_count; bux_idx++) {
        dma->desc[bux_idx]->owner = 1;
        dma->desc[bux_idx]->eof = 1;
        dma->desc[bux_idx]->sosf = 0;
        dma->desc[bux_idx]->length = dma_buf_len * sample_size;
        dma->desc[bux_idx]->size = dma_buf_len * sample_size;
        dma->desc[bux_idx]->buf = (uint8_t *) dma->buf[bux_idx];
        dma->desc[bux_idx]->offset = 0;
        dma->desc[bux_idx]->empty = (uint32_t)((bux_idx < (dma_buf_count - 1)) ? (dma->desc[bux_idx + 1]) : dma->desc[0]);
    }
    dma->queue = xQueueGenericCreate( ( dma_buf_count - 1 ), ( sizeof(char*) ), ( ( ( uint8_t ) 0U ) ) );
    dma->mux = xQueueCreateMutex( ( ( uint8_t ) 1U ) );
    dma->rw_pos = 0;
    dma->buf_size = dma_buf_len * sample_size;
    dma->curr_ptr = 
# 628 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 3 4
                   ((void *)0)
# 628 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
                       ;
    do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "DMA Malloc info, datalen=blocksize=%d, dma_buf_count=%d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, dma_buf_len * sample_size, dma_buf_count); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "DMA Malloc info, datalen=blocksize=%d, dma_buf_count=%d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, dma_buf_len * sample_size, dma_buf_count); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "DMA Malloc info, datalen=blocksize=%d, dma_buf_count=%d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, dma_buf_len * sample_size, dma_buf_count); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "DMA Malloc info, datalen=blocksize=%d, dma_buf_count=%d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, dma_buf_len * sample_size, dma_buf_count); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "DMA Malloc info, datalen=blocksize=%d, dma_buf_count=%d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, dma_buf_len * sample_size, dma_buf_count); } } while(0); } while(0);
    return dma;
}


esp_err_t i2s_start(i2s_port_t i2s_num)
{
    if (!((i2s_num < I2S_NUM_MAX))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 636, __FUNCTION__, "i2s_num error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 636, __FUNCTION__, "i2s_num error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 636, __FUNCTION__, "i2s_num error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 636, __FUNCTION__, "i2s_num error"); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 636, __FUNCTION__, "i2s_num error"); } } while(0); } while(0); return (0x102); };

    vTaskEnterCritical(&i2s_spinlock[i2s_num]);
    i2s_reset_fifo(i2s_num);

    I2S[i2s_num]->lc_conf.in_rst = 1;
    I2S[i2s_num]->lc_conf.in_rst = 0;
    I2S[i2s_num]->lc_conf.out_rst = 1;
    I2S[i2s_num]->lc_conf.out_rst = 0;

    I2S[i2s_num]->conf.tx_reset = 1;
    I2S[i2s_num]->conf.tx_reset = 0;
    I2S[i2s_num]->conf.rx_reset = 1;
    I2S[i2s_num]->conf.rx_reset = 0;

    esp_intr_disable(p_i2s_obj[i2s_num]->i2s_isr_handle);
    I2S[i2s_num]->int_clr.val = 0xFFFFFFFF;
    if (p_i2s_obj[i2s_num]->mode & I2S_MODE_TX) {
        i2s_enable_tx_intr(i2s_num);
        I2S[i2s_num]->out_link.start = 1;
        I2S[i2s_num]->conf.tx_start = 1;
    }
    if (p_i2s_obj[i2s_num]->mode & I2S_MODE_RX) {
        i2s_enable_rx_intr(i2s_num);
        I2S[i2s_num]->in_link.start = 1;
        I2S[i2s_num]->conf.rx_start = 1;
    }
    esp_intr_enable(p_i2s_obj[i2s_num]->i2s_isr_handle);
    vTaskExitCritical(&i2s_spinlock[i2s_num]);
    return 0;
}

esp_err_t i2s_stop(i2s_port_t i2s_num)
{
    if (!((i2s_num < I2S_NUM_MAX))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 670, __FUNCTION__, "i2s_num error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 670, __FUNCTION__, "i2s_num error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 670, __FUNCTION__, "i2s_num error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 670, __FUNCTION__, "i2s_num error"); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 670, __FUNCTION__, "i2s_num error"); } } while(0); } while(0); return (0x102); };
    vTaskEnterCritical(&i2s_spinlock[i2s_num]);
    esp_intr_disable(p_i2s_obj[i2s_num]->i2s_isr_handle);
    if (p_i2s_obj[i2s_num]->mode & I2S_MODE_TX) {
        I2S[i2s_num]->out_link.stop = 1;
        I2S[i2s_num]->conf.tx_start = 0;
        i2s_disable_tx_intr(i2s_num);
    }
    if (p_i2s_obj[i2s_num]->mode & I2S_MODE_RX) {
        I2S[i2s_num]->in_link.stop = 1;
        I2S[i2s_num]->conf.rx_start = 0;
        i2s_disable_rx_intr(i2s_num);
    }
    I2S[i2s_num]->int_clr.val = I2S[i2s_num]->int_st.val;
    vTaskExitCritical(&i2s_spinlock[i2s_num]);
    return 0;
}

esp_err_t i2s_set_dac_mode(i2s_dac_mode_t dac_mode)
{
    if (!((dac_mode < I2S_DAC_CHANNEL_MAX))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 690, __FUNCTION__, "i2s dac mode error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 690, __FUNCTION__, "i2s dac mode error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 690, __FUNCTION__, "i2s dac mode error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 690, __FUNCTION__, "i2s dac mode error"); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 690, __FUNCTION__, "i2s dac mode error"); } } while(0); } while(0); return (0x102); };
    if (dac_mode == I2S_DAC_CHANNEL_DISABLE) {
        dac_output_disable(DAC_CHANNEL_1);
        dac_output_disable(DAC_CHANNEL_2);
        dac_i2s_disable();
    } else {
        dac_i2s_enable();
    }

    if (dac_mode & I2S_DAC_CHANNEL_RIGHT_EN) {

        dac_output_enable(DAC_CHANNEL_1);
    }
    if (dac_mode & I2S_DAC_CHANNEL_LEFT_EN) {

        dac_output_enable(DAC_CHANNEL_2);
    }
    return 0;
}

static esp_err_t _i2s_adc_mode_recover()
{
    if (!(((_i2s_adc_unit != -1) && (_i2s_adc_channel != -1)))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 712, __FUNCTION__, "i2s ADC recover error, not initialized..."); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 712, __FUNCTION__, "i2s ADC recover error, not initialized..."); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 712, __FUNCTION__, "i2s ADC recover error, not initialized..."); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 712, __FUNCTION__, "i2s ADC recover error, not initialized..."); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 712, __FUNCTION__, "i2s ADC recover error, not initialized..."); } } while(0); } while(0); return (0x102); };
    return adc_i2s_mode_init(_i2s_adc_unit, _i2s_adc_channel);
}

esp_err_t i2s_set_adc_mode(adc_unit_t adc_unit, adc1_channel_t adc_channel)
{
    if (!((adc_unit < ADC_UNIT_2))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 718, __FUNCTION__, "i2s ADC unit error, only support ADC1 for now"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 718, __FUNCTION__, "i2s ADC unit error, only support ADC1 for now"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 718, __FUNCTION__, "i2s ADC unit error, only support ADC1 for now"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 718, __FUNCTION__, "i2s ADC unit error, only support ADC1 for now"); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 718, __FUNCTION__, "i2s ADC unit error, only support ADC1 for now"); } } while(0); } while(0); return (0x102); };

    _i2s_adc_unit = adc_unit;
    _i2s_adc_channel = adc_channel;
    return adc_i2s_mode_init(adc_unit, adc_channel);
}

esp_err_t i2s_set_pin(i2s_port_t i2s_num, const i2s_pin_config_t *pin)
{
    if (!((i2s_num < I2S_NUM_MAX))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 727, __FUNCTION__, "i2s_num error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 727, __FUNCTION__, "i2s_num error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 727, __FUNCTION__, "i2s_num error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 727, __FUNCTION__, "i2s_num error"); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 727, __FUNCTION__, "i2s_num error"); } } while(0); } while(0); return (0x102); };
    if (pin == 
# 728 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 3 4
              ((void *)0)
# 728 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
                  ) {
        return i2s_set_dac_mode(I2S_DAC_CHANNEL_BOTH_EN);
    }
    if (pin->bck_io_num != -1 && !((pin->bck_io_num < 40 && GPIO_PIN_MUX_REG[pin->bck_io_num] != 0))) {
        do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "bck_io_num error" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "bck_io_num error" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "bck_io_num error" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "bck_io_num error" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "bck_io_num error" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } } while(0); } while(0);
        return -1;
    }
    if (pin->ws_io_num != -1 && !((pin->ws_io_num < 40 && GPIO_PIN_MUX_REG[pin->ws_io_num] != 0))) {
        do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "ws_io_num error" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "ws_io_num error" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "ws_io_num error" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "ws_io_num error" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "ws_io_num error" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } } while(0); } while(0);
        return -1;
    }
    if (pin->data_out_num != -1 && !((((pin->data_out_num < 40 && GPIO_PIN_MUX_REG[pin->data_out_num] != 0))) && (pin->data_out_num < 34))) {
        do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "data_out_num error" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "data_out_num error" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "data_out_num error" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "data_out_num error" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "data_out_num error" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } } while(0); } while(0);
        return -1;
    }
    if (pin->data_in_num != -1 && !((pin->data_in_num < 40 && GPIO_PIN_MUX_REG[pin->data_in_num] != 0))) {
        do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "data_in_num error" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "data_in_num error" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "data_in_num error" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "data_in_num error" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "data_in_num error" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } } while(0); } while(0);
        return -1;
    }

    int bck_sig = -1, ws_sig = -1, data_out_sig = -1, data_in_sig = -1;



    if (p_i2s_obj[i2s_num]->mode & I2S_MODE_TX) {
        if (p_i2s_obj[i2s_num]->mode & I2S_MODE_MASTER) {
            if (i2s_num == I2S_NUM_0) {
                bck_sig = 23;
                ws_sig = 25;
                data_out_sig = 163;
            } else {
                bck_sig = 24;
                ws_sig = 26;
                data_out_sig = 189;
            }
        } else if (p_i2s_obj[i2s_num]->mode & I2S_MODE_SLAVE) {
            if (i2s_num == I2S_NUM_0) {
                bck_sig = 23;
                ws_sig = 25;
                data_out_sig = 163;
            } else {
                bck_sig = 24;
                ws_sig = 26;
                data_out_sig = 189;
            }
        }
    }


    if (p_i2s_obj[i2s_num]->mode & I2S_MODE_RX) {
        if (p_i2s_obj[i2s_num]->mode & I2S_MODE_MASTER) {
            if (i2s_num == I2S_NUM_0) {
                bck_sig = 27;
                ws_sig = 28;
                data_in_sig = 155;
            } else {
                bck_sig = 164;
                ws_sig = 165;
                data_in_sig = 181;
            }
        } else if (p_i2s_obj[i2s_num]->mode & I2S_MODE_SLAVE) {
            if (i2s_num == I2S_NUM_0) {
                bck_sig = 27;
                ws_sig = 28;
                data_in_sig = 155;
            } else {
                bck_sig = 164;
                ws_sig = 165;
                data_in_sig = 181;
            }
        }
    }


    if ((p_i2s_obj[i2s_num]->mode & (I2S_MODE_TX | I2S_MODE_RX | I2S_MODE_SLAVE)) == (I2S_MODE_TX | I2S_MODE_RX | I2S_MODE_SLAVE)) {
        if (i2s_num == I2S_NUM_0) {
            bck_sig = 27;
            ws_sig = 28;
        } else {
            bck_sig = 164;
            ws_sig = 165;
        }
    } else if ((p_i2s_obj[i2s_num]->mode & (I2S_MODE_TX | I2S_MODE_RX | I2S_MODE_MASTER)) == (I2S_MODE_TX | I2S_MODE_RX | I2S_MODE_MASTER)) {
        if (i2s_num == I2S_NUM_0) {
            bck_sig = 23;
            ws_sig = 25;
        } else {
            bck_sig = 24;
            ws_sig = 26;
        }
    }

    gpio_matrix_out_check(pin->data_out_num, data_out_sig, 0, 0);
    gpio_matrix_in_check(pin->data_in_num, data_in_sig, 0);
    if (p_i2s_obj[i2s_num]->mode & I2S_MODE_MASTER) {
        gpio_matrix_out_check(pin->ws_io_num, ws_sig, 0, 0);
        gpio_matrix_out_check(pin->bck_io_num, bck_sig, 0, 0);
    } else if (p_i2s_obj[i2s_num]->mode & I2S_MODE_SLAVE) {
        gpio_matrix_in_check(pin->ws_io_num, ws_sig, 0);
        gpio_matrix_in_check(pin->bck_io_num, bck_sig, 0);
    }
    do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "data: out %d, in: %d, ws: %d, bck: %d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, data_out_sig, data_in_sig, ws_sig, bck_sig); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "data: out %d, in: %d, ws: %d, bck: %d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, data_out_sig, data_in_sig, ws_sig, bck_sig); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "data: out %d, in: %d, ws: %d, bck: %d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, data_out_sig, data_in_sig, ws_sig, bck_sig); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "data: out %d, in: %d, ws: %d, bck: %d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, data_out_sig, data_in_sig, ws_sig, bck_sig); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "data: out %d, in: %d, ws: %d, bck: %d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, data_out_sig, data_in_sig, ws_sig, bck_sig); } } while(0); } while(0);

    return 0;
}

esp_err_t i2s_set_sample_rates(i2s_port_t i2s_num, uint32_t rate)
{
    if (!((i2s_num < I2S_NUM_MAX))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 836, __FUNCTION__, "i2s_num error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 836, __FUNCTION__, "i2s_num error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 836, __FUNCTION__, "i2s_num error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 836, __FUNCTION__, "i2s_num error"); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 836, __FUNCTION__, "i2s_num error"); } } while(0); } while(0); return (0x102); };
    if (!((p_i2s_obj[i2s_num]->bytes_per_sample > 0))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 837, __FUNCTION__, "bits_per_sample not set"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 837, __FUNCTION__, "bits_per_sample not set"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 837, __FUNCTION__, "bits_per_sample not set"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 837, __FUNCTION__, "bits_per_sample not set"); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 837, __FUNCTION__, "bits_per_sample not set"); } } while(0); } while(0); return (0x102); };
    return i2s_set_clk(i2s_num, rate, p_i2s_obj[i2s_num]->bits_per_sample, p_i2s_obj[i2s_num]->channel_num);
}

static esp_err_t i2s_param_config(i2s_port_t i2s_num, const i2s_config_t *i2s_config)
{
    if (!((i2s_num < I2S_NUM_MAX))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 843, __FUNCTION__, "i2s_num error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 843, __FUNCTION__, "i2s_num error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 843, __FUNCTION__, "i2s_num error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 843, __FUNCTION__, "i2s_num error"); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 843, __FUNCTION__, "i2s_num error"); } } while(0); } while(0); return (0x102); };
    if (!((i2s_config))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 844, __FUNCTION__, "param null"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 844, __FUNCTION__, "param null"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 844, __FUNCTION__, "param null"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 844, __FUNCTION__, "param null"); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 844, __FUNCTION__, "param null"); } } while(0); } while(0); return (0x102); };
    if (!(!((i2s_config->mode & I2S_MODE_ADC_BUILT_IN) && (i2s_num != I2S_NUM_0)))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 845, __FUNCTION__, "I2S ADC built-in only support on I2S0"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 845, __FUNCTION__, "I2S ADC built-in only support on I2S0"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 845, __FUNCTION__, "I2S ADC built-in only support on I2S0"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 845, __FUNCTION__, "I2S ADC built-in only support on I2S0"); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 845, __FUNCTION__, "I2S ADC built-in only support on I2S0"); } } while(0); } while(0); return (0x102); };
    if (!(!((i2s_config->mode & I2S_MODE_DAC_BUILT_IN) && (i2s_num != I2S_NUM_0)))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 846, __FUNCTION__, "I2S DAC built-in only support on I2S0"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 846, __FUNCTION__, "I2S DAC built-in only support on I2S0"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 846, __FUNCTION__, "I2S DAC built-in only support on I2S0"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 846, __FUNCTION__, "I2S DAC built-in only support on I2S0"); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 846, __FUNCTION__, "I2S DAC built-in only support on I2S0"); } } while(0); } while(0); return (0x102); };
    if (!(!((i2s_config->mode & I2S_MODE_PDM) && (i2s_num != I2S_NUM_0)))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 847, __FUNCTION__, "I2S DAC PDM only support on I2S0"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 847, __FUNCTION__, "I2S DAC PDM only support on I2S0"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 847, __FUNCTION__, "I2S DAC PDM only support on I2S0"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 847, __FUNCTION__, "I2S DAC PDM only support on I2S0"); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 847, __FUNCTION__, "I2S DAC PDM only support on I2S0"); } } while(0); } while(0); return (0x102); };

    if (i2s_num == I2S_NUM_1) {
        periph_module_enable(PERIPH_I2S1_MODULE);
    } else {
        periph_module_enable(PERIPH_I2S0_MODULE);
    }

    if(i2s_config->mode & I2S_MODE_ADC_BUILT_IN) {




        adc_power_always_on();
    }

    i2s_reset_fifo(i2s_num);

    I2S[i2s_num]->conf.tx_reset = 1;
    I2S[i2s_num]->conf.tx_reset = 0;
    I2S[i2s_num]->conf.rx_reset = 1;
    I2S[i2s_num]->conf.rx_reset = 0;


    I2S[i2s_num]->lc_conf.in_rst = 1;
    I2S[i2s_num]->lc_conf.in_rst = 0;
    I2S[i2s_num]->lc_conf.out_rst = 1;
    I2S[i2s_num]->lc_conf.out_rst = 0;


    I2S[i2s_num]->lc_conf.check_owner = 0;
    I2S[i2s_num]->lc_conf.out_loop_test = 0;
    I2S[i2s_num]->lc_conf.out_auto_wrback = 0;
    I2S[i2s_num]->lc_conf.out_data_burst_en = 0;
    I2S[i2s_num]->lc_conf.outdscr_burst_en = 0;
    I2S[i2s_num]->lc_conf.out_no_restart_clr = 0;
    I2S[i2s_num]->lc_conf.indscr_burst_en = 0;
    I2S[i2s_num]->lc_conf.out_eof_mode = 1;

    I2S[i2s_num]->conf2.lcd_en = 0;
    I2S[i2s_num]->conf2.camera_en = 0;
    I2S[i2s_num]->pdm_conf.pcm2pdm_conv_en = 0;
    I2S[i2s_num]->pdm_conf.pdm2pcm_conv_en = 0;

    I2S[i2s_num]->fifo_conf.dscr_en = 0;

    I2S[i2s_num]->conf_chan.tx_chan_mod = i2s_config->channel_format < I2S_CHANNEL_FMT_ONLY_RIGHT ? i2s_config->channel_format : (i2s_config->channel_format >> 1);
    I2S[i2s_num]->fifo_conf.tx_fifo_mod = i2s_config->channel_format < I2S_CHANNEL_FMT_ONLY_RIGHT ? 0 : 1;
    I2S[i2s_num]->conf.tx_mono = 0;

    I2S[i2s_num]->conf_chan.rx_chan_mod = i2s_config->channel_format < I2S_CHANNEL_FMT_ONLY_RIGHT ? i2s_config->channel_format : (i2s_config->channel_format >> 1);
    I2S[i2s_num]->fifo_conf.rx_fifo_mod = i2s_config->channel_format < I2S_CHANNEL_FMT_ONLY_RIGHT ? 0 : 1;
    I2S[i2s_num]->conf.rx_mono = 0;

    I2S[i2s_num]->fifo_conf.dscr_en = 1;

    I2S[i2s_num]->conf.tx_start = 0;
    I2S[i2s_num]->conf.rx_start = 0;

    if (i2s_config->mode & I2S_MODE_TX) {
        I2S[i2s_num]->conf.tx_msb_right = 0;
        I2S[i2s_num]->conf.tx_right_first = 0;

        I2S[i2s_num]->conf.tx_slave_mod = 0;
        I2S[i2s_num]->fifo_conf.tx_fifo_mod_force_en = 1;

        if (i2s_config->mode & I2S_MODE_SLAVE) {
            I2S[i2s_num]->conf.tx_slave_mod = 1;
        }
    }

    if (i2s_config->mode & I2S_MODE_RX) {
        I2S[i2s_num]->conf.rx_msb_right = 0;
        I2S[i2s_num]->conf.rx_right_first = 0;
        I2S[i2s_num]->conf.rx_slave_mod = 0;
        I2S[i2s_num]->fifo_conf.rx_fifo_mod_force_en = 1;

        if (i2s_config->mode & I2S_MODE_SLAVE) {
            I2S[i2s_num]->conf.rx_slave_mod = 1;
        }
    }

    if (i2s_config->mode & (I2S_MODE_DAC_BUILT_IN | I2S_MODE_ADC_BUILT_IN)) {
        I2S[i2s_num]->conf2.lcd_en = 1;
        I2S[i2s_num]->conf.tx_right_first = 1;
        I2S[i2s_num]->conf2.camera_en = 0;
    }

    if (i2s_config->mode & I2S_MODE_PDM) {
        I2S[i2s_num]->fifo_conf.rx_fifo_mod_force_en = 1;
        I2S[i2s_num]->fifo_conf.tx_fifo_mod_force_en = 1;

        I2S[i2s_num]->pdm_freq_conf.tx_pdm_fp = 960;
        I2S[i2s_num]->pdm_freq_conf.tx_pdm_fs = i2s_config->sample_rate / 1000 * 10;
        I2S[i2s_num]->pdm_conf.tx_sinc_osr2 = I2S[i2s_num]->pdm_freq_conf.tx_pdm_fp / I2S[i2s_num]->pdm_freq_conf.tx_pdm_fs;

        I2S[i2s_num]->pdm_conf.rx_sinc_dsr_16_en = 0;
        I2S[i2s_num]->pdm_conf.rx_pdm_en = 1;
        I2S[i2s_num]->pdm_conf.tx_pdm_en = 1;

        I2S[i2s_num]->pdm_conf.pcm2pdm_conv_en = 1;
        I2S[i2s_num]->pdm_conf.pdm2pcm_conv_en = 1;
    } else {
        I2S[i2s_num]->pdm_conf.rx_pdm_en = 0;
        I2S[i2s_num]->pdm_conf.tx_pdm_en = 0;
    }
    if (i2s_config->communication_format & I2S_COMM_FORMAT_I2S) {
        I2S[i2s_num]->conf.tx_short_sync = 0;
        I2S[i2s_num]->conf.rx_short_sync = 0;
        I2S[i2s_num]->conf.tx_msb_shift = 1;
        I2S[i2s_num]->conf.rx_msb_shift = 1;
        if (i2s_config->communication_format & I2S_COMM_FORMAT_I2S_LSB) {
            if (i2s_config->mode & I2S_MODE_TX) {
                I2S[i2s_num]->conf.tx_msb_shift = 0;
            }
            if (i2s_config->mode & I2S_MODE_RX) {
                I2S[i2s_num]->conf.rx_msb_shift = 0;
            }
        }
    }

    if (i2s_config->communication_format & I2S_COMM_FORMAT_PCM) {
        I2S[i2s_num]->conf.tx_msb_shift = 0;
        I2S[i2s_num]->conf.rx_msb_shift = 0;
        I2S[i2s_num]->conf.tx_short_sync = 0;
        I2S[i2s_num]->conf.rx_short_sync = 0;
        if (i2s_config->communication_format & I2S_COMM_FORMAT_PCM_SHORT) {
            if (i2s_config->mode & I2S_MODE_TX) {
                I2S[i2s_num]->conf.tx_short_sync = 1;
            }
            if (i2s_config->mode & I2S_MODE_RX) {
                I2S[i2s_num]->conf.rx_short_sync = 1;
            }
        }
    }
    if ((p_i2s_obj[i2s_num]->mode & I2S_MODE_RX) && (p_i2s_obj[i2s_num]->mode & I2S_MODE_TX)) {
        I2S[i2s_num]->conf.sig_loopback = 1;
        if (p_i2s_obj[i2s_num]->mode & I2S_MODE_MASTER) {
            I2S[i2s_num]->conf.tx_slave_mod = 0;
            I2S[i2s_num]->conf.rx_slave_mod = 1;
        } else {
            I2S[i2s_num]->conf.tx_slave_mod = 1;
            I2S[i2s_num]->conf.rx_slave_mod = 1;
        }
    }

    p_i2s_obj[i2s_num]->use_apll = i2s_config->use_apll;
    p_i2s_obj[i2s_num]->fixed_mclk = i2s_config->fixed_mclk;
    return 0;
}

esp_err_t i2s_zero_dma_buffer(i2s_port_t i2s_num)
{
    if (!((i2s_num < I2S_NUM_MAX))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1000, __FUNCTION__, "i2s_num error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1000, __FUNCTION__, "i2s_num error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1000, __FUNCTION__, "i2s_num error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1000, __FUNCTION__, "i2s_num error"); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1000, __FUNCTION__, "i2s_num error"); } } while(0); } while(0); return (0x102); };
    if (p_i2s_obj[i2s_num]->rx && p_i2s_obj[i2s_num]->rx->buf != 
# 1001 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 3 4
                                                                ((void *)0) 
# 1001 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
                                                                     && p_i2s_obj[i2s_num]->rx->buf_size != 0) {
        for (int i = 0; i < p_i2s_obj[i2s_num]->dma_buf_count; i++) {
            memset(p_i2s_obj[i2s_num]->rx->buf[i], 0, p_i2s_obj[i2s_num]->rx->buf_size);
        }
    }
    if (p_i2s_obj[i2s_num]->tx && p_i2s_obj[i2s_num]->tx->buf != 
# 1006 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 3 4
                                                                ((void *)0) 
# 1006 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
                                                                     && p_i2s_obj[i2s_num]->tx->buf_size != 0) {
        int bytes_left = 0;
        bytes_left = (p_i2s_obj[i2s_num]->tx->buf_size - p_i2s_obj[i2s_num]->tx->rw_pos) % 4;
        if (bytes_left) {
            size_t zero_bytes = 0, bytes_written;
            i2s_write(i2s_num, (void *)&zero_bytes, bytes_left, &bytes_written, ( TickType_t ) 0xffffffffUL);
        }
        for (int i = 0; i < p_i2s_obj[i2s_num]->dma_buf_count; i++) {
            memset(p_i2s_obj[i2s_num]->tx->buf[i], 0, p_i2s_obj[i2s_num]->tx->buf_size);
        }
    }
    return 0;
}

esp_err_t i2s_driver_install(i2s_port_t i2s_num, const i2s_config_t *i2s_config, int queue_size, void* i2s_queue)
{
    esp_err_t err;
    if (!((i2s_num < I2S_NUM_MAX))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1023, __FUNCTION__, "i2s_num error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1023, __FUNCTION__, "i2s_num error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1023, __FUNCTION__, "i2s_num error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1023, __FUNCTION__, "i2s_num error"); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1023, __FUNCTION__, "i2s_num error"); } } while(0); } while(0); return (0x102); };
    if (!((i2s_config != 
# 1024 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 3 4
   ((void *)0)
# 1024 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
   ))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1024, __FUNCTION__, "I2S configuration must not NULL"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1024, __FUNCTION__, "I2S configuration must not NULL"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1024, __FUNCTION__, "I2S configuration must not NULL"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1024, __FUNCTION__, "I2S configuration must not NULL"); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1024, __FUNCTION__, "I2S configuration must not NULL"); } } while(0); } while(0); return (0x102); };
    if (!((i2s_config->dma_buf_count >= 2 && i2s_config->dma_buf_count <= 128))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1025, __FUNCTION__, "I2S buffer count less than 128 and more than 2"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1025, __FUNCTION__, "I2S buffer count less than 128 and more than 2"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1025, __FUNCTION__, "I2S buffer count less than 128 and more than 2"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1025, __FUNCTION__, "I2S buffer count less than 128 and more than 2"); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1025, __FUNCTION__, "I2S buffer count less than 128 and more than 2"); } } while(0); } while(0); return (0x102); };
    if (!((i2s_config->dma_buf_len >= 8 && i2s_config->dma_buf_len <= 1024))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1026, __FUNCTION__, "I2S buffer length at most 1024 and more than 8"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1026, __FUNCTION__, "I2S buffer length at most 1024 and more than 8"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1026, __FUNCTION__, "I2S buffer length at most 1024 and more than 8"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1026, __FUNCTION__, "I2S buffer length at most 1024 and more than 8"); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1026, __FUNCTION__, "I2S buffer length at most 1024 and more than 8"); } } while(0); } while(0); return (0x102); };
    if (p_i2s_obj[i2s_num] == 
# 1027 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 3 4
                             ((void *)0)
# 1027 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
                                 ) {
        p_i2s_obj[i2s_num] = (i2s_obj_t*) malloc(sizeof(i2s_obj_t));
        if (p_i2s_obj[i2s_num] == 
# 1029 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 3 4
                                 ((void *)0)
# 1029 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
                                     ) {
            do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Malloc I2S driver error" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Malloc I2S driver error" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "Malloc I2S driver error" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "Malloc I2S driver error" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Malloc I2S driver error" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } } while(0); } while(0);
            return 0x101;
        }
        memset(p_i2s_obj[i2s_num], 0, sizeof(i2s_obj_t));

        p_i2s_obj[i2s_num]->i2s_num = i2s_num;
        p_i2s_obj[i2s_num]->dma_buf_count = i2s_config->dma_buf_count;
        p_i2s_obj[i2s_num]->dma_buf_len = i2s_config->dma_buf_len;
        p_i2s_obj[i2s_num]->i2s_queue = i2s_queue;
        p_i2s_obj[i2s_num]->mode = i2s_config->mode;

        p_i2s_obj[i2s_num]->bits_per_sample = 0;
        p_i2s_obj[i2s_num]->bytes_per_sample = 0;
        p_i2s_obj[i2s_num]->channel_num = i2s_config->channel_format < I2S_CHANNEL_FMT_ONLY_RIGHT ? 2 : 1;


        if (i2s_num == I2S_NUM_1) {
            periph_module_enable(PERIPH_I2S1_MODULE);
        } else {
            periph_module_enable(PERIPH_I2S0_MODULE);
        }


        err = i2s_isr_register(i2s_num, i2s_config->intr_alloc_flags, i2s_intr_handler_default, p_i2s_obj[i2s_num], &p_i2s_obj[i2s_num]->i2s_isr_handle);
        if (err != 0) {
            free(p_i2s_obj[i2s_num]);
            p_i2s_obj[i2s_num] = 
# 1056 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 3 4
                                ((void *)0)
# 1056 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
                                    ;
            do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Register I2S Interrupt error" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Register I2S Interrupt error" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "Register I2S Interrupt error" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "Register I2S Interrupt error" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Register I2S Interrupt error" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } } while(0); } while(0);
            return err;
        }
        i2s_stop(i2s_num);
        err = i2s_param_config(i2s_num, i2s_config);
        if (err != 0) {
            i2s_driver_uninstall(i2s_num);
            do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "I2S param configure error" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "I2S param configure error" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "I2S param configure error" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "I2S param configure error" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "I2S param configure error" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } } while(0); } while(0);
            return err;
        }

        if (i2s_queue) {
            p_i2s_obj[i2s_num]->i2s_queue = xQueueGenericCreate( ( queue_size ), ( sizeof(i2s_event_t) ), ( ( ( uint8_t ) 0U ) ) );
            *((QueueHandle_t*) i2s_queue) = p_i2s_obj[i2s_num]->i2s_queue;
            do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "queue free spaces: %d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, uxQueueSpacesAvailable(p_i2s_obj[i2s_num]->i2s_queue)); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "queue free spaces: %d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, uxQueueSpacesAvailable(p_i2s_obj[i2s_num]->i2s_queue)); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "queue free spaces: %d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, uxQueueSpacesAvailable(p_i2s_obj[i2s_num]->i2s_queue)); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "queue free spaces: %d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, uxQueueSpacesAvailable(p_i2s_obj[i2s_num]->i2s_queue)); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "queue free spaces: %d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, uxQueueSpacesAvailable(p_i2s_obj[i2s_num]->i2s_queue)); } } while(0); } while(0);
        } else {
            p_i2s_obj[i2s_num]->i2s_queue = 
# 1073 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 3 4
                                           ((void *)0)
# 1073 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
                                               ;
        }

        return i2s_set_clk(i2s_num, i2s_config->sample_rate, i2s_config->bits_per_sample, p_i2s_obj[i2s_num]->channel_num);
    }

    do { if ( 3 >= ESP_LOG_WARN ) do { if (ESP_LOG_WARN==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "I2S driver already installed" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_WARN==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "I2S driver already installed" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_WARN==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "I2S driver already installed" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_WARN==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "I2S driver already installed" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "I2S driver already installed" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } } while(0); } while(0);
    return 0;
}

esp_err_t i2s_driver_uninstall(i2s_port_t i2s_num)
{
    if (!((i2s_num < I2S_NUM_MAX))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1085, __FUNCTION__, "i2s_num error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1085, __FUNCTION__, "i2s_num error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1085, __FUNCTION__, "i2s_num error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1085, __FUNCTION__, "i2s_num error"); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1085, __FUNCTION__, "i2s_num error"); } } while(0); } while(0); return (0x102); };
    if (p_i2s_obj[i2s_num] == 
# 1086 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 3 4
                             ((void *)0)
# 1086 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
                                 ) {
        do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "already uninstalled" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "already uninstalled" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "already uninstalled" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "already uninstalled" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "already uninstalled" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG); } } while(0); } while(0);
        return 0;
    }
    i2s_stop(i2s_num);
    esp_intr_free(p_i2s_obj[i2s_num]->i2s_isr_handle);

    if (p_i2s_obj[i2s_num]->tx != 
# 1093 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 3 4
                                 ((void *)0) 
# 1093 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
                                      && p_i2s_obj[i2s_num]->mode & I2S_MODE_TX) {
        i2s_destroy_dma_queue(i2s_num, p_i2s_obj[i2s_num]->tx);
        p_i2s_obj[i2s_num]->tx = 
# 1095 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 3 4
                                ((void *)0)
# 1095 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
                                    ;
    }
    if (p_i2s_obj[i2s_num]->rx != 
# 1097 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 3 4
                                 ((void *)0) 
# 1097 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
                                      && p_i2s_obj[i2s_num]->mode & I2S_MODE_RX) {
        i2s_destroy_dma_queue(i2s_num, p_i2s_obj[i2s_num]->rx);
        p_i2s_obj[i2s_num]->rx = 
# 1099 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 3 4
                                ((void *)0)
# 1099 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
                                    ;
    }

    if (p_i2s_obj[i2s_num]->i2s_queue) {
        vQueueDelete(p_i2s_obj[i2s_num]->i2s_queue);
        p_i2s_obj[i2s_num]->i2s_queue = 
# 1104 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 3 4
                                       ((void *)0)
# 1104 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
                                           ;
    }

    if(p_i2s_obj[i2s_num]->use_apll) {
        rtc_clk_apll_enable(0, 0, 0, 0, 0);
    }

    free(p_i2s_obj[i2s_num]);
    p_i2s_obj[i2s_num] = 
# 1112 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 3 4
                        ((void *)0)
# 1112 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
                            ;

    if (i2s_num == I2S_NUM_0) {
        periph_module_disable(PERIPH_I2S0_MODULE);
    } else if (i2s_num == I2S_NUM_1) {
        periph_module_disable(PERIPH_I2S1_MODULE);
    }
    return 0;
}

int i2s_write_bytes(i2s_port_t i2s_num, const void *src, size_t size, TickType_t ticks_to_wait)
{
    size_t bytes_written = 0;
    int res = 0;
    res = i2s_write(i2s_num, src, size, &bytes_written, ticks_to_wait);
    if (res != 0) {
        return -1;
    } else {
        return bytes_written;
    }
}

esp_err_t i2s_write(i2s_port_t i2s_num, const void *src, size_t size, size_t *bytes_written, TickType_t ticks_to_wait)
{
    char *data_ptr, *src_byte;
    int bytes_can_write;
    *bytes_written = 0;
    if (!((i2s_num < I2S_NUM_MAX))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1139, __FUNCTION__, "i2s_num error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1139, __FUNCTION__, "i2s_num error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1139, __FUNCTION__, "i2s_num error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1139, __FUNCTION__, "i2s_num error"); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1139, __FUNCTION__, "i2s_num error"); } } while(0); } while(0); return (0x102); };
    if (!((size < (4 * 1024 * 1024)))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1140, __FUNCTION__, "size is too large"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1140, __FUNCTION__, "size is too large"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1140, __FUNCTION__, "size is too large"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1140, __FUNCTION__, "size is too large"); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1140, __FUNCTION__, "size is too large"); } } while(0); } while(0); return (0x102); };
    if (!((p_i2s_obj[i2s_num]->tx))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1141, __FUNCTION__, "tx NULL"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1141, __FUNCTION__, "tx NULL"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1141, __FUNCTION__, "tx NULL"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1141, __FUNCTION__, "tx NULL"); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1141, __FUNCTION__, "tx NULL"); } } while(0); } while(0); return (0x102); };
    xQueueGenericReceive( ( QueueHandle_t ) ( p_i2s_obj[i2s_num]->tx->mux ), 
# 1142 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 3 4
   ((void *)0)
# 1142 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
   , ( (TickType_t)( TickType_t ) 0xffffffffUL ), ( ( BaseType_t ) 0 ) );
    src_byte = (char *)src;
    while (size > 0) {
        if (p_i2s_obj[i2s_num]->tx->rw_pos == p_i2s_obj[i2s_num]->tx->buf_size || p_i2s_obj[i2s_num]->tx->curr_ptr == 
# 1145 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 3 4
                                                                                                                     ((void *)0)
# 1145 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
                                                                                                                         ) {
            if (xQueueGenericReceive( ( p_i2s_obj[i2s_num]->tx->queue ), ( &p_i2s_obj[i2s_num]->tx->curr_ptr ), ( ticks_to_wait ), ( ( BaseType_t ) 0 ) ) == ( ( BaseType_t ) 0 )) {
                break;
            }
            p_i2s_obj[i2s_num]->tx->rw_pos = 0;
        }
        do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "size: %d, rw_pos: %d, buf_size: %d, curr_ptr: %d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, size, p_i2s_obj[i2s_num]->tx->rw_pos, p_i2s_obj[i2s_num]->tx->buf_size, (int)p_i2s_obj[i2s_num]->tx->curr_ptr); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "size: %d, rw_pos: %d, buf_size: %d, curr_ptr: %d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, size, p_i2s_obj[i2s_num]->tx->rw_pos, p_i2s_obj[i2s_num]->tx->buf_size, (int)p_i2s_obj[i2s_num]->tx->curr_ptr); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "size: %d, rw_pos: %d, buf_size: %d, curr_ptr: %d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, size, p_i2s_obj[i2s_num]->tx->rw_pos, p_i2s_obj[i2s_num]->tx->buf_size, (int)p_i2s_obj[i2s_num]->tx->curr_ptr); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "size: %d, rw_pos: %d, buf_size: %d, curr_ptr: %d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, size, p_i2s_obj[i2s_num]->tx->rw_pos, p_i2s_obj[i2s_num]->tx->buf_size, (int)p_i2s_obj[i2s_num]->tx->curr_ptr); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "size: %d, rw_pos: %d, buf_size: %d, curr_ptr: %d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, size, p_i2s_obj[i2s_num]->tx->rw_pos, p_i2s_obj[i2s_num]->tx->buf_size, (int)p_i2s_obj[i2s_num]->tx->curr_ptr); } } while(0); } while(0);
        data_ptr = (char*)p_i2s_obj[i2s_num]->tx->curr_ptr;
        data_ptr += p_i2s_obj[i2s_num]->tx->rw_pos;
        bytes_can_write = p_i2s_obj[i2s_num]->tx->buf_size - p_i2s_obj[i2s_num]->tx->rw_pos;
        if (bytes_can_write > size) {
            bytes_can_write = size;
        }
        memcpy(data_ptr, src_byte, bytes_can_write);
        size -= bytes_can_write;
        src_byte += bytes_can_write;
        p_i2s_obj[i2s_num]->tx->rw_pos += bytes_can_write;
        (*bytes_written) += bytes_can_write;
    }
    xQueueGenericSend( ( QueueHandle_t ) ( p_i2s_obj[i2s_num]->tx->mux ), 
# 1164 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 3 4
   ((void *)0)
# 1164 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
   , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
    return 0;
}

esp_err_t i2s_adc_enable(i2s_port_t i2s_num)
{
    if (!((i2s_num < I2S_NUM_MAX))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1170, __FUNCTION__, "i2s_num error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1170, __FUNCTION__, "i2s_num error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1170, __FUNCTION__, "i2s_num error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1170, __FUNCTION__, "i2s_num error"); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1170, __FUNCTION__, "i2s_num error"); } } while(0); } while(0); return (0x102); };
    if (!((p_i2s_obj[i2s_num] != 
# 1171 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 3 4
   ((void *)0)
# 1171 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
   ))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1171, __FUNCTION__, "Not initialized yet"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1171, __FUNCTION__, "Not initialized yet"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1171, __FUNCTION__, "Not initialized yet"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1171, __FUNCTION__, "Not initialized yet"); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1171, __FUNCTION__, "Not initialized yet"); } } while(0); } while(0); return (0x103); };
    if (!((p_i2s_obj[i2s_num]->mode & I2S_MODE_ADC_BUILT_IN))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1172, __FUNCTION__, "i2s built-in adc not enabled"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1172, __FUNCTION__, "i2s built-in adc not enabled"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1172, __FUNCTION__, "i2s built-in adc not enabled"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1172, __FUNCTION__, "i2s built-in adc not enabled"); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1172, __FUNCTION__, "i2s built-in adc not enabled"); } } while(0); } while(0); return (0x103); };

    adc1_i2s_mode_acquire();
    _i2s_adc_mode_recover();
    return i2s_set_clk(i2s_num, p_i2s_obj[i2s_num]->sample_rate, p_i2s_obj[i2s_num]->bits_per_sample, p_i2s_obj[i2s_num]->channel_num);
}

esp_err_t i2s_adc_disable(i2s_port_t i2s_num)
{
    if (!((i2s_num < I2S_NUM_MAX))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1181, __FUNCTION__, "i2s_num error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1181, __FUNCTION__, "i2s_num error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1181, __FUNCTION__, "i2s_num error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1181, __FUNCTION__, "i2s_num error"); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1181, __FUNCTION__, "i2s_num error"); } } while(0); } while(0); return (0x102); };
    if (!((p_i2s_obj[i2s_num] != 
# 1182 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 3 4
   ((void *)0)
# 1182 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
   ))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1182, __FUNCTION__, "Not initialized yet"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1182, __FUNCTION__, "Not initialized yet"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1182, __FUNCTION__, "Not initialized yet"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1182, __FUNCTION__, "Not initialized yet"); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1182, __FUNCTION__, "Not initialized yet"); } } while(0); } while(0); return (0x103); };
    if (!((p_i2s_obj[i2s_num]->mode & I2S_MODE_ADC_BUILT_IN))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1183, __FUNCTION__, "i2s built-in adc not enabled"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1183, __FUNCTION__, "i2s built-in adc not enabled"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1183, __FUNCTION__, "i2s built-in adc not enabled"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1183, __FUNCTION__, "i2s built-in adc not enabled"); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1183, __FUNCTION__, "i2s built-in adc not enabled"); } } while(0); } while(0); return (0x103); };

    adc1_lock_release();
    return 0;
}

esp_err_t i2s_write_expand(i2s_port_t i2s_num, const void *src, size_t size, size_t src_bits, size_t aim_bits, size_t *bytes_written, TickType_t ticks_to_wait)
{
    char *data_ptr;
    int bytes_can_write, tail;
    int src_bytes, aim_bytes, zero_bytes;
    *bytes_written = 0;
    if (!((i2s_num < I2S_NUM_MAX))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1195, __FUNCTION__, "i2s_num error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1195, __FUNCTION__, "i2s_num error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1195, __FUNCTION__, "i2s_num error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1195, __FUNCTION__, "i2s_num error"); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1195, __FUNCTION__, "i2s_num error"); } } while(0); } while(0); return (0x102); };
    if (!((size > 0))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1196, __FUNCTION__, "size must greater than zero"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1196, __FUNCTION__, "size must greater than zero"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1196, __FUNCTION__, "size must greater than zero"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1196, __FUNCTION__, "size must greater than zero"); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1196, __FUNCTION__, "size must greater than zero"); } } while(0); } while(0); return (0x102); };
    if (!((aim_bits * size < (4 * 1024 * 1024)))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1197, __FUNCTION__, "size is too large"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1197, __FUNCTION__, "size is too large"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1197, __FUNCTION__, "size is too large"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1197, __FUNCTION__, "size is too large"); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1197, __FUNCTION__, "size is too large"); } } while(0); } while(0); return (0x102); };
    if (!((aim_bits >= src_bits))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1198, __FUNCTION__, "aim_bits musn't less than src_bits"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1198, __FUNCTION__, "aim_bits musn't less than src_bits"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1198, __FUNCTION__, "aim_bits musn't less than src_bits"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1198, __FUNCTION__, "aim_bits musn't less than src_bits"); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1198, __FUNCTION__, "aim_bits musn't less than src_bits"); } } while(0); } while(0); return (0x102); };
    if (!((p_i2s_obj[i2s_num]->tx))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1199, __FUNCTION__, "tx NULL"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1199, __FUNCTION__, "tx NULL"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1199, __FUNCTION__, "tx NULL"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1199, __FUNCTION__, "tx NULL"); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1199, __FUNCTION__, "tx NULL"); } } while(0); } while(0); return (0x102); };
    if (src_bits < I2S_BITS_PER_SAMPLE_8BIT || aim_bits < I2S_BITS_PER_SAMPLE_8BIT) {
        do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "bits musn't be less than 8, src_bits %d aim_bits %d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, src_bits, aim_bits); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "bits musn't be less than 8, src_bits %d aim_bits %d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, src_bits, aim_bits); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "bits musn't be less than 8, src_bits %d aim_bits %d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, src_bits, aim_bits); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "bits musn't be less than 8, src_bits %d aim_bits %d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, src_bits, aim_bits); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "bits musn't be less than 8, src_bits %d aim_bits %d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, src_bits, aim_bits); } } while(0); } while(0);
        return 0x102;
    }
    if (src_bits > I2S_BITS_PER_SAMPLE_32BIT || aim_bits > I2S_BITS_PER_SAMPLE_32BIT) {
        do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "bits musn't be greater than 32, src_bits %d aim_bits %d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, src_bits, aim_bits); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "bits musn't be greater than 32, src_bits %d aim_bits %d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, src_bits, aim_bits); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "bits musn't be greater than 32, src_bits %d aim_bits %d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, src_bits, aim_bits); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "bits musn't be greater than 32, src_bits %d aim_bits %d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, src_bits, aim_bits); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "bits musn't be greater than 32, src_bits %d aim_bits %d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, src_bits, aim_bits); } } while(0); } while(0);
        return 0x102;
    }
    if ((src_bits == I2S_BITS_PER_SAMPLE_16BIT || src_bits == I2S_BITS_PER_SAMPLE_32BIT) && (size % 2 != 0)) {
        do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "size must be a even number while src_bits is even, src_bits %d size %d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, src_bits, size); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "size must be a even number while src_bits is even, src_bits %d size %d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, src_bits, size); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "size must be a even number while src_bits is even, src_bits %d size %d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, src_bits, size); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "size must be a even number while src_bits is even, src_bits %d size %d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, src_bits, size); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "size must be a even number while src_bits is even, src_bits %d size %d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, src_bits, size); } } while(0); } while(0);
        return 0x102;
    }
    if (src_bits == I2S_BITS_PER_SAMPLE_24BIT && (size % 3 != 0)) {
        do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "size must be a multiple of 3 while src_bits is 24, size %d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, size); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "size must be a multiple of 3 while src_bits is 24, size %d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, size); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "size must be a multiple of 3 while src_bits is 24, size %d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, size); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "size must be a multiple of 3 while src_bits is 24, size %d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, size); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "size must be a multiple of 3 while src_bits is 24, size %d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, size); } } while(0); } while(0);
        return 0x102;
    }

    src_bytes = src_bits / 8;
    aim_bytes = aim_bits / 8;
    zero_bytes = aim_bytes - src_bytes;
    xQueueGenericReceive( ( QueueHandle_t ) ( p_i2s_obj[i2s_num]->tx->mux ), 
# 1220 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 3 4
   ((void *)0)
# 1220 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
   , ( (TickType_t)( TickType_t ) 0xffffffffUL ), ( ( BaseType_t ) 0 ) );
    size = size * aim_bytes / src_bytes;
    do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "aim_bytes %d src_bytes %d size %d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, aim_bytes, src_bytes, size); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "aim_bytes %d src_bytes %d size %d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, aim_bytes, src_bytes, size); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "aim_bytes %d src_bytes %d size %d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, aim_bytes, src_bytes, size); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "aim_bytes %d src_bytes %d size %d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, aim_bytes, src_bytes, size); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "aim_bytes %d src_bytes %d size %d" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, aim_bytes, src_bytes, size); } } while(0); } while(0);
    while (size > 0) {
        if (p_i2s_obj[i2s_num]->tx->rw_pos == p_i2s_obj[i2s_num]->tx->buf_size || p_i2s_obj[i2s_num]->tx->curr_ptr == 
# 1224 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 3 4
                                                                                                                     ((void *)0)
# 1224 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
                                                                                                                         ) {
            if (xQueueGenericReceive( ( p_i2s_obj[i2s_num]->tx->queue ), ( &p_i2s_obj[i2s_num]->tx->curr_ptr ), ( ticks_to_wait ), ( ( BaseType_t ) 0 ) ) == ( ( BaseType_t ) 0 )) {
                break;
            }
            p_i2s_obj[i2s_num]->tx->rw_pos = 0;
        }
        data_ptr = (char*)p_i2s_obj[i2s_num]->tx->curr_ptr;
        data_ptr += p_i2s_obj[i2s_num]->tx->rw_pos;
        bytes_can_write = p_i2s_obj[i2s_num]->tx->buf_size - p_i2s_obj[i2s_num]->tx->rw_pos;
        if (bytes_can_write > size) {
            bytes_can_write = size;
        }
        tail = bytes_can_write % aim_bytes;
        bytes_can_write = bytes_can_write - tail;

        memset(data_ptr, 0, bytes_can_write);
        for (int j = 0; j < bytes_can_write; j += (aim_bytes - zero_bytes)) {
            j += zero_bytes;
            memcpy(&data_ptr[j], (const char *)(src + *bytes_written), aim_bytes - zero_bytes);
            (*bytes_written) += (aim_bytes - zero_bytes);
        }
        size -= bytes_can_write;
        p_i2s_obj[i2s_num]->tx->rw_pos += bytes_can_write;
    }
    xQueueGenericSend( ( QueueHandle_t ) ( p_i2s_obj[i2s_num]->tx->mux ), 
# 1248 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 3 4
   ((void *)0)
# 1248 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
   , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
    return 0;
}

int i2s_read_bytes(i2s_port_t i2s_num, void *dest, size_t size, TickType_t ticks_to_wait)
{
    size_t bytes_read = 0;
    int res = 0;
    res = i2s_read(i2s_num, dest, size, &bytes_read, ticks_to_wait);
    if (res != 0) {
        return -1;
    } else {
        return bytes_read;
    }
}

esp_err_t i2s_read(i2s_port_t i2s_num, void *dest, size_t size, size_t *bytes_read, TickType_t ticks_to_wait)
{
    char *data_ptr, *dest_byte;
    int bytes_can_read;
    *bytes_read = 0;
    dest_byte = (char *)dest;
    if (!((i2s_num < I2S_NUM_MAX))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1270, __FUNCTION__, "i2s_num error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1270, __FUNCTION__, "i2s_num error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1270, __FUNCTION__, "i2s_num error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1270, __FUNCTION__, "i2s_num error"); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1270, __FUNCTION__, "i2s_num error"); } } while(0); } while(0); return (0x102); };
    if (!((size < (4 * 1024 * 1024)))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1271, __FUNCTION__, "size is too large"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1271, __FUNCTION__, "size is too large"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1271, __FUNCTION__, "size is too large"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1271, __FUNCTION__, "size is too large"); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1271, __FUNCTION__, "size is too large"); } } while(0); } while(0); return (0x102); };
    if (!((p_i2s_obj[i2s_num]->rx))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1272, __FUNCTION__, "rx NULL"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1272, __FUNCTION__, "rx NULL"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1272, __FUNCTION__, "rx NULL"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1272, __FUNCTION__, "rx NULL"); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1272, __FUNCTION__, "rx NULL"); } } while(0); } while(0); return (0x102); };
    xQueueGenericReceive( ( QueueHandle_t ) ( p_i2s_obj[i2s_num]->rx->mux ), 
# 1273 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 3 4
   ((void *)0)
# 1273 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
   , ( (TickType_t)( TickType_t ) 0xffffffffUL ), ( ( BaseType_t ) 0 ) );
    while (size > 0) {
        if (p_i2s_obj[i2s_num]->rx->rw_pos == p_i2s_obj[i2s_num]->rx->buf_size || p_i2s_obj[i2s_num]->rx->curr_ptr == 
# 1275 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 3 4
                                                                                                                     ((void *)0)
# 1275 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
                                                                                                                         ) {
            if (xQueueGenericReceive( ( p_i2s_obj[i2s_num]->rx->queue ), ( &p_i2s_obj[i2s_num]->rx->curr_ptr ), ( ticks_to_wait ), ( ( BaseType_t ) 0 ) ) == ( ( BaseType_t ) 0 )) {
                break;
            }
            p_i2s_obj[i2s_num]->rx->rw_pos = 0;
        }
        data_ptr = (char*)p_i2s_obj[i2s_num]->rx->curr_ptr;
        data_ptr += p_i2s_obj[i2s_num]->rx->rw_pos;
        bytes_can_read = p_i2s_obj[i2s_num]->rx->buf_size - p_i2s_obj[i2s_num]->rx->rw_pos;
        if (bytes_can_read > size) {
            bytes_can_read = size;
        }
        memcpy(dest_byte, data_ptr, bytes_can_read);
        size -= bytes_can_read;
        dest_byte += bytes_can_read;
        p_i2s_obj[i2s_num]->rx->rw_pos += bytes_can_read;
        (*bytes_read) += bytes_can_read;
    }
    xQueueGenericSend( ( QueueHandle_t ) ( p_i2s_obj[i2s_num]->rx->mux ), 
# 1293 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c" 3 4
   ((void *)0)
# 1293 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c"
   , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
    return 0;
}

int i2s_push_sample(i2s_port_t i2s_num, const void *sample, TickType_t ticks_to_wait)
{
    size_t bytes_push = 0;
    int res = 0;
    if (!((i2s_num < I2S_NUM_MAX))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1301, __FUNCTION__, "i2s_num error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1301, __FUNCTION__, "i2s_num error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1301, __FUNCTION__, "i2s_num error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1301, __FUNCTION__, "i2s_num error"); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1301, __FUNCTION__, "i2s_num error"); } } while(0); } while(0); return (-1); };
    res = i2s_write(i2s_num, sample, p_i2s_obj[i2s_num]->bytes_per_sample, &bytes_push, ticks_to_wait);
    if (res != 0) {
        return -1;
    } else {
        return bytes_push;
    }
}

int i2s_pop_sample(i2s_port_t i2s_num, void *sample, TickType_t ticks_to_wait)
{
    size_t bytes_pop = 0;
    int res = 0;
    if (!((i2s_num < I2S_NUM_MAX))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2S_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1314, __FUNCTION__, "i2s_num error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2S_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1314, __FUNCTION__, "i2s_num error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2S_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1314, __FUNCTION__, "i2s_num error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2S_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1314, __FUNCTION__, "i2s_num error"); } else { esp_log_write(ESP_LOG_INFO, I2S_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2S_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2s.c", 1314, __FUNCTION__, "i2s_num error"); } } while(0); } while(0); return (-1); };
    res = i2s_read(i2s_num, sample, p_i2s_obj[i2s_num]->bytes_per_sample, &bytes_pop, ticks_to_wait);
    if (res != 0) {
        return -1;
    } else {
        return bytes_pop;
    }
}
