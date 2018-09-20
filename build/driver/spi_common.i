# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
# 1 "D:\\ESP32\\esp-idf-v3.1-rc1\\ESP32_PIC_A2DP\\build\\driver//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
# 16 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
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


# 17 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_master.h" 1
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_master.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h" 1
# 14 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
       

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
# 17 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h" 2
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

# 18 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h" 2
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
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h" 2





typedef int32_t esp_err_t;
# 58 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
const char *esp_err_to_name(esp_err_t code);
# 76 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
const char *esp_err_to_name_r(esp_err_t code, char *buf, size_t buflen);


void _esp_error_check_failed(esp_err_t rc, const char *file, int line, const char *function, const char *expression) __attribute__((noreturn));
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_master.h" 2
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





# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h" 1
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdbool.h" 1 3 4
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h" 2

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
# 18 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/gpio.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_types.h" 1
# 23 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_types.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 24 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_types.h" 2
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/gpio.h" 2
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
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_master.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/semphr.h" 1
# 77 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/semphr.h"
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
# 78 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/semphr.h" 2

typedef QueueHandle_t SemaphoreHandle_t;
# 22 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_master.h" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_common.h" 1
# 22 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_common.h"
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
# 23 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_common.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/include/soc/spi_periph.h" 1
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/include/soc/spi_periph.h"
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
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/include/soc/spi_periph.h" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/spi_pins.h" 1
# 23 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/include/soc/spi_periph.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/spi_reg.h" 1
# 24 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/include/soc/spi_periph.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/spi_struct.h" 1
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/spi_struct.h"
typedef volatile struct {
    union {
        struct {
            uint32_t reserved0: 16;
            uint32_t flash_per: 1;
            uint32_t flash_pes: 1;
            uint32_t usr: 1;
            uint32_t flash_hpm: 1;
            uint32_t flash_res: 1;
            uint32_t flash_dp: 1;
            uint32_t flash_ce: 1;
            uint32_t flash_be: 1;
            uint32_t flash_se: 1;
            uint32_t flash_pp: 1;
            uint32_t flash_wrsr: 1;
            uint32_t flash_rdsr: 1;
            uint32_t flash_rdid: 1;
            uint32_t flash_wrdi: 1;
            uint32_t flash_wren: 1;
            uint32_t flash_read: 1;
        };
        uint32_t val;
    } cmd;
    uint32_t addr;
    union {
        struct {
            uint32_t reserved0: 10;
            uint32_t fcs_crc_en: 1;
            uint32_t tx_crc_en: 1;
            uint32_t wait_flash_idle_en: 1;
            uint32_t fastrd_mode: 1;
            uint32_t fread_dual: 1;
            uint32_t resandres: 1;
            uint32_t reserved16: 4;
            uint32_t fread_quad: 1;
            uint32_t wp: 1;
            uint32_t wrsr_2b: 1;
            uint32_t fread_dio: 1;
            uint32_t fread_qio: 1;
            uint32_t rd_bit_order: 1;
            uint32_t wr_bit_order: 1;
            uint32_t reserved27: 5;
        };
        uint32_t val;
    } ctrl;
    union {
        struct {
            uint32_t reserved0: 16;
            uint32_t cs_hold_delay_res:12;
            uint32_t cs_hold_delay: 4;
        };
        uint32_t val;
    } ctrl1;
    union {
        struct {
            uint32_t status: 16;
            uint32_t wb_mode: 8;
            uint32_t status_ext: 8;
        };
        uint32_t val;
    } rd_status;
    union {
        struct {
            uint32_t setup_time: 4;
            uint32_t hold_time: 4;
            uint32_t ck_out_low_mode: 4;
            uint32_t ck_out_high_mode: 4;
            uint32_t miso_delay_mode: 2;
            uint32_t miso_delay_num: 3;
            uint32_t mosi_delay_mode: 2;
            uint32_t mosi_delay_num: 3;
            uint32_t cs_delay_mode: 2;
            uint32_t cs_delay_num: 4;
        };
        uint32_t val;
    } ctrl2;
    union {
        struct {
            uint32_t clkcnt_l: 6;
            uint32_t clkcnt_h: 6;
            uint32_t clkcnt_n: 6;
            uint32_t clkdiv_pre: 13;
            uint32_t clk_equ_sysclk: 1;
        };
        uint32_t val;
    } clock;
    union {
        struct {
            uint32_t doutdin: 1;
            uint32_t reserved1: 3;
            uint32_t cs_hold: 1;
            uint32_t cs_setup: 1;
            uint32_t ck_i_edge: 1;
            uint32_t ck_out_edge: 1;
            uint32_t reserved8: 2;
            uint32_t rd_byte_order: 1;
            uint32_t wr_byte_order: 1;
            uint32_t fwrite_dual: 1;
            uint32_t fwrite_quad: 1;
            uint32_t fwrite_dio: 1;
            uint32_t fwrite_qio: 1;
            uint32_t sio: 1;
            uint32_t usr_hold_pol: 1;
            uint32_t usr_dout_hold: 1;
            uint32_t usr_din_hold: 1;
            uint32_t usr_dummy_hold: 1;
            uint32_t usr_addr_hold: 1;
            uint32_t usr_cmd_hold: 1;
            uint32_t usr_prep_hold: 1;
            uint32_t usr_miso_highpart: 1;
            uint32_t usr_mosi_highpart: 1;
            uint32_t usr_dummy_idle: 1;
            uint32_t usr_mosi: 1;
            uint32_t usr_miso: 1;
            uint32_t usr_dummy: 1;
            uint32_t usr_addr: 1;
            uint32_t usr_command: 1;
        };
        uint32_t val;
    } user;
    union {
        struct {
            uint32_t usr_dummy_cyclelen: 8;
            uint32_t reserved8: 18;
            uint32_t usr_addr_bitlen: 6;
        };
        uint32_t val;
    } user1;
    union {
        struct {
            uint32_t usr_command_value: 16;
            uint32_t reserved16: 12;
            uint32_t usr_command_bitlen: 4;
        };
        uint32_t val;
    } user2;
    union {
        struct {
            uint32_t usr_mosi_dbitlen:24;
            uint32_t reserved24: 8;
        };
        uint32_t val;
    } mosi_dlen;
    union {
        struct {
            uint32_t usr_miso_dbitlen:24;
            uint32_t reserved24: 8;
        };
        uint32_t val;
    } miso_dlen;
    uint32_t slv_wr_status;
    union {
        struct {
            uint32_t cs0_dis: 1;
            uint32_t cs1_dis: 1;
            uint32_t cs2_dis: 1;
            uint32_t reserved3: 2;
            uint32_t ck_dis: 1;
            uint32_t master_cs_pol: 3;
            uint32_t reserved9: 2;
            uint32_t master_ck_sel: 3;
            uint32_t reserved14: 15;
            uint32_t ck_idle_edge: 1;
            uint32_t cs_keep_active: 1;
            uint32_t reserved31: 1;
        };
        uint32_t val;
    } pin;
    union {
        struct {
            uint32_t rd_buf_done: 1;
            uint32_t wr_buf_done: 1;
            uint32_t rd_sta_done: 1;
            uint32_t wr_sta_done: 1;
            uint32_t trans_done: 1;
            uint32_t rd_buf_inten: 1;
            uint32_t wr_buf_inten: 1;
            uint32_t rd_sta_inten: 1;
            uint32_t wr_sta_inten: 1;
            uint32_t trans_inten: 1;
            uint32_t cs_i_mode: 2;
            uint32_t reserved12: 5;
            uint32_t last_command: 3;
            uint32_t last_state: 3;
            uint32_t trans_cnt: 4;
            uint32_t cmd_define: 1;
            uint32_t wr_rd_sta_en: 1;
            uint32_t wr_rd_buf_en: 1;
            uint32_t slave_mode: 1;
            uint32_t sync_reset: 1;
        };
        uint32_t val;
    } slave;
    union {
        struct {
            uint32_t rdbuf_dummy_en: 1;
            uint32_t wrbuf_dummy_en: 1;
            uint32_t rdsta_dummy_en: 1;
            uint32_t wrsta_dummy_en: 1;
            uint32_t wr_addr_bitlen: 6;
            uint32_t rd_addr_bitlen: 6;
            uint32_t reserved16: 9;
            uint32_t status_readback: 1;
            uint32_t status_fast_en: 1;
            uint32_t status_bitlen: 5;
        };
        uint32_t val;
    } slave1;
    union {
        struct {
            uint32_t rdsta_dummy_cyclelen: 8;
            uint32_t wrsta_dummy_cyclelen: 8;
            uint32_t rdbuf_dummy_cyclelen: 8;
            uint32_t wrbuf_dummy_cyclelen: 8;
        };
        uint32_t val;
    } slave2;
    union {
        struct {
            uint32_t rdbuf_cmd_value: 8;
            uint32_t wrbuf_cmd_value: 8;
            uint32_t rdsta_cmd_value: 8;
            uint32_t wrsta_cmd_value: 8;
        };
        uint32_t val;
    } slave3;
    union {
        struct {
            uint32_t bit_len: 24;
            uint32_t reserved24: 8;
        };
        uint32_t val;
    } slv_wrbuf_dlen;
    union {
        struct {
            uint32_t bit_len: 24;
            uint32_t reserved24: 8;
        };
        uint32_t val;
    } slv_rdbuf_dlen;
    union {
        struct {
            uint32_t req_en: 1;
            uint32_t usr_cmd_4byte: 1;
            uint32_t flash_usr_cmd: 1;
            uint32_t flash_pes_en: 1;
            uint32_t reserved4: 28;
        };
        uint32_t val;
    } cache_fctrl;
    union {
        struct {
            uint32_t reserved0: 1;
            uint32_t usr_sram_dio: 1;
            uint32_t usr_sram_qio: 1;
            uint32_t usr_wr_sram_dummy: 1;
            uint32_t usr_rd_sram_dummy: 1;
            uint32_t cache_sram_usr_rcmd: 1;
            uint32_t sram_bytes_len: 8;
            uint32_t sram_dummy_cyclelen: 8;
            uint32_t sram_addr_bitlen: 6;
            uint32_t cache_sram_usr_wcmd: 1;
            uint32_t reserved29: 3;
        };
        uint32_t val;
    } cache_sctrl;
    union {
        struct {
            uint32_t dio: 1;
            uint32_t qio: 1;
            uint32_t reserved2: 2;
            uint32_t rst_io: 1;
            uint32_t reserved5:27;
        };
        uint32_t val;
    } sram_cmd;
    union {
        struct {
            uint32_t usr_rd_cmd_value: 16;
            uint32_t reserved16: 12;
            uint32_t usr_rd_cmd_bitlen: 4;
        };
        uint32_t val;
    } sram_drd_cmd;
    union {
        struct {
            uint32_t usr_wr_cmd_value: 16;
            uint32_t reserved16: 12;
            uint32_t usr_wr_cmd_bitlen: 4;
        };
        uint32_t val;
    } sram_dwr_cmd;
    union {
        struct {
            uint32_t slv_rdata_bit:24;
            uint32_t reserved24: 8;
        };
        uint32_t val;
    } slv_rd_bit;
    uint32_t reserved_68;
    uint32_t reserved_6c;
    uint32_t reserved_70;
    uint32_t reserved_74;
    uint32_t reserved_78;
    uint32_t reserved_7c;
    uint32_t data_buf[16];
    uint32_t tx_crc;
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
    union {
        struct {
            uint32_t t_pp_time: 12;
            uint32_t reserved12: 4;
            uint32_t t_pp_shift: 4;
            uint32_t reserved20:11;
            uint32_t t_pp_ena: 1;
        };
        uint32_t val;
    } ext0;
    union {
        struct {
            uint32_t t_erase_time: 12;
            uint32_t reserved12: 4;
            uint32_t t_erase_shift: 4;
            uint32_t reserved20: 11;
            uint32_t t_erase_ena: 1;
        };
        uint32_t val;
    } ext1;
    union {
        struct {
            uint32_t st: 3;
            uint32_t reserved3: 29;
        };
        uint32_t val;
    } ext2;
    union {
        struct {
            uint32_t int_hold_ena: 2;
            uint32_t reserved2: 30;
        };
        uint32_t val;
    } ext3;
    union {
        struct {
            uint32_t reserved0: 2;
            uint32_t in_rst: 1;
            uint32_t out_rst: 1;
            uint32_t ahbm_fifo_rst: 1;
            uint32_t ahbm_rst: 1;
            uint32_t in_loop_test: 1;
            uint32_t out_loop_test: 1;
            uint32_t out_auto_wrback: 1;
            uint32_t out_eof_mode: 1;
            uint32_t outdscr_burst_en: 1;
            uint32_t indscr_burst_en: 1;
            uint32_t out_data_burst_en: 1;
            uint32_t reserved13: 1;
            uint32_t dma_rx_stop: 1;
            uint32_t dma_tx_stop: 1;
            uint32_t dma_continue: 1;
            uint32_t reserved17: 15;
        };
        uint32_t val;
    } dma_conf;
    union {
        struct {
            uint32_t addr: 20;
            uint32_t reserved20: 8;
            uint32_t stop: 1;
            uint32_t start: 1;
            uint32_t restart: 1;
            uint32_t reserved31: 1;
        };
        uint32_t val;
    } dma_out_link;
    union {
        struct {
            uint32_t addr: 20;
            uint32_t auto_ret: 1;
            uint32_t reserved21: 7;
            uint32_t stop: 1;
            uint32_t start: 1;
            uint32_t restart: 1;
            uint32_t reserved31: 1;
        };
        uint32_t val;
    } dma_in_link;
    union {
        struct {
            uint32_t rx_en: 1;
            uint32_t tx_en: 1;
            uint32_t reserved2: 30;
        };
        uint32_t val;
    } dma_status;
    union {
        struct {
            uint32_t inlink_dscr_empty: 1;
            uint32_t outlink_dscr_error: 1;
            uint32_t inlink_dscr_error: 1;
            uint32_t in_done: 1;
            uint32_t in_err_eof: 1;
            uint32_t in_suc_eof: 1;
            uint32_t out_done: 1;
            uint32_t out_eof: 1;
            uint32_t out_total_eof: 1;
            uint32_t reserved9: 23;
        };
        uint32_t val;
    } dma_int_ena;
    union {
        struct {
            uint32_t inlink_dscr_empty: 1;
            uint32_t outlink_dscr_error: 1;
            uint32_t inlink_dscr_error: 1;
            uint32_t in_done: 1;
            uint32_t in_err_eof: 1;
            uint32_t in_suc_eof: 1;
            uint32_t out_done: 1;
            uint32_t out_eof: 1;
            uint32_t out_total_eof: 1;
            uint32_t reserved9: 23;
        };
        uint32_t val;
    } dma_int_raw;
    union {
        struct {
            uint32_t inlink_dscr_empty: 1;
            uint32_t outlink_dscr_error: 1;
            uint32_t inlink_dscr_error: 1;
            uint32_t in_done: 1;
            uint32_t in_err_eof: 1;
            uint32_t in_suc_eof: 1;
            uint32_t out_done: 1;
            uint32_t out_eof: 1;
            uint32_t out_total_eof: 1;
            uint32_t reserved9: 23;
        };
        uint32_t val;
    } dma_int_st;
    union {
        struct {
            uint32_t inlink_dscr_empty: 1;
            uint32_t outlink_dscr_error: 1;
            uint32_t inlink_dscr_error: 1;
            uint32_t in_done: 1;
            uint32_t in_err_eof: 1;
            uint32_t in_suc_eof: 1;
            uint32_t out_done: 1;
            uint32_t out_eof: 1;
            uint32_t out_total_eof: 1;
            uint32_t reserved9: 23;
        };
        uint32_t val;
    } dma_int_clr;
    uint32_t dma_in_err_eof_des_addr;
    uint32_t dma_in_suc_eof_des_addr;
    uint32_t dma_inlink_dscr;
    uint32_t dma_inlink_dscr_bf0;
    uint32_t dma_inlink_dscr_bf1;
    uint32_t dma_out_eof_bfr_des_addr;
    uint32_t dma_out_eof_des_addr;
    uint32_t dma_outlink_dscr;
    uint32_t dma_outlink_dscr_bf0;
    uint32_t dma_outlink_dscr_bf1;
    uint32_t dma_rx_status;
    uint32_t dma_tx_status;
    uint32_t reserved_150;
    uint32_t reserved_154;
    uint32_t reserved_158;
    uint32_t reserved_15c;
    uint32_t reserved_160;
    uint32_t reserved_164;
    uint32_t reserved_168;
    uint32_t reserved_16c;
    uint32_t reserved_170;
    uint32_t reserved_174;
    uint32_t reserved_178;
    uint32_t reserved_17c;
    uint32_t reserved_180;
    uint32_t reserved_184;
    uint32_t reserved_188;
    uint32_t reserved_18c;
    uint32_t reserved_190;
    uint32_t reserved_194;
    uint32_t reserved_198;
    uint32_t reserved_19c;
    uint32_t reserved_1a0;
    uint32_t reserved_1a4;
    uint32_t reserved_1a8;
    uint32_t reserved_1ac;
    uint32_t reserved_1b0;
    uint32_t reserved_1b4;
    uint32_t reserved_1b8;
    uint32_t reserved_1bc;
    uint32_t reserved_1c0;
    uint32_t reserved_1c4;
    uint32_t reserved_1c8;
    uint32_t reserved_1cc;
    uint32_t reserved_1d0;
    uint32_t reserved_1d4;
    uint32_t reserved_1d8;
    uint32_t reserved_1dc;
    uint32_t reserved_1e0;
    uint32_t reserved_1e4;
    uint32_t reserved_1e8;
    uint32_t reserved_1ec;
    uint32_t reserved_1f0;
    uint32_t reserved_1f4;
    uint32_t reserved_1f8;
    uint32_t reserved_1fc;
    uint32_t reserved_200;
    uint32_t reserved_204;
    uint32_t reserved_208;
    uint32_t reserved_20c;
    uint32_t reserved_210;
    uint32_t reserved_214;
    uint32_t reserved_218;
    uint32_t reserved_21c;
    uint32_t reserved_220;
    uint32_t reserved_224;
    uint32_t reserved_228;
    uint32_t reserved_22c;
    uint32_t reserved_230;
    uint32_t reserved_234;
    uint32_t reserved_238;
    uint32_t reserved_23c;
    uint32_t reserved_240;
    uint32_t reserved_244;
    uint32_t reserved_248;
    uint32_t reserved_24c;
    uint32_t reserved_250;
    uint32_t reserved_254;
    uint32_t reserved_258;
    uint32_t reserved_25c;
    uint32_t reserved_260;
    uint32_t reserved_264;
    uint32_t reserved_268;
    uint32_t reserved_26c;
    uint32_t reserved_270;
    uint32_t reserved_274;
    uint32_t reserved_278;
    uint32_t reserved_27c;
    uint32_t reserved_280;
    uint32_t reserved_284;
    uint32_t reserved_288;
    uint32_t reserved_28c;
    uint32_t reserved_290;
    uint32_t reserved_294;
    uint32_t reserved_298;
    uint32_t reserved_29c;
    uint32_t reserved_2a0;
    uint32_t reserved_2a4;
    uint32_t reserved_2a8;
    uint32_t reserved_2ac;
    uint32_t reserved_2b0;
    uint32_t reserved_2b4;
    uint32_t reserved_2b8;
    uint32_t reserved_2bc;
    uint32_t reserved_2c0;
    uint32_t reserved_2c4;
    uint32_t reserved_2c8;
    uint32_t reserved_2cc;
    uint32_t reserved_2d0;
    uint32_t reserved_2d4;
    uint32_t reserved_2d8;
    uint32_t reserved_2dc;
    uint32_t reserved_2e0;
    uint32_t reserved_2e4;
    uint32_t reserved_2e8;
    uint32_t reserved_2ec;
    uint32_t reserved_2f0;
    uint32_t reserved_2f4;
    uint32_t reserved_2f8;
    uint32_t reserved_2fc;
    uint32_t reserved_300;
    uint32_t reserved_304;
    uint32_t reserved_308;
    uint32_t reserved_30c;
    uint32_t reserved_310;
    uint32_t reserved_314;
    uint32_t reserved_318;
    uint32_t reserved_31c;
    uint32_t reserved_320;
    uint32_t reserved_324;
    uint32_t reserved_328;
    uint32_t reserved_32c;
    uint32_t reserved_330;
    uint32_t reserved_334;
    uint32_t reserved_338;
    uint32_t reserved_33c;
    uint32_t reserved_340;
    uint32_t reserved_344;
    uint32_t reserved_348;
    uint32_t reserved_34c;
    uint32_t reserved_350;
    uint32_t reserved_354;
    uint32_t reserved_358;
    uint32_t reserved_35c;
    uint32_t reserved_360;
    uint32_t reserved_364;
    uint32_t reserved_368;
    uint32_t reserved_36c;
    uint32_t reserved_370;
    uint32_t reserved_374;
    uint32_t reserved_378;
    uint32_t reserved_37c;
    uint32_t reserved_380;
    uint32_t reserved_384;
    uint32_t reserved_388;
    uint32_t reserved_38c;
    uint32_t reserved_390;
    uint32_t reserved_394;
    uint32_t reserved_398;
    uint32_t reserved_39c;
    uint32_t reserved_3a0;
    uint32_t reserved_3a4;
    uint32_t reserved_3a8;
    uint32_t reserved_3ac;
    uint32_t reserved_3b0;
    uint32_t reserved_3b4;
    uint32_t reserved_3b8;
    uint32_t reserved_3bc;
    uint32_t reserved_3c0;
    uint32_t reserved_3c4;
    uint32_t reserved_3c8;
    uint32_t reserved_3cc;
    uint32_t reserved_3d0;
    uint32_t reserved_3d4;
    uint32_t reserved_3d8;
    uint32_t reserved_3dc;
    uint32_t reserved_3e0;
    uint32_t reserved_3e4;
    uint32_t reserved_3e8;
    uint32_t reserved_3ec;
    uint32_t reserved_3f0;
    uint32_t reserved_3f4;
    uint32_t reserved_3f8;
    union {
        struct {
            uint32_t date: 28;
            uint32_t reserved28: 4;
        };
        uint32_t val;
    } date;
} spi_dev_t;
extern spi_dev_t SPI0;
extern spi_dev_t SPI1;
extern spi_dev_t SPI2;
extern spi_dev_t SPI3;
# 25 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/include/soc/spi_periph.h" 2
# 35 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/include/soc/spi_periph.h"
typedef struct {
    const uint8_t spiclk_out;
    const uint8_t spiclk_in;
    const uint8_t spid_out;
    const uint8_t spiq_out;
    const uint8_t spiwp_out;
    const uint8_t spihd_out;
    const uint8_t spid_in;
    const uint8_t spiq_in;
    const uint8_t spiwp_in;
    const uint8_t spihd_in;
    const uint8_t spics_out[3];
    const uint8_t spics_in;
    const uint8_t spiclk_iomux_pin;
    const uint8_t spid_iomux_pin;
    const uint8_t spiq_iomux_pin;
    const uint8_t spiwp_iomux_pin;
    const uint8_t spihd_iomux_pin;
    const uint8_t spics0_iomux_pin;
    const uint8_t irq;
    const uint8_t irq_dma;
    const periph_module_t module;
    spi_dev_t *hw;
} spi_signal_conn_t;

