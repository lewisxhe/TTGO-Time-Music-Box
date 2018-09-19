# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
# 1 "D:\\ESP32\\esp-idf-v3.1-rc1\\ESP32_PIC_A2DP\\build\\driver//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
# 14 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
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


# 15 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 2
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

# 16 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 2
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
# 17 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_attr.h" 1
# 18 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_intr.h" 1
# 18 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_intr.h"
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
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_intr.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/xtensa_api.h" 1
# 31 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/xtensa_api.h"
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
# 32 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/xtensa_api.h" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/xtensa_context.h" 1
# 44 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/xtensa_context.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/config/tie.h" 1
# 45 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/xtensa_context.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/corebits.h" 1
# 46 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/xtensa_context.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/config/system.h" 1
# 47 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/xtensa_context.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/xtruntime-frames.h" 1
# 30 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/xtruntime-frames.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/config/core.h" 1
# 42 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/config/core.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/xtensa-versions.h" 1
# 43 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/config/core.h" 2
# 51 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/config/core.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/config/core-matmap.h" 1
# 52 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/config/core.h" 2
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
# 31 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/xtruntime-frames.h" 2
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
# 34 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/xtensa_api.h" 2



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
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 2
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
# 22 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h" 2
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
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/malloc.h" 1
# 10 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/malloc.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 11 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/malloc.h" 2


# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/malloc.h" 1
# 14 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/malloc.h" 2
# 22 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/malloc.h"
struct mallinfo {
  size_t arena;
  size_t ordblks;
  size_t smblks;
  size_t hblks;
  size_t hblkhd;
  size_t usmblks;
  size_t fsmblks;
  size_t uordblks;
  size_t fordblks;
  size_t keepcost;
};



extern void * malloc (size_t);




extern void * _malloc_r (struct _reent *, size_t);


extern void free (void *);




extern void _free_r (struct _reent *, void *);


extern void * realloc (void *, size_t);




extern void * _realloc_r (struct _reent *, void *, size_t);


extern void * calloc (size_t, size_t);




extern void * _calloc_r (struct _reent *, size_t, size_t);


extern void * memalign (size_t, size_t);




extern void * _memalign_r (struct _reent *, size_t, size_t);


extern struct mallinfo mallinfo (void);




extern struct mallinfo _mallinfo_r (struct _reent *);


extern void malloc_stats (void);




extern void _malloc_stats_r (struct _reent *);


extern int mallopt (int, int);




extern int _mallopt_r (struct _reent *, int, int);


extern size_t malloc_usable_size (void *);




extern size_t _malloc_usable_size_r (struct _reent *, void *);





extern void * valloc (size_t);




extern void * _valloc_r (struct _reent *, size_t);


extern void * pvalloc (size_t);




extern void * _pvalloc_r (struct _reent *, size_t);


extern int malloc_trim (size_t);




extern int _malloc_trim_r (struct _reent *, size_t);




extern void mstats (char *);




extern void _mstats_r (struct _reent *, char *);
# 162 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/malloc.h"
extern void cfree (void *);
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 2
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
# 115 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/FreeRTOSConfig.h" 2
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
       
# 44 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_timer.h"
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
# 23 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/touch_pad.h"
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
# 22 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 2
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
# 23 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h" 1
# 78 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/limits.h" 1
# 131 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/limits.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include-fixed\\limits.h" 1 3 4
# 132 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/limits.h" 2
# 79 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/list.h" 1
# 181 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/list.h"
struct xLIST_ITEM
{

 TickType_t xItemValue;
 struct xLIST_ITEM * pxNext;
 struct xLIST_ITEM * pxPrevious;
 void * pvOwner;
 void * pvContainer;

};
typedef struct xLIST_ITEM ListItem_t;


_Static_assert(sizeof(StaticListItem_t) == sizeof(ListItem_t), "StaticListItem_t != ListItem_t");


struct xMINI_LIST_ITEM
{

 TickType_t xItemValue;
 struct xLIST_ITEM * pxNext;
 struct xLIST_ITEM * pxPrevious;
};
typedef struct xMINI_LIST_ITEM MiniListItem_t;


_Static_assert(sizeof(StaticMiniListItem_t) == sizeof(MiniListItem_t), "StaticMiniListItem_t != MiniListItem_t");






typedef struct xLIST
{

 UBaseType_t uxNumberOfItems;
 ListItem_t * pxIndex;
 MiniListItem_t xListEnd;

} List_t;


_Static_assert(sizeof(StaticList_t) == sizeof(List_t), "StaticList_t != List_t");
# 399 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/list.h"
void vListInitialise( List_t * const pxList );
# 410 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/list.h"
void vListInitialiseItem( ListItem_t * const pxItem );
# 423 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/list.h"
void vListInsert( List_t * const pxList, ListItem_t * const pxNewListItem );
# 444 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/list.h"
void vListInsertEnd( List_t * const pxList, ListItem_t * const pxNewListItem );
# 459 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/list.h"
UBaseType_t uxListRemove( ListItem_t * const pxItemToRemove );
# 81 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h" 2
# 107 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
typedef void * TaskHandle_t;





typedef BaseType_t (*TaskHookFunction_t)( void * );


typedef enum
{
 eRunning = 0,
 eReady,
 eBlocked,
 eSuspended,
 eDeleted
} eTaskState;


typedef enum
{
 eNoAction = 0,
 eSetBits,
 eIncrement,
 eSetValueWithOverwrite,
 eSetValueWithoutOverwrite
} eNotifyAction;





typedef struct xTIME_OUT
{
 BaseType_t xOverflowCount;
 TickType_t xTimeOnEntering;
} TimeOut_t;




typedef struct xMEMORY_REGION
{
 void *pvBaseAddress;
 uint32_t ulLengthInBytes;
 uint32_t ulParameters;
} MemoryRegion_t;




typedef struct xTASK_PARAMETERS
{
 TaskFunction_t pvTaskCode;
 const char * const pcName;
 uint32_t usStackDepth;
 void *pvParameters;
 UBaseType_t uxPriority;
 StackType_t *puxStackBuffer;
 MemoryRegion_t xRegions[ 1 ];
} TaskParameters_t;





typedef struct xTASK_STATUS
{
 TaskHandle_t xHandle;
 const char *pcTaskName;
 UBaseType_t xTaskNumber;
 eTaskState eCurrentState;
 UBaseType_t uxCurrentPriority;
 UBaseType_t uxBasePriority;
 uint32_t ulRunTimeCounter;
 StackType_t *pxStackBase;
 uint32_t usStackHighWaterMark;
} TaskStatus_t;





typedef struct xTASK_SNAPSHOT
{
 void *pxTCB;
 StackType_t *pxTopOfStack;
 StackType_t *pxEndOfStack;

} TaskSnapshot_t;




typedef enum
{
 eAbortSleep = 0,
 eStandardSleep,
 eNoTasksWaitingTimeout
} eSleepModeStatus;
# 333 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
 BaseType_t xTaskCreatePinnedToCore( TaskFunction_t pvTaskCode,
          const char * const pcName,
          const uint32_t usStackDepth,
          void * const pvParameters,
          UBaseType_t uxPriority,
          TaskHandle_t * const pvCreatedTask,
          const BaseType_t xCoreID);
# 430 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
 static inline __attribute__((section(".iram1"))) BaseType_t xTaskCreate(
   TaskFunction_t pvTaskCode,
   const char * const pcName,
   const uint32_t usStackDepth,
   void * const pvParameters,
   UBaseType_t uxPriority,
   TaskHandle_t * const pvCreatedTask)
 {
  return xTaskCreatePinnedToCore( pvTaskCode, pcName, usStackDepth, pvParameters, uxPriority, pvCreatedTask, 0x7fffffff );
 }
# 679 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
 BaseType_t xTaskCreateRestricted( const TaskParameters_t * const pxTaskDefinition, TaskHandle_t *pxCreatedTask ) ;
# 725 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
void vTaskAllocateMPURegions( TaskHandle_t xTask, const MemoryRegion_t * const pxRegions ) ;
# 766 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
void vTaskDelete( TaskHandle_t xTaskToDelete ) ;
# 814 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
void vTaskDelay( const TickType_t xTicksToDelay ) ;
# 870 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
void vTaskDelayUntil( TickType_t * const pxPreviousWakeTime, const TickType_t xTimeIncrement ) ;
# 913 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
UBaseType_t uxTaskPriorityGet( TaskHandle_t xTask ) ;
# 924 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
UBaseType_t uxTaskPriorityGetFromISR( TaskHandle_t xTask ) ;
# 940 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
eTaskState eTaskGetState( TaskHandle_t xTask ) ;
# 978 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
void vTaskPrioritySet( TaskHandle_t xTask, UBaseType_t uxNewPriority ) ;
# 1027 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
void vTaskSuspend( TaskHandle_t xTaskToSuspend ) ;
# 1072 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
void vTaskResume( TaskHandle_t xTaskToResume ) ;
# 1097 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
BaseType_t xTaskResumeFromISR( TaskHandle_t xTaskToResume ) ;
# 1127 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
void vTaskStartScheduler( void ) ;
# 1180 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
void vTaskEndScheduler( void ) ;
# 1230 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
void vTaskSuspendAll( void ) ;
# 1280 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
BaseType_t xTaskResumeAll( void ) ;
# 1293 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
TickType_t xTaskGetTickCount( void ) ;
# 1307 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
TickType_t xTaskGetTickCountFromISR( void ) ;
# 1319 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
UBaseType_t uxTaskGetNumberOfTasks( void ) ;
# 1331 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
char *pcTaskGetTaskName( TaskHandle_t xTaskToQuery ) ;
# 1350 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
UBaseType_t uxTaskGetStackHighWaterMark( TaskHandle_t xTask ) ;
# 1367 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
uint8_t* pxTaskGetStackStart( TaskHandle_t xTask) ;
# 1411 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
 void vTaskSetThreadLocalStoragePointer( TaskHandle_t xTaskToSet, BaseType_t xIndex, void *pvValue ) ;
# 1427 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
 void *pvTaskGetThreadLocalStoragePointer( TaskHandle_t xTaskToQuery, BaseType_t xIndex ) ;






  typedef void (*TlsDeleteCallbackFunction_t)( int, void * );
# 1459 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
  void vTaskSetThreadLocalStoragePointerAndDelCallback( TaskHandle_t xTaskToSet, BaseType_t xIndex, void *pvValue, TlsDeleteCallbackFunction_t pvDelCallback);
# 1473 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
BaseType_t xTaskCallApplicationTaskHook( TaskHandle_t xTask, void *pvParameter ) ;
# 1484 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
TaskHandle_t xTaskGetIdleTaskHandle( void );
# 1497 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
TaskHandle_t xTaskGetIdleTaskHandleForCPU( UBaseType_t cpuid );
# 1598 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
UBaseType_t uxTaskGetSystemState( TaskStatus_t * const pxTaskStatusArray, const UBaseType_t uxArraySize, uint32_t * const pulTotalRunTime );
# 1641 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
void vTaskList( char * pcWriteBuffer ) ;
# 1691 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
void vTaskGetRunTimeStats( char *pcWriteBuffer ) ;
# 1765 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
BaseType_t xTaskNotify( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction );
# 1851 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
BaseType_t xTaskNotifyFromISR( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, BaseType_t *pxHigherPriorityTaskWoken );
# 1924 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
BaseType_t xTaskNotifyWait( uint32_t ulBitsToClearOnEntry, uint32_t ulBitsToClearOnExit, uint32_t *pulNotificationValue, TickType_t xTicksToWait );
# 2021 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
void vTaskNotifyGiveFromISR( TaskHandle_t xTaskToNotify, BaseType_t *pxHigherPriorityTaskWoken );
# 2088 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
uint32_t ulTaskNotifyTake( BaseType_t xClearCountOnExit, TickType_t xTicksToWait );
# 2109 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
BaseType_t xTaskIncrementTick( void ) ;
# 2142 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
void vTaskPlaceOnEventList( List_t * const pxEventList, const TickType_t xTicksToWait ) ;
void vTaskPlaceOnUnorderedEventList( List_t * pxEventList, const TickType_t xItemValue, const TickType_t xTicksToWait ) ;
# 2156 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
void vTaskPlaceOnEventListRestricted( List_t * const pxEventList, const TickType_t xTicksToWait ) ;
# 2182 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
BaseType_t xTaskRemoveFromEventList( const List_t * const pxEventList ) ;
BaseType_t xTaskRemoveFromUnorderedEventList( ListItem_t * pxEventListItem, const TickType_t xItemValue ) ;
# 2193 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
void vTaskSwitchContext( void ) ;





TickType_t uxTaskResetEventItemValue( void ) ;




TaskHandle_t xTaskGetCurrentTaskHandle( void ) ;
# 2214 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
TaskHandle_t xTaskGetCurrentTaskHandleForCPU( BaseType_t cpuid );





void vTaskSetTimeOutState( TimeOut_t * const pxTimeOut ) ;





BaseType_t xTaskCheckForTimeOut( TimeOut_t * const pxTimeOut, TickType_t * const pxTicksToWait ) ;





void vTaskMissedYield( void ) ;





BaseType_t xTaskGetSchedulerState( void ) ;





void vTaskPriorityInherit( TaskHandle_t const pxMutexHolder ) ;





BaseType_t xTaskPriorityDisinherit( TaskHandle_t const pxMutexHolder ) ;




UBaseType_t uxTaskGetTaskNumber( TaskHandle_t xTask ) ;





BaseType_t xTaskGetAffinity( TaskHandle_t xTask ) ;





void vTaskSetTaskNumber( TaskHandle_t xTask, const UBaseType_t uxHandle ) ;
# 2277 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
void vTaskStepTick( const TickType_t xTicksToJump ) ;
# 2293 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
eSleepModeStatus eTaskConfirmSleepModeStatus( void ) ;





void *pvTaskIncrementMutexHeldCount( void );
# 2310 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
UBaseType_t uxTaskGetSnapshotAll( TaskSnapshot_t * const pxTaskSnapshotArray, const UBaseType_t uxArraySize, UBaseType_t * const pxTcbSz );
# 25 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/ringbuf.h" 1
# 26 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/ringbuf.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/queue.h" 1
# 27 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/ringbuf.h" 2






typedef void * RingbufHandle_t;

