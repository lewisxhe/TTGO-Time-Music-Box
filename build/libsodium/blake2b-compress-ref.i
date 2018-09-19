# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_generichash/blake2b/ref/blake2b-compress-ref.c"
# 1 "D:\\ESP32\\esp-idf-v3.1-rc1\\ESP32_PIC_A2DP\\build\\libsodium//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_generichash/blake2b/ref/blake2b-compress-ref.c"

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
# 3 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_generichash/blake2b/ref/blake2b-compress-ref.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h" 1
# 10 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h"
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


# 4 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_generichash/blake2b/ref/blake2b-compress-ref.c" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_generichash/blake2b/ref/blake2.h" 1
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_generichash/blake2b/ref/blake2.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_generichash/blake2b/ref/blake2.h" 2


# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_generichash_blake2b.h" 1



# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 5 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_generichash_blake2b.h" 2

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




# 7 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_generichash_blake2b.h" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/export.h" 1
# 9 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_generichash_blake2b.h" 2
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_generichash_blake2b.h"
#pragma pack(push, 1)


typedef __attribute__ ((aligned(64))) struct crypto_generichash_blake2b_state {
    uint64_t h[8];
    uint64_t t[2];
    uint64_t f[2];
    uint8_t buf[2 * 128];
    size_t buflen;
    uint8_t last_node;
} crypto_generichash_blake2b_state;




#pragma pack(pop)



__attribute__ ((visibility ("default")))
size_t crypto_generichash_blake2b_bytes_min(void);


__attribute__ ((visibility ("default")))
size_t crypto_generichash_blake2b_bytes_max(void);


__attribute__ ((visibility ("default")))
size_t crypto_generichash_blake2b_bytes(void);


__attribute__ ((visibility ("default")))
size_t crypto_generichash_blake2b_keybytes_min(void);


__attribute__ ((visibility ("default")))
size_t crypto_generichash_blake2b_keybytes_max(void);


__attribute__ ((visibility ("default")))
size_t crypto_generichash_blake2b_keybytes(void);


__attribute__ ((visibility ("default")))
size_t crypto_generichash_blake2b_saltbytes(void);


__attribute__ ((visibility ("default")))
size_t crypto_generichash_blake2b_personalbytes(void);

__attribute__ ((visibility ("default")))
size_t crypto_generichash_blake2b_statebytes(void);

__attribute__ ((visibility ("default")))
int crypto_generichash_blake2b(unsigned char *out, size_t outlen,
                               const unsigned char *in,
                               unsigned long long inlen,
                               const unsigned char *key, size_t keylen);

__attribute__ ((visibility ("default")))
int crypto_generichash_blake2b_salt_personal(unsigned char *out, size_t outlen,
                                             const unsigned char *in,
                                             unsigned long long inlen,
                                             const unsigned char *key,
                                             size_t keylen,
                                             const unsigned char *salt,
                                             const unsigned char *personal);

__attribute__ ((visibility ("default")))
int crypto_generichash_blake2b_init(crypto_generichash_blake2b_state *state,
                                    const unsigned char *key,
                                    const size_t keylen, const size_t outlen);

__attribute__ ((visibility ("default")))
int crypto_generichash_blake2b_init_salt_personal(crypto_generichash_blake2b_state *state,
                                                  const unsigned char *key,
                                                  const size_t keylen, const size_t outlen,
                                                  const unsigned char *salt,
                                                  const unsigned char *personal);

__attribute__ ((visibility ("default")))
int crypto_generichash_blake2b_update(crypto_generichash_blake2b_state *state,
                                      const unsigned char *in,
                                      unsigned long long inlen);

__attribute__ ((visibility ("default")))
int crypto_generichash_blake2b_final(crypto_generichash_blake2b_state *state,
                                     unsigned char *out,
                                     const size_t outlen);

__attribute__ ((visibility ("default")))
void crypto_generichash_blake2b_keygen(unsigned char k[32U]);



int _crypto_generichash_blake2b_pick_best_implementation(void);
# 24 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_generichash/blake2b/ref/blake2.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/export.h" 1
# 25 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_generichash/blake2b/ref/blake2.h" 2
# 40 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_generichash/blake2b/ref/blake2.h"
enum blake2b_constant {
    BLAKE2B_BLOCKBYTES = 128,
    BLAKE2B_OUTBYTES = 64,
    BLAKE2B_KEYBYTES = 64,
    BLAKE2B_SALTBYTES = 16,
    BLAKE2B_PERSONALBYTES = 16
};




#pragma pack(push, 1)


typedef struct blake2b_param_ {
    uint8_t digest_length;
    uint8_t key_length;
    uint8_t fanout;
    uint8_t depth;
    uint8_t leaf_length[4];
    uint8_t node_offset[8];
    uint8_t node_depth;
    uint8_t inner_length;
    uint8_t reserved[14];
    uint8_t salt[BLAKE2B_SALTBYTES];
    uint8_t personal[BLAKE2B_PERSONALBYTES];
} blake2b_param;

typedef crypto_generichash_blake2b_state blake2b_state;




#pragma pack(pop)



int crypto_generichash_blake2b__init(blake2b_state *S, const uint8_t outlen);
int crypto_generichash_blake2b__init_salt_personal(blake2b_state *S, const uint8_t outlen,
                               const void *personal, const void *salt);
int crypto_generichash_blake2b__init_key(blake2b_state *S, const uint8_t outlen, const void *key,
                     const uint8_t keylen);
int crypto_generichash_blake2b__init_key_salt_personal(blake2b_state *S, const uint8_t outlen,
                                   const void *key, const uint8_t keylen,
                                   const void *salt, const void *personal);
int crypto_generichash_blake2b__init_param(blake2b_state *S, const blake2b_param *P);
int crypto_generichash_blake2b__update(blake2b_state *S, const uint8_t *in, uint64_t inlen);
int crypto_generichash_blake2b__final(blake2b_state *S, uint8_t *out, uint8_t outlen);


int crypto_generichash_blake2b__blake2b(uint8_t *out, const void *in, const void *key, const uint8_t outlen,
            const uint64_t inlen, uint8_t keylen);
int crypto_generichash_blake2b__blake2b_salt_personal(uint8_t *out, const void *in, const void *key,
                          const uint8_t outlen, const uint64_t inlen,
                          uint8_t keylen, const void *salt,
                          const void *personal);

typedef int (*blake2b_compress_fn)(blake2b_state *S,
                                   const uint8_t block[BLAKE2B_BLOCKBYTES]);
int crypto_generichash_blake2b__pick_best_implementation(void);
int blake2b_compress_ref(blake2b_state *S,
                         const uint8_t block[BLAKE2B_BLOCKBYTES]);
int blake2b_compress_ssse3(blake2b_state *S,
                           const uint8_t block[BLAKE2B_BLOCKBYTES]);
int blake2b_compress_sse41(blake2b_state *S,
                           const uint8_t block[BLAKE2B_BLOCKBYTES]);
int blake2b_compress_avx2(blake2b_state *S,
                          const uint8_t block[BLAKE2B_BLOCKBYTES]);
# 6 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_generichash/blake2b/ref/blake2b-compress-ref.c" 2
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
# 7 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_generichash/blake2b/ref/blake2b-compress-ref.c" 2

__attribute__ ((aligned(64)))
static const uint64_t blake2b_IV[8] = {
    0x6a09e667f3bcc908ULL, 0xbb67ae8584caa73bULL, 0x3c6ef372fe94f82bULL,
    0xa54ff53a5f1d36f1ULL, 0x510e527fade682d1ULL, 0x9b05688c2b3e6c1fULL,
    0x1f83d9abfb41bd6bULL, 0x5be0cd19137e2179ULL
};

