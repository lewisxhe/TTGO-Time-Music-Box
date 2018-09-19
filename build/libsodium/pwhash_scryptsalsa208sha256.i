# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/pwhash_scryptsalsa208sha256.c"
# 1 "D:\\ESP32\\esp-idf-v3.1-rc1\\ESP32_PIC_A2DP\\build\\libsodium//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/pwhash_scryptsalsa208sha256.c"

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/errno.h" 1




typedef int error_t;



# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/errno.h" 1
# 11 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/errno.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/reent.h" 1
# 13 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/reent.h"
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
# 12 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/errno.h" 2



extern int *__errno (void);




extern const char * const _sys_errlist[];
extern int _sys_nerr;
# 10 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/errno.h" 2
# 3 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/pwhash_scryptsalsa208sha256.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/limits.h" 1
# 131 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/limits.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include-fixed\\limits.h" 1 3 4
# 132 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/limits.h" 2
# 4 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/pwhash_scryptsalsa208sha256.c" 2
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 5 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/pwhash_scryptsalsa208sha256.c" 2
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
# 6 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/pwhash_scryptsalsa208sha256.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h" 1
# 10 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/_ansi.h" 1
# 11 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h" 2

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


# 7 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/pwhash_scryptsalsa208sha256.c" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_pwhash_scryptsalsa208sha256.h" 1



# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/limits.h" 1
# 5 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_pwhash_scryptsalsa208sha256.h" 2
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 6 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_pwhash_scryptsalsa208sha256.h" 2


# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/export.h" 1
# 9 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_pwhash_scryptsalsa208sha256.h" 2
# 18 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_pwhash_scryptsalsa208sha256.h"
__attribute__ ((visibility ("default")))
size_t crypto_pwhash_scryptsalsa208sha256_bytes_min(void);


__attribute__ ((visibility ("default")))
size_t crypto_pwhash_scryptsalsa208sha256_bytes_max(void);


__attribute__ ((visibility ("default")))
size_t crypto_pwhash_scryptsalsa208sha256_passwd_min(void);


__attribute__ ((visibility ("default")))
size_t crypto_pwhash_scryptsalsa208sha256_passwd_max(void);


__attribute__ ((visibility ("default")))
size_t crypto_pwhash_scryptsalsa208sha256_saltbytes(void);


__attribute__ ((visibility ("default")))
size_t crypto_pwhash_scryptsalsa208sha256_strbytes(void);


__attribute__ ((visibility ("default")))
const char *crypto_pwhash_scryptsalsa208sha256_strprefix(void);


__attribute__ ((visibility ("default")))
size_t crypto_pwhash_scryptsalsa208sha256_opslimit_min(void);


__attribute__ ((visibility ("default")))
size_t crypto_pwhash_scryptsalsa208sha256_opslimit_max(void);


__attribute__ ((visibility ("default")))
size_t crypto_pwhash_scryptsalsa208sha256_memlimit_min(void);


__attribute__ ((visibility ("default")))
size_t crypto_pwhash_scryptsalsa208sha256_memlimit_max(void);


__attribute__ ((visibility ("default")))
size_t crypto_pwhash_scryptsalsa208sha256_opslimit_interactive(void);


__attribute__ ((visibility ("default")))
size_t crypto_pwhash_scryptsalsa208sha256_memlimit_interactive(void);


__attribute__ ((visibility ("default")))
size_t crypto_pwhash_scryptsalsa208sha256_opslimit_sensitive(void);


__attribute__ ((visibility ("default")))
size_t crypto_pwhash_scryptsalsa208sha256_memlimit_sensitive(void);

__attribute__ ((visibility ("default")))
int crypto_pwhash_scryptsalsa208sha256(unsigned char * const out,
                                       unsigned long long outlen,
                                       const char * const passwd,
                                       unsigned long long passwdlen,
                                       const unsigned char * const salt,
                                       unsigned long long opslimit,
                                       size_t memlimit)
            __attribute__ ((warn_unused_result));

__attribute__ ((visibility ("default")))
int crypto_pwhash_scryptsalsa208sha256_str(char out[102U],
                                           const char * const passwd,
                                           unsigned long long passwdlen,
                                           unsigned long long opslimit,
                                           size_t memlimit)
            __attribute__ ((warn_unused_result));

__attribute__ ((visibility ("default")))
int crypto_pwhash_scryptsalsa208sha256_str_verify(const char str[102U],
                                                  const char * const passwd,
                                                  unsigned long long passwdlen)
            __attribute__ ((warn_unused_result));

