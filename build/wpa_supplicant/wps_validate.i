# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
# 1 "D:\\ESP32\\esp-idf-v3.1-rc1\\ESP32_PIC_A2DP\\build\\wpa_supplicant//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"







# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/includes.h" 1
# 9 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/common.h" 1
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/common.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/port/include/os.h" 1
# 17 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/port/include/os.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_types.h" 1
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_types.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/cdefs.h" 1
# 43 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/cdefs.h"
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
# 44 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/cdefs.h" 2

# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 149 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4

# 149 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef int ptrdiff_t;
# 216 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef unsigned int size_t;
# 328 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef short unsigned int wchar_t;
# 46 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/cdefs.h" 2
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_types.h" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h" 1
# 13 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/_intsup.h" 1
# 14 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h" 2







# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
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
# 18 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/port/include/os.h" 2
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
# 15 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/reent.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/_types.h" 1
# 12 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/_types.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_types.h" 1
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


# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/port/include/os.h" 2
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




# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/port/include/os.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h" 1
# 14 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
       



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
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h" 2





typedef int32_t esp_err_t;
# 58 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
const char *esp_err_to_name(esp_err_t code);
# 76 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
const char *esp_err_to_name_r(esp_err_t code, char *buf, size_t buflen);


void _esp_error_check_failed(esp_err_t rc, const char *file, int line, const char *function, const char *expression) __attribute__((noreturn));
# 22 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/port/include/os.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h" 1
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/soc.h" 1
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/soc.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_assert.h" 1
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
# 23 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/port/include/os.h" 2

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
# 11 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 2
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
# 12 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 2
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
static int wps_validate_version(const u8 *version, int mandatory)
{
 if (version == 
# 22 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
               ((void *)0)
# 22 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                   ) {
  if (mandatory) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Version attribute " "missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Version attribute " "missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Version attribute " "missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Version attribute " "missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Version attribute " "missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                 ;
   return -1;
  }
  return 0;
 }
 if (*version != 0x10) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Invalid Version attribute " "value 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *version); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Invalid Version attribute " "value 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *version); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Invalid Version attribute " "value 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *version); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Invalid Version attribute " "value 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *version); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Invalid Version attribute " "value 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *version); } } while(0); } while(0)
                             ;
  return -1;
 }
 return 0;
}


static int wps_validate_version2(const u8 *version2, int mandatory)
{
 if (version2 == 
# 41 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
                ((void *)0)
# 41 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                    ) {
  if (mandatory) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Version2 attribute " "missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Version2 attribute " "missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Version2 attribute " "missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Version2 attribute " "missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Version2 attribute " "missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                 ;
   return -1;
  }
  return 0;
 }
 if (*version2 < 0x20) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Invalid Version2 attribute " "value 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *version2); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Invalid Version2 attribute " "value 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *version2); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Invalid Version2 attribute " "value 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *version2); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Invalid Version2 attribute " "value 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *version2); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Invalid Version2 attribute " "value 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *version2); } } while(0); } while(0)
                              ;
  return -1;
 }
 return 0;
}


static int wps_validate_request_type(const u8 *request_type, int mandatory)
{
 if (request_type == 
# 60 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
                    ((void *)0)
# 60 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                        ) {
  if (mandatory) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Request Type " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Request Type " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Request Type " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Request Type " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Request Type " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                           ;
   return -1;
  }
  return 0;
 }
 if (*request_type > 0x03) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Invalid Request Type " "attribute value 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *request_type); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Invalid Request Type " "attribute value 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *request_type); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Invalid Request Type " "attribute value 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *request_type); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Invalid Request Type " "attribute value 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *request_type); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Invalid Request Type " "attribute value 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *request_type); } } while(0); } while(0)
                                            ;
  return -1;
 }
 return 0;
}


static int wps_validate_response_type(const u8 *response_type, int mandatory)
{
 if (response_type == 
# 79 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
                     ((void *)0)
# 79 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                         ) {
  if (mandatory) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Response Type " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Response Type " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Response Type " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Response Type " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Response Type " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                           ;
   return -1;
  }
  return 0;
 }
 if (*response_type > 0x03) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Invalid Response Type " "attribute value 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *response_type); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Invalid Response Type " "attribute value 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *response_type); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Invalid Response Type " "attribute value 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *response_type); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Invalid Response Type " "attribute value 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *response_type); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Invalid Response Type " "attribute value 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *response_type); } } while(0); } while(0)
                                             ;
  return -1;
 }
 return 0;
}


static int valid_config_methods(u16 val, int wps2)
{
 if (wps2) {
  if ((val & 0x6000) && !(val & 0x0008)) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Physical/Virtual " "Display flag without old Display flag " "set" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Physical/Virtual " "Display flag without old Display flag " "set" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Physical/Virtual " "Display flag without old Display flag " "set" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Physical/Virtual " "Display flag without old Display flag " "set" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Physical/Virtual " "Display flag without old Display flag " "set" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)

             ;
   return 0;
  }
  if (!(val & 0x6000) && (val & 0x0008)) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Display flag " "without Physical/Virtual Display flag" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Display flag " "without Physical/Virtual Display flag" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Display flag " "without Physical/Virtual Display flag" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Display flag " "without Physical/Virtual Display flag" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Display flag " "without Physical/Virtual Display flag" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                                               ;
   return 0;
  }
  if ((val & 0x0600) && !(val & 0x0080)) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Physical/Virtual " "PushButton flag without old PushButton " "flag set" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Physical/Virtual " "PushButton flag without old PushButton " "flag set" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Physical/Virtual " "PushButton flag without old PushButton " "flag set" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Physical/Virtual " "PushButton flag without old PushButton " "flag set" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Physical/Virtual " "PushButton flag without old PushButton " "flag set" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)

                  ;
   return 0;
  }
  if (!(val & 0x0600) && (val & 0x0080)) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: PushButton flag " "without Physical/Virtual PushButton flag" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: PushButton flag " "without Physical/Virtual PushButton flag" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: PushButton flag " "without Physical/Virtual PushButton flag" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: PushButton flag " "without Physical/Virtual PushButton flag" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: PushButton flag " "without Physical/Virtual PushButton flag" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                                                  ;
   return 0;
  }
 }

 return 1;
}


static int wps_validate_config_methods(const u8 *config_methods, int wps2,
           int mandatory)
{
 u16 val;

 if (config_methods == 
# 132 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
                      ((void *)0)
# 132 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                          ) {
  if (mandatory) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Configuration " "Methods attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Configuration " "Methods attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Configuration " "Methods attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Configuration " "Methods attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Configuration " "Methods attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                                   ;
   return -1;
  }
  return 0;
 }

 val = ((u16) (((config_methods)[0] << 8) | (config_methods)[1]));
 if (!valid_config_methods(val, wps2)) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Invalid Configuration " "Methods attribute value 0x%04x" "\033[0m" "\n", esp_log_timestamp(), "wpa", val); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Invalid Configuration " "Methods attribute value 0x%04x" "\033[0m" "\n", esp_log_timestamp(), "wpa", val); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Invalid Configuration " "Methods attribute value 0x%04x" "\033[0m" "\n", esp_log_timestamp(), "wpa", val); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Invalid Configuration " "Methods attribute value 0x%04x" "\033[0m" "\n", esp_log_timestamp(), "wpa", val); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Invalid Configuration " "Methods attribute value 0x%04x" "\033[0m" "\n", esp_log_timestamp(), "wpa", val); } } while(0); } while(0)
                                            ;
  return -1;
 }
 return 0;
}


static int wps_validate_ap_config_methods(const u8 *config_methods, int wps2,
       int mandatory)
{
 u16 val;

 if (wps_validate_config_methods(config_methods, wps2, mandatory) < 0)
  return -1;
 if (config_methods == 
# 158 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
                      ((void *)0)
# 158 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                          )
  return 0;
 val = ((u16) (((config_methods)[0] << 8) | (config_methods)[1]));
 if (val & 0x0080) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Invalid Configuration " "Methods attribute value 0x%04x in AP info " "(PushButton not allowed for registering new ER)" "\033[0m" "\n", esp_log_timestamp(), "wpa", val); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Invalid Configuration " "Methods attribute value 0x%04x in AP info " "(PushButton not allowed for registering new ER)" "\033[0m" "\n", esp_log_timestamp(), "wpa", val); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Invalid Configuration " "Methods attribute value 0x%04x in AP info " "(PushButton not allowed for registering new ER)" "\033[0m" "\n", esp_log_timestamp(), "wpa", val); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Invalid Configuration " "Methods attribute value 0x%04x in AP info " "(PushButton not allowed for registering new ER)" "\033[0m" "\n", esp_log_timestamp(), "wpa", val); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Invalid Configuration " "Methods attribute value 0x%04x in AP info " "(PushButton not allowed for registering new ER)" "\033[0m" "\n", esp_log_timestamp(), "wpa", val); } } while(0); } while(0)


          ;
  return -1;
 }
 return 0;
}


static int wps_validate_uuid_e(const u8 *uuid_e, int mandatory)
{
 if (uuid_e == 
# 174 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
              ((void *)0)
# 174 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                  ) {
  if (mandatory) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: UUID-E " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: UUID-E " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: UUID-E " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: UUID-E " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: UUID-E " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                           ;
   return -1;
  }
  return 0;
 }
 return 0;
}


static int wps_validate_uuid_r(const u8 *uuid_r, int mandatory)
{
 if (uuid_r == 
# 188 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
              ((void *)0)
# 188 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                  ) {
  if (mandatory) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: UUID-R " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: UUID-R " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: UUID-R " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: UUID-R " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: UUID-R " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                           ;
   return -1;
  }
  return 0;
 }
 return 0;
}


static int wps_validate_primary_dev_type(const u8 *primary_dev_type,
      int mandatory)
{
 if (primary_dev_type == 
# 203 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
                        ((void *)0)
# 203 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                            ) {
  if (mandatory) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Primary Device Type " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Primary Device Type " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Primary Device Type " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Primary Device Type " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Primary Device Type " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                           ;
   return -1;
  }
  return 0;
 }
 return 0;
}


static int wps_validate_rf_bands(const u8 *rf_bands, int mandatory)
{
 if (rf_bands == 
# 217 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
                ((void *)0)
# 217 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                    ) {
  if (mandatory) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: RF Bands " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: RF Bands " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: RF Bands " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: RF Bands " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: RF Bands " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                           ;
   return -1;
  }
  return 0;
 }
 if (*rf_bands != 0x01 && *rf_bands != 0x02 &&
     *rf_bands != (0x01 | 0x02)) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Invalid Rf Bands " "attribute value 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *rf_bands); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Invalid Rf Bands " "attribute value 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *rf_bands); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Invalid Rf Bands " "attribute value 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *rf_bands); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Invalid Rf Bands " "attribute value 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *rf_bands); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Invalid Rf Bands " "attribute value 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *rf_bands); } } while(0); } while(0)
                                        ;
  return -1;
 }
 return 0;
}


static int wps_validate_assoc_state(const u8 *assoc_state, int mandatory)
{
 u16 val;
 if (assoc_state == 
# 238 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
                   ((void *)0)
# 238 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                       ) {
  if (mandatory) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Association State " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Association State " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Association State " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Association State " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Association State " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                           ;
   return -1;
  }
  return 0;
 }
 val = ((u16) (((assoc_state)[0] << 8) | (assoc_state)[1]));
 if (val > 4) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Invalid Association State " "attribute value 0x%04x" "\033[0m" "\n", esp_log_timestamp(), "wpa", val); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Invalid Association State " "attribute value 0x%04x" "\033[0m" "\n", esp_log_timestamp(), "wpa", val); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Invalid Association State " "attribute value 0x%04x" "\033[0m" "\n", esp_log_timestamp(), "wpa", val); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Invalid Association State " "attribute value 0x%04x" "\033[0m" "\n", esp_log_timestamp(), "wpa", val); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Invalid Association State " "attribute value 0x%04x" "\033[0m" "\n", esp_log_timestamp(), "wpa", val); } } while(0); } while(0)
                                    ;
  return -1;
 }
 return 0;
}


