# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c"
# 1 "D:\\ESP32\\esp-idf-v3.1-rc1\\ESP32_PIC_A2DP\\build\\bootloader_support//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c"
# 15 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/strings.h" 1
# 10 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/strings.h"
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
# 11 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/strings.h" 2
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
# 12 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/strings.h" 2

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
# 14 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/strings.h" 2








int bcmp (const void *, const void *, size_t);
void bcopy (const void *, void *, size_t);
void bzero (void *, size_t);
char *index (const char *, int);
char *rindex (const char *, int);


int ffs (int);
int strcasecmp (const char *, const char *);
int strncasecmp (const char *, const char *, size_t);


# 16 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_flash.h" 1
# 17 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_flash.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 18 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_flash.h" 2
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdbool.h" 1 3 4
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_flash.h" 2
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
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_flash.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h" 1
# 14 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
       


# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdio.h" 1
# 35 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdio.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/cdefs.h" 1
# 45 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/cdefs.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 46 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/cdefs.h" 2
# 36 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdio.h" 2
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 37 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdio.h" 2


# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdarg.h" 1 3 4
# 40 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdarg.h" 3 4

# 40 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 40 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdio.h" 2
# 50 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdio.h"



# 52 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdio.h"
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
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_flash.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_spi_flash.h" 1
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_spi_flash.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_spi_flash.h" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/ESP32_PIC_A2DP/build/include/sdkconfig.h" 1
# 23 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_spi_flash.h" 2
# 45 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_spi_flash.h"
void spi_flash_init();
# 54 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_spi_flash.h"
size_t spi_flash_get_chip_size();
# 63 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_spi_flash.h"
esp_err_t spi_flash_erase_sector(size_t sector);
# 74 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_spi_flash.h"
esp_err_t spi_flash_erase_range(size_t start_address, size_t size);
# 93 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_spi_flash.h"
esp_err_t spi_flash_write(size_t dest_addr, const void *src, size_t size);
# 116 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_spi_flash.h"
esp_err_t spi_flash_write_encrypted(size_t dest_addr, const void *src, size_t size);
# 139 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_spi_flash.h"
esp_err_t spi_flash_read(size_t src_addr, void *dest, size_t size);
# 156 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_spi_flash.h"
esp_err_t spi_flash_read_encrypted(size_t src, void *dest, size_t size);




typedef enum {
    SPI_FLASH_MMAP_DATA,
    SPI_FLASH_MMAP_INST,
} spi_flash_mmap_memory_t;




typedef uint32_t spi_flash_mmap_handle_t;
# 193 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_spi_flash.h"
esp_err_t spi_flash_mmap(size_t src_addr, size_t size, spi_flash_mmap_memory_t memory,
                         const void** out_ptr, spi_flash_mmap_handle_t* out_handle);
# 219 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_spi_flash.h"
esp_err_t spi_flash_mmap_pages(const int *pages, size_t page_count, spi_flash_mmap_memory_t memory,
                         const void** out_ptr, spi_flash_mmap_handle_t* out_handle);
# 233 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_spi_flash.h"
void spi_flash_munmap(spi_flash_mmap_handle_t handle);
# 242 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_spi_flash.h"
void spi_flash_mmap_dump();
# 257 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_spi_flash.h"
uint32_t spi_flash_mmap_get_free_pages(spi_flash_mmap_memory_t memory);
# 273 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_spi_flash.h"
size_t spi_flash_cache2phys(const void *cached);
# 293 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_spi_flash.h"
const void *spi_flash_phys2cache(size_t phys_offs, spi_flash_mmap_memory_t memory);






# 299 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_spi_flash.h" 3 4
_Bool 
# 299 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_spi_flash.h"
    spi_flash_cache_enabled();





typedef void (*spi_flash_guard_start_func_t)(void);



typedef void (*spi_flash_guard_end_func_t)(void);



typedef void (*spi_flash_op_lock_func_t)(void);



typedef void (*spi_flash_op_unlock_func_t)(void);
# 347 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_spi_flash.h"
typedef struct {
    spi_flash_guard_start_func_t start;
    spi_flash_guard_end_func_t end;
    spi_flash_op_lock_func_t op_lock;
    spi_flash_op_unlock_func_t op_unlock;
} spi_flash_guard_funcs_t;
# 362 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_spi_flash.h"
void spi_flash_guard_set(const spi_flash_guard_funcs_t* funcs);
# 371 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_spi_flash.h"
const spi_flash_guard_funcs_t *spi_flash_guard_get();




extern const spi_flash_guard_funcs_t g_flash_guard_default_ops;







extern const spi_flash_guard_funcs_t g_flash_guard_no_os_ops;
# 22 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_flash.h" 2
# 49 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_flash.h"
const void *bootloader_mmap(uint32_t src_addr, uint32_t size);







void bootloader_munmap(const void *mapping);
# 74 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_flash.h"
esp_err_t bootloader_flash_read(size_t src_addr, void *dest, size_t size, 
# 74 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_flash.h" 3 4
                                                                         _Bool 
# 74 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_flash.h"
                                                                              allow_decrypt);
# 92 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_flash.h"
esp_err_t bootloader_flash_write(size_t dest_addr, void *src, size_t size, 
# 92 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_flash.h" 3 4
                                                                          _Bool 
# 92 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_flash.h"
                                                                               write_encrypted);
# 101 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_flash.h"
esp_err_t bootloader_flash_erase_sector(size_t sector);
# 18 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_random.h" 1
# 15 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_random.h"
       

# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 18 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_random.h" 2
# 33 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_random.h"
void bootloader_random_enable(void);







void bootloader_random_disable(void);







void bootloader_fill_random(void *buffer, size_t length);
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_image_format.h" 1
# 14 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_image_format.h"
       



# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_flash_partitions.h" 1
# 18 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_flash_partitions.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_flash_data_types.h" 1
# 29 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_flash_data_types.h"
typedef struct {
    uint32_t ota_seq;
    uint8_t seq_label[24];
    uint32_t crc;
} esp_ota_select_entry_t;


typedef struct {
    uint32_t offset;
    uint32_t size;
} esp_partition_pos_t;




typedef struct {
 uint16_t magic;
 uint8_t type;
    uint8_t subtype;
    esp_partition_pos_t pos;
 uint8_t label[16];
    uint32_t flags;
} esp_partition_info_t;
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_flash_partitions.h" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/ESP32_PIC_A2DP/build/include/sdkconfig.h" 1
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_flash_partitions.h" 2
# 38 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_flash_partitions.h"
esp_err_t esp_partition_table_verify(const esp_partition_info_t *partition_table, 
# 38 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_flash_partitions.h" 3 4
                                                                                 _Bool 
# 38 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_flash_partitions.h"
                                                                                      log_errors, int *num_partitions);