__attribute__ ((visibility ("default")))
int crypto_pwhash_scryptsalsa208sha256_ll(const uint8_t * passwd, size_t passwdlen,
                                          const uint8_t * salt, size_t saltlen,
                                          uint64_t N, uint32_t r, uint32_t p,
                                          uint8_t * buf, size_t buflen)
            __attribute__ ((warn_unused_result));
# 9 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/pwhash_scryptsalsa208sha256.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/crypto_scrypt.h" 1
# 33 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/crypto_scrypt.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/limits.h" 1
# 34 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/crypto_scrypt.h" 2
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 35 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/crypto_scrypt.h" 2
# 52 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/crypto_scrypt.h"
typedef struct {
    void * base, *aligned;
    size_t size;
} escrypt_region_t;

typedef union {
    uint64_t d[8];
    uint32_t w[16];
} escrypt_block_t;

typedef escrypt_region_t escrypt_local_t;

extern int escrypt_init_local(escrypt_local_t *__local);

extern int escrypt_free_local(escrypt_local_t *__local);

extern void *alloc_region(escrypt_region_t *region, size_t size);
extern int free_region(escrypt_region_t *region);

typedef int (*escrypt_kdf_t)(escrypt_local_t *__local, const uint8_t *__passwd,
                             size_t __passwdlen, const uint8_t *__salt,
                             size_t __saltlen, uint64_t __N, uint32_t __r,
                             uint32_t __p, uint8_t *__buf, size_t __buflen);

extern int escrypt_kdf_nosse(escrypt_local_t *__local, const uint8_t *__passwd,
                             size_t __passwdlen, const uint8_t *__salt,
                             size_t __saltlen, uint64_t __N, uint32_t __r,
                             uint32_t __p, uint8_t *__buf, size_t __buflen);

extern int escrypt_kdf_sse(escrypt_local_t *__local, const uint8_t *__passwd,
                           size_t __passwdlen, const uint8_t *__salt,
                           size_t __saltlen, uint64_t __N, uint32_t __r,
                           uint32_t __p, uint8_t *__buf, size_t __buflen);

extern uint8_t *escrypt_r(escrypt_local_t *__local, const uint8_t *__passwd,
                          size_t __passwdlen, const uint8_t *__setting,
                          uint8_t *__buf, size_t __buflen);

extern uint8_t *escrypt_gensalt_r(uint32_t __N_log2, uint32_t __r, uint32_t __p,
                                  const uint8_t *__src, size_t __srclen,
                                  uint8_t *__buf, size_t __buflen);
# 10 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/pwhash_scryptsalsa208sha256.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/private/common.h" 1




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




# 6 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/private/common.h" 2





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
# 11 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/pwhash_scryptsalsa208sha256.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/randombytes.h" 1




# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 6 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/randombytes.h" 2


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
# 9 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/randombytes.h" 2
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/randombytes.h"
typedef struct randombytes_implementation {
    const char *(*implementation_name)(void);
    uint32_t (*random)(void);
    void (*stir)(void);
    uint32_t (*uniform)(const uint32_t upper_bound);
    void (*buf)(void * const buf, const size_t size);
    int (*close)(void);
} randombytes_implementation;


__attribute__ ((visibility ("default")))
size_t randombytes_seedbytes(void);

__attribute__ ((visibility ("default")))
void randombytes_buf(void * const buf, const size_t size);

__attribute__ ((visibility ("default")))
void randombytes_buf_deterministic(void * const buf, const size_t size,
                                   const unsigned char seed[32U]);

__attribute__ ((visibility ("default")))
uint32_t randombytes_random(void);

__attribute__ ((visibility ("default")))
uint32_t randombytes_uniform(const uint32_t upper_bound);

__attribute__ ((visibility ("default")))
void randombytes_stir(void);

__attribute__ ((visibility ("default")))
int randombytes_close(void);

__attribute__ ((visibility ("default")))
int randombytes_set_implementation(randombytes_implementation *impl);

__attribute__ ((visibility ("default")))
const char *randombytes_implementation_name(void);



__attribute__ ((visibility ("default")))
void randombytes(unsigned char * const buf, const unsigned long long buf_len);
# 12 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/pwhash_scryptsalsa208sha256.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h" 1




# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 6 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h" 2
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
__attribute__ ((visibility ("default")))
void sodium_memzero(void * const pnt, const size_t len);







__attribute__ ((visibility ("default")))
int sodium_memcmp(const void * const b1_, const void * const b2_, size_t len)
            __attribute__ ((warn_unused_result));







