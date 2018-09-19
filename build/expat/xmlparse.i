# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
# 1 "D:\\ESP32\\esp-idf-v3.1-rc1\\ESP32_PIC_A2DP\\build\\expat//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"




# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 149 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4

# 149 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef int ptrdiff_t;
# 216 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef unsigned int size_t;
# 328 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef short unsigned int wchar_t;
# 6 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 2
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


# 7 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 2
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
# 8 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/limits.h" 1
# 131 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/limits.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include-fixed\\limits.h" 1 3 4
# 132 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/limits.h" 2
# 9 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 2




# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/time.h" 1
# 9 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/time.h"
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
# 10 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/time.h" 2







struct timeval {
  time_t tv_sec;
  suseconds_t tv_usec;
};
# 55 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/time.h"
struct timezone {
  int tz_minuteswest;
  int tz_dsttime;
};
# 68 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/time.h"
struct itimerval {
  struct timeval it_interval;
  struct timeval it_value;
};





int gettimeofday (struct timeval *restrict __p, void *restrict __tz)
                            ;

int settimeofday (const struct timeval *, const struct timezone *);
int adjtime (const struct timeval *, struct timeval *);

int utimes (const char *__path, const struct timeval *__tvp);
int getitimer (int __which, struct itimerval *__value);
int setitimer (int __which, const struct itimerval *restrict __value, struct itimerval *restrict __ovalue)
                                            ;
# 14 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/unistd.h" 1



# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/platform_include/sys/unistd.h" 1
# 23 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/platform_include/sys/unistd.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/unistd.h" 1
# 14 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/unistd.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 15 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/unistd.h" 2

extern char **environ;

void _exit (int __status ) __attribute__ ((__noreturn__));

int access (const char *__path, int __amode );
unsigned alarm (unsigned __secs );
int chdir (const char *__path );
int chmod (const char *__path, mode_t __mode );

int chown (const char *__path, uid_t __owner, gid_t __group );




int close (int __fildes );



char * ctermid (char *__s );
char * cuserid (char *__s );



int dup (int __fildes );
int dup2 (int __fildes, int __fildes2 );






int execl (const char *__path, const char *, ... );
int execle (const char *__path, const char *, ... );
int execlp (const char *__file, const char *, ... );



int execv (const char *__path, char * const __argv[] );
int execve (const char *__path, char * const __argv[], char * const __envp[] );
int execvp (const char *__file, char * const __argv[] );




int faccessat (int __dirfd, const char *__path, int __mode, int __flags);




int fchmod (int __fildes, mode_t __mode );

int fchown (int __fildes, uid_t __owner, gid_t __group );


int fchownat (int __dirfd, const char *__path, uid_t __owner, gid_t __group, int __flags);




pid_t fork (void );
long fpathconf (int __fd, int __name );
int fsync (int __fd);
int fdatasync (int __fd);



char * getcwd (char *__buf, size_t __size );




gid_t getegid (void );
uid_t geteuid (void );
gid_t getgid (void );

int getgroups (int __gidsetsize, gid_t __grouplist[] );



char * getlogin (void );



char * getpass (const char *__prompt);
int getpagesize (void);



pid_t getpgid (pid_t);
pid_t getpgrp (void );
pid_t getpid (void );
pid_t getppid (void );




uid_t getuid (void );






int isatty (int __fildes );

int lchown (const char *__path, uid_t __owner, gid_t __group );

int link (const char *__path1, const char *__path2 );

int linkat (int __dirfd1, const char *__path1, int __dirfd2, const char *__path2, int __flags );

int nice (int __nice_value );

off_t lseek (int __fildes, off_t __offset, int __whence );
# 138 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/unistd.h"
long pathconf (const char *__path, int __name );
int pause (void );



int pipe (int __fildes[2] );



ssize_t pread (int __fd, void *__buf, size_t __nbytes, off_t __offset);
ssize_t pwrite (int __fd, const void *__buf, size_t __nbytes, off_t __offset);
int read (int __fd, void *__buf, size_t __nbyte );




int rmdir (const char *__path );



void * sbrk (ptrdiff_t __incr);





int setgid (gid_t __gid );





int sethostname (const char *, size_t);

int setpgid (pid_t __pid, pid_t __pgid );
int setpgrp (void );




pid_t setsid (void );

int setuid (uid_t __uid );




unsigned sleep (unsigned int __seconds );
void swab (const void *restrict, void *restrict, ssize_t);
long sysconf (int __name );
pid_t tcgetpgrp (int __fildes );
int tcsetpgrp (int __fildes, pid_t __pgrp_id );
char * ttyname (int __fildes );



int unlink (const char *__path );
int usleep (useconds_t __useconds);
int vhangup (void );
int write (int __fd, const void *__buf, size_t __nbyte );






extern char *optarg;
extern int optind, opterr, optopt;
int getopt(int, char * const [], const char *);
extern int optreset;



pid_t vfork (void );
# 255 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/unistd.h"
ssize_t readlink (const char *restrict __path, char *restrict __buf, size_t __buflen)
                                                                   ;

ssize_t readlinkat (int __dirfd1, const char *restrict __path, char *restrict __buf, size_t __buflen)
                                                                     ;

int symlink (const char *__name1, const char *__name2);

int symlinkat (const char *, int, const char *);
int unlinkat (int, const char *, int);
# 24 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/platform_include/sys/unistd.h" 2

int truncate (const char *, off_t __length);
# 5 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/unistd.h" 2
# 16 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 2
# 29 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/expat_config.h" 1
# 30 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 2


# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/ascii.h" 1
# 33 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/expat.h" 1
# 18 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/expat.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/expat_external.h" 1
# 108 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/expat_external.h"
typedef char XML_Char;
typedef char XML_LChar;
# 121 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/expat_external.h"
typedef long XML_Index;
typedef unsigned long XML_Size;
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/expat.h" 2





struct XML_ParserStruct;
typedef struct XML_ParserStruct *XML_Parser;


typedef unsigned char XML_Bool;
# 45 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/expat.h"
enum XML_Status {
  XML_STATUS_ERROR = 0,

  XML_STATUS_OK = 1,

  XML_STATUS_SUSPENDED = 2

};

enum XML_Error {
  XML_ERROR_NONE,
  XML_ERROR_NO_MEMORY,
  XML_ERROR_SYNTAX,
  XML_ERROR_NO_ELEMENTS,
  XML_ERROR_INVALID_TOKEN,
  XML_ERROR_UNCLOSED_TOKEN,
  XML_ERROR_PARTIAL_CHAR,
  XML_ERROR_TAG_MISMATCH,
  XML_ERROR_DUPLICATE_ATTRIBUTE,
  XML_ERROR_JUNK_AFTER_DOC_ELEMENT,
  XML_ERROR_PARAM_ENTITY_REF,
  XML_ERROR_UNDEFINED_ENTITY,
  XML_ERROR_RECURSIVE_ENTITY_REF,
  XML_ERROR_ASYNC_ENTITY,
  XML_ERROR_BAD_CHAR_REF,
  XML_ERROR_BINARY_ENTITY_REF,
  XML_ERROR_ATTRIBUTE_EXTERNAL_ENTITY_REF,
  XML_ERROR_MISPLACED_XML_PI,
  XML_ERROR_UNKNOWN_ENCODING,
  XML_ERROR_INCORRECT_ENCODING,
  XML_ERROR_UNCLOSED_CDATA_SECTION,
  XML_ERROR_EXTERNAL_ENTITY_HANDLING,
  XML_ERROR_NOT_STANDALONE,
  XML_ERROR_UNEXPECTED_STATE,
  XML_ERROR_ENTITY_DECLARED_IN_PE,
  XML_ERROR_FEATURE_REQUIRES_XML_DTD,
  XML_ERROR_CANT_CHANGE_FEATURE_ONCE_PARSING,

  XML_ERROR_UNBOUND_PREFIX,

  XML_ERROR_UNDECLARING_PREFIX,
  XML_ERROR_INCOMPLETE_PE,
  XML_ERROR_XML_DECL,
  XML_ERROR_TEXT_DECL,
  XML_ERROR_PUBLICID,
  XML_ERROR_SUSPENDED,
  XML_ERROR_NOT_SUSPENDED,
  XML_ERROR_ABORTED,
  XML_ERROR_FINISHED,
  XML_ERROR_SUSPEND_PE,

  XML_ERROR_RESERVED_PREFIX_XML,
  XML_ERROR_RESERVED_PREFIX_XMLNS,
  XML_ERROR_RESERVED_NAMESPACE_URI
};

enum XML_Content_Type {
  XML_CTYPE_EMPTY = 1,
  XML_CTYPE_ANY,
  XML_CTYPE_MIXED,
  XML_CTYPE_NAME,
  XML_CTYPE_CHOICE,
  XML_CTYPE_SEQ
};

enum XML_Content_Quant {
  XML_CQUANT_NONE,
  XML_CQUANT_OPT,
  XML_CQUANT_REP,
  XML_CQUANT_PLUS
};
# 135 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/expat.h"
typedef struct XML_cp XML_Content;

struct XML_cp {
  enum XML_Content_Type type;
  enum XML_Content_Quant quant;
  XML_Char * name;
  unsigned int numchildren;
  XML_Content * children;
};






typedef void ( *XML_ElementDeclHandler) (void *userData,
                                                const XML_Char *name,
                                                XML_Content *model);

__attribute__ ((visibility ("default"))) void
XML_SetElementDeclHandler(XML_Parser parser,
                          XML_ElementDeclHandler eldecl);
# 166 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/expat.h"
typedef void ( *XML_AttlistDeclHandler) (
                                    void *userData,
                                    const XML_Char *elname,
                                    const XML_Char *attname,
                                    const XML_Char *att_type,
                                    const XML_Char *dflt,
                                    int isrequired);

__attribute__ ((visibility ("default"))) void
XML_SetAttlistDeclHandler(XML_Parser parser,
                          XML_AttlistDeclHandler attdecl);
# 186 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/expat.h"
typedef void ( *XML_XmlDeclHandler) (void *userData,
                                            const XML_Char *version,
                                            const XML_Char *encoding,
                                            int standalone);

__attribute__ ((visibility ("default"))) void
XML_SetXmlDeclHandler(XML_Parser parser,
                      XML_XmlDeclHandler xmldecl);


typedef struct {
  void *(*malloc_fcn)(size_t size);
  void *(*realloc_fcn)(void *ptr, size_t size);
  void (*free_fcn)(void *ptr);
} XML_Memory_Handling_Suite;




__attribute__ ((visibility ("default"))) XML_Parser
XML_ParserCreate(const XML_Char *encoding);
# 219 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/expat.h"
__attribute__ ((visibility ("default"))) XML_Parser
XML_ParserCreateNS(const XML_Char *encoding, XML_Char namespaceSeparator);
# 232 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/expat.h"
__attribute__ ((visibility ("default"))) XML_Parser
XML_ParserCreate_MM(const XML_Char *encoding,
                    const XML_Memory_Handling_Suite *memsuite,
                    const XML_Char *namespaceSeparator);
# 246 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/expat.h"
__attribute__ ((visibility ("default"))) XML_Bool
XML_ParserReset(XML_Parser parser, const XML_Char *encoding);




typedef void ( *XML_StartElementHandler) (void *userData,
                                                 const XML_Char *name,
                                                 const XML_Char **atts);

typedef void ( *XML_EndElementHandler) (void *userData,
                                               const XML_Char *name);



typedef void ( *XML_CharacterDataHandler) (void *userData,
                                                  const XML_Char *s,
                                                  int len);


typedef void ( *XML_ProcessingInstructionHandler) (
                                                void *userData,
                                                const XML_Char *target,
                                                const XML_Char *data);


typedef void ( *XML_CommentHandler) (void *userData,
                                            const XML_Char *data);

typedef void ( *XML_StartCdataSectionHandler) (void *userData);
typedef void ( *XML_EndCdataSectionHandler) (void *userData);
# 291 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/expat.h"
typedef void ( *XML_DefaultHandler) (void *userData,
                                            const XML_Char *s,
                                            int len);




typedef void ( *XML_StartDoctypeDeclHandler) (
                                            void *userData,
                                            const XML_Char *doctypeName,
                                            const XML_Char *sysid,
                                            const XML_Char *pubid,
                                            int has_internal_subset);





typedef void ( *XML_EndDoctypeDeclHandler)(void *userData);
# 329 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/expat.h"
typedef void ( *XML_EntityDeclHandler) (
                              void *userData,
                              const XML_Char *entityName,
                              int is_parameter_entity,
                              const XML_Char *value,
                              int value_length,
                              const XML_Char *base,
                              const XML_Char *systemId,
                              const XML_Char *publicId,
                              const XML_Char *notationName);

__attribute__ ((visibility ("default"))) void
XML_SetEntityDeclHandler(XML_Parser parser,
                         XML_EntityDeclHandler handler);
# 353 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/expat.h"
typedef void ( *XML_UnparsedEntityDeclHandler) (
                                    void *userData,
                                    const XML_Char *entityName,
                                    const XML_Char *base,
                                    const XML_Char *systemId,
                                    const XML_Char *publicId,
                                    const XML_Char *notationName);





typedef void ( *XML_NotationDeclHandler) (
                                    void *userData,
                                    const XML_Char *notationName,
                                    const XML_Char *base,
                                    const XML_Char *systemId,
                                    const XML_Char *publicId);







typedef void ( *XML_StartNamespaceDeclHandler) (
                                    void *userData,
                                    const XML_Char *prefix,
                                    const XML_Char *uri);

typedef void ( *XML_EndNamespaceDeclHandler) (
                                    void *userData,
                                    const XML_Char *prefix);
# 396 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/expat.h"
typedef int ( *XML_NotStandaloneHandler) (void *userData);
# 432 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/expat.h"
typedef int ( *XML_ExternalEntityRefHandler) (
                                    XML_Parser parser,
                                    const XML_Char *context,
                                    const XML_Char *base,
                                    const XML_Char *systemId,
                                    const XML_Char *publicId);
# 449 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/expat.h"
typedef void ( *XML_SkippedEntityHandler) (
                                    void *userData,
                                    const XML_Char *entityName,
                                    int is_parameter_entity);
# 506 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/expat.h"
typedef struct {
  int map[256];
  void *data;
  int ( *convert)(void *data, const char *s);
  void ( *release)(void *data);
} XML_Encoding;
# 528 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/expat.h"
typedef int ( *XML_UnknownEncodingHandler) (
                                    void *encodingHandlerData,
                                    const XML_Char *name,
                                    XML_Encoding *info);

__attribute__ ((visibility ("default"))) void
XML_SetElementHandler(XML_Parser parser,
                      XML_StartElementHandler start,
                      XML_EndElementHandler end);

__attribute__ ((visibility ("default"))) void
XML_SetStartElementHandler(XML_Parser parser,
                           XML_StartElementHandler handler);

__attribute__ ((visibility ("default"))) void
XML_SetEndElementHandler(XML_Parser parser,
                         XML_EndElementHandler handler);

__attribute__ ((visibility ("default"))) void
XML_SetCharacterDataHandler(XML_Parser parser,
                            XML_CharacterDataHandler handler);

__attribute__ ((visibility ("default"))) void
XML_SetProcessingInstructionHandler(XML_Parser parser,
                                    XML_ProcessingInstructionHandler handler);
__attribute__ ((visibility ("default"))) void
XML_SetCommentHandler(XML_Parser parser,
                      XML_CommentHandler handler);

__attribute__ ((visibility ("default"))) void
XML_SetCdataSectionHandler(XML_Parser parser,
                           XML_StartCdataSectionHandler start,
                           XML_EndCdataSectionHandler end);

__attribute__ ((visibility ("default"))) void
XML_SetStartCdataSectionHandler(XML_Parser parser,
                                XML_StartCdataSectionHandler start);

__attribute__ ((visibility ("default"))) void
XML_SetEndCdataSectionHandler(XML_Parser parser,
                              XML_EndCdataSectionHandler end);





__attribute__ ((visibility ("default"))) void
XML_SetDefaultHandler(XML_Parser parser,
                      XML_DefaultHandler handler);





__attribute__ ((visibility ("default"))) void
XML_SetDefaultHandlerExpand(XML_Parser parser,
                            XML_DefaultHandler handler);

__attribute__ ((visibility ("default"))) void
XML_SetDoctypeDeclHandler(XML_Parser parser,
                          XML_StartDoctypeDeclHandler start,
                          XML_EndDoctypeDeclHandler end);

__attribute__ ((visibility ("default"))) void
XML_SetStartDoctypeDeclHandler(XML_Parser parser,
                               XML_StartDoctypeDeclHandler start);

__attribute__ ((visibility ("default"))) void
XML_SetEndDoctypeDeclHandler(XML_Parser parser,
                             XML_EndDoctypeDeclHandler end);

__attribute__ ((visibility ("default"))) void
XML_SetUnparsedEntityDeclHandler(XML_Parser parser,
                                 XML_UnparsedEntityDeclHandler handler);

__attribute__ ((visibility ("default"))) void
XML_SetNotationDeclHandler(XML_Parser parser,
                           XML_NotationDeclHandler handler);

__attribute__ ((visibility ("default"))) void
XML_SetNamespaceDeclHandler(XML_Parser parser,
                            XML_StartNamespaceDeclHandler start,
                            XML_EndNamespaceDeclHandler end);

__attribute__ ((visibility ("default"))) void
XML_SetStartNamespaceDeclHandler(XML_Parser parser,
                                 XML_StartNamespaceDeclHandler start);

__attribute__ ((visibility ("default"))) void
XML_SetEndNamespaceDeclHandler(XML_Parser parser,
                               XML_EndNamespaceDeclHandler end);

__attribute__ ((visibility ("default"))) void
XML_SetNotStandaloneHandler(XML_Parser parser,
                            XML_NotStandaloneHandler handler);

__attribute__ ((visibility ("default"))) void
XML_SetExternalEntityRefHandler(XML_Parser parser,
                                XML_ExternalEntityRefHandler handler);





__attribute__ ((visibility ("default"))) void
XML_SetExternalEntityRefHandlerArg(XML_Parser parser,
                                   void *arg);

__attribute__ ((visibility ("default"))) void
XML_SetSkippedEntityHandler(XML_Parser parser,
                            XML_SkippedEntityHandler handler);

__attribute__ ((visibility ("default"))) void
XML_SetUnknownEncodingHandler(XML_Parser parser,
                              XML_UnknownEncodingHandler handler,
                              void *encodingHandlerData);





__attribute__ ((visibility ("default"))) void
XML_DefaultCurrent(XML_Parser parser);
# 666 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/expat.h"
__attribute__ ((visibility ("default"))) void
XML_SetReturnNSTriplet(XML_Parser parser, int do_nst);


__attribute__ ((visibility ("default"))) void
XML_SetUserData(XML_Parser parser, void *userData);
# 682 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/expat.h"
__attribute__ ((visibility ("default"))) enum XML_Status
XML_SetEncoding(XML_Parser parser, const XML_Char *encoding);





__attribute__ ((visibility ("default"))) void
XML_UseParserAsHandlerArg(XML_Parser parser);
# 710 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/expat.h"
__attribute__ ((visibility ("default"))) enum XML_Error
XML_UseForeignDTD(XML_Parser parser, XML_Bool useDTD);
# 722 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/expat.h"
__attribute__ ((visibility ("default"))) enum XML_Status
XML_SetBase(XML_Parser parser, const XML_Char *base);

__attribute__ ((visibility ("default"))) const XML_Char *
XML_GetBase(XML_Parser parser);







__attribute__ ((visibility ("default"))) int
XML_GetSpecifiedAttributeCount(XML_Parser parser);






__attribute__ ((visibility ("default"))) int
XML_GetIdAttributeIndex(XML_Parser parser);
# 777 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/expat.h"
__attribute__ ((visibility ("default"))) enum XML_Status
XML_Parse(XML_Parser parser, const char *s, int len, int isFinal);

__attribute__ ((visibility ("default"))) void *
XML_GetBuffer(XML_Parser parser, int len);

__attribute__ ((visibility ("default"))) enum XML_Status
XML_ParseBuffer(XML_Parser parser, int len, int isFinal);
# 817 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/expat.h"
__attribute__ ((visibility ("default"))) enum XML_Status
XML_StopParser(XML_Parser parser, XML_Bool resumable);
# 832 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/expat.h"
__attribute__ ((visibility ("default"))) enum XML_Status
XML_ResumeParser(XML_Parser parser);

enum XML_Parsing {
  XML_INITIALIZED,
  XML_PARSING,
  XML_FINISHED,
  XML_SUSPENDED
};

typedef struct {
  enum XML_Parsing parsing;
  XML_Bool finalBuffer;
} XML_ParsingStatus;






__attribute__ ((visibility ("default"))) void
XML_GetParsingStatus(XML_Parser parser, XML_ParsingStatus *status);
# 871 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/expat.h"
__attribute__ ((visibility ("default"))) XML_Parser
XML_ExternalEntityParserCreate(XML_Parser parser,
                               const XML_Char *context,
                               const XML_Char *encoding);

enum XML_ParamEntityParsing {
  XML_PARAM_ENTITY_PARSING_NEVER,
  XML_PARAM_ENTITY_PARSING_UNLESS_STANDALONE,
  XML_PARAM_ENTITY_PARSING_ALWAYS
};
# 905 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/expat.h"
__attribute__ ((visibility ("default"))) int
XML_SetParamEntityParsing(XML_Parser parser,
                          enum XML_ParamEntityParsing parsing);






__attribute__ ((visibility ("default"))) int
XML_SetHashSalt(XML_Parser parser,
                unsigned long hash_salt);




__attribute__ ((visibility ("default"))) enum XML_Error
XML_GetErrorCode(XML_Parser parser);
# 940 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/expat.h"
__attribute__ ((visibility ("default"))) XML_Size XML_GetCurrentLineNumber(XML_Parser parser);
__attribute__ ((visibility ("default"))) XML_Size XML_GetCurrentColumnNumber(XML_Parser parser);
__attribute__ ((visibility ("default"))) XML_Index XML_GetCurrentByteIndex(XML_Parser parser);




__attribute__ ((visibility ("default"))) int
XML_GetCurrentByteCount(XML_Parser parser);
# 960 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/expat.h"
__attribute__ ((visibility ("default"))) const char *
XML_GetInputContext(XML_Parser parser,
                    int *offset,
                    int *size);







__attribute__ ((visibility ("default"))) void
XML_FreeContentModel(XML_Parser parser, XML_Content *model);


__attribute__ ((visibility ("default"))) void *
__attribute__((__malloc__))
__attribute__((__alloc_size__(2)))
XML_MemMalloc(XML_Parser parser, size_t size);

__attribute__ ((visibility ("default"))) void *
__attribute__((__alloc_size__(3)))
XML_MemRealloc(XML_Parser parser, void *ptr, size_t size);

__attribute__ ((visibility ("default"))) void
XML_MemFree(XML_Parser parser, void *ptr);


__attribute__ ((visibility ("default"))) void
XML_ParserFree(XML_Parser parser);


__attribute__ ((visibility ("default"))) const XML_LChar *
XML_ErrorString(enum XML_Error code);


__attribute__ ((visibility ("default"))) const XML_LChar *
XML_ExpatVersion(void);

typedef struct {
  int major;
  int minor;
  int micro;
} XML_Expat_Version;




__attribute__ ((visibility ("default"))) XML_Expat_Version
XML_ExpatVersionInfo(void);


enum XML_FeatureEnum {
  XML_FEATURE_END = 0,
  XML_FEATURE_UNICODE,
  XML_FEATURE_UNICODE_WCHAR_T,
  XML_FEATURE_DTD,
  XML_FEATURE_CONTEXT_BYTES,
  XML_FEATURE_MIN_SIZE,
  XML_FEATURE_SIZEOF_XML_CHAR,
  XML_FEATURE_SIZEOF_XML_LCHAR,
  XML_FEATURE_NS,
  XML_FEATURE_LARGE_SIZE,
  XML_FEATURE_ATTR_INFO

};

typedef struct {
  enum XML_FeatureEnum feature;
  const XML_LChar *name;
  long int value;
} XML_Feature;

__attribute__ ((visibility ("default"))) const XML_Feature *
XML_GetFeatureList(void);
# 34 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 2
# 51 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
typedef char ICHAR;
# 94 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/internal.h" 1
# 89 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/internal.h"
void
align_limit_to_full_utf8_characters(const char * from, const char ** fromLimRef);
# 95 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/xmltok.h" 1
# 112 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/xmltok.h"
typedef struct position {

  XML_Size lineNumber;
  XML_Size columnNumber;
} POSITION;

typedef struct {
  const char *name;
  const char *valuePtr;
  const char *valueEnd;
  char normalized;
} ATTRIBUTE;

struct encoding;
typedef struct encoding ENCODING;

typedef int ( *SCANNER)(const ENCODING *,
                               const char *,
                               const char *,
                               const char **);

enum XML_Convert_Result {
  XML_CONVERT_COMPLETED = 0,
  XML_CONVERT_INPUT_INCOMPLETE = 1,
  XML_CONVERT_OUTPUT_EXHAUSTED = 2
};

struct encoding {
  SCANNER scanners[4];
  SCANNER literalScanners[2];
  int ( *sameName)(const ENCODING *,
                          const char *,
                          const char *);
  int ( *nameMatchesAscii)(const ENCODING *,
                                  const char *,
                                  const char *,
                                  const char *);
  int ( *nameLength)(const ENCODING *, const char *);
  const char *( *skipS)(const ENCODING *, const char *);
  int ( *getAtts)(const ENCODING *enc,
                         const char *ptr,
                         int attsMax,
                         ATTRIBUTE *atts);
  int ( *charRefNumber)(const ENCODING *enc, const char *ptr);
  int ( *predefinedEntityName)(const ENCODING *,
                                      const char *,
                                      const char *);
  void ( *updatePosition)(const ENCODING *,
                                 const char *ptr,
                                 const char *end,
                                 POSITION *);
  int ( *isPublicId)(const ENCODING *enc,
                            const char *ptr,
                            const char *end,
                            const char **badPtr);
  enum XML_Convert_Result ( *utf8Convert)(const ENCODING *enc,
                              const char **fromP,
                              const char *fromLim,
                              char **toP,
                              const char *toLim);
  enum XML_Convert_Result ( *utf16Convert)(const ENCODING *enc,
                               const char **fromP,
                               const char *fromLim,
                               unsigned short **toP,
                               const unsigned short *toLim);
  int minBytesPerChar;
  char isUtf8;
  char isUtf16;
};
# 267 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/xmltok.h"
typedef struct {
  ENCODING initEnc;
  const ENCODING **encPtr;
} INIT_ENCODING;

int XmlParseXmlDecl(int isGeneralTextEntity,
                    const ENCODING *enc,
                    const char *ptr,
                    const char *end,
                    const char **badPtr,
                    const char **versionPtr,
                    const char **versionEndPtr,
                    const char **encodingNamePtr,
                    const ENCODING **namedEncodingPtr,
                    int *standalonePtr);

int XmlInitEncoding(INIT_ENCODING *, const ENCODING **, const char *name);
const ENCODING *XmlGetUtf8InternalEncoding(void);
const ENCODING *XmlGetUtf16InternalEncoding(void);
int XmlUtf8Encode(int charNumber, char *buf);
int XmlUtf16Encode(int charNumber, unsigned short *buf);
int XmlSizeOfUnknownEncoding(void);


typedef int ( *CONVERTER) (void *userData, const char *p);

ENCODING *
XmlInitUnknownEncoding(void *mem,
                       int *table,
                       CONVERTER convert,
                       void *userData);

int XmlParseXmlDeclNS(int isGeneralTextEntity,
                      const ENCODING *enc,
                      const char *ptr,
                      const char *end,
                      const char **badPtr,
                      const char **versionPtr,
                      const char **versionEndPtr,
                      const char **encodingNamePtr,
                      const ENCODING **namedEncodingPtr,
                      int *standalonePtr);

int XmlInitEncodingNS(INIT_ENCODING *, const ENCODING **, const char *name);
const ENCODING *XmlGetUtf8InternalEncodingNS(void);
const ENCODING *XmlGetUtf16InternalEncodingNS(void);
ENCODING *
XmlInitUnknownEncodingNS(void *mem,
                         int *table,
                         CONVERTER convert,
                         void *userData);
# 96 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/xmlrole.h" 1
# 14 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/xmlrole.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/xmltok.h" 1
# 15 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/xmlrole.h" 2





enum {
  XML_ROLE_ERROR = -1,
  XML_ROLE_NONE = 0,
  XML_ROLE_XML_DECL,
  XML_ROLE_INSTANCE_START,
  XML_ROLE_DOCTYPE_NONE,
  XML_ROLE_DOCTYPE_NAME,
  XML_ROLE_DOCTYPE_SYSTEM_ID,
  XML_ROLE_DOCTYPE_PUBLIC_ID,
  XML_ROLE_DOCTYPE_INTERNAL_SUBSET,
  XML_ROLE_DOCTYPE_CLOSE,
  XML_ROLE_GENERAL_ENTITY_NAME,
  XML_ROLE_PARAM_ENTITY_NAME,
  XML_ROLE_ENTITY_NONE,
  XML_ROLE_ENTITY_VALUE,
  XML_ROLE_ENTITY_SYSTEM_ID,
  XML_ROLE_ENTITY_PUBLIC_ID,
  XML_ROLE_ENTITY_COMPLETE,
  XML_ROLE_ENTITY_NOTATION_NAME,
  XML_ROLE_NOTATION_NONE,
  XML_ROLE_NOTATION_NAME,
  XML_ROLE_NOTATION_SYSTEM_ID,
  XML_ROLE_NOTATION_NO_SYSTEM_ID,
  XML_ROLE_NOTATION_PUBLIC_ID,
  XML_ROLE_ATTRIBUTE_NAME,
  XML_ROLE_ATTRIBUTE_TYPE_CDATA,
  XML_ROLE_ATTRIBUTE_TYPE_ID,
  XML_ROLE_ATTRIBUTE_TYPE_IDREF,
  XML_ROLE_ATTRIBUTE_TYPE_IDREFS,
  XML_ROLE_ATTRIBUTE_TYPE_ENTITY,
  XML_ROLE_ATTRIBUTE_TYPE_ENTITIES,
  XML_ROLE_ATTRIBUTE_TYPE_NMTOKEN,
  XML_ROLE_ATTRIBUTE_TYPE_NMTOKENS,
  XML_ROLE_ATTRIBUTE_ENUM_VALUE,
  XML_ROLE_ATTRIBUTE_NOTATION_VALUE,
  XML_ROLE_ATTLIST_NONE,
  XML_ROLE_ATTLIST_ELEMENT_NAME,
  XML_ROLE_IMPLIED_ATTRIBUTE_VALUE,
  XML_ROLE_REQUIRED_ATTRIBUTE_VALUE,
  XML_ROLE_DEFAULT_ATTRIBUTE_VALUE,
  XML_ROLE_FIXED_ATTRIBUTE_VALUE,
  XML_ROLE_ELEMENT_NONE,
  XML_ROLE_ELEMENT_NAME,
  XML_ROLE_CONTENT_ANY,
  XML_ROLE_CONTENT_EMPTY,
  XML_ROLE_CONTENT_PCDATA,
  XML_ROLE_GROUP_OPEN,
  XML_ROLE_GROUP_CLOSE,
  XML_ROLE_GROUP_CLOSE_REP,
  XML_ROLE_GROUP_CLOSE_OPT,
  XML_ROLE_GROUP_CLOSE_PLUS,
  XML_ROLE_GROUP_CHOICE,
  XML_ROLE_GROUP_SEQUENCE,
  XML_ROLE_CONTENT_ELEMENT,
  XML_ROLE_CONTENT_ELEMENT_REP,
  XML_ROLE_CONTENT_ELEMENT_OPT,
  XML_ROLE_CONTENT_ELEMENT_PLUS,
  XML_ROLE_PI,
  XML_ROLE_COMMENT,

  XML_ROLE_TEXT_DECL,
  XML_ROLE_IGNORE_SECT,
  XML_ROLE_INNER_PARAM_ENTITY_REF,

  XML_ROLE_PARAM_ENTITY_REF
};