extern const spi_signal_conn_t spi_periph_signal[3];
# 24 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_common.h" 2
# 38 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_common.h"
typedef enum {
    SPI_HOST=0,
    HSPI_HOST=1,
    VSPI_HOST=2
} spi_host_device_t;
# 53 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_common.h"
typedef struct {
    int mosi_io_num;
    int miso_io_num;
    int sclk_io_num;
    int quadwp_io_num;
    int quadhd_io_num;
    int max_transfer_sz;
    uint32_t flags;
} spi_bus_config_t;
# 72 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_common.h"

# 72 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_common.h" 3 4
_Bool 
# 72 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_common.h"
    spicommon_periph_claim(spi_host_device_t host);








# 80 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_common.h" 3 4
_Bool 
# 80 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_common.h"
    spicommon_periph_free(spi_host_device_t host);
# 91 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_common.h"

# 91 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_common.h" 3 4
_Bool 
# 91 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_common.h"
    spicommon_dma_chan_claim(int dma_chan);
# 100 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_common.h"

# 100 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_common.h" 3 4
_Bool 
# 100 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_common.h"
    spicommon_dma_chan_free(int dma_chan);
# 143 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_common.h"
esp_err_t spicommon_bus_initialize_io(spi_host_device_t host, const spi_bus_config_t *bus_config, int dma_chan, uint32_t flags, uint32_t *flags_o);
# 155 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_common.h"
esp_err_t spicommon_bus_free_io(spi_host_device_t host) __attribute__((deprecated));
# 166 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_common.h"
esp_err_t spicommon_bus_free_io_cfg(const spi_bus_config_t *bus_cfg);
# 179 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_common.h"
void spicommon_cs_initialize(spi_host_device_t host, int cs_io_num, int cs_num, int force_gpio_matrix);
# 188 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_common.h"
void spicommon_cs_free(spi_host_device_t host, int cs_num) __attribute__((deprecated));