static int wps_validate_config_error(const u8 *config_error, int mandatory)
{
 u16 val;

 if (config_error == 
# 260 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
                    ((void *)0)
# 260 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                        ) {
  if (mandatory) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Configuration Error " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Configuration Error " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Configuration Error " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Configuration Error " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Configuration Error " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                           ;
   return -1;
  }
  return 0;
 }
 val = ((u16) (((config_error)[0] << 8) | (config_error)[1]));
 if (val > 18) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Invalid Configuration Error " "attribute value 0x%04x" "\033[0m" "\n", esp_log_timestamp(), "wpa", val); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Invalid Configuration Error " "attribute value 0x%04x" "\033[0m" "\n", esp_log_timestamp(), "wpa", val); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Invalid Configuration Error " "attribute value 0x%04x" "\033[0m" "\n", esp_log_timestamp(), "wpa", val); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Invalid Configuration Error " "attribute value 0x%04x" "\033[0m" "\n", esp_log_timestamp(), "wpa", val); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Invalid Configuration Error " "attribute value 0x%04x" "\033[0m" "\n", esp_log_timestamp(), "wpa", val); } } while(0); } while(0)
                                    ;
  return -1;
 }
 return 0;
}


static int wps_validate_dev_password_id(const u8 *dev_password_id,
     int mandatory)
{
 u16 val;

 if (dev_password_id == 
# 283 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
                       ((void *)0)
# 283 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                           ) {
  if (mandatory) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Device Password ID " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Device Password ID " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Device Password ID " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Device Password ID " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Device Password ID " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                           ;
   return -1;
  }
  return 0;
 }
 val = ((u16) (((dev_password_id)[0] << 8) | (dev_password_id)[1]));
 if (val >= 0x0006 && val <= 0x000f) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Invalid Device Password ID " "attribute value 0x%04x" "\033[0m" "\n", esp_log_timestamp(), "wpa", val); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Invalid Device Password ID " "attribute value 0x%04x" "\033[0m" "\n", esp_log_timestamp(), "wpa", val); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Invalid Device Password ID " "attribute value 0x%04x" "\033[0m" "\n", esp_log_timestamp(), "wpa", val); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Invalid Device Password ID " "attribute value 0x%04x" "\033[0m" "\n", esp_log_timestamp(), "wpa", val); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Invalid Device Password ID " "attribute value 0x%04x" "\033[0m" "\n", esp_log_timestamp(), "wpa", val); } } while(0); } while(0)
                                    ;
  return -1;
 }
 return 0;
}


static int wps_validate_manufacturer(const u8 *manufacturer, size_t len,
         int mandatory)
{
 if (manufacturer == 
# 304 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
                    ((void *)0)
# 304 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                        ) {
  if (mandatory) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Manufacturer " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Manufacturer " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Manufacturer " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Manufacturer " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Manufacturer " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                           ;
   return -1;
  }
  return 0;
 }
 if (len > 0 && manufacturer[len - 1] == 0) {
  wpa_hexdump_ascii(ESP_LOG_INFO, "WPS-STRICT: Invalid Manufacturer "
      "attribute value", manufacturer, len);
  return -1;
 }
 return 0;
}


static int wps_validate_model_name(const u8 *model_name, size_t len,
       int mandatory)
{
 if (model_name == 
# 324 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
                  ((void *)0)
# 324 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                      ) {
  if (mandatory) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Model Name " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Model Name " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Model Name " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Model Name " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Model Name " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                           ;
   return -1;
  }
  return 0;
 }
 if (len > 0 && model_name[len - 1] == 0) {
  wpa_hexdump_ascii(ESP_LOG_INFO, "WPS-STRICT: Invalid Model Name "
      "attribute value", model_name, len);
  return -1;
 }
 return 0;
}


static int wps_validate_model_number(const u8 *model_number, size_t len,
         int mandatory)
{
 if (model_number == 
# 344 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
                    ((void *)0)
# 344 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                        ) {
  if (mandatory) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Model Number " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Model Number " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Model Number " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Model Number " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Model Number " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                           ;
   return -1;
  }
  return 0;
 }
 if (len > 0 && model_number[len - 1] == 0) {
  wpa_hexdump_ascii(ESP_LOG_INFO, "WPS-STRICT: Invalid Model Number "
      "attribute value", model_number, len);
  return -1;
 }
 return 0;
}


static int wps_validate_serial_number(const u8 *serial_number, size_t len,
          int mandatory)
{
 if (serial_number == 
# 364 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
                     ((void *)0)
# 364 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                         ) {
  if (mandatory) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Serial Number " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Serial Number " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Serial Number " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Serial Number " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Serial Number " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                           ;
   return -1;
  }
  return 0;
 }
 if (len > 0 && serial_number[len - 1] == 0) {
  wpa_hexdump_ascii(ESP_LOG_INFO, "WPS-STRICT: Invalid Serial "
      "Number attribute value",
      serial_number, len);
  return -1;
 }
 return 0;
}


static int wps_validate_dev_name(const u8 *dev_name, size_t len,
     int mandatory)
{
 if (dev_name == 
# 385 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
                ((void *)0)
# 385 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                    ) {
  if (mandatory) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Device Name " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Device Name " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Device Name " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Device Name " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Device Name " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                           ;
   return -1;
  }
  return 0;
 }
 if (len > 0 && dev_name[len - 1] == 0) {
  wpa_hexdump_ascii(ESP_LOG_INFO, "WPS-STRICT: Invalid Device Name "
      "attribute value", dev_name, len);
  return -1;
 }
 return 0;
}


static int wps_validate_request_to_enroll(const u8 *request_to_enroll,
       int mandatory)
{
 if (request_to_enroll == 
# 405 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
                         ((void *)0)
# 405 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                             ) {
  if (mandatory) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Request to Enroll " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Request to Enroll " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Request to Enroll " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Request to Enroll " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Request to Enroll " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                           ;
   return -1;
  }
  return 0;
 }
 if (*request_to_enroll > 0x01) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Invalid Request to Enroll " "attribute value 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *request_to_enroll); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Invalid Request to Enroll " "attribute value 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *request_to_enroll); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Invalid Request to Enroll " "attribute value 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *request_to_enroll); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Invalid Request to Enroll " "attribute value 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *request_to_enroll); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Invalid Request to Enroll " "attribute value 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *request_to_enroll); } } while(0); } while(0)
                                                 ;
  return -1;
 }
 return 0;
}


static int wps_validate_req_dev_type(const u8 *req_dev_type[], size_t num,
         int mandatory)
{
 if (num == 0) {
  if (mandatory) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Requested Device " "Type attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Requested Device " "Type attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Requested Device " "Type attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Requested Device " "Type attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Requested Device " "Type attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                                ;
   return -1;
  }
  return 0;
 }
 return 0;
}


static int wps_validate_wps_state(const u8 *wps_state, int mandatory)
{
 if (wps_state == 
# 439 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
                 ((void *)0)
# 439 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                     ) {
  if (mandatory) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Wi-Fi Protected " "Setup State attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Wi-Fi Protected " "Setup State attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Wi-Fi Protected " "Setup State attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Wi-Fi Protected " "Setup State attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Wi-Fi Protected " "Setup State attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                                       ;
   return -1;
  }
  return 0;
 }
 if (*wps_state != WPS_STATE_NOT_CONFIGURED &&
     *wps_state != WPS_STATE_CONFIGURED) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Invalid Wi-Fi Protected " "Setup State attribute value 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *wps_state); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Invalid Wi-Fi Protected " "Setup State attribute value 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *wps_state); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Invalid Wi-Fi Protected " "Setup State attribute value 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *wps_state); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Invalid Wi-Fi Protected " "Setup State attribute value 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *wps_state); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Invalid Wi-Fi Protected " "Setup State attribute value 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *wps_state); } } while(0); } while(0)
                                                     ;
  return -1;
 }
 return 0;
}


static int wps_validate_ap_setup_locked(const u8 *ap_setup_locked,
     int mandatory)
{
 if (ap_setup_locked == 
# 460 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
                       ((void *)0)
# 460 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                           ) {
  if (mandatory) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: AP Setup Locked " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: AP Setup Locked " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: AP Setup Locked " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: AP Setup Locked " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: AP Setup Locked " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                           ;
   return -1;
  }
  return 0;
 }
 if (*ap_setup_locked > 1) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Invalid AP Setup Locked " "attribute value 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *ap_setup_locked); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Invalid AP Setup Locked " "attribute value 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *ap_setup_locked); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Invalid AP Setup Locked " "attribute value 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *ap_setup_locked); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Invalid AP Setup Locked " "attribute value 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *ap_setup_locked); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Invalid AP Setup Locked " "attribute value 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *ap_setup_locked); } } while(0); } while(0)
                                               ;
  return -1;
 }
 return 0;
}


static int wps_validate_selected_registrar(const u8 *selected_registrar,
        int mandatory)
{
 if (selected_registrar == 
# 480 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
                          ((void *)0)
# 480 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                              ) {
  if (mandatory) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Selected Registrar " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Selected Registrar " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Selected Registrar " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Selected Registrar " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Selected Registrar " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                           ;
   return -1;
  }
  return 0;
 }
 if (*selected_registrar > 1) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Invalid Selected Registrar " "attribute value 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *selected_registrar); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Invalid Selected Registrar " "attribute value 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *selected_registrar); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Invalid Selected Registrar " "attribute value 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *selected_registrar); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Invalid Selected Registrar " "attribute value 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *selected_registrar); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Invalid Selected Registrar " "attribute value 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *selected_registrar); } } while(0); } while(0)
                                                  ;
  return -1;
 }
 return 0;
}


static int wps_validate_sel_reg_config_methods(const u8 *config_methods,
            int wps2, int mandatory)
{
 u16 val;

 if (config_methods == 
# 502 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
                      ((void *)0)
# 502 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                          ) {
  if (mandatory) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Selected Registrar " "Configuration Methods attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Selected Registrar " "Configuration Methods attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Selected Registrar " "Configuration Methods attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Selected Registrar " "Configuration Methods attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Selected Registrar " "Configuration Methods attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                                                 ;
   return -1;
  }
  return 0;
 }

 val = ((u16) (((config_methods)[0] << 8) | (config_methods)[1]));
 if (!valid_config_methods(val, wps2)) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Invalid Selected Registrar " "Configuration Methods attribute value 0x%04x" "\033[0m" "\n", esp_log_timestamp(), "wpa", val); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Invalid Selected Registrar " "Configuration Methods attribute value 0x%04x" "\033[0m" "\n", esp_log_timestamp(), "wpa", val); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Invalid Selected Registrar " "Configuration Methods attribute value 0x%04x" "\033[0m" "\n", esp_log_timestamp(), "wpa", val); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Invalid Selected Registrar " "Configuration Methods attribute value 0x%04x" "\033[0m" "\n", esp_log_timestamp(), "wpa", val); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Invalid Selected Registrar " "Configuration Methods attribute value 0x%04x" "\033[0m" "\n", esp_log_timestamp(), "wpa", val); } } while(0); } while(0)

          ;
  return -1;
 }
 return 0;
}


static int wps_validate_authorized_macs(const u8 *authorized_macs, size_t len,
     int mandatory)
{
 if (authorized_macs == 
# 525 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
                       ((void *)0)
# 525 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                           ) {
  if (mandatory) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Authorized MACs " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Authorized MACs " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Authorized MACs " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Authorized MACs " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Authorized MACs " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                           ;
   return -1;
  }
  return 0;
 }
 if (len > 30 && (len % 6) != 0) {
  wpa_hexdump(ESP_LOG_INFO, "WPS-STRICT: Invalid Authorized "
       "MACs attribute value", authorized_macs, len);
  return -1;
 }
 return 0;
}