typedef enum {





 RINGBUF_TYPE_NOSPLIT = 0,






 RINGBUF_TYPE_ALLOWSPLIT,






 RINGBUF_TYPE_BYTEBUF
} ringbuf_type_t;
# 69 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/ringbuf.h"
RingbufHandle_t xRingbufferCreate(size_t xBufferSize, ringbuf_type_t xBufferType);
# 82 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/ringbuf.h"
RingbufHandle_t xRingbufferCreateNoSplit(size_t xItemSize, size_t xItemNum);
# 104 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/ringbuf.h"
BaseType_t xRingbufferSend(RingbufHandle_t xRingbuffer, const void *pvItem, size_t xItemSize, TickType_t xTicksToWait);
# 126 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/ringbuf.h"
BaseType_t xRingbufferSendFromISR(RingbufHandle_t xRingbuffer, const void *pvItem, size_t xItemSize, BaseType_t *pxHigherPriorityTaskWoken);
# 144 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/ringbuf.h"
void *xRingbufferReceive(RingbufHandle_t xRingbuffer, size_t *pxItemSize, TickType_t xTicksToWait);
# 163 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/ringbuf.h"
void *xRingbufferReceiveFromISR(RingbufHandle_t xRingbuffer, size_t *pxItemSize);
# 187 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/ringbuf.h"
BaseType_t xRingbufferReceiveSplit(RingbufHandle_t xRingbuffer, void **ppvHeadItem, void **ppvTailItem, size_t *pxHeadItemSize, size_t *pxTailItemSize, TickType_t xTicksToWait);
# 210 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/ringbuf.h"
BaseType_t xRingbufferReceiveSplitFromISR(RingbufHandle_t xRingbuffer, void **ppvHeadItem, void **ppvTailItem, size_t *pxHeadItemSize, size_t *pxTailItemSize);
# 233 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/ringbuf.h"
void *xRingbufferReceiveUpTo(RingbufHandle_t xRingbuffer, size_t *pxItemSize, TickType_t xTicksToWait, size_t xMaxSize);
# 256 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/ringbuf.h"
void *xRingbufferReceiveUpToFromISR(RingbufHandle_t xRingbuffer, size_t *pxItemSize, size_t xMaxSize);
# 266 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/ringbuf.h"
void vRingbufferReturnItem(RingbufHandle_t xRingbuffer, void *pvItem);
# 278 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/ringbuf.h"
void vRingbufferReturnItemFromISR(RingbufHandle_t xRingbuffer, void *pvItem, BaseType_t *pxHigherPriorityTaskWoken);






void vRingbufferDelete(RingbufHandle_t xRingbuffer);
# 297 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/ringbuf.h"
size_t xRingbufferGetMaxItemSize(RingbufHandle_t xRingbuffer);
# 314 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/ringbuf.h"
size_t xRingbufferGetCurFreeSize(RingbufHandle_t xRingbuffer);
# 329 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/ringbuf.h"
BaseType_t xRingbufferAddToQueueSetRead(RingbufHandle_t xRingbuffer, QueueSetHandle_t xQueueSet);
# 346 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/ringbuf.h"
BaseType_t xRingbufferCanRead(RingbufHandle_t xRingbuffer, QueueSetMemberHandle_t xMember);
# 361 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/ringbuf.h"
BaseType_t xRingbufferRemoveFromQueueSetRead(RingbufHandle_t xRingbuffer, QueueSetHandle_t xQueueSet);
# 376 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/ringbuf.h"
void vRingbufferGetInfo(RingbufHandle_t xRingbuffer, UBaseType_t *uxFree, UBaseType_t *uxRead, UBaseType_t *uxWrite, UBaseType_t *uxItemsWaiting);






void xRingbufferPrintInfo(RingbufHandle_t xRingbuffer);
# 393 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/ringbuf.h"

# 393 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/ringbuf.h" 3 4
_Bool 
# 393 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/ringbuf.h"
    xRingbufferIsNextItemWrapped(RingbufHandle_t xRingbuffer) __attribute__((deprecated));







BaseType_t xRingbufferAddToQueueSetWrite(RingbufHandle_t xRingbuffer, QueueSetHandle_t xQueueSet) __attribute__((deprecated));





BaseType_t xRingbufferRemoveFromQueueSetWrite(RingbufHandle_t xRingbuffer, QueueSetHandle_t xQueueSet) __attribute__((deprecated));
# 26 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 2
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
# 27 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/i2c_struct.h" 1
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/i2c_struct.h"
typedef volatile struct {
    union {
        struct {
            uint32_t period:14;
            uint32_t reserved14: 18;
        };
        uint32_t val;
    } scl_low_period;
    union {
        struct {
            uint32_t sda_force_out: 1;
            uint32_t scl_force_out: 1;
            uint32_t sample_scl_level: 1;
            uint32_t reserved3: 1;
            uint32_t ms_mode: 1;
            uint32_t trans_start: 1;
            uint32_t tx_lsb_first: 1;
            uint32_t rx_lsb_first: 1;
            uint32_t clk_en: 1;
            uint32_t reserved9: 23;
        };
        uint32_t val;
    } ctr;
    union {
        struct {
            uint32_t ack_rec: 1;
            uint32_t slave_rw: 1;
            uint32_t time_out: 1;
            uint32_t arb_lost: 1;
            uint32_t bus_busy: 1;
            uint32_t slave_addressed: 1;
            uint32_t byte_trans: 1;
            uint32_t reserved7: 1;
            uint32_t rx_fifo_cnt: 6;
            uint32_t reserved14: 4;
            uint32_t tx_fifo_cnt: 6;
            uint32_t scl_main_state_last: 3;
            uint32_t reserved27: 1;
            uint32_t scl_state_last: 3;
            uint32_t reserved31: 1;
        };
        uint32_t val;
    } status_reg;
    union {
        struct {
            uint32_t tout: 20;
            uint32_t reserved20:12;
        };
        uint32_t val;
    } timeout;
    union {
        struct {
            uint32_t addr: 15;
            uint32_t reserved15: 16;
            uint32_t en_10bit: 1;
        };
        uint32_t val;
    } slave_addr;
    union {
        struct {
            uint32_t rx_fifo_start_addr: 5;
            uint32_t rx_fifo_end_addr: 5;
            uint32_t tx_fifo_start_addr: 5;
            uint32_t tx_fifo_end_addr: 5;
            uint32_t reserved20: 12;
        };
        uint32_t val;
    } fifo_st;
    union {
        struct {
            uint32_t rx_fifo_full_thrhd: 5;
            uint32_t tx_fifo_empty_thrhd:5;
            uint32_t nonfifo_en: 1;
            uint32_t fifo_addr_cfg_en: 1;
            uint32_t rx_fifo_rst: 1;
            uint32_t tx_fifo_rst: 1;
            uint32_t nonfifo_rx_thres: 6;
            uint32_t nonfifo_tx_thres: 6;
            uint32_t reserved26: 6;
        };
        uint32_t val;
    } fifo_conf;
    union {
        struct {
            uint8_t data;
            uint8_t reserved[3];
        };
        uint32_t val;
    } fifo_data;
    union {
        struct {
            uint32_t rx_fifo_full: 1;
            uint32_t tx_fifo_empty: 1;
            uint32_t rx_fifo_ovf: 1;
            uint32_t end_detect: 1;
            uint32_t slave_tran_comp: 1;
            uint32_t arbitration_lost: 1;
            uint32_t master_tran_comp: 1;
            uint32_t trans_complete: 1;
            uint32_t time_out: 1;
            uint32_t trans_start: 1;
            uint32_t ack_err: 1;
            uint32_t rx_rec_full: 1;
            uint32_t tx_send_empty: 1;
            uint32_t reserved13: 19;
        };
        uint32_t val;
    } int_raw;
    union {
        struct {
            uint32_t rx_fifo_full: 1;
            uint32_t tx_fifo_empty: 1;
            uint32_t rx_fifo_ovf: 1;
            uint32_t end_detect: 1;
            uint32_t slave_tran_comp: 1;
            uint32_t arbitration_lost: 1;
            uint32_t master_tran_comp: 1;
            uint32_t trans_complete: 1;
            uint32_t time_out: 1;
            uint32_t trans_start: 1;
            uint32_t ack_err: 1;
            uint32_t rx_rec_full: 1;
            uint32_t tx_send_empty: 1;
            uint32_t reserved13: 19;
        };
        uint32_t val;
    } int_clr;
    union {
        struct {
            uint32_t rx_fifo_full: 1;
            uint32_t tx_fifo_empty: 1;
            uint32_t rx_fifo_ovf: 1;
            uint32_t end_detect: 1;
            uint32_t slave_tran_comp: 1;
            uint32_t arbitration_lost: 1;
            uint32_t master_tran_comp: 1;
            uint32_t trans_complete: 1;
            uint32_t time_out: 1;
            uint32_t trans_start: 1;
            uint32_t ack_err: 1;
            uint32_t rx_rec_full: 1;
            uint32_t tx_send_empty: 1;
            uint32_t reserved13: 19;
        };
        uint32_t val;
    } int_ena;
    union {
        struct {
            uint32_t rx_fifo_full: 1;
            uint32_t tx_fifo_empty: 1;
            uint32_t rx_fifo_ovf: 1;
            uint32_t end_detect: 1;
            uint32_t slave_tran_comp: 1;
            uint32_t arbitration_lost: 1;
            uint32_t master_tran_comp: 1;
            uint32_t trans_complete: 1;
            uint32_t time_out: 1;
            uint32_t trans_start: 1;
            uint32_t ack_err: 1;
            uint32_t rx_rec_full: 1;
            uint32_t tx_send_empty: 1;
            uint32_t reserved13: 19;
        };
        uint32_t val;
    } int_status;
    union {
        struct {
            uint32_t time: 10;
            uint32_t reserved10: 22;
        };
        uint32_t val;
    } sda_hold;
    union {
        struct {
            uint32_t time: 10;
            uint32_t reserved10: 22;
        };
        uint32_t val;
    } sda_sample;
    union {
        struct {
            uint32_t period: 14;
            uint32_t reserved14: 18;
        };
        uint32_t val;
    } scl_high_period;
    uint32_t reserved_3c;
    union {
        struct {
            uint32_t time: 10;
            uint32_t reserved10: 22;
        };
        uint32_t val;
    } scl_start_hold;
    union {
        struct {
            uint32_t time: 10;
            uint32_t reserved10: 22;
        };
        uint32_t val;
    } scl_rstart_setup;
    union {
        struct {
            uint32_t time: 14;
            uint32_t reserved14: 18;
        };
        uint32_t val;
    } scl_stop_hold;
    union {
        struct {
            uint32_t time: 10;
            uint32_t reserved10: 22;
        };
        uint32_t val;
    } scl_stop_setup;
    union {
        struct {
            uint32_t thres: 3;
            uint32_t en: 1;
            uint32_t reserved4: 28;
        };
        uint32_t val;
    } scl_filter_cfg;
    union {
        struct {
            uint32_t thres: 3;
            uint32_t en: 1;
            uint32_t reserved4: 28;
        };
        uint32_t val;
    } sda_filter_cfg;
    union {
        struct {
            uint32_t byte_num: 8;
            uint32_t ack_en: 1;
            uint32_t ack_exp: 1;
            uint32_t ack_val: 1;
            uint32_t op_code: 3;
            uint32_t reserved14: 17;
            uint32_t done: 1;
        };
        uint32_t val;
    } command[16];
    uint32_t reserved_98;
    uint32_t reserved_9c;
    uint32_t reserved_a0;
    uint32_t reserved_a4;
    uint32_t reserved_a8;
    uint32_t reserved_ac;
    uint32_t reserved_b0;
    uint32_t reserved_b4;
    uint32_t reserved_b8;
    uint32_t reserved_bc;
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
    uint32_t date;
    uint32_t reserved_fc;
    uint32_t ram_data[32];
} i2c_dev_t;
extern i2c_dev_t I2C0;
extern i2c_dev_t I2C1;
# 28 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/i2c_reg.h" 1
# 29 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2c.h" 1
# 35 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2c.h"
typedef enum{
    I2C_MODE_SLAVE = 0,
    I2C_MODE_MASTER,
    I2C_MODE_MAX,
}i2c_mode_t;

typedef enum {
    I2C_MASTER_WRITE = 0,
    I2C_MASTER_READ,
} i2c_rw_t;

typedef enum {
    I2C_DATA_MODE_MSB_FIRST = 0,
    I2C_DATA_MODE_LSB_FIRST = 1,
    I2C_DATA_MODE_MAX
} i2c_trans_mode_t;

typedef enum{
    I2C_CMD_RESTART = 0,
    I2C_CMD_WRITE,
    I2C_CMD_READ,
    I2C_CMD_STOP,
    I2C_CMD_END
}i2c_opmode_t;

typedef enum{
    I2C_NUM_0 = 0,
    I2C_NUM_1 ,
    I2C_NUM_MAX
} i2c_port_t;

typedef enum {
    I2C_ADDR_BIT_7 = 0,
    I2C_ADDR_BIT_10,
    I2C_ADDR_BIT_MAX,
} i2c_addr_mode_t;

typedef enum {
    I2C_MASTER_ACK = 0x0,
    I2C_MASTER_NACK = 0x1,
    I2C_MASTER_LAST_NACK = 0x2,
    I2C_MASTER_ACK_MAX,
} i2c_ack_type_t;




typedef struct{
    i2c_mode_t mode;
    gpio_num_t sda_io_num;
    gpio_pullup_t sda_pullup_en;
    gpio_num_t scl_io_num;
    gpio_pullup_t scl_pullup_en;

    union {
        struct {
            uint32_t clk_speed;
        } master;
        struct {
            uint8_t addr_10bit_en;
            uint16_t slave_addr;
        } slave;

    };
}i2c_config_t;

typedef void* i2c_cmd_handle_t;
# 126 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2c.h"
esp_err_t i2c_driver_install(i2c_port_t i2c_num, i2c_mode_t mode, size_t slv_rx_buf_len, size_t slv_tx_buf_len, int intr_alloc_flags);
# 137 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2c.h"
esp_err_t i2c_driver_delete(i2c_port_t i2c_num);
# 149 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2c.h"
esp_err_t i2c_param_config(i2c_port_t i2c_num, const i2c_config_t* i2c_conf);
# 160 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2c.h"
esp_err_t i2c_reset_tx_fifo(i2c_port_t i2c_num);
# 171 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2c.h"
esp_err_t i2c_reset_rx_fifo(i2c_port_t i2c_num);
# 187 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2c.h"
esp_err_t i2c_isr_register(i2c_port_t i2c_num, void (*fn)(void*), void * arg, int intr_alloc_flags, intr_handle_t *handle);
# 198 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2c.h"
esp_err_t i2c_isr_free(intr_handle_t handle);
# 214 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2c.h"
esp_err_t i2c_set_pin(i2c_port_t i2c_num, int sda_io_num, int scl_io_num,
                      gpio_pullup_t sda_pullup_en, gpio_pullup_t scl_pullup_en, i2c_mode_t mode);
# 227 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2c.h"
i2c_cmd_handle_t i2c_cmd_link_create();
# 239 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2c.h"
void i2c_cmd_link_delete(i2c_cmd_handle_t cmd_handle);
# 253 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2c.h"
esp_err_t i2c_master_start(i2c_cmd_handle_t cmd_handle);
# 269 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2c.h"
esp_err_t i2c_master_write_byte(i2c_cmd_handle_t cmd_handle, uint8_t data, 
# 269 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2c.h" 3 4
                                                                          _Bool 
# 269 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2c.h"
                                                                               ack_en);
