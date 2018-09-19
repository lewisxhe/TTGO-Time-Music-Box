# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_attr_parse.c"
# 1 "D:\\ESP32\\esp-idf-v3.1-rc1\\ESP32_PIC_A2DP\\build\\wpa_supplicant//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_attr_parse.c"







# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/includes.h" 1
# 9 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_attr_parse.c" 2

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
# 11 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_attr_parse.c" 2
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
# 12 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_attr_parse.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wps/wps_attr_parse.h" 1
# 12 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wps/wps_attr_parse.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wps/wps.h" 1
# 13 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wps/wps.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wps/wps_defs.h" 1
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
# 13 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_attr_parse.c" 2






static int wps_set_vendor_ext_wfa_subelem(struct wps_parse_attr *attr,
       u8 id, u8 len, const u8 *pos)
{
 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: WFA subelement id=%u len=%u" "\033[0m" "\n", esp_log_timestamp(), "wpa", id, len); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: WFA subelement id=%u len=%u" "\033[0m" "\n", esp_log_timestamp(), "wpa", id, len); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: WFA subelement id=%u len=%u" "\033[0m" "\n", esp_log_timestamp(), "wpa", id, len); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: WFA subelement id=%u len=%u" "\033[0m" "\n", esp_log_timestamp(), "wpa", id, len); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: WFA subelement id=%u len=%u" "\033[0m" "\n", esp_log_timestamp(), "wpa", id, len); } } while(0); } while(0)
             ;
 switch (id) {
 case WFA_ELEM_VERSION2:
  if (len != 1) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Invalid Version2 length " "%u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Invalid Version2 length " "%u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Invalid Version2 length " "%u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Invalid Version2 length " "%u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Invalid Version2 length " "%u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } } while(0); } while(0)
                 ;
   return -1;
  }
  attr->version2 = pos;
  break;
 case WFA_ELEM_AUTHORIZEDMACS:
  attr->authorized_macs = pos;
  attr->authorized_macs_len = len;
  break;
 case WFA_ELEM_NETWORK_KEY_SHAREABLE:
  if (len != 1) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Invalid Network Key " "Shareable length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Invalid Network Key " "Shareable length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Invalid Network Key " "Shareable length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Invalid Network Key " "Shareable length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Invalid Network Key " "Shareable length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } } while(0); } while(0)
                                  ;
   return -1;
  }
  attr->network_key_shareable = pos;
  break;
 case WFA_ELEM_REQUEST_TO_ENROLL:
  if (len != 1) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Invalid Request to Enroll " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Invalid Request to Enroll " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Invalid Request to Enroll " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Invalid Request to Enroll " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Invalid Request to Enroll " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } } while(0); } while(0)
                        ;
   return -1;
  }
  attr->request_to_enroll = pos;
  break;
 case WFA_ELEM_SETTINGS_DELAY_TIME:
  if (len != 1) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Invalid Settings Delay " "Time length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Invalid Settings Delay " "Time length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Invalid Settings Delay " "Time length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Invalid Settings Delay " "Time length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Invalid Settings Delay " "Time length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } } while(0); } while(0)
                             ;
   return -1;
  }
  attr->settings_delay_time = pos;
  break;
 default:
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Skipped unknown WFA Vendor " "Extension subelement %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", id); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Skipped unknown WFA Vendor " "Extension subelement %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", id); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Skipped unknown WFA Vendor " "Extension subelement %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", id); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Skipped unknown WFA Vendor " "Extension subelement %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", id); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Skipped unknown WFA Vendor " "Extension subelement %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", id); } } while(0); } while(0)
                                    ;
  break;
 }

 return 0;
}


static int wps_parse_vendor_ext_wfa(struct wps_parse_attr *attr, const u8 *pos,
        u16 len)
{
 const u8 *end = pos + len;
 u8 id, elen;

 while (pos + 2 < end) {
  id = *pos++;
  elen = *pos++;
  if (pos + elen > end)
   break;
  if (wps_set_vendor_ext_wfa_subelem(attr, id, elen, pos) < 0)
   return -1;
  pos += elen;
 }

 return 0;
}