static const uint8_t blake2b_sigma[12][16] = {
    { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 },
    { 14, 10, 4, 8, 9, 15, 13, 6, 1, 12, 0, 2, 11, 7, 5, 3 },
    { 11, 8, 12, 0, 5, 2, 15, 13, 10, 14, 3, 6, 7, 1, 9, 4 },
    { 7, 9, 3, 1, 13, 12, 11, 14, 2, 6, 5, 10, 4, 0, 15, 8 },
    { 9, 0, 5, 7, 2, 4, 10, 15, 14, 1, 11, 12, 6, 8, 3, 13 },
    { 2, 12, 6, 10, 0, 11, 8, 3, 4, 13, 7, 5, 15, 14, 1, 9 },
    { 12, 5, 1, 15, 14, 13, 4, 10, 0, 7, 6, 3, 9, 2, 8, 11 },
    { 13, 11, 7, 14, 12, 1, 3, 9, 5, 0, 15, 4, 8, 6, 2, 10 },
    { 6, 15, 14, 9, 11, 3, 0, 8, 12, 2, 13, 7, 1, 4, 10, 5 },
    { 10, 2, 8, 4, 7, 6, 1, 5, 15, 11, 9, 14, 3, 12, 13, 0 },
    { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 },
    { 14, 10, 4, 8, 9, 15, 13, 6, 1, 12, 0, 2, 11, 7, 5, 3 }
};