# 288 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2c.h"
esp_err_t i2c_master_write(i2c_cmd_handle_t cmd_handle, uint8_t* data, size_t data_len, 
# 288 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2c.h" 3 4
                                                                                       _Bool 
# 288 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2c.h"
                                                                                            ack_en);
# 306 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2c.h"
esp_err_t i2c_master_read_byte(i2c_cmd_handle_t cmd_handle, uint8_t* data, i2c_ack_type_t ack);
# 325 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2c.h"
esp_err_t i2c_master_read(i2c_cmd_handle_t cmd_handle, uint8_t* data, size_t data_len, i2c_ack_type_t ack);
# 339 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2c.h"
esp_err_t i2c_master_stop(i2c_cmd_handle_t cmd_handle);
# 361 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2c.h"
esp_err_t i2c_master_cmd_begin(i2c_port_t i2c_num, i2c_cmd_handle_t cmd_handle, TickType_t ticks_to_wait);
# 378 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2c.h"
int i2c_slave_write_buffer(i2c_port_t i2c_num, uint8_t* data, int size, TickType_t ticks_to_wait);
# 395 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2c.h"
int i2c_slave_read_buffer(i2c_port_t i2c_num, uint8_t* data, size_t max_size, TickType_t ticks_to_wait);
# 408 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2c.h"
esp_err_t i2c_set_period(i2c_port_t i2c_num, int high_period, int low_period);
# 421 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2c.h"
esp_err_t i2c_get_period(i2c_port_t i2c_num, int* high_period, int* low_period);
# 434 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2c.h"
esp_err_t i2c_set_start_timing(i2c_port_t i2c_num, int setup_time, int hold_time);
# 447 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2c.h"
esp_err_t i2c_get_start_timing(i2c_port_t i2c_num, int* setup_time, int* hold_time);
# 460 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2c.h"
esp_err_t i2c_set_stop_timing(i2c_port_t i2c_num, int setup_time, int hold_time);
# 473 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2c.h"
esp_err_t i2c_get_stop_timing(i2c_port_t i2c_num, int* setup_time, int* hold_time);
# 486 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2c.h"
esp_err_t i2c_set_data_timing(i2c_port_t i2c_num, int sample_time, int hold_time);
# 499 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2c.h"
esp_err_t i2c_get_data_timing(i2c_port_t i2c_num, int* sample_time, int* hold_time);
# 509 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2c.h"
esp_err_t i2c_set_timeout(i2c_port_t i2c_num, int timeout);
# 519 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2c.h"
esp_err_t i2c_get_timeout(i2c_port_t i2c_num, int* timeout);
# 531 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2c.h"
esp_err_t i2c_set_data_mode(i2c_port_t i2c_num, i2c_trans_mode_t tx_trans_mode, i2c_trans_mode_t rx_trans_mode);
# 544 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2c.h"
esp_err_t i2c_get_data_mode(i2c_port_t i2c_num, i2c_trans_mode_t *tx_trans_mode, i2c_trans_mode_t *rx_trans_mode);
# 30 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 2

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
# 32 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 2

static const char* I2C_TAG = "i2c";





static portMUX_TYPE i2c_spinlock[I2C_NUM_MAX] = {{ .owner = 0xB33FFFFF, .count = 0, }, { .owner = 0xB33FFFFF, .count = 0, }};

static __attribute__((section(".dram1"))) i2c_dev_t* const I2C[I2C_NUM_MAX] = { &I2C0, &I2C1 };
# 83 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
typedef struct {
    uint8_t byte_num;
    uint8_t ack_en;
    uint8_t ack_exp;
    uint8_t ack_val;
    uint8_t* data;
    uint8_t byte_cmd;
    i2c_opmode_t op_code;
}i2c_cmd_t;

typedef struct i2c_cmd_link{
    i2c_cmd_t cmd;
    struct i2c_cmd_link *next;
} i2c_cmd_link_t;

typedef struct {
    i2c_cmd_link_t* head;
    i2c_cmd_link_t* cur;
    i2c_cmd_link_t* free;
} i2c_cmd_desc_t;

typedef enum {
    I2C_STATUS_READ,
    I2C_STATUS_WRITE,
    I2C_STATUS_IDLE,
    I2C_STATUS_ACK_ERROR,
    I2C_STATUS_DONE,
    I2C_STATUS_TIMEOUT,
} i2c_status_t;

typedef struct {
    int type;
} i2c_cmd_evt_t;

typedef struct {
    int i2c_num;
    int mode;
    intr_handle_t intr_handle;
    int cmd_idx;
    int status;
    int rx_cnt;
    uint8_t data_buf[(32)];

    i2c_cmd_desc_t cmd_link;
    QueueHandle_t cmd_evt_queue;





    SemaphoreHandle_t cmd_mux;
    size_t tx_fifo_remain;
    size_t rx_fifo_remain;

    SemaphoreHandle_t slv_rx_mux;
    SemaphoreHandle_t slv_tx_mux;
    size_t rx_buf_length;
    RingbufHandle_t rx_ring_buf;
    size_t tx_buf_length;
    RingbufHandle_t tx_ring_buf;
} i2c_obj_t;

static i2c_obj_t *p_i2c_obj[I2C_NUM_MAX] = {0};
static void i2c_isr_handler_default(void* arg);
static void __attribute__((section(".iram1"))) i2c_master_cmd_begin_static(i2c_port_t i2c_num);
static esp_err_t __attribute__((section(".iram1"))) i2c_hw_fsm_reset(i2c_port_t i2c_num);
# 157 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
esp_err_t i2c_driver_install(i2c_port_t i2c_num, i2c_mode_t mode, size_t slv_rx_buf_len, size_t slv_tx_buf_len,
    int intr_alloc_flags)
{
    if(!(i2c_num < I2C_NUM_MAX)) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 160, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 160, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 160, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 160, __FUNCTION__, "i2c number error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 160, __FUNCTION__, "i2c number error"); } } while(0); } while(0); return (0x102); };
    if(!(mode == I2C_MODE_MASTER || ( slv_rx_buf_len > 100 || slv_tx_buf_len > 100 ))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG,
 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
# 161 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
    ,
 162
# 161 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
    , __FUNCTION__, "i2c buffer size too small for slave mode"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG,
 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
# 161 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
    ,
 162
# 161 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
    , __FUNCTION__, "i2c buffer size too small for slave mode"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG,
 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
# 161 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
    ,
 162
# 161 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
    , __FUNCTION__, "i2c buffer size too small for slave mode"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG,
 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
# 161 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
    ,
 162
# 161 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
    , __FUNCTION__, "i2c buffer size too small for slave mode"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG,
 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
# 161 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
    ,
 162
# 161 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
    , __FUNCTION__, "i2c buffer size too small for slave mode"); } } while(0); } while(0); return (0x102); }
                            ;
    uint32_t intr_mask = 0;
    if (p_i2c_obj[i2c_num] == 
# 164 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
                             ((void *)0)
# 164 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
                                 ) {


        p_i2c_obj[i2c_num] = (i2c_obj_t*) calloc(1, sizeof(i2c_obj_t));







        if (p_i2c_obj[i2c_num] == 
# 175 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
                                 ((void *)0)
# 175 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
                                     ) {
            do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "i2c driver malloc error" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "i2c driver malloc error" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "i2c driver malloc error" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "i2c driver malloc error" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "i2c driver malloc error" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG); } } while(0); } while(0);
            return -1;
        }
        i2c_obj_t* p_i2c = p_i2c_obj[i2c_num];
        p_i2c->i2c_num = i2c_num;
        p_i2c->mode = mode;
        p_i2c->cmd_idx = 0;
        p_i2c->rx_cnt = 0;
        p_i2c->status = I2C_STATUS_IDLE;




        p_i2c->rx_fifo_remain = (32);
        p_i2c->tx_fifo_remain = (32);

        if (mode == I2C_MODE_SLAVE) {

            if (slv_rx_buf_len > 0) {
                p_i2c->rx_ring_buf = xRingbufferCreate(slv_rx_buf_len, RINGBUF_TYPE_BYTEBUF);
                if (p_i2c->rx_ring_buf == 
# 196 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
                                         ((void *)0)
# 196 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
                                             ) {
                    do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "i2c ringbuffer error" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "i2c ringbuffer error" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "i2c ringbuffer error" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "i2c ringbuffer error" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "i2c ringbuffer error" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG); } } while(0); } while(0);
                    goto err;
                }
                p_i2c->rx_buf_length = slv_rx_buf_len;
            } else {
                p_i2c->rx_ring_buf = 
# 202 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
                                    ((void *)0)
# 202 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
                                        ;
                p_i2c->rx_buf_length = 0;
            }
            if (slv_tx_buf_len > 0) {
                p_i2c->tx_ring_buf = xRingbufferCreate(slv_tx_buf_len, RINGBUF_TYPE_BYTEBUF);
                if (p_i2c->tx_ring_buf == 
# 207 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
                                         ((void *)0)
# 207 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
                                             ) {
                    do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "i2c ringbuffer error" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "i2c ringbuffer error" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "i2c ringbuffer error" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "i2c ringbuffer error" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "i2c ringbuffer error" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG); } } while(0); } while(0);
                    goto err;
                }
                p_i2c->tx_buf_length = slv_tx_buf_len;
            } else {
                p_i2c->tx_ring_buf = 
# 213 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
                                    ((void *)0)
# 213 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
                                        ;
                p_i2c->tx_buf_length = 0;
            }
            p_i2c->slv_rx_mux = xQueueCreateMutex( ( ( uint8_t ) 1U ) );
            p_i2c->slv_tx_mux = xQueueCreateMutex( ( ( uint8_t ) 1U ) );
            if (p_i2c->slv_rx_mux == 
# 218 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
                                    ((void *)0) 
# 218 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
                                         || p_i2c->slv_tx_mux == 
# 218 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
                                                                 ((void *)0)
# 218 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
                                                                     ) {
                do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "i2c semaphore error" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "i2c semaphore error" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "i2c semaphore error" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "i2c semaphore error" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "i2c semaphore error" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG); } } while(0); } while(0);
                goto err;
            }
            intr_mask |= ( ((1UL << (0))) | ((1UL << (7))));
        } else {

            p_i2c->cmd_mux = xQueueCreateMutex( ( ( uint8_t ) 1U ) );

            p_i2c->cmd_evt_queue = xQueueGenericCreate( ( (1) ), ( sizeof(i2c_cmd_evt_t) ), ( ( ( uint8_t ) 0U ) ) );
# 241 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
            if (p_i2c->cmd_mux == 
# 241 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
                                 ((void *)0) 
# 241 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
                                      || p_i2c->cmd_evt_queue == 
# 241 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
                                                                 ((void *)0)
# 241 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
                                                                     ) {
                do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "i2c semaphore error" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "i2c semaphore error" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "i2c semaphore error" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "i2c semaphore error" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "i2c semaphore error" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG); } } while(0); } while(0);
                goto err;
            }

            p_i2c->cmd_link.cur = 
# 246 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
                                 ((void *)0)
# 246 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
                                     ;
            p_i2c->cmd_link.head = 
# 247 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
                                  ((void *)0)
# 247 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
                                      ;
            p_i2c->cmd_link.free = 
# 248 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
                                  ((void *)0)
# 248 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
                                      ;

            p_i2c->tx_ring_buf = 
# 250 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
                                ((void *)0)
# 250 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
                                    ;
            p_i2c->rx_buf_length = 0;
            p_i2c->tx_ring_buf = 
# 252 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
                                ((void *)0)
# 252 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
                                    ;
            p_i2c->tx_buf_length = 0;
            intr_mask |= ((1UL << (5))) | ((1UL << (8)));
        }
    } else {
        do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "i2c driver install error" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "i2c driver install error" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "i2c driver install error" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "i2c driver install error" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "i2c driver install error" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG); } } while(0); } while(0);
        return -1;
    }

    i2c_isr_register(i2c_num, i2c_isr_handler_default, p_i2c_obj[i2c_num], intr_alloc_flags, &p_i2c_obj[i2c_num]->intr_handle);
    intr_mask |= ( ((1UL << (7))) |
                   ((1UL << (9))) |
                   ((1UL << (10))) |
                   ((1UL << (2))) |
                   ((1UL << (4))));
    I2C[i2c_num]->int_clr.val = intr_mask;
    I2C[i2c_num]->int_ena.val = intr_mask;
    return 0;

    err:

    if (p_i2c_obj[i2c_num]) {
        if (p_i2c_obj[i2c_num]->rx_ring_buf) {
            vRingbufferDelete(p_i2c_obj[i2c_num]->rx_ring_buf);
            p_i2c_obj[i2c_num]->rx_ring_buf = 
# 276 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
                                             ((void *)0)
# 276 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
                                                 ;
            p_i2c_obj[i2c_num]->rx_buf_length = 0;
        }
        if (p_i2c_obj[i2c_num]->tx_ring_buf) {
            vRingbufferDelete(p_i2c_obj[i2c_num]->tx_ring_buf);
            p_i2c_obj[i2c_num]->tx_ring_buf = 
# 281 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
                                             ((void *)0)
# 281 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
                                                 ;
            p_i2c_obj[i2c_num]->tx_buf_length = 0;
        }
        if (p_i2c_obj[i2c_num]->cmd_evt_queue) {
            vQueueDelete(p_i2c_obj[i2c_num]->cmd_evt_queue);
            p_i2c_obj[i2c_num]->cmd_evt_queue = 
# 286 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
                                               ((void *)0)
# 286 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
                                                   ;
        }
        if (p_i2c_obj[i2c_num]->cmd_mux) {
            vQueueDelete( ( QueueHandle_t ) ( p_i2c_obj[i2c_num]->cmd_mux ) );
        }
        if (p_i2c_obj[i2c_num]->slv_rx_mux) {
            vQueueDelete( ( QueueHandle_t ) ( p_i2c_obj[i2c_num]->slv_rx_mux ) );
        }
        if (p_i2c_obj[i2c_num]->slv_tx_mux) {
            vQueueDelete( ( QueueHandle_t ) ( p_i2c_obj[i2c_num]->slv_tx_mux ) );
        }






    }
    free(p_i2c_obj[i2c_num]);
    p_i2c_obj[i2c_num] = 
# 305 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
                        ((void *)0)
# 305 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
                            ;
    return -1;
}

static esp_err_t i2c_hw_enable(i2c_port_t i2c_num)
{
    if (i2c_num == I2C_NUM_0) {
        periph_module_enable(PERIPH_I2C0_MODULE);
    } else if (i2c_num == I2C_NUM_1) {
        periph_module_enable(PERIPH_I2C1_MODULE);
    }
    return 0;
}