static int wps_parse_vendor_ext(struct wps_parse_attr *attr, const u8 *pos,
    u16 len)
{
 u32 vendor_id;

 if (len < 3) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Skip invalid Vendor Extension" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Skip invalid Vendor Extension" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Skip invalid Vendor Extension" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Skip invalid Vendor Extension" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Skip invalid Vendor Extension" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
  return 0;
 }

 vendor_id = ((((u32) (pos)[0]) << 16) | (((u32) (pos)[1]) << 8) | ((u32) (pos)[2]));
 switch (vendor_id) {
 case 14122:
  return wps_parse_vendor_ext_wfa(attr, pos + 3, len - 3);
 }



 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Unknown Vendor Extension (Vendor ID %u)" "\033[0m" "\n", esp_log_timestamp(), "wpa", vendor_id); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Unknown Vendor Extension (Vendor ID %u)" "\033[0m" "\n", esp_log_timestamp(), "wpa", vendor_id); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Unknown Vendor Extension (Vendor ID %u)" "\033[0m" "\n", esp_log_timestamp(), "wpa", vendor_id); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Unknown Vendor Extension (Vendor ID %u)" "\033[0m" "\n", esp_log_timestamp(), "wpa", vendor_id); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Unknown Vendor Extension (Vendor ID %u)" "\033[0m" "\n", esp_log_timestamp(), "wpa", vendor_id); } } while(0); } while(0)
               ;

 if (len > 1024) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Too long Vendor Extension (%u)" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Too long Vendor Extension (%u)" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Too long Vendor Extension (%u)" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Too long Vendor Extension (%u)" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Too long Vendor Extension (%u)" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } } while(0); } while(0)
          ;
  return -1;
 }

 if (attr->num_vendor_ext >= 10) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Skipped Vendor Extension " "attribute (max %d vendor extensions)" "\033[0m" "\n", esp_log_timestamp(), "wpa", 10); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Skipped Vendor Extension " "attribute (max %d vendor extensions)" "\033[0m" "\n", esp_log_timestamp(), "wpa", 10); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Skipped Vendor Extension " "attribute (max %d vendor extensions)" "\033[0m" "\n", esp_log_timestamp(), "wpa", 10); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Skipped Vendor Extension " "attribute (max %d vendor extensions)" "\033[0m" "\n", esp_log_timestamp(), "wpa", 10); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Skipped Vendor Extension " "attribute (max %d vendor extensions)" "\033[0m" "\n", esp_log_timestamp(), "wpa", 10); } } while(0); } while(0)

                               ;
  return -1;
 }
 attr->vendor_ext[attr->num_vendor_ext] = pos;
 attr->vendor_ext_len[attr->num_vendor_ext] = len;
 attr->num_vendor_ext++;

 return 0;
}