inline static __attribute__((deprecated)) esp_err_t esp_partition_table_basic_verify(const esp_partition_info_t *partition_table, 
# 42 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_flash_partitions.h" 3 4
                                                                                                                                 _Bool 
# 42 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_flash_partitions.h"
                                                                                                                                      log_errors, int *num_partitions)
{
    return esp_partition_table_verify(partition_table, log_errors, num_partitions);
}
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_image_format.h" 2
# 29 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_image_format.h"
typedef enum {
    ESP_IMAGE_SPI_MODE_QIO,
    ESP_IMAGE_SPI_MODE_QOUT,
    ESP_IMAGE_SPI_MODE_DIO,
    ESP_IMAGE_SPI_MODE_DOUT,
    ESP_IMAGE_SPI_MODE_FAST_READ,
    ESP_IMAGE_SPI_MODE_SLOW_READ
} esp_image_spi_mode_t;


enum {
    ESP_IMAGE_SPI_SPEED_40M,
    ESP_IMAGE_SPI_SPEED_26M,
    ESP_IMAGE_SPI_SPEED_20M,
    ESP_IMAGE_SPI_SPEED_80M = 0xF
} esp_image_spi_freq_t;


typedef enum {
    ESP_IMAGE_FLASH_SIZE_1MB = 0,
    ESP_IMAGE_FLASH_SIZE_2MB,
    ESP_IMAGE_FLASH_SIZE_4MB,
    ESP_IMAGE_FLASH_SIZE_8MB,
    ESP_IMAGE_FLASH_SIZE_16MB,
    ESP_IMAGE_FLASH_SIZE_MAX
} esp_image_flash_size_t;




typedef struct {
    uint8_t magic;
    uint8_t segment_count;

    uint8_t spi_mode;

    uint8_t spi_speed: 4;

    uint8_t spi_size: 4;
    uint32_t entry_addr;


    uint8_t wp_pin;

    uint8_t spi_pin_drv[3];

    uint8_t reserved[11];



    uint8_t hash_appended;
} __attribute__((packed)) esp_image_header_t;

_Static_assert(sizeof(esp_image_header_t) == 24, "binary image header should be 24 bytes");


typedef struct {
    uint32_t load_addr;
    uint32_t data_len;
} esp_image_segment_header_t;




typedef struct {
  uint32_t start_addr;
  esp_image_header_t image;
  esp_image_segment_header_t segments[16];
  uint32_t segment_data[16];
  uint32_t image_len;
} esp_image_metadata_t;


typedef enum {
    ESP_IMAGE_VERIFY,
    ESP_IMAGE_VERIFY_SILENT,



} esp_image_load_mode_t;
# 133 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_image_format.h"
esp_err_t esp_image_load(esp_image_load_mode_t mode, const esp_partition_pos_t *part, esp_image_metadata_t *data);
# 143 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_image_format.h"
esp_err_t esp_image_verify_bootloader(uint32_t *length);

typedef struct {
    uint32_t drom_addr;
    uint32_t drom_load_addr;
    uint32_t drom_size;
    uint32_t irom_addr;
    uint32_t irom_load_addr;
    uint32_t irom_size;
} esp_image_flash_mapping_t;
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_flash_encrypt.h" 1
# 18 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_flash_encrypt.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_attr.h" 1
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_flash_encrypt.h" 2


# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/efuse_reg.h" 1
# 18 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/efuse_reg.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/soc.h" 1
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/soc.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_assert.h" 1
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/soc.h" 2
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/efuse_reg.h" 2
# 22 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_flash_encrypt.h" 2
# 36 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_flash_encrypt.h"
static inline __attribute__((section(".iram1"))) 
# 36 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_flash_encrypt.h" 3 4
                                                    _Bool 