void spicommon_cs_free_io(int cs_gpio_num);
# 211 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_common.h"
void spicommon_setup_dma_desc_links(lldesc_t *dmadesc, int len, const uint8_t *data, 
# 211 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_common.h" 3 4
                                                                                    _Bool 
# 211 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_common.h"
                                                                                         isrx);
# 220 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_common.h"
spi_dev_t *spicommon_hw_for_host(spi_host_device_t host);
# 229 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_common.h"
int spicommon_irqsource_for_host(spi_host_device_t host);




typedef void(*dmaworkaround_cb_t)(void *arg);
# 257 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_common.h"

# 257 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_common.h" 3 4
_Bool 
# 257 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_common.h"
    spicommon_dmaworkaround_req_reset(int dmachan, dmaworkaround_cb_t cb, void *arg);








# 265 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_common.h" 3 4
_Bool 
# 265 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_common.h"
    spicommon_dmaworkaround_reset_in_progress();
# 274 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_common.h"
void spicommon_dmaworkaround_idle(int dmachan);







void spicommon_dmaworkaround_transfer_active(int dmachan);
# 24 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_master.h" 2
# 59 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_master.h"
typedef struct spi_transaction_t spi_transaction_t;
typedef void(*transaction_cb_t)(spi_transaction_t *trans);




typedef struct {
    uint8_t command_bits;
    uint8_t address_bits;
    uint8_t dummy_bits;
    uint8_t mode;
    uint8_t duty_cycle_pos;
    uint8_t cs_ena_pretrans;
    uint8_t cs_ena_posttrans;
    int clock_speed_hz;
    int input_delay_ns;




    int spics_io_num;
    uint32_t flags;
    int queue_size;
    transaction_cb_t pre_cb;
    transaction_cb_t post_cb;
} spi_device_interface_config_t;
# 98 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_master.h"
struct spi_transaction_t {
    uint32_t flags;
    uint16_t cmd;





    uint64_t addr;





    size_t length;
    size_t rxlength;
    void *user;
    union {
        const void *tx_buffer;
        uint8_t tx_data[4];
    };
    union {
        void *rx_buffer;
        uint8_t rx_data[4];
    };
} ;





typedef struct {
    struct spi_transaction_t base;
    uint8_t command_bits;
    uint8_t address_bits;
} spi_transaction_ext_t ;


typedef struct spi_device_t* spi_device_handle_t;
# 159 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_master.h"
esp_err_t spi_bus_initialize(spi_host_device_t host, const spi_bus_config_t *bus_config, int dma_chan);
# 172 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_master.h"
esp_err_t spi_bus_free(spi_host_device_t host);
# 193 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_master.h"
esp_err_t spi_bus_add_device(spi_host_device_t host, const spi_device_interface_config_t *dev_config, spi_device_handle_t *handle);
# 205 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_master.h"
esp_err_t spi_bus_remove_device(spi_device_handle_t handle);
# 221 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_master.h"
esp_err_t spi_device_queue_trans(spi_device_handle_t handle, spi_transaction_t *trans_desc, TickType_t ticks_to_wait);
# 243 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_master.h"
esp_err_t spi_device_get_trans_result(spi_device_handle_t handle, spi_transaction_t **trans_desc, TickType_t ticks_to_wait);
# 261 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_master.h"
esp_err_t spi_device_transmit(spi_device_handle_t handle, spi_transaction_t *trans_desc);
# 272 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_master.h"
int spi_cal_clock(int fapb, int hz, int duty_cycle, uint32_t* reg_o);
# 287 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_master.h"
void spi_get_timing(
# 287 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_master.h" 3 4
                   _Bool 
# 287 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_master.h"
                        gpio_is_used, int input_delay_ns, int eff_clk, int* dummy_o, int* cycles_remain_o);
# 297 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_master.h"
int spi_get_freq_limit(
# 297 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_master.h" 3 4
                      _Bool 
# 297 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_master.h"
                           gpio_is_used, int input_delay_ns);
# 18 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 2
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
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 2






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
# 26 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 2





# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/periph_ctrl.h" 1
# 37 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/periph_ctrl.h"
void periph_module_enable(periph_module_t periph);
# 49 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/periph_ctrl.h"
void periph_module_disable(periph_module_t periph);
# 63 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/periph_ctrl.h"
void periph_module_reset(periph_module_t periph);
# 32 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 2



static const char *SPI_TAG = "spi";
# 44 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
typedef struct spi_device_t spi_device_t;
# 53 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
static 
# 53 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
      _Bool 
# 53 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
           spi_periph_claimed[3] = {
# 53 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
                                    1
# 53 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
                                        , 
# 53 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
                                          0
# 53 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
                                               , 
# 53 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
                                                 0
# 53 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
                                                      };
static uint8_t spi_dma_chan_enabled = 0;
static portMUX_TYPE spi_dma_spinlock = { .owner = 0xB33FFFFF, .count = 0, };




# 59 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
_Bool 
# 59 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
    spicommon_periph_claim(spi_host_device_t host)
{
    
# 61 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
   _Bool 
# 61 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
        ret = __sync_bool_compare_and_swap(&spi_periph_claimed[host], 
# 61 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
                                                                      0
# 61 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
                                                                           , 
# 61 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
                                                                             1
# 61 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
                                                                                 );
    if (ret) periph_module_enable(spi_periph_signal[host].module);
    return ret;
}