static esp_err_t i2c_hw_disable(i2c_port_t i2c_num)
{
    if (i2c_num == I2C_NUM_0) {
        periph_module_disable(PERIPH_I2C0_MODULE);
    } else if (i2c_num == I2C_NUM_1) {
        periph_module_disable(PERIPH_I2C1_MODULE);
    }
    return 0;
}

esp_err_t i2c_driver_delete(i2c_port_t i2c_num)
{
    if(!(i2c_num < I2C_NUM_MAX)) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 331, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 331, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 331, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 331, __FUNCTION__, "i2c number error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 331, __FUNCTION__, "i2c number error"); } } while(0); } while(0); return (0x102); };
    if(!(p_i2c_obj[i2c_num] != 
# 332 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
   ((void *)0)
# 332 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
   )) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 332, __FUNCTION__, "i2c driver install error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 332, __FUNCTION__, "i2c driver install error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 332, __FUNCTION__, "i2c driver install error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 332, __FUNCTION__, "i2c driver install error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 332, __FUNCTION__, "i2c driver install error"); } } while(0); } while(0); return (-1); };

    i2c_obj_t* p_i2c = p_i2c_obj[i2c_num];

    I2C[i2c_num]->int_ena.val = 0;
    esp_intr_free(p_i2c->intr_handle);
    p_i2c->intr_handle = 
# 338 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
                        ((void *)0)
# 338 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
                            ;

    if (p_i2c->cmd_mux) {
        xQueueGenericReceive( ( QueueHandle_t ) ( p_i2c->cmd_mux ), 
# 341 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
       ((void *)0)
# 341 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
       , ( ( TickType_t ) 0xffffffffUL ), ( ( BaseType_t ) 0 ) );
        vQueueDelete( ( QueueHandle_t ) ( p_i2c->cmd_mux ) );
    }
    if (p_i2c_obj[i2c_num]->cmd_evt_queue) {
        vQueueDelete(p_i2c_obj[i2c_num]->cmd_evt_queue);
        p_i2c_obj[i2c_num]->cmd_evt_queue = 
# 346 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
                                           ((void *)0)
# 346 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
                                               ;
    }
    if (p_i2c->slv_rx_mux) {
        vQueueDelete( ( QueueHandle_t ) ( p_i2c->slv_rx_mux ) );
    }
    if (p_i2c->slv_tx_mux) {
        vQueueDelete( ( QueueHandle_t ) ( p_i2c->slv_tx_mux ) );
    }

    if (p_i2c->rx_ring_buf) {
        vRingbufferDelete(p_i2c->rx_ring_buf);
        p_i2c->rx_ring_buf = 
# 357 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
                            ((void *)0)
# 357 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
                                ;
        p_i2c->rx_buf_length = 0;
    }
    if (p_i2c->tx_ring_buf) {
        vRingbufferDelete(p_i2c->tx_ring_buf);
        p_i2c->tx_ring_buf = 
# 362 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
                            ((void *)0)
# 362 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
                                ;
        p_i2c->tx_buf_length = 0;
    }







    free(p_i2c_obj[i2c_num]);
    p_i2c_obj[i2c_num] = 
# 373 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
                        ((void *)0)
# 373 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
                            ;

    i2c_hw_disable(i2c_num);
    return 0;
}

esp_err_t i2c_reset_tx_fifo(i2c_port_t i2c_num)
{
    if(!(i2c_num < I2C_NUM_MAX)) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 381, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 381, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 381, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 381, __FUNCTION__, "i2c number error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 381, __FUNCTION__, "i2c number error"); } } while(0); } while(0); return (0x102); };
    vTaskEnterCritical(&i2c_spinlock[i2c_num]);
    I2C[i2c_num]->fifo_conf.tx_fifo_rst = 1;
    I2C[i2c_num]->fifo_conf.tx_fifo_rst = 0;
    vTaskExitCritical(&i2c_spinlock[i2c_num]);
    return 0;
}

esp_err_t i2c_reset_rx_fifo(i2c_port_t i2c_num)
{
    if(!(i2c_num < I2C_NUM_MAX)) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 391, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 391, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 391, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 391, __FUNCTION__, "i2c number error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 391, __FUNCTION__, "i2c number error"); } } while(0); } while(0); return (0x102); };
    vTaskEnterCritical(&i2c_spinlock[i2c_num]);
    I2C[i2c_num]->fifo_conf.rx_fifo_rst = 1;
    I2C[i2c_num]->fifo_conf.rx_fifo_rst = 0;
    vTaskExitCritical(&i2c_spinlock[i2c_num]);
    return 0;
}

static void __attribute__((section(".iram1"))) i2c_isr_handler_default(void* arg)
{
    i2c_obj_t* p_i2c = (i2c_obj_t*) arg;
    int i2c_num = p_i2c->i2c_num;
    uint32_t status = I2C[i2c_num]->int_status.val;
    int idx = 0;

    int HPTaskAwoken = ( ( BaseType_t ) 0 );
    while (status != 0) {
        status = I2C[i2c_num]->int_status.val;
        if (status & ((1UL << (12)))) {
            I2C[i2c_num]->int_clr.tx_send_empty = 1;
        } else if (status & ((1UL << (11)))) {
            I2C[i2c_num]->int_clr.rx_rec_full = 1;
        } else if (status & ((1UL << (10)))) {
            I2C[i2c_num]->int_ena.ack_err = 0;
            I2C[i2c_num]->int_clr.ack_err = 1;
            if (p_i2c->mode == I2C_MODE_MASTER) {
                p_i2c_obj[i2c_num]->status = I2C_STATUS_ACK_ERROR;
                I2C[i2c_num]->int_clr.ack_err = 1;

                i2c_master_cmd_begin_static(i2c_num);
            }
        } else if (status & ((1UL << (9)))) {
            I2C[i2c_num]->int_clr.trans_start = 1;
        } else if (status & ((1UL << (8)))) {
            I2C[i2c_num]->int_ena.time_out = 0;
            I2C[i2c_num]->int_clr.time_out = 1;
            p_i2c_obj[i2c_num]->status = I2C_STATUS_TIMEOUT;
            i2c_master_cmd_begin_static(i2c_num);
        } else if (status & ((1UL << (7)))) {
            I2C[i2c_num]->int_clr.trans_complete = 1;
            if (p_i2c->mode == I2C_MODE_SLAVE) {
                int rx_fifo_cnt = I2C[i2c_num]->status_reg.rx_fifo_cnt;
                for (idx = 0; idx < rx_fifo_cnt; idx++) {
                    p_i2c->data_buf[idx] = I2C[i2c_num]->fifo_data.data;
                }
                xRingbufferSendFromISR(p_i2c->rx_ring_buf, p_i2c->data_buf, rx_fifo_cnt, &HPTaskAwoken);
                I2C[i2c_num]->int_clr.rx_fifo_full = 1;
            } else {

                if (p_i2c->status != I2C_STATUS_ACK_ERROR && p_i2c->status != I2C_STATUS_IDLE) {
                    i2c_master_cmd_begin_static(i2c_num);
                }
            }
        } else if (status & ((1UL << (6)))) {
            I2C[i2c_num]->int_clr.master_tran_comp = 1;
        } else if (status & ((1UL << (5)))) {
            I2C[i2c_num]->int_clr.arbitration_lost = 1;
            p_i2c_obj[i2c_num]->status = I2C_STATUS_TIMEOUT;
            i2c_master_cmd_begin_static(i2c_num);
        } else if (status & ((1UL << (4)))) {
            I2C[i2c_num]->int_clr.slave_tran_comp = 1;
        } else if (status & ((1UL << (3)))) {
            I2C[i2c_num]->int_ena.end_detect = 0;
            I2C[i2c_num]->int_clr.end_detect = 1;
            i2c_master_cmd_begin_static(i2c_num);
        } else if (status & ((1UL << (2)))) {
            I2C[i2c_num]->int_clr.rx_fifo_ovf = 1;
        } else if (status & ((1UL << (1)))) {
            int tx_fifo_rem = (32) - I2C[i2c_num]->status_reg.tx_fifo_cnt;
            size_t size = 0;
            uint8_t *data = (uint8_t*) xRingbufferReceiveUpToFromISR(p_i2c->tx_ring_buf, &size, tx_fifo_rem);
            if (data) {
                for (idx = 0; idx < size; idx++) {
                    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x60013000 + (i2c_num) * 0x14000 + 0x001c))) >= 0x3ff00000) && (((0x60013000 + (i2c_num) * 0x14000 + 0x001c))) <= 0x3ff13FFC)), (!(((((0x60013000 + (i2c_num) * 0x14000 + 0x001c))) >= 0x3ff00000) && (((0x60013000 + (i2c_num) * 0x14000 + 0x001c))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!(((((0x60013000 + (i2c_num) * 0x14000 + 0x001c))) >= 0x3ff00000) && (((0x60013000 + (i2c_num) * 0x14000 + 0x001c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 464, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!(((((0x60013000 + (i2c_num) * 0x14000 + 0x001c))) >= 0x3ff00000) && (((0x60013000 + (i2c_num) * 0x14000 + 0x001c))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x60013000 + (i2c_num) * 0x14000 + 0x001c)))) = (uint32_t)(data[idx]); });
                }
                vRingbufferReturnItemFromISR(p_i2c->tx_ring_buf, data, &HPTaskAwoken);
                I2C[i2c_num]->int_ena.tx_fifo_empty = 1;
                I2C[i2c_num]->int_clr.tx_fifo_empty = 1;
            } else {
                I2C[i2c_num]->int_ena.tx_fifo_empty = 0;
                I2C[i2c_num]->int_clr.tx_fifo_empty = 1;
            }
        } else if (status & ((1UL << (0)))) {
            int rx_fifo_cnt = I2C[i2c_num]->status_reg.rx_fifo_cnt;
            for (idx = 0; idx < rx_fifo_cnt; idx++) {
                p_i2c->data_buf[idx] = I2C[i2c_num]->fifo_data.data;
            }
            xRingbufferSendFromISR(p_i2c->rx_ring_buf, p_i2c->data_buf, rx_fifo_cnt, &HPTaskAwoken);
            I2C[i2c_num]->int_clr.rx_fifo_full = 1;
        } else {
            I2C[i2c_num]->int_clr.val = status;
        }
    }
    if (p_i2c->mode == I2C_MODE_MASTER) {
        i2c_cmd_evt_t evt;
        evt.type = (0);
        xQueueGenericSendFromISR( ( p_i2c->cmd_evt_queue ), ( &evt ), ( &HPTaskAwoken ), ( ( BaseType_t ) 0 ) );
    }

    if(HPTaskAwoken == ( ( BaseType_t ) 1 )) {
        {; _frxt_setup_switch();};
    }
}

esp_err_t i2c_set_data_mode(i2c_port_t i2c_num, i2c_trans_mode_t tx_trans_mode, i2c_trans_mode_t rx_trans_mode)
{
    if(!(i2c_num < I2C_NUM_MAX)) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 497, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 497, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 497, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 497, __FUNCTION__, "i2c number error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 497, __FUNCTION__, "i2c number error"); } } while(0); } while(0); return (0x102); };
    if(!(tx_trans_mode < I2C_DATA_MODE_MAX)) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 498, __FUNCTION__, "i2c trans mode error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 498, __FUNCTION__, "i2c trans mode error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 498, __FUNCTION__, "i2c trans mode error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 498, __FUNCTION__, "i2c trans mode error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 498, __FUNCTION__, "i2c trans mode error"); } } while(0); } while(0); return (0x102); };
    if(!(rx_trans_mode < I2C_DATA_MODE_MAX)) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 499, __FUNCTION__, "i2c trans mode error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 499, __FUNCTION__, "i2c trans mode error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 499, __FUNCTION__, "i2c trans mode error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 499, __FUNCTION__, "i2c trans mode error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 499, __FUNCTION__, "i2c trans mode error"); } } while(0); } while(0); return (0x102); };
    vTaskEnterCritical(&i2c_spinlock[i2c_num]);
    I2C[i2c_num]->ctr.rx_lsb_first = rx_trans_mode;
    I2C[i2c_num]->ctr.tx_lsb_first = tx_trans_mode;
    vTaskExitCritical(&i2c_spinlock[i2c_num]);
    return 0;
}

esp_err_t i2c_get_data_mode(i2c_port_t i2c_num, i2c_trans_mode_t *tx_trans_mode, i2c_trans_mode_t *rx_trans_mode)
{
    if(!(i2c_num < I2C_NUM_MAX)) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 509, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 509, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 509, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 509, __FUNCTION__, "i2c number error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 509, __FUNCTION__, "i2c number error"); } } while(0); } while(0); return (0x102); };
    if (tx_trans_mode) {
        *tx_trans_mode = I2C[i2c_num]->ctr.tx_lsb_first;
    }
    if (rx_trans_mode) {
        *rx_trans_mode = I2C[i2c_num]->ctr.rx_lsb_first;
    }
    return 0;
}






static esp_err_t i2c_master_clear_bus(i2c_port_t i2c_num)
{
    if(!(i2c_num < I2C_NUM_MAX)) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 526, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 526, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 526, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 526, __FUNCTION__, "i2c number error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 526, __FUNCTION__, "i2c number error"); } } while(0); } while(0); return (0x102); };
    int sda_in_sig = 0, scl_in_sig = 0;
    if (i2c_num == I2C_NUM_0) {
        sda_in_sig = 30;
        scl_in_sig = 29;
    } else if (i2c_num == I2C_NUM_1) {
        sda_in_sig = 96;
        scl_in_sig = 95;
    }
    int scl_io = GPIO.func_in_sel_cfg[scl_in_sig].func_sel;
    int sda_io = GPIO.func_in_sel_cfg[sda_in_sig].func_sel;
    if(!((((((scl_io < 40 && GPIO_PIN_MUX_REG[scl_io] != 0))) && (scl_io < 34))))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 537, __FUNCTION__, "scl gpio number error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 537, __FUNCTION__, "scl gpio number error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 537, __FUNCTION__, "scl gpio number error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 537, __FUNCTION__, "scl gpio number error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 537, __FUNCTION__, "scl gpio number error"); } } while(0); } while(0); return (0x102); };
    if(!((((sda_io < 40 && GPIO_PIN_MUX_REG[sda_io] != 0))))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 538, __FUNCTION__, "sda gpio number error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 538, __FUNCTION__, "sda gpio number error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 538, __FUNCTION__, "sda gpio number error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 538, __FUNCTION__, "sda gpio number error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 538, __FUNCTION__, "sda gpio number error"); } } while(0); } while(0); return (0x102); };


    gpio_set_direction(scl_io, GPIO_MODE_OUTPUT_OD);
    gpio_set_direction(sda_io, GPIO_MODE_OUTPUT_OD);
    gpio_set_level(scl_io, 1);
    gpio_set_level(sda_io, 1);
    gpio_set_level(sda_io, 0);
    for (int i = 0; i < 9; i++) {
        gpio_set_level(scl_io, 0);
        gpio_set_level(scl_io, 1);
    }
    gpio_set_level(sda_io, 1);
    i2c_set_pin(i2c_num, sda_io, scl_io, 1, 1, I2C_MODE_MASTER);
    return 0;
}





