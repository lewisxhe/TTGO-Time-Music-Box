# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/smp/aes.c"
# 1 "D:\\ESP32\\esp-idf-v3.1-rc1\\ESP32_PIC_A2DP\\build\\bt//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/smp/aes.c"
# 37 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/smp/aes.c"
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


# 38 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/smp/aes.c" 2
# 46 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/smp/aes.c"
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




# 47 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/smp/aes.c" 2


# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/common/include/common/bt_target.h" 1
# 37 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/common/include/common/bt_target.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/ESP32_PIC_A2DP/build/include/sdkconfig.h" 1
# 38 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/common/include/common/bt_target.h" 2
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
# 39 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/common/include/common/bt_target.h" 2

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
# 50 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/smp/aes.c" 2
# 68 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/smp/aes.c"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/smp/include/aes.h" 1
# 58 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/smp/include/aes.h"
typedef unsigned char uint_8t;

typedef uint_8t return_type;





typedef uint_8t length_type;

typedef struct {
    uint_8t ksch[(14 + 1) * (4 * 4)];
    uint_8t rnd;
} aes_context;
# 83 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/smp/include/aes.h"
return_type aes_set_key( const unsigned char key[],
                         length_type keylen,
                         aes_context ctx[1] );




return_type bluedroid_aes_encrypt( const unsigned char in[(4 * 4)],
                                   unsigned char out[(4 * 4)],
                                   const aes_context ctx[1] );

return_type aes_cbc_encrypt( const unsigned char *in,
                             unsigned char *out,
                             int n_block,
                             unsigned char iv[(4 * 4)],
                             const aes_context ctx[1] );




return_type bluedroid_aes_decrypt( const unsigned char in[(4 * 4)],
                                   unsigned char out[(4 * 4)],
                                   const aes_context ctx[1] );

return_type aes_cbc_decrypt( const unsigned char *in,
                             unsigned char *out,
                             int n_block,
                             unsigned char iv[(4 * 4)],
                             const aes_context ctx[1] );
# 135 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/smp/include/aes.h"
void bluedroid_aes_encrypt_128( const unsigned char in[(4 * 4)],
                                unsigned char out[(4 * 4)],
                                const unsigned char key[(4 * 4)],
                                uint_8t o_key[(4 * 4)] );



void bluedroid_aes_decrypt_128( const unsigned char in[(4 * 4)],
                                unsigned char out[(4 * 4)],
                                const unsigned char key[(4 * 4)],
                                unsigned char o_key[(4 * 4)] );



void bluedroid_aes_encrypt_256( const unsigned char in[(4 * 4)],
                                unsigned char out[(4 * 4)],
                                const unsigned char key[2 * (4 * 4)],
                                unsigned char o_key[2 * (4 * 4)] );



void bluedroid_aes_decrypt_256( const unsigned char in[(4 * 4)],
                                unsigned char out[(4 * 4)],
                                const unsigned char key[2 * (4 * 4)],
                                unsigned char o_key[2 * (4 * 4)] );
# 69 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/smp/aes.c" 2


typedef UINT32 uint_32t;
# 197 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/smp/aes.c"
static const uint_8t sbox[256] = { (0x63), (0x7c), (0x77), (0x7b), (0xf2), (0x6b), (0x6f), (0xc5), (0x30), (0x01), (0x67), (0x2b), (0xfe), (0xd7), (0xab), (0x76), (0xca), (0x82), (0xc9), (0x7d), (0xfa), (0x59), (0x47), (0xf0), (0xad), (0xd4), (0xa2), (0xaf), (0x9c), (0xa4), (0x72), (0xc0), (0xb7), (0xfd), (0x93), (0x26), (0x36), (0x3f), (0xf7), (0xcc), (0x34), (0xa5), (0xe5), (0xf1), (0x71), (0xd8), (0x31), (0x15), (0x04), (0xc7), (0x23), (0xc3), (0x18), (0x96), (0x05), (0x9a), (0x07), (0x12), (0x80), (0xe2), (0xeb), (0x27), (0xb2), (0x75), (0x09), (0x83), (0x2c), (0x1a), (0x1b), (0x6e), (0x5a), (0xa0), (0x52), (0x3b), (0xd6), (0xb3), (0x29), (0xe3), (0x2f), (0x84), (0x53), (0xd1), (0x00), (0xed), (0x20), (0xfc), (0xb1), (0x5b), (0x6a), (0xcb), (0xbe), (0x39), (0x4a), (0x4c), (0x58), (0xcf), (0xd0), (0xef), (0xaa), (0xfb), (0x43), (0x4d), (0x33), (0x85), (0x45), (0xf9), (0x02), (0x7f), (0x50), (0x3c), (0x9f), (0xa8), (0x51), (0xa3), (0x40), (0x8f), (0x92), (0x9d), (0x38), (0xf5), (0xbc), (0xb6), (0xda), (0x21), (0x10), (0xff), (0xf3), (0xd2), (0xcd), (0x0c), (0x13), (0xec), (0x5f), (0x97), (0x44), (0x17), (0xc4), (0xa7), (0x7e), (0x3d), (0x64), (0x5d), (0x19), (0x73), (0x60), (0x81), (0x4f), (0xdc), (0x22), (0x2a), (0x90), (0x88), (0x46), (0xee), (0xb8), (0x14), (0xde), (0x5e), (0x0b), (0xdb), (0xe0), (0x32), (0x3a), (0x0a), (0x49), (0x06), (0x24), (0x5c), (0xc2), (0xd3), (0xac), (0x62), (0x91), (0x95), (0xe4), (0x79), (0xe7), (0xc8), (0x37), (0x6d), (0x8d), (0xd5), (0x4e), (0xa9), (0x6c), (0x56), (0xf4), (0xea), (0x65), (0x7a), (0xae), (0x08), (0xba), (0x78), (0x25), (0x2e), (0x1c), (0xa6), (0xb4), (0xc6), (0xe8), (0xdd), (0x74), (0x1f), (0x4b), (0xbd), (0x8b), (0x8a), (0x70), (0x3e), (0xb5), (0x66), (0x48), (0x03), (0xf6), (0x0e), (0x61), (0x35), (0x57), (0xb9), (0x86), (0xc1), (0x1d), (0x9e), (0xe1), (0xf8), (0x98), (0x11), (0x69), (0xd9), (0x8e), (0x94), (0x9b), (0x1e), (0x87), (0xe9), (0xce), (0x55), (0x28), (0xdf), (0x8c), (0xa1), (0x89), (0x0d), (0xbf), (0xe6), (0x42), (0x68), (0x41), (0x99), (0x2d), (0x0f), (0xb0), (0x54), (0xbb), (0x16) };
static const uint_8t isbox[256] = { (0x52), (0x09), (0x6a), (0xd5), (0x30), (0x36), (0xa5), (0x38), (0xbf), (0x40), (0xa3), (0x9e), (0x81), (0xf3), (0xd7), (0xfb), (0x7c), (0xe3), (0x39), (0x82), (0x9b), (0x2f), (0xff), (0x87), (0x34), (0x8e), (0x43), (0x44), (0xc4), (0xde), (0xe9), (0xcb), (0x54), (0x7b), (0x94), (0x32), (0xa6), (0xc2), (0x23), (0x3d), (0xee), (0x4c), (0x95), (0x0b), (0x42), (0xfa), (0xc3), (0x4e), (0x08), (0x2e), (0xa1), (0x66), (0x28), (0xd9), (0x24), (0xb2), (0x76), (0x5b), (0xa2), (0x49), (0x6d), (0x8b), (0xd1), (0x25), (0x72), (0xf8), (0xf6), (0x64), (0x86), (0x68), (0x98), (0x16), (0xd4), (0xa4), (0x5c), (0xcc), (0x5d), (0x65), (0xb6), (0x92), (0x6c), (0x70), (0x48), (0x50), (0xfd), (0xed), (0xb9), (0xda), (0x5e), (0x15), (0x46), (0x57), (0xa7), (0x8d), (0x9d), (0x84), (0x90), (0xd8), (0xab), (0x00), (0x8c), (0xbc), (0xd3), (0x0a), (0xf7), (0xe4), (0x58), (0x05), (0xb8), (0xb3), (0x45), (0x06), (0xd0), (0x2c), (0x1e), (0x8f), (0xca), (0x3f), (0x0f), (0x02), (0xc1), (0xaf), (0xbd), (0x03), (0x01), (0x13), (0x8a), (0x6b), (0x3a), (0x91), (0x11), (0x41), (0x4f), (0x67), (0xdc), (0xea), (0x97), (0xf2), (0xcf), (0xce), (0xf0), (0xb4), (0xe6), (0x73), (0x96), (0xac), (0x74), (0x22), (0xe7), (0xad), (0x35), (0x85), (0xe2), (0xf9), (0x37), (0xe8), (0x1c), (0x75), (0xdf), (0x6e), (0x47), (0xf1), (0x1a), (0x71), (0x1d), (0x29), (0xc5), (0x89), (0x6f), (0xb7), (0x62), (0x0e), (0xaa), (0x18), (0xbe), (0x1b), (0xfc), (0x56), (0x3e), (0x4b), (0xc6), (0xd2), (0x79), (0x20), (0x9a), (0xdb), (0xc0), (0xfe), (0x78), (0xcd), (0x5a), (0xf4), (0x1f), (0xdd), (0xa8), (0x33), (0x88), (0x07), (0xc7), (0x31), (0xb1), (0x12), (0x10), (0x59), (0x27), (0x80), (0xec), (0x5f), (0x60), (0x51), (0x7f), (0xa9), (0x19), (0xb5), (0x4a), (0x0d), (0x2d), (0xe5), (0x7a), (0x9f), (0x93), (0xc9), (0x9c), (0xef), (0xa0), (0xe0), (0x3b), (0x4d), (0xae), (0x2a), (0xf5), (0xb0), (0xc8), (0xeb), (0xbb), (0x3c), (0x83), (0x53), (0x99), (0x61), (0x17), (0x2b), (0x04), (0x7e), (0xba), (0x77), (0xd6), (0x26), (0xe1), (0x69), (0x14), (0x63), (0x55), (0x21), (0x0c), (0x7d) };

static const uint_8t gfm2_sbox[256] = { ((0x63 << 1) ^ (((0x63 >> 7) & 1) * 0x011b)), ((0x7c << 1) ^ (((0x7c >> 7) & 1) * 0x011b)), ((0x77 << 1) ^ (((0x77 >> 7) & 1) * 0x011b)), ((0x7b << 1) ^ (((0x7b >> 7) & 1) * 0x011b)), ((0xf2 << 1) ^ (((0xf2 >> 7) & 1) * 0x011b)), ((0x6b << 1) ^ (((0x6b >> 7) & 1) * 0x011b)), ((0x6f << 1) ^ (((0x6f >> 7) & 1) * 0x011b)), ((0xc5 << 1) ^ (((0xc5 >> 7) & 1) * 0x011b)), ((0x30 << 1) ^ (((0x30 >> 7) & 1) * 0x011b)), ((0x01 << 1) ^ (((0x01 >> 7) & 1) * 0x011b)), ((0x67 << 1) ^ (((0x67 >> 7) & 1) * 0x011b)), ((0x2b << 1) ^ (((0x2b >> 7) & 1) * 0x011b)), ((0xfe << 1) ^ (((0xfe >> 7) & 1) * 0x011b)), ((0xd7 << 1) ^ (((0xd7 >> 7) & 1) * 0x011b)), ((0xab << 1) ^ (((0xab >> 7) & 1) * 0x011b)), ((0x76 << 1) ^ (((0x76 >> 7) & 1) * 0x011b)), ((0xca << 1) ^ (((0xca >> 7) & 1) * 0x011b)), ((0x82 << 1) ^ (((0x82 >> 7) & 1) * 0x011b)), ((0xc9 << 1) ^ (((0xc9 >> 7) & 1) * 0x011b)), ((0x7d << 1) ^ (((0x7d >> 7) & 1) * 0x011b)), ((0xfa << 1) ^ (((0xfa >> 7) & 1) * 0x011b)), ((0x59 << 1) ^ (((0x59 >> 7) & 1) * 0x011b)), ((0x47 << 1) ^ (((0x47 >> 7) & 1) * 0x011b)), ((0xf0 << 1) ^ (((0xf0 >> 7) & 1) * 0x011b)), ((0xad << 1) ^ (((0xad >> 7) & 1) * 0x011b)), ((0xd4 << 1) ^ (((0xd4 >> 7) & 1) * 0x011b)), ((0xa2 << 1) ^ (((0xa2 >> 7) & 1) * 0x011b)), ((0xaf << 1) ^ (((0xaf >> 7) & 1) * 0x011b)), ((0x9c << 1) ^ (((0x9c >> 7) & 1) * 0x011b)), ((0xa4 << 1) ^ (((0xa4 >> 7) & 1) * 0x011b)), ((0x72 << 1) ^ (((0x72 >> 7) & 1) * 0x011b)), ((0xc0 << 1) ^ (((0xc0 >> 7) & 1) * 0x011b)), ((0xb7 << 1) ^ (((0xb7 >> 7) & 1) * 0x011b)), ((0xfd << 1) ^ (((0xfd >> 7) & 1) * 0x011b)), ((0x93 << 1) ^ (((0x93 >> 7) & 1) * 0x011b)), ((0x26 << 1) ^ (((0x26 >> 7) & 1) * 0x011b)), ((0x36 << 1) ^ (((0x36 >> 7) & 1) * 0x011b)), ((0x3f << 1) ^ (((0x3f >> 7) & 1) * 0x011b)), ((0xf7 << 1) ^ (((0xf7 >> 7) & 1) * 0x011b)), ((0xcc << 1) ^ (((0xcc >> 7) & 1) * 0x011b)), ((0x34 << 1) ^ (((0x34 >> 7) & 1) * 0x011b)), ((0xa5 << 1) ^ (((0xa5 >> 7) & 1) * 0x011b)), ((0xe5 << 1) ^ (((0xe5 >> 7) & 1) * 0x011b)), ((0xf1 << 1) ^ (((0xf1 >> 7) & 1) * 0x011b)), ((0x71 << 1) ^ (((0x71 >> 7) & 1) * 0x011b)), ((0xd8 << 1) ^ (((0xd8 >> 7) & 1) * 0x011b)), ((0x31 << 1) ^ (((0x31 >> 7) & 1) * 0x011b)), ((0x15 << 1) ^ (((0x15 >> 7) & 1) * 0x011b)), ((0x04 << 1) ^ (((0x04 >> 7) & 1) * 0x011b)), ((0xc7 << 1) ^ (((0xc7 >> 7) & 1) * 0x011b)), ((0x23 << 1) ^ (((0x23 >> 7) & 1) * 0x011b)), ((0xc3 << 1) ^ (((0xc3 >> 7) & 1) * 0x011b)), ((0x18 << 1) ^ (((0x18 >> 7) & 1) * 0x011b)), ((0x96 << 1) ^ (((0x96 >> 7) & 1) * 0x011b)), ((0x05 << 1) ^ (((0x05 >> 7) & 1) * 0x011b)), ((0x9a << 1) ^ (((0x9a >> 7) & 1) * 0x011b)), ((0x07 << 1) ^ (((0x07 >> 7) & 1) * 0x011b)), ((0x12 << 1) ^ (((0x12 >> 7) & 1) * 0x011b)), ((0x80 << 1) ^ (((0x80 >> 7) & 1) * 0x011b)), ((0xe2 << 1) ^ (((0xe2 >> 7) & 1) * 0x011b)), ((0xeb << 1) ^ (((0xeb >> 7) & 1) * 0x011b)), ((0x27 << 1) ^ (((0x27 >> 7) & 1) * 0x011b)), ((0xb2 << 1) ^ (((0xb2 >> 7) & 1) * 0x011b)), ((0x75 << 1) ^ (((0x75 >> 7) & 1) * 0x011b)), ((0x09 << 1) ^ (((0x09 >> 7) & 1) * 0x011b)), ((0x83 << 1) ^ (((0x83 >> 7) & 1) * 0x011b)), ((0x2c << 1) ^ (((0x2c >> 7) & 1) * 0x011b)), ((0x1a << 1) ^ (((0x1a >> 7) & 1) * 0x011b)), ((0x1b << 1) ^ (((0x1b >> 7) & 1) * 0x011b)), ((0x6e << 1) ^ (((0x6e >> 7) & 1) * 0x011b)), ((0x5a << 1) ^ (((0x5a >> 7) & 1) * 0x011b)), ((0xa0 << 1) ^ (((0xa0 >> 7) & 1) * 0x011b)), ((0x52 << 1) ^ (((0x52 >> 7) & 1) * 0x011b)), ((0x3b << 1) ^ (((0x3b >> 7) & 1) * 0x011b)), ((0xd6 << 1) ^ (((0xd6 >> 7) & 1) * 0x011b)), ((0xb3 << 1) ^ (((0xb3 >> 7) & 1) * 0x011b)), ((0x29 << 1) ^ (((0x29 >> 7) & 1) * 0x011b)), ((0xe3 << 1) ^ (((0xe3 >> 7) & 1) * 0x011b)), ((0x2f << 1) ^ (((0x2f >> 7) & 1) * 0x011b)), ((0x84 << 1) ^ (((0x84 >> 7) & 1) * 0x011b)), ((0x53 << 1) ^ (((0x53 >> 7) & 1) * 0x011b)), ((0xd1 << 1) ^ (((0xd1 >> 7) & 1) * 0x011b)), ((0x00 << 1) ^ (((0x00 >> 7) & 1) * 0x011b)), ((0xed << 1) ^ (((0xed >> 7) & 1) * 0x011b)), ((0x20 << 1) ^ (((0x20 >> 7) & 1) * 0x011b)), ((0xfc << 1) ^ (((0xfc >> 7) & 1) * 0x011b)), ((0xb1 << 1) ^ (((0xb1 >> 7) & 1) * 0x011b)), ((0x5b << 1) ^ (((0x5b >> 7) & 1) * 0x011b)), ((0x6a << 1) ^ (((0x6a >> 7) & 1) * 0x011b)), ((0xcb << 1) ^ (((0xcb >> 7) & 1) * 0x011b)), ((0xbe << 1) ^ (((0xbe >> 7) & 1) * 0x011b)), ((0x39 << 1) ^ (((0x39 >> 7) & 1) * 0x011b)), ((0x4a << 1) ^ (((0x4a >> 7) & 1) * 0x011b)), ((0x4c << 1) ^ (((0x4c >> 7) & 1) * 0x011b)), ((0x58 << 1) ^ (((0x58 >> 7) & 1) * 0x011b)), ((0xcf << 1) ^ (((0xcf >> 7) & 1) * 0x011b)), ((0xd0 << 1) ^ (((0xd0 >> 7) & 1) * 0x011b)), ((0xef << 1) ^ (((0xef >> 7) & 1) * 0x011b)), ((0xaa << 1) ^ (((0xaa >> 7) & 1) * 0x011b)), ((0xfb << 1) ^ (((0xfb >> 7) & 1) * 0x011b)), ((0x43 << 1) ^ (((0x43 >> 7) & 1) * 0x011b)), ((0x4d << 1) ^ (((0x4d >> 7) & 1) * 0x011b)), ((0x33 << 1) ^ (((0x33 >> 7) & 1) * 0x011b)), ((0x85 << 1) ^ (((0x85 >> 7) & 1) * 0x011b)), ((0x45 << 1) ^ (((0x45 >> 7) & 1) * 0x011b)), ((0xf9 << 1) ^ (((0xf9 >> 7) & 1) * 0x011b)), ((0x02 << 1) ^ (((0x02 >> 7) & 1) * 0x011b)), ((0x7f << 1) ^ (((0x7f >> 7) & 1) * 0x011b)), ((0x50 << 1) ^ (((0x50 >> 7) & 1) * 0x011b)), ((0x3c << 1) ^ (((0x3c >> 7) & 1) * 0x011b)), ((0x9f << 1) ^ (((0x9f >> 7) & 1) * 0x011b)), ((0xa8 << 1) ^ (((0xa8 >> 7) & 1) * 0x011b)), ((0x51 << 1) ^ (((0x51 >> 7) & 1) * 0x011b)), ((0xa3 << 1) ^ (((0xa3 >> 7) & 1) * 0x011b)), ((0x40 << 1) ^ (((0x40 >> 7) & 1) * 0x011b)), ((0x8f << 1) ^ (((0x8f >> 7) & 1) * 0x011b)), ((0x92 << 1) ^ (((0x92 >> 7) & 1) * 0x011b)), ((0x9d << 1) ^ (((0x9d >> 7) & 1) * 0x011b)), ((0x38 << 1) ^ (((0x38 >> 7) & 1) * 0x011b)), ((0xf5 << 1) ^ (((0xf5 >> 7) & 1) * 0x011b)), ((0xbc << 1) ^ (((0xbc >> 7) & 1) * 0x011b)), ((0xb6 << 1) ^ (((0xb6 >> 7) & 1) * 0x011b)), ((0xda << 1) ^ (((0xda >> 7) & 1) * 0x011b)), ((0x21 << 1) ^ (((0x21 >> 7) & 1) * 0x011b)), ((0x10 << 1) ^ (((0x10 >> 7) & 1) * 0x011b)), ((0xff << 1) ^ (((0xff >> 7) & 1) * 0x011b)), ((0xf3 << 1) ^ (((0xf3 >> 7) & 1) * 0x011b)), ((0xd2 << 1) ^ (((0xd2 >> 7) & 1) * 0x011b)), ((0xcd << 1) ^ (((0xcd >> 7) & 1) * 0x011b)), ((0x0c << 1) ^ (((0x0c >> 7) & 1) * 0x011b)), ((0x13 << 1) ^ (((0x13 >> 7) & 1) * 0x011b)), ((0xec << 1) ^ (((0xec >> 7) & 1) * 0x011b)), ((0x5f << 1) ^ (((0x5f >> 7) & 1) * 0x011b)), ((0x97 << 1) ^ (((0x97 >> 7) & 1) * 0x011b)), ((0x44 << 1) ^ (((0x44 >> 7) & 1) * 0x011b)), ((0x17 << 1) ^ (((0x17 >> 7) & 1) * 0x011b)), ((0xc4 << 1) ^ (((0xc4 >> 7) & 1) * 0x011b)), ((0xa7 << 1) ^ (((0xa7 >> 7) & 1) * 0x011b)), ((0x7e << 1) ^ (((0x7e >> 7) & 1) * 0x011b)), ((0x3d << 1) ^ (((0x3d >> 7) & 1) * 0x011b)), ((0x64 << 1) ^ (((0x64 >> 7) & 1) * 0x011b)), ((0x5d << 1) ^ (((0x5d >> 7) & 1) * 0x011b)), ((0x19 << 1) ^ (((0x19 >> 7) & 1) * 0x011b)), ((0x73 << 1) ^ (((0x73 >> 7) & 1) * 0x011b)), ((0x60 << 1) ^ (((0x60 >> 7) & 1) * 0x011b)), ((0x81 << 1) ^ (((0x81 >> 7) & 1) * 0x011b)), ((0x4f << 1) ^ (((0x4f >> 7) & 1) * 0x011b)), ((0xdc << 1) ^ (((0xdc >> 7) & 1) * 0x011b)), ((0x22 << 1) ^ (((0x22 >> 7) & 1) * 0x011b)), ((0x2a << 1) ^ (((0x2a >> 7) & 1) * 0x011b)), ((0x90 << 1) ^ (((0x90 >> 7) & 1) * 0x011b)), ((0x88 << 1) ^ (((0x88 >> 7) & 1) * 0x011b)), ((0x46 << 1) ^ (((0x46 >> 7) & 1) * 0x011b)), ((0xee << 1) ^ (((0xee >> 7) & 1) * 0x011b)), ((0xb8 << 1) ^ (((0xb8 >> 7) & 1) * 0x011b)), ((0x14 << 1) ^ (((0x14 >> 7) & 1) * 0x011b)), ((0xde << 1) ^ (((0xde >> 7) & 1) * 0x011b)), ((0x5e << 1) ^ (((0x5e >> 7) & 1) * 0x011b)), ((0x0b << 1) ^ (((0x0b >> 7) & 1) * 0x011b)), ((0xdb << 1) ^ (((0xdb >> 7) & 1) * 0x011b)), ((0xe0 << 1) ^ (((0xe0 >> 7) & 1) * 0x011b)), ((0x32 << 1) ^ (((0x32 >> 7) & 1) * 0x011b)), ((0x3a << 1) ^ (((0x3a >> 7) & 1) * 0x011b)), ((0x0a << 1) ^ (((0x0a >> 7) & 1) * 0x011b)), ((0x49 << 1) ^ (((0x49 >> 7) & 1) * 0x011b)), ((0x06 << 1) ^ (((0x06 >> 7) & 1) * 0x011b)), ((0x24 << 1) ^ (((0x24 >> 7) & 1) * 0x011b)), ((0x5c << 1) ^ (((0x5c >> 7) & 1) * 0x011b)), ((0xc2 << 1) ^ (((0xc2 >> 7) & 1) * 0x011b)), ((0xd3 << 1) ^ (((0xd3 >> 7) & 1) * 0x011b)), ((0xac << 1) ^ (((0xac >> 7) & 1) * 0x011b)), ((0x62 << 1) ^ (((0x62 >> 7) & 1) * 0x011b)), ((0x91 << 1) ^ (((0x91 >> 7) & 1) * 0x011b)), ((0x95 << 1) ^ (((0x95 >> 7) & 1) * 0x011b)), ((0xe4 << 1) ^ (((0xe4 >> 7) & 1) * 0x011b)), ((0x79 << 1) ^ (((0x79 >> 7) & 1) * 0x011b)), ((0xe7 << 1) ^ (((0xe7 >> 7) & 1) * 0x011b)), ((0xc8 << 1) ^ (((0xc8 >> 7) & 1) * 0x011b)), ((0x37 << 1) ^ (((0x37 >> 7) & 1) * 0x011b)), ((0x6d << 1) ^ (((0x6d >> 7) & 1) * 0x011b)), ((0x8d << 1) ^ (((0x8d >> 7) & 1) * 0x011b)), ((0xd5 << 1) ^ (((0xd5 >> 7) & 1) * 0x011b)), ((0x4e << 1) ^ (((0x4e >> 7) & 1) * 0x011b)), ((0xa9 << 1) ^ (((0xa9 >> 7) & 1) * 0x011b)), ((0x6c << 1) ^ (((0x6c >> 7) & 1) * 0x011b)), ((0x56 << 1) ^ (((0x56 >> 7) & 1) * 0x011b)), ((0xf4 << 1) ^ (((0xf4 >> 7) & 1) * 0x011b)), ((0xea << 1) ^ (((0xea >> 7) & 1) * 0x011b)), ((0x65 << 1) ^ (((0x65 >> 7) & 1) * 0x011b)), ((0x7a << 1) ^ (((0x7a >> 7) & 1) * 0x011b)), ((0xae << 1) ^ (((0xae >> 7) & 1) * 0x011b)), ((0x08 << 1) ^ (((0x08 >> 7) & 1) * 0x011b)), ((0xba << 1) ^ (((0xba >> 7) & 1) * 0x011b)), ((0x78 << 1) ^ (((0x78 >> 7) & 1) * 0x011b)), ((0x25 << 1) ^ (((0x25 >> 7) & 1) * 0x011b)), ((0x2e << 1) ^ (((0x2e >> 7) & 1) * 0x011b)), ((0x1c << 1) ^ (((0x1c >> 7) & 1) * 0x011b)), ((0xa6 << 1) ^ (((0xa6 >> 7) & 1) * 0x011b)), ((0xb4 << 1) ^ (((0xb4 >> 7) & 1) * 0x011b)), ((0xc6 << 1) ^ (((0xc6 >> 7) & 1) * 0x011b)), ((0xe8 << 1) ^ (((0xe8 >> 7) & 1) * 0x011b)), ((0xdd << 1) ^ (((0xdd >> 7) & 1) * 0x011b)), ((0x74 << 1) ^ (((0x74 >> 7) & 1) * 0x011b)), ((0x1f << 1) ^ (((0x1f >> 7) & 1) * 0x011b)), ((0x4b << 1) ^ (((0x4b >> 7) & 1) * 0x011b)), ((0xbd << 1) ^ (((0xbd >> 7) & 1) * 0x011b)), ((0x8b << 1) ^ (((0x8b >> 7) & 1) * 0x011b)), ((0x8a << 1) ^ (((0x8a >> 7) & 1) * 0x011b)), ((0x70 << 1) ^ (((0x70 >> 7) & 1) * 0x011b)), ((0x3e << 1) ^ (((0x3e >> 7) & 1) * 0x011b)), ((0xb5 << 1) ^ (((0xb5 >> 7) & 1) * 0x011b)), ((0x66 << 1) ^ (((0x66 >> 7) & 1) * 0x011b)), ((0x48 << 1) ^ (((0x48 >> 7) & 1) * 0x011b)), ((0x03 << 1) ^ (((0x03 >> 7) & 1) * 0x011b)), ((0xf6 << 1) ^ (((0xf6 >> 7) & 1) * 0x011b)), ((0x0e << 1) ^ (((0x0e >> 7) & 1) * 0x011b)), ((0x61 << 1) ^ (((0x61 >> 7) & 1) * 0x011b)), ((0x35 << 1) ^ (((0x35 >> 7) & 1) * 0x011b)), ((0x57 << 1) ^ (((0x57 >> 7) & 1) * 0x011b)), ((0xb9 << 1) ^ (((0xb9 >> 7) & 1) * 0x011b)), ((0x86 << 1) ^ (((0x86 >> 7) & 1) * 0x011b)), ((0xc1 << 1) ^ (((0xc1 >> 7) & 1) * 0x011b)), ((0x1d << 1) ^ (((0x1d >> 7) & 1) * 0x011b)), ((0x9e << 1) ^ (((0x9e >> 7) & 1) * 0x011b)), ((0xe1 << 1) ^ (((0xe1 >> 7) & 1) * 0x011b)), ((0xf8 << 1) ^ (((0xf8 >> 7) & 1) * 0x011b)), ((0x98 << 1) ^ (((0x98 >> 7) & 1) * 0x011b)), ((0x11 << 1) ^ (((0x11 >> 7) & 1) * 0x011b)), ((0x69 << 1) ^ (((0x69 >> 7) & 1) * 0x011b)), ((0xd9 << 1) ^ (((0xd9 >> 7) & 1) * 0x011b)), ((0x8e << 1) ^ (((0x8e >> 7) & 1) * 0x011b)), ((0x94 << 1) ^ (((0x94 >> 7) & 1) * 0x011b)), ((0x9b << 1) ^ (((0x9b >> 7) & 1) * 0x011b)), ((0x1e << 1) ^ (((0x1e >> 7) & 1) * 0x011b)), ((0x87 << 1) ^ (((0x87 >> 7) & 1) * 0x011b)), ((0xe9 << 1) ^ (((0xe9 >> 7) & 1) * 0x011b)), ((0xce << 1) ^ (((0xce >> 7) & 1) * 0x011b)), ((0x55 << 1) ^ (((0x55 >> 7) & 1) * 0x011b)), ((0x28 << 1) ^ (((0x28 >> 7) & 1) * 0x011b)), ((0xdf << 1) ^ (((0xdf >> 7) & 1) * 0x011b)), ((0x8c << 1) ^ (((0x8c >> 7) & 1) * 0x011b)), ((0xa1 << 1) ^ (((0xa1 >> 7) & 1) * 0x011b)), ((0x89 << 1) ^ (((0x89 >> 7) & 1) * 0x011b)), ((0x0d << 1) ^ (((0x0d >> 7) & 1) * 0x011b)), ((0xbf << 1) ^ (((0xbf >> 7) & 1) * 0x011b)), ((0xe6 << 1) ^ (((0xe6 >> 7) & 1) * 0x011b)), ((0x42 << 1) ^ (((0x42 >> 7) & 1) * 0x011b)), ((0x68 << 1) ^ (((0x68 >> 7) & 1) * 0x011b)), ((0x41 << 1) ^ (((0x41 >> 7) & 1) * 0x011b)), ((0x99 << 1) ^ (((0x99 >> 7) & 1) * 0x011b)), ((0x2d << 1) ^ (((0x2d >> 7) & 1) * 0x011b)), ((0x0f << 1) ^ (((0x0f >> 7) & 1) * 0x011b)), ((0xb0 << 1) ^ (((0xb0 >> 7) & 1) * 0x011b)), ((0x54 << 1) ^ (((0x54 >> 7) & 1) * 0x011b)), ((0xbb << 1) ^ (((0xbb >> 7) & 1) * 0x011b)), ((0x16 << 1) ^ (((0x16 >> 7) & 1) * 0x011b)) };
static const uint_8t gfm3_sbox[256] = { (((0x63 << 1) ^ (((0x63 >> 7) & 1) * 0x011b)) ^ 0x63), (((0x7c << 1) ^ (((0x7c >> 7) & 1) * 0x011b)) ^ 0x7c), (((0x77 << 1) ^ (((0x77 >> 7) & 1) * 0x011b)) ^ 0x77), (((0x7b << 1) ^ (((0x7b >> 7) & 1) * 0x011b)) ^ 0x7b), (((0xf2 << 1) ^ (((0xf2 >> 7) & 1) * 0x011b)) ^ 0xf2), (((0x6b << 1) ^ (((0x6b >> 7) & 1) * 0x011b)) ^ 0x6b), (((0x6f << 1) ^ (((0x6f >> 7) & 1) * 0x011b)) ^ 0x6f), (((0xc5 << 1) ^ (((0xc5 >> 7) & 1) * 0x011b)) ^ 0xc5), (((0x30 << 1) ^ (((0x30 >> 7) & 1) * 0x011b)) ^ 0x30), (((0x01 << 1) ^ (((0x01 >> 7) & 1) * 0x011b)) ^ 0x01), (((0x67 << 1) ^ (((0x67 >> 7) & 1) * 0x011b)) ^ 0x67), (((0x2b << 1) ^ (((0x2b >> 7) & 1) * 0x011b)) ^ 0x2b), (((0xfe << 1) ^ (((0xfe >> 7) & 1) * 0x011b)) ^ 0xfe), (((0xd7 << 1) ^ (((0xd7 >> 7) & 1) * 0x011b)) ^ 0xd7), (((0xab << 1) ^ (((0xab >> 7) & 1) * 0x011b)) ^ 0xab), (((0x76 << 1) ^ (((0x76 >> 7) & 1) * 0x011b)) ^ 0x76), (((0xca << 1) ^ (((0xca >> 7) & 1) * 0x011b)) ^ 0xca), (((0x82 << 1) ^ (((0x82 >> 7) & 1) * 0x011b)) ^ 0x82), (((0xc9 << 1) ^ (((0xc9 >> 7) & 1) * 0x011b)) ^ 0xc9), (((0x7d << 1) ^ (((0x7d >> 7) & 1) * 0x011b)) ^ 0x7d), (((0xfa << 1) ^ (((0xfa >> 7) & 1) * 0x011b)) ^ 0xfa), (((0x59 << 1) ^ (((0x59 >> 7) & 1) * 0x011b)) ^ 0x59), (((0x47 << 1) ^ (((0x47 >> 7) & 1) * 0x011b)) ^ 0x47), (((0xf0 << 1) ^ (((0xf0 >> 7) & 1) * 0x011b)) ^ 0xf0), (((0xad << 1) ^ (((0xad >> 7) & 1) * 0x011b)) ^ 0xad), (((0xd4 << 1) ^ (((0xd4 >> 7) & 1) * 0x011b)) ^ 0xd4), (((0xa2 << 1) ^ (((0xa2 >> 7) & 1) * 0x011b)) ^ 0xa2), (((0xaf << 1) ^ (((0xaf >> 7) & 1) * 0x011b)) ^ 0xaf), (((0x9c << 1) ^ (((0x9c >> 7) & 1) * 0x011b)) ^ 0x9c), (((0xa4 << 1) ^ (((0xa4 >> 7) & 1) * 0x011b)) ^ 0xa4), (((0x72 << 1) ^ (((0x72 >> 7) & 1) * 0x011b)) ^ 0x72), (((0xc0 << 1) ^ (((0xc0 >> 7) & 1) * 0x011b)) ^ 0xc0), (((0xb7 << 1) ^ (((0xb7 >> 7) & 1) * 0x011b)) ^ 0xb7), (((0xfd << 1) ^ (((0xfd >> 7) & 1) * 0x011b)) ^ 0xfd), (((0x93 << 1) ^ (((0x93 >> 7) & 1) * 0x011b)) ^ 0x93), (((0x26 << 1) ^ (((0x26 >> 7) & 1) * 0x011b)) ^ 0x26), (((0x36 << 1) ^ (((0x36 >> 7) & 1) * 0x011b)) ^ 0x36), (((0x3f << 1) ^ (((0x3f >> 7) & 1) * 0x011b)) ^ 0x3f), (((0xf7 << 1) ^ (((0xf7 >> 7) & 1) * 0x011b)) ^ 0xf7), (((0xcc << 1) ^ (((0xcc >> 7) & 1) * 0x011b)) ^ 0xcc), (((0x34 << 1) ^ (((0x34 >> 7) & 1) * 0x011b)) ^ 0x34), (((0xa5 << 1) ^ (((0xa5 >> 7) & 1) * 0x011b)) ^ 0xa5), (((0xe5 << 1) ^ (((0xe5 >> 7) & 1) * 0x011b)) ^ 0xe5), (((0xf1 << 1) ^ (((0xf1 >> 7) & 1) * 0x011b)) ^ 0xf1), (((0x71 << 1) ^ (((0x71 >> 7) & 1) * 0x011b)) ^ 0x71), (((0xd8 << 1) ^ (((0xd8 >> 7) & 1) * 0x011b)) ^ 0xd8), (((0x31 << 1) ^ (((0x31 >> 7) & 1) * 0x011b)) ^ 0x31), (((0x15 << 1) ^ (((0x15 >> 7) & 1) * 0x011b)) ^ 0x15), (((0x04 << 1) ^ (((0x04 >> 7) & 1) * 0x011b)) ^ 0x04), (((0xc7 << 1) ^ (((0xc7 >> 7) & 1) * 0x011b)) ^ 0xc7), (((0x23 << 1) ^ (((0x23 >> 7) & 1) * 0x011b)) ^ 0x23), (((0xc3 << 1) ^ (((0xc3 >> 7) & 1) * 0x011b)) ^ 0xc3), (((0x18 << 1) ^ (((0x18 >> 7) & 1) * 0x011b)) ^ 0x18), (((0x96 << 1) ^ (((0x96 >> 7) & 1) * 0x011b)) ^ 0x96), (((0x05 << 1) ^ (((0x05 >> 7) & 1) * 0x011b)) ^ 0x05), (((0x9a << 1) ^ (((0x9a >> 7) & 1) * 0x011b)) ^ 0x9a), (((0x07 << 1) ^ (((0x07 >> 7) & 1) * 0x011b)) ^ 0x07), (((0x12 << 1) ^ (((0x12 >> 7) & 1) * 0x011b)) ^ 0x12), (((0x80 << 1) ^ (((0x80 >> 7) & 1) * 0x011b)) ^ 0x80), (((0xe2 << 1) ^ (((0xe2 >> 7) & 1) * 0x011b)) ^ 0xe2), (((0xeb << 1) ^ (((0xeb >> 7) & 1) * 0x011b)) ^ 0xeb), (((0x27 << 1) ^ (((0x27 >> 7) & 1) * 0x011b)) ^ 0x27), (((0xb2 << 1) ^ (((0xb2 >> 7) & 1) * 0x011b)) ^ 0xb2), (((0x75 << 1) ^ (((0x75 >> 7) & 1) * 0x011b)) ^ 0x75), (((0x09 << 1) ^ (((0x09 >> 7) & 1) * 0x011b)) ^ 0x09), (((0x83 << 1) ^ (((0x83 >> 7) & 1) * 0x011b)) ^ 0x83), (((0x2c << 1) ^ (((0x2c >> 7) & 1) * 0x011b)) ^ 0x2c), (((0x1a << 1) ^ (((0x1a >> 7) & 1) * 0x011b)) ^ 0x1a), (((0x1b << 1) ^ (((0x1b >> 7) & 1) * 0x011b)) ^ 0x1b), (((0x6e << 1) ^ (((0x6e >> 7) & 1) * 0x011b)) ^ 0x6e), (((0x5a << 1) ^ (((0x5a >> 7) & 1) * 0x011b)) ^ 0x5a), (((0xa0 << 1) ^ (((0xa0 >> 7) & 1) * 0x011b)) ^ 0xa0), (((0x52 << 1) ^ (((0x52 >> 7) & 1) * 0x011b)) ^ 0x52), (((0x3b << 1) ^ (((0x3b >> 7) & 1) * 0x011b)) ^ 0x3b), (((0xd6 << 1) ^ (((0xd6 >> 7) & 1) * 0x011b)) ^ 0xd6), (((0xb3 << 1) ^ (((0xb3 >> 7) & 1) * 0x011b)) ^ 0xb3), (((0x29 << 1) ^ (((0x29 >> 7) & 1) * 0x011b)) ^ 0x29), (((0xe3 << 1) ^ (((0xe3 >> 7) & 1) * 0x011b)) ^ 0xe3), (((0x2f << 1) ^ (((0x2f >> 7) & 1) * 0x011b)) ^ 0x2f), (((0x84 << 1) ^ (((0x84 >> 7) & 1) * 0x011b)) ^ 0x84), (((0x53 << 1) ^ (((0x53 >> 7) & 1) * 0x011b)) ^ 0x53), (((0xd1 << 1) ^ (((0xd1 >> 7) & 1) * 0x011b)) ^ 0xd1), (((0x00 << 1) ^ (((0x00 >> 7) & 1) * 0x011b)) ^ 0x00), (((0xed << 1) ^ (((0xed >> 7) & 1) * 0x011b)) ^ 0xed), (((0x20 << 1) ^ (((0x20 >> 7) & 1) * 0x011b)) ^ 0x20), (((0xfc << 1) ^ (((0xfc >> 7) & 1) * 0x011b)) ^ 0xfc), (((0xb1 << 1) ^ (((0xb1 >> 7) & 1) * 0x011b)) ^ 0xb1), (((0x5b << 1) ^ (((0x5b >> 7) & 1) * 0x011b)) ^ 0x5b), (((0x6a << 1) ^ (((0x6a >> 7) & 1) * 0x011b)) ^ 0x6a), (((0xcb << 1) ^ (((0xcb >> 7) & 1) * 0x011b)) ^ 0xcb), (((0xbe << 1) ^ (((0xbe >> 7) & 1) * 0x011b)) ^ 0xbe), (((0x39 << 1) ^ (((0x39 >> 7) & 1) * 0x011b)) ^ 0x39), (((0x4a << 1) ^ (((0x4a >> 7) & 1) * 0x011b)) ^ 0x4a), (((0x4c << 1) ^ (((0x4c >> 7) & 1) * 0x011b)) ^ 0x4c), (((0x58 << 1) ^ (((0x58 >> 7) & 1) * 0x011b)) ^ 0x58), (((0xcf << 1) ^ (((0xcf >> 7) & 1) * 0x011b)) ^ 0xcf), (((0xd0 << 1) ^ (((0xd0 >> 7) & 1) * 0x011b)) ^ 0xd0), (((0xef << 1) ^ (((0xef >> 7) & 1) * 0x011b)) ^ 0xef), (((0xaa << 1) ^ (((0xaa >> 7) & 1) * 0x011b)) ^ 0xaa), (((0xfb << 1) ^ (((0xfb >> 7) & 1) * 0x011b)) ^ 0xfb), (((0x43 << 1) ^ (((0x43 >> 7) & 1) * 0x011b)) ^ 0x43), (((0x4d << 1) ^ (((0x4d >> 7) & 1) * 0x011b)) ^ 0x4d), (((0x33 << 1) ^ (((0x33 >> 7) & 1) * 0x011b)) ^ 0x33), (((0x85 << 1) ^ (((0x85 >> 7) & 1) * 0x011b)) ^ 0x85), (((0x45 << 1) ^ (((0x45 >> 7) & 1) * 0x011b)) ^ 0x45), (((0xf9 << 1) ^ (((0xf9 >> 7) & 1) * 0x011b)) ^ 0xf9), (((0x02 << 1) ^ (((0x02 >> 7) & 1) * 0x011b)) ^ 0x02), (((0x7f << 1) ^ (((0x7f >> 7) & 1) * 0x011b)) ^ 0x7f), (((0x50 << 1) ^ (((0x50 >> 7) & 1) * 0x011b)) ^ 0x50), (((0x3c << 1) ^ (((0x3c >> 7) & 1) * 0x011b)) ^ 0x3c), (((0x9f << 1) ^ (((0x9f >> 7) & 1) * 0x011b)) ^ 0x9f), (((0xa8 << 1) ^ (((0xa8 >> 7) & 1) * 0x011b)) ^ 0xa8), (((0x51 << 1) ^ (((0x51 >> 7) & 1) * 0x011b)) ^ 0x51), (((0xa3 << 1) ^ (((0xa3 >> 7) & 1) * 0x011b)) ^ 0xa3), (((0x40 << 1) ^ (((0x40 >> 7) & 1) * 0x011b)) ^ 0x40), (((0x8f << 1) ^ (((0x8f >> 7) & 1) * 0x011b)) ^ 0x8f), (((0x92 << 1) ^ (((0x92 >> 7) & 1) * 0x011b)) ^ 0x92), (((0x9d << 1) ^ (((0x9d >> 7) & 1) * 0x011b)) ^ 0x9d), (((0x38 << 1) ^ (((0x38 >> 7) & 1) * 0x011b)) ^ 0x38), (((0xf5 << 1) ^ (((0xf5 >> 7) & 1) * 0x011b)) ^ 0xf5), (((0xbc << 1) ^ (((0xbc >> 7) & 1) * 0x011b)) ^ 0xbc), (((0xb6 << 1) ^ (((0xb6 >> 7) & 1) * 0x011b)) ^ 0xb6), (((0xda << 1) ^ (((0xda >> 7) & 1) * 0x011b)) ^ 0xda), (((0x21 << 1) ^ (((0x21 >> 7) & 1) * 0x011b)) ^ 0x21), (((0x10 << 1) ^ (((0x10 >> 7) & 1) * 0x011b)) ^ 0x10), (((0xff << 1) ^ (((0xff >> 7) & 1) * 0x011b)) ^ 0xff), (((0xf3 << 1) ^ (((0xf3 >> 7) & 1) * 0x011b)) ^ 0xf3), (((0xd2 << 1) ^ (((0xd2 >> 7) & 1) * 0x011b)) ^ 0xd2), (((0xcd << 1) ^ (((0xcd >> 7) & 1) * 0x011b)) ^ 0xcd), (((0x0c << 1) ^ (((0x0c >> 7) & 1) * 0x011b)) ^ 0x0c), (((0x13 << 1) ^ (((0x13 >> 7) & 1) * 0x011b)) ^ 0x13), (((0xec << 1) ^ (((0xec >> 7) & 1) * 0x011b)) ^ 0xec), (((0x5f << 1) ^ (((0x5f >> 7) & 1) * 0x011b)) ^ 0x5f), (((0x97 << 1) ^ (((0x97 >> 7) & 1) * 0x011b)) ^ 0x97), (((0x44 << 1) ^ (((0x44 >> 7) & 1) * 0x011b)) ^ 0x44), (((0x17 << 1) ^ (((0x17 >> 7) & 1) * 0x011b)) ^ 0x17), (((0xc4 << 1) ^ (((0xc4 >> 7) & 1) * 0x011b)) ^ 0xc4), (((0xa7 << 1) ^ (((0xa7 >> 7) & 1) * 0x011b)) ^ 0xa7), (((0x7e << 1) ^ (((0x7e >> 7) & 1) * 0x011b)) ^ 0x7e), (((0x3d << 1) ^ (((0x3d >> 7) & 1) * 0x011b)) ^ 0x3d), (((0x64 << 1) ^ (((0x64 >> 7) & 1) * 0x011b)) ^ 0x64), (((0x5d << 1) ^ (((0x5d >> 7) & 1) * 0x011b)) ^ 0x5d), (((0x19 << 1) ^ (((0x19 >> 7) & 1) * 0x011b)) ^ 0x19), (((0x73 << 1) ^ (((0x73 >> 7) & 1) * 0x011b)) ^ 0x73), (((0x60 << 1) ^ (((0x60 >> 7) & 1) * 0x011b)) ^ 0x60), (((0x81 << 1) ^ (((0x81 >> 7) & 1) * 0x011b)) ^ 0x81), (((0x4f << 1) ^ (((0x4f >> 7) & 1) * 0x011b)) ^ 0x4f), (((0xdc << 1) ^ (((0xdc >> 7) & 1) * 0x011b)) ^ 0xdc), (((0x22 << 1) ^ (((0x22 >> 7) & 1) * 0x011b)) ^ 0x22), (((0x2a << 1) ^ (((0x2a >> 7) & 1) * 0x011b)) ^ 0x2a), (((0x90 << 1) ^ (((0x90 >> 7) & 1) * 0x011b)) ^ 0x90), (((0x88 << 1) ^ (((0x88 >> 7) & 1) * 0x011b)) ^ 0x88), (((0x46 << 1) ^ (((0x46 >> 7) & 1) * 0x011b)) ^ 0x46), (((0xee << 1) ^ (((0xee >> 7) & 1) * 0x011b)) ^ 0xee), (((0xb8 << 1) ^ (((0xb8 >> 7) & 1) * 0x011b)) ^ 0xb8), (((0x14 << 1) ^ (((0x14 >> 7) & 1) * 0x011b)) ^ 0x14), (((0xde << 1) ^ (((0xde >> 7) & 1) * 0x011b)) ^ 0xde), (((0x5e << 1) ^ (((0x5e >> 7) & 1) * 0x011b)) ^ 0x5e), (((0x0b << 1) ^ (((0x0b >> 7) & 1) * 0x011b)) ^ 0x0b), (((0xdb << 1) ^ (((0xdb >> 7) & 1) * 0x011b)) ^ 0xdb), (((0xe0 << 1) ^ (((0xe0 >> 7) & 1) * 0x011b)) ^ 0xe0), (((0x32 << 1) ^ (((0x32 >> 7) & 1) * 0x011b)) ^ 0x32), (((0x3a << 1) ^ (((0x3a >> 7) & 1) * 0x011b)) ^ 0x3a), (((0x0a << 1) ^ (((0x0a >> 7) & 1) * 0x011b)) ^ 0x0a), (((0x49 << 1) ^ (((0x49 >> 7) & 1) * 0x011b)) ^ 0x49), (((0x06 << 1) ^ (((0x06 >> 7) & 1) * 0x011b)) ^ 0x06), (((0x24 << 1) ^ (((0x24 >> 7) & 1) * 0x011b)) ^ 0x24), (((0x5c << 1) ^ (((0x5c >> 7) & 1) * 0x011b)) ^ 0x5c), (((0xc2 << 1) ^ (((0xc2 >> 7) & 1) * 0x011b)) ^ 0xc2), (((0xd3 << 1) ^ (((0xd3 >> 7) & 1) * 0x011b)) ^ 0xd3), (((0xac << 1) ^ (((0xac >> 7) & 1) * 0x011b)) ^ 0xac), (((0x62 << 1) ^ (((0x62 >> 7) & 1) * 0x011b)) ^ 0x62), (((0x91 << 1) ^ (((0x91 >> 7) & 1) * 0x011b)) ^ 0x91), (((0x95 << 1) ^ (((0x95 >> 7) & 1) * 0x011b)) ^ 0x95), (((0xe4 << 1) ^ (((0xe4 >> 7) & 1) * 0x011b)) ^ 0xe4), (((0x79 << 1) ^ (((0x79 >> 7) & 1) * 0x011b)) ^ 0x79), (((0xe7 << 1) ^ (((0xe7 >> 7) & 1) * 0x011b)) ^ 0xe7), (((0xc8 << 1) ^ (((0xc8 >> 7) & 1) * 0x011b)) ^ 0xc8), (((0x37 << 1) ^ (((0x37 >> 7) & 1) * 0x011b)) ^ 0x37), (((0x6d << 1) ^ (((0x6d >> 7) & 1) * 0x011b)) ^ 0x6d), (((0x8d << 1) ^ (((0x8d >> 7) & 1) * 0x011b)) ^ 0x8d), (((0xd5 << 1) ^ (((0xd5 >> 7) & 1) * 0x011b)) ^ 0xd5), (((0x4e << 1) ^ (((0x4e >> 7) & 1) * 0x011b)) ^ 0x4e), (((0xa9 << 1) ^ (((0xa9 >> 7) & 1) * 0x011b)) ^ 0xa9), (((0x6c << 1) ^ (((0x6c >> 7) & 1) * 0x011b)) ^ 0x6c), (((0x56 << 1) ^ (((0x56 >> 7) & 1) * 0x011b)) ^ 0x56), (((0xf4 << 1) ^ (((0xf4 >> 7) & 1) * 0x011b)) ^ 0xf4), (((0xea << 1) ^ (((0xea >> 7) & 1) * 0x011b)) ^ 0xea), (((0x65 << 1) ^ (((0x65 >> 7) & 1) * 0x011b)) ^ 0x65), (((0x7a << 1) ^ (((0x7a >> 7) & 1) * 0x011b)) ^ 0x7a), (((0xae << 1) ^ (((0xae >> 7) & 1) * 0x011b)) ^ 0xae), (((0x08 << 1) ^ (((0x08 >> 7) & 1) * 0x011b)) ^ 0x08), (((0xba << 1) ^ (((0xba >> 7) & 1) * 0x011b)) ^ 0xba), (((0x78 << 1) ^ (((0x78 >> 7) & 1) * 0x011b)) ^ 0x78), (((0x25 << 1) ^ (((0x25 >> 7) & 1) * 0x011b)) ^ 0x25), (((0x2e << 1) ^ (((0x2e >> 7) & 1) * 0x011b)) ^ 0x2e), (((0x1c << 1) ^ (((0x1c >> 7) & 1) * 0x011b)) ^ 0x1c), (((0xa6 << 1) ^ (((0xa6 >> 7) & 1) * 0x011b)) ^ 0xa6), (((0xb4 << 1) ^ (((0xb4 >> 7) & 1) * 0x011b)) ^ 0xb4), (((0xc6 << 1) ^ (((0xc6 >> 7) & 1) * 0x011b)) ^ 0xc6), (((0xe8 << 1) ^ (((0xe8 >> 7) & 1) * 0x011b)) ^ 0xe8), (((0xdd << 1) ^ (((0xdd >> 7) & 1) * 0x011b)) ^ 0xdd), (((0x74 << 1) ^ (((0x74 >> 7) & 1) * 0x011b)) ^ 0x74), (((0x1f << 1) ^ (((0x1f >> 7) & 1) * 0x011b)) ^ 0x1f), (((0x4b << 1) ^ (((0x4b >> 7) & 1) * 0x011b)) ^ 0x4b), (((0xbd << 1) ^ (((0xbd >> 7) & 1) * 0x011b)) ^ 0xbd), (((0x8b << 1) ^ (((0x8b >> 7) & 1) * 0x011b)) ^ 0x8b), (((0x8a << 1) ^ (((0x8a >> 7) & 1) * 0x011b)) ^ 0x8a), (((0x70 << 1) ^ (((0x70 >> 7) & 1) * 0x011b)) ^ 0x70), (((0x3e << 1) ^ (((0x3e >> 7) & 1) * 0x011b)) ^ 0x3e), (((0xb5 << 1) ^ (((0xb5 >> 7) & 1) * 0x011b)) ^ 0xb5), (((0x66 << 1) ^ (((0x66 >> 7) & 1) * 0x011b)) ^ 0x66), (((0x48 << 1) ^ (((0x48 >> 7) & 1) * 0x011b)) ^ 0x48), (((0x03 << 1) ^ (((0x03 >> 7) & 1) * 0x011b)) ^ 0x03), (((0xf6 << 1) ^ (((0xf6 >> 7) & 1) * 0x011b)) ^ 0xf6), (((0x0e << 1) ^ (((0x0e >> 7) & 1) * 0x011b)) ^ 0x0e), (((0x61 << 1) ^ (((0x61 >> 7) & 1) * 0x011b)) ^ 0x61), (((0x35 << 1) ^ (((0x35 >> 7) & 1) * 0x011b)) ^ 0x35), (((0x57 << 1) ^ (((0x57 >> 7) & 1) * 0x011b)) ^ 0x57), (((0xb9 << 1) ^ (((0xb9 >> 7) & 1) * 0x011b)) ^ 0xb9), (((0x86 << 1) ^ (((0x86 >> 7) & 1) * 0x011b)) ^ 0x86), (((0xc1 << 1) ^ (((0xc1 >> 7) & 1) * 0x011b)) ^ 0xc1), (((0x1d << 1) ^ (((0x1d >> 7) & 1) * 0x011b)) ^ 0x1d), (((0x9e << 1) ^ (((0x9e >> 7) & 1) * 0x011b)) ^ 0x9e), (((0xe1 << 1) ^ (((0xe1 >> 7) & 1) * 0x011b)) ^ 0xe1), (((0xf8 << 1) ^ (((0xf8 >> 7) & 1) * 0x011b)) ^ 0xf8), (((0x98 << 1) ^ (((0x98 >> 7) & 1) * 0x011b)) ^ 0x98), (((0x11 << 1) ^ (((0x11 >> 7) & 1) * 0x011b)) ^ 0x11), (((0x69 << 1) ^ (((0x69 >> 7) & 1) * 0x011b)) ^ 0x69), (((0xd9 << 1) ^ (((0xd9 >> 7) & 1) * 0x011b)) ^ 0xd9), (((0x8e << 1) ^ (((0x8e >> 7) & 1) * 0x011b)) ^ 0x8e), (((0x94 << 1) ^ (((0x94 >> 7) & 1) * 0x011b)) ^ 0x94), (((0x9b << 1) ^ (((0x9b >> 7) & 1) * 0x011b)) ^ 0x9b), (((0x1e << 1) ^ (((0x1e >> 7) & 1) * 0x011b)) ^ 0x1e), (((0x87 << 1) ^ (((0x87 >> 7) & 1) * 0x011b)) ^ 0x87), (((0xe9 << 1) ^ (((0xe9 >> 7) & 1) * 0x011b)) ^ 0xe9), (((0xce << 1) ^ (((0xce >> 7) & 1) * 0x011b)) ^ 0xce), (((0x55 << 1) ^ (((0x55 >> 7) & 1) * 0x011b)) ^ 0x55), (((0x28 << 1) ^ (((0x28 >> 7) & 1) * 0x011b)) ^ 0x28), (((0xdf << 1) ^ (((0xdf >> 7) & 1) * 0x011b)) ^ 0xdf), (((0x8c << 1) ^ (((0x8c >> 7) & 1) * 0x011b)) ^ 0x8c), (((0xa1 << 1) ^ (((0xa1 >> 7) & 1) * 0x011b)) ^ 0xa1), (((0x89 << 1) ^ (((0x89 >> 7) & 1) * 0x011b)) ^ 0x89), (((0x0d << 1) ^ (((0x0d >> 7) & 1) * 0x011b)) ^ 0x0d), (((0xbf << 1) ^ (((0xbf >> 7) & 1) * 0x011b)) ^ 0xbf), (((0xe6 << 1) ^ (((0xe6 >> 7) & 1) * 0x011b)) ^ 0xe6), (((0x42 << 1) ^ (((0x42 >> 7) & 1) * 0x011b)) ^ 0x42), (((0x68 << 1) ^ (((0x68 >> 7) & 1) * 0x011b)) ^ 0x68), (((0x41 << 1) ^ (((0x41 >> 7) & 1) * 0x011b)) ^ 0x41), (((0x99 << 1) ^ (((0x99 >> 7) & 1) * 0x011b)) ^ 0x99), (((0x2d << 1) ^ (((0x2d >> 7) & 1) * 0x011b)) ^ 0x2d), (((0x0f << 1) ^ (((0x0f >> 7) & 1) * 0x011b)) ^ 0x0f), (((0xb0 << 1) ^ (((0xb0 >> 7) & 1) * 0x011b)) ^ 0xb0), (((0x54 << 1) ^ (((0x54 >> 7) & 1) * 0x011b)) ^ 0x54), (((0xbb << 1) ^ (((0xbb >> 7) & 1) * 0x011b)) ^ 0xbb), (((0x16 << 1) ^ (((0x16 >> 7) & 1) * 0x011b)) ^ 0x16) };

static const uint_8t gfmul_9[256] = { (((0x00 << 3) ^ (((0x00 >> 5) & 1) * 0x011b) ^ (((0x00 >> 5) & 2) * 0x011b) ^ (((0x00 >> 5) & 4) * 0x011b)) ^ 0x00), (((0x01 << 3) ^ (((0x01 >> 5) & 1) * 0x011b) ^ (((0x01 >> 5) & 2) * 0x011b) ^ (((0x01 >> 5) & 4) * 0x011b)) ^ 0x01), (((0x02 << 3) ^ (((0x02 >> 5) & 1) * 0x011b) ^ (((0x02 >> 5) & 2) * 0x011b) ^ (((0x02 >> 5) & 4) * 0x011b)) ^ 0x02), (((0x03 << 3) ^ (((0x03 >> 5) & 1) * 0x011b) ^ (((0x03 >> 5) & 2) * 0x011b) ^ (((0x03 >> 5) & 4) * 0x011b)) ^ 0x03), (((0x04 << 3) ^ (((0x04 >> 5) & 1) * 0x011b) ^ (((0x04 >> 5) & 2) * 0x011b) ^ (((0x04 >> 5) & 4) * 0x011b)) ^ 0x04), (((0x05 << 3) ^ (((0x05 >> 5) & 1) * 0x011b) ^ (((0x05 >> 5) & 2) * 0x011b) ^ (((0x05 >> 5) & 4) * 0x011b)) ^ 0x05), (((0x06 << 3) ^ (((0x06 >> 5) & 1) * 0x011b) ^ (((0x06 >> 5) & 2) * 0x011b) ^ (((0x06 >> 5) & 4) * 0x011b)) ^ 0x06), (((0x07 << 3) ^ (((0x07 >> 5) & 1) * 0x011b) ^ (((0x07 >> 5) & 2) * 0x011b) ^ (((0x07 >> 5) & 4) * 0x011b)) ^ 0x07), (((0x08 << 3) ^ (((0x08 >> 5) & 1) * 0x011b) ^ (((0x08 >> 5) & 2) * 0x011b) ^ (((0x08 >> 5) & 4) * 0x011b)) ^ 0x08), (((0x09 << 3) ^ (((0x09 >> 5) & 1) * 0x011b) ^ (((0x09 >> 5) & 2) * 0x011b) ^ (((0x09 >> 5) & 4) * 0x011b)) ^ 0x09), (((0x0a << 3) ^ (((0x0a >> 5) & 1) * 0x011b) ^ (((0x0a >> 5) & 2) * 0x011b) ^ (((0x0a >> 5) & 4) * 0x011b)) ^ 0x0a), (((0x0b << 3) ^ (((0x0b >> 5) & 1) * 0x011b) ^ (((0x0b >> 5) & 2) * 0x011b) ^ (((0x0b >> 5) & 4) * 0x011b)) ^ 0x0b), (((0x0c << 3) ^ (((0x0c >> 5) & 1) * 0x011b) ^ (((0x0c >> 5) & 2) * 0x011b) ^ (((0x0c >> 5) & 4) * 0x011b)) ^ 0x0c), (((0x0d << 3) ^ (((0x0d >> 5) & 1) * 0x011b) ^ (((0x0d >> 5) & 2) * 0x011b) ^ (((0x0d >> 5) & 4) * 0x011b)) ^ 0x0d), (((0x0e << 3) ^ (((0x0e >> 5) & 1) * 0x011b) ^ (((0x0e >> 5) & 2) * 0x011b) ^ (((0x0e >> 5) & 4) * 0x011b)) ^ 0x0e), (((0x0f << 3) ^ (((0x0f >> 5) & 1) * 0x011b) ^ (((0x0f >> 5) & 2) * 0x011b) ^ (((0x0f >> 5) & 4) * 0x011b)) ^ 0x0f), (((0x10 << 3) ^ (((0x10 >> 5) & 1) * 0x011b) ^ (((0x10 >> 5) & 2) * 0x011b) ^ (((0x10 >> 5) & 4) * 0x011b)) ^ 0x10), (((0x11 << 3) ^ (((0x11 >> 5) & 1) * 0x011b) ^ (((0x11 >> 5) & 2) * 0x011b) ^ (((0x11 >> 5) & 4) * 0x011b)) ^ 0x11), (((0x12 << 3) ^ (((0x12 >> 5) & 1) * 0x011b) ^ (((0x12 >> 5) & 2) * 0x011b) ^ (((0x12 >> 5) & 4) * 0x011b)) ^ 0x12), (((0x13 << 3) ^ (((0x13 >> 5) & 1) * 0x011b) ^ (((0x13 >> 5) & 2) * 0x011b) ^ (((0x13 >> 5) & 4) * 0x011b)) ^ 0x13), (((0x14 << 3) ^ (((0x14 >> 5) & 1) * 0x011b) ^ (((0x14 >> 5) & 2) * 0x011b) ^ (((0x14 >> 5) & 4) * 0x011b)) ^ 0x14), (((0x15 << 3) ^ (((0x15 >> 5) & 1) * 0x011b) ^ (((0x15 >> 5) & 2) * 0x011b) ^ (((0x15 >> 5) & 4) * 0x011b)) ^ 0x15), (((0x16 << 3) ^ (((0x16 >> 5) & 1) * 0x011b) ^ (((0x16 >> 5) & 2) * 0x011b) ^ (((0x16 >> 5) & 4) * 0x011b)) ^ 0x16), (((0x17 << 3) ^ (((0x17 >> 5) & 1) * 0x011b) ^ (((0x17 >> 5) & 2) * 0x011b) ^ (((0x17 >> 5) & 4) * 0x011b)) ^ 0x17), (((0x18 << 3) ^ (((0x18 >> 5) & 1) * 0x011b) ^ (((0x18 >> 5) & 2) * 0x011b) ^ (((0x18 >> 5) & 4) * 0x011b)) ^ 0x18), (((0x19 << 3) ^ (((0x19 >> 5) & 1) * 0x011b) ^ (((0x19 >> 5) & 2) * 0x011b) ^ (((0x19 >> 5) & 4) * 0x011b)) ^ 0x19), (((0x1a << 3) ^ (((0x1a >> 5) & 1) * 0x011b) ^ (((0x1a >> 5) & 2) * 0x011b) ^ (((0x1a >> 5) & 4) * 0x011b)) ^ 0x1a), (((0x1b << 3) ^ (((0x1b >> 5) & 1) * 0x011b) ^ (((0x1b >> 5) & 2) * 0x011b) ^ (((0x1b >> 5) & 4) * 0x011b)) ^ 0x1b), (((0x1c << 3) ^ (((0x1c >> 5) & 1) * 0x011b) ^ (((0x1c >> 5) & 2) * 0x011b) ^ (((0x1c >> 5) & 4) * 0x011b)) ^ 0x1c), (((0x1d << 3) ^ (((0x1d >> 5) & 1) * 0x011b) ^ (((0x1d >> 5) & 2) * 0x011b) ^ (((0x1d >> 5) & 4) * 0x011b)) ^ 0x1d), (((0x1e << 3) ^ (((0x1e >> 5) & 1) * 0x011b) ^ (((0x1e >> 5) & 2) * 0x011b) ^ (((0x1e >> 5) & 4) * 0x011b)) ^ 0x1e), (((0x1f << 3) ^ (((0x1f >> 5) & 1) * 0x011b) ^ (((0x1f >> 5) & 2) * 0x011b) ^ (((0x1f >> 5) & 4) * 0x011b)) ^ 0x1f), (((0x20 << 3) ^ (((0x20 >> 5) & 1) * 0x011b) ^ (((0x20 >> 5) & 2) * 0x011b) ^ (((0x20 >> 5) & 4) * 0x011b)) ^ 0x20), (((0x21 << 3) ^ (((0x21 >> 5) & 1) * 0x011b) ^ (((0x21 >> 5) & 2) * 0x011b) ^ (((0x21 >> 5) & 4) * 0x011b)) ^ 0x21), (((0x22 << 3) ^ (((0x22 >> 5) & 1) * 0x011b) ^ (((0x22 >> 5) & 2) * 0x011b) ^ (((0x22 >> 5) & 4) * 0x011b)) ^ 0x22), (((0x23 << 3) ^ (((0x23 >> 5) & 1) * 0x011b) ^ (((0x23 >> 5) & 2) * 0x011b) ^ (((0x23 >> 5) & 4) * 0x011b)) ^ 0x23), (((0x24 << 3) ^ (((0x24 >> 5) & 1) * 0x011b) ^ (((0x24 >> 5) & 2) * 0x011b) ^ (((0x24 >> 5) & 4) * 0x011b)) ^ 0x24), (((0x25 << 3) ^ (((0x25 >> 5) & 1) * 0x011b) ^ (((0x25 >> 5) & 2) * 0x011b) ^ (((0x25 >> 5) & 4) * 0x011b)) ^ 0x25), (((0x26 << 3) ^ (((0x26 >> 5) & 1) * 0x011b) ^ (((0x26 >> 5) & 2) * 0x011b) ^ (((0x26 >> 5) & 4) * 0x011b)) ^ 0x26), (((0x27 << 3) ^ (((0x27 >> 5) & 1) * 0x011b) ^ (((0x27 >> 5) & 2) * 0x011b) ^ (((0x27 >> 5) & 4) * 0x011b)) ^ 0x27), (((0x28 << 3) ^ (((0x28 >> 5) & 1) * 0x011b) ^ (((0x28 >> 5) & 2) * 0x011b) ^ (((0x28 >> 5) & 4) * 0x011b)) ^ 0x28), (((0x29 << 3) ^ (((0x29 >> 5) & 1) * 0x011b) ^ (((0x29 >> 5) & 2) * 0x011b) ^ (((0x29 >> 5) & 4) * 0x011b)) ^ 0x29), (((0x2a << 3) ^ (((0x2a >> 5) & 1) * 0x011b) ^ (((0x2a >> 5) & 2) * 0x011b) ^ (((0x2a >> 5) & 4) * 0x011b)) ^ 0x2a), (((0x2b << 3) ^ (((0x2b >> 5) & 1) * 0x011b) ^ (((0x2b >> 5) & 2) * 0x011b) ^ (((0x2b >> 5) & 4) * 0x011b)) ^ 0x2b), (((0x2c << 3) ^ (((0x2c >> 5) & 1) * 0x011b) ^ (((0x2c >> 5) & 2) * 0x011b) ^ (((0x2c >> 5) & 4) * 0x011b)) ^ 0x2c), (((0x2d << 3) ^ (((0x2d >> 5) & 1) * 0x011b) ^ (((0x2d >> 5) & 2) * 0x011b) ^ (((0x2d >> 5) & 4) * 0x011b)) ^ 0x2d), (((0x2e << 3) ^ (((0x2e >> 5) & 1) * 0x011b) ^ (((0x2e >> 5) & 2) * 0x011b) ^ (((0x2e >> 5) & 4) * 0x011b)) ^ 0x2e), (((0x2f << 3) ^ (((0x2f >> 5) & 1) * 0x011b) ^ (((0x2f >> 5) & 2) * 0x011b) ^ (((0x2f >> 5) & 4) * 0x011b)) ^ 0x2f), (((0x30 << 3) ^ (((0x30 >> 5) & 1) * 0x011b) ^ (((0x30 >> 5) & 2) * 0x011b) ^ (((0x30 >> 5) & 4) * 0x011b)) ^ 0x30), (((0x31 << 3) ^ (((0x31 >> 5) & 1) * 0x011b) ^ (((0x31 >> 5) & 2) * 0x011b) ^ (((0x31 >> 5) & 4) * 0x011b)) ^ 0x31), (((0x32 << 3) ^ (((0x32 >> 5) & 1) * 0x011b) ^ (((0x32 >> 5) & 2) * 0x011b) ^ (((0x32 >> 5) & 4) * 0x011b)) ^ 0x32), (((0x33 << 3) ^ (((0x33 >> 5) & 1) * 0x011b) ^ (((0x33 >> 5) & 2) * 0x011b) ^ (((0x33 >> 5) & 4) * 0x011b)) ^ 0x33), (((0x34 << 3) ^ (((0x34 >> 5) & 1) * 0x011b) ^ (((0x34 >> 5) & 2) * 0x011b) ^ (((0x34 >> 5) & 4) * 0x011b)) ^ 0x34), (((0x35 << 3) ^ (((0x35 >> 5) & 1) * 0x011b) ^ (((0x35 >> 5) & 2) * 0x011b) ^ (((0x35 >> 5) & 4) * 0x011b)) ^ 0x35), (((0x36 << 3) ^ (((0x36 >> 5) & 1) * 0x011b) ^ (((0x36 >> 5) & 2) * 0x011b) ^ (((0x36 >> 5) & 4) * 0x011b)) ^ 0x36), (((0x37 << 3) ^ (((0x37 >> 5) & 1) * 0x011b) ^ (((0x37 >> 5) & 2) * 0x011b) ^ (((0x37 >> 5) & 4) * 0x011b)) ^ 0x37), (((0x38 << 3) ^ (((0x38 >> 5) & 1) * 0x011b) ^ (((0x38 >> 5) & 2) * 0x011b) ^ (((0x38 >> 5) & 4) * 0x011b)) ^ 0x38), (((0x39 << 3) ^ (((0x39 >> 5) & 1) * 0x011b) ^ (((0x39 >> 5) & 2) * 0x011b) ^ (((0x39 >> 5) & 4) * 0x011b)) ^ 0x39), (((0x3a << 3) ^ (((0x3a >> 5) & 1) * 0x011b) ^ (((0x3a >> 5) & 2) * 0x011b) ^ (((0x3a >> 5) & 4) * 0x011b)) ^ 0x3a), (((0x3b << 3) ^ (((0x3b >> 5) & 1) * 0x011b) ^ (((0x3b >> 5) & 2) * 0x011b) ^ (((0x3b >> 5) & 4) * 0x011b)) ^ 0x3b), (((0x3c << 3) ^ (((0x3c >> 5) & 1) * 0x011b) ^ (((0x3c >> 5) & 2) * 0x011b) ^ (((0x3c >> 5) & 4) * 0x011b)) ^ 0x3c), (((0x3d << 3) ^ (((0x3d >> 5) & 1) * 0x011b) ^ (((0x3d >> 5) & 2) * 0x011b) ^ (((0x3d >> 5) & 4) * 0x011b)) ^ 0x3d), (((0x3e << 3) ^ (((0x3e >> 5) & 1) * 0x011b) ^ (((0x3e >> 5) & 2) * 0x011b) ^ (((0x3e >> 5) & 4) * 0x011b)) ^ 0x3e), (((0x3f << 3) ^ (((0x3f >> 5) & 1) * 0x011b) ^ (((0x3f >> 5) & 2) * 0x011b) ^ (((0x3f >> 5) & 4) * 0x011b)) ^ 0x3f), (((0x40 << 3) ^ (((0x40 >> 5) & 1) * 0x011b) ^ (((0x40 >> 5) & 2) * 0x011b) ^ (((0x40 >> 5) & 4) * 0x011b)) ^ 0x40), (((0x41 << 3) ^ (((0x41 >> 5) & 1) * 0x011b) ^ (((0x41 >> 5) & 2) * 0x011b) ^ (((0x41 >> 5) & 4) * 0x011b)) ^ 0x41), (((0x42 << 3) ^ (((0x42 >> 5) & 1) * 0x011b) ^ (((0x42 >> 5) & 2) * 0x011b) ^ (((0x42 >> 5) & 4) * 0x011b)) ^ 0x42), (((0x43 << 3) ^ (((0x43 >> 5) & 1) * 0x011b) ^ (((0x43 >> 5) & 2) * 0x011b) ^ (((0x43 >> 5) & 4) * 0x011b)) ^ 0x43), (((0x44 << 3) ^ (((0x44 >> 5) & 1) * 0x011b) ^ (((0x44 >> 5) & 2) * 0x011b) ^ (((0x44 >> 5) & 4) * 0x011b)) ^ 0x44), (((0x45 << 3) ^ (((0x45 >> 5) & 1) * 0x011b) ^ (((0x45 >> 5) & 2) * 0x011b) ^ (((0x45 >> 5) & 4) * 0x011b)) ^ 0x45), (((0x46 << 3) ^ (((0x46 >> 5) & 1) * 0x011b) ^ (((0x46 >> 5) & 2) * 0x011b) ^ (((0x46 >> 5) & 4) * 0x011b)) ^ 0x46), (((0x47 << 3) ^ (((0x47 >> 5) & 1) * 0x011b) ^ (((0x47 >> 5) & 2) * 0x011b) ^ (((0x47 >> 5) & 4) * 0x011b)) ^ 0x47), (((0x48 << 3) ^ (((0x48 >> 5) & 1) * 0x011b) ^ (((0x48 >> 5) & 2) * 0x011b) ^ (((0x48 >> 5) & 4) * 0x011b)) ^ 0x48), (((0x49 << 3) ^ (((0x49 >> 5) & 1) * 0x011b) ^ (((0x49 >> 5) & 2) * 0x011b) ^ (((0x49 >> 5) & 4) * 0x011b)) ^ 0x49), (((0x4a << 3) ^ (((0x4a >> 5) & 1) * 0x011b) ^ (((0x4a >> 5) & 2) * 0x011b) ^ (((0x4a >> 5) & 4) * 0x011b)) ^ 0x4a), (((0x4b << 3) ^ (((0x4b >> 5) & 1) * 0x011b) ^ (((0x4b >> 5) & 2) * 0x011b) ^ (((0x4b >> 5) & 4) * 0x011b)) ^ 0x4b), (((0x4c << 3) ^ (((0x4c >> 5) & 1) * 0x011b) ^ (((0x4c >> 5) & 2) * 0x011b) ^ (((0x4c >> 5) & 4) * 0x011b)) ^ 0x4c), (((0x4d << 3) ^ (((0x4d >> 5) & 1) * 0x011b) ^ (((0x4d >> 5) & 2) * 0x011b) ^ (((0x4d >> 5) & 4) * 0x011b)) ^ 0x4d), (((0x4e << 3) ^ (((0x4e >> 5) & 1) * 0x011b) ^ (((0x4e >> 5) & 2) * 0x011b) ^ (((0x4e >> 5) & 4) * 0x011b)) ^ 0x4e), (((0x4f << 3) ^ (((0x4f >> 5) & 1) * 0x011b) ^ (((0x4f >> 5) & 2) * 0x011b) ^ (((0x4f >> 5) & 4) * 0x011b)) ^ 0x4f), (((0x50 << 3) ^ (((0x50 >> 5) & 1) * 0x011b) ^ (((0x50 >> 5) & 2) * 0x011b) ^ (((0x50 >> 5) & 4) * 0x011b)) ^ 0x50), (((0x51 << 3) ^ (((0x51 >> 5) & 1) * 0x011b) ^ (((0x51 >> 5) & 2) * 0x011b) ^ (((0x51 >> 5) & 4) * 0x011b)) ^ 0x51), (((0x52 << 3) ^ (((0x52 >> 5) & 1) * 0x011b) ^ (((0x52 >> 5) & 2) * 0x011b) ^ (((0x52 >> 5) & 4) * 0x011b)) ^ 0x52), (((0x53 << 3) ^ (((0x53 >> 5) & 1) * 0x011b) ^ (((0x53 >> 5) & 2) * 0x011b) ^ (((0x53 >> 5) & 4) * 0x011b)) ^ 0x53), (((0x54 << 3) ^ (((0x54 >> 5) & 1) * 0x011b) ^ (((0x54 >> 5) & 2) * 0x011b) ^ (((0x54 >> 5) & 4) * 0x011b)) ^ 0x54), (((0x55 << 3) ^ (((0x55 >> 5) & 1) * 0x011b) ^ (((0x55 >> 5) & 2) * 0x011b) ^ (((0x55 >> 5) & 4) * 0x011b)) ^ 0x55), (((0x56 << 3) ^ (((0x56 >> 5) & 1) * 0x011b) ^ (((0x56 >> 5) & 2) * 0x011b) ^ (((0x56 >> 5) & 4) * 0x011b)) ^ 0x56), (((0x57 << 3) ^ (((0x57 >> 5) & 1) * 0x011b) ^ (((0x57 >> 5) & 2) * 0x011b) ^ (((0x57 >> 5) & 4) * 0x011b)) ^ 0x57), (((0x58 << 3) ^ (((0x58 >> 5) & 1) * 0x011b) ^ (((0x58 >> 5) & 2) * 0x011b) ^ (((0x58 >> 5) & 4) * 0x011b)) ^ 0x58), (((0x59 << 3) ^ (((0x59 >> 5) & 1) * 0x011b) ^ (((0x59 >> 5) & 2) * 0x011b) ^ (((0x59 >> 5) & 4) * 0x011b)) ^ 0x59), (((0x5a << 3) ^ (((0x5a >> 5) & 1) * 0x011b) ^ (((0x5a >> 5) & 2) * 0x011b) ^ (((0x5a >> 5) & 4) * 0x011b)) ^ 0x5a), (((0x5b << 3) ^ (((0x5b >> 5) & 1) * 0x011b) ^ (((0x5b >> 5) & 2) * 0x011b) ^ (((0x5b >> 5) & 4) * 0x011b)) ^ 0x5b), (((0x5c << 3) ^ (((0x5c >> 5) & 1) * 0x011b) ^ (((0x5c >> 5) & 2) * 0x011b) ^ (((0x5c >> 5) & 4) * 0x011b)) ^ 0x5c), (((0x5d << 3) ^ (((0x5d >> 5) & 1) * 0x011b) ^ (((0x5d >> 5) & 2) * 0x011b) ^ (((0x5d >> 5) & 4) * 0x011b)) ^ 0x5d), (((0x5e << 3) ^ (((0x5e >> 5) & 1) * 0x011b) ^ (((0x5e >> 5) & 2) * 0x011b) ^ (((0x5e >> 5) & 4) * 0x011b)) ^ 0x5e), (((0x5f << 3) ^ (((0x5f >> 5) & 1) * 0x011b) ^ (((0x5f >> 5) & 2) * 0x011b) ^ (((0x5f >> 5) & 4) * 0x011b)) ^ 0x5f), (((0x60 << 3) ^ (((0x60 >> 5) & 1) * 0x011b) ^ (((0x60 >> 5) & 2) * 0x011b) ^ (((0x60 >> 5) & 4) * 0x011b)) ^ 0x60), (((0x61 << 3) ^ (((0x61 >> 5) & 1) * 0x011b) ^ (((0x61 >> 5) & 2) * 0x011b) ^ (((0x61 >> 5) & 4) * 0x011b)) ^ 0x61), (((0x62 << 3) ^ (((0x62 >> 5) & 1) * 0x011b) ^ (((0x62 >> 5) & 2) * 0x011b) ^ (((0x62 >> 5) & 4) * 0x011b)) ^ 0x62), (((0x63 << 3) ^ (((0x63 >> 5) & 1) * 0x011b) ^ (((0x63 >> 5) & 2) * 0x011b) ^ (((0x63 >> 5) & 4) * 0x011b)) ^ 0x63), (((0x64 << 3) ^ (((0x64 >> 5) & 1) * 0x011b) ^ (((0x64 >> 5) & 2) * 0x011b) ^ (((0x64 >> 5) & 4) * 0x011b)) ^ 0x64), (((0x65 << 3) ^ (((0x65 >> 5) & 1) * 0x011b) ^ (((0x65 >> 5) & 2) * 0x011b) ^ (((0x65 >> 5) & 4) * 0x011b)) ^ 0x65), (((0x66 << 3) ^ (((0x66 >> 5) & 1) * 0x011b) ^ (((0x66 >> 5) & 2) * 0x011b) ^ (((0x66 >> 5) & 4) * 0x011b)) ^ 0x66), (((0x67 << 3) ^ (((0x67 >> 5) & 1) * 0x011b) ^ (((0x67 >> 5) & 2) * 0x011b) ^ (((0x67 >> 5) & 4) * 0x011b)) ^ 0x67), (((0x68 << 3) ^ (((0x68 >> 5) & 1) * 0x011b) ^ (((0x68 >> 5) & 2) * 0x011b) ^ (((0x68 >> 5) & 4) * 0x011b)) ^ 0x68), (((0x69 << 3) ^ (((0x69 >> 5) & 1) * 0x011b) ^ (((0x69 >> 5) & 2) * 0x011b) ^ (((0x69 >> 5) & 4) * 0x011b)) ^ 0x69), (((0x6a << 3) ^ (((0x6a >> 5) & 1) * 0x011b) ^ (((0x6a >> 5) & 2) * 0x011b) ^ (((0x6a >> 5) & 4) * 0x011b)) ^ 0x6a), (((0x6b << 3) ^ (((0x6b >> 5) & 1) * 0x011b) ^ (((0x6b >> 5) & 2) * 0x011b) ^ (((0x6b >> 5) & 4) * 0x011b)) ^ 0x6b), (((0x6c << 3) ^ (((0x6c >> 5) & 1) * 0x011b) ^ (((0x6c >> 5) & 2) * 0x011b) ^ (((0x6c >> 5) & 4) * 0x011b)) ^ 0x6c), (((0x6d << 3) ^ (((0x6d >> 5) & 1) * 0x011b) ^ (((0x6d >> 5) & 2) * 0x011b) ^ (((0x6d >> 5) & 4) * 0x011b)) ^ 0x6d), (((0x6e << 3) ^ (((0x6e >> 5) & 1) * 0x011b) ^ (((0x6e >> 5) & 2) * 0x011b) ^ (((0x6e >> 5) & 4) * 0x011b)) ^ 0x6e), (((0x6f << 3) ^ (((0x6f >> 5) & 1) * 0x011b) ^ (((0x6f >> 5) & 2) * 0x011b) ^ (((0x6f >> 5) & 4) * 0x011b)) ^ 0x6f), (((0x70 << 3) ^ (((0x70 >> 5) & 1) * 0x011b) ^ (((0x70 >> 5) & 2) * 0x011b) ^ (((0x70 >> 5) & 4) * 0x011b)) ^ 0x70), (((0x71 << 3) ^ (((0x71 >> 5) & 1) * 0x011b) ^ (((0x71 >> 5) & 2) * 0x011b) ^ (((0x71 >> 5) & 4) * 0x011b)) ^ 0x71), (((0x72 << 3) ^ (((0x72 >> 5) & 1) * 0x011b) ^ (((0x72 >> 5) & 2) * 0x011b) ^ (((0x72 >> 5) & 4) * 0x011b)) ^ 0x72), (((0x73 << 3) ^ (((0x73 >> 5) & 1) * 0x011b) ^ (((0x73 >> 5) & 2) * 0x011b) ^ (((0x73 >> 5) & 4) * 0x011b)) ^ 0x73), (((0x74 << 3) ^ (((0x74 >> 5) & 1) * 0x011b) ^ (((0x74 >> 5) & 2) * 0x011b) ^ (((0x74 >> 5) & 4) * 0x011b)) ^ 0x74), (((0x75 << 3) ^ (((0x75 >> 5) & 1) * 0x011b) ^ (((0x75 >> 5) & 2) * 0x011b) ^ (((0x75 >> 5) & 4) * 0x011b)) ^ 0x75), (((0x76 << 3) ^ (((0x76 >> 5) & 1) * 0x011b) ^ (((0x76 >> 5) & 2) * 0x011b) ^ (((0x76 >> 5) & 4) * 0x011b)) ^ 0x76), (((0x77 << 3) ^ (((0x77 >> 5) & 1) * 0x011b) ^ (((0x77 >> 5) & 2) * 0x011b) ^ (((0x77 >> 5) & 4) * 0x011b)) ^ 0x77), (((0x78 << 3) ^ (((0x78 >> 5) & 1) * 0x011b) ^ (((0x78 >> 5) & 2) * 0x011b) ^ (((0x78 >> 5) & 4) * 0x011b)) ^ 0x78), (((0x79 << 3) ^ (((0x79 >> 5) & 1) * 0x011b) ^ (((0x79 >> 5) & 2) * 0x011b) ^ (((0x79 >> 5) & 4) * 0x011b)) ^ 0x79), (((0x7a << 3) ^ (((0x7a >> 5) & 1) * 0x011b) ^ (((0x7a >> 5) & 2) * 0x011b) ^ (((0x7a >> 5) & 4) * 0x011b)) ^ 0x7a), (((0x7b << 3) ^ (((0x7b >> 5) & 1) * 0x011b) ^ (((0x7b >> 5) & 2) * 0x011b) ^ (((0x7b >> 5) & 4) * 0x011b)) ^ 0x7b), (((0x7c << 3) ^ (((0x7c >> 5) & 1) * 0x011b) ^ (((0x7c >> 5) & 2) * 0x011b) ^ (((0x7c >> 5) & 4) * 0x011b)) ^ 0x7c), (((0x7d << 3) ^ (((0x7d >> 5) & 1) * 0x011b) ^ (((0x7d >> 5) & 2) * 0x011b) ^ (((0x7d >> 5) & 4) * 0x011b)) ^ 0x7d), (((0x7e << 3) ^ (((0x7e >> 5) & 1) * 0x011b) ^ (((0x7e >> 5) & 2) * 0x011b) ^ (((0x7e >> 5) & 4) * 0x011b)) ^ 0x7e), (((0x7f << 3) ^ (((0x7f >> 5) & 1) * 0x011b) ^ (((0x7f >> 5) & 2) * 0x011b) ^ (((0x7f >> 5) & 4) * 0x011b)) ^ 0x7f), (((0x80 << 3) ^ (((0x80 >> 5) & 1) * 0x011b) ^ (((0x80 >> 5) & 2) * 0x011b) ^ (((0x80 >> 5) & 4) * 0x011b)) ^ 0x80), (((0x81 << 3) ^ (((0x81 >> 5) & 1) * 0x011b) ^ (((0x81 >> 5) & 2) * 0x011b) ^ (((0x81 >> 5) & 4) * 0x011b)) ^ 0x81), (((0x82 << 3) ^ (((0x82 >> 5) & 1) * 0x011b) ^ (((0x82 >> 5) & 2) * 0x011b) ^ (((0x82 >> 5) & 4) * 0x011b)) ^ 0x82), (((0x83 << 3) ^ (((0x83 >> 5) & 1) * 0x011b) ^ (((0x83 >> 5) & 2) * 0x011b) ^ (((0x83 >> 5) & 4) * 0x011b)) ^ 0x83), (((0x84 << 3) ^ (((0x84 >> 5) & 1) * 0x011b) ^ (((0x84 >> 5) & 2) * 0x011b) ^ (((0x84 >> 5) & 4) * 0x011b)) ^ 0x84), (((0x85 << 3) ^ (((0x85 >> 5) & 1) * 0x011b) ^ (((0x85 >> 5) & 2) * 0x011b) ^ (((0x85 >> 5) & 4) * 0x011b)) ^ 0x85), (((0x86 << 3) ^ (((0x86 >> 5) & 1) * 0x011b) ^ (((0x86 >> 5) & 2) * 0x011b) ^ (((0x86 >> 5) & 4) * 0x011b)) ^ 0x86), (((0x87 << 3) ^ (((0x87 >> 5) & 1) * 0x011b) ^ (((0x87 >> 5) & 2) * 0x011b) ^ (((0x87 >> 5) & 4) * 0x011b)) ^ 0x87), (((0x88 << 3) ^ (((0x88 >> 5) & 1) * 0x011b) ^ (((0x88 >> 5) & 2) * 0x011b) ^ (((0x88 >> 5) & 4) * 0x011b)) ^ 0x88), (((0x89 << 3) ^ (((0x89 >> 5) & 1) * 0x011b) ^ (((0x89 >> 5) & 2) * 0x011b) ^ (((0x89 >> 5) & 4) * 0x011b)) ^ 0x89), (((0x8a << 3) ^ (((0x8a >> 5) & 1) * 0x011b) ^ (((0x8a >> 5) & 2) * 0x011b) ^ (((0x8a >> 5) & 4) * 0x011b)) ^ 0x8a), (((0x8b << 3) ^ (((0x8b >> 5) & 1) * 0x011b) ^ (((0x8b >> 5) & 2) * 0x011b) ^ (((0x8b >> 5) & 4) * 0x011b)) ^ 0x8b), (((0x8c << 3) ^ (((0x8c >> 5) & 1) * 0x011b) ^ (((0x8c >> 5) & 2) * 0x011b) ^ (((0x8c >> 5) & 4) * 0x011b)) ^ 0x8c), (((0x8d << 3) ^ (((0x8d >> 5) & 1) * 0x011b) ^ (((0x8d >> 5) & 2) * 0x011b) ^ (((0x8d >> 5) & 4) * 0x011b)) ^ 0x8d), (((0x8e << 3) ^ (((0x8e >> 5) & 1) * 0x011b) ^ (((0x8e >> 5) & 2) * 0x011b) ^ (((0x8e >> 5) & 4) * 0x011b)) ^ 0x8e), (((0x8f << 3) ^ (((0x8f >> 5) & 1) * 0x011b) ^ (((0x8f >> 5) & 2) * 0x011b) ^ (((0x8f >> 5) & 4) * 0x011b)) ^ 0x8f), (((0x90 << 3) ^ (((0x90 >> 5) & 1) * 0x011b) ^ (((0x90 >> 5) & 2) * 0x011b) ^ (((0x90 >> 5) & 4) * 0x011b)) ^ 0x90), (((0x91 << 3) ^ (((0x91 >> 5) & 1) * 0x011b) ^ (((0x91 >> 5) & 2) * 0x011b) ^ (((0x91 >> 5) & 4) * 0x011b)) ^ 0x91), (((0x92 << 3) ^ (((0x92 >> 5) & 1) * 0x011b) ^ (((0x92 >> 5) & 2) * 0x011b) ^ (((0x92 >> 5) & 4) * 0x011b)) ^ 0x92), (((0x93 << 3) ^ (((0x93 >> 5) & 1) * 0x011b) ^ (((0x93 >> 5) & 2) * 0x011b) ^ (((0x93 >> 5) & 4) * 0x011b)) ^ 0x93), (((0x94 << 3) ^ (((0x94 >> 5) & 1) * 0x011b) ^ (((0x94 >> 5) & 2) * 0x011b) ^ (((0x94 >> 5) & 4) * 0x011b)) ^ 0x94), (((0x95 << 3) ^ (((0x95 >> 5) & 1) * 0x011b) ^ (((0x95 >> 5) & 2) * 0x011b) ^ (((0x95 >> 5) & 4) * 0x011b)) ^ 0x95), (((0x96 << 3) ^ (((0x96 >> 5) & 1) * 0x011b) ^ (((0x96 >> 5) & 2) * 0x011b) ^ (((0x96 >> 5) & 4) * 0x011b)) ^ 0x96), (((0x97 << 3) ^ (((0x97 >> 5) & 1) * 0x011b) ^ (((0x97 >> 5) & 2) * 0x011b) ^ (((0x97 >> 5) & 4) * 0x011b)) ^ 0x97), (((0x98 << 3) ^ (((0x98 >> 5) & 1) * 0x011b) ^ (((0x98 >> 5) & 2) * 0x011b) ^ (((0x98 >> 5) & 4) * 0x011b)) ^ 0x98), (((0x99 << 3) ^ (((0x99 >> 5) & 1) * 0x011b) ^ (((0x99 >> 5) & 2) * 0x011b) ^ (((0x99 >> 5) & 4) * 0x011b)) ^ 0x99), (((0x9a << 3) ^ (((0x9a >> 5) & 1) * 0x011b) ^ (((0x9a >> 5) & 2) * 0x011b) ^ (((0x9a >> 5) & 4) * 0x011b)) ^ 0x9a), (((0x9b << 3) ^ (((0x9b >> 5) & 1) * 0x011b) ^ (((0x9b >> 5) & 2) * 0x011b) ^ (((0x9b >> 5) & 4) * 0x011b)) ^ 0x9b), (((0x9c << 3) ^ (((0x9c >> 5) & 1) * 0x011b) ^ (((0x9c >> 5) & 2) * 0x011b) ^ (((0x9c >> 5) & 4) * 0x011b)) ^ 0x9c), (((0x9d << 3) ^ (((0x9d >> 5) & 1) * 0x011b) ^ (((0x9d >> 5) & 2) * 0x011b) ^ (((0x9d >> 5) & 4) * 0x011b)) ^ 0x9d), (((0x9e << 3) ^ (((0x9e >> 5) & 1) * 0x011b) ^ (((0x9e >> 5) & 2) * 0x011b) ^ (((0x9e >> 5) & 4) * 0x011b)) ^ 0x9e), (((0x9f << 3) ^ (((0x9f >> 5) & 1) * 0x011b) ^ (((0x9f >> 5) & 2) * 0x011b) ^ (((0x9f >> 5) & 4) * 0x011b)) ^ 0x9f), (((0xa0 << 3) ^ (((0xa0 >> 5) & 1) * 0x011b) ^ (((0xa0 >> 5) & 2) * 0x011b) ^ (((0xa0 >> 5) & 4) * 0x011b)) ^ 0xa0), (((0xa1 << 3) ^ (((0xa1 >> 5) & 1) * 0x011b) ^ (((0xa1 >> 5) & 2) * 0x011b) ^ (((0xa1 >> 5) & 4) * 0x011b)) ^ 0xa1), (((0xa2 << 3) ^ (((0xa2 >> 5) & 1) * 0x011b) ^ (((0xa2 >> 5) & 2) * 0x011b) ^ (((0xa2 >> 5) & 4) * 0x011b)) ^ 0xa2), (((0xa3 << 3) ^ (((0xa3 >> 5) & 1) * 0x011b) ^ (((0xa3 >> 5) & 2) * 0x011b) ^ (((0xa3 >> 5) & 4) * 0x011b)) ^ 0xa3), (((0xa4 << 3) ^ (((0xa4 >> 5) & 1) * 0x011b) ^ (((0xa4 >> 5) & 2) * 0x011b) ^ (((0xa4 >> 5) & 4) * 0x011b)) ^ 0xa4), (((0xa5 << 3) ^ (((0xa5 >> 5) & 1) * 0x011b) ^ (((0xa5 >> 5) & 2) * 0x011b) ^ (((0xa5 >> 5) & 4) * 0x011b)) ^ 0xa5), (((0xa6 << 3) ^ (((0xa6 >> 5) & 1) * 0x011b) ^ (((0xa6 >> 5) & 2) * 0x011b) ^ (((0xa6 >> 5) & 4) * 0x011b)) ^ 0xa6), (((0xa7 << 3) ^ (((0xa7 >> 5) & 1) * 0x011b) ^ (((0xa7 >> 5) & 2) * 0x011b) ^ (((0xa7 >> 5) & 4) * 0x011b)) ^ 0xa7), (((0xa8 << 3) ^ (((0xa8 >> 5) & 1) * 0x011b) ^ (((0xa8 >> 5) & 2) * 0x011b) ^ (((0xa8 >> 5) & 4) * 0x011b)) ^ 0xa8), (((0xa9 << 3) ^ (((0xa9 >> 5) & 1) * 0x011b) ^ (((0xa9 >> 5) & 2) * 0x011b) ^ (((0xa9 >> 5) & 4) * 0x011b)) ^ 0xa9), (((0xaa << 3) ^ (((0xaa >> 5) & 1) * 0x011b) ^ (((0xaa >> 5) & 2) * 0x011b) ^ (((0xaa >> 5) & 4) * 0x011b)) ^ 0xaa), (((0xab << 3) ^ (((0xab >> 5) & 1) * 0x011b) ^ (((0xab >> 5) & 2) * 0x011b) ^ (((0xab >> 5) & 4) * 0x011b)) ^ 0xab), (((0xac << 3) ^ (((0xac >> 5) & 1) * 0x011b) ^ (((0xac >> 5) & 2) * 0x011b) ^ (((0xac >> 5) & 4) * 0x011b)) ^ 0xac), (((0xad << 3) ^ (((0xad >> 5) & 1) * 0x011b) ^ (((0xad >> 5) & 2) * 0x011b) ^ (((0xad >> 5) & 4) * 0x011b)) ^ 0xad), (((0xae << 3) ^ (((0xae >> 5) & 1) * 0x011b) ^ (((0xae >> 5) & 2) * 0x011b) ^ (((0xae >> 5) & 4) * 0x011b)) ^ 0xae), (((0xaf << 3) ^ (((0xaf >> 5) & 1) * 0x011b) ^ (((0xaf >> 5) & 2) * 0x011b) ^ (((0xaf >> 5) & 4) * 0x011b)) ^ 0xaf), (((0xb0 << 3) ^ (((0xb0 >> 5) & 1) * 0x011b) ^ (((0xb0 >> 5) & 2) * 0x011b) ^ (((0xb0 >> 5) & 4) * 0x011b)) ^ 0xb0), (((0xb1 << 3) ^ (((0xb1 >> 5) & 1) * 0x011b) ^ (((0xb1 >> 5) & 2) * 0x011b) ^ (((0xb1 >> 5) & 4) * 0x011b)) ^ 0xb1), (((0xb2 << 3) ^ (((0xb2 >> 5) & 1) * 0x011b) ^ (((0xb2 >> 5) & 2) * 0x011b) ^ (((0xb2 >> 5) & 4) * 0x011b)) ^ 0xb2), (((0xb3 << 3) ^ (((0xb3 >> 5) & 1) * 0x011b) ^ (((0xb3 >> 5) & 2) * 0x011b) ^ (((0xb3 >> 5) & 4) * 0x011b)) ^ 0xb3), (((0xb4 << 3) ^ (((0xb4 >> 5) & 1) * 0x011b) ^ (((0xb4 >> 5) & 2) * 0x011b) ^ (((0xb4 >> 5) & 4) * 0x011b)) ^ 0xb4), (((0xb5 << 3) ^ (((0xb5 >> 5) & 1) * 0x011b) ^ (((0xb5 >> 5) & 2) * 0x011b) ^ (((0xb5 >> 5) & 4) * 0x011b)) ^ 0xb5), (((0xb6 << 3) ^ (((0xb6 >> 5) & 1) * 0x011b) ^ (((0xb6 >> 5) & 2) * 0x011b) ^ (((0xb6 >> 5) & 4) * 0x011b)) ^ 0xb6), (((0xb7 << 3) ^ (((0xb7 >> 5) & 1) * 0x011b) ^ (((0xb7 >> 5) & 2) * 0x011b) ^ (((0xb7 >> 5) & 4) * 0x011b)) ^ 0xb7), (((0xb8 << 3) ^ (((0xb8 >> 5) & 1) * 0x011b) ^ (((0xb8 >> 5) & 2) * 0x011b) ^ (((0xb8 >> 5) & 4) * 0x011b)) ^ 0xb8), (((0xb9 << 3) ^ (((0xb9 >> 5) & 1) * 0x011b) ^ (((0xb9 >> 5) & 2) * 0x011b) ^ (((0xb9 >> 5) & 4) * 0x011b)) ^ 0xb9), (((0xba << 3) ^ (((0xba >> 5) & 1) * 0x011b) ^ (((0xba >> 5) & 2) * 0x011b) ^ (((0xba >> 5) & 4) * 0x011b)) ^ 0xba), (((0xbb << 3) ^ (((0xbb >> 5) & 1) * 0x011b) ^ (((0xbb >> 5) & 2) * 0x011b) ^ (((0xbb >> 5) & 4) * 0x011b)) ^ 0xbb), (((0xbc << 3) ^ (((0xbc >> 5) & 1) * 0x011b) ^ (((0xbc >> 5) & 2) * 0x011b) ^ (((0xbc >> 5) & 4) * 0x011b)) ^ 0xbc), (((0xbd << 3) ^ (((0xbd >> 5) & 1) * 0x011b) ^ (((0xbd >> 5) & 2) * 0x011b) ^ (((0xbd >> 5) & 4) * 0x011b)) ^ 0xbd), (((0xbe << 3) ^ (((0xbe >> 5) & 1) * 0x011b) ^ (((0xbe >> 5) & 2) * 0x011b) ^ (((0xbe >> 5) & 4) * 0x011b)) ^ 0xbe), (((0xbf << 3) ^ (((0xbf >> 5) & 1) * 0x011b) ^ (((0xbf >> 5) & 2) * 0x011b) ^ (((0xbf >> 5) & 4) * 0x011b)) ^ 0xbf), (((0xc0 << 3) ^ (((0xc0 >> 5) & 1) * 0x011b) ^ (((0xc0 >> 5) & 2) * 0x011b) ^ (((0xc0 >> 5) & 4) * 0x011b)) ^ 0xc0), (((0xc1 << 3) ^ (((0xc1 >> 5) & 1) * 0x011b) ^ (((0xc1 >> 5) & 2) * 0x011b) ^ (((0xc1 >> 5) & 4) * 0x011b)) ^ 0xc1), (((0xc2 << 3) ^ (((0xc2 >> 5) & 1) * 0x011b) ^ (((0xc2 >> 5) & 2) * 0x011b) ^ (((0xc2 >> 5) & 4) * 0x011b)) ^ 0xc2), (((0xc3 << 3) ^ (((0xc3 >> 5) & 1) * 0x011b) ^ (((0xc3 >> 5) & 2) * 0x011b) ^ (((0xc3 >> 5) & 4) * 0x011b)) ^ 0xc3), (((0xc4 << 3) ^ (((0xc4 >> 5) & 1) * 0x011b) ^ (((0xc4 >> 5) & 2) * 0x011b) ^ (((0xc4 >> 5) & 4) * 0x011b)) ^ 0xc4), (((0xc5 << 3) ^ (((0xc5 >> 5) & 1) * 0x011b) ^ (((0xc5 >> 5) & 2) * 0x011b) ^ (((0xc5 >> 5) & 4) * 0x011b)) ^ 0xc5), (((0xc6 << 3) ^ (((0xc6 >> 5) & 1) * 0x011b) ^ (((0xc6 >> 5) & 2) * 0x011b) ^ (((0xc6 >> 5) & 4) * 0x011b)) ^ 0xc6), (((0xc7 << 3) ^ (((0xc7 >> 5) & 1) * 0x011b) ^ (((0xc7 >> 5) & 2) * 0x011b) ^ (((0xc7 >> 5) & 4) * 0x011b)) ^ 0xc7), (((0xc8 << 3) ^ (((0xc8 >> 5) & 1) * 0x011b) ^ (((0xc8 >> 5) & 2) * 0x011b) ^ (((0xc8 >> 5) & 4) * 0x011b)) ^ 0xc8), (((0xc9 << 3) ^ (((0xc9 >> 5) & 1) * 0x011b) ^ (((0xc9 >> 5) & 2) * 0x011b) ^ (((0xc9 >> 5) & 4) * 0x011b)) ^ 0xc9), (((0xca << 3) ^ (((0xca >> 5) & 1) * 0x011b) ^ (((0xca >> 5) & 2) * 0x011b) ^ (((0xca >> 5) & 4) * 0x011b)) ^ 0xca), (((0xcb << 3) ^ (((0xcb >> 5) & 1) * 0x011b) ^ (((0xcb >> 5) & 2) * 0x011b) ^ (((0xcb >> 5) & 4) * 0x011b)) ^ 0xcb), (((0xcc << 3) ^ (((0xcc >> 5) & 1) * 0x011b) ^ (((0xcc >> 5) & 2) * 0x011b) ^ (((0xcc >> 5) & 4) * 0x011b)) ^ 0xcc), (((0xcd << 3) ^ (((0xcd >> 5) & 1) * 0x011b) ^ (((0xcd >> 5) & 2) * 0x011b) ^ (((0xcd >> 5) & 4) * 0x011b)) ^ 0xcd), (((0xce << 3) ^ (((0xce >> 5) & 1) * 0x011b) ^ (((0xce >> 5) & 2) * 0x011b) ^ (((0xce >> 5) & 4) * 0x011b)) ^ 0xce), (((0xcf << 3) ^ (((0xcf >> 5) & 1) * 0x011b) ^ (((0xcf >> 5) & 2) * 0x011b) ^ (((0xcf >> 5) & 4) * 0x011b)) ^ 0xcf), (((0xd0 << 3) ^ (((0xd0 >> 5) & 1) * 0x011b) ^ (((0xd0 >> 5) & 2) * 0x011b) ^ (((0xd0 >> 5) & 4) * 0x011b)) ^ 0xd0), (((0xd1 << 3) ^ (((0xd1 >> 5) & 1) * 0x011b) ^ (((0xd1 >> 5) & 2) * 0x011b) ^ (((0xd1 >> 5) & 4) * 0x011b)) ^ 0xd1), (((0xd2 << 3) ^ (((0xd2 >> 5) & 1) * 0x011b) ^ (((0xd2 >> 5) & 2) * 0x011b) ^ (((0xd2 >> 5) & 4) * 0x011b)) ^ 0xd2), (((0xd3 << 3) ^ (((0xd3 >> 5) & 1) * 0x011b) ^ (((0xd3 >> 5) & 2) * 0x011b) ^ (((0xd3 >> 5) & 4) * 0x011b)) ^ 0xd3), (((0xd4 << 3) ^ (((0xd4 >> 5) & 1) * 0x011b) ^ (((0xd4 >> 5) & 2) * 0x011b) ^ (((0xd4 >> 5) & 4) * 0x011b)) ^ 0xd4), (((0xd5 << 3) ^ (((0xd5 >> 5) & 1) * 0x011b) ^ (((0xd5 >> 5) & 2) * 0x011b) ^ (((0xd5 >> 5) & 4) * 0x011b)) ^ 0xd5), (((0xd6 << 3) ^ (((0xd6 >> 5) & 1) * 0x011b) ^ (((0xd6 >> 5) & 2) * 0x011b) ^ (((0xd6 >> 5) & 4) * 0x011b)) ^ 0xd6), (((0xd7 << 3) ^ (((0xd7 >> 5) & 1) * 0x011b) ^ (((0xd7 >> 5) & 2) * 0x011b) ^ (((0xd7 >> 5) & 4) * 0x011b)) ^ 0xd7), (((0xd8 << 3) ^ (((0xd8 >> 5) & 1) * 0x011b) ^ (((0xd8 >> 5) & 2) * 0x011b) ^ (((0xd8 >> 5) & 4) * 0x011b)) ^ 0xd8), (((0xd9 << 3) ^ (((0xd9 >> 5) & 1) * 0x011b) ^ (((0xd9 >> 5) & 2) * 0x011b) ^ (((0xd9 >> 5) & 4) * 0x011b)) ^ 0xd9), (((0xda << 3) ^ (((0xda >> 5) & 1) * 0x011b) ^ (((0xda >> 5) & 2) * 0x011b) ^ (((0xda >> 5) & 4) * 0x011b)) ^ 0xda), (((0xdb << 3) ^ (((0xdb >> 5) & 1) * 0x011b) ^ (((0xdb >> 5) & 2) * 0x011b) ^ (((0xdb >> 5) & 4) * 0x011b)) ^ 0xdb), (((0xdc << 3) ^ (((0xdc >> 5) & 1) * 0x011b) ^ (((0xdc >> 5) & 2) * 0x011b) ^ (((0xdc >> 5) & 4) * 0x011b)) ^ 0xdc), (((0xdd << 3) ^ (((0xdd >> 5) & 1) * 0x011b) ^ (((0xdd >> 5) & 2) * 0x011b) ^ (((0xdd >> 5) & 4) * 0x011b)) ^ 0xdd), (((0xde << 3) ^ (((0xde >> 5) & 1) * 0x011b) ^ (((0xde >> 5) & 2) * 0x011b) ^ (((0xde >> 5) & 4) * 0x011b)) ^ 0xde), (((0xdf << 3) ^ (((0xdf >> 5) & 1) * 0x011b) ^ (((0xdf >> 5) & 2) * 0x011b) ^ (((0xdf >> 5) & 4) * 0x011b)) ^ 0xdf), (((0xe0 << 3) ^ (((0xe0 >> 5) & 1) * 0x011b) ^ (((0xe0 >> 5) & 2) * 0x011b) ^ (((0xe0 >> 5) & 4) * 0x011b)) ^ 0xe0), (((0xe1 << 3) ^ (((0xe1 >> 5) & 1) * 0x011b) ^ (((0xe1 >> 5) & 2) * 0x011b) ^ (((0xe1 >> 5) & 4) * 0x011b)) ^ 0xe1), (((0xe2 << 3) ^ (((0xe2 >> 5) & 1) * 0x011b) ^ (((0xe2 >> 5) & 2) * 0x011b) ^ (((0xe2 >> 5) & 4) * 0x011b)) ^ 0xe2), (((0xe3 << 3) ^ (((0xe3 >> 5) & 1) * 0x011b) ^ (((0xe3 >> 5) & 2) * 0x011b) ^ (((0xe3 >> 5) & 4) * 0x011b)) ^ 0xe3), (((0xe4 << 3) ^ (((0xe4 >> 5) & 1) * 0x011b) ^ (((0xe4 >> 5) & 2) * 0x011b) ^ (((0xe4 >> 5) & 4) * 0x011b)) ^ 0xe4), (((0xe5 << 3) ^ (((0xe5 >> 5) & 1) * 0x011b) ^ (((0xe5 >> 5) & 2) * 0x011b) ^ (((0xe5 >> 5) & 4) * 0x011b)) ^ 0xe5), (((0xe6 << 3) ^ (((0xe6 >> 5) & 1) * 0x011b) ^ (((0xe6 >> 5) & 2) * 0x011b) ^ (((0xe6 >> 5) & 4) * 0x011b)) ^ 0xe6), (((0xe7 << 3) ^ (((0xe7 >> 5) & 1) * 0x011b) ^ (((0xe7 >> 5) & 2) * 0x011b) ^ (((0xe7 >> 5) & 4) * 0x011b)) ^ 0xe7), (((0xe8 << 3) ^ (((0xe8 >> 5) & 1) * 0x011b) ^ (((0xe8 >> 5) & 2) * 0x011b) ^ (((0xe8 >> 5) & 4) * 0x011b)) ^ 0xe8), (((0xe9 << 3) ^ (((0xe9 >> 5) & 1) * 0x011b) ^ (((0xe9 >> 5) & 2) * 0x011b) ^ (((0xe9 >> 5) & 4) * 0x011b)) ^ 0xe9), (((0xea << 3) ^ (((0xea >> 5) & 1) * 0x011b) ^ (((0xea >> 5) & 2) * 0x011b) ^ (((0xea >> 5) & 4) * 0x011b)) ^ 0xea), (((0xeb << 3) ^ (((0xeb >> 5) & 1) * 0x011b) ^ (((0xeb >> 5) & 2) * 0x011b) ^ (((0xeb >> 5) & 4) * 0x011b)) ^ 0xeb), (((0xec << 3) ^ (((0xec >> 5) & 1) * 0x011b) ^ (((0xec >> 5) & 2) * 0x011b) ^ (((0xec >> 5) & 4) * 0x011b)) ^ 0xec), (((0xed << 3) ^ (((0xed >> 5) & 1) * 0x011b) ^ (((0xed >> 5) & 2) * 0x011b) ^ (((0xed >> 5) & 4) * 0x011b)) ^ 0xed), (((0xee << 3) ^ (((0xee >> 5) & 1) * 0x011b) ^ (((0xee >> 5) & 2) * 0x011b) ^ (((0xee >> 5) & 4) * 0x011b)) ^ 0xee), (((0xef << 3) ^ (((0xef >> 5) & 1) * 0x011b) ^ (((0xef >> 5) & 2) * 0x011b) ^ (((0xef >> 5) & 4) * 0x011b)) ^ 0xef), (((0xf0 << 3) ^ (((0xf0 >> 5) & 1) * 0x011b) ^ (((0xf0 >> 5) & 2) * 0x011b) ^ (((0xf0 >> 5) & 4) * 0x011b)) ^ 0xf0), (((0xf1 << 3) ^ (((0xf1 >> 5) & 1) * 0x011b) ^ (((0xf1 >> 5) & 2) * 0x011b) ^ (((0xf1 >> 5) & 4) * 0x011b)) ^ 0xf1), (((0xf2 << 3) ^ (((0xf2 >> 5) & 1) * 0x011b) ^ (((0xf2 >> 5) & 2) * 0x011b) ^ (((0xf2 >> 5) & 4) * 0x011b)) ^ 0xf2), (((0xf3 << 3) ^ (((0xf3 >> 5) & 1) * 0x011b) ^ (((0xf3 >> 5) & 2) * 0x011b) ^ (((0xf3 >> 5) & 4) * 0x011b)) ^ 0xf3), (((0xf4 << 3) ^ (((0xf4 >> 5) & 1) * 0x011b) ^ (((0xf4 >> 5) & 2) * 0x011b) ^ (((0xf4 >> 5) & 4) * 0x011b)) ^ 0xf4), (((0xf5 << 3) ^ (((0xf5 >> 5) & 1) * 0x011b) ^ (((0xf5 >> 5) & 2) * 0x011b) ^ (((0xf5 >> 5) & 4) * 0x011b)) ^ 0xf5), (((0xf6 << 3) ^ (((0xf6 >> 5) & 1) * 0x011b) ^ (((0xf6 >> 5) & 2) * 0x011b) ^ (((0xf6 >> 5) & 4) * 0x011b)) ^ 0xf6), (((0xf7 << 3) ^ (((0xf7 >> 5) & 1) * 0x011b) ^ (((0xf7 >> 5) & 2) * 0x011b) ^ (((0xf7 >> 5) & 4) * 0x011b)) ^ 0xf7), (((0xf8 << 3) ^ (((0xf8 >> 5) & 1) * 0x011b) ^ (((0xf8 >> 5) & 2) * 0x011b) ^ (((0xf8 >> 5) & 4) * 0x011b)) ^ 0xf8), (((0xf9 << 3) ^ (((0xf9 >> 5) & 1) * 0x011b) ^ (((0xf9 >> 5) & 2) * 0x011b) ^ (((0xf9 >> 5) & 4) * 0x011b)) ^ 0xf9), (((0xfa << 3) ^ (((0xfa >> 5) & 1) * 0x011b) ^ (((0xfa >> 5) & 2) * 0x011b) ^ (((0xfa >> 5) & 4) * 0x011b)) ^ 0xfa), (((0xfb << 3) ^ (((0xfb >> 5) & 1) * 0x011b) ^ (((0xfb >> 5) & 2) * 0x011b) ^ (((0xfb >> 5) & 4) * 0x011b)) ^ 0xfb), (((0xfc << 3) ^ (((0xfc >> 5) & 1) * 0x011b) ^ (((0xfc >> 5) & 2) * 0x011b) ^ (((0xfc >> 5) & 4) * 0x011b)) ^ 0xfc), (((0xfd << 3) ^ (((0xfd >> 5) & 1) * 0x011b) ^ (((0xfd >> 5) & 2) * 0x011b) ^ (((0xfd >> 5) & 4) * 0x011b)) ^ 0xfd), (((0xfe << 3) ^ (((0xfe >> 5) & 1) * 0x011b) ^ (((0xfe >> 5) & 2) * 0x011b) ^ (((0xfe >> 5) & 4) * 0x011b)) ^ 0xfe), (((0xff << 3) ^ (((0xff >> 5) & 1) * 0x011b) ^ (((0xff >> 5) & 2) * 0x011b) ^ (((0xff >> 5) & 4) * 0x011b)) ^ 0xff) };
static const uint_8t gfmul_b[256] = { (((0x00 << 3) ^ (((0x00 >> 5) & 1) * 0x011b) ^ (((0x00 >> 5) & 2) * 0x011b) ^ (((0x00 >> 5) & 4) * 0x011b)) ^ ((0x00 << 1) ^ (((0x00 >> 7) & 1) * 0x011b)) ^ 0x00), (((0x01 << 3) ^ (((0x01 >> 5) & 1) * 0x011b) ^ (((0x01 >> 5) & 2) * 0x011b) ^ (((0x01 >> 5) & 4) * 0x011b)) ^ ((0x01 << 1) ^ (((0x01 >> 7) & 1) * 0x011b)) ^ 0x01), (((0x02 << 3) ^ (((0x02 >> 5) & 1) * 0x011b) ^ (((0x02 >> 5) & 2) * 0x011b) ^ (((0x02 >> 5) & 4) * 0x011b)) ^ ((0x02 << 1) ^ (((0x02 >> 7) & 1) * 0x011b)) ^ 0x02), (((0x03 << 3) ^ (((0x03 >> 5) & 1) * 0x011b) ^ (((0x03 >> 5) & 2) * 0x011b) ^ (((0x03 >> 5) & 4) * 0x011b)) ^ ((0x03 << 1) ^ (((0x03 >> 7) & 1) * 0x011b)) ^ 0x03), (((0x04 << 3) ^ (((0x04 >> 5) & 1) * 0x011b) ^ (((0x04 >> 5) & 2) * 0x011b) ^ (((0x04 >> 5) & 4) * 0x011b)) ^ ((0x04 << 1) ^ (((0x04 >> 7) & 1) * 0x011b)) ^ 0x04), (((0x05 << 3) ^ (((0x05 >> 5) & 1) * 0x011b) ^ (((0x05 >> 5) & 2) * 0x011b) ^ (((0x05 >> 5) & 4) * 0x011b)) ^ ((0x05 << 1) ^ (((0x05 >> 7) & 1) * 0x011b)) ^ 0x05), (((0x06 << 3) ^ (((0x06 >> 5) & 1) * 0x011b) ^ (((0x06 >> 5) & 2) * 0x011b) ^ (((0x06 >> 5) & 4) * 0x011b)) ^ ((0x06 << 1) ^ (((0x06 >> 7) & 1) * 0x011b)) ^ 0x06), (((0x07 << 3) ^ (((0x07 >> 5) & 1) * 0x011b) ^ (((0x07 >> 5) & 2) * 0x011b) ^ (((0x07 >> 5) & 4) * 0x011b)) ^ ((0x07 << 1) ^ (((0x07 >> 7) & 1) * 0x011b)) ^ 0x07), (((0x08 << 3) ^ (((0x08 >> 5) & 1) * 0x011b) ^ (((0x08 >> 5) & 2) * 0x011b) ^ (((0x08 >> 5) & 4) * 0x011b)) ^ ((0x08 << 1) ^ (((0x08 >> 7) & 1) * 0x011b)) ^ 0x08), (((0x09 << 3) ^ (((0x09 >> 5) & 1) * 0x011b) ^ (((0x09 >> 5) & 2) * 0x011b) ^ (((0x09 >> 5) & 4) * 0x011b)) ^ ((0x09 << 1) ^ (((0x09 >> 7) & 1) * 0x011b)) ^ 0x09), (((0x0a << 3) ^ (((0x0a >> 5) & 1) * 0x011b) ^ (((0x0a >> 5) & 2) * 0x011b) ^ (((0x0a >> 5) & 4) * 0x011b)) ^ ((0x0a << 1) ^ (((0x0a >> 7) & 1) * 0x011b)) ^ 0x0a), (((0x0b << 3) ^ (((0x0b >> 5) & 1) * 0x011b) ^ (((0x0b >> 5) & 2) * 0x011b) ^ (((0x0b >> 5) & 4) * 0x011b)) ^ ((0x0b << 1) ^ (((0x0b >> 7) & 1) * 0x011b)) ^ 0x0b), (((0x0c << 3) ^ (((0x0c >> 5) & 1) * 0x011b) ^ (((0x0c >> 5) & 2) * 0x011b) ^ (((0x0c >> 5) & 4) * 0x011b)) ^ ((0x0c << 1) ^ (((0x0c >> 7) & 1) * 0x011b)) ^ 0x0c), (((0x0d << 3) ^ (((0x0d >> 5) & 1) * 0x011b) ^ (((0x0d >> 5) & 2) * 0x011b) ^ (((0x0d >> 5) & 4) * 0x011b)) ^ ((0x0d << 1) ^ (((0x0d >> 7) & 1) * 0x011b)) ^ 0x0d), (((0x0e << 3) ^ (((0x0e >> 5) & 1) * 0x011b) ^ (((0x0e >> 5) & 2) * 0x011b) ^ (((0x0e >> 5) & 4) * 0x011b)) ^ ((0x0e << 1) ^ (((0x0e >> 7) & 1) * 0x011b)) ^ 0x0e), (((0x0f << 3) ^ (((0x0f >> 5) & 1) * 0x011b) ^ (((0x0f >> 5) & 2) * 0x011b) ^ (((0x0f >> 5) & 4) * 0x011b)) ^ ((0x0f << 1) ^ (((0x0f >> 7) & 1) * 0x011b)) ^ 0x0f), (((0x10 << 3) ^ (((0x10 >> 5) & 1) * 0x011b) ^ (((0x10 >> 5) & 2) * 0x011b) ^ (((0x10 >> 5) & 4) * 0x011b)) ^ ((0x10 << 1) ^ (((0x10 >> 7) & 1) * 0x011b)) ^ 0x10), (((0x11 << 3) ^ (((0x11 >> 5) & 1) * 0x011b) ^ (((0x11 >> 5) & 2) * 0x011b) ^ (((0x11 >> 5) & 4) * 0x011b)) ^ ((0x11 << 1) ^ (((0x11 >> 7) & 1) * 0x011b)) ^ 0x11), (((0x12 << 3) ^ (((0x12 >> 5) & 1) * 0x011b) ^ (((0x12 >> 5) & 2) * 0x011b) ^ (((0x12 >> 5) & 4) * 0x011b)) ^ ((0x12 << 1) ^ (((0x12 >> 7) & 1) * 0x011b)) ^ 0x12), (((0x13 << 3) ^ (((0x13 >> 5) & 1) * 0x011b) ^ (((0x13 >> 5) & 2) * 0x011b) ^ (((0x13 >> 5) & 4) * 0x011b)) ^ ((0x13 << 1) ^ (((0x13 >> 7) & 1) * 0x011b)) ^ 0x13), (((0x14 << 3) ^ (((0x14 >> 5) & 1) * 0x011b) ^ (((0x14 >> 5) & 2) * 0x011b) ^ (((0x14 >> 5) & 4) * 0x011b)) ^ ((0x14 << 1) ^ (((0x14 >> 7) & 1) * 0x011b)) ^ 0x14), (((0x15 << 3) ^ (((0x15 >> 5) & 1) * 0x011b) ^ (((0x15 >> 5) & 2) * 0x011b) ^ (((0x15 >> 5) & 4) * 0x011b)) ^ ((0x15 << 1) ^ (((0x15 >> 7) & 1) * 0x011b)) ^ 0x15), (((0x16 << 3) ^ (((0x16 >> 5) & 1) * 0x011b) ^ (((0x16 >> 5) & 2) * 0x011b) ^ (((0x16 >> 5) & 4) * 0x011b)) ^ ((0x16 << 1) ^ (((0x16 >> 7) & 1) * 0x011b)) ^ 0x16), (((0x17 << 3) ^ (((0x17 >> 5) & 1) * 0x011b) ^ (((0x17 >> 5) & 2) * 0x011b) ^ (((0x17 >> 5) & 4) * 0x011b)) ^ ((0x17 << 1) ^ (((0x17 >> 7) & 1) * 0x011b)) ^ 0x17), (((0x18 << 3) ^ (((0x18 >> 5) & 1) * 0x011b) ^ (((0x18 >> 5) & 2) * 0x011b) ^ (((0x18 >> 5) & 4) * 0x011b)) ^ ((0x18 << 1) ^ (((0x18 >> 7) & 1) * 0x011b)) ^ 0x18), (((0x19 << 3) ^ (((0x19 >> 5) & 1) * 0x011b) ^ (((0x19 >> 5) & 2) * 0x011b) ^ (((0x19 >> 5) & 4) * 0x011b)) ^ ((0x19 << 1) ^ (((0x19 >> 7) & 1) * 0x011b)) ^ 0x19), (((0x1a << 3) ^ (((0x1a >> 5) & 1) * 0x011b) ^ (((0x1a >> 5) & 2) * 0x011b) ^ (((0x1a >> 5) & 4) * 0x011b)) ^ ((0x1a << 1) ^ (((0x1a >> 7) & 1) * 0x011b)) ^ 0x1a), (((0x1b << 3) ^ (((0x1b >> 5) & 1) * 0x011b) ^ (((0x1b >> 5) & 2) * 0x011b) ^ (((0x1b >> 5) & 4) * 0x011b)) ^ ((0x1b << 1) ^ (((0x1b >> 7) & 1) * 0x011b)) ^ 0x1b), (((0x1c << 3) ^ (((0x1c >> 5) & 1) * 0x011b) ^ (((0x1c >> 5) & 2) * 0x011b) ^ (((0x1c >> 5) & 4) * 0x011b)) ^ ((0x1c << 1) ^ (((0x1c >> 7) & 1) * 0x011b)) ^ 0x1c), (((0x1d << 3) ^ (((0x1d >> 5) & 1) * 0x011b) ^ (((0x1d >> 5) & 2) * 0x011b) ^ (((0x1d >> 5) & 4) * 0x011b)) ^ ((0x1d << 1) ^ (((0x1d >> 7) & 1) * 0x011b)) ^ 0x1d), (((0x1e << 3) ^ (((0x1e >> 5) & 1) * 0x011b) ^ (((0x1e >> 5) & 2) * 0x011b) ^ (((0x1e >> 5) & 4) * 0x011b)) ^ ((0x1e << 1) ^ (((0x1e >> 7) & 1) * 0x011b)) ^ 0x1e), (((0x1f << 3) ^ (((0x1f >> 5) & 1) * 0x011b) ^ (((0x1f >> 5) & 2) * 0x011b) ^ (((0x1f >> 5) & 4) * 0x011b)) ^ ((0x1f << 1) ^ (((0x1f >> 7) & 1) * 0x011b)) ^ 0x1f), (((0x20 << 3) ^ (((0x20 >> 5) & 1) * 0x011b) ^ (((0x20 >> 5) & 2) * 0x011b) ^ (((0x20 >> 5) & 4) * 0x011b)) ^ ((0x20 << 1) ^ (((0x20 >> 7) & 1) * 0x011b)) ^ 0x20), (((0x21 << 3) ^ (((0x21 >> 5) & 1) * 0x011b) ^ (((0x21 >> 5) & 2) * 0x011b) ^ (((0x21 >> 5) & 4) * 0x011b)) ^ ((0x21 << 1) ^ (((0x21 >> 7) & 1) * 0x011b)) ^ 0x21), (((0x22 << 3) ^ (((0x22 >> 5) & 1) * 0x011b) ^ (((0x22 >> 5) & 2) * 0x011b) ^ (((0x22 >> 5) & 4) * 0x011b)) ^ ((0x22 << 1) ^ (((0x22 >> 7) & 1) * 0x011b)) ^ 0x22), (((0x23 << 3) ^ (((0x23 >> 5) & 1) * 0x011b) ^ (((0x23 >> 5) & 2) * 0x011b) ^ (((0x23 >> 5) & 4) * 0x011b)) ^ ((0x23 << 1) ^ (((0x23 >> 7) & 1) * 0x011b)) ^ 0x23), (((0x24 << 3) ^ (((0x24 >> 5) & 1) * 0x011b) ^ (((0x24 >> 5) & 2) * 0x011b) ^ (((0x24 >> 5) & 4) * 0x011b)) ^ ((0x24 << 1) ^ (((0x24 >> 7) & 1) * 0x011b)) ^ 0x24), (((0x25 << 3) ^ (((0x25 >> 5) & 1) * 0x011b) ^ (((0x25 >> 5) & 2) * 0x011b) ^ (((0x25 >> 5) & 4) * 0x011b)) ^ ((0x25 << 1) ^ (((0x25 >> 7) & 1) * 0x011b)) ^ 0x25), (((0x26 << 3) ^ (((0x26 >> 5) & 1) * 0x011b) ^ (((0x26 >> 5) & 2) * 0x011b) ^ (((0x26 >> 5) & 4) * 0x011b)) ^ ((0x26 << 1) ^ (((0x26 >> 7) & 1) * 0x011b)) ^ 0x26), (((0x27 << 3) ^ (((0x27 >> 5) & 1) * 0x011b) ^ (((0x27 >> 5) & 2) * 0x011b) ^ (((0x27 >> 5) & 4) * 0x011b)) ^ ((0x27 << 1) ^ (((0x27 >> 7) & 1) * 0x011b)) ^ 0x27), (((0x28 << 3) ^ (((0x28 >> 5) & 1) * 0x011b) ^ (((0x28 >> 5) & 2) * 0x011b) ^ (((0x28 >> 5) & 4) * 0x011b)) ^ ((0x28 << 1) ^ (((0x28 >> 7) & 1) * 0x011b)) ^ 0x28), (((0x29 << 3) ^ (((0x29 >> 5) & 1) * 0x011b) ^ (((0x29 >> 5) & 2) * 0x011b) ^ (((0x29 >> 5) & 4) * 0x011b)) ^ ((0x29 << 1) ^ (((0x29 >> 7) & 1) * 0x011b)) ^ 0x29), (((0x2a << 3) ^ (((0x2a >> 5) & 1) * 0x011b) ^ (((0x2a >> 5) & 2) * 0x011b) ^ (((0x2a >> 5) & 4) * 0x011b)) ^ ((0x2a << 1) ^ (((0x2a >> 7) & 1) * 0x011b)) ^ 0x2a), (((0x2b << 3) ^ (((0x2b >> 5) & 1) * 0x011b) ^ (((0x2b >> 5) & 2) * 0x011b) ^ (((0x2b >> 5) & 4) * 0x011b)) ^ ((0x2b << 1) ^ (((0x2b >> 7) & 1) * 0x011b)) ^ 0x2b), (((0x2c << 3) ^ (((0x2c >> 5) & 1) * 0x011b) ^ (((0x2c >> 5) & 2) * 0x011b) ^ (((0x2c >> 5) & 4) * 0x011b)) ^ ((0x2c << 1) ^ (((0x2c >> 7) & 1) * 0x011b)) ^ 0x2c), (((0x2d << 3) ^ (((0x2d >> 5) & 1) * 0x011b) ^ (((0x2d >> 5) & 2) * 0x011b) ^ (((0x2d >> 5) & 4) * 0x011b)) ^ ((0x2d << 1) ^ (((0x2d >> 7) & 1) * 0x011b)) ^ 0x2d), (((0x2e << 3) ^ (((0x2e >> 5) & 1) * 0x011b) ^ (((0x2e >> 5) & 2) * 0x011b) ^ (((0x2e >> 5) & 4) * 0x011b)) ^ ((0x2e << 1) ^ (((0x2e >> 7) & 1) * 0x011b)) ^ 0x2e), (((0x2f << 3) ^ (((0x2f >> 5) & 1) * 0x011b) ^ (((0x2f >> 5) & 2) * 0x011b) ^ (((0x2f >> 5) & 4) * 0x011b)) ^ ((0x2f << 1) ^ (((0x2f >> 7) & 1) * 0x011b)) ^ 0x2f), (((0x30 << 3) ^ (((0x30 >> 5) & 1) * 0x011b) ^ (((0x30 >> 5) & 2) * 0x011b) ^ (((0x30 >> 5) & 4) * 0x011b)) ^ ((0x30 << 1) ^ (((0x30 >> 7) & 1) * 0x011b)) ^ 0x30), (((0x31 << 3) ^ (((0x31 >> 5) & 1) * 0x011b) ^ (((0x31 >> 5) & 2) * 0x011b) ^ (((0x31 >> 5) & 4) * 0x011b)) ^ ((0x31 << 1) ^ (((0x31 >> 7) & 1) * 0x011b)) ^ 0x31), (((0x32 << 3) ^ (((0x32 >> 5) & 1) * 0x011b) ^ (((0x32 >> 5) & 2) * 0x011b) ^ (((0x32 >> 5) & 4) * 0x011b)) ^ ((0x32 << 1) ^ (((0x32 >> 7) & 1) * 0x011b)) ^ 0x32), (((0x33 << 3) ^ (((0x33 >> 5) & 1) * 0x011b) ^ (((0x33 >> 5) & 2) * 0x011b) ^ (((0x33 >> 5) & 4) * 0x011b)) ^ ((0x33 << 1) ^ (((0x33 >> 7) & 1) * 0x011b)) ^ 0x33), (((0x34 << 3) ^ (((0x34 >> 5) & 1) * 0x011b) ^ (((0x34 >> 5) & 2) * 0x011b) ^ (((0x34 >> 5) & 4) * 0x011b)) ^ ((0x34 << 1) ^ (((0x34 >> 7) & 1) * 0x011b)) ^ 0x34), (((0x35 << 3) ^ (((0x35 >> 5) & 1) * 0x011b) ^ (((0x35 >> 5) & 2) * 0x011b) ^ (((0x35 >> 5) & 4) * 0x011b)) ^ ((0x35 << 1) ^ (((0x35 >> 7) & 1) * 0x011b)) ^ 0x35), (((0x36 << 3) ^ (((0x36 >> 5) & 1) * 0x011b) ^ (((0x36 >> 5) & 2) * 0x011b) ^ (((0x36 >> 5) & 4) * 0x011b)) ^ ((0x36 << 1) ^ (((0x36 >> 7) & 1) * 0x011b)) ^ 0x36), (((0x37 << 3) ^ (((0x37 >> 5) & 1) * 0x011b) ^ (((0x37 >> 5) & 2) * 0x011b) ^ (((0x37 >> 5) & 4) * 0x011b)) ^ ((0x37 << 1) ^ (((0x37 >> 7) & 1) * 0x011b)) ^ 0x37), (((0x38 << 3) ^ (((0x38 >> 5) & 1) * 0x011b) ^ (((0x38 >> 5) & 2) * 0x011b) ^ (((0x38 >> 5) & 4) * 0x011b)) ^ ((0x38 << 1) ^ (((0x38 >> 7) & 1) * 0x011b)) ^ 0x38), (((0x39 << 3) ^ (((0x39 >> 5) & 1) * 0x011b) ^ (((0x39 >> 5) & 2) * 0x011b) ^ (((0x39 >> 5) & 4) * 0x011b)) ^ ((0x39 << 1) ^ (((0x39 >> 7) & 1) * 0x011b)) ^ 0x39), (((0x3a << 3) ^ (((0x3a >> 5) & 1) * 0x011b) ^ (((0x3a >> 5) & 2) * 0x011b) ^ (((0x3a >> 5) & 4) * 0x011b)) ^ ((0x3a << 1) ^ (((0x3a >> 7) & 1) * 0x011b)) ^ 0x3a), (((0x3b << 3) ^ (((0x3b >> 5) & 1) * 0x011b) ^ (((0x3b >> 5) & 2) * 0x011b) ^ (((0x3b >> 5) & 4) * 0x011b)) ^ ((0x3b << 1) ^ (((0x3b >> 7) & 1) * 0x011b)) ^ 0x3b), (((0x3c << 3) ^ (((0x3c >> 5) & 1) * 0x011b) ^ (((0x3c >> 5) & 2) * 0x011b) ^ (((0x3c >> 5) & 4) * 0x011b)) ^ ((0x3c << 1) ^ (((0x3c >> 7) & 1) * 0x011b)) ^ 0x3c), (((0x3d << 3) ^ (((0x3d >> 5) & 1) * 0x011b) ^ (((0x3d >> 5) & 2) * 0x011b) ^ (((0x3d >> 5) & 4) * 0x011b)) ^ ((0x3d << 1) ^ (((0x3d >> 7) & 1) * 0x011b)) ^ 0x3d), (((0x3e << 3) ^ (((0x3e >> 5) & 1) * 0x011b) ^ (((0x3e >> 5) & 2) * 0x011b) ^ (((0x3e >> 5) & 4) * 0x011b)) ^ ((0x3e << 1) ^ (((0x3e >> 7) & 1) * 0x011b)) ^ 0x3e), (((0x3f << 3) ^ (((0x3f >> 5) & 1) * 0x011b) ^ (((0x3f >> 5) & 2) * 0x011b) ^ (((0x3f >> 5) & 4) * 0x011b)) ^ ((0x3f << 1) ^ (((0x3f >> 7) & 1) * 0x011b)) ^ 0x3f), (((0x40 << 3) ^ (((0x40 >> 5) & 1) * 0x011b) ^ (((0x40 >> 5) & 2) * 0x011b) ^ (((0x40 >> 5) & 4) * 0x011b)) ^ ((0x40 << 1) ^ (((0x40 >> 7) & 1) * 0x011b)) ^ 0x40), (((0x41 << 3) ^ (((0x41 >> 5) & 1) * 0x011b) ^ (((0x41 >> 5) & 2) * 0x011b) ^ (((0x41 >> 5) & 4) * 0x011b)) ^ ((0x41 << 1) ^ (((0x41 >> 7) & 1) * 0x011b)) ^ 0x41), (((0x42 << 3) ^ (((0x42 >> 5) & 1) * 0x011b) ^ (((0x42 >> 5) & 2) * 0x011b) ^ (((0x42 >> 5) & 4) * 0x011b)) ^ ((0x42 << 1) ^ (((0x42 >> 7) & 1) * 0x011b)) ^ 0x42), (((0x43 << 3) ^ (((0x43 >> 5) & 1) * 0x011b) ^ (((0x43 >> 5) & 2) * 0x011b) ^ (((0x43 >> 5) & 4) * 0x011b)) ^ ((0x43 << 1) ^ (((0x43 >> 7) & 1) * 0x011b)) ^ 0x43), (((0x44 << 3) ^ (((0x44 >> 5) & 1) * 0x011b) ^ (((0x44 >> 5) & 2) * 0x011b) ^ (((0x44 >> 5) & 4) * 0x011b)) ^ ((0x44 << 1) ^ (((0x44 >> 7) & 1) * 0x011b)) ^ 0x44), (((0x45 << 3) ^ (((0x45 >> 5) & 1) * 0x011b) ^ (((0x45 >> 5) & 2) * 0x011b) ^ (((0x45 >> 5) & 4) * 0x011b)) ^ ((0x45 << 1) ^ (((0x45 >> 7) & 1) * 0x011b)) ^ 0x45), (((0x46 << 3) ^ (((0x46 >> 5) & 1) * 0x011b) ^ (((0x46 >> 5) & 2) * 0x011b) ^ (((0x46 >> 5) & 4) * 0x011b)) ^ ((0x46 << 1) ^ (((0x46 >> 7) & 1) * 0x011b)) ^ 0x46), (((0x47 << 3) ^ (((0x47 >> 5) & 1) * 0x011b) ^ (((0x47 >> 5) & 2) * 0x011b) ^ (((0x47 >> 5) & 4) * 0x011b)) ^ ((0x47 << 1) ^ (((0x47 >> 7) & 1) * 0x011b)) ^ 0x47), (((0x48 << 3) ^ (((0x48 >> 5) & 1) * 0x011b) ^ (((0x48 >> 5) & 2) * 0x011b) ^ (((0x48 >> 5) & 4) * 0x011b)) ^ ((0x48 << 1) ^ (((0x48 >> 7) & 1) * 0x011b)) ^ 0x48), (((0x49 << 3) ^ (((0x49 >> 5) & 1) * 0x011b) ^ (((0x49 >> 5) & 2) * 0x011b) ^ (((0x49 >> 5) & 4) * 0x011b)) ^ ((0x49 << 1) ^ (((0x49 >> 7) & 1) * 0x011b)) ^ 0x49), (((0x4a << 3) ^ (((0x4a >> 5) & 1) * 0x011b) ^ (((0x4a >> 5) & 2) * 0x011b) ^ (((0x4a >> 5) & 4) * 0x011b)) ^ ((0x4a << 1) ^ (((0x4a >> 7) & 1) * 0x011b)) ^ 0x4a), (((0x4b << 3) ^ (((0x4b >> 5) & 1) * 0x011b) ^ (((0x4b >> 5) & 2) * 0x011b) ^ (((0x4b >> 5) & 4) * 0x011b)) ^ ((0x4b << 1) ^ (((0x4b >> 7) & 1) * 0x011b)) ^ 0x4b), (((0x4c << 3) ^ (((0x4c >> 5) & 1) * 0x011b) ^ (((0x4c >> 5) & 2) * 0x011b) ^ (((0x4c >> 5) & 4) * 0x011b)) ^ ((0x4c << 1) ^ (((0x4c >> 7) & 1) * 0x011b)) ^ 0x4c), (((0x4d << 3) ^ (((0x4d >> 5) & 1) * 0x011b) ^ (((0x4d >> 5) & 2) * 0x011b) ^ (((0x4d >> 5) & 4) * 0x011b)) ^ ((0x4d << 1) ^ (((0x4d >> 7) & 1) * 0x011b)) ^ 0x4d), (((0x4e << 3) ^ (((0x4e >> 5) & 1) * 0x011b) ^ (((0x4e >> 5) & 2) * 0x011b) ^ (((0x4e >> 5) & 4) * 0x011b)) ^ ((0x4e << 1) ^ (((0x4e >> 7) & 1) * 0x011b)) ^ 0x4e), (((0x4f << 3) ^ (((0x4f >> 5) & 1) * 0x011b) ^ (((0x4f >> 5) & 2) * 0x011b) ^ (((0x4f >> 5) & 4) * 0x011b)) ^ ((0x4f << 1) ^ (((0x4f >> 7) & 1) * 0x011b)) ^ 0x4f), (((0x50 << 3) ^ (((0x50 >> 5) & 1) * 0x011b) ^ (((0x50 >> 5) & 2) * 0x011b) ^ (((0x50 >> 5) & 4) * 0x011b)) ^ ((0x50 << 1) ^ (((0x50 >> 7) & 1) * 0x011b)) ^ 0x50), (((0x51 << 3) ^ (((0x51 >> 5) & 1) * 0x011b) ^ (((0x51 >> 5) & 2) * 0x011b) ^ (((0x51 >> 5) & 4) * 0x011b)) ^ ((0x51 << 1) ^ (((0x51 >> 7) & 1) * 0x011b)) ^ 0x51), (((0x52 << 3) ^ (((0x52 >> 5) & 1) * 0x011b) ^ (((0x52 >> 5) & 2) * 0x011b) ^ (((0x52 >> 5) & 4) * 0x011b)) ^ ((0x52 << 1) ^ (((0x52 >> 7) & 1) * 0x011b)) ^ 0x52), (((0x53 << 3) ^ (((0x53 >> 5) & 1) * 0x011b) ^ (((0x53 >> 5) & 2) * 0x011b) ^ (((0x53 >> 5) & 4) * 0x011b)) ^ ((0x53 << 1) ^ (((0x53 >> 7) & 1) * 0x011b)) ^ 0x53), (((0x54 << 3) ^ (((0x54 >> 5) & 1) * 0x011b) ^ (((0x54 >> 5) & 2) * 0x011b) ^ (((0x54 >> 5) & 4) * 0x011b)) ^ ((0x54 << 1) ^ (((0x54 >> 7) & 1) * 0x011b)) ^ 0x54), (((0x55 << 3) ^ (((0x55 >> 5) & 1) * 0x011b) ^ (((0x55 >> 5) & 2) * 0x011b) ^ (((0x55 >> 5) & 4) * 0x011b)) ^ ((0x55 << 1) ^ (((0x55 >> 7) & 1) * 0x011b)) ^ 0x55), (((0x56 << 3) ^ (((0x56 >> 5) & 1) * 0x011b) ^ (((0x56 >> 5) & 2) * 0x011b) ^ (((0x56 >> 5) & 4) * 0x011b)) ^ ((0x56 << 1) ^ (((0x56 >> 7) & 1) * 0x011b)) ^ 0x56), (((0x57 << 3) ^ (((0x57 >> 5) & 1) * 0x011b) ^ (((0x57 >> 5) & 2) * 0x011b) ^ (((0x57 >> 5) & 4) * 0x011b)) ^ ((0x57 << 1) ^ (((0x57 >> 7) & 1) * 0x011b)) ^ 0x57), (((0x58 << 3) ^ (((0x58 >> 5) & 1) * 0x011b) ^ (((0x58 >> 5) & 2) * 0x011b) ^ (((0x58 >> 5) & 4) * 0x011b)) ^ ((0x58 << 1) ^ (((0x58 >> 7) & 1) * 0x011b)) ^ 0x58), (((0x59 << 3) ^ (((0x59 >> 5) & 1) * 0x011b) ^ (((0x59 >> 5) & 2) * 0x011b) ^ (((0x59 >> 5) & 4) * 0x011b)) ^ ((0x59 << 1) ^ (((0x59 >> 7) & 1) * 0x011b)) ^ 0x59), (((0x5a << 3) ^ (((0x5a >> 5) & 1) * 0x011b) ^ (((0x5a >> 5) & 2) * 0x011b) ^ (((0x5a >> 5) & 4) * 0x011b)) ^ ((0x5a << 1) ^ (((0x5a >> 7) & 1) * 0x011b)) ^ 0x5a), (((0x5b << 3) ^ (((0x5b >> 5) & 1) * 0x011b) ^ (((0x5b >> 5) & 2) * 0x011b) ^ (((0x5b >> 5) & 4) * 0x011b)) ^ ((0x5b << 1) ^ (((0x5b >> 7) & 1) * 0x011b)) ^ 0x5b), (((0x5c << 3) ^ (((0x5c >> 5) & 1) * 0x011b) ^ (((0x5c >> 5) & 2) * 0x011b) ^ (((0x5c >> 5) & 4) * 0x011b)) ^ ((0x5c << 1) ^ (((0x5c >> 7) & 1) * 0x011b)) ^ 0x5c), (((0x5d << 3) ^ (((0x5d >> 5) & 1) * 0x011b) ^ (((0x5d >> 5) & 2) * 0x011b) ^ (((0x5d >> 5) & 4) * 0x011b)) ^ ((0x5d << 1) ^ (((0x5d >> 7) & 1) * 0x011b)) ^ 0x5d), (((0x5e << 3) ^ (((0x5e >> 5) & 1) * 0x011b) ^ (((0x5e >> 5) & 2) * 0x011b) ^ (((0x5e >> 5) & 4) * 0x011b)) ^ ((0x5e << 1) ^ (((0x5e >> 7) & 1) * 0x011b)) ^ 0x5e), (((0x5f << 3) ^ (((0x5f >> 5) & 1) * 0x011b) ^ (((0x5f >> 5) & 2) * 0x011b) ^ (((0x5f >> 5) & 4) * 0x011b)) ^ ((0x5f << 1) ^ (((0x5f >> 7) & 1) * 0x011b)) ^ 0x5f), (((0x60 << 3) ^ (((0x60 >> 5) & 1) * 0x011b) ^ (((0x60 >> 5) & 2) * 0x011b) ^ (((0x60 >> 5) & 4) * 0x011b)) ^ ((0x60 << 1) ^ (((0x60 >> 7) & 1) * 0x011b)) ^ 0x60), (((0x61 << 3) ^ (((0x61 >> 5) & 1) * 0x011b) ^ (((0x61 >> 5) & 2) * 0x011b) ^ (((0x61 >> 5) & 4) * 0x011b)) ^ ((0x61 << 1) ^ (((0x61 >> 7) & 1) * 0x011b)) ^ 0x61), (((0x62 << 3) ^ (((0x62 >> 5) & 1) * 0x011b) ^ (((0x62 >> 5) & 2) * 0x011b) ^ (((0x62 >> 5) & 4) * 0x011b)) ^ ((0x62 << 1) ^ (((0x62 >> 7) & 1) * 0x011b)) ^ 0x62), (((0x63 << 3) ^ (((0x63 >> 5) & 1) * 0x011b) ^ (((0x63 >> 5) & 2) * 0x011b) ^ (((0x63 >> 5) & 4) * 0x011b)) ^ ((0x63 << 1) ^ (((0x63 >> 7) & 1) * 0x011b)) ^ 0x63), (((0x64 << 3) ^ (((0x64 >> 5) & 1) * 0x011b) ^ (((0x64 >> 5) & 2) * 0x011b) ^ (((0x64 >> 5) & 4) * 0x011b)) ^ ((0x64 << 1) ^ (((0x64 >> 7) & 1) * 0x011b)) ^ 0x64), (((0x65 << 3) ^ (((0x65 >> 5) & 1) * 0x011b) ^ (((0x65 >> 5) & 2) * 0x011b) ^ (((0x65 >> 5) & 4) * 0x011b)) ^ ((0x65 << 1) ^ (((0x65 >> 7) & 1) * 0x011b)) ^ 0x65), (((0x66 << 3) ^ (((0x66 >> 5) & 1) * 0x011b) ^ (((0x66 >> 5) & 2) * 0x011b) ^ (((0x66 >> 5) & 4) * 0x011b)) ^ ((0x66 << 1) ^ (((0x66 >> 7) & 1) * 0x011b)) ^ 0x66), (((0x67 << 3) ^ (((0x67 >> 5) & 1) * 0x011b) ^ (((0x67 >> 5) & 2) * 0x011b) ^ (((0x67 >> 5) & 4) * 0x011b)) ^ ((0x67 << 1) ^ (((0x67 >> 7) & 1) * 0x011b)) ^ 0x67), (((0x68 << 3) ^ (((0x68 >> 5) & 1) * 0x011b) ^ (((0x68 >> 5) & 2) * 0x011b) ^ (((0x68 >> 5) & 4) * 0x011b)) ^ ((0x68 << 1) ^ (((0x68 >> 7) & 1) * 0x011b)) ^ 0x68), (((0x69 << 3) ^ (((0x69 >> 5) & 1) * 0x011b) ^ (((0x69 >> 5) & 2) * 0x011b) ^ (((0x69 >> 5) & 4) * 0x011b)) ^ ((0x69 << 1) ^ (((0x69 >> 7) & 1) * 0x011b)) ^ 0x69), (((0x6a << 3) ^ (((0x6a >> 5) & 1) * 0x011b) ^ (((0x6a >> 5) & 2) * 0x011b) ^ (((0x6a >> 5) & 4) * 0x011b)) ^ ((0x6a << 1) ^ (((0x6a >> 7) & 1) * 0x011b)) ^ 0x6a), (((0x6b << 3) ^ (((0x6b >> 5) & 1) * 0x011b) ^ (((0x6b >> 5) & 2) * 0x011b) ^ (((0x6b >> 5) & 4) * 0x011b)) ^ ((0x6b << 1) ^ (((0x6b >> 7) & 1) * 0x011b)) ^ 0x6b), (((0x6c << 3) ^ (((0x6c >> 5) & 1) * 0x011b) ^ (((0x6c >> 5) & 2) * 0x011b) ^ (((0x6c >> 5) & 4) * 0x011b)) ^ ((0x6c << 1) ^ (((0x6c >> 7) & 1) * 0x011b)) ^ 0x6c), (((0x6d << 3) ^ (((0x6d >> 5) & 1) * 0x011b) ^ (((0x6d >> 5) & 2) * 0x011b) ^ (((0x6d >> 5) & 4) * 0x011b)) ^ ((0x6d << 1) ^ (((0x6d >> 7) & 1) * 0x011b)) ^ 0x6d), (((0x6e << 3) ^ (((0x6e >> 5) & 1) * 0x011b) ^ (((0x6e >> 5) & 2) * 0x011b) ^ (((0x6e >> 5) & 4) * 0x011b)) ^ ((0x6e << 1) ^ (((0x6e >> 7) & 1) * 0x011b)) ^ 0x6e), (((0x6f << 3) ^ (((0x6f >> 5) & 1) * 0x011b) ^ (((0x6f >> 5) & 2) * 0x011b) ^ (((0x6f >> 5) & 4) * 0x011b)) ^ ((0x6f << 1) ^ (((0x6f >> 7) & 1) * 0x011b)) ^ 0x6f), (((0x70 << 3) ^ (((0x70 >> 5) & 1) * 0x011b) ^ (((0x70 >> 5) & 2) * 0x011b) ^ (((0x70 >> 5) & 4) * 0x011b)) ^ ((0x70 << 1) ^ (((0x70 >> 7) & 1) * 0x011b)) ^ 0x70), (((0x71 << 3) ^ (((0x71 >> 5) & 1) * 0x011b) ^ (((0x71 >> 5) & 2) * 0x011b) ^ (((0x71 >> 5) & 4) * 0x011b)) ^ ((0x71 << 1) ^ (((0x71 >> 7) & 1) * 0x011b)) ^ 0x71), (((0x72 << 3) ^ (((0x72 >> 5) & 1) * 0x011b) ^ (((0x72 >> 5) & 2) * 0x011b) ^ (((0x72 >> 5) & 4) * 0x011b)) ^ ((0x72 << 1) ^ (((0x72 >> 7) & 1) * 0x011b)) ^ 0x72), (((0x73 << 3) ^ (((0x73 >> 5) & 1) * 0x011b) ^ (((0x73 >> 5) & 2) * 0x011b) ^ (((0x73 >> 5) & 4) * 0x011b)) ^ ((0x73 << 1) ^ (((0x73 >> 7) & 1) * 0x011b)) ^ 0x73), (((0x74 << 3) ^ (((0x74 >> 5) & 1) * 0x011b) ^ (((0x74 >> 5) & 2) * 0x011b) ^ (((0x74 >> 5) & 4) * 0x011b)) ^ ((0x74 << 1) ^ (((0x74 >> 7) & 1) * 0x011b)) ^ 0x74), (((0x75 << 3) ^ (((0x75 >> 5) & 1) * 0x011b) ^ (((0x75 >> 5) & 2) * 0x011b) ^ (((0x75 >> 5) & 4) * 0x011b)) ^ ((0x75 << 1) ^ (((0x75 >> 7) & 1) * 0x011b)) ^ 0x75), (((0x76 << 3) ^ (((0x76 >> 5) & 1) * 0x011b) ^ (((0x76 >> 5) & 2) * 0x011b) ^ (((0x76 >> 5) & 4) * 0x011b)) ^ ((0x76 << 1) ^ (((0x76 >> 7) & 1) * 0x011b)) ^ 0x76), (((0x77 << 3) ^ (((0x77 >> 5) & 1) * 0x011b) ^ (((0x77 >> 5) & 2) * 0x011b) ^ (((0x77 >> 5) & 4) * 0x011b)) ^ ((0x77 << 1) ^ (((0x77 >> 7) & 1) * 0x011b)) ^ 0x77), (((0x78 << 3) ^ (((0x78 >> 5) & 1) * 0x011b) ^ (((0x78 >> 5) & 2) * 0x011b) ^ (((0x78 >> 5) & 4) * 0x011b)) ^ ((0x78 << 1) ^ (((0x78 >> 7) & 1) * 0x011b)) ^ 0x78), (((0x79 << 3) ^ (((0x79 >> 5) & 1) * 0x011b) ^ (((0x79 >> 5) & 2) * 0x011b) ^ (((0x79 >> 5) & 4) * 0x011b)) ^ ((0x79 << 1) ^ (((0x79 >> 7) & 1) * 0x011b)) ^ 0x79), (((0x7a << 3) ^ (((0x7a >> 5) & 1) * 0x011b) ^ (((0x7a >> 5) & 2) * 0x011b) ^ (((0x7a >> 5) & 4) * 0x011b)) ^ ((0x7a << 1) ^ (((0x7a >> 7) & 1) * 0x011b)) ^ 0x7a), (((0x7b << 3) ^ (((0x7b >> 5) & 1) * 0x011b) ^ (((0x7b >> 5) & 2) * 0x011b) ^ (((0x7b >> 5) & 4) * 0x011b)) ^ ((0x7b << 1) ^ (((0x7b >> 7) & 1) * 0x011b)) ^ 0x7b), (((0x7c << 3) ^ (((0x7c >> 5) & 1) * 0x011b) ^ (((0x7c >> 5) & 2) * 0x011b) ^ (((0x7c >> 5) & 4) * 0x011b)) ^ ((0x7c << 1) ^ (((0x7c >> 7) & 1) * 0x011b)) ^ 0x7c), (((0x7d << 3) ^ (((0x7d >> 5) & 1) * 0x011b) ^ (((0x7d >> 5) & 2) * 0x011b) ^ (((0x7d >> 5) & 4) * 0x011b)) ^ ((0x7d << 1) ^ (((0x7d >> 7) & 1) * 0x011b)) ^ 0x7d), (((0x7e << 3) ^ (((0x7e >> 5) & 1) * 0x011b) ^ (((0x7e >> 5) & 2) * 0x011b) ^ (((0x7e >> 5) & 4) * 0x011b)) ^ ((0x7e << 1) ^ (((0x7e >> 7) & 1) * 0x011b)) ^ 0x7e), (((0x7f << 3) ^ (((0x7f >> 5) & 1) * 0x011b) ^ (((0x7f >> 5) & 2) * 0x011b) ^ (((0x7f >> 5) & 4) * 0x011b)) ^ ((0x7f << 1) ^ (((0x7f >> 7) & 1) * 0x011b)) ^ 0x7f), (((0x80 << 3) ^ (((0x80 >> 5) & 1) * 0x011b) ^ (((0x80 >> 5) & 2) * 0x011b) ^ (((0x80 >> 5) & 4) * 0x011b)) ^ ((0x80 << 1) ^ (((0x80 >> 7) & 1) * 0x011b)) ^ 0x80), (((0x81 << 3) ^ (((0x81 >> 5) & 1) * 0x011b) ^ (((0x81 >> 5) & 2) * 0x011b) ^ (((0x81 >> 5) & 4) * 0x011b)) ^ ((0x81 << 1) ^ (((0x81 >> 7) & 1) * 0x011b)) ^ 0x81), (((0x82 << 3) ^ (((0x82 >> 5) & 1) * 0x011b) ^ (((0x82 >> 5) & 2) * 0x011b) ^ (((0x82 >> 5) & 4) * 0x011b)) ^ ((0x82 << 1) ^ (((0x82 >> 7) & 1) * 0x011b)) ^ 0x82), (((0x83 << 3) ^ (((0x83 >> 5) & 1) * 0x011b) ^ (((0x83 >> 5) & 2) * 0x011b) ^ (((0x83 >> 5) & 4) * 0x011b)) ^ ((0x83 << 1) ^ (((0x83 >> 7) & 1) * 0x011b)) ^ 0x83), (((0x84 << 3) ^ (((0x84 >> 5) & 1) * 0x011b) ^ (((0x84 >> 5) & 2) * 0x011b) ^ (((0x84 >> 5) & 4) * 0x011b)) ^ ((0x84 << 1) ^ (((0x84 >> 7) & 1) * 0x011b)) ^ 0x84), (((0x85 << 3) ^ (((0x85 >> 5) & 1) * 0x011b) ^ (((0x85 >> 5) & 2) * 0x011b) ^ (((0x85 >> 5) & 4) * 0x011b)) ^ ((0x85 << 1) ^ (((0x85 >> 7) & 1) * 0x011b)) ^ 0x85), (((0x86 << 3) ^ (((0x86 >> 5) & 1) * 0x011b) ^ (((0x86 >> 5) & 2) * 0x011b) ^ (((0x86 >> 5) & 4) * 0x011b)) ^ ((0x86 << 1) ^ (((0x86 >> 7) & 1) * 0x011b)) ^ 0x86), (((0x87 << 3) ^ (((0x87 >> 5) & 1) * 0x011b) ^ (((0x87 >> 5) & 2) * 0x011b) ^ (((0x87 >> 5) & 4) * 0x011b)) ^ ((0x87 << 1) ^ (((0x87 >> 7) & 1) * 0x011b)) ^ 0x87), (((0x88 << 3) ^ (((0x88 >> 5) & 1) * 0x011b) ^ (((0x88 >> 5) & 2) * 0x011b) ^ (((0x88 >> 5) & 4) * 0x011b)) ^ ((0x88 << 1) ^ (((0x88 >> 7) & 1) * 0x011b)) ^ 0x88), (((0x89 << 3) ^ (((0x89 >> 5) & 1) * 0x011b) ^ (((0x89 >> 5) & 2) * 0x011b) ^ (((0x89 >> 5) & 4) * 0x011b)) ^ ((0x89 << 1) ^ (((0x89 >> 7) & 1) * 0x011b)) ^ 0x89), (((0x8a << 3) ^ (((0x8a >> 5) & 1) * 0x011b) ^ (((0x8a >> 5) & 2) * 0x011b) ^ (((0x8a >> 5) & 4) * 0x011b)) ^ ((0x8a << 1) ^ (((0x8a >> 7) & 1) * 0x011b)) ^ 0x8a), (((0x8b << 3) ^ (((0x8b >> 5) & 1) * 0x011b) ^ (((0x8b >> 5) & 2) * 0x011b) ^ (((0x8b >> 5) & 4) * 0x011b)) ^ ((0x8b << 1) ^ (((0x8b >> 7) & 1) * 0x011b)) ^ 0x8b), (((0x8c << 3) ^ (((0x8c >> 5) & 1) * 0x011b) ^ (((0x8c >> 5) & 2) * 0x011b) ^ (((0x8c >> 5) & 4) * 0x011b)) ^ ((0x8c << 1) ^ (((0x8c >> 7) & 1) * 0x011b)) ^ 0x8c), (((0x8d << 3) ^ (((0x8d >> 5) & 1) * 0x011b) ^ (((0x8d >> 5) & 2) * 0x011b) ^ (((0x8d >> 5) & 4) * 0x011b)) ^ ((0x8d << 1) ^ (((0x8d >> 7) & 1) * 0x011b)) ^ 0x8d), (((0x8e << 3) ^ (((0x8e >> 5) & 1) * 0x011b) ^ (((0x8e >> 5) & 2) * 0x011b) ^ (((0x8e >> 5) & 4) * 0x011b)) ^ ((0x8e << 1) ^ (((0x8e >> 7) & 1) * 0x011b)) ^ 0x8e), (((0x8f << 3) ^ (((0x8f >> 5) & 1) * 0x011b) ^ (((0x8f >> 5) & 2) * 0x011b) ^ (((0x8f >> 5) & 4) * 0x011b)) ^ ((0x8f << 1) ^ (((0x8f >> 7) & 1) * 0x011b)) ^ 0x8f), (((0x90 << 3) ^ (((0x90 >> 5) & 1) * 0x011b) ^ (((0x90 >> 5) & 2) * 0x011b) ^ (((0x90 >> 5) & 4) * 0x011b)) ^ ((0x90 << 1) ^ (((0x90 >> 7) & 1) * 0x011b)) ^ 0x90), (((0x91 << 3) ^ (((0x91 >> 5) & 1) * 0x011b) ^ (((0x91 >> 5) & 2) * 0x011b) ^ (((0x91 >> 5) & 4) * 0x011b)) ^ ((0x91 << 1) ^ (((0x91 >> 7) & 1) * 0x011b)) ^ 0x91), (((0x92 << 3) ^ (((0x92 >> 5) & 1) * 0x011b) ^ (((0x92 >> 5) & 2) * 0x011b) ^ (((0x92 >> 5) & 4) * 0x011b)) ^ ((0x92 << 1) ^ (((0x92 >> 7) & 1) * 0x011b)) ^ 0x92), (((0x93 << 3) ^ (((0x93 >> 5) & 1) * 0x011b) ^ (((0x93 >> 5) & 2) * 0x011b) ^ (((0x93 >> 5) & 4) * 0x011b)) ^ ((0x93 << 1) ^ (((0x93 >> 7) & 1) * 0x011b)) ^ 0x93), (((0x94 << 3) ^ (((0x94 >> 5) & 1) * 0x011b) ^ (((0x94 >> 5) & 2) * 0x011b) ^ (((0x94 >> 5) & 4) * 0x011b)) ^ ((0x94 << 1) ^ (((0x94 >> 7) & 1) * 0x011b)) ^ 0x94), (((0x95 << 3) ^ (((0x95 >> 5) & 1) * 0x011b) ^ (((0x95 >> 5) & 2) * 0x011b) ^ (((0x95 >> 5) & 4) * 0x011b)) ^ ((0x95 << 1) ^ (((0x95 >> 7) & 1) * 0x011b)) ^ 0x95), (((0x96 << 3) ^ (((0x96 >> 5) & 1) * 0x011b) ^ (((0x96 >> 5) & 2) * 0x011b) ^ (((0x96 >> 5) & 4) * 0x011b)) ^ ((0x96 << 1) ^ (((0x96 >> 7) & 1) * 0x011b)) ^ 0x96), (((0x97 << 3) ^ (((0x97 >> 5) & 1) * 0x011b) ^ (((0x97 >> 5) & 2) * 0x011b) ^ (((0x97 >> 5) & 4) * 0x011b)) ^ ((0x97 << 1) ^ (((0x97 >> 7) & 1) * 0x011b)) ^ 0x97), (((0x98 << 3) ^ (((0x98 >> 5) & 1) * 0x011b) ^ (((0x98 >> 5) & 2) * 0x011b) ^ (((0x98 >> 5) & 4) * 0x011b)) ^ ((0x98 << 1) ^ (((0x98 >> 7) & 1) * 0x011b)) ^ 0x98), (((0x99 << 3) ^ (((0x99 >> 5) & 1) * 0x011b) ^ (((0x99 >> 5) & 2) * 0x011b) ^ (((0x99 >> 5) & 4) * 0x011b)) ^ ((0x99 << 1) ^ (((0x99 >> 7) & 1) * 0x011b)) ^ 0x99), (((0x9a << 3) ^ (((0x9a >> 5) & 1) * 0x011b) ^ (((0x9a >> 5) & 2) * 0x011b) ^ (((0x9a >> 5) & 4) * 0x011b)) ^ ((0x9a << 1) ^ (((0x9a >> 7) & 1) * 0x011b)) ^ 0x9a), (((0x9b << 3) ^ (((0x9b >> 5) & 1) * 0x011b) ^ (((0x9b >> 5) & 2) * 0x011b) ^ (((0x9b >> 5) & 4) * 0x011b)) ^ ((0x9b << 1) ^ (((0x9b >> 7) & 1) * 0x011b)) ^ 0x9b), (((0x9c << 3) ^ (((0x9c >> 5) & 1) * 0x011b) ^ (((0x9c >> 5) & 2) * 0x011b) ^ (((0x9c >> 5) & 4) * 0x011b)) ^ ((0x9c << 1) ^ (((0x9c >> 7) & 1) * 0x011b)) ^ 0x9c), (((0x9d << 3) ^ (((0x9d >> 5) & 1) * 0x011b) ^ (((0x9d >> 5) & 2) * 0x011b) ^ (((0x9d >> 5) & 4) * 0x011b)) ^ ((0x9d << 1) ^ (((0x9d >> 7) & 1) * 0x011b)) ^ 0x9d), (((0x9e << 3) ^ (((0x9e >> 5) & 1) * 0x011b) ^ (((0x9e >> 5) & 2) * 0x011b) ^ (((0x9e >> 5) & 4) * 0x011b)) ^ ((0x9e << 1) ^ (((0x9e >> 7) & 1) * 0x011b)) ^ 0x9e), (((0x9f << 3) ^ (((0x9f >> 5) & 1) * 0x011b) ^ (((0x9f >> 5) & 2) * 0x011b) ^ (((0x9f >> 5) & 4) * 0x011b)) ^ ((0x9f << 1) ^ (((0x9f >> 7) & 1) * 0x011b)) ^ 0x9f), (((0xa0 << 3) ^ (((0xa0 >> 5) & 1) * 0x011b) ^ (((0xa0 >> 5) & 2) * 0x011b) ^ (((0xa0 >> 5) & 4) * 0x011b)) ^ ((0xa0 << 1) ^ (((0xa0 >> 7) & 1) * 0x011b)) ^ 0xa0), (((0xa1 << 3) ^ (((0xa1 >> 5) & 1) * 0x011b) ^ (((0xa1 >> 5) & 2) * 0x011b) ^ (((0xa1 >> 5) & 4) * 0x011b)) ^ ((0xa1 << 1) ^ (((0xa1 >> 7) & 1) * 0x011b)) ^ 0xa1), (((0xa2 << 3) ^ (((0xa2 >> 5) & 1) * 0x011b) ^ (((0xa2 >> 5) & 2) * 0x011b) ^ (((0xa2 >> 5) & 4) * 0x011b)) ^ ((0xa2 << 1) ^ (((0xa2 >> 7) & 1) * 0x011b)) ^ 0xa2), (((0xa3 << 3) ^ (((0xa3 >> 5) & 1) * 0x011b) ^ (((0xa3 >> 5) & 2) * 0x011b) ^ (((0xa3 >> 5) & 4) * 0x011b)) ^ ((0xa3 << 1) ^ (((0xa3 >> 7) & 1) * 0x011b)) ^ 0xa3), (((0xa4 << 3) ^ (((0xa4 >> 5) & 1) * 0x011b) ^ (((0xa4 >> 5) & 2) * 0x011b) ^ (((0xa4 >> 5) & 4) * 0x011b)) ^ ((0xa4 << 1) ^ (((0xa4 >> 7) & 1) * 0x011b)) ^ 0xa4), (((0xa5 << 3) ^ (((0xa5 >> 5) & 1) * 0x011b) ^ (((0xa5 >> 5) & 2) * 0x011b) ^ (((0xa5 >> 5) & 4) * 0x011b)) ^ ((0xa5 << 1) ^ (((0xa5 >> 7) & 1) * 0x011b)) ^ 0xa5), (((0xa6 << 3) ^ (((0xa6 >> 5) & 1) * 0x011b) ^ (((0xa6 >> 5) & 2) * 0x011b) ^ (((0xa6 >> 5) & 4) * 0x011b)) ^ ((0xa6 << 1) ^ (((0xa6 >> 7) & 1) * 0x011b)) ^ 0xa6), (((0xa7 << 3) ^ (((0xa7 >> 5) & 1) * 0x011b) ^ (((0xa7 >> 5) & 2) * 0x011b) ^ (((0xa7 >> 5) & 4) * 0x011b)) ^ ((0xa7 << 1) ^ (((0xa7 >> 7) & 1) * 0x011b)) ^ 0xa7), (((0xa8 << 3) ^ (((0xa8 >> 5) & 1) * 0x011b) ^ (((0xa8 >> 5) & 2) * 0x011b) ^ (((0xa8 >> 5) & 4) * 0x011b)) ^ ((0xa8 << 1) ^ (((0xa8 >> 7) & 1) * 0x011b)) ^ 0xa8), (((0xa9 << 3) ^ (((0xa9 >> 5) & 1) * 0x011b) ^ (((0xa9 >> 5) & 2) * 0x011b) ^ (((0xa9 >> 5) & 4) * 0x011b)) ^ ((0xa9 << 1) ^ (((0xa9 >> 7) & 1) * 0x011b)) ^ 0xa9), (((0xaa << 3) ^ (((0xaa >> 5) & 1) * 0x011b) ^ (((0xaa >> 5) & 2) * 0x011b) ^ (((0xaa >> 5) & 4) * 0x011b)) ^ ((0xaa << 1) ^ (((0xaa >> 7) & 1) * 0x011b)) ^ 0xaa), (((0xab << 3) ^ (((0xab >> 5) & 1) * 0x011b) ^ (((0xab >> 5) & 2) * 0x011b) ^ (((0xab >> 5) & 4) * 0x011b)) ^ ((0xab << 1) ^ (((0xab >> 7) & 1) * 0x011b)) ^ 0xab), (((0xac << 3) ^ (((0xac >> 5) & 1) * 0x011b) ^ (((0xac >> 5) & 2) * 0x011b) ^ (((0xac >> 5) & 4) * 0x011b)) ^ ((0xac << 1) ^ (((0xac >> 7) & 1) * 0x011b)) ^ 0xac), (((0xad << 3) ^ (((0xad >> 5) & 1) * 0x011b) ^ (((0xad >> 5) & 2) * 0x011b) ^ (((0xad >> 5) & 4) * 0x011b)) ^ ((0xad << 1) ^ (((0xad >> 7) & 1) * 0x011b)) ^ 0xad), (((0xae << 3) ^ (((0xae >> 5) & 1) * 0x011b) ^ (((0xae >> 5) & 2) * 0x011b) ^ (((0xae >> 5) & 4) * 0x011b)) ^ ((0xae << 1) ^ (((0xae >> 7) & 1) * 0x011b)) ^ 0xae), (((0xaf << 3) ^ (((0xaf >> 5) & 1) * 0x011b) ^ (((0xaf >> 5) & 2) * 0x011b) ^ (((0xaf >> 5) & 4) * 0x011b)) ^ ((0xaf << 1) ^ (((0xaf >> 7) & 1) * 0x011b)) ^ 0xaf), (((0xb0 << 3) ^ (((0xb0 >> 5) & 1) * 0x011b) ^ (((0xb0 >> 5) & 2) * 0x011b) ^ (((0xb0 >> 5) & 4) * 0x011b)) ^ ((0xb0 << 1) ^ (((0xb0 >> 7) & 1) * 0x011b)) ^ 0xb0), (((0xb1 << 3) ^ (((0xb1 >> 5) & 1) * 0x011b) ^ (((0xb1 >> 5) & 2) * 0x011b) ^ (((0xb1 >> 5) & 4) * 0x011b)) ^ ((0xb1 << 1) ^ (((0xb1 >> 7) & 1) * 0x011b)) ^ 0xb1), (((0xb2 << 3) ^ (((0xb2 >> 5) & 1) * 0x011b) ^ (((0xb2 >> 5) & 2) * 0x011b) ^ (((0xb2 >> 5) & 4) * 0x011b)) ^ ((0xb2 << 1) ^ (((0xb2 >> 7) & 1) * 0x011b)) ^ 0xb2), (((0xb3 << 3) ^ (((0xb3 >> 5) & 1) * 0x011b) ^ (((0xb3 >> 5) & 2) * 0x011b) ^ (((0xb3 >> 5) & 4) * 0x011b)) ^ ((0xb3 << 1) ^ (((0xb3 >> 7) & 1) * 0x011b)) ^ 0xb3), (((0xb4 << 3) ^ (((0xb4 >> 5) & 1) * 0x011b) ^ (((0xb4 >> 5) & 2) * 0x011b) ^ (((0xb4 >> 5) & 4) * 0x011b)) ^ ((0xb4 << 1) ^ (((0xb4 >> 7) & 1) * 0x011b)) ^ 0xb4), (((0xb5 << 3) ^ (((0xb5 >> 5) & 1) * 0x011b) ^ (((0xb5 >> 5) & 2) * 0x011b) ^ (((0xb5 >> 5) & 4) * 0x011b)) ^ ((0xb5 << 1) ^ (((0xb5 >> 7) & 1) * 0x011b)) ^ 0xb5), (((0xb6 << 3) ^ (((0xb6 >> 5) & 1) * 0x011b) ^ (((0xb6 >> 5) & 2) * 0x011b) ^ (((0xb6 >> 5) & 4) * 0x011b)) ^ ((0xb6 << 1) ^ (((0xb6 >> 7) & 1) * 0x011b)) ^ 0xb6), (((0xb7 << 3) ^ (((0xb7 >> 5) & 1) * 0x011b) ^ (((0xb7 >> 5) & 2) * 0x011b) ^ (((0xb7 >> 5) & 4) * 0x011b)) ^ ((0xb7 << 1) ^ (((0xb7 >> 7) & 1) * 0x011b)) ^ 0xb7), (((0xb8 << 3) ^ (((0xb8 >> 5) & 1) * 0x011b) ^ (((0xb8 >> 5) & 2) * 0x011b) ^ (((0xb8 >> 5) & 4) * 0x011b)) ^ ((0xb8 << 1) ^ (((0xb8 >> 7) & 1) * 0x011b)) ^ 0xb8), (((0xb9 << 3) ^ (((0xb9 >> 5) & 1) * 0x011b) ^ (((0xb9 >> 5) & 2) * 0x011b) ^ (((0xb9 >> 5) & 4) * 0x011b)) ^ ((0xb9 << 1) ^ (((0xb9 >> 7) & 1) * 0x011b)) ^ 0xb9), (((0xba << 3) ^ (((0xba >> 5) & 1) * 0x011b) ^ (((0xba >> 5) & 2) * 0x011b) ^ (((0xba >> 5) & 4) * 0x011b)) ^ ((0xba << 1) ^ (((0xba >> 7) & 1) * 0x011b)) ^ 0xba), (((0xbb << 3) ^ (((0xbb >> 5) & 1) * 0x011b) ^ (((0xbb >> 5) & 2) * 0x011b) ^ (((0xbb >> 5) & 4) * 0x011b)) ^ ((0xbb << 1) ^ (((0xbb >> 7) & 1) * 0x011b)) ^ 0xbb), (((0xbc << 3) ^ (((0xbc >> 5) & 1) * 0x011b) ^ (((0xbc >> 5) & 2) * 0x011b) ^ (((0xbc >> 5) & 4) * 0x011b)) ^ ((0xbc << 1) ^ (((0xbc >> 7) & 1) * 0x011b)) ^ 0xbc), (((0xbd << 3) ^ (((0xbd >> 5) & 1) * 0x011b) ^ (((0xbd >> 5) & 2) * 0x011b) ^ (((0xbd >> 5) & 4) * 0x011b)) ^ ((0xbd << 1) ^ (((0xbd >> 7) & 1) * 0x011b)) ^ 0xbd), (((0xbe << 3) ^ (((0xbe >> 5) & 1) * 0x011b) ^ (((0xbe >> 5) & 2) * 0x011b) ^ (((0xbe >> 5) & 4) * 0x011b)) ^ ((0xbe << 1) ^ (((0xbe >> 7) & 1) * 0x011b)) ^ 0xbe), (((0xbf << 3) ^ (((0xbf >> 5) & 1) * 0x011b) ^ (((0xbf >> 5) & 2) * 0x011b) ^ (((0xbf >> 5) & 4) * 0x011b)) ^ ((0xbf << 1) ^ (((0xbf >> 7) & 1) * 0x011b)) ^ 0xbf), (((0xc0 << 3) ^ (((0xc0 >> 5) & 1) * 0x011b) ^ (((0xc0 >> 5) & 2) * 0x011b) ^ (((0xc0 >> 5) & 4) * 0x011b)) ^ ((0xc0 << 1) ^ (((0xc0 >> 7) & 1) * 0x011b)) ^ 0xc0), (((0xc1 << 3) ^ (((0xc1 >> 5) & 1) * 0x011b) ^ (((0xc1 >> 5) & 2) * 0x011b) ^ (((0xc1 >> 5) & 4) * 0x011b)) ^ ((0xc1 << 1) ^ (((0xc1 >> 7) & 1) * 0x011b)) ^ 0xc1), (((0xc2 << 3) ^ (((0xc2 >> 5) & 1) * 0x011b) ^ (((0xc2 >> 5) & 2) * 0x011b) ^ (((0xc2 >> 5) & 4) * 0x011b)) ^ ((0xc2 << 1) ^ (((0xc2 >> 7) & 1) * 0x011b)) ^ 0xc2), (((0xc3 << 3) ^ (((0xc3 >> 5) & 1) * 0x011b) ^ (((0xc3 >> 5) & 2) * 0x011b) ^ (((0xc3 >> 5) & 4) * 0x011b)) ^ ((0xc3 << 1) ^ (((0xc3 >> 7) & 1) * 0x011b)) ^ 0xc3), (((0xc4 << 3) ^ (((0xc4 >> 5) & 1) * 0x011b) ^ (((0xc4 >> 5) & 2) * 0x011b) ^ (((0xc4 >> 5) & 4) * 0x011b)) ^ ((0xc4 << 1) ^ (((0xc4 >> 7) & 1) * 0x011b)) ^ 0xc4), (((0xc5 << 3) ^ (((0xc5 >> 5) & 1) * 0x011b) ^ (((0xc5 >> 5) & 2) * 0x011b) ^ (((0xc5 >> 5) & 4) * 0x011b)) ^ ((0xc5 << 1) ^ (((0xc5 >> 7) & 1) * 0x011b)) ^ 0xc5), (((0xc6 << 3) ^ (((0xc6 >> 5) & 1) * 0x011b) ^ (((0xc6 >> 5) & 2) * 0x011b) ^ (((0xc6 >> 5) & 4) * 0x011b)) ^ ((0xc6 << 1) ^ (((0xc6 >> 7) & 1) * 0x011b)) ^ 0xc6), (((0xc7 << 3) ^ (((0xc7 >> 5) & 1) * 0x011b) ^ (((0xc7 >> 5) & 2) * 0x011b) ^ (((0xc7 >> 5) & 4) * 0x011b)) ^ ((0xc7 << 1) ^ (((0xc7 >> 7) & 1) * 0x011b)) ^ 0xc7), (((0xc8 << 3) ^ (((0xc8 >> 5) & 1) * 0x011b) ^ (((0xc8 >> 5) & 2) * 0x011b) ^ (((0xc8 >> 5) & 4) * 0x011b)) ^ ((0xc8 << 1) ^ (((0xc8 >> 7) & 1) * 0x011b)) ^ 0xc8), (((0xc9 << 3) ^ (((0xc9 >> 5) & 1) * 0x011b) ^ (((0xc9 >> 5) & 2) * 0x011b) ^ (((0xc9 >> 5) & 4) * 0x011b)) ^ ((0xc9 << 1) ^ (((0xc9 >> 7) & 1) * 0x011b)) ^ 0xc9), (((0xca << 3) ^ (((0xca >> 5) & 1) * 0x011b) ^ (((0xca >> 5) & 2) * 0x011b) ^ (((0xca >> 5) & 4) * 0x011b)) ^ ((0xca << 1) ^ (((0xca >> 7) & 1) * 0x011b)) ^ 0xca), (((0xcb << 3) ^ (((0xcb >> 5) & 1) * 0x011b) ^ (((0xcb >> 5) & 2) * 0x011b) ^ (((0xcb >> 5) & 4) * 0x011b)) ^ ((0xcb << 1) ^ (((0xcb >> 7) & 1) * 0x011b)) ^ 0xcb), (((0xcc << 3) ^ (((0xcc >> 5) & 1) * 0x011b) ^ (((0xcc >> 5) & 2) * 0x011b) ^ (((0xcc >> 5) & 4) * 0x011b)) ^ ((0xcc << 1) ^ (((0xcc >> 7) & 1) * 0x011b)) ^ 0xcc), (((0xcd << 3) ^ (((0xcd >> 5) & 1) * 0x011b) ^ (((0xcd >> 5) & 2) * 0x011b) ^ (((0xcd >> 5) & 4) * 0x011b)) ^ ((0xcd << 1) ^ (((0xcd >> 7) & 1) * 0x011b)) ^ 0xcd), (((0xce << 3) ^ (((0xce >> 5) & 1) * 0x011b) ^ (((0xce >> 5) & 2) * 0x011b) ^ (((0xce >> 5) & 4) * 0x011b)) ^ ((0xce << 1) ^ (((0xce >> 7) & 1) * 0x011b)) ^ 0xce), (((0xcf << 3) ^ (((0xcf >> 5) & 1) * 0x011b) ^ (((0xcf >> 5) & 2) * 0x011b) ^ (((0xcf >> 5) & 4) * 0x011b)) ^ ((0xcf << 1) ^ (((0xcf >> 7) & 1) * 0x011b)) ^ 0xcf), (((0xd0 << 3) ^ (((0xd0 >> 5) & 1) * 0x011b) ^ (((0xd0 >> 5) & 2) * 0x011b) ^ (((0xd0 >> 5) & 4) * 0x011b)) ^ ((0xd0 << 1) ^ (((0xd0 >> 7) & 1) * 0x011b)) ^ 0xd0), (((0xd1 << 3) ^ (((0xd1 >> 5) & 1) * 0x011b) ^ (((0xd1 >> 5) & 2) * 0x011b) ^ (((0xd1 >> 5) & 4) * 0x011b)) ^ ((0xd1 << 1) ^ (((0xd1 >> 7) & 1) * 0x011b)) ^ 0xd1), (((0xd2 << 3) ^ (((0xd2 >> 5) & 1) * 0x011b) ^ (((0xd2 >> 5) & 2) * 0x011b) ^ (((0xd2 >> 5) & 4) * 0x011b)) ^ ((0xd2 << 1) ^ (((0xd2 >> 7) & 1) * 0x011b)) ^ 0xd2), (((0xd3 << 3) ^ (((0xd3 >> 5) & 1) * 0x011b) ^ (((0xd3 >> 5) & 2) * 0x011b) ^ (((0xd3 >> 5) & 4) * 0x011b)) ^ ((0xd3 << 1) ^ (((0xd3 >> 7) & 1) * 0x011b)) ^ 0xd3), (((0xd4 << 3) ^ (((0xd4 >> 5) & 1) * 0x011b) ^ (((0xd4 >> 5) & 2) * 0x011b) ^ (((0xd4 >> 5) & 4) * 0x011b)) ^ ((0xd4 << 1) ^ (((0xd4 >> 7) & 1) * 0x011b)) ^ 0xd4), (((0xd5 << 3) ^ (((0xd5 >> 5) & 1) * 0x011b) ^ (((0xd5 >> 5) & 2) * 0x011b) ^ (((0xd5 >> 5) & 4) * 0x011b)) ^ ((0xd5 << 1) ^ (((0xd5 >> 7) & 1) * 0x011b)) ^ 0xd5), (((0xd6 << 3) ^ (((0xd6 >> 5) & 1) * 0x011b) ^ (((0xd6 >> 5) & 2) * 0x011b) ^ (((0xd6 >> 5) & 4) * 0x011b)) ^ ((0xd6 << 1) ^ (((0xd6 >> 7) & 1) * 0x011b)) ^ 0xd6), (((0xd7 << 3) ^ (((0xd7 >> 5) & 1) * 0x011b) ^ (((0xd7 >> 5) & 2) * 0x011b) ^ (((0xd7 >> 5) & 4) * 0x011b)) ^ ((0xd7 << 1) ^ (((0xd7 >> 7) & 1) * 0x011b)) ^ 0xd7), (((0xd8 << 3) ^ (((0xd8 >> 5) & 1) * 0x011b) ^ (((0xd8 >> 5) & 2) * 0x011b) ^ (((0xd8 >> 5) & 4) * 0x011b)) ^ ((0xd8 << 1) ^ (((0xd8 >> 7) & 1) * 0x011b)) ^ 0xd8), (((0xd9 << 3) ^ (((0xd9 >> 5) & 1) * 0x011b) ^ (((0xd9 >> 5) & 2) * 0x011b) ^ (((0xd9 >> 5) & 4) * 0x011b)) ^ ((0xd9 << 1) ^ (((0xd9 >> 7) & 1) * 0x011b)) ^ 0xd9), (((0xda << 3) ^ (((0xda >> 5) & 1) * 0x011b) ^ (((0xda >> 5) & 2) * 0x011b) ^ (((0xda >> 5) & 4) * 0x011b)) ^ ((0xda << 1) ^ (((0xda >> 7) & 1) * 0x011b)) ^ 0xda), (((0xdb << 3) ^ (((0xdb >> 5) & 1) * 0x011b) ^ (((0xdb >> 5) & 2) * 0x011b) ^ (((0xdb >> 5) & 4) * 0x011b)) ^ ((0xdb << 1) ^ (((0xdb >> 7) & 1) * 0x011b)) ^ 0xdb), (((0xdc << 3) ^ (((0xdc >> 5) & 1) * 0x011b) ^ (((0xdc >> 5) & 2) * 0x011b) ^ (((0xdc >> 5) & 4) * 0x011b)) ^ ((0xdc << 1) ^ (((0xdc >> 7) & 1) * 0x011b)) ^ 0xdc), (((0xdd << 3) ^ (((0xdd >> 5) & 1) * 0x011b) ^ (((0xdd >> 5) & 2) * 0x011b) ^ (((0xdd >> 5) & 4) * 0x011b)) ^ ((0xdd << 1) ^ (((0xdd >> 7) & 1) * 0x011b)) ^ 0xdd), (((0xde << 3) ^ (((0xde >> 5) & 1) * 0x011b) ^ (((0xde >> 5) & 2) * 0x011b) ^ (((0xde >> 5) & 4) * 0x011b)) ^ ((0xde << 1) ^ (((0xde >> 7) & 1) * 0x011b)) ^ 0xde), (((0xdf << 3) ^ (((0xdf >> 5) & 1) * 0x011b) ^ (((0xdf >> 5) & 2) * 0x011b) ^ (((0xdf >> 5) & 4) * 0x011b)) ^ ((0xdf << 1) ^ (((0xdf >> 7) & 1) * 0x011b)) ^ 0xdf), (((0xe0 << 3) ^ (((0xe0 >> 5) & 1) * 0x011b) ^ (((0xe0 >> 5) & 2) * 0x011b) ^ (((0xe0 >> 5) & 4) * 0x011b)) ^ ((0xe0 << 1) ^ (((0xe0 >> 7) & 1) * 0x011b)) ^ 0xe0), (((0xe1 << 3) ^ (((0xe1 >> 5) & 1) * 0x011b) ^ (((0xe1 >> 5) & 2) * 0x011b) ^ (((0xe1 >> 5) & 4) * 0x011b)) ^ ((0xe1 << 1) ^ (((0xe1 >> 7) & 1) * 0x011b)) ^ 0xe1), (((0xe2 << 3) ^ (((0xe2 >> 5) & 1) * 0x011b) ^ (((0xe2 >> 5) & 2) * 0x011b) ^ (((0xe2 >> 5) & 4) * 0x011b)) ^ ((0xe2 << 1) ^ (((0xe2 >> 7) & 1) * 0x011b)) ^ 0xe2), (((0xe3 << 3) ^ (((0xe3 >> 5) & 1) * 0x011b) ^ (((0xe3 >> 5) & 2) * 0x011b) ^ (((0xe3 >> 5) & 4) * 0x011b)) ^ ((0xe3 << 1) ^ (((0xe3 >> 7) & 1) * 0x011b)) ^ 0xe3), (((0xe4 << 3) ^ (((0xe4 >> 5) & 1) * 0x011b) ^ (((0xe4 >> 5) & 2) * 0x011b) ^ (((0xe4 >> 5) & 4) * 0x011b)) ^ ((0xe4 << 1) ^ (((0xe4 >> 7) & 1) * 0x011b)) ^ 0xe4), (((0xe5 << 3) ^ (((0xe5 >> 5) & 1) * 0x011b) ^ (((0xe5 >> 5) & 2) * 0x011b) ^ (((0xe5 >> 5) & 4) * 0x011b)) ^ ((0xe5 << 1) ^ (((0xe5 >> 7) & 1) * 0x011b)) ^ 0xe5), (((0xe6 << 3) ^ (((0xe6 >> 5) & 1) * 0x011b) ^ (((0xe6 >> 5) & 2) * 0x011b) ^ (((0xe6 >> 5) & 4) * 0x011b)) ^ ((0xe6 << 1) ^ (((0xe6 >> 7) & 1) * 0x011b)) ^ 0xe6), (((0xe7 << 3) ^ (((0xe7 >> 5) & 1) * 0x011b) ^ (((0xe7 >> 5) & 2) * 0x011b) ^ (((0xe7 >> 5) & 4) * 0x011b)) ^ ((0xe7 << 1) ^ (((0xe7 >> 7) & 1) * 0x011b)) ^ 0xe7), (((0xe8 << 3) ^ (((0xe8 >> 5) & 1) * 0x011b) ^ (((0xe8 >> 5) & 2) * 0x011b) ^ (((0xe8 >> 5) & 4) * 0x011b)) ^ ((0xe8 << 1) ^ (((0xe8 >> 7) & 1) * 0x011b)) ^ 0xe8), (((0xe9 << 3) ^ (((0xe9 >> 5) & 1) * 0x011b) ^ (((0xe9 >> 5) & 2) * 0x011b) ^ (((0xe9 >> 5) & 4) * 0x011b)) ^ ((0xe9 << 1) ^ (((0xe9 >> 7) & 1) * 0x011b)) ^ 0xe9), (((0xea << 3) ^ (((0xea >> 5) & 1) * 0x011b) ^ (((0xea >> 5) & 2) * 0x011b) ^ (((0xea >> 5) & 4) * 0x011b)) ^ ((0xea << 1) ^ (((0xea >> 7) & 1) * 0x011b)) ^ 0xea), (((0xeb << 3) ^ (((0xeb >> 5) & 1) * 0x011b) ^ (((0xeb >> 5) & 2) * 0x011b) ^ (((0xeb >> 5) & 4) * 0x011b)) ^ ((0xeb << 1) ^ (((0xeb >> 7) & 1) * 0x011b)) ^ 0xeb), (((0xec << 3) ^ (((0xec >> 5) & 1) * 0x011b) ^ (((0xec >> 5) & 2) * 0x011b) ^ (((0xec >> 5) & 4) * 0x011b)) ^ ((0xec << 1) ^ (((0xec >> 7) & 1) * 0x011b)) ^ 0xec), (((0xed << 3) ^ (((0xed >> 5) & 1) * 0x011b) ^ (((0xed >> 5) & 2) * 0x011b) ^ (((0xed >> 5) & 4) * 0x011b)) ^ ((0xed << 1) ^ (((0xed >> 7) & 1) * 0x011b)) ^ 0xed), (((0xee << 3) ^ (((0xee >> 5) & 1) * 0x011b) ^ (((0xee >> 5) & 2) * 0x011b) ^ (((0xee >> 5) & 4) * 0x011b)) ^ ((0xee << 1) ^ (((0xee >> 7) & 1) * 0x011b)) ^ 0xee), (((0xef << 3) ^ (((0xef >> 5) & 1) * 0x011b) ^ (((0xef >> 5) & 2) * 0x011b) ^ (((0xef >> 5) & 4) * 0x011b)) ^ ((0xef << 1) ^ (((0xef >> 7) & 1) * 0x011b)) ^ 0xef), (((0xf0 << 3) ^ (((0xf0 >> 5) & 1) * 0x011b) ^ (((0xf0 >> 5) & 2) * 0x011b) ^ (((0xf0 >> 5) & 4) * 0x011b)) ^ ((0xf0 << 1) ^ (((0xf0 >> 7) & 1) * 0x011b)) ^ 0xf0), (((0xf1 << 3) ^ (((0xf1 >> 5) & 1) * 0x011b) ^ (((0xf1 >> 5) & 2) * 0x011b) ^ (((0xf1 >> 5) & 4) * 0x011b)) ^ ((0xf1 << 1) ^ (((0xf1 >> 7) & 1) * 0x011b)) ^ 0xf1), (((0xf2 << 3) ^ (((0xf2 >> 5) & 1) * 0x011b) ^ (((0xf2 >> 5) & 2) * 0x011b) ^ (((0xf2 >> 5) & 4) * 0x011b)) ^ ((0xf2 << 1) ^ (((0xf2 >> 7) & 1) * 0x011b)) ^ 0xf2), (((0xf3 << 3) ^ (((0xf3 >> 5) & 1) * 0x011b) ^ (((0xf3 >> 5) & 2) * 0x011b) ^ (((0xf3 >> 5) & 4) * 0x011b)) ^ ((0xf3 << 1) ^ (((0xf3 >> 7) & 1) * 0x011b)) ^ 0xf3), (((0xf4 << 3) ^ (((0xf4 >> 5) & 1) * 0x011b) ^ (((0xf4 >> 5) & 2) * 0x011b) ^ (((0xf4 >> 5) & 4) * 0x011b)) ^ ((0xf4 << 1) ^ (((0xf4 >> 7) & 1) * 0x011b)) ^ 0xf4), (((0xf5 << 3) ^ (((0xf5 >> 5) & 1) * 0x011b) ^ (((0xf5 >> 5) & 2) * 0x011b) ^ (((0xf5 >> 5) & 4) * 0x011b)) ^ ((0xf5 << 1) ^ (((0xf5 >> 7) & 1) * 0x011b)) ^ 0xf5), (((0xf6 << 3) ^ (((0xf6 >> 5) & 1) * 0x011b) ^ (((0xf6 >> 5) & 2) * 0x011b) ^ (((0xf6 >> 5) & 4) * 0x011b)) ^ ((0xf6 << 1) ^ (((0xf6 >> 7) & 1) * 0x011b)) ^ 0xf6), (((0xf7 << 3) ^ (((0xf7 >> 5) & 1) * 0x011b) ^ (((0xf7 >> 5) & 2) * 0x011b) ^ (((0xf7 >> 5) & 4) * 0x011b)) ^ ((0xf7 << 1) ^ (((0xf7 >> 7) & 1) * 0x011b)) ^ 0xf7), (((0xf8 << 3) ^ (((0xf8 >> 5) & 1) * 0x011b) ^ (((0xf8 >> 5) & 2) * 0x011b) ^ (((0xf8 >> 5) & 4) * 0x011b)) ^ ((0xf8 << 1) ^ (((0xf8 >> 7) & 1) * 0x011b)) ^ 0xf8), (((0xf9 << 3) ^ (((0xf9 >> 5) & 1) * 0x011b) ^ (((0xf9 >> 5) & 2) * 0x011b) ^ (((0xf9 >> 5) & 4) * 0x011b)) ^ ((0xf9 << 1) ^ (((0xf9 >> 7) & 1) * 0x011b)) ^ 0xf9), (((0xfa << 3) ^ (((0xfa >> 5) & 1) * 0x011b) ^ (((0xfa >> 5) & 2) * 0x011b) ^ (((0xfa >> 5) & 4) * 0x011b)) ^ ((0xfa << 1) ^ (((0xfa >> 7) & 1) * 0x011b)) ^ 0xfa), (((0xfb << 3) ^ (((0xfb >> 5) & 1) * 0x011b) ^ (((0xfb >> 5) & 2) * 0x011b) ^ (((0xfb >> 5) & 4) * 0x011b)) ^ ((0xfb << 1) ^ (((0xfb >> 7) & 1) * 0x011b)) ^ 0xfb), (((0xfc << 3) ^ (((0xfc >> 5) & 1) * 0x011b) ^ (((0xfc >> 5) & 2) * 0x011b) ^ (((0xfc >> 5) & 4) * 0x011b)) ^ ((0xfc << 1) ^ (((0xfc >> 7) & 1) * 0x011b)) ^ 0xfc), (((0xfd << 3) ^ (((0xfd >> 5) & 1) * 0x011b) ^ (((0xfd >> 5) & 2) * 0x011b) ^ (((0xfd >> 5) & 4) * 0x011b)) ^ ((0xfd << 1) ^ (((0xfd >> 7) & 1) * 0x011b)) ^ 0xfd), (((0xfe << 3) ^ (((0xfe >> 5) & 1) * 0x011b) ^ (((0xfe >> 5) & 2) * 0x011b) ^ (((0xfe >> 5) & 4) * 0x011b)) ^ ((0xfe << 1) ^ (((0xfe >> 7) & 1) * 0x011b)) ^ 0xfe), (((0xff << 3) ^ (((0xff >> 5) & 1) * 0x011b) ^ (((0xff >> 5) & 2) * 0x011b) ^ (((0xff >> 5) & 4) * 0x011b)) ^ ((0xff << 1) ^ (((0xff >> 7) & 1) * 0x011b)) ^ 0xff) };
static const uint_8t gfmul_d[256] = { (((0x00 << 3) ^ (((0x00 >> 5) & 1) * 0x011b) ^ (((0x00 >> 5) & 2) * 0x011b) ^ (((0x00 >> 5) & 4) * 0x011b)) ^ ((0x00 << 2) ^ (((0x00 >> 6) & 1) * 0x011b) ^ (((0x00 >> 6) & 2) * 0x011b)) ^ 0x00), (((0x01 << 3) ^ (((0x01 >> 5) & 1) * 0x011b) ^ (((0x01 >> 5) & 2) * 0x011b) ^ (((0x01 >> 5) & 4) * 0x011b)) ^ ((0x01 << 2) ^ (((0x01 >> 6) & 1) * 0x011b) ^ (((0x01 >> 6) & 2) * 0x011b)) ^ 0x01), (((0x02 << 3) ^ (((0x02 >> 5) & 1) * 0x011b) ^ (((0x02 >> 5) & 2) * 0x011b) ^ (((0x02 >> 5) & 4) * 0x011b)) ^ ((0x02 << 2) ^ (((0x02 >> 6) & 1) * 0x011b) ^ (((0x02 >> 6) & 2) * 0x011b)) ^ 0x02), (((0x03 << 3) ^ (((0x03 >> 5) & 1) * 0x011b) ^ (((0x03 >> 5) & 2) * 0x011b) ^ (((0x03 >> 5) & 4) * 0x011b)) ^ ((0x03 << 2) ^ (((0x03 >> 6) & 1) * 0x011b) ^ (((0x03 >> 6) & 2) * 0x011b)) ^ 0x03), (((0x04 << 3) ^ (((0x04 >> 5) & 1) * 0x011b) ^ (((0x04 >> 5) & 2) * 0x011b) ^ (((0x04 >> 5) & 4) * 0x011b)) ^ ((0x04 << 2) ^ (((0x04 >> 6) & 1) * 0x011b) ^ (((0x04 >> 6) & 2) * 0x011b)) ^ 0x04), (((0x05 << 3) ^ (((0x05 >> 5) & 1) * 0x011b) ^ (((0x05 >> 5) & 2) * 0x011b) ^ (((0x05 >> 5) & 4) * 0x011b)) ^ ((0x05 << 2) ^ (((0x05 >> 6) & 1) * 0x011b) ^ (((0x05 >> 6) & 2) * 0x011b)) ^ 0x05), (((0x06 << 3) ^ (((0x06 >> 5) & 1) * 0x011b) ^ (((0x06 >> 5) & 2) * 0x011b) ^ (((0x06 >> 5) & 4) * 0x011b)) ^ ((0x06 << 2) ^ (((0x06 >> 6) & 1) * 0x011b) ^ (((0x06 >> 6) & 2) * 0x011b)) ^ 0x06), (((0x07 << 3) ^ (((0x07 >> 5) & 1) * 0x011b) ^ (((0x07 >> 5) & 2) * 0x011b) ^ (((0x07 >> 5) & 4) * 0x011b)) ^ ((0x07 << 2) ^ (((0x07 >> 6) & 1) * 0x011b) ^ (((0x07 >> 6) & 2) * 0x011b)) ^ 0x07), (((0x08 << 3) ^ (((0x08 >> 5) & 1) * 0x011b) ^ (((0x08 >> 5) & 2) * 0x011b) ^ (((0x08 >> 5) & 4) * 0x011b)) ^ ((0x08 << 2) ^ (((0x08 >> 6) & 1) * 0x011b) ^ (((0x08 >> 6) & 2) * 0x011b)) ^ 0x08), (((0x09 << 3) ^ (((0x09 >> 5) & 1) * 0x011b) ^ (((0x09 >> 5) & 2) * 0x011b) ^ (((0x09 >> 5) & 4) * 0x011b)) ^ ((0x09 << 2) ^ (((0x09 >> 6) & 1) * 0x011b) ^ (((0x09 >> 6) & 2) * 0x011b)) ^ 0x09), (((0x0a << 3) ^ (((0x0a >> 5) & 1) * 0x011b) ^ (((0x0a >> 5) & 2) * 0x011b) ^ (((0x0a >> 5) & 4) * 0x011b)) ^ ((0x0a << 2) ^ (((0x0a >> 6) & 1) * 0x011b) ^ (((0x0a >> 6) & 2) * 0x011b)) ^ 0x0a), (((0x0b << 3) ^ (((0x0b >> 5) & 1) * 0x011b) ^ (((0x0b >> 5) & 2) * 0x011b) ^ (((0x0b >> 5) & 4) * 0x011b)) ^ ((0x0b << 2) ^ (((0x0b >> 6) & 1) * 0x011b) ^ (((0x0b >> 6) & 2) * 0x011b)) ^ 0x0b), (((0x0c << 3) ^ (((0x0c >> 5) & 1) * 0x011b) ^ (((0x0c >> 5) & 2) * 0x011b) ^ (((0x0c >> 5) & 4) * 0x011b)) ^ ((0x0c << 2) ^ (((0x0c >> 6) & 1) * 0x011b) ^ (((0x0c >> 6) & 2) * 0x011b)) ^ 0x0c), (((0x0d << 3) ^ (((0x0d >> 5) & 1) * 0x011b) ^ (((0x0d >> 5) & 2) * 0x011b) ^ (((0x0d >> 5) & 4) * 0x011b)) ^ ((0x0d << 2) ^ (((0x0d >> 6) & 1) * 0x011b) ^ (((0x0d >> 6) & 2) * 0x011b)) ^ 0x0d), (((0x0e << 3) ^ (((0x0e >> 5) & 1) * 0x011b) ^ (((0x0e >> 5) & 2) * 0x011b) ^ (((0x0e >> 5) & 4) * 0x011b)) ^ ((0x0e << 2) ^ (((0x0e >> 6) & 1) * 0x011b) ^ (((0x0e >> 6) & 2) * 0x011b)) ^ 0x0e), (((0x0f << 3) ^ (((0x0f >> 5) & 1) * 0x011b) ^ (((0x0f >> 5) & 2) * 0x011b) ^ (((0x0f >> 5) & 4) * 0x011b)) ^ ((0x0f << 2) ^ (((0x0f >> 6) & 1) * 0x011b) ^ (((0x0f >> 6) & 2) * 0x011b)) ^ 0x0f), (((0x10 << 3) ^ (((0x10 >> 5) & 1) * 0x011b) ^ (((0x10 >> 5) & 2) * 0x011b) ^ (((0x10 >> 5) & 4) * 0x011b)) ^ ((0x10 << 2) ^ (((0x10 >> 6) & 1) * 0x011b) ^ (((0x10 >> 6) & 2) * 0x011b)) ^ 0x10), (((0x11 << 3) ^ (((0x11 >> 5) & 1) * 0x011b) ^ (((0x11 >> 5) & 2) * 0x011b) ^ (((0x11 >> 5) & 4) * 0x011b)) ^ ((0x11 << 2) ^ (((0x11 >> 6) & 1) * 0x011b) ^ (((0x11 >> 6) & 2) * 0x011b)) ^ 0x11), (((0x12 << 3) ^ (((0x12 >> 5) & 1) * 0x011b) ^ (((0x12 >> 5) & 2) * 0x011b) ^ (((0x12 >> 5) & 4) * 0x011b)) ^ ((0x12 << 2) ^ (((0x12 >> 6) & 1) * 0x011b) ^ (((0x12 >> 6) & 2) * 0x011b)) ^ 0x12), (((0x13 << 3) ^ (((0x13 >> 5) & 1) * 0x011b) ^ (((0x13 >> 5) & 2) * 0x011b) ^ (((0x13 >> 5) & 4) * 0x011b)) ^ ((0x13 << 2) ^ (((0x13 >> 6) & 1) * 0x011b) ^ (((0x13 >> 6) & 2) * 0x011b)) ^ 0x13), (((0x14 << 3) ^ (((0x14 >> 5) & 1) * 0x011b) ^ (((0x14 >> 5) & 2) * 0x011b) ^ (((0x14 >> 5) & 4) * 0x011b)) ^ ((0x14 << 2) ^ (((0x14 >> 6) & 1) * 0x011b) ^ (((0x14 >> 6) & 2) * 0x011b)) ^ 0x14), (((0x15 << 3) ^ (((0x15 >> 5) & 1) * 0x011b) ^ (((0x15 >> 5) & 2) * 0x011b) ^ (((0x15 >> 5) & 4) * 0x011b)) ^ ((0x15 << 2) ^ (((0x15 >> 6) & 1) * 0x011b) ^ (((0x15 >> 6) & 2) * 0x011b)) ^ 0x15), (((0x16 << 3) ^ (((0x16 >> 5) & 1) * 0x011b) ^ (((0x16 >> 5) & 2) * 0x011b) ^ (((0x16 >> 5) & 4) * 0x011b)) ^ ((0x16 << 2) ^ (((0x16 >> 6) & 1) * 0x011b) ^ (((0x16 >> 6) & 2) * 0x011b)) ^ 0x16), (((0x17 << 3) ^ (((0x17 >> 5) & 1) * 0x011b) ^ (((0x17 >> 5) & 2) * 0x011b) ^ (((0x17 >> 5) & 4) * 0x011b)) ^ ((0x17 << 2) ^ (((0x17 >> 6) & 1) * 0x011b) ^ (((0x17 >> 6) & 2) * 0x011b)) ^ 0x17), (((0x18 << 3) ^ (((0x18 >> 5) & 1) * 0x011b) ^ (((0x18 >> 5) & 2) * 0x011b) ^ (((0x18 >> 5) & 4) * 0x011b)) ^ ((0x18 << 2) ^ (((0x18 >> 6) & 1) * 0x011b) ^ (((0x18 >> 6) & 2) * 0x011b)) ^ 0x18), (((0x19 << 3) ^ (((0x19 >> 5) & 1) * 0x011b) ^ (((0x19 >> 5) & 2) * 0x011b) ^ (((0x19 >> 5) & 4) * 0x011b)) ^ ((0x19 << 2) ^ (((0x19 >> 6) & 1) * 0x011b) ^ (((0x19 >> 6) & 2) * 0x011b)) ^ 0x19), (((0x1a << 3) ^ (((0x1a >> 5) & 1) * 0x011b) ^ (((0x1a >> 5) & 2) * 0x011b) ^ (((0x1a >> 5) & 4) * 0x011b)) ^ ((0x1a << 2) ^ (((0x1a >> 6) & 1) * 0x011b) ^ (((0x1a >> 6) & 2) * 0x011b)) ^ 0x1a), (((0x1b << 3) ^ (((0x1b >> 5) & 1) * 0x011b) ^ (((0x1b >> 5) & 2) * 0x011b) ^ (((0x1b >> 5) & 4) * 0x011b)) ^ ((0x1b << 2) ^ (((0x1b >> 6) & 1) * 0x011b) ^ (((0x1b >> 6) & 2) * 0x011b)) ^ 0x1b), (((0x1c << 3) ^ (((0x1c >> 5) & 1) * 0x011b) ^ (((0x1c >> 5) & 2) * 0x011b) ^ (((0x1c >> 5) & 4) * 0x011b)) ^ ((0x1c << 2) ^ (((0x1c >> 6) & 1) * 0x011b) ^ (((0x1c >> 6) & 2) * 0x011b)) ^ 0x1c), (((0x1d << 3) ^ (((0x1d >> 5) & 1) * 0x011b) ^ (((0x1d >> 5) & 2) * 0x011b) ^ (((0x1d >> 5) & 4) * 0x011b)) ^ ((0x1d << 2) ^ (((0x1d >> 6) & 1) * 0x011b) ^ (((0x1d >> 6) & 2) * 0x011b)) ^ 0x1d), (((0x1e << 3) ^ (((0x1e >> 5) & 1) * 0x011b) ^ (((0x1e >> 5) & 2) * 0x011b) ^ (((0x1e >> 5) & 4) * 0x011b)) ^ ((0x1e << 2) ^ (((0x1e >> 6) & 1) * 0x011b) ^ (((0x1e >> 6) & 2) * 0x011b)) ^ 0x1e), (((0x1f << 3) ^ (((0x1f >> 5) & 1) * 0x011b) ^ (((0x1f >> 5) & 2) * 0x011b) ^ (((0x1f >> 5) & 4) * 0x011b)) ^ ((0x1f << 2) ^ (((0x1f >> 6) & 1) * 0x011b) ^ (((0x1f >> 6) & 2) * 0x011b)) ^ 0x1f), (((0x20 << 3) ^ (((0x20 >> 5) & 1) * 0x011b) ^ (((0x20 >> 5) & 2) * 0x011b) ^ (((0x20 >> 5) & 4) * 0x011b)) ^ ((0x20 << 2) ^ (((0x20 >> 6) & 1) * 0x011b) ^ (((0x20 >> 6) & 2) * 0x011b)) ^ 0x20), (((0x21 << 3) ^ (((0x21 >> 5) & 1) * 0x011b) ^ (((0x21 >> 5) & 2) * 0x011b) ^ (((0x21 >> 5) & 4) * 0x011b)) ^ ((0x21 << 2) ^ (((0x21 >> 6) & 1) * 0x011b) ^ (((0x21 >> 6) & 2) * 0x011b)) ^ 0x21), (((0x22 << 3) ^ (((0x22 >> 5) & 1) * 0x011b) ^ (((0x22 >> 5) & 2) * 0x011b) ^ (((0x22 >> 5) & 4) * 0x011b)) ^ ((0x22 << 2) ^ (((0x22 >> 6) & 1) * 0x011b) ^ (((0x22 >> 6) & 2) * 0x011b)) ^ 0x22), (((0x23 << 3) ^ (((0x23 >> 5) & 1) * 0x011b) ^ (((0x23 >> 5) & 2) * 0x011b) ^ (((0x23 >> 5) & 4) * 0x011b)) ^ ((0x23 << 2) ^ (((0x23 >> 6) & 1) * 0x011b) ^ (((0x23 >> 6) & 2) * 0x011b)) ^ 0x23), (((0x24 << 3) ^ (((0x24 >> 5) & 1) * 0x011b) ^ (((0x24 >> 5) & 2) * 0x011b) ^ (((0x24 >> 5) & 4) * 0x011b)) ^ ((0x24 << 2) ^ (((0x24 >> 6) & 1) * 0x011b) ^ (((0x24 >> 6) & 2) * 0x011b)) ^ 0x24), (((0x25 << 3) ^ (((0x25 >> 5) & 1) * 0x011b) ^ (((0x25 >> 5) & 2) * 0x011b) ^ (((0x25 >> 5) & 4) * 0x011b)) ^ ((0x25 << 2) ^ (((0x25 >> 6) & 1) * 0x011b) ^ (((0x25 >> 6) & 2) * 0x011b)) ^ 0x25), (((0x26 << 3) ^ (((0x26 >> 5) & 1) * 0x011b) ^ (((0x26 >> 5) & 2) * 0x011b) ^ (((0x26 >> 5) & 4) * 0x011b)) ^ ((0x26 << 2) ^ (((0x26 >> 6) & 1) * 0x011b) ^ (((0x26 >> 6) & 2) * 0x011b)) ^ 0x26), (((0x27 << 3) ^ (((0x27 >> 5) & 1) * 0x011b) ^ (((0x27 >> 5) & 2) * 0x011b) ^ (((0x27 >> 5) & 4) * 0x011b)) ^ ((0x27 << 2) ^ (((0x27 >> 6) & 1) * 0x011b) ^ (((0x27 >> 6) & 2) * 0x011b)) ^ 0x27), (((0x28 << 3) ^ (((0x28 >> 5) & 1) * 0x011b) ^ (((0x28 >> 5) & 2) * 0x011b) ^ (((0x28 >> 5) & 4) * 0x011b)) ^ ((0x28 << 2) ^ (((0x28 >> 6) & 1) * 0x011b) ^ (((0x28 >> 6) & 2) * 0x011b)) ^ 0x28), (((0x29 << 3) ^ (((0x29 >> 5) & 1) * 0x011b) ^ (((0x29 >> 5) & 2) * 0x011b) ^ (((0x29 >> 5) & 4) * 0x011b)) ^ ((0x29 << 2) ^ (((0x29 >> 6) & 1) * 0x011b) ^ (((0x29 >> 6) & 2) * 0x011b)) ^ 0x29), (((0x2a << 3) ^ (((0x2a >> 5) & 1) * 0x011b) ^ (((0x2a >> 5) & 2) * 0x011b) ^ (((0x2a >> 5) & 4) * 0x011b)) ^ ((0x2a << 2) ^ (((0x2a >> 6) & 1) * 0x011b) ^ (((0x2a >> 6) & 2) * 0x011b)) ^ 0x2a), (((0x2b << 3) ^ (((0x2b >> 5) & 1) * 0x011b) ^ (((0x2b >> 5) & 2) * 0x011b) ^ (((0x2b >> 5) & 4) * 0x011b)) ^ ((0x2b << 2) ^ (((0x2b >> 6) & 1) * 0x011b) ^ (((0x2b >> 6) & 2) * 0x011b)) ^ 0x2b), (((0x2c << 3) ^ (((0x2c >> 5) & 1) * 0x011b) ^ (((0x2c >> 5) & 2) * 0x011b) ^ (((0x2c >> 5) & 4) * 0x011b)) ^ ((0x2c << 2) ^ (((0x2c >> 6) & 1) * 0x011b) ^ (((0x2c >> 6) & 2) * 0x011b)) ^ 0x2c), (((0x2d << 3) ^ (((0x2d >> 5) & 1) * 0x011b) ^ (((0x2d >> 5) & 2) * 0x011b) ^ (((0x2d >> 5) & 4) * 0x011b)) ^ ((0x2d << 2) ^ (((0x2d >> 6) & 1) * 0x011b) ^ (((0x2d >> 6) & 2) * 0x011b)) ^ 0x2d), (((0x2e << 3) ^ (((0x2e >> 5) & 1) * 0x011b) ^ (((0x2e >> 5) & 2) * 0x011b) ^ (((0x2e >> 5) & 4) * 0x011b)) ^ ((0x2e << 2) ^ (((0x2e >> 6) & 1) * 0x011b) ^ (((0x2e >> 6) & 2) * 0x011b)) ^ 0x2e), (((0x2f << 3) ^ (((0x2f >> 5) & 1) * 0x011b) ^ (((0x2f >> 5) & 2) * 0x011b) ^ (((0x2f >> 5) & 4) * 0x011b)) ^ ((0x2f << 2) ^ (((0x2f >> 6) & 1) * 0x011b) ^ (((0x2f >> 6) & 2) * 0x011b)) ^ 0x2f), (((0x30 << 3) ^ (((0x30 >> 5) & 1) * 0x011b) ^ (((0x30 >> 5) & 2) * 0x011b) ^ (((0x30 >> 5) & 4) * 0x011b)) ^ ((0x30 << 2) ^ (((0x30 >> 6) & 1) * 0x011b) ^ (((0x30 >> 6) & 2) * 0x011b)) ^ 0x30), (((0x31 << 3) ^ (((0x31 >> 5) & 1) * 0x011b) ^ (((0x31 >> 5) & 2) * 0x011b) ^ (((0x31 >> 5) & 4) * 0x011b)) ^ ((0x31 << 2) ^ (((0x31 >> 6) & 1) * 0x011b) ^ (((0x31 >> 6) & 2) * 0x011b)) ^ 0x31), (((0x32 << 3) ^ (((0x32 >> 5) & 1) * 0x011b) ^ (((0x32 >> 5) & 2) * 0x011b) ^ (((0x32 >> 5) & 4) * 0x011b)) ^ ((0x32 << 2) ^ (((0x32 >> 6) & 1) * 0x011b) ^ (((0x32 >> 6) & 2) * 0x011b)) ^ 0x32), (((0x33 << 3) ^ (((0x33 >> 5) & 1) * 0x011b) ^ (((0x33 >> 5) & 2) * 0x011b) ^ (((0x33 >> 5) & 4) * 0x011b)) ^ ((0x33 << 2) ^ (((0x33 >> 6) & 1) * 0x011b) ^ (((0x33 >> 6) & 2) * 0x011b)) ^ 0x33), (((0x34 << 3) ^ (((0x34 >> 5) & 1) * 0x011b) ^ (((0x34 >> 5) & 2) * 0x011b) ^ (((0x34 >> 5) & 4) * 0x011b)) ^ ((0x34 << 2) ^ (((0x34 >> 6) & 1) * 0x011b) ^ (((0x34 >> 6) & 2) * 0x011b)) ^ 0x34), (((0x35 << 3) ^ (((0x35 >> 5) & 1) * 0x011b) ^ (((0x35 >> 5) & 2) * 0x011b) ^ (((0x35 >> 5) & 4) * 0x011b)) ^ ((0x35 << 2) ^ (((0x35 >> 6) & 1) * 0x011b) ^ (((0x35 >> 6) & 2) * 0x011b)) ^ 0x35), (((0x36 << 3) ^ (((0x36 >> 5) & 1) * 0x011b) ^ (((0x36 >> 5) & 2) * 0x011b) ^ (((0x36 >> 5) & 4) * 0x011b)) ^ ((0x36 << 2) ^ (((0x36 >> 6) & 1) * 0x011b) ^ (((0x36 >> 6) & 2) * 0x011b)) ^ 0x36), (((0x37 << 3) ^ (((0x37 >> 5) & 1) * 0x011b) ^ (((0x37 >> 5) & 2) * 0x011b) ^ (((0x37 >> 5) & 4) * 0x011b)) ^ ((0x37 << 2) ^ (((0x37 >> 6) & 1) * 0x011b) ^ (((0x37 >> 6) & 2) * 0x011b)) ^ 0x37), (((0x38 << 3) ^ (((0x38 >> 5) & 1) * 0x011b) ^ (((0x38 >> 5) & 2) * 0x011b) ^ (((0x38 >> 5) & 4) * 0x011b)) ^ ((0x38 << 2) ^ (((0x38 >> 6) & 1) * 0x011b) ^ (((0x38 >> 6) & 2) * 0x011b)) ^ 0x38), (((0x39 << 3) ^ (((0x39 >> 5) & 1) * 0x011b) ^ (((0x39 >> 5) & 2) * 0x011b) ^ (((0x39 >> 5) & 4) * 0x011b)) ^ ((0x39 << 2) ^ (((0x39 >> 6) & 1) * 0x011b) ^ (((0x39 >> 6) & 2) * 0x011b)) ^ 0x39), (((0x3a << 3) ^ (((0x3a >> 5) & 1) * 0x011b) ^ (((0x3a >> 5) & 2) * 0x011b) ^ (((0x3a >> 5) & 4) * 0x011b)) ^ ((0x3a << 2) ^ (((0x3a >> 6) & 1) * 0x011b) ^ (((0x3a >> 6) & 2) * 0x011b)) ^ 0x3a), (((0x3b << 3) ^ (((0x3b >> 5) & 1) * 0x011b) ^ (((0x3b >> 5) & 2) * 0x011b) ^ (((0x3b >> 5) & 4) * 0x011b)) ^ ((0x3b << 2) ^ (((0x3b >> 6) & 1) * 0x011b) ^ (((0x3b >> 6) & 2) * 0x011b)) ^ 0x3b), (((0x3c << 3) ^ (((0x3c >> 5) & 1) * 0x011b) ^ (((0x3c >> 5) & 2) * 0x011b) ^ (((0x3c >> 5) & 4) * 0x011b)) ^ ((0x3c << 2) ^ (((0x3c >> 6) & 1) * 0x011b) ^ (((0x3c >> 6) & 2) * 0x011b)) ^ 0x3c), (((0x3d << 3) ^ (((0x3d >> 5) & 1) * 0x011b) ^ (((0x3d >> 5) & 2) * 0x011b) ^ (((0x3d >> 5) & 4) * 0x011b)) ^ ((0x3d << 2) ^ (((0x3d >> 6) & 1) * 0x011b) ^ (((0x3d >> 6) & 2) * 0x011b)) ^ 0x3d), (((0x3e << 3) ^ (((0x3e >> 5) & 1) * 0x011b) ^ (((0x3e >> 5) & 2) * 0x011b) ^ (((0x3e >> 5) & 4) * 0x011b)) ^ ((0x3e << 2) ^ (((0x3e >> 6) & 1) * 0x011b) ^ (((0x3e >> 6) & 2) * 0x011b)) ^ 0x3e), (((0x3f << 3) ^ (((0x3f >> 5) & 1) * 0x011b) ^ (((0x3f >> 5) & 2) * 0x011b) ^ (((0x3f >> 5) & 4) * 0x011b)) ^ ((0x3f << 2) ^ (((0x3f >> 6) & 1) * 0x011b) ^ (((0x3f >> 6) & 2) * 0x011b)) ^ 0x3f), (((0x40 << 3) ^ (((0x40 >> 5) & 1) * 0x011b) ^ (((0x40 >> 5) & 2) * 0x011b) ^ (((0x40 >> 5) & 4) * 0x011b)) ^ ((0x40 << 2) ^ (((0x40 >> 6) & 1) * 0x011b) ^ (((0x40 >> 6) & 2) * 0x011b)) ^ 0x40), (((0x41 << 3) ^ (((0x41 >> 5) & 1) * 0x011b) ^ (((0x41 >> 5) & 2) * 0x011b) ^ (((0x41 >> 5) & 4) * 0x011b)) ^ ((0x41 << 2) ^ (((0x41 >> 6) & 1) * 0x011b) ^ (((0x41 >> 6) & 2) * 0x011b)) ^ 0x41), (((0x42 << 3) ^ (((0x42 >> 5) & 1) * 0x011b) ^ (((0x42 >> 5) & 2) * 0x011b) ^ (((0x42 >> 5) & 4) * 0x011b)) ^ ((0x42 << 2) ^ (((0x42 >> 6) & 1) * 0x011b) ^ (((0x42 >> 6) & 2) * 0x011b)) ^ 0x42), (((0x43 << 3) ^ (((0x43 >> 5) & 1) * 0x011b) ^ (((0x43 >> 5) & 2) * 0x011b) ^ (((0x43 >> 5) & 4) * 0x011b)) ^ ((0x43 << 2) ^ (((0x43 >> 6) & 1) * 0x011b) ^ (((0x43 >> 6) & 2) * 0x011b)) ^ 0x43), (((0x44 << 3) ^ (((0x44 >> 5) & 1) * 0x011b) ^ (((0x44 >> 5) & 2) * 0x011b) ^ (((0x44 >> 5) & 4) * 0x011b)) ^ ((0x44 << 2) ^ (((0x44 >> 6) & 1) * 0x011b) ^ (((0x44 >> 6) & 2) * 0x011b)) ^ 0x44), (((0x45 << 3) ^ (((0x45 >> 5) & 1) * 0x011b) ^ (((0x45 >> 5) & 2) * 0x011b) ^ (((0x45 >> 5) & 4) * 0x011b)) ^ ((0x45 << 2) ^ (((0x45 >> 6) & 1) * 0x011b) ^ (((0x45 >> 6) & 2) * 0x011b)) ^ 0x45), (((0x46 << 3) ^ (((0x46 >> 5) & 1) * 0x011b) ^ (((0x46 >> 5) & 2) * 0x011b) ^ (((0x46 >> 5) & 4) * 0x011b)) ^ ((0x46 << 2) ^ (((0x46 >> 6) & 1) * 0x011b) ^ (((0x46 >> 6) & 2) * 0x011b)) ^ 0x46), (((0x47 << 3) ^ (((0x47 >> 5) & 1) * 0x011b) ^ (((0x47 >> 5) & 2) * 0x011b) ^ (((0x47 >> 5) & 4) * 0x011b)) ^ ((0x47 << 2) ^ (((0x47 >> 6) & 1) * 0x011b) ^ (((0x47 >> 6) & 2) * 0x011b)) ^ 0x47), (((0x48 << 3) ^ (((0x48 >> 5) & 1) * 0x011b) ^ (((0x48 >> 5) & 2) * 0x011b) ^ (((0x48 >> 5) & 4) * 0x011b)) ^ ((0x48 << 2) ^ (((0x48 >> 6) & 1) * 0x011b) ^ (((0x48 >> 6) & 2) * 0x011b)) ^ 0x48), (((0x49 << 3) ^ (((0x49 >> 5) & 1) * 0x011b) ^ (((0x49 >> 5) & 2) * 0x011b) ^ (((0x49 >> 5) & 4) * 0x011b)) ^ ((0x49 << 2) ^ (((0x49 >> 6) & 1) * 0x011b) ^ (((0x49 >> 6) & 2) * 0x011b)) ^ 0x49), (((0x4a << 3) ^ (((0x4a >> 5) & 1) * 0x011b) ^ (((0x4a >> 5) & 2) * 0x011b) ^ (((0x4a >> 5) & 4) * 0x011b)) ^ ((0x4a << 2) ^ (((0x4a >> 6) & 1) * 0x011b) ^ (((0x4a >> 6) & 2) * 0x011b)) ^ 0x4a), (((0x4b << 3) ^ (((0x4b >> 5) & 1) * 0x011b) ^ (((0x4b >> 5) & 2) * 0x011b) ^ (((0x4b >> 5) & 4) * 0x011b)) ^ ((0x4b << 2) ^ (((0x4b >> 6) & 1) * 0x011b) ^ (((0x4b >> 6) & 2) * 0x011b)) ^ 0x4b), (((0x4c << 3) ^ (((0x4c >> 5) & 1) * 0x011b) ^ (((0x4c >> 5) & 2) * 0x011b) ^ (((0x4c >> 5) & 4) * 0x011b)) ^ ((0x4c << 2) ^ (((0x4c >> 6) & 1) * 0x011b) ^ (((0x4c >> 6) & 2) * 0x011b)) ^ 0x4c), (((0x4d << 3) ^ (((0x4d >> 5) & 1) * 0x011b) ^ (((0x4d >> 5) & 2) * 0x011b) ^ (((0x4d >> 5) & 4) * 0x011b)) ^ ((0x4d << 2) ^ (((0x4d >> 6) & 1) * 0x011b) ^ (((0x4d >> 6) & 2) * 0x011b)) ^ 0x4d), (((0x4e << 3) ^ (((0x4e >> 5) & 1) * 0x011b) ^ (((0x4e >> 5) & 2) * 0x011b) ^ (((0x4e >> 5) & 4) * 0x011b)) ^ ((0x4e << 2) ^ (((0x4e >> 6) & 1) * 0x011b) ^ (((0x4e >> 6) & 2) * 0x011b)) ^ 0x4e), (((0x4f << 3) ^ (((0x4f >> 5) & 1) * 0x011b) ^ (((0x4f >> 5) & 2) * 0x011b) ^ (((0x4f >> 5) & 4) * 0x011b)) ^ ((0x4f << 2) ^ (((0x4f >> 6) & 1) * 0x011b) ^ (((0x4f >> 6) & 2) * 0x011b)) ^ 0x4f), (((0x50 << 3) ^ (((0x50 >> 5) & 1) * 0x011b) ^ (((0x50 >> 5) & 2) * 0x011b) ^ (((0x50 >> 5) & 4) * 0x011b)) ^ ((0x50 << 2) ^ (((0x50 >> 6) & 1) * 0x011b) ^ (((0x50 >> 6) & 2) * 0x011b)) ^ 0x50), (((0x51 << 3) ^ (((0x51 >> 5) & 1) * 0x011b) ^ (((0x51 >> 5) & 2) * 0x011b) ^ (((0x51 >> 5) & 4) * 0x011b)) ^ ((0x51 << 2) ^ (((0x51 >> 6) & 1) * 0x011b) ^ (((0x51 >> 6) & 2) * 0x011b)) ^ 0x51), (((0x52 << 3) ^ (((0x52 >> 5) & 1) * 0x011b) ^ (((0x52 >> 5) & 2) * 0x011b) ^ (((0x52 >> 5) & 4) * 0x011b)) ^ ((0x52 << 2) ^ (((0x52 >> 6) & 1) * 0x011b) ^ (((0x52 >> 6) & 2) * 0x011b)) ^ 0x52), (((0x53 << 3) ^ (((0x53 >> 5) & 1) * 0x011b) ^ (((0x53 >> 5) & 2) * 0x011b) ^ (((0x53 >> 5) & 4) * 0x011b)) ^ ((0x53 << 2) ^ (((0x53 >> 6) & 1) * 0x011b) ^ (((0x53 >> 6) & 2) * 0x011b)) ^ 0x53), (((0x54 << 3) ^ (((0x54 >> 5) & 1) * 0x011b) ^ (((0x54 >> 5) & 2) * 0x011b) ^ (((0x54 >> 5) & 4) * 0x011b)) ^ ((0x54 << 2) ^ (((0x54 >> 6) & 1) * 0x011b) ^ (((0x54 >> 6) & 2) * 0x011b)) ^ 0x54), (((0x55 << 3) ^ (((0x55 >> 5) & 1) * 0x011b) ^ (((0x55 >> 5) & 2) * 0x011b) ^ (((0x55 >> 5) & 4) * 0x011b)) ^ ((0x55 << 2) ^ (((0x55 >> 6) & 1) * 0x011b) ^ (((0x55 >> 6) & 2) * 0x011b)) ^ 0x55), (((0x56 << 3) ^ (((0x56 >> 5) & 1) * 0x011b) ^ (((0x56 >> 5) & 2) * 0x011b) ^ (((0x56 >> 5) & 4) * 0x011b)) ^ ((0x56 << 2) ^ (((0x56 >> 6) & 1) * 0x011b) ^ (((0x56 >> 6) & 2) * 0x011b)) ^ 0x56), (((0x57 << 3) ^ (((0x57 >> 5) & 1) * 0x011b) ^ (((0x57 >> 5) & 2) * 0x011b) ^ (((0x57 >> 5) & 4) * 0x011b)) ^ ((0x57 << 2) ^ (((0x57 >> 6) & 1) * 0x011b) ^ (((0x57 >> 6) & 2) * 0x011b)) ^ 0x57), (((0x58 << 3) ^ (((0x58 >> 5) & 1) * 0x011b) ^ (((0x58 >> 5) & 2) * 0x011b) ^ (((0x58 >> 5) & 4) * 0x011b)) ^ ((0x58 << 2) ^ (((0x58 >> 6) & 1) * 0x011b) ^ (((0x58 >> 6) & 2) * 0x011b)) ^ 0x58), (((0x59 << 3) ^ (((0x59 >> 5) & 1) * 0x011b) ^ (((0x59 >> 5) & 2) * 0x011b) ^ (((0x59 >> 5) & 4) * 0x011b)) ^ ((0x59 << 2) ^ (((0x59 >> 6) & 1) * 0x011b) ^ (((0x59 >> 6) & 2) * 0x011b)) ^ 0x59), (((0x5a << 3) ^ (((0x5a >> 5) & 1) * 0x011b) ^ (((0x5a >> 5) & 2) * 0x011b) ^ (((0x5a >> 5) & 4) * 0x011b)) ^ ((0x5a << 2) ^ (((0x5a >> 6) & 1) * 0x011b) ^ (((0x5a >> 6) & 2) * 0x011b)) ^ 0x5a), (((0x5b << 3) ^ (((0x5b >> 5) & 1) * 0x011b) ^ (((0x5b >> 5) & 2) * 0x011b) ^ (((0x5b >> 5) & 4) * 0x011b)) ^ ((0x5b << 2) ^ (((0x5b >> 6) & 1) * 0x011b) ^ (((0x5b >> 6) & 2) * 0x011b)) ^ 0x5b), (((0x5c << 3) ^ (((0x5c >> 5) & 1) * 0x011b) ^ (((0x5c >> 5) & 2) * 0x011b) ^ (((0x5c >> 5) & 4) * 0x011b)) ^ ((0x5c << 2) ^ (((0x5c >> 6) & 1) * 0x011b) ^ (((0x5c >> 6) & 2) * 0x011b)) ^ 0x5c), (((0x5d << 3) ^ (((0x5d >> 5) & 1) * 0x011b) ^ (((0x5d >> 5) & 2) * 0x011b) ^ (((0x5d >> 5) & 4) * 0x011b)) ^ ((0x5d << 2) ^ (((0x5d >> 6) & 1) * 0x011b) ^ (((0x5d >> 6) & 2) * 0x011b)) ^ 0x5d), (((0x5e << 3) ^ (((0x5e >> 5) & 1) * 0x011b) ^ (((0x5e >> 5) & 2) * 0x011b) ^ (((0x5e >> 5) & 4) * 0x011b)) ^ ((0x5e << 2) ^ (((0x5e >> 6) & 1) * 0x011b) ^ (((0x5e >> 6) & 2) * 0x011b)) ^ 0x5e), (((0x5f << 3) ^ (((0x5f >> 5) & 1) * 0x011b) ^ (((0x5f >> 5) & 2) * 0x011b) ^ (((0x5f >> 5) & 4) * 0x011b)) ^ ((0x5f << 2) ^ (((0x5f >> 6) & 1) * 0x011b) ^ (((0x5f >> 6) & 2) * 0x011b)) ^ 0x5f), (((0x60 << 3) ^ (((0x60 >> 5) & 1) * 0x011b) ^ (((0x60 >> 5) & 2) * 0x011b) ^ (((0x60 >> 5) & 4) * 0x011b)) ^ ((0x60 << 2) ^ (((0x60 >> 6) & 1) * 0x011b) ^ (((0x60 >> 6) & 2) * 0x011b)) ^ 0x60), (((0x61 << 3) ^ (((0x61 >> 5) & 1) * 0x011b) ^ (((0x61 >> 5) & 2) * 0x011b) ^ (((0x61 >> 5) & 4) * 0x011b)) ^ ((0x61 << 2) ^ (((0x61 >> 6) & 1) * 0x011b) ^ (((0x61 >> 6) & 2) * 0x011b)) ^ 0x61), (((0x62 << 3) ^ (((0x62 >> 5) & 1) * 0x011b) ^ (((0x62 >> 5) & 2) * 0x011b) ^ (((0x62 >> 5) & 4) * 0x011b)) ^ ((0x62 << 2) ^ (((0x62 >> 6) & 1) * 0x011b) ^ (((0x62 >> 6) & 2) * 0x011b)) ^ 0x62), (((0x63 << 3) ^ (((0x63 >> 5) & 1) * 0x011b) ^ (((0x63 >> 5) & 2) * 0x011b) ^ (((0x63 >> 5) & 4) * 0x011b)) ^ ((0x63 << 2) ^ (((0x63 >> 6) & 1) * 0x011b) ^ (((0x63 >> 6) & 2) * 0x011b)) ^ 0x63), (((0x64 << 3) ^ (((0x64 >> 5) & 1) * 0x011b) ^ (((0x64 >> 5) & 2) * 0x011b) ^ (((0x64 >> 5) & 4) * 0x011b)) ^ ((0x64 << 2) ^ (((0x64 >> 6) & 1) * 0x011b) ^ (((0x64 >> 6) & 2) * 0x011b)) ^ 0x64), (((0x65 << 3) ^ (((0x65 >> 5) & 1) * 0x011b) ^ (((0x65 >> 5) & 2) * 0x011b) ^ (((0x65 >> 5) & 4) * 0x011b)) ^ ((0x65 << 2) ^ (((0x65 >> 6) & 1) * 0x011b) ^ (((0x65 >> 6) & 2) * 0x011b)) ^ 0x65), (((0x66 << 3) ^ (((0x66 >> 5) & 1) * 0x011b) ^ (((0x66 >> 5) & 2) * 0x011b) ^ (((0x66 >> 5) & 4) * 0x011b)) ^ ((0x66 << 2) ^ (((0x66 >> 6) & 1) * 0x011b) ^ (((0x66 >> 6) & 2) * 0x011b)) ^ 0x66), (((0x67 << 3) ^ (((0x67 >> 5) & 1) * 0x011b) ^ (((0x67 >> 5) & 2) * 0x011b) ^ (((0x67 >> 5) & 4) * 0x011b)) ^ ((0x67 << 2) ^ (((0x67 >> 6) & 1) * 0x011b) ^ (((0x67 >> 6) & 2) * 0x011b)) ^ 0x67), (((0x68 << 3) ^ (((0x68 >> 5) & 1) * 0x011b) ^ (((0x68 >> 5) & 2) * 0x011b) ^ (((0x68 >> 5) & 4) * 0x011b)) ^ ((0x68 << 2) ^ (((0x68 >> 6) & 1) * 0x011b) ^ (((0x68 >> 6) & 2) * 0x011b)) ^ 0x68), (((0x69 << 3) ^ (((0x69 >> 5) & 1) * 0x011b) ^ (((0x69 >> 5) & 2) * 0x011b) ^ (((0x69 >> 5) & 4) * 0x011b)) ^ ((0x69 << 2) ^ (((0x69 >> 6) & 1) * 0x011b) ^ (((0x69 >> 6) & 2) * 0x011b)) ^ 0x69), (((0x6a << 3) ^ (((0x6a >> 5) & 1) * 0x011b) ^ (((0x6a >> 5) & 2) * 0x011b) ^ (((0x6a >> 5) & 4) * 0x011b)) ^ ((0x6a << 2) ^ (((0x6a >> 6) & 1) * 0x011b) ^ (((0x6a >> 6) & 2) * 0x011b)) ^ 0x6a), (((0x6b << 3) ^ (((0x6b >> 5) & 1) * 0x011b) ^ (((0x6b >> 5) & 2) * 0x011b) ^ (((0x6b >> 5) & 4) * 0x011b)) ^ ((0x6b << 2) ^ (((0x6b >> 6) & 1) * 0x011b) ^ (((0x6b >> 6) & 2) * 0x011b)) ^ 0x6b), (((0x6c << 3) ^ (((0x6c >> 5) & 1) * 0x011b) ^ (((0x6c >> 5) & 2) * 0x011b) ^ (((0x6c >> 5) & 4) * 0x011b)) ^ ((0x6c << 2) ^ (((0x6c >> 6) & 1) * 0x011b) ^ (((0x6c >> 6) & 2) * 0x011b)) ^ 0x6c), (((0x6d << 3) ^ (((0x6d >> 5) & 1) * 0x011b) ^ (((0x6d >> 5) & 2) * 0x011b) ^ (((0x6d >> 5) & 4) * 0x011b)) ^ ((0x6d << 2) ^ (((0x6d >> 6) & 1) * 0x011b) ^ (((0x6d >> 6) & 2) * 0x011b)) ^ 0x6d), (((0x6e << 3) ^ (((0x6e >> 5) & 1) * 0x011b) ^ (((0x6e >> 5) & 2) * 0x011b) ^ (((0x6e >> 5) & 4) * 0x011b)) ^ ((0x6e << 2) ^ (((0x6e >> 6) & 1) * 0x011b) ^ (((0x6e >> 6) & 2) * 0x011b)) ^ 0x6e), (((0x6f << 3) ^ (((0x6f >> 5) & 1) * 0x011b) ^ (((0x6f >> 5) & 2) * 0x011b) ^ (((0x6f >> 5) & 4) * 0x011b)) ^ ((0x6f << 2) ^ (((0x6f >> 6) & 1) * 0x011b) ^ (((0x6f >> 6) & 2) * 0x011b)) ^ 0x6f), (((0x70 << 3) ^ (((0x70 >> 5) & 1) * 0x011b) ^ (((0x70 >> 5) & 2) * 0x011b) ^ (((0x70 >> 5) & 4) * 0x011b)) ^ ((0x70 << 2) ^ (((0x70 >> 6) & 1) * 0x011b) ^ (((0x70 >> 6) & 2) * 0x011b)) ^ 0x70), (((0x71 << 3) ^ (((0x71 >> 5) & 1) * 0x011b) ^ (((0x71 >> 5) & 2) * 0x011b) ^ (((0x71 >> 5) & 4) * 0x011b)) ^ ((0x71 << 2) ^ (((0x71 >> 6) & 1) * 0x011b) ^ (((0x71 >> 6) & 2) * 0x011b)) ^ 0x71), (((0x72 << 3) ^ (((0x72 >> 5) & 1) * 0x011b) ^ (((0x72 >> 5) & 2) * 0x011b) ^ (((0x72 >> 5) & 4) * 0x011b)) ^ ((0x72 << 2) ^ (((0x72 >> 6) & 1) * 0x011b) ^ (((0x72 >> 6) & 2) * 0x011b)) ^ 0x72), (((0x73 << 3) ^ (((0x73 >> 5) & 1) * 0x011b) ^ (((0x73 >> 5) & 2) * 0x011b) ^ (((0x73 >> 5) & 4) * 0x011b)) ^ ((0x73 << 2) ^ (((0x73 >> 6) & 1) * 0x011b) ^ (((0x73 >> 6) & 2) * 0x011b)) ^ 0x73), (((0x74 << 3) ^ (((0x74 >> 5) & 1) * 0x011b) ^ (((0x74 >> 5) & 2) * 0x011b) ^ (((0x74 >> 5) & 4) * 0x011b)) ^ ((0x74 << 2) ^ (((0x74 >> 6) & 1) * 0x011b) ^ (((0x74 >> 6) & 2) * 0x011b)) ^ 0x74), (((0x75 << 3) ^ (((0x75 >> 5) & 1) * 0x011b) ^ (((0x75 >> 5) & 2) * 0x011b) ^ (((0x75 >> 5) & 4) * 0x011b)) ^ ((0x75 << 2) ^ (((0x75 >> 6) & 1) * 0x011b) ^ (((0x75 >> 6) & 2) * 0x011b)) ^ 0x75), (((0x76 << 3) ^ (((0x76 >> 5) & 1) * 0x011b) ^ (((0x76 >> 5) & 2) * 0x011b) ^ (((0x76 >> 5) & 4) * 0x011b)) ^ ((0x76 << 2) ^ (((0x76 >> 6) & 1) * 0x011b) ^ (((0x76 >> 6) & 2) * 0x011b)) ^ 0x76), (((0x77 << 3) ^ (((0x77 >> 5) & 1) * 0x011b) ^ (((0x77 >> 5) & 2) * 0x011b) ^ (((0x77 >> 5) & 4) * 0x011b)) ^ ((0x77 << 2) ^ (((0x77 >> 6) & 1) * 0x011b) ^ (((0x77 >> 6) & 2) * 0x011b)) ^ 0x77), (((0x78 << 3) ^ (((0x78 >> 5) & 1) * 0x011b) ^ (((0x78 >> 5) & 2) * 0x011b) ^ (((0x78 >> 5) & 4) * 0x011b)) ^ ((0x78 << 2) ^ (((0x78 >> 6) & 1) * 0x011b) ^ (((0x78 >> 6) & 2) * 0x011b)) ^ 0x78), (((0x79 << 3) ^ (((0x79 >> 5) & 1) * 0x011b) ^ (((0x79 >> 5) & 2) * 0x011b) ^ (((0x79 >> 5) & 4) * 0x011b)) ^ ((0x79 << 2) ^ (((0x79 >> 6) & 1) * 0x011b) ^ (((0x79 >> 6) & 2) * 0x011b)) ^ 0x79), (((0x7a << 3) ^ (((0x7a >> 5) & 1) * 0x011b) ^ (((0x7a >> 5) & 2) * 0x011b) ^ (((0x7a >> 5) & 4) * 0x011b)) ^ ((0x7a << 2) ^ (((0x7a >> 6) & 1) * 0x011b) ^ (((0x7a >> 6) & 2) * 0x011b)) ^ 0x7a), (((0x7b << 3) ^ (((0x7b >> 5) & 1) * 0x011b) ^ (((0x7b >> 5) & 2) * 0x011b) ^ (((0x7b >> 5) & 4) * 0x011b)) ^ ((0x7b << 2) ^ (((0x7b >> 6) & 1) * 0x011b) ^ (((0x7b >> 6) & 2) * 0x011b)) ^ 0x7b), (((0x7c << 3) ^ (((0x7c >> 5) & 1) * 0x011b) ^ (((0x7c >> 5) & 2) * 0x011b) ^ (((0x7c >> 5) & 4) * 0x011b)) ^ ((0x7c << 2) ^ (((0x7c >> 6) & 1) * 0x011b) ^ (((0x7c >> 6) & 2) * 0x011b)) ^ 0x7c), (((0x7d << 3) ^ (((0x7d >> 5) & 1) * 0x011b) ^ (((0x7d >> 5) & 2) * 0x011b) ^ (((0x7d >> 5) & 4) * 0x011b)) ^ ((0x7d << 2) ^ (((0x7d >> 6) & 1) * 0x011b) ^ (((0x7d >> 6) & 2) * 0x011b)) ^ 0x7d), (((0x7e << 3) ^ (((0x7e >> 5) & 1) * 0x011b) ^ (((0x7e >> 5) & 2) * 0x011b) ^ (((0x7e >> 5) & 4) * 0x011b)) ^ ((0x7e << 2) ^ (((0x7e >> 6) & 1) * 0x011b) ^ (((0x7e >> 6) & 2) * 0x011b)) ^ 0x7e), (((0x7f << 3) ^ (((0x7f >> 5) & 1) * 0x011b) ^ (((0x7f >> 5) & 2) * 0x011b) ^ (((0x7f >> 5) & 4) * 0x011b)) ^ ((0x7f << 2) ^ (((0x7f >> 6) & 1) * 0x011b) ^ (((0x7f >> 6) & 2) * 0x011b)) ^ 0x7f), (((0x80 << 3) ^ (((0x80 >> 5) & 1) * 0x011b) ^ (((0x80 >> 5) & 2) * 0x011b) ^ (((0x80 >> 5) & 4) * 0x011b)) ^ ((0x80 << 2) ^ (((0x80 >> 6) & 1) * 0x011b) ^ (((0x80 >> 6) & 2) * 0x011b)) ^ 0x80), (((0x81 << 3) ^ (((0x81 >> 5) & 1) * 0x011b) ^ (((0x81 >> 5) & 2) * 0x011b) ^ (((0x81 >> 5) & 4) * 0x011b)) ^ ((0x81 << 2) ^ (((0x81 >> 6) & 1) * 0x011b) ^ (((0x81 >> 6) & 2) * 0x011b)) ^ 0x81), (((0x82 << 3) ^ (((0x82 >> 5) & 1) * 0x011b) ^ (((0x82 >> 5) & 2) * 0x011b) ^ (((0x82 >> 5) & 4) * 0x011b)) ^ ((0x82 << 2) ^ (((0x82 >> 6) & 1) * 0x011b) ^ (((0x82 >> 6) & 2) * 0x011b)) ^ 0x82), (((0x83 << 3) ^ (((0x83 >> 5) & 1) * 0x011b) ^ (((0x83 >> 5) & 2) * 0x011b) ^ (((0x83 >> 5) & 4) * 0x011b)) ^ ((0x83 << 2) ^ (((0x83 >> 6) & 1) * 0x011b) ^ (((0x83 >> 6) & 2) * 0x011b)) ^ 0x83), (((0x84 << 3) ^ (((0x84 >> 5) & 1) * 0x011b) ^ (((0x84 >> 5) & 2) * 0x011b) ^ (((0x84 >> 5) & 4) * 0x011b)) ^ ((0x84 << 2) ^ (((0x84 >> 6) & 1) * 0x011b) ^ (((0x84 >> 6) & 2) * 0x011b)) ^ 0x84), (((0x85 << 3) ^ (((0x85 >> 5) & 1) * 0x011b) ^ (((0x85 >> 5) & 2) * 0x011b) ^ (((0x85 >> 5) & 4) * 0x011b)) ^ ((0x85 << 2) ^ (((0x85 >> 6) & 1) * 0x011b) ^ (((0x85 >> 6) & 2) * 0x011b)) ^ 0x85), (((0x86 << 3) ^ (((0x86 >> 5) & 1) * 0x011b) ^ (((0x86 >> 5) & 2) * 0x011b) ^ (((0x86 >> 5) & 4) * 0x011b)) ^ ((0x86 << 2) ^ (((0x86 >> 6) & 1) * 0x011b) ^ (((0x86 >> 6) & 2) * 0x011b)) ^ 0x86), (((0x87 << 3) ^ (((0x87 >> 5) & 1) * 0x011b) ^ (((0x87 >> 5) & 2) * 0x011b) ^ (((0x87 >> 5) & 4) * 0x011b)) ^ ((0x87 << 2) ^ (((0x87 >> 6) & 1) * 0x011b) ^ (((0x87 >> 6) & 2) * 0x011b)) ^ 0x87), (((0x88 << 3) ^ (((0x88 >> 5) & 1) * 0x011b) ^ (((0x88 >> 5) & 2) * 0x011b) ^ (((0x88 >> 5) & 4) * 0x011b)) ^ ((0x88 << 2) ^ (((0x88 >> 6) & 1) * 0x011b) ^ (((0x88 >> 6) & 2) * 0x011b)) ^ 0x88), (((0x89 << 3) ^ (((0x89 >> 5) & 1) * 0x011b) ^ (((0x89 >> 5) & 2) * 0x011b) ^ (((0x89 >> 5) & 4) * 0x011b)) ^ ((0x89 << 2) ^ (((0x89 >> 6) & 1) * 0x011b) ^ (((0x89 >> 6) & 2) * 0x011b)) ^ 0x89), (((0x8a << 3) ^ (((0x8a >> 5) & 1) * 0x011b) ^ (((0x8a >> 5) & 2) * 0x011b) ^ (((0x8a >> 5) & 4) * 0x011b)) ^ ((0x8a << 2) ^ (((0x8a >> 6) & 1) * 0x011b) ^ (((0x8a >> 6) & 2) * 0x011b)) ^ 0x8a), (((0x8b << 3) ^ (((0x8b >> 5) & 1) * 0x011b) ^ (((0x8b >> 5) & 2) * 0x011b) ^ (((0x8b >> 5) & 4) * 0x011b)) ^ ((0x8b << 2) ^ (((0x8b >> 6) & 1) * 0x011b) ^ (((0x8b >> 6) & 2) * 0x011b)) ^ 0x8b), (((0x8c << 3) ^ (((0x8c >> 5) & 1) * 0x011b) ^ (((0x8c >> 5) & 2) * 0x011b) ^ (((0x8c >> 5) & 4) * 0x011b)) ^ ((0x8c << 2) ^ (((0x8c >> 6) & 1) * 0x011b) ^ (((0x8c >> 6) & 2) * 0x011b)) ^ 0x8c), (((0x8d << 3) ^ (((0x8d >> 5) & 1) * 0x011b) ^ (((0x8d >> 5) & 2) * 0x011b) ^ (((0x8d >> 5) & 4) * 0x011b)) ^ ((0x8d << 2) ^ (((0x8d >> 6) & 1) * 0x011b) ^ (((0x8d >> 6) & 2) * 0x011b)) ^ 0x8d), (((0x8e << 3) ^ (((0x8e >> 5) & 1) * 0x011b) ^ (((0x8e >> 5) & 2) * 0x011b) ^ (((0x8e >> 5) & 4) * 0x011b)) ^ ((0x8e << 2) ^ (((0x8e >> 6) & 1) * 0x011b) ^ (((0x8e >> 6) & 2) * 0x011b)) ^ 0x8e), (((0x8f << 3) ^ (((0x8f >> 5) & 1) * 0x011b) ^ (((0x8f >> 5) & 2) * 0x011b) ^ (((0x8f >> 5) & 4) * 0x011b)) ^ ((0x8f << 2) ^ (((0x8f >> 6) & 1) * 0x011b) ^ (((0x8f >> 6) & 2) * 0x011b)) ^ 0x8f), (((0x90 << 3) ^ (((0x90 >> 5) & 1) * 0x011b) ^ (((0x90 >> 5) & 2) * 0x011b) ^ (((0x90 >> 5) & 4) * 0x011b)) ^ ((0x90 << 2) ^ (((0x90 >> 6) & 1) * 0x011b) ^ (((0x90 >> 6) & 2) * 0x011b)) ^ 0x90), (((0x91 << 3) ^ (((0x91 >> 5) & 1) * 0x011b) ^ (((0x91 >> 5) & 2) * 0x011b) ^ (((0x91 >> 5) & 4) * 0x011b)) ^ ((0x91 << 2) ^ (((0x91 >> 6) & 1) * 0x011b) ^ (((0x91 >> 6) & 2) * 0x011b)) ^ 0x91), (((0x92 << 3) ^ (((0x92 >> 5) & 1) * 0x011b) ^ (((0x92 >> 5) & 2) * 0x011b) ^ (((0x92 >> 5) & 4) * 0x011b)) ^ ((0x92 << 2) ^ (((0x92 >> 6) & 1) * 0x011b) ^ (((0x92 >> 6) & 2) * 0x011b)) ^ 0x92), (((0x93 << 3) ^ (((0x93 >> 5) & 1) * 0x011b) ^ (((0x93 >> 5) & 2) * 0x011b) ^ (((0x93 >> 5) & 4) * 0x011b)) ^ ((0x93 << 2) ^ (((0x93 >> 6) & 1) * 0x011b) ^ (((0x93 >> 6) & 2) * 0x011b)) ^ 0x93), (((0x94 << 3) ^ (((0x94 >> 5) & 1) * 0x011b) ^ (((0x94 >> 5) & 2) * 0x011b) ^ (((0x94 >> 5) & 4) * 0x011b)) ^ ((0x94 << 2) ^ (((0x94 >> 6) & 1) * 0x011b) ^ (((0x94 >> 6) & 2) * 0x011b)) ^ 0x94), (((0x95 << 3) ^ (((0x95 >> 5) & 1) * 0x011b) ^ (((0x95 >> 5) & 2) * 0x011b) ^ (((0x95 >> 5) & 4) * 0x011b)) ^ ((0x95 << 2) ^ (((0x95 >> 6) & 1) * 0x011b) ^ (((0x95 >> 6) & 2) * 0x011b)) ^ 0x95), (((0x96 << 3) ^ (((0x96 >> 5) & 1) * 0x011b) ^ (((0x96 >> 5) & 2) * 0x011b) ^ (((0x96 >> 5) & 4) * 0x011b)) ^ ((0x96 << 2) ^ (((0x96 >> 6) & 1) * 0x011b) ^ (((0x96 >> 6) & 2) * 0x011b)) ^ 0x96), (((0x97 << 3) ^ (((0x97 >> 5) & 1) * 0x011b) ^ (((0x97 >> 5) & 2) * 0x011b) ^ (((0x97 >> 5) & 4) * 0x011b)) ^ ((0x97 << 2) ^ (((0x97 >> 6) & 1) * 0x011b) ^ (((0x97 >> 6) & 2) * 0x011b)) ^ 0x97), (((0x98 << 3) ^ (((0x98 >> 5) & 1) * 0x011b) ^ (((0x98 >> 5) & 2) * 0x011b) ^ (((0x98 >> 5) & 4) * 0x011b)) ^ ((0x98 << 2) ^ (((0x98 >> 6) & 1) * 0x011b) ^ (((0x98 >> 6) & 2) * 0x011b)) ^ 0x98), (((0x99 << 3) ^ (((0x99 >> 5) & 1) * 0x011b) ^ (((0x99 >> 5) & 2) * 0x011b) ^ (((0x99 >> 5) & 4) * 0x011b)) ^ ((0x99 << 2) ^ (((0x99 >> 6) & 1) * 0x011b) ^ (((0x99 >> 6) & 2) * 0x011b)) ^ 0x99), (((0x9a << 3) ^ (((0x9a >> 5) & 1) * 0x011b) ^ (((0x9a >> 5) & 2) * 0x011b) ^ (((0x9a >> 5) & 4) * 0x011b)) ^ ((0x9a << 2) ^ (((0x9a >> 6) & 1) * 0x011b) ^ (((0x9a >> 6) & 2) * 0x011b)) ^ 0x9a), (((0x9b << 3) ^ (((0x9b >> 5) & 1) * 0x011b) ^ (((0x9b >> 5) & 2) * 0x011b) ^ (((0x9b >> 5) & 4) * 0x011b)) ^ ((0x9b << 2) ^ (((0x9b >> 6) & 1) * 0x011b) ^ (((0x9b >> 6) & 2) * 0x011b)) ^ 0x9b), (((0x9c << 3) ^ (((0x9c >> 5) & 1) * 0x011b) ^ (((0x9c >> 5) & 2) * 0x011b) ^ (((0x9c >> 5) & 4) * 0x011b)) ^ ((0x9c << 2) ^ (((0x9c >> 6) & 1) * 0x011b) ^ (((0x9c >> 6) & 2) * 0x011b)) ^ 0x9c), (((0x9d << 3) ^ (((0x9d >> 5) & 1) * 0x011b) ^ (((0x9d >> 5) & 2) * 0x011b) ^ (((0x9d >> 5) & 4) * 0x011b)) ^ ((0x9d << 2) ^ (((0x9d >> 6) & 1) * 0x011b) ^ (((0x9d >> 6) & 2) * 0x011b)) ^ 0x9d), (((0x9e << 3) ^ (((0x9e >> 5) & 1) * 0x011b) ^ (((0x9e >> 5) & 2) * 0x011b) ^ (((0x9e >> 5) & 4) * 0x011b)) ^ ((0x9e << 2) ^ (((0x9e >> 6) & 1) * 0x011b) ^ (((0x9e >> 6) & 2) * 0x011b)) ^ 0x9e), (((0x9f << 3) ^ (((0x9f >> 5) & 1) * 0x011b) ^ (((0x9f >> 5) & 2) * 0x011b) ^ (((0x9f >> 5) & 4) * 0x011b)) ^ ((0x9f << 2) ^ (((0x9f >> 6) & 1) * 0x011b) ^ (((0x9f >> 6) & 2) * 0x011b)) ^ 0x9f), (((0xa0 << 3) ^ (((0xa0 >> 5) & 1) * 0x011b) ^ (((0xa0 >> 5) & 2) * 0x011b) ^ (((0xa0 >> 5) & 4) * 0x011b)) ^ ((0xa0 << 2) ^ (((0xa0 >> 6) & 1) * 0x011b) ^ (((0xa0 >> 6) & 2) * 0x011b)) ^ 0xa0), (((0xa1 << 3) ^ (((0xa1 >> 5) & 1) * 0x011b) ^ (((0xa1 >> 5) & 2) * 0x011b) ^ (((0xa1 >> 5) & 4) * 0x011b)) ^ ((0xa1 << 2) ^ (((0xa1 >> 6) & 1) * 0x011b) ^ (((0xa1 >> 6) & 2) * 0x011b)) ^ 0xa1), (((0xa2 << 3) ^ (((0xa2 >> 5) & 1) * 0x011b) ^ (((0xa2 >> 5) & 2) * 0x011b) ^ (((0xa2 >> 5) & 4) * 0x011b)) ^ ((0xa2 << 2) ^ (((0xa2 >> 6) & 1) * 0x011b) ^ (((0xa2 >> 6) & 2) * 0x011b)) ^ 0xa2), (((0xa3 << 3) ^ (((0xa3 >> 5) & 1) * 0x011b) ^ (((0xa3 >> 5) & 2) * 0x011b) ^ (((0xa3 >> 5) & 4) * 0x011b)) ^ ((0xa3 << 2) ^ (((0xa3 >> 6) & 1) * 0x011b) ^ (((0xa3 >> 6) & 2) * 0x011b)) ^ 0xa3), (((0xa4 << 3) ^ (((0xa4 >> 5) & 1) * 0x011b) ^ (((0xa4 >> 5) & 2) * 0x011b) ^ (((0xa4 >> 5) & 4) * 0x011b)) ^ ((0xa4 << 2) ^ (((0xa4 >> 6) & 1) * 0x011b) ^ (((0xa4 >> 6) & 2) * 0x011b)) ^ 0xa4), (((0xa5 << 3) ^ (((0xa5 >> 5) & 1) * 0x011b) ^ (((0xa5 >> 5) & 2) * 0x011b) ^ (((0xa5 >> 5) & 4) * 0x011b)) ^ ((0xa5 << 2) ^ (((0xa5 >> 6) & 1) * 0x011b) ^ (((0xa5 >> 6) & 2) * 0x011b)) ^ 0xa5), (((0xa6 << 3) ^ (((0xa6 >> 5) & 1) * 0x011b) ^ (((0xa6 >> 5) & 2) * 0x011b) ^ (((0xa6 >> 5) & 4) * 0x011b)) ^ ((0xa6 << 2) ^ (((0xa6 >> 6) & 1) * 0x011b) ^ (((0xa6 >> 6) & 2) * 0x011b)) ^ 0xa6), (((0xa7 << 3) ^ (((0xa7 >> 5) & 1) * 0x011b) ^ (((0xa7 >> 5) & 2) * 0x011b) ^ (((0xa7 >> 5) & 4) * 0x011b)) ^ ((0xa7 << 2) ^ (((0xa7 >> 6) & 1) * 0x011b) ^ (((0xa7 >> 6) & 2) * 0x011b)) ^ 0xa7), (((0xa8 << 3) ^ (((0xa8 >> 5) & 1) * 0x011b) ^ (((0xa8 >> 5) & 2) * 0x011b) ^ (((0xa8 >> 5) & 4) * 0x011b)) ^ ((0xa8 << 2) ^ (((0xa8 >> 6) & 1) * 0x011b) ^ (((0xa8 >> 6) & 2) * 0x011b)) ^ 0xa8), (((0xa9 << 3) ^ (((0xa9 >> 5) & 1) * 0x011b) ^ (((0xa9 >> 5) & 2) * 0x011b) ^ (((0xa9 >> 5) & 4) * 0x011b)) ^ ((0xa9 << 2) ^ (((0xa9 >> 6) & 1) * 0x011b) ^ (((0xa9 >> 6) & 2) * 0x011b)) ^ 0xa9), (((0xaa << 3) ^ (((0xaa >> 5) & 1) * 0x011b) ^ (((0xaa >> 5) & 2) * 0x011b) ^ (((0xaa >> 5) & 4) * 0x011b)) ^ ((0xaa << 2) ^ (((0xaa >> 6) & 1) * 0x011b) ^ (((0xaa >> 6) & 2) * 0x011b)) ^ 0xaa), (((0xab << 3) ^ (((0xab >> 5) & 1) * 0x011b) ^ (((0xab >> 5) & 2) * 0x011b) ^ (((0xab >> 5) & 4) * 0x011b)) ^ ((0xab << 2) ^ (((0xab >> 6) & 1) * 0x011b) ^ (((0xab >> 6) & 2) * 0x011b)) ^ 0xab), (((0xac << 3) ^ (((0xac >> 5) & 1) * 0x011b) ^ (((0xac >> 5) & 2) * 0x011b) ^ (((0xac >> 5) & 4) * 0x011b)) ^ ((0xac << 2) ^ (((0xac >> 6) & 1) * 0x011b) ^ (((0xac >> 6) & 2) * 0x011b)) ^ 0xac), (((0xad << 3) ^ (((0xad >> 5) & 1) * 0x011b) ^ (((0xad >> 5) & 2) * 0x011b) ^ (((0xad >> 5) & 4) * 0x011b)) ^ ((0xad << 2) ^ (((0xad >> 6) & 1) * 0x011b) ^ (((0xad >> 6) & 2) * 0x011b)) ^ 0xad), (((0xae << 3) ^ (((0xae >> 5) & 1) * 0x011b) ^ (((0xae >> 5) & 2) * 0x011b) ^ (((0xae >> 5) & 4) * 0x011b)) ^ ((0xae << 2) ^ (((0xae >> 6) & 1) * 0x011b) ^ (((0xae >> 6) & 2) * 0x011b)) ^ 0xae), (((0xaf << 3) ^ (((0xaf >> 5) & 1) * 0x011b) ^ (((0xaf >> 5) & 2) * 0x011b) ^ (((0xaf >> 5) & 4) * 0x011b)) ^ ((0xaf << 2) ^ (((0xaf >> 6) & 1) * 0x011b) ^ (((0xaf >> 6) & 2) * 0x011b)) ^ 0xaf), (((0xb0 << 3) ^ (((0xb0 >> 5) & 1) * 0x011b) ^ (((0xb0 >> 5) & 2) * 0x011b) ^ (((0xb0 >> 5) & 4) * 0x011b)) ^ ((0xb0 << 2) ^ (((0xb0 >> 6) & 1) * 0x011b) ^ (((0xb0 >> 6) & 2) * 0x011b)) ^ 0xb0), (((0xb1 << 3) ^ (((0xb1 >> 5) & 1) * 0x011b) ^ (((0xb1 >> 5) & 2) * 0x011b) ^ (((0xb1 >> 5) & 4) * 0x011b)) ^ ((0xb1 << 2) ^ (((0xb1 >> 6) & 1) * 0x011b) ^ (((0xb1 >> 6) & 2) * 0x011b)) ^ 0xb1), (((0xb2 << 3) ^ (((0xb2 >> 5) & 1) * 0x011b) ^ (((0xb2 >> 5) & 2) * 0x011b) ^ (((0xb2 >> 5) & 4) * 0x011b)) ^ ((0xb2 << 2) ^ (((0xb2 >> 6) & 1) * 0x011b) ^ (((0xb2 >> 6) & 2) * 0x011b)) ^ 0xb2), (((0xb3 << 3) ^ (((0xb3 >> 5) & 1) * 0x011b) ^ (((0xb3 >> 5) & 2) * 0x011b) ^ (((0xb3 >> 5) & 4) * 0x011b)) ^ ((0xb3 << 2) ^ (((0xb3 >> 6) & 1) * 0x011b) ^ (((0xb3 >> 6) & 2) * 0x011b)) ^ 0xb3), (((0xb4 << 3) ^ (((0xb4 >> 5) & 1) * 0x011b) ^ (((0xb4 >> 5) & 2) * 0x011b) ^ (((0xb4 >> 5) & 4) * 0x011b)) ^ ((0xb4 << 2) ^ (((0xb4 >> 6) & 1) * 0x011b) ^ (((0xb4 >> 6) & 2) * 0x011b)) ^ 0xb4), (((0xb5 << 3) ^ (((0xb5 >> 5) & 1) * 0x011b) ^ (((0xb5 >> 5) & 2) * 0x011b) ^ (((0xb5 >> 5) & 4) * 0x011b)) ^ ((0xb5 << 2) ^ (((0xb5 >> 6) & 1) * 0x011b) ^ (((0xb5 >> 6) & 2) * 0x011b)) ^ 0xb5), (((0xb6 << 3) ^ (((0xb6 >> 5) & 1) * 0x011b) ^ (((0xb6 >> 5) & 2) * 0x011b) ^ (((0xb6 >> 5) & 4) * 0x011b)) ^ ((0xb6 << 2) ^ (((0xb6 >> 6) & 1) * 0x011b) ^ (((0xb6 >> 6) & 2) * 0x011b)) ^ 0xb6), (((0xb7 << 3) ^ (((0xb7 >> 5) & 1) * 0x011b) ^ (((0xb7 >> 5) & 2) * 0x011b) ^ (((0xb7 >> 5) & 4) * 0x011b)) ^ ((0xb7 << 2) ^ (((0xb7 >> 6) & 1) * 0x011b) ^ (((0xb7 >> 6) & 2) * 0x011b)) ^ 0xb7), (((0xb8 << 3) ^ (((0xb8 >> 5) & 1) * 0x011b) ^ (((0xb8 >> 5) & 2) * 0x011b) ^ (((0xb8 >> 5) & 4) * 0x011b)) ^ ((0xb8 << 2) ^ (((0xb8 >> 6) & 1) * 0x011b) ^ (((0xb8 >> 6) & 2) * 0x011b)) ^ 0xb8), (((0xb9 << 3) ^ (((0xb9 >> 5) & 1) * 0x011b) ^ (((0xb9 >> 5) & 2) * 0x011b) ^ (((0xb9 >> 5) & 4) * 0x011b)) ^ ((0xb9 << 2) ^ (((0xb9 >> 6) & 1) * 0x011b) ^ (((0xb9 >> 6) & 2) * 0x011b)) ^ 0xb9), (((0xba << 3) ^ (((0xba >> 5) & 1) * 0x011b) ^ (((0xba >> 5) & 2) * 0x011b) ^ (((0xba >> 5) & 4) * 0x011b)) ^ ((0xba << 2) ^ (((0xba >> 6) & 1) * 0x011b) ^ (((0xba >> 6) & 2) * 0x011b)) ^ 0xba), (((0xbb << 3) ^ (((0xbb >> 5) & 1) * 0x011b) ^ (((0xbb >> 5) & 2) * 0x011b) ^ (((0xbb >> 5) & 4) * 0x011b)) ^ ((0xbb << 2) ^ (((0xbb >> 6) & 1) * 0x011b) ^ (((0xbb >> 6) & 2) * 0x011b)) ^ 0xbb), (((0xbc << 3) ^ (((0xbc >> 5) & 1) * 0x011b) ^ (((0xbc >> 5) & 2) * 0x011b) ^ (((0xbc >> 5) & 4) * 0x011b)) ^ ((0xbc << 2) ^ (((0xbc >> 6) & 1) * 0x011b) ^ (((0xbc >> 6) & 2) * 0x011b)) ^ 0xbc), (((0xbd << 3) ^ (((0xbd >> 5) & 1) * 0x011b) ^ (((0xbd >> 5) & 2) * 0x011b) ^ (((0xbd >> 5) & 4) * 0x011b)) ^ ((0xbd << 2) ^ (((0xbd >> 6) & 1) * 0x011b) ^ (((0xbd >> 6) & 2) * 0x011b)) ^ 0xbd), (((0xbe << 3) ^ (((0xbe >> 5) & 1) * 0x011b) ^ (((0xbe >> 5) & 2) * 0x011b) ^ (((0xbe >> 5) & 4) * 0x011b)) ^ ((0xbe << 2) ^ (((0xbe >> 6) & 1) * 0x011b) ^ (((0xbe >> 6) & 2) * 0x011b)) ^ 0xbe), (((0xbf << 3) ^ (((0xbf >> 5) & 1) * 0x011b) ^ (((0xbf >> 5) & 2) * 0x011b) ^ (((0xbf >> 5) & 4) * 0x011b)) ^ ((0xbf << 2) ^ (((0xbf >> 6) & 1) * 0x011b) ^ (((0xbf >> 6) & 2) * 0x011b)) ^ 0xbf), (((0xc0 << 3) ^ (((0xc0 >> 5) & 1) * 0x011b) ^ (((0xc0 >> 5) & 2) * 0x011b) ^ (((0xc0 >> 5) & 4) * 0x011b)) ^ ((0xc0 << 2) ^ (((0xc0 >> 6) & 1) * 0x011b) ^ (((0xc0 >> 6) & 2) * 0x011b)) ^ 0xc0), (((0xc1 << 3) ^ (((0xc1 >> 5) & 1) * 0x011b) ^ (((0xc1 >> 5) & 2) * 0x011b) ^ (((0xc1 >> 5) & 4) * 0x011b)) ^ ((0xc1 << 2) ^ (((0xc1 >> 6) & 1) * 0x011b) ^ (((0xc1 >> 6) & 2) * 0x011b)) ^ 0xc1), (((0xc2 << 3) ^ (((0xc2 >> 5) & 1) * 0x011b) ^ (((0xc2 >> 5) & 2) * 0x011b) ^ (((0xc2 >> 5) & 4) * 0x011b)) ^ ((0xc2 << 2) ^ (((0xc2 >> 6) & 1) * 0x011b) ^ (((0xc2 >> 6) & 2) * 0x011b)) ^ 0xc2), (((0xc3 << 3) ^ (((0xc3 >> 5) & 1) * 0x011b) ^ (((0xc3 >> 5) & 2) * 0x011b) ^ (((0xc3 >> 5) & 4) * 0x011b)) ^ ((0xc3 << 2) ^ (((0xc3 >> 6) & 1) * 0x011b) ^ (((0xc3 >> 6) & 2) * 0x011b)) ^ 0xc3), (((0xc4 << 3) ^ (((0xc4 >> 5) & 1) * 0x011b) ^ (((0xc4 >> 5) & 2) * 0x011b) ^ (((0xc4 >> 5) & 4) * 0x011b)) ^ ((0xc4 << 2) ^ (((0xc4 >> 6) & 1) * 0x011b) ^ (((0xc4 >> 6) & 2) * 0x011b)) ^ 0xc4), (((0xc5 << 3) ^ (((0xc5 >> 5) & 1) * 0x011b) ^ (((0xc5 >> 5) & 2) * 0x011b) ^ (((0xc5 >> 5) & 4) * 0x011b)) ^ ((0xc5 << 2) ^ (((0xc5 >> 6) & 1) * 0x011b) ^ (((0xc5 >> 6) & 2) * 0x011b)) ^ 0xc5), (((0xc6 << 3) ^ (((0xc6 >> 5) & 1) * 0x011b) ^ (((0xc6 >> 5) & 2) * 0x011b) ^ (((0xc6 >> 5) & 4) * 0x011b)) ^ ((0xc6 << 2) ^ (((0xc6 >> 6) & 1) * 0x011b) ^ (((0xc6 >> 6) & 2) * 0x011b)) ^ 0xc6), (((0xc7 << 3) ^ (((0xc7 >> 5) & 1) * 0x011b) ^ (((0xc7 >> 5) & 2) * 0x011b) ^ (((0xc7 >> 5) & 4) * 0x011b)) ^ ((0xc7 << 2) ^ (((0xc7 >> 6) & 1) * 0x011b) ^ (((0xc7 >> 6) & 2) * 0x011b)) ^ 0xc7), (((0xc8 << 3) ^ (((0xc8 >> 5) & 1) * 0x011b) ^ (((0xc8 >> 5) & 2) * 0x011b) ^ (((0xc8 >> 5) & 4) * 0x011b)) ^ ((0xc8 << 2) ^ (((0xc8 >> 6) & 1) * 0x011b) ^ (((0xc8 >> 6) & 2) * 0x011b)) ^ 0xc8), (((0xc9 << 3) ^ (((0xc9 >> 5) & 1) * 0x011b) ^ (((0xc9 >> 5) & 2) * 0x011b) ^ (((0xc9 >> 5) & 4) * 0x011b)) ^ ((0xc9 << 2) ^ (((0xc9 >> 6) & 1) * 0x011b) ^ (((0xc9 >> 6) & 2) * 0x011b)) ^ 0xc9), (((0xca << 3) ^ (((0xca >> 5) & 1) * 0x011b) ^ (((0xca >> 5) & 2) * 0x011b) ^ (((0xca >> 5) & 4) * 0x011b)) ^ ((0xca << 2) ^ (((0xca >> 6) & 1) * 0x011b) ^ (((0xca >> 6) & 2) * 0x011b)) ^ 0xca), (((0xcb << 3) ^ (((0xcb >> 5) & 1) * 0x011b) ^ (((0xcb >> 5) & 2) * 0x011b) ^ (((0xcb >> 5) & 4) * 0x011b)) ^ ((0xcb << 2) ^ (((0xcb >> 6) & 1) * 0x011b) ^ (((0xcb >> 6) & 2) * 0x011b)) ^ 0xcb), (((0xcc << 3) ^ (((0xcc >> 5) & 1) * 0x011b) ^ (((0xcc >> 5) & 2) * 0x011b) ^ (((0xcc >> 5) & 4) * 0x011b)) ^ ((0xcc << 2) ^ (((0xcc >> 6) & 1) * 0x011b) ^ (((0xcc >> 6) & 2) * 0x011b)) ^ 0xcc), (((0xcd << 3) ^ (((0xcd >> 5) & 1) * 0x011b) ^ (((0xcd >> 5) & 2) * 0x011b) ^ (((0xcd >> 5) & 4) * 0x011b)) ^ ((0xcd << 2) ^ (((0xcd >> 6) & 1) * 0x011b) ^ (((0xcd >> 6) & 2) * 0x011b)) ^ 0xcd), (((0xce << 3) ^ (((0xce >> 5) & 1) * 0x011b) ^ (((0xce >> 5) & 2) * 0x011b) ^ (((0xce >> 5) & 4) * 0x011b)) ^ ((0xce << 2) ^ (((0xce >> 6) & 1) * 0x011b) ^ (((0xce >> 6) & 2) * 0x011b)) ^ 0xce), (((0xcf << 3) ^ (((0xcf >> 5) & 1) * 0x011b) ^ (((0xcf >> 5) & 2) * 0x011b) ^ (((0xcf >> 5) & 4) * 0x011b)) ^ ((0xcf << 2) ^ (((0xcf >> 6) & 1) * 0x011b) ^ (((0xcf >> 6) & 2) * 0x011b)) ^ 0xcf), (((0xd0 << 3) ^ (((0xd0 >> 5) & 1) * 0x011b) ^ (((0xd0 >> 5) & 2) * 0x011b) ^ (((0xd0 >> 5) & 4) * 0x011b)) ^ ((0xd0 << 2) ^ (((0xd0 >> 6) & 1) * 0x011b) ^ (((0xd0 >> 6) & 2) * 0x011b)) ^ 0xd0), (((0xd1 << 3) ^ (((0xd1 >> 5) & 1) * 0x011b) ^ (((0xd1 >> 5) & 2) * 0x011b) ^ (((0xd1 >> 5) & 4) * 0x011b)) ^ ((0xd1 << 2) ^ (((0xd1 >> 6) & 1) * 0x011b) ^ (((0xd1 >> 6) & 2) * 0x011b)) ^ 0xd1), (((0xd2 << 3) ^ (((0xd2 >> 5) & 1) * 0x011b) ^ (((0xd2 >> 5) & 2) * 0x011b) ^ (((0xd2 >> 5) & 4) * 0x011b)) ^ ((0xd2 << 2) ^ (((0xd2 >> 6) & 1) * 0x011b) ^ (((0xd2 >> 6) & 2) * 0x011b)) ^ 0xd2), (((0xd3 << 3) ^ (((0xd3 >> 5) & 1) * 0x011b) ^ (((0xd3 >> 5) & 2) * 0x011b) ^ (((0xd3 >> 5) & 4) * 0x011b)) ^ ((0xd3 << 2) ^ (((0xd3 >> 6) & 1) * 0x011b) ^ (((0xd3 >> 6) & 2) * 0x011b)) ^ 0xd3), (((0xd4 << 3) ^ (((0xd4 >> 5) & 1) * 0x011b) ^ (((0xd4 >> 5) & 2) * 0x011b) ^ (((0xd4 >> 5) & 4) * 0x011b)) ^ ((0xd4 << 2) ^ (((0xd4 >> 6) & 1) * 0x011b) ^ (((0xd4 >> 6) & 2) * 0x011b)) ^ 0xd4), (((0xd5 << 3) ^ (((0xd5 >> 5) & 1) * 0x011b) ^ (((0xd5 >> 5) & 2) * 0x011b) ^ (((0xd5 >> 5) & 4) * 0x011b)) ^ ((0xd5 << 2) ^ (((0xd5 >> 6) & 1) * 0x011b) ^ (((0xd5 >> 6) & 2) * 0x011b)) ^ 0xd5), (((0xd6 << 3) ^ (((0xd6 >> 5) & 1) * 0x011b) ^ (((0xd6 >> 5) & 2) * 0x011b) ^ (((0xd6 >> 5) & 4) * 0x011b)) ^ ((0xd6 << 2) ^ (((0xd6 >> 6) & 1) * 0x011b) ^ (((0xd6 >> 6) & 2) * 0x011b)) ^ 0xd6), (((0xd7 << 3) ^ (((0xd7 >> 5) & 1) * 0x011b) ^ (((0xd7 >> 5) & 2) * 0x011b) ^ (((0xd7 >> 5) & 4) * 0x011b)) ^ ((0xd7 << 2) ^ (((0xd7 >> 6) & 1) * 0x011b) ^ (((0xd7 >> 6) & 2) * 0x011b)) ^ 0xd7), (((0xd8 << 3) ^ (((0xd8 >> 5) & 1) * 0x011b) ^ (((0xd8 >> 5) & 2) * 0x011b) ^ (((0xd8 >> 5) & 4) * 0x011b)) ^ ((0xd8 << 2) ^ (((0xd8 >> 6) & 1) * 0x011b) ^ (((0xd8 >> 6) & 2) * 0x011b)) ^ 0xd8), (((0xd9 << 3) ^ (((0xd9 >> 5) & 1) * 0x011b) ^ (((0xd9 >> 5) & 2) * 0x011b) ^ (((0xd9 >> 5) & 4) * 0x011b)) ^ ((0xd9 << 2) ^ (((0xd9 >> 6) & 1) * 0x011b) ^ (((0xd9 >> 6) & 2) * 0x011b)) ^ 0xd9), (((0xda << 3) ^ (((0xda >> 5) & 1) * 0x011b) ^ (((0xda >> 5) & 2) * 0x011b) ^ (((0xda >> 5) & 4) * 0x011b)) ^ ((0xda << 2) ^ (((0xda >> 6) & 1) * 0x011b) ^ (((0xda >> 6) & 2) * 0x011b)) ^ 0xda), (((0xdb << 3) ^ (((0xdb >> 5) & 1) * 0x011b) ^ (((0xdb >> 5) & 2) * 0x011b) ^ (((0xdb >> 5) & 4) * 0x011b)) ^ ((0xdb << 2) ^ (((0xdb >> 6) & 1) * 0x011b) ^ (((0xdb >> 6) & 2) * 0x011b)) ^ 0xdb), (((0xdc << 3) ^ (((0xdc >> 5) & 1) * 0x011b) ^ (((0xdc >> 5) & 2) * 0x011b) ^ (((0xdc >> 5) & 4) * 0x011b)) ^ ((0xdc << 2) ^ (((0xdc >> 6) & 1) * 0x011b) ^ (((0xdc >> 6) & 2) * 0x011b)) ^ 0xdc), (((0xdd << 3) ^ (((0xdd >> 5) & 1) * 0x011b) ^ (((0xdd >> 5) & 2) * 0x011b) ^ (((0xdd >> 5) & 4) * 0x011b)) ^ ((0xdd << 2) ^ (((0xdd >> 6) & 1) * 0x011b) ^ (((0xdd >> 6) & 2) * 0x011b)) ^ 0xdd), (((0xde << 3) ^ (((0xde >> 5) & 1) * 0x011b) ^ (((0xde >> 5) & 2) * 0x011b) ^ (((0xde >> 5) & 4) * 0x011b)) ^ ((0xde << 2) ^ (((0xde >> 6) & 1) * 0x011b) ^ (((0xde >> 6) & 2) * 0x011b)) ^ 0xde), (((0xdf << 3) ^ (((0xdf >> 5) & 1) * 0x011b) ^ (((0xdf >> 5) & 2) * 0x011b) ^ (((0xdf >> 5) & 4) * 0x011b)) ^ ((0xdf << 2) ^ (((0xdf >> 6) & 1) * 0x011b) ^ (((0xdf >> 6) & 2) * 0x011b)) ^ 0xdf), (((0xe0 << 3) ^ (((0xe0 >> 5) & 1) * 0x011b) ^ (((0xe0 >> 5) & 2) * 0x011b) ^ (((0xe0 >> 5) & 4) * 0x011b)) ^ ((0xe0 << 2) ^ (((0xe0 >> 6) & 1) * 0x011b) ^ (((0xe0 >> 6) & 2) * 0x011b)) ^ 0xe0), (((0xe1 << 3) ^ (((0xe1 >> 5) & 1) * 0x011b) ^ (((0xe1 >> 5) & 2) * 0x011b) ^ (((0xe1 >> 5) & 4) * 0x011b)) ^ ((0xe1 << 2) ^ (((0xe1 >> 6) & 1) * 0x011b) ^ (((0xe1 >> 6) & 2) * 0x011b)) ^ 0xe1), (((0xe2 << 3) ^ (((0xe2 >> 5) & 1) * 0x011b) ^ (((0xe2 >> 5) & 2) * 0x011b) ^ (((0xe2 >> 5) & 4) * 0x011b)) ^ ((0xe2 << 2) ^ (((0xe2 >> 6) & 1) * 0x011b) ^ (((0xe2 >> 6) & 2) * 0x011b)) ^ 0xe2), (((0xe3 << 3) ^ (((0xe3 >> 5) & 1) * 0x011b) ^ (((0xe3 >> 5) & 2) * 0x011b) ^ (((0xe3 >> 5) & 4) * 0x011b)) ^ ((0xe3 << 2) ^ (((0xe3 >> 6) & 1) * 0x011b) ^ (((0xe3 >> 6) & 2) * 0x011b)) ^ 0xe3), (((0xe4 << 3) ^ (((0xe4 >> 5) & 1) * 0x011b) ^ (((0xe4 >> 5) & 2) * 0x011b) ^ (((0xe4 >> 5) & 4) * 0x011b)) ^ ((0xe4 << 2) ^ (((0xe4 >> 6) & 1) * 0x011b) ^ (((0xe4 >> 6) & 2) * 0x011b)) ^ 0xe4), (((0xe5 << 3) ^ (((0xe5 >> 5) & 1) * 0x011b) ^ (((0xe5 >> 5) & 2) * 0x011b) ^ (((0xe5 >> 5) & 4) * 0x011b)) ^ ((0xe5 << 2) ^ (((0xe5 >> 6) & 1) * 0x011b) ^ (((0xe5 >> 6) & 2) * 0x011b)) ^ 0xe5), (((0xe6 << 3) ^ (((0xe6 >> 5) & 1) * 0x011b) ^ (((0xe6 >> 5) & 2) * 0x011b) ^ (((0xe6 >> 5) & 4) * 0x011b)) ^ ((0xe6 << 2) ^ (((0xe6 >> 6) & 1) * 0x011b) ^ (((0xe6 >> 6) & 2) * 0x011b)) ^ 0xe6), (((0xe7 << 3) ^ (((0xe7 >> 5) & 1) * 0x011b) ^ (((0xe7 >> 5) & 2) * 0x011b) ^ (((0xe7 >> 5) & 4) * 0x011b)) ^ ((0xe7 << 2) ^ (((0xe7 >> 6) & 1) * 0x011b) ^ (((0xe7 >> 6) & 2) * 0x011b)) ^ 0xe7), (((0xe8 << 3) ^ (((0xe8 >> 5) & 1) * 0x011b) ^ (((0xe8 >> 5) & 2) * 0x011b) ^ (((0xe8 >> 5) & 4) * 0x011b)) ^ ((0xe8 << 2) ^ (((0xe8 >> 6) & 1) * 0x011b) ^ (((0xe8 >> 6) & 2) * 0x011b)) ^ 0xe8), (((0xe9 << 3) ^ (((0xe9 >> 5) & 1) * 0x011b) ^ (((0xe9 >> 5) & 2) * 0x011b) ^ (((0xe9 >> 5) & 4) * 0x011b)) ^ ((0xe9 << 2) ^ (((0xe9 >> 6) & 1) * 0x011b) ^ (((0xe9 >> 6) & 2) * 0x011b)) ^ 0xe9), (((0xea << 3) ^ (((0xea >> 5) & 1) * 0x011b) ^ (((0xea >> 5) & 2) * 0x011b) ^ (((0xea >> 5) & 4) * 0x011b)) ^ ((0xea << 2) ^ (((0xea >> 6) & 1) * 0x011b) ^ (((0xea >> 6) & 2) * 0x011b)) ^ 0xea), (((0xeb << 3) ^ (((0xeb >> 5) & 1) * 0x011b) ^ (((0xeb >> 5) & 2) * 0x011b) ^ (((0xeb >> 5) & 4) * 0x011b)) ^ ((0xeb << 2) ^ (((0xeb >> 6) & 1) * 0x011b) ^ (((0xeb >> 6) & 2) * 0x011b)) ^ 0xeb), (((0xec << 3) ^ (((0xec >> 5) & 1) * 0x011b) ^ (((0xec >> 5) & 2) * 0x011b) ^ (((0xec >> 5) & 4) * 0x011b)) ^ ((0xec << 2) ^ (((0xec >> 6) & 1) * 0x011b) ^ (((0xec >> 6) & 2) * 0x011b)) ^ 0xec), (((0xed << 3) ^ (((0xed >> 5) & 1) * 0x011b) ^ (((0xed >> 5) & 2) * 0x011b) ^ (((0xed >> 5) & 4) * 0x011b)) ^ ((0xed << 2) ^ (((0xed >> 6) & 1) * 0x011b) ^ (((0xed >> 6) & 2) * 0x011b)) ^ 0xed), (((0xee << 3) ^ (((0xee >> 5) & 1) * 0x011b) ^ (((0xee >> 5) & 2) * 0x011b) ^ (((0xee >> 5) & 4) * 0x011b)) ^ ((0xee << 2) ^ (((0xee >> 6) & 1) * 0x011b) ^ (((0xee >> 6) & 2) * 0x011b)) ^ 0xee), (((0xef << 3) ^ (((0xef >> 5) & 1) * 0x011b) ^ (((0xef >> 5) & 2) * 0x011b) ^ (((0xef >> 5) & 4) * 0x011b)) ^ ((0xef << 2) ^ (((0xef >> 6) & 1) * 0x011b) ^ (((0xef >> 6) & 2) * 0x011b)) ^ 0xef), (((0xf0 << 3) ^ (((0xf0 >> 5) & 1) * 0x011b) ^ (((0xf0 >> 5) & 2) * 0x011b) ^ (((0xf0 >> 5) & 4) * 0x011b)) ^ ((0xf0 << 2) ^ (((0xf0 >> 6) & 1) * 0x011b) ^ (((0xf0 >> 6) & 2) * 0x011b)) ^ 0xf0), (((0xf1 << 3) ^ (((0xf1 >> 5) & 1) * 0x011b) ^ (((0xf1 >> 5) & 2) * 0x011b) ^ (((0xf1 >> 5) & 4) * 0x011b)) ^ ((0xf1 << 2) ^ (((0xf1 >> 6) & 1) * 0x011b) ^ (((0xf1 >> 6) & 2) * 0x011b)) ^ 0xf1), (((0xf2 << 3) ^ (((0xf2 >> 5) & 1) * 0x011b) ^ (((0xf2 >> 5) & 2) * 0x011b) ^ (((0xf2 >> 5) & 4) * 0x011b)) ^ ((0xf2 << 2) ^ (((0xf2 >> 6) & 1) * 0x011b) ^ (((0xf2 >> 6) & 2) * 0x011b)) ^ 0xf2), (((0xf3 << 3) ^ (((0xf3 >> 5) & 1) * 0x011b) ^ (((0xf3 >> 5) & 2) * 0x011b) ^ (((0xf3 >> 5) & 4) * 0x011b)) ^ ((0xf3 << 2) ^ (((0xf3 >> 6) & 1) * 0x011b) ^ (((0xf3 >> 6) & 2) * 0x011b)) ^ 0xf3), (((0xf4 << 3) ^ (((0xf4 >> 5) & 1) * 0x011b) ^ (((0xf4 >> 5) & 2) * 0x011b) ^ (((0xf4 >> 5) & 4) * 0x011b)) ^ ((0xf4 << 2) ^ (((0xf4 >> 6) & 1) * 0x011b) ^ (((0xf4 >> 6) & 2) * 0x011b)) ^ 0xf4), (((0xf5 << 3) ^ (((0xf5 >> 5) & 1) * 0x011b) ^ (((0xf5 >> 5) & 2) * 0x011b) ^ (((0xf5 >> 5) & 4) * 0x011b)) ^ ((0xf5 << 2) ^ (((0xf5 >> 6) & 1) * 0x011b) ^ (((0xf5 >> 6) & 2) * 0x011b)) ^ 0xf5), (((0xf6 << 3) ^ (((0xf6 >> 5) & 1) * 0x011b) ^ (((0xf6 >> 5) & 2) * 0x011b) ^ (((0xf6 >> 5) & 4) * 0x011b)) ^ ((0xf6 << 2) ^ (((0xf6 >> 6) & 1) * 0x011b) ^ (((0xf6 >> 6) & 2) * 0x011b)) ^ 0xf6), (((0xf7 << 3) ^ (((0xf7 >> 5) & 1) * 0x011b) ^ (((0xf7 >> 5) & 2) * 0x011b) ^ (((0xf7 >> 5) & 4) * 0x011b)) ^ ((0xf7 << 2) ^ (((0xf7 >> 6) & 1) * 0x011b) ^ (((0xf7 >> 6) & 2) * 0x011b)) ^ 0xf7), (((0xf8 << 3) ^ (((0xf8 >> 5) & 1) * 0x011b) ^ (((0xf8 >> 5) & 2) * 0x011b) ^ (((0xf8 >> 5) & 4) * 0x011b)) ^ ((0xf8 << 2) ^ (((0xf8 >> 6) & 1) * 0x011b) ^ (((0xf8 >> 6) & 2) * 0x011b)) ^ 0xf8), (((0xf9 << 3) ^ (((0xf9 >> 5) & 1) * 0x011b) ^ (((0xf9 >> 5) & 2) * 0x011b) ^ (((0xf9 >> 5) & 4) * 0x011b)) ^ ((0xf9 << 2) ^ (((0xf9 >> 6) & 1) * 0x011b) ^ (((0xf9 >> 6) & 2) * 0x011b)) ^ 0xf9), (((0xfa << 3) ^ (((0xfa >> 5) & 1) * 0x011b) ^ (((0xfa >> 5) & 2) * 0x011b) ^ (((0xfa >> 5) & 4) * 0x011b)) ^ ((0xfa << 2) ^ (((0xfa >> 6) & 1) * 0x011b) ^ (((0xfa >> 6) & 2) * 0x011b)) ^ 0xfa), (((0xfb << 3) ^ (((0xfb >> 5) & 1) * 0x011b) ^ (((0xfb >> 5) & 2) * 0x011b) ^ (((0xfb >> 5) & 4) * 0x011b)) ^ ((0xfb << 2) ^ (((0xfb >> 6) & 1) * 0x011b) ^ (((0xfb >> 6) & 2) * 0x011b)) ^ 0xfb), (((0xfc << 3) ^ (((0xfc >> 5) & 1) * 0x011b) ^ (((0xfc >> 5) & 2) * 0x011b) ^ (((0xfc >> 5) & 4) * 0x011b)) ^ ((0xfc << 2) ^ (((0xfc >> 6) & 1) * 0x011b) ^ (((0xfc >> 6) & 2) * 0x011b)) ^ 0xfc), (((0xfd << 3) ^ (((0xfd >> 5) & 1) * 0x011b) ^ (((0xfd >> 5) & 2) * 0x011b) ^ (((0xfd >> 5) & 4) * 0x011b)) ^ ((0xfd << 2) ^ (((0xfd >> 6) & 1) * 0x011b) ^ (((0xfd >> 6) & 2) * 0x011b)) ^ 0xfd), (((0xfe << 3) ^ (((0xfe >> 5) & 1) * 0x011b) ^ (((0xfe >> 5) & 2) * 0x011b) ^ (((0xfe >> 5) & 4) * 0x011b)) ^ ((0xfe << 2) ^ (((0xfe >> 6) & 1) * 0x011b) ^ (((0xfe >> 6) & 2) * 0x011b)) ^ 0xfe), (((0xff << 3) ^ (((0xff >> 5) & 1) * 0x011b) ^ (((0xff >> 5) & 2) * 0x011b) ^ (((0xff >> 5) & 4) * 0x011b)) ^ ((0xff << 2) ^ (((0xff >> 6) & 1) * 0x011b) ^ (((0xff >> 6) & 2) * 0x011b)) ^ 0xff) };
static const uint_8t gfmul_e[256] = { (((0x00 << 3) ^ (((0x00 >> 5) & 1) * 0x011b) ^ (((0x00 >> 5) & 2) * 0x011b) ^ (((0x00 >> 5) & 4) * 0x011b)) ^ ((0x00 << 2) ^ (((0x00 >> 6) & 1) * 0x011b) ^ (((0x00 >> 6) & 2) * 0x011b)) ^ ((0x00 << 1) ^ (((0x00 >> 7) & 1) * 0x011b))), (((0x01 << 3) ^ (((0x01 >> 5) & 1) * 0x011b) ^ (((0x01 >> 5) & 2) * 0x011b) ^ (((0x01 >> 5) & 4) * 0x011b)) ^ ((0x01 << 2) ^ (((0x01 >> 6) & 1) * 0x011b) ^ (((0x01 >> 6) & 2) * 0x011b)) ^ ((0x01 << 1) ^ (((0x01 >> 7) & 1) * 0x011b))), (((0x02 << 3) ^ (((0x02 >> 5) & 1) * 0x011b) ^ (((0x02 >> 5) & 2) * 0x011b) ^ (((0x02 >> 5) & 4) * 0x011b)) ^ ((0x02 << 2) ^ (((0x02 >> 6) & 1) * 0x011b) ^ (((0x02 >> 6) & 2) * 0x011b)) ^ ((0x02 << 1) ^ (((0x02 >> 7) & 1) * 0x011b))), (((0x03 << 3) ^ (((0x03 >> 5) & 1) * 0x011b) ^ (((0x03 >> 5) & 2) * 0x011b) ^ (((0x03 >> 5) & 4) * 0x011b)) ^ ((0x03 << 2) ^ (((0x03 >> 6) & 1) * 0x011b) ^ (((0x03 >> 6) & 2) * 0x011b)) ^ ((0x03 << 1) ^ (((0x03 >> 7) & 1) * 0x011b))), (((0x04 << 3) ^ (((0x04 >> 5) & 1) * 0x011b) ^ (((0x04 >> 5) & 2) * 0x011b) ^ (((0x04 >> 5) & 4) * 0x011b)) ^ ((0x04 << 2) ^ (((0x04 >> 6) & 1) * 0x011b) ^ (((0x04 >> 6) & 2) * 0x011b)) ^ ((0x04 << 1) ^ (((0x04 >> 7) & 1) * 0x011b))), (((0x05 << 3) ^ (((0x05 >> 5) & 1) * 0x011b) ^ (((0x05 >> 5) & 2) * 0x011b) ^ (((0x05 >> 5) & 4) * 0x011b)) ^ ((0x05 << 2) ^ (((0x05 >> 6) & 1) * 0x011b) ^ (((0x05 >> 6) & 2) * 0x011b)) ^ ((0x05 << 1) ^ (((0x05 >> 7) & 1) * 0x011b))), (((0x06 << 3) ^ (((0x06 >> 5) & 1) * 0x011b) ^ (((0x06 >> 5) & 2) * 0x011b) ^ (((0x06 >> 5) & 4) * 0x011b)) ^ ((0x06 << 2) ^ (((0x06 >> 6) & 1) * 0x011b) ^ (((0x06 >> 6) & 2) * 0x011b)) ^ ((0x06 << 1) ^ (((0x06 >> 7) & 1) * 0x011b))), (((0x07 << 3) ^ (((0x07 >> 5) & 1) * 0x011b) ^ (((0x07 >> 5) & 2) * 0x011b) ^ (((0x07 >> 5) & 4) * 0x011b)) ^ ((0x07 << 2) ^ (((0x07 >> 6) & 1) * 0x011b) ^ (((0x07 >> 6) & 2) * 0x011b)) ^ ((0x07 << 1) ^ (((0x07 >> 7) & 1) * 0x011b))), (((0x08 << 3) ^ (((0x08 >> 5) & 1) * 0x011b) ^ (((0x08 >> 5) & 2) * 0x011b) ^ (((0x08 >> 5) & 4) * 0x011b)) ^ ((0x08 << 2) ^ (((0x08 >> 6) & 1) * 0x011b) ^ (((0x08 >> 6) & 2) * 0x011b)) ^ ((0x08 << 1) ^ (((0x08 >> 7) & 1) * 0x011b))), (((0x09 << 3) ^ (((0x09 >> 5) & 1) * 0x011b) ^ (((0x09 >> 5) & 2) * 0x011b) ^ (((0x09 >> 5) & 4) * 0x011b)) ^ ((0x09 << 2) ^ (((0x09 >> 6) & 1) * 0x011b) ^ (((0x09 >> 6) & 2) * 0x011b)) ^ ((0x09 << 1) ^ (((0x09 >> 7) & 1) * 0x011b))), (((0x0a << 3) ^ (((0x0a >> 5) & 1) * 0x011b) ^ (((0x0a >> 5) & 2) * 0x011b) ^ (((0x0a >> 5) & 4) * 0x011b)) ^ ((0x0a << 2) ^ (((0x0a >> 6) & 1) * 0x011b) ^ (((0x0a >> 6) & 2) * 0x011b)) ^ ((0x0a << 1) ^ (((0x0a >> 7) & 1) * 0x011b))), (((0x0b << 3) ^ (((0x0b >> 5) & 1) * 0x011b) ^ (((0x0b >> 5) & 2) * 0x011b) ^ (((0x0b >> 5) & 4) * 0x011b)) ^ ((0x0b << 2) ^ (((0x0b >> 6) & 1) * 0x011b) ^ (((0x0b >> 6) & 2) * 0x011b)) ^ ((0x0b << 1) ^ (((0x0b >> 7) & 1) * 0x011b))), (((0x0c << 3) ^ (((0x0c >> 5) & 1) * 0x011b) ^ (((0x0c >> 5) & 2) * 0x011b) ^ (((0x0c >> 5) & 4) * 0x011b)) ^ ((0x0c << 2) ^ (((0x0c >> 6) & 1) * 0x011b) ^ (((0x0c >> 6) & 2) * 0x011b)) ^ ((0x0c << 1) ^ (((0x0c >> 7) & 1) * 0x011b))), (((0x0d << 3) ^ (((0x0d >> 5) & 1) * 0x011b) ^ (((0x0d >> 5) & 2) * 0x011b) ^ (((0x0d >> 5) & 4) * 0x011b)) ^ ((0x0d << 2) ^ (((0x0d >> 6) & 1) * 0x011b) ^ (((0x0d >> 6) & 2) * 0x011b)) ^ ((0x0d << 1) ^ (((0x0d >> 7) & 1) * 0x011b))), (((0x0e << 3) ^ (((0x0e >> 5) & 1) * 0x011b) ^ (((0x0e >> 5) & 2) * 0x011b) ^ (((0x0e >> 5) & 4) * 0x011b)) ^ ((0x0e << 2) ^ (((0x0e >> 6) & 1) * 0x011b) ^ (((0x0e >> 6) & 2) * 0x011b)) ^ ((0x0e << 1) ^ (((0x0e >> 7) & 1) * 0x011b))), (((0x0f << 3) ^ (((0x0f >> 5) & 1) * 0x011b) ^ (((0x0f >> 5) & 2) * 0x011b) ^ (((0x0f >> 5) & 4) * 0x011b)) ^ ((0x0f << 2) ^ (((0x0f >> 6) & 1) * 0x011b) ^ (((0x0f >> 6) & 2) * 0x011b)) ^ ((0x0f << 1) ^ (((0x0f >> 7) & 1) * 0x011b))), (((0x10 << 3) ^ (((0x10 >> 5) & 1) * 0x011b) ^ (((0x10 >> 5) & 2) * 0x011b) ^ (((0x10 >> 5) & 4) * 0x011b)) ^ ((0x10 << 2) ^ (((0x10 >> 6) & 1) * 0x011b) ^ (((0x10 >> 6) & 2) * 0x011b)) ^ ((0x10 << 1) ^ (((0x10 >> 7) & 1) * 0x011b))), (((0x11 << 3) ^ (((0x11 >> 5) & 1) * 0x011b) ^ (((0x11 >> 5) & 2) * 0x011b) ^ (((0x11 >> 5) & 4) * 0x011b)) ^ ((0x11 << 2) ^ (((0x11 >> 6) & 1) * 0x011b) ^ (((0x11 >> 6) & 2) * 0x011b)) ^ ((0x11 << 1) ^ (((0x11 >> 7) & 1) * 0x011b))), (((0x12 << 3) ^ (((0x12 >> 5) & 1) * 0x011b) ^ (((0x12 >> 5) & 2) * 0x011b) ^ (((0x12 >> 5) & 4) * 0x011b)) ^ ((0x12 << 2) ^ (((0x12 >> 6) & 1) * 0x011b) ^ (((0x12 >> 6) & 2) * 0x011b)) ^ ((0x12 << 1) ^ (((0x12 >> 7) & 1) * 0x011b))), (((0x13 << 3) ^ (((0x13 >> 5) & 1) * 0x011b) ^ (((0x13 >> 5) & 2) * 0x011b) ^ (((0x13 >> 5) & 4) * 0x011b)) ^ ((0x13 << 2) ^ (((0x13 >> 6) & 1) * 0x011b) ^ (((0x13 >> 6) & 2) * 0x011b)) ^ ((0x13 << 1) ^ (((0x13 >> 7) & 1) * 0x011b))), (((0x14 << 3) ^ (((0x14 >> 5) & 1) * 0x011b) ^ (((0x14 >> 5) & 2) * 0x011b) ^ (((0x14 >> 5) & 4) * 0x011b)) ^ ((0x14 << 2) ^ (((0x14 >> 6) & 1) * 0x011b) ^ (((0x14 >> 6) & 2) * 0x011b)) ^ ((0x14 << 1) ^ (((0x14 >> 7) & 1) * 0x011b))), (((0x15 << 3) ^ (((0x15 >> 5) & 1) * 0x011b) ^ (((0x15 >> 5) & 2) * 0x011b) ^ (((0x15 >> 5) & 4) * 0x011b)) ^ ((0x15 << 2) ^ (((0x15 >> 6) & 1) * 0x011b) ^ (((0x15 >> 6) & 2) * 0x011b)) ^ ((0x15 << 1) ^ (((0x15 >> 7) & 1) * 0x011b))), (((0x16 << 3) ^ (((0x16 >> 5) & 1) * 0x011b) ^ (((0x16 >> 5) & 2) * 0x011b) ^ (((0x16 >> 5) & 4) * 0x011b)) ^ ((0x16 << 2) ^ (((0x16 >> 6) & 1) * 0x011b) ^ (((0x16 >> 6) & 2) * 0x011b)) ^ ((0x16 << 1) ^ (((0x16 >> 7) & 1) * 0x011b))), (((0x17 << 3) ^ (((0x17 >> 5) & 1) * 0x011b) ^ (((0x17 >> 5) & 2) * 0x011b) ^ (((0x17 >> 5) & 4) * 0x011b)) ^ ((0x17 << 2) ^ (((0x17 >> 6) & 1) * 0x011b) ^ (((0x17 >> 6) & 2) * 0x011b)) ^ ((0x17 << 1) ^ (((0x17 >> 7) & 1) * 0x011b))), (((0x18 << 3) ^ (((0x18 >> 5) & 1) * 0x011b) ^ (((0x18 >> 5) & 2) * 0x011b) ^ (((0x18 >> 5) & 4) * 0x011b)) ^ ((0x18 << 2) ^ (((0x18 >> 6) & 1) * 0x011b) ^ (((0x18 >> 6) & 2) * 0x011b)) ^ ((0x18 << 1) ^ (((0x18 >> 7) & 1) * 0x011b))), (((0x19 << 3) ^ (((0x19 >> 5) & 1) * 0x011b) ^ (((0x19 >> 5) & 2) * 0x011b) ^ (((0x19 >> 5) & 4) * 0x011b)) ^ ((0x19 << 2) ^ (((0x19 >> 6) & 1) * 0x011b) ^ (((0x19 >> 6) & 2) * 0x011b)) ^ ((0x19 << 1) ^ (((0x19 >> 7) & 1) * 0x011b))), (((0x1a << 3) ^ (((0x1a >> 5) & 1) * 0x011b) ^ (((0x1a >> 5) & 2) * 0x011b) ^ (((0x1a >> 5) & 4) * 0x011b)) ^ ((0x1a << 2) ^ (((0x1a >> 6) & 1) * 0x011b) ^ (((0x1a >> 6) & 2) * 0x011b)) ^ ((0x1a << 1) ^ (((0x1a >> 7) & 1) * 0x011b))), (((0x1b << 3) ^ (((0x1b >> 5) & 1) * 0x011b) ^ (((0x1b >> 5) & 2) * 0x011b) ^ (((0x1b >> 5) & 4) * 0x011b)) ^ ((0x1b << 2) ^ (((0x1b >> 6) & 1) * 0x011b) ^ (((0x1b >> 6) & 2) * 0x011b)) ^ ((0x1b << 1) ^ (((0x1b >> 7) & 1) * 0x011b))), (((0x1c << 3) ^ (((0x1c >> 5) & 1) * 0x011b) ^ (((0x1c >> 5) & 2) * 0x011b) ^ (((0x1c >> 5) & 4) * 0x011b)) ^ ((0x1c << 2) ^ (((0x1c >> 6) & 1) * 0x011b) ^ (((0x1c >> 6) & 2) * 0x011b)) ^ ((0x1c << 1) ^ (((0x1c >> 7) & 1) * 0x011b))), (((0x1d << 3) ^ (((0x1d >> 5) & 1) * 0x011b) ^ (((0x1d >> 5) & 2) * 0x011b) ^ (((0x1d >> 5) & 4) * 0x011b)) ^ ((0x1d << 2) ^ (((0x1d >> 6) & 1) * 0x011b) ^ (((0x1d >> 6) & 2) * 0x011b)) ^ ((0x1d << 1) ^ (((0x1d >> 7) & 1) * 0x011b))), (((0x1e << 3) ^ (((0x1e >> 5) & 1) * 0x011b) ^ (((0x1e >> 5) & 2) * 0x011b) ^ (((0x1e >> 5) & 4) * 0x011b)) ^ ((0x1e << 2) ^ (((0x1e >> 6) & 1) * 0x011b) ^ (((0x1e >> 6) & 2) * 0x011b)) ^ ((0x1e << 1) ^ (((0x1e >> 7) & 1) * 0x011b))), (((0x1f << 3) ^ (((0x1f >> 5) & 1) * 0x011b) ^ (((0x1f >> 5) & 2) * 0x011b) ^ (((0x1f >> 5) & 4) * 0x011b)) ^ ((0x1f << 2) ^ (((0x1f >> 6) & 1) * 0x011b) ^ (((0x1f >> 6) & 2) * 0x011b)) ^ ((0x1f << 1) ^ (((0x1f >> 7) & 1) * 0x011b))), (((0x20 << 3) ^ (((0x20 >> 5) & 1) * 0x011b) ^ (((0x20 >> 5) & 2) * 0x011b) ^ (((0x20 >> 5) & 4) * 0x011b)) ^ ((0x20 << 2) ^ (((0x20 >> 6) & 1) * 0x011b) ^ (((0x20 >> 6) & 2) * 0x011b)) ^ ((0x20 << 1) ^ (((0x20 >> 7) & 1) * 0x011b))), (((0x21 << 3) ^ (((0x21 >> 5) & 1) * 0x011b) ^ (((0x21 >> 5) & 2) * 0x011b) ^ (((0x21 >> 5) & 4) * 0x011b)) ^ ((0x21 << 2) ^ (((0x21 >> 6) & 1) * 0x011b) ^ (((0x21 >> 6) & 2) * 0x011b)) ^ ((0x21 << 1) ^ (((0x21 >> 7) & 1) * 0x011b))), (((0x22 << 3) ^ (((0x22 >> 5) & 1) * 0x011b) ^ (((0x22 >> 5) & 2) * 0x011b) ^ (((0x22 >> 5) & 4) * 0x011b)) ^ ((0x22 << 2) ^ (((0x22 >> 6) & 1) * 0x011b) ^ (((0x22 >> 6) & 2) * 0x011b)) ^ ((0x22 << 1) ^ (((0x22 >> 7) & 1) * 0x011b))), (((0x23 << 3) ^ (((0x23 >> 5) & 1) * 0x011b) ^ (((0x23 >> 5) & 2) * 0x011b) ^ (((0x23 >> 5) & 4) * 0x011b)) ^ ((0x23 << 2) ^ (((0x23 >> 6) & 1) * 0x011b) ^ (((0x23 >> 6) & 2) * 0x011b)) ^ ((0x23 << 1) ^ (((0x23 >> 7) & 1) * 0x011b))), (((0x24 << 3) ^ (((0x24 >> 5) & 1) * 0x011b) ^ (((0x24 >> 5) & 2) * 0x011b) ^ (((0x24 >> 5) & 4) * 0x011b)) ^ ((0x24 << 2) ^ (((0x24 >> 6) & 1) * 0x011b) ^ (((0x24 >> 6) & 2) * 0x011b)) ^ ((0x24 << 1) ^ (((0x24 >> 7) & 1) * 0x011b))), (((0x25 << 3) ^ (((0x25 >> 5) & 1) * 0x011b) ^ (((0x25 >> 5) & 2) * 0x011b) ^ (((0x25 >> 5) & 4) * 0x011b)) ^ ((0x25 << 2) ^ (((0x25 >> 6) & 1) * 0x011b) ^ (((0x25 >> 6) & 2) * 0x011b)) ^ ((0x25 << 1) ^ (((0x25 >> 7) & 1) * 0x011b))), (((0x26 << 3) ^ (((0x26 >> 5) & 1) * 0x011b) ^ (((0x26 >> 5) & 2) * 0x011b) ^ (((0x26 >> 5) & 4) * 0x011b)) ^ ((0x26 << 2) ^ (((0x26 >> 6) & 1) * 0x011b) ^ (((0x26 >> 6) & 2) * 0x011b)) ^ ((0x26 << 1) ^ (((0x26 >> 7) & 1) * 0x011b))), (((0x27 << 3) ^ (((0x27 >> 5) & 1) * 0x011b) ^ (((0x27 >> 5) & 2) * 0x011b) ^ (((0x27 >> 5) & 4) * 0x011b)) ^ ((0x27 << 2) ^ (((0x27 >> 6) & 1) * 0x011b) ^ (((0x27 >> 6) & 2) * 0x011b)) ^ ((0x27 << 1) ^ (((0x27 >> 7) & 1) * 0x011b))), (((0x28 << 3) ^ (((0x28 >> 5) & 1) * 0x011b) ^ (((0x28 >> 5) & 2) * 0x011b) ^ (((0x28 >> 5) & 4) * 0x011b)) ^ ((0x28 << 2) ^ (((0x28 >> 6) & 1) * 0x011b) ^ (((0x28 >> 6) & 2) * 0x011b)) ^ ((0x28 << 1) ^ (((0x28 >> 7) & 1) * 0x011b))), (((0x29 << 3) ^ (((0x29 >> 5) & 1) * 0x011b) ^ (((0x29 >> 5) & 2) * 0x011b) ^ (((0x29 >> 5) & 4) * 0x011b)) ^ ((0x29 << 2) ^ (((0x29 >> 6) & 1) * 0x011b) ^ (((0x29 >> 6) & 2) * 0x011b)) ^ ((0x29 << 1) ^ (((0x29 >> 7) & 1) * 0x011b))), (((0x2a << 3) ^ (((0x2a >> 5) & 1) * 0x011b) ^ (((0x2a >> 5) & 2) * 0x011b) ^ (((0x2a >> 5) & 4) * 0x011b)) ^ ((0x2a << 2) ^ (((0x2a >> 6) & 1) * 0x011b) ^ (((0x2a >> 6) & 2) * 0x011b)) ^ ((0x2a << 1) ^ (((0x2a >> 7) & 1) * 0x011b))), (((0x2b << 3) ^ (((0x2b >> 5) & 1) * 0x011b) ^ (((0x2b >> 5) & 2) * 0x011b) ^ (((0x2b >> 5) & 4) * 0x011b)) ^ ((0x2b << 2) ^ (((0x2b >> 6) & 1) * 0x011b) ^ (((0x2b >> 6) & 2) * 0x011b)) ^ ((0x2b << 1) ^ (((0x2b >> 7) & 1) * 0x011b))), (((0x2c << 3) ^ (((0x2c >> 5) & 1) * 0x011b) ^ (((0x2c >> 5) & 2) * 0x011b) ^ (((0x2c >> 5) & 4) * 0x011b)) ^ ((0x2c << 2) ^ (((0x2c >> 6) & 1) * 0x011b) ^ (((0x2c >> 6) & 2) * 0x011b)) ^ ((0x2c << 1) ^ (((0x2c >> 7) & 1) * 0x011b))), (((0x2d << 3) ^ (((0x2d >> 5) & 1) * 0x011b) ^ (((0x2d >> 5) & 2) * 0x011b) ^ (((0x2d >> 5) & 4) * 0x011b)) ^ ((0x2d << 2) ^ (((0x2d >> 6) & 1) * 0x011b) ^ (((0x2d >> 6) & 2) * 0x011b)) ^ ((0x2d << 1) ^ (((0x2d >> 7) & 1) * 0x011b))), (((0x2e << 3) ^ (((0x2e >> 5) & 1) * 0x011b) ^ (((0x2e >> 5) & 2) * 0x011b) ^ (((0x2e >> 5) & 4) * 0x011b)) ^ ((0x2e << 2) ^ (((0x2e >> 6) & 1) * 0x011b) ^ (((0x2e >> 6) & 2) * 0x011b)) ^ ((0x2e << 1) ^ (((0x2e >> 7) & 1) * 0x011b))), (((0x2f << 3) ^ (((0x2f >> 5) & 1) * 0x011b) ^ (((0x2f >> 5) & 2) * 0x011b) ^ (((0x2f >> 5) & 4) * 0x011b)) ^ ((0x2f << 2) ^ (((0x2f >> 6) & 1) * 0x011b) ^ (((0x2f >> 6) & 2) * 0x011b)) ^ ((0x2f << 1) ^ (((0x2f >> 7) & 1) * 0x011b))), (((0x30 << 3) ^ (((0x30 >> 5) & 1) * 0x011b) ^ (((0x30 >> 5) & 2) * 0x011b) ^ (((0x30 >> 5) & 4) * 0x011b)) ^ ((0x30 << 2) ^ (((0x30 >> 6) & 1) * 0x011b) ^ (((0x30 >> 6) & 2) * 0x011b)) ^ ((0x30 << 1) ^ (((0x30 >> 7) & 1) * 0x011b))), (((0x31 << 3) ^ (((0x31 >> 5) & 1) * 0x011b) ^ (((0x31 >> 5) & 2) * 0x011b) ^ (((0x31 >> 5) & 4) * 0x011b)) ^ ((0x31 << 2) ^ (((0x31 >> 6) & 1) * 0x011b) ^ (((0x31 >> 6) & 2) * 0x011b)) ^ ((0x31 << 1) ^ (((0x31 >> 7) & 1) * 0x011b))), (((0x32 << 3) ^ (((0x32 >> 5) & 1) * 0x011b) ^ (((0x32 >> 5) & 2) * 0x011b) ^ (((0x32 >> 5) & 4) * 0x011b)) ^ ((0x32 << 2) ^ (((0x32 >> 6) & 1) * 0x011b) ^ (((0x32 >> 6) & 2) * 0x011b)) ^ ((0x32 << 1) ^ (((0x32 >> 7) & 1) * 0x011b))), (((0x33 << 3) ^ (((0x33 >> 5) & 1) * 0x011b) ^ (((0x33 >> 5) & 2) * 0x011b) ^ (((0x33 >> 5) & 4) * 0x011b)) ^ ((0x33 << 2) ^ (((0x33 >> 6) & 1) * 0x011b) ^ (((0x33 >> 6) & 2) * 0x011b)) ^ ((0x33 << 1) ^ (((0x33 >> 7) & 1) * 0x011b))), (((0x34 << 3) ^ (((0x34 >> 5) & 1) * 0x011b) ^ (((0x34 >> 5) & 2) * 0x011b) ^ (((0x34 >> 5) & 4) * 0x011b)) ^ ((0x34 << 2) ^ (((0x34 >> 6) & 1) * 0x011b) ^ (((0x34 >> 6) & 2) * 0x011b)) ^ ((0x34 << 1) ^ (((0x34 >> 7) & 1) * 0x011b))), (((0x35 << 3) ^ (((0x35 >> 5) & 1) * 0x011b) ^ (((0x35 >> 5) & 2) * 0x011b) ^ (((0x35 >> 5) & 4) * 0x011b)) ^ ((0x35 << 2) ^ (((0x35 >> 6) & 1) * 0x011b) ^ (((0x35 >> 6) & 2) * 0x011b)) ^ ((0x35 << 1) ^ (((0x35 >> 7) & 1) * 0x011b))), (((0x36 << 3) ^ (((0x36 >> 5) & 1) * 0x011b) ^ (((0x36 >> 5) & 2) * 0x011b) ^ (((0x36 >> 5) & 4) * 0x011b)) ^ ((0x36 << 2) ^ (((0x36 >> 6) & 1) * 0x011b) ^ (((0x36 >> 6) & 2) * 0x011b)) ^ ((0x36 << 1) ^ (((0x36 >> 7) & 1) * 0x011b))), (((0x37 << 3) ^ (((0x37 >> 5) & 1) * 0x011b) ^ (((0x37 >> 5) & 2) * 0x011b) ^ (((0x37 >> 5) & 4) * 0x011b)) ^ ((0x37 << 2) ^ (((0x37 >> 6) & 1) * 0x011b) ^ (((0x37 >> 6) & 2) * 0x011b)) ^ ((0x37 << 1) ^ (((0x37 >> 7) & 1) * 0x011b))), (((0x38 << 3) ^ (((0x38 >> 5) & 1) * 0x011b) ^ (((0x38 >> 5) & 2) * 0x011b) ^ (((0x38 >> 5) & 4) * 0x011b)) ^ ((0x38 << 2) ^ (((0x38 >> 6) & 1) * 0x011b) ^ (((0x38 >> 6) & 2) * 0x011b)) ^ ((0x38 << 1) ^ (((0x38 >> 7) & 1) * 0x011b))), (((0x39 << 3) ^ (((0x39 >> 5) & 1) * 0x011b) ^ (((0x39 >> 5) & 2) * 0x011b) ^ (((0x39 >> 5) & 4) * 0x011b)) ^ ((0x39 << 2) ^ (((0x39 >> 6) & 1) * 0x011b) ^ (((0x39 >> 6) & 2) * 0x011b)) ^ ((0x39 << 1) ^ (((0x39 >> 7) & 1) * 0x011b))), (((0x3a << 3) ^ (((0x3a >> 5) & 1) * 0x011b) ^ (((0x3a >> 5) & 2) * 0x011b) ^ (((0x3a >> 5) & 4) * 0x011b)) ^ ((0x3a << 2) ^ (((0x3a >> 6) & 1) * 0x011b) ^ (((0x3a >> 6) & 2) * 0x011b)) ^ ((0x3a << 1) ^ (((0x3a >> 7) & 1) * 0x011b))), (((0x3b << 3) ^ (((0x3b >> 5) & 1) * 0x011b) ^ (((0x3b >> 5) & 2) * 0x011b) ^ (((0x3b >> 5) & 4) * 0x011b)) ^ ((0x3b << 2) ^ (((0x3b >> 6) & 1) * 0x011b) ^ (((0x3b >> 6) & 2) * 0x011b)) ^ ((0x3b << 1) ^ (((0x3b >> 7) & 1) * 0x011b))), (((0x3c << 3) ^ (((0x3c >> 5) & 1) * 0x011b) ^ (((0x3c >> 5) & 2) * 0x011b) ^ (((0x3c >> 5) & 4) * 0x011b)) ^ ((0x3c << 2) ^ (((0x3c >> 6) & 1) * 0x011b) ^ (((0x3c >> 6) & 2) * 0x011b)) ^ ((0x3c << 1) ^ (((0x3c >> 7) & 1) * 0x011b))), (((0x3d << 3) ^ (((0x3d >> 5) & 1) * 0x011b) ^ (((0x3d >> 5) & 2) * 0x011b) ^ (((0x3d >> 5) & 4) * 0x011b)) ^ ((0x3d << 2) ^ (((0x3d >> 6) & 1) * 0x011b) ^ (((0x3d >> 6) & 2) * 0x011b)) ^ ((0x3d << 1) ^ (((0x3d >> 7) & 1) * 0x011b))), (((0x3e << 3) ^ (((0x3e >> 5) & 1) * 0x011b) ^ (((0x3e >> 5) & 2) * 0x011b) ^ (((0x3e >> 5) & 4) * 0x011b)) ^ ((0x3e << 2) ^ (((0x3e >> 6) & 1) * 0x011b) ^ (((0x3e >> 6) & 2) * 0x011b)) ^ ((0x3e << 1) ^ (((0x3e >> 7) & 1) * 0x011b))), (((0x3f << 3) ^ (((0x3f >> 5) & 1) * 0x011b) ^ (((0x3f >> 5) & 2) * 0x011b) ^ (((0x3f >> 5) & 4) * 0x011b)) ^ ((0x3f << 2) ^ (((0x3f >> 6) & 1) * 0x011b) ^ (((0x3f >> 6) & 2) * 0x011b)) ^ ((0x3f << 1) ^ (((0x3f >> 7) & 1) * 0x011b))), (((0x40 << 3) ^ (((0x40 >> 5) & 1) * 0x011b) ^ (((0x40 >> 5) & 2) * 0x011b) ^ (((0x40 >> 5) & 4) * 0x011b)) ^ ((0x40 << 2) ^ (((0x40 >> 6) & 1) * 0x011b) ^ (((0x40 >> 6) & 2) * 0x011b)) ^ ((0x40 << 1) ^ (((0x40 >> 7) & 1) * 0x011b))), (((0x41 << 3) ^ (((0x41 >> 5) & 1) * 0x011b) ^ (((0x41 >> 5) & 2) * 0x011b) ^ (((0x41 >> 5) & 4) * 0x011b)) ^ ((0x41 << 2) ^ (((0x41 >> 6) & 1) * 0x011b) ^ (((0x41 >> 6) & 2) * 0x011b)) ^ ((0x41 << 1) ^ (((0x41 >> 7) & 1) * 0x011b))), (((0x42 << 3) ^ (((0x42 >> 5) & 1) * 0x011b) ^ (((0x42 >> 5) & 2) * 0x011b) ^ (((0x42 >> 5) & 4) * 0x011b)) ^ ((0x42 << 2) ^ (((0x42 >> 6) & 1) * 0x011b) ^ (((0x42 >> 6) & 2) * 0x011b)) ^ ((0x42 << 1) ^ (((0x42 >> 7) & 1) * 0x011b))), (((0x43 << 3) ^ (((0x43 >> 5) & 1) * 0x011b) ^ (((0x43 >> 5) & 2) * 0x011b) ^ (((0x43 >> 5) & 4) * 0x011b)) ^ ((0x43 << 2) ^ (((0x43 >> 6) & 1) * 0x011b) ^ (((0x43 >> 6) & 2) * 0x011b)) ^ ((0x43 << 1) ^ (((0x43 >> 7) & 1) * 0x011b))), (((0x44 << 3) ^ (((0x44 >> 5) & 1) * 0x011b) ^ (((0x44 >> 5) & 2) * 0x011b) ^ (((0x44 >> 5) & 4) * 0x011b)) ^ ((0x44 << 2) ^ (((0x44 >> 6) & 1) * 0x011b) ^ (((0x44 >> 6) & 2) * 0x011b)) ^ ((0x44 << 1) ^ (((0x44 >> 7) & 1) * 0x011b))), (((0x45 << 3) ^ (((0x45 >> 5) & 1) * 0x011b) ^ (((0x45 >> 5) & 2) * 0x011b) ^ (((0x45 >> 5) & 4) * 0x011b)) ^ ((0x45 << 2) ^ (((0x45 >> 6) & 1) * 0x011b) ^ (((0x45 >> 6) & 2) * 0x011b)) ^ ((0x45 << 1) ^ (((0x45 >> 7) & 1) * 0x011b))), (((0x46 << 3) ^ (((0x46 >> 5) & 1) * 0x011b) ^ (((0x46 >> 5) & 2) * 0x011b) ^ (((0x46 >> 5) & 4) * 0x011b)) ^ ((0x46 << 2) ^ (((0x46 >> 6) & 1) * 0x011b) ^ (((0x46 >> 6) & 2) * 0x011b)) ^ ((0x46 << 1) ^ (((0x46 >> 7) & 1) * 0x011b))), (((0x47 << 3) ^ (((0x47 >> 5) & 1) * 0x011b) ^ (((0x47 >> 5) & 2) * 0x011b) ^ (((0x47 >> 5) & 4) * 0x011b)) ^ ((0x47 << 2) ^ (((0x47 >> 6) & 1) * 0x011b) ^ (((0x47 >> 6) & 2) * 0x011b)) ^ ((0x47 << 1) ^ (((0x47 >> 7) & 1) * 0x011b))), (((0x48 << 3) ^ (((0x48 >> 5) & 1) * 0x011b) ^ (((0x48 >> 5) & 2) * 0x011b) ^ (((0x48 >> 5) & 4) * 0x011b)) ^ ((0x48 << 2) ^ (((0x48 >> 6) & 1) * 0x011b) ^ (((0x48 >> 6) & 2) * 0x011b)) ^ ((0x48 << 1) ^ (((0x48 >> 7) & 1) * 0x011b))), (((0x49 << 3) ^ (((0x49 >> 5) & 1) * 0x011b) ^ (((0x49 >> 5) & 2) * 0x011b) ^ (((0x49 >> 5) & 4) * 0x011b)) ^ ((0x49 << 2) ^ (((0x49 >> 6) & 1) * 0x011b) ^ (((0x49 >> 6) & 2) * 0x011b)) ^ ((0x49 << 1) ^ (((0x49 >> 7) & 1) * 0x011b))), (((0x4a << 3) ^ (((0x4a >> 5) & 1) * 0x011b) ^ (((0x4a >> 5) & 2) * 0x011b) ^ (((0x4a >> 5) & 4) * 0x011b)) ^ ((0x4a << 2) ^ (((0x4a >> 6) & 1) * 0x011b) ^ (((0x4a >> 6) & 2) * 0x011b)) ^ ((0x4a << 1) ^ (((0x4a >> 7) & 1) * 0x011b))), (((0x4b << 3) ^ (((0x4b >> 5) & 1) * 0x011b) ^ (((0x4b >> 5) & 2) * 0x011b) ^ (((0x4b >> 5) & 4) * 0x011b)) ^ ((0x4b << 2) ^ (((0x4b >> 6) & 1) * 0x011b) ^ (((0x4b >> 6) & 2) * 0x011b)) ^ ((0x4b << 1) ^ (((0x4b >> 7) & 1) * 0x011b))), (((0x4c << 3) ^ (((0x4c >> 5) & 1) * 0x011b) ^ (((0x4c >> 5) & 2) * 0x011b) ^ (((0x4c >> 5) & 4) * 0x011b)) ^ ((0x4c << 2) ^ (((0x4c >> 6) & 1) * 0x011b) ^ (((0x4c >> 6) & 2) * 0x011b)) ^ ((0x4c << 1) ^ (((0x4c >> 7) & 1) * 0x011b))), (((0x4d << 3) ^ (((0x4d >> 5) & 1) * 0x011b) ^ (((0x4d >> 5) & 2) * 0x011b) ^ (((0x4d >> 5) & 4) * 0x011b)) ^ ((0x4d << 2) ^ (((0x4d >> 6) & 1) * 0x011b) ^ (((0x4d >> 6) & 2) * 0x011b)) ^ ((0x4d << 1) ^ (((0x4d >> 7) & 1) * 0x011b))), (((0x4e << 3) ^ (((0x4e >> 5) & 1) * 0x011b) ^ (((0x4e >> 5) & 2) * 0x011b) ^ (((0x4e >> 5) & 4) * 0x011b)) ^ ((0x4e << 2) ^ (((0x4e >> 6) & 1) * 0x011b) ^ (((0x4e >> 6) & 2) * 0x011b)) ^ ((0x4e << 1) ^ (((0x4e >> 7) & 1) * 0x011b))), (((0x4f << 3) ^ (((0x4f >> 5) & 1) * 0x011b) ^ (((0x4f >> 5) & 2) * 0x011b) ^ (((0x4f >> 5) & 4) * 0x011b)) ^ ((0x4f << 2) ^ (((0x4f >> 6) & 1) * 0x011b) ^ (((0x4f >> 6) & 2) * 0x011b)) ^ ((0x4f << 1) ^ (((0x4f >> 7) & 1) * 0x011b))), (((0x50 << 3) ^ (((0x50 >> 5) & 1) * 0x011b) ^ (((0x50 >> 5) & 2) * 0x011b) ^ (((0x50 >> 5) & 4) * 0x011b)) ^ ((0x50 << 2) ^ (((0x50 >> 6) & 1) * 0x011b) ^ (((0x50 >> 6) & 2) * 0x011b)) ^ ((0x50 << 1) ^ (((0x50 >> 7) & 1) * 0x011b))), (((0x51 << 3) ^ (((0x51 >> 5) & 1) * 0x011b) ^ (((0x51 >> 5) & 2) * 0x011b) ^ (((0x51 >> 5) & 4) * 0x011b)) ^ ((0x51 << 2) ^ (((0x51 >> 6) & 1) * 0x011b) ^ (((0x51 >> 6) & 2) * 0x011b)) ^ ((0x51 << 1) ^ (((0x51 >> 7) & 1) * 0x011b))), (((0x52 << 3) ^ (((0x52 >> 5) & 1) * 0x011b) ^ (((0x52 >> 5) & 2) * 0x011b) ^ (((0x52 >> 5) & 4) * 0x011b)) ^ ((0x52 << 2) ^ (((0x52 >> 6) & 1) * 0x011b) ^ (((0x52 >> 6) & 2) * 0x011b)) ^ ((0x52 << 1) ^ (((0x52 >> 7) & 1) * 0x011b))), (((0x53 << 3) ^ (((0x53 >> 5) & 1) * 0x011b) ^ (((0x53 >> 5) & 2) * 0x011b) ^ (((0x53 >> 5) & 4) * 0x011b)) ^ ((0x53 << 2) ^ (((0x53 >> 6) & 1) * 0x011b) ^ (((0x53 >> 6) & 2) * 0x011b)) ^ ((0x53 << 1) ^ (((0x53 >> 7) & 1) * 0x011b))), (((0x54 << 3) ^ (((0x54 >> 5) & 1) * 0x011b) ^ (((0x54 >> 5) & 2) * 0x011b) ^ (((0x54 >> 5) & 4) * 0x011b)) ^ ((0x54 << 2) ^ (((0x54 >> 6) & 1) * 0x011b) ^ (((0x54 >> 6) & 2) * 0x011b)) ^ ((0x54 << 1) ^ (((0x54 >> 7) & 1) * 0x011b))), (((0x55 << 3) ^ (((0x55 >> 5) & 1) * 0x011b) ^ (((0x55 >> 5) & 2) * 0x011b) ^ (((0x55 >> 5) & 4) * 0x011b)) ^ ((0x55 << 2) ^ (((0x55 >> 6) & 1) * 0x011b) ^ (((0x55 >> 6) & 2) * 0x011b)) ^ ((0x55 << 1) ^ (((0x55 >> 7) & 1) * 0x011b))), (((0x56 << 3) ^ (((0x56 >> 5) & 1) * 0x011b) ^ (((0x56 >> 5) & 2) * 0x011b) ^ (((0x56 >> 5) & 4) * 0x011b)) ^ ((0x56 << 2) ^ (((0x56 >> 6) & 1) * 0x011b) ^ (((0x56 >> 6) & 2) * 0x011b)) ^ ((0x56 << 1) ^ (((0x56 >> 7) & 1) * 0x011b))), (((0x57 << 3) ^ (((0x57 >> 5) & 1) * 0x011b) ^ (((0x57 >> 5) & 2) * 0x011b) ^ (((0x57 >> 5) & 4) * 0x011b)) ^ ((0x57 << 2) ^ (((0x57 >> 6) & 1) * 0x011b) ^ (((0x57 >> 6) & 2) * 0x011b)) ^ ((0x57 << 1) ^ (((0x57 >> 7) & 1) * 0x011b))), (((0x58 << 3) ^ (((0x58 >> 5) & 1) * 0x011b) ^ (((0x58 >> 5) & 2) * 0x011b) ^ (((0x58 >> 5) & 4) * 0x011b)) ^ ((0x58 << 2) ^ (((0x58 >> 6) & 1) * 0x011b) ^ (((0x58 >> 6) & 2) * 0x011b)) ^ ((0x58 << 1) ^ (((0x58 >> 7) & 1) * 0x011b))), (((0x59 << 3) ^ (((0x59 >> 5) & 1) * 0x011b) ^ (((0x59 >> 5) & 2) * 0x011b) ^ (((0x59 >> 5) & 4) * 0x011b)) ^ ((0x59 << 2) ^ (((0x59 >> 6) & 1) * 0x011b) ^ (((0x59 >> 6) & 2) * 0x011b)) ^ ((0x59 << 1) ^ (((0x59 >> 7) & 1) * 0x011b))), (((0x5a << 3) ^ (((0x5a >> 5) & 1) * 0x011b) ^ (((0x5a >> 5) & 2) * 0x011b) ^ (((0x5a >> 5) & 4) * 0x011b)) ^ ((0x5a << 2) ^ (((0x5a >> 6) & 1) * 0x011b) ^ (((0x5a >> 6) & 2) * 0x011b)) ^ ((0x5a << 1) ^ (((0x5a >> 7) & 1) * 0x011b))), (((0x5b << 3) ^ (((0x5b >> 5) & 1) * 0x011b) ^ (((0x5b >> 5) & 2) * 0x011b) ^ (((0x5b >> 5) & 4) * 0x011b)) ^ ((0x5b << 2) ^ (((0x5b >> 6) & 1) * 0x011b) ^ (((0x5b >> 6) & 2) * 0x011b)) ^ ((0x5b << 1) ^ (((0x5b >> 7) & 1) * 0x011b))), (((0x5c << 3) ^ (((0x5c >> 5) & 1) * 0x011b) ^ (((0x5c >> 5) & 2) * 0x011b) ^ (((0x5c >> 5) & 4) * 0x011b)) ^ ((0x5c << 2) ^ (((0x5c >> 6) & 1) * 0x011b) ^ (((0x5c >> 6) & 2) * 0x011b)) ^ ((0x5c << 1) ^ (((0x5c >> 7) & 1) * 0x011b))), (((0x5d << 3) ^ (((0x5d >> 5) & 1) * 0x011b) ^ (((0x5d >> 5) & 2) * 0x011b) ^ (((0x5d >> 5) & 4) * 0x011b)) ^ ((0x5d << 2) ^ (((0x5d >> 6) & 1) * 0x011b) ^ (((0x5d >> 6) & 2) * 0x011b)) ^ ((0x5d << 1) ^ (((0x5d >> 7) & 1) * 0x011b))), (((0x5e << 3) ^ (((0x5e >> 5) & 1) * 0x011b) ^ (((0x5e >> 5) & 2) * 0x011b) ^ (((0x5e >> 5) & 4) * 0x011b)) ^ ((0x5e << 2) ^ (((0x5e >> 6) & 1) * 0x011b) ^ (((0x5e >> 6) & 2) * 0x011b)) ^ ((0x5e << 1) ^ (((0x5e >> 7) & 1) * 0x011b))), (((0x5f << 3) ^ (((0x5f >> 5) & 1) * 0x011b) ^ (((0x5f >> 5) & 2) * 0x011b) ^ (((0x5f >> 5) & 4) * 0x011b)) ^ ((0x5f << 2) ^ (((0x5f >> 6) & 1) * 0x011b) ^ (((0x5f >> 6) & 2) * 0x011b)) ^ ((0x5f << 1) ^ (((0x5f >> 7) & 1) * 0x011b))), (((0x60 << 3) ^ (((0x60 >> 5) & 1) * 0x011b) ^ (((0x60 >> 5) & 2) * 0x011b) ^ (((0x60 >> 5) & 4) * 0x011b)) ^ ((0x60 << 2) ^ (((0x60 >> 6) & 1) * 0x011b) ^ (((0x60 >> 6) & 2) * 0x011b)) ^ ((0x60 << 1) ^ (((0x60 >> 7) & 1) * 0x011b))), (((0x61 << 3) ^ (((0x61 >> 5) & 1) * 0x011b) ^ (((0x61 >> 5) & 2) * 0x011b) ^ (((0x61 >> 5) & 4) * 0x011b)) ^ ((0x61 << 2) ^ (((0x61 >> 6) & 1) * 0x011b) ^ (((0x61 >> 6) & 2) * 0x011b)) ^ ((0x61 << 1) ^ (((0x61 >> 7) & 1) * 0x011b))), (((0x62 << 3) ^ (((0x62 >> 5) & 1) * 0x011b) ^ (((0x62 >> 5) & 2) * 0x011b) ^ (((0x62 >> 5) & 4) * 0x011b)) ^ ((0x62 << 2) ^ (((0x62 >> 6) & 1) * 0x011b) ^ (((0x62 >> 6) & 2) * 0x011b)) ^ ((0x62 << 1) ^ (((0x62 >> 7) & 1) * 0x011b))), (((0x63 << 3) ^ (((0x63 >> 5) & 1) * 0x011b) ^ (((0x63 >> 5) & 2) * 0x011b) ^ (((0x63 >> 5) & 4) * 0x011b)) ^ ((0x63 << 2) ^ (((0x63 >> 6) & 1) * 0x011b) ^ (((0x63 >> 6) & 2) * 0x011b)) ^ ((0x63 << 1) ^ (((0x63 >> 7) & 1) * 0x011b))), (((0x64 << 3) ^ (((0x64 >> 5) & 1) * 0x011b) ^ (((0x64 >> 5) & 2) * 0x011b) ^ (((0x64 >> 5) & 4) * 0x011b)) ^ ((0x64 << 2) ^ (((0x64 >> 6) & 1) * 0x011b) ^ (((0x64 >> 6) & 2) * 0x011b)) ^ ((0x64 << 1) ^ (((0x64 >> 7) & 1) * 0x011b))), (((0x65 << 3) ^ (((0x65 >> 5) & 1) * 0x011b) ^ (((0x65 >> 5) & 2) * 0x011b) ^ (((0x65 >> 5) & 4) * 0x011b)) ^ ((0x65 << 2) ^ (((0x65 >> 6) & 1) * 0x011b) ^ (((0x65 >> 6) & 2) * 0x011b)) ^ ((0x65 << 1) ^ (((0x65 >> 7) & 1) * 0x011b))), (((0x66 << 3) ^ (((0x66 >> 5) & 1) * 0x011b) ^ (((0x66 >> 5) & 2) * 0x011b) ^ (((0x66 >> 5) & 4) * 0x011b)) ^ ((0x66 << 2) ^ (((0x66 >> 6) & 1) * 0x011b) ^ (((0x66 >> 6) & 2) * 0x011b)) ^ ((0x66 << 1) ^ (((0x66 >> 7) & 1) * 0x011b))), (((0x67 << 3) ^ (((0x67 >> 5) & 1) * 0x011b) ^ (((0x67 >> 5) & 2) * 0x011b) ^ (((0x67 >> 5) & 4) * 0x011b)) ^ ((0x67 << 2) ^ (((0x67 >> 6) & 1) * 0x011b) ^ (((0x67 >> 6) & 2) * 0x011b)) ^ ((0x67 << 1) ^ (((0x67 >> 7) & 1) * 0x011b))), (((0x68 << 3) ^ (((0x68 >> 5) & 1) * 0x011b) ^ (((0x68 >> 5) & 2) * 0x011b) ^ (((0x68 >> 5) & 4) * 0x011b)) ^ ((0x68 << 2) ^ (((0x68 >> 6) & 1) * 0x011b) ^ (((0x68 >> 6) & 2) * 0x011b)) ^ ((0x68 << 1) ^ (((0x68 >> 7) & 1) * 0x011b))), (((0x69 << 3) ^ (((0x69 >> 5) & 1) * 0x011b) ^ (((0x69 >> 5) & 2) * 0x011b) ^ (((0x69 >> 5) & 4) * 0x011b)) ^ ((0x69 << 2) ^ (((0x69 >> 6) & 1) * 0x011b) ^ (((0x69 >> 6) & 2) * 0x011b)) ^ ((0x69 << 1) ^ (((0x69 >> 7) & 1) * 0x011b))), (((0x6a << 3) ^ (((0x6a >> 5) & 1) * 0x011b) ^ (((0x6a >> 5) & 2) * 0x011b) ^ (((0x6a >> 5) & 4) * 0x011b)) ^ ((0x6a << 2) ^ (((0x6a >> 6) & 1) * 0x011b) ^ (((0x6a >> 6) & 2) * 0x011b)) ^ ((0x6a << 1) ^ (((0x6a >> 7) & 1) * 0x011b))), (((0x6b << 3) ^ (((0x6b >> 5) & 1) * 0x011b) ^ (((0x6b >> 5) & 2) * 0x011b) ^ (((0x6b >> 5) & 4) * 0x011b)) ^ ((0x6b << 2) ^ (((0x6b >> 6) & 1) * 0x011b) ^ (((0x6b >> 6) & 2) * 0x011b)) ^ ((0x6b << 1) ^ (((0x6b >> 7) & 1) * 0x011b))), (((0x6c << 3) ^ (((0x6c >> 5) & 1) * 0x011b) ^ (((0x6c >> 5) & 2) * 0x011b) ^ (((0x6c >> 5) & 4) * 0x011b)) ^ ((0x6c << 2) ^ (((0x6c >> 6) & 1) * 0x011b) ^ (((0x6c >> 6) & 2) * 0x011b)) ^ ((0x6c << 1) ^ (((0x6c >> 7) & 1) * 0x011b))), (((0x6d << 3) ^ (((0x6d >> 5) & 1) * 0x011b) ^ (((0x6d >> 5) & 2) * 0x011b) ^ (((0x6d >> 5) & 4) * 0x011b)) ^ ((0x6d << 2) ^ (((0x6d >> 6) & 1) * 0x011b) ^ (((0x6d >> 6) & 2) * 0x011b)) ^ ((0x6d << 1) ^ (((0x6d >> 7) & 1) * 0x011b))), (((0x6e << 3) ^ (((0x6e >> 5) & 1) * 0x011b) ^ (((0x6e >> 5) & 2) * 0x011b) ^ (((0x6e >> 5) & 4) * 0x011b)) ^ ((0x6e << 2) ^ (((0x6e >> 6) & 1) * 0x011b) ^ (((0x6e >> 6) & 2) * 0x011b)) ^ ((0x6e << 1) ^ (((0x6e >> 7) & 1) * 0x011b))), (((0x6f << 3) ^ (((0x6f >> 5) & 1) * 0x011b) ^ (((0x6f >> 5) & 2) * 0x011b) ^ (((0x6f >> 5) & 4) * 0x011b)) ^ ((0x6f << 2) ^ (((0x6f >> 6) & 1) * 0x011b) ^ (((0x6f >> 6) & 2) * 0x011b)) ^ ((0x6f << 1) ^ (((0x6f >> 7) & 1) * 0x011b))), (((0x70 << 3) ^ (((0x70 >> 5) & 1) * 0x011b) ^ (((0x70 >> 5) & 2) * 0x011b) ^ (((0x70 >> 5) & 4) * 0x011b)) ^ ((0x70 << 2) ^ (((0x70 >> 6) & 1) * 0x011b) ^ (((0x70 >> 6) & 2) * 0x011b)) ^ ((0x70 << 1) ^ (((0x70 >> 7) & 1) * 0x011b))), (((0x71 << 3) ^ (((0x71 >> 5) & 1) * 0x011b) ^ (((0x71 >> 5) & 2) * 0x011b) ^ (((0x71 >> 5) & 4) * 0x011b)) ^ ((0x71 << 2) ^ (((0x71 >> 6) & 1) * 0x011b) ^ (((0x71 >> 6) & 2) * 0x011b)) ^ ((0x71 << 1) ^ (((0x71 >> 7) & 1) * 0x011b))), (((0x72 << 3) ^ (((0x72 >> 5) & 1) * 0x011b) ^ (((0x72 >> 5) & 2) * 0x011b) ^ (((0x72 >> 5) & 4) * 0x011b)) ^ ((0x72 << 2) ^ (((0x72 >> 6) & 1) * 0x011b) ^ (((0x72 >> 6) & 2) * 0x011b)) ^ ((0x72 << 1) ^ (((0x72 >> 7) & 1) * 0x011b))), (((0x73 << 3) ^ (((0x73 >> 5) & 1) * 0x011b) ^ (((0x73 >> 5) & 2) * 0x011b) ^ (((0x73 >> 5) & 4) * 0x011b)) ^ ((0x73 << 2) ^ (((0x73 >> 6) & 1) * 0x011b) ^ (((0x73 >> 6) & 2) * 0x011b)) ^ ((0x73 << 1) ^ (((0x73 >> 7) & 1) * 0x011b))), (((0x74 << 3) ^ (((0x74 >> 5) & 1) * 0x011b) ^ (((0x74 >> 5) & 2) * 0x011b) ^ (((0x74 >> 5) & 4) * 0x011b)) ^ ((0x74 << 2) ^ (((0x74 >> 6) & 1) * 0x011b) ^ (((0x74 >> 6) & 2) * 0x011b)) ^ ((0x74 << 1) ^ (((0x74 >> 7) & 1) * 0x011b))), (((0x75 << 3) ^ (((0x75 >> 5) & 1) * 0x011b) ^ (((0x75 >> 5) & 2) * 0x011b) ^ (((0x75 >> 5) & 4) * 0x011b)) ^ ((0x75 << 2) ^ (((0x75 >> 6) & 1) * 0x011b) ^ (((0x75 >> 6) & 2) * 0x011b)) ^ ((0x75 << 1) ^ (((0x75 >> 7) & 1) * 0x011b))), (((0x76 << 3) ^ (((0x76 >> 5) & 1) * 0x011b) ^ (((0x76 >> 5) & 2) * 0x011b) ^ (((0x76 >> 5) & 4) * 0x011b)) ^ ((0x76 << 2) ^ (((0x76 >> 6) & 1) * 0x011b) ^ (((0x76 >> 6) & 2) * 0x011b)) ^ ((0x76 << 1) ^ (((0x76 >> 7) & 1) * 0x011b))), (((0x77 << 3) ^ (((0x77 >> 5) & 1) * 0x011b) ^ (((0x77 >> 5) & 2) * 0x011b) ^ (((0x77 >> 5) & 4) * 0x011b)) ^ ((0x77 << 2) ^ (((0x77 >> 6) & 1) * 0x011b) ^ (((0x77 >> 6) & 2) * 0x011b)) ^ ((0x77 << 1) ^ (((0x77 >> 7) & 1) * 0x011b))), (((0x78 << 3) ^ (((0x78 >> 5) & 1) * 0x011b) ^ (((0x78 >> 5) & 2) * 0x011b) ^ (((0x78 >> 5) & 4) * 0x011b)) ^ ((0x78 << 2) ^ (((0x78 >> 6) & 1) * 0x011b) ^ (((0x78 >> 6) & 2) * 0x011b)) ^ ((0x78 << 1) ^ (((0x78 >> 7) & 1) * 0x011b))), (((0x79 << 3) ^ (((0x79 >> 5) & 1) * 0x011b) ^ (((0x79 >> 5) & 2) * 0x011b) ^ (((0x79 >> 5) & 4) * 0x011b)) ^ ((0x79 << 2) ^ (((0x79 >> 6) & 1) * 0x011b) ^ (((0x79 >> 6) & 2) * 0x011b)) ^ ((0x79 << 1) ^ (((0x79 >> 7) & 1) * 0x011b))), (((0x7a << 3) ^ (((0x7a >> 5) & 1) * 0x011b) ^ (((0x7a >> 5) & 2) * 0x011b) ^ (((0x7a >> 5) & 4) * 0x011b)) ^ ((0x7a << 2) ^ (((0x7a >> 6) & 1) * 0x011b) ^ (((0x7a >> 6) & 2) * 0x011b)) ^ ((0x7a << 1) ^ (((0x7a >> 7) & 1) * 0x011b))), (((0x7b << 3) ^ (((0x7b >> 5) & 1) * 0x011b) ^ (((0x7b >> 5) & 2) * 0x011b) ^ (((0x7b >> 5) & 4) * 0x011b)) ^ ((0x7b << 2) ^ (((0x7b >> 6) & 1) * 0x011b) ^ (((0x7b >> 6) & 2) * 0x011b)) ^ ((0x7b << 1) ^ (((0x7b >> 7) & 1) * 0x011b))), (((0x7c << 3) ^ (((0x7c >> 5) & 1) * 0x011b) ^ (((0x7c >> 5) & 2) * 0x011b) ^ (((0x7c >> 5) & 4) * 0x011b)) ^ ((0x7c << 2) ^ (((0x7c >> 6) & 1) * 0x011b) ^ (((0x7c >> 6) & 2) * 0x011b)) ^ ((0x7c << 1) ^ (((0x7c >> 7) & 1) * 0x011b))), (((0x7d << 3) ^ (((0x7d >> 5) & 1) * 0x011b) ^ (((0x7d >> 5) & 2) * 0x011b) ^ (((0x7d >> 5) & 4) * 0x011b)) ^ ((0x7d << 2) ^ (((0x7d >> 6) & 1) * 0x011b) ^ (((0x7d >> 6) & 2) * 0x011b)) ^ ((0x7d << 1) ^ (((0x7d >> 7) & 1) * 0x011b))), (((0x7e << 3) ^ (((0x7e >> 5) & 1) * 0x011b) ^ (((0x7e >> 5) & 2) * 0x011b) ^ (((0x7e >> 5) & 4) * 0x011b)) ^ ((0x7e << 2) ^ (((0x7e >> 6) & 1) * 0x011b) ^ (((0x7e >> 6) & 2) * 0x011b)) ^ ((0x7e << 1) ^ (((0x7e >> 7) & 1) * 0x011b))), (((0x7f << 3) ^ (((0x7f >> 5) & 1) * 0x011b) ^ (((0x7f >> 5) & 2) * 0x011b) ^ (((0x7f >> 5) & 4) * 0x011b)) ^ ((0x7f << 2) ^ (((0x7f >> 6) & 1) * 0x011b) ^ (((0x7f >> 6) & 2) * 0x011b)) ^ ((0x7f << 1) ^ (((0x7f >> 7) & 1) * 0x011b))), (((0x80 << 3) ^ (((0x80 >> 5) & 1) * 0x011b) ^ (((0x80 >> 5) & 2) * 0x011b) ^ (((0x80 >> 5) & 4) * 0x011b)) ^ ((0x80 << 2) ^ (((0x80 >> 6) & 1) * 0x011b) ^ (((0x80 >> 6) & 2) * 0x011b)) ^ ((0x80 << 1) ^ (((0x80 >> 7) & 1) * 0x011b))), (((0x81 << 3) ^ (((0x81 >> 5) & 1) * 0x011b) ^ (((0x81 >> 5) & 2) * 0x011b) ^ (((0x81 >> 5) & 4) * 0x011b)) ^ ((0x81 << 2) ^ (((0x81 >> 6) & 1) * 0x011b) ^ (((0x81 >> 6) & 2) * 0x011b)) ^ ((0x81 << 1) ^ (((0x81 >> 7) & 1) * 0x011b))), (((0x82 << 3) ^ (((0x82 >> 5) & 1) * 0x011b) ^ (((0x82 >> 5) & 2) * 0x011b) ^ (((0x82 >> 5) & 4) * 0x011b)) ^ ((0x82 << 2) ^ (((0x82 >> 6) & 1) * 0x011b) ^ (((0x82 >> 6) & 2) * 0x011b)) ^ ((0x82 << 1) ^ (((0x82 >> 7) & 1) * 0x011b))), (((0x83 << 3) ^ (((0x83 >> 5) & 1) * 0x011b) ^ (((0x83 >> 5) & 2) * 0x011b) ^ (((0x83 >> 5) & 4) * 0x011b)) ^ ((0x83 << 2) ^ (((0x83 >> 6) & 1) * 0x011b) ^ (((0x83 >> 6) & 2) * 0x011b)) ^ ((0x83 << 1) ^ (((0x83 >> 7) & 1) * 0x011b))), (((0x84 << 3) ^ (((0x84 >> 5) & 1) * 0x011b) ^ (((0x84 >> 5) & 2) * 0x011b) ^ (((0x84 >> 5) & 4) * 0x011b)) ^ ((0x84 << 2) ^ (((0x84 >> 6) & 1) * 0x011b) ^ (((0x84 >> 6) & 2) * 0x011b)) ^ ((0x84 << 1) ^ (((0x84 >> 7) & 1) * 0x011b))), (((0x85 << 3) ^ (((0x85 >> 5) & 1) * 0x011b) ^ (((0x85 >> 5) & 2) * 0x011b) ^ (((0x85 >> 5) & 4) * 0x011b)) ^ ((0x85 << 2) ^ (((0x85 >> 6) & 1) * 0x011b) ^ (((0x85 >> 6) & 2) * 0x011b)) ^ ((0x85 << 1) ^ (((0x85 >> 7) & 1) * 0x011b))), (((0x86 << 3) ^ (((0x86 >> 5) & 1) * 0x011b) ^ (((0x86 >> 5) & 2) * 0x011b) ^ (((0x86 >> 5) & 4) * 0x011b)) ^ ((0x86 << 2) ^ (((0x86 >> 6) & 1) * 0x011b) ^ (((0x86 >> 6) & 2) * 0x011b)) ^ ((0x86 << 1) ^ (((0x86 >> 7) & 1) * 0x011b))), (((0x87 << 3) ^ (((0x87 >> 5) & 1) * 0x011b) ^ (((0x87 >> 5) & 2) * 0x011b) ^ (((0x87 >> 5) & 4) * 0x011b)) ^ ((0x87 << 2) ^ (((0x87 >> 6) & 1) * 0x011b) ^ (((0x87 >> 6) & 2) * 0x011b)) ^ ((0x87 << 1) ^ (((0x87 >> 7) & 1) * 0x011b))), (((0x88 << 3) ^ (((0x88 >> 5) & 1) * 0x011b) ^ (((0x88 >> 5) & 2) * 0x011b) ^ (((0x88 >> 5) & 4) * 0x011b)) ^ ((0x88 << 2) ^ (((0x88 >> 6) & 1) * 0x011b) ^ (((0x88 >> 6) & 2) * 0x011b)) ^ ((0x88 << 1) ^ (((0x88 >> 7) & 1) * 0x011b))), (((0x89 << 3) ^ (((0x89 >> 5) & 1) * 0x011b) ^ (((0x89 >> 5) & 2) * 0x011b) ^ (((0x89 >> 5) & 4) * 0x011b)) ^ ((0x89 << 2) ^ (((0x89 >> 6) & 1) * 0x011b) ^ (((0x89 >> 6) & 2) * 0x011b)) ^ ((0x89 << 1) ^ (((0x89 >> 7) & 1) * 0x011b))), (((0x8a << 3) ^ (((0x8a >> 5) & 1) * 0x011b) ^ (((0x8a >> 5) & 2) * 0x011b) ^ (((0x8a >> 5) & 4) * 0x011b)) ^ ((0x8a << 2) ^ (((0x8a >> 6) & 1) * 0x011b) ^ (((0x8a >> 6) & 2) * 0x011b)) ^ ((0x8a << 1) ^ (((0x8a >> 7) & 1) * 0x011b))), (((0x8b << 3) ^ (((0x8b >> 5) & 1) * 0x011b) ^ (((0x8b >> 5) & 2) * 0x011b) ^ (((0x8b >> 5) & 4) * 0x011b)) ^ ((0x8b << 2) ^ (((0x8b >> 6) & 1) * 0x011b) ^ (((0x8b >> 6) & 2) * 0x011b)) ^ ((0x8b << 1) ^ (((0x8b >> 7) & 1) * 0x011b))), (((0x8c << 3) ^ (((0x8c >> 5) & 1) * 0x011b) ^ (((0x8c >> 5) & 2) * 0x011b) ^ (((0x8c >> 5) & 4) * 0x011b)) ^ ((0x8c << 2) ^ (((0x8c >> 6) & 1) * 0x011b) ^ (((0x8c >> 6) & 2) * 0x011b)) ^ ((0x8c << 1) ^ (((0x8c >> 7) & 1) * 0x011b))), (((0x8d << 3) ^ (((0x8d >> 5) & 1) * 0x011b) ^ (((0x8d >> 5) & 2) * 0x011b) ^ (((0x8d >> 5) & 4) * 0x011b)) ^ ((0x8d << 2) ^ (((0x8d >> 6) & 1) * 0x011b) ^ (((0x8d >> 6) & 2) * 0x011b)) ^ ((0x8d << 1) ^ (((0x8d >> 7) & 1) * 0x011b))), (((0x8e << 3) ^ (((0x8e >> 5) & 1) * 0x011b) ^ (((0x8e >> 5) & 2) * 0x011b) ^ (((0x8e >> 5) & 4) * 0x011b)) ^ ((0x8e << 2) ^ (((0x8e >> 6) & 1) * 0x011b) ^ (((0x8e >> 6) & 2) * 0x011b)) ^ ((0x8e << 1) ^ (((0x8e >> 7) & 1) * 0x011b))), (((0x8f << 3) ^ (((0x8f >> 5) & 1) * 0x011b) ^ (((0x8f >> 5) & 2) * 0x011b) ^ (((0x8f >> 5) & 4) * 0x011b)) ^ ((0x8f << 2) ^ (((0x8f >> 6) & 1) * 0x011b) ^ (((0x8f >> 6) & 2) * 0x011b)) ^ ((0x8f << 1) ^ (((0x8f >> 7) & 1) * 0x011b))), (((0x90 << 3) ^ (((0x90 >> 5) & 1) * 0x011b) ^ (((0x90 >> 5) & 2) * 0x011b) ^ (((0x90 >> 5) & 4) * 0x011b)) ^ ((0x90 << 2) ^ (((0x90 >> 6) & 1) * 0x011b) ^ (((0x90 >> 6) & 2) * 0x011b)) ^ ((0x90 << 1) ^ (((0x90 >> 7) & 1) * 0x011b))), (((0x91 << 3) ^ (((0x91 >> 5) & 1) * 0x011b) ^ (((0x91 >> 5) & 2) * 0x011b) ^ (((0x91 >> 5) & 4) * 0x011b)) ^ ((0x91 << 2) ^ (((0x91 >> 6) & 1) * 0x011b) ^ (((0x91 >> 6) & 2) * 0x011b)) ^ ((0x91 << 1) ^ (((0x91 >> 7) & 1) * 0x011b))), (((0x92 << 3) ^ (((0x92 >> 5) & 1) * 0x011b) ^ (((0x92 >> 5) & 2) * 0x011b) ^ (((0x92 >> 5) & 4) * 0x011b)) ^ ((0x92 << 2) ^ (((0x92 >> 6) & 1) * 0x011b) ^ (((0x92 >> 6) & 2) * 0x011b)) ^ ((0x92 << 1) ^ (((0x92 >> 7) & 1) * 0x011b))), (((0x93 << 3) ^ (((0x93 >> 5) & 1) * 0x011b) ^ (((0x93 >> 5) & 2) * 0x011b) ^ (((0x93 >> 5) & 4) * 0x011b)) ^ ((0x93 << 2) ^ (((0x93 >> 6) & 1) * 0x011b) ^ (((0x93 >> 6) & 2) * 0x011b)) ^ ((0x93 << 1) ^ (((0x93 >> 7) & 1) * 0x011b))), (((0x94 << 3) ^ (((0x94 >> 5) & 1) * 0x011b) ^ (((0x94 >> 5) & 2) * 0x011b) ^ (((0x94 >> 5) & 4) * 0x011b)) ^ ((0x94 << 2) ^ (((0x94 >> 6) & 1) * 0x011b) ^ (((0x94 >> 6) & 2) * 0x011b)) ^ ((0x94 << 1) ^ (((0x94 >> 7) & 1) * 0x011b))), (((0x95 << 3) ^ (((0x95 >> 5) & 1) * 0x011b) ^ (((0x95 >> 5) & 2) * 0x011b) ^ (((0x95 >> 5) & 4) * 0x011b)) ^ ((0x95 << 2) ^ (((0x95 >> 6) & 1) * 0x011b) ^ (((0x95 >> 6) & 2) * 0x011b)) ^ ((0x95 << 1) ^ (((0x95 >> 7) & 1) * 0x011b))), (((0x96 << 3) ^ (((0x96 >> 5) & 1) * 0x011b) ^ (((0x96 >> 5) & 2) * 0x011b) ^ (((0x96 >> 5) & 4) * 0x011b)) ^ ((0x96 << 2) ^ (((0x96 >> 6) & 1) * 0x011b) ^ (((0x96 >> 6) & 2) * 0x011b)) ^ ((0x96 << 1) ^ (((0x96 >> 7) & 1) * 0x011b))), (((0x97 << 3) ^ (((0x97 >> 5) & 1) * 0x011b) ^ (((0x97 >> 5) & 2) * 0x011b) ^ (((0x97 >> 5) & 4) * 0x011b)) ^ ((0x97 << 2) ^ (((0x97 >> 6) & 1) * 0x011b) ^ (((0x97 >> 6) & 2) * 0x011b)) ^ ((0x97 << 1) ^ (((0x97 >> 7) & 1) * 0x011b))), (((0x98 << 3) ^ (((0x98 >> 5) & 1) * 0x011b) ^ (((0x98 >> 5) & 2) * 0x011b) ^ (((0x98 >> 5) & 4) * 0x011b)) ^ ((0x98 << 2) ^ (((0x98 >> 6) & 1) * 0x011b) ^ (((0x98 >> 6) & 2) * 0x011b)) ^ ((0x98 << 1) ^ (((0x98 >> 7) & 1) * 0x011b))), (((0x99 << 3) ^ (((0x99 >> 5) & 1) * 0x011b) ^ (((0x99 >> 5) & 2) * 0x011b) ^ (((0x99 >> 5) & 4) * 0x011b)) ^ ((0x99 << 2) ^ (((0x99 >> 6) & 1) * 0x011b) ^ (((0x99 >> 6) & 2) * 0x011b)) ^ ((0x99 << 1) ^ (((0x99 >> 7) & 1) * 0x011b))), (((0x9a << 3) ^ (((0x9a >> 5) & 1) * 0x011b) ^ (((0x9a >> 5) & 2) * 0x011b) ^ (((0x9a >> 5) & 4) * 0x011b)) ^ ((0x9a << 2) ^ (((0x9a >> 6) & 1) * 0x011b) ^ (((0x9a >> 6) & 2) * 0x011b)) ^ ((0x9a << 1) ^ (((0x9a >> 7) & 1) * 0x011b))), (((0x9b << 3) ^ (((0x9b >> 5) & 1) * 0x011b) ^ (((0x9b >> 5) & 2) * 0x011b) ^ (((0x9b >> 5) & 4) * 0x011b)) ^ ((0x9b << 2) ^ (((0x9b >> 6) & 1) * 0x011b) ^ (((0x9b >> 6) & 2) * 0x011b)) ^ ((0x9b << 1) ^ (((0x9b >> 7) & 1) * 0x011b))), (((0x9c << 3) ^ (((0x9c >> 5) & 1) * 0x011b) ^ (((0x9c >> 5) & 2) * 0x011b) ^ (((0x9c >> 5) & 4) * 0x011b)) ^ ((0x9c << 2) ^ (((0x9c >> 6) & 1) * 0x011b) ^ (((0x9c >> 6) & 2) * 0x011b)) ^ ((0x9c << 1) ^ (((0x9c >> 7) & 1) * 0x011b))), (((0x9d << 3) ^ (((0x9d >> 5) & 1) * 0x011b) ^ (((0x9d >> 5) & 2) * 0x011b) ^ (((0x9d >> 5) & 4) * 0x011b)) ^ ((0x9d << 2) ^ (((0x9d >> 6) & 1) * 0x011b) ^ (((0x9d >> 6) & 2) * 0x011b)) ^ ((0x9d << 1) ^ (((0x9d >> 7) & 1) * 0x011b))), (((0x9e << 3) ^ (((0x9e >> 5) & 1) * 0x011b) ^ (((0x9e >> 5) & 2) * 0x011b) ^ (((0x9e >> 5) & 4) * 0x011b)) ^ ((0x9e << 2) ^ (((0x9e >> 6) & 1) * 0x011b) ^ (((0x9e >> 6) & 2) * 0x011b)) ^ ((0x9e << 1) ^ (((0x9e >> 7) & 1) * 0x011b))), (((0x9f << 3) ^ (((0x9f >> 5) & 1) * 0x011b) ^ (((0x9f >> 5) & 2) * 0x011b) ^ (((0x9f >> 5) & 4) * 0x011b)) ^ ((0x9f << 2) ^ (((0x9f >> 6) & 1) * 0x011b) ^ (((0x9f >> 6) & 2) * 0x011b)) ^ ((0x9f << 1) ^ (((0x9f >> 7) & 1) * 0x011b))), (((0xa0 << 3) ^ (((0xa0 >> 5) & 1) * 0x011b) ^ (((0xa0 >> 5) & 2) * 0x011b) ^ (((0xa0 >> 5) & 4) * 0x011b)) ^ ((0xa0 << 2) ^ (((0xa0 >> 6) & 1) * 0x011b) ^ (((0xa0 >> 6) & 2) * 0x011b)) ^ ((0xa0 << 1) ^ (((0xa0 >> 7) & 1) * 0x011b))), (((0xa1 << 3) ^ (((0xa1 >> 5) & 1) * 0x011b) ^ (((0xa1 >> 5) & 2) * 0x011b) ^ (((0xa1 >> 5) & 4) * 0x011b)) ^ ((0xa1 << 2) ^ (((0xa1 >> 6) & 1) * 0x011b) ^ (((0xa1 >> 6) & 2) * 0x011b)) ^ ((0xa1 << 1) ^ (((0xa1 >> 7) & 1) * 0x011b))), (((0xa2 << 3) ^ (((0xa2 >> 5) & 1) * 0x011b) ^ (((0xa2 >> 5) & 2) * 0x011b) ^ (((0xa2 >> 5) & 4) * 0x011b)) ^ ((0xa2 << 2) ^ (((0xa2 >> 6) & 1) * 0x011b) ^ (((0xa2 >> 6) & 2) * 0x011b)) ^ ((0xa2 << 1) ^ (((0xa2 >> 7) & 1) * 0x011b))), (((0xa3 << 3) ^ (((0xa3 >> 5) & 1) * 0x011b) ^ (((0xa3 >> 5) & 2) * 0x011b) ^ (((0xa3 >> 5) & 4) * 0x011b)) ^ ((0xa3 << 2) ^ (((0xa3 >> 6) & 1) * 0x011b) ^ (((0xa3 >> 6) & 2) * 0x011b)) ^ ((0xa3 << 1) ^ (((0xa3 >> 7) & 1) * 0x011b))), (((0xa4 << 3) ^ (((0xa4 >> 5) & 1) * 0x011b) ^ (((0xa4 >> 5) & 2) * 0x011b) ^ (((0xa4 >> 5) & 4) * 0x011b)) ^ ((0xa4 << 2) ^ (((0xa4 >> 6) & 1) * 0x011b) ^ (((0xa4 >> 6) & 2) * 0x011b)) ^ ((0xa4 << 1) ^ (((0xa4 >> 7) & 1) * 0x011b))), (((0xa5 << 3) ^ (((0xa5 >> 5) & 1) * 0x011b) ^ (((0xa5 >> 5) & 2) * 0x011b) ^ (((0xa5 >> 5) & 4) * 0x011b)) ^ ((0xa5 << 2) ^ (((0xa5 >> 6) & 1) * 0x011b) ^ (((0xa5 >> 6) & 2) * 0x011b)) ^ ((0xa5 << 1) ^ (((0xa5 >> 7) & 1) * 0x011b))), (((0xa6 << 3) ^ (((0xa6 >> 5) & 1) * 0x011b) ^ (((0xa6 >> 5) & 2) * 0x011b) ^ (((0xa6 >> 5) & 4) * 0x011b)) ^ ((0xa6 << 2) ^ (((0xa6 >> 6) & 1) * 0x011b) ^ (((0xa6 >> 6) & 2) * 0x011b)) ^ ((0xa6 << 1) ^ (((0xa6 >> 7) & 1) * 0x011b))), (((0xa7 << 3) ^ (((0xa7 >> 5) & 1) * 0x011b) ^ (((0xa7 >> 5) & 2) * 0x011b) ^ (((0xa7 >> 5) & 4) * 0x011b)) ^ ((0xa7 << 2) ^ (((0xa7 >> 6) & 1) * 0x011b) ^ (((0xa7 >> 6) & 2) * 0x011b)) ^ ((0xa7 << 1) ^ (((0xa7 >> 7) & 1) * 0x011b))), (((0xa8 << 3) ^ (((0xa8 >> 5) & 1) * 0x011b) ^ (((0xa8 >> 5) & 2) * 0x011b) ^ (((0xa8 >> 5) & 4) * 0x011b)) ^ ((0xa8 << 2) ^ (((0xa8 >> 6) & 1) * 0x011b) ^ (((0xa8 >> 6) & 2) * 0x011b)) ^ ((0xa8 << 1) ^ (((0xa8 >> 7) & 1) * 0x011b))), (((0xa9 << 3) ^ (((0xa9 >> 5) & 1) * 0x011b) ^ (((0xa9 >> 5) & 2) * 0x011b) ^ (((0xa9 >> 5) & 4) * 0x011b)) ^ ((0xa9 << 2) ^ (((0xa9 >> 6) & 1) * 0x011b) ^ (((0xa9 >> 6) & 2) * 0x011b)) ^ ((0xa9 << 1) ^ (((0xa9 >> 7) & 1) * 0x011b))), (((0xaa << 3) ^ (((0xaa >> 5) & 1) * 0x011b) ^ (((0xaa >> 5) & 2) * 0x011b) ^ (((0xaa >> 5) & 4) * 0x011b)) ^ ((0xaa << 2) ^ (((0xaa >> 6) & 1) * 0x011b) ^ (((0xaa >> 6) & 2) * 0x011b)) ^ ((0xaa << 1) ^ (((0xaa >> 7) & 1) * 0x011b))), (((0xab << 3) ^ (((0xab >> 5) & 1) * 0x011b) ^ (((0xab >> 5) & 2) * 0x011b) ^ (((0xab >> 5) & 4) * 0x011b)) ^ ((0xab << 2) ^ (((0xab >> 6) & 1) * 0x011b) ^ (((0xab >> 6) & 2) * 0x011b)) ^ ((0xab << 1) ^ (((0xab >> 7) & 1) * 0x011b))), (((0xac << 3) ^ (((0xac >> 5) & 1) * 0x011b) ^ (((0xac >> 5) & 2) * 0x011b) ^ (((0xac >> 5) & 4) * 0x011b)) ^ ((0xac << 2) ^ (((0xac >> 6) & 1) * 0x011b) ^ (((0xac >> 6) & 2) * 0x011b)) ^ ((0xac << 1) ^ (((0xac >> 7) & 1) * 0x011b))), (((0xad << 3) ^ (((0xad >> 5) & 1) * 0x011b) ^ (((0xad >> 5) & 2) * 0x011b) ^ (((0xad >> 5) & 4) * 0x011b)) ^ ((0xad << 2) ^ (((0xad >> 6) & 1) * 0x011b) ^ (((0xad >> 6) & 2) * 0x011b)) ^ ((0xad << 1) ^ (((0xad >> 7) & 1) * 0x011b))), (((0xae << 3) ^ (((0xae >> 5) & 1) * 0x011b) ^ (((0xae >> 5) & 2) * 0x011b) ^ (((0xae >> 5) & 4) * 0x011b)) ^ ((0xae << 2) ^ (((0xae >> 6) & 1) * 0x011b) ^ (((0xae >> 6) & 2) * 0x011b)) ^ ((0xae << 1) ^ (((0xae >> 7) & 1) * 0x011b))), (((0xaf << 3) ^ (((0xaf >> 5) & 1) * 0x011b) ^ (((0xaf >> 5) & 2) * 0x011b) ^ (((0xaf >> 5) & 4) * 0x011b)) ^ ((0xaf << 2) ^ (((0xaf >> 6) & 1) * 0x011b) ^ (((0xaf >> 6) & 2) * 0x011b)) ^ ((0xaf << 1) ^ (((0xaf >> 7) & 1) * 0x011b))), (((0xb0 << 3) ^ (((0xb0 >> 5) & 1) * 0x011b) ^ (((0xb0 >> 5) & 2) * 0x011b) ^ (((0xb0 >> 5) & 4) * 0x011b)) ^ ((0xb0 << 2) ^ (((0xb0 >> 6) & 1) * 0x011b) ^ (((0xb0 >> 6) & 2) * 0x011b)) ^ ((0xb0 << 1) ^ (((0xb0 >> 7) & 1) * 0x011b))), (((0xb1 << 3) ^ (((0xb1 >> 5) & 1) * 0x011b) ^ (((0xb1 >> 5) & 2) * 0x011b) ^ (((0xb1 >> 5) & 4) * 0x011b)) ^ ((0xb1 << 2) ^ (((0xb1 >> 6) & 1) * 0x011b) ^ (((0xb1 >> 6) & 2) * 0x011b)) ^ ((0xb1 << 1) ^ (((0xb1 >> 7) & 1) * 0x011b))), (((0xb2 << 3) ^ (((0xb2 >> 5) & 1) * 0x011b) ^ (((0xb2 >> 5) & 2) * 0x011b) ^ (((0xb2 >> 5) & 4) * 0x011b)) ^ ((0xb2 << 2) ^ (((0xb2 >> 6) & 1) * 0x011b) ^ (((0xb2 >> 6) & 2) * 0x011b)) ^ ((0xb2 << 1) ^ (((0xb2 >> 7) & 1) * 0x011b))), (((0xb3 << 3) ^ (((0xb3 >> 5) & 1) * 0x011b) ^ (((0xb3 >> 5) & 2) * 0x011b) ^ (((0xb3 >> 5) & 4) * 0x011b)) ^ ((0xb3 << 2) ^ (((0xb3 >> 6) & 1) * 0x011b) ^ (((0xb3 >> 6) & 2) * 0x011b)) ^ ((0xb3 << 1) ^ (((0xb3 >> 7) & 1) * 0x011b))), (((0xb4 << 3) ^ (((0xb4 >> 5) & 1) * 0x011b) ^ (((0xb4 >> 5) & 2) * 0x011b) ^ (((0xb4 >> 5) & 4) * 0x011b)) ^ ((0xb4 << 2) ^ (((0xb4 >> 6) & 1) * 0x011b) ^ (((0xb4 >> 6) & 2) * 0x011b)) ^ ((0xb4 << 1) ^ (((0xb4 >> 7) & 1) * 0x011b))), (((0xb5 << 3) ^ (((0xb5 >> 5) & 1) * 0x011b) ^ (((0xb5 >> 5) & 2) * 0x011b) ^ (((0xb5 >> 5) & 4) * 0x011b)) ^ ((0xb5 << 2) ^ (((0xb5 >> 6) & 1) * 0x011b) ^ (((0xb5 >> 6) & 2) * 0x011b)) ^ ((0xb5 << 1) ^ (((0xb5 >> 7) & 1) * 0x011b))), (((0xb6 << 3) ^ (((0xb6 >> 5) & 1) * 0x011b) ^ (((0xb6 >> 5) & 2) * 0x011b) ^ (((0xb6 >> 5) & 4) * 0x011b)) ^ ((0xb6 << 2) ^ (((0xb6 >> 6) & 1) * 0x011b) ^ (((0xb6 >> 6) & 2) * 0x011b)) ^ ((0xb6 << 1) ^ (((0xb6 >> 7) & 1) * 0x011b))), (((0xb7 << 3) ^ (((0xb7 >> 5) & 1) * 0x011b) ^ (((0xb7 >> 5) & 2) * 0x011b) ^ (((0xb7 >> 5) & 4) * 0x011b)) ^ ((0xb7 << 2) ^ (((0xb7 >> 6) & 1) * 0x011b) ^ (((0xb7 >> 6) & 2) * 0x011b)) ^ ((0xb7 << 1) ^ (((0xb7 >> 7) & 1) * 0x011b))), (((0xb8 << 3) ^ (((0xb8 >> 5) & 1) * 0x011b) ^ (((0xb8 >> 5) & 2) * 0x011b) ^ (((0xb8 >> 5) & 4) * 0x011b)) ^ ((0xb8 << 2) ^ (((0xb8 >> 6) & 1) * 0x011b) ^ (((0xb8 >> 6) & 2) * 0x011b)) ^ ((0xb8 << 1) ^ (((0xb8 >> 7) & 1) * 0x011b))), (((0xb9 << 3) ^ (((0xb9 >> 5) & 1) * 0x011b) ^ (((0xb9 >> 5) & 2) * 0x011b) ^ (((0xb9 >> 5) & 4) * 0x011b)) ^ ((0xb9 << 2) ^ (((0xb9 >> 6) & 1) * 0x011b) ^ (((0xb9 >> 6) & 2) * 0x011b)) ^ ((0xb9 << 1) ^ (((0xb9 >> 7) & 1) * 0x011b))), (((0xba << 3) ^ (((0xba >> 5) & 1) * 0x011b) ^ (((0xba >> 5) & 2) * 0x011b) ^ (((0xba >> 5) & 4) * 0x011b)) ^ ((0xba << 2) ^ (((0xba >> 6) & 1) * 0x011b) ^ (((0xba >> 6) & 2) * 0x011b)) ^ ((0xba << 1) ^ (((0xba >> 7) & 1) * 0x011b))), (((0xbb << 3) ^ (((0xbb >> 5) & 1) * 0x011b) ^ (((0xbb >> 5) & 2) * 0x011b) ^ (((0xbb >> 5) & 4) * 0x011b)) ^ ((0xbb << 2) ^ (((0xbb >> 6) & 1) * 0x011b) ^ (((0xbb >> 6) & 2) * 0x011b)) ^ ((0xbb << 1) ^ (((0xbb >> 7) & 1) * 0x011b))), (((0xbc << 3) ^ (((0xbc >> 5) & 1) * 0x011b) ^ (((0xbc >> 5) & 2) * 0x011b) ^ (((0xbc >> 5) & 4) * 0x011b)) ^ ((0xbc << 2) ^ (((0xbc >> 6) & 1) * 0x011b) ^ (((0xbc >> 6) & 2) * 0x011b)) ^ ((0xbc << 1) ^ (((0xbc >> 7) & 1) * 0x011b))), (((0xbd << 3) ^ (((0xbd >> 5) & 1) * 0x011b) ^ (((0xbd >> 5) & 2) * 0x011b) ^ (((0xbd >> 5) & 4) * 0x011b)) ^ ((0xbd << 2) ^ (((0xbd >> 6) & 1) * 0x011b) ^ (((0xbd >> 6) & 2) * 0x011b)) ^ ((0xbd << 1) ^ (((0xbd >> 7) & 1) * 0x011b))), (((0xbe << 3) ^ (((0xbe >> 5) & 1) * 0x011b) ^ (((0xbe >> 5) & 2) * 0x011b) ^ (((0xbe >> 5) & 4) * 0x011b)) ^ ((0xbe << 2) ^ (((0xbe >> 6) & 1) * 0x011b) ^ (((0xbe >> 6) & 2) * 0x011b)) ^ ((0xbe << 1) ^ (((0xbe >> 7) & 1) * 0x011b))), (((0xbf << 3) ^ (((0xbf >> 5) & 1) * 0x011b) ^ (((0xbf >> 5) & 2) * 0x011b) ^ (((0xbf >> 5) & 4) * 0x011b)) ^ ((0xbf << 2) ^ (((0xbf >> 6) & 1) * 0x011b) ^ (((0xbf >> 6) & 2) * 0x011b)) ^ ((0xbf << 1) ^ (((0xbf >> 7) & 1) * 0x011b))), (((0xc0 << 3) ^ (((0xc0 >> 5) & 1) * 0x011b) ^ (((0xc0 >> 5) & 2) * 0x011b) ^ (((0xc0 >> 5) & 4) * 0x011b)) ^ ((0xc0 << 2) ^ (((0xc0 >> 6) & 1) * 0x011b) ^ (((0xc0 >> 6) & 2) * 0x011b)) ^ ((0xc0 << 1) ^ (((0xc0 >> 7) & 1) * 0x011b))), (((0xc1 << 3) ^ (((0xc1 >> 5) & 1) * 0x011b) ^ (((0xc1 >> 5) & 2) * 0x011b) ^ (((0xc1 >> 5) & 4) * 0x011b)) ^ ((0xc1 << 2) ^ (((0xc1 >> 6) & 1) * 0x011b) ^ (((0xc1 >> 6) & 2) * 0x011b)) ^ ((0xc1 << 1) ^ (((0xc1 >> 7) & 1) * 0x011b))), (((0xc2 << 3) ^ (((0xc2 >> 5) & 1) * 0x011b) ^ (((0xc2 >> 5) & 2) * 0x011b) ^ (((0xc2 >> 5) & 4) * 0x011b)) ^ ((0xc2 << 2) ^ (((0xc2 >> 6) & 1) * 0x011b) ^ (((0xc2 >> 6) & 2) * 0x011b)) ^ ((0xc2 << 1) ^ (((0xc2 >> 7) & 1) * 0x011b))), (((0xc3 << 3) ^ (((0xc3 >> 5) & 1) * 0x011b) ^ (((0xc3 >> 5) & 2) * 0x011b) ^ (((0xc3 >> 5) & 4) * 0x011b)) ^ ((0xc3 << 2) ^ (((0xc3 >> 6) & 1) * 0x011b) ^ (((0xc3 >> 6) & 2) * 0x011b)) ^ ((0xc3 << 1) ^ (((0xc3 >> 7) & 1) * 0x011b))), (((0xc4 << 3) ^ (((0xc4 >> 5) & 1) * 0x011b) ^ (((0xc4 >> 5) & 2) * 0x011b) ^ (((0xc4 >> 5) & 4) * 0x011b)) ^ ((0xc4 << 2) ^ (((0xc4 >> 6) & 1) * 0x011b) ^ (((0xc4 >> 6) & 2) * 0x011b)) ^ ((0xc4 << 1) ^ (((0xc4 >> 7) & 1) * 0x011b))), (((0xc5 << 3) ^ (((0xc5 >> 5) & 1) * 0x011b) ^ (((0xc5 >> 5) & 2) * 0x011b) ^ (((0xc5 >> 5) & 4) * 0x011b)) ^ ((0xc5 << 2) ^ (((0xc5 >> 6) & 1) * 0x011b) ^ (((0xc5 >> 6) & 2) * 0x011b)) ^ ((0xc5 << 1) ^ (((0xc5 >> 7) & 1) * 0x011b))), (((0xc6 << 3) ^ (((0xc6 >> 5) & 1) * 0x011b) ^ (((0xc6 >> 5) & 2) * 0x011b) ^ (((0xc6 >> 5) & 4) * 0x011b)) ^ ((0xc6 << 2) ^ (((0xc6 >> 6) & 1) * 0x011b) ^ (((0xc6 >> 6) & 2) * 0x011b)) ^ ((0xc6 << 1) ^ (((0xc6 >> 7) & 1) * 0x011b))), (((0xc7 << 3) ^ (((0xc7 >> 5) & 1) * 0x011b) ^ (((0xc7 >> 5) & 2) * 0x011b) ^ (((0xc7 >> 5) & 4) * 0x011b)) ^ ((0xc7 << 2) ^ (((0xc7 >> 6) & 1) * 0x011b) ^ (((0xc7 >> 6) & 2) * 0x011b)) ^ ((0xc7 << 1) ^ (((0xc7 >> 7) & 1) * 0x011b))), (((0xc8 << 3) ^ (((0xc8 >> 5) & 1) * 0x011b) ^ (((0xc8 >> 5) & 2) * 0x011b) ^ (((0xc8 >> 5) & 4) * 0x011b)) ^ ((0xc8 << 2) ^ (((0xc8 >> 6) & 1) * 0x011b) ^ (((0xc8 >> 6) & 2) * 0x011b)) ^ ((0xc8 << 1) ^ (((0xc8 >> 7) & 1) * 0x011b))), (((0xc9 << 3) ^ (((0xc9 >> 5) & 1) * 0x011b) ^ (((0xc9 >> 5) & 2) * 0x011b) ^ (((0xc9 >> 5) & 4) * 0x011b)) ^ ((0xc9 << 2) ^ (((0xc9 >> 6) & 1) * 0x011b) ^ (((0xc9 >> 6) & 2) * 0x011b)) ^ ((0xc9 << 1) ^ (((0xc9 >> 7) & 1) * 0x011b))), (((0xca << 3) ^ (((0xca >> 5) & 1) * 0x011b) ^ (((0xca >> 5) & 2) * 0x011b) ^ (((0xca >> 5) & 4) * 0x011b)) ^ ((0xca << 2) ^ (((0xca >> 6) & 1) * 0x011b) ^ (((0xca >> 6) & 2) * 0x011b)) ^ ((0xca << 1) ^ (((0xca >> 7) & 1) * 0x011b))), (((0xcb << 3) ^ (((0xcb >> 5) & 1) * 0x011b) ^ (((0xcb >> 5) & 2) * 0x011b) ^ (((0xcb >> 5) & 4) * 0x011b)) ^ ((0xcb << 2) ^ (((0xcb >> 6) & 1) * 0x011b) ^ (((0xcb >> 6) & 2) * 0x011b)) ^ ((0xcb << 1) ^ (((0xcb >> 7) & 1) * 0x011b))), (((0xcc << 3) ^ (((0xcc >> 5) & 1) * 0x011b) ^ (((0xcc >> 5) & 2) * 0x011b) ^ (((0xcc >> 5) & 4) * 0x011b)) ^ ((0xcc << 2) ^ (((0xcc >> 6) & 1) * 0x011b) ^ (((0xcc >> 6) & 2) * 0x011b)) ^ ((0xcc << 1) ^ (((0xcc >> 7) & 1) * 0x011b))), (((0xcd << 3) ^ (((0xcd >> 5) & 1) * 0x011b) ^ (((0xcd >> 5) & 2) * 0x011b) ^ (((0xcd >> 5) & 4) * 0x011b)) ^ ((0xcd << 2) ^ (((0xcd >> 6) & 1) * 0x011b) ^ (((0xcd >> 6) & 2) * 0x011b)) ^ ((0xcd << 1) ^ (((0xcd >> 7) & 1) * 0x011b))), (((0xce << 3) ^ (((0xce >> 5) & 1) * 0x011b) ^ (((0xce >> 5) & 2) * 0x011b) ^ (((0xce >> 5) & 4) * 0x011b)) ^ ((0xce << 2) ^ (((0xce >> 6) & 1) * 0x011b) ^ (((0xce >> 6) & 2) * 0x011b)) ^ ((0xce << 1) ^ (((0xce >> 7) & 1) * 0x011b))), (((0xcf << 3) ^ (((0xcf >> 5) & 1) * 0x011b) ^ (((0xcf >> 5) & 2) * 0x011b) ^ (((0xcf >> 5) & 4) * 0x011b)) ^ ((0xcf << 2) ^ (((0xcf >> 6) & 1) * 0x011b) ^ (((0xcf >> 6) & 2) * 0x011b)) ^ ((0xcf << 1) ^ (((0xcf >> 7) & 1) * 0x011b))), (((0xd0 << 3) ^ (((0xd0 >> 5) & 1) * 0x011b) ^ (((0xd0 >> 5) & 2) * 0x011b) ^ (((0xd0 >> 5) & 4) * 0x011b)) ^ ((0xd0 << 2) ^ (((0xd0 >> 6) & 1) * 0x011b) ^ (((0xd0 >> 6) & 2) * 0x011b)) ^ ((0xd0 << 1) ^ (((0xd0 >> 7) & 1) * 0x011b))), (((0xd1 << 3) ^ (((0xd1 >> 5) & 1) * 0x011b) ^ (((0xd1 >> 5) & 2) * 0x011b) ^ (((0xd1 >> 5) & 4) * 0x011b)) ^ ((0xd1 << 2) ^ (((0xd1 >> 6) & 1) * 0x011b) ^ (((0xd1 >> 6) & 2) * 0x011b)) ^ ((0xd1 << 1) ^ (((0xd1 >> 7) & 1) * 0x011b))), (((0xd2 << 3) ^ (((0xd2 >> 5) & 1) * 0x011b) ^ (((0xd2 >> 5) & 2) * 0x011b) ^ (((0xd2 >> 5) & 4) * 0x011b)) ^ ((0xd2 << 2) ^ (((0xd2 >> 6) & 1) * 0x011b) ^ (((0xd2 >> 6) & 2) * 0x011b)) ^ ((0xd2 << 1) ^ (((0xd2 >> 7) & 1) * 0x011b))), (((0xd3 << 3) ^ (((0xd3 >> 5) & 1) * 0x011b) ^ (((0xd3 >> 5) & 2) * 0x011b) ^ (((0xd3 >> 5) & 4) * 0x011b)) ^ ((0xd3 << 2) ^ (((0xd3 >> 6) & 1) * 0x011b) ^ (((0xd3 >> 6) & 2) * 0x011b)) ^ ((0xd3 << 1) ^ (((0xd3 >> 7) & 1) * 0x011b))), (((0xd4 << 3) ^ (((0xd4 >> 5) & 1) * 0x011b) ^ (((0xd4 >> 5) & 2) * 0x011b) ^ (((0xd4 >> 5) & 4) * 0x011b)) ^ ((0xd4 << 2) ^ (((0xd4 >> 6) & 1) * 0x011b) ^ (((0xd4 >> 6) & 2) * 0x011b)) ^ ((0xd4 << 1) ^ (((0xd4 >> 7) & 1) * 0x011b))), (((0xd5 << 3) ^ (((0xd5 >> 5) & 1) * 0x011b) ^ (((0xd5 >> 5) & 2) * 0x011b) ^ (((0xd5 >> 5) & 4) * 0x011b)) ^ ((0xd5 << 2) ^ (((0xd5 >> 6) & 1) * 0x011b) ^ (((0xd5 >> 6) & 2) * 0x011b)) ^ ((0xd5 << 1) ^ (((0xd5 >> 7) & 1) * 0x011b))), (((0xd6 << 3) ^ (((0xd6 >> 5) & 1) * 0x011b) ^ (((0xd6 >> 5) & 2) * 0x011b) ^ (((0xd6 >> 5) & 4) * 0x011b)) ^ ((0xd6 << 2) ^ (((0xd6 >> 6) & 1) * 0x011b) ^ (((0xd6 >> 6) & 2) * 0x011b)) ^ ((0xd6 << 1) ^ (((0xd6 >> 7) & 1) * 0x011b))), (((0xd7 << 3) ^ (((0xd7 >> 5) & 1) * 0x011b) ^ (((0xd7 >> 5) & 2) * 0x011b) ^ (((0xd7 >> 5) & 4) * 0x011b)) ^ ((0xd7 << 2) ^ (((0xd7 >> 6) & 1) * 0x011b) ^ (((0xd7 >> 6) & 2) * 0x011b)) ^ ((0xd7 << 1) ^ (((0xd7 >> 7) & 1) * 0x011b))), (((0xd8 << 3) ^ (((0xd8 >> 5) & 1) * 0x011b) ^ (((0xd8 >> 5) & 2) * 0x011b) ^ (((0xd8 >> 5) & 4) * 0x011b)) ^ ((0xd8 << 2) ^ (((0xd8 >> 6) & 1) * 0x011b) ^ (((0xd8 >> 6) & 2) * 0x011b)) ^ ((0xd8 << 1) ^ (((0xd8 >> 7) & 1) * 0x011b))), (((0xd9 << 3) ^ (((0xd9 >> 5) & 1) * 0x011b) ^ (((0xd9 >> 5) & 2) * 0x011b) ^ (((0xd9 >> 5) & 4) * 0x011b)) ^ ((0xd9 << 2) ^ (((0xd9 >> 6) & 1) * 0x011b) ^ (((0xd9 >> 6) & 2) * 0x011b)) ^ ((0xd9 << 1) ^ (((0xd9 >> 7) & 1) * 0x011b))), (((0xda << 3) ^ (((0xda >> 5) & 1) * 0x011b) ^ (((0xda >> 5) & 2) * 0x011b) ^ (((0xda >> 5) & 4) * 0x011b)) ^ ((0xda << 2) ^ (((0xda >> 6) & 1) * 0x011b) ^ (((0xda >> 6) & 2) * 0x011b)) ^ ((0xda << 1) ^ (((0xda >> 7) & 1) * 0x011b))), (((0xdb << 3) ^ (((0xdb >> 5) & 1) * 0x011b) ^ (((0xdb >> 5) & 2) * 0x011b) ^ (((0xdb >> 5) & 4) * 0x011b)) ^ ((0xdb << 2) ^ (((0xdb >> 6) & 1) * 0x011b) ^ (((0xdb >> 6) & 2) * 0x011b)) ^ ((0xdb << 1) ^ (((0xdb >> 7) & 1) * 0x011b))), (((0xdc << 3) ^ (((0xdc >> 5) & 1) * 0x011b) ^ (((0xdc >> 5) & 2) * 0x011b) ^ (((0xdc >> 5) & 4) * 0x011b)) ^ ((0xdc << 2) ^ (((0xdc >> 6) & 1) * 0x011b) ^ (((0xdc >> 6) & 2) * 0x011b)) ^ ((0xdc << 1) ^ (((0xdc >> 7) & 1) * 0x011b))), (((0xdd << 3) ^ (((0xdd >> 5) & 1) * 0x011b) ^ (((0xdd >> 5) & 2) * 0x011b) ^ (((0xdd >> 5) & 4) * 0x011b)) ^ ((0xdd << 2) ^ (((0xdd >> 6) & 1) * 0x011b) ^ (((0xdd >> 6) & 2) * 0x011b)) ^ ((0xdd << 1) ^ (((0xdd >> 7) & 1) * 0x011b))), (((0xde << 3) ^ (((0xde >> 5) & 1) * 0x011b) ^ (((0xde >> 5) & 2) * 0x011b) ^ (((0xde >> 5) & 4) * 0x011b)) ^ ((0xde << 2) ^ (((0xde >> 6) & 1) * 0x011b) ^ (((0xde >> 6) & 2) * 0x011b)) ^ ((0xde << 1) ^ (((0xde >> 7) & 1) * 0x011b))), (((0xdf << 3) ^ (((0xdf >> 5) & 1) * 0x011b) ^ (((0xdf >> 5) & 2) * 0x011b) ^ (((0xdf >> 5) & 4) * 0x011b)) ^ ((0xdf << 2) ^ (((0xdf >> 6) & 1) * 0x011b) ^ (((0xdf >> 6) & 2) * 0x011b)) ^ ((0xdf << 1) ^ (((0xdf >> 7) & 1) * 0x011b))), (((0xe0 << 3) ^ (((0xe0 >> 5) & 1) * 0x011b) ^ (((0xe0 >> 5) & 2) * 0x011b) ^ (((0xe0 >> 5) & 4) * 0x011b)) ^ ((0xe0 << 2) ^ (((0xe0 >> 6) & 1) * 0x011b) ^ (((0xe0 >> 6) & 2) * 0x011b)) ^ ((0xe0 << 1) ^ (((0xe0 >> 7) & 1) * 0x011b))), (((0xe1 << 3) ^ (((0xe1 >> 5) & 1) * 0x011b) ^ (((0xe1 >> 5) & 2) * 0x011b) ^ (((0xe1 >> 5) & 4) * 0x011b)) ^ ((0xe1 << 2) ^ (((0xe1 >> 6) & 1) * 0x011b) ^ (((0xe1 >> 6) & 2) * 0x011b)) ^ ((0xe1 << 1) ^ (((0xe1 >> 7) & 1) * 0x011b))), (((0xe2 << 3) ^ (((0xe2 >> 5) & 1) * 0x011b) ^ (((0xe2 >> 5) & 2) * 0x011b) ^ (((0xe2 >> 5) & 4) * 0x011b)) ^ ((0xe2 << 2) ^ (((0xe2 >> 6) & 1) * 0x011b) ^ (((0xe2 >> 6) & 2) * 0x011b)) ^ ((0xe2 << 1) ^ (((0xe2 >> 7) & 1) * 0x011b))), (((0xe3 << 3) ^ (((0xe3 >> 5) & 1) * 0x011b) ^ (((0xe3 >> 5) & 2) * 0x011b) ^ (((0xe3 >> 5) & 4) * 0x011b)) ^ ((0xe3 << 2) ^ (((0xe3 >> 6) & 1) * 0x011b) ^ (((0xe3 >> 6) & 2) * 0x011b)) ^ ((0xe3 << 1) ^ (((0xe3 >> 7) & 1) * 0x011b))), (((0xe4 << 3) ^ (((0xe4 >> 5) & 1) * 0x011b) ^ (((0xe4 >> 5) & 2) * 0x011b) ^ (((0xe4 >> 5) & 4) * 0x011b)) ^ ((0xe4 << 2) ^ (((0xe4 >> 6) & 1) * 0x011b) ^ (((0xe4 >> 6) & 2) * 0x011b)) ^ ((0xe4 << 1) ^ (((0xe4 >> 7) & 1) * 0x011b))), (((0xe5 << 3) ^ (((0xe5 >> 5) & 1) * 0x011b) ^ (((0xe5 >> 5) & 2) * 0x011b) ^ (((0xe5 >> 5) & 4) * 0x011b)) ^ ((0xe5 << 2) ^ (((0xe5 >> 6) & 1) * 0x011b) ^ (((0xe5 >> 6) & 2) * 0x011b)) ^ ((0xe5 << 1) ^ (((0xe5 >> 7) & 1) * 0x011b))), (((0xe6 << 3) ^ (((0xe6 >> 5) & 1) * 0x011b) ^ (((0xe6 >> 5) & 2) * 0x011b) ^ (((0xe6 >> 5) & 4) * 0x011b)) ^ ((0xe6 << 2) ^ (((0xe6 >> 6) & 1) * 0x011b) ^ (((0xe6 >> 6) & 2) * 0x011b)) ^ ((0xe6 << 1) ^ (((0xe6 >> 7) & 1) * 0x011b))), (((0xe7 << 3) ^ (((0xe7 >> 5) & 1) * 0x011b) ^ (((0xe7 >> 5) & 2) * 0x011b) ^ (((0xe7 >> 5) & 4) * 0x011b)) ^ ((0xe7 << 2) ^ (((0xe7 >> 6) & 1) * 0x011b) ^ (((0xe7 >> 6) & 2) * 0x011b)) ^ ((0xe7 << 1) ^ (((0xe7 >> 7) & 1) * 0x011b))), (((0xe8 << 3) ^ (((0xe8 >> 5) & 1) * 0x011b) ^ (((0xe8 >> 5) & 2) * 0x011b) ^ (((0xe8 >> 5) & 4) * 0x011b)) ^ ((0xe8 << 2) ^ (((0xe8 >> 6) & 1) * 0x011b) ^ (((0xe8 >> 6) & 2) * 0x011b)) ^ ((0xe8 << 1) ^ (((0xe8 >> 7) & 1) * 0x011b))), (((0xe9 << 3) ^ (((0xe9 >> 5) & 1) * 0x011b) ^ (((0xe9 >> 5) & 2) * 0x011b) ^ (((0xe9 >> 5) & 4) * 0x011b)) ^ ((0xe9 << 2) ^ (((0xe9 >> 6) & 1) * 0x011b) ^ (((0xe9 >> 6) & 2) * 0x011b)) ^ ((0xe9 << 1) ^ (((0xe9 >> 7) & 1) * 0x011b))), (((0xea << 3) ^ (((0xea >> 5) & 1) * 0x011b) ^ (((0xea >> 5) & 2) * 0x011b) ^ (((0xea >> 5) & 4) * 0x011b)) ^ ((0xea << 2) ^ (((0xea >> 6) & 1) * 0x011b) ^ (((0xea >> 6) & 2) * 0x011b)) ^ ((0xea << 1) ^ (((0xea >> 7) & 1) * 0x011b))), (((0xeb << 3) ^ (((0xeb >> 5) & 1) * 0x011b) ^ (((0xeb >> 5) & 2) * 0x011b) ^ (((0xeb >> 5) & 4) * 0x011b)) ^ ((0xeb << 2) ^ (((0xeb >> 6) & 1) * 0x011b) ^ (((0xeb >> 6) & 2) * 0x011b)) ^ ((0xeb << 1) ^ (((0xeb >> 7) & 1) * 0x011b))), (((0xec << 3) ^ (((0xec >> 5) & 1) * 0x011b) ^ (((0xec >> 5) & 2) * 0x011b) ^ (((0xec >> 5) & 4) * 0x011b)) ^ ((0xec << 2) ^ (((0xec >> 6) & 1) * 0x011b) ^ (((0xec >> 6) & 2) * 0x011b)) ^ ((0xec << 1) ^ (((0xec >> 7) & 1) * 0x011b))), (((0xed << 3) ^ (((0xed >> 5) & 1) * 0x011b) ^ (((0xed >> 5) & 2) * 0x011b) ^ (((0xed >> 5) & 4) * 0x011b)) ^ ((0xed << 2) ^ (((0xed >> 6) & 1) * 0x011b) ^ (((0xed >> 6) & 2) * 0x011b)) ^ ((0xed << 1) ^ (((0xed >> 7) & 1) * 0x011b))), (((0xee << 3) ^ (((0xee >> 5) & 1) * 0x011b) ^ (((0xee >> 5) & 2) * 0x011b) ^ (((0xee >> 5) & 4) * 0x011b)) ^ ((0xee << 2) ^ (((0xee >> 6) & 1) * 0x011b) ^ (((0xee >> 6) & 2) * 0x011b)) ^ ((0xee << 1) ^ (((0xee >> 7) & 1) * 0x011b))), (((0xef << 3) ^ (((0xef >> 5) & 1) * 0x011b) ^ (((0xef >> 5) & 2) * 0x011b) ^ (((0xef >> 5) & 4) * 0x011b)) ^ ((0xef << 2) ^ (((0xef >> 6) & 1) * 0x011b) ^ (((0xef >> 6) & 2) * 0x011b)) ^ ((0xef << 1) ^ (((0xef >> 7) & 1) * 0x011b))), (((0xf0 << 3) ^ (((0xf0 >> 5) & 1) * 0x011b) ^ (((0xf0 >> 5) & 2) * 0x011b) ^ (((0xf0 >> 5) & 4) * 0x011b)) ^ ((0xf0 << 2) ^ (((0xf0 >> 6) & 1) * 0x011b) ^ (((0xf0 >> 6) & 2) * 0x011b)) ^ ((0xf0 << 1) ^ (((0xf0 >> 7) & 1) * 0x011b))), (((0xf1 << 3) ^ (((0xf1 >> 5) & 1) * 0x011b) ^ (((0xf1 >> 5) & 2) * 0x011b) ^ (((0xf1 >> 5) & 4) * 0x011b)) ^ ((0xf1 << 2) ^ (((0xf1 >> 6) & 1) * 0x011b) ^ (((0xf1 >> 6) & 2) * 0x011b)) ^ ((0xf1 << 1) ^ (((0xf1 >> 7) & 1) * 0x011b))), (((0xf2 << 3) ^ (((0xf2 >> 5) & 1) * 0x011b) ^ (((0xf2 >> 5) & 2) * 0x011b) ^ (((0xf2 >> 5) & 4) * 0x011b)) ^ ((0xf2 << 2) ^ (((0xf2 >> 6) & 1) * 0x011b) ^ (((0xf2 >> 6) & 2) * 0x011b)) ^ ((0xf2 << 1) ^ (((0xf2 >> 7) & 1) * 0x011b))), (((0xf3 << 3) ^ (((0xf3 >> 5) & 1) * 0x011b) ^ (((0xf3 >> 5) & 2) * 0x011b) ^ (((0xf3 >> 5) & 4) * 0x011b)) ^ ((0xf3 << 2) ^ (((0xf3 >> 6) & 1) * 0x011b) ^ (((0xf3 >> 6) & 2) * 0x011b)) ^ ((0xf3 << 1) ^ (((0xf3 >> 7) & 1) * 0x011b))), (((0xf4 << 3) ^ (((0xf4 >> 5) & 1) * 0x011b) ^ (((0xf4 >> 5) & 2) * 0x011b) ^ (((0xf4 >> 5) & 4) * 0x011b)) ^ ((0xf4 << 2) ^ (((0xf4 >> 6) & 1) * 0x011b) ^ (((0xf4 >> 6) & 2) * 0x011b)) ^ ((0xf4 << 1) ^ (((0xf4 >> 7) & 1) * 0x011b))), (((0xf5 << 3) ^ (((0xf5 >> 5) & 1) * 0x011b) ^ (((0xf5 >> 5) & 2) * 0x011b) ^ (((0xf5 >> 5) & 4) * 0x011b)) ^ ((0xf5 << 2) ^ (((0xf5 >> 6) & 1) * 0x011b) ^ (((0xf5 >> 6) & 2) * 0x011b)) ^ ((0xf5 << 1) ^ (((0xf5 >> 7) & 1) * 0x011b))), (((0xf6 << 3) ^ (((0xf6 >> 5) & 1) * 0x011b) ^ (((0xf6 >> 5) & 2) * 0x011b) ^ (((0xf6 >> 5) & 4) * 0x011b)) ^ ((0xf6 << 2) ^ (((0xf6 >> 6) & 1) * 0x011b) ^ (((0xf6 >> 6) & 2) * 0x011b)) ^ ((0xf6 << 1) ^ (((0xf6 >> 7) & 1) * 0x011b))), (((0xf7 << 3) ^ (((0xf7 >> 5) & 1) * 0x011b) ^ (((0xf7 >> 5) & 2) * 0x011b) ^ (((0xf7 >> 5) & 4) * 0x011b)) ^ ((0xf7 << 2) ^ (((0xf7 >> 6) & 1) * 0x011b) ^ (((0xf7 >> 6) & 2) * 0x011b)) ^ ((0xf7 << 1) ^ (((0xf7 >> 7) & 1) * 0x011b))), (((0xf8 << 3) ^ (((0xf8 >> 5) & 1) * 0x011b) ^ (((0xf8 >> 5) & 2) * 0x011b) ^ (((0xf8 >> 5) & 4) * 0x011b)) ^ ((0xf8 << 2) ^ (((0xf8 >> 6) & 1) * 0x011b) ^ (((0xf8 >> 6) & 2) * 0x011b)) ^ ((0xf8 << 1) ^ (((0xf8 >> 7) & 1) * 0x011b))), (((0xf9 << 3) ^ (((0xf9 >> 5) & 1) * 0x011b) ^ (((0xf9 >> 5) & 2) * 0x011b) ^ (((0xf9 >> 5) & 4) * 0x011b)) ^ ((0xf9 << 2) ^ (((0xf9 >> 6) & 1) * 0x011b) ^ (((0xf9 >> 6) & 2) * 0x011b)) ^ ((0xf9 << 1) ^ (((0xf9 >> 7) & 1) * 0x011b))), (((0xfa << 3) ^ (((0xfa >> 5) & 1) * 0x011b) ^ (((0xfa >> 5) & 2) * 0x011b) ^ (((0xfa >> 5) & 4) * 0x011b)) ^ ((0xfa << 2) ^ (((0xfa >> 6) & 1) * 0x011b) ^ (((0xfa >> 6) & 2) * 0x011b)) ^ ((0xfa << 1) ^ (((0xfa >> 7) & 1) * 0x011b))), (((0xfb << 3) ^ (((0xfb >> 5) & 1) * 0x011b) ^ (((0xfb >> 5) & 2) * 0x011b) ^ (((0xfb >> 5) & 4) * 0x011b)) ^ ((0xfb << 2) ^ (((0xfb >> 6) & 1) * 0x011b) ^ (((0xfb >> 6) & 2) * 0x011b)) ^ ((0xfb << 1) ^ (((0xfb >> 7) & 1) * 0x011b))), (((0xfc << 3) ^ (((0xfc >> 5) & 1) * 0x011b) ^ (((0xfc >> 5) & 2) * 0x011b) ^ (((0xfc >> 5) & 4) * 0x011b)) ^ ((0xfc << 2) ^ (((0xfc >> 6) & 1) * 0x011b) ^ (((0xfc >> 6) & 2) * 0x011b)) ^ ((0xfc << 1) ^ (((0xfc >> 7) & 1) * 0x011b))), (((0xfd << 3) ^ (((0xfd >> 5) & 1) * 0x011b) ^ (((0xfd >> 5) & 2) * 0x011b) ^ (((0xfd >> 5) & 4) * 0x011b)) ^ ((0xfd << 2) ^ (((0xfd >> 6) & 1) * 0x011b) ^ (((0xfd >> 6) & 2) * 0x011b)) ^ ((0xfd << 1) ^ (((0xfd >> 7) & 1) * 0x011b))), (((0xfe << 3) ^ (((0xfe >> 5) & 1) * 0x011b) ^ (((0xfe >> 5) & 2) * 0x011b) ^ (((0xfe >> 5) & 4) * 0x011b)) ^ ((0xfe << 2) ^ (((0xfe >> 6) & 1) * 0x011b) ^ (((0xfe >> 6) & 2) * 0x011b)) ^ ((0xfe << 1) ^ (((0xfe >> 7) & 1) * 0x011b))), (((0xff << 3) ^ (((0xff >> 5) & 1) * 0x011b) ^ (((0xff >> 5) & 2) * 0x011b) ^ (((0xff >> 5) & 4) * 0x011b)) ^ ((0xff << 2) ^ (((0xff >> 6) & 1) * 0x011b) ^ (((0xff >> 6) & 2) * 0x011b)) ^ ((0xff << 1) ^ (((0xff >> 7) & 1) * 0x011b))) };
# 348 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/smp/aes.c"
static void xor_block( void *d, const void *s )
{

    ((uint_32t *)d)[ 0] ^= ((uint_32t *)s)[ 0];
    ((uint_32t *)d)[ 1] ^= ((uint_32t *)s)[ 1];
    ((uint_32t *)d)[ 2] ^= ((uint_32t *)s)[ 2];
    ((uint_32t *)d)[ 3] ^= ((uint_32t *)s)[ 3];
# 373 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/smp/aes.c"
}

static void copy_and_key( void *d, const void *s, const void *k )
{

    ((uint_32t *)d)[ 0] = ((uint_32t *)s)[ 0] ^ ((uint_32t *)k)[ 0];
    ((uint_32t *)d)[ 1] = ((uint_32t *)s)[ 1] ^ ((uint_32t *)k)[ 1];
    ((uint_32t *)d)[ 2] = ((uint_32t *)s)[ 2] ^ ((uint_32t *)k)[ 2];
    ((uint_32t *)d)[ 3] = ((uint_32t *)s)[ 3] ^ ((uint_32t *)k)[ 3];
# 403 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/smp/aes.c"
}

static void add_round_key( uint_8t d[(4 * 4)], const uint_8t k[(4 * 4)] )
{
    xor_block(d, k);
}

static void shift_sub_rows( uint_8t st[(4 * 4)] )
{
    uint_8t tt;

    st[ 0] = sbox[(st[ 0])]; st[ 4] = sbox[(st[ 4])];
    st[ 8] = sbox[(st[ 8])]; st[12] = sbox[(st[12])];

    tt = st[1]; st[ 1] = sbox[(st[ 5])]; st[ 5] = sbox[(st[ 9])];
    st[ 9] = sbox[(st[13])]; st[13] = sbox[(tt)];

    tt = st[2]; st[ 2] = sbox[(st[10])]; st[10] = sbox[(tt)];
    tt = st[6]; st[ 6] = sbox[(st[14])]; st[14] = sbox[(tt)];

    tt = st[15]; st[15] = sbox[(st[11])]; st[11] = sbox[(st[ 7])];
    st[ 7] = sbox[(st[ 3])]; st[ 3] = sbox[(tt)];
}

static void inv_shift_sub_rows( uint_8t st[(4 * 4)] )
{
    uint_8t tt;

    st[ 0] = isbox[(st[ 0])]; st[ 4] = isbox[(st[ 4])];
    st[ 8] = isbox[(st[ 8])]; st[12] = isbox[(st[12])];

    tt = st[13]; st[13] = isbox[(st[9])]; st[ 9] = isbox[(st[5])];
    st[ 5] = isbox[(st[1])]; st[ 1] = isbox[(tt)];

    tt = st[2]; st[ 2] = isbox[(st[10])]; st[10] = isbox[(tt)];
    tt = st[6]; st[ 6] = isbox[(st[14])]; st[14] = isbox[(tt)];

    tt = st[3]; st[ 3] = isbox[(st[ 7])]; st[ 7] = isbox[(st[11])];
    st[11] = isbox[(st[15])]; st[15] = isbox[(tt)];
}


static void mix_sub_columns( uint_8t dt[(4 * 4)] )
{
    uint_8t st[(4 * 4)];
    memcpy(st, dt, (4 * 4));




    dt[ 0] = gfm2_sbox[(st[0])] ^ gfm3_sbox[(st[5])] ^ sbox[(st[10])] ^ sbox[(st[15])];
    dt[ 1] = sbox[(st[0])] ^ gfm2_sbox[(st[5])] ^ gfm3_sbox[(st[10])] ^ sbox[(st[15])];
    dt[ 2] = sbox[(st[0])] ^ sbox[(st[5])] ^ gfm2_sbox[(st[10])] ^ gfm3_sbox[(st[15])];
    dt[ 3] = gfm3_sbox[(st[0])] ^ sbox[(st[5])] ^ sbox[(st[10])] ^ gfm2_sbox[(st[15])];

    dt[ 4] = gfm2_sbox[(st[4])] ^ gfm3_sbox[(st[9])] ^ sbox[(st[14])] ^ sbox[(st[3])];
    dt[ 5] = sbox[(st[4])] ^ gfm2_sbox[(st[9])] ^ gfm3_sbox[(st[14])] ^ sbox[(st[3])];
    dt[ 6] = sbox[(st[4])] ^ sbox[(st[9])] ^ gfm2_sbox[(st[14])] ^ gfm3_sbox[(st[3])];
    dt[ 7] = gfm3_sbox[(st[4])] ^ sbox[(st[9])] ^ sbox[(st[14])] ^ gfm2_sbox[(st[3])];

    dt[ 8] = gfm2_sbox[(st[8])] ^ gfm3_sbox[(st[13])] ^ sbox[(st[2])] ^ sbox[(st[7])];
    dt[ 9] = sbox[(st[8])] ^ gfm2_sbox[(st[13])] ^ gfm3_sbox[(st[2])] ^ sbox[(st[7])];
    dt[10] = sbox[(st[8])] ^ sbox[(st[13])] ^ gfm2_sbox[(st[2])] ^ gfm3_sbox[(st[7])];
    dt[11] = gfm3_sbox[(st[8])] ^ sbox[(st[13])] ^ sbox[(st[2])] ^ gfm2_sbox[(st[7])];

    dt[12] = gfm2_sbox[(st[12])] ^ gfm3_sbox[(st[1])] ^ sbox[(st[6])] ^ sbox[(st[11])];
    dt[13] = sbox[(st[12])] ^ gfm2_sbox[(st[1])] ^ gfm3_sbox[(st[6])] ^ sbox[(st[11])];
    dt[14] = sbox[(st[12])] ^ sbox[(st[1])] ^ gfm2_sbox[(st[6])] ^ gfm3_sbox[(st[11])];
    dt[15] = gfm3_sbox[(st[12])] ^ sbox[(st[1])] ^ sbox[(st[6])] ^ gfm2_sbox[(st[11])];
}


static void inv_mix_sub_columns( uint_8t dt[(4 * 4)] )
{
    uint_8t st[(4 * 4)];
    memcpy(st, dt, (4 * 4));




    dt[ 0] = isbox[(gfmul_e[(st[ 0])] ^ gfmul_b[(st[ 1])] ^ gfmul_d[(st[ 2])] ^ gfmul_9[(st[ 3])])];
    dt[ 5] = isbox[(gfmul_9[(st[ 0])] ^ gfmul_e[(st[ 1])] ^ gfmul_b[(st[ 2])] ^ gfmul_d[(st[ 3])])];
    dt[10] = isbox[(gfmul_d[(st[ 0])] ^ gfmul_9[(st[ 1])] ^ gfmul_e[(st[ 2])] ^ gfmul_b[(st[ 3])])];
    dt[15] = isbox[(gfmul_b[(st[ 0])] ^ gfmul_d[(st[ 1])] ^ gfmul_9[(st[ 2])] ^ gfmul_e[(st[ 3])])];

    dt[ 4] = isbox[(gfmul_e[(st[ 4])] ^ gfmul_b[(st[ 5])] ^ gfmul_d[(st[ 6])] ^ gfmul_9[(st[ 7])])];
    dt[ 9] = isbox[(gfmul_9[(st[ 4])] ^ gfmul_e[(st[ 5])] ^ gfmul_b[(st[ 6])] ^ gfmul_d[(st[ 7])])];
    dt[14] = isbox[(gfmul_d[(st[ 4])] ^ gfmul_9[(st[ 5])] ^ gfmul_e[(st[ 6])] ^ gfmul_b[(st[ 7])])];
    dt[ 3] = isbox[(gfmul_b[(st[ 4])] ^ gfmul_d[(st[ 5])] ^ gfmul_9[(st[ 6])] ^ gfmul_e[(st[ 7])])];

    dt[ 8] = isbox[(gfmul_e[(st[ 8])] ^ gfmul_b[(st[ 9])] ^ gfmul_d[(st[10])] ^ gfmul_9[(st[11])])];
    dt[13] = isbox[(gfmul_9[(st[ 8])] ^ gfmul_e[(st[ 9])] ^ gfmul_b[(st[10])] ^ gfmul_d[(st[11])])];
    dt[ 2] = isbox[(gfmul_d[(st[ 8])] ^ gfmul_9[(st[ 9])] ^ gfmul_e[(st[10])] ^ gfmul_b[(st[11])])];
    dt[ 7] = isbox[(gfmul_b[(st[ 8])] ^ gfmul_d[(st[ 9])] ^ gfmul_9[(st[10])] ^ gfmul_e[(st[11])])];

    dt[12] = isbox[(gfmul_e[(st[12])] ^ gfmul_b[(st[13])] ^ gfmul_d[(st[14])] ^ gfmul_9[(st[15])])];
    dt[ 1] = isbox[(gfmul_9[(st[12])] ^ gfmul_e[(st[13])] ^ gfmul_b[(st[14])] ^ gfmul_d[(st[15])])];
    dt[ 6] = isbox[(gfmul_d[(st[12])] ^ gfmul_9[(st[13])] ^ gfmul_e[(st[14])] ^ gfmul_b[(st[15])])];
    dt[11] = isbox[(gfmul_b[(st[12])] ^ gfmul_d[(st[13])] ^ gfmul_9[(st[14])] ^ gfmul_e[(st[15])])];
}
# 513 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/smp/aes.c"
return_type aes_set_key( const unsigned char key[], length_type keylen, aes_context ctx[1] )
{
    uint_8t cc, rc, hi;

    switch ( keylen ) {
    case 16:
    case 128:
        keylen = 16;
        break;
    case 24:
    case 192:
        keylen = 24;
        break;
    case 32:

        keylen = 32;
        break;
    default:
        ctx->rnd = 0;
        return (return_type) - 1;
    }
    memcpy(ctx->ksch, key, keylen);
    hi = (keylen + 28) << 2;
    ctx->rnd = (hi >> 4) - 1;
    for ( cc = keylen, rc = 1; cc < hi; cc += 4 ) {
        uint_8t tt, t0, t1, t2, t3;

        t0 = ctx->ksch[cc - 4];
        t1 = ctx->ksch[cc - 3];
        t2 = ctx->ksch[cc - 2];
        t3 = ctx->ksch[cc - 1];
        if ( cc % keylen == 0 ) {
            tt = t0;
            t0 = sbox[(t1)] ^ rc;
            t1 = sbox[(t2)];
            t2 = sbox[(t3)];
            t3 = sbox[(tt)];
            rc = ((rc << 1) ^ (((rc >> 7) & 1) * 0x011b));
        } else if ( keylen > 24 && cc % keylen == 16 ) {
            t0 = sbox[(t0)];
            t1 = sbox[(t1)];
            t2 = sbox[(t2)];
            t3 = sbox[(t3)];
        }
        tt = cc - keylen;
        ctx->ksch[cc + 0] = ctx->ksch[tt + 0] ^ t0;
        ctx->ksch[cc + 1] = ctx->ksch[tt + 1] ^ t1;
        ctx->ksch[cc + 2] = ctx->ksch[tt + 2] ^ t2;
        ctx->ksch[cc + 3] = ctx->ksch[tt + 3] ^ t3;
    }
    return 0;
}
# 573 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/smp/aes.c"
return_type bluedroid_aes_encrypt( const unsigned char in[(4 * 4)], unsigned char out[(4 * 4)], const aes_context ctx[1] )
{
    if ( ctx->rnd ) {
        uint_8t s1[(4 * 4)], r;
        copy_and_key( s1, in, ctx->ksch );

        for ( r = 1 ; r < ctx->rnd ; ++r )

        {
            mix_sub_columns( s1 );
            add_round_key( s1, ctx->ksch + r * (4 * 4));
        }







        shift_sub_rows( s1 );
        copy_and_key( out, s1, ctx->ksch + r * (4 * 4) );
    } else {
        return (return_type) - 1;
    }
    return 0;
}



return_type aes_cbc_encrypt( const unsigned char *in, unsigned char *out,
                             int n_block, unsigned char iv[(4 * 4)], const aes_context ctx[1] )
{

    while (n_block--) {
        xor_block(iv, in);
        if (bluedroid_aes_encrypt(iv, iv, ctx) != 0) {
            return 1;
        }
        memcpy(out, iv, (4 * 4));
        in += (4 * 4);
        out += (4 * 4);
    }
    return 0;
}







return_type bluedroid_aes_decrypt( const unsigned char in[(4 * 4)], unsigned char out[(4 * 4)], const aes_context ctx[1] )
{
    if ( ctx->rnd ) {
        uint_8t s1[(4 * 4)], r;
        copy_and_key( s1, in, ctx->ksch + ctx->rnd * (4 * 4) );
        inv_shift_sub_rows( s1 );

        for ( r = ctx->rnd ; --r ; )

        {
            add_round_key( s1, ctx->ksch + r * (4 * 4) );
            inv_mix_sub_columns( s1 );
        }







        copy_and_key( out, s1, ctx->ksch );
    } else {
        return (return_type) - 1;
    }
    return 0;
}



return_type aes_cbc_decrypt( const unsigned char *in, unsigned char *out,
                             int n_block, unsigned char iv[(4 * 4)], const aes_context ctx[1] )
{
    while (n_block--) {
        uint_8t tmp[(4 * 4)];

        memcpy(tmp, in, (4 * 4));
        if (bluedroid_aes_decrypt(in, out, ctx) != 0) {
            return 1;
        }
        xor_block(out, iv);
        memcpy(iv, tmp, (4 * 4));
        in += (4 * 4);
        out += (4 * 4);
    }
    return 0;
}







static void update_encrypt_key_128( uint_8t k[(4 * 4)], uint_8t *rc )
{
    uint_8t cc;

    k[0] ^= sbox[(k[13])] ^ *rc;
    k[1] ^= sbox[(k[14])];
    k[2] ^= sbox[(k[15])];
    k[3] ^= sbox[(k[12])];
    *rc = ((*rc << 1) ^ (((*rc >> 7) & 1) * 0x011b));

    for (cc = 4; cc < 16; cc += 4 ) {
        k[cc + 0] ^= k[cc - 4];
        k[cc + 1] ^= k[cc - 3];
        k[cc + 2] ^= k[cc - 2];
        k[cc + 3] ^= k[cc - 1];
    }
}



void bluedroid_aes_encrypt_128( const unsigned char in[(4 * 4)], unsigned char out[(4 * 4)],
                                const unsigned char key[(4 * 4)], unsigned char o_key[(4 * 4)] )
{
    uint_8t s1[(4 * 4)], r, rc = 1;

    if (o_key != key) {
        memcpy(o_key, key, (4 * 4));
    }
    copy_and_key( s1, in, o_key );

    for ( r = 1 ; r < 10 ; ++r )

    {
        mix_sub_columns( s1 );
        update_encrypt_key_128( o_key, &rc );
        add_round_key( s1, o_key );
    }
# 723 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/smp/aes.c"
    shift_sub_rows( s1 );
    update_encrypt_key_128( o_key, &rc );
    copy_and_key( out, s1, o_key );
}







static void update_decrypt_key_128( uint_8t k[(4 * 4)], uint_8t *rc )
{
    uint_8t cc;

    for ( cc = 12; cc > 0; cc -= 4 ) {
        k[cc + 0] ^= k[cc - 4];
        k[cc + 1] ^= k[cc - 3];
        k[cc + 2] ^= k[cc - 2];
        k[cc + 3] ^= k[cc - 1];
    }
    *rc = (((*rc) >> 1) ^ ((*rc) & 1 ? 0x008d : 0));
    k[0] ^= sbox[(k[13])] ^ *rc;
    k[1] ^= sbox[(k[14])];
    k[2] ^= sbox[(k[15])];
    k[3] ^= sbox[(k[12])];
}



void bluedroid_aes_decrypt_128( const unsigned char in[(4 * 4)], unsigned char out[(4 * 4)],
                                const unsigned char key[(4 * 4)], unsigned char o_key[(4 * 4)] )
{
    uint_8t s1[(4 * 4)], r, rc = 0x6c;
    if (o_key != key) {
        memcpy(o_key, key, (4 * 4));
    }

    copy_and_key( s1, in, o_key );
    inv_shift_sub_rows( s1 );

    for ( r = 10 ; --r ; )

    {
        update_decrypt_key_128( o_key, &rc );
        add_round_key( s1, o_key );
        inv_mix_sub_columns( s1 );
    }
# 779 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/smp/aes.c"
    update_decrypt_key_128( o_key, &rc );
    copy_and_key( out, s1, o_key );
}







static void update_encrypt_key_256( uint_8t k[2 * (4 * 4)], uint_8t *rc )
{
    uint_8t cc;

    k[0] ^= sbox[(k[29])] ^ *rc;
    k[1] ^= sbox[(k[30])];
    k[2] ^= sbox[(k[31])];
    k[3] ^= sbox[(k[28])];
    *rc = ((*rc << 1) ^ (((*rc >> 7) & 1) * 0x011b));

    for (cc = 4; cc < 16; cc += 4) {
        k[cc + 0] ^= k[cc - 4];
        k[cc + 1] ^= k[cc - 3];
        k[cc + 2] ^= k[cc - 2];
        k[cc + 3] ^= k[cc - 1];
    }

    k[16] ^= sbox[(k[12])];
    k[17] ^= sbox[(k[13])];
    k[18] ^= sbox[(k[14])];
    k[19] ^= sbox[(k[15])];

    for ( cc = 20; cc < 32; cc += 4 ) {
        k[cc + 0] ^= k[cc - 4];
        k[cc + 1] ^= k[cc - 3];
        k[cc + 2] ^= k[cc - 2];
        k[cc + 3] ^= k[cc - 1];
    }
}



void bluedroid_aes_encrypt_256( const unsigned char in[(4 * 4)], unsigned char out[(4 * 4)],
                                const unsigned char key[2 * (4 * 4)], unsigned char o_key[2 * (4 * 4)] )
{
    uint_8t s1[(4 * 4)], r, rc = 1;
    if (o_key != key) {
        memcpy(o_key, key, (4 * 4));
        memcpy(o_key + 16, key + 16, (4 * 4));
    }
    copy_and_key( s1, in, o_key );

    for ( r = 1 ; r < 14 ; ++r )

    {
        mix_sub_columns(s1);
        if ( r & 1 ) {
            add_round_key( s1, o_key + 16 );
        } else {
            update_encrypt_key_256( o_key, &rc );
            add_round_key( s1, o_key );
        }
    }
# 855 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/smp/aes.c"
    shift_sub_rows( s1 );
    update_encrypt_key_256( o_key, &rc );
    copy_and_key( out, s1, o_key );
}







static void update_decrypt_key_256( uint_8t k[2 * (4 * 4)], uint_8t *rc )
{
    uint_8t cc;

    for (cc = 28; cc > 16; cc -= 4) {
        k[cc + 0] ^= k[cc - 4];
        k[cc + 1] ^= k[cc - 3];
        k[cc + 2] ^= k[cc - 2];
        k[cc + 3] ^= k[cc - 1];
    }

    k[16] ^= sbox[(k[12])];
    k[17] ^= sbox[(k[13])];
    k[18] ^= sbox[(k[14])];
    k[19] ^= sbox[(k[15])];

    for (cc = 12; cc > 0; cc -= 4) {
        k[cc + 0] ^= k[cc - 4];
        k[cc + 1] ^= k[cc - 3];
        k[cc + 2] ^= k[cc - 2];
        k[cc + 3] ^= k[cc - 1];
    }

    *rc = (((*rc) >> 1) ^ ((*rc) & 1 ? 0x008d : 0));
    k[0] ^= sbox[(k[29])] ^ *rc;
    k[1] ^= sbox[(k[30])];
    k[2] ^= sbox[(k[31])];
    k[3] ^= sbox[(k[28])];
}




void bluedroid_aes_decrypt_256( const unsigned char in[(4 * 4)], unsigned char out[(4 * 4)],
                                const unsigned char key[2 * (4 * 4)], unsigned char o_key[2 * (4 * 4)] )
{
    uint_8t s1[(4 * 4)], r, rc = 0x80;

    if (o_key != key) {
        memcpy(o_key, key, (4 * 4));
        memcpy(o_key + 16, key + 16, (4 * 4));
    }

    copy_and_key( s1, in, o_key );
    inv_shift_sub_rows( s1 );

    for ( r = 14 ; --r ; )

    {
        if ( ( r & 1 ) ) {
            update_decrypt_key_256( o_key, &rc );
            add_round_key( s1, o_key + 16 );
        } else {
            add_round_key( s1, o_key );
        }
        inv_mix_sub_columns( s1 );
    }
# 935 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/smp/aes.c"
    copy_and_key( out, s1, o_key );
}