# 36 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_flash_encrypt.h"
                                                         esp_flash_encryption_enabled(void) {
    uint32_t flash_crypt_cnt = ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff5A000 + 0x000))) >= 0x3ff00000) && (((0x3ff5A000 + 0x000))) <= 0x3ff13FFC)), (!(((((0x3ff5A000 + 0x000))) >= 0x3ff00000) && (((0x3ff5A000 + 0x000))) <= 0x3ff13FFC)), 1), "(Cannot use REG_GET_FIELD for DPORT registers use DPORT_REG_GET_FIELD)"); (("(Cannot use REG_GET_FIELD for DPORT registers use DPORT_REG_GET_FIELD)" && (!(((((0x3ff5A000 + 0x000))) >= 0x3ff00000) && (((0x3ff5A000 + 0x000))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_flash_encrypt.h", 37, __func__, "\"(Cannot use REG_GET_FIELD for DPORT registers use DPORT_REG_GET_FIELD)\" && (!(((((0x3ff5A000 + 0x000))) >= 0x3ff00000) && (((0x3ff5A000 + 0x000))) <= 0x3ff13FFC))")); } while(0);; ((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff5A000 + 0x000))) >= 0x3ff00000) && (((0x3ff5A000 + 0x000))) <= 0x3ff13FFC)), (!(((((0x3ff5A000 + 0x000))) >= 0x3ff00000) && (((0x3ff5A000 + 0x000))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!(((((0x3ff5A000 + 0x000))) >= 0x3ff00000) && (((0x3ff5A000 + 0x000))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_flash_encrypt.h", 37, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!(((((0x3ff5A000 + 0x000))) >= 0x3ff00000) && (((0x3ff5A000 + 0x000))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((0x3ff5A000 + 0x000))); }) >> (20)) & (0xFF)); });

    
# 39 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_flash_encrypt.h" 3 4
   _Bool 
# 39 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_flash_encrypt.h"
        enabled = 
# 39 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_flash_encrypt.h" 3 4
                  0
# 39 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_flash_encrypt.h"
                       ;
    while(flash_crypt_cnt) {
        if (flash_crypt_cnt & 1) {
            enabled = !enabled;
        }
        flash_crypt_cnt >>= 1;
    }
    return enabled;
}
# 89 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_flash_encrypt.h"
esp_err_t esp_flash_encrypt_check_and_update(void);
# 100 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_flash_encrypt.h"
esp_err_t esp_flash_encrypt_region(uint32_t src_addr, size_t data_length);
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_flash_partitions.h" 1
# 22 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_secure_boot.h" 1
# 14 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_secure_boot.h"
       
# 37 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_secure_boot.h"
static inline 
# 37 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_secure_boot.h" 3 4
             _Bool 
# 37 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_secure_boot.h"
                  esp_secure_boot_enabled(void) {
    return ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff5A000 + 0x018))) >= 0x3ff00000) && (((0x3ff5A000 + 0x018))) <= 0x3ff13FFC)), (!(((((0x3ff5A000 + 0x018))) >= 0x3ff00000) && (((0x3ff5A000 + 0x018))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!(((((0x3ff5A000 + 0x018))) >= 0x3ff00000) && (((0x3ff5A000 + 0x018))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_secure_boot.h", 38, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!(((((0x3ff5A000 + 0x018))) >= 0x3ff00000) && (((0x3ff5A000 + 0x018))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((0x3ff5A000 + 0x018))); }) & ((1UL << (4)));
}
# 64 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_secure_boot.h"
esp_err_t esp_secure_boot_permanently_enable(void);
# 78 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_secure_boot.h"
esp_err_t esp_secure_boot_verify_signature(uint32_t src_addr, uint32_t length);
# 89 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_secure_boot.h"
typedef struct {
    uint32_t version;
    uint8_t signature[64];
} esp_secure_boot_sig_block_t;

esp_err_t esp_secure_boot_verify_signature_block(const esp_secure_boot_sig_block_t *sig_block, const uint8_t *image_digest);




typedef struct {
    uint8_t iv[128];
    uint8_t digest[64];
} esp_secure_boot_iv_digest_t;
# 24 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_efuse.h" 1
# 42 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_efuse.h"
void esp_efuse_burn_new_values(void);






void esp_efuse_reset(void);
# 59 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_efuse.h"
void esp_efuse_disable_basic_rom_console(void);
# 25 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c" 2
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
# 22 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h" 2
# 54 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"

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
# 26 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/secure_boot.h" 1
# 24 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/secure_boot.h"
void ets_secure_boot_start(void);

void ets_secure_boot_finish(void);

void ets_secure_boot_hash(const uint32_t *buf);

void ets_secure_boot_obtain(void);

int ets_secure_boot_check(uint32_t *buf);

void ets_secure_boot_rd_iv(uint32_t *buf);

void ets_secure_boot_rd_abstract(uint32_t *buf);


# 38 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/secure_boot.h" 3 4
_Bool 
# 38 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/secure_boot.h"
    ets_secure_boot_check_start(uint8_t abs_index, uint32_t iv_addr);

int ets_secure_boot_check_finish(uint32_t *abstract);
# 27 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/cache.h" 1
# 18 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/cache.h"
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
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/xtruntime.h" 1
# 29 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/xtruntime.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/config/core.h" 1
# 41 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/config/core.h"
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
# 42 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/config/core.h" 2
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
# 30 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/xtruntime.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/config/specreg.h" 1
# 32 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/config/specreg.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/corebits.h" 1
# 33 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/config/specreg.h" 2
# 31 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/xtruntime.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/xtruntime-core-state.h" 1
# 31 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/xtruntime-core-state.h"
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
# 32 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/xtruntime-core-state.h" 2
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
# 24 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/dport_access.h" 2
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
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/cache.h" 2
# 40 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/cache.h"
void mmu_init(int cpu_no);
# 69 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/cache.h"
static inline unsigned int __attribute__((section(".iram1"))) cache_flash_mmu_set(int cpu_no, int pid, unsigned int vaddr, unsigned int paddr, int psize, int num)
{
    extern unsigned int cache_flash_mmu_set_rom(int cpu_no, int pid, unsigned int vaddr, unsigned int paddr, int psize, int num);

    unsigned int ret;

    esp_dport_access_stall_other_cpu_start();
    ret = cache_flash_mmu_set_rom(cpu_no, pid, vaddr, paddr, psize, num);
    esp_dport_access_stall_other_cpu_end();

    return ret;
}
# 109 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/cache.h"
static inline unsigned int __attribute__((section(".iram1"))) cache_sram_mmu_set(int cpu_no, int pid, unsigned int vaddr, unsigned int paddr, int psize, int num)
{
    extern unsigned int cache_sram_mmu_set_rom(int cpu_no, int pid, unsigned int vaddr, unsigned int paddr, int psize, int num);

    unsigned int ret;

    esp_dport_access_stall_other_cpu_start();
    ret = cache_sram_mmu_set_rom(cpu_no, pid, vaddr, paddr, psize, num);
    esp_dport_access_stall_other_cpu_end();

    return ret;
}
# 130 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/cache.h"
static inline void __attribute__((section(".iram1"))) Cache_Read_Init(int cpu_no)
{
    extern void Cache_Read_Init_rom(int cpu_no);
    esp_dport_access_stall_other_cpu_start();
    Cache_Read_Init_rom(cpu_no);
    esp_dport_access_stall_other_cpu_end();
}
# 146 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/cache.h"
static inline void __attribute__((section(".iram1"))) Cache_Flush(int cpu_no)
{
    extern void Cache_Flush_rom(int cpu_no);
    esp_dport_access_stall_other_cpu_start();
    Cache_Flush_rom(cpu_no);
    esp_dport_access_stall_other_cpu_end();
}
# 162 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/cache.h"
static inline void __attribute__((section(".iram1"))) Cache_Read_Disable(int cpu_no)
{
    extern void Cache_Read_Disable_rom(int cpu_no);
    esp_dport_access_stall_other_cpu_start();
    Cache_Read_Disable_rom(cpu_no);
    esp_dport_access_stall_other_cpu_end();
}
# 178 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/cache.h"
static inline void __attribute__((section(".iram1"))) Cache_Read_Enable(int cpu_no)
{
    extern void Cache_Read_Enable_rom(int cpu_no);
    esp_dport_access_stall_other_cpu_start();
    Cache_Read_Enable_rom(cpu_no);
    esp_dport_access_stall_other_cpu_end();
}
# 29 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h" 1
# 23 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/spi_reg.h" 1
# 24 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h" 2
# 122 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
typedef enum {
    ESP_ROM_SPIFLASH_QIO_MODE = 0,
    ESP_ROM_SPIFLASH_QOUT_MODE,
    ESP_ROM_SPIFLASH_DIO_MODE,
    ESP_ROM_SPIFLASH_DOUT_MODE,
    ESP_ROM_SPIFLASH_FASTRD_MODE,
    ESP_ROM_SPIFLASH_SLOWRD_MODE
} esp_rom_spiflash_read_mode_t;

typedef enum {
    ESP_ROM_SPIFLASH_RESULT_OK,
    ESP_ROM_SPIFLASH_RESULT_ERR,
    ESP_ROM_SPIFLASH_RESULT_TIMEOUT
} esp_rom_spiflash_result_t;

typedef struct {
    uint32_t device_id;
    uint32_t chip_size;
    uint32_t block_size;
    uint32_t sector_size;
    uint32_t page_size;
    uint32_t status_mask;
} esp_rom_spiflash_chip_t;

typedef struct {
    uint8_t data_length;
    uint8_t read_cmd0;
    uint8_t read_cmd1;
    uint8_t write_cmd;
    uint16_t data_mask;
    uint16_t data;
} esp_rom_spiflash_common_cmd_t;
# 165 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
void esp_rom_spiflash_fix_dummylen(uint8_t spi, uint8_t freqdiv);
# 178 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
void esp_rom_spiflash_select_qiomode(uint8_t wp_gpio_num, uint32_t ishspi);
# 196 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
void esp_rom_spiflash_set_drvs(uint8_t wp_gpio_num, uint32_t ishspi, uint8_t *drvs);
# 207 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
void esp_rom_spiflash_select_padsfunc(uint32_t ishspi);
# 220 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
void esp_rom_spiflash_attach(uint32_t ishspi, 
# 220 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h" 3 4
                                             _Bool 
# 220 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
                                                  legacy);
# 234 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
esp_rom_spiflash_result_t esp_rom_spiflash_read_status(esp_rom_spiflash_chip_t *spi, uint32_t *status);
# 248 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
esp_rom_spiflash_result_t esp_rom_spiflash_read_statushigh(esp_rom_spiflash_chip_t *spi, uint32_t *status);
# 262 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
esp_rom_spiflash_result_t esp_rom_spiflash_write_status(esp_rom_spiflash_chip_t *spi, uint32_t status_value);
# 276 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
esp_rom_spiflash_result_t esp_rom_spiflash_read_user_cmd(uint32_t *status, uint8_t cmd);
# 290 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
esp_rom_spiflash_result_t esp_rom_spiflash_config_readmode(esp_rom_spiflash_read_mode_t mode);
# 304 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
esp_rom_spiflash_result_t esp_rom_spiflash_config_clk(uint8_t freqdiv, uint8_t spi);
# 316 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
uint16_t esp_rom_spiflash_common_cmd(esp_rom_spiflash_common_cmd_t *cmd);
# 328 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
esp_rom_spiflash_result_t esp_rom_spiflash_unlock(void);
# 340 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
esp_rom_spiflash_result_t esp_rom_spiflash_lock(void);
# 362 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
esp_rom_spiflash_result_t esp_rom_spiflash_config_param(uint32_t deviceId, uint32_t chip_size, uint32_t block_size,
                                                        uint32_t sector_size, uint32_t page_size, uint32_t status_mask);
# 375 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
esp_rom_spiflash_result_t esp_rom_spiflash_erase_chip(void);
# 388 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
esp_rom_spiflash_result_t esp_rom_spiflash_erase_block(uint32_t block_num);
# 401 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
esp_rom_spiflash_result_t esp_rom_spiflash_erase_sector(uint32_t sector_num);
# 415 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
esp_rom_spiflash_result_t esp_rom_spiflash_erase_area(uint32_t start_addr, uint32_t area_len);
# 431 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
esp_rom_spiflash_result_t esp_rom_spiflash_write(uint32_t dest_addr, const uint32_t *src, int32_t len);
# 447 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
esp_rom_spiflash_result_t esp_rom_spiflash_read(uint32_t src_addr, uint32_t *dest, int32_t len);
# 457 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
void esp_rom_spiflash_write_encrypted_enable(void);
# 471 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
esp_rom_spiflash_result_t esp_rom_spiflash_prepare_encrypted_data(uint32_t flash_addr, uint32_t *data);
# 481 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
void esp_rom_spiflash_write_encrypted_disable(void);
# 501 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
esp_rom_spiflash_result_t esp_rom_spiflash_write_encrypted(uint32_t flash_addr, uint32_t *data, uint32_t len);
# 514 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
esp_rom_spiflash_result_t esp_rom_spiflash_wait_idle(esp_rom_spiflash_chip_t *spi);
# 533 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/spi_flash.h"
void esp_rom_spiflash_select_qio_pins(uint8_t wp_gpio_num, uint32_t spiconfig);




extern esp_rom_spiflash_chip_t g_rom_flashchip;
# 30 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c" 2

static const char *TAG = "flash_encrypt";


static esp_err_t initialise_flash_encryption(void);
static esp_err_t encrypt_flash_contents(uint32_t flash_crypt_cnt, 
# 35 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c" 3 4
                                                                 _Bool 
# 35 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c"
                                                                      flash_crypt_wr_dis);
static esp_err_t encrypt_bootloader();
static esp_err_t encrypt_and_load_partition_table(esp_partition_info_t *partition_table, int *num_partitions);
static esp_err_t encrypt_partition(int index, const esp_partition_info_t *partition);

esp_err_t esp_flash_encrypt_check_and_update(void)
{
    uint32_t efuse_blk0 = ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff5A000 + 0x000))) >= 0x3ff00000) && (((0x3ff5A000 + 0x000))) <= 0x3ff13FFC)), (!(((((0x3ff5A000 + 0x000))) >= 0x3ff00000) && (((0x3ff5A000 + 0x000))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!(((((0x3ff5A000 + 0x000))) >= 0x3ff00000) && (((0x3ff5A000 + 0x000))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c", 42, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!(((((0x3ff5A000 + 0x000))) >= 0x3ff00000) && (((0x3ff5A000 + 0x000))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((0x3ff5A000 + 0x000))); });
    do { if ( 3 >= ESP_LOG_VERBOSE ) do { if (ESP_LOG_VERBOSE==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "efuse_blk0 raw value %08x" "\033[0m" "\n", esp_log_timestamp(), TAG, efuse_blk0); } else if (ESP_LOG_VERBOSE==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "efuse_blk0 raw value %08x" "\033[0m" "\n", esp_log_timestamp(), TAG, efuse_blk0); } else if (ESP_LOG_VERBOSE==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "efuse_blk0 raw value %08x" "\033[0m" "\n", esp_log_timestamp(), TAG, efuse_blk0); } else if (ESP_LOG_VERBOSE==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "efuse_blk0 raw value %08x" "\033[0m" "\n", esp_log_timestamp(), TAG, efuse_blk0); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "efuse_blk0 raw value %08x" "\033[0m" "\n", esp_log_timestamp(), TAG, efuse_blk0); } } while(0); } while(0);
    uint32_t flash_crypt_cnt = (efuse_blk0 & ((0xFF)<<(20))) >> 20;
    