# 67 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
_Bool 
# 67 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
    spicommon_periph_free(spi_host_device_t host)
{
    
# 69 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
   _Bool 
# 69 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
        ret = __sync_bool_compare_and_swap(&spi_periph_claimed[host], 
# 69 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
                                                                      1
# 69 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
                                                                          , 
# 69 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
                                                                            0
# 69 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
                                                                                 );
    if (ret) periph_module_disable(spi_periph_signal[host].module);
    return ret;
}


int spicommon_irqsource_for_host(spi_host_device_t host)
{
    return spi_periph_signal[host].irq;
}

spi_dev_t *spicommon_hw_for_host(spi_host_device_t host)
{
    return spi_periph_signal[host].hw;
}


# 85 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
_Bool 
# 85 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
    spicommon_dma_chan_claim (int dma_chan)
{
    
# 87 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
   _Bool 
# 87 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
        ret = 
# 87 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
              0
# 87 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
                   ;
    ((dma_chan == 1 || dma_chan == 2) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c", 88, __func__, "dma_chan == 1 || dma_chan == 2"));

    vTaskEnterCritical(&spi_dma_spinlock);
    if ( !(spi_dma_chan_enabled & ((1UL << (dma_chan-1)))) ) {

        spi_dma_chan_enabled |= ((1UL << (dma_chan-1)));
        ret = 
# 94 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
             1
# 94 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
                 ;
    }
    periph_module_enable( PERIPH_SPI_DMA_MODULE );
    vTaskExitCritical(&spi_dma_spinlock);

    return ret;
}


# 102 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
_Bool 
# 102 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
    spicommon_dma_chan_free(int dma_chan)
{
    ((dma_chan == 1 || dma_chan == 2) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c", 104, __func__, "dma_chan == 1 || dma_chan == 2"));
    ((spi_dma_chan_enabled & ((1UL << (dma_chan-1)))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c", 105, __func__, "spi_dma_chan_enabled & DMA_CHANNEL_ENABLED(dma_chan)"));

    vTaskEnterCritical(&spi_dma_spinlock);
    spi_dma_chan_enabled &= ~((1UL << (dma_chan-1)));
    if ( spi_dma_chan_enabled == 0 ) {

        periph_module_disable( PERIPH_SPI_DMA_MODULE );
    }
    vTaskExitCritical(&spi_dma_spinlock);

    return 
# 115 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
          1
# 115 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
              ;
}






esp_err_t spicommon_bus_initialize_io(spi_host_device_t host, const spi_bus_config_t *bus_config, int dma_chan, uint32_t flags, uint32_t* flags_o)
{
    
# 125 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
   _Bool 
# 125 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
        use_iomux = 
# 125 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
                    1
# 125 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
                        ;
    uint32_t temp_flag=0;
    
# 127 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
   _Bool 
# 127 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
        quad_pins_exist = 
# 127 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
                          1
# 127 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
                              ;

    
# 129 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
   _Bool 
# 129 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
        miso_output = !(flags&(1<<0)) || flags&(1<<5);

    
# 131 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
   _Bool 
# 131 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
        mosi_output = (flags&(1<<0))!=0 || flags&(1<<5);


    if (bus_config->sclk_io_num>=0) {
        temp_flag |= (1<<2);
        if (!(((((bus_config->sclk_io_num < 40 && GPIO_PIN_MUX_REG[bus_config->sclk_io_num] != 0))) && (bus_config->sclk_io_num < 34)))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, SPI_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 136, "sclk not valid"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, SPI_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 136, "sclk not valid"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, SPI_TAG, "D" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 136, "sclk not valid"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, SPI_TAG, "V" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 136, "sclk not valid"); } else { esp_log_write(ESP_LOG_INFO, SPI_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 136, "sclk not valid"); } } while(0); } while(0); return (0x102); };
        if (bus_config->sclk_io_num != spi_periph_signal[host].spiclk_iomux_pin) use_iomux = 
# 137 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
                                                                                            0
# 137 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
                                                                                                 ;
    } else {
        if (!((flags&(1<<2))==0)) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, SPI_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 139, "sclk pin required."); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, SPI_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 139, "sclk pin required."); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, SPI_TAG, "D" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 139, "sclk pin required."); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, SPI_TAG, "V" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 139, "sclk pin required."); } else { esp_log_write(ESP_LOG_INFO, SPI_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 139, "sclk pin required."); } } while(0); } while(0); return (0x102); };
    }
    if (bus_config->quadwp_io_num>=0) {
        if (!(((((bus_config->quadwp_io_num < 40 && GPIO_PIN_MUX_REG[bus_config->quadwp_io_num] != 0))) && (bus_config->quadwp_io_num < 34)))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, SPI_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 142, "spiwp not valid"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, SPI_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 142, "spiwp not valid"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, SPI_TAG, "D" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 142, "spiwp not valid"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, SPI_TAG, "V" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 142, "spiwp not valid"); } else { esp_log_write(ESP_LOG_INFO, SPI_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 142, "spiwp not valid"); } } while(0); } while(0); return (0x102); };
        if (bus_config->quadwp_io_num != spi_periph_signal[host].spiwp_iomux_pin) use_iomux = 
# 143 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
                                                                                             0
# 143 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
                                                                                                  ;
    } else {
        quad_pins_exist = 
# 145 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
                         0
# 145 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
                              ;
        if (!((flags&(1<<6))==0)) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, SPI_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 146, "spiwp pin required."); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, SPI_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 146, "spiwp pin required."); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, SPI_TAG, "D" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 146, "spiwp pin required."); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, SPI_TAG, "V" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 146, "spiwp pin required."); } else { esp_log_write(ESP_LOG_INFO, SPI_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 146, "spiwp pin required."); } } while(0); } while(0); return (0x102); };
    }
    if (bus_config->quadhd_io_num>=0) {
        if (!(((((bus_config->quadhd_io_num < 40 && GPIO_PIN_MUX_REG[bus_config->quadhd_io_num] != 0))) && (bus_config->quadhd_io_num < 34)))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, SPI_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 149, "spihd not valid"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, SPI_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 149, "spihd not valid"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, SPI_TAG, "D" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 149, "spihd not valid"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, SPI_TAG, "V" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 149, "spihd not valid"); } else { esp_log_write(ESP_LOG_INFO, SPI_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 149, "spihd not valid"); } } while(0); } while(0); return (0x102); };
        if (bus_config->quadhd_io_num != spi_periph_signal[host].spihd_iomux_pin) use_iomux = 
# 150 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
                                                                                             0
# 150 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
                                                                                                  ;
    } else {
        quad_pins_exist = 
# 152 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
                         0
# 152 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
                              ;
        if (!((flags&(1<<6))==0)) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, SPI_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 153, "spihd pin required."); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, SPI_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 153, "spihd pin required."); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, SPI_TAG, "D" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 153, "spihd pin required."); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, SPI_TAG, "V" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 153, "spihd pin required."); } else { esp_log_write(ESP_LOG_INFO, SPI_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 153, "spihd pin required."); } } while(0); } while(0); return (0x102); };
    }
    if (bus_config->mosi_io_num >= 0) {
        temp_flag |= (1<<4);
        if (mosi_output) {
            if (!(((((bus_config->mosi_io_num < 40 && GPIO_PIN_MUX_REG[bus_config->mosi_io_num] != 0))) && (bus_config->mosi_io_num < 34)))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, SPI_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 158, "mosi not valid"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, SPI_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 158, "mosi not valid"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, SPI_TAG, "D" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 158, "mosi not valid"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, SPI_TAG, "V" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 158, "mosi not valid"); } else { esp_log_write(ESP_LOG_INFO, SPI_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 158, "mosi not valid"); } } while(0); } while(0); return (0x102); };
        } else {
            if (!(((bus_config->mosi_io_num < 40 && GPIO_PIN_MUX_REG[bus_config->mosi_io_num] != 0)))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, SPI_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 160, "mosi not valid"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, SPI_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 160, "mosi not valid"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, SPI_TAG, "D" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 160, "mosi not valid"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, SPI_TAG, "V" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 160, "mosi not valid"); } else { esp_log_write(ESP_LOG_INFO, SPI_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 160, "mosi not valid"); } } while(0); } while(0); return (0x102); };
        }
        if (bus_config->mosi_io_num != spi_periph_signal[host].spid_iomux_pin) use_iomux = 
# 162 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
                                                                                          0
# 162 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
                                                                                               ;
    } else {
        if (!((flags&(1<<4))==0)) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, SPI_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 164, "mosi pin required."); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, SPI_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 164, "mosi pin required."); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, SPI_TAG, "D" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 164, "mosi pin required."); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, SPI_TAG, "V" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 164, "mosi pin required."); } else { esp_log_write(ESP_LOG_INFO, SPI_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 164, "mosi pin required."); } } while(0); } while(0); return (0x102); };
    }
    if (bus_config->miso_io_num>=0) {
        temp_flag |= (1<<3);
        if (miso_output) {
            if (!(((((bus_config->miso_io_num < 40 && GPIO_PIN_MUX_REG[bus_config->miso_io_num] != 0))) && (bus_config->miso_io_num < 34)))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, SPI_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 169, "miso not valid"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, SPI_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 169, "miso not valid"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, SPI_TAG, "D" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 169, "miso not valid"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, SPI_TAG, "V" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 169, "miso not valid"); } else { esp_log_write(ESP_LOG_INFO, SPI_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 169, "miso not valid"); } } while(0); } while(0); return (0x102); };
        } else {
            if (!(((bus_config->miso_io_num < 40 && GPIO_PIN_MUX_REG[bus_config->miso_io_num] != 0)))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, SPI_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 171, "miso not valid"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, SPI_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 171, "miso not valid"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, SPI_TAG, "D" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 171, "miso not valid"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, SPI_TAG, "V" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 171, "miso not valid"); } else { esp_log_write(ESP_LOG_INFO, SPI_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 171, "miso not valid"); } } while(0); } while(0); return (0x102); };
        }
        if (bus_config->miso_io_num != spi_periph_signal[host].spiq_iomux_pin) use_iomux = 