static int wps_validate_msg_type(const u8 *msg_type, int mandatory)
{
 if (msg_type == 
# 544 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
                ((void *)0)
# 544 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                    ) {
  if (mandatory) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Message Type " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Message Type " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Message Type " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Message Type " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Message Type " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                           ;
   return -1;
  }
  return 0;
 }
 if (*msg_type < WPS_Beacon || *msg_type > WPS_WSC_DONE) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Invalid Message Type " "attribute value 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *msg_type); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Invalid Message Type " "attribute value 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *msg_type); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Invalid Message Type " "attribute value 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *msg_type); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Invalid Message Type " "attribute value 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *msg_type); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Invalid Message Type " "attribute value 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *msg_type); } } while(0); } while(0)
                                        ;
  return -1;
 }
 return 0;
}


static int wps_validate_mac_addr(const u8 *mac_addr, int mandatory)
{
 if (mac_addr == 
# 563 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
                ((void *)0)
# 563 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                    ) {
  if (mandatory) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: MAC Address " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: MAC Address " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: MAC Address " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: MAC Address " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: MAC Address " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                           ;
   return -1;
  }
  return 0;
 }
 if (mac_addr[0] & 0x01) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Invalid MAC Address " "attribute value " "%02x:%02x:%02x:%02x:%02x:%02x" "\033[0m" "\n", esp_log_timestamp(), "wpa", (mac_addr)[0], (mac_addr)[1], (mac_addr)[2], (mac_addr)[3], (mac_addr)[4], (mac_addr)[5]); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Invalid MAC Address " "attribute value " "%02x:%02x:%02x:%02x:%02x:%02x" "\033[0m" "\n", esp_log_timestamp(), "wpa", (mac_addr)[0], (mac_addr)[1], (mac_addr)[2], (mac_addr)[3], (mac_addr)[4], (mac_addr)[5]); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Invalid MAC Address " "attribute value " "%02x:%02x:%02x:%02x:%02x:%02x" "\033[0m" "\n", esp_log_timestamp(), "wpa", (mac_addr)[0], (mac_addr)[1], (mac_addr)[2], (mac_addr)[3], (mac_addr)[4], (mac_addr)[5]); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Invalid MAC Address " "attribute value " "%02x:%02x:%02x:%02x:%02x:%02x" "\033[0m" "\n", esp_log_timestamp(), "wpa", (mac_addr)[0], (mac_addr)[1], (mac_addr)[2], (mac_addr)[3], (mac_addr)[4], (mac_addr)[5]); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Invalid MAC Address " "attribute value " "%02x:%02x:%02x:%02x:%02x:%02x" "\033[0m" "\n", esp_log_timestamp(), "wpa", (mac_addr)[0], (mac_addr)[1], (mac_addr)[2], (mac_addr)[3], (mac_addr)[4], (mac_addr)[5]); } } while(0); } while(0)
                                                   ;
  return -1;
 }
 return 0;
}


static int wps_validate_enrollee_nonce(const u8 *enrollee_nonce, int mandatory)
{
 if (enrollee_nonce == 
# 582 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
                      ((void *)0)
# 582 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                          ) {
  if (mandatory) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Enrollee Nonce " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Enrollee Nonce " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Enrollee Nonce " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Enrollee Nonce " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Enrollee Nonce " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                           ;
   return -1;
  }
  return 0;
 }
 return 0;
}


static int wps_validate_registrar_nonce(const u8 *registrar_nonce,
     int mandatory)
{
 if (registrar_nonce == 
# 597 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
                       ((void *)0)
# 597 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                           ) {
  if (mandatory) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Registrar Nonce " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Registrar Nonce " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Registrar Nonce " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Registrar Nonce " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Registrar Nonce " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                           ;
   return -1;
  }
  return 0;
 }
 return 0;
}


static int wps_validate_public_key(const u8 *public_key, size_t len,
       int mandatory)
{
 if (public_key == 
# 612 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
                  ((void *)0)
# 612 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                      ) {
  if (mandatory) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Public Key " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Public Key " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Public Key " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Public Key " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Public Key " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                           ;
   return -1;
  }
  return 0;
 }
 if (len != 192) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Invalid Public Key " "attribute length %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", (int) len); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Invalid Public Key " "attribute length %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", (int) len); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Invalid Public Key " "attribute length %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", (int) len); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Invalid Public Key " "attribute length %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", (int) len); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Invalid Public Key " "attribute length %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", (int) len); } } while(0); } while(0)
                                       ;
  return -1;
 }
 return 0;
}


static int num_bits_set(u16 val)
{
 int c;
 for (c = 0; val; c++)
  val &= val - 1;
 return c;
}


static int wps_validate_auth_type_flags(const u8 *flags, int mandatory)
{
 u16 val;

 if (flags == 
# 642 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
             ((void *)0)
# 642 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                 ) {
  if (mandatory) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Authentication Type " "Flags attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Authentication Type " "Flags attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Authentication Type " "Flags attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Authentication Type " "Flags attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Authentication Type " "Flags attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                                 ;
   return -1;
  }
  return 0;
 }
 val = ((u16) (((flags)[0] << 8) | (flags)[1]));
 if ((val & ~(0x0001 | 0x0002 | 0x0004 | 0x0008 | 0x0010 | 0x0020)) || !(val & 0x0020)) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Invalid Authentication Type " "Flags attribute value 0x%04x" "\033[0m" "\n", esp_log_timestamp(), "wpa", val); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Invalid Authentication Type " "Flags attribute value 0x%04x" "\033[0m" "\n", esp_log_timestamp(), "wpa", val); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Invalid Authentication Type " "Flags attribute value 0x%04x" "\033[0m" "\n", esp_log_timestamp(), "wpa", val); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Invalid Authentication Type " "Flags attribute value 0x%04x" "\033[0m" "\n", esp_log_timestamp(), "wpa", val); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Invalid Authentication Type " "Flags attribute value 0x%04x" "\033[0m" "\n", esp_log_timestamp(), "wpa", val); } } while(0); } while(0)
                                          ;
  return -1;
 }
 return 0;
}


static int wps_validate_auth_type(const u8 *type, int mandatory)
{
 u16 val;

 if (type == 
# 664 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
            ((void *)0)
# 664 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                ) {
  if (mandatory) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Authentication Type " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Authentication Type " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Authentication Type " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Authentication Type " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Authentication Type " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                           ;
   return -1;
  }
  return 0;
 }
 val = ((u16) (((type)[0] << 8) | (type)[1]));
 if ((val & ~(0x0001 | 0x0002 | 0x0004 | 0x0008 | 0x0010 | 0x0020)) || val == 0 ||
     (num_bits_set(val) > 1 &&
      val != (0x0002 | 0x0020))) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Invalid Authentication Type " "attribute value 0x%04x" "\033[0m" "\n", esp_log_timestamp(), "wpa", val); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Invalid Authentication Type " "attribute value 0x%04x" "\033[0m" "\n", esp_log_timestamp(), "wpa", val); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Invalid Authentication Type " "attribute value 0x%04x" "\033[0m" "\n", esp_log_timestamp(), "wpa", val); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Invalid Authentication Type " "attribute value 0x%04x" "\033[0m" "\n", esp_log_timestamp(), "wpa", val); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Invalid Authentication Type " "attribute value 0x%04x" "\033[0m" "\n", esp_log_timestamp(), "wpa", val); } } while(0); } while(0)
                                    ;
  return -1;
 }
 return 0;
}


static int wps_validate_encr_type_flags(const u8 *flags, int mandatory)
{
 u16 val;

 if (flags == 
# 688 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
             ((void *)0)
# 688 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                 ) {
  if (mandatory) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Encryption Type " "Flags attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Encryption Type " "Flags attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Encryption Type " "Flags attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Encryption Type " "Flags attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Encryption Type " "Flags attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                                 ;
   return -1;
  }
  return 0;
 }
 val = ((u16) (((flags)[0] << 8) | (flags)[1]));
 if ((val & ~(0x0001 | 0x0002 | 0x0004 | 0x0008)) || !(val & 0x0008)) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Invalid Encryption Type " "Flags attribute value 0x%04x" "\033[0m" "\n", esp_log_timestamp(), "wpa", val); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Invalid Encryption Type " "Flags attribute value 0x%04x" "\033[0m" "\n", esp_log_timestamp(), "wpa", val); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Invalid Encryption Type " "Flags attribute value 0x%04x" "\033[0m" "\n", esp_log_timestamp(), "wpa", val); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Invalid Encryption Type " "Flags attribute value 0x%04x" "\033[0m" "\n", esp_log_timestamp(), "wpa", val); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Invalid Encryption Type " "Flags attribute value 0x%04x" "\033[0m" "\n", esp_log_timestamp(), "wpa", val); } } while(0); } while(0)
                                          ;
  return -1;
 }
 return 0;
}


static int wps_validate_encr_type(const u8 *type, int mandatory)
{
 u16 val;

 if (type == 
# 710 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
            ((void *)0)
# 710 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                ) {
  if (mandatory) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Encryption Type " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Encryption Type " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Encryption Type " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Encryption Type " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Encryption Type " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                           ;
   return -1;
  }
  return 0;
 }
 val = ((u16) (((type)[0] << 8) | (type)[1]));
 if ((val & ~(0x0001 | 0x0002 | 0x0004 | 0x0008)) || val == 0 ||
     (num_bits_set(val) > 1 && val != (0x0004 | 0x0008))) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Invalid Encryption Type " "attribute value 0x%04x" "\033[0m" "\n", esp_log_timestamp(), "wpa", val); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Invalid Encryption Type " "attribute value 0x%04x" "\033[0m" "\n", esp_log_timestamp(), "wpa", val); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Invalid Encryption Type " "attribute value 0x%04x" "\033[0m" "\n", esp_log_timestamp(), "wpa", val); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Invalid Encryption Type " "attribute value 0x%04x" "\033[0m" "\n", esp_log_timestamp(), "wpa", val); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Invalid Encryption Type " "attribute value 0x%04x" "\033[0m" "\n", esp_log_timestamp(), "wpa", val); } } while(0); } while(0)
                                    ;
  return -1;
 }
 return 0;
}


static int wps_validate_conn_type_flags(const u8 *flags, int mandatory)
{
 if (flags == 
# 731 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
             ((void *)0)
# 731 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                 ) {
  if (mandatory) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Connection Type " "Flags attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Connection Type " "Flags attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Connection Type " "Flags attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Connection Type " "Flags attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Connection Type " "Flags attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                                 ;
   return -1;
  }
  return 0;
 }
 if ((*flags & ~(0x01 | 0x02)) ||
     !(*flags & 0x01)) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Invalid Connection Type " "Flags attribute value 0x%02x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *flags); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Invalid Connection Type " "Flags attribute value 0x%02x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *flags); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Invalid Connection Type " "Flags attribute value 0x%02x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *flags); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Invalid Connection Type " "Flags attribute value 0x%02x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *flags); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Invalid Connection Type " "Flags attribute value 0x%02x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *flags); } } while(0); } while(0)
                                             ;
  return -1;
 }
 return 0;
}


static int wps_validate_os_version(const u8 *os_version, int mandatory)
{
 if (os_version == 
# 751 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
                  ((void *)0)
# 751 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                      ) {
  if (mandatory) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: OS Version " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: OS Version " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: OS Version " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: OS Version " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: OS Version " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                           ;
   return -1;
  }
  return 0;
 }
 return 0;
}


static int wps_validate_authenticator(const u8 *authenticator, int mandatory)
{
 if (authenticator == 
# 765 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
                     ((void *)0)
# 765 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                         ) {
  if (mandatory) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Authenticator " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Authenticator " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Authenticator " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Authenticator " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Authenticator " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                           ;
   return -1;
  }
  return 0;
 }
 return 0;
}


static int wps_validate_e_hash1(const u8 *hash, int mandatory)
{
 if (hash == 
# 779 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
            ((void *)0)
# 779 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                ) {
  if (mandatory) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: E-Hash1 " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: E-Hash1 " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: E-Hash1 " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: E-Hash1 " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: E-Hash1 " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                           ;
   return -1;
  }
  return 0;
 }
 return 0;
}