__attribute__ ((visibility ("default")))
int sodium_compare(const unsigned char *b1_, const unsigned char *b2_,
                   size_t len)
            __attribute__ ((warn_unused_result));

__attribute__ ((visibility ("default")))
int sodium_is_zero(const unsigned char *n, const size_t nlen);

__attribute__ ((visibility ("default")))
void sodium_increment(unsigned char *n, const size_t nlen);

__attribute__ ((visibility ("default")))
void sodium_add(unsigned char *a, const unsigned char *b, const size_t len);

__attribute__ ((visibility ("default")))
char *sodium_bin2hex(char * const hex, const size_t hex_maxlen,
                     const unsigned char * const bin, const size_t bin_len);

__attribute__ ((visibility ("default")))
int sodium_hex2bin(unsigned char * const bin, const size_t bin_maxlen,
                   const char * const hex, const size_t hex_len,
                   const char * const ignore, size_t * const bin_len,
                   const char ** const hex_end);

__attribute__ ((visibility ("default")))
int sodium_mlock(void * const addr, const size_t len);

__attribute__ ((visibility ("default")))
int sodium_munlock(void * const addr, const size_t len);
# 103 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
__attribute__ ((visibility ("default")))
void *sodium_malloc(const size_t size)
            __attribute__ ((malloc));

__attribute__ ((visibility ("default")))
void *sodium_allocarray(size_t count, size_t size)
            __attribute__ ((malloc));

__attribute__ ((visibility ("default")))
void sodium_free(void *ptr);

__attribute__ ((visibility ("default")))
int sodium_mprotect_noaccess(void *ptr);

__attribute__ ((visibility ("default")))
int sodium_mprotect_readonly(void *ptr);

__attribute__ ((visibility ("default")))
int sodium_mprotect_readwrite(void *ptr);



int _sodium_alloc_init(void);
# 13 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/pwhash_scryptsalsa208sha256.c" 2





static int
pickparams(unsigned long long opslimit, const size_t memlimit,
           uint32_t *const N_log2, uint32_t *const p, uint32_t *const r)
{
    unsigned long long maxN;
    unsigned long long maxrp;

    if (opslimit < 32768) {
        opslimit = 32768;
    }
    *r = 8;
    if (opslimit < memlimit / 32) {
        *p = 1;
        maxN = opslimit / (*r * 4);
        for (*N_log2 = 1; *N_log2 < 63; *N_log2 += 1) {
            if ((uint64_t)(1) << *N_log2 > maxN / 2) {
                break;
            }
        }
    } else {
        maxN = memlimit / ((size_t) *r * 128);
        for (*N_log2 = 1; *N_log2 < 63; *N_log2 += 1) {
            if ((uint64_t)(1) << *N_log2 > maxN / 2) {
                break;
            }
        }
        maxrp = (opslimit / 4) / ((uint64_t)(1) << *N_log2);

        if (maxrp > 0x3fffffff) {
            maxrp = 0x3fffffff;
        }

        *p = (uint32_t)(maxrp) / *r;
    }
    return 0;
}

size_t
crypto_pwhash_scryptsalsa208sha256_bytes_min(void)
{
    return 16U;
}

size_t
crypto_pwhash_scryptsalsa208sha256_bytes_max(void)
{
    return 0xffffffffU;
}

size_t
crypto_pwhash_scryptsalsa208sha256_passwd_min(void)
{
    return 0U;
}

size_t
crypto_pwhash_scryptsalsa208sha256_passwd_max(void)
{
    return 0xffffffffU;
}

size_t
crypto_pwhash_scryptsalsa208sha256_saltbytes(void)
{
    return 32U;
}

size_t
crypto_pwhash_scryptsalsa208sha256_strbytes(void)
{
    return 102U;
}

const char *
crypto_pwhash_scryptsalsa208sha256_strprefix(void)
{
    return "$7$";
}

size_t
crypto_pwhash_scryptsalsa208sha256_opslimit_min(void)
{
    return 32768U;
}

size_t
crypto_pwhash_scryptsalsa208sha256_opslimit_max(void)
{
    return 4294967295U;
}

size_t
crypto_pwhash_scryptsalsa208sha256_memlimit_min(void)
{
    return 16777216U;
}

size_t
crypto_pwhash_scryptsalsa208sha256_memlimit_max(void)
{
    return ((0xffffffffU >= 68719476736U) ? 68719476736U : 0xffffffffU);
}

size_t
crypto_pwhash_scryptsalsa208sha256_opslimit_interactive(void)
{
    return 524288U;
}

size_t
crypto_pwhash_scryptsalsa208sha256_memlimit_interactive(void)
{
    return 16777216U;
}