static esp_err_t i2c_hw_fsm_reset(i2c_port_t i2c_num)
{
    if(!(i2c_num < I2C_NUM_MAX)) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 561, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 561, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 561, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 561, __FUNCTION__, "i2c number error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 561, __FUNCTION__, "i2c number error"); } } while(0); } while(0); return (0x102); };
    uint32_t ctr = I2C[i2c_num]->ctr.val;
    uint32_t fifo_conf = I2C[i2c_num]->fifo_conf.val;
    uint32_t scl_low_period = I2C[i2c_num]->scl_low_period.val;
    uint32_t scl_high_period = I2C[i2c_num]->scl_high_period.val;
    uint32_t scl_start_hold = I2C[i2c_num]->scl_start_hold.val;
    uint32_t scl_rstart_setup = I2C[i2c_num]->scl_rstart_setup.val;
    uint32_t scl_stop_hold = I2C[i2c_num]->scl_stop_hold.val;
    uint32_t scl_stop_setup = I2C[i2c_num]->scl_stop_setup.val;
    uint32_t sda_hold = I2C[i2c_num]->sda_hold.val;
    uint32_t sda_sample = I2C[i2c_num]->sda_sample.val;
    uint32_t timeout = I2C[i2c_num]->timeout.val;
    uint32_t scl_filter_cfg = I2C[i2c_num]->scl_filter_cfg.val;
    uint32_t sda_filter_cfg = I2C[i2c_num]->sda_filter_cfg.val;
    uint32_t slave_addr = I2C[i2c_num]->slave_addr.val;


    i2c_hw_disable(i2c_num);
    i2c_master_clear_bus(i2c_num);
    i2c_hw_enable(i2c_num);
    I2C[i2c_num]->int_ena.val = 0;
    I2C[i2c_num]->ctr.val = ctr & (~((1UL << (5))));
    I2C[i2c_num]->fifo_conf.val = fifo_conf;
    I2C[i2c_num]->scl_low_period.val = scl_low_period;
    I2C[i2c_num]->scl_high_period.val = scl_high_period;
    I2C[i2c_num]->scl_start_hold.val = scl_start_hold;
    I2C[i2c_num]->scl_rstart_setup.val = scl_rstart_setup;
    I2C[i2c_num]->scl_stop_hold.val = scl_stop_hold;
    I2C[i2c_num]->scl_stop_setup.val = scl_stop_setup;
    I2C[i2c_num]->sda_hold.val = sda_hold;
    I2C[i2c_num]->sda_sample.val = sda_sample;
    I2C[i2c_num]->timeout.val = timeout;
    I2C[i2c_num]->scl_filter_cfg.val = scl_filter_cfg;
    I2C[i2c_num]->sda_filter_cfg.val = sda_filter_cfg;
    uint32_t intr_mask = ( ((1UL << (7)))
                         | ((1UL << (9)))
                         | ((1UL << (10)))
                         | ((1UL << (2)))
                         | ((1UL << (4)))
                         | ((1UL << (8))));
    if (I2C[i2c_num]->ctr.ms_mode == I2C_MODE_SLAVE) {
        I2C[i2c_num]->slave_addr.val = slave_addr;
        intr_mask |= ( ((1UL << (0))) | ((1UL << (7))));
    } else {
        intr_mask |= ((1UL << (5)));
    }
    I2C[i2c_num]->int_clr.val = intr_mask;
    I2C[i2c_num]->int_ena.val = intr_mask;
    return 0;
}

esp_err_t i2c_param_config(i2c_port_t i2c_num, const i2c_config_t* i2c_conf)
{
    if(!(i2c_num < I2C_NUM_MAX)) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 614, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 614, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 614, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 614, __FUNCTION__, "i2c number error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 614, __FUNCTION__, "i2c number error"); } } while(0); } while(0); return (0x102); };
    if(!(i2c_conf != 
# 615 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
   ((void *)0)
# 615 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
   )) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 615, __FUNCTION__, "i2c null address error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 615, __FUNCTION__, "i2c null address error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 615, __FUNCTION__, "i2c null address error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 615, __FUNCTION__, "i2c null address error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 615, __FUNCTION__, "i2c null address error"); } } while(0); } while(0); return (0x102); };
    if(!(i2c_conf->mode < I2C_MODE_MAX)) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 616, __FUNCTION__, "i2c mode error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 616, __FUNCTION__, "i2c mode error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 616, __FUNCTION__, "i2c mode error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 616, __FUNCTION__, "i2c mode error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 616, __FUNCTION__, "i2c mode error"); } } while(0); } while(0); return (0x102); };

    esp_err_t ret = i2c_set_pin(i2c_num, i2c_conf->sda_io_num, i2c_conf->scl_io_num,
                                i2c_conf->sda_pullup_en, i2c_conf->scl_pullup_en, i2c_conf->mode);
    if (ret != 0) {
        return ret;
    }

    i2c_hw_disable(i2c_num);
    i2c_hw_enable(i2c_num);
    vTaskEnterCritical(&i2c_spinlock[i2c_num]);
    I2C[i2c_num]->ctr.rx_lsb_first = I2C_DATA_MODE_MSB_FIRST;
    I2C[i2c_num]->ctr.tx_lsb_first = I2C_DATA_MODE_MSB_FIRST;
    I2C[i2c_num]->ctr.ms_mode = i2c_conf->mode;
    I2C[i2c_num]->ctr.sda_force_out = 1;
    I2C[i2c_num]->ctr.scl_force_out = 1;
    I2C[i2c_num]->ctr.sample_scl_level = 0;

    if (i2c_conf->mode == I2C_MODE_SLAVE) {
        I2C[i2c_num]->slave_addr.addr = i2c_conf->slave.slave_addr;
        I2C[i2c_num]->slave_addr.en_10bit = i2c_conf->slave.addr_10bit_en;
        I2C[i2c_num]->fifo_conf.nonfifo_en = 0;
        I2C[i2c_num]->fifo_conf.fifo_addr_cfg_en = 0;
        I2C[i2c_num]->fifo_conf.rx_fifo_full_thrhd = (28);
        I2C[i2c_num]->fifo_conf.tx_fifo_empty_thrhd = (5);
        I2C[i2c_num]->ctr.trans_start = 0;
        I2C[i2c_num]->timeout.tout = (32000);

        I2C[i2c_num]->sda_hold.time = (10);
        I2C[i2c_num]->sda_sample.time = (10);
    } else {
        I2C[i2c_num]->fifo_conf.nonfifo_en = 0;
        int cycle = (( 80*1000000 ) / i2c_conf->master.clk_speed);
        int half_cycle = cycle / 2;
        I2C[i2c_num]->timeout.tout = cycle * (8);

        I2C[i2c_num]->sda_hold.time = half_cycle / 2;
        I2C[i2c_num]->sda_sample.time = half_cycle / 2;

        I2C[i2c_num]->scl_low_period.period = half_cycle;
        I2C[i2c_num]->scl_high_period.period = half_cycle;

        I2C[i2c_num]->scl_start_hold.time = half_cycle;
        I2C[i2c_num]->scl_rstart_setup.time = half_cycle;

        I2C[i2c_num]->scl_stop_hold.time = half_cycle;
        I2C[i2c_num]->scl_stop_setup.time = half_cycle;
    }

    vTaskExitCritical(&i2c_spinlock[i2c_num]);
    return 0;
}

esp_err_t i2c_set_period(i2c_port_t i2c_num, int high_period, int low_period)
{
    if(!(i2c_num < I2C_NUM_MAX)) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 671, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 671, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 671, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 671, __FUNCTION__, "i2c number error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 671, __FUNCTION__, "i2c number error"); } } while(0); } while(0); return (0x102); };
    if(!((high_period <= 0x3FFF) && (high_period > 0))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 672, __FUNCTION__, "i2c timing value error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 672, __FUNCTION__, "i2c timing value error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 672, __FUNCTION__, "i2c timing value error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 672, __FUNCTION__, "i2c timing value error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 672, __FUNCTION__, "i2c timing value error"); } } while(0); } while(0); return (0x102); };
    if(!((low_period <= 0x3FFF) && (low_period > 0))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 673, __FUNCTION__, "i2c timing value error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 673, __FUNCTION__, "i2c timing value error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 673, __FUNCTION__, "i2c timing value error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 673, __FUNCTION__, "i2c timing value error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 673, __FUNCTION__, "i2c timing value error"); } } while(0); } while(0); return (0x102); };

    vTaskEnterCritical(&i2c_spinlock[i2c_num]);
    I2C[i2c_num]->scl_high_period.period = high_period;
    I2C[i2c_num]->scl_low_period.period = low_period;
    vTaskExitCritical(&i2c_spinlock[i2c_num]);
    return 0;
}

esp_err_t i2c_get_period(i2c_port_t i2c_num, int* high_period, int* low_period)
{
    if(!(i2c_num < I2C_NUM_MAX)) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 684, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 684, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 684, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 684, __FUNCTION__, "i2c number error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 684, __FUNCTION__, "i2c number error"); } } while(0); } while(0); return (0x102); };
    vTaskEnterCritical(&i2c_spinlock[i2c_num]);
    if (high_period) {
        *high_period = I2C[i2c_num]->scl_high_period.period;
    }
    if (low_period) {
        *low_period = I2C[i2c_num]->scl_low_period.period;
    }
    vTaskExitCritical(&i2c_spinlock[i2c_num]);
    return 0;
}

esp_err_t i2c_set_start_timing(i2c_port_t i2c_num, int setup_time, int hold_time)
{
    if(!(i2c_num < I2C_NUM_MAX)) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 698, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 698, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 698, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 698, __FUNCTION__, "i2c number error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 698, __FUNCTION__, "i2c number error"); } } while(0); } while(0); return (0x102); };
    if(!((hold_time <= 0x3FF) && (hold_time > 0))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 699, __FUNCTION__, "i2c timing value error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 699, __FUNCTION__, "i2c timing value error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 699, __FUNCTION__, "i2c timing value error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 699, __FUNCTION__, "i2c timing value error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 699, __FUNCTION__, "i2c timing value error"); } } while(0); } while(0); return (0x102); };
    if(!((setup_time <= 0x3FF) && (setup_time > 0))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 700, __FUNCTION__, "i2c timing value error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 700, __FUNCTION__, "i2c timing value error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 700, __FUNCTION__, "i2c timing value error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 700, __FUNCTION__, "i2c timing value error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 700, __FUNCTION__, "i2c timing value error"); } } while(0); } while(0); return (0x102); };

    vTaskEnterCritical(&i2c_spinlock[i2c_num]);
    I2C[i2c_num]->scl_start_hold.time = hold_time;
    I2C[i2c_num]->scl_rstart_setup.time = setup_time;
    vTaskExitCritical(&i2c_spinlock[i2c_num]);
    return 0;
}

esp_err_t i2c_get_start_timing(i2c_port_t i2c_num, int* setup_time, int* hold_time)
{
    if(!(i2c_num < I2C_NUM_MAX)) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 711, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 711, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 711, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 711, __FUNCTION__, "i2c number error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 711, __FUNCTION__, "i2c number error"); } } while(0); } while(0); return (0x102); };
    vTaskEnterCritical(&i2c_spinlock[i2c_num]);
    if (hold_time) {
        *hold_time = I2C[i2c_num]->scl_start_hold.time;
    }
    if (setup_time) {
        *setup_time = I2C[i2c_num]->scl_rstart_setup.time;
    }
    vTaskExitCritical(&i2c_spinlock[i2c_num]);
    return 0;
}

esp_err_t i2c_set_stop_timing(i2c_port_t i2c_num, int setup_time, int hold_time)
{
    if(!(i2c_num < I2C_NUM_MAX)) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 725, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 725, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 725, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 725, __FUNCTION__, "i2c number error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 725, __FUNCTION__, "i2c number error"); } } while(0); } while(0); return (0x102); };
    if(!((setup_time <= 0x3FF) && (setup_time > 0))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 726, __FUNCTION__, "i2c timing value error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 726, __FUNCTION__, "i2c timing value error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 726, __FUNCTION__, "i2c timing value error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 726, __FUNCTION__, "i2c timing value error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 726, __FUNCTION__, "i2c timing value error"); } } while(0); } while(0); return (0x102); };
    if(!((hold_time <= 0x3FFF) && (hold_time > 0))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 727, __FUNCTION__, "i2c timing value error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 727, __FUNCTION__, "i2c timing value error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 727, __FUNCTION__, "i2c timing value error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 727, __FUNCTION__, "i2c timing value error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 727, __FUNCTION__, "i2c timing value error"); } } while(0); } while(0); return (0x102); };

    vTaskEnterCritical(&i2c_spinlock[i2c_num]);
    I2C[i2c_num]->scl_stop_hold.time = hold_time;
    I2C[i2c_num]->scl_stop_setup.time = setup_time;
    vTaskExitCritical(&i2c_spinlock[i2c_num]);
    return 0;
}

esp_err_t i2c_get_stop_timing(i2c_port_t i2c_num, int* setup_time, int* hold_time)
{
    if(!(i2c_num < I2C_NUM_MAX)) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 738, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 738, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 738, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 738, __FUNCTION__, "i2c number error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 738, __FUNCTION__, "i2c number error"); } } while(0); } while(0); return (0x102); };
    vTaskEnterCritical(&i2c_spinlock[i2c_num]);
    if (setup_time) {
        *setup_time = I2C[i2c_num]->scl_stop_setup.time;
    }
    if (hold_time) {
        *hold_time = I2C[i2c_num]->scl_stop_hold.time;
    }
    vTaskExitCritical(&i2c_spinlock[i2c_num]);
    return 0;
}

esp_err_t i2c_set_data_timing(i2c_port_t i2c_num, int sample_time, int hold_time)
{
    if(!(i2c_num < I2C_NUM_MAX)) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 752, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 752, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 752, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 752, __FUNCTION__, "i2c number error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 752, __FUNCTION__, "i2c number error"); } } while(0); } while(0); return (0x102); };
    if(!((sample_time <= 0x3FF) && (sample_time > 0))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 753, __FUNCTION__, "i2c timing value error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 753, __FUNCTION__, "i2c timing value error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 753, __FUNCTION__, "i2c timing value error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 753, __FUNCTION__, "i2c timing value error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 753, __FUNCTION__, "i2c timing value error"); } } while(0); } while(0); return (0x102); };
    if(!((hold_time <= 0x3FF) && (hold_time > 0))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 754, __FUNCTION__, "i2c timing value error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 754, __FUNCTION__, "i2c timing value error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 754, __FUNCTION__, "i2c timing value error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 754, __FUNCTION__, "i2c timing value error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 754, __FUNCTION__, "i2c timing value error"); } } while(0); } while(0); return (0x102); };

    vTaskEnterCritical(&i2c_spinlock[i2c_num]);
    I2C[i2c_num]->sda_hold.time = hold_time;
    I2C[i2c_num]->sda_sample.time = sample_time;
    vTaskExitCritical(&i2c_spinlock[i2c_num]);
    return 0;
}