static int wps_validate_e_hash2(const u8 *hash, int mandatory)
{
 if (hash == 
# 793 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
            ((void *)0)
# 793 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                ) {
  if (mandatory) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: E-Hash2 " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: E-Hash2 " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: E-Hash2 " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: E-Hash2 " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: E-Hash2 " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                           ;
   return -1;
  }
  return 0;
 }
 return 0;
}


static int wps_validate_r_hash1(const u8 *hash, int mandatory)
{
 if (hash == 
# 807 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
            ((void *)0)
# 807 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                ) {
  if (mandatory) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: R-Hash1 " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: R-Hash1 " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: R-Hash1 " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: R-Hash1 " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: R-Hash1 " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                           ;
   return -1;
  }
  return 0;
 }
 return 0;
}


static int wps_validate_r_hash2(const u8 *hash, int mandatory)
{
 if (hash == 
# 821 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
            ((void *)0)
# 821 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                ) {
  if (mandatory) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: R-Hash2 " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: R-Hash2 " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: R-Hash2 " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: R-Hash2 " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: R-Hash2 " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                           ;
   return -1;
  }
  return 0;
 }
 return 0;
}


static int wps_validate_encr_settings(const u8 *encr_settings, size_t len,
       int mandatory)
{
 if (encr_settings == 
# 836 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
                     ((void *)0)
# 836 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                         ) {
  if (mandatory) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Encrypted Settings " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Encrypted Settings " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Encrypted Settings " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Encrypted Settings " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Encrypted Settings " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                           ;
   return -1;
  }
  return 0;
 }
 if (len < 16) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Invalid Encrypted Settings " "attribute length %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", (int) len); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Invalid Encrypted Settings " "attribute length %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", (int) len); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Invalid Encrypted Settings " "attribute length %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", (int) len); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Invalid Encrypted Settings " "attribute length %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", (int) len); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Invalid Encrypted Settings " "attribute length %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", (int) len); } } while(0); } while(0)
                                       ;
  return -1;
 }
 return 0;
}


static int wps_validate_settings_delay_time(const u8 *delay, int mandatory)
{
 if (delay == 
# 855 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
             ((void *)0)
# 855 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                 ) {
  if (mandatory) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Settings Delay Time " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Settings Delay Time " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Settings Delay Time " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Settings Delay Time " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Settings Delay Time " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                           ;
   return -1;
  }
  return 0;
 }
 return 0;
}


static int wps_validate_r_snonce1(const u8 *nonce, int mandatory)
{
 if (nonce == 
# 869 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
             ((void *)0)
# 869 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                 ) {
  if (mandatory) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: R-SNonce1 " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: R-SNonce1 " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: R-SNonce1 " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: R-SNonce1 " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: R-SNonce1 " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                           ;
   return -1;
  }
  return 0;
 }
 return 0;
}


static int wps_validate_r_snonce2(const u8 *nonce, int mandatory)
{
 if (nonce == 
# 883 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
             ((void *)0)
# 883 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                 ) {
  if (mandatory) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: R-SNonce2 " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: R-SNonce2 " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: R-SNonce2 " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: R-SNonce2 " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: R-SNonce2 " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                           ;
   return -1;
  }
  return 0;
 }
 return 0;
}


static int wps_validate_e_snonce1(const u8 *nonce, int mandatory)
{
 if (nonce == 
# 897 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
             ((void *)0)
# 897 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                 ) {
  if (mandatory) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: E-SNonce1 " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: E-SNonce1 " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: E-SNonce1 " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: E-SNonce1 " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: E-SNonce1 " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                           ;
   return -1;
  }
  return 0;
 }
 return 0;
}


static int wps_validate_e_snonce2(const u8 *nonce, int mandatory)
{
 if (nonce == 
# 911 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
             ((void *)0)
# 911 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                 ) {
  if (mandatory) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: E-SNonce2 " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: E-SNonce2 " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: E-SNonce2 " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: E-SNonce2 " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: E-SNonce2 " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                           ;
   return -1;
  }
  return 0;
 }
 return 0;
}


static int wps_validate_key_wrap_auth(const u8 *auth, int mandatory)
{
 if (auth == 
# 925 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
            ((void *)0)
# 925 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                ) {
  if (mandatory) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Key Wrap " "Authenticator attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Key Wrap " "Authenticator attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Key Wrap " "Authenticator attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Key Wrap " "Authenticator attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Key Wrap " "Authenticator attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                                         ;
   return -1;
  }
  return 0;
 }
 return 0;
}


static int wps_validate_ssid(const u8 *ssid, size_t ssid_len, int mandatory)
{
 if (ssid == 
# 939 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
            ((void *)0)
# 939 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                ) {
  if (mandatory) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: SSID " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: SSID " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: SSID " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: SSID " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: SSID " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                           ;
   return -1;
  }
  return 0;
 }
 if (ssid_len == 0 || ssid[ssid_len - 1] == 0) {
  wpa_hexdump_ascii(ESP_LOG_INFO, "WPS-STRICT: Invalid SSID "
      "attribute value", ssid, ssid_len);
  return -1;
 }
 return 0;
}


static int wps_validate_network_key_index(const u8 *idx, int mandatory)
{
 if (idx == 
# 958 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
           ((void *)0)
# 958 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
               ) {
  if (mandatory) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Network Key Index " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Network Key Index " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Network Key Index " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Network Key Index " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Network Key Index " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                           ;
   return -1;
  }
  return 0;
 }
 return 0;
}


static int wps_validate_network_idx(const u8 *idx, int mandatory)
{
 if (idx == 
# 972 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
           ((void *)0)
# 972 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
               ) {
  if (mandatory) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Network Index " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Network Index " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Network Index " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Network Index " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Network Index " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                           ;
   return -1;
  }
  return 0;
 }
 return 0;
}


static int wps_validate_network_key(const u8 *key, size_t key_len,
        const u8 *encr_type, int mandatory)
{
 if (key == 
# 987 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
           ((void *)0)
# 987 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
               ) {
  if (mandatory) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Network Key " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Network Key " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Network Key " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Network Key " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Network Key " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                           ;
   return -1;
  }
  return 0;
 }
 if (((encr_type == 
# 995 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
                   ((void *)0) 
# 995 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                        || ((u16) (((encr_type)[0] << 8) | (encr_type)[1])) != 0x0002) &&
      key_len > 8 && key_len < 64 && key[key_len - 1] == 0) ||
     key_len > 64) {
  wpa_hexdump_ascii_key(ESP_LOG_INFO, "WPS-STRICT: Invalid Network "
          "Key attribute value", key, key_len);
  return -1;
 }
 return 0;
}


static int wps_validate_network_key_shareable(const u8 *val, int mandatory)
{
 if (val == 
# 1008 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
           ((void *)0)
# 1008 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
               ) {
  if (mandatory) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Network Key " "Shareable attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Network Key " "Shareable attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Network Key " "Shareable attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Network Key " "Shareable attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Network Key " "Shareable attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                                     ;
   return -1;
  }
  return 0;
 }
 if (*val > 1) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Invalid Network Key " "Shareable attribute value 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *val); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Invalid Network Key " "Shareable attribute value 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *val); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Invalid Network Key " "Shareable attribute value 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *val); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Invalid Network Key " "Shareable attribute value 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *val); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Invalid Network Key " "Shareable attribute value 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *val); } } while(0); } while(0)
                                             ;
  return -1;
 }
 return 0;
}


static int wps_validate_cred(const u8 *cred, size_t len)
{
 struct wps_parse_attr *attr;
 struct wpabuf buf;
 int ret;

 attr = (struct wps_parse_attr *)calloc(1, (sizeof(struct wps_parse_attr)));
 if (attr == 
# 1032 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
            ((void *)0)
# 1032 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                ) {
  ret = -99;
  goto _out;
 }

 if (cred == 
# 1037 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
            ((void *)0)
# 1037 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                ) {
  ret = -1;
  goto _out;
 }
 wpabuf_set(&buf, cred, len);
 if (wps_parse_msg(&buf, attr) < 0) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Failed to parse Credential" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Failed to parse Credential" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Failed to parse Credential" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Failed to parse Credential" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Failed to parse Credential" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
  ret = -1;
  goto _out;
 }

 if (wps_validate_network_idx(attr->network_idx, 1) ||
     wps_validate_ssid(attr->ssid, attr->ssid_len, 1) ||
     wps_validate_auth_type(attr->auth_type, 1) ||
     wps_validate_encr_type(attr->encr_type, 1) ||
     wps_validate_network_key_index(attr->network_key_idx, 0) ||
     wps_validate_network_key(attr->network_key, attr->network_key_len,
         attr->encr_type, 1) ||
     wps_validate_mac_addr(attr->mac_addr, 1) ||
     wps_validate_network_key_shareable(attr->network_key_shareable, 0))
 {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Invalid Credential" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Invalid Credential" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Invalid Credential" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Invalid Credential" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Invalid Credential" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
  ret = -1;
  goto _out;
 }

 ret = 0;
_out:
 if (attr)
  free((attr));

 return ret;
}


static int wps_validate_credential(const u8 *cred[], size_t len[], size_t num,
       int mandatory)
{
 size_t i;

 if (num == 0) {
  if (mandatory) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Credential " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Credential " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Credential " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Credential " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Credential " "attribute missing" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                           ;
   return -1;
  }
  return 0;
 }

 for (i = 0; i < num; i++) {
  if (wps_validate_cred(cred[i], len[i]) < 0)
   return -1;
 }

 return 0;
}


int wps_validate_beacon(const struct wpabuf *wps_ie)
{
 struct wps_parse_attr *attr;
 int wps2, sel_reg;
 int ret;

 attr = (struct wps_parse_attr *)calloc(1, (sizeof(struct wps_parse_attr)));
 if (attr == 
# 1102 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
            ((void *)0)
# 1102 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                ) {
  ret = -99;
  goto _out;
 }

 if (wps_ie == 
# 1107 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
              ((void *)0)
# 1107 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                  ) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: No WPS IE in Beacon frame" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: No WPS IE in Beacon frame" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: No WPS IE in Beacon frame" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: No WPS IE in Beacon frame" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: No WPS IE in Beacon frame" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
  ret = -1;
  goto _out;
 }
 if (wps_parse_msg(wps_ie, attr) < 0) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Failed to parse WPS IE in " "Beacon frame" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Failed to parse WPS IE in " "Beacon frame" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Failed to parse WPS IE in " "Beacon frame" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Failed to parse WPS IE in " "Beacon frame" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Failed to parse WPS IE in " "Beacon frame" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                     ;
  ret = -1;
  goto _out;
 }

 wps2 = attr->version2 != 
# 1119 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
                         ((void *)0)
# 1119 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                             ;
 sel_reg = attr->selected_registrar != 
# 1120 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
                                      ((void *)0) 
# 1120 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                                           &&
  *attr->selected_registrar != 0;
 if (wps_validate_version(attr->version, 1) ||
     wps_validate_wps_state(attr->wps_state, 1) ||
     wps_validate_ap_setup_locked(attr->ap_setup_locked, 0) ||
     wps_validate_selected_registrar(attr->selected_registrar, 0) ||
     wps_validate_dev_password_id(attr->dev_password_id, sel_reg) ||
     wps_validate_sel_reg_config_methods(attr->sel_reg_config_methods,
      wps2, sel_reg) ||
     wps_validate_uuid_e(attr->uuid_e, 0) ||
     wps_validate_rf_bands(attr->rf_bands, 0) ||
     wps_validate_version2(attr->version2, wps2) ||
     wps_validate_authorized_macs(attr->authorized_macs,
      attr->authorized_macs_len, 0)) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Invalid Beacon frame" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Invalid Beacon frame" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Invalid Beacon frame" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Invalid Beacon frame" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Invalid Beacon frame" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
  ret = -1;
  goto _out;
 }

 ret = 0;
_out:
 if (attr)
  free((attr));

 return ret;
}