static int wps_set_attr(struct wps_parse_attr *attr, u16 type,
   const u8 *pos, u16 len)
{
 switch (type) {
 case ATTR_VERSION:
  if (len != 1) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Invalid Version length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Invalid Version length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Invalid Version length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Invalid Version length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Invalid Version length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } } while(0); } while(0)
           ;
   return -1;
  }
  attr->version = pos;
  break;
 case ATTR_MSG_TYPE:
  if (len != 1) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Invalid Message Type " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Invalid Message Type " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Invalid Message Type " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Invalid Message Type " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Invalid Message Type " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } } while(0); } while(0)
                        ;
   return -1;
  }
  attr->msg_type = pos;
  break;
 case ATTR_ENROLLEE_NONCE:
  if (len != 16) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Invalid Enrollee Nonce " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Invalid Enrollee Nonce " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Invalid Enrollee Nonce " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Invalid Enrollee Nonce " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Invalid Enrollee Nonce " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } } while(0); } while(0)
                        ;
   return -1;
  }
  attr->enrollee_nonce = pos;
  break;
 case ATTR_REGISTRAR_NONCE:
  if (len != 16) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Invalid Registrar Nonce " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Invalid Registrar Nonce " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Invalid Registrar Nonce " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Invalid Registrar Nonce " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Invalid Registrar Nonce " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } } while(0); } while(0)
                        ;
   return -1;
  }
  attr->registrar_nonce = pos;
  break;
 case ATTR_UUID_E:
  if (len != 16) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Invalid UUID-E length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Invalid UUID-E length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Invalid UUID-E length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Invalid UUID-E length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Invalid UUID-E length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } } while(0); } while(0)
           ;
   return -1;
  }
  attr->uuid_e = pos;
  break;
 case ATTR_UUID_R:
  if (len != 16) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Invalid UUID-R length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Invalid UUID-R length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Invalid UUID-R length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Invalid UUID-R length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Invalid UUID-R length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } } while(0); } while(0)
           ;
   return -1;
  }
  attr->uuid_r = pos;
  break;
 case ATTR_AUTH_TYPE_FLAGS:
  if (len != 2) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Invalid Authentication " "Type Flags length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Invalid Authentication " "Type Flags length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Invalid Authentication " "Type Flags length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Invalid Authentication " "Type Flags length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Invalid Authentication " "Type Flags length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } } while(0); } while(0)
                                   ;
   return -1;
  }
  attr->auth_type_flags = pos;
  break;
 case ATTR_ENCR_TYPE_FLAGS:
  if (len != 2) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Invalid Encryption Type " "Flags length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Invalid Encryption Type " "Flags length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Invalid Encryption Type " "Flags length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Invalid Encryption Type " "Flags length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Invalid Encryption Type " "Flags length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } } while(0); } while(0)
                              ;
   return -1;
  }
  attr->encr_type_flags = pos;
  break;
 case ATTR_CONN_TYPE_FLAGS:
  if (len != 1) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Invalid Connection Type " "Flags length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Invalid Connection Type " "Flags length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Invalid Connection Type " "Flags length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Invalid Connection Type " "Flags length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Invalid Connection Type " "Flags length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } } while(0); } while(0)
                              ;
   return -1;
  }
  attr->conn_type_flags = pos;
  break;
 case ATTR_CONFIG_METHODS:
  if (len != 2) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Invalid Config Methods " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Invalid Config Methods " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Invalid Config Methods " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Invalid Config Methods " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Invalid Config Methods " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } } while(0); } while(0)
                        ;
   return -1;
  }
  attr->config_methods = pos;
  break;
 case ATTR_SELECTED_REGISTRAR_CONFIG_METHODS:
  if (len != 2) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Invalid Selected " "Registrar Config Methods length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Invalid Selected " "Registrar Config Methods length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Invalid Selected " "Registrar Config Methods length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Invalid Selected " "Registrar Config Methods length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Invalid Selected " "Registrar Config Methods length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } } while(0); } while(0)
                                                 ;
   return -1;
  }
  attr->sel_reg_config_methods = pos;
  break;
 case ATTR_PRIMARY_DEV_TYPE:
  if (len != 8) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Invalid Primary Device " "Type length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Invalid Primary Device " "Type length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Invalid Primary Device " "Type length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Invalid Primary Device " "Type length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Invalid Primary Device " "Type length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } } while(0); } while(0)
                             ;
   return -1;
  }
  attr->primary_dev_type = pos;
  break;
 case ATTR_RF_BANDS:
  if (len != 1) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Invalid RF Bands length " "%u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Invalid RF Bands length " "%u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Invalid RF Bands length " "%u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Invalid RF Bands length " "%u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Invalid RF Bands length " "%u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } } while(0); } while(0)
                 ;
   return -1;
  }
  attr->rf_bands = pos;
  break;
 case ATTR_ASSOC_STATE:
  if (len != 2) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Invalid Association State " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Invalid Association State " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Invalid Association State " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Invalid Association State " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Invalid Association State " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } } while(0); } while(0)
                        ;
   return -1;
  }
  attr->assoc_state = pos;
  break;
 case ATTR_CONFIG_ERROR:
  if (len != 2) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Invalid Configuration " "Error length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Invalid Configuration " "Error length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Invalid Configuration " "Error length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Invalid Configuration " "Error length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Invalid Configuration " "Error length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } } while(0); } while(0)
                              ;
   return -1;
  }
  attr->config_error = pos;
  break;
 case ATTR_DEV_PASSWORD_ID:
  if (len != 2) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Invalid Device Password " "ID length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Invalid Device Password " "ID length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Invalid Device Password " "ID length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Invalid Device Password " "ID length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Invalid Device Password " "ID length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } } while(0); } while(0)
                           ;
   return -1;
  }
  attr->dev_password_id = pos;
  break;
 case ATTR_OOB_DEVICE_PASSWORD:
  if (len < 20 + 2 +
      16 ||
      len > 20 + 2 +
      32) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Invalid OOB Device " "Password length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Invalid OOB Device " "Password length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Invalid OOB Device " "Password length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Invalid OOB Device " "Password length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Invalid OOB Device " "Password length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } } while(0); } while(0)
                                 ;
   return -1;
  }
  attr->oob_dev_password = pos;
  attr->oob_dev_password_len = len;
  break;
 case ATTR_OS_VERSION:
  if (len != 4) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Invalid OS Version length " "%u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Invalid OS Version length " "%u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Invalid OS Version length " "%u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Invalid OS Version length " "%u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Invalid OS Version length " "%u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } } while(0); } while(0)
                 ;
   return -1;
  }
  attr->os_version = pos;
  break;
 case ATTR_WPS_STATE:
  if (len != 1) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Invalid Wi-Fi Protected " "Setup State length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Invalid Wi-Fi Protected " "Setup State length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Invalid Wi-Fi Protected " "Setup State length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Invalid Wi-Fi Protected " "Setup State length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Invalid Wi-Fi Protected " "Setup State length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } } while(0); } while(0)
                                    ;
   return -1;
  }
  attr->wps_state = pos;
  break;
 case ATTR_AUTHENTICATOR:
  if (len != 8) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Invalid Authenticator " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Invalid Authenticator " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Invalid Authenticator " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Invalid Authenticator " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Invalid Authenticator " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } } while(0); } while(0)
                        ;
   return -1;
  }
  attr->authenticator = pos;
  break;
 case ATTR_R_HASH1:
  if (len != 32) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Invalid R-Hash1 length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Invalid R-Hash1 length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Invalid R-Hash1 length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Invalid R-Hash1 length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Invalid R-Hash1 length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } } while(0); } while(0)
           ;
   return -1;
  }
  attr->r_hash1 = pos;
  break;
 case ATTR_R_HASH2:
  if (len != 32) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Invalid R-Hash2 length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Invalid R-Hash2 length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Invalid R-Hash2 length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Invalid R-Hash2 length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Invalid R-Hash2 length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } } while(0); } while(0)
           ;
   return -1;
  }
  attr->r_hash2 = pos;
  break;
 case ATTR_E_HASH1:
  if (len != 32) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Invalid E-Hash1 length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Invalid E-Hash1 length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Invalid E-Hash1 length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Invalid E-Hash1 length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Invalid E-Hash1 length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } } while(0); } while(0)
           ;
   return -1;
  }
  attr->e_hash1 = pos;
  break;
 case ATTR_E_HASH2:
  if (len != 32) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Invalid E-Hash2 length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Invalid E-Hash2 length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Invalid E-Hash2 length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Invalid E-Hash2 length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Invalid E-Hash2 length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } } while(0); } while(0)
           ;
   return -1;
  }
  attr->e_hash2 = pos;
  break;
 case ATTR_R_SNONCE1:
  if (len != 16) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Invalid R-SNonce1 length " "%u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Invalid R-SNonce1 length " "%u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Invalid R-SNonce1 length " "%u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Invalid R-SNonce1 length " "%u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Invalid R-SNonce1 length " "%u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } } while(0); } while(0)
                 ;
   return -1;
  }
  attr->r_snonce1 = pos;
  break;
 case ATTR_R_SNONCE2:
  if (len != 16) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Invalid R-SNonce2 length " "%u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Invalid R-SNonce2 length " "%u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Invalid R-SNonce2 length " "%u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Invalid R-SNonce2 length " "%u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Invalid R-SNonce2 length " "%u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } } while(0); } while(0)
                 ;
   return -1;
  }
  attr->r_snonce2 = pos;
  break;
 case ATTR_E_SNONCE1:
  if (len != 16) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Invalid E-SNonce1 length " "%u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Invalid E-SNonce1 length " "%u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Invalid E-SNonce1 length " "%u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Invalid E-SNonce1 length " "%u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Invalid E-SNonce1 length " "%u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } } while(0); } while(0)
                 ;
   return -1;
  }
  attr->e_snonce1 = pos;
  break;
 case ATTR_E_SNONCE2:
  if (len != 16) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Invalid E-SNonce2 length " "%u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Invalid E-SNonce2 length " "%u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Invalid E-SNonce2 length " "%u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Invalid E-SNonce2 length " "%u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Invalid E-SNonce2 length " "%u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } } while(0); } while(0)
                 ;
   return -1;
  }
  attr->e_snonce2 = pos;
  break;
 case ATTR_KEY_WRAP_AUTH:
  if (len != 8) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Invalid Key Wrap " "Authenticator length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Invalid Key Wrap " "Authenticator length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Invalid Key Wrap " "Authenticator length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Invalid Key Wrap " "Authenticator length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Invalid Key Wrap " "Authenticator length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } } while(0); } while(0)
                                      ;
   return -1;
  }
  attr->key_wrap_auth = pos;
  break;
 case ATTR_AUTH_TYPE:
  if (len != 2) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Invalid Authentication " "Type length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Invalid Authentication " "Type length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Invalid Authentication " "Type length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Invalid Authentication " "Type length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Invalid Authentication " "Type length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } } while(0); } while(0)
                             ;
   return -1;
  }
  attr->auth_type = pos;
  break;
 case ATTR_ENCR_TYPE:
  if (len != 2) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Invalid Encryption " "Type length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Invalid Encryption " "Type length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Invalid Encryption " "Type length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Invalid Encryption " "Type length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Invalid Encryption " "Type length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } } while(0); } while(0)
                             ;
   return -1;
  }
  attr->encr_type = pos;
  break;
 case ATTR_NETWORK_INDEX:
  if (len != 1) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Invalid Network Index " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Invalid Network Index " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Invalid Network Index " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Invalid Network Index " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Invalid Network Index " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } } while(0); } while(0)
                        ;
   return -1;
  }
  attr->network_idx = pos;
  break;
 case ATTR_NETWORK_KEY_INDEX:
  if (len != 1) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Invalid Network Key Index " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Invalid Network Key Index " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Invalid Network Key Index " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Invalid Network Key Index " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Invalid Network Key Index " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } } while(0); } while(0)
                        ;
   return -1;
  }
  attr->network_key_idx = pos;
  break;
 case ATTR_MAC_ADDR:
  if (len != 6) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Invalid MAC Address " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Invalid MAC Address " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Invalid MAC Address " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Invalid MAC Address " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Invalid MAC Address " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } } while(0); } while(0)
                        ;
   return -1;
  }
  attr->mac_addr = pos;
  break;
 case ATTR_KEY_PROVIDED_AUTO:
  if (len != 1) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Invalid Key Provided " "Automatically length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Invalid Key Provided " "Automatically length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Invalid Key Provided " "Automatically length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Invalid Key Provided " "Automatically length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Invalid Key Provided " "Automatically length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } } while(0); } while(0)
                                      ;
   return -1;
  }
  attr->key_prov_auto = pos;
  break;
 case ATTR_802_1X_ENABLED:
  if (len != 1) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Invalid 802.1X Enabled " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Invalid 802.1X Enabled " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Invalid 802.1X Enabled " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Invalid 802.1X Enabled " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Invalid 802.1X Enabled " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } } while(0); } while(0)
                        ;
   return -1;
  }
  attr->dot1x_enabled = pos;
  break;
 case ATTR_SELECTED_REGISTRAR:
  if (len != 1) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Invalid Selected Registrar" " length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Invalid Selected Registrar" " length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Invalid Selected Registrar" " length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Invalid Selected Registrar" " length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Invalid Selected Registrar" " length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } } while(0); } while(0)
                         ;
   return -1;
  }
  attr->selected_registrar = pos;
  break;
 case ATTR_REQUEST_TYPE:
  if (len != 1) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Invalid Request Type " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Invalid Request Type " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Invalid Request Type " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Invalid Request Type " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Invalid Request Type " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } } while(0); } while(0)
                        ;
   return -1;
  }
  attr->request_type = pos;
  break;
 case ATTR_RESPONSE_TYPE:
  if (len != 1) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Invalid Response Type " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Invalid Response Type " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Invalid Response Type " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Invalid Response Type " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Invalid Response Type " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } } while(0); } while(0)
                        ;
   return -1;
  }
  attr->response_type = pos;
  break;
 case ATTR_MANUFACTURER:
  attr->manufacturer = pos;
  attr->manufacturer_len = len;
  break;
 case ATTR_MODEL_NAME:
  attr->model_name = pos;
  attr->model_name_len = len;
  break;
 case ATTR_MODEL_NUMBER:
  attr->model_number = pos;
  attr->model_number_len = len;
  break;
 case ATTR_SERIAL_NUMBER:
  attr->serial_number = pos;
  attr->serial_number_len = len;
  break;
 case ATTR_DEV_NAME:
  attr->dev_name = pos;
  attr->dev_name_len = len;
  break;
 case ATTR_PUBLIC_KEY:
  attr->public_key = pos;
  attr->public_key_len = len;
  break;
 case ATTR_ENCR_SETTINGS:
  attr->encr_settings = pos;
  attr->encr_settings_len = len;
  break;
 case ATTR_CRED:
  if (attr->num_cred >= 10) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Skipped Credential " "attribute (max %d credentials)" "\033[0m" "\n", esp_log_timestamp(), "wpa", 10); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Skipped Credential " "attribute (max %d credentials)" "\033[0m" "\n", esp_log_timestamp(), "wpa", 10); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Skipped Credential " "attribute (max %d credentials)" "\033[0m" "\n", esp_log_timestamp(), "wpa", 10); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Skipped Credential " "attribute (max %d credentials)" "\033[0m" "\n", esp_log_timestamp(), "wpa", 10); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Skipped Credential " "attribute (max %d credentials)" "\033[0m" "\n", esp_log_timestamp(), "wpa", 10); } } while(0); } while(0)

                      ;
   break;
  }
  attr->cred[attr->num_cred] = pos;
  attr->cred_len[attr->num_cred] = len;
  attr->num_cred++;
  break;
 case ATTR_SSID:
  attr->ssid = pos;
  attr->ssid_len = len;
  break;
 case ATTR_NETWORK_KEY:
  attr->network_key = pos;
  attr->network_key_len = len;
  break;
 case ATTR_EAP_TYPE:
  attr->eap_type = pos;
  attr->eap_type_len = len;
  break;
 case ATTR_EAP_IDENTITY:
  attr->eap_identity = pos;
  attr->eap_identity_len = len;
  break;
 case ATTR_AP_SETUP_LOCKED:
  if (len != 1) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Invalid AP Setup Locked " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Invalid AP Setup Locked " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Invalid AP Setup Locked " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Invalid AP Setup Locked " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Invalid AP Setup Locked " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } } while(0); } while(0)
                        ;
   return -1;
  }
  attr->ap_setup_locked = pos;
  break;
 case ATTR_REQUESTED_DEV_TYPE:
  if (len != 8) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Invalid Requested Device " "Type length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Invalid Requested Device " "Type length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Invalid Requested Device " "Type length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Invalid Requested Device " "Type length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Invalid Requested Device " "Type length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } } while(0); } while(0)
                             ;
   return -1;
  }
  if (attr->num_req_dev_type >= 10) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Skipped Requested Device " "Type attribute (max %u types)" "\033[0m" "\n", esp_log_timestamp(), "wpa", 10); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Skipped Requested Device " "Type attribute (max %u types)" "\033[0m" "\n", esp_log_timestamp(), "wpa", 10); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Skipped Requested Device " "Type attribute (max %u types)" "\033[0m" "\n", esp_log_timestamp(), "wpa", 10); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Skipped Requested Device " "Type attribute (max %u types)" "\033[0m" "\n", esp_log_timestamp(), "wpa", 10); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Skipped Requested Device " "Type attribute (max %u types)" "\033[0m" "\n", esp_log_timestamp(), "wpa", 10); } } while(0); } while(0)

                              ;
   break;
  }
  attr->req_dev_type[attr->num_req_dev_type] = pos;
  attr->num_req_dev_type++;
  break;
 case ATTR_SECONDARY_DEV_TYPE_LIST:
  if (len > 128 ||
      (len % 8) > 0) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Invalid Secondary Device " "Type length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Invalid Secondary Device " "Type length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Invalid Secondary Device " "Type length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Invalid Secondary Device " "Type length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Invalid Secondary Device " "Type length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } } while(0); } while(0)
                             ;
   return -1;
  }
  attr->sec_dev_type_list = pos;
  attr->sec_dev_type_list_len = len;
  break;
 case ATTR_VENDOR_EXT:
  if (wps_parse_vendor_ext(attr, pos, len) < 0)
   return -1;
  break;
 case ATTR_AP_CHANNEL:
  if (len != 2) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Invalid AP Channel " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Invalid AP Channel " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Invalid AP Channel " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Invalid AP Channel " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Invalid AP Channel " "length %u" "\033[0m" "\n", esp_log_timestamp(), "wpa", len); } } while(0); } while(0)
                        ;
   return -1;
  }
  attr->ap_channel = pos;
  break;
 default:
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Unsupported attribute type 0x%x " "len=%u" "\033[0m" "\n", esp_log_timestamp(), "wpa", type, len); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Unsupported attribute type 0x%x " "len=%u" "\033[0m" "\n", esp_log_timestamp(), "wpa", type, len); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Unsupported attribute type 0x%x " "len=%u" "\033[0m" "\n", esp_log_timestamp(), "wpa", type, len); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Unsupported attribute type 0x%x " "len=%u" "\033[0m" "\n", esp_log_timestamp(), "wpa", type, len); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Unsupported attribute type 0x%x " "len=%u" "\033[0m" "\n", esp_log_timestamp(), "wpa", type, len); } } while(0); } while(0)
                          ;
  break;
 }

 return 0;
}