# 45 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c" 3 4
   _Bool 
# 45 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c"
        flash_crypt_wr_dis = efuse_blk0 & (1<<2);
    do { if ( 3 >= ESP_LOG_VERBOSE ) do { if (ESP_LOG_VERBOSE==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "efuse FLASH_CRYPT_CNT 0x%x WR_DIS_FLASH_CRYPT_CNT 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, flash_crypt_cnt, flash_crypt_wr_dis); } else if (ESP_LOG_VERBOSE==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "efuse FLASH_CRYPT_CNT 0x%x WR_DIS_FLASH_CRYPT_CNT 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, flash_crypt_cnt, flash_crypt_wr_dis); } else if (ESP_LOG_VERBOSE==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "efuse FLASH_CRYPT_CNT 0x%x WR_DIS_FLASH_CRYPT_CNT 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, flash_crypt_cnt, flash_crypt_wr_dis); } else if (ESP_LOG_VERBOSE==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "efuse FLASH_CRYPT_CNT 0x%x WR_DIS_FLASH_CRYPT_CNT 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, flash_crypt_cnt, flash_crypt_wr_dis); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "efuse FLASH_CRYPT_CNT 0x%x WR_DIS_FLASH_CRYPT_CNT 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, flash_crypt_cnt, flash_crypt_wr_dis); } } while(0); } while(0);

    if (__builtin_parity(flash_crypt_cnt) == 1) {

        int left = (7 - __builtin_popcount(flash_crypt_cnt)) / 2;
        if (flash_crypt_wr_dis) {
            left = 0;
        }
        do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "flash encryption is enabled (%d plaintext flashes left)" "\033[0m" "\n", esp_log_timestamp(), TAG, left); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "flash encryption is enabled (%d plaintext flashes left)" "\033[0m" "\n", esp_log_timestamp(), TAG, left); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "flash encryption is enabled (%d plaintext flashes left)" "\033[0m" "\n", esp_log_timestamp(), TAG, left); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "flash encryption is enabled (%d plaintext flashes left)" "\033[0m" "\n", esp_log_timestamp(), TAG, left); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "flash encryption is enabled (%d plaintext flashes left)" "\033[0m" "\n", esp_log_timestamp(), TAG, left); } } while(0); } while(0);
        return 0;
    }
    else {

        return encrypt_flash_contents(flash_crypt_cnt, flash_crypt_wr_dis);
    }
}