esp_err_t i2c_get_data_timing(i2c_port_t i2c_num, int* sample_time, int* hold_time)
{
    if(!(i2c_num < I2C_NUM_MAX)) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 765, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 765, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 765, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 765, __FUNCTION__, "i2c number error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 765, __FUNCTION__, "i2c number error"); } } while(0); } while(0); return (0x102); };
    vTaskEnterCritical(&i2c_spinlock[i2c_num]);
    if (sample_time) {
        *sample_time = I2C[i2c_num]->sda_sample.time;
    }
    if (hold_time) {
        *hold_time = I2C[i2c_num]->sda_hold.time;
    }
    vTaskExitCritical(&i2c_spinlock[i2c_num]);
    return 0;
}

esp_err_t i2c_set_timeout(i2c_port_t i2c_num, int timeout)
{
    if(!(i2c_num < I2C_NUM_MAX)) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 779, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 779, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 779, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 779, __FUNCTION__, "i2c number error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 779, __FUNCTION__, "i2c number error"); } } while(0); } while(0); return (0x102); };
    if(!((timeout <= 0xFFFFF) && (timeout > 0))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 780, __FUNCTION__, "i2c timing value error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 780, __FUNCTION__, "i2c timing value error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 780, __FUNCTION__, "i2c timing value error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 780, __FUNCTION__, "i2c timing value error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 780, __FUNCTION__, "i2c timing value error"); } } while(0); } while(0); return (0x102); };

    vTaskEnterCritical(&i2c_spinlock[i2c_num]);
    I2C[i2c_num]->timeout.tout = timeout;
    vTaskExitCritical(&i2c_spinlock[i2c_num]);
    return 0;
}

esp_err_t i2c_get_timeout(i2c_port_t i2c_num, int* timeout)
{
    if(!(i2c_num < I2C_NUM_MAX)) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 790, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 790, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 790, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 790, __FUNCTION__, "i2c number error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 790, __FUNCTION__, "i2c number error"); } } while(0); } while(0); return (0x102); };
    if (timeout) {
        *timeout = I2C[i2c_num]->timeout.tout;
    }
    return 0;
}

esp_err_t i2c_isr_register(i2c_port_t i2c_num, void (*fn)(void*), void * arg, int intr_alloc_flags, intr_handle_t *handle)
{
    if(!(i2c_num < I2C_NUM_MAX)) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 799, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 799, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 799, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 799, __FUNCTION__, "i2c number error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 799, __FUNCTION__, "i2c number error"); } } while(0); } while(0); return (0x102); };
    if(!(fn != 
# 800 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
   ((void *)0)
# 800 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
   )) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 800, __FUNCTION__, "i2c null address error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 800, __FUNCTION__, "i2c null address error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 800, __FUNCTION__, "i2c null address error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 800, __FUNCTION__, "i2c null address error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 800, __FUNCTION__, "i2c null address error"); } } while(0); } while(0); return (0x102); };
    esp_err_t ret;
    switch (i2c_num) {
        case I2C_NUM_1:
            ret = esp_intr_alloc(50, intr_alloc_flags, fn, arg, handle);
            break;
        case I2C_NUM_0:
            default:
            ret = esp_intr_alloc(49, intr_alloc_flags, fn, arg, handle);
            break;
    }
    return ret;
}

esp_err_t i2c_isr_free(intr_handle_t handle)
{
    return esp_intr_free(handle);
}

esp_err_t i2c_set_pin(i2c_port_t i2c_num, int sda_io_num, int scl_io_num, gpio_pullup_t sda_pullup_en, gpio_pullup_t scl_pullup_en, i2c_mode_t mode)
{
    if(!(( i2c_num < I2C_NUM_MAX ))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 821, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 821, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 821, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 821, __FUNCTION__, "i2c number error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 821, __FUNCTION__, "i2c number error"); } } while(0); } while(0); return (0x102); };
    if(!(((sda_io_num < 0) || ((((((sda_io_num < 40 && GPIO_PIN_MUX_REG[sda_io_num] != 0))) && (sda_io_num < 34))))))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 822, __FUNCTION__, "sda gpio number error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 822, __FUNCTION__, "sda gpio number error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 822, __FUNCTION__, "sda gpio number error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 822, __FUNCTION__, "sda gpio number error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 822, __FUNCTION__, "sda gpio number error"); } } while(0); } while(0); return (0x102); };
    if(!(scl_io_num < 0 || (((((scl_io_num < 40 && GPIO_PIN_MUX_REG[scl_io_num] != 0))) && (scl_io_num < 34))) || (((scl_io_num < 40 && GPIO_PIN_MUX_REG[scl_io_num] != 0)) && mode == I2C_MODE_SLAVE))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG,



 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
# 823 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
    ,



 827
# 823 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
    , __FUNCTION__, "scl gpio number error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG,



 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
# 823 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
    ,



 827
# 823 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
    , __FUNCTION__, "scl gpio number error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG,



 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
# 823 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
    ,



 827
# 823 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
    , __FUNCTION__, "scl gpio number error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG,



 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
# 823 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
    ,



 827
# 823 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
    , __FUNCTION__, "scl gpio number error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG,



 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
# 823 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
    ,



 827
# 823 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
    , __FUNCTION__, "scl gpio number error"); } } while(0); } while(0); return (0x102); }



                                  ;
    if(!(sda_io_num < 0 || (sda_pullup_en == GPIO_PULLUP_ENABLE && ((((sda_io_num < 40 && GPIO_PIN_MUX_REG[sda_io_num] != 0))) && (sda_io_num < 34))) || sda_pullup_en == GPIO_PULLUP_DISABLE)) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG,

 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
# 828 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
    ,

 830
# 828 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
    , __FUNCTION__, "this i2c pin does not support internal pull-up"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG,

 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
# 828 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
    ,

 830
# 828 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
    , __FUNCTION__, "this i2c pin does not support internal pull-up"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG,

 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
# 828 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
    ,

 830
# 828 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
    , __FUNCTION__, "this i2c pin does not support internal pull-up"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG,

 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
# 828 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
    ,

 830
# 828 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
    , __FUNCTION__, "this i2c pin does not support internal pull-up"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG,

 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
# 828 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
    ,

 830
# 828 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
    , __FUNCTION__, "this i2c pin does not support internal pull-up"); } } while(0); } while(0); return (0x102); }

                                                                                                  ;
    if(!(scl_io_num < 0 || (scl_pullup_en == GPIO_PULLUP_ENABLE && ((((scl_io_num < 40 && GPIO_PIN_MUX_REG[scl_io_num] != 0))) && (scl_io_num < 34))) || scl_pullup_en == GPIO_PULLUP_DISABLE)) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG,

 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
# 831 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
    ,

 833
# 831 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
    , __FUNCTION__, "this i2c pin does not support internal pull-up"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG,

 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
# 831 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
    ,

 833
# 831 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
    , __FUNCTION__, "this i2c pin does not support internal pull-up"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG,

 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
# 831 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
    ,

 833
# 831 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
    , __FUNCTION__, "this i2c pin does not support internal pull-up"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG,

 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
# 831 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
    ,

 833
# 831 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
    , __FUNCTION__, "this i2c pin does not support internal pull-up"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG,

 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
# 831 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
    ,

 833
# 831 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
    , __FUNCTION__, "this i2c pin does not support internal pull-up"); } } while(0); } while(0); return (0x102); }

                                                                                                  ;

    int sda_in_sig, sda_out_sig, scl_in_sig, scl_out_sig;
    switch (i2c_num) {
        case I2C_NUM_1:
            sda_out_sig = 96;
            sda_in_sig = 96;
            scl_out_sig = 95;
            scl_in_sig = 95;
            break;
        case I2C_NUM_0:
            default:
            sda_out_sig = 30;
            sda_in_sig = 30;
            scl_out_sig = 29;
            scl_in_sig = 29;
            break;
    }
    if (sda_io_num >= 0) {
        gpio_set_level(sda_io_num, (1));
        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((GPIO_PIN_MUX_REG[sda_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[sda_io_num])) <= 0x3ff13FFC)), (!((((GPIO_PIN_MUX_REG[sda_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[sda_io_num])) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)"); (("(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)" && (!((((GPIO_PIN_MUX_REG[sda_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[sda_io_num])) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 853, __func__, "\"(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)\" && (!((((GPIO_PIN_MUX_REG[sda_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[sda_io_num])) <= 0x3ff13FFC))")); } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((GPIO_PIN_MUX_REG[sda_io_num]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[sda_io_num]))) <= 0x3ff13FFC)), (!(((((GPIO_PIN_MUX_REG[sda_io_num]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[sda_io_num]))) <= 0x3ff13FFC)), 1), "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)"); (("(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)" && (!(((((GPIO_PIN_MUX_REG[sda_io_num]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[sda_io_num]))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 853, __func__, "\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!(((((GPIO_PIN_MUX_REG[sda_io_num]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[sda_io_num]))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((GPIO_PIN_MUX_REG[sda_io_num]))) = (((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((GPIO_PIN_MUX_REG[sda_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[sda_io_num])) <= 0x3ff13FFC)), (!((((GPIO_PIN_MUX_REG[sda_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[sda_io_num])) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!((((GPIO_PIN_MUX_REG[sda_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[sda_io_num])) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 853, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!((((GPIO_PIN_MUX_REG[sda_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[sda_io_num])) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)(GPIO_PIN_MUX_REG[sda_io_num])); }) & ~((0x7) << (12)))|(((2) & (0x7))<<(12)))); })); });
        gpio_set_direction(sda_io_num, GPIO_MODE_INPUT_OUTPUT_OD);

        if (sda_pullup_en == GPIO_PULLUP_ENABLE) {
            gpio_set_pull_mode(sda_io_num, GPIO_PULLUP_ONLY);
        } else {
            gpio_set_pull_mode(sda_io_num, GPIO_FLOATING);
        }
        gpio_matrix_out(sda_io_num, sda_out_sig, 0, 0);
        gpio_matrix_in(sda_io_num, sda_in_sig, 0);
    }

    if (scl_io_num >= 0) {
        gpio_set_level(scl_io_num, (1));
        ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((GPIO_PIN_MUX_REG[scl_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[scl_io_num])) <= 0x3ff13FFC)), (!((((GPIO_PIN_MUX_REG[scl_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[scl_io_num])) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)"); (("(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)" && (!((((GPIO_PIN_MUX_REG[scl_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[scl_io_num])) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 867, __func__, "\"(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)\" && (!((((GPIO_PIN_MUX_REG[scl_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[scl_io_num])) <= 0x3ff13FFC))")); } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((GPIO_PIN_MUX_REG[scl_io_num]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[scl_io_num]))) <= 0x3ff13FFC)), (!(((((GPIO_PIN_MUX_REG[scl_io_num]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[scl_io_num]))) <= 0x3ff13FFC)), 1), "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)"); (("(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)" && (!(((((GPIO_PIN_MUX_REG[scl_io_num]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[scl_io_num]))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 867, __func__, "\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!(((((GPIO_PIN_MUX_REG[scl_io_num]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[scl_io_num]))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((GPIO_PIN_MUX_REG[scl_io_num]))) = (((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((GPIO_PIN_MUX_REG[scl_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[scl_io_num])) <= 0x3ff13FFC)), (!((((GPIO_PIN_MUX_REG[scl_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[scl_io_num])) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!((((GPIO_PIN_MUX_REG[scl_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[scl_io_num])) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 867, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!((((GPIO_PIN_MUX_REG[scl_io_num])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[scl_io_num])) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)(GPIO_PIN_MUX_REG[scl_io_num])); }) & ~((0x7) << (12)))|(((2) & (0x7))<<(12)))); })); });
        if (mode == I2C_MODE_MASTER) {
            gpio_set_direction(scl_io_num, GPIO_MODE_INPUT_OUTPUT_OD);
            gpio_matrix_out(scl_io_num, scl_out_sig, 0, 0);
        } else {
            gpio_set_direction(scl_io_num, GPIO_MODE_INPUT);
        }
        if (scl_pullup_en == GPIO_PULLUP_ENABLE) {
            gpio_set_pull_mode(scl_io_num, GPIO_PULLUP_ONLY);
        } else {
            gpio_set_pull_mode(scl_io_num, GPIO_FLOATING);
        }
        gpio_matrix_in(scl_io_num, scl_in_sig, 0);
    }
    return 0;
}

i2c_cmd_handle_t i2c_cmd_link_create()
{

    i2c_cmd_desc_t* cmd_desc = (i2c_cmd_desc_t*) calloc(1, sizeof(i2c_cmd_desc_t));



    return (i2c_cmd_handle_t) cmd_desc;
}

void i2c_cmd_link_delete(i2c_cmd_handle_t cmd_handle)
{
    if (cmd_handle == 
# 896 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
                     ((void *)0)
# 896 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
                         ) {
        return;
    }
    i2c_cmd_desc_t* cmd = (i2c_cmd_desc_t*) cmd_handle;
    while (cmd->free) {
        i2c_cmd_link_t* ptmp = cmd->free;
        cmd->free = cmd->free->next;
        free(ptmp);
    }
    cmd->cur = 
# 905 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
              ((void *)0)
# 905 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
                  ;
    cmd->free = 
# 906 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
               ((void *)0)
# 906 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
                   ;
    cmd->head = 
# 907 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
               ((void *)0)
# 907 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
                   ;
    free(cmd_handle);
    return;
}

static esp_err_t i2c_cmd_link_append(i2c_cmd_handle_t cmd_handle, i2c_cmd_t* cmd)
{
    i2c_cmd_desc_t* cmd_desc = (i2c_cmd_desc_t*) cmd_handle;
    if (cmd_desc->head == 
# 915 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
                         ((void *)0)
# 915 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
                             ) {

        cmd_desc->head = (i2c_cmd_link_t*) calloc(1, sizeof(i2c_cmd_link_t));



        if (cmd_desc->head == 
# 921 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
                             ((void *)0)
# 921 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
                                 ) {
            do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "i2c command link malloc error" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "i2c command link malloc error" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "i2c command link malloc error" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "i2c command link malloc error" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "i2c command link malloc error" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG); } } while(0); } while(0);
            goto err;
        }
        cmd_desc->cur = cmd_desc->head;
        cmd_desc->free = cmd_desc->head;
    } else {

        cmd_desc->cur->next = (i2c_cmd_link_t*) calloc(1, sizeof(i2c_cmd_link_t));



        if (cmd_desc->cur->next == 
# 933 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
                                  ((void *)0)
# 933 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
                                      ) {
            do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "i2c command link malloc error" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "i2c command link malloc error" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "i2c command link malloc error" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "i2c command link malloc error" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "i2c command link malloc error" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG); } } while(0); } while(0);
            goto err;
        }
        cmd_desc->cur = cmd_desc->cur->next;
    }
    memcpy((uint8_t*) &cmd_desc->cur->cmd, (uint8_t*) cmd, sizeof(i2c_cmd_t));
    cmd_desc->cur->next = 