int wps_validate_beacon_probe_resp(const struct wpabuf *wps_ie, int probe,
       const u8 *addr)
{
 struct wps_parse_attr *attr;
 int wps2, sel_reg;
 int ret;

 attr = (struct wps_parse_attr *)calloc(1, (sizeof(struct wps_parse_attr)));
 if (attr == 
# 1156 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
            ((void *)0)
# 1156 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                ) {
  ret = -99;
  goto _out;
 }

 if (wps_ie == 
# 1161 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
              ((void *)0)
# 1161 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                  ) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: No WPS IE in " "%sProbe Response frame" "\033[0m" "\n", esp_log_timestamp(), "wpa", probe ? "" : "Beacon/"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: No WPS IE in " "%sProbe Response frame" "\033[0m" "\n", esp_log_timestamp(), "wpa", probe ? "" : "Beacon/"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: No WPS IE in " "%sProbe Response frame" "\033[0m" "\n", esp_log_timestamp(), "wpa", probe ? "" : "Beacon/"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: No WPS IE in " "%sProbe Response frame" "\033[0m" "\n", esp_log_timestamp(), "wpa", probe ? "" : "Beacon/"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: No WPS IE in " "%sProbe Response frame" "\033[0m" "\n", esp_log_timestamp(), "wpa", probe ? "" : "Beacon/"); } } while(0); } while(0)
                                                       ;
  ret = -1;
  goto _out;
 }
 if (wps_parse_msg(wps_ie, attr) < 0) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Failed to parse WPS IE in " "%sProbe Response frame" "\033[0m" "\n", esp_log_timestamp(), "wpa", probe ? "" : "Beacon/"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Failed to parse WPS IE in " "%sProbe Response frame" "\033[0m" "\n", esp_log_timestamp(), "wpa", probe ? "" : "Beacon/"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Failed to parse WPS IE in " "%sProbe Response frame" "\033[0m" "\n", esp_log_timestamp(), "wpa", probe ? "" : "Beacon/"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Failed to parse WPS IE in " "%sProbe Response frame" "\033[0m" "\n", esp_log_timestamp(), "wpa", probe ? "" : "Beacon/"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Failed to parse WPS IE in " "%sProbe Response frame" "\033[0m" "\n", esp_log_timestamp(), "wpa", probe ? "" : "Beacon/"); } } while(0); } while(0)
                                                       ;
  ret = -1;
  goto _out;
 }

 wps2 = attr->version2 != 
# 1174 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
                         ((void *)0)
# 1174 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                             ;
 sel_reg = attr->selected_registrar != 
# 1175 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
                                      ((void *)0) 
# 1175 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                                           &&
  *attr->selected_registrar != 0;
 if (wps_validate_version(attr->version, 1) ||
     wps_validate_wps_state(attr->wps_state, 1) ||
     wps_validate_ap_setup_locked(attr->ap_setup_locked, 0) ||
     wps_validate_selected_registrar(attr->selected_registrar, 0) ||
     wps_validate_dev_password_id(attr->dev_password_id, sel_reg) ||
     wps_validate_sel_reg_config_methods(attr->sel_reg_config_methods,
      wps2, sel_reg) ||
     wps_validate_response_type(attr->response_type, probe) ||
     wps_validate_uuid_e(attr->uuid_e, probe) ||
     wps_validate_manufacturer(attr->manufacturer, attr->manufacturer_len,
          probe) ||
     wps_validate_model_name(attr->model_name, attr->model_name_len,
        probe) ||
     wps_validate_model_number(attr->model_number, attr->model_number_len,
          probe) ||
     wps_validate_serial_number(attr->serial_number,
           attr->serial_number_len, probe) ||
     wps_validate_primary_dev_type(attr->primary_dev_type, probe) ||
     wps_validate_dev_name(attr->dev_name, attr->dev_name_len, probe) ||
     wps_validate_ap_config_methods(attr->config_methods, wps2, probe) ||
     wps_validate_rf_bands(attr->rf_bands, 0) ||
     wps_validate_version2(attr->version2, wps2) ||
     wps_validate_authorized_macs(attr->authorized_macs,
      attr->authorized_macs_len, 0)) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Invalid %sProbe Response " "frame from " "%02x:%02x:%02x:%02x:%02x:%02x" "\033[0m" "\n", esp_log_timestamp(), "wpa", probe ? "" : "Beacon/", (addr)[0], (addr)[1], (addr)[2], (addr)[3], (addr)[4], (addr)[5]); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Invalid %sProbe Response " "frame from " "%02x:%02x:%02x:%02x:%02x:%02x" "\033[0m" "\n", esp_log_timestamp(), "wpa", probe ? "" : "Beacon/", (addr)[0], (addr)[1], (addr)[2], (addr)[3], (addr)[4], (addr)[5]); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Invalid %sProbe Response " "frame from " "%02x:%02x:%02x:%02x:%02x:%02x" "\033[0m" "\n", esp_log_timestamp(), "wpa", probe ? "" : "Beacon/", (addr)[0], (addr)[1], (addr)[2], (addr)[3], (addr)[4], (addr)[5]); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Invalid %sProbe Response " "frame from " "%02x:%02x:%02x:%02x:%02x:%02x" "\033[0m" "\n", esp_log_timestamp(), "wpa", probe ? "" : "Beacon/", (addr)[0], (addr)[1], (addr)[2], (addr)[3], (addr)[4], (addr)[5]); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Invalid %sProbe Response " "frame from " "%02x:%02x:%02x:%02x:%02x:%02x" "\033[0m" "\n", esp_log_timestamp(), "wpa", probe ? "" : "Beacon/", (addr)[0], (addr)[1], (addr)[2], (addr)[3], (addr)[4], (addr)[5]); } } while(0); } while(0)

                    ;

  if (wps2) {
   ret = -1;
   goto _out;
  }




 }

 ret = 0;
_out:
 if (attr)
  free((attr));

 return ret;
}


int wps_validate_probe_req(const struct wpabuf *wps_ie, const u8 *addr)
{
 struct wps_parse_attr *attr;
 int wps2;
 int ret;

 attr = (struct wps_parse_attr *)calloc(1, (sizeof(struct wps_parse_attr)));
 if (attr == 
# 1231 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
            ((void *)0)
# 1231 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                ) {
  ret = -99;
  goto _out;
 }

 if (wps_ie == 
# 1236 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
              ((void *)0)
# 1236 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                  ) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: No WPS IE in " "Probe Request frame" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: No WPS IE in " "Probe Request frame" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: No WPS IE in " "Probe Request frame" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: No WPS IE in " "Probe Request frame" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: No WPS IE in " "Probe Request frame" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                            ;
  ret = -1;
  goto _out;
 }
 if (wps_parse_msg(wps_ie, attr) < 0) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Failed to parse WPS IE in " "Probe Request frame" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Failed to parse WPS IE in " "Probe Request frame" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Failed to parse WPS IE in " "Probe Request frame" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Failed to parse WPS IE in " "Probe Request frame" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Failed to parse WPS IE in " "Probe Request frame" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                            ;
  ret = -1;
  goto _out;
 }

 wps2 = attr->version2 != 
# 1249 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
                         ((void *)0)
# 1249 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                             ;
 if (wps_validate_version(attr->version, 1) ||
     wps_validate_request_type(attr->request_type, 1) ||
     wps_validate_config_methods(attr->config_methods, wps2, 1) ||
     wps_validate_uuid_e(attr->uuid_e, attr->uuid_r == 
# 1253 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
                                                      ((void *)0)
# 1253 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                                                          ) ||
     wps_validate_uuid_r(attr->uuid_r, attr->uuid_e == 
# 1254 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
                                                      ((void *)0)
# 1254 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                                                          ) ||
     wps_validate_primary_dev_type(attr->primary_dev_type, 1) ||
     wps_validate_rf_bands(attr->rf_bands, 1) ||
     wps_validate_assoc_state(attr->assoc_state, 1) ||
     wps_validate_config_error(attr->config_error, 1) ||
     wps_validate_dev_password_id(attr->dev_password_id, 1) ||
     wps_validate_version2(attr->version2, wps2) ||
     wps_validate_manufacturer(attr->manufacturer, attr->manufacturer_len,
          wps2) ||
     wps_validate_model_name(attr->model_name, attr->model_name_len,
        wps2) ||
     wps_validate_model_number(attr->model_number, attr->model_number_len,
          wps2) ||
     wps_validate_dev_name(attr->dev_name, attr->dev_name_len, wps2) ||
     wps_validate_request_to_enroll(attr->request_to_enroll, 0) ||
     wps_validate_req_dev_type(attr->req_dev_type, attr->num_req_dev_type,
          0)) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Invalid Probe Request " "frame from " "%02x:%02x:%02x:%02x:%02x:%02x" "\033[0m" "\n", esp_log_timestamp(), "wpa", (addr)[0], (addr)[1], (addr)[2], (addr)[3], (addr)[4], (addr)[5]); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Invalid Probe Request " "frame from " "%02x:%02x:%02x:%02x:%02x:%02x" "\033[0m" "\n", esp_log_timestamp(), "wpa", (addr)[0], (addr)[1], (addr)[2], (addr)[3], (addr)[4], (addr)[5]); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Invalid Probe Request " "frame from " "%02x:%02x:%02x:%02x:%02x:%02x" "\033[0m" "\n", esp_log_timestamp(), "wpa", (addr)[0], (addr)[1], (addr)[2], (addr)[3], (addr)[4], (addr)[5]); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Invalid Probe Request " "frame from " "%02x:%02x:%02x:%02x:%02x:%02x" "\033[0m" "\n", esp_log_timestamp(), "wpa", (addr)[0], (addr)[1], (addr)[2], (addr)[3], (addr)[4], (addr)[5]); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Invalid Probe Request " "frame from " "%02x:%02x:%02x:%02x:%02x:%02x" "\033[0m" "\n", esp_log_timestamp(), "wpa", (addr)[0], (addr)[1], (addr)[2], (addr)[3], (addr)[4], (addr)[5]); } } while(0); } while(0)
                                          ;
  ret = -1;
  goto _out;
 }

 ret = 0;
_out:
 if (attr)
  free((attr));

 return ret;
}


int wps_validate_assoc_req(const struct wpabuf *wps_ie)
{
 struct wps_parse_attr *attr;
 int wps2;
 int ret;

 attr = (struct wps_parse_attr *)calloc(1, (sizeof(struct wps_parse_attr)));
 if (attr == 
# 1293 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
            ((void *)0)
# 1293 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                ) {
  ret = -99;
  goto _out;
 }

 if (wps_ie == 
# 1298 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
              ((void *)0)
# 1298 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                  ) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: No WPS IE in " "(Re)Association Request frame" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: No WPS IE in " "(Re)Association Request frame" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: No WPS IE in " "(Re)Association Request frame" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: No WPS IE in " "(Re)Association Request frame" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: No WPS IE in " "(Re)Association Request frame" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                                      ;
  ret = -1;
  goto _out;
 }
 if (wps_parse_msg(wps_ie, attr) < 0) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Failed to parse WPS IE in " "(Re)Association Request frame" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Failed to parse WPS IE in " "(Re)Association Request frame" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Failed to parse WPS IE in " "(Re)Association Request frame" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Failed to parse WPS IE in " "(Re)Association Request frame" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Failed to parse WPS IE in " "(Re)Association Request frame" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                                      ;
  ret = -1;
  goto _out;
 }

 wps2 = attr->version2 != 
# 1311 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
                         ((void *)0)
# 1311 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                             ;
 if (wps_validate_version(attr->version, 1) ||
     wps_validate_request_type(attr->request_type, 1) ||
     wps_validate_version2(attr->version2, wps2)) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Invalid (Re)Association " "Request frame" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Invalid (Re)Association " "Request frame" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Invalid (Re)Association " "Request frame" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Invalid (Re)Association " "Request frame" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Invalid (Re)Association " "Request frame" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                      ;
  ret = -1;
  goto _out;
 }

 ret = 0;
_out:
 if (attr)
  free((attr));

 return ret;
}


int wps_validate_assoc_resp(const struct wpabuf *wps_ie)
{
 struct wps_parse_attr *attr;
 int wps2;
 int ret;

 attr = (struct wps_parse_attr *)calloc(1, (sizeof(struct wps_parse_attr)));
 if (attr == 
# 1337 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
            ((void *)0)
# 1337 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                ) {
  ret = -99;
  goto _out;
 }


 if (wps_ie == 
# 1343 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
              ((void *)0)
# 1343 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                  ) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: No WPS IE in " "(Re)Association Response frame" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: No WPS IE in " "(Re)Association Response frame" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: No WPS IE in " "(Re)Association Response frame" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: No WPS IE in " "(Re)Association Response frame" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: No WPS IE in " "(Re)Association Response frame" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                                       ;
  ret = -1;
  goto _out;
 }
 if (wps_parse_msg(wps_ie, attr) < 0) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Failed to parse WPS IE in " "(Re)Association Response frame" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Failed to parse WPS IE in " "(Re)Association Response frame" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Failed to parse WPS IE in " "(Re)Association Response frame" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Failed to parse WPS IE in " "(Re)Association Response frame" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Failed to parse WPS IE in " "(Re)Association Response frame" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                                       ;
  ret = -1;
  goto _out;
 }

 wps2 = attr->version2 != 
# 1356 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
                         ((void *)0)
# 1356 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                             ;
 if (wps_validate_version(attr->version, 1) ||
     wps_validate_response_type(attr->response_type, 1) ||
     wps_validate_version2(attr->version2, wps2)) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Invalid (Re)Association " "Response frame" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Invalid (Re)Association " "Response frame" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Invalid (Re)Association " "Response frame" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Invalid (Re)Association " "Response frame" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Invalid (Re)Association " "Response frame" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                       ;
  ret = -1;
  goto _out;
 }

 ret = 0;