static esp_err_t initialise_flash_encryption(void)
{



    uint32_t dis_reg = ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff5A000 + 0x000))) >= 0x3ff00000) && (((0x3ff5A000 + 0x000))) <= 0x3ff13FFC)), (!(((((0x3ff5A000 + 0x000))) >= 0x3ff00000) && (((0x3ff5A000 + 0x000))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!(((((0x3ff5A000 + 0x000))) >= 0x3ff00000) && (((0x3ff5A000 + 0x000))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c", 68, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!(((((0x3ff5A000 + 0x000))) >= 0x3ff00000) && (((0x3ff5A000 + 0x000))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((0x3ff5A000 + 0x000))); });
    
# 69 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c" 3 4
   _Bool 
# 69 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c"
        efuse_key_read_protected = dis_reg & (1<<16);
    
# 70 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c" 3 4
   _Bool 
# 70 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c"
        efuse_key_write_protected = dis_reg & (1<<7);
    if (efuse_key_read_protected == 
# 71 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c" 3 4
                                   0
        
# 72 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c"
       && efuse_key_write_protected == 
# 72 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c" 3 4
                                       0
        
# 73 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c"
       && ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff5A000 + 0x038))) >= 0x3ff00000) && (((0x3ff5A000 + 0x038))) <= 0x3ff13FFC)), (!(((((0x3ff5A000 + 0x038))) >= 0x3ff00000) && (((0x3ff5A000 + 0x038))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!(((((0x3ff5A000 + 0x038))) >= 0x3ff00000) && (((0x3ff5A000 + 0x038))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c", 73, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!(((((0x3ff5A000 + 0x038))) >= 0x3ff00000) && (((0x3ff5A000 + 0x038))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((0x3ff5A000 + 0x038))); }) == 0
        && ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff5A000 + 0x03c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x03c))) <= 0x3ff13FFC)), (!(((((0x3ff5A000 + 0x03c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x03c))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!(((((0x3ff5A000 + 0x03c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x03c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c", 74, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!(((((0x3ff5A000 + 0x03c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x03c))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((0x3ff5A000 + 0x03c))); }) == 0
        && ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff5A000 + 0x040))) >= 0x3ff00000) && (((0x3ff5A000 + 0x040))) <= 0x3ff13FFC)), (!(((((0x3ff5A000 + 0x040))) >= 0x3ff00000) && (((0x3ff5A000 + 0x040))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!(((((0x3ff5A000 + 0x040))) >= 0x3ff00000) && (((0x3ff5A000 + 0x040))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c", 75, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!(((((0x3ff5A000 + 0x040))) >= 0x3ff00000) && (((0x3ff5A000 + 0x040))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((0x3ff5A000 + 0x040))); }) == 0
        && ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff5A000 + 0x044))) >= 0x3ff00000) && (((0x3ff5A000 + 0x044))) <= 0x3ff13FFC)), (!(((((0x3ff5A000 + 0x044))) >= 0x3ff00000) && (((0x3ff5A000 + 0x044))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!(((((0x3ff5A000 + 0x044))) >= 0x3ff00000) && (((0x3ff5A000 + 0x044))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c", 76, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!(((((0x3ff5A000 + 0x044))) >= 0x3ff00000) && (((0x3ff5A000 + 0x044))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((0x3ff5A000 + 0x044))); }) == 0
        && ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff5A000 + 0x048))) >= 0x3ff00000) && (((0x3ff5A000 + 0x048))) <= 0x3ff13FFC)), (!(((((0x3ff5A000 + 0x048))) >= 0x3ff00000) && (((0x3ff5A000 + 0x048))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!(((((0x3ff5A000 + 0x048))) >= 0x3ff00000) && (((0x3ff5A000 + 0x048))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c", 77, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!(((((0x3ff5A000 + 0x048))) >= 0x3ff00000) && (((0x3ff5A000 + 0x048))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((0x3ff5A000 + 0x048))); }) == 0
        && ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff5A000 + 0x04c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x04c))) <= 0x3ff13FFC)), (!(((((0x3ff5A000 + 0x04c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x04c))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!(((((0x3ff5A000 + 0x04c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x04c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c", 78, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!(((((0x3ff5A000 + 0x04c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x04c))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((0x3ff5A000 + 0x04c))); }) == 0
        && ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff5A000 + 0x050))) >= 0x3ff00000) && (((0x3ff5A000 + 0x050))) <= 0x3ff13FFC)), (!(((((0x3ff5A000 + 0x050))) >= 0x3ff00000) && (((0x3ff5A000 + 0x050))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!(((((0x3ff5A000 + 0x050))) >= 0x3ff00000) && (((0x3ff5A000 + 0x050))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c", 79, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!(((((0x3ff5A000 + 0x050))) >= 0x3ff00000) && (((0x3ff5A000 + 0x050))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((0x3ff5A000 + 0x050))); }) == 0
        && ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff5A000 + 0x054))) >= 0x3ff00000) && (((0x3ff5A000 + 0x054))) <= 0x3ff13FFC)), (!(((((0x3ff5A000 + 0x054))) >= 0x3ff00000) && (((0x3ff5A000 + 0x054))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!(((((0x3ff5A000 + 0x054))) >= 0x3ff00000) && (((0x3ff5A000 + 0x054))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c", 80, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!(((((0x3ff5A000 + 0x054))) >= 0x3ff00000) && (((0x3ff5A000 + 0x054))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((0x3ff5A000 + 0x054))); }) == 0) {
        do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Generating new flash encryption key..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Generating new flash encryption key..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Generating new flash encryption key..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Generating new flash encryption key..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Generating new flash encryption key..." "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
        uint32_t buf[8];
        bootloader_fill_random(buf, sizeof(buf));
        for (int i = 0; i < 8; i++) {
            do { if ( 3 >= ESP_LOG_VERBOSE ) do { if (ESP_LOG_VERBOSE==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "EFUSE_BLK1_WDATA%d_REG = 0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, i, buf[i]); } else if (ESP_LOG_VERBOSE==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "EFUSE_BLK1_WDATA%d_REG = 0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, i, buf[i]); } else if (ESP_LOG_VERBOSE==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "EFUSE_BLK1_WDATA%d_REG = 0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, i, buf[i]); } else if (ESP_LOG_VERBOSE==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "EFUSE_BLK1_WDATA%d_REG = 0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, i, buf[i]); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "EFUSE_BLK1_WDATA%d_REG = 0x%08x" "\033[0m" "\n", esp_log_timestamp(), TAG, i, buf[i]); } } while(0); } while(0);
            ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff5A000 + 0x098) + 4*i)) >= 0x3ff00000) && (((0x3ff5A000 + 0x098) + 4*i)) <= 0x3ff13FFC)), (!(((((0x3ff5A000 + 0x098) + 4*i)) >= 0x3ff00000) && (((0x3ff5A000 + 0x098) + 4*i)) <= 0x3ff13FFC)), 1), "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)"); (("(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)" && (!(((((0x3ff5A000 + 0x098) + 4*i)) >= 0x3ff00000) && (((0x3ff5A000 + 0x098) + 4*i)) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c", 86, __func__, "\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!(((((0x3ff5A000 + 0x098) + 4*i)) >= 0x3ff00000) && (((0x3ff5A000 + 0x098) + 4*i)) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((0x3ff5A000 + 0x098) + 4*i)) = (buf[i]); });
        }
        bzero(buf, sizeof(buf));
        esp_efuse_burn_new_values();

        do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Read & write protecting new key..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Read & write protecting new key..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Read & write protecting new key..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Read & write protecting new key..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Read & write protecting new key..." "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff5A000 + 0x01c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x01c))) <= 0x3ff13FFC)), (!(((((0x3ff5A000 + 0x01c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x01c))) <= 0x3ff13FFC)), 1), "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)"); (("(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)" && (!(((((0x3ff5A000 + 0x01c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x01c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c", 92, __func__, "\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!(((((0x3ff5A000 + 0x01c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x01c))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((0x3ff5A000 + 0x01c))) = ((1<<7) | (1<<16)); });
        esp_efuse_burn_new_values();
    } else {

        if(!(efuse_key_read_protected && efuse_key_write_protected)) {
            do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Flash encryption key has to be either unset or both read and write protected" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Flash encryption key has to be either unset or both read and write protected" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Flash encryption key has to be either unset or both read and write protected" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Flash encryption key has to be either unset or both read and write protected" "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Flash encryption key has to be either unset or both read and write protected" "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
            return 0x103;
        }
        do { if ( 3 >= ESP_LOG_WARN ) do { if (ESP_LOG_WARN==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Using pre-loaded flash encryption key in EFUSE block 1" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_WARN==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Using pre-loaded flash encryption key in EFUSE block 1" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_WARN==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Using pre-loaded flash encryption key in EFUSE block 1" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_WARN==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Using pre-loaded flash encryption key in EFUSE block 1" "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Using pre-loaded flash encryption key in EFUSE block 1" "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
    }
# 113 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c"
    do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Setting CRYPT_CONFIG efuse to 0xF" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Setting CRYPT_CONFIG efuse to 0xF" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Setting CRYPT_CONFIG efuse to 0xF" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Setting CRYPT_CONFIG efuse to 0xF" "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Setting CRYPT_CONFIG efuse to 0xF" "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff5A000 + 0x030))) >= 0x3ff00000) && (((0x3ff5A000 + 0x030))) <= 0x3ff13FFC)), (!(((((0x3ff5A000 + 0x030))) >= 0x3ff00000) && (((0x3ff5A000 + 0x030))) <= 0x3ff13FFC)), 1), "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)"); (("(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)" && (!(((((0x3ff5A000 + 0x030))) >= 0x3ff00000) && (((0x3ff5A000 + 0x030))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c", 114, __func__, "\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!(((((0x3ff5A000 + 0x030))) >= 0x3ff00000) && (((0x3ff5A000 + 0x030))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((0x3ff5A000 + 0x030))) = (((0xF)<<(28))); });
    esp_efuse_burn_new_values();

    uint32_t new_wdata6 = 0;

    do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Disable UART bootloader encryption..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Disable UART bootloader encryption..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Disable UART bootloader encryption..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Disable UART bootloader encryption..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Disable UART bootloader encryption..." "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
    new_wdata6 |= ((1UL << (7)));




    do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Disable UART bootloader decryption..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Disable UART bootloader decryption..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Disable UART bootloader decryption..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Disable UART bootloader decryption..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Disable UART bootloader decryption..." "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
    new_wdata6 |= ((1UL << (8)));




    do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Disable UART bootloader MMU cache..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Disable UART bootloader MMU cache..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Disable UART bootloader MMU cache..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Disable UART bootloader MMU cache..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Disable UART bootloader MMU cache..." "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
    new_wdata6 |= ((1UL << (9)));




    do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Disable JTAG..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Disable JTAG..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Disable JTAG..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Disable JTAG..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Disable JTAG..." "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
    new_wdata6 |= ((1UL << (6)));




    do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Disable ROM BASIC interpreter fallback..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Disable ROM BASIC interpreter fallback..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Disable ROM BASIC interpreter fallback..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Disable ROM BASIC interpreter fallback..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Disable ROM BASIC interpreter fallback..." "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
    new_wdata6 |= ((1UL << (2)));




    if (new_wdata6 != 0) {
        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff5A000 + 0x034))) >= 0x3ff00000) && (((0x3ff5A000 + 0x034))) <= 0x3ff13FFC)), (!(((((0x3ff5A000 + 0x034))) >= 0x3ff00000) && (((0x3ff5A000 + 0x034))) <= 0x3ff13FFC)), 1), "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)"); (("(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)" && (!(((((0x3ff5A000 + 0x034))) >= 0x3ff00000) && (((0x3ff5A000 + 0x034))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c", 150, __func__, "\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!(((((0x3ff5A000 + 0x034))) >= 0x3ff00000) && (((0x3ff5A000 + 0x034))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((0x3ff5A000 + 0x034))) = (new_wdata6); });
        esp_efuse_burn_new_values();
    }

    return 0;
}


static esp_err_t encrypt_flash_contents(uint32_t flash_crypt_cnt, 
# 158 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c" 3 4
                                                                 _Bool 
# 158 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c"
                                                                      flash_crypt_wr_dis)
{
    esp_err_t err;
    esp_partition_info_t partition_table[(0xC00 / sizeof(esp_partition_info_t))];
    int num_partitions;



    if (flash_crypt_wr_dis || flash_crypt_cnt == 0xFF) {
        do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Cannot re-encrypt data (FLASH_CRYPT_CNT 0x%02x write disabled %d" "\033[0m" "\n", esp_log_timestamp(), TAG, flash_crypt_cnt, flash_crypt_wr_dis); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Cannot re-encrypt data (FLASH_CRYPT_CNT 0x%02x write disabled %d" "\033[0m" "\n", esp_log_timestamp(), TAG, flash_crypt_cnt, flash_crypt_wr_dis); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Cannot re-encrypt data (FLASH_CRYPT_CNT 0x%02x write disabled %d" "\033[0m" "\n", esp_log_timestamp(), TAG, flash_crypt_cnt, flash_crypt_wr_dis); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Cannot re-encrypt data (FLASH_CRYPT_CNT 0x%02x write disabled %d" "\033[0m" "\n", esp_log_timestamp(), TAG, flash_crypt_cnt, flash_crypt_wr_dis); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Cannot re-encrypt data (FLASH_CRYPT_CNT 0x%02x write disabled %d" "\033[0m" "\n", esp_log_timestamp(), TAG, flash_crypt_cnt, flash_crypt_wr_dis); } } while(0); } while(0);
        return -1;
    }

    if (flash_crypt_cnt == 0) {

        err = initialise_flash_encryption();
        if (err != 0) {
            return err;
        }
    }

    err = encrypt_bootloader();
    if (err != 0) {
        return err;
    }

    err = encrypt_and_load_partition_table(partition_table, &num_partitions);
    if (err != 0) {
        return err;
    }





    for (int i = 0; i < num_partitions; i++) {
        err = encrypt_partition(i, &partition_table[i]);
        if (err != 0) {
            return err;
        }
    }

    do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "All flash regions checked for encryption pass" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "All flash regions checked for encryption pass" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "All flash regions checked for encryption pass" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "All flash regions checked for encryption pass" "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "All flash regions checked for encryption pass" "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);


    int ffs_inv = __builtin_ffs((~flash_crypt_cnt) & 0xFF);

    uint32_t new_flash_crypt_cnt = flash_crypt_cnt + (1 << (ffs_inv - 1));
    do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "FLASH_CRYPT_CNT 0x%x -> 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, flash_crypt_cnt, new_flash_crypt_cnt); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "FLASH_CRYPT_CNT 0x%x -> 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, flash_crypt_cnt, new_flash_crypt_cnt); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "FLASH_CRYPT_CNT 0x%x -> 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, flash_crypt_cnt, new_flash_crypt_cnt); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "FLASH_CRYPT_CNT 0x%x -> 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, flash_crypt_cnt, new_flash_crypt_cnt); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "FLASH_CRYPT_CNT 0x%x -> 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, flash_crypt_cnt, new_flash_crypt_cnt); } } while(0); } while(0);
    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff5A000 + 0x01c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x01c))) <= 0x3ff13FFC)), (!(((((0x3ff5A000 + 0x01c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x01c))) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)"); (("(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)" && (!(((((0x3ff5A000 + 0x01c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x01c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c", 207, __func__, "\"(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)\" && (!(((((0x3ff5A000 + 0x01c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x01c))) <= 0x3ff13FFC))")); } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((((0x3ff5A000 + 0x01c)))) >= 0x3ff00000) && ((((0x3ff5A000 + 0x01c)))) <= 0x3ff13FFC)), (!((((((0x3ff5A000 + 0x01c)))) >= 0x3ff00000) && ((((0x3ff5A000 + 0x01c)))) <= 0x3ff13FFC)), 1), "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)"); (("(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)" && (!((((((0x3ff5A000 + 0x01c)))) >= 0x3ff00000) && ((((0x3ff5A000 + 0x01c)))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c", 207, __func__, "\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!((((((0x3ff5A000 + 0x01c)))) >= 0x3ff00000) && ((((0x3ff5A000 + 0x01c)))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)(((0x3ff5A000 + 0x01c)))) = (((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x3ff5A000 + 0x01c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x01c))) <= 0x3ff13FFC)), (!(((((0x3ff5A000 + 0x01c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x01c))) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!(((((0x3ff5A000 + 0x01c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x01c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c", 207, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!(((((0x3ff5A000 + 0x01c))) >= 0x3ff00000) && (((0x3ff5A000 + 0x01c))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((0x3ff5A000 + 0x01c))); }) & ~((0xFF) << (20)))|(((new_flash_crypt_cnt) & (0xFF))<<(20)))); })); });
    esp_efuse_burn_new_values();

    do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Flash encryption completed" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Flash encryption completed" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Flash encryption completed" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Flash encryption completed" "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Flash encryption completed" "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);

    return 0;
}

static esp_err_t encrypt_bootloader()
{
    esp_err_t err;
    uint32_t image_length;

    if (esp_image_verify_bootloader(&image_length) == 0) {
        do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "bootloader is plaintext. Encrypting..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "bootloader is plaintext. Encrypting..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "bootloader is plaintext. Encrypting..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "bootloader is plaintext. Encrypting..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "bootloader is plaintext. Encrypting..." "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
        err = esp_flash_encrypt_region(0x1000, image_length);
        if (err != 0) {
            do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Failed to encrypt bootloader in place: 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, err); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Failed to encrypt bootloader in place: 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, err); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Failed to encrypt bootloader in place: 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, err); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Failed to encrypt bootloader in place: 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, err); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Failed to encrypt bootloader in place: 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, err); } } while(0); } while(0);
            return err;
        }

        if (esp_secure_boot_enabled()) {



            do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Encrypting secure bootloader IV & digest..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Encrypting secure bootloader IV & digest..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Encrypting secure bootloader IV & digest..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Encrypting secure bootloader IV & digest..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Encrypting secure bootloader IV & digest..." "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
            err = esp_flash_encrypt_region(0,
                                           0x1000);
            if (err != 0) {
                do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Failed to encrypt bootloader IV & digest in place: 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, err); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Failed to encrypt bootloader IV & digest in place: 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, err); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Failed to encrypt bootloader IV & digest in place: 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, err); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Failed to encrypt bootloader IV & digest in place: 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, err); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Failed to encrypt bootloader IV & digest in place: 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, err); } } while(0); } while(0);
                return err;
            }
        }
    }
    else {
        do { if ( 3 >= ESP_LOG_WARN ) do { if (ESP_LOG_WARN==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "no valid bootloader was found" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_WARN==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "no valid bootloader was found" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_WARN==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "no valid bootloader was found" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_WARN==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "no valid bootloader was found" "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "no valid bootloader was found" "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
    }

    return 0;
}

static esp_err_t encrypt_and_load_partition_table(esp_partition_info_t *partition_table, int *num_partitions)
{
    esp_err_t err;

    err = bootloader_flash_read(0x10000, partition_table, 0xC00, 
# 252 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c" 3 4
                                                                                                         0
# 252 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c"
                                                                                                              );
    if (err != 0) {
        do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Failed to read partition table data" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Failed to read partition table data" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Failed to read partition table data" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Failed to read partition table data" "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Failed to read partition table data" "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
        return err;
    }
    if (esp_partition_table_verify(partition_table, 
# 257 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c" 3 4
                                                   0
# 257 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c"
                                                        , num_partitions) == 0) {
        do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "partition table is plaintext. Encrypting..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "partition table is plaintext. Encrypting..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "partition table is plaintext. Encrypting..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "partition table is plaintext. Encrypting..." "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "partition table is plaintext. Encrypting..." "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
        esp_err_t err = esp_flash_encrypt_region(0x10000,
                                                 0x1000);
        if (err != 0) {
            do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Failed to encrypt partition table in place. %x" "\033[0m" "\n", esp_log_timestamp(), TAG, err); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Failed to encrypt partition table in place. %x" "\033[0m" "\n", esp_log_timestamp(), TAG, err); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Failed to encrypt partition table in place. %x" "\033[0m" "\n", esp_log_timestamp(), TAG, err); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Failed to encrypt partition table in place. %x" "\033[0m" "\n", esp_log_timestamp(), TAG, err); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Failed to encrypt partition table in place. %x" "\033[0m" "\n", esp_log_timestamp(), TAG, err); } } while(0); } while(0);
            return err;
        }
    }
    else {
        do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Failed to read partition table data - not plaintext?" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Failed to read partition table data - not plaintext?" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Failed to read partition table data - not plaintext?" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Failed to read partition table data - not plaintext?" "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Failed to read partition table data - not plaintext?" "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
        return 0x103;
    }


    return 0;
}


static esp_err_t encrypt_partition(int index, const esp_partition_info_t *partition)
{
    esp_err_t err;
    
# 279 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c" 3 4
   _Bool 
# 279 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c"
        should_encrypt = (partition->flags & (1<<0));

    if (partition->type == 0x00) {

      esp_image_metadata_t data_ignored;
      err = esp_image_load(ESP_IMAGE_VERIFY,
                           &partition->pos,
                           &data_ignored);
      should_encrypt = (err == 0);
    } else if (partition->type == 0x01 && partition->subtype == 0x00) {

        should_encrypt = 
# 290 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c" 3 4
                        1
# 290 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c"
                            ;
    }

    if (!should_encrypt) {
        return 0;
    }
    else {

        do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Encrypting partition %d at offset 0x%x..." "\033[0m" "\n", esp_log_timestamp(), TAG, index, partition->pos.offset); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Encrypting partition %d at offset 0x%x..." "\033[0m" "\n", esp_log_timestamp(), TAG, index, partition->pos.offset); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Encrypting partition %d at offset 0x%x..." "\033[0m" "\n", esp_log_timestamp(), TAG, index, partition->pos.offset); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Encrypting partition %d at offset 0x%x..." "\033[0m" "\n", esp_log_timestamp(), TAG, index, partition->pos.offset); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Encrypting partition %d at offset 0x%x..." "\033[0m" "\n", esp_log_timestamp(), TAG, index, partition->pos.offset); } } while(0); } while(0);

        err = esp_flash_encrypt_region(partition->pos.offset, partition->pos.size);
        if (err != 0) {
            do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "Failed to encrypt partition %d" "\033[0m" "\n", esp_log_timestamp(), TAG, index); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "Failed to encrypt partition %d" "\033[0m" "\n", esp_log_timestamp(), TAG, index); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "Failed to encrypt partition %d" "\033[0m" "\n", esp_log_timestamp(), TAG, index); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "Failed to encrypt partition %d" "\033[0m" "\n", esp_log_timestamp(), TAG, index); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "Failed to encrypt partition %d" "\033[0m" "\n", esp_log_timestamp(), TAG, index); } } while(0); } while(0);
        }
        return err;
    }
}