typedef struct prolog_state {
  int ( *handler) (struct prolog_state *state,
                          int tok,
                          const char *ptr,
                          const char *end,
                          const ENCODING *enc);
  unsigned level;
  int role_none;

  unsigned includeLevel;
  int documentEntity;
  int inEntityValue;

} PROLOG_STATE;

void XmlPrologStateInit(PROLOG_STATE *);

void XmlPrologStateInitExternalEntity(PROLOG_STATE *);
# 97 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 2

typedef const XML_Char *KEY;

typedef struct {
  KEY name;
} NAMED;

typedef struct {
  NAMED **v;
  unsigned char power;
  size_t size;
  size_t used;
  const XML_Memory_Handling_Suite *mem;
} HASH_TABLE;
# 137 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
typedef struct {
  NAMED **p;
  NAMED **end;
} HASH_TABLE_ITER;
# 151 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
typedef struct binding {
  struct prefix *prefix;
  struct binding *nextTagBinding;
  struct binding *prevPrefixBinding;
  const struct attribute_id *attId;
  XML_Char *uri;
  int uriLen;
  int uriAlloc;
} BINDING;

typedef struct prefix {
  const XML_Char *name;
  BINDING *binding;
} PREFIX;

typedef struct {
  const XML_Char *str;
  const XML_Char *localPart;
  const XML_Char *prefix;
  int strLen;
  int uriLen;
  int prefixLen;
} TAG_NAME;
# 188 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
typedef struct tag {
  struct tag *parent;
  const char *rawName;
  int rawNameLength;
  TAG_NAME name;
  char *buf;
  char *bufEnd;
  BINDING *bindings;
} TAG;

typedef struct {
  const XML_Char *name;
  const XML_Char *textPtr;
  int textLen;
  int processed;
  const XML_Char *systemId;
  const XML_Char *base;
  const XML_Char *publicId;
  const XML_Char *notation;
  XML_Bool open;
  XML_Bool is_param;
  XML_Bool is_internal;
} ENTITY;

typedef struct {
  enum XML_Content_Type type;
  enum XML_Content_Quant quant;
  const XML_Char * name;
  int firstchild;
  int lastchild;
  int childcnt;
  int nextsib;
} CONTENT_SCAFFOLD;



typedef struct block {
  struct block *next;
  int size;
  XML_Char s[1];
} BLOCK;

typedef struct {
  BLOCK *blocks;
  BLOCK *freeBlocks;
  const XML_Char *end;
  XML_Char *ptr;
  XML_Char *start;
  const XML_Memory_Handling_Suite *mem;
} STRING_POOL;



typedef struct attribute_id {
  XML_Char *name;
  PREFIX *prefix;
  XML_Bool maybeTokenized;
  XML_Bool xmlns;
} ATTRIBUTE_ID;

typedef struct {
  const ATTRIBUTE_ID *id;
  XML_Bool isCdata;
  const XML_Char *value;
} DEFAULT_ATTRIBUTE;

typedef struct {
  unsigned long version;
  unsigned long hash;
  const XML_Char *uriName;
} NS_ATT;

typedef struct {
  const XML_Char *name;
  PREFIX *prefix;
  const ATTRIBUTE_ID *idAtt;
  int nDefaultAtts;
  int allocDefaultAtts;
  DEFAULT_ATTRIBUTE *defaultAtts;
} ELEMENT_TYPE;

typedef struct {
  HASH_TABLE generalEntities;
  HASH_TABLE elementTypes;
  HASH_TABLE attributeIds;
  HASH_TABLE prefixes;
  STRING_POOL pool;
  STRING_POOL entityValuePool;

  XML_Bool keepProcessing;


  XML_Bool hasParamEntityRefs;
  XML_Bool standalone;


  XML_Bool paramEntityRead;
  HASH_TABLE paramEntities;

  PREFIX defaultPrefix;

  XML_Bool in_eldecl;
  CONTENT_SCAFFOLD *scaffold;
  unsigned contentStringLen;
  unsigned scaffSize;
  unsigned scaffCount;
  int scaffLevel;
  int *scaffIndex;
} DTD;

typedef struct open_internal_entity {
  const char *internalEventPtr;
  const char *internalEventEndPtr;
  struct open_internal_entity *next;
  ENTITY *entity;
  int startTagLevel;
  XML_Bool betweenDecl;
} OPEN_INTERNAL_ENTITY;

typedef enum XML_Error Processor(XML_Parser parser,
                                         const char *start,
                                         const char *end,
                                         const char **endPtr);

static Processor prologProcessor;
static Processor prologInitProcessor;
static Processor contentProcessor;
static Processor cdataSectionProcessor;

static Processor ignoreSectionProcessor;
static Processor externalParEntProcessor;
static Processor externalParEntInitProcessor;
static Processor entityValueProcessor;
static Processor entityValueInitProcessor;

static Processor epilogProcessor;
static Processor errorProcessor;
static Processor externalEntityInitProcessor;
static Processor externalEntityInitProcessor2;
static Processor externalEntityInitProcessor3;
static Processor externalEntityContentProcessor;
static Processor internalEntityProcessor;

static enum XML_Error
handleUnknownEncoding(XML_Parser parser, const XML_Char *encodingName);
static enum XML_Error
processXmlDecl(XML_Parser parser, int isGeneralTextEntity,
               const char *s, const char *next);
static enum XML_Error
initializeEncoding(XML_Parser parser);
static enum XML_Error
doProlog(XML_Parser parser, const ENCODING *enc, const char *s,
         const char *end, int tok, const char *next, const char **nextPtr,
         XML_Bool haveMore);
static enum XML_Error
processInternalEntity(XML_Parser parser, ENTITY *entity,
                      XML_Bool betweenDecl);
static enum XML_Error
doContent(XML_Parser parser, int startTagLevel, const ENCODING *enc,
          const char *start, const char *end, const char **endPtr,
          XML_Bool haveMore);
static enum XML_Error
doCdataSection(XML_Parser parser, const ENCODING *, const char **startPtr,
               const char *end, const char **nextPtr, XML_Bool haveMore);

static enum XML_Error
doIgnoreSection(XML_Parser parser, const ENCODING *, const char **startPtr,
                const char *end, const char **nextPtr, XML_Bool haveMore);


static enum XML_Error
storeAtts(XML_Parser parser, const ENCODING *, const char *s,
          TAG_NAME *tagNamePtr, BINDING **bindingsPtr);
static enum XML_Error
addBinding(XML_Parser parser, PREFIX *prefix, const ATTRIBUTE_ID *attId,
           const XML_Char *uri, BINDING **bindingsPtr);
static int
defineAttribute(ELEMENT_TYPE *type, ATTRIBUTE_ID *, XML_Bool isCdata,
                XML_Bool isId, const XML_Char *dfltValue, XML_Parser parser);
static enum XML_Error
storeAttributeValue(XML_Parser parser, const ENCODING *, XML_Bool isCdata,
                    const char *, const char *, STRING_POOL *);
static enum XML_Error
appendAttributeValue(XML_Parser parser, const ENCODING *, XML_Bool isCdata,
                     const char *, const char *, STRING_POOL *);
static ATTRIBUTE_ID *
getAttributeId(XML_Parser parser, const ENCODING *enc, const char *start,
               const char *end);
static int
setElementTypePrefix(XML_Parser parser, ELEMENT_TYPE *);
static enum XML_Error
storeEntityValue(XML_Parser parser, const ENCODING *enc, const char *start,
                 const char *end);
static int
reportProcessingInstruction(XML_Parser parser, const ENCODING *enc,
                            const char *start, const char *end);
static int
reportComment(XML_Parser parser, const ENCODING *enc, const char *start,
              const char *end);
static void
reportDefault(XML_Parser parser, const ENCODING *enc, const char *start,
              const char *end);

static const XML_Char * getContext(XML_Parser parser);
static XML_Bool
setContext(XML_Parser parser, const XML_Char *context);

static void normalizePublicId(XML_Char *s);

static DTD * dtdCreate(const XML_Memory_Handling_Suite *ms);

static void dtdReset(DTD *p, const XML_Memory_Handling_Suite *ms);
static void
dtdDestroy(DTD *p, XML_Bool isDocEntity, const XML_Memory_Handling_Suite *ms);
static int
dtdCopy(XML_Parser oldParser,
        DTD *newDtd, const DTD *oldDtd, const XML_Memory_Handling_Suite *ms);
static int
copyEntityTable(XML_Parser oldParser,
                HASH_TABLE *, STRING_POOL *, const HASH_TABLE *);
static NAMED *
lookup(XML_Parser parser, HASH_TABLE *table, KEY name, size_t createSize);
static void
hashTableInit(HASH_TABLE *, const XML_Memory_Handling_Suite *ms);
static void hashTableClear(HASH_TABLE *);
static void hashTableDestroy(HASH_TABLE *);
static void
hashTableIterInit(HASH_TABLE_ITER *, const HASH_TABLE *);
static NAMED * hashTableIterNext(HASH_TABLE_ITER *);

static void
poolInit(STRING_POOL *, const XML_Memory_Handling_Suite *ms);
static void poolClear(STRING_POOL *);
static void poolDestroy(STRING_POOL *);
static XML_Char *
poolAppend(STRING_POOL *pool, const ENCODING *enc,
           const char *ptr, const char *end);
static XML_Char *
poolStoreString(STRING_POOL *pool, const ENCODING *enc,
                const char *ptr, const char *end);
static XML_Bool poolGrow(STRING_POOL *pool);
static const XML_Char *
poolCopyString(STRING_POOL *pool, const XML_Char *s);
static const XML_Char *
poolCopyStringN(STRING_POOL *pool, const XML_Char *s, int n);
static const XML_Char *
poolAppendString(STRING_POOL *pool, const XML_Char *s);

static int nextScaffoldPart(XML_Parser parser);
static XML_Content * build_model(XML_Parser parser);
static ELEMENT_TYPE *
getElementType(XML_Parser parser, const ENCODING *enc,
               const char *ptr, const char *end);

static unsigned long generate_hash_secret_salt(XML_Parser parser);
static XML_Bool startParsing(XML_Parser parser);

static XML_Parser
parserCreate(const XML_Char *encodingName,
             const XML_Memory_Handling_Suite *memsuite,
             const XML_Char *nameSep,
             DTD *dtd);

static void
parserInit(XML_Parser parser, const XML_Char *encodingName);
# 466 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
struct XML_ParserStruct {


  void *m_userData;
  void *m_handlerArg;
  char *m_buffer;
  const XML_Memory_Handling_Suite m_mem;

  const char *m_bufferPtr;

  char *m_bufferEnd;

  const char *m_bufferLim;
  XML_Index m_parseEndByteIndex;
  const char *m_parseEndPtr;
  XML_Char *m_dataBuf;
  XML_Char *m_dataBufEnd;
  XML_StartElementHandler m_startElementHandler;
  XML_EndElementHandler m_endElementHandler;
  XML_CharacterDataHandler m_characterDataHandler;
  XML_ProcessingInstructionHandler m_processingInstructionHandler;
  XML_CommentHandler m_commentHandler;
  XML_StartCdataSectionHandler m_startCdataSectionHandler;
  XML_EndCdataSectionHandler m_endCdataSectionHandler;
  XML_DefaultHandler m_defaultHandler;
  XML_StartDoctypeDeclHandler m_startDoctypeDeclHandler;
  XML_EndDoctypeDeclHandler m_endDoctypeDeclHandler;
  XML_UnparsedEntityDeclHandler m_unparsedEntityDeclHandler;
  XML_NotationDeclHandler m_notationDeclHandler;
  XML_StartNamespaceDeclHandler m_startNamespaceDeclHandler;
  XML_EndNamespaceDeclHandler m_endNamespaceDeclHandler;
  XML_NotStandaloneHandler m_notStandaloneHandler;
  XML_ExternalEntityRefHandler m_externalEntityRefHandler;
  XML_Parser m_externalEntityRefHandlerArg;
  XML_SkippedEntityHandler m_skippedEntityHandler;
  XML_UnknownEncodingHandler m_unknownEncodingHandler;
  XML_ElementDeclHandler m_elementDeclHandler;
  XML_AttlistDeclHandler m_attlistDeclHandler;
  XML_EntityDeclHandler m_entityDeclHandler;
  XML_XmlDeclHandler m_xmlDeclHandler;
  const ENCODING *m_encoding;
  INIT_ENCODING m_initEncoding;
  const ENCODING *m_internalEncoding;
  const XML_Char *m_protocolEncodingName;
  XML_Bool m_ns;
  XML_Bool m_ns_triplets;
  void *m_unknownEncodingMem;
  void *m_unknownEncodingData;
  void *m_unknownEncodingHandlerData;
  void ( *m_unknownEncodingRelease)(void *);
  PROLOG_STATE m_prologState;
  Processor *m_processor;
  enum XML_Error m_errorCode;
  const char *m_eventPtr;
  const char *m_eventEndPtr;
  const char *m_positionPtr;
  OPEN_INTERNAL_ENTITY *m_openInternalEntities;
  OPEN_INTERNAL_ENTITY *m_freeInternalEntities;
  XML_Bool m_defaultExpandInternalEntities;
  int m_tagLevel;
  ENTITY *m_declEntity;
  const XML_Char *m_doctypeName;
  const XML_Char *m_doctypeSysid;
  const XML_Char *m_doctypePubid;
  const XML_Char *m_declAttributeType;
  const XML_Char *m_declNotationName;
  const XML_Char *m_declNotationPublicId;
  ELEMENT_TYPE *m_declElementType;
  ATTRIBUTE_ID *m_declAttributeId;
  XML_Bool m_declAttributeIsCdata;
  XML_Bool m_declAttributeIsId;
  DTD *m_dtd;
  const XML_Char *m_curBase;
  TAG *m_tagStack;
  TAG *m_freeTagList;
  BINDING *m_inheritedBindings;
  BINDING *m_freeBindingList;
  int m_attsSize;
  int m_nSpecifiedAtts;
  int m_idAttIndex;
  ATTRIBUTE *m_atts;
  NS_ATT *m_nsAtts;
  unsigned long m_nsAttsVersion;
  unsigned char m_nsAttsPower;



  POSITION m_position;
  STRING_POOL m_tempPool;
  STRING_POOL m_temp2Pool;
  char *m_groupConnector;
  unsigned int m_groupSize;
  XML_Char m_namespaceSeparator;
  XML_Parser m_parentParser;
  XML_ParsingStatus m_parsingStatus;

  XML_Bool m_isParamEntity;
  XML_Bool m_useForeignDTD;
  enum XML_ParamEntityParsing m_paramEntityParsing;