# 940 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
                         ((void *)0)
# 940 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
                             ;
    return 0;

    err:
    return -1;
}

esp_err_t i2c_master_start(i2c_cmd_handle_t cmd_handle)
{
    if(!(cmd_handle != 
# 949 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
   ((void *)0)
# 949 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
   )) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 949, __FUNCTION__, "i2c command link error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 949, __FUNCTION__, "i2c command link error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 949, __FUNCTION__, "i2c command link error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 949, __FUNCTION__, "i2c command link error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 949, __FUNCTION__, "i2c command link error"); } } while(0); } while(0); return (0x102); };
    i2c_cmd_t cmd;
    cmd.ack_en = 0;
    cmd.ack_exp = 0;
    cmd.ack_val = 0;
    cmd.byte_num = 0;
    cmd.data = 
# 955 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
              ((void *)0)
# 955 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
                  ;
    cmd.op_code = I2C_CMD_RESTART;
    return i2c_cmd_link_append(cmd_handle, &cmd);
}

esp_err_t i2c_master_stop(i2c_cmd_handle_t cmd_handle)
{
    if(!(cmd_handle != 
# 962 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
   ((void *)0)
# 962 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
   )) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 962, __FUNCTION__, "i2c command link error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 962, __FUNCTION__, "i2c command link error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 962, __FUNCTION__, "i2c command link error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 962, __FUNCTION__, "i2c command link error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 962, __FUNCTION__, "i2c command link error"); } } while(0); } while(0); return (0x102); };
    i2c_cmd_t cmd;
    cmd.ack_en = 0;
    cmd.ack_exp = 0;
    cmd.ack_val = 0;
    cmd.byte_num = 0;
    cmd.data = 
# 968 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
              ((void *)0)
# 968 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
                  ;
    cmd.op_code = I2C_CMD_STOP;
    return i2c_cmd_link_append(cmd_handle, &cmd);
}

esp_err_t i2c_master_write(i2c_cmd_handle_t cmd_handle, uint8_t* data, size_t data_len, 
# 973 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
                                                                                       _Bool 
# 973 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
                                                                                            ack_en)
{
    if(!((data != 
# 975 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
   ((void *)0)
# 975 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
   ))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 975, __FUNCTION__, "i2c null address error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 975, __FUNCTION__, "i2c null address error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 975, __FUNCTION__, "i2c null address error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 975, __FUNCTION__, "i2c null address error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 975, __FUNCTION__, "i2c null address error"); } } while(0); } while(0); return (0x102); };
    if(!(cmd_handle != 
# 976 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
   ((void *)0)
# 976 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
   )) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 976, __FUNCTION__, "i2c command link error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 976, __FUNCTION__, "i2c command link error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 976, __FUNCTION__, "i2c command link error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 976, __FUNCTION__, "i2c command link error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 976, __FUNCTION__, "i2c command link error"); } } while(0); } while(0); return (0x102); };

    uint8_t len_tmp;
    int data_offset = 0;
    esp_err_t ret;
    while (data_len > 0) {
        len_tmp = data_len > 0xff ? 0xff : data_len;
        data_len -= len_tmp;
        i2c_cmd_t cmd;
        cmd.ack_en = ack_en;
        cmd.ack_exp = 0;
        cmd.ack_val = 0;
        cmd.byte_num = len_tmp;
        cmd.op_code = I2C_CMD_WRITE;
        cmd.data = data + data_offset;
        ret = i2c_cmd_link_append(cmd_handle, &cmd);
        data_offset += len_tmp;
        if (ret != 0) {
            return ret;
        }
    }
    return 0;
}

esp_err_t i2c_master_write_byte(i2c_cmd_handle_t cmd_handle, uint8_t data, 
# 1000 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
                                                                          _Bool 
# 1000 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
                                                                               ack_en)
{
    if(!(cmd_handle != 
# 1002 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
   ((void *)0)
# 1002 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
   )) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1002, __FUNCTION__, "i2c command link error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1002, __FUNCTION__, "i2c command link error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1002, __FUNCTION__, "i2c command link error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1002, __FUNCTION__, "i2c command link error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1002, __FUNCTION__, "i2c command link error"); } } while(0); } while(0); return (0x102); };
    i2c_cmd_t cmd;
    cmd.ack_en = ack_en;
    cmd.ack_exp = 0;
    cmd.ack_val = 0;
    cmd.byte_num = 1;
    cmd.op_code = I2C_CMD_WRITE;
    cmd.data = 
# 1009 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
              ((void *)0)
# 1009 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
                  ;
    cmd.byte_cmd = data;
    return i2c_cmd_link_append(cmd_handle, &cmd);
}

static esp_err_t i2c_master_read_static(i2c_cmd_handle_t cmd_handle, uint8_t* data, size_t data_len, i2c_ack_type_t ack)
{
    int len_tmp;
    int data_offset = 0;
    esp_err_t ret;
    while (data_len > 0) {
        len_tmp = data_len > 0xff ? 0xff : data_len;
        data_len -= len_tmp;
        i2c_cmd_t cmd;
        cmd.ack_en = 0;
        cmd.ack_exp = 0;
        cmd.ack_val = ack & 0x1;
        cmd.byte_num = len_tmp;
        cmd.op_code = I2C_CMD_READ;
        cmd.data = data + data_offset;
        ret = i2c_cmd_link_append(cmd_handle, &cmd);
        data_offset += len_tmp;
        if (ret != 0) {
            return ret;
        }
    }
    return 0;
}

esp_err_t i2c_master_read_byte(i2c_cmd_handle_t cmd_handle, uint8_t* data, i2c_ack_type_t ack)
{
    if(!((data != 
# 1040 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
   ((void *)0)
# 1040 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
   ))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1040, __FUNCTION__, "i2c null address error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1040, __FUNCTION__, "i2c null address error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1040, __FUNCTION__, "i2c null address error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1040, __FUNCTION__, "i2c null address error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1040, __FUNCTION__, "i2c null address error"); } } while(0); } while(0); return (0x102); };
    if(!(cmd_handle != 
# 1041 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
   ((void *)0)
# 1041 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
   )) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1041, __FUNCTION__, "i2c command link error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1041, __FUNCTION__, "i2c command link error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1041, __FUNCTION__, "i2c command link error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1041, __FUNCTION__, "i2c command link error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1041, __FUNCTION__, "i2c command link error"); } } while(0); } while(0); return (0x102); };
    if(!(ack < I2C_MASTER_ACK_MAX)) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1042, __FUNCTION__, "i2c ack type error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1042, __FUNCTION__, "i2c ack type error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1042, __FUNCTION__, "i2c ack type error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1042, __FUNCTION__, "i2c ack type error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1042, __FUNCTION__, "i2c ack type error"); } } while(0); } while(0); return (0x102); };

    i2c_cmd_t cmd;
    cmd.ack_en = 0;
    cmd.ack_exp = 0;
    cmd.ack_val = ((ack == I2C_MASTER_LAST_NACK) ? I2C_MASTER_NACK : (ack & 0x1));
    cmd.byte_num = 1;
    cmd.op_code = I2C_CMD_READ;
    cmd.data = data;
    return i2c_cmd_link_append(cmd_handle, &cmd);
}

esp_err_t i2c_master_read(i2c_cmd_handle_t cmd_handle, uint8_t* data, size_t data_len, i2c_ack_type_t ack)
{
    if(!((data != 
# 1056 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
   ((void *)0)
# 1056 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
   ))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1056, __FUNCTION__, "i2c null address error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1056, __FUNCTION__, "i2c null address error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1056, __FUNCTION__, "i2c null address error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1056, __FUNCTION__, "i2c null address error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1056, __FUNCTION__, "i2c null address error"); } } while(0); } while(0); return (0x102); };
    if(!(cmd_handle != 
# 1057 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
   ((void *)0)
# 1057 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
   )) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1057, __FUNCTION__, "i2c command link error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1057, __FUNCTION__, "i2c command link error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1057, __FUNCTION__, "i2c command link error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1057, __FUNCTION__, "i2c command link error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1057, __FUNCTION__, "i2c command link error"); } } while(0); } while(0); return (0x102); };
    if(!(ack < I2C_MASTER_ACK_MAX)) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1058, __FUNCTION__, "i2c ack type error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1058, __FUNCTION__, "i2c ack type error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1058, __FUNCTION__, "i2c ack type error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1058, __FUNCTION__, "i2c ack type error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1058, __FUNCTION__, "i2c ack type error"); } } while(0); } while(0); return (0x102); };
    if(!(data_len > 0)) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1059, __FUNCTION__, "i2c data read length error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1059, __FUNCTION__, "i2c data read length error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1059, __FUNCTION__, "i2c data read length error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1059, __FUNCTION__, "i2c data read length error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1059, __FUNCTION__, "i2c data read length error"); } } while(0); } while(0); return (0x102); };

    if(ack != I2C_MASTER_LAST_NACK) {
        return i2c_master_read_static(cmd_handle, data, data_len, ack);
    } else {
        if(data_len == 1) {
            return i2c_master_read_byte(cmd_handle, data, I2C_MASTER_NACK);
        } else {
            esp_err_t ret;
            if((ret = i2c_master_read_static(cmd_handle, data, data_len - 1, I2C_MASTER_ACK)) != 0) {
                return ret;
            }
            return i2c_master_read_byte(cmd_handle, data + data_len - 1, I2C_MASTER_NACK);
        }
    }
}