# 173 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
                                                                                          0
# 173 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
                                                                                               ;
    } else {
        if (!((flags&(1<<3))==0)) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, SPI_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 175, "miso pin required."); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, SPI_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 175, "miso pin required."); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, SPI_TAG, "D" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 175, "miso pin required."); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, SPI_TAG, "V" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 175, "miso pin required."); } else { esp_log_write(ESP_LOG_INFO, SPI_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 175, "miso pin required."); } } while(0); } while(0); return (0x102); };
    }

    if ( (bus_config->mosi_io_num < 0 || ((((bus_config->mosi_io_num < 40 && GPIO_PIN_MUX_REG[bus_config->mosi_io_num] != 0))) && (bus_config->mosi_io_num < 34))) &&
        (bus_config->miso_io_num < 0 || ((((bus_config->miso_io_num < 40 && GPIO_PIN_MUX_REG[bus_config->miso_io_num] != 0))) && (bus_config->miso_io_num < 34))) ) {
        temp_flag |= (1<<5);
    }

    if (quad_pins_exist) temp_flag |= (1<<6);

    if (!((flags&(1<<1))==0 || use_iomux)) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, SPI_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 185, "not using iomux pins"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, SPI_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 185, "not using iomux pins"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, SPI_TAG, "D" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 185, "not using iomux pins"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, SPI_TAG, "V" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 185, "not using iomux pins"); } else { esp_log_write(ESP_LOG_INFO, SPI_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s(%d): %s" "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, __FUNCTION__, 185, "not using iomux pins"); } } while(0); } while(0); return (0x102); };

    if (use_iomux) {


        do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, SPI_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "SPI%d use iomux pins." "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, host); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, SPI_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "SPI%d use iomux pins." "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, host); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, SPI_TAG, "D" " (%d) %s: " "SPI%d use iomux pins." "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, host); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, SPI_TAG, "V" " (%d) %s: " "SPI%d use iomux pins." "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, host); } else { esp_log_write(ESP_LOG_INFO, SPI_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "SPI%d use iomux pins." "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, host); } } while(0); } while(0);
        if (bus_config->mosi_io_num >= 0) {
            gpio_iomux_in(bus_config->mosi_io_num, spi_periph_signal[host].spid_in);
            gpio_iomux_out(bus_config->mosi_io_num, 1, 
# 193 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
                                                             0
# 193 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
                                                                  );
        }
        if (bus_config->miso_io_num >= 0) {
            gpio_iomux_in(bus_config->miso_io_num, spi_periph_signal[host].spiq_in);
            gpio_iomux_out(bus_config->miso_io_num, 1, 
# 197 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
                                                             0
# 197 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
                                                                  );
        }
        if (bus_config->quadwp_io_num >= 0) {
            gpio_iomux_in(bus_config->quadwp_io_num, spi_periph_signal[host].spiwp_in);
            gpio_iomux_out(bus_config->quadwp_io_num, 1, 
# 201 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
                                                               0
# 201 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
                                                                    );
        }
        if (bus_config->quadhd_io_num >= 0) {
            gpio_iomux_in(bus_config->quadhd_io_num, spi_periph_signal[host].spihd_in);
            gpio_iomux_out(bus_config->quadhd_io_num, 1, 
# 205 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
                                                               0
# 205 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
                                                                    );
        }
        if (bus_config->sclk_io_num >= 0) {
            gpio_iomux_in(bus_config->sclk_io_num, spi_periph_signal[host].spiclk_in);
            gpio_iomux_out(bus_config->sclk_io_num, 1, 
# 209 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
                                                             0
# 209 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
                                                                  );
        }
        temp_flag |= (1<<1);
    } else {

        do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, SPI_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "SPI%d use gpio matrix." "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, host); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, SPI_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "SPI%d use gpio matrix." "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, host); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, SPI_TAG, "D" " (%d) %s: " "SPI%d use gpio matrix." "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, host); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, SPI_TAG, "V" " (%d) %s: " "SPI%d use gpio matrix." "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, host); } else { esp_log_write(ESP_LOG_INFO, SPI_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "SPI%d use gpio matrix." "\033[0m" "\n", esp_log_timestamp(), SPI_TAG, host); } } while(0); } while(0);
        if (bus_config->mosi_io_num >= 0) {
            if (mosi_output || (temp_flag&(1<<5))) {
                gpio_set_direction(bus_config->mosi_io_num, GPIO_MODE_INPUT_OUTPUT);
                gpio_matrix_out(bus_config->mosi_io_num, spi_periph_signal[host].spid_out, 
# 218 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
                                                                                          0
# 218 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
                                                                                               , 
# 218 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
                                                                                                 0
# 218 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
                                                                                                      );
            } else {
                gpio_set_direction(bus_config->mosi_io_num, GPIO_MODE_INPUT);
            }
            gpio_matrix_in(bus_config->mosi_io_num, spi_periph_signal[host].spid_in, 
# 222 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
                                                                                    0
# 222 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
                                                                                         );
            ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((GPIO_PIN_MUX_REG[bus_config->mosi_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[bus_config->mosi_io_num])) <= 0x3ff13FFC)), (!((((GPIO_PIN_MUX_REG[bus_config->mosi_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[bus_config->mosi_io_num])) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)"); (("(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)" && (!((((GPIO_PIN_MUX_REG[bus_config->mosi_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[bus_config->mosi_io_num])) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c", 223, __func__, "\"(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)\" && (!((((GPIO_PIN_MUX_REG[bus_config->mosi_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[bus_config->mosi_io_num])) <= 0x3ff13FFC))")); } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((GPIO_PIN_MUX_REG[bus_config->mosi_io_num]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[bus_config->mosi_io_num]))) <= 0x3ff13FFC)), (!(((((GPIO_PIN_MUX_REG[bus_config->mosi_io_num]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[bus_config->mosi_io_num]))) <= 0x3ff13FFC)), 1), "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)"); (("(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)" && (!(((((GPIO_PIN_MUX_REG[bus_config->mosi_io_num]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[bus_config->mosi_io_num]))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c", 223, __func__, "\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!(((((GPIO_PIN_MUX_REG[bus_config->mosi_io_num]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[bus_config->mosi_io_num]))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((GPIO_PIN_MUX_REG[bus_config->mosi_io_num]))) = (((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((GPIO_PIN_MUX_REG[bus_config->mosi_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[bus_config->mosi_io_num])) <= 0x3ff13FFC)), (!((((GPIO_PIN_MUX_REG[bus_config->mosi_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[bus_config->mosi_io_num])) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!((((GPIO_PIN_MUX_REG[bus_config->mosi_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[bus_config->mosi_io_num])) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c", 223, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!((((GPIO_PIN_MUX_REG[bus_config->mosi_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[bus_config->mosi_io_num])) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)(GPIO_PIN_MUX_REG[bus_config->mosi_io_num])); }) & ~((0x7) << (12)))|(((2) & (0x7))<<(12)))); })); });
        }
        if (bus_config->miso_io_num >= 0) {
            if (miso_output || (temp_flag&(1<<5))) {
                gpio_set_direction(bus_config->miso_io_num, GPIO_MODE_INPUT_OUTPUT);
                gpio_matrix_out(bus_config->miso_io_num, spi_periph_signal[host].spiq_out, 
# 228 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
                                                                                          0
# 228 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
                                                                                               , 
# 228 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
                                                                                                 0
# 228 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
                                                                                                      );
            } else {
                gpio_set_direction(bus_config->miso_io_num, GPIO_MODE_INPUT);
            }
            gpio_matrix_in(bus_config->miso_io_num, spi_periph_signal[host].spiq_in, 
# 232 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
                                                                                    0
# 232 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
                                                                                         );
            ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((GPIO_PIN_MUX_REG[bus_config->miso_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[bus_config->miso_io_num])) <= 0x3ff13FFC)), (!((((GPIO_PIN_MUX_REG[bus_config->miso_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[bus_config->miso_io_num])) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)"); (("(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)" && (!((((GPIO_PIN_MUX_REG[bus_config->miso_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[bus_config->miso_io_num])) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c", 233, __func__, "\"(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)\" && (!((((GPIO_PIN_MUX_REG[bus_config->miso_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[bus_config->miso_io_num])) <= 0x3ff13FFC))")); } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((GPIO_PIN_MUX_REG[bus_config->miso_io_num]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[bus_config->miso_io_num]))) <= 0x3ff13FFC)), (!(((((GPIO_PIN_MUX_REG[bus_config->miso_io_num]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[bus_config->miso_io_num]))) <= 0x3ff13FFC)), 1), "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)"); (("(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)" && (!(((((GPIO_PIN_MUX_REG[bus_config->miso_io_num]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[bus_config->miso_io_num]))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c", 233, __func__, "\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!(((((GPIO_PIN_MUX_REG[bus_config->miso_io_num]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[bus_config->miso_io_num]))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((GPIO_PIN_MUX_REG[bus_config->miso_io_num]))) = (((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((GPIO_PIN_MUX_REG[bus_config->miso_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[bus_config->miso_io_num])) <= 0x3ff13FFC)), (!((((GPIO_PIN_MUX_REG[bus_config->miso_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[bus_config->miso_io_num])) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!((((GPIO_PIN_MUX_REG[bus_config->miso_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[bus_config->miso_io_num])) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c", 233, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!((((GPIO_PIN_MUX_REG[bus_config->miso_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[bus_config->miso_io_num])) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)(GPIO_PIN_MUX_REG[bus_config->miso_io_num])); }) & ~((0x7) << (12)))|(((2) & (0x7))<<(12)))); })); });
        }
        if (bus_config->quadwp_io_num >= 0) {
            gpio_set_direction(bus_config->quadwp_io_num, GPIO_MODE_INPUT_OUTPUT);
            gpio_matrix_out(bus_config->quadwp_io_num, spi_periph_signal[host].spiwp_out, 
# 237 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
                                                                                         0
# 237 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
                                                                                              , 
# 237 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
                                                                                                0
# 237 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
                                                                                                     );
            gpio_matrix_in(bus_config->quadwp_io_num, spi_periph_signal[host].spiwp_in, 
# 238 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
                                                                                       0
# 238 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
                                                                                            );
            ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((GPIO_PIN_MUX_REG[bus_config->quadwp_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[bus_config->quadwp_io_num])) <= 0x3ff13FFC)), (!((((GPIO_PIN_MUX_REG[bus_config->quadwp_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[bus_config->quadwp_io_num])) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)"); (("(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)" && (!((((GPIO_PIN_MUX_REG[bus_config->quadwp_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[bus_config->quadwp_io_num])) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c", 239, __func__, "\"(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)\" && (!((((GPIO_PIN_MUX_REG[bus_config->quadwp_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[bus_config->quadwp_io_num])) <= 0x3ff13FFC))")); } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((GPIO_PIN_MUX_REG[bus_config->quadwp_io_num]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[bus_config->quadwp_io_num]))) <= 0x3ff13FFC)), (!(((((GPIO_PIN_MUX_REG[bus_config->quadwp_io_num]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[bus_config->quadwp_io_num]))) <= 0x3ff13FFC)), 1), "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)"); (("(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)" && (!(((((GPIO_PIN_MUX_REG[bus_config->quadwp_io_num]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[bus_config->quadwp_io_num]))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c", 239, __func__, "\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!(((((GPIO_PIN_MUX_REG[bus_config->quadwp_io_num]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[bus_config->quadwp_io_num]))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((GPIO_PIN_MUX_REG[bus_config->quadwp_io_num]))) = (((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((GPIO_PIN_MUX_REG[bus_config->quadwp_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[bus_config->quadwp_io_num])) <= 0x3ff13FFC)), (!((((GPIO_PIN_MUX_REG[bus_config->quadwp_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[bus_config->quadwp_io_num])) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!((((GPIO_PIN_MUX_REG[bus_config->quadwp_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[bus_config->quadwp_io_num])) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c", 239, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!((((GPIO_PIN_MUX_REG[bus_config->quadwp_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[bus_config->quadwp_io_num])) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)(GPIO_PIN_MUX_REG[bus_config->quadwp_io_num])); }) & ~((0x7) << (12)))|(((2) & (0x7))<<(12)))); })); });
        }
        if (bus_config->quadhd_io_num >= 0) {
            gpio_set_direction(bus_config->quadhd_io_num, GPIO_MODE_INPUT_OUTPUT);
            gpio_matrix_out(bus_config->quadhd_io_num, spi_periph_signal[host].spihd_out, 
# 243 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
                                                                                         0
# 243 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
                                                                                              , 
# 243 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
                                                                                                0
# 243 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
                                                                                                     );
            gpio_matrix_in(bus_config->quadhd_io_num, spi_periph_signal[host].spihd_in, 
# 244 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
                                                                                       0
# 244 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
                                                                                            );
            ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((GPIO_PIN_MUX_REG[bus_config->quadhd_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[bus_config->quadhd_io_num])) <= 0x3ff13FFC)), (!((((GPIO_PIN_MUX_REG[bus_config->quadhd_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[bus_config->quadhd_io_num])) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)"); (("(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)" && (!((((GPIO_PIN_MUX_REG[bus_config->quadhd_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[bus_config->quadhd_io_num])) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c", 245, __func__, "\"(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)\" && (!((((GPIO_PIN_MUX_REG[bus_config->quadhd_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[bus_config->quadhd_io_num])) <= 0x3ff13FFC))")); } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((GPIO_PIN_MUX_REG[bus_config->quadhd_io_num]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[bus_config->quadhd_io_num]))) <= 0x3ff13FFC)), (!(((((GPIO_PIN_MUX_REG[bus_config->quadhd_io_num]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[bus_config->quadhd_io_num]))) <= 0x3ff13FFC)), 1), "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)"); (("(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)" && (!(((((GPIO_PIN_MUX_REG[bus_config->quadhd_io_num]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[bus_config->quadhd_io_num]))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c", 245, __func__, "\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!(((((GPIO_PIN_MUX_REG[bus_config->quadhd_io_num]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[bus_config->quadhd_io_num]))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((GPIO_PIN_MUX_REG[bus_config->quadhd_io_num]))) = (((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((GPIO_PIN_MUX_REG[bus_config->quadhd_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[bus_config->quadhd_io_num])) <= 0x3ff13FFC)), (!((((GPIO_PIN_MUX_REG[bus_config->quadhd_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[bus_config->quadhd_io_num])) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!((((GPIO_PIN_MUX_REG[bus_config->quadhd_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[bus_config->quadhd_io_num])) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c", 245, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!((((GPIO_PIN_MUX_REG[bus_config->quadhd_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[bus_config->quadhd_io_num])) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)(GPIO_PIN_MUX_REG[bus_config->quadhd_io_num])); }) & ~((0x7) << (12)))|(((2) & (0x7))<<(12)))); })); });
        }
        if (bus_config->sclk_io_num >= 0) {
            gpio_set_direction(bus_config->sclk_io_num, GPIO_MODE_INPUT_OUTPUT);
            gpio_matrix_out(bus_config->sclk_io_num, spi_periph_signal[host].spiclk_out, 
# 249 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
                                                                                        0
# 249 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
                                                                                             , 
# 249 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
                                                                                               0
# 249 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
                                                                                                    );
            gpio_matrix_in(bus_config->sclk_io_num, spi_periph_signal[host].spiclk_in, 
# 250 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
                                                                                      0
# 250 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
                                                                                           );
            ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((GPIO_PIN_MUX_REG[bus_config->sclk_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[bus_config->sclk_io_num])) <= 0x3ff13FFC)), (!((((GPIO_PIN_MUX_REG[bus_config->sclk_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[bus_config->sclk_io_num])) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)"); (("(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)" && (!((((GPIO_PIN_MUX_REG[bus_config->sclk_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[bus_config->sclk_io_num])) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c", 251, __func__, "\"(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)\" && (!((((GPIO_PIN_MUX_REG[bus_config->sclk_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[bus_config->sclk_io_num])) <= 0x3ff13FFC))")); } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((GPIO_PIN_MUX_REG[bus_config->sclk_io_num]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[bus_config->sclk_io_num]))) <= 0x3ff13FFC)), (!(((((GPIO_PIN_MUX_REG[bus_config->sclk_io_num]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[bus_config->sclk_io_num]))) <= 0x3ff13FFC)), 1), "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)"); (("(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)" && (!(((((GPIO_PIN_MUX_REG[bus_config->sclk_io_num]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[bus_config->sclk_io_num]))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c", 251, __func__, "\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!(((((GPIO_PIN_MUX_REG[bus_config->sclk_io_num]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[bus_config->sclk_io_num]))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((GPIO_PIN_MUX_REG[bus_config->sclk_io_num]))) = (((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((GPIO_PIN_MUX_REG[bus_config->sclk_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[bus_config->sclk_io_num])) <= 0x3ff13FFC)), (!((((GPIO_PIN_MUX_REG[bus_config->sclk_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[bus_config->sclk_io_num])) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!((((GPIO_PIN_MUX_REG[bus_config->sclk_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[bus_config->sclk_io_num])) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c", 251, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!((((GPIO_PIN_MUX_REG[bus_config->sclk_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[bus_config->sclk_io_num])) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)(GPIO_PIN_MUX_REG[bus_config->sclk_io_num])); }) & ~((0x7) << (12)))|(((2) & (0x7))<<(12)))); })); });
        }
    }


    (*((volatile uint32_t *)((((0x3ff00000 + 0x5A8)))))) = (uint32_t)((((DPORT_READ_PERI_REG((0x3ff00000 + 0x5A8))&(~((3)<<((host * 2)))))|(((dma_chan) & 3)<<((host * 2))))));

    if (flags_o) *flags_o = temp_flag;
    return 0;
}



static void reset_func_to_gpio(int func)
{
    for (int x = 0; x < 40; x++) {
        if (((x < 40 && GPIO_PIN_MUX_REG[x] != 0)) && (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff44000 + 0x0530) + (x * 4))) >= 0x3ff00000) && (((0x3ff44000 + 0x0530) + (x * 4))) <= 0x3ff13FFC)), (!(((((0x3ff44000 + 0x0530) + (x * 4))) >= 0x3ff00000) && (((0x3ff44000 + 0x0530) + (x * 4))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!(((((0x3ff44000 + 0x0530) + (x * 4))) >= 0x3ff00000) && (((0x3ff44000 + 0x0530) + (x * 4))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c", 267, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!(((((0x3ff44000 + 0x0530) + (x * 4))) >= 0x3ff00000) && (((0x3ff44000 + 0x0530) + (x * 4))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x3ff44000 + 0x0530) + (x * 4)))); })&((0x1FF)<<(0))) == func) {
            gpio_matrix_out(x, 256, 
# 268 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
                                                0
# 268 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
                                                     , 
# 268 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
                                                       0
# 268 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
                                                            );
        }
    }
}

esp_err_t spicommon_bus_free_io(spi_host_device_t host)
{
    if (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spid_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spid_iomux_pin])) <= 0x3ff13FFC)), (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spid_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spid_iomux_pin])) <= 0x3ff13FFC)), 1), "(Cannot use REG_GET_FIELD for DPORT registers use DPORT_REG_GET_FIELD)"); (("(Cannot use REG_GET_FIELD for DPORT registers use DPORT_REG_GET_FIELD)" && (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spid_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spid_iomux_pin])) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c", 275, __func__, "\"(Cannot use REG_GET_FIELD for DPORT registers use DPORT_REG_GET_FIELD)\" && (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spid_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spid_iomux_pin])) <= 0x3ff13FFC))")); } while(0);; ((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spid_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spid_iomux_pin])) <= 0x3ff13FFC)), (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spid_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spid_iomux_pin])) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spid_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spid_iomux_pin])) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c", 275, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spid_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spid_iomux_pin])) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)(GPIO_PIN_MUX_REG[spi_periph_signal[host].spid_iomux_pin])); }) >> (12)) & (0x7)); }) == 1) ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spid_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spid_iomux_pin])) <= 0x3ff13FFC)), (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spid_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spid_iomux_pin])) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)"); (("(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)" && (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spid_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spid_iomux_pin])) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c", 275, __func__, "\"(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)\" && (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spid_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spid_iomux_pin])) <= 0x3ff13FFC))")); } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spid_iomux_pin]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[spi_periph_signal[host].spid_iomux_pin]))) <= 0x3ff13FFC)), (!(((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spid_iomux_pin]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[spi_periph_signal[host].spid_iomux_pin]))) <= 0x3ff13FFC)), 1), "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)"); (("(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)" && (!(((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spid_iomux_pin]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[spi_periph_signal[host].spid_iomux_pin]))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c", 275, __func__, "\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!(((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spid_iomux_pin]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[spi_periph_signal[host].spid_iomux_pin]))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((GPIO_PIN_MUX_REG[spi_periph_signal[host].spid_iomux_pin]))) = (((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spid_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spid_iomux_pin])) <= 0x3ff13FFC)), (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spid_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spid_iomux_pin])) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spid_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spid_iomux_pin])) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c", 275, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spid_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spid_iomux_pin])) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)(GPIO_PIN_MUX_REG[spi_periph_signal[host].spid_iomux_pin])); }) & ~((0x7) << (12)))|(((2) & (0x7))<<(12)))); })); });
    if (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiq_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiq_iomux_pin])) <= 0x3ff13FFC)), (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiq_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiq_iomux_pin])) <= 0x3ff13FFC)), 1), "(Cannot use REG_GET_FIELD for DPORT registers use DPORT_REG_GET_FIELD)"); (("(Cannot use REG_GET_FIELD for DPORT registers use DPORT_REG_GET_FIELD)" && (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiq_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiq_iomux_pin])) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c", 276, __func__, "\"(Cannot use REG_GET_FIELD for DPORT registers use DPORT_REG_GET_FIELD)\" && (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiq_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiq_iomux_pin])) <= 0x3ff13FFC))")); } while(0);; ((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiq_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiq_iomux_pin])) <= 0x3ff13FFC)), (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiq_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiq_iomux_pin])) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiq_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiq_iomux_pin])) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c", 276, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiq_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiq_iomux_pin])) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)(GPIO_PIN_MUX_REG[spi_periph_signal[host].spiq_iomux_pin])); }) >> (12)) & (0x7)); }) == 1) ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiq_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiq_iomux_pin])) <= 0x3ff13FFC)), (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiq_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiq_iomux_pin])) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)"); (("(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)" && (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiq_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiq_iomux_pin])) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c", 276, __func__, "\"(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)\" && (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiq_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiq_iomux_pin])) <= 0x3ff13FFC))")); } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiq_iomux_pin]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiq_iomux_pin]))) <= 0x3ff13FFC)), (!(((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiq_iomux_pin]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiq_iomux_pin]))) <= 0x3ff13FFC)), 1), "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)"); (("(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)" && (!(((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiq_iomux_pin]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiq_iomux_pin]))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c", 276, __func__, "\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!(((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiq_iomux_pin]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiq_iomux_pin]))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiq_iomux_pin]))) = (((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiq_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiq_iomux_pin])) <= 0x3ff13FFC)), (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiq_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiq_iomux_pin])) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiq_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiq_iomux_pin])) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c", 276, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiq_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiq_iomux_pin])) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)(GPIO_PIN_MUX_REG[spi_periph_signal[host].spiq_iomux_pin])); }) & ~((0x7) << (12)))|(((2) & (0x7))<<(12)))); })); });
    if (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiclk_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiclk_iomux_pin])) <= 0x3ff13FFC)), (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiclk_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiclk_iomux_pin])) <= 0x3ff13FFC)), 1), "(Cannot use REG_GET_FIELD for DPORT registers use DPORT_REG_GET_FIELD)"); (("(Cannot use REG_GET_FIELD for DPORT registers use DPORT_REG_GET_FIELD)" && (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiclk_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiclk_iomux_pin])) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c", 277, __func__, "\"(Cannot use REG_GET_FIELD for DPORT registers use DPORT_REG_GET_FIELD)\" && (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiclk_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiclk_iomux_pin])) <= 0x3ff13FFC))")); } while(0);; ((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiclk_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiclk_iomux_pin])) <= 0x3ff13FFC)), (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiclk_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiclk_iomux_pin])) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiclk_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiclk_iomux_pin])) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c", 277, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiclk_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiclk_iomux_pin])) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)(GPIO_PIN_MUX_REG[spi_periph_signal[host].spiclk_iomux_pin])); }) >> (12)) & (0x7)); }) == 1) ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiclk_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiclk_iomux_pin])) <= 0x3ff13FFC)), (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiclk_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiclk_iomux_pin])) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)"); (("(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)" && (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiclk_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiclk_iomux_pin])) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c", 277, __func__, "\"(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)\" && (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiclk_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiclk_iomux_pin])) <= 0x3ff13FFC))")); } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiclk_iomux_pin]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiclk_iomux_pin]))) <= 0x3ff13FFC)), (!(((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiclk_iomux_pin]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiclk_iomux_pin]))) <= 0x3ff13FFC)), 1), "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)"); (("(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)" && (!(((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiclk_iomux_pin]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiclk_iomux_pin]))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c", 277, __func__, "\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!(((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiclk_iomux_pin]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiclk_iomux_pin]))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiclk_iomux_pin]))) = (((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiclk_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiclk_iomux_pin])) <= 0x3ff13FFC)), (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiclk_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiclk_iomux_pin])) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiclk_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiclk_iomux_pin])) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c", 277, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiclk_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiclk_iomux_pin])) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)(GPIO_PIN_MUX_REG[spi_periph_signal[host].spiclk_iomux_pin])); }) & ~((0x7) << (12)))|(((2) & (0x7))<<(12)))); })); });
    if (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiwp_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiwp_iomux_pin])) <= 0x3ff13FFC)), (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiwp_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiwp_iomux_pin])) <= 0x3ff13FFC)), 1), "(Cannot use REG_GET_FIELD for DPORT registers use DPORT_REG_GET_FIELD)"); (("(Cannot use REG_GET_FIELD for DPORT registers use DPORT_REG_GET_FIELD)" && (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiwp_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiwp_iomux_pin])) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c", 278, __func__, "\"(Cannot use REG_GET_FIELD for DPORT registers use DPORT_REG_GET_FIELD)\" && (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiwp_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiwp_iomux_pin])) <= 0x3ff13FFC))")); } while(0);; ((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiwp_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiwp_iomux_pin])) <= 0x3ff13FFC)), (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiwp_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiwp_iomux_pin])) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiwp_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiwp_iomux_pin])) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c", 278, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiwp_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiwp_iomux_pin])) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)(GPIO_PIN_MUX_REG[spi_periph_signal[host].spiwp_iomux_pin])); }) >> (12)) & (0x7)); }) == 1) ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiwp_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiwp_iomux_pin])) <= 0x3ff13FFC)), (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiwp_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiwp_iomux_pin])) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)"); (("(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)" && (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiwp_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiwp_iomux_pin])) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c", 278, __func__, "\"(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)\" && (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiwp_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiwp_iomux_pin])) <= 0x3ff13FFC))")); } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiwp_iomux_pin]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiwp_iomux_pin]))) <= 0x3ff13FFC)), (!(((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiwp_iomux_pin]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiwp_iomux_pin]))) <= 0x3ff13FFC)), 1), "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)"); (("(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)" && (!(((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiwp_iomux_pin]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiwp_iomux_pin]))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c", 278, __func__, "\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!(((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiwp_iomux_pin]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiwp_iomux_pin]))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiwp_iomux_pin]))) = (((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiwp_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiwp_iomux_pin])) <= 0x3ff13FFC)), (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiwp_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiwp_iomux_pin])) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiwp_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiwp_iomux_pin])) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c", 278, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiwp_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spiwp_iomux_pin])) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)(GPIO_PIN_MUX_REG[spi_periph_signal[host].spiwp_iomux_pin])); }) & ~((0x7) << (12)))|(((2) & (0x7))<<(12)))); })); });
    if (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spihd_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spihd_iomux_pin])) <= 0x3ff13FFC)), (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spihd_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spihd_iomux_pin])) <= 0x3ff13FFC)), 1), "(Cannot use REG_GET_FIELD for DPORT registers use DPORT_REG_GET_FIELD)"); (("(Cannot use REG_GET_FIELD for DPORT registers use DPORT_REG_GET_FIELD)" && (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spihd_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spihd_iomux_pin])) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c", 279, __func__, "\"(Cannot use REG_GET_FIELD for DPORT registers use DPORT_REG_GET_FIELD)\" && (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spihd_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spihd_iomux_pin])) <= 0x3ff13FFC))")); } while(0);; ((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spihd_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spihd_iomux_pin])) <= 0x3ff13FFC)), (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spihd_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spihd_iomux_pin])) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spihd_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spihd_iomux_pin])) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c", 279, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spihd_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spihd_iomux_pin])) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)(GPIO_PIN_MUX_REG[spi_periph_signal[host].spihd_iomux_pin])); }) >> (12)) & (0x7)); }) == 1) ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spihd_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spihd_iomux_pin])) <= 0x3ff13FFC)), (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spihd_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spihd_iomux_pin])) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)"); (("(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)" && (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spihd_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spihd_iomux_pin])) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c", 279, __func__, "\"(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)\" && (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spihd_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spihd_iomux_pin])) <= 0x3ff13FFC))")); } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spihd_iomux_pin]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[spi_periph_signal[host].spihd_iomux_pin]))) <= 0x3ff13FFC)), (!(((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spihd_iomux_pin]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[spi_periph_signal[host].spihd_iomux_pin]))) <= 0x3ff13FFC)), 1), "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)"); (("(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)" && (!(((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spihd_iomux_pin]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[spi_periph_signal[host].spihd_iomux_pin]))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c", 279, __func__, "\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!(((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spihd_iomux_pin]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[spi_periph_signal[host].spihd_iomux_pin]))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((GPIO_PIN_MUX_REG[spi_periph_signal[host].spihd_iomux_pin]))) = (((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spihd_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spihd_iomux_pin])) <= 0x3ff13FFC)), (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spihd_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spihd_iomux_pin])) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spihd_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spihd_iomux_pin])) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c", 279, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spihd_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spihd_iomux_pin])) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)(GPIO_PIN_MUX_REG[spi_periph_signal[host].spihd_iomux_pin])); }) & ~((0x7) << (12)))|(((2) & (0x7))<<(12)))); })); });
    reset_func_to_gpio(spi_periph_signal[host].spid_out);
    reset_func_to_gpio(spi_periph_signal[host].spiq_out);
    reset_func_to_gpio(spi_periph_signal[host].spiclk_out);
    reset_func_to_gpio(spi_periph_signal[host].spiwp_out);
    reset_func_to_gpio(spi_periph_signal[host].spihd_out);
    return 0;
}