_out:
 if(attr)
  free((attr));

 return ret;
}


int wps_validate_m1(const struct wpabuf *tlvs)
{
 struct wps_parse_attr *attr;
 int wps2;
 int ret;

 attr = (struct wps_parse_attr *)calloc(1, (sizeof(struct wps_parse_attr)));
 if (attr == 
# 1382 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
            ((void *)0)
# 1382 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                ) {
  ret = -99;
  goto _out;
 }


 if (tlvs == 
# 1388 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
            ((void *)0)
# 1388 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                ) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: No TLVs in M1" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: No TLVs in M1" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: No TLVs in M1" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: No TLVs in M1" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: No TLVs in M1" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
  ret = -1;
  goto _out;
 }
 if (wps_parse_msg(tlvs, attr) < 0) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M1" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M1" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M1" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M1" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M1" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
              ;
  ret = -1;
  goto _out;
 }

 wps2 = attr->version2 != 
# 1400 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
                         ((void *)0)
# 1400 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                             ;
 if (wps_validate_version(attr->version, 1) ||
     wps_validate_msg_type(attr->msg_type, 1) ||
     wps_validate_uuid_e(attr->uuid_e, 1) ||
     wps_validate_mac_addr(attr->mac_addr, 1) ||
     wps_validate_enrollee_nonce(attr->enrollee_nonce, 1) ||
     wps_validate_public_key(attr->public_key, attr->public_key_len, 1) ||
     wps_validate_auth_type_flags(attr->auth_type_flags, 1) ||
     wps_validate_encr_type_flags(attr->encr_type_flags, 1) ||
     wps_validate_conn_type_flags(attr->conn_type_flags, 1) ||
     wps_validate_config_methods(attr->config_methods, wps2, 1) ||
     wps_validate_wps_state(attr->wps_state, 1) ||
     wps_validate_manufacturer(attr->manufacturer, attr->manufacturer_len,
          1) ||
     wps_validate_model_name(attr->model_name, attr->model_name_len, 1) ||
     wps_validate_model_number(attr->model_number, attr->model_number_len,
          1) ||
     wps_validate_serial_number(attr->serial_number,
           attr->serial_number_len, 1) ||
     wps_validate_primary_dev_type(attr->primary_dev_type, 1) ||
     wps_validate_dev_name(attr->dev_name, attr->dev_name_len, 1) ||
     wps_validate_rf_bands(attr->rf_bands, 1) ||
     wps_validate_assoc_state(attr->assoc_state, 1) ||
     wps_validate_dev_password_id(attr->dev_password_id, 1) ||
     wps_validate_config_error(attr->config_error, 1) ||
     wps_validate_os_version(attr->os_version, 1) ||
     wps_validate_version2(attr->version2, wps2) ||
     wps_validate_request_to_enroll(attr->request_to_enroll, 0)) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Invalid M1" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Invalid M1" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Invalid M1" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Invalid M1" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Invalid M1" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);

  if (wps2) {
   ret = -1;
   goto _out;
  }




 }

 ret = 0;
_out:
 if (attr)
  free((attr));

 return ret;
}


int wps_validate_m2(const struct wpabuf *tlvs)
{
 struct wps_parse_attr *attr;
 int wps2;
 int ret;

 attr = (struct wps_parse_attr *)calloc(1, (sizeof(struct wps_parse_attr)));
 if (attr == 
# 1456 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
            ((void *)0)
# 1456 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                ) {
  ret = -99;
  goto _out;
 }


 if (tlvs == 
# 1462 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
            ((void *)0)
# 1462 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                ) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: No TLVs in M2" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: No TLVs in M2" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: No TLVs in M2" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: No TLVs in M2" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: No TLVs in M2" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
  ret = -1;
  goto _out;
 }
 if (wps_parse_msg(tlvs, attr) < 0) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M2" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M2" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M2" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M2" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M2" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
              ;
  ret = -1;
  goto _out;
 }

 wps2 = attr->version2 != 
# 1474 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
                         ((void *)0)
# 1474 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                             ;
 if (wps_validate_version(attr->version, 1) ||
     wps_validate_msg_type(attr->msg_type, 1) ||
     wps_validate_enrollee_nonce(attr->enrollee_nonce, 1) ||
     wps_validate_registrar_nonce(attr->registrar_nonce, 1) ||
     wps_validate_uuid_r(attr->uuid_r, 1) ||
     wps_validate_public_key(attr->public_key, attr->public_key_len, 1) ||
     wps_validate_auth_type_flags(attr->auth_type_flags, 1) ||
     wps_validate_encr_type_flags(attr->encr_type_flags, 1) ||
     wps_validate_conn_type_flags(attr->conn_type_flags, 1) ||
     wps_validate_config_methods(attr->config_methods, wps2, 1) ||
     wps_validate_manufacturer(attr->manufacturer, attr->manufacturer_len,
          1) ||
     wps_validate_model_name(attr->model_name, attr->model_name_len, 1) ||
     wps_validate_model_number(attr->model_number, attr->model_number_len,
          1) ||
     wps_validate_serial_number(attr->serial_number,
           attr->serial_number_len, 1) ||
     wps_validate_primary_dev_type(attr->primary_dev_type, 1) ||
     wps_validate_dev_name(attr->dev_name, attr->dev_name_len, 1) ||
     wps_validate_rf_bands(attr->rf_bands, 1) ||
     wps_validate_assoc_state(attr->assoc_state, 1) ||
     wps_validate_config_error(attr->config_error, 1) ||
     wps_validate_dev_password_id(attr->dev_password_id, 1) ||
     wps_validate_os_version(attr->os_version, 1) ||
     wps_validate_version2(attr->version2, wps2) ||
     wps_validate_authenticator(attr->authenticator, 1)) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Invalid M2" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Invalid M2" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Invalid M2" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Invalid M2" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Invalid M2" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);

  if (wps2) {
   ret = -1;
   goto _out;
  }




 }

 ret = 0;
_out:
 if (attr)
  free((attr));

 return ret;
}


int wps_validate_m2d(const struct wpabuf *tlvs)
{
 struct wps_parse_attr *attr;
 int wps2;
 int ret;

 attr = (struct wps_parse_attr *)calloc(1, (sizeof(struct wps_parse_attr)));
 if (attr == 
# 1529 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
            ((void *)0)
# 1529 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                ) {
  ret = -99;
  goto _out;
 }

 if (tlvs == 
# 1534 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
            ((void *)0)
# 1534 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                ) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: No TLVs in M2D" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: No TLVs in M2D" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: No TLVs in M2D" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: No TLVs in M2D" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: No TLVs in M2D" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
  ret = -1;
  goto _out;
 }
 if (wps_parse_msg(tlvs, attr) < 0) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M2D" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M2D" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M2D" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M2D" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M2D" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
               ;
  ret = -1;
  goto _out;
 }

 wps2 = attr->version2 != 
# 1546 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
                         ((void *)0)
# 1546 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                             ;
 if (wps_validate_version(attr->version, 1) ||
     wps_validate_msg_type(attr->msg_type, 1) ||
     wps_validate_enrollee_nonce(attr->enrollee_nonce, 1) ||
     wps_validate_registrar_nonce(attr->registrar_nonce, 1) ||
     wps_validate_uuid_r(attr->uuid_r, 1) ||
     wps_validate_auth_type_flags(attr->auth_type_flags, 1) ||
     wps_validate_encr_type_flags(attr->encr_type_flags, 1) ||
     wps_validate_conn_type_flags(attr->conn_type_flags, 1) ||
     wps_validate_config_methods(attr->config_methods, wps2, 1) ||
     wps_validate_manufacturer(attr->manufacturer, attr->manufacturer_len,
          1) ||
     wps_validate_model_name(attr->model_name, attr->model_name_len, 1) ||
     wps_validate_model_number(attr->model_number, attr->model_number_len,
          1) ||
     wps_validate_serial_number(attr->serial_number,
           attr->serial_number_len, 1) ||
     wps_validate_primary_dev_type(attr->primary_dev_type, 1) ||
     wps_validate_dev_name(attr->dev_name, attr->dev_name_len, 1) ||
     wps_validate_rf_bands(attr->rf_bands, 1) ||
     wps_validate_assoc_state(attr->assoc_state, 1) ||
     wps_validate_config_error(attr->config_error, 1) ||
     wps_validate_os_version(attr->os_version, 1) ||
     wps_validate_version2(attr->version2, wps2)) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Invalid M2D" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Invalid M2D" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Invalid M2D" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Invalid M2D" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Invalid M2D" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);

  if (wps2) {
   ret = -1;
   goto _out;
  }




 }

 ret = 0;
_out:
 if (attr)
  free((attr));

 return ret;
}


int wps_validate_m3(const struct wpabuf *tlvs)
{
 struct wps_parse_attr *attr;
 int wps2;
 int ret;

 attr = (struct wps_parse_attr *)calloc(1, (sizeof(struct wps_parse_attr)));
 if (attr == 
# 1598 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
            ((void *)0)
# 1598 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                ) {
  ret = -99;
  goto _out;
 }

 if (tlvs == 
# 1603 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
            ((void *)0)
# 1603 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                ) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: No TLVs in M3" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: No TLVs in M3" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: No TLVs in M3" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: No TLVs in M3" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: No TLVs in M3" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
  ret = -1;
  goto _out;
 }
 if (wps_parse_msg(tlvs, attr) < 0) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M3" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M3" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M3" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M3" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M3" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
              ;
  ret = -1;
  goto _out;
 }

 wps2 = attr->version2 != 
# 1615 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
                         ((void *)0)
# 1615 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                             ;
 if (wps_validate_version(attr->version, 1) ||
     wps_validate_msg_type(attr->msg_type, 1) ||
     wps_validate_registrar_nonce(attr->registrar_nonce, 1) ||
     wps_validate_e_hash1(attr->e_hash1, 1) ||
     wps_validate_e_hash2(attr->e_hash2, 1) ||
     wps_validate_version2(attr->version2, wps2) ||
     wps_validate_authenticator(attr->authenticator, 1)) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Invalid M3" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Invalid M3" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Invalid M3" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Invalid M3" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Invalid M3" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);

  if (wps2) {
   ret = -1;
   goto _out;
  }




 }

 ret = 0;
_out:
 if (attr)
  free((attr));

 return ret;
}