static void __attribute__((section(".iram1"))) i2c_master_cmd_begin_static(i2c_port_t i2c_num)
{
    i2c_obj_t* p_i2c = p_i2c_obj[i2c_num];
    int HPTaskAwoken = ( ( BaseType_t ) 0 );
    i2c_cmd_evt_t evt;

    if (p_i2c->mode == I2C_MODE_SLAVE) {
        return;
    }
    if (p_i2c->status == I2C_STATUS_DONE) {
        return;
    } else if ((p_i2c->status == I2C_STATUS_ACK_ERROR)
            || (p_i2c->status == I2C_STATUS_TIMEOUT)) {
        I2C[i2c_num]->int_ena.end_detect = 0;
        I2C[i2c_num]->int_clr.end_detect = 1;
        if(p_i2c->status == I2C_STATUS_TIMEOUT) {
            I2C[i2c_num]->int_clr.time_out = 1;
            I2C[i2c_num]->int_ena.val = 0;
        }
        evt.type = (1);
        xQueueGenericSendFromISR( ( p_i2c->cmd_evt_queue ), ( &evt ), ( &HPTaskAwoken ), ( ( BaseType_t ) 2 ) );
        if (HPTaskAwoken == ( ( BaseType_t ) 1 )) {
            {; _frxt_setup_switch();};
        }
        return;
    } else if (p_i2c->cmd_link.head != 
# 1101 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
                                      ((void *)0) 
# 1101 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
                                           && p_i2c->status == I2C_STATUS_READ) {
        i2c_cmd_t *cmd = &p_i2c->cmd_link.head->cmd;
        while (p_i2c->rx_cnt-- > 0) {
            *cmd->data++ = ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x60013000 + (i2c_num) * 0x14000 + 0x001c))) >= 0x3ff00000) && (((0x60013000 + (i2c_num) * 0x14000 + 0x001c))) <= 0x3ff13FFC)), (!(((((0x60013000 + (i2c_num) * 0x14000 + 0x001c))) >= 0x3ff00000) && (((0x60013000 + (i2c_num) * 0x14000 + 0x001c))) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!(((((0x60013000 + (i2c_num) * 0x14000 + 0x001c))) >= 0x3ff00000) && (((0x60013000 + (i2c_num) * 0x14000 + 0x001c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1104, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!(((((0x60013000 + (i2c_num) * 0x14000 + 0x001c))) >= 0x3ff00000) && (((0x60013000 + (i2c_num) * 0x14000 + 0x001c))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x60013000 + (i2c_num) * 0x14000 + 0x001c)))); });
        }
        if (cmd->byte_num > 0) {
            p_i2c->rx_fifo_remain = (32);
            p_i2c->cmd_idx = 0;
        } else {
            p_i2c->cmd_link.head = p_i2c->cmd_link.head->next;
        }
    }
    if (p_i2c->cmd_link.head == 
# 1113 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
                               ((void *)0)
# 1113 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
                                   ) {
        p_i2c->cmd_link.cur = 
# 1114 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
                             ((void *)0)
# 1114 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
                                 ;
        evt.type = (1);
        xQueueGenericSendFromISR( ( p_i2c->cmd_evt_queue ), ( &evt ), ( &HPTaskAwoken ), ( ( BaseType_t ) 2 ) );
        if (HPTaskAwoken == ( ( BaseType_t ) 1 )) {
            {; _frxt_setup_switch();};
        }

        p_i2c->status = I2C_STATUS_IDLE;
        return;
    }
    while (p_i2c->cmd_link.head) {
        i2c_cmd_t *cmd = &p_i2c->cmd_link.head->cmd;
        I2C[i2c_num]->command[p_i2c->cmd_idx].val = 0;
        I2C[i2c_num]->command[p_i2c->cmd_idx].ack_en = cmd->ack_en;
        I2C[i2c_num]->command[p_i2c->cmd_idx].ack_exp = cmd->ack_exp;
        I2C[i2c_num]->command[p_i2c->cmd_idx].ack_val = cmd->ack_val;
        I2C[i2c_num]->command[p_i2c->cmd_idx].byte_num = cmd->byte_num;
        I2C[i2c_num]->command[p_i2c->cmd_idx].op_code = cmd->op_code;
        if (cmd->op_code == I2C_CMD_WRITE) {
            uint32_t wr_filled = 0;

            if (cmd->data) {
                while (p_i2c->tx_fifo_remain > 0 && cmd->byte_num > 0) {
                    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x60013000 + (i2c_num) * 0x14000 + 0x001c))) >= 0x3ff00000) && (((0x60013000 + (i2c_num) * 0x14000 + 0x001c))) <= 0x3ff13FFC)), (!(((((0x60013000 + (i2c_num) * 0x14000 + 0x001c))) >= 0x3ff00000) && (((0x60013000 + (i2c_num) * 0x14000 + 0x001c))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!(((((0x60013000 + (i2c_num) * 0x14000 + 0x001c))) >= 0x3ff00000) && (((0x60013000 + (i2c_num) * 0x14000 + 0x001c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1137, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!(((((0x60013000 + (i2c_num) * 0x14000 + 0x001c))) >= 0x3ff00000) && (((0x60013000 + (i2c_num) * 0x14000 + 0x001c))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x60013000 + (i2c_num) * 0x14000 + 0x001c)))) = (uint32_t)(*cmd->data++); });
                    p_i2c->tx_fifo_remain--;
                    cmd->byte_num--;
                    wr_filled++;
                }
            } else {
                ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((0x60013000 + (i2c_num) * 0x14000 + 0x001c))) >= 0x3ff00000) && (((0x60013000 + (i2c_num) * 0x14000 + 0x001c))) <= 0x3ff13FFC)), (!(((((0x60013000 + (i2c_num) * 0x14000 + 0x001c))) >= 0x3ff00000) && (((0x60013000 + (i2c_num) * 0x14000 + 0x001c))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!(((((0x60013000 + (i2c_num) * 0x14000 + 0x001c))) >= 0x3ff00000) && (((0x60013000 + (i2c_num) * 0x14000 + 0x001c))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1143, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!(((((0x60013000 + (i2c_num) * 0x14000 + 0x001c))) >= 0x3ff00000) && (((0x60013000 + (i2c_num) * 0x14000 + 0x001c))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((0x60013000 + (i2c_num) * 0x14000 + 0x001c)))) = (uint32_t)(cmd->byte_cmd); });
                p_i2c->tx_fifo_remain--;
                cmd->byte_num--;
                wr_filled ++;
            }

            I2C[i2c_num]->command[p_i2c->cmd_idx].byte_num = wr_filled;
            I2C[i2c_num]->command[p_i2c->cmd_idx + 1].val = 0;
            I2C[i2c_num]->command[p_i2c->cmd_idx + 1].op_code = I2C_CMD_END;
            p_i2c->tx_fifo_remain = (32);
            p_i2c->cmd_idx = 0;
            if (cmd->byte_num > 0) {
            } else {
                p_i2c->cmd_link.head = p_i2c->cmd_link.head->next;
            }
            p_i2c->status = I2C_STATUS_WRITE;
            break;
        } else if(cmd->op_code == I2C_CMD_READ) {

            p_i2c->rx_cnt = cmd->byte_num > p_i2c->rx_fifo_remain ? p_i2c->rx_fifo_remain : cmd->byte_num;
            cmd->byte_num -= p_i2c->rx_cnt;
            I2C[i2c_num]->command[p_i2c->cmd_idx].byte_num = p_i2c->rx_cnt;
            I2C[i2c_num]->command[p_i2c->cmd_idx].ack_val = cmd->ack_val;
            I2C[i2c_num]->command[p_i2c->cmd_idx + 1].val = 0;
            I2C[i2c_num]->command[p_i2c->cmd_idx + 1].op_code = I2C_CMD_END;
            p_i2c->status = I2C_STATUS_READ;
            break;
        } else {
        }
        p_i2c->cmd_idx++;
        p_i2c->cmd_link.head = p_i2c->cmd_link.head->next;
        if (p_i2c->cmd_link.head == 
# 1174 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
                                   ((void *)0) 
# 1174 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
                                        || p_i2c->cmd_idx >= 15) {
            p_i2c->tx_fifo_remain = (32);
            p_i2c->cmd_idx = 0;
            break;
        }
    }
    I2C[i2c_num]->int_clr.end_detect = 1;
    I2C[i2c_num]->int_ena.end_detect = 1;
    I2C[i2c_num]->ctr.trans_start = 0;
    I2C[i2c_num]->ctr.trans_start = 1;
    return;
}
# 1204 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
esp_err_t i2c_master_cmd_begin(i2c_port_t i2c_num, i2c_cmd_handle_t cmd_handle, TickType_t ticks_to_wait)
{
    if(!(( i2c_num < I2C_NUM_MAX ))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1206, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1206, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1206, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1206, __FUNCTION__, "i2c number error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1206, __FUNCTION__, "i2c number error"); } } while(0); } while(0); return (0x102); };
    if(!(p_i2c_obj[i2c_num] != 
# 1207 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
   ((void *)0)
# 1207 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
   )) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1207, __FUNCTION__, "i2c driver not installed"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1207, __FUNCTION__, "i2c driver not installed"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1207, __FUNCTION__, "i2c driver not installed"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1207, __FUNCTION__, "i2c driver not installed"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1207, __FUNCTION__, "i2c driver not installed"); } } while(0); } while(0); return (0x103); };
    if(!(p_i2c_obj[i2c_num]->mode == I2C_MODE_MASTER)) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1208, __FUNCTION__, "Only allowed in master mode"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1208, __FUNCTION__, "Only allowed in master mode"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1208, __FUNCTION__, "Only allowed in master mode"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1208, __FUNCTION__, "Only allowed in master mode"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1208, __FUNCTION__, "Only allowed in master mode"); } } while(0); } while(0); return (0x103); };
    if(!(cmd_handle != 
# 1209 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
   ((void *)0)
# 1209 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
   )) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1209, __FUNCTION__, "i2c command link error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1209, __FUNCTION__, "i2c command link error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1209, __FUNCTION__, "i2c command link error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1209, __FUNCTION__, "i2c command link error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1209, __FUNCTION__, "i2c command link error"); } } while(0); } while(0); return (0x102); };
# 1222 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
    static uint8_t clear_bus_cnt = 0;
    esp_err_t ret = -1;
    i2c_obj_t* p_i2c = p_i2c_obj[i2c_num];
    TickType_t ticks_start = xTaskGetTickCount();
    int res = xQueueGenericReceive( ( QueueHandle_t ) ( p_i2c->cmd_mux ), 
# 1226 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
                       ((void *)0)
# 1226 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
                       , ( ticks_to_wait ), ( ( BaseType_t ) 0 ) );
    if (res == ( ( BaseType_t ) 0 )) {
        return 0x107;
    }
    xQueueGenericReset( p_i2c->cmd_evt_queue, ( ( BaseType_t ) 0 ) );
    if (p_i2c->status == I2C_STATUS_TIMEOUT
        || I2C[i2c_num]->status_reg.bus_busy == 1) {
        i2c_hw_fsm_reset(i2c_num);
        clear_bus_cnt = 0;
    }
    i2c_reset_tx_fifo(i2c_num);
    i2c_reset_rx_fifo(i2c_num);
    i2c_cmd_desc_t* cmd = (i2c_cmd_desc_t*) cmd_handle;
    p_i2c->cmd_link.free = cmd->free;
    p_i2c->cmd_link.cur = cmd->cur;
    p_i2c->cmd_link.head = cmd->head;
    p_i2c->status = I2C_STATUS_IDLE;
    p_i2c->cmd_idx = 0;
    p_i2c->rx_cnt = 0;
    p_i2c->tx_fifo_remain = (32);
    p_i2c->rx_fifo_remain = (32);
    i2c_reset_tx_fifo(i2c_num);
    i2c_reset_rx_fifo(i2c_num);


    I2C[i2c_num]->int_ena.ack_err = 1;
    I2C[i2c_num]->int_ena.time_out = 1;

    i2c_master_cmd_begin_static(i2c_num);


    i2c_cmd_evt_t evt;
    while (1) {
        TickType_t wait_time = xTaskGetTickCount();
        if (wait_time - ticks_start > ticks_to_wait) {
            wait_time = (1000 / ( ( TickType_t ) 1000 / ( 100 ) ));
        } else {
            wait_time = ticks_to_wait - (wait_time - ticks_start);
            if (wait_time < (1000 / ( ( TickType_t ) 1000 / ( 100 ) ))) {
                wait_time = (1000 / ( ( TickType_t ) 1000 / ( 100 ) ));
            }
        }



        int evt_res = xQueueGenericReceive( ( p_i2c->cmd_evt_queue ), ( &evt ), ( wait_time ), ( ( BaseType_t ) 0 ) );
        if (evt_res == ( ( BaseType_t ) 1 )) {
            if (evt.type == (1)) {
                if (p_i2c->status == I2C_STATUS_TIMEOUT) {


                    i2c_hw_fsm_reset(i2c_num);
                    clear_bus_cnt = 0;
                    ret = 0x107;
                } else if (p_i2c->status == I2C_STATUS_ACK_ERROR) {
                    clear_bus_cnt++;
                    if(clear_bus_cnt >= (10)) {
                        i2c_master_clear_bus(i2c_num);
                        clear_bus_cnt = 0;
                    }
                    ret = -1;
                } else {
                    ret = 0;
                }
                break;
            }
            if (evt.type == (0)) {
            }
        } else {
            ret = 0x107;


            i2c_hw_fsm_reset(i2c_num);
            clear_bus_cnt = 0;
            break;
        }
    }
    p_i2c->status = I2C_STATUS_DONE;
    xQueueGenericSend( ( QueueHandle_t ) ( p_i2c->cmd_mux ), 
# 1304 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
   ((void *)0)
# 1304 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
   , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
    return ret;
}

int i2c_slave_write_buffer(i2c_port_t i2c_num, uint8_t* data, int size, TickType_t ticks_to_wait)
{
    if(!(( i2c_num < I2C_NUM_MAX ))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1310, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1310, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1310, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1310, __FUNCTION__, "i2c number error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1310, __FUNCTION__, "i2c number error"); } } while(0); } while(0); return (-1); };
    if(!((data != 
# 1311 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
   ((void *)0)
# 1311 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
   ))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1311, __FUNCTION__, "i2c null address error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1311, __FUNCTION__, "i2c null address error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1311, __FUNCTION__, "i2c null address error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1311, __FUNCTION__, "i2c null address error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1311, __FUNCTION__, "i2c null address error"); } } while(0); } while(0); return (-1); };
    if(!(p_i2c_obj[i2c_num]->mode == I2C_MODE_SLAVE)) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1312, __FUNCTION__, "Only allowed in slave mode"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1312, __FUNCTION__, "Only allowed in slave mode"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1312, __FUNCTION__, "Only allowed in slave mode"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1312, __FUNCTION__, "Only allowed in slave mode"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1312, __FUNCTION__, "Only allowed in slave mode"); } } while(0); } while(0); return (-1); };
    i2c_obj_t* p_i2c = p_i2c_obj[i2c_num];

    int res;
    int cnt = 0;
    TickType_t ticks_end = xTaskGetTickCount() + ticks_to_wait;

    res = xQueueGenericReceive( ( QueueHandle_t ) ( p_i2c->slv_tx_mux ), 
# 1319 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
         ((void *)0)
# 1319 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
         , ( ticks_to_wait ), ( ( BaseType_t ) 0 ) );
    if (res == ( ( BaseType_t ) 0 )) {
        return 0;
    }
    ticks_to_wait = ticks_end - xTaskGetTickCount();
    res = xRingbufferSend(p_i2c->tx_ring_buf, data, size, ticks_to_wait);
    if (res == ( ( BaseType_t ) 0 )) {
        cnt = 0;
    } else {
        vTaskEnterCritical(&i2c_spinlock[i2c_num]);
        I2C[i2c_num]->int_clr.tx_fifo_empty = 1;
        I2C[i2c_num]->int_ena.tx_fifo_empty = 1;
        vTaskExitCritical(&i2c_spinlock[i2c_num]);
        cnt = size;
    }
    xQueueGenericSend( ( QueueHandle_t ) ( p_i2c->slv_tx_mux ), 
# 1334 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
   ((void *)0)
# 1334 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
   , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
    return cnt;
}

static int i2c_slave_read(i2c_port_t i2c_num, uint8_t* data, size_t max_size, TickType_t ticks_to_wait)
{
    i2c_obj_t* p_i2c = p_i2c_obj[i2c_num];
    size_t size = 0;
    uint8_t* pdata = (uint8_t*) xRingbufferReceiveUpTo(p_i2c->rx_ring_buf, &size, ticks_to_wait, max_size);
    if (pdata && size > 0) {
        memcpy(data, pdata, size);
        vRingbufferReturnItem(p_i2c->rx_ring_buf, pdata);
    }
    return size;
}

int i2c_slave_read_buffer(i2c_port_t i2c_num, uint8_t* data, size_t max_size, TickType_t ticks_to_wait)
{
    if(!(( i2c_num < I2C_NUM_MAX ))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1352, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1352, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1352, __FUNCTION__, "i2c number error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1352, __FUNCTION__, "i2c number error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1352, __FUNCTION__, "i2c number error"); } } while(0); } while(0); return (-1); };
    if(!((data != 
# 1353 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
   ((void *)0)
# 1353 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
   ))) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1353, __FUNCTION__, "i2c null address error"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1353, __FUNCTION__, "i2c null address error"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1353, __FUNCTION__, "i2c null address error"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1353, __FUNCTION__, "i2c null address error"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1353, __FUNCTION__, "i2c null address error"); } } while(0); } while(0); return (-1); };
    if(!(p_i2c_obj[i2c_num]->mode == I2C_MODE_SLAVE)) { do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, I2C_TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1354, __FUNCTION__, "Only allowed in slave mode"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, I2C_TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1354, __FUNCTION__, "Only allowed in slave mode"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, I2C_TAG, "D" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1354, __FUNCTION__, "Only allowed in slave mode"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, I2C_TAG, "V" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1354, __FUNCTION__, "Only allowed in slave mode"); } else { esp_log_write(ESP_LOG_INFO, I2C_TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):%s" "\033[0m" "\n", esp_log_timestamp(), I2C_TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c", 1354, __FUNCTION__, "Only allowed in slave mode"); } } while(0); } while(0); return (-1); };

    i2c_obj_t* p_i2c = p_i2c_obj[i2c_num];
    int res;
    TickType_t ticks_end = xTaskGetTickCount() + ticks_to_wait;
    res = xQueueGenericReceive( ( QueueHandle_t ) ( p_i2c->slv_rx_mux ), 
# 1359 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
         ((void *)0)
# 1359 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
         , ( ticks_to_wait ), ( ( BaseType_t ) 0 ) );
    if (res == ( ( BaseType_t ) 0 )) {
        return 0;
    }
    ticks_to_wait = ticks_end - xTaskGetTickCount();
    int cnt = i2c_slave_read(i2c_num, data, max_size, ticks_to_wait);
    if (cnt > 0) {
        vTaskEnterCritical(&i2c_spinlock[i2c_num]);
        I2C[i2c_num]->int_ena.rx_fifo_full = 1;
        vTaskExitCritical(&i2c_spinlock[i2c_num]);
        ticks_to_wait = ticks_end - xTaskGetTickCount();
        if (cnt < max_size && ticks_to_wait > 0) {
            cnt += i2c_slave_read(i2c_num, data + cnt, max_size - cnt, ticks_to_wait);
        }
    } else {
        cnt = 0;
    }
    xQueueGenericSend( ( QueueHandle_t ) ( p_i2c->slv_rx_mux ), 
# 1376 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c" 3 4
   ((void *)0)
# 1376 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/i2c.c"
   , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
    return cnt;
}