size_t
crypto_pwhash_scryptsalsa208sha256_opslimit_sensitive(void)
{
    return 33554432U;
}

size_t
crypto_pwhash_scryptsalsa208sha256_memlimit_sensitive(void)
{
    return 1073741824U;
}

int
crypto_pwhash_scryptsalsa208sha256(unsigned char *const out,
                                   unsigned long long outlen,
                                   const char *const passwd,
                                   unsigned long long passwdlen,
                                   const unsigned char *const salt,
                                   unsigned long long opslimit, size_t memlimit)
{
    uint32_t N_log2;
    uint32_t p;
    uint32_t r;

    memset(out, 0, outlen);
    if (passwdlen > 0xffffffffU ||
        outlen > 0xffffffffU) {
        (*__errno()) = 27;
        return -1;
    }
    if (outlen < 16U ||
        pickparams(opslimit, memlimit, &N_log2, &p, &r) != 0) {
        (*__errno()) = 22;
        return -1;
    }
    return crypto_pwhash_scryptsalsa208sha256_ll(
        (const uint8_t *) passwd, (size_t) passwdlen, (const uint8_t *) salt,
        32U, (uint64_t)(1) << N_log2,
        r, p, out, (size_t) outlen);
}

int
crypto_pwhash_scryptsalsa208sha256_str(
    char out[102U],
    const char *const passwd, unsigned long long passwdlen,
    unsigned long long opslimit, size_t memlimit)
{
    uint8_t salt[32];
    char setting[57 + 1U];
    escrypt_local_t escrypt_local;
    uint32_t N_log2;
    uint32_t p;
    uint32_t r;

    memset(out, 0, 102U);
    if (passwdlen > 0xffffffffU) {
        (*__errno()) = 27;
        return -1;
    }
    if (passwdlen < 0U ||
        pickparams(opslimit, memlimit, &N_log2, &p, &r) != 0) {
        (*__errno()) = 22;
        return -1;
    }
    randombytes_buf(salt, sizeof salt);
    if (escrypt_gensalt_r(N_log2, r, p, salt, sizeof salt, (uint8_t *) setting,
                          sizeof setting) == 
# 199 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/pwhash_scryptsalsa208sha256.c" 3 4
                                            ((void *)0)
# 199 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/pwhash_scryptsalsa208sha256.c"
                                                ) {
        (*__errno()) = 22;
        return -1;
    }
    if (escrypt_init_local(&escrypt_local) != 0) {
        return -1;
    }
    if (escrypt_r(&escrypt_local, (const uint8_t *) passwd, (size_t) passwdlen,
                  (const uint8_t *) setting, (uint8_t *) out,
                  102U) == 
# 208 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/pwhash_scryptsalsa208sha256.c" 3 4
                                                                 ((void *)0)
# 208 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/pwhash_scryptsalsa208sha256.c"
                                                                     ) {

        escrypt_free_local(&escrypt_local);
        (*__errno()) = 22;
        return -1;

    }
    escrypt_free_local(&escrypt_local);

    (void) sizeof(char[(((sizeof "$7$" - 1U) + (1U ) + (5U ) + (5U ) + ((((32) *8) + 5) / 6)) == 57) ? 1 : -1])

                                                           ;
    (void) sizeof(char[(57 + 1U + 43 + 1U == 102U) ? 1 : -1])


                                                    ;

    return 0;
}

int
crypto_pwhash_scryptsalsa208sha256_str_verify(
    const char str[102U],
    const char *const passwd, unsigned long long passwdlen)
{
    char wanted[102U];
    escrypt_local_t escrypt_local;
    int ret = -1;

    if (memchr(str, 0, 102U) !=
        &str[102U - 1U]) {
        return -1;
    }
    if (escrypt_init_local(&escrypt_local) != 0) {
        return -1;
    }
    memset(wanted, 0, sizeof wanted);
    if (escrypt_r(&escrypt_local, (const uint8_t *) passwd, (size_t) passwdlen,
                  (const uint8_t *) str, (uint8_t *) wanted,
                  sizeof wanted) == 
# 247 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/pwhash_scryptsalsa208sha256.c" 3 4
                                   ((void *)0)
# 247 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/pwhash_scryptsalsa208sha256.c"
                                       ) {
        escrypt_free_local(&escrypt_local);
        return -1;
    }
    escrypt_free_local(&escrypt_local);
    ret = sodium_memcmp(wanted, str, sizeof wanted);
    sodium_memzero(wanted, sizeof wanted);

    return ret;
}