esp_err_t spicommon_bus_free_io_cfg(const spi_bus_config_t *bus_cfg)
{
    int pin_array[] = {
        bus_cfg->mosi_io_num,
        bus_cfg->miso_io_num,
        bus_cfg->sclk_io_num,
        bus_cfg->quadwp_io_num,
        bus_cfg->quadhd_io_num,
    };
    for (int i = 0; i < sizeof(pin_array)/sizeof(int); i ++) {
        const int io = pin_array[i];
        if (io >= 0 && ((io < 40 && GPIO_PIN_MUX_REG[io] != 0))) gpio_reset_pin(io);
    }
    return 0;
}

void spicommon_cs_initialize(spi_host_device_t host, int cs_io_num, int cs_num, int force_gpio_matrix)
{
    if (!force_gpio_matrix && cs_io_num == spi_periph_signal[host].spics0_iomux_pin && cs_num == 0) {

        gpio_iomux_in(cs_io_num, spi_periph_signal[host].spics_in);
        gpio_iomux_out(cs_io_num, 1, 
# 309 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
                                           0
# 309 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
                                                );
    } else {

        gpio_matrix_out(cs_io_num, spi_periph_signal[host].spics_out[cs_num], 
# 312 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
                                                                             0
# 312 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
                                                                                  , 
# 312 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
                                                                                    0
# 312 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
                                                                                         );
        if (cs_num == 0) gpio_matrix_in(cs_io_num, spi_periph_signal[host].spics_in, 
# 313 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
                                                                                    0
# 313 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
                                                                                         );
        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((GPIO_PIN_MUX_REG[cs_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[cs_io_num])) <= 0x3ff13FFC)), (!((((GPIO_PIN_MUX_REG[cs_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[cs_io_num])) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)"); (("(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)" && (!((((GPIO_PIN_MUX_REG[cs_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[cs_io_num])) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c", 314, __func__, "\"(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)\" && (!((((GPIO_PIN_MUX_REG[cs_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[cs_io_num])) <= 0x3ff13FFC))")); } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((GPIO_PIN_MUX_REG[cs_io_num]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[cs_io_num]))) <= 0x3ff13FFC)), (!(((((GPIO_PIN_MUX_REG[cs_io_num]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[cs_io_num]))) <= 0x3ff13FFC)), 1), "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)"); (("(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)" && (!(((((GPIO_PIN_MUX_REG[cs_io_num]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[cs_io_num]))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c", 314, __func__, "\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!(((((GPIO_PIN_MUX_REG[cs_io_num]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[cs_io_num]))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((GPIO_PIN_MUX_REG[cs_io_num]))) = (((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((GPIO_PIN_MUX_REG[cs_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[cs_io_num])) <= 0x3ff13FFC)), (!((((GPIO_PIN_MUX_REG[cs_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[cs_io_num])) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!((((GPIO_PIN_MUX_REG[cs_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[cs_io_num])) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c", 314, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!((((GPIO_PIN_MUX_REG[cs_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[cs_io_num])) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)(GPIO_PIN_MUX_REG[cs_io_num])); }) & ~((0x7) << (12)))|(((2) & (0x7))<<(12)))); })); });
    }
}

void spicommon_cs_free(spi_host_device_t host, int cs_io_num)
{
    if (cs_io_num == 0 && ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spics0_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spics0_iomux_pin])) <= 0x3ff13FFC)), (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spics0_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spics0_iomux_pin])) <= 0x3ff13FFC)), 1), "(Cannot use REG_GET_FIELD for DPORT registers use DPORT_REG_GET_FIELD)"); (("(Cannot use REG_GET_FIELD for DPORT registers use DPORT_REG_GET_FIELD)" && (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spics0_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spics0_iomux_pin])) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c", 320, __func__, "\"(Cannot use REG_GET_FIELD for DPORT registers use DPORT_REG_GET_FIELD)\" && (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spics0_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spics0_iomux_pin])) <= 0x3ff13FFC))")); } while(0);; ((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spics0_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spics0_iomux_pin])) <= 0x3ff13FFC)), (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spics0_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spics0_iomux_pin])) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spics0_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spics0_iomux_pin])) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c", 320, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spics0_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spics0_iomux_pin])) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)(GPIO_PIN_MUX_REG[spi_periph_signal[host].spics0_iomux_pin])); }) >> (12)) & (0x7)); }) == 1) {
        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spics0_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spics0_iomux_pin])) <= 0x3ff13FFC)), (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spics0_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spics0_iomux_pin])) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)"); (("(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)" && (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spics0_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spics0_iomux_pin])) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c", 321, __func__, "\"(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)\" && (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spics0_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spics0_iomux_pin])) <= 0x3ff13FFC))")); } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spics0_iomux_pin]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[spi_periph_signal[host].spics0_iomux_pin]))) <= 0x3ff13FFC)), (!(((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spics0_iomux_pin]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[spi_periph_signal[host].spics0_iomux_pin]))) <= 0x3ff13FFC)), 1), "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)"); (("(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)" && (!(((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spics0_iomux_pin]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[spi_periph_signal[host].spics0_iomux_pin]))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c", 321, __func__, "\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!(((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spics0_iomux_pin]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[spi_periph_signal[host].spics0_iomux_pin]))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((GPIO_PIN_MUX_REG[spi_periph_signal[host].spics0_iomux_pin]))) = (((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spics0_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spics0_iomux_pin])) <= 0x3ff13FFC)), (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spics0_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spics0_iomux_pin])) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spics0_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spics0_iomux_pin])) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c", 321, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!((((GPIO_PIN_MUX_REG[spi_periph_signal[host].spics0_iomux_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[spi_periph_signal[host].spics0_iomux_pin])) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)(GPIO_PIN_MUX_REG[spi_periph_signal[host].spics0_iomux_pin])); }) & ~((0x7) << (12)))|(((2) & (0x7))<<(12)))); })); });
    }
    reset_func_to_gpio(spi_periph_signal[host].spics_out[cs_io_num]);
}