int
blake2b_compress_ref(blake2b_state *S, const uint8_t block[BLAKE2B_BLOCKBYTES])
{
    uint64_t m[16];
    uint64_t v[16];
    int i;

    for (i = 0; i < 16; ++i)
        m[i] = load64_le(block + i * sizeof(m[i]));

    for (i = 0; i < 8; ++i)
        v[i] = S->h[i];

    v[8] = blake2b_IV[0];
    v[9] = blake2b_IV[1];
    v[10] = blake2b_IV[2];
    v[11] = blake2b_IV[3];
    v[12] = S->t[0] ^ blake2b_IV[4];
    v[13] = S->t[1] ^ blake2b_IV[5];
    v[14] = S->f[0] ^ blake2b_IV[6];
    v[15] = S->f[1] ^ blake2b_IV[7];
# 73 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_generichash/blake2b/ref/blake2b-compress-ref.c"
    do { do { v[0] = v[0] + v[4] + m[blake2b_sigma[0][2 * 0 + 0]]; v[12] = rotr64((v[12] ^ v[0]), (32)); v[8] = v[8] + v[12]; v[4] = rotr64((v[4] ^ v[8]), (24)); v[0] = v[0] + v[4] + m[blake2b_sigma[0][2 * 0 + 1]]; v[12] = rotr64((v[12] ^ v[0]), (16)); v[8] = v[8] + v[12]; v[4] = rotr64((v[4] ^ v[8]), (63)); } while (0); do { v[1] = v[1] + v[5] + m[blake2b_sigma[0][2 * 1 + 0]]; v[13] = rotr64((v[13] ^ v[1]), (32)); v[9] = v[9] + v[13]; v[5] = rotr64((v[5] ^ v[9]), (24)); v[1] = v[1] + v[5] + m[blake2b_sigma[0][2 * 1 + 1]]; v[13] = rotr64((v[13] ^ v[1]), (16)); v[9] = v[9] + v[13]; v[5] = rotr64((v[5] ^ v[9]), (63)); } while (0); do { v[2] = v[2] + v[6] + m[blake2b_sigma[0][2 * 2 + 0]]; v[14] = rotr64((v[14] ^ v[2]), (32)); v[10] = v[10] + v[14]; v[6] = rotr64((v[6] ^ v[10]), (24)); v[2] = v[2] + v[6] + m[blake2b_sigma[0][2 * 2 + 1]]; v[14] = rotr64((v[14] ^ v[2]), (16)); v[10] = v[10] + v[14]; v[6] = rotr64((v[6] ^ v[10]), (63)); } while (0); do { v[3] = v[3] + v[7] + m[blake2b_sigma[0][2 * 3 + 0]]; v[15] = rotr64((v[15] ^ v[3]), (32)); v[11] = v[11] + v[15]; v[7] = rotr64((v[7] ^ v[11]), (24)); v[3] = v[3] + v[7] + m[blake2b_sigma[0][2 * 3 + 1]]; v[15] = rotr64((v[15] ^ v[3]), (16)); v[11] = v[11] + v[15]; v[7] = rotr64((v[7] ^ v[11]), (63)); } while (0); do { v[0] = v[0] + v[5] + m[blake2b_sigma[0][2 * 4 + 0]]; v[15] = rotr64((v[15] ^ v[0]), (32)); v[10] = v[10] + v[15]; v[5] = rotr64((v[5] ^ v[10]), (24)); v[0] = v[0] + v[5] + m[blake2b_sigma[0][2 * 4 + 1]]; v[15] = rotr64((v[15] ^ v[0]), (16)); v[10] = v[10] + v[15]; v[5] = rotr64((v[5] ^ v[10]), (63)); } while (0); do { v[1] = v[1] + v[6] + m[blake2b_sigma[0][2 * 5 + 0]]; v[12] = rotr64((v[12] ^ v[1]), (32)); v[11] = v[11] + v[12]; v[6] = rotr64((v[6] ^ v[11]), (24)); v[1] = v[1] + v[6] + m[blake2b_sigma[0][2 * 5 + 1]]; v[12] = rotr64((v[12] ^ v[1]), (16)); v[11] = v[11] + v[12]; v[6] = rotr64((v[6] ^ v[11]), (63)); } while (0); do { v[2] = v[2] + v[7] + m[blake2b_sigma[0][2 * 6 + 0]]; v[13] = rotr64((v[13] ^ v[2]), (32)); v[8] = v[8] + v[13]; v[7] = rotr64((v[7] ^ v[8]), (24)); v[2] = v[2] + v[7] + m[blake2b_sigma[0][2 * 6 + 1]]; v[13] = rotr64((v[13] ^ v[2]), (16)); v[8] = v[8] + v[13]; v[7] = rotr64((v[7] ^ v[8]), (63)); } while (0); do { v[3] = v[3] + v[4] + m[blake2b_sigma[0][2 * 7 + 0]]; v[14] = rotr64((v[14] ^ v[3]), (32)); v[9] = v[9] + v[14]; v[4] = rotr64((v[4] ^ v[9]), (24)); v[3] = v[3] + v[4] + m[blake2b_sigma[0][2 * 7 + 1]]; v[14] = rotr64((v[14] ^ v[3]), (16)); v[9] = v[9] + v[14]; v[4] = rotr64((v[4] ^ v[9]), (63)); } while (0); } while (0);
    do { do { v[0] = v[0] + v[4] + m[blake2b_sigma[1][2 * 0 + 0]]; v[12] = rotr64((v[12] ^ v[0]), (32)); v[8] = v[8] + v[12]; v[4] = rotr64((v[4] ^ v[8]), (24)); v[0] = v[0] + v[4] + m[blake2b_sigma[1][2 * 0 + 1]]; v[12] = rotr64((v[12] ^ v[0]), (16)); v[8] = v[8] + v[12]; v[4] = rotr64((v[4] ^ v[8]), (63)); } while (0); do { v[1] = v[1] + v[5] + m[blake2b_sigma[1][2 * 1 + 0]]; v[13] = rotr64((v[13] ^ v[1]), (32)); v[9] = v[9] + v[13]; v[5] = rotr64((v[5] ^ v[9]), (24)); v[1] = v[1] + v[5] + m[blake2b_sigma[1][2 * 1 + 1]]; v[13] = rotr64((v[13] ^ v[1]), (16)); v[9] = v[9] + v[13]; v[5] = rotr64((v[5] ^ v[9]), (63)); } while (0); do { v[2] = v[2] + v[6] + m[blake2b_sigma[1][2 * 2 + 0]]; v[14] = rotr64((v[14] ^ v[2]), (32)); v[10] = v[10] + v[14]; v[6] = rotr64((v[6] ^ v[10]), (24)); v[2] = v[2] + v[6] + m[blake2b_sigma[1][2 * 2 + 1]]; v[14] = rotr64((v[14] ^ v[2]), (16)); v[10] = v[10] + v[14]; v[6] = rotr64((v[6] ^ v[10]), (63)); } while (0); do { v[3] = v[3] + v[7] + m[blake2b_sigma[1][2 * 3 + 0]]; v[15] = rotr64((v[15] ^ v[3]), (32)); v[11] = v[11] + v[15]; v[7] = rotr64((v[7] ^ v[11]), (24)); v[3] = v[3] + v[7] + m[blake2b_sigma[1][2 * 3 + 1]]; v[15] = rotr64((v[15] ^ v[3]), (16)); v[11] = v[11] + v[15]; v[7] = rotr64((v[7] ^ v[11]), (63)); } while (0); do { v[0] = v[0] + v[5] + m[blake2b_sigma[1][2 * 4 + 0]]; v[15] = rotr64((v[15] ^ v[0]), (32)); v[10] = v[10] + v[15]; v[5] = rotr64((v[5] ^ v[10]), (24)); v[0] = v[0] + v[5] + m[blake2b_sigma[1][2 * 4 + 1]]; v[15] = rotr64((v[15] ^ v[0]), (16)); v[10] = v[10] + v[15]; v[5] = rotr64((v[5] ^ v[10]), (63)); } while (0); do { v[1] = v[1] + v[6] + m[blake2b_sigma[1][2 * 5 + 0]]; v[12] = rotr64((v[12] ^ v[1]), (32)); v[11] = v[11] + v[12]; v[6] = rotr64((v[6] ^ v[11]), (24)); v[1] = v[1] + v[6] + m[blake2b_sigma[1][2 * 5 + 1]]; v[12] = rotr64((v[12] ^ v[1]), (16)); v[11] = v[11] + v[12]; v[6] = rotr64((v[6] ^ v[11]), (63)); } while (0); do { v[2] = v[2] + v[7] + m[blake2b_sigma[1][2 * 6 + 0]]; v[13] = rotr64((v[13] ^ v[2]), (32)); v[8] = v[8] + v[13]; v[7] = rotr64((v[7] ^ v[8]), (24)); v[2] = v[2] + v[7] + m[blake2b_sigma[1][2 * 6 + 1]]; v[13] = rotr64((v[13] ^ v[2]), (16)); v[8] = v[8] + v[13]; v[7] = rotr64((v[7] ^ v[8]), (63)); } while (0); do { v[3] = v[3] + v[4] + m[blake2b_sigma[1][2 * 7 + 0]]; v[14] = rotr64((v[14] ^ v[3]), (32)); v[9] = v[9] + v[14]; v[4] = rotr64((v[4] ^ v[9]), (24)); v[3] = v[3] + v[4] + m[blake2b_sigma[1][2 * 7 + 1]]; v[14] = rotr64((v[14] ^ v[3]), (16)); v[9] = v[9] + v[14]; v[4] = rotr64((v[4] ^ v[9]), (63)); } while (0); } while (0);
    do { do { v[0] = v[0] + v[4] + m[blake2b_sigma[2][2 * 0 + 0]]; v[12] = rotr64((v[12] ^ v[0]), (32)); v[8] = v[8] + v[12]; v[4] = rotr64((v[4] ^ v[8]), (24)); v[0] = v[0] + v[4] + m[blake2b_sigma[2][2 * 0 + 1]]; v[12] = rotr64((v[12] ^ v[0]), (16)); v[8] = v[8] + v[12]; v[4] = rotr64((v[4] ^ v[8]), (63)); } while (0); do { v[1] = v[1] + v[5] + m[blake2b_sigma[2][2 * 1 + 0]]; v[13] = rotr64((v[13] ^ v[1]), (32)); v[9] = v[9] + v[13]; v[5] = rotr64((v[5] ^ v[9]), (24)); v[1] = v[1] + v[5] + m[blake2b_sigma[2][2 * 1 + 1]]; v[13] = rotr64((v[13] ^ v[1]), (16)); v[9] = v[9] + v[13]; v[5] = rotr64((v[5] ^ v[9]), (63)); } while (0); do { v[2] = v[2] + v[6] + m[blake2b_sigma[2][2 * 2 + 0]]; v[14] = rotr64((v[14] ^ v[2]), (32)); v[10] = v[10] + v[14]; v[6] = rotr64((v[6] ^ v[10]), (24)); v[2] = v[2] + v[6] + m[blake2b_sigma[2][2 * 2 + 1]]; v[14] = rotr64((v[14] ^ v[2]), (16)); v[10] = v[10] + v[14]; v[6] = rotr64((v[6] ^ v[10]), (63)); } while (0); do { v[3] = v[3] + v[7] + m[blake2b_sigma[2][2 * 3 + 0]]; v[15] = rotr64((v[15] ^ v[3]), (32)); v[11] = v[11] + v[15]; v[7] = rotr64((v[7] ^ v[11]), (24)); v[3] = v[3] + v[7] + m[blake2b_sigma[2][2 * 3 + 1]]; v[15] = rotr64((v[15] ^ v[3]), (16)); v[11] = v[11] + v[15]; v[7] = rotr64((v[7] ^ v[11]), (63)); } while (0); do { v[0] = v[0] + v[5] + m[blake2b_sigma[2][2 * 4 + 0]]; v[15] = rotr64((v[15] ^ v[0]), (32)); v[10] = v[10] + v[15]; v[5] = rotr64((v[5] ^ v[10]), (24)); v[0] = v[0] + v[5] + m[blake2b_sigma[2][2 * 4 + 1]]; v[15] = rotr64((v[15] ^ v[0]), (16)); v[10] = v[10] + v[15]; v[5] = rotr64((v[5] ^ v[10]), (63)); } while (0); do { v[1] = v[1] + v[6] + m[blake2b_sigma[2][2 * 5 + 0]]; v[12] = rotr64((v[12] ^ v[1]), (32)); v[11] = v[11] + v[12]; v[6] = rotr64((v[6] ^ v[11]), (24)); v[1] = v[1] + v[6] + m[blake2b_sigma[2][2 * 5 + 1]]; v[12] = rotr64((v[12] ^ v[1]), (16)); v[11] = v[11] + v[12]; v[6] = rotr64((v[6] ^ v[11]), (63)); } while (0); do { v[2] = v[2] + v[7] + m[blake2b_sigma[2][2 * 6 + 0]]; v[13] = rotr64((v[13] ^ v[2]), (32)); v[8] = v[8] + v[13]; v[7] = rotr64((v[7] ^ v[8]), (24)); v[2] = v[2] + v[7] + m[blake2b_sigma[2][2 * 6 + 1]]; v[13] = rotr64((v[13] ^ v[2]), (16)); v[8] = v[8] + v[13]; v[7] = rotr64((v[7] ^ v[8]), (63)); } while (0); do { v[3] = v[3] + v[4] + m[blake2b_sigma[2][2 * 7 + 0]]; v[14] = rotr64((v[14] ^ v[3]), (32)); v[9] = v[9] + v[14]; v[4] = rotr64((v[4] ^ v[9]), (24)); v[3] = v[3] + v[4] + m[blake2b_sigma[2][2 * 7 + 1]]; v[14] = rotr64((v[14] ^ v[3]), (16)); v[9] = v[9] + v[14]; v[4] = rotr64((v[4] ^ v[9]), (63)); } while (0); } while (0);
    do { do { v[0] = v[0] + v[4] + m[blake2b_sigma[3][2 * 0 + 0]]; v[12] = rotr64((v[12] ^ v[0]), (32)); v[8] = v[8] + v[12]; v[4] = rotr64((v[4] ^ v[8]), (24)); v[0] = v[0] + v[4] + m[blake2b_sigma[3][2 * 0 + 1]]; v[12] = rotr64((v[12] ^ v[0]), (16)); v[8] = v[8] + v[12]; v[4] = rotr64((v[4] ^ v[8]), (63)); } while (0); do { v[1] = v[1] + v[5] + m[blake2b_sigma[3][2 * 1 + 0]]; v[13] = rotr64((v[13] ^ v[1]), (32)); v[9] = v[9] + v[13]; v[5] = rotr64((v[5] ^ v[9]), (24)); v[1] = v[1] + v[5] + m[blake2b_sigma[3][2 * 1 + 1]]; v[13] = rotr64((v[13] ^ v[1]), (16)); v[9] = v[9] + v[13]; v[5] = rotr64((v[5] ^ v[9]), (63)); } while (0); do { v[2] = v[2] + v[6] + m[blake2b_sigma[3][2 * 2 + 0]]; v[14] = rotr64((v[14] ^ v[2]), (32)); v[10] = v[10] + v[14]; v[6] = rotr64((v[6] ^ v[10]), (24)); v[2] = v[2] + v[6] + m[blake2b_sigma[3][2 * 2 + 1]]; v[14] = rotr64((v[14] ^ v[2]), (16)); v[10] = v[10] + v[14]; v[6] = rotr64((v[6] ^ v[10]), (63)); } while (0); do { v[3] = v[3] + v[7] + m[blake2b_sigma[3][2 * 3 + 0]]; v[15] = rotr64((v[15] ^ v[3]), (32)); v[11] = v[11] + v[15]; v[7] = rotr64((v[7] ^ v[11]), (24)); v[3] = v[3] + v[7] + m[blake2b_sigma[3][2 * 3 + 1]]; v[15] = rotr64((v[15] ^ v[3]), (16)); v[11] = v[11] + v[15]; v[7] = rotr64((v[7] ^ v[11]), (63)); } while (0); do { v[0] = v[0] + v[5] + m[blake2b_sigma[3][2 * 4 + 0]]; v[15] = rotr64((v[15] ^ v[0]), (32)); v[10] = v[10] + v[15]; v[5] = rotr64((v[5] ^ v[10]), (24)); v[0] = v[0] + v[5] + m[blake2b_sigma[3][2 * 4 + 1]]; v[15] = rotr64((v[15] ^ v[0]), (16)); v[10] = v[10] + v[15]; v[5] = rotr64((v[5] ^ v[10]), (63)); } while (0); do { v[1] = v[1] + v[6] + m[blake2b_sigma[3][2 * 5 + 0]]; v[12] = rotr64((v[12] ^ v[1]), (32)); v[11] = v[11] + v[12]; v[6] = rotr64((v[6] ^ v[11]), (24)); v[1] = v[1] + v[6] + m[blake2b_sigma[3][2 * 5 + 1]]; v[12] = rotr64((v[12] ^ v[1]), (16)); v[11] = v[11] + v[12]; v[6] = rotr64((v[6] ^ v[11]), (63)); } while (0); do { v[2] = v[2] + v[7] + m[blake2b_sigma[3][2 * 6 + 0]]; v[13] = rotr64((v[13] ^ v[2]), (32)); v[8] = v[8] + v[13]; v[7] = rotr64((v[7] ^ v[8]), (24)); v[2] = v[2] + v[7] + m[blake2b_sigma[3][2 * 6 + 1]]; v[13] = rotr64((v[13] ^ v[2]), (16)); v[8] = v[8] + v[13]; v[7] = rotr64((v[7] ^ v[8]), (63)); } while (0); do { v[3] = v[3] + v[4] + m[blake2b_sigma[3][2 * 7 + 0]]; v[14] = rotr64((v[14] ^ v[3]), (32)); v[9] = v[9] + v[14]; v[4] = rotr64((v[4] ^ v[9]), (24)); v[3] = v[3] + v[4] + m[blake2b_sigma[3][2 * 7 + 1]]; v[14] = rotr64((v[14] ^ v[3]), (16)); v[9] = v[9] + v[14]; v[4] = rotr64((v[4] ^ v[9]), (63)); } while (0); } while (0);
    do { do { v[0] = v[0] + v[4] + m[blake2b_sigma[4][2 * 0 + 0]]; v[12] = rotr64((v[12] ^ v[0]), (32)); v[8] = v[8] + v[12]; v[4] = rotr64((v[4] ^ v[8]), (24)); v[0] = v[0] + v[4] + m[blake2b_sigma[4][2 * 0 + 1]]; v[12] = rotr64((v[12] ^ v[0]), (16)); v[8] = v[8] + v[12]; v[4] = rotr64((v[4] ^ v[8]), (63)); } while (0); do { v[1] = v[1] + v[5] + m[blake2b_sigma[4][2 * 1 + 0]]; v[13] = rotr64((v[13] ^ v[1]), (32)); v[9] = v[9] + v[13]; v[5] = rotr64((v[5] ^ v[9]), (24)); v[1] = v[1] + v[5] + m[blake2b_sigma[4][2 * 1 + 1]]; v[13] = rotr64((v[13] ^ v[1]), (16)); v[9] = v[9] + v[13]; v[5] = rotr64((v[5] ^ v[9]), (63)); } while (0); do { v[2] = v[2] + v[6] + m[blake2b_sigma[4][2 * 2 + 0]]; v[14] = rotr64((v[14] ^ v[2]), (32)); v[10] = v[10] + v[14]; v[6] = rotr64((v[6] ^ v[10]), (24)); v[2] = v[2] + v[6] + m[blake2b_sigma[4][2 * 2 + 1]]; v[14] = rotr64((v[14] ^ v[2]), (16)); v[10] = v[10] + v[14]; v[6] = rotr64((v[6] ^ v[10]), (63)); } while (0); do { v[3] = v[3] + v[7] + m[blake2b_sigma[4][2 * 3 + 0]]; v[15] = rotr64((v[15] ^ v[3]), (32)); v[11] = v[11] + v[15]; v[7] = rotr64((v[7] ^ v[11]), (24)); v[3] = v[3] + v[7] + m[blake2b_sigma[4][2 * 3 + 1]]; v[15] = rotr64((v[15] ^ v[3]), (16)); v[11] = v[11] + v[15]; v[7] = rotr64((v[7] ^ v[11]), (63)); } while (0); do { v[0] = v[0] + v[5] + m[blake2b_sigma[4][2 * 4 + 0]]; v[15] = rotr64((v[15] ^ v[0]), (32)); v[10] = v[10] + v[15]; v[5] = rotr64((v[5] ^ v[10]), (24)); v[0] = v[0] + v[5] + m[blake2b_sigma[4][2 * 4 + 1]]; v[15] = rotr64((v[15] ^ v[0]), (16)); v[10] = v[10] + v[15]; v[5] = rotr64((v[5] ^ v[10]), (63)); } while (0); do { v[1] = v[1] + v[6] + m[blake2b_sigma[4][2 * 5 + 0]]; v[12] = rotr64((v[12] ^ v[1]), (32)); v[11] = v[11] + v[12]; v[6] = rotr64((v[6] ^ v[11]), (24)); v[1] = v[1] + v[6] + m[blake2b_sigma[4][2 * 5 + 1]]; v[12] = rotr64((v[12] ^ v[1]), (16)); v[11] = v[11] + v[12]; v[6] = rotr64((v[6] ^ v[11]), (63)); } while (0); do { v[2] = v[2] + v[7] + m[blake2b_sigma[4][2 * 6 + 0]]; v[13] = rotr64((v[13] ^ v[2]), (32)); v[8] = v[8] + v[13]; v[7] = rotr64((v[7] ^ v[8]), (24)); v[2] = v[2] + v[7] + m[blake2b_sigma[4][2 * 6 + 1]]; v[13] = rotr64((v[13] ^ v[2]), (16)); v[8] = v[8] + v[13]; v[7] = rotr64((v[7] ^ v[8]), (63)); } while (0); do { v[3] = v[3] + v[4] + m[blake2b_sigma[4][2 * 7 + 0]]; v[14] = rotr64((v[14] ^ v[3]), (32)); v[9] = v[9] + v[14]; v[4] = rotr64((v[4] ^ v[9]), (24)); v[3] = v[3] + v[4] + m[blake2b_sigma[4][2 * 7 + 1]]; v[14] = rotr64((v[14] ^ v[3]), (16)); v[9] = v[9] + v[14]; v[4] = rotr64((v[4] ^ v[9]), (63)); } while (0); } while (0);
    do { do { v[0] = v[0] + v[4] + m[blake2b_sigma[5][2 * 0 + 0]]; v[12] = rotr64((v[12] ^ v[0]), (32)); v[8] = v[8] + v[12]; v[4] = rotr64((v[4] ^ v[8]), (24)); v[0] = v[0] + v[4] + m[blake2b_sigma[5][2 * 0 + 1]]; v[12] = rotr64((v[12] ^ v[0]), (16)); v[8] = v[8] + v[12]; v[4] = rotr64((v[4] ^ v[8]), (63)); } while (0); do { v[1] = v[1] + v[5] + m[blake2b_sigma[5][2 * 1 + 0]]; v[13] = rotr64((v[13] ^ v[1]), (32)); v[9] = v[9] + v[13]; v[5] = rotr64((v[5] ^ v[9]), (24)); v[1] = v[1] + v[5] + m[blake2b_sigma[5][2 * 1 + 1]]; v[13] = rotr64((v[13] ^ v[1]), (16)); v[9] = v[9] + v[13]; v[5] = rotr64((v[5] ^ v[9]), (63)); } while (0); do { v[2] = v[2] + v[6] + m[blake2b_sigma[5][2 * 2 + 0]]; v[14] = rotr64((v[14] ^ v[2]), (32)); v[10] = v[10] + v[14]; v[6] = rotr64((v[6] ^ v[10]), (24)); v[2] = v[2] + v[6] + m[blake2b_sigma[5][2 * 2 + 1]]; v[14] = rotr64((v[14] ^ v[2]), (16)); v[10] = v[10] + v[14]; v[6] = rotr64((v[6] ^ v[10]), (63)); } while (0); do { v[3] = v[3] + v[7] + m[blake2b_sigma[5][2 * 3 + 0]]; v[15] = rotr64((v[15] ^ v[3]), (32)); v[11] = v[11] + v[15]; v[7] = rotr64((v[7] ^ v[11]), (24)); v[3] = v[3] + v[7] + m[blake2b_sigma[5][2 * 3 + 1]]; v[15] = rotr64((v[15] ^ v[3]), (16)); v[11] = v[11] + v[15]; v[7] = rotr64((v[7] ^ v[11]), (63)); } while (0); do { v[0] = v[0] + v[5] + m[blake2b_sigma[5][2 * 4 + 0]]; v[15] = rotr64((v[15] ^ v[0]), (32)); v[10] = v[10] + v[15]; v[5] = rotr64((v[5] ^ v[10]), (24)); v[0] = v[0] + v[5] + m[blake2b_sigma[5][2 * 4 + 1]]; v[15] = rotr64((v[15] ^ v[0]), (16)); v[10] = v[10] + v[15]; v[5] = rotr64((v[5] ^ v[10]), (63)); } while (0); do { v[1] = v[1] + v[6] + m[blake2b_sigma[5][2 * 5 + 0]]; v[12] = rotr64((v[12] ^ v[1]), (32)); v[11] = v[11] + v[12]; v[6] = rotr64((v[6] ^ v[11]), (24)); v[1] = v[1] + v[6] + m[blake2b_sigma[5][2 * 5 + 1]]; v[12] = rotr64((v[12] ^ v[1]), (16)); v[11] = v[11] + v[12]; v[6] = rotr64((v[6] ^ v[11]), (63)); } while (0); do { v[2] = v[2] + v[7] + m[blake2b_sigma[5][2 * 6 + 0]]; v[13] = rotr64((v[13] ^ v[2]), (32)); v[8] = v[8] + v[13]; v[7] = rotr64((v[7] ^ v[8]), (24)); v[2] = v[2] + v[7] + m[blake2b_sigma[5][2 * 6 + 1]]; v[13] = rotr64((v[13] ^ v[2]), (16)); v[8] = v[8] + v[13]; v[7] = rotr64((v[7] ^ v[8]), (63)); } while (0); do { v[3] = v[3] + v[4] + m[blake2b_sigma[5][2 * 7 + 0]]; v[14] = rotr64((v[14] ^ v[3]), (32)); v[9] = v[9] + v[14]; v[4] = rotr64((v[4] ^ v[9]), (24)); v[3] = v[3] + v[4] + m[blake2b_sigma[5][2 * 7 + 1]]; v[14] = rotr64((v[14] ^ v[3]), (16)); v[9] = v[9] + v[14]; v[4] = rotr64((v[4] ^ v[9]), (63)); } while (0); } while (0);
    do { do { v[0] = v[0] + v[4] + m[blake2b_sigma[6][2 * 0 + 0]]; v[12] = rotr64((v[12] ^ v[0]), (32)); v[8] = v[8] + v[12]; v[4] = rotr64((v[4] ^ v[8]), (24)); v[0] = v[0] + v[4] + m[blake2b_sigma[6][2 * 0 + 1]]; v[12] = rotr64((v[12] ^ v[0]), (16)); v[8] = v[8] + v[12]; v[4] = rotr64((v[4] ^ v[8]), (63)); } while (0); do { v[1] = v[1] + v[5] + m[blake2b_sigma[6][2 * 1 + 0]]; v[13] = rotr64((v[13] ^ v[1]), (32)); v[9] = v[9] + v[13]; v[5] = rotr64((v[5] ^ v[9]), (24)); v[1] = v[1] + v[5] + m[blake2b_sigma[6][2 * 1 + 1]]; v[13] = rotr64((v[13] ^ v[1]), (16)); v[9] = v[9] + v[13]; v[5] = rotr64((v[5] ^ v[9]), (63)); } while (0); do { v[2] = v[2] + v[6] + m[blake2b_sigma[6][2 * 2 + 0]]; v[14] = rotr64((v[14] ^ v[2]), (32)); v[10] = v[10] + v[14]; v[6] = rotr64((v[6] ^ v[10]), (24)); v[2] = v[2] + v[6] + m[blake2b_sigma[6][2 * 2 + 1]]; v[14] = rotr64((v[14] ^ v[2]), (16)); v[10] = v[10] + v[14]; v[6] = rotr64((v[6] ^ v[10]), (63)); } while (0); do { v[3] = v[3] + v[7] + m[blake2b_sigma[6][2 * 3 + 0]]; v[15] = rotr64((v[15] ^ v[3]), (32)); v[11] = v[11] + v[15]; v[7] = rotr64((v[7] ^ v[11]), (24)); v[3] = v[3] + v[7] + m[blake2b_sigma[6][2 * 3 + 1]]; v[15] = rotr64((v[15] ^ v[3]), (16)); v[11] = v[11] + v[15]; v[7] = rotr64((v[7] ^ v[11]), (63)); } while (0); do { v[0] = v[0] + v[5] + m[blake2b_sigma[6][2 * 4 + 0]]; v[15] = rotr64((v[15] ^ v[0]), (32)); v[10] = v[10] + v[15]; v[5] = rotr64((v[5] ^ v[10]), (24)); v[0] = v[0] + v[5] + m[blake2b_sigma[6][2 * 4 + 1]]; v[15] = rotr64((v[15] ^ v[0]), (16)); v[10] = v[10] + v[15]; v[5] = rotr64((v[5] ^ v[10]), (63)); } while (0); do { v[1] = v[1] + v[6] + m[blake2b_sigma[6][2 * 5 + 0]]; v[12] = rotr64((v[12] ^ v[1]), (32)); v[11] = v[11] + v[12]; v[6] = rotr64((v[6] ^ v[11]), (24)); v[1] = v[1] + v[6] + m[blake2b_sigma[6][2 * 5 + 1]]; v[12] = rotr64((v[12] ^ v[1]), (16)); v[11] = v[11] + v[12]; v[6] = rotr64((v[6] ^ v[11]), (63)); } while (0); do { v[2] = v[2] + v[7] + m[blake2b_sigma[6][2 * 6 + 0]]; v[13] = rotr64((v[13] ^ v[2]), (32)); v[8] = v[8] + v[13]; v[7] = rotr64((v[7] ^ v[8]), (24)); v[2] = v[2] + v[7] + m[blake2b_sigma[6][2 * 6 + 1]]; v[13] = rotr64((v[13] ^ v[2]), (16)); v[8] = v[8] + v[13]; v[7] = rotr64((v[7] ^ v[8]), (63)); } while (0); do { v[3] = v[3] + v[4] + m[blake2b_sigma[6][2 * 7 + 0]]; v[14] = rotr64((v[14] ^ v[3]), (32)); v[9] = v[9] + v[14]; v[4] = rotr64((v[4] ^ v[9]), (24)); v[3] = v[3] + v[4] + m[blake2b_sigma[6][2 * 7 + 1]]; v[14] = rotr64((v[14] ^ v[3]), (16)); v[9] = v[9] + v[14]; v[4] = rotr64((v[4] ^ v[9]), (63)); } while (0); } while (0);
    do { do { v[0] = v[0] + v[4] + m[blake2b_sigma[7][2 * 0 + 0]]; v[12] = rotr64((v[12] ^ v[0]), (32)); v[8] = v[8] + v[12]; v[4] = rotr64((v[4] ^ v[8]), (24)); v[0] = v[0] + v[4] + m[blake2b_sigma[7][2 * 0 + 1]]; v[12] = rotr64((v[12] ^ v[0]), (16)); v[8] = v[8] + v[12]; v[4] = rotr64((v[4] ^ v[8]), (63)); } while (0); do { v[1] = v[1] + v[5] + m[blake2b_sigma[7][2 * 1 + 0]]; v[13] = rotr64((v[13] ^ v[1]), (32)); v[9] = v[9] + v[13]; v[5] = rotr64((v[5] ^ v[9]), (24)); v[1] = v[1] + v[5] + m[blake2b_sigma[7][2 * 1 + 1]]; v[13] = rotr64((v[13] ^ v[1]), (16)); v[9] = v[9] + v[13]; v[5] = rotr64((v[5] ^ v[9]), (63)); } while (0); do { v[2] = v[2] + v[6] + m[blake2b_sigma[7][2 * 2 + 0]]; v[14] = rotr64((v[14] ^ v[2]), (32)); v[10] = v[10] + v[14]; v[6] = rotr64((v[6] ^ v[10]), (24)); v[2] = v[2] + v[6] + m[blake2b_sigma[7][2 * 2 + 1]]; v[14] = rotr64((v[14] ^ v[2]), (16)); v[10] = v[10] + v[14]; v[6] = rotr64((v[6] ^ v[10]), (63)); } while (0); do { v[3] = v[3] + v[7] + m[blake2b_sigma[7][2 * 3 + 0]]; v[15] = rotr64((v[15] ^ v[3]), (32)); v[11] = v[11] + v[15]; v[7] = rotr64((v[7] ^ v[11]), (24)); v[3] = v[3] + v[7] + m[blake2b_sigma[7][2 * 3 + 1]]; v[15] = rotr64((v[15] ^ v[3]), (16)); v[11] = v[11] + v[15]; v[7] = rotr64((v[7] ^ v[11]), (63)); } while (0); do { v[0] = v[0] + v[5] + m[blake2b_sigma[7][2 * 4 + 0]]; v[15] = rotr64((v[15] ^ v[0]), (32)); v[10] = v[10] + v[15]; v[5] = rotr64((v[5] ^ v[10]), (24)); v[0] = v[0] + v[5] + m[blake2b_sigma[7][2 * 4 + 1]]; v[15] = rotr64((v[15] ^ v[0]), (16)); v[10] = v[10] + v[15]; v[5] = rotr64((v[5] ^ v[10]), (63)); } while (0); do { v[1] = v[1] + v[6] + m[blake2b_sigma[7][2 * 5 + 0]]; v[12] = rotr64((v[12] ^ v[1]), (32)); v[11] = v[11] + v[12]; v[6] = rotr64((v[6] ^ v[11]), (24)); v[1] = v[1] + v[6] + m[blake2b_sigma[7][2 * 5 + 1]]; v[12] = rotr64((v[12] ^ v[1]), (16)); v[11] = v[11] + v[12]; v[6] = rotr64((v[6] ^ v[11]), (63)); } while (0); do { v[2] = v[2] + v[7] + m[blake2b_sigma[7][2 * 6 + 0]]; v[13] = rotr64((v[13] ^ v[2]), (32)); v[8] = v[8] + v[13]; v[7] = rotr64((v[7] ^ v[8]), (24)); v[2] = v[2] + v[7] + m[blake2b_sigma[7][2 * 6 + 1]]; v[13] = rotr64((v[13] ^ v[2]), (16)); v[8] = v[8] + v[13]; v[7] = rotr64((v[7] ^ v[8]), (63)); } while (0); do { v[3] = v[3] + v[4] + m[blake2b_sigma[7][2 * 7 + 0]]; v[14] = rotr64((v[14] ^ v[3]), (32)); v[9] = v[9] + v[14]; v[4] = rotr64((v[4] ^ v[9]), (24)); v[3] = v[3] + v[4] + m[blake2b_sigma[7][2 * 7 + 1]]; v[14] = rotr64((v[14] ^ v[3]), (16)); v[9] = v[9] + v[14]; v[4] = rotr64((v[4] ^ v[9]), (63)); } while (0); } while (0);
    do { do { v[0] = v[0] + v[4] + m[blake2b_sigma[8][2 * 0 + 0]]; v[12] = rotr64((v[12] ^ v[0]), (32)); v[8] = v[8] + v[12]; v[4] = rotr64((v[4] ^ v[8]), (24)); v[0] = v[0] + v[4] + m[blake2b_sigma[8][2 * 0 + 1]]; v[12] = rotr64((v[12] ^ v[0]), (16)); v[8] = v[8] + v[12]; v[4] = rotr64((v[4] ^ v[8]), (63)); } while (0); do { v[1] = v[1] + v[5] + m[blake2b_sigma[8][2 * 1 + 0]]; v[13] = rotr64((v[13] ^ v[1]), (32)); v[9] = v[9] + v[13]; v[5] = rotr64((v[5] ^ v[9]), (24)); v[1] = v[1] + v[5] + m[blake2b_sigma[8][2 * 1 + 1]]; v[13] = rotr64((v[13] ^ v[1]), (16)); v[9] = v[9] + v[13]; v[5] = rotr64((v[5] ^ v[9]), (63)); } while (0); do { v[2] = v[2] + v[6] + m[blake2b_sigma[8][2 * 2 + 0]]; v[14] = rotr64((v[14] ^ v[2]), (32)); v[10] = v[10] + v[14]; v[6] = rotr64((v[6] ^ v[10]), (24)); v[2] = v[2] + v[6] + m[blake2b_sigma[8][2 * 2 + 1]]; v[14] = rotr64((v[14] ^ v[2]), (16)); v[10] = v[10] + v[14]; v[6] = rotr64((v[6] ^ v[10]), (63)); } while (0); do { v[3] = v[3] + v[7] + m[blake2b_sigma[8][2 * 3 + 0]]; v[15] = rotr64((v[15] ^ v[3]), (32)); v[11] = v[11] + v[15]; v[7] = rotr64((v[7] ^ v[11]), (24)); v[3] = v[3] + v[7] + m[blake2b_sigma[8][2 * 3 + 1]]; v[15] = rotr64((v[15] ^ v[3]), (16)); v[11] = v[11] + v[15]; v[7] = rotr64((v[7] ^ v[11]), (63)); } while (0); do { v[0] = v[0] + v[5] + m[blake2b_sigma[8][2 * 4 + 0]]; v[15] = rotr64((v[15] ^ v[0]), (32)); v[10] = v[10] + v[15]; v[5] = rotr64((v[5] ^ v[10]), (24)); v[0] = v[0] + v[5] + m[blake2b_sigma[8][2 * 4 + 1]]; v[15] = rotr64((v[15] ^ v[0]), (16)); v[10] = v[10] + v[15]; v[5] = rotr64((v[5] ^ v[10]), (63)); } while (0); do { v[1] = v[1] + v[6] + m[blake2b_sigma[8][2 * 5 + 0]]; v[12] = rotr64((v[12] ^ v[1]), (32)); v[11] = v[11] + v[12]; v[6] = rotr64((v[6] ^ v[11]), (24)); v[1] = v[1] + v[6] + m[blake2b_sigma[8][2 * 5 + 1]]; v[12] = rotr64((v[12] ^ v[1]), (16)); v[11] = v[11] + v[12]; v[6] = rotr64((v[6] ^ v[11]), (63)); } while (0); do { v[2] = v[2] + v[7] + m[blake2b_sigma[8][2 * 6 + 0]]; v[13] = rotr64((v[13] ^ v[2]), (32)); v[8] = v[8] + v[13]; v[7] = rotr64((v[7] ^ v[8]), (24)); v[2] = v[2] + v[7] + m[blake2b_sigma[8][2 * 6 + 1]]; v[13] = rotr64((v[13] ^ v[2]), (16)); v[8] = v[8] + v[13]; v[7] = rotr64((v[7] ^ v[8]), (63)); } while (0); do { v[3] = v[3] + v[4] + m[blake2b_sigma[8][2 * 7 + 0]]; v[14] = rotr64((v[14] ^ v[3]), (32)); v[9] = v[9] + v[14]; v[4] = rotr64((v[4] ^ v[9]), (24)); v[3] = v[3] + v[4] + m[blake2b_sigma[8][2 * 7 + 1]]; v[14] = rotr64((v[14] ^ v[3]), (16)); v[9] = v[9] + v[14]; v[4] = rotr64((v[4] ^ v[9]), (63)); } while (0); } while (0);
    do { do { v[0] = v[0] + v[4] + m[blake2b_sigma[9][2 * 0 + 0]]; v[12] = rotr64((v[12] ^ v[0]), (32)); v[8] = v[8] + v[12]; v[4] = rotr64((v[4] ^ v[8]), (24)); v[0] = v[0] + v[4] + m[blake2b_sigma[9][2 * 0 + 1]]; v[12] = rotr64((v[12] ^ v[0]), (16)); v[8] = v[8] + v[12]; v[4] = rotr64((v[4] ^ v[8]), (63)); } while (0); do { v[1] = v[1] + v[5] + m[blake2b_sigma[9][2 * 1 + 0]]; v[13] = rotr64((v[13] ^ v[1]), (32)); v[9] = v[9] + v[13]; v[5] = rotr64((v[5] ^ v[9]), (24)); v[1] = v[1] + v[5] + m[blake2b_sigma[9][2 * 1 + 1]]; v[13] = rotr64((v[13] ^ v[1]), (16)); v[9] = v[9] + v[13]; v[5] = rotr64((v[5] ^ v[9]), (63)); } while (0); do { v[2] = v[2] + v[6] + m[blake2b_sigma[9][2 * 2 + 0]]; v[14] = rotr64((v[14] ^ v[2]), (32)); v[10] = v[10] + v[14]; v[6] = rotr64((v[6] ^ v[10]), (24)); v[2] = v[2] + v[6] + m[blake2b_sigma[9][2 * 2 + 1]]; v[14] = rotr64((v[14] ^ v[2]), (16)); v[10] = v[10] + v[14]; v[6] = rotr64((v[6] ^ v[10]), (63)); } while (0); do { v[3] = v[3] + v[7] + m[blake2b_sigma[9][2 * 3 + 0]]; v[15] = rotr64((v[15] ^ v[3]), (32)); v[11] = v[11] + v[15]; v[7] = rotr64((v[7] ^ v[11]), (24)); v[3] = v[3] + v[7] + m[blake2b_sigma[9][2 * 3 + 1]]; v[15] = rotr64((v[15] ^ v[3]), (16)); v[11] = v[11] + v[15]; v[7] = rotr64((v[7] ^ v[11]), (63)); } while (0); do { v[0] = v[0] + v[5] + m[blake2b_sigma[9][2 * 4 + 0]]; v[15] = rotr64((v[15] ^ v[0]), (32)); v[10] = v[10] + v[15]; v[5] = rotr64((v[5] ^ v[10]), (24)); v[0] = v[0] + v[5] + m[blake2b_sigma[9][2 * 4 + 1]]; v[15] = rotr64((v[15] ^ v[0]), (16)); v[10] = v[10] + v[15]; v[5] = rotr64((v[5] ^ v[10]), (63)); } while (0); do { v[1] = v[1] + v[6] + m[blake2b_sigma[9][2 * 5 + 0]]; v[12] = rotr64((v[12] ^ v[1]), (32)); v[11] = v[11] + v[12]; v[6] = rotr64((v[6] ^ v[11]), (24)); v[1] = v[1] + v[6] + m[blake2b_sigma[9][2 * 5 + 1]]; v[12] = rotr64((v[12] ^ v[1]), (16)); v[11] = v[11] + v[12]; v[6] = rotr64((v[6] ^ v[11]), (63)); } while (0); do { v[2] = v[2] + v[7] + m[blake2b_sigma[9][2 * 6 + 0]]; v[13] = rotr64((v[13] ^ v[2]), (32)); v[8] = v[8] + v[13]; v[7] = rotr64((v[7] ^ v[8]), (24)); v[2] = v[2] + v[7] + m[blake2b_sigma[9][2 * 6 + 1]]; v[13] = rotr64((v[13] ^ v[2]), (16)); v[8] = v[8] + v[13]; v[7] = rotr64((v[7] ^ v[8]), (63)); } while (0); do { v[3] = v[3] + v[4] + m[blake2b_sigma[9][2 * 7 + 0]]; v[14] = rotr64((v[14] ^ v[3]), (32)); v[9] = v[9] + v[14]; v[4] = rotr64((v[4] ^ v[9]), (24)); v[3] = v[3] + v[4] + m[blake2b_sigma[9][2 * 7 + 1]]; v[14] = rotr64((v[14] ^ v[3]), (16)); v[9] = v[9] + v[14]; v[4] = rotr64((v[4] ^ v[9]), (63)); } while (0); } while (0);
    do { do { v[0] = v[0] + v[4] + m[blake2b_sigma[10][2 * 0 + 0]]; v[12] = rotr64((v[12] ^ v[0]), (32)); v[8] = v[8] + v[12]; v[4] = rotr64((v[4] ^ v[8]), (24)); v[0] = v[0] + v[4] + m[blake2b_sigma[10][2 * 0 + 1]]; v[12] = rotr64((v[12] ^ v[0]), (16)); v[8] = v[8] + v[12]; v[4] = rotr64((v[4] ^ v[8]), (63)); } while (0); do { v[1] = v[1] + v[5] + m[blake2b_sigma[10][2 * 1 + 0]]; v[13] = rotr64((v[13] ^ v[1]), (32)); v[9] = v[9] + v[13]; v[5] = rotr64((v[5] ^ v[9]), (24)); v[1] = v[1] + v[5] + m[blake2b_sigma[10][2 * 1 + 1]]; v[13] = rotr64((v[13] ^ v[1]), (16)); v[9] = v[9] + v[13]; v[5] = rotr64((v[5] ^ v[9]), (63)); } while (0); do { v[2] = v[2] + v[6] + m[blake2b_sigma[10][2 * 2 + 0]]; v[14] = rotr64((v[14] ^ v[2]), (32)); v[10] = v[10] + v[14]; v[6] = rotr64((v[6] ^ v[10]), (24)); v[2] = v[2] + v[6] + m[blake2b_sigma[10][2 * 2 + 1]]; v[14] = rotr64((v[14] ^ v[2]), (16)); v[10] = v[10] + v[14]; v[6] = rotr64((v[6] ^ v[10]), (63)); } while (0); do { v[3] = v[3] + v[7] + m[blake2b_sigma[10][2 * 3 + 0]]; v[15] = rotr64((v[15] ^ v[3]), (32)); v[11] = v[11] + v[15]; v[7] = rotr64((v[7] ^ v[11]), (24)); v[3] = v[3] + v[7] + m[blake2b_sigma[10][2 * 3 + 1]]; v[15] = rotr64((v[15] ^ v[3]), (16)); v[11] = v[11] + v[15]; v[7] = rotr64((v[7] ^ v[11]), (63)); } while (0); do { v[0] = v[0] + v[5] + m[blake2b_sigma[10][2 * 4 + 0]]; v[15] = rotr64((v[15] ^ v[0]), (32)); v[10] = v[10] + v[15]; v[5] = rotr64((v[5] ^ v[10]), (24)); v[0] = v[0] + v[5] + m[blake2b_sigma[10][2 * 4 + 1]]; v[15] = rotr64((v[15] ^ v[0]), (16)); v[10] = v[10] + v[15]; v[5] = rotr64((v[5] ^ v[10]), (63)); } while (0); do { v[1] = v[1] + v[6] + m[blake2b_sigma[10][2 * 5 + 0]]; v[12] = rotr64((v[12] ^ v[1]), (32)); v[11] = v[11] + v[12]; v[6] = rotr64((v[6] ^ v[11]), (24)); v[1] = v[1] + v[6] + m[blake2b_sigma[10][2 * 5 + 1]]; v[12] = rotr64((v[12] ^ v[1]), (16)); v[11] = v[11] + v[12]; v[6] = rotr64((v[6] ^ v[11]), (63)); } while (0); do { v[2] = v[2] + v[7] + m[blake2b_sigma[10][2 * 6 + 0]]; v[13] = rotr64((v[13] ^ v[2]), (32)); v[8] = v[8] + v[13]; v[7] = rotr64((v[7] ^ v[8]), (24)); v[2] = v[2] + v[7] + m[blake2b_sigma[10][2 * 6 + 1]]; v[13] = rotr64((v[13] ^ v[2]), (16)); v[8] = v[8] + v[13]; v[7] = rotr64((v[7] ^ v[8]), (63)); } while (0); do { v[3] = v[3] + v[4] + m[blake2b_sigma[10][2 * 7 + 0]]; v[14] = rotr64((v[14] ^ v[3]), (32)); v[9] = v[9] + v[14]; v[4] = rotr64((v[4] ^ v[9]), (24)); v[3] = v[3] + v[4] + m[blake2b_sigma[10][2 * 7 + 1]]; v[14] = rotr64((v[14] ^ v[3]), (16)); v[9] = v[9] + v[14]; v[4] = rotr64((v[4] ^ v[9]), (63)); } while (0); } while (0);
    do { do { v[0] = v[0] + v[4] + m[blake2b_sigma[11][2 * 0 + 0]]; v[12] = rotr64((v[12] ^ v[0]), (32)); v[8] = v[8] + v[12]; v[4] = rotr64((v[4] ^ v[8]), (24)); v[0] = v[0] + v[4] + m[blake2b_sigma[11][2 * 0 + 1]]; v[12] = rotr64((v[12] ^ v[0]), (16)); v[8] = v[8] + v[12]; v[4] = rotr64((v[4] ^ v[8]), (63)); } while (0); do { v[1] = v[1] + v[5] + m[blake2b_sigma[11][2 * 1 + 0]]; v[13] = rotr64((v[13] ^ v[1]), (32)); v[9] = v[9] + v[13]; v[5] = rotr64((v[5] ^ v[9]), (24)); v[1] = v[1] + v[5] + m[blake2b_sigma[11][2 * 1 + 1]]; v[13] = rotr64((v[13] ^ v[1]), (16)); v[9] = v[9] + v[13]; v[5] = rotr64((v[5] ^ v[9]), (63)); } while (0); do { v[2] = v[2] + v[6] + m[blake2b_sigma[11][2 * 2 + 0]]; v[14] = rotr64((v[14] ^ v[2]), (32)); v[10] = v[10] + v[14]; v[6] = rotr64((v[6] ^ v[10]), (24)); v[2] = v[2] + v[6] + m[blake2b_sigma[11][2 * 2 + 1]]; v[14] = rotr64((v[14] ^ v[2]), (16)); v[10] = v[10] + v[14]; v[6] = rotr64((v[6] ^ v[10]), (63)); } while (0); do { v[3] = v[3] + v[7] + m[blake2b_sigma[11][2 * 3 + 0]]; v[15] = rotr64((v[15] ^ v[3]), (32)); v[11] = v[11] + v[15]; v[7] = rotr64((v[7] ^ v[11]), (24)); v[3] = v[3] + v[7] + m[blake2b_sigma[11][2 * 3 + 1]]; v[15] = rotr64((v[15] ^ v[3]), (16)); v[11] = v[11] + v[15]; v[7] = rotr64((v[7] ^ v[11]), (63)); } while (0); do { v[0] = v[0] + v[5] + m[blake2b_sigma[11][2 * 4 + 0]]; v[15] = rotr64((v[15] ^ v[0]), (32)); v[10] = v[10] + v[15]; v[5] = rotr64((v[5] ^ v[10]), (24)); v[0] = v[0] + v[5] + m[blake2b_sigma[11][2 * 4 + 1]]; v[15] = rotr64((v[15] ^ v[0]), (16)); v[10] = v[10] + v[15]; v[5] = rotr64((v[5] ^ v[10]), (63)); } while (0); do { v[1] = v[1] + v[6] + m[blake2b_sigma[11][2 * 5 + 0]]; v[12] = rotr64((v[12] ^ v[1]), (32)); v[11] = v[11] + v[12]; v[6] = rotr64((v[6] ^ v[11]), (24)); v[1] = v[1] + v[6] + m[blake2b_sigma[11][2 * 5 + 1]]; v[12] = rotr64((v[12] ^ v[1]), (16)); v[11] = v[11] + v[12]; v[6] = rotr64((v[6] ^ v[11]), (63)); } while (0); do { v[2] = v[2] + v[7] + m[blake2b_sigma[11][2 * 6 + 0]]; v[13] = rotr64((v[13] ^ v[2]), (32)); v[8] = v[8] + v[13]; v[7] = rotr64((v[7] ^ v[8]), (24)); v[2] = v[2] + v[7] + m[blake2b_sigma[11][2 * 6 + 1]]; v[13] = rotr64((v[13] ^ v[2]), (16)); v[8] = v[8] + v[13]; v[7] = rotr64((v[7] ^ v[8]), (63)); } while (0); do { v[3] = v[3] + v[4] + m[blake2b_sigma[11][2 * 7 + 0]]; v[14] = rotr64((v[14] ^ v[3]), (32)); v[9] = v[9] + v[14]; v[4] = rotr64((v[4] ^ v[9]), (24)); v[3] = v[3] + v[4] + m[blake2b_sigma[11][2 * 7 + 1]]; v[14] = rotr64((v[14] ^ v[3]), (16)); v[9] = v[9] + v[14]; v[4] = rotr64((v[4] ^ v[9]), (63)); } while (0); } while (0);

    for (i = 0; i < 8; ++i)
        S->h[i] = S->h[i] ^ v[i] ^ v[i + 8];



    return 0;
}