int wps_parse_msg(const struct wpabuf *msg, struct wps_parse_attr *attr)
{
 const u8 *pos, *end;
 u16 type, len;




 memset(attr, 0, sizeof(*attr));
 pos = wpabuf_head(msg);
 end = pos + wpabuf_len(msg);

 while (pos < end) {
  if (end - pos < 4) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Invalid message - " "%lu bytes remaining" "\033[0m" "\n", esp_log_timestamp(), "wpa", (unsigned long) (end - pos)); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Invalid message - " "%lu bytes remaining" "\033[0m" "\n", esp_log_timestamp(), "wpa", (unsigned long) (end - pos)); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Invalid message - " "%lu bytes remaining" "\033[0m" "\n", esp_log_timestamp(), "wpa", (unsigned long) (end - pos)); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Invalid message - " "%lu bytes remaining" "\033[0m" "\n", esp_log_timestamp(), "wpa", (unsigned long) (end - pos)); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Invalid message - " "%lu bytes remaining" "\033[0m" "\n", esp_log_timestamp(), "wpa", (unsigned long) (end - pos)); } } while(0); } while(0)

                                   ;
   return -1;
  }

  type = ((u16) (((pos)[0] << 8) | (pos)[1]));
  pos += 2;
  len = ((u16) (((pos)[0] << 8) | (pos)[1]));
  pos += 2;
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: attr type=0x%x len=%u" "\033[0m" "\n", esp_log_timestamp(), "wpa", type, len); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: attr type=0x%x len=%u" "\033[0m" "\n", esp_log_timestamp(), "wpa", type, len); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: attr type=0x%x len=%u" "\033[0m" "\n", esp_log_timestamp(), "wpa", type, len); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: attr type=0x%x len=%u" "\033[0m" "\n", esp_log_timestamp(), "wpa", type, len); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: attr type=0x%x len=%u" "\033[0m" "\n", esp_log_timestamp(), "wpa", type, len); } } while(0); } while(0)
                ;
  if (len > end - pos) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Attribute overflow" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Attribute overflow" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Attribute overflow" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Attribute overflow" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Attribute overflow" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
   wpa_hexdump_buf(ESP_LOG_VERBOSE, "WPS: Message data", msg);
# 608 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_attr_parse.c"
   return -1;
  }
# 630 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_attr_parse.c"
  if (wps_set_attr(attr, type, pos, len) < 0)
   return -1;




  pos += len;
 }

 return 0;
}