void spicommon_cs_free_io(int cs_gpio_num)
{
    ((cs_gpio_num>=0 && ((cs_gpio_num < 40 && GPIO_PIN_MUX_REG[cs_gpio_num] != 0))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c", 328, __func__, "cs_gpio_num>=0 && GPIO_IS_VALID_GPIO(cs_gpio_num)"));
    gpio_reset_pin(cs_gpio_num);
}


void spicommon_setup_dma_desc_links(lldesc_t *dmadesc, int len, const uint8_t *data, 
# 333 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
                                                                                    _Bool 
# 333 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
                                                                                         isrx)
{
    int n = 0;
    while (len) {
        int dmachunklen = len;
        if (dmachunklen > (4096-4)) dmachunklen = (4096-4);
        if (isrx) {

            dmadesc[n].size = (dmachunklen + 3) & (~3);
            dmadesc[n].length = (dmachunklen + 3) & (~3);
        } else {
            dmadesc[n].size = dmachunklen;
            dmadesc[n].length = dmachunklen;
        }
        dmadesc[n].buf = (uint8_t *)data;
        dmadesc[n].eof = 0;
        dmadesc[n].sosf = 0;
        dmadesc[n].owner = 1;
        dmadesc[n].qe.stqe_next = &dmadesc[n + 1];
        len -= dmachunklen;
        data += dmachunklen;
        n++;
    }
    dmadesc[n - 1].eof = 1;
    dmadesc[n - 1].qe.stqe_next = 
# 357 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
                                 ((void *)0)
# 357 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
                                     ;
}







static volatile int dmaworkaround_channels_busy[2] = {0, 0};
static dmaworkaround_cb_t dmaworkaround_cb;
static void *dmaworkaround_cb_arg;
static portMUX_TYPE dmaworkaround_mux = { .owner = 0xB33FFFFF, .count = 0, };
static int dmaworkaround_waiting_for_chan = 0;


# 372 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
_Bool 
# 372 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
    __attribute__((section(".iram1"))) spicommon_dmaworkaround_req_reset(int dmachan, dmaworkaround_cb_t cb, void *arg)
{
    int otherchan = (dmachan == 1) ? 2 : 1;
    
# 375 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
   _Bool 
# 375 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
        ret;
    vTaskEnterCritical(&dmaworkaround_mux);
    if (dmaworkaround_channels_busy[otherchan-1]) {

        dmaworkaround_cb = cb;
        dmaworkaround_cb_arg = arg;
        dmaworkaround_waiting_for_chan = otherchan;
        ret = 
# 382 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
             0
# 382 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
                  ;
    } else {

        periph_module_reset( PERIPH_SPI_DMA_MODULE );
        ret = 
# 386 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
             1
# 386 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
                 ;
    }
    vTaskExitCritical(&dmaworkaround_mux);
    return ret;
}


# 392 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c" 3 4
_Bool 
# 392 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/spi_common.c"
    __attribute__((section(".iram1"))) spicommon_dmaworkaround_reset_in_progress()
{
    return (dmaworkaround_waiting_for_chan != 0);
}

void __attribute__((section(".iram1"))) spicommon_dmaworkaround_idle(int dmachan)
{
    vTaskEnterCritical(&dmaworkaround_mux);
    dmaworkaround_channels_busy[dmachan-1] = 0;
    if (dmaworkaround_waiting_for_chan == dmachan) {

        periph_module_reset( PERIPH_SPI_DMA_MODULE );
        dmaworkaround_waiting_for_chan = 0;

        dmaworkaround_cb(dmaworkaround_cb_arg);

    }
    vTaskExitCritical(&dmaworkaround_mux);
}

void __attribute__((section(".iram1"))) spicommon_dmaworkaround_transfer_active(int dmachan)
{
    vTaskEnterCritical(&dmaworkaround_mux);
    dmaworkaround_channels_busy[dmachan-1] = 1;
    vTaskExitCritical(&dmaworkaround_mux);
}