esp_err_t esp_flash_encrypt_region(uint32_t src_addr, size_t data_length)
{
    esp_err_t err;
    uint32_t buf[0x1000 / sizeof(uint32_t)];

    if (src_addr % 0x1000 != 0) {
        do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "esp_flash_encrypt_region bad src_addr 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG,src_addr); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "esp_flash_encrypt_region bad src_addr 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG,src_addr); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "esp_flash_encrypt_region bad src_addr 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG,src_addr); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "esp_flash_encrypt_region bad src_addr 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG,src_addr); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "esp_flash_encrypt_region bad src_addr 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG,src_addr); } } while(0); } while(0);
        return -1;
    }

    for (size_t i = 0; i < data_length; i += 0x1000) {
        uint32_t sec_start = i + src_addr;
        err = bootloader_flash_read(sec_start, buf, 0x1000, 
# 321 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c" 3 4
                                                                      0
# 321 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c"
                                                                           );
        if (err != 0) {
            goto flash_failed;
        }
        err = bootloader_flash_erase_sector(sec_start / 0x1000);
        if (err != 0) {
            goto flash_failed;
        }
        err = bootloader_flash_write(sec_start, buf, 0x1000, 
# 329 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c" 3 4
                                                                       1
# 329 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/flash_encrypt.c"
                                                                           );
        if (err != 0) {
            goto flash_failed;
        }
    }
    return 0;

 flash_failed:
    do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "flash operation failed: 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, err); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "flash operation failed: 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, err); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "flash operation failed: 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, err); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "flash operation failed: 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, err); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "flash operation failed: 0x%x" "\033[0m" "\n", esp_log_timestamp(), TAG, err); } } while(0); } while(0);
    return err;
}