  unsigned long m_hash_secret_salt;
};
# 677 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
XML_Parser
XML_ParserCreate(const XML_Char *encodingName)
{
  return XML_ParserCreate_MM(encodingName, 
# 680 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                                          ((void *)0)
# 680 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                                              , 
# 680 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                                                ((void *)0)
# 680 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                                                    );
}

XML_Parser
XML_ParserCreateNS(const XML_Char *encodingName, XML_Char nsSep)
{
  XML_Char tmp[2];
  *tmp = nsSep;
  return XML_ParserCreate_MM(encodingName, 
# 688 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                                          ((void *)0)
# 688 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                                              , tmp);
}

static const XML_Char implicitContext[] = {
  0x78, 0x6D, 0x6C, 0x3D, 0x68, 0x74, 0x74, 0x70,
  0x3A, 0x2F, 0x2F, 0x77, 0x77, 0x77,
  0x2E, 0x77, 0x33, 0x2E, 0x6F, 0x72, 0x67,
  0x2F, 0x58, 0x4D, 0x4C, 0x2F, 0x31, 0x39,
  0x39, 0x38, 0x2F, 0x6E, 0x61, 0x6D, 0x65,
  0x73, 0x70, 0x61, 0x63, 0x65, '\0'
};

static unsigned long
gather_time_entropy(void)
{





  struct timeval tv;
  int gettimeofday_res;

  gettimeofday_res = gettimeofday(&tv, 
# 711 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                                      ((void *)0)
# 711 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                                          );
  ((gettimeofday_res == 0) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c", 712, __func__, "gettimeofday_res == 0"));


  return tv.tv_usec;

}

static unsigned long
generate_hash_secret_salt(XML_Parser parser)
{
# 733 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
  const unsigned long entropy = (unsigned long)parser;


  if (sizeof(unsigned long) == 4) {
    return entropy * 2147483647;
  } else {
    return entropy * (unsigned long)2305843009213693951;
  }

}

static XML_Bool
startParsing(XML_Parser parser)
{

    if ((parser->m_hash_secret_salt) == 0)
      (parser->m_hash_secret_salt) = generate_hash_secret_salt(parser);
    if ((parser->m_ns)) {



      return setContext(parser, implicitContext);
    }
    return ((XML_Bool) 1);
}

XML_Parser
XML_ParserCreate_MM(const XML_Char *encodingName,
                    const XML_Memory_Handling_Suite *memsuite,
                    const XML_Char *nameSep)
{
  return parserCreate(encodingName, memsuite, nameSep, 
# 764 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                                                      ((void *)0)
# 764 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                                                          );
}

static XML_Parser
parserCreate(const XML_Char *encodingName,
             const XML_Memory_Handling_Suite *memsuite,
             const XML_Char *nameSep,
             DTD *dtd)
{
  XML_Parser parser;

  if (memsuite) {
    XML_Memory_Handling_Suite *mtemp;
    parser = (XML_Parser)
      memsuite->malloc_fcn(sizeof(struct XML_ParserStruct));
    if (parser != 
# 779 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                 ((void *)0)
# 779 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                     ) {
      mtemp = (XML_Memory_Handling_Suite *)&(parser->m_mem);
      mtemp->malloc_fcn = memsuite->malloc_fcn;
      mtemp->realloc_fcn = memsuite->realloc_fcn;
      mtemp->free_fcn = memsuite->free_fcn;
    }
  }
  else {
    XML_Memory_Handling_Suite *mtemp;
    parser = (XML_Parser)malloc(sizeof(struct XML_ParserStruct));
    if (parser != 
# 789 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                 ((void *)0)
# 789 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                     ) {
      mtemp = (XML_Memory_Handling_Suite *)&(parser->m_mem);
      mtemp->malloc_fcn = malloc;
      mtemp->realloc_fcn = realloc;
      mtemp->free_fcn = free;
    }
  }

  if (!parser)
    return parser;

  (parser->m_buffer) = 
# 800 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
          ((void *)0)
# 800 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
              ;
  (parser->m_bufferLim) = 
# 801 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
             ((void *)0)
# 801 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                 ;

  (parser->m_attsSize) = 16;
  (parser->m_atts) = (ATTRIBUTE *)(parser->m_mem.malloc_fcn(((parser->m_attsSize) * sizeof(ATTRIBUTE))));
  if ((parser->m_atts) == 
# 805 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
             ((void *)0)
# 805 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                 ) {
    (parser->m_mem.free_fcn((parser)));
    return 
# 807 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
          ((void *)0)
# 807 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
              ;
  }
# 817 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
  (parser->m_dataBuf) = (XML_Char *)(parser->m_mem.malloc_fcn((1024 * sizeof(XML_Char))));
  if ((parser->m_dataBuf) == 
# 818 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                ((void *)0)
# 818 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                    ) {
    (parser->m_mem.free_fcn(((parser->m_atts))));



    (parser->m_mem.free_fcn((parser)));
    return 
# 824 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
          ((void *)0)
# 824 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
              ;
  }
  (parser->m_dataBufEnd) = (parser->m_dataBuf) + 1024;

  if (dtd)
    (parser->m_dtd) = dtd;
  else {
    (parser->m_dtd) = dtdCreate(&parser->m_mem);
    if ((parser->m_dtd) == 
# 832 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
               ((void *)0)
# 832 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                   ) {
      (parser->m_mem.free_fcn(((parser->m_dataBuf))));
      (parser->m_mem.free_fcn(((parser->m_atts))));



      (parser->m_mem.free_fcn((parser)));
      return 
# 839 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
            ((void *)0)
# 839 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                ;
    }
  }

  (parser->m_freeBindingList) = 
# 843 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                   ((void *)0)
# 843 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                       ;
  (parser->m_freeTagList) = 
# 844 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
               ((void *)0)
# 844 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                   ;
  (parser->m_freeInternalEntities) = 
# 845 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                        ((void *)0)
# 845 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                            ;

  (parser->m_groupSize) = 0;
  (parser->m_groupConnector) = 
# 848 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                  ((void *)0)
# 848 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                      ;

  (parser->m_unknownEncodingHandler) = 
# 850 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                          ((void *)0)
# 850 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                              ;
  (parser->m_unknownEncodingHandlerData) = 
# 851 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                              ((void *)0)
# 851 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                                  ;

  (parser->m_namespaceSeparator) = 0x21;
  (parser->m_ns) = ((XML_Bool) 0);
  (parser->m_ns_triplets) = ((XML_Bool) 0);

  (parser->m_nsAtts) = 
# 857 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
          ((void *)0)
# 857 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
              ;
  (parser->m_nsAttsVersion) = 0;
  (parser->m_nsAttsPower) = 0;

  poolInit(&(parser->m_tempPool), &(parser->m_mem));
  poolInit(&(parser->m_temp2Pool), &(parser->m_mem));
  parserInit(parser, encodingName);

  if (encodingName && !(parser->m_protocolEncodingName)) {
    XML_ParserFree(parser);
    return 
# 867 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
          ((void *)0)
# 867 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
              ;
  }

  if (nameSep) {
    (parser->m_ns) = ((XML_Bool) 1);
    (parser->m_internalEncoding) = XmlGetUtf8InternalEncodingNS();
    (parser->m_namespaceSeparator) = *nameSep;
  }
  else {
    (parser->m_internalEncoding) = XmlGetUtf8InternalEncoding();
  }

  return parser;
}

static void
parserInit(XML_Parser parser, const XML_Char *encodingName)
{
  (parser->m_processor) = prologInitProcessor;
  XmlPrologStateInit(&(parser->m_prologState));
  (parser->m_protocolEncodingName) = (encodingName != 
# 887 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                                         ((void *)0)
                          
# 888 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                         ? poolCopyString(&(parser->m_tempPool), encodingName)
                          : 
# 889 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                           ((void *)0)
# 889 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                               );
  (parser->m_curBase) = 
# 890 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
           ((void *)0)
# 890 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
               ;
  XmlInitEncoding(&(parser->m_initEncoding), &(parser->m_encoding), 0);
  (parser->m_userData) = 
# 892 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
            ((void *)0)
# 892 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                ;
  (parser->m_handlerArg) = 
# 893 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
              ((void *)0)
# 893 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                  ;
  (parser->m_startElementHandler) = 
# 894 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                       ((void *)0)
# 894 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                           ;
  (parser->m_endElementHandler) = 
# 895 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                     ((void *)0)
# 895 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                         ;
  (parser->m_characterDataHandler) = 
# 896 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                        ((void *)0)
# 896 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                            ;
  (parser->m_processingInstructionHandler) = 
# 897 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                                ((void *)0)
# 897 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                                    ;
  (parser->m_commentHandler) = 
# 898 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                  ((void *)0)
# 898 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                      ;
  (parser->m_startCdataSectionHandler) = 
# 899 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                            ((void *)0)
# 899 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                                ;
  (parser->m_endCdataSectionHandler) = 
# 900 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                          ((void *)0)
# 900 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                              ;
  (parser->m_defaultHandler) = 
# 901 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                  ((void *)0)
# 901 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                      ;
  (parser->m_startDoctypeDeclHandler) = 
# 902 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                           ((void *)0)
# 902 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                               ;
  (parser->m_endDoctypeDeclHandler) = 
# 903 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                         ((void *)0)
# 903 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                             ;
  (parser->m_unparsedEntityDeclHandler) = 
# 904 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                             ((void *)0)
# 904 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                                 ;
  (parser->m_notationDeclHandler) = 
# 905 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                       ((void *)0)
# 905 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                           ;
  (parser->m_startNamespaceDeclHandler) = 
# 906 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                             ((void *)0)
# 906 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                                 ;
  (parser->m_endNamespaceDeclHandler) = 
# 907 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                           ((void *)0)
# 907 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                               ;
  (parser->m_notStandaloneHandler) = 
# 908 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                        ((void *)0)
# 908 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                            ;
  (parser->m_externalEntityRefHandler) = 
# 909 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                            ((void *)0)
# 909 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                                ;
  (parser->m_externalEntityRefHandlerArg) = parser;
  (parser->m_skippedEntityHandler) = 
# 911 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                        ((void *)0)
# 911 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                            ;
  (parser->m_elementDeclHandler) = 
# 912 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                      ((void *)0)
# 912 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                          ;
  (parser->m_attlistDeclHandler) = 
# 913 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                      ((void *)0)
# 913 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                          ;
  (parser->m_entityDeclHandler) = 
# 914 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                     ((void *)0)
# 914 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                         ;
  (parser->m_xmlDeclHandler) = 
# 915 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                  ((void *)0)
# 915 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                      ;
  (parser->m_bufferPtr) = (parser->m_buffer);
  (parser->m_bufferEnd) = (parser->m_buffer);
  (parser->m_parseEndByteIndex) = 0;
  (parser->m_parseEndPtr) = 
# 919 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
               ((void *)0)
# 919 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                   ;
  (parser->m_declElementType) = 
# 920 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                   ((void *)0)
# 920 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                       ;
  (parser->m_declAttributeId) = 
# 921 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                   ((void *)0)
# 921 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                       ;
  (parser->m_declEntity) = 
# 922 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
              ((void *)0)
# 922 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                  ;
  (parser->m_doctypeName) = 
# 923 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
               ((void *)0)
# 923 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                   ;
  (parser->m_doctypeSysid) = 
# 924 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                ((void *)0)
# 924 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                    ;
  (parser->m_doctypePubid) = 
# 925 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                ((void *)0)
# 925 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                    ;
  (parser->m_declAttributeType) = 
# 926 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                     ((void *)0)
# 926 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                         ;
  (parser->m_declNotationName) = 
# 927 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                    ((void *)0)
# 927 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                        ;
  (parser->m_declNotationPublicId) = 
# 928 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                        ((void *)0)
# 928 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                            ;
  (parser->m_declAttributeIsCdata) = ((XML_Bool) 0);
  (parser->m_declAttributeIsId) = ((XML_Bool) 0);
  memset(&(parser->m_position), 0, sizeof(POSITION));
  (parser->m_errorCode) = XML_ERROR_NONE;
  (parser->m_eventPtr) = 
# 933 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
            ((void *)0)
# 933 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                ;
  (parser->m_eventEndPtr) = 
# 934 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
               ((void *)0)
# 934 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                   ;
  (parser->m_positionPtr) = 
# 935 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
               ((void *)0)
# 935 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                   ;
  (parser->m_openInternalEntities) = 
# 936 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                        ((void *)0)
# 936 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                            ;
  (parser->m_defaultExpandInternalEntities) = ((XML_Bool) 1);
  (parser->m_tagLevel) = 0;
  (parser->m_tagStack) = 
# 939 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
            ((void *)0)
# 939 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                ;
  (parser->m_inheritedBindings) = 
# 940 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                     ((void *)0)
# 940 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                         ;
  (parser->m_nSpecifiedAtts) = 0;
  (parser->m_unknownEncodingMem) = 
# 942 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                      ((void *)0)
# 942 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                          ;
  (parser->m_unknownEncodingRelease) = 
# 943 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                          ((void *)0)
# 943 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                              ;
  (parser->m_unknownEncodingData) = 
# 944 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                       ((void *)0)
# 944 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                           ;
  (parser->m_parentParser) = 
# 945 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                ((void *)0)
# 945 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                    ;
  (parser->m_parsingStatus.parsing) = XML_INITIALIZED;

  (parser->m_isParamEntity) = ((XML_Bool) 0);
  (parser->m_useForeignDTD) = ((XML_Bool) 0);
  (parser->m_paramEntityParsing) = XML_PARAM_ENTITY_PARSING_NEVER;

  (parser->m_hash_secret_salt) = 0;
}


static void
moveToFreeBindingList(XML_Parser parser, BINDING *bindings)
{
  while (bindings) {
    BINDING *b = bindings;
    bindings = bindings->nextTagBinding;
    b->nextTagBinding = (parser->m_freeBindingList);
    (parser->m_freeBindingList) = b;
  }
}

XML_Bool
XML_ParserReset(XML_Parser parser, const XML_Char *encodingName)
{
  TAG *tStk;
  OPEN_INTERNAL_ENTITY *openEntityList;
  if ((parser->m_parentParser))
    return ((XML_Bool) 0);

  tStk = (parser->m_tagStack);
  while (tStk) {
    TAG *tag = tStk;
    tStk = tStk->parent;
    tag->parent = (parser->m_freeTagList);
    moveToFreeBindingList(parser, tag->bindings);
    tag->bindings = 
# 981 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                   ((void *)0)
# 981 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                       ;
    (parser->m_freeTagList) = tag;
  }

  openEntityList = (parser->m_openInternalEntities);
  while (openEntityList) {
    OPEN_INTERNAL_ENTITY *openEntity = openEntityList;
    openEntityList = openEntity->next;
    openEntity->next = (parser->m_freeInternalEntities);
    (parser->m_freeInternalEntities) = openEntity;
  }
  moveToFreeBindingList(parser, (parser->m_inheritedBindings));
  (parser->m_mem.free_fcn(((parser->m_unknownEncodingMem))));
  if ((parser->m_unknownEncodingRelease))
    (parser->m_unknownEncodingRelease)((parser->m_unknownEncodingData));
  poolClear(&(parser->m_tempPool));
  poolClear(&(parser->m_temp2Pool));
  parserInit(parser, encodingName);
  dtdReset((parser->m_dtd), &parser->m_mem);
  return ((XML_Bool) 1);
}

enum XML_Status
XML_SetEncoding(XML_Parser parser, const XML_Char *encodingName)
{




  if ((parser->m_parsingStatus.parsing) == XML_PARSING || (parser->m_parsingStatus.parsing) == XML_SUSPENDED)
    return XML_STATUS_ERROR;
  if (encodingName == 
# 1012 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                     ((void *)0)
# 1012 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                         )
    (parser->m_protocolEncodingName) = 
# 1013 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                          ((void *)0)
# 1013 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                              ;
  else {
    (parser->m_protocolEncodingName) = poolCopyString(&(parser->m_tempPool), encodingName);
    if (!(parser->m_protocolEncodingName))
      return XML_STATUS_ERROR;
  }
  return XML_STATUS_OK;
}

XML_Parser
XML_ExternalEntityParserCreate(XML_Parser oldParser,
                               const XML_Char *context,
                               const XML_Char *encodingName)
{
  XML_Parser parser = oldParser;
  DTD *newDtd = 
# 1028 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
               ((void *)0)
# 1028 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                   ;
  DTD *oldDtd = (parser->m_dtd);
  XML_StartElementHandler oldStartElementHandler = (parser->m_startElementHandler);
  XML_EndElementHandler oldEndElementHandler = (parser->m_endElementHandler);
  XML_CharacterDataHandler oldCharacterDataHandler = (parser->m_characterDataHandler);
  XML_ProcessingInstructionHandler oldProcessingInstructionHandler
      = (parser->m_processingInstructionHandler);
  XML_CommentHandler oldCommentHandler = (parser->m_commentHandler);
  XML_StartCdataSectionHandler oldStartCdataSectionHandler
      = (parser->m_startCdataSectionHandler);
  XML_EndCdataSectionHandler oldEndCdataSectionHandler
      = (parser->m_endCdataSectionHandler);
  XML_DefaultHandler oldDefaultHandler = (parser->m_defaultHandler);
  XML_UnparsedEntityDeclHandler oldUnparsedEntityDeclHandler
      = (parser->m_unparsedEntityDeclHandler);
  XML_NotationDeclHandler oldNotationDeclHandler = (parser->m_notationDeclHandler);
  XML_StartNamespaceDeclHandler oldStartNamespaceDeclHandler
      = (parser->m_startNamespaceDeclHandler);
  XML_EndNamespaceDeclHandler oldEndNamespaceDeclHandler
      = (parser->m_endNamespaceDeclHandler);
  XML_NotStandaloneHandler oldNotStandaloneHandler = (parser->m_notStandaloneHandler);
  XML_ExternalEntityRefHandler oldExternalEntityRefHandler
      = (parser->m_externalEntityRefHandler);
  XML_SkippedEntityHandler oldSkippedEntityHandler = (parser->m_skippedEntityHandler);
  XML_UnknownEncodingHandler oldUnknownEncodingHandler
      = (parser->m_unknownEncodingHandler);
  XML_ElementDeclHandler oldElementDeclHandler = (parser->m_elementDeclHandler);
  XML_AttlistDeclHandler oldAttlistDeclHandler = (parser->m_attlistDeclHandler);
  XML_EntityDeclHandler oldEntityDeclHandler = (parser->m_entityDeclHandler);
  XML_XmlDeclHandler oldXmlDeclHandler = (parser->m_xmlDeclHandler);
  ELEMENT_TYPE * oldDeclElementType = (parser->m_declElementType);

  void *oldUserData = (parser->m_userData);
  void *oldHandlerArg = (parser->m_handlerArg);
  XML_Bool oldDefaultExpandInternalEntities = (parser->m_defaultExpandInternalEntities);
  XML_Parser oldExternalEntityRefHandlerArg = (parser->m_externalEntityRefHandlerArg);

  enum XML_ParamEntityParsing oldParamEntityParsing = (parser->m_paramEntityParsing);
  int oldInEntityValue = (parser->m_prologState).inEntityValue;

  XML_Bool oldns_triplets = (parser->m_ns_triplets);





  unsigned long oldhash_secret_salt = (parser->m_hash_secret_salt);


  if (!context)
    newDtd = oldDtd;







  if ((parser->m_ns)) {
    XML_Char tmp[2];
    *tmp = (parser->m_namespaceSeparator);
    parser = parserCreate(encodingName, &parser->m_mem, tmp, newDtd);
  }
  else {
    parser = parserCreate(encodingName, &parser->m_mem, 
# 1092 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                                                       ((void *)0)
# 1092 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                                                           , newDtd);
  }

  if (!parser)
    return 
# 1096 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
          ((void *)0)
# 1096 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
              ;

  (parser->m_startElementHandler) = oldStartElementHandler;
  (parser->m_endElementHandler) = oldEndElementHandler;
  (parser->m_characterDataHandler) = oldCharacterDataHandler;
  (parser->m_processingInstructionHandler) = oldProcessingInstructionHandler;
  (parser->m_commentHandler) = oldCommentHandler;
  (parser->m_startCdataSectionHandler) = oldStartCdataSectionHandler;
  (parser->m_endCdataSectionHandler) = oldEndCdataSectionHandler;
  (parser->m_defaultHandler) = oldDefaultHandler;
  (parser->m_unparsedEntityDeclHandler) = oldUnparsedEntityDeclHandler;
  (parser->m_notationDeclHandler) = oldNotationDeclHandler;
  (parser->m_startNamespaceDeclHandler) = oldStartNamespaceDeclHandler;
  (parser->m_endNamespaceDeclHandler) = oldEndNamespaceDeclHandler;
  (parser->m_notStandaloneHandler) = oldNotStandaloneHandler;
  (parser->m_externalEntityRefHandler) = oldExternalEntityRefHandler;
  (parser->m_skippedEntityHandler) = oldSkippedEntityHandler;
  (parser->m_unknownEncodingHandler) = oldUnknownEncodingHandler;
  (parser->m_elementDeclHandler) = oldElementDeclHandler;
  (parser->m_attlistDeclHandler) = oldAttlistDeclHandler;
  (parser->m_entityDeclHandler) = oldEntityDeclHandler;
  (parser->m_xmlDeclHandler) = oldXmlDeclHandler;
  (parser->m_declElementType) = oldDeclElementType;
  (parser->m_userData) = oldUserData;
  if (oldUserData == oldHandlerArg)
    (parser->m_handlerArg) = (parser->m_userData);
  else
    (parser->m_handlerArg) = parser;
  if (oldExternalEntityRefHandlerArg != oldParser)
    (parser->m_externalEntityRefHandlerArg) = oldExternalEntityRefHandlerArg;
  (parser->m_defaultExpandInternalEntities) = oldDefaultExpandInternalEntities;
  (parser->m_ns_triplets) = oldns_triplets;
  (parser->m_hash_secret_salt) = oldhash_secret_salt;
  (parser->m_parentParser) = oldParser;

  (parser->m_paramEntityParsing) = oldParamEntityParsing;
  (parser->m_prologState).inEntityValue = oldInEntityValue;
  if (context) {

    if (!dtdCopy(oldParser, (parser->m_dtd), oldDtd, &parser->m_mem)
      || !setContext(parser, context)) {
      XML_ParserFree(parser);
      return 
# 1138 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
            ((void *)0)
# 1138 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                ;
    }
    (parser->m_processor) = externalEntityInitProcessor;

  }
  else {







    (parser->m_isParamEntity) = ((XML_Bool) 1);
    XmlPrologStateInitExternalEntity(&(parser->m_prologState));
    (parser->m_processor) = externalParEntInitProcessor;
  }

  return parser;
}

static void
destroyBindings(BINDING *bindings, XML_Parser parser)
{
  for (;;) {
    BINDING *b = bindings;
    if (!b)
      break;
    bindings = b->nextTagBinding;
    (parser->m_mem.free_fcn((b->uri)));
    (parser->m_mem.free_fcn((b)));
  }
}

void
XML_ParserFree(XML_Parser parser)
{
  TAG *tagList;
  OPEN_INTERNAL_ENTITY *entityList;
  if (parser == 
# 1177 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
               ((void *)0)
# 1177 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                   )
    return;

  tagList = (parser->m_tagStack);
  for (;;) {
    TAG *p;
    if (tagList == 
# 1183 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                  ((void *)0)
# 1183 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                      ) {
      if ((parser->m_freeTagList) == 
# 1184 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                        ((void *)0)
# 1184 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                            )
        break;
      tagList = (parser->m_freeTagList);
      (parser->m_freeTagList) = 
# 1187 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                   ((void *)0)
# 1187 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                       ;
    }
    p = tagList;
    tagList = tagList->parent;
    (parser->m_mem.free_fcn((p->buf)));
    destroyBindings(p->bindings, parser);
    (parser->m_mem.free_fcn((p)));
  }

  entityList = (parser->m_openInternalEntities);
  for (;;) {
    OPEN_INTERNAL_ENTITY *openEntity;
    if (entityList == 
# 1199 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                     ((void *)0)
# 1199 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                         ) {
      if ((parser->m_freeInternalEntities) == 
# 1200 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                                 ((void *)0)
# 1200 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                                     )
        break;
      entityList = (parser->m_freeInternalEntities);
      (parser->m_freeInternalEntities) = 
# 1203 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                            ((void *)0)
# 1203 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                                ;
    }
    openEntity = entityList;
    entityList = entityList->next;
    (parser->m_mem.free_fcn((openEntity)));
  }

  destroyBindings((parser->m_freeBindingList), parser);
  destroyBindings((parser->m_inheritedBindings), parser);
  poolDestroy(&(parser->m_tempPool));
  poolDestroy(&(parser->m_temp2Pool));




  if (!(parser->m_isParamEntity) && (parser->m_dtd))



    dtdDestroy((parser->m_dtd), (XML_Bool)!(parser->m_parentParser), &parser->m_mem);
  (parser->m_mem.free_fcn(((void *)(parser->m_atts))));



  (parser->m_mem.free_fcn(((parser->m_groupConnector))));
  (parser->m_mem.free_fcn(((parser->m_buffer))));
  (parser->m_mem.free_fcn(((parser->m_dataBuf))));
  (parser->m_mem.free_fcn(((parser->m_nsAtts))));
  (parser->m_mem.free_fcn(((parser->m_unknownEncodingMem))));
  if ((parser->m_unknownEncodingRelease))
    (parser->m_unknownEncodingRelease)((parser->m_unknownEncodingData));
  (parser->m_mem.free_fcn((parser)));
}

void
XML_UseParserAsHandlerArg(XML_Parser parser)
{
  (parser->m_handlerArg) = parser;
}

enum XML_Error
XML_UseForeignDTD(XML_Parser parser, XML_Bool useDTD)
{


  if ((parser->m_parsingStatus.parsing) == XML_PARSING || (parser->m_parsingStatus.parsing) == XML_SUSPENDED)
    return XML_ERROR_CANT_CHANGE_FEATURE_ONCE_PARSING;
  (parser->m_useForeignDTD) = useDTD;
  return XML_ERROR_NONE;



}

void
XML_SetReturnNSTriplet(XML_Parser parser, int do_nst)
{

  if ((parser->m_parsingStatus.parsing) == XML_PARSING || (parser->m_parsingStatus.parsing) == XML_SUSPENDED)
    return;
  (parser->m_ns_triplets) = do_nst ? ((XML_Bool) 1) : ((XML_Bool) 0);
}

void
XML_SetUserData(XML_Parser parser, void *p)
{
  if ((parser->m_handlerArg) == (parser->m_userData))
    (parser->m_handlerArg) = (parser->m_userData) = p;
  else
    (parser->m_userData) = p;
}

enum XML_Status
XML_SetBase(XML_Parser parser, const XML_Char *p)
{
  if (p) {
    p = poolCopyString(&(parser->m_dtd)->pool, p);
    if (!p)
      return XML_STATUS_ERROR;
    (parser->m_curBase) = p;
  }
  else
    (parser->m_curBase) = 
# 1285 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
             ((void *)0)
# 1285 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                 ;
  return XML_STATUS_OK;
}

const XML_Char *
XML_GetBase(XML_Parser parser)
{
  return (parser->m_curBase);
}

int
XML_GetSpecifiedAttributeCount(XML_Parser parser)
{
  return (parser->m_nSpecifiedAtts);
}

int
XML_GetIdAttributeIndex(XML_Parser parser)
{
  return (parser->m_idAttIndex);
}
# 1315 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
void
XML_SetElementHandler(XML_Parser parser,
                      XML_StartElementHandler start,
                      XML_EndElementHandler end)
{
  (parser->m_startElementHandler) = start;
  (parser->m_endElementHandler) = end;
}

void
XML_SetStartElementHandler(XML_Parser parser,
                           XML_StartElementHandler start) {
  (parser->m_startElementHandler) = start;
}

void
XML_SetEndElementHandler(XML_Parser parser,
                         XML_EndElementHandler end) {
  (parser->m_endElementHandler) = end;
}

void
XML_SetCharacterDataHandler(XML_Parser parser,
                            XML_CharacterDataHandler handler)
{
  (parser->m_characterDataHandler) = handler;
}

void
XML_SetProcessingInstructionHandler(XML_Parser parser,
                                    XML_ProcessingInstructionHandler handler)
{
  (parser->m_processingInstructionHandler) = handler;
}

void
XML_SetCommentHandler(XML_Parser parser,
                      XML_CommentHandler handler)
{
  (parser->m_commentHandler) = handler;
}

void
XML_SetCdataSectionHandler(XML_Parser parser,
                           XML_StartCdataSectionHandler start,
                           XML_EndCdataSectionHandler end)
{
  (parser->m_startCdataSectionHandler) = start;
  (parser->m_endCdataSectionHandler) = end;
}

void
XML_SetStartCdataSectionHandler(XML_Parser parser,
                                XML_StartCdataSectionHandler start) {
  (parser->m_startCdataSectionHandler) = start;
}

void
XML_SetEndCdataSectionHandler(XML_Parser parser,
                              XML_EndCdataSectionHandler end) {
  (parser->m_endCdataSectionHandler) = end;
}

void
XML_SetDefaultHandler(XML_Parser parser,
                      XML_DefaultHandler handler)
{
  (parser->m_defaultHandler) = handler;
  (parser->m_defaultExpandInternalEntities) = ((XML_Bool) 0);
}

void
XML_SetDefaultHandlerExpand(XML_Parser parser,
                            XML_DefaultHandler handler)
{
  (parser->m_defaultHandler) = handler;
  (parser->m_defaultExpandInternalEntities) = ((XML_Bool) 1);
}

void
XML_SetDoctypeDeclHandler(XML_Parser parser,
                          XML_StartDoctypeDeclHandler start,
                          XML_EndDoctypeDeclHandler end)
{
  (parser->m_startDoctypeDeclHandler) = start;
  (parser->m_endDoctypeDeclHandler) = end;
}

void
XML_SetStartDoctypeDeclHandler(XML_Parser parser,
                               XML_StartDoctypeDeclHandler start) {
  (parser->m_startDoctypeDeclHandler) = start;
}

void
XML_SetEndDoctypeDeclHandler(XML_Parser parser,
                             XML_EndDoctypeDeclHandler end) {
  (parser->m_endDoctypeDeclHandler) = end;
}

void
XML_SetUnparsedEntityDeclHandler(XML_Parser parser,
                                 XML_UnparsedEntityDeclHandler handler)
{
  (parser->m_unparsedEntityDeclHandler) = handler;
}

void
XML_SetNotationDeclHandler(XML_Parser parser,
                           XML_NotationDeclHandler handler)
{
  (parser->m_notationDeclHandler) = handler;
}

void
XML_SetNamespaceDeclHandler(XML_Parser parser,
                            XML_StartNamespaceDeclHandler start,
                            XML_EndNamespaceDeclHandler end)
{
  (parser->m_startNamespaceDeclHandler) = start;
  (parser->m_endNamespaceDeclHandler) = end;
}

void
XML_SetStartNamespaceDeclHandler(XML_Parser parser,
                                 XML_StartNamespaceDeclHandler start) {
  (parser->m_startNamespaceDeclHandler) = start;
}

void
XML_SetEndNamespaceDeclHandler(XML_Parser parser,
                               XML_EndNamespaceDeclHandler end) {
  (parser->m_endNamespaceDeclHandler) = end;
}

void
XML_SetNotStandaloneHandler(XML_Parser parser,
                            XML_NotStandaloneHandler handler)
{
  (parser->m_notStandaloneHandler) = handler;
}

void
XML_SetExternalEntityRefHandler(XML_Parser parser,
                                XML_ExternalEntityRefHandler handler)
{
  (parser->m_externalEntityRefHandler) = handler;
}

void
XML_SetExternalEntityRefHandlerArg(XML_Parser parser, void *arg)
{
  if (arg)
    (parser->m_externalEntityRefHandlerArg) = (XML_Parser)arg;
  else
    (parser->m_externalEntityRefHandlerArg) = parser;
}

void
XML_SetSkippedEntityHandler(XML_Parser parser,
                            XML_SkippedEntityHandler handler)
{
  (parser->m_skippedEntityHandler) = handler;
}

void
XML_SetUnknownEncodingHandler(XML_Parser parser,
                              XML_UnknownEncodingHandler handler,
                              void *data)
{
  (parser->m_unknownEncodingHandler) = handler;
  (parser->m_unknownEncodingHandlerData) = data;
}

void
XML_SetElementDeclHandler(XML_Parser parser,
                          XML_ElementDeclHandler eldecl)
{
  (parser->m_elementDeclHandler) = eldecl;
}

void
XML_SetAttlistDeclHandler(XML_Parser parser,
                          XML_AttlistDeclHandler attdecl)
{
  (parser->m_attlistDeclHandler) = attdecl;
}

void
XML_SetEntityDeclHandler(XML_Parser parser,
                         XML_EntityDeclHandler handler)
{
  (parser->m_entityDeclHandler) = handler;
}

void
XML_SetXmlDeclHandler(XML_Parser parser,
                      XML_XmlDeclHandler handler) {
  (parser->m_xmlDeclHandler) = handler;
}

int
XML_SetParamEntityParsing(XML_Parser parser,
                          enum XML_ParamEntityParsing peParsing)
{

  if ((parser->m_parsingStatus.parsing) == XML_PARSING || (parser->m_parsingStatus.parsing) == XML_SUSPENDED)
    return 0;

  (parser->m_paramEntityParsing) = peParsing;
  return 1;



}

int
XML_SetHashSalt(XML_Parser parser,
                unsigned long hash_salt)
{

  if ((parser->m_parsingStatus.parsing) == XML_PARSING || (parser->m_parsingStatus.parsing) == XML_SUSPENDED)
    return 0;
  (parser->m_hash_secret_salt) = hash_salt;
  return 1;
}

enum XML_Status
XML_Parse(XML_Parser parser, const char *s, int len, int isFinal)
{
  switch ((parser->m_parsingStatus.parsing)) {
  case XML_SUSPENDED:
    (parser->m_errorCode) = XML_ERROR_SUSPENDED;
    return XML_STATUS_ERROR;
  case XML_FINISHED:
    (parser->m_errorCode) = XML_ERROR_FINISHED;
    return XML_STATUS_ERROR;
  case XML_INITIALIZED:
    if ((parser->m_parentParser) == 
# 1553 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                       ((void *)0) 
# 1553 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                            && !startParsing(parser)) {
      (parser->m_errorCode) = XML_ERROR_NO_MEMORY;
      return XML_STATUS_ERROR;
    }

  default:
    (parser->m_parsingStatus.parsing) = XML_PARSING;
  }

  if (len == 0) {
    (parser->m_parsingStatus.finalBuffer) = (XML_Bool)isFinal;
    if (!isFinal)
      return XML_STATUS_OK;
    (parser->m_positionPtr) = (parser->m_bufferPtr);
    (parser->m_parseEndPtr) = (parser->m_bufferEnd);





    (parser->m_errorCode) = (parser->m_processor)(parser, (parser->m_bufferPtr), (parser->m_parseEndPtr), &(parser->m_bufferPtr));

    if ((parser->m_errorCode) == XML_ERROR_NONE) {
      switch ((parser->m_parsingStatus.parsing)) {
      case XML_SUSPENDED:
        ((((parser->m_encoding))->updatePosition)((parser->m_encoding), (parser->m_positionPtr), (parser->m_bufferPtr), &(parser->m_position)));
        (parser->m_positionPtr) = (parser->m_bufferPtr);
        return XML_STATUS_SUSPENDED;
      case XML_INITIALIZED:
      case XML_PARSING:
        (parser->m_parsingStatus.parsing) = XML_FINISHED;

      default:
        return XML_STATUS_OK;
      }
    }
    (parser->m_eventEndPtr) = (parser->m_eventPtr);
    (parser->m_processor) = errorProcessor;
    return XML_STATUS_ERROR;
  }
# 1655 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
  else {
    void *buff = XML_GetBuffer(parser, len);
    if (buff == 
# 1657 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
               ((void *)0)
# 1657 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                   )
      return XML_STATUS_ERROR;
    else {
      memcpy(buff, s, len);
      return XML_ParseBuffer(parser, len, isFinal);
    }
  }
}

enum XML_Status
XML_ParseBuffer(XML_Parser parser, int len, int isFinal)
{
  const char *start;
  enum XML_Status result = XML_STATUS_OK;

  switch ((parser->m_parsingStatus.parsing)) {
  case XML_SUSPENDED:
    (parser->m_errorCode) = XML_ERROR_SUSPENDED;
    return XML_STATUS_ERROR;
  case XML_FINISHED:
    (parser->m_errorCode) = XML_ERROR_FINISHED;
    return XML_STATUS_ERROR;
  case XML_INITIALIZED:
    if ((parser->m_parentParser) == 
# 1680 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                       ((void *)0) 
# 1680 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                            && !startParsing(parser)) {
      (parser->m_errorCode) = XML_ERROR_NO_MEMORY;
      return XML_STATUS_ERROR;
    }

  default:
    (parser->m_parsingStatus.parsing) = XML_PARSING;
  }

  start = (parser->m_bufferPtr);
  (parser->m_positionPtr) = start;
  (parser->m_bufferEnd) += len;
  (parser->m_parseEndPtr) = (parser->m_bufferEnd);
  (parser->m_parseEndByteIndex) += len;
  (parser->m_parsingStatus.finalBuffer) = (XML_Bool)isFinal;

  (parser->m_errorCode) = (parser->m_processor)(parser, start, (parser->m_parseEndPtr), &(parser->m_bufferPtr));

  if ((parser->m_errorCode) != XML_ERROR_NONE) {
    (parser->m_eventEndPtr) = (parser->m_eventPtr);
    (parser->m_processor) = errorProcessor;
    return XML_STATUS_ERROR;
  }
  else {
    switch ((parser->m_parsingStatus.parsing)) {
    case XML_SUSPENDED:
      result = XML_STATUS_SUSPENDED;
      break;
    case XML_INITIALIZED:
    case XML_PARSING:
      if (isFinal) {
        (parser->m_parsingStatus.parsing) = XML_FINISHED;
        return result;
      }
    default: ;
    }
  }

  ((((parser->m_encoding))->updatePosition)((parser->m_encoding), (parser->m_positionPtr), (parser->m_bufferPtr), &(parser->m_position)));
  (parser->m_positionPtr) = (parser->m_bufferPtr);
  return result;
}

void *
XML_GetBuffer(XML_Parser parser, int len)
{
  if (len < 0) {
    (parser->m_errorCode) = XML_ERROR_NO_MEMORY;
    return 
# 1728 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
          ((void *)0)
# 1728 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
              ;
  }
  switch ((parser->m_parsingStatus.parsing)) {
  case XML_SUSPENDED:
    (parser->m_errorCode) = XML_ERROR_SUSPENDED;
    return 
# 1733 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
          ((void *)0)
# 1733 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
              ;
  case XML_FINISHED:
    (parser->m_errorCode) = XML_ERROR_FINISHED;
    return 
# 1736 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
          ((void *)0)
# 1736 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
              ;
  default: ;
  }

  if (len > (parser->m_bufferLim) - (parser->m_bufferEnd)) {

    int keep;


    int neededSize = (int) ((unsigned)len + (unsigned)((parser->m_bufferEnd) - (parser->m_bufferPtr)));
    if (neededSize < 0) {
      (parser->m_errorCode) = XML_ERROR_NO_MEMORY;
      return 
# 1748 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
            ((void *)0)
# 1748 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                ;
    }

    keep = (int)((parser->m_bufferPtr) - (parser->m_buffer));
    if (keep > 1024)
      keep = 1024;
    neededSize += keep;

    if (neededSize <= (parser->m_bufferLim) - (parser->m_buffer)) {

      if (keep < (parser->m_bufferPtr) - (parser->m_buffer)) {
        int offset = (int)((parser->m_bufferPtr) - (parser->m_buffer)) - keep;
        memmove((parser->m_buffer), &(parser->m_buffer)[offset], (parser->m_bufferEnd) - (parser->m_bufferPtr) + keep);
        (parser->m_bufferEnd) -= offset;
        (parser->m_bufferPtr) -= offset;
      }





    }
    else {
      char *newBuf;
      int bufferSize = (int)((parser->m_bufferLim) - (parser->m_bufferPtr));
      if (bufferSize == 0)
        bufferSize = 1024;
      do {

        bufferSize = (int) (2U * (unsigned) bufferSize);
      } while (bufferSize < neededSize && bufferSize > 0);
      if (bufferSize <= 0) {
        (parser->m_errorCode) = XML_ERROR_NO_MEMORY;
        return 
# 1781 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
              ((void *)0)
# 1781 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                  ;
      }
      newBuf = (char *)(parser->m_mem.malloc_fcn((bufferSize)));
      if (newBuf == 0) {
        (parser->m_errorCode) = XML_ERROR_NO_MEMORY;
        return 
# 1786 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
              ((void *)0)
# 1786 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                  ;
      }
      (parser->m_bufferLim) = newBuf + bufferSize;

      if ((parser->m_bufferPtr)) {
        int keep = (int)((parser->m_bufferPtr) - (parser->m_buffer));
        if (keep > 1024)
          keep = 1024;
        memcpy(newBuf, &(parser->m_bufferPtr)[-keep], (parser->m_bufferEnd) - (parser->m_bufferPtr) + keep);
        (parser->m_mem.free_fcn(((parser->m_buffer))));
        (parser->m_buffer) = newBuf;
        (parser->m_bufferEnd) = (parser->m_buffer) + ((parser->m_bufferEnd) - (parser->m_bufferPtr)) + keep;
        (parser->m_bufferPtr) = (parser->m_buffer) + keep;
      }
      else {
        (parser->m_bufferEnd) = newBuf + ((parser->m_bufferEnd) - (parser->m_bufferPtr));
        (parser->m_bufferPtr) = (parser->m_buffer) = newBuf;
      }
# 1812 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
    }
    (parser->m_eventPtr) = (parser->m_eventEndPtr) = 
# 1813 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                            ((void *)0)
# 1813 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                                ;
    (parser->m_positionPtr) = 
# 1814 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                 ((void *)0)
# 1814 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                     ;
  }
  return (parser->m_bufferEnd);
}

enum XML_Status
XML_StopParser(XML_Parser parser, XML_Bool resumable)
{
  switch ((parser->m_parsingStatus.parsing)) {
  case XML_SUSPENDED:
    if (resumable) {
      (parser->m_errorCode) = XML_ERROR_SUSPENDED;
      return XML_STATUS_ERROR;
    }
    (parser->m_parsingStatus.parsing) = XML_FINISHED;
    break;
  case XML_FINISHED:
    (parser->m_errorCode) = XML_ERROR_FINISHED;
    return XML_STATUS_ERROR;
  default:
    if (resumable) {

      if ((parser->m_isParamEntity)) {
        (parser->m_errorCode) = XML_ERROR_SUSPEND_PE;
        return XML_STATUS_ERROR;
      }

      (parser->m_parsingStatus.parsing) = XML_SUSPENDED;
    }
    else
      (parser->m_parsingStatus.parsing) = XML_FINISHED;
  }
  return XML_STATUS_OK;
}

enum XML_Status
XML_ResumeParser(XML_Parser parser)
{
  enum XML_Status result = XML_STATUS_OK;

  if ((parser->m_parsingStatus.parsing) != XML_SUSPENDED) {
    (parser->m_errorCode) = XML_ERROR_NOT_SUSPENDED;
    return XML_STATUS_ERROR;
  }
  (parser->m_parsingStatus.parsing) = XML_PARSING;

  (parser->m_errorCode) = (parser->m_processor)(parser, (parser->m_bufferPtr), (parser->m_parseEndPtr), &(parser->m_bufferPtr));

  if ((parser->m_errorCode) != XML_ERROR_NONE) {
    (parser->m_eventEndPtr) = (parser->m_eventPtr);
    (parser->m_processor) = errorProcessor;
    return XML_STATUS_ERROR;
  }
  else {
    switch ((parser->m_parsingStatus.parsing)) {
    case XML_SUSPENDED:
      result = XML_STATUS_SUSPENDED;
      break;
    case XML_INITIALIZED:
    case XML_PARSING:
      if ((parser->m_parsingStatus.finalBuffer)) {
        (parser->m_parsingStatus.parsing) = XML_FINISHED;
        return result;
      }
    default: ;
    }
  }

  ((((parser->m_encoding))->updatePosition)((parser->m_encoding), (parser->m_positionPtr), (parser->m_bufferPtr), &(parser->m_position)));
  (parser->m_positionPtr) = (parser->m_bufferPtr);
  return result;
}

void
XML_GetParsingStatus(XML_Parser parser, XML_ParsingStatus *status)
{
  ((status != 
# 1890 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
 ((void *)0)
# 1890 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
 ) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c", 1890, __func__, "status != NULL"));
  *status = parser->m_parsingStatus;
}

enum XML_Error
XML_GetErrorCode(XML_Parser parser)
{
  return (parser->m_errorCode);
}

XML_Index
XML_GetCurrentByteIndex(XML_Parser parser)
{
  if ((parser->m_eventPtr))
    return (XML_Index)((parser->m_parseEndByteIndex) - ((parser->m_parseEndPtr) - (parser->m_eventPtr)));
  return -1;
}

int
XML_GetCurrentByteCount(XML_Parser parser)
{
  if ((parser->m_eventEndPtr) && (parser->m_eventPtr))
    return (int)((parser->m_eventEndPtr) - (parser->m_eventPtr));
  return 0;
}

const char *
XML_GetInputContext(XML_Parser parser, int *offset, int *size)
{

  if ((parser->m_eventPtr) && (parser->m_buffer)) {
    *offset = (int)((parser->m_eventPtr) - (parser->m_buffer));
    *size = (int)((parser->m_bufferEnd) - (parser->m_buffer));
    return (parser->m_buffer);
  }

  return (char *) 0;
}

XML_Size
XML_GetCurrentLineNumber(XML_Parser parser)
{
  if ((parser->m_eventPtr) && (parser->m_eventPtr) >= (parser->m_positionPtr)) {
    ((((parser->m_encoding))->updatePosition)((parser->m_encoding), (parser->m_positionPtr), (parser->m_eventPtr), &(parser->m_position)));
    (parser->m_positionPtr) = (parser->m_eventPtr);
  }
  return (parser->m_position).lineNumber + 1;
}

XML_Size
XML_GetCurrentColumnNumber(XML_Parser parser)
{
  if ((parser->m_eventPtr) && (parser->m_eventPtr) >= (parser->m_positionPtr)) {
    ((((parser->m_encoding))->updatePosition)((parser->m_encoding), (parser->m_positionPtr), (parser->m_eventPtr), &(parser->m_position)));
    (parser->m_positionPtr) = (parser->m_eventPtr);
  }
  return (parser->m_position).columnNumber;
}

void
XML_FreeContentModel(XML_Parser parser, XML_Content *model)
{
  (parser->m_mem.free_fcn((model)));
}

void *
XML_MemMalloc(XML_Parser parser, size_t size)
{
  return (parser->m_mem.malloc_fcn((size)));
}

void *
XML_MemRealloc(XML_Parser parser, void *ptr, size_t size)
{
  return (parser->m_mem.realloc_fcn((ptr),(size)));
}

void
XML_MemFree(XML_Parser parser, void *ptr)
{
  (parser->m_mem.free_fcn((ptr)));
}

void
XML_DefaultCurrent(XML_Parser parser)
{
  if ((parser->m_defaultHandler)) {
    if ((parser->m_openInternalEntities))
      reportDefault(parser,
                    (parser->m_internalEncoding),
                    (parser->m_openInternalEntities)->internalEventPtr,
                    (parser->m_openInternalEntities)->internalEventEndPtr);
    else
      reportDefault(parser, (parser->m_encoding), (parser->m_eventPtr), (parser->m_eventEndPtr));
  }
}

const XML_LChar *
XML_ErrorString(enum XML_Error code)
{
  static const XML_LChar* const message[] = {
    0,
    "out of memory",
    "syntax error",
    "no element found",
    "not well-formed (invalid token)",
    "unclosed token",
    "partial character",
    "mismatched tag",
    "duplicate attribute",
    "junk after document element",
    "illegal parameter entity reference",
    "undefined entity",
    "recursive entity reference",
    "asynchronous entity",
    "reference to invalid character number",
    "reference to binary entity",
    "reference to external entity in attribute",
    "XML or text declaration not at start of entity",
    "unknown encoding",
    "encoding specified in XML declaration is incorrect",
    "unclosed CDATA section",
    "error in processing external entity reference",
    "document is not standalone",
    "unexpected parser state - please send a bug report",
    "entity declared in parameter entity",
    "requested feature requires XML_DTD support in Expat",
    "cannot change setting once parsing has begun",
    "unbound prefix",
    "must not undeclare prefix",
    "incomplete markup in parameter entity",
    "XML declaration not well-formed",
    "text declaration not well-formed",
    "illegal character(s) in public id",
    "parser suspended",
    "parser not suspended",
    "parsing aborted",
    "parsing finished",
    "cannot suspend in external parameter entity",
    "reserved prefix (xml) must not be undeclared or bound to another namespace name",
    "reserved prefix (xmlns) must not be declared or undeclared",
    "prefix must not be bound to one of the reserved namespace names"
  };
  if (code > 0 && code < sizeof(message)/sizeof(message[0]))
    return message[code];
  return 
# 2035 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
        ((void *)0)
# 2035 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
            ;
}

const XML_LChar *
XML_ExpatVersion(void) {
# 2052 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
  return "expat_""2"".""2"".""0";



}

XML_Expat_Version
XML_ExpatVersionInfo(void)
{
  XML_Expat_Version version;

  version.major = 2;
  version.minor = 2;
  version.micro = 0;

  return version;
}

const XML_Feature *
XML_GetFeatureList(void)
{
  static const XML_Feature features[] = {
    {XML_FEATURE_SIZEOF_XML_CHAR, "sizeof(XML_Char)",
     sizeof(XML_Char)},
    {XML_FEATURE_SIZEOF_XML_LCHAR, "sizeof(XML_LChar)",
     sizeof(XML_LChar)},







    {XML_FEATURE_DTD, "XML_DTD", 0},


    {XML_FEATURE_CONTEXT_BYTES, "XML_CONTEXT_BYTES",
     1024},





    {XML_FEATURE_NS, "XML_NS", 0},







    {XML_FEATURE_END, 
# 2103 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                                  ((void *)0)
# 2103 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                                      , 0}
  };

  return features;
}






static XML_Bool
storeRawNames(XML_Parser parser)
{
  TAG *tag = (parser->m_tagStack);
  while (tag) {
    int bufSize;
    int nameLen = sizeof(XML_Char) * (tag->name.strLen + 1);
    char *rawNameBuf = tag->buf + nameLen;





    if (tag->rawName == rawNameBuf)
      break;



    bufSize = nameLen + (((tag->rawNameLength) + ((sizeof(XML_Char)) - 1)) & ~((sizeof(XML_Char)) - 1));
    if (bufSize > tag->bufEnd - tag->buf) {
      char *temp = (char *)(parser->m_mem.realloc_fcn((tag->buf),(bufSize)));
      if (temp == 
# 2135 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                 ((void *)0)
# 2135 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                     )
        return ((XML_Bool) 0);



      if (tag->name.str == (XML_Char *)tag->buf)
        tag->name.str = (XML_Char *)temp;



      if (tag->name.localPart)
        tag->name.localPart = (XML_Char *)temp + (tag->name.localPart -
                                                  (XML_Char *)tag->buf);
      tag->buf = temp;
      tag->bufEnd = temp + bufSize;
      rawNameBuf = temp + nameLen;
    }
    memcpy(rawNameBuf, tag->rawName, tag->rawNameLength);
    tag->rawName = rawNameBuf;
    tag = tag->parent;
  }
  return ((XML_Bool) 1);
}

static enum XML_Error
contentProcessor(XML_Parser parser,
                 const char *start,
                 const char *end,
                 const char **endPtr)
{
  enum XML_Error result = doContent(parser, 0, (parser->m_encoding), start, end,
                                    endPtr, (XML_Bool)!(parser->m_parsingStatus.finalBuffer));
  if (result == XML_ERROR_NONE) {
    if (!storeRawNames(parser))
      return XML_ERROR_NO_MEMORY;
  }
  return result;
}

static enum XML_Error
externalEntityInitProcessor(XML_Parser parser,
                            const char *start,
                            const char *end,
                            const char **endPtr)
{
  enum XML_Error result = initializeEncoding(parser);
  if (result != XML_ERROR_NONE)
    return result;
  (parser->m_processor) = externalEntityInitProcessor2;
  return externalEntityInitProcessor2(parser, start, end, endPtr);
}

static enum XML_Error
externalEntityInitProcessor2(XML_Parser parser,
                             const char *start,
                             const char *end,
                             const char **endPtr)
{
  const char *next = start;
  int tok = ((((parser->m_encoding))->scanners[1])((parser->m_encoding), start, end, &next));
  switch (tok) {
  case 14:





    if (next == end && !(parser->m_parsingStatus.finalBuffer)) {
      *endPtr = next;
      return XML_ERROR_NONE;
    }
    start = next;
    break;
  case -1:
    if (!(parser->m_parsingStatus.finalBuffer)) {
      *endPtr = start;
      return XML_ERROR_NONE;
    }
    (parser->m_eventPtr) = start;
    return XML_ERROR_UNCLOSED_TOKEN;
  case -2:
    if (!(parser->m_parsingStatus.finalBuffer)) {
      *endPtr = start;
      return XML_ERROR_NONE;
    }
    (parser->m_eventPtr) = start;
    return XML_ERROR_PARTIAL_CHAR;
  }
  (parser->m_processor) = externalEntityInitProcessor3;
  return externalEntityInitProcessor3(parser, start, end, endPtr);
}

static enum XML_Error
externalEntityInitProcessor3(XML_Parser parser,
                             const char *start,
                             const char *end,
                             const char **endPtr)
{
  int tok;
  const char *next = start;
  (parser->m_eventPtr) = start;
  tok = ((((parser->m_encoding))->scanners[1])((parser->m_encoding), start, end, &next));
  (parser->m_eventEndPtr) = next;

  switch (tok) {
  case 12:
    {
      enum XML_Error result;
      result = processXmlDecl(parser, 1, start, next);
      if (result != XML_ERROR_NONE)
        return result;
      switch ((parser->m_parsingStatus.parsing)) {
      case XML_SUSPENDED:
        *endPtr = next;
        return XML_ERROR_NONE;
      case XML_FINISHED:
        return XML_ERROR_ABORTED;
      default:
        start = next;
      }
    }
    break;
  case -1:
    if (!(parser->m_parsingStatus.finalBuffer)) {
      *endPtr = start;
      return XML_ERROR_NONE;
    }
    return XML_ERROR_UNCLOSED_TOKEN;
  case -2:
    if (!(parser->m_parsingStatus.finalBuffer)) {
      *endPtr = start;
      return XML_ERROR_NONE;
    }
    return XML_ERROR_PARTIAL_CHAR;
  }
  (parser->m_processor) = externalEntityContentProcessor;
  (parser->m_tagLevel) = 1;
  return externalEntityContentProcessor(parser, start, end, endPtr);
}

static enum XML_Error
externalEntityContentProcessor(XML_Parser parser,
                               const char *start,
                               const char *end,
                               const char **endPtr)
{
  enum XML_Error result = doContent(parser, 1, (parser->m_encoding), start, end,
                                    endPtr, (XML_Bool)!(parser->m_parsingStatus.finalBuffer));
  if (result == XML_ERROR_NONE) {
    if (!storeRawNames(parser))
      return XML_ERROR_NO_MEMORY;
  }
  return result;
}

static enum XML_Error
doContent(XML_Parser parser,
          int startTagLevel,
          const ENCODING *enc,
          const char *s,
          const char *end,
          const char **nextPtr,
          XML_Bool haveMore)
{

  DTD * const dtd = (parser->m_dtd);

  const char **eventPP;
  const char **eventEndPP;
  if (enc == (parser->m_encoding)) {
    eventPP = &(parser->m_eventPtr);
    eventEndPP = &(parser->m_eventEndPtr);
  }
  else {
    eventPP = &((parser->m_openInternalEntities)->internalEventPtr);
    eventEndPP = &((parser->m_openInternalEntities)->internalEventEndPtr);
  }
  *eventPP = s;

  for (;;) {
    const char *next = s;
    int tok = (((enc)->scanners[1])(enc, s, end, &next));
    *eventEndPP = next;
    switch (tok) {
    case -3:
      if (haveMore) {
        *nextPtr = s;
        return XML_ERROR_NONE;
      }
      *eventEndPP = end;
      if ((parser->m_characterDataHandler)) {
        XML_Char c = 0xA;
        (parser->m_characterDataHandler)((parser->m_handlerArg), &c, 1);
      }
      else if ((parser->m_defaultHandler))
        reportDefault(parser, enc, s, end);



      if (startTagLevel == 0)
        return XML_ERROR_NO_ELEMENTS;
      if ((parser->m_tagLevel) != startTagLevel)
        return XML_ERROR_ASYNC_ENTITY;
      *nextPtr = end;
      return XML_ERROR_NONE;
    case -4:
      if (haveMore) {
        *nextPtr = s;
        return XML_ERROR_NONE;
      }
      if (startTagLevel > 0) {
        if ((parser->m_tagLevel) != startTagLevel)
          return XML_ERROR_ASYNC_ENTITY;
        *nextPtr = s;
        return XML_ERROR_NONE;
      }
      return XML_ERROR_NO_ELEMENTS;
    case 0:
      *eventPP = next;
      return XML_ERROR_INVALID_TOKEN;
    case -1:
      if (haveMore) {
        *nextPtr = s;
        return XML_ERROR_NONE;
      }
      return XML_ERROR_UNCLOSED_TOKEN;
    case -2:
      if (haveMore) {
        *nextPtr = s;
        return XML_ERROR_NONE;
      }
      return XML_ERROR_PARTIAL_CHAR;
    case 9:
      {
        const XML_Char *name;
        ENTITY *entity;
        XML_Char ch = (XML_Char) (((enc)->predefinedEntityName)(enc, s + enc->minBytesPerChar, next - enc->minBytesPerChar))

                                                                          ;
        if (ch) {
          if ((parser->m_characterDataHandler))
            (parser->m_characterDataHandler)((parser->m_handlerArg), &ch, 1);
          else if ((parser->m_defaultHandler))
            reportDefault(parser, enc, s, next);
          break;
        }
        name = poolStoreString(&dtd->pool, enc,
                                s + enc->minBytesPerChar,
                                next - enc->minBytesPerChar);
        if (!name)
          return XML_ERROR_NO_MEMORY;
        entity = (ENTITY *)lookup(parser, &dtd->generalEntities, name, 0);
        ((&dtd->pool)->ptr = (&dtd->pool)->start);




        if (!dtd->hasParamEntityRefs || dtd->standalone) {
          if (!entity)
            return XML_ERROR_UNDEFINED_ENTITY;
          else if (!entity->is_internal)
            return XML_ERROR_ENTITY_DECLARED_IN_PE;
        }
        else if (!entity) {
          if ((parser->m_skippedEntityHandler))
            (parser->m_skippedEntityHandler)((parser->m_handlerArg), name, 0);
          else if ((parser->m_defaultHandler))
            reportDefault(parser, enc, s, next);
          break;
        }
        if (entity->open)
          return XML_ERROR_RECURSIVE_ENTITY_REF;
        if (entity->notation)
          return XML_ERROR_BINARY_ENTITY_REF;
        if (entity->textPtr) {
          enum XML_Error result;
          if (!(parser->m_defaultExpandInternalEntities)) {
            if ((parser->m_skippedEntityHandler))
              (parser->m_skippedEntityHandler)((parser->m_handlerArg), entity->name, 0);
            else if ((parser->m_defaultHandler))
              reportDefault(parser, enc, s, next);
            break;
          }
          result = processInternalEntity(parser, entity, ((XML_Bool) 0));
          if (result != XML_ERROR_NONE)
            return result;
        }
        else if ((parser->m_externalEntityRefHandler)) {
          const XML_Char *context;
          entity->open = ((XML_Bool) 1);
          context = getContext(parser);
          entity->open = ((XML_Bool) 0);
          if (!context)
            return XML_ERROR_NO_MEMORY;
          if (!(parser->m_externalEntityRefHandler)((parser->m_externalEntityRefHandlerArg),
                                        context,
                                        entity->base,
                                        entity->systemId,
                                        entity->publicId))
            return XML_ERROR_EXTERNAL_ENTITY_HANDLING;
          ((&(parser->m_tempPool))->ptr = (&(parser->m_tempPool))->start);
        }
        else if ((parser->m_defaultHandler))
          reportDefault(parser, enc, s, next);
        break;
      }
    case 2:

    case 1:
      {
        TAG *tag;
        enum XML_Error result;
        XML_Char *toPtr;
        if ((parser->m_freeTagList)) {
          tag = (parser->m_freeTagList);
          (parser->m_freeTagList) = (parser->m_freeTagList)->parent;
        }
        else {
          tag = (TAG *)(parser->m_mem.malloc_fcn((sizeof(TAG))));
          if (!tag)
            return XML_ERROR_NO_MEMORY;
          tag->buf = (char *)(parser->m_mem.malloc_fcn((32)));
          if (!tag->buf) {
            (parser->m_mem.free_fcn((tag)));
            return XML_ERROR_NO_MEMORY;
          }
          tag->bufEnd = tag->buf + 32;
        }
        tag->bindings = 
# 2463 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                       ((void *)0)
# 2463 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                           ;
        tag->parent = (parser->m_tagStack);
        (parser->m_tagStack) = tag;
        tag->name.localPart = 
# 2466 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                             ((void *)0)
# 2466 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                                 ;
        tag->name.prefix = 
# 2467 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                          ((void *)0)
# 2467 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                              ;
        tag->rawName = s + enc->minBytesPerChar;
        tag->rawNameLength = (((enc)->nameLength)(enc, tag->rawName));
        ++(parser->m_tagLevel);
        {
          const char *rawNameEnd = tag->rawName + tag->rawNameLength;
          const char *fromPtr = tag->rawName;
          toPtr = (XML_Char *)tag->buf;
          for (;;) {
            int bufSize;
            int convLen;
            const enum XML_Convert_Result convert_res = (((enc)->utf8Convert)(enc, &fromPtr, rawNameEnd, (ICHAR **)&toPtr, (ICHAR *)tag->bufEnd - 1))

                                                                  ;
            convLen = (int)(toPtr - (XML_Char *)tag->buf);
            if ((fromPtr >= rawNameEnd) || (convert_res == XML_CONVERT_INPUT_INCOMPLETE)) {
              tag->name.strLen = convLen;
              break;
            }
            bufSize = (int)(tag->bufEnd - tag->buf) << 1;
            {
              char *temp = (char *)(parser->m_mem.realloc_fcn((tag->buf),(bufSize)));
              if (temp == 
# 2489 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                         ((void *)0)
# 2489 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                             )
                return XML_ERROR_NO_MEMORY;
              tag->buf = temp;
              tag->bufEnd = temp + bufSize;
              toPtr = (XML_Char *)temp + convLen;
            }
          }
        }
        tag->name.str = (XML_Char *)tag->buf;
        *toPtr = '\0';
        result = storeAtts(parser, enc, s, &(tag->name), &(tag->bindings));
        if (result)
          return result;
        if ((parser->m_startElementHandler))
          (parser->m_startElementHandler)((parser->m_handlerArg), tag->name.str,
                              (const XML_Char **)(parser->m_atts));
        else if ((parser->m_defaultHandler))
          reportDefault(parser, enc, s, next);
        poolClear(&(parser->m_tempPool));
        break;
      }
    case 4:

    case 3:
      {
        const char *rawName = s + enc->minBytesPerChar;
        enum XML_Error result;
        BINDING *bindings = 
# 2516 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                           ((void *)0)
# 2516 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                               ;
        XML_Bool noElmHandlers = ((XML_Bool) 1);
        TAG_NAME name;
        name.str = poolStoreString(&(parser->m_tempPool), enc, rawName,
                                   rawName + (((enc)->nameLength)(enc, rawName)));
        if (!name.str)
          return XML_ERROR_NO_MEMORY;
        ((&(parser->m_tempPool))->start = (&(parser->m_tempPool))->ptr);
        result = storeAtts(parser, enc, s, &name, &bindings);
        if (result)
          return result;
        ((&(parser->m_tempPool))->start = (&(parser->m_tempPool))->ptr);
        if ((parser->m_startElementHandler)) {
          (parser->m_startElementHandler)((parser->m_handlerArg), name.str, (const XML_Char **)(parser->m_atts));
          noElmHandlers = ((XML_Bool) 0);
        }
        if ((parser->m_endElementHandler)) {
          if ((parser->m_startElementHandler))
            *eventPP = *eventEndPP;
          (parser->m_endElementHandler)((parser->m_handlerArg), name.str);
          noElmHandlers = ((XML_Bool) 0);
        }
        if (noElmHandlers && (parser->m_defaultHandler))
          reportDefault(parser, enc, s, next);
        poolClear(&(parser->m_tempPool));
        while (bindings) {
          BINDING *b = bindings;
          if ((parser->m_endNamespaceDeclHandler))
            (parser->m_endNamespaceDeclHandler)((parser->m_handlerArg), b->prefix->name);
          bindings = bindings->nextTagBinding;
          b->nextTagBinding = (parser->m_freeBindingList);
          (parser->m_freeBindingList) = b;
          b->prefix->binding = b->prevPrefixBinding;
        }
      }
      if ((parser->m_tagLevel) == 0)
        return epilogProcessor(parser, next, end, nextPtr);
      break;
    case 5:
      if ((parser->m_tagLevel) == startTagLevel)
        return XML_ERROR_ASYNC_ENTITY;
      else {
        int len;
        const char *rawName;
        TAG *tag = (parser->m_tagStack);
        (parser->m_tagStack) = tag->parent;
        tag->parent = (parser->m_freeTagList);
        (parser->m_freeTagList) = tag;
        rawName = s + enc->minBytesPerChar*2;
        len = (((enc)->nameLength)(enc, rawName));
        if (len != tag->rawNameLength
            || memcmp(tag->rawName, rawName, len) != 0) {
          *eventPP = rawName;
          return XML_ERROR_TAG_MISMATCH;
        }
        --(parser->m_tagLevel);
        if ((parser->m_endElementHandler)) {
          const XML_Char *localPart;
          const XML_Char *prefix;
          XML_Char *uri;
          localPart = tag->name.localPart;
          if ((parser->m_ns) && localPart) {




            uri = (XML_Char *)tag->name.str + tag->name.uriLen;

            while (*localPart) *uri++ = *localPart++;
            prefix = (XML_Char *)tag->name.prefix;
            if ((parser->m_ns_triplets) && prefix) {
              *uri++ = (parser->m_namespaceSeparator);
              while (*prefix) *uri++ = *prefix++;
             }
            *uri = '\0';
          }
          (parser->m_endElementHandler)((parser->m_handlerArg), tag->name.str);
        }
        else if ((parser->m_defaultHandler))
          reportDefault(parser, enc, s, next);
        while (tag->bindings) {
          BINDING *b = tag->bindings;
          if ((parser->m_endNamespaceDeclHandler))
            (parser->m_endNamespaceDeclHandler)((parser->m_handlerArg), b->prefix->name);
          tag->bindings = tag->bindings->nextTagBinding;
          b->nextTagBinding = (parser->m_freeBindingList);
          (parser->m_freeBindingList) = b;
          b->prefix->binding = b->prevPrefixBinding;
        }
        if ((parser->m_tagLevel) == 0)
          return epilogProcessor(parser, next, end, nextPtr);
      }
      break;
    case 10:
      {
        int n = (((enc)->charRefNumber)(enc, s));
        if (n < 0)
          return XML_ERROR_BAD_CHAR_REF;
        if ((parser->m_characterDataHandler)) {
          XML_Char buf[4];
          (parser->m_characterDataHandler)((parser->m_handlerArg), buf, XmlUtf8Encode(n, (ICHAR *)buf));
        }
        else if ((parser->m_defaultHandler))
          reportDefault(parser, enc, s, next);
      }
      break;
    case 12:
      return XML_ERROR_MISPLACED_XML_PI;
    case 7:
      if ((parser->m_characterDataHandler)) {
        XML_Char c = 0xA;
        (parser->m_characterDataHandler)((parser->m_handlerArg), &c, 1);
      }
      else if ((parser->m_defaultHandler))
        reportDefault(parser, enc, s, next);
      break;
    case 8:
      {
        enum XML_Error result;
        if ((parser->m_startCdataSectionHandler))
          (parser->m_startCdataSectionHandler)((parser->m_handlerArg));
# 2653 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
        else if ((parser->m_defaultHandler))
          reportDefault(parser, enc, s, next);
        result = doCdataSection(parser, enc, &next, end, nextPtr, haveMore);
        if (result != XML_ERROR_NONE)
          return result;
        else if (!next) {
          (parser->m_processor) = cdataSectionProcessor;
          return result;
        }
      }
      break;
    case -5:
      if (haveMore) {
        *nextPtr = s;
        return XML_ERROR_NONE;
      }
      if ((parser->m_characterDataHandler)) {
        if ((!(enc)->isUtf8)) {
          ICHAR *dataPtr = (ICHAR *)(parser->m_dataBuf);
          (((enc)->utf8Convert)(enc, &s, end, &dataPtr, (ICHAR *)(parser->m_dataBufEnd)));
          (parser->m_characterDataHandler)((parser->m_handlerArg), (parser->m_dataBuf),
                               (int)(dataPtr - (ICHAR *)(parser->m_dataBuf)));
        }
        else
          (parser->m_characterDataHandler)((parser->m_handlerArg),
                               (XML_Char *)s,
                               (int)((XML_Char *)end - (XML_Char *)s));
      }
      else if ((parser->m_defaultHandler))
        reportDefault(parser, enc, s, end);



      if (startTagLevel == 0) {
        *eventPP = end;
        return XML_ERROR_NO_ELEMENTS;
      }
      if ((parser->m_tagLevel) != startTagLevel) {
        *eventPP = end;
        return XML_ERROR_ASYNC_ENTITY;
      }
      *nextPtr = end;
      return XML_ERROR_NONE;
    case 6:
      {
        XML_CharacterDataHandler charDataHandler = (parser->m_characterDataHandler);
        if (charDataHandler) {
          if ((!(enc)->isUtf8)) {
            for (;;) {
              ICHAR *dataPtr = (ICHAR *)(parser->m_dataBuf);
              const enum XML_Convert_Result convert_res = (((enc)->utf8Convert)(enc, &s, next, &dataPtr, (ICHAR *)(parser->m_dataBufEnd)));
              *eventEndPP = s;
              charDataHandler((parser->m_handlerArg), (parser->m_dataBuf),
                              (int)(dataPtr - (ICHAR *)(parser->m_dataBuf)));
              if ((convert_res == XML_CONVERT_COMPLETED) || (convert_res == XML_CONVERT_INPUT_INCOMPLETE))
                break;
              *eventPP = s;
            }
          }
          else
            charDataHandler((parser->m_handlerArg),
                            (XML_Char *)s,
                            (int)((XML_Char *)next - (XML_Char *)s));
        }
        else if ((parser->m_defaultHandler))
          reportDefault(parser, enc, s, next);
      }
      break;
    case 11:
      if (!reportProcessingInstruction(parser, enc, s, next))
        return XML_ERROR_NO_MEMORY;
      break;
    case 13:
      if (!reportComment(parser, enc, s, next))
        return XML_ERROR_NO_MEMORY;
      break;
    default:
      if ((parser->m_defaultHandler))
        reportDefault(parser, enc, s, next);
      break;
    }
    *eventPP = s = next;
    switch ((parser->m_parsingStatus.parsing)) {
    case XML_SUSPENDED:
      *nextPtr = next;
      return XML_ERROR_NONE;
    case XML_FINISHED:
      return XML_ERROR_ABORTED;
    default: ;
    }
  }

}
# 2757 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
static enum XML_Error
storeAtts(XML_Parser parser, const ENCODING *enc,
          const char *attStr, TAG_NAME *tagNamePtr,
          BINDING **bindingsPtr)
{
  DTD * const dtd = (parser->m_dtd);
  ELEMENT_TYPE *elementType;
  int nDefaultAtts;
  const XML_Char **appAtts;
  int attIndex = 0;
  int prefixLen;
  int i;
  int n;
  XML_Char *uri;
  int nPrefixes = 0;
  BINDING *binding;
  const XML_Char *localPart;


  elementType = (ELEMENT_TYPE *)lookup(parser, &dtd->elementTypes, tagNamePtr->str,0);
  if (!elementType) {
    const XML_Char *name = poolCopyString(&dtd->pool, tagNamePtr->str);
    if (!name)
      return XML_ERROR_NO_MEMORY;
    elementType = (ELEMENT_TYPE *)lookup(parser, &dtd->elementTypes, name,
                                         sizeof(ELEMENT_TYPE));
    if (!elementType)
      return XML_ERROR_NO_MEMORY;
    if ((parser->m_ns) && !setElementTypePrefix(parser, elementType))
      return XML_ERROR_NO_MEMORY;
  }
  nDefaultAtts = elementType->nDefaultAtts;


  n = (((enc)->getAtts)(enc, attStr, (parser->m_attsSize), (parser->m_atts)));
  if (n + nDefaultAtts > (parser->m_attsSize)) {
    int oldAttsSize = (parser->m_attsSize);
    ATTRIBUTE *temp;



    (parser->m_attsSize) = n + nDefaultAtts + 16;
    temp = (ATTRIBUTE *)(parser->m_mem.realloc_fcn(((void *)(parser->m_atts)),((parser->m_attsSize) * sizeof(ATTRIBUTE))));
    if (temp == 
# 2800 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
               ((void *)0)
# 2800 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                   )
      return XML_ERROR_NO_MEMORY;
    (parser->m_atts) = temp;






    if (n > oldAttsSize)
      (((enc)->getAtts)(enc, attStr, n, (parser->m_atts)));
  }

  appAtts = (const XML_Char **)(parser->m_atts);
  for (i = 0; i < n; i++) {
    ATTRIBUTE *currAtt = &(parser->m_atts)[i];




    ATTRIBUTE_ID *attId = getAttributeId(parser, enc, currAtt->name,
                                         currAtt->name
                                         + (((enc)->nameLength)(enc, currAtt->name)));
    if (!attId)
      return XML_ERROR_NO_MEMORY;
# 2837 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
    if ((attId->name)[-1]) {
      if (enc == (parser->m_encoding))
        (parser->m_eventPtr) = (parser->m_atts)[i].name;
      return XML_ERROR_DUPLICATE_ATTRIBUTE;
    }
    (attId->name)[-1] = 1;
    appAtts[attIndex++] = attId->name;
    if (!(parser->m_atts)[i].normalized) {
      enum XML_Error result;
      XML_Bool isCdata = ((XML_Bool) 1);


      if (attId->maybeTokenized) {
        int j;
        for (j = 0; j < nDefaultAtts; j++) {
          if (attId == elementType->defaultAtts[j].id) {
            isCdata = elementType->defaultAtts[j].isCdata;
            break;
          }
        }
      }


      result = storeAttributeValue(parser, enc, isCdata,
                                   (parser->m_atts)[i].valuePtr, (parser->m_atts)[i].valueEnd,
                                   &(parser->m_tempPool));
      if (result)
        return result;
      appAtts[attIndex] = ((&(parser->m_tempPool))->start);
      ((&(parser->m_tempPool))->start = (&(parser->m_tempPool))->ptr);
    }
    else {

      appAtts[attIndex] = poolStoreString(&(parser->m_tempPool), enc, (parser->m_atts)[i].valuePtr,
                                          (parser->m_atts)[i].valueEnd);
      if (appAtts[attIndex] == 0)
        return XML_ERROR_NO_MEMORY;
      ((&(parser->m_tempPool))->start = (&(parser->m_tempPool))->ptr);
    }

    if (attId->prefix) {
      if (attId->xmlns) {

        enum XML_Error result = addBinding(parser, attId->prefix, attId,
                                           appAtts[attIndex], bindingsPtr);
        if (result)
          return result;
        --attIndex;
      }
      else {

        attIndex++;
        nPrefixes++;
        (attId->name)[-1] = 2;
      }
    }
    else
      attIndex++;
  }


  (parser->m_nSpecifiedAtts) = attIndex;
  if (elementType->idAtt && (elementType->idAtt->name)[-1]) {
    for (i = 0; i < attIndex; i += 2)
      if (appAtts[i] == elementType->idAtt->name) {
        (parser->m_idAttIndex) = i;
        break;
      }
  }
  else
    (parser->m_idAttIndex) = -1;


  for (i = 0; i < nDefaultAtts; i++) {
    const DEFAULT_ATTRIBUTE *da = elementType->defaultAtts + i;
    if (!(da->id->name)[-1] && da->value) {
      if (da->id->prefix) {
        if (da->id->xmlns) {
          enum XML_Error result = addBinding(parser, da->id->prefix, da->id,
                                             da->value, bindingsPtr);
          if (result)
            return result;
        }
        else {
          (da->id->name)[-1] = 2;
          nPrefixes++;
          appAtts[attIndex++] = da->id->name;
          appAtts[attIndex++] = da->value;
        }
      }
      else {
        (da->id->name)[-1] = 1;
        appAtts[attIndex++] = da->id->name;
        appAtts[attIndex++] = da->value;
      }
    }
  }
  appAtts[attIndex] = 0;



  i = 0;
  if (nPrefixes) {
    int j;
    unsigned long version = (parser->m_nsAttsVersion);
    int nsAttsSize = (int)1 << (parser->m_nsAttsPower);

    if ((nPrefixes << 1) >> (parser->m_nsAttsPower)) {
      NS_ATT *temp;

      while (nPrefixes >> (parser->m_nsAttsPower)++);
      if ((parser->m_nsAttsPower) < 3)
        (parser->m_nsAttsPower) = 3;
      nsAttsSize = (int)1 << (parser->m_nsAttsPower);
      temp = (NS_ATT *)(parser->m_mem.realloc_fcn(((parser->m_nsAtts)),(nsAttsSize * sizeof(NS_ATT))));
      if (!temp)
        return XML_ERROR_NO_MEMORY;
      (parser->m_nsAtts) = temp;
      version = 0;
    }

    if (!version) {
      version = 0xFFFFFFFF;
      for (j = nsAttsSize; j != 0; )
        (parser->m_nsAtts)[--j].version = version;
    }
    (parser->m_nsAttsVersion) = --version;


    for (; i < attIndex; i += 2) {
      const XML_Char *s = appAtts[i];
      if (s[-1] == 2) {
        ATTRIBUTE_ID *id;
        const BINDING *b;
        unsigned long uriHash = (parser->m_hash_secret_salt);
        ((XML_Char *)s)[-1] = 0;
        id = (ATTRIBUTE_ID *)lookup(parser, &dtd->attributeIds, s, 0);
        if (!id || !id->prefix)
          return XML_ERROR_NO_MEMORY;
        b = id->prefix->binding;
        if (!b)
          return XML_ERROR_UNBOUND_PREFIX;


        for (j = 0; j < b->uriLen; j++) {
          const XML_Char c = b->uri[j];
          if (!(((&(parser->m_tempPool))->ptr == (&(parser->m_tempPool))->end && !poolGrow(&(parser->m_tempPool))) ? 0 : ((*((&(parser->m_tempPool))->ptr)++ = c), 1)))
            return XML_ERROR_NO_MEMORY;
          uriHash = (((uriHash) * 0xF4243) ^ (unsigned char)(c));
        }
        while (*s++ != 0x3A)
          ;
        do {
          const XML_Char c = *s;
          if (!(((&(parser->m_tempPool))->ptr == (&(parser->m_tempPool))->end && !poolGrow(&(parser->m_tempPool))) ? 0 : ((*((&(parser->m_tempPool))->ptr)++ = *s), 1)))
            return XML_ERROR_NO_MEMORY;
          uriHash = (((uriHash) * 0xF4243) ^ (unsigned char)(c));
        } while (*s++);

        {


          unsigned char step = 0;
          unsigned long mask = nsAttsSize - 1;
          j = uriHash & mask;
          while ((parser->m_nsAtts)[j].version == version) {

            if (uriHash == (parser->m_nsAtts)[j].hash) {
              const XML_Char *s1 = ((&(parser->m_tempPool))->start);
              const XML_Char *s2 = (parser->m_nsAtts)[j].uriName;

              for (; *s1 == *s2 && *s1 != 0; s1++, s2++);
              if (*s1 == 0)
                return XML_ERROR_DUPLICATE_ATTRIBUTE;
            }
            if (!step)
              step = ((unsigned char)((((((uriHash) & ~(mask)) >> (((parser->m_nsAttsPower)) - 1)) & ((mask) >> 2))) | 1));
            j < step ? (j += nsAttsSize - step) : (j -= step);
          }
        }

        if ((parser->m_ns_triplets)) {
          (parser->m_tempPool).ptr[-1] = (parser->m_namespaceSeparator);
          s = b->prefix->name;
          do {
            if (!(((&(parser->m_tempPool))->ptr == (&(parser->m_tempPool))->end && !poolGrow(&(parser->m_tempPool))) ? 0 : ((*((&(parser->m_tempPool))->ptr)++ = *s), 1)))
              return XML_ERROR_NO_MEMORY;
          } while (*s++);
        }


        s = ((&(parser->m_tempPool))->start);
        ((&(parser->m_tempPool))->start = (&(parser->m_tempPool))->ptr);
        appAtts[i] = s;


        (parser->m_nsAtts)[j].version = version;
        (parser->m_nsAtts)[j].hash = uriHash;
        (parser->m_nsAtts)[j].uriName = s;

        if (!--nPrefixes) {
          i += 2;
          break;
        }
      }
      else
        ((XML_Char *)s)[-1] = 0;
    }
  }

  for (; i < attIndex; i += 2)
    ((XML_Char *)(appAtts[i]))[-1] = 0;
  for (binding = *bindingsPtr; binding; binding = binding->nextTagBinding)
    binding->attId->name[-1] = 0;

  if (!(parser->m_ns))
    return XML_ERROR_NONE;


  if (elementType->prefix) {
    binding = elementType->prefix->binding;
    if (!binding)
      return XML_ERROR_UNBOUND_PREFIX;
    localPart = tagNamePtr->str;
    while (*localPart++ != 0x3A)
      ;
  }
  else if (dtd->defaultPrefix.binding) {
    binding = dtd->defaultPrefix.binding;
    localPart = tagNamePtr->str;
  }
  else
    return XML_ERROR_NONE;
  prefixLen = 0;
  if ((parser->m_ns_triplets) && binding->prefix->name) {
    for (; binding->prefix->name[prefixLen++];)
      ;
  }
  tagNamePtr->localPart = localPart;
  tagNamePtr->uriLen = binding->uriLen;
  tagNamePtr->prefix = binding->prefix->name;
  tagNamePtr->prefixLen = prefixLen;
  for (i = 0; localPart[i++];)
    ;
  n = i + binding->uriLen + prefixLen;
  if (n > binding->uriAlloc) {
    TAG *p;
    uri = (XML_Char *)(parser->m_mem.malloc_fcn(((n + 24) * sizeof(XML_Char))));
    if (!uri)
      return XML_ERROR_NO_MEMORY;
    binding->uriAlloc = n + 24;
    memcpy(uri, binding->uri, binding->uriLen * sizeof(XML_Char));
    for (p = (parser->m_tagStack); p; p = p->parent)
      if (p->name.str == binding->uri)
        p->name.str = uri;
    (parser->m_mem.free_fcn((binding->uri)));
    binding->uri = uri;
  }

  uri = binding->uri + binding->uriLen;
  memcpy(uri, localPart, i * sizeof(XML_Char));

  if (prefixLen) {
    uri += i - 1;
    *uri = (parser->m_namespaceSeparator);
    memcpy(uri + 1, binding->prefix->name, prefixLen * sizeof(XML_Char));
  }
  tagNamePtr->str = binding->uri;
  return XML_ERROR_NONE;
}




static enum XML_Error
addBinding(XML_Parser parser, PREFIX *prefix, const ATTRIBUTE_ID *attId,
           const XML_Char *uri, BINDING **bindingsPtr)
{
  static const XML_Char xmlNamespace[] = {
    0x68, 0x74, 0x74, 0x70, 0x3A, 0x2F, 0x2F,
    0x77, 0x77, 0x77, 0x2E, 0x77, 0x33, 0x2E,
    0x6F, 0x72, 0x67, 0x2F, 0x58, 0x4D, 0x4C,
    0x2F, 0x31, 0x39, 0x39, 0x38, 0x2F,
    0x6E, 0x61, 0x6D, 0x65, 0x73, 0x70, 0x61, 0x63,
    0x65, '\0'
  };
  static const int xmlLen =
    (int)sizeof(xmlNamespace)/sizeof(XML_Char) - 1;
  static const XML_Char xmlnsNamespace[] = {
    0x68, 0x74, 0x74, 0x70, 0x3A, 0x2F, 0x2F,
    0x77, 0x77, 0x77, 0x2E, 0x77, 0x33, 0x2E,
    0x6F, 0x72, 0x67, 0x2F, 0x32, 0x30, 0x30,
    0x30, 0x2F, 0x78, 0x6D, 0x6C, 0x6E, 0x73,
    0x2F, '\0'
  };
  static const int xmlnsLen =
    (int)sizeof(xmlnsNamespace)/sizeof(XML_Char) - 1;

  XML_Bool mustBeXML = ((XML_Bool) 0);
  XML_Bool isXML = ((XML_Bool) 1);
  XML_Bool isXMLNS = ((XML_Bool) 1);

  BINDING *b;
  int len;


  if (*uri == '\0' && prefix->name)
    return XML_ERROR_UNDECLARING_PREFIX;

  if (prefix->name
      && prefix->name[0] == 0x78
      && prefix->name[1] == 0x6D
      && prefix->name[2] == 0x6C) {


    if (prefix->name[3] == 0x6E
        && prefix->name[4] == 0x73
        && prefix->name[5] == '\0')
      return XML_ERROR_RESERVED_PREFIX_XMLNS;

    if (prefix->name[3] == '\0')
      mustBeXML = ((XML_Bool) 1);
  }

  for (len = 0; uri[len]; len++) {
    if (isXML && (len > xmlLen || uri[len] != xmlNamespace[len]))
      isXML = ((XML_Bool) 0);

    if (!mustBeXML && isXMLNS
        && (len > xmlnsLen || uri[len] != xmlnsNamespace[len]))
      isXMLNS = ((XML_Bool) 0);
  }
  isXML = isXML && len == xmlLen;
  isXMLNS = isXMLNS && len == xmlnsLen;

  if (mustBeXML != isXML)
    return mustBeXML ? XML_ERROR_RESERVED_PREFIX_XML
                     : XML_ERROR_RESERVED_NAMESPACE_URI;

  if (isXMLNS)
    return XML_ERROR_RESERVED_NAMESPACE_URI;

  if ((parser->m_namespaceSeparator))
    len++;
  if ((parser->m_freeBindingList)) {
    b = (parser->m_freeBindingList);
    if (len > b->uriAlloc) {
      XML_Char *temp = (XML_Char *)(parser->m_mem.realloc_fcn((b->uri),(sizeof(XML_Char) * (len + 24))))
                                                                  ;
      if (temp == 
# 3186 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                 ((void *)0)
# 3186 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                     )
        return XML_ERROR_NO_MEMORY;
      b->uri = temp;
      b->uriAlloc = len + 24;
    }
    (parser->m_freeBindingList) = b->nextTagBinding;
  }
  else {
    b = (BINDING *)(parser->m_mem.malloc_fcn((sizeof(BINDING))));
    if (!b)
      return XML_ERROR_NO_MEMORY;
    b->uri = (XML_Char *)(parser->m_mem.malloc_fcn((sizeof(XML_Char) * (len + 24))));
    if (!b->uri) {
      (parser->m_mem.free_fcn((b)));
      return XML_ERROR_NO_MEMORY;
    }
    b->uriAlloc = len + 24;
  }
  b->uriLen = len;
  memcpy(b->uri, uri, len * sizeof(XML_Char));
  if ((parser->m_namespaceSeparator))
    b->uri[len - 1] = (parser->m_namespaceSeparator);
  b->prefix = prefix;
  b->attId = attId;
  b->prevPrefixBinding = prefix->binding;

  if (*uri == '\0' && prefix == &(parser->m_dtd)->defaultPrefix)
    prefix->binding = 
# 3213 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                     ((void *)0)
# 3213 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                         ;
  else
    prefix->binding = b;
  b->nextTagBinding = *bindingsPtr;
  *bindingsPtr = b;

  if (attId && (parser->m_startNamespaceDeclHandler))
    (parser->m_startNamespaceDeclHandler)((parser->m_handlerArg), prefix->name,
                              prefix->binding ? uri : 0);
  return XML_ERROR_NONE;
}




static enum XML_Error
cdataSectionProcessor(XML_Parser parser,
                      const char *start,
                      const char *end,
                      const char **endPtr)
{
  enum XML_Error result = doCdataSection(parser, (parser->m_encoding), &start, end,
                                         endPtr, (XML_Bool)!(parser->m_parsingStatus.finalBuffer));
  if (result != XML_ERROR_NONE)
    return result;
  if (start) {
    if ((parser->m_parentParser)) {
      (parser->m_processor) = externalEntityContentProcessor;
      return externalEntityContentProcessor(parser, start, end, endPtr);
    }
    else {
      (parser->m_processor) = contentProcessor;
      return contentProcessor(parser, start, end, endPtr);
    }
  }
  return result;
}




static enum XML_Error
doCdataSection(XML_Parser parser,
               const ENCODING *enc,
               const char **startPtr,
               const char *end,
               const char **nextPtr,
               XML_Bool haveMore)
{
  const char *s = *startPtr;
  const char **eventPP;
  const char **eventEndPP;
  if (enc == (parser->m_encoding)) {
    eventPP = &(parser->m_eventPtr);
    *eventPP = s;
    eventEndPP = &(parser->m_eventEndPtr);
  }
  else {
    eventPP = &((parser->m_openInternalEntities)->internalEventPtr);
    eventEndPP = &((parser->m_openInternalEntities)->internalEventEndPtr);
  }
  *eventPP = s;
  *startPtr = 
# 3275 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
             ((void *)0)
# 3275 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                 ;

  for (;;) {
    const char *next;
    int tok = (((enc)->scanners[2])(enc, s, end, &next));
    *eventEndPP = next;
    switch (tok) {
    case 40:
      if ((parser->m_endCdataSectionHandler))
        (parser->m_endCdataSectionHandler)((parser->m_handlerArg));





      else if ((parser->m_defaultHandler))
        reportDefault(parser, enc, s, next);
      *startPtr = next;
      *nextPtr = next;
      if ((parser->m_parsingStatus.parsing) == XML_FINISHED)
        return XML_ERROR_ABORTED;
      else
        return XML_ERROR_NONE;
    case 7:
      if ((parser->m_characterDataHandler)) {
        XML_Char c = 0xA;
        (parser->m_characterDataHandler)((parser->m_handlerArg), &c, 1);
      }
      else if ((parser->m_defaultHandler))
        reportDefault(parser, enc, s, next);
      break;
    case 6:
      {
        XML_CharacterDataHandler charDataHandler = (parser->m_characterDataHandler);
        if (charDataHandler) {
          if ((!(enc)->isUtf8)) {
            for (;;) {
              ICHAR *dataPtr = (ICHAR *)(parser->m_dataBuf);
              const enum XML_Convert_Result convert_res = (((enc)->utf8Convert)(enc, &s, next, &dataPtr, (ICHAR *)(parser->m_dataBufEnd)));
              *eventEndPP = next;
              charDataHandler((parser->m_handlerArg), (parser->m_dataBuf),
                              (int)(dataPtr - (ICHAR *)(parser->m_dataBuf)));
              if ((convert_res == XML_CONVERT_COMPLETED) || (convert_res == XML_CONVERT_INPUT_INCOMPLETE))
                break;
              *eventPP = s;
            }
          }
          else
            charDataHandler((parser->m_handlerArg),
                            (XML_Char *)s,
                            (int)((XML_Char *)next - (XML_Char *)s));
        }
        else if ((parser->m_defaultHandler))
          reportDefault(parser, enc, s, next);
      }
      break;
    case 0:
      *eventPP = next;
      return XML_ERROR_INVALID_TOKEN;
    case -2:
      if (haveMore) {
        *nextPtr = s;
        return XML_ERROR_NONE;
      }
      return XML_ERROR_PARTIAL_CHAR;
    case -1:
    case -4:
      if (haveMore) {
        *nextPtr = s;
        return XML_ERROR_NONE;
      }
      return XML_ERROR_UNCLOSED_CDATA_SECTION;
    default:
      *eventPP = next;
      return XML_ERROR_UNEXPECTED_STATE;
    }

    *eventPP = s = next;
    switch ((parser->m_parsingStatus.parsing)) {
    case XML_SUSPENDED:
      *nextPtr = next;
      return XML_ERROR_NONE;
    case XML_FINISHED:
      return XML_ERROR_ABORTED;
    default: ;
    }
  }

}






static enum XML_Error
ignoreSectionProcessor(XML_Parser parser,
                       const char *start,
                       const char *end,
                       const char **endPtr)
{
  enum XML_Error result = doIgnoreSection(parser, (parser->m_encoding), &start, end,
                                          endPtr, (XML_Bool)!(parser->m_parsingStatus.finalBuffer));
  if (result != XML_ERROR_NONE)
    return result;
  if (start) {
    (parser->m_processor) = prologProcessor;
    return prologProcessor(parser, start, end, endPtr);
  }
  return result;
}




static enum XML_Error
doIgnoreSection(XML_Parser parser,
                const ENCODING *enc,
                const char **startPtr,
                const char *end,
                const char **nextPtr,
                XML_Bool haveMore)
{
  const char *next;
  int tok;
  const char *s = *startPtr;
  const char **eventPP;
  const char **eventEndPP;
  if (enc == (parser->m_encoding)) {
    eventPP = &(parser->m_eventPtr);
    *eventPP = s;
    eventEndPP = &(parser->m_eventEndPtr);
  }
  else {
    eventPP = &((parser->m_openInternalEntities)->internalEventPtr);
    eventEndPP = &((parser->m_openInternalEntities)->internalEventEndPtr);
  }
  *eventPP = s;
  *startPtr = 
# 3413 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
             ((void *)0)
# 3413 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                 ;
  tok = (((enc)->scanners[3])(enc, s, end, &next));
  *eventEndPP = next;
  switch (tok) {
  case 42:
    if ((parser->m_defaultHandler))
      reportDefault(parser, enc, s, next);
    *startPtr = next;
    *nextPtr = next;
    if ((parser->m_parsingStatus.parsing) == XML_FINISHED)
      return XML_ERROR_ABORTED;
    else
      return XML_ERROR_NONE;
  case 0:
    *eventPP = next;
    return XML_ERROR_INVALID_TOKEN;
  case -2:
    if (haveMore) {
      *nextPtr = s;
      return XML_ERROR_NONE;
    }
    return XML_ERROR_PARTIAL_CHAR;
  case -1:
  case -4:
    if (haveMore) {
      *nextPtr = s;
      return XML_ERROR_NONE;
    }
    return XML_ERROR_SYNTAX;
  default:
    *eventPP = next;
    return XML_ERROR_UNEXPECTED_STATE;
  }

}



static enum XML_Error
initializeEncoding(XML_Parser parser)
{
  const char *s;
# 3473 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
  s = (parser->m_protocolEncodingName);

  if (((parser->m_ns) ? XmlInitEncodingNS : XmlInitEncoding)(&(parser->m_initEncoding), &(parser->m_encoding), s))
    return XML_ERROR_NONE;
  return handleUnknownEncoding(parser, (parser->m_protocolEncodingName));
}

static enum XML_Error
processXmlDecl(XML_Parser parser, int isGeneralTextEntity,
               const char *s, const char *next)
{
  const char *encodingName = 
# 3484 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                            ((void *)0)
# 3484 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                                ;
  const XML_Char *storedEncName = 
# 3485 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                                 ((void *)0)
# 3485 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                                     ;
  const ENCODING *newEncoding = 
# 3486 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                               ((void *)0)
# 3486 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                                   ;
  const char *version = 
# 3487 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                       ((void *)0)
# 3487 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                           ;
  const char *versionend;
  const XML_Char *storedversion = 
# 3489 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                                 ((void *)0)
# 3489 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                                     ;
  int standalone = -1;
  if (!((parser->m_ns)
        ? XmlParseXmlDeclNS
        : XmlParseXmlDecl)(isGeneralTextEntity,
                           (parser->m_encoding),
                           s,
                           next,
                           &(parser->m_eventPtr),
                           &version,
                           &versionend,
                           &encodingName,
                           &newEncoding,
                           &standalone)) {
    if (isGeneralTextEntity)
      return XML_ERROR_TEXT_DECL;
    else
      return XML_ERROR_XML_DECL;
  }
  if (!isGeneralTextEntity && standalone == 1) {
    (parser->m_dtd)->standalone = ((XML_Bool) 1);

    if ((parser->m_paramEntityParsing) == XML_PARAM_ENTITY_PARSING_UNLESS_STANDALONE)
      (parser->m_paramEntityParsing) = XML_PARAM_ENTITY_PARSING_NEVER;

  }
  if ((parser->m_xmlDeclHandler)) {
    if (encodingName != 
# 3516 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                       ((void *)0)
# 3516 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                           ) {
      storedEncName = poolStoreString(&(parser->m_temp2Pool),
                                      (parser->m_encoding),
                                      encodingName,
                                      encodingName
                                      + ((((parser->m_encoding))->nameLength)((parser->m_encoding), encodingName)));
      if (!storedEncName)
              return XML_ERROR_NO_MEMORY;
      ((&(parser->m_temp2Pool))->start = (&(parser->m_temp2Pool))->ptr);
    }
    if (version) {
      storedversion = poolStoreString(&(parser->m_temp2Pool),
                                      (parser->m_encoding),
                                      version,
                                      versionend - (parser->m_encoding)->minBytesPerChar);
      if (!storedversion)
        return XML_ERROR_NO_MEMORY;
    }
    (parser->m_xmlDeclHandler)((parser->m_handlerArg), storedversion, storedEncName, standalone);
  }
  else if ((parser->m_defaultHandler))
    reportDefault(parser, (parser->m_encoding), s, next);
  if ((parser->m_protocolEncodingName) == 
# 3538 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                             ((void *)0)
# 3538 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                                 ) {
    if (newEncoding) {
      if (newEncoding->minBytesPerChar != (parser->m_encoding)->minBytesPerChar) {
        (parser->m_eventPtr) = encodingName;
        return XML_ERROR_INCORRECT_ENCODING;
      }
      (parser->m_encoding) = newEncoding;
    }
    else if (encodingName) {
      enum XML_Error result;
      if (!storedEncName) {
        storedEncName = poolStoreString(
          &(parser->m_temp2Pool), (parser->m_encoding), encodingName,
          encodingName + ((((parser->m_encoding))->nameLength)((parser->m_encoding), encodingName)));
        if (!storedEncName)
          return XML_ERROR_NO_MEMORY;
      }
      result = handleUnknownEncoding(parser, storedEncName);
      poolClear(&(parser->m_temp2Pool));
      if (result == XML_ERROR_UNKNOWN_ENCODING)
        (parser->m_eventPtr) = encodingName;
      return result;
    }
  }

  if (storedEncName || storedversion)
    poolClear(&(parser->m_temp2Pool));

  return XML_ERROR_NONE;
}

static enum XML_Error
handleUnknownEncoding(XML_Parser parser, const XML_Char *encodingName)
{
  if ((parser->m_unknownEncodingHandler)) {
    XML_Encoding info;
    int i;
    for (i = 0; i < 256; i++)
      info.map[i] = -1;
    info.convert = 
# 3577 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                  ((void *)0)
# 3577 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                      ;
    info.data = 
# 3578 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
               ((void *)0)
# 3578 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                   ;
    info.release = 
# 3579 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                  ((void *)0)
# 3579 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                      ;
    if ((parser->m_unknownEncodingHandler)((parser->m_unknownEncodingHandlerData), encodingName,
                               &info)) {
      ENCODING *enc;
      (parser->m_unknownEncodingMem) = (parser->m_mem.malloc_fcn((XmlSizeOfUnknownEncoding())));
      if (!(parser->m_unknownEncodingMem)) {
        if (info.release)
          info.release(info.data);
        return XML_ERROR_NO_MEMORY;
      }
      enc = ((parser->m_ns)
             ? XmlInitUnknownEncodingNS
             : XmlInitUnknownEncoding)((parser->m_unknownEncodingMem),
                                       info.map,
                                       info.convert,
                                       info.data);
      if (enc) {
        (parser->m_unknownEncodingData) = info.data;
        (parser->m_unknownEncodingRelease) = info.release;
        (parser->m_encoding) = enc;
        return XML_ERROR_NONE;
      }
    }
    if (info.release != 
# 3602 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                       ((void *)0)
# 3602 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                           )
      info.release(info.data);
  }
  return XML_ERROR_UNKNOWN_ENCODING;
}

static enum XML_Error
prologInitProcessor(XML_Parser parser,
                    const char *s,
                    const char *end,
                    const char **nextPtr)
{
  enum XML_Error result = initializeEncoding(parser);
  if (result != XML_ERROR_NONE)
    return result;
  (parser->m_processor) = prologProcessor;
  return prologProcessor(parser, s, end, nextPtr);
}



static enum XML_Error
externalParEntInitProcessor(XML_Parser parser,
                            const char *s,
                            const char *end,
                            const char **nextPtr)
{
  enum XML_Error result = initializeEncoding(parser);
  if (result != XML_ERROR_NONE)
    return result;



  (parser->m_dtd)->paramEntityRead = ((XML_Bool) 1);

  if ((parser->m_prologState).inEntityValue) {
    (parser->m_processor) = entityValueInitProcessor;
    return entityValueInitProcessor(parser, s, end, nextPtr);
  }
  else {
    (parser->m_processor) = externalParEntProcessor;
    return externalParEntProcessor(parser, s, end, nextPtr);
  }
}

static enum XML_Error
entityValueInitProcessor(XML_Parser parser,
                         const char *s,
                         const char *end,
                         const char **nextPtr)
{
  int tok;
  const char *start = s;
  const char *next = start;
  (parser->m_eventPtr) = start;

  for (;;) {
    tok = ((((parser->m_encoding))->scanners[0])((parser->m_encoding), start, end, &next));
    (parser->m_eventEndPtr) = next;
    if (tok <= 0) {
      if (!(parser->m_parsingStatus.finalBuffer) && tok != 0) {
        *nextPtr = s;
        return XML_ERROR_NONE;
      }
      switch (tok) {
      case 0:
        return XML_ERROR_INVALID_TOKEN;
      case -1:
        return XML_ERROR_UNCLOSED_TOKEN;
      case -2:
        return XML_ERROR_PARTIAL_CHAR;
      case -4:
      default:
        break;
      }

      return storeEntityValue(parser, (parser->m_encoding), s, end);
    }
    else if (tok == 12) {
      enum XML_Error result;
      result = processXmlDecl(parser, 0, start, next);
      if (result != XML_ERROR_NONE)
        return result;
      switch ((parser->m_parsingStatus.parsing)) {
      case XML_SUSPENDED:
        *nextPtr = next;
        return XML_ERROR_NONE;
      case XML_FINISHED:
        return XML_ERROR_ABORTED;
      default:
        *nextPtr = next;
      }

      (parser->m_processor) = entityValueProcessor;
      return entityValueProcessor(parser, next, end, nextPtr);
    }







    else if (tok == 14 && next == end && !(parser->m_parsingStatus.finalBuffer)) {
      *nextPtr = next;
      return XML_ERROR_NONE;
    }
    start = next;
    (parser->m_eventPtr) = start;
  }
}

static enum XML_Error
externalParEntProcessor(XML_Parser parser,
                        const char *s,
                        const char *end,
                        const char **nextPtr)
{
  const char *next = s;
  int tok;

  tok = ((((parser->m_encoding))->scanners[0])((parser->m_encoding), s, end, &next));
  if (tok <= 0) {
    if (!(parser->m_parsingStatus.finalBuffer) && tok != 0) {
      *nextPtr = s;
      return XML_ERROR_NONE;
    }
    switch (tok) {
    case 0:
      return XML_ERROR_INVALID_TOKEN;
    case -1:
      return XML_ERROR_UNCLOSED_TOKEN;
    case -2:
      return XML_ERROR_PARTIAL_CHAR;
    case -4:
    default:
      break;
    }
  }




  else if (tok == 14) {
    s = next;
    tok = ((((parser->m_encoding))->scanners[0])((parser->m_encoding), s, end, &next));
  }

  (parser->m_processor) = prologProcessor;
  return doProlog(parser, (parser->m_encoding), s, end, tok, next,
                  nextPtr, (XML_Bool)!(parser->m_parsingStatus.finalBuffer));
}

static enum XML_Error
entityValueProcessor(XML_Parser parser,
                     const char *s,
                     const char *end,
                     const char **nextPtr)
{
  const char *start = s;
  const char *next = s;
  const ENCODING *enc = (parser->m_encoding);
  int tok;

  for (;;) {
    tok = (((enc)->scanners[0])(enc, start, end, &next));
    if (tok <= 0) {
      if (!(parser->m_parsingStatus.finalBuffer) && tok != 0) {
        *nextPtr = s;
        return XML_ERROR_NONE;
      }
      switch (tok) {
      case 0:
        return XML_ERROR_INVALID_TOKEN;
      case -1:
        return XML_ERROR_UNCLOSED_TOKEN;
      case -2:
        return XML_ERROR_PARTIAL_CHAR;
      case -4:
      default:
        break;
      }

      return storeEntityValue(parser, enc, s, end);
    }
    start = next;
  }
}



static enum XML_Error
prologProcessor(XML_Parser parser,
                const char *s,
                const char *end,
                const char **nextPtr)
{
  const char *next = s;
  int tok = ((((parser->m_encoding))->scanners[0])((parser->m_encoding), s, end, &next));
  return doProlog(parser, (parser->m_encoding), s, end, tok, next,
                  nextPtr, (XML_Bool)!(parser->m_parsingStatus.finalBuffer));
}

static enum XML_Error
doProlog(XML_Parser parser,
         const ENCODING *enc,
         const char *s,
         const char *end,
         int tok,
         const char *next,
         const char **nextPtr,
         XML_Bool haveMore)
{

  static const XML_Char externalSubsetName[] = { 0x23 , '\0' };

  static const XML_Char atypeCDATA[] =
      { 0x43, 0x44, 0x41, 0x54, 0x41, '\0' };
  static const XML_Char atypeID[] = { 0x49, 0x44, '\0' };
  static const XML_Char atypeIDREF[] =
      { 0x49, 0x44, 0x52, 0x45, 0x46, '\0' };
  static const XML_Char atypeIDREFS[] =
      { 0x49, 0x44, 0x52, 0x45, 0x46, 0x53, '\0' };
  static const XML_Char atypeENTITY[] =
      { 0x45, 0x4E, 0x54, 0x49, 0x54, 0x59, '\0' };
  static const XML_Char atypeENTITIES[] = { 0x45, 0x4E,
      0x54, 0x49, 0x54, 0x49, 0x45, 0x53, '\0' };
  static const XML_Char atypeNMTOKEN[] = {
      0x4E, 0x4D, 0x54, 0x4F, 0x4B, 0x45, 0x4E, '\0' };
  static const XML_Char atypeNMTOKENS[] = { 0x4E, 0x4D, 0x54,
      0x4F, 0x4B, 0x45, 0x4E, 0x53, '\0' };
  static const XML_Char notationPrefix[] = { 0x4E, 0x4F, 0x54,
      0x41, 0x54, 0x49, 0x4F, 0x4E, 0x28, '\0' };
  static const XML_Char enumValueSep[] = { 0x7C, '\0' };
  static const XML_Char enumValueStart[] = { 0x28, '\0' };


  DTD * const dtd = (parser->m_dtd);

  const char **eventPP;
  const char **eventEndPP;
  enum XML_Content_Quant quant;

  if (enc == (parser->m_encoding)) {
    eventPP = &(parser->m_eventPtr);
    eventEndPP = &(parser->m_eventEndPtr);
  }
  else {
    eventPP = &((parser->m_openInternalEntities)->internalEventPtr);
    eventEndPP = &((parser->m_openInternalEntities)->internalEventEndPtr);
  }

  for (;;) {
    int role;
    XML_Bool handleDefault = ((XML_Bool) 1);
    *eventPP = s;
    *eventEndPP = next;
    if (tok <= 0) {
      if (haveMore && tok != 0) {
        *nextPtr = s;
        return XML_ERROR_NONE;
      }
      switch (tok) {
      case 0:
        *eventPP = next;
        return XML_ERROR_INVALID_TOKEN;
      case -1:
        return XML_ERROR_UNCLOSED_TOKEN;
      case -2:
        return XML_ERROR_PARTIAL_CHAR;
      case -15:
        tok = -tok;
        break;
      case -4:


        if (enc != (parser->m_encoding) && !(parser->m_openInternalEntities)->betweenDecl) {
          *nextPtr = s;
          return XML_ERROR_NONE;
        }




        if ((parser->m_isParamEntity) || enc != (parser->m_encoding)) {
          if ((((&(parser->m_prologState))->handler)(&(parser->m_prologState), -4, end, end, enc))
              == XML_ROLE_ERROR)
            return XML_ERROR_INCOMPLETE_PE;
          *nextPtr = s;
          return XML_ERROR_NONE;
        }

        return XML_ERROR_NO_ELEMENTS;
      default:
        tok = -tok;
        next = end;
        break;
      }
    }
    role = (((&(parser->m_prologState))->handler)(&(parser->m_prologState), tok, s, next, enc));
    switch (role) {
    case XML_ROLE_XML_DECL:
      {
        enum XML_Error result = processXmlDecl(parser, 0, s, next);
        if (result != XML_ERROR_NONE)
          return result;
        enc = (parser->m_encoding);
        handleDefault = ((XML_Bool) 0);
      }
      break;
    case XML_ROLE_DOCTYPE_NAME:
      if ((parser->m_startDoctypeDeclHandler)) {
        (parser->m_doctypeName) = poolStoreString(&(parser->m_tempPool), enc, s, next);
        if (!(parser->m_doctypeName))
          return XML_ERROR_NO_MEMORY;
        ((&(parser->m_tempPool))->start = (&(parser->m_tempPool))->ptr);
        (parser->m_doctypePubid) = 
# 3918 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                      ((void *)0)
# 3918 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                          ;
        handleDefault = ((XML_Bool) 0);
      }
      (parser->m_doctypeSysid) = 
# 3921 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                    ((void *)0)
# 3921 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                        ;
      break;
    case XML_ROLE_DOCTYPE_INTERNAL_SUBSET:
      if ((parser->m_startDoctypeDeclHandler)) {
        (parser->m_startDoctypeDeclHandler)((parser->m_handlerArg), (parser->m_doctypeName), (parser->m_doctypeSysid),
                                (parser->m_doctypePubid), 1);
        (parser->m_doctypeName) = 
# 3927 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                     ((void *)0)
# 3927 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                         ;
        poolClear(&(parser->m_tempPool));
        handleDefault = ((XML_Bool) 0);
      }
      break;

    case XML_ROLE_TEXT_DECL:
      {
        enum XML_Error result = processXmlDecl(parser, 1, s, next);
        if (result != XML_ERROR_NONE)
          return result;
        enc = (parser->m_encoding);
        handleDefault = ((XML_Bool) 0);
      }
      break;

    case XML_ROLE_DOCTYPE_PUBLIC_ID:

      (parser->m_useForeignDTD) = ((XML_Bool) 0);
      (parser->m_declEntity) = (ENTITY *)lookup(parser,
                                    &dtd->paramEntities,
                                    externalSubsetName,
                                    sizeof(ENTITY));
      if (!(parser->m_declEntity))
        return XML_ERROR_NO_MEMORY;

      dtd->hasParamEntityRefs = ((XML_Bool) 1);
      if ((parser->m_startDoctypeDeclHandler)) {
        XML_Char *pubId;
        if (!(((enc)->isPublicId)(enc, s, next, eventPP)))
          return XML_ERROR_PUBLICID;
        pubId = poolStoreString(&(parser->m_tempPool), enc,
                                s + enc->minBytesPerChar,
                                next - enc->minBytesPerChar);
        if (!pubId)
          return XML_ERROR_NO_MEMORY;
        normalizePublicId(pubId);
        ((&(parser->m_tempPool))->start = (&(parser->m_tempPool))->ptr);
        (parser->m_doctypePubid) = pubId;
        handleDefault = ((XML_Bool) 0);
        goto alreadyChecked;
      }

    case XML_ROLE_ENTITY_PUBLIC_ID:
      if (!(((enc)->isPublicId)(enc, s, next, eventPP)))
        return XML_ERROR_PUBLICID;
    alreadyChecked:
      if (dtd->keepProcessing && (parser->m_declEntity)) {
        XML_Char *tem = poolStoreString(&dtd->pool,
                                        enc,
                                        s + enc->minBytesPerChar,
                                        next - enc->minBytesPerChar);
        if (!tem)
          return XML_ERROR_NO_MEMORY;
        normalizePublicId(tem);
        (parser->m_declEntity)->publicId = tem;
        ((&dtd->pool)->start = (&dtd->pool)->ptr);
        if ((parser->m_entityDeclHandler))
          handleDefault = ((XML_Bool) 0);
      }
      break;
    case XML_ROLE_DOCTYPE_CLOSE:
      if ((parser->m_doctypeName)) {
        (parser->m_startDoctypeDeclHandler)((parser->m_handlerArg), (parser->m_doctypeName),
                                (parser->m_doctypeSysid), (parser->m_doctypePubid), 0);
        poolClear(&(parser->m_tempPool));
        handleDefault = ((XML_Bool) 0);
      }





      if ((parser->m_doctypeSysid) || (parser->m_useForeignDTD)) {
        XML_Bool hadParamEntityRefs = dtd->hasParamEntityRefs;
        dtd->hasParamEntityRefs = ((XML_Bool) 1);
        if ((parser->m_paramEntityParsing) && (parser->m_externalEntityRefHandler)) {
          ENTITY *entity = (ENTITY *)lookup(parser,
                                            &dtd->paramEntities,
                                            externalSubsetName,
                                            sizeof(ENTITY));
          if (!entity)
            return XML_ERROR_NO_MEMORY;
          if ((parser->m_useForeignDTD))
            entity->base = (parser->m_curBase);
          dtd->paramEntityRead = ((XML_Bool) 0);
          if (!(parser->m_externalEntityRefHandler)((parser->m_externalEntityRefHandlerArg),
                                        0,
                                        entity->base,
                                        entity->systemId,
                                        entity->publicId))
            return XML_ERROR_EXTERNAL_ENTITY_HANDLING;
          if (dtd->paramEntityRead) {
            if (!dtd->standalone &&
                (parser->m_notStandaloneHandler) &&
                !(parser->m_notStandaloneHandler)((parser->m_handlerArg)))
              return XML_ERROR_NOT_STANDALONE;
          }



          else if (!(parser->m_doctypeSysid))
            dtd->hasParamEntityRefs = hadParamEntityRefs;

        }
        (parser->m_useForeignDTD) = ((XML_Bool) 0);
      }

      if ((parser->m_endDoctypeDeclHandler)) {
        (parser->m_endDoctypeDeclHandler)((parser->m_handlerArg));
        handleDefault = ((XML_Bool) 0);
      }
      break;
    case XML_ROLE_INSTANCE_START:




      if ((parser->m_useForeignDTD)) {
        XML_Bool hadParamEntityRefs = dtd->hasParamEntityRefs;
        dtd->hasParamEntityRefs = ((XML_Bool) 1);
        if ((parser->m_paramEntityParsing) && (parser->m_externalEntityRefHandler)) {
          ENTITY *entity = (ENTITY *)lookup(parser, &dtd->paramEntities,
                                            externalSubsetName,
                                            sizeof(ENTITY));
          if (!entity)
            return XML_ERROR_NO_MEMORY;
          entity->base = (parser->m_curBase);
          dtd->paramEntityRead = ((XML_Bool) 0);
          if (!(parser->m_externalEntityRefHandler)((parser->m_externalEntityRefHandlerArg),
                                        0,
                                        entity->base,
                                        entity->systemId,
                                        entity->publicId))
            return XML_ERROR_EXTERNAL_ENTITY_HANDLING;
          if (dtd->paramEntityRead) {
            if (!dtd->standalone &&
                (parser->m_notStandaloneHandler) &&
                !(parser->m_notStandaloneHandler)((parser->m_handlerArg)))
              return XML_ERROR_NOT_STANDALONE;
          }



          else
            dtd->hasParamEntityRefs = hadParamEntityRefs;

        }
      }

      (parser->m_processor) = contentProcessor;
      return contentProcessor(parser, s, end, nextPtr);
    case XML_ROLE_ATTLIST_ELEMENT_NAME:
      (parser->m_declElementType) = getElementType(parser, enc, s, next);
      if (!(parser->m_declElementType))
        return XML_ERROR_NO_MEMORY;
      goto checkAttListDeclHandler;
    case XML_ROLE_ATTRIBUTE_NAME:
      (parser->m_declAttributeId) = getAttributeId(parser, enc, s, next);
      if (!(parser->m_declAttributeId))
        return XML_ERROR_NO_MEMORY;
      (parser->m_declAttributeIsCdata) = ((XML_Bool) 0);
      (parser->m_declAttributeType) = 
# 4089 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                         ((void *)0)
# 4089 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                             ;
      (parser->m_declAttributeIsId) = ((XML_Bool) 0);
      goto checkAttListDeclHandler;
    case XML_ROLE_ATTRIBUTE_TYPE_CDATA:
      (parser->m_declAttributeIsCdata) = ((XML_Bool) 1);
      (parser->m_declAttributeType) = atypeCDATA;
      goto checkAttListDeclHandler;
    case XML_ROLE_ATTRIBUTE_TYPE_ID:
      (parser->m_declAttributeIsId) = ((XML_Bool) 1);
      (parser->m_declAttributeType) = atypeID;
      goto checkAttListDeclHandler;
    case XML_ROLE_ATTRIBUTE_TYPE_IDREF:
      (parser->m_declAttributeType) = atypeIDREF;
      goto checkAttListDeclHandler;
    case XML_ROLE_ATTRIBUTE_TYPE_IDREFS:
      (parser->m_declAttributeType) = atypeIDREFS;
      goto checkAttListDeclHandler;
    case XML_ROLE_ATTRIBUTE_TYPE_ENTITY:
      (parser->m_declAttributeType) = atypeENTITY;
      goto checkAttListDeclHandler;
    case XML_ROLE_ATTRIBUTE_TYPE_ENTITIES:
      (parser->m_declAttributeType) = atypeENTITIES;
      goto checkAttListDeclHandler;
    case XML_ROLE_ATTRIBUTE_TYPE_NMTOKEN:
      (parser->m_declAttributeType) = atypeNMTOKEN;
      goto checkAttListDeclHandler;
    case XML_ROLE_ATTRIBUTE_TYPE_NMTOKENS:
      (parser->m_declAttributeType) = atypeNMTOKENS;
    checkAttListDeclHandler:
      if (dtd->keepProcessing && (parser->m_attlistDeclHandler))
        handleDefault = ((XML_Bool) 0);
      break;
    case XML_ROLE_ATTRIBUTE_ENUM_VALUE:
    case XML_ROLE_ATTRIBUTE_NOTATION_VALUE:
      if (dtd->keepProcessing && (parser->m_attlistDeclHandler)) {
        const XML_Char *prefix;
        if ((parser->m_declAttributeType)) {
          prefix = enumValueSep;
        }
        else {
          prefix = (role == XML_ROLE_ATTRIBUTE_NOTATION_VALUE
                    ? notationPrefix
                    : enumValueStart);
        }
        if (!poolAppendString(&(parser->m_tempPool), prefix))
          return XML_ERROR_NO_MEMORY;
        if (!poolAppend(&(parser->m_tempPool), enc, s, next))
          return XML_ERROR_NO_MEMORY;
        (parser->m_declAttributeType) = (parser->m_tempPool).start;
        handleDefault = ((XML_Bool) 0);
      }
      break;
    case XML_ROLE_IMPLIED_ATTRIBUTE_VALUE:
    case XML_ROLE_REQUIRED_ATTRIBUTE_VALUE:
      if (dtd->keepProcessing) {
        if (!defineAttribute((parser->m_declElementType), (parser->m_declAttributeId),
                             (parser->m_declAttributeIsCdata), (parser->m_declAttributeIsId),
                             0, parser))
          return XML_ERROR_NO_MEMORY;
        if ((parser->m_attlistDeclHandler) && (parser->m_declAttributeType)) {
          if (*(parser->m_declAttributeType) == 0x28
              || (*(parser->m_declAttributeType) == 0x4E
                  && (parser->m_declAttributeType)[1] == 0x4F)) {

            if (!(((&(parser->m_tempPool))->ptr == (&(parser->m_tempPool))->end && !poolGrow(&(parser->m_tempPool))) ? 0 : ((*((&(parser->m_tempPool))->ptr)++ = 0x29), 1))
                || !(((&(parser->m_tempPool))->ptr == (&(parser->m_tempPool))->end && !poolGrow(&(parser->m_tempPool))) ? 0 : ((*((&(parser->m_tempPool))->ptr)++ = '\0'), 1)))
              return XML_ERROR_NO_MEMORY;
            (parser->m_declAttributeType) = (parser->m_tempPool).start;
            ((&(parser->m_tempPool))->start = (&(parser->m_tempPool))->ptr);
          }
          *eventEndPP = s;
          (parser->m_attlistDeclHandler)((parser->m_handlerArg), (parser->m_declElementType)->name,
                             (parser->m_declAttributeId)->name, (parser->m_declAttributeType),
                             0, role == XML_ROLE_REQUIRED_ATTRIBUTE_VALUE);
          poolClear(&(parser->m_tempPool));
          handleDefault = ((XML_Bool) 0);
        }
      }
      break;
    case XML_ROLE_DEFAULT_ATTRIBUTE_VALUE:
    case XML_ROLE_FIXED_ATTRIBUTE_VALUE:
      if (dtd->keepProcessing) {
        const XML_Char *attVal;
        enum XML_Error result =
          storeAttributeValue(parser, enc, (parser->m_declAttributeIsCdata),
                              s + enc->minBytesPerChar,
                              next - enc->minBytesPerChar,
                              &dtd->pool);
        if (result)
          return result;
        attVal = ((&dtd->pool)->start);
        ((&dtd->pool)->start = (&dtd->pool)->ptr);

        if (!defineAttribute((parser->m_declElementType), (parser->m_declAttributeId),
                             (parser->m_declAttributeIsCdata), ((XML_Bool) 0), attVal, parser))
          return XML_ERROR_NO_MEMORY;
        if ((parser->m_attlistDeclHandler) && (parser->m_declAttributeType)) {
          if (*(parser->m_declAttributeType) == 0x28
              || (*(parser->m_declAttributeType) == 0x4E
                  && (parser->m_declAttributeType)[1] == 0x4F)) {

            if (!(((&(parser->m_tempPool))->ptr == (&(parser->m_tempPool))->end && !poolGrow(&(parser->m_tempPool))) ? 0 : ((*((&(parser->m_tempPool))->ptr)++ = 0x29), 1))
                || !(((&(parser->m_tempPool))->ptr == (&(parser->m_tempPool))->end && !poolGrow(&(parser->m_tempPool))) ? 0 : ((*((&(parser->m_tempPool))->ptr)++ = '\0'), 1)))
              return XML_ERROR_NO_MEMORY;
            (parser->m_declAttributeType) = (parser->m_tempPool).start;
            ((&(parser->m_tempPool))->start = (&(parser->m_tempPool))->ptr);
          }
          *eventEndPP = s;
          (parser->m_attlistDeclHandler)((parser->m_handlerArg), (parser->m_declElementType)->name,
                             (parser->m_declAttributeId)->name, (parser->m_declAttributeType),
                             attVal,
                             role == XML_ROLE_FIXED_ATTRIBUTE_VALUE);
          poolClear(&(parser->m_tempPool));
          handleDefault = ((XML_Bool) 0);
        }
      }
      break;
    case XML_ROLE_ENTITY_VALUE:
      if (dtd->keepProcessing) {
        enum XML_Error result = storeEntityValue(parser, enc,
                                            s + enc->minBytesPerChar,
                                            next - enc->minBytesPerChar);
        if ((parser->m_declEntity)) {
          (parser->m_declEntity)->textPtr = ((&dtd->entityValuePool)->start);
          (parser->m_declEntity)->textLen = (int)(((&dtd->entityValuePool)->ptr - (&dtd->entityValuePool)->start));
          ((&dtd->entityValuePool)->start = (&dtd->entityValuePool)->ptr);
          if ((parser->m_entityDeclHandler)) {
            *eventEndPP = s;
            (parser->m_entityDeclHandler)((parser->m_handlerArg),
                              (parser->m_declEntity)->name,
                              (parser->m_declEntity)->is_param,
                              (parser->m_declEntity)->textPtr,
                              (parser->m_declEntity)->textLen,
                              (parser->m_curBase), 0, 0, 0);
            handleDefault = ((XML_Bool) 0);
          }
        }
        else
          ((&dtd->entityValuePool)->ptr = (&dtd->entityValuePool)->start);
        if (result != XML_ERROR_NONE)
          return result;
      }
      break;
    case XML_ROLE_DOCTYPE_SYSTEM_ID:

      (parser->m_useForeignDTD) = ((XML_Bool) 0);

      dtd->hasParamEntityRefs = ((XML_Bool) 1);
      if ((parser->m_startDoctypeDeclHandler)) {
        (parser->m_doctypeSysid) = poolStoreString(&(parser->m_tempPool), enc,
                                       s + enc->minBytesPerChar,
                                       next - enc->minBytesPerChar);
        if ((parser->m_doctypeSysid) == 
# 4241 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                           ((void *)0)
# 4241 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                               )
          return XML_ERROR_NO_MEMORY;
        ((&(parser->m_tempPool))->start = (&(parser->m_tempPool))->ptr);
        handleDefault = ((XML_Bool) 0);
      }

      else


        (parser->m_doctypeSysid) = externalSubsetName;

      if (!dtd->standalone

          && !(parser->m_paramEntityParsing)

          && (parser->m_notStandaloneHandler)
          && !(parser->m_notStandaloneHandler)((parser->m_handlerArg)))
        return XML_ERROR_NOT_STANDALONE;



      if (!(parser->m_declEntity)) {
        (parser->m_declEntity) = (ENTITY *)lookup(parser,
                                      &dtd->paramEntities,
                                      externalSubsetName,
                                      sizeof(ENTITY));
        if (!(parser->m_declEntity))
          return XML_ERROR_NO_MEMORY;
        (parser->m_declEntity)->publicId = 
# 4269 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                              ((void *)0)
# 4269 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                                  ;
      }


    case XML_ROLE_ENTITY_SYSTEM_ID:
      if (dtd->keepProcessing && (parser->m_declEntity)) {
        (parser->m_declEntity)->systemId = poolStoreString(&dtd->pool, enc,
                                               s + enc->minBytesPerChar,
                                               next - enc->minBytesPerChar);
        if (!(parser->m_declEntity)->systemId)
          return XML_ERROR_NO_MEMORY;
        (parser->m_declEntity)->base = (parser->m_curBase);
        ((&dtd->pool)->start = (&dtd->pool)->ptr);
        if ((parser->m_entityDeclHandler))
          handleDefault = ((XML_Bool) 0);
      }
      break;
    case XML_ROLE_ENTITY_COMPLETE:
      if (dtd->keepProcessing && (parser->m_declEntity) && (parser->m_entityDeclHandler)) {
        *eventEndPP = s;
        (parser->m_entityDeclHandler)((parser->m_handlerArg),
                          (parser->m_declEntity)->name,
                          (parser->m_declEntity)->is_param,
                          0,0,
                          (parser->m_declEntity)->base,
                          (parser->m_declEntity)->systemId,
                          (parser->m_declEntity)->publicId,
                          0);
        handleDefault = ((XML_Bool) 0);
      }
      break;
    case XML_ROLE_ENTITY_NOTATION_NAME:
      if (dtd->keepProcessing && (parser->m_declEntity)) {
        (parser->m_declEntity)->notation = poolStoreString(&dtd->pool, enc, s, next);
        if (!(parser->m_declEntity)->notation)
          return XML_ERROR_NO_MEMORY;
        ((&dtd->pool)->start = (&dtd->pool)->ptr);
        if ((parser->m_unparsedEntityDeclHandler)) {
          *eventEndPP = s;
          (parser->m_unparsedEntityDeclHandler)((parser->m_handlerArg),
                                    (parser->m_declEntity)->name,
                                    (parser->m_declEntity)->base,
                                    (parser->m_declEntity)->systemId,
                                    (parser->m_declEntity)->publicId,
                                    (parser->m_declEntity)->notation);
          handleDefault = ((XML_Bool) 0);
        }
        else if ((parser->m_entityDeclHandler)) {
          *eventEndPP = s;
          (parser->m_entityDeclHandler)((parser->m_handlerArg),
                            (parser->m_declEntity)->name,
                            0,0,0,
                            (parser->m_declEntity)->base,
                            (parser->m_declEntity)->systemId,
                            (parser->m_declEntity)->publicId,
                            (parser->m_declEntity)->notation);
          handleDefault = ((XML_Bool) 0);
        }
      }
      break;
    case XML_ROLE_GENERAL_ENTITY_NAME:
      {
        if ((((enc)->predefinedEntityName)(enc, s, next))) {
          (parser->m_declEntity) = 
# 4332 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                      ((void *)0)
# 4332 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                          ;
          break;
        }
        if (dtd->keepProcessing) {
          const XML_Char *name = poolStoreString(&dtd->pool, enc, s, next);
          if (!name)
            return XML_ERROR_NO_MEMORY;
          (parser->m_declEntity) = (ENTITY *)lookup(parser, &dtd->generalEntities, name,
                                        sizeof(ENTITY));
          if (!(parser->m_declEntity))
            return XML_ERROR_NO_MEMORY;
          if ((parser->m_declEntity)->name != name) {
            ((&dtd->pool)->ptr = (&dtd->pool)->start);
            (parser->m_declEntity) = 
# 4345 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                        ((void *)0)
# 4345 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                            ;
          }
          else {
            ((&dtd->pool)->start = (&dtd->pool)->ptr);
            (parser->m_declEntity)->publicId = 
# 4349 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                                  ((void *)0)
# 4349 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                                      ;
            (parser->m_declEntity)->is_param = ((XML_Bool) 0);



            (parser->m_declEntity)->is_internal = !((parser->m_parentParser) || (parser->m_openInternalEntities));
            if ((parser->m_entityDeclHandler))
              handleDefault = ((XML_Bool) 0);
          }
        }
        else {
          ((&dtd->pool)->ptr = (&dtd->pool)->start);
          (parser->m_declEntity) = 
# 4361 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                      ((void *)0)
# 4361 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                          ;
        }
      }
      break;
    case XML_ROLE_PARAM_ENTITY_NAME:

      if (dtd->keepProcessing) {
        const XML_Char *name = poolStoreString(&dtd->pool, enc, s, next);
        if (!name)
          return XML_ERROR_NO_MEMORY;
        (parser->m_declEntity) = (ENTITY *)lookup(parser, &dtd->paramEntities,
                                           name, sizeof(ENTITY));
        if (!(parser->m_declEntity))
          return XML_ERROR_NO_MEMORY;
        if ((parser->m_declEntity)->name != name) {
          ((&dtd->pool)->ptr = (&dtd->pool)->start);
          (parser->m_declEntity) = 
# 4377 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                      ((void *)0)
# 4377 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                          ;
        }
        else {
          ((&dtd->pool)->start = (&dtd->pool)->ptr);
          (parser->m_declEntity)->publicId = 
# 4381 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                                ((void *)0)
# 4381 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                                    ;
          (parser->m_declEntity)->is_param = ((XML_Bool) 1);



          (parser->m_declEntity)->is_internal = !((parser->m_parentParser) || (parser->m_openInternalEntities));
          if ((parser->m_entityDeclHandler))
            handleDefault = ((XML_Bool) 0);
        }
      }
      else {
        ((&dtd->pool)->ptr = (&dtd->pool)->start);
        (parser->m_declEntity) = 
# 4393 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                    ((void *)0)
# 4393 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                        ;
      }



      break;
    case XML_ROLE_NOTATION_NAME:
      (parser->m_declNotationPublicId) = 
# 4400 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                            ((void *)0)
# 4400 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                                ;
      (parser->m_declNotationName) = 
# 4401 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                        ((void *)0)
# 4401 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                            ;
      if ((parser->m_notationDeclHandler)) {
        (parser->m_declNotationName) = poolStoreString(&(parser->m_tempPool), enc, s, next);
        if (!(parser->m_declNotationName))
          return XML_ERROR_NO_MEMORY;
        ((&(parser->m_tempPool))->start = (&(parser->m_tempPool))->ptr);
        handleDefault = ((XML_Bool) 0);
      }
      break;
    case XML_ROLE_NOTATION_PUBLIC_ID:
      if (!(((enc)->isPublicId)(enc, s, next, eventPP)))
        return XML_ERROR_PUBLICID;
      if ((parser->m_declNotationName)) {
        XML_Char *tem = poolStoreString(&(parser->m_tempPool),
                                        enc,
                                        s + enc->minBytesPerChar,
                                        next - enc->minBytesPerChar);
        if (!tem)
          return XML_ERROR_NO_MEMORY;
        normalizePublicId(tem);
        (parser->m_declNotationPublicId) = tem;
        ((&(parser->m_tempPool))->start = (&(parser->m_tempPool))->ptr);
        handleDefault = ((XML_Bool) 0);
      }
      break;
    case XML_ROLE_NOTATION_SYSTEM_ID:
      if ((parser->m_declNotationName) && (parser->m_notationDeclHandler)) {
        const XML_Char *systemId
          = poolStoreString(&(parser->m_tempPool), enc,
                            s + enc->minBytesPerChar,
                            next - enc->minBytesPerChar);
        if (!systemId)
          return XML_ERROR_NO_MEMORY;
        *eventEndPP = s;
        (parser->m_notationDeclHandler)((parser->m_handlerArg),
                            (parser->m_declNotationName),
                            (parser->m_curBase),
                            systemId,
                            (parser->m_declNotationPublicId));
        handleDefault = ((XML_Bool) 0);
      }
      poolClear(&(parser->m_tempPool));
      break;
    case XML_ROLE_NOTATION_NO_SYSTEM_ID:
      if ((parser->m_declNotationPublicId) && (parser->m_notationDeclHandler)) {
        *eventEndPP = s;
        (parser->m_notationDeclHandler)((parser->m_handlerArg),
                            (parser->m_declNotationName),
                            (parser->m_curBase),
                            0,
                            (parser->m_declNotationPublicId));
        handleDefault = ((XML_Bool) 0);
      }
      poolClear(&(parser->m_tempPool));
      break;
    case XML_ROLE_ERROR:
      switch (tok) {
      case 28:


        return XML_ERROR_PARAM_ENTITY_REF;
      case 12:
        return XML_ERROR_MISPLACED_XML_PI;
      default:
        return XML_ERROR_SYNTAX;
      }

    case XML_ROLE_IGNORE_SECT:
      {
        enum XML_Error result;
        if ((parser->m_defaultHandler))
          reportDefault(parser, enc, s, next);
        handleDefault = ((XML_Bool) 0);
        result = doIgnoreSection(parser, enc, &next, end, nextPtr, haveMore);
        if (result != XML_ERROR_NONE)
          return result;
        else if (!next) {
          (parser->m_processor) = ignoreSectionProcessor;
          return result;
        }
      }
      break;

    case XML_ROLE_GROUP_OPEN:
      if ((parser->m_prologState).level >= (parser->m_groupSize)) {
        if ((parser->m_groupSize)) {
          char *temp = (char *)(parser->m_mem.realloc_fcn(((parser->m_groupConnector)),((parser->m_groupSize) *= 2)));
          if (temp == 
# 4488 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                     ((void *)0)
# 4488 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                         )
            return XML_ERROR_NO_MEMORY;
          (parser->m_groupConnector) = temp;
          if (dtd->scaffIndex) {
            int *temp = (int *)(parser->m_mem.realloc_fcn((dtd->scaffIndex),((parser->m_groupSize) * sizeof(int))))
                                                  ;
            if (temp == 
# 4494 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                       ((void *)0)
# 4494 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                           )
              return XML_ERROR_NO_MEMORY;
            dtd->scaffIndex = temp;
          }
        }
        else {
          (parser->m_groupConnector) = (char *)(parser->m_mem.malloc_fcn(((parser->m_groupSize) = 32)));
          if (!(parser->m_groupConnector))
            return XML_ERROR_NO_MEMORY;
        }
      }
      (parser->m_groupConnector)[(parser->m_prologState).level] = 0;
      if (dtd->in_eldecl) {
        int myindex = nextScaffoldPart(parser);
        if (myindex < 0)
          return XML_ERROR_NO_MEMORY;
        dtd->scaffIndex[dtd->scaffLevel] = myindex;
        dtd->scaffLevel++;
        dtd->scaffold[myindex].type = XML_CTYPE_SEQ;
        if ((parser->m_elementDeclHandler))
          handleDefault = ((XML_Bool) 0);
      }
      break;
    case XML_ROLE_GROUP_SEQUENCE:
      if ((parser->m_groupConnector)[(parser->m_prologState).level] == 0x7C)
        return XML_ERROR_SYNTAX;
      (parser->m_groupConnector)[(parser->m_prologState).level] = 0x2C;
      if (dtd->in_eldecl && (parser->m_elementDeclHandler))
        handleDefault = ((XML_Bool) 0);
      break;
    case XML_ROLE_GROUP_CHOICE:
      if ((parser->m_groupConnector)[(parser->m_prologState).level] == 0x2C)
        return XML_ERROR_SYNTAX;
      if (dtd->in_eldecl
          && !(parser->m_groupConnector)[(parser->m_prologState).level]
          && (dtd->scaffold[dtd->scaffIndex[dtd->scaffLevel - 1]].type
              != XML_CTYPE_MIXED)
          ) {
        dtd->scaffold[dtd->scaffIndex[dtd->scaffLevel - 1]].type
            = XML_CTYPE_CHOICE;
        if ((parser->m_elementDeclHandler))
          handleDefault = ((XML_Bool) 0);
      }
      (parser->m_groupConnector)[(parser->m_prologState).level] = 0x7C;
      break;
    case XML_ROLE_PARAM_ENTITY_REF:

    case XML_ROLE_INNER_PARAM_ENTITY_REF:
      dtd->hasParamEntityRefs = ((XML_Bool) 1);
      if (!(parser->m_paramEntityParsing))
        dtd->keepProcessing = dtd->standalone;
      else {
        const XML_Char *name;
        ENTITY *entity;
        name = poolStoreString(&dtd->pool, enc,
                                s + enc->minBytesPerChar,
                                next - enc->minBytesPerChar);
        if (!name)
          return XML_ERROR_NO_MEMORY;
        entity = (ENTITY *)lookup(parser, &dtd->paramEntities, name, 0);
        ((&dtd->pool)->ptr = (&dtd->pool)->start);




        if ((parser->m_prologState).documentEntity &&
            (dtd->standalone
             ? !(parser->m_openInternalEntities)
             : !dtd->hasParamEntityRefs)) {
          if (!entity)
            return XML_ERROR_UNDEFINED_ENTITY;
          else if (!entity->is_internal)
            return XML_ERROR_ENTITY_DECLARED_IN_PE;
        }
        else if (!entity) {
          dtd->keepProcessing = dtd->standalone;

          if ((role == XML_ROLE_PARAM_ENTITY_REF) && (parser->m_skippedEntityHandler)) {
            (parser->m_skippedEntityHandler)((parser->m_handlerArg), name, 1);
            handleDefault = ((XML_Bool) 0);
          }
          break;
        }
        if (entity->open)
          return XML_ERROR_RECURSIVE_ENTITY_REF;
        if (entity->textPtr) {
          enum XML_Error result;
          XML_Bool betweenDecl =
            (role == XML_ROLE_PARAM_ENTITY_REF ? ((XML_Bool) 1) : ((XML_Bool) 0));
          result = processInternalEntity(parser, entity, betweenDecl);
          if (result != XML_ERROR_NONE)
            return result;
          handleDefault = ((XML_Bool) 0);
          break;
        }
        if ((parser->m_externalEntityRefHandler)) {
          dtd->paramEntityRead = ((XML_Bool) 0);
          entity->open = ((XML_Bool) 1);
          if (!(parser->m_externalEntityRefHandler)((parser->m_externalEntityRefHandlerArg),
                                        0,
                                        entity->base,
                                        entity->systemId,
                                        entity->publicId)) {
            entity->open = ((XML_Bool) 0);
            return XML_ERROR_EXTERNAL_ENTITY_HANDLING;
          }
          entity->open = ((XML_Bool) 0);
          handleDefault = ((XML_Bool) 0);
          if (!dtd->paramEntityRead) {
            dtd->keepProcessing = dtd->standalone;
            break;
          }
        }
        else {
          dtd->keepProcessing = dtd->standalone;
          break;
        }
      }

      if (!dtd->standalone &&
          (parser->m_notStandaloneHandler) &&
          !(parser->m_notStandaloneHandler)((parser->m_handlerArg)))
        return XML_ERROR_NOT_STANDALONE;
      break;



    case XML_ROLE_ELEMENT_NAME:
      if ((parser->m_elementDeclHandler)) {
        (parser->m_declElementType) = getElementType(parser, enc, s, next);
        if (!(parser->m_declElementType))
          return XML_ERROR_NO_MEMORY;
        dtd->scaffLevel = 0;
        dtd->scaffCount = 0;
        dtd->in_eldecl = ((XML_Bool) 1);
        handleDefault = ((XML_Bool) 0);
      }
      break;

    case XML_ROLE_CONTENT_ANY:
    case XML_ROLE_CONTENT_EMPTY:
      if (dtd->in_eldecl) {
        if ((parser->m_elementDeclHandler)) {
          XML_Content * content = (XML_Content *) (parser->m_mem.malloc_fcn((sizeof(XML_Content))));
          if (!content)
            return XML_ERROR_NO_MEMORY;
          content->quant = XML_CQUANT_NONE;
          content->name = 
# 4641 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                         ((void *)0)
# 4641 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                             ;
          content->numchildren = 0;
          content->children = 
# 4643 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                             ((void *)0)
# 4643 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                                 ;
          content->type = ((role == XML_ROLE_CONTENT_ANY) ?
                           XML_CTYPE_ANY :
                           XML_CTYPE_EMPTY);
          *eventEndPP = s;
          (parser->m_elementDeclHandler)((parser->m_handlerArg), (parser->m_declElementType)->name, content);
          handleDefault = ((XML_Bool) 0);
        }
        dtd->in_eldecl = ((XML_Bool) 0);
      }
      break;

    case XML_ROLE_CONTENT_PCDATA:
      if (dtd->in_eldecl) {
        dtd->scaffold[dtd->scaffIndex[dtd->scaffLevel - 1]].type
            = XML_CTYPE_MIXED;
        if ((parser->m_elementDeclHandler))
          handleDefault = ((XML_Bool) 0);
      }
      break;

    case XML_ROLE_CONTENT_ELEMENT:
      quant = XML_CQUANT_NONE;
      goto elementContent;
    case XML_ROLE_CONTENT_ELEMENT_OPT:
      quant = XML_CQUANT_OPT;
      goto elementContent;
    case XML_ROLE_CONTENT_ELEMENT_REP:
      quant = XML_CQUANT_REP;
      goto elementContent;
    case XML_ROLE_CONTENT_ELEMENT_PLUS:
      quant = XML_CQUANT_PLUS;
    elementContent:
      if (dtd->in_eldecl) {
        ELEMENT_TYPE *el;
        const XML_Char *name;
        int nameLen;
        const char *nxt = (quant == XML_CQUANT_NONE
                           ? next
                           : next - enc->minBytesPerChar);
        int myindex = nextScaffoldPart(parser);
        if (myindex < 0)
          return XML_ERROR_NO_MEMORY;
        dtd->scaffold[myindex].type = XML_CTYPE_NAME;
        dtd->scaffold[myindex].quant = quant;
        el = getElementType(parser, enc, s, nxt);
        if (!el)
          return XML_ERROR_NO_MEMORY;
        name = el->name;
        dtd->scaffold[myindex].name = name;
        nameLen = 0;
        for (; name[nameLen++]; );
        dtd->contentStringLen += nameLen;
        if ((parser->m_elementDeclHandler))
          handleDefault = ((XML_Bool) 0);
      }
      break;

    case XML_ROLE_GROUP_CLOSE:
      quant = XML_CQUANT_NONE;
      goto closeGroup;
    case XML_ROLE_GROUP_CLOSE_OPT:
      quant = XML_CQUANT_OPT;
      goto closeGroup;
    case XML_ROLE_GROUP_CLOSE_REP:
      quant = XML_CQUANT_REP;
      goto closeGroup;
    case XML_ROLE_GROUP_CLOSE_PLUS:
      quant = XML_CQUANT_PLUS;
    closeGroup:
      if (dtd->in_eldecl) {
        if ((parser->m_elementDeclHandler))
          handleDefault = ((XML_Bool) 0);
        dtd->scaffLevel--;
        dtd->scaffold[dtd->scaffIndex[dtd->scaffLevel]].quant = quant;
        if (dtd->scaffLevel == 0) {
          if (!handleDefault) {
            XML_Content *model = build_model(parser);
            if (!model)
              return XML_ERROR_NO_MEMORY;
            *eventEndPP = s;
            (parser->m_elementDeclHandler)((parser->m_handlerArg), (parser->m_declElementType)->name, model);
          }
          dtd->in_eldecl = ((XML_Bool) 0);
          dtd->contentStringLen = 0;
        }
      }
      break;


    case XML_ROLE_PI:
      if (!reportProcessingInstruction(parser, enc, s, next))
        return XML_ERROR_NO_MEMORY;
      handleDefault = ((XML_Bool) 0);
      break;
    case XML_ROLE_COMMENT:
      if (!reportComment(parser, enc, s, next))
        return XML_ERROR_NO_MEMORY;
      handleDefault = ((XML_Bool) 0);
      break;
    case XML_ROLE_NONE:
      switch (tok) {
      case 14:
        handleDefault = ((XML_Bool) 0);
        break;
      }
      break;
    case XML_ROLE_DOCTYPE_NONE:
      if ((parser->m_startDoctypeDeclHandler))
        handleDefault = ((XML_Bool) 0);
      break;
    case XML_ROLE_ENTITY_NONE:
      if (dtd->keepProcessing && (parser->m_entityDeclHandler))
        handleDefault = ((XML_Bool) 0);
      break;
    case XML_ROLE_NOTATION_NONE:
      if ((parser->m_notationDeclHandler))
        handleDefault = ((XML_Bool) 0);
      break;
    case XML_ROLE_ATTLIST_NONE:
      if (dtd->keepProcessing && (parser->m_attlistDeclHandler))
        handleDefault = ((XML_Bool) 0);
      break;
    case XML_ROLE_ELEMENT_NONE:
      if ((parser->m_elementDeclHandler))
        handleDefault = ((XML_Bool) 0);
      break;
    }

    if (handleDefault && (parser->m_defaultHandler))
      reportDefault(parser, enc, s, next);

    switch ((parser->m_parsingStatus.parsing)) {
    case XML_SUSPENDED:
      *nextPtr = next;
      return XML_ERROR_NONE;
    case XML_FINISHED:
      return XML_ERROR_ABORTED;
    default:
      s = next;
      tok = (((enc)->scanners[0])(enc, s, end, &next));
    }
  }

}

static enum XML_Error
epilogProcessor(XML_Parser parser,
                const char *s,
                const char *end,
                const char **nextPtr)
{
  (parser->m_processor) = epilogProcessor;
  (parser->m_eventPtr) = s;
  for (;;) {
    const char *next = 
# 4798 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                      ((void *)0)
# 4798 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                          ;
    int tok = ((((parser->m_encoding))->scanners[0])((parser->m_encoding), s, end, &next));
    (parser->m_eventEndPtr) = next;
    switch (tok) {

    case -15:
      if ((parser->m_defaultHandler)) {
        reportDefault(parser, (parser->m_encoding), s, next);
        if ((parser->m_parsingStatus.parsing) == XML_FINISHED)
          return XML_ERROR_ABORTED;
      }
      *nextPtr = next;
      return XML_ERROR_NONE;
    case -4:
      *nextPtr = s;
      return XML_ERROR_NONE;
    case 15:
      if ((parser->m_defaultHandler))
        reportDefault(parser, (parser->m_encoding), s, next);
      break;
    case 11:
      if (!reportProcessingInstruction(parser, (parser->m_encoding), s, next))
        return XML_ERROR_NO_MEMORY;
      break;
    case 13:
      if (!reportComment(parser, (parser->m_encoding), s, next))
        return XML_ERROR_NO_MEMORY;
      break;
    case 0:
      (parser->m_eventPtr) = next;
      return XML_ERROR_INVALID_TOKEN;
    case -1:
      if (!(parser->m_parsingStatus.finalBuffer)) {
        *nextPtr = s;
        return XML_ERROR_NONE;
      }
      return XML_ERROR_UNCLOSED_TOKEN;
    case -2:
      if (!(parser->m_parsingStatus.finalBuffer)) {
        *nextPtr = s;
        return XML_ERROR_NONE;
      }
      return XML_ERROR_PARTIAL_CHAR;
    default:
      return XML_ERROR_JUNK_AFTER_DOC_ELEMENT;
    }
    (parser->m_eventPtr) = s = next;
    switch ((parser->m_parsingStatus.parsing)) {
    case XML_SUSPENDED:
      *nextPtr = next;
      return XML_ERROR_NONE;
    case XML_FINISHED:
      return XML_ERROR_ABORTED;
    default: ;
    }
  }
}

static enum XML_Error
processInternalEntity(XML_Parser parser, ENTITY *entity,
                      XML_Bool betweenDecl)
{
  const char *textStart, *textEnd;
  const char *next;
  enum XML_Error result;
  OPEN_INTERNAL_ENTITY *openEntity;

  if ((parser->m_freeInternalEntities)) {
    openEntity = (parser->m_freeInternalEntities);
    (parser->m_freeInternalEntities) = openEntity->next;
  }
  else {
    openEntity = (OPEN_INTERNAL_ENTITY *)(parser->m_mem.malloc_fcn((sizeof(OPEN_INTERNAL_ENTITY))));
    if (!openEntity)
      return XML_ERROR_NO_MEMORY;
  }
  entity->open = ((XML_Bool) 1);
  entity->processed = 0;
  openEntity->next = (parser->m_openInternalEntities);
  (parser->m_openInternalEntities) = openEntity;
  openEntity->entity = entity;
  openEntity->startTagLevel = (parser->m_tagLevel);
  openEntity->betweenDecl = betweenDecl;
  openEntity->internalEventPtr = 
# 4881 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                                ((void *)0)
# 4881 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                                    ;
  openEntity->internalEventEndPtr = 
# 4882 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                                   ((void *)0)
# 4882 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                                       ;
  textStart = (char *)entity->textPtr;
  textEnd = (char *)(entity->textPtr + entity->textLen);


  if (entity->is_param) {
    int tok = ((((parser->m_internalEncoding))->scanners[0])((parser->m_internalEncoding), textStart, textEnd, &next));
    result = doProlog(parser, (parser->m_internalEncoding), textStart, textEnd, tok,
                      next, &next, ((XML_Bool) 0));
  }
  else

    result = doContent(parser, (parser->m_tagLevel), (parser->m_internalEncoding), textStart,
                       textEnd, &next, ((XML_Bool) 0));

  if (result == XML_ERROR_NONE) {
    if (textEnd != next && (parser->m_parsingStatus.parsing) == XML_SUSPENDED) {
      entity->processed = (int)(next - textStart);
      (parser->m_processor) = internalEntityProcessor;
    }
    else {
      entity->open = ((XML_Bool) 0);
      (parser->m_openInternalEntities) = openEntity->next;

      openEntity->next = (parser->m_freeInternalEntities);
      (parser->m_freeInternalEntities) = openEntity;
    }
  }
  return result;
}

static enum XML_Error
internalEntityProcessor(XML_Parser parser,
                        const char *s,
                        const char *end,
                        const char **nextPtr)
{
  ENTITY *entity;
  const char *textStart, *textEnd;
  const char *next;
  enum XML_Error result;
  OPEN_INTERNAL_ENTITY *openEntity = (parser->m_openInternalEntities);
  if (!openEntity)
    return XML_ERROR_UNEXPECTED_STATE;

  entity = openEntity->entity;
  textStart = ((char *)entity->textPtr) + entity->processed;
  textEnd = (char *)(entity->textPtr + entity->textLen);


  if (entity->is_param) {
    int tok = ((((parser->m_internalEncoding))->scanners[0])((parser->m_internalEncoding), textStart, textEnd, &next));
    result = doProlog(parser, (parser->m_internalEncoding), textStart, textEnd, tok,
                      next, &next, ((XML_Bool) 0));
  }
  else

    result = doContent(parser, openEntity->startTagLevel, (parser->m_internalEncoding),
                       textStart, textEnd, &next, ((XML_Bool) 0));

  if (result != XML_ERROR_NONE)
    return result;
  else if (textEnd != next && (parser->m_parsingStatus.parsing) == XML_SUSPENDED) {
    entity->processed = (int)(next - (char *)entity->textPtr);
    return result;
  }
  else {
    entity->open = ((XML_Bool) 0);
    (parser->m_openInternalEntities) = openEntity->next;

    openEntity->next = (parser->m_freeInternalEntities);
    (parser->m_freeInternalEntities) = openEntity;
  }


  if (entity->is_param) {
    int tok;
    (parser->m_processor) = prologProcessor;
    tok = ((((parser->m_encoding))->scanners[0])((parser->m_encoding), s, end, &next));
    return doProlog(parser, (parser->m_encoding), s, end, tok, next, nextPtr,
                    (XML_Bool)!(parser->m_parsingStatus.finalBuffer));
  }
  else

  {
    (parser->m_processor) = contentProcessor;

    return doContent(parser, (parser->m_parentParser) ? 1 : 0, (parser->m_encoding), s, end,
                     nextPtr, (XML_Bool)!(parser->m_parsingStatus.finalBuffer));
  }
}

static enum XML_Error
errorProcessor(XML_Parser parser,
               const char *UNUSED_s __attribute__((__unused__)),
               const char *UNUSED_end __attribute__((__unused__)),
               const char **UNUSED_nextPtr __attribute__((__unused__)))
{
  return (parser->m_errorCode);
}

static enum XML_Error
storeAttributeValue(XML_Parser parser, const ENCODING *enc, XML_Bool isCdata,
                    const char *ptr, const char *end,
                    STRING_POOL *pool)
{
  enum XML_Error result = appendAttributeValue(parser, enc, isCdata, ptr,
                                               end, pool);
  if (result)
    return result;
  if (!isCdata && ((pool)->ptr - (pool)->start) && (((pool)->ptr)[-1]) == 0x20)
    ((void)--(pool->ptr));
  if (!(((pool)->ptr == (pool)->end && !poolGrow(pool)) ? 0 : ((*((pool)->ptr)++ = '\0'), 1)))
    return XML_ERROR_NO_MEMORY;
  return XML_ERROR_NONE;
}

static enum XML_Error
appendAttributeValue(XML_Parser parser, const ENCODING *enc, XML_Bool isCdata,
                     const char *ptr, const char *end,
                     STRING_POOL *pool)
{
  DTD * const dtd = (parser->m_dtd);
  for (;;) {
    const char *next;
    int tok = (((enc)->literalScanners[0])(enc, ptr, end, &next));
    switch (tok) {
    case -4:
      return XML_ERROR_NONE;
    case 0:
      if (enc == (parser->m_encoding))
        (parser->m_eventPtr) = next;
      return XML_ERROR_INVALID_TOKEN;
    case -1:
      if (enc == (parser->m_encoding))
        (parser->m_eventPtr) = ptr;
      return XML_ERROR_INVALID_TOKEN;
    case 10:
      {
        XML_Char buf[4];
        int i;
        int n = (((enc)->charRefNumber)(enc, ptr));
        if (n < 0) {
          if (enc == (parser->m_encoding))
            (parser->m_eventPtr) = ptr;
          return XML_ERROR_BAD_CHAR_REF;
        }
        if (!isCdata
            && n == 0x20
            && (((pool)->ptr - (pool)->start) == 0 || (((pool)->ptr)[-1]) == 0x20))
          break;
        n = XmlUtf8Encode(n, (ICHAR *)buf);
        if (!n) {
          if (enc == (parser->m_encoding))
            (parser->m_eventPtr) = ptr;
          return XML_ERROR_BAD_CHAR_REF;
        }
        for (i = 0; i < n; i++) {
          if (!(((pool)->ptr == (pool)->end && !poolGrow(pool)) ? 0 : ((*((pool)->ptr)++ = buf[i]), 1)))
            return XML_ERROR_NO_MEMORY;
        }
      }
      break;
    case 6:
      if (!poolAppend(pool, enc, ptr, next))
        return XML_ERROR_NO_MEMORY;
      break;
    case -3:
      next = ptr + enc->minBytesPerChar;

    case 39:
    case 7:
      if (!isCdata && (((pool)->ptr - (pool)->start) == 0 || (((pool)->ptr)[-1]) == 0x20))
        break;
      if (!(((pool)->ptr == (pool)->end && !poolGrow(pool)) ? 0 : ((*((pool)->ptr)++ = 0x20), 1)))
        return XML_ERROR_NO_MEMORY;
      break;
    case 9:
      {
        const XML_Char *name;
        ENTITY *entity;
        char checkEntityDecl;
        XML_Char ch = (XML_Char) (((enc)->predefinedEntityName)(enc, ptr + enc->minBytesPerChar, next - enc->minBytesPerChar))

                                                                          ;
        if (ch) {
          if (!(((pool)->ptr == (pool)->end && !poolGrow(pool)) ? 0 : ((*((pool)->ptr)++ = ch), 1)))
                return XML_ERROR_NO_MEMORY;
          break;
        }
        name = poolStoreString(&(parser->m_temp2Pool), enc,
                               ptr + enc->minBytesPerChar,
                               next - enc->minBytesPerChar);
        if (!name)
          return XML_ERROR_NO_MEMORY;
        entity = (ENTITY *)lookup(parser, &dtd->generalEntities, name, 0);
        ((&(parser->m_temp2Pool))->ptr = (&(parser->m_temp2Pool))->start);



        if (pool == &dtd->pool)
          checkEntityDecl =

              (parser->m_prologState).documentEntity &&

              (dtd->standalone
               ? !(parser->m_openInternalEntities)
               : !dtd->hasParamEntityRefs);
        else
          checkEntityDecl = !dtd->hasParamEntityRefs || dtd->standalone;
        if (checkEntityDecl) {
          if (!entity)
            return XML_ERROR_UNDEFINED_ENTITY;
          else if (!entity->is_internal)
            return XML_ERROR_ENTITY_DECLARED_IN_PE;
        }
        else if (!entity) {
# 5109 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
          break;
        }
        if (entity->open) {
          if (enc == (parser->m_encoding))
            (parser->m_eventPtr) = ptr;
          return XML_ERROR_RECURSIVE_ENTITY_REF;
        }
        if (entity->notation) {
          if (enc == (parser->m_encoding))
            (parser->m_eventPtr) = ptr;
          return XML_ERROR_BINARY_ENTITY_REF;
        }
        if (!entity->textPtr) {
          if (enc == (parser->m_encoding))
            (parser->m_eventPtr) = ptr;
          return XML_ERROR_ATTRIBUTE_EXTERNAL_ENTITY_REF;
        }
        else {
          enum XML_Error result;
          const XML_Char *textEnd = entity->textPtr + entity->textLen;
          entity->open = ((XML_Bool) 1);
          result = appendAttributeValue(parser, (parser->m_internalEncoding), isCdata,
                                        (char *)entity->textPtr,
                                        (char *)textEnd, pool);
          entity->open = ((XML_Bool) 0);
          if (result)
            return result;
        }
      }
      break;
    default:
      if (enc == (parser->m_encoding))
        (parser->m_eventPtr) = ptr;
      return XML_ERROR_UNEXPECTED_STATE;
    }
    ptr = next;
  }

}

static enum XML_Error
storeEntityValue(XML_Parser parser,
                 const ENCODING *enc,
                 const char *entityTextPtr,
                 const char *entityTextEnd)
{
  DTD * const dtd = (parser->m_dtd);
  STRING_POOL *pool = &(dtd->entityValuePool);
  enum XML_Error result = XML_ERROR_NONE;

  int oldInEntityValue = (parser->m_prologState).inEntityValue;
  (parser->m_prologState).inEntityValue = 1;




  if (!pool->blocks) {
    if (!poolGrow(pool))
      return XML_ERROR_NO_MEMORY;
  }

  for (;;) {
    const char *next;
    int tok = (((enc)->literalScanners[1])(enc, entityTextPtr, entityTextEnd, &next));
    switch (tok) {
    case 28:

      if ((parser->m_isParamEntity) || enc != (parser->m_encoding)) {
        const XML_Char *name;
        ENTITY *entity;
        name = poolStoreString(&(parser->m_tempPool), enc,
                               entityTextPtr + enc->minBytesPerChar,
                               next - enc->minBytesPerChar);
        if (!name) {
          result = XML_ERROR_NO_MEMORY;
          goto endEntityValue;
        }
        entity = (ENTITY *)lookup(parser, &dtd->paramEntities, name, 0);
        ((&(parser->m_tempPool))->ptr = (&(parser->m_tempPool))->start);
        if (!entity) {






          dtd->keepProcessing = dtd->standalone;
          goto endEntityValue;
        }
        if (entity->open) {
          if (enc == (parser->m_encoding))
            (parser->m_eventPtr) = entityTextPtr;
          result = XML_ERROR_RECURSIVE_ENTITY_REF;
          goto endEntityValue;
        }
        if (entity->systemId) {
          if ((parser->m_externalEntityRefHandler)) {
            dtd->paramEntityRead = ((XML_Bool) 0);
            entity->open = ((XML_Bool) 1);
            if (!(parser->m_externalEntityRefHandler)((parser->m_externalEntityRefHandlerArg),
                                          0,
                                          entity->base,
                                          entity->systemId,
                                          entity->publicId)) {
              entity->open = ((XML_Bool) 0);
              result = XML_ERROR_EXTERNAL_ENTITY_HANDLING;
              goto endEntityValue;
            }
            entity->open = ((XML_Bool) 0);
            if (!dtd->paramEntityRead)
              dtd->keepProcessing = dtd->standalone;
          }
          else
            dtd->keepProcessing = dtd->standalone;
        }
        else {
          entity->open = ((XML_Bool) 1);
          result = storeEntityValue(parser,
                                    (parser->m_internalEncoding),
                                    (char *)entity->textPtr,
                                    (char *)(entity->textPtr
                                             + entity->textLen));
          entity->open = ((XML_Bool) 0);
          if (result)
            goto endEntityValue;
        }
        break;
      }



      (parser->m_eventPtr) = entityTextPtr;
      result = XML_ERROR_PARAM_ENTITY_REF;
      goto endEntityValue;
    case -4:
      result = XML_ERROR_NONE;
      goto endEntityValue;
    case 9:
    case 6:
      if (!poolAppend(pool, enc, entityTextPtr, next)) {
        result = XML_ERROR_NO_MEMORY;
        goto endEntityValue;
      }
      break;
    case -3:
      next = entityTextPtr + enc->minBytesPerChar;

    case 7:
      if (pool->end == pool->ptr && !poolGrow(pool)) {
              result = XML_ERROR_NO_MEMORY;
        goto endEntityValue;
      }
      *(pool->ptr)++ = 0xA;
      break;
    case 10:
      {
        XML_Char buf[4];
        int i;
        int n = (((enc)->charRefNumber)(enc, entityTextPtr));
        if (n < 0) {
          if (enc == (parser->m_encoding))
            (parser->m_eventPtr) = entityTextPtr;
          result = XML_ERROR_BAD_CHAR_REF;
          goto endEntityValue;
        }
        n = XmlUtf8Encode(n, (ICHAR *)buf);
        if (!n) {
          if (enc == (parser->m_encoding))
            (parser->m_eventPtr) = entityTextPtr;
          result = XML_ERROR_BAD_CHAR_REF;
          goto endEntityValue;
        }
        for (i = 0; i < n; i++) {
          if (pool->end == pool->ptr && !poolGrow(pool)) {
            result = XML_ERROR_NO_MEMORY;
            goto endEntityValue;
          }
          *(pool->ptr)++ = buf[i];
        }
      }
      break;
    case -1:
      if (enc == (parser->m_encoding))
        (parser->m_eventPtr) = entityTextPtr;
      result = XML_ERROR_INVALID_TOKEN;
      goto endEntityValue;
    case 0:
      if (enc == (parser->m_encoding))
        (parser->m_eventPtr) = next;
      result = XML_ERROR_INVALID_TOKEN;
      goto endEntityValue;
    default:
      if (enc == (parser->m_encoding))
        (parser->m_eventPtr) = entityTextPtr;
      result = XML_ERROR_UNEXPECTED_STATE;
      goto endEntityValue;
    }
    entityTextPtr = next;
  }
endEntityValue:

  (parser->m_prologState).inEntityValue = oldInEntityValue;

  return result;
}

static void
normalizeLines(XML_Char *s)
{
  XML_Char *p;
  for (;; s++) {
    if (*s == '\0')
      return;
    if (*s == 0xD)
      break;
  }
  p = s;
  do {
    if (*s == 0xD) {
      *p++ = 0xA;
      if (*++s == 0xA)
        s++;
    }
    else
      *p++ = *s++;
  } while (*s);
  *p = '\0';
}

static int
reportProcessingInstruction(XML_Parser parser, const ENCODING *enc,
                            const char *start, const char *end)
{
  const XML_Char *target;
  XML_Char *data;
  const char *tem;
  if (!(parser->m_processingInstructionHandler)) {
    if ((parser->m_defaultHandler))
      reportDefault(parser, enc, start, end);
    return 1;
  }
  start += enc->minBytesPerChar * 2;
  tem = start + (((enc)->nameLength)(enc, start));
  target = poolStoreString(&(parser->m_tempPool), enc, start, tem);
  if (!target)
    return 0;
  ((&(parser->m_tempPool))->start = (&(parser->m_tempPool))->ptr);
  data = poolStoreString(&(parser->m_tempPool), enc,
                        (((enc)->skipS)(enc, tem)),
                        end - enc->minBytesPerChar*2);
  if (!data)
    return 0;
  normalizeLines(data);
  (parser->m_processingInstructionHandler)((parser->m_handlerArg), target, data);
  poolClear(&(parser->m_tempPool));
  return 1;
}

static int
reportComment(XML_Parser parser, const ENCODING *enc,
              const char *start, const char *end)
{
  XML_Char *data;
  if (!(parser->m_commentHandler)) {
    if ((parser->m_defaultHandler))
      reportDefault(parser, enc, start, end);
    return 1;
  }
  data = poolStoreString(&(parser->m_tempPool),
                         enc,
                         start + enc->minBytesPerChar * 4,
                         end - enc->minBytesPerChar * 3);
  if (!data)
    return 0;
  normalizeLines(data);
  (parser->m_commentHandler)((parser->m_handlerArg), data);
  poolClear(&(parser->m_tempPool));
  return 1;
}

static void
reportDefault(XML_Parser parser, const ENCODING *enc,
              const char *s, const char *end)
{
  if ((!(enc)->isUtf8)) {
    enum XML_Convert_Result convert_res;
    const char **eventPP;
    const char **eventEndPP;
    if (enc == (parser->m_encoding)) {
      eventPP = &(parser->m_eventPtr);
      eventEndPP = &(parser->m_eventEndPtr);
    }
    else {
      eventPP = &((parser->m_openInternalEntities)->internalEventPtr);
      eventEndPP = &((parser->m_openInternalEntities)->internalEventEndPtr);
    }
    do {
      ICHAR *dataPtr = (ICHAR *)(parser->m_dataBuf);
      convert_res = (((enc)->utf8Convert)(enc, &s, end, &dataPtr, (ICHAR *)(parser->m_dataBufEnd)));
      *eventEndPP = s;
      (parser->m_defaultHandler)((parser->m_handlerArg), (parser->m_dataBuf), (int)(dataPtr - (ICHAR *)(parser->m_dataBuf)));
      *eventPP = s;
    } while ((convert_res != XML_CONVERT_COMPLETED) && (convert_res != XML_CONVERT_INPUT_INCOMPLETE));
  }
  else
    (parser->m_defaultHandler)((parser->m_handlerArg), (XML_Char *)s, (int)((XML_Char *)end - (XML_Char *)s));
}


static int
defineAttribute(ELEMENT_TYPE *type, ATTRIBUTE_ID *attId, XML_Bool isCdata,
                XML_Bool isId, const XML_Char *value, XML_Parser parser)
{
  DEFAULT_ATTRIBUTE *att;
  if (value || isId) {


    int i;
    for (i = 0; i < type->nDefaultAtts; i++)
      if (attId == type->defaultAtts[i].id)
        return 1;
    if (isId && !type->idAtt && !attId->xmlns)
      type->idAtt = attId;
  }
  if (type->nDefaultAtts == type->allocDefaultAtts) {
    if (type->allocDefaultAtts == 0) {
      type->allocDefaultAtts = 8;
      type->defaultAtts = (DEFAULT_ATTRIBUTE *)(parser->m_mem.malloc_fcn((type->allocDefaultAtts * sizeof(DEFAULT_ATTRIBUTE))))
                                                        ;
      if (!type->defaultAtts)
        return 0;
    }
    else {
      DEFAULT_ATTRIBUTE *temp;
      int count = type->allocDefaultAtts * 2;
      temp = (DEFAULT_ATTRIBUTE *)
        (parser->m_mem.realloc_fcn((type->defaultAtts),((count * sizeof(DEFAULT_ATTRIBUTE)))));
      if (temp == 
# 5446 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                 ((void *)0)
# 5446 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                     )
        return 0;
      type->allocDefaultAtts = count;
      type->defaultAtts = temp;
    }
  }
  att = type->defaultAtts + type->nDefaultAtts;
  att->id = attId;
  att->value = value;
  att->isCdata = isCdata;
  if (!isCdata)
    attId->maybeTokenized = ((XML_Bool) 1);
  type->nDefaultAtts += 1;
  return 1;
}

static int
setElementTypePrefix(XML_Parser parser, ELEMENT_TYPE *elementType)
{
  DTD * const dtd = (parser->m_dtd);
  const XML_Char *name;
  for (name = elementType->name; *name; name++) {
    if (*name == 0x3A) {
      PREFIX *prefix;
      const XML_Char *s;
      for (s = elementType->name; s != name; s++) {
        if (!(((&dtd->pool)->ptr == (&dtd->pool)->end && !poolGrow(&dtd->pool)) ? 0 : ((*((&dtd->pool)->ptr)++ = *s), 1)))
          return 0;
      }
      if (!(((&dtd->pool)->ptr == (&dtd->pool)->end && !poolGrow(&dtd->pool)) ? 0 : ((*((&dtd->pool)->ptr)++ = '\0'), 1)))
        return 0;
      prefix = (PREFIX *)lookup(parser, &dtd->prefixes, ((&dtd->pool)->start),
                                sizeof(PREFIX));
      if (!prefix)
        return 0;
      if (prefix->name == ((&dtd->pool)->start))
        ((&dtd->pool)->start = (&dtd->pool)->ptr);
      else
        ((&dtd->pool)->ptr = (&dtd->pool)->start);
      elementType->prefix = prefix;

    }
  }
  return 1;
}

static ATTRIBUTE_ID *
getAttributeId(XML_Parser parser, const ENCODING *enc,
               const char *start, const char *end)
{
  DTD * const dtd = (parser->m_dtd);
  ATTRIBUTE_ID *id;
  const XML_Char *name;
  if (!(((&dtd->pool)->ptr == (&dtd->pool)->end && !poolGrow(&dtd->pool)) ? 0 : ((*((&dtd->pool)->ptr)++ = '\0'), 1)))
    return 
# 5500 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
          ((void *)0)
# 5500 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
              ;
  name = poolStoreString(&dtd->pool, enc, start, end);
  if (!name)
    return 
# 5503 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
          ((void *)0)
# 5503 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
              ;

  ++name;
  id = (ATTRIBUTE_ID *)lookup(parser, &dtd->attributeIds, name, sizeof(ATTRIBUTE_ID));
  if (!id)
    return 
# 5508 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
          ((void *)0)
# 5508 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
              ;
  if (id->name != name)
    ((&dtd->pool)->ptr = (&dtd->pool)->start);
  else {
    ((&dtd->pool)->start = (&dtd->pool)->ptr);
    if (!(parser->m_ns))
      ;
    else if (name[0] == 0x78
        && name[1] == 0x6D
        && name[2] == 0x6C
        && name[3] == 0x6E
        && name[4] == 0x73
        && (name[5] == '\0' || name[5] == 0x3A)) {
      if (name[5] == '\0')
        id->prefix = &dtd->defaultPrefix;
      else
        id->prefix = (PREFIX *)lookup(parser, &dtd->prefixes, name + 6, sizeof(PREFIX));
      id->xmlns = ((XML_Bool) 1);
    }
    else {
      int i;
      for (i = 0; name[i]; i++) {

        if (name[i] == 0x3A) {
          int j;
          for (j = 0; j < i; j++) {
            if (!(((&dtd->pool)->ptr == (&dtd->pool)->end && !poolGrow(&dtd->pool)) ? 0 : ((*((&dtd->pool)->ptr)++ = name[j]), 1)))
              return 
# 5535 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                    ((void *)0)
# 5535 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                        ;
          }
          if (!(((&dtd->pool)->ptr == (&dtd->pool)->end && !poolGrow(&dtd->pool)) ? 0 : ((*((&dtd->pool)->ptr)++ = '\0'), 1)))
            return 
# 5538 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                  ((void *)0)
# 5538 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                      ;
          id->prefix = (PREFIX *)lookup(parser, &dtd->prefixes, ((&dtd->pool)->start),
                                        sizeof(PREFIX));
          if (!id->prefix)
            return 
# 5542 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                  ((void *)0)
# 5542 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                      ;
          if (id->prefix->name == ((&dtd->pool)->start))
            ((&dtd->pool)->start = (&dtd->pool)->ptr);
          else
            ((&dtd->pool)->ptr = (&dtd->pool)->start);
          break;
        }
      }
    }
  }
  return id;
}



static const XML_Char *
getContext(XML_Parser parser)
{
  DTD * const dtd = (parser->m_dtd);
  HASH_TABLE_ITER iter;
  XML_Bool needSep = ((XML_Bool) 0);

  if (dtd->defaultPrefix.binding) {
    int i;
    int len;
    if (!(((&(parser->m_tempPool))->ptr == (&(parser->m_tempPool))->end && !poolGrow(&(parser->m_tempPool))) ? 0 : ((*((&(parser->m_tempPool))->ptr)++ = 0x3D), 1)))
      return 
# 5568 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
            ((void *)0)
# 5568 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                ;
    len = dtd->defaultPrefix.binding->uriLen;
    if ((parser->m_namespaceSeparator))
      len--;
    for (i = 0; i < len; i++)
      if (!(((&(parser->m_tempPool))->ptr == (&(parser->m_tempPool))->end && !poolGrow(&(parser->m_tempPool))) ? 0 : ((*((&(parser->m_tempPool))->ptr)++ = dtd->defaultPrefix.binding->uri[i]), 1)))
        return 
# 5574 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
              ((void *)0)
# 5574 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                  ;
    needSep = ((XML_Bool) 1);
  }

  hashTableIterInit(&iter, &(dtd->prefixes));
  for (;;) {
    int i;
    int len;
    const XML_Char *s;
    PREFIX *prefix = (PREFIX *)hashTableIterNext(&iter);
    if (!prefix)
      break;
    if (!prefix->binding)
      continue;
    if (needSep && !(((&(parser->m_tempPool))->ptr == (&(parser->m_tempPool))->end && !poolGrow(&(parser->m_tempPool))) ? 0 : ((*((&(parser->m_tempPool))->ptr)++ = 0x0C), 1)))
      return 
# 5589 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
            ((void *)0)
# 5589 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                ;
    for (s = prefix->name; *s; s++)
      if (!(((&(parser->m_tempPool))->ptr == (&(parser->m_tempPool))->end && !poolGrow(&(parser->m_tempPool))) ? 0 : ((*((&(parser->m_tempPool))->ptr)++ = *s), 1)))
        return 
# 5592 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
              ((void *)0)
# 5592 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                  ;
    if (!(((&(parser->m_tempPool))->ptr == (&(parser->m_tempPool))->end && !poolGrow(&(parser->m_tempPool))) ? 0 : ((*((&(parser->m_tempPool))->ptr)++ = 0x3D), 1)))
      return 
# 5594 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
            ((void *)0)
# 5594 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                ;
    len = prefix->binding->uriLen;
    if ((parser->m_namespaceSeparator))
      len--;
    for (i = 0; i < len; i++)
      if (!(((&(parser->m_tempPool))->ptr == (&(parser->m_tempPool))->end && !poolGrow(&(parser->m_tempPool))) ? 0 : ((*((&(parser->m_tempPool))->ptr)++ = prefix->binding->uri[i]), 1)))
        return 
# 5600 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
              ((void *)0)
# 5600 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                  ;
    needSep = ((XML_Bool) 1);
  }


  hashTableIterInit(&iter, &(dtd->generalEntities));
  for (;;) {
    const XML_Char *s;
    ENTITY *e = (ENTITY *)hashTableIterNext(&iter);
    if (!e)
      break;
    if (!e->open)
      continue;
    if (needSep && !(((&(parser->m_tempPool))->ptr == (&(parser->m_tempPool))->end && !poolGrow(&(parser->m_tempPool))) ? 0 : ((*((&(parser->m_tempPool))->ptr)++ = 0x0C), 1)))
      return 
# 5614 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
            ((void *)0)
# 5614 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                ;
    for (s = e->name; *s; s++)
      if (!(((&(parser->m_tempPool))->ptr == (&(parser->m_tempPool))->end && !poolGrow(&(parser->m_tempPool))) ? 0 : ((*((&(parser->m_tempPool))->ptr)++ = *s), 1)))
        return 0;
    needSep = ((XML_Bool) 1);
  }

  if (!(((&(parser->m_tempPool))->ptr == (&(parser->m_tempPool))->end && !poolGrow(&(parser->m_tempPool))) ? 0 : ((*((&(parser->m_tempPool))->ptr)++ = '\0'), 1)))
    return 
# 5622 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
          ((void *)0)
# 5622 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
              ;
  return (parser->m_tempPool).start;
}

static XML_Bool
setContext(XML_Parser parser, const XML_Char *context)
{
  DTD * const dtd = (parser->m_dtd);
  const XML_Char *s = context;

  while (*context != '\0') {
    if (*s == 0x0C || *s == '\0') {
      ENTITY *e;
      if (!(((&(parser->m_tempPool))->ptr == (&(parser->m_tempPool))->end && !poolGrow(&(parser->m_tempPool))) ? 0 : ((*((&(parser->m_tempPool))->ptr)++ = '\0'), 1)))
        return ((XML_Bool) 0);
      e = (ENTITY *)lookup(parser, &dtd->generalEntities, ((&(parser->m_tempPool))->start), 0);
      if (e)
        e->open = ((XML_Bool) 1);
      if (*s != '\0')
        s++;
      context = s;
      ((&(parser->m_tempPool))->ptr = (&(parser->m_tempPool))->start);
    }
    else if (*s == 0x3D) {
      PREFIX *prefix;
      if (((&(parser->m_tempPool))->ptr - (&(parser->m_tempPool))->start) == 0)
        prefix = &dtd->defaultPrefix;
      else {
        if (!(((&(parser->m_tempPool))->ptr == (&(parser->m_tempPool))->end && !poolGrow(&(parser->m_tempPool))) ? 0 : ((*((&(parser->m_tempPool))->ptr)++ = '\0'), 1)))
          return ((XML_Bool) 0);
        prefix = (PREFIX *)lookup(parser, &dtd->prefixes, ((&(parser->m_tempPool))->start),
                                  sizeof(PREFIX));
        if (!prefix)
          return ((XML_Bool) 0);
        if (prefix->name == ((&(parser->m_tempPool))->start)) {
          prefix->name = poolCopyString(&dtd->pool, prefix->name);
          if (!prefix->name)
            return ((XML_Bool) 0);
        }
        ((&(parser->m_tempPool))->ptr = (&(parser->m_tempPool))->start);
      }
      for (context = s + 1;
           *context != 0x0C && *context != '\0';
           context++)
        if (!(((&(parser->m_tempPool))->ptr == (&(parser->m_tempPool))->end && !poolGrow(&(parser->m_tempPool))) ? 0 : ((*((&(parser->m_tempPool))->ptr)++ = *context), 1)))
          return ((XML_Bool) 0);
      if (!(((&(parser->m_tempPool))->ptr == (&(parser->m_tempPool))->end && !poolGrow(&(parser->m_tempPool))) ? 0 : ((*((&(parser->m_tempPool))->ptr)++ = '\0'), 1)))
        return ((XML_Bool) 0);
      if (addBinding(parser, prefix, 
# 5670 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                                    ((void *)0)
# 5670 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                                        , ((&(parser->m_tempPool))->start),
                     &(parser->m_inheritedBindings)) != XML_ERROR_NONE)
        return ((XML_Bool) 0);
      ((&(parser->m_tempPool))->ptr = (&(parser->m_tempPool))->start);
      if (*context != '\0')
        ++context;
      s = context;
    }
    else {
      if (!(((&(parser->m_tempPool))->ptr == (&(parser->m_tempPool))->end && !poolGrow(&(parser->m_tempPool))) ? 0 : ((*((&(parser->m_tempPool))->ptr)++ = *s), 1)))
        return ((XML_Bool) 0);
      s++;
    }
  }
  return ((XML_Bool) 1);
}

static void
normalizePublicId(XML_Char *publicId)
{
  XML_Char *p = publicId;
  XML_Char *s;
  for (s = publicId; *s; s++) {
    switch (*s) {
    case 0x20:
    case 0xD:
    case 0xA:
      if (p != publicId && p[-1] != 0x20)
        *p++ = 0x20;
      break;
    default:
      *p++ = *s;
    }
  }
  if (p != publicId && p[-1] == 0x20)
    --p;
  *p = '\0';
}

static DTD *
dtdCreate(const XML_Memory_Handling_Suite *ms)
{
  DTD *p = (DTD *)ms->malloc_fcn(sizeof(DTD));
  if (p == 
# 5713 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
          ((void *)0)
# 5713 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
              )
    return p;
  poolInit(&(p->pool), ms);
  poolInit(&(p->entityValuePool), ms);
  hashTableInit(&(p->generalEntities), ms);
  hashTableInit(&(p->elementTypes), ms);
  hashTableInit(&(p->attributeIds), ms);
  hashTableInit(&(p->prefixes), ms);

  p->paramEntityRead = ((XML_Bool) 0);
  hashTableInit(&(p->paramEntities), ms);

  p->defaultPrefix.name = 
# 5725 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                         ((void *)0)
# 5725 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                             ;
  p->defaultPrefix.binding = 
# 5726 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                            ((void *)0)
# 5726 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                                ;

  p->in_eldecl = ((XML_Bool) 0);
  p->scaffIndex = 
# 5729 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                 ((void *)0)
# 5729 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                     ;
  p->scaffold = 
# 5730 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
               ((void *)0)
# 5730 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                   ;
  p->scaffLevel = 0;
  p->scaffSize = 0;
  p->scaffCount = 0;
  p->contentStringLen = 0;

  p->keepProcessing = ((XML_Bool) 1);
  p->hasParamEntityRefs = ((XML_Bool) 0);
  p->standalone = ((XML_Bool) 0);
  return p;
}

static void
dtdReset(DTD *p, const XML_Memory_Handling_Suite *ms)
{
  HASH_TABLE_ITER iter;
  hashTableIterInit(&iter, &(p->elementTypes));
  for (;;) {
    ELEMENT_TYPE *e = (ELEMENT_TYPE *)hashTableIterNext(&iter);
    if (!e)
      break;
    if (e->allocDefaultAtts != 0)
      ms->free_fcn(e->defaultAtts);
  }
  hashTableClear(&(p->generalEntities));

  p->paramEntityRead = ((XML_Bool) 0);
  hashTableClear(&(p->paramEntities));

  hashTableClear(&(p->elementTypes));
  hashTableClear(&(p->attributeIds));
  hashTableClear(&(p->prefixes));
  poolClear(&(p->pool));
  poolClear(&(p->entityValuePool));
  p->defaultPrefix.name = 
# 5764 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                         ((void *)0)
# 5764 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                             ;
  p->defaultPrefix.binding = 
# 5765 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                            ((void *)0)
# 5765 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                                ;

  p->in_eldecl = ((XML_Bool) 0);

  ms->free_fcn(p->scaffIndex);
  p->scaffIndex = 
# 5770 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                 ((void *)0)
# 5770 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                     ;
  ms->free_fcn(p->scaffold);
  p->scaffold = 
# 5772 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
               ((void *)0)
# 5772 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                   ;

  p->scaffLevel = 0;
  p->scaffSize = 0;
  p->scaffCount = 0;
  p->contentStringLen = 0;

  p->keepProcessing = ((XML_Bool) 1);
  p->hasParamEntityRefs = ((XML_Bool) 0);
  p->standalone = ((XML_Bool) 0);
}

static void
dtdDestroy(DTD *p, XML_Bool isDocEntity, const XML_Memory_Handling_Suite *ms)
{
  HASH_TABLE_ITER iter;
  hashTableIterInit(&iter, &(p->elementTypes));
  for (;;) {
    ELEMENT_TYPE *e = (ELEMENT_TYPE *)hashTableIterNext(&iter);
    if (!e)
      break;
    if (e->allocDefaultAtts != 0)
      ms->free_fcn(e->defaultAtts);
  }
  hashTableDestroy(&(p->generalEntities));

  hashTableDestroy(&(p->paramEntities));

  hashTableDestroy(&(p->elementTypes));
  hashTableDestroy(&(p->attributeIds));
  hashTableDestroy(&(p->prefixes));
  poolDestroy(&(p->pool));
  poolDestroy(&(p->entityValuePool));
  if (isDocEntity) {
    ms->free_fcn(p->scaffIndex);
    ms->free_fcn(p->scaffold);
  }
  ms->free_fcn(p);
}




static int
dtdCopy(XML_Parser oldParser, DTD *newDtd, const DTD *oldDtd, const XML_Memory_Handling_Suite *ms)
{
  HASH_TABLE_ITER iter;



  hashTableIterInit(&iter, &(oldDtd->prefixes));
  for (;;) {
    const XML_Char *name;
    const PREFIX *oldP = (PREFIX *)hashTableIterNext(&iter);
    if (!oldP)
      break;
    name = poolCopyString(&(newDtd->pool), oldP->name);
    if (!name)
      return 0;
    if (!lookup(oldParser, &(newDtd->prefixes), name, sizeof(PREFIX)))
      return 0;
  }

  hashTableIterInit(&iter, &(oldDtd->attributeIds));



  for (;;) {
    ATTRIBUTE_ID *newA;
    const XML_Char *name;
    const ATTRIBUTE_ID *oldA = (ATTRIBUTE_ID *)hashTableIterNext(&iter);

    if (!oldA)
      break;

    if (!(((&(newDtd->pool))->ptr == (&(newDtd->pool))->end && !poolGrow(&(newDtd->pool))) ? 0 : ((*((&(newDtd->pool))->ptr)++ = '\0'), 1)))
      return 0;
    name = poolCopyString(&(newDtd->pool), oldA->name);
    if (!name)
      return 0;
    ++name;
    newA = (ATTRIBUTE_ID *)lookup(oldParser, &(newDtd->attributeIds), name,
                                  sizeof(ATTRIBUTE_ID));
    if (!newA)
      return 0;
    newA->maybeTokenized = oldA->maybeTokenized;
    if (oldA->prefix) {
      newA->xmlns = oldA->xmlns;
      if (oldA->prefix == &oldDtd->defaultPrefix)
        newA->prefix = &newDtd->defaultPrefix;
      else
        newA->prefix = (PREFIX *)lookup(oldParser, &(newDtd->prefixes),
                                        oldA->prefix->name, 0);
    }
  }



  hashTableIterInit(&iter, &(oldDtd->elementTypes));

  for (;;) {
    int i;
    ELEMENT_TYPE *newE;
    const XML_Char *name;
    const ELEMENT_TYPE *oldE = (ELEMENT_TYPE *)hashTableIterNext(&iter);
    if (!oldE)
      break;
    name = poolCopyString(&(newDtd->pool), oldE->name);
    if (!name)
      return 0;
    newE = (ELEMENT_TYPE *)lookup(oldParser, &(newDtd->elementTypes), name,
                                  sizeof(ELEMENT_TYPE));
    if (!newE)
      return 0;
    if (oldE->nDefaultAtts) {
      newE->defaultAtts = (DEFAULT_ATTRIBUTE *)
          ms->malloc_fcn(oldE->nDefaultAtts * sizeof(DEFAULT_ATTRIBUTE));
      if (!newE->defaultAtts) {
        ms->free_fcn(newE);
        return 0;
      }
    }
    if (oldE->idAtt)
      newE->idAtt = (ATTRIBUTE_ID *)
          lookup(oldParser, &(newDtd->attributeIds), oldE->idAtt->name, 0);
    newE->allocDefaultAtts = newE->nDefaultAtts = oldE->nDefaultAtts;
    if (oldE->prefix)
      newE->prefix = (PREFIX *)lookup(oldParser, &(newDtd->prefixes),
                                      oldE->prefix->name, 0);
    for (i = 0; i < newE->nDefaultAtts; i++) {
      newE->defaultAtts[i].id = (ATTRIBUTE_ID *)
          lookup(oldParser, &(newDtd->attributeIds), oldE->defaultAtts[i].id->name, 0);
      newE->defaultAtts[i].isCdata = oldE->defaultAtts[i].isCdata;
      if (oldE->defaultAtts[i].value) {
        newE->defaultAtts[i].value
            = poolCopyString(&(newDtd->pool), oldE->defaultAtts[i].value);
        if (!newE->defaultAtts[i].value)
          return 0;
      }
      else
        newE->defaultAtts[i].value = 
# 5912 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                                    ((void *)0)
# 5912 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                                        ;
    }
  }


  if (!copyEntityTable(oldParser,
                       &(newDtd->generalEntities),
                       &(newDtd->pool),
                       &(oldDtd->generalEntities)))
      return 0;


  if (!copyEntityTable(oldParser,
                       &(newDtd->paramEntities),
                       &(newDtd->pool),
                       &(oldDtd->paramEntities)))
      return 0;
  newDtd->paramEntityRead = oldDtd->paramEntityRead;


  newDtd->keepProcessing = oldDtd->keepProcessing;
  newDtd->hasParamEntityRefs = oldDtd->hasParamEntityRefs;
  newDtd->standalone = oldDtd->standalone;


  newDtd->in_eldecl = oldDtd->in_eldecl;
  newDtd->scaffold = oldDtd->scaffold;
  newDtd->contentStringLen = oldDtd->contentStringLen;
  newDtd->scaffSize = oldDtd->scaffSize;
  newDtd->scaffLevel = oldDtd->scaffLevel;
  newDtd->scaffIndex = oldDtd->scaffIndex;

  return 1;
}

static int
copyEntityTable(XML_Parser oldParser,
                HASH_TABLE *newTable,
                STRING_POOL *newPool,
                const HASH_TABLE *oldTable)
{
  HASH_TABLE_ITER iter;
  const XML_Char *cachedOldBase = 
# 5954 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                                 ((void *)0)
# 5954 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                                     ;
  const XML_Char *cachedNewBase = 
# 5955 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                                 ((void *)0)
# 5955 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                                     ;

  hashTableIterInit(&iter, oldTable);

  for (;;) {
    ENTITY *newE;
    const XML_Char *name;
    const ENTITY *oldE = (ENTITY *)hashTableIterNext(&iter);
    if (!oldE)
      break;
    name = poolCopyString(newPool, oldE->name);
    if (!name)
      return 0;
    newE = (ENTITY *)lookup(oldParser, newTable, name, sizeof(ENTITY));
    if (!newE)
      return 0;
    if (oldE->systemId) {
      const XML_Char *tem = poolCopyString(newPool, oldE->systemId);
      if (!tem)
        return 0;
      newE->systemId = tem;
      if (oldE->base) {
        if (oldE->base == cachedOldBase)
          newE->base = cachedNewBase;
        else {
          cachedOldBase = oldE->base;
          tem = poolCopyString(newPool, cachedOldBase);
          if (!tem)
            return 0;
          cachedNewBase = newE->base = tem;
        }
      }
      if (oldE->publicId) {
        tem = poolCopyString(newPool, oldE->publicId);
        if (!tem)
          return 0;
        newE->publicId = tem;
      }
    }
    else {
      const XML_Char *tem = poolCopyStringN(newPool, oldE->textPtr,
                                            oldE->textLen);
      if (!tem)
        return 0;
      newE->textPtr = tem;
      newE->textLen = oldE->textLen;
    }
    if (oldE->notation) {
      const XML_Char *tem = poolCopyString(newPool, oldE->notation);
      if (!tem)
        return 0;
      newE->notation = tem;
    }
    newE->is_param = oldE->is_param;
    newE->is_internal = oldE->is_internal;
  }
  return 1;
}



static XML_Bool
keyeq(KEY s1, KEY s2)
{
  for (; *s1 == *s2; s1++, s2++)
    if (*s1 == 0)
      return ((XML_Bool) 1);
  return ((XML_Bool) 0);
}

static unsigned long
hash(XML_Parser parser, KEY s)
{
  unsigned long h = (parser->m_hash_secret_salt);
  while (*s)
    h = (((h) * 0xF4243) ^ (unsigned char)(*s++));
  return h;
}

static NAMED *
lookup(XML_Parser parser, HASH_TABLE *table, KEY name, size_t createSize)
{
  size_t i;
  if (table->size == 0) {
    size_t tsize;
    if (!createSize)
      return 
# 6041 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
            ((void *)0)
# 6041 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                ;
    table->power = 6;

    table->size = (size_t)1 << 6;
    tsize = table->size * sizeof(NAMED *);
    table->v = (NAMED **)table->mem->malloc_fcn(tsize);
    if (!table->v) {
      table->size = 0;
      return 
# 6049 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
            ((void *)0)
# 6049 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                ;
    }
    memset(table->v, 0, tsize);
    i = hash(parser, name) & ((unsigned long)table->size - 1);
  }
  else {
    unsigned long h = hash(parser, name);
    unsigned long mask = (unsigned long)table->size - 1;
    unsigned char step = 0;
    i = h & mask;
    while (table->v[i]) {
      if (keyeq(name, table->v[i]->name))
        return table->v[i];
      if (!step)
        step = ((unsigned char)((((((h) & ~(mask)) >> ((table->power) - 1)) & ((mask) >> 2))) | 1));
      i < step ? (i += table->size - step) : (i -= step);
    }
    if (!createSize)
      return 
# 6067 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
            ((void *)0)
# 6067 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                ;


    if (table->used >> (table->power - 1)) {
      unsigned char newPower = table->power + 1;
      size_t newSize = (size_t)1 << newPower;
      unsigned long newMask = (unsigned long)newSize - 1;
      size_t tsize = newSize * sizeof(NAMED *);
      NAMED **newV = (NAMED **)table->mem->malloc_fcn(tsize);
      if (!newV)
        return 
# 6077 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
              ((void *)0)
# 6077 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                  ;
      memset(newV, 0, tsize);
      for (i = 0; i < table->size; i++)
        if (table->v[i]) {
          unsigned long newHash = hash(parser, table->v[i]->name);
          size_t j = newHash & newMask;
          step = 0;
          while (newV[j]) {
            if (!step)
              step = ((unsigned char)((((((newHash) & ~(newMask)) >> ((newPower) - 1)) & ((newMask) >> 2))) | 1));
            j < step ? (j += newSize - step) : (j -= step);
          }
          newV[j] = table->v[i];
        }
      table->mem->free_fcn(table->v);
      table->v = newV;
      table->power = newPower;
      table->size = newSize;
      i = h & newMask;
      step = 0;
      while (table->v[i]) {
        if (!step)
          step = ((unsigned char)((((((h) & ~(newMask)) >> ((newPower) - 1)) & ((newMask) >> 2))) | 1));
        i < step ? (i += newSize - step) : (i -= step);
      }
    }
  }
  table->v[i] = (NAMED *)table->mem->malloc_fcn(createSize);
  if (!table->v[i])
    return 
# 6106 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
          ((void *)0)
# 6106 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
              ;
  memset(table->v[i], 0, createSize);
  table->v[i]->name = name;
  (table->used)++;
  return table->v[i];
}

static void
hashTableClear(HASH_TABLE *table)
{
  size_t i;
  for (i = 0; i < table->size; i++) {
    table->mem->free_fcn(table->v[i]);
    table->v[i] = 
# 6119 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                 ((void *)0)
# 6119 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                     ;
  }
  table->used = 0;
}

static void
hashTableDestroy(HASH_TABLE *table)
{
  size_t i;
  for (i = 0; i < table->size; i++)
    table->mem->free_fcn(table->v[i]);
  table->mem->free_fcn(table->v);
}

static void
hashTableInit(HASH_TABLE *p, const XML_Memory_Handling_Suite *ms)
{
  p->power = 0;
  p->size = 0;
  p->used = 0;
  p->v = 
# 6139 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
        ((void *)0)
# 6139 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
            ;
  p->mem = ms;
}

static void
hashTableIterInit(HASH_TABLE_ITER *iter, const HASH_TABLE *table)
{
  iter->p = table->v;
  iter->end = iter->p + table->size;
}

static NAMED *
hashTableIterNext(HASH_TABLE_ITER *iter)
{
  while (iter->p != iter->end) {
    NAMED *tem = *(iter->p)++;
    if (tem)
      return tem;
  }
  return 
# 6158 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
        ((void *)0)
# 6158 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
            ;
}

static void
poolInit(STRING_POOL *pool, const XML_Memory_Handling_Suite *ms)
{
  pool->blocks = 
# 6164 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                ((void *)0)
# 6164 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                    ;
  pool->freeBlocks = 
# 6165 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                    ((void *)0)
# 6165 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                        ;
  pool->start = 
# 6166 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
               ((void *)0)
# 6166 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                   ;
  pool->ptr = 
# 6167 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
             ((void *)0)
# 6167 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                 ;
  pool->end = 
# 6168 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
             ((void *)0)
# 6168 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                 ;
  pool->mem = ms;
}

static void
poolClear(STRING_POOL *pool)
{
  if (!pool->freeBlocks)
    pool->freeBlocks = pool->blocks;
  else {
    BLOCK *p = pool->blocks;
    while (p) {
      BLOCK *tem = p->next;
      p->next = pool->freeBlocks;
      pool->freeBlocks = p;
      p = tem;
    }
  }
  pool->blocks = 
# 6186 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                ((void *)0)
# 6186 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                    ;
  pool->start = 
# 6187 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
               ((void *)0)
# 6187 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                   ;
  pool->ptr = 
# 6188 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
             ((void *)0)
# 6188 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                 ;
  pool->end = 
# 6189 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
             ((void *)0)
# 6189 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                 ;
}

static void
poolDestroy(STRING_POOL *pool)
{
  BLOCK *p = pool->blocks;
  while (p) {
    BLOCK *tem = p->next;
    pool->mem->free_fcn(p);
    p = tem;
  }
  p = pool->freeBlocks;
  while (p) {
    BLOCK *tem = p->next;
    pool->mem->free_fcn(p);
    p = tem;
  }
}

static XML_Char *
poolAppend(STRING_POOL *pool, const ENCODING *enc,
           const char *ptr, const char *end)
{
  if (!pool->ptr && !poolGrow(pool))
    return 
# 6214 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
          ((void *)0)
# 6214 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
              ;
  for (;;) {
    const enum XML_Convert_Result convert_res = (((enc)->utf8Convert)(enc, &ptr, end, (ICHAR **)&(pool->ptr), (ICHAR *)pool->end));
    if ((convert_res == XML_CONVERT_COMPLETED) || (convert_res == XML_CONVERT_INPUT_INCOMPLETE))
      break;
    if (!poolGrow(pool))
      return 
# 6220 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
            ((void *)0)
# 6220 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                ;
  }
  return pool->start;
}

static const XML_Char *
poolCopyString(STRING_POOL *pool, const XML_Char *s)
{
  do {
    if (!(((pool)->ptr == (pool)->end && !poolGrow(pool)) ? 0 : ((*((pool)->ptr)++ = *s), 1)))
      return 
# 6230 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
            ((void *)0)
# 6230 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                ;
  } while (*s++);
  s = pool->start;
  ((pool)->start = (pool)->ptr);
  return s;
}

static const XML_Char *
poolCopyStringN(STRING_POOL *pool, const XML_Char *s, int n)
{
  if (!pool->ptr && !poolGrow(pool))
    return 
# 6241 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
          ((void *)0)
# 6241 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
              ;
  for (; n > 0; --n, s++) {
    if (!(((pool)->ptr == (pool)->end && !poolGrow(pool)) ? 0 : ((*((pool)->ptr)++ = *s), 1)))
      return 
# 6244 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
            ((void *)0)
# 6244 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                ;
  }
  s = pool->start;
  ((pool)->start = (pool)->ptr);
  return s;
}

static const XML_Char *
poolAppendString(STRING_POOL *pool, const XML_Char *s)
{
  while (*s) {
    if (!(((pool)->ptr == (pool)->end && !poolGrow(pool)) ? 0 : ((*((pool)->ptr)++ = *s), 1)))
      return 
# 6256 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
            ((void *)0)
# 6256 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                ;
    s++;
  }
  return pool->start;
}

static XML_Char *
poolStoreString(STRING_POOL *pool, const ENCODING *enc,
                const char *ptr, const char *end)
{
  if (!poolAppend(pool, enc, ptr, end))
    return 
# 6267 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
          ((void *)0)
# 6267 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
              ;
  if (pool->ptr == pool->end && !poolGrow(pool))
    return 
# 6269 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
          ((void *)0)
# 6269 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
              ;
  *(pool->ptr)++ = 0;
  return pool->start;
}

static XML_Bool
poolGrow(STRING_POOL *pool)
{
  if (pool->freeBlocks) {
    if (pool->start == 0) {
      pool->blocks = pool->freeBlocks;
      pool->freeBlocks = pool->freeBlocks->next;
      pool->blocks->next = 
# 6281 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                          ((void *)0)
# 6281 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                              ;
      pool->start = pool->blocks->s;
      pool->end = pool->start + pool->blocks->size;
      pool->ptr = pool->start;
      return ((XML_Bool) 1);
    }
    if (pool->end - pool->start < pool->freeBlocks->size) {
      BLOCK *tem = pool->freeBlocks->next;
      pool->freeBlocks->next = pool->blocks;
      pool->blocks = pool->freeBlocks;
      pool->freeBlocks = tem;
      memcpy(pool->blocks->s, pool->start,
             (pool->end - pool->start) * sizeof(XML_Char));
      pool->ptr = pool->blocks->s + (pool->ptr - pool->start);
      pool->start = pool->blocks->s;
      pool->end = pool->start + pool->blocks->size;
      return ((XML_Bool) 1);
    }
  }
  if (pool->blocks && pool->start == pool->blocks->s) {
    BLOCK *temp;
    int blockSize = (int)((unsigned)(pool->end - pool->start)*2U);

    if (blockSize < 0)
      return ((XML_Bool) 0);

    temp = (BLOCK *)
      pool->mem->realloc_fcn(pool->blocks,
                             (
# 6309 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                             __builtin_offsetof (
# 6309 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                             BLOCK
# 6309 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                             , 
# 6309 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                             s
# 6309 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                             )
                              
# 6310 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                             + blockSize * sizeof(XML_Char)));
    if (temp == 
# 6311 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
               ((void *)0)
# 6311 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                   )
      return ((XML_Bool) 0);
    pool->blocks = temp;
    pool->blocks->size = blockSize;
    pool->ptr = pool->blocks->s + (pool->ptr - pool->start);
    pool->start = pool->blocks->s;
    pool->end = pool->start + blockSize;
  }
  else {
    BLOCK *tem;
    int blockSize = (int)(pool->end - pool->start);

    if (blockSize < 0)
      return ((XML_Bool) 0);

    if (blockSize < 1024)
      blockSize = 1024;
    else
      blockSize *= 2;
    tem = (BLOCK *)pool->mem->malloc_fcn(
# 6330 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                                        __builtin_offsetof (
# 6330 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                                        BLOCK
# 6330 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                                        , 
# 6330 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                                        s
# 6330 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                                        )
                                        
# 6331 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                                       + blockSize * sizeof(XML_Char));
    if (!tem)
      return ((XML_Bool) 0);
    tem->size = blockSize;
    tem->next = pool->blocks;
    pool->blocks = tem;
    if (pool->ptr != pool->start)
      memcpy(tem->s, pool->start,
             (pool->ptr - pool->start) * sizeof(XML_Char));
    pool->ptr = tem->s + (pool->ptr - pool->start);
    pool->start = tem->s;
    pool->end = tem->s + blockSize;
  }
  return ((XML_Bool) 1);
}

static int
nextScaffoldPart(XML_Parser parser)
{
  DTD * const dtd = (parser->m_dtd);
  CONTENT_SCAFFOLD * me;
  int next;

  if (!dtd->scaffIndex) {
    dtd->scaffIndex = (int *)(parser->m_mem.malloc_fcn(((parser->m_groupSize) * sizeof(int))));
    if (!dtd->scaffIndex)
      return -1;
    dtd->scaffIndex[0] = 0;
  }

  if (dtd->scaffCount >= dtd->scaffSize) {
    CONTENT_SCAFFOLD *temp;
    if (dtd->scaffold) {
      temp = (CONTENT_SCAFFOLD *)
        (parser->m_mem.realloc_fcn((dtd->scaffold),(dtd->scaffSize * 2 * sizeof(CONTENT_SCAFFOLD))));
      if (temp == 
# 6366 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                 ((void *)0)
# 6366 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                     )
        return -1;
      dtd->scaffSize *= 2;
    }
    else {
      temp = (CONTENT_SCAFFOLD *)(parser->m_mem.malloc_fcn((32 * sizeof(CONTENT_SCAFFOLD))))
                                                                   ;
      if (temp == 
# 6373 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                 ((void *)0)
# 6373 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                     )
        return -1;
      dtd->scaffSize = 32;
    }
    dtd->scaffold = temp;
  }
  next = dtd->scaffCount++;
  me = &dtd->scaffold[next];
  if (dtd->scaffLevel) {
    CONTENT_SCAFFOLD *parent = &dtd->scaffold[dtd->scaffIndex[dtd->scaffLevel-1]];
    if (parent->lastchild) {
      dtd->scaffold[parent->lastchild].nextsib = next;
    }
    if (!parent->childcnt)
      parent->firstchild = next;
    parent->lastchild = next;
    parent->childcnt++;
  }
  me->firstchild = me->lastchild = me->childcnt = me->nextsib = 0;
  return next;
}

static void
build_node(XML_Parser parser,
           int src_node,
           XML_Content *dest,
           XML_Content **contpos,
           XML_Char **strpos)
{
  DTD * const dtd = (parser->m_dtd);
  dest->type = dtd->scaffold[src_node].type;
  dest->quant = dtd->scaffold[src_node].quant;
  if (dest->type == XML_CTYPE_NAME) {
    const XML_Char *src;
    dest->name = *strpos;
    src = dtd->scaffold[src_node].name;
    for (;;) {
      *(*strpos)++ = *src;
      if (!*src)
        break;
      src++;
    }
    dest->numchildren = 0;
    dest->children = 
# 6416 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                    ((void *)0)
# 6416 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                        ;
  }
  else {
    unsigned int i;
    int cn;
    dest->numchildren = dtd->scaffold[src_node].childcnt;
    dest->children = *contpos;
    *contpos += dest->numchildren;
    for (i = 0, cn = dtd->scaffold[src_node].firstchild;
         i < dest->numchildren;
         i++, cn = dtd->scaffold[cn].nextsib) {
      build_node(parser, cn, &(dest->children[i]), contpos, strpos);
    }
    dest->name = 
# 6429 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
                ((void *)0)
# 6429 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                    ;
  }
}

static XML_Content *
build_model (XML_Parser parser)
{
  DTD * const dtd = (parser->m_dtd);
  XML_Content *ret;
  XML_Content *cpos;
  XML_Char * str;
  int allocsize = (dtd->scaffCount * sizeof(XML_Content)
                   + (dtd->contentStringLen * sizeof(XML_Char)));

  ret = (XML_Content *)(parser->m_mem.malloc_fcn((allocsize)));
  if (!ret)
    return 
# 6445 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
          ((void *)0)
# 6445 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
              ;

  str = (XML_Char *) (&ret[dtd->scaffCount]);
  cpos = &ret[1];

  build_node(parser, 0, ret, &cpos, &str);
  return ret;
}

static ELEMENT_TYPE *
getElementType(XML_Parser parser,
               const ENCODING *enc,
               const char *ptr,
               const char *end)
{
  DTD * const dtd = (parser->m_dtd);
  const XML_Char *name = poolStoreString(&dtd->pool, enc, ptr, end);
  ELEMENT_TYPE *ret;

  if (!name)
    return 
# 6465 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
          ((void *)0)
# 6465 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
              ;
  ret = (ELEMENT_TYPE *) lookup(parser, &dtd->elementTypes, name, sizeof(ELEMENT_TYPE));
  if (!ret)
    return 
# 6468 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
          ((void *)0)
# 6468 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
              ;
  if (ret->name != name)
    ((&dtd->pool)->ptr = (&dtd->pool)->start);
  else {
    ((&dtd->pool)->start = (&dtd->pool)->ptr);
    if (!setElementTypePrefix(parser, ret))
      return 
# 6474 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c" 3 4
            ((void *)0)
# 6474 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlparse.c"
                ;
  }
  return ret;
}