int wps_validate_m4(const struct wpabuf *tlvs)
{
 struct wps_parse_attr *attr;
 int wps2;
 int ret;

 attr = (struct wps_parse_attr *)calloc(1, (sizeof(struct wps_parse_attr)));
 if (attr == 
# 1651 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
            ((void *)0)
# 1651 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                ) {
  ret = -99;
  goto _out;
 }

 if (tlvs == 
# 1656 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
            ((void *)0)
# 1656 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                ) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: No TLVs in M4" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: No TLVs in M4" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: No TLVs in M4" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: No TLVs in M4" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: No TLVs in M4" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
  ret = -1;
  goto _out;
 }
 if (wps_parse_msg(tlvs, attr) < 0) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M4" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M4" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M4" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M4" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M4" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
              ;
  ret = -1;
  goto _out;
 }

 wps2 = attr->version2 != 
# 1668 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
                         ((void *)0)
# 1668 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                             ;
 if (wps_validate_version(attr->version, 1) ||
     wps_validate_msg_type(attr->msg_type, 1) ||
     wps_validate_enrollee_nonce(attr->enrollee_nonce, 1) ||
     wps_validate_r_hash1(attr->r_hash1, 1) ||
     wps_validate_r_hash2(attr->r_hash2, 1) ||
     wps_validate_encr_settings(attr->encr_settings,
           attr->encr_settings_len, 1) ||
     wps_validate_version2(attr->version2, wps2) ||
     wps_validate_authenticator(attr->authenticator, 1)) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Invalid M4" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Invalid M4" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Invalid M4" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Invalid M4" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Invalid M4" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);

  if (wps2) {
   ret = -1;
   goto _out;
  }




 }

 ret = 0;
_out:
 if (attr)
  free((attr));

 return ret;
}


int wps_validate_m4_encr(const struct wpabuf *tlvs, int wps2)
{
 struct wps_parse_attr *attr;
 int ret;

 attr = (struct wps_parse_attr *)calloc(1, (sizeof(struct wps_parse_attr)));
 if (attr == 
# 1705 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
            ((void *)0)
# 1705 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                ) {
  ret = -99;
  goto _out;
 }


 if (tlvs == 
# 1711 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
            ((void *)0)
# 1711 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                ) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: No TLVs in M4 encrypted " "settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: No TLVs in M4 encrypted " "settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: No TLVs in M4 encrypted " "settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: No TLVs in M4 encrypted " "settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: No TLVs in M4 encrypted " "settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                 ;
  ret = -1;
  goto _out;
 }
 if (wps_parse_msg(tlvs, attr) < 0) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M4 encrypted settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M4 encrypted settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M4 encrypted settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M4 encrypted settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M4 encrypted settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                                 ;
  ret = -1;
  goto _out;
 }

 if (wps_validate_r_snonce1(attr->r_snonce1, 1) ||
     wps_validate_key_wrap_auth(attr->key_wrap_auth, 1)) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Invalid M4 encrypted " "settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Invalid M4 encrypted " "settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Invalid M4 encrypted " "settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Invalid M4 encrypted " "settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Invalid M4 encrypted " "settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                 ;

  if (wps2) {
   ret = -1;
   goto _out;
  }




 }

 ret = 0;
_out:
 if (attr)
  free((attr));

 return ret;
}


int wps_validate_m5(const struct wpabuf *tlvs)
{
 struct wps_parse_attr *attr;
 int wps2;
 int ret;

 attr = (struct wps_parse_attr *)calloc(1, (sizeof(struct wps_parse_attr)));
 if (attr == 
# 1755 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
            ((void *)0)
# 1755 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                ) {
  ret = -99;
  goto _out;
 }

 if (tlvs == 
# 1760 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
            ((void *)0)
# 1760 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                ) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: No TLVs in M5" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: No TLVs in M5" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: No TLVs in M5" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: No TLVs in M5" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: No TLVs in M5" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
  ret = -1;
  goto _out;
 }
 if (wps_parse_msg(tlvs, attr) < 0) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M5" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M5" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M5" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M5" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M5" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
              ;
  ret = -1;
  goto _out;
 }

 wps2 = attr->version2 != 
# 1772 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
                         ((void *)0)
# 1772 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                             ;
 if (wps_validate_version(attr->version, 1) ||
     wps_validate_msg_type(attr->msg_type, 1) ||
     wps_validate_registrar_nonce(attr->registrar_nonce, 1) ||
     wps_validate_encr_settings(attr->encr_settings,
           attr->encr_settings_len, 1) ||
     wps_validate_version2(attr->version2, wps2) ||
     wps_validate_authenticator(attr->authenticator, 1)) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Invalid M5" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Invalid M5" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Invalid M5" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Invalid M5" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Invalid M5" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);

  if (wps2) {
   ret = -1;
   goto _out;
  }




 }

 ret = 0;
_out:
 if (attr)
  free((attr));

 return ret;
}


int wps_validate_m5_encr(const struct wpabuf *tlvs, int wps2)
{
 struct wps_parse_attr *attr;
 int ret;

 attr = (struct wps_parse_attr *)calloc(1, (sizeof(struct wps_parse_attr)));
 if (attr == 
# 1807 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
            ((void *)0)
# 1807 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                ) {
  ret = -99;
  goto _out;
 }

 if (tlvs == 
# 1812 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
            ((void *)0)
# 1812 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                ) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: No TLVs in M5 encrypted " "settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: No TLVs in M5 encrypted " "settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: No TLVs in M5 encrypted " "settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: No TLVs in M5 encrypted " "settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: No TLVs in M5 encrypted " "settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                 ;
  ret = -1;
  goto _out;
 }
 if (wps_parse_msg(tlvs, attr) < 0) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M5 encrypted settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M5 encrypted settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M5 encrypted settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M5 encrypted settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M5 encrypted settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                                 ;
  ret = -1;
  goto _out;
 }

 if (wps_validate_e_snonce1(attr->e_snonce1, 1) ||
     wps_validate_key_wrap_auth(attr->key_wrap_auth, 1)) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Invalid M5 encrypted " "settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Invalid M5 encrypted " "settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Invalid M5 encrypted " "settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Invalid M5 encrypted " "settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Invalid M5 encrypted " "settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                 ;

  if (wps2) {
   ret = -1;
   goto _out;
  }




 }

 ret = 0;
_out:
 if (attr)
  free((attr));

 return ret;
}


int wps_validate_m6(const struct wpabuf *tlvs)
{
 struct wps_parse_attr *attr;
 int wps2;
 int ret;

 attr = (struct wps_parse_attr *)calloc(1, (sizeof(struct wps_parse_attr)));
 if (attr == 
# 1856 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
            ((void *)0)
# 1856 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                ) {
  ret = -99;
  goto _out;
 }

 if (tlvs == 
# 1861 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
            ((void *)0)
# 1861 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                ) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: No TLVs in M6" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: No TLVs in M6" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: No TLVs in M6" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: No TLVs in M6" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: No TLVs in M6" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
  ret = -1;
  goto _out;
 }
 if (wps_parse_msg(tlvs, attr) < 0) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M6" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M6" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M6" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M6" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M6" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
              ;
  ret = -1;
  goto _out;
 }

 wps2 = attr->version2 != 
# 1873 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
                         ((void *)0)
# 1873 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                             ;
 if (wps_validate_version(attr->version, 1) ||
     wps_validate_msg_type(attr->msg_type, 1) ||
     wps_validate_enrollee_nonce(attr->enrollee_nonce, 1) ||
     wps_validate_encr_settings(attr->encr_settings,
           attr->encr_settings_len, 1) ||
     wps_validate_version2(attr->version2, wps2) ||
     wps_validate_authenticator(attr->authenticator, 1)) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Invalid M6" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Invalid M6" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Invalid M6" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Invalid M6" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Invalid M6" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);

  if (wps2) {
   ret = -1;
   goto _out;
  }




 }

 ret = 0;
_out:
 if (attr)
  free((attr));

 return ret;
}


int wps_validate_m6_encr(const struct wpabuf *tlvs, int wps2)
{
 struct wps_parse_attr *attr;
 int ret;

 attr = (struct wps_parse_attr *)calloc(1, (sizeof(struct wps_parse_attr)));
 if (attr == 
# 1908 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
            ((void *)0)
# 1908 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                ) {
  ret = -99;
  goto _out;
 }

 if (tlvs == 
# 1913 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
            ((void *)0)
# 1913 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                ) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: No TLVs in M6 encrypted " "settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: No TLVs in M6 encrypted " "settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: No TLVs in M6 encrypted " "settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: No TLVs in M6 encrypted " "settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: No TLVs in M6 encrypted " "settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                 ;
  ret = -1;
  goto _out;
 }
 if (wps_parse_msg(tlvs, attr) < 0) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M6 encrypted settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M6 encrypted settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M6 encrypted settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M6 encrypted settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M6 encrypted settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                                 ;
  ret = -1;
  goto _out;
 }

 if (wps_validate_r_snonce2(attr->r_snonce2, 1) ||
     wps_validate_key_wrap_auth(attr->key_wrap_auth, 1)) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Invalid M6 encrypted " "settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Invalid M6 encrypted " "settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Invalid M6 encrypted " "settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Invalid M6 encrypted " "settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Invalid M6 encrypted " "settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                 ;

  if (wps2) {
   ret = -1;
   goto _out;
  }




 }

 ret = 0;
_out:
 if (attr)
  free((attr));

 return ret;
}


int wps_validate_m7(const struct wpabuf *tlvs)
{
 struct wps_parse_attr *attr;
 int wps2;
 int ret;

 attr = (struct wps_parse_attr *)calloc(1, (sizeof(struct wps_parse_attr)));
 if (attr == 
# 1957 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
            ((void *)0)
# 1957 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                ) {
  ret = -99;
  goto _out;
 }

 if (tlvs == 
# 1962 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
            ((void *)0)
# 1962 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                ) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: No TLVs in M7" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: No TLVs in M7" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: No TLVs in M7" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: No TLVs in M7" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: No TLVs in M7" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
  ret = -1;
  goto _out;
 }
 if (wps_parse_msg(tlvs, attr) < 0) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M7" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M7" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M7" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M7" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M7" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
              ;
  ret = -1;
  goto _out;
 }

 wps2 = attr->version2 != 
# 1974 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
                         ((void *)0)
# 1974 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                             ;
 if (wps_validate_version(attr->version, 1) ||
     wps_validate_msg_type(attr->msg_type, 1) ||
     wps_validate_registrar_nonce(attr->registrar_nonce, 1) ||
     wps_validate_encr_settings(attr->encr_settings,
           attr->encr_settings_len, 1) ||
     wps_validate_settings_delay_time(attr->settings_delay_time, 0) ||
     wps_validate_version2(attr->version2, wps2) ||
     wps_validate_authenticator(attr->authenticator, 1)) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Invalid M7" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Invalid M7" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Invalid M7" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Invalid M7" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Invalid M7" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);

  if (wps2) {
   ret = -1;
   goto _out;
  }




 }

 ret = 0;
_out:
 if (attr)
  free((attr));

 return ret;
}


int wps_validate_m7_encr(const struct wpabuf *tlvs, int ap, int wps2)
{
 struct wps_parse_attr *attr;
 int ret;

 attr = (struct wps_parse_attr *)calloc(1, (sizeof(struct wps_parse_attr)));
 if (attr == 
# 2010 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
            ((void *)0)
# 2010 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                ) {
  ret = -99;
  goto _out;
 }

 if (tlvs == 
# 2015 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
            ((void *)0)
# 2015 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                ) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: No TLVs in M7 encrypted " "settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: No TLVs in M7 encrypted " "settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: No TLVs in M7 encrypted " "settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: No TLVs in M7 encrypted " "settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: No TLVs in M7 encrypted " "settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                 ;
  ret = -1;
  goto _out;
 }
 if (wps_parse_msg(tlvs, attr) < 0) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M7 encrypted settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M7 encrypted settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M7 encrypted settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M7 encrypted settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M7 encrypted settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                                 ;
  ret = -1;
  goto _out;
 }

 if (wps_validate_e_snonce2(attr->e_snonce2, 1) ||
     wps_validate_ssid(attr->ssid, attr->ssid_len, !ap) ||
     wps_validate_mac_addr(attr->mac_addr, !ap) ||
     wps_validate_auth_type(attr->auth_type, !ap) ||
     wps_validate_encr_type(attr->encr_type, !ap) ||
     wps_validate_network_key_index(attr->network_key_idx, 0) ||
     wps_validate_network_key(attr->network_key, attr->network_key_len,
         attr->encr_type, !ap) ||
     wps_validate_key_wrap_auth(attr->key_wrap_auth, 1)) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Invalid M7 encrypted " "settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Invalid M7 encrypted " "settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Invalid M7 encrypted " "settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Invalid M7 encrypted " "settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Invalid M7 encrypted " "settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                 ;

  if (wps2) {
   ret = -1;
   goto _out;
  }




 }

 ret = 0;
_out:
 if (attr)
  free((attr));

 return ret;
}


int wps_validate_m8(const struct wpabuf *tlvs)
{
 struct wps_parse_attr *attr;
 int wps2;
 int ret;

 attr = (struct wps_parse_attr *)calloc(1, (sizeof(struct wps_parse_attr)));
 if (attr == 
# 2066 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
            ((void *)0)
# 2066 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                ) {
  ret = -99;
  goto _out;
 }

 if (tlvs == 
# 2071 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
            ((void *)0)
# 2071 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                ) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: No TLVs in M8" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: No TLVs in M8" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: No TLVs in M8" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: No TLVs in M8" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: No TLVs in M8" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
  ret = -1;
  goto _out;
 }
 if (wps_parse_msg(tlvs, attr) < 0) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M8" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M8" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M8" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M8" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M8" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
              ;
  ret = -1;
  goto _out;
 }

 wps2 = attr->version2 != 
# 2083 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
                         ((void *)0)
# 2083 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                             ;
 if (wps_validate_version(attr->version, 1) ||
     wps_validate_msg_type(attr->msg_type, 1) ||
     wps_validate_enrollee_nonce(attr->enrollee_nonce, 1) ||
     wps_validate_encr_settings(attr->encr_settings,
           attr->encr_settings_len, 1) ||
     wps_validate_version2(attr->version2, wps2) ||
     wps_validate_authenticator(attr->authenticator, 1)) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Invalid M8" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Invalid M8" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Invalid M8" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Invalid M8" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Invalid M8" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);

  if (wps2) {
   ret = -1;
   goto _out;
  }




 }

 ret = 0;
_out:
 if (attr)
  free((attr));

 return ret;
}


int wps_validate_m8_encr(const struct wpabuf *tlvs, int ap, int wps2)
{
 struct wps_parse_attr *attr;
 int ret;

 attr = (struct wps_parse_attr *)calloc(1, (sizeof(struct wps_parse_attr)));
 if (attr == 
# 2118 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
            ((void *)0)
# 2118 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                ) {
  ret = -99;
  goto _out;
 }

 if (tlvs == 
# 2123 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
            ((void *)0)
# 2123 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                ) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: No TLVs in M8 encrypted " "settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: No TLVs in M8 encrypted " "settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: No TLVs in M8 encrypted " "settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: No TLVs in M8 encrypted " "settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: No TLVs in M8 encrypted " "settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                 ;
  ret = -1;
  goto _out;
 }
 if (wps_parse_msg(tlvs, attr) < 0) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M8 encrypted settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M8 encrypted settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M8 encrypted settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M8 encrypted settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in M8 encrypted settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                                 ;
  ret = -1;
  goto _out;
 }

 if (wps_validate_ssid(attr->ssid, attr->ssid_len, ap) ||
     wps_validate_auth_type(attr->auth_type, ap) ||
     wps_validate_encr_type(attr->encr_type, ap) ||
     wps_validate_network_key_index(attr->network_key_idx, 0) ||
     wps_validate_mac_addr(attr->mac_addr, ap) ||
     wps_validate_credential(attr->cred, attr->cred_len, attr->num_cred,
        !ap) ||
     wps_validate_key_wrap_auth(attr->key_wrap_auth, 1)) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Invalid M8 encrypted " "settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Invalid M8 encrypted " "settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Invalid M8 encrypted " "settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Invalid M8 encrypted " "settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Invalid M8 encrypted " "settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                 ;

  if (wps2) {
   ret = -1;
   goto _out;
  }




 }

 ret = 0;
_out:
 if (attr)
  free((attr));

 return ret;
}


int wps_validate_wsc_ack(const struct wpabuf *tlvs)
{
 struct wps_parse_attr *attr;
 int wps2;
 int ret;

 attr = (struct wps_parse_attr *)calloc(1, (sizeof(struct wps_parse_attr)));
 if (attr == 
# 2173 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
            ((void *)0)
# 2173 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                ) {
  ret = -99;
  goto _out;
 }

 if (tlvs == 
# 2178 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
            ((void *)0)
# 2178 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                ) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: No TLVs in WSC_ACK" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: No TLVs in WSC_ACK" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: No TLVs in WSC_ACK" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: No TLVs in WSC_ACK" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: No TLVs in WSC_ACK" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
  ret = -1;
  goto _out;
 }
 if (wps_parse_msg(tlvs, attr) < 0) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in WSC_ACK" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in WSC_ACK" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in WSC_ACK" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in WSC_ACK" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in WSC_ACK" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                   ;
  ret = -1;
  goto _out;
 }

 wps2 = attr->version2 != 
# 2190 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
                         ((void *)0)
# 2190 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                             ;
 if (wps_validate_version(attr->version, 1) ||
     wps_validate_msg_type(attr->msg_type, 1) ||
     wps_validate_enrollee_nonce(attr->enrollee_nonce, 1) ||
     wps_validate_registrar_nonce(attr->registrar_nonce, 1) ||
     wps_validate_version2(attr->version2, wps2)) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Invalid WSC_ACK" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Invalid WSC_ACK" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Invalid WSC_ACK" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Invalid WSC_ACK" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Invalid WSC_ACK" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);

  if (wps2) {
   ret = -1;
   goto _out;
  }




 }

 ret = 0;
_out:
 if (attr)
  free((attr));

 return ret;
}


int wps_validate_wsc_nack(const struct wpabuf *tlvs)
{
 struct wps_parse_attr *attr;
 int wps2;
 int ret;

 attr = (struct wps_parse_attr *)calloc(1, (sizeof(struct wps_parse_attr)));
 if (attr == 
# 2224 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
            ((void *)0)
# 2224 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                ) {
  ret = -99;
  goto _out;
 }

 if (tlvs == 
# 2229 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
            ((void *)0)
# 2229 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                ) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: No TLVs in WSC_NACK" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: No TLVs in WSC_NACK" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: No TLVs in WSC_NACK" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: No TLVs in WSC_NACK" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: No TLVs in WSC_NACK" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
  ret = -1;
 }
 if (wps_parse_msg(tlvs, attr) < 0) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in WSC_NACK" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in WSC_NACK" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in WSC_NACK" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in WSC_NACK" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in WSC_NACK" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                    ;
  ret = -1;
  goto _out;
 }

 wps2 = attr->version2 != 
# 2240 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
                         ((void *)0)
# 2240 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                             ;
 if (wps_validate_version(attr->version, 1) ||
     wps_validate_msg_type(attr->msg_type, 1) ||
     wps_validate_enrollee_nonce(attr->enrollee_nonce, 1) ||
     wps_validate_registrar_nonce(attr->registrar_nonce, 1) ||
     wps_validate_config_error(attr->config_error, 1) ||
     wps_validate_version2(attr->version2, wps2)) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Invalid WSC_NACK" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Invalid WSC_NACK" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Invalid WSC_NACK" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Invalid WSC_NACK" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Invalid WSC_NACK" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);

  if (wps2) {
   ret = -1;
   goto _out;
  }




 }

 ret = 0;
_out:
 if (attr)
  free((attr));

 return ret;
}


int wps_validate_wsc_done(const struct wpabuf *tlvs)
{
 struct wps_parse_attr *attr;
 int wps2;
 int ret;

 attr = (struct wps_parse_attr *)calloc(1, (sizeof(struct wps_parse_attr)));
 if (attr == 
# 2275 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
            ((void *)0)
# 2275 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                ) {
  ret = -99;
  goto _out;
 }

 if (tlvs == 
# 2280 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
            ((void *)0)
# 2280 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                ) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: No TLVs in WSC_Done" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: No TLVs in WSC_Done" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: No TLVs in WSC_Done" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: No TLVs in WSC_Done" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: No TLVs in WSC_Done" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
  ret = -1;
  goto _out;
 }
 if (wps_parse_msg(tlvs, attr) < 0) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in WSC_Done" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in WSC_Done" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in WSC_Done" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in WSC_Done" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in WSC_Done" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                    ;
  ret = -1;
  goto _out;
 }

 wps2 = attr->version2 != 
# 2292 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
                         ((void *)0)
# 2292 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                             ;
 if (wps_validate_version(attr->version, 1) ||
     wps_validate_msg_type(attr->msg_type, 1) ||
     wps_validate_enrollee_nonce(attr->enrollee_nonce, 1) ||
     wps_validate_registrar_nonce(attr->registrar_nonce, 1) ||
     wps_validate_version2(attr->version2, wps2)) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Invalid WSC_Done" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Invalid WSC_Done" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Invalid WSC_Done" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Invalid WSC_Done" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Invalid WSC_Done" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);

  if (wps2) {
   ret = -1;
   goto _out;
  }




 }

 ret = 0;
_out:
 if (attr)
  free((attr));

 return ret;
}


int wps_validate_upnp_set_selected_registrar(const struct wpabuf *tlvs)
{
 struct wps_parse_attr *attr;
 int wps2;
 int sel_reg;
 int ret;

 attr = (struct wps_parse_attr *)calloc(1, (sizeof(struct wps_parse_attr)));
 if (attr == 
# 2327 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
            ((void *)0)
# 2327 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                ) {
  ret = -99;
  goto _out;
 }

 if (tlvs == 
# 2332 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
            ((void *)0)
# 2332 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                ) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: No TLVs in " "SetSelectedRegistrar" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: No TLVs in " "SetSelectedRegistrar" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: No TLVs in " "SetSelectedRegistrar" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: No TLVs in " "SetSelectedRegistrar" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: No TLVs in " "SetSelectedRegistrar" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                             ;
  ret = -1;
  goto _out;
 }
 if (wps_parse_msg(tlvs, attr) < 0) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in SetSelectedRegistrar" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in SetSelectedRegistrar" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in SetSelectedRegistrar" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in SetSelectedRegistrar" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Failed to parse attributes " "in SetSelectedRegistrar" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                                ;
  ret = -1;
  goto _out;
 }

 wps2 = attr->version2 != 
# 2345 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
                         ((void *)0)
# 2345 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                             ;
 sel_reg = attr->selected_registrar != 
# 2346 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c" 3 4
                                      ((void *)0) 
# 2346 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_validate.c"
                                           &&
  *attr->selected_registrar != 0;
 if (wps_validate_version(attr->version, 1) ||
     wps_validate_dev_password_id(attr->dev_password_id, sel_reg) ||
     wps_validate_sel_reg_config_methods(attr->sel_reg_config_methods,
      wps2, sel_reg) ||
     wps_validate_version2(attr->version2, wps2) ||
     wps_validate_authorized_macs(attr->authorized_macs,
      attr->authorized_macs_len, wps2) ||
     wps_validate_uuid_r(attr->uuid_r, wps2)) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS-STRICT: Invalid " "SetSelectedRegistrar" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS-STRICT: Invalid " "SetSelectedRegistrar" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS-STRICT: Invalid " "SetSelectedRegistrar" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS-STRICT: Invalid " "SetSelectedRegistrar" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS-STRICT: Invalid " "SetSelectedRegistrar" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                             ;

  if (wps2) {
   ret = -1;
   goto _out;
  }




 }

 ret = 0;
_out:
 if (attr)
  free((attr));

 return ret;
}
