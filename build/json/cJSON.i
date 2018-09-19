# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
# 1 "D:\\ESP32\\esp-idf-v3.1-rc1\\ESP32_PIC_A2DP\\build\\json//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
# 32 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
#pragma GCC visibility push(default)







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


# 41 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 2
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

# 42 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 2
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

# 43 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 2
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




# 44 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 2
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\float.h" 1 3 4
# 45 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/limits.h" 1
# 131 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/limits.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include-fixed\\limits.h" 1 3 4
# 132 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/limits.h" 2
# 46 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/ctype.h" 1







int isalnum (int __c);
int isalpha (int __c);
int iscntrl (int __c);
int isdigit (int __c);
int isgraph (int __c);
int islower (int __c);
int isprint (int __c);
int ispunct (int __c);
int isspace (int __c);
int isupper (int __c);
int isxdigit (int __c);
int tolower (int __c);
int toupper (int __c);


int isblank (int __c);



int isascii (int __c);
int toascii (int __c);
# 43 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/ctype.h"
const

extern char * const __ctype_ptr__;
# 109 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/ctype.h"
extern const char _ctype_[];


# 47 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 2
# 56 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
#pragma GCC visibility pop


# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.h" 1
# 36 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 37 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.h" 2
# 53 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.h"
typedef struct cJSON
{

    struct cJSON *next;
    struct cJSON *prev;

    struct cJSON *child;


    int type;


    char *valuestring;

    int valueint;

    double valuedouble;


    char *string;
} cJSON;

typedef struct cJSON_Hooks
{
      void *(*malloc_fn)(size_t sz);
      void (*free_fn)(void *ptr);
} cJSON_Hooks;

typedef int cJSON_bool;
# 133 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.h"
const char* cJSON_Version(void);


void cJSON_InitHooks(cJSON_Hooks* hooks);



cJSON * cJSON_Parse(const char *value);


cJSON * cJSON_ParseWithOpts(const char *value, const char **return_parse_end, cJSON_bool require_null_terminated);


char * cJSON_Print(const cJSON *item);

char * cJSON_PrintUnformatted(const cJSON *item);

char * cJSON_PrintBuffered(const cJSON *item, int prebuffer, cJSON_bool fmt);


cJSON_bool cJSON_PrintPreallocated(cJSON *item, char *buffer, const int length, const cJSON_bool format);

void cJSON_Delete(cJSON *c);


int cJSON_GetArraySize(const cJSON *array);

cJSON * cJSON_GetArrayItem(const cJSON *array, int index);

cJSON * cJSON_GetObjectItem(const cJSON * const object, const char * const string);
cJSON * cJSON_GetObjectItemCaseSensitive(const cJSON * const object, const char * const string);
cJSON_bool cJSON_HasObjectItem(const cJSON *object, const char *string);

const char * cJSON_GetErrorPtr(void);


char * cJSON_GetStringValue(cJSON *item);


cJSON_bool cJSON_IsInvalid(const cJSON * const item);
cJSON_bool cJSON_IsFalse(const cJSON * const item);
cJSON_bool cJSON_IsTrue(const cJSON * const item);
cJSON_bool cJSON_IsBool(const cJSON * const item);
cJSON_bool cJSON_IsNull(const cJSON * const item);
cJSON_bool cJSON_IsNumber(const cJSON * const item);
cJSON_bool cJSON_IsString(const cJSON * const item);
cJSON_bool cJSON_IsArray(const cJSON * const item);
cJSON_bool cJSON_IsObject(const cJSON * const item);
cJSON_bool cJSON_IsRaw(const cJSON * const item);


cJSON * cJSON_CreateNull(void);
cJSON * cJSON_CreateTrue(void);
cJSON * cJSON_CreateFalse(void);
cJSON * cJSON_CreateBool(cJSON_bool boolean);
cJSON * cJSON_CreateNumber(double num);
cJSON * cJSON_CreateString(const char *string);

cJSON * cJSON_CreateRaw(const char *raw);
cJSON * cJSON_CreateArray(void);
cJSON * cJSON_CreateObject(void);



cJSON * cJSON_CreateStringReference(const char *string);


cJSON * cJSON_CreateObjectReference(const cJSON *child);
cJSON * cJSON_CreateArrayReference(const cJSON *child);


cJSON * cJSON_CreateIntArray(const int *numbers, int count);
cJSON * cJSON_CreateFloatArray(const float *numbers, int count);
cJSON * cJSON_CreateDoubleArray(const double *numbers, int count);
cJSON * cJSON_CreateStringArray(const char **strings, int count);


void cJSON_AddItemToArray(cJSON *array, cJSON *item);
void cJSON_AddItemToObject(cJSON *object, const char *string, cJSON *item);



void cJSON_AddItemToObjectCS(cJSON *object, const char *string, cJSON *item);

void cJSON_AddItemReferenceToArray(cJSON *array, cJSON *item);
void cJSON_AddItemReferenceToObject(cJSON *object, const char *string, cJSON *item);


cJSON * cJSON_DetachItemViaPointer(cJSON *parent, cJSON * const item);
cJSON * cJSON_DetachItemFromArray(cJSON *array, int which);
void cJSON_DeleteItemFromArray(cJSON *array, int which);
cJSON * cJSON_DetachItemFromObject(cJSON *object, const char *string);
cJSON * cJSON_DetachItemFromObjectCaseSensitive(cJSON *object, const char *string);
void cJSON_DeleteItemFromObject(cJSON *object, const char *string);
void cJSON_DeleteItemFromObjectCaseSensitive(cJSON *object, const char *string);


void cJSON_InsertItemInArray(cJSON *array, int which, cJSON *newitem);
cJSON_bool cJSON_ReplaceItemViaPointer(cJSON * const parent, cJSON * const item, cJSON * replacement);
void cJSON_ReplaceItemInArray(cJSON *array, int which, cJSON *newitem);
void cJSON_ReplaceItemInObject(cJSON *object,const char *string,cJSON *newitem);
void cJSON_ReplaceItemInObjectCaseSensitive(cJSON *object,const char *string,cJSON *newitem);


cJSON * cJSON_Duplicate(const cJSON *item, cJSON_bool recurse);





cJSON_bool cJSON_Compare(const cJSON * const a, const cJSON * const b, const cJSON_bool case_sensitive);


void cJSON_Minify(char *json);



cJSON* cJSON_AddNullToObject(cJSON * const object, const char * const name);
cJSON* cJSON_AddTrueToObject(cJSON * const object, const char * const name);
cJSON* cJSON_AddFalseToObject(cJSON * const object, const char * const name);
cJSON* cJSON_AddBoolToObject(cJSON * const object, const char * const name, const cJSON_bool boolean);
cJSON* cJSON_AddNumberToObject(cJSON * const object, const char * const name, const double number);
cJSON* cJSON_AddStringToObject(cJSON * const object, const char * const name, const char * const string);
cJSON* cJSON_AddRawToObject(cJSON * const object, const char * const name, const char * const raw);
cJSON* cJSON_AddObjectToObject(cJSON * const object, const char * const name);
cJSON* cJSON_AddArrayToObject(cJSON * const object, const char * const name);




double cJSON_SetNumberHelper(cJSON *object, double number);






void * cJSON_malloc(size_t size);
void cJSON_free(void *object);
# 60 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 2





typedef struct {
    const unsigned char *json;
    size_t position;
} error;
static error global_error = { 
# 69 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                             ((void *)0)
# 69 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                 , 0 };

const char * cJSON_GetErrorPtr(void)
{
    return (const char*) (global_error.json + global_error.position);
}

char * cJSON_GetStringValue(cJSON *item) {
    if (!cJSON_IsString(item)) {
        return 
# 78 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
              ((void *)0)
# 78 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                  ;
    }

    return item->valuestring;
}






const char* cJSON_Version(void)
{
    static char version[15];
    sprintf(version, "%i.%i.%i", 1, 7, 1);

    return version;
}


static int case_insensitive_strcmp(const unsigned char *string1, const unsigned char *string2)
{
    if ((string1 == 
# 100 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                   ((void *)0)
# 100 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                       ) || (string2 == 
# 100 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                                        ((void *)0)
# 100 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                            ))
    {
        return 1;
    }

    if (string1 == string2)
    {
        return 0;
    }

    for(; __extension__ ({ __typeof__ (*string1) __x = (*string1); ((((__ctype_ptr__+sizeof(""[__x]))[(int)(__x)])&(01|02))==01) ? (int) __x - 'A' + 'a' : (int) __x;}) == __extension__ ({ __typeof__ (*string2) __x = (*string2); ((((__ctype_ptr__+sizeof(""[__x]))[(int)(__x)])&(01|02))==01) ? (int) __x - 'A' + 'a' : (int) __x;}); (void)string1++, string2++)
    {
        if (*string1 == '\0')
        {
            return 0;
        }
    }

    return __extension__ ({ __typeof__ (*string1) __x = (*string1); ((((__ctype_ptr__+sizeof(""[__x]))[(int)(__x)])&(01|02))==01) ? (int) __x - 'A' + 'a' : (int) __x;}) - __extension__ ({ __typeof__ (*string2) __x = (*string2); ((((__ctype_ptr__+sizeof(""[__x]))[(int)(__x)])&(01|02))==01) ? (int) __x - 'A' + 'a' : (int) __x;});
}

typedef struct internal_hooks
{
    void *(*allocate)(size_t size);
    void (*deallocate)(void *pointer);
    void *(*reallocate)(void *pointer, size_t size);
} internal_hooks;
# 148 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
static internal_hooks global_hooks = { malloc, free, realloc };

static unsigned char* cJSON_strdup(const unsigned char* string, const internal_hooks * const hooks)
{
    size_t length = 0;
    unsigned char *copy = 
# 153 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                         ((void *)0)
# 153 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                             ;

    if (string == 
# 155 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                 ((void *)0)
# 155 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                     )
    {
        return 
# 157 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
              ((void *)0)
# 157 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                  ;
    }

    length = strlen((const char*)string) + sizeof("");
    copy = (unsigned char*)hooks->allocate(length);
    if (copy == 
# 162 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
               ((void *)0)
# 162 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                   )
    {
        return 
# 164 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
              ((void *)0)
# 164 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                  ;
    }
    memcpy(copy, string, length);

    return copy;
}

void cJSON_InitHooks(cJSON_Hooks* hooks)
{
    if (hooks == 
# 173 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                ((void *)0)
# 173 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                    )
    {

        global_hooks.allocate = malloc;
        global_hooks.deallocate = free;
        global_hooks.reallocate = realloc;
        return;
    }

    global_hooks.allocate = malloc;
    if (hooks->malloc_fn != 
# 183 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                           ((void *)0)
# 183 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                               )
    {
        global_hooks.allocate = hooks->malloc_fn;
    }

    global_hooks.deallocate = free;
    if (hooks->free_fn != 
# 189 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                         ((void *)0)
# 189 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                             )
    {
        global_hooks.deallocate = hooks->free_fn;
    }


    global_hooks.reallocate = 
# 195 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                             ((void *)0)
# 195 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                 ;
    if ((global_hooks.allocate == malloc) && (global_hooks.deallocate == free))
    {
        global_hooks.reallocate = realloc;
    }
}


static cJSON *cJSON_New_Item(const internal_hooks * const hooks)
{
    cJSON* node = (cJSON*)hooks->allocate(sizeof(cJSON));
    if (node)
    {
        memset(node, '\0', sizeof(cJSON));
    }

    return node;
}


void cJSON_Delete(cJSON *item)
{
    cJSON *next = 
# 217 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                 ((void *)0)
# 217 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                     ;
    while (item != 
# 218 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                  ((void *)0)
# 218 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                      )
    {
        next = item->next;
        if (!(item->type & 256) && (item->child != 
# 221 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                                                                ((void *)0)
# 221 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                                                    ))
        {
            cJSON_Delete(item->child);
        }
        if (!(item->type & 256) && (item->valuestring != 
# 225 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                                                                      ((void *)0)
# 225 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                                                          ))
        {
            global_hooks.deallocate(item->valuestring);
        }
        if (!(item->type & 512) && (item->string != 
# 229 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                                                                   ((void *)0)
# 229 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                                                       ))
        {
            global_hooks.deallocate(item->string);
        }
        global_hooks.deallocate(item);
        item = next;
    }
}


static unsigned char get_decimal_point(void)
{




    return '.';

}

typedef struct
{
    const unsigned char *content;
    size_t length;
    size_t offset;
    size_t depth;
    internal_hooks hooks;
} parse_buffer;
# 267 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
static cJSON_bool parse_number(cJSON * const item, parse_buffer * const input_buffer)
{
    double number = 0;
    unsigned char *after_end = 
# 270 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                              ((void *)0)
# 270 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                  ;
    unsigned char number_c_string[64];
    unsigned char decimal_point = get_decimal_point();
    size_t i = 0;

    if ((input_buffer == 
# 275 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                        ((void *)0)
# 275 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                            ) || (input_buffer->content == 
# 275 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                                                           ((void *)0)
# 275 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                                               ))
    {
        return ((cJSON_bool)0);
    }




    for (i = 0; (i < (sizeof(number_c_string) - 1)) && ((input_buffer != 
# 283 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                                                      ((void *)0)
# 283 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                                      ) && (((input_buffer)->offset + i) < (input_buffer)->length)); i++)
    {
        switch (((input_buffer)->content + (input_buffer)->offset)[i])
        {
            case '0':
            case '1':
            case '2':
            case '3':
            case '4':
            case '5':
            case '6':
            case '7':
            case '8':
            case '9':
            case '+':
            case '-':
            case 'e':
            case 'E':
                number_c_string[i] = ((input_buffer)->content + (input_buffer)->offset)[i];
                break;

            case '.':
                number_c_string[i] = decimal_point;
                break;

            default:
                goto loop_end;
        }
    }
loop_end:
    number_c_string[i] = '\0';

    number = strtod((const char*)number_c_string, (char**)&after_end);
    if (number_c_string == after_end)
    {
        return ((cJSON_bool)0);
    }

    item->valuedouble = number;


    if (number >= 0x7fffffff)
    {
        item->valueint = 0x7fffffff;
    }
    else if (number <= 
# 328 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                      (-0x7fffffff - 1)
# 328 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                             )
    {
        item->valueint = 
# 330 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                        (-0x7fffffff - 1)
# 330 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                               ;
    }
    else
    {
        item->valueint = (int)number;
    }

    item->type = (1 << 3);

    input_buffer->offset += (size_t)(after_end - number_c_string);
    return ((cJSON_bool)1);
}


double cJSON_SetNumberHelper(cJSON *object, double number)
{
    if (number >= 0x7fffffff)
    {
        object->valueint = 0x7fffffff;
    }
    else if (number <= 
# 350 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                      (-0x7fffffff - 1)
# 350 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                             )
    {
        object->valueint = 
# 352 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                          (-0x7fffffff - 1)
# 352 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                 ;
    }
    else
    {
        object->valueint = (int)number;
    }

    return object->valuedouble = number;
}

typedef struct
{
    unsigned char *buffer;
    size_t length;
    size_t offset;
    size_t depth;
    cJSON_bool noalloc;
    cJSON_bool format;
    internal_hooks hooks;
} printbuffer;


static unsigned char* ensure(printbuffer * const p, size_t needed)
{
    unsigned char *newbuffer = 
# 376 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                              ((void *)0)
# 376 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                  ;
    size_t newsize = 0;

    if ((p == 
# 379 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
             ((void *)0)
# 379 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                 ) || (p->buffer == 
# 379 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                                    ((void *)0)
# 379 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                        ))
    {
        return 
# 381 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
              ((void *)0)
# 381 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                  ;
    }

    if ((p->length > 0) && (p->offset >= p->length))
    {

        return 
# 387 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
              ((void *)0)
# 387 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                  ;
    }

    if (needed > 0x7fffffff)
    {

        return 
# 393 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
              ((void *)0)
# 393 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                  ;
    }

    needed += p->offset + 1;
    if (needed <= p->length)
    {
        return p->buffer + p->offset;
    }

    if (p->noalloc) {
        return 
# 403 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
              ((void *)0)
# 403 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                  ;
    }


    if (needed > (0x7fffffff / 2))
    {

        if (needed <= 0x7fffffff)
        {
            newsize = 0x7fffffff;
        }
        else
        {
            return 
# 416 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                  ((void *)0)
# 416 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                      ;
        }
    }
    else
    {
        newsize = needed * 2;
    }

    if (p->hooks.reallocate != 
# 424 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                              ((void *)0)
# 424 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                  )
    {

        newbuffer = (unsigned char*)p->hooks.reallocate(p->buffer, newsize);
        if (newbuffer == 
# 428 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                        ((void *)0)
# 428 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                            )
        {
            p->hooks.deallocate(p->buffer);
            p->length = 0;
            p->buffer = 
# 432 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                       ((void *)0)
# 432 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                           ;

            return 
# 434 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                  ((void *)0)
# 434 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                      ;
        }
    }
    else
    {

        newbuffer = (unsigned char*)p->hooks.allocate(newsize);
        if (!newbuffer)
        {
            p->hooks.deallocate(p->buffer);
            p->length = 0;
            p->buffer = 
# 445 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                       ((void *)0)
# 445 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                           ;

            return 
# 447 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                  ((void *)0)
# 447 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                      ;
        }
        if (newbuffer)
        {
            memcpy(newbuffer, p->buffer, p->offset + 1);
        }
        p->hooks.deallocate(p->buffer);
    }
    p->length = newsize;
    p->buffer = newbuffer;

    return newbuffer + p->offset;
}


static void update_offset(printbuffer * const buffer)
{
    const unsigned char *buffer_pointer = 
# 464 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                                         ((void *)0)
# 464 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                             ;
    if ((buffer == 
# 465 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                  ((void *)0)
# 465 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                      ) || (buffer->buffer == 
# 465 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                                              ((void *)0)
# 465 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                                  ))
    {
        return;
    }
    buffer_pointer = buffer->buffer + buffer->offset;

    buffer->offset += strlen((const char*)buffer_pointer);
}


static cJSON_bool print_number(const cJSON * const item, printbuffer * const output_buffer)
{
    unsigned char *output_pointer = 
# 477 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                                   ((void *)0)
# 477 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                       ;
    double d = item->valuedouble;
    int length = 0;
    size_t i = 0;
    unsigned char number_buffer[26];
    unsigned char decimal_point = get_decimal_point();
    double test;

    if (output_buffer == 
# 485 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                        ((void *)0)
# 485 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                            )
    {
        return ((cJSON_bool)0);
    }


    if ((d * 0) != 0)
    {
        length = sprintf((char*)number_buffer, "null");
    }
    else
    {

        length = sprintf((char*)number_buffer, "%1.15g", d);


        if ((sscanf((char*)number_buffer, "%lg", &test) != 1) || ((double)test != d))
        {

            length = sprintf((char*)number_buffer, "%1.17g", d);
        }
    }


    if ((length < 0) || (length > (int)(sizeof(number_buffer) - 1)))
    {
        return ((cJSON_bool)0);
    }


    output_pointer = ensure(output_buffer, (size_t)length + sizeof(""));
    if (output_pointer == 
# 516 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                         ((void *)0)
# 516 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                             )
    {
        return ((cJSON_bool)0);
    }



    for (i = 0; i < ((size_t)length); i++)
    {
        if (number_buffer[i] == decimal_point)
        {
            output_pointer[i] = '.';
            continue;
        }

        output_pointer[i] = number_buffer[i];
    }
    output_pointer[i] = '\0';

    output_buffer->offset += (size_t)length;

    return ((cJSON_bool)1);
}


static unsigned parse_hex4(const unsigned char * const input)
{
    unsigned int h = 0;
    size_t i = 0;

    for (i = 0; i < 4; i++)
    {

        if ((input[i] >= '0') && (input[i] <= '9'))
        {
            h += (unsigned int) input[i] - '0';
        }
        else if ((input[i] >= 'A') && (input[i] <= 'F'))
        {
            h += (unsigned int) 10 + input[i] - 'A';
        }
        else if ((input[i] >= 'a') && (input[i] <= 'f'))
        {
            h += (unsigned int) 10 + input[i] - 'a';
        }
        else
        {
            return 0;
        }

        if (i < 3)
        {

            h = h << 4;
        }
    }

    return h;
}



static unsigned char utf16_literal_to_utf8(const unsigned char * const input_pointer, const unsigned char * const input_end, unsigned char **output_pointer)
{
    long unsigned int codepoint = 0;
    unsigned int first_code = 0;
    const unsigned char *first_sequence = input_pointer;
    unsigned char utf8_length = 0;
    unsigned char utf8_position = 0;
    unsigned char sequence_length = 0;
    unsigned char first_byte_mark = 0;

    if ((input_end - first_sequence) < 6)
    {

        goto fail;
    }


    first_code = parse_hex4(first_sequence + 2);


    if (((first_code >= 0xDC00) && (first_code <= 0xDFFF)))
    {
        goto fail;
    }


    if ((first_code >= 0xD800) && (first_code <= 0xDBFF))
    {
        const unsigned char *second_sequence = first_sequence + 6;
        unsigned int second_code = 0;
        sequence_length = 12;

        if ((input_end - second_sequence) < 6)
        {

            goto fail;
        }

        if ((second_sequence[0] != '\\') || (second_sequence[1] != 'u'))
        {

            goto fail;
        }


        second_code = parse_hex4(second_sequence + 2);

        if ((second_code < 0xDC00) || (second_code > 0xDFFF))
        {

            goto fail;
        }



        codepoint = 0x10000 + (((first_code & 0x3FF) << 10) | (second_code & 0x3FF));
    }
    else
    {
        sequence_length = 6;
        codepoint = first_code;
    }




    if (codepoint < 0x80)
    {

        utf8_length = 1;
    }
    else if (codepoint < 0x800)
    {

        utf8_length = 2;
        first_byte_mark = 0xC0;
    }
    else if (codepoint < 0x10000)
    {

        utf8_length = 3;
        first_byte_mark = 0xE0;
    }
    else if (codepoint <= 0x10FFFF)
    {

        utf8_length = 4;
        first_byte_mark = 0xF0;
    }
    else
    {

        goto fail;
    }


    for (utf8_position = (unsigned char)(utf8_length - 1); utf8_position > 0; utf8_position--)
    {

        (*output_pointer)[utf8_position] = (unsigned char)((codepoint | 0x80) & 0xBF);
        codepoint >>= 6;
    }

    if (utf8_length > 1)
    {
        (*output_pointer)[0] = (unsigned char)((codepoint | first_byte_mark) & 0xFF);
    }
    else
    {
        (*output_pointer)[0] = (unsigned char)(codepoint & 0x7F);
    }

    *output_pointer += utf8_length;

    return sequence_length;

fail:
    return 0;
}


static cJSON_bool parse_string(cJSON * const item, parse_buffer * const input_buffer)
{
    const unsigned char *input_pointer = ((input_buffer)->content + (input_buffer)->offset) + 1;
    const unsigned char *input_end = ((input_buffer)->content + (input_buffer)->offset) + 1;
    unsigned char *output_pointer = 
# 703 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                                   ((void *)0)
# 703 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                       ;
    unsigned char *output = 
# 704 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                           ((void *)0)
# 704 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                               ;


    if (((input_buffer)->content + (input_buffer)->offset)[0] != '\"')
    {
        goto fail;
    }

    {

        size_t allocation_length = 0;
        size_t skipped_bytes = 0;
        while (((size_t)(input_end - input_buffer->content) < input_buffer->length) && (*input_end != '\"'))
        {

            if (input_end[0] == '\\')
            {
                if ((size_t)(input_end + 1 - input_buffer->content) >= input_buffer->length)
                {

                    goto fail;
                }
                skipped_bytes++;
                input_end++;
            }
            input_end++;
        }
        if (((size_t)(input_end - input_buffer->content) >= input_buffer->length) || (*input_end != '\"'))
        {
            goto fail;
        }


        allocation_length = (size_t) (input_end - ((input_buffer)->content + (input_buffer)->offset)) - skipped_bytes;
        output = (unsigned char*)input_buffer->hooks.allocate(allocation_length + sizeof(""));
        if (output == 
# 739 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                     ((void *)0)
# 739 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                         )
        {
            goto fail;
        }
    }

    output_pointer = output;

    while (input_pointer < input_end)
    {
        if (*input_pointer != '\\')
        {
            *output_pointer++ = *input_pointer++;
        }

        else
        {
            unsigned char sequence_length = 2;
            if ((input_end - input_pointer) < 1)
            {
                goto fail;
            }

            switch (input_pointer[1])
            {
                case 'b':
                    *output_pointer++ = '\b';
                    break;
                case 'f':
                    *output_pointer++ = '\f';
                    break;
                case 'n':
                    *output_pointer++ = '\n';
                    break;
                case 'r':
                    *output_pointer++ = '\r';
                    break;
                case 't':
                    *output_pointer++ = '\t';
                    break;
                case '\"':
                case '\\':
                case '/':
                    *output_pointer++ = input_pointer[1];
                    break;


                case 'u':
                    sequence_length = utf16_literal_to_utf8(input_pointer, input_end, &output_pointer);
                    if (sequence_length == 0)
                    {

                        goto fail;
                    }
                    break;

                default:
                    goto fail;
            }
            input_pointer += sequence_length;
        }
    }


    *output_pointer = '\0';

    item->type = (1 << 4);
    item->valuestring = (char*)output;

    input_buffer->offset = (size_t) (input_end - input_buffer->content);
    input_buffer->offset++;

    return ((cJSON_bool)1);

fail:
    if (output != 
# 814 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                 ((void *)0)
# 814 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                     )
    {
        input_buffer->hooks.deallocate(output);
    }

    if (input_pointer != 
# 819 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                        ((void *)0)
# 819 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                            )
    {
        input_buffer->offset = (size_t)(input_pointer - input_buffer->content);
    }

    return ((cJSON_bool)0);
}


static cJSON_bool print_string_ptr(const unsigned char * const input, printbuffer * const output_buffer)
{
    const unsigned char *input_pointer = 
# 830 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                                        ((void *)0)
# 830 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                            ;
    unsigned char *output = 
# 831 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                           ((void *)0)
# 831 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                               ;
    unsigned char *output_pointer = 
# 832 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                                   ((void *)0)
# 832 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                       ;
    size_t output_length = 0;

    size_t escape_characters = 0;

    if (output_buffer == 
# 837 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                        ((void *)0)
# 837 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                            )
    {
        return ((cJSON_bool)0);
    }


    if (input == 
# 843 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                ((void *)0)
# 843 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                    )
    {
        output = ensure(output_buffer, sizeof("\"\""));
        if (output == 
# 846 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                     ((void *)0)
# 846 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                         )
        {
            return ((cJSON_bool)0);
        }
        strcpy((char*)output, "\"\"");

        return ((cJSON_bool)1);
    }


    for (input_pointer = input; *input_pointer; input_pointer++)
    {
        switch (*input_pointer)
        {
            case '\"':
            case '\\':
            case '\b':
            case '\f':
            case '\n':
            case '\r':
            case '\t':

                escape_characters++;
                break;
            default:
                if (*input_pointer < 32)
                {

                    escape_characters += 5;
                }
                break;
        }
    }
    output_length = (size_t)(input_pointer - input) + escape_characters;

    output = ensure(output_buffer, output_length + sizeof("\"\""));
    if (output == 
# 882 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                 ((void *)0)
# 882 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                     )
    {
        return ((cJSON_bool)0);
    }


    if (escape_characters == 0)
    {
        output[0] = '\"';
        memcpy(output + 1, input, output_length);
        output[output_length + 1] = '\"';
        output[output_length + 2] = '\0';

        return ((cJSON_bool)1);
    }

    output[0] = '\"';
    output_pointer = output + 1;

    for (input_pointer = input; *input_pointer != '\0'; (void)input_pointer++, output_pointer++)
    {
        if ((*input_pointer > 31) && (*input_pointer != '\"') && (*input_pointer != '\\'))
        {

            *output_pointer = *input_pointer;
        }
        else
        {

            *output_pointer++ = '\\';
            switch (*input_pointer)
            {
                case '\\':
                    *output_pointer = '\\';
                    break;
                case '\"':
                    *output_pointer = '\"';
                    break;
                case '\b':
                    *output_pointer = 'b';
                    break;
                case '\f':
                    *output_pointer = 'f';
                    break;
                case '\n':
                    *output_pointer = 'n';
                    break;
                case '\r':
                    *output_pointer = 'r';
                    break;
                case '\t':
                    *output_pointer = 't';
                    break;
                default:

                    sprintf((char*)output_pointer, "u%04x", *input_pointer);
                    output_pointer += 4;
                    break;
            }
        }
    }
    output[output_length + 1] = '\"';
    output[output_length + 2] = '\0';

    return ((cJSON_bool)1);
}


static cJSON_bool print_string(const cJSON * const item, printbuffer * const p)
{
    return print_string_ptr((unsigned char*)item->valuestring, p);
}


static cJSON_bool parse_value(cJSON * const item, parse_buffer * const input_buffer);
static cJSON_bool print_value(const cJSON * const item, printbuffer * const output_buffer);
static cJSON_bool parse_array(cJSON * const item, parse_buffer * const input_buffer);
static cJSON_bool print_array(const cJSON * const item, printbuffer * const output_buffer);
static cJSON_bool parse_object(cJSON * const item, parse_buffer * const input_buffer);
static cJSON_bool print_object(const cJSON * const item, printbuffer * const output_buffer);


static parse_buffer *buffer_skip_whitespace(parse_buffer * const buffer)
{
    if ((buffer == 
# 966 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                  ((void *)0)
# 966 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                      ) || (buffer->content == 
# 966 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                                               ((void *)0)
# 966 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                                   ))
    {
        return 
# 968 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
              ((void *)0)
# 968 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                  ;
    }

    while (((buffer != 
# 971 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
          ((void *)0)
# 971 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
          ) && (((buffer)->offset + 0) < (buffer)->length)) && (((buffer)->content + (buffer)->offset)[0] <= 32))
    {
       buffer->offset++;
    }

    if (buffer->offset == buffer->length)
    {
        buffer->offset--;
    }

    return buffer;
}


static parse_buffer *skip_utf8_bom(parse_buffer * const buffer)
{
    if ((buffer == 
# 987 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                  ((void *)0)
# 987 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                      ) || (buffer->content == 
# 987 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                                               ((void *)0)
# 987 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                                   ) || (buffer->offset != 0))
    {
        return 
# 989 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
              ((void *)0)
# 989 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                  ;
    }

    if (((buffer != 
# 992 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
       ((void *)0)
# 992 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
       ) && (((buffer)->offset + 4) < (buffer)->length)) && (strncmp((const char*)((buffer)->content + (buffer)->offset), "\xEF\xBB\xBF", 3) == 0))
    {
        buffer->offset += 3;
    }

    return buffer;
}


cJSON * cJSON_ParseWithOpts(const char *value, const char **return_parse_end, cJSON_bool require_null_terminated)
{
    parse_buffer buffer = { 0, 0, 0, 0, { 0, 0, 0 } };
    cJSON *item = 
# 1004 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                 ((void *)0)
# 1004 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                     ;


    global_error.json = 
# 1007 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                       ((void *)0)
# 1007 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                           ;
    global_error.position = 0;

    if (value == 
# 1010 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                ((void *)0)
# 1010 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                    )
    {
        goto fail;
    }

    buffer.content = (const unsigned char*)value;
    buffer.length = strlen((const char*)value) + sizeof("");
    buffer.offset = 0;
    buffer.hooks = global_hooks;

    item = cJSON_New_Item(&global_hooks);
    if (item == 
# 1021 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
               ((void *)0)
# 1021 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                   )
    {
        goto fail;
    }

    if (!parse_value(item, buffer_skip_whitespace(skip_utf8_bom(&buffer))))
    {

        goto fail;
    }


    if (require_null_terminated)
    {
        buffer_skip_whitespace(&buffer);
        if ((buffer.offset >= buffer.length) || ((&buffer)->content + (&buffer)->offset)[0] != '\0')
        {
            goto fail;
        }
    }
    if (return_parse_end)
    {
        *return_parse_end = (const char*)((&buffer)->content + (&buffer)->offset);
    }

    return item;

fail:
    if (item != 
# 1049 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
               ((void *)0)
# 1049 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                   )
    {
        cJSON_Delete(item);
    }

    if (value != 
# 1054 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                ((void *)0)
# 1054 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                    )
    {
        error local_error;
        local_error.json = (const unsigned char*)value;
        local_error.position = 0;

        if (buffer.offset < buffer.length)
        {
            local_error.position = buffer.offset;
        }
        else if (buffer.length > 0)
        {
            local_error.position = buffer.length - 1;
        }

        if (return_parse_end != 
# 1069 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                               ((void *)0)
# 1069 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                   )
        {
            *return_parse_end = (const char*)local_error.json + local_error.position;
        }

        global_error = local_error;
    }

    return 
# 1077 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
          ((void *)0)
# 1077 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
              ;
}


cJSON * cJSON_Parse(const char *value)
{
    return cJSON_ParseWithOpts(value, 0, 0);
}



static unsigned char *print(const cJSON * const item, cJSON_bool format, const internal_hooks * const hooks)
{
    static const size_t default_buffer_size = 256;
    printbuffer buffer[1];
    unsigned char *printed = 
# 1092 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                            ((void *)0)
# 1092 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                ;

    memset(buffer, 0, sizeof(buffer));


    buffer->buffer = (unsigned char*) hooks->allocate(default_buffer_size);
    buffer->length = default_buffer_size;
    buffer->format = format;
    buffer->hooks = *hooks;
    if (buffer->buffer == 
# 1101 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                         ((void *)0)
# 1101 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                             )
    {
        goto fail;
    }


    if (!print_value(item, buffer))
    {
        goto fail;
    }
    update_offset(buffer);


    if (hooks->reallocate != 
# 1114 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                            ((void *)0)
# 1114 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                )
    {
        printed = (unsigned char*) hooks->reallocate(buffer->buffer, buffer->offset + 1);
        buffer->buffer = 
# 1117 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                        ((void *)0)
# 1117 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                            ;
        if (printed == 
# 1118 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                      ((void *)0)
# 1118 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                          ) {
            goto fail;
        }
    }
    else
    {
        printed = (unsigned char*) hooks->allocate(buffer->offset + 1);
        if (printed == 
# 1125 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                      ((void *)0)
# 1125 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                          )
        {
            goto fail;
        }
        memcpy(printed, buffer->buffer, ((buffer->length < buffer->offset + 1) ? buffer->length : buffer->offset + 1));
        printed[buffer->offset] = '\0';


        hooks->deallocate(buffer->buffer);
    }

    return printed;

fail:
    if (buffer->buffer != 
# 1139 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                         ((void *)0)
# 1139 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                             )
    {
        hooks->deallocate(buffer->buffer);
    }

    if (printed != 
# 1144 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                  ((void *)0)
# 1144 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                      )
    {
        hooks->deallocate(printed);
    }

    return 
# 1149 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
          ((void *)0)
# 1149 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
              ;
}


char * cJSON_Print(const cJSON *item)
{
    return (char*)print(item, ((cJSON_bool)1), &global_hooks);
}

char * cJSON_PrintUnformatted(const cJSON *item)
{
    return (char*)print(item, ((cJSON_bool)0), &global_hooks);
}

char * cJSON_PrintBuffered(const cJSON *item, int prebuffer, cJSON_bool fmt)
{
    printbuffer p = { 0, 0, 0, 0, 0, 0, { 0, 0, 0 } };

    if (prebuffer < 0)
    {
        return 
# 1169 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
              ((void *)0)
# 1169 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                  ;
    }

    p.buffer = (unsigned char*)global_hooks.allocate((size_t)prebuffer);
    if (!p.buffer)
    {
        return 
# 1175 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
              ((void *)0)
# 1175 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                  ;
    }

    p.length = (size_t)prebuffer;
    p.offset = 0;
    p.noalloc = ((cJSON_bool)0);
    p.format = fmt;
    p.hooks = global_hooks;

    if (!print_value(item, &p))
    {
        global_hooks.deallocate(p.buffer);
        return 
# 1187 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
              ((void *)0)
# 1187 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                  ;
    }

    return (char*)p.buffer;
}

cJSON_bool cJSON_PrintPreallocated(cJSON *item, char *buf, const int len, const cJSON_bool fmt)
{
    printbuffer p = { 0, 0, 0, 0, 0, 0, { 0, 0, 0 } };

    if ((len < 0) || (buf == 
# 1197 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                            ((void *)0)
# 1197 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                ))
    {
        return ((cJSON_bool)0);
    }

    p.buffer = (unsigned char*)buf;
    p.length = (size_t)len;
    p.offset = 0;
    p.noalloc = ((cJSON_bool)1);
    p.format = fmt;
    p.hooks = global_hooks;

    return print_value(item, &p);
}


static cJSON_bool parse_value(cJSON * const item, parse_buffer * const input_buffer)
{
    if ((input_buffer == 
# 1215 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                        ((void *)0)
# 1215 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                            ) || (input_buffer->content == 
# 1215 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                                                           ((void *)0)
# 1215 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                                               ))
    {
        return ((cJSON_bool)0);
    }



    if (((input_buffer != 
# 1222 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
       ((void *)0)
# 1222 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
       ) && (((input_buffer)->offset + 4) <= (input_buffer)->length)) && (strncmp((const char*)((input_buffer)->content + (input_buffer)->offset), "null", 4) == 0))
    {
        item->type = (1 << 2);
        input_buffer->offset += 4;
        return ((cJSON_bool)1);
    }

    if (((input_buffer != 
# 1229 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
       ((void *)0)
# 1229 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
       ) && (((input_buffer)->offset + 5) <= (input_buffer)->length)) && (strncmp((const char*)((input_buffer)->content + (input_buffer)->offset), "false", 5) == 0))
    {
        item->type = (1 << 0);
        input_buffer->offset += 5;
        return ((cJSON_bool)1);
    }

    if (((input_buffer != 
# 1236 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
       ((void *)0)
# 1236 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
       ) && (((input_buffer)->offset + 4) <= (input_buffer)->length)) && (strncmp((const char*)((input_buffer)->content + (input_buffer)->offset), "true", 4) == 0))
    {
        item->type = (1 << 1);
        item->valueint = 1;
        input_buffer->offset += 4;
        return ((cJSON_bool)1);
    }

    if (((input_buffer != 
# 1244 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
       ((void *)0)
# 1244 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
       ) && (((input_buffer)->offset + 0) < (input_buffer)->length)) && (((input_buffer)->content + (input_buffer)->offset)[0] == '\"'))
    {
        return parse_string(item, input_buffer);
    }

    if (((input_buffer != 
# 1249 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
       ((void *)0)
# 1249 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
       ) && (((input_buffer)->offset + 0) < (input_buffer)->length)) && ((((input_buffer)->content + (input_buffer)->offset)[0] == '-') || ((((input_buffer)->content + (input_buffer)->offset)[0] >= '0') && (((input_buffer)->content + (input_buffer)->offset)[0] <= '9'))))
    {
        return parse_number(item, input_buffer);
    }

    if (((input_buffer != 
# 1254 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
       ((void *)0)
# 1254 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
       ) && (((input_buffer)->offset + 0) < (input_buffer)->length)) && (((input_buffer)->content + (input_buffer)->offset)[0] == '['))
    {
        return parse_array(item, input_buffer);
    }

    if (((input_buffer != 
# 1259 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
       ((void *)0)
# 1259 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
       ) && (((input_buffer)->offset + 0) < (input_buffer)->length)) && (((input_buffer)->content + (input_buffer)->offset)[0] == '{'))
    {
        return parse_object(item, input_buffer);
    }

    return ((cJSON_bool)0);
}


static cJSON_bool print_value(const cJSON * const item, printbuffer * const output_buffer)
{
    unsigned char *output = 
# 1270 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                           ((void *)0)
# 1270 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                               ;

    if ((item == 
# 1272 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                ((void *)0)
# 1272 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                    ) || (output_buffer == 
# 1272 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                                           ((void *)0)
# 1272 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                               ))
    {
        return ((cJSON_bool)0);
    }

    switch ((item->type) & 0xFF)
    {
        case (1 << 2):
            output = ensure(output_buffer, 5);
            if (output == 
# 1281 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                         ((void *)0)
# 1281 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                             )
            {
                return ((cJSON_bool)0);
            }
            strcpy((char*)output, "null");
            return ((cJSON_bool)1);

        case (1 << 0):
            output = ensure(output_buffer, 6);
            if (output == 
# 1290 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                         ((void *)0)
# 1290 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                             )
            {
                return ((cJSON_bool)0);
            }
            strcpy((char*)output, "false");
            return ((cJSON_bool)1);

        case (1 << 1):
            output = ensure(output_buffer, 5);
            if (output == 
# 1299 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                         ((void *)0)
# 1299 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                             )
            {
                return ((cJSON_bool)0);
            }
            strcpy((char*)output, "true");
            return ((cJSON_bool)1);

        case (1 << 3):
            return print_number(item, output_buffer);

        case (1 << 7):
        {
            size_t raw_length = 0;
            if (item->valuestring == 
# 1312 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                                    ((void *)0)
# 1312 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                        )
            {
                if (!output_buffer->noalloc)
                {
                    output_buffer->hooks.deallocate(output_buffer->buffer);
                }
                return ((cJSON_bool)0);
            }

            raw_length = strlen(item->valuestring) + sizeof("");
            output = ensure(output_buffer, raw_length);
            if (output == 
# 1323 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                         ((void *)0)
# 1323 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                             )
            {
                return ((cJSON_bool)0);
            }
            memcpy(output, item->valuestring, raw_length);
            return ((cJSON_bool)1);
        }

        case (1 << 4):
            return print_string(item, output_buffer);

        case (1 << 5):
            return print_array(item, output_buffer);

        case (1 << 6):
            return print_object(item, output_buffer);

        default:
            return ((cJSON_bool)0);
    }
}


static cJSON_bool parse_array(cJSON * const item, parse_buffer * const input_buffer)
{
    cJSON *head = 
# 1348 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                 ((void *)0)
# 1348 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                     ;
    cJSON *current_item = 
# 1349 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                         ((void *)0)
# 1349 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                             ;

    if (input_buffer->depth >= 1000)
    {
        return ((cJSON_bool)0);
    }
    input_buffer->depth++;

    if (((input_buffer)->content + (input_buffer)->offset)[0] != '[')
    {

        goto fail;
    }

    input_buffer->offset++;
    buffer_skip_whitespace(input_buffer);
    if (((input_buffer != 
# 1365 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
       ((void *)0)
# 1365 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
       ) && (((input_buffer)->offset + 0) < (input_buffer)->length)) && (((input_buffer)->content + (input_buffer)->offset)[0] == ']'))
    {

        goto success;
    }


    if ((!((input_buffer != 
# 1372 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
       ((void *)0)
# 1372 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
       ) && (((input_buffer)->offset + 0) < (input_buffer)->length))))
    {
        input_buffer->offset--;
        goto fail;
    }


    input_buffer->offset--;

    do
    {

        cJSON *new_item = cJSON_New_Item(&(input_buffer->hooks));
        if (new_item == 
# 1385 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                       ((void *)0)
# 1385 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                           )
        {
            goto fail;
        }


        if (head == 
# 1391 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                   ((void *)0)
# 1391 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                       )
        {

            current_item = head = new_item;
        }
        else
        {

            current_item->next = new_item;
            new_item->prev = current_item;
            current_item = new_item;
        }


        input_buffer->offset++;
        buffer_skip_whitespace(input_buffer);
        if (!parse_value(current_item, input_buffer))
        {
            goto fail;
        }
        buffer_skip_whitespace(input_buffer);
    }
    while (((input_buffer != 
# 1413 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
          ((void *)0)
# 1413 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
          ) && (((input_buffer)->offset + 0) < (input_buffer)->length)) && (((input_buffer)->content + (input_buffer)->offset)[0] == ','));

    if ((!((input_buffer != 
# 1415 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
       ((void *)0)
# 1415 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
       ) && (((input_buffer)->offset + 0) < (input_buffer)->length))) || ((input_buffer)->content + (input_buffer)->offset)[0] != ']')
    {
        goto fail;
    }

success:
    input_buffer->depth--;

    item->type = (1 << 5);
    item->child = head;

    input_buffer->offset++;

    return ((cJSON_bool)1);

fail:
    if (head != 
# 1431 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
               ((void *)0)
# 1431 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                   )
    {
        cJSON_Delete(head);
    }

    return ((cJSON_bool)0);
}


static cJSON_bool print_array(const cJSON * const item, printbuffer * const output_buffer)
{
    unsigned char *output_pointer = 
# 1442 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                                   ((void *)0)
# 1442 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                       ;
    size_t length = 0;
    cJSON *current_element = item->child;

    if (output_buffer == 
# 1446 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                        ((void *)0)
# 1446 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                            )
    {
        return ((cJSON_bool)0);
    }



    output_pointer = ensure(output_buffer, 1);
    if (output_pointer == 
# 1454 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                         ((void *)0)
# 1454 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                             )
    {
        return ((cJSON_bool)0);
    }

    *output_pointer = '[';
    output_buffer->offset++;
    output_buffer->depth++;

    while (current_element != 
# 1463 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                             ((void *)0)
# 1463 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                 )
    {
        if (!print_value(current_element, output_buffer))
        {
            return ((cJSON_bool)0);
        }
        update_offset(output_buffer);
        if (current_element->next)
        {
            length = (size_t) (output_buffer->format ? 2 : 1);
            output_pointer = ensure(output_buffer, length + 1);
            if (output_pointer == 
# 1474 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                                 ((void *)0)
# 1474 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                     )
            {
                return ((cJSON_bool)0);
            }
            *output_pointer++ = ',';
            if(output_buffer->format)
            {
                *output_pointer++ = ' ';
            }
            *output_pointer = '\0';
            output_buffer->offset += length;
        }
        current_element = current_element->next;
    }

    output_pointer = ensure(output_buffer, 2);
    if (output_pointer == 
# 1490 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                         ((void *)0)
# 1490 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                             )
    {
        return ((cJSON_bool)0);
    }
    *output_pointer++ = ']';
    *output_pointer = '\0';
    output_buffer->depth--;

    return ((cJSON_bool)1);
}


static cJSON_bool parse_object(cJSON * const item, parse_buffer * const input_buffer)
{
    cJSON *head = 
# 1504 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                 ((void *)0)
# 1504 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                     ;
    cJSON *current_item = 
# 1505 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                         ((void *)0)
# 1505 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                             ;

    if (input_buffer->depth >= 1000)
    {
        return ((cJSON_bool)0);
    }
    input_buffer->depth++;

    if ((!((input_buffer != 
# 1513 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
       ((void *)0)
# 1513 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
       ) && (((input_buffer)->offset + 0) < (input_buffer)->length))) || (((input_buffer)->content + (input_buffer)->offset)[0] != '{'))
    {
        goto fail;
    }

    input_buffer->offset++;
    buffer_skip_whitespace(input_buffer);
    if (((input_buffer != 
# 1520 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
       ((void *)0)
# 1520 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
       ) && (((input_buffer)->offset + 0) < (input_buffer)->length)) && (((input_buffer)->content + (input_buffer)->offset)[0] == '}'))
    {
        goto success;
    }


    if ((!((input_buffer != 
# 1526 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
       ((void *)0)
# 1526 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
       ) && (((input_buffer)->offset + 0) < (input_buffer)->length))))
    {
        input_buffer->offset--;
        goto fail;
    }


    input_buffer->offset--;

    do
    {

        cJSON *new_item = cJSON_New_Item(&(input_buffer->hooks));
        if (new_item == 
# 1539 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                       ((void *)0)
# 1539 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                           )
        {
            goto fail;
        }


        if (head == 
# 1545 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                   ((void *)0)
# 1545 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                       )
        {

            current_item = head = new_item;
        }
        else
        {

            current_item->next = new_item;
            new_item->prev = current_item;
            current_item = new_item;
        }


        input_buffer->offset++;
        buffer_skip_whitespace(input_buffer);
        if (!parse_string(current_item, input_buffer))
        {
            goto fail;
        }
        buffer_skip_whitespace(input_buffer);


        current_item->string = current_item->valuestring;
        current_item->valuestring = 
# 1569 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                                   ((void *)0)
# 1569 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                       ;

        if ((!((input_buffer != 
# 1571 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
           ((void *)0)
# 1571 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
           ) && (((input_buffer)->offset + 0) < (input_buffer)->length))) || (((input_buffer)->content + (input_buffer)->offset)[0] != ':'))
        {
            goto fail;
        }


        input_buffer->offset++;
        buffer_skip_whitespace(input_buffer);
        if (!parse_value(current_item, input_buffer))
        {
            goto fail;
        }
        buffer_skip_whitespace(input_buffer);
    }
    while (((input_buffer != 
# 1585 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
          ((void *)0)
# 1585 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
          ) && (((input_buffer)->offset + 0) < (input_buffer)->length)) && (((input_buffer)->content + (input_buffer)->offset)[0] == ','));

    if ((!((input_buffer != 
# 1587 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
       ((void *)0)
# 1587 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
       ) && (((input_buffer)->offset + 0) < (input_buffer)->length))) || (((input_buffer)->content + (input_buffer)->offset)[0] != '}'))
    {
        goto fail;
    }

success:
    input_buffer->depth--;

    item->type = (1 << 6);
    item->child = head;

    input_buffer->offset++;
    return ((cJSON_bool)1);

fail:
    if (head != 
# 1602 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
               ((void *)0)
# 1602 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                   )
    {
        cJSON_Delete(head);
    }

    return ((cJSON_bool)0);
}


static cJSON_bool print_object(const cJSON * const item, printbuffer * const output_buffer)
{
    unsigned char *output_pointer = 
# 1613 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                                   ((void *)0)
# 1613 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                       ;
    size_t length = 0;
    cJSON *current_item = item->child;

    if (output_buffer == 
# 1617 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                        ((void *)0)
# 1617 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                            )
    {
        return ((cJSON_bool)0);
    }


    length = (size_t) (output_buffer->format ? 2 : 1);
    output_pointer = ensure(output_buffer, length + 1);
    if (output_pointer == 
# 1625 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                         ((void *)0)
# 1625 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                             )
    {
        return ((cJSON_bool)0);
    }

    *output_pointer++ = '{';
    output_buffer->depth++;
    if (output_buffer->format)
    {
        *output_pointer++ = '\n';
    }
    output_buffer->offset += length;

    while (current_item)
    {
        if (output_buffer->format)
        {
            size_t i;
            output_pointer = ensure(output_buffer, output_buffer->depth);
            if (output_pointer == 
# 1644 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                                 ((void *)0)
# 1644 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                     )
            {
                return ((cJSON_bool)0);
            }
            for (i = 0; i < output_buffer->depth; i++)
            {
                *output_pointer++ = '\t';
            }
            output_buffer->offset += output_buffer->depth;
        }


        if (!print_string_ptr((unsigned char*)current_item->string, output_buffer))
        {
            return ((cJSON_bool)0);
        }
        update_offset(output_buffer);

        length = (size_t) (output_buffer->format ? 2 : 1);
        output_pointer = ensure(output_buffer, length);
        if (output_pointer == 
# 1664 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                             ((void *)0)
# 1664 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                 )
        {
            return ((cJSON_bool)0);
        }
        *output_pointer++ = ':';
        if (output_buffer->format)
        {
            *output_pointer++ = '\t';
        }
        output_buffer->offset += length;


        if (!print_value(current_item, output_buffer))
        {
            return ((cJSON_bool)0);
        }
        update_offset(output_buffer);


        length = (size_t) ((output_buffer->format ? 1 : 0) + (current_item->next ? 1 : 0));
        output_pointer = ensure(output_buffer, length + 1);
        if (output_pointer == 
# 1685 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                             ((void *)0)
# 1685 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                 )
        {
            return ((cJSON_bool)0);
        }
        if (current_item->next)
        {
            *output_pointer++ = ',';
        }

        if (output_buffer->format)
        {
            *output_pointer++ = '\n';
        }
        *output_pointer = '\0';
        output_buffer->offset += length;

        current_item = current_item->next;
    }

    output_pointer = ensure(output_buffer, output_buffer->format ? (output_buffer->depth + 1) : 2);
    if (output_pointer == 
# 1705 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                         ((void *)0)
# 1705 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                             )
    {
        return ((cJSON_bool)0);
    }
    if (output_buffer->format)
    {
        size_t i;
        for (i = 0; i < (output_buffer->depth - 1); i++)
        {
            *output_pointer++ = '\t';
        }
    }
    *output_pointer++ = '}';
    *output_pointer = '\0';
    output_buffer->depth--;

    return ((cJSON_bool)1);
}


int cJSON_GetArraySize(const cJSON *array)
{
    cJSON *child = 
# 1727 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                  ((void *)0)
# 1727 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                      ;
    size_t size = 0;

    if (array == 
# 1730 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                ((void *)0)
# 1730 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                    )
    {
        return 0;
    }

    child = array->child;

    while(child != 
# 1737 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                  ((void *)0)
# 1737 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                      )
    {
        size++;
        child = child->next;
    }



    return (int)size;
}

static cJSON* get_array_item(const cJSON *array, size_t index)
{
    cJSON *current_child = 
# 1750 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                          ((void *)0)
# 1750 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                              ;

    if (array == 
# 1752 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                ((void *)0)
# 1752 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                    )
    {
        return 
# 1754 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
              ((void *)0)
# 1754 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                  ;
    }

    current_child = array->child;
    while ((current_child != 
# 1758 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                            ((void *)0)
# 1758 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                ) && (index > 0))
    {
        index--;
        current_child = current_child->next;
    }

    return current_child;
}

cJSON * cJSON_GetArrayItem(const cJSON *array, int index)
{
    if (index < 0)
    {
        return 
# 1771 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
              ((void *)0)
# 1771 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                  ;
    }

    return get_array_item(array, (size_t)index);
}

static cJSON *get_object_item(const cJSON * const object, const char * const name, const cJSON_bool case_sensitive)
{
    cJSON *current_element = 
# 1779 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                            ((void *)0)
# 1779 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                ;

    if ((object == 
# 1781 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                  ((void *)0)
# 1781 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                      ) || (name == 
# 1781 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                                    ((void *)0)
# 1781 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                        ))
    {
        return 
# 1783 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
              ((void *)0)
# 1783 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                  ;
    }

    current_element = object->child;
    if (case_sensitive)
    {
        while ((current_element != 
# 1789 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                                  ((void *)0)
# 1789 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                      ) && (strcmp(name, current_element->string) != 0))
        {
            current_element = current_element->next;
        }
    }
    else
    {
        while ((current_element != 
# 1796 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                                  ((void *)0)
# 1796 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                      ) && (case_insensitive_strcmp((const unsigned char*)name, (const unsigned char*)(current_element->string)) != 0))
        {
            current_element = current_element->next;
        }
    }

    return current_element;
}

cJSON * cJSON_GetObjectItem(const cJSON * const object, const char * const string)
{
    return get_object_item(object, string, ((cJSON_bool)0));
}

cJSON * cJSON_GetObjectItemCaseSensitive(const cJSON * const object, const char * const string)
{
    return get_object_item(object, string, ((cJSON_bool)1));
}

cJSON_bool cJSON_HasObjectItem(const cJSON *object, const char *string)
{
    return cJSON_GetObjectItem(object, string) ? 1 : 0;
}


static void suffix_object(cJSON *prev, cJSON *item)
{
    prev->next = item;
    item->prev = prev;
}


static cJSON *create_reference(const cJSON *item, const internal_hooks * const hooks)
{
    cJSON *reference = 
# 1830 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                      ((void *)0)
# 1830 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                          ;
    if (item == 
# 1831 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
               ((void *)0)
# 1831 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                   )
    {
        return 
# 1833 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
              ((void *)0)
# 1833 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                  ;
    }

    reference = cJSON_New_Item(hooks);
    if (reference == 
# 1837 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                    ((void *)0)
# 1837 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                        )
    {
        return 
# 1839 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
              ((void *)0)
# 1839 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                  ;
    }

    memcpy(reference, item, sizeof(cJSON));
    reference->string = 
# 1843 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                       ((void *)0)
# 1843 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                           ;
    reference->type |= 256;
    reference->next = reference->prev = 
# 1845 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                                       ((void *)0)
# 1845 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                           ;
    return reference;
}

static cJSON_bool add_item_to_array(cJSON *array, cJSON *item)
{
    cJSON *child = 
# 1851 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                  ((void *)0)
# 1851 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                      ;

    if ((item == 
# 1853 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                ((void *)0)
# 1853 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                    ) || (array == 
# 1853 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                                   ((void *)0)
# 1853 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                       ))
    {
        return ((cJSON_bool)0);
    }

    child = array->child;

    if (child == 
# 1860 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                ((void *)0)
# 1860 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                    )
    {

        array->child = item;
    }
    else
    {

        while (child->next)
        {
            child = child->next;
        }
        suffix_object(child, item);
    }

    return ((cJSON_bool)1);
}


void cJSON_AddItemToArray(cJSON *array, cJSON *item)
{
    add_item_to_array(array, item);
}


#pragma GCC diagnostic push


#pragma GCC diagnostic ignored "-Wcast-qual"


static void* cast_away_const(const void* string)
{
    return (void*)string;
}

#pragma GCC diagnostic pop



static cJSON_bool add_item_to_object(cJSON * const object, const char * const string, cJSON * const item, const internal_hooks * const hooks, const cJSON_bool constant_key)
{
    if ((object == 
# 1902 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                  ((void *)0)
# 1902 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                      ) || (string == 
# 1902 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                                      ((void *)0)
# 1902 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                          ) || (item == 
# 1902 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                                                        ((void *)0)
# 1902 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                                            ))
    {
        return ((cJSON_bool)0);
    }

    if (!(item->type & 512) && (item->string != 
# 1907 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                                                               ((void *)0)
# 1907 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                                                   ))
    {
        hooks->deallocate(item->string);
    }

    if (constant_key)
    {
        item->string = (char*)cast_away_const(string);
        item->type |= 512;
    }
    else
    {
        char *key = (char*)cJSON_strdup((const unsigned char*)string, hooks);
        if (key == 
# 1920 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                  ((void *)0)
# 1920 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                      )
        {
            return ((cJSON_bool)0);
        }

        item->string = key;
        item->type &= ~512;
    }

    return add_item_to_array(object, item);
}

void cJSON_AddItemToObject(cJSON *object, const char *string, cJSON *item)
{
    add_item_to_object(object, string, item, &global_hooks, ((cJSON_bool)0));
}


void cJSON_AddItemToObjectCS(cJSON *object, const char *string, cJSON *item)
{
    add_item_to_object(object, string, item, &global_hooks, ((cJSON_bool)1));
}

void cJSON_AddItemReferenceToArray(cJSON *array, cJSON *item)
{
    if (array == 
# 1945 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                ((void *)0)
# 1945 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                    )
    {
        return;
    }

    add_item_to_array(array, create_reference(item, &global_hooks));
}

void cJSON_AddItemReferenceToObject(cJSON *object, const char *string, cJSON *item)
{
    if ((object == 
# 1955 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                  ((void *)0)
# 1955 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                      ) || (string == 
# 1955 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                                      ((void *)0)
# 1955 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                          ))
    {
        return;
    }

    add_item_to_object(object, string, create_reference(item, &global_hooks), &global_hooks, ((cJSON_bool)0));
}

cJSON* cJSON_AddNullToObject(cJSON * const object, const char * const name)
{
    cJSON *null = cJSON_CreateNull();
    if (add_item_to_object(object, name, null, &global_hooks, ((cJSON_bool)0)))
    {
        return null;
    }

    cJSON_Delete(null);
    return 
# 1972 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
          ((void *)0)
# 1972 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
              ;
}

cJSON* cJSON_AddTrueToObject(cJSON * const object, const char * const name)
{
    cJSON *true_item = cJSON_CreateTrue();
    if (add_item_to_object(object, name, true_item, &global_hooks, ((cJSON_bool)0)))
    {
        return true_item;
    }

    cJSON_Delete(true_item);
    return 
# 1984 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
          ((void *)0)
# 1984 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
              ;
}

cJSON* cJSON_AddFalseToObject(cJSON * const object, const char * const name)
{
    cJSON *false_item = cJSON_CreateFalse();
    if (add_item_to_object(object, name, false_item, &global_hooks, ((cJSON_bool)0)))
    {
        return false_item;
    }

    cJSON_Delete(false_item);
    return 
# 1996 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
          ((void *)0)
# 1996 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
              ;
}

cJSON* cJSON_AddBoolToObject(cJSON * const object, const char * const name, const cJSON_bool boolean)
{
    cJSON *bool_item = cJSON_CreateBool(boolean);
    if (add_item_to_object(object, name, bool_item, &global_hooks, ((cJSON_bool)0)))
    {
        return bool_item;
    }

    cJSON_Delete(bool_item);
    return 
# 2008 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
          ((void *)0)
# 2008 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
              ;
}

cJSON* cJSON_AddNumberToObject(cJSON * const object, const char * const name, const double number)
{
    cJSON *number_item = cJSON_CreateNumber(number);
    if (add_item_to_object(object, name, number_item, &global_hooks, ((cJSON_bool)0)))
    {
        return number_item;
    }

    cJSON_Delete(number_item);
    return 
# 2020 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
          ((void *)0)
# 2020 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
              ;
}

cJSON* cJSON_AddStringToObject(cJSON * const object, const char * const name, const char * const string)
{
    cJSON *string_item = cJSON_CreateString(string);
    if (add_item_to_object(object, name, string_item, &global_hooks, ((cJSON_bool)0)))
    {
        return string_item;
    }

    cJSON_Delete(string_item);
    return 
# 2032 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
          ((void *)0)
# 2032 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
              ;
}

cJSON* cJSON_AddRawToObject(cJSON * const object, const char * const name, const char * const raw)
{
    cJSON *raw_item = cJSON_CreateRaw(raw);
    if (add_item_to_object(object, name, raw_item, &global_hooks, ((cJSON_bool)0)))
    {
        return raw_item;
    }

    cJSON_Delete(raw_item);
    return 
# 2044 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
          ((void *)0)
# 2044 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
              ;
}

cJSON* cJSON_AddObjectToObject(cJSON * const object, const char * const name)
{
    cJSON *object_item = cJSON_CreateObject();
    if (add_item_to_object(object, name, object_item, &global_hooks, ((cJSON_bool)0)))
    {
        return object_item;
    }

    cJSON_Delete(object_item);
    return 
# 2056 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
          ((void *)0)
# 2056 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
              ;
}

cJSON* cJSON_AddArrayToObject(cJSON * const object, const char * const name)
{
    cJSON *array = cJSON_CreateArray();
    if (add_item_to_object(object, name, array, &global_hooks, ((cJSON_bool)0)))
    {
        return array;
    }

    cJSON_Delete(array);
    return 
# 2068 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
          ((void *)0)
# 2068 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
              ;
}

cJSON * cJSON_DetachItemViaPointer(cJSON *parent, cJSON * const item)
{
    if ((parent == 
# 2073 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                  ((void *)0)
# 2073 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                      ) || (item == 
# 2073 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                                    ((void *)0)
# 2073 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                        ))
    {
        return 
# 2075 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
              ((void *)0)
# 2075 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                  ;
    }

    if (item->prev != 
# 2078 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                     ((void *)0)
# 2078 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                         )
    {

        item->prev->next = item->next;
    }
    if (item->next != 
# 2083 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                     ((void *)0)
# 2083 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                         )
    {

        item->next->prev = item->prev;
    }

    if (item == parent->child)
    {

        parent->child = item->next;
    }

    item->prev = 
# 2095 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                ((void *)0)
# 2095 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                    ;
    item->next = 
# 2096 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                ((void *)0)
# 2096 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                    ;

    return item;
}

cJSON * cJSON_DetachItemFromArray(cJSON *array, int which)
{
    if (which < 0)
    {
        return 
# 2105 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
              ((void *)0)
# 2105 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                  ;
    }

    return cJSON_DetachItemViaPointer(array, get_array_item(array, (size_t)which));
}

void cJSON_DeleteItemFromArray(cJSON *array, int which)
{
    cJSON_Delete(cJSON_DetachItemFromArray(array, which));
}

cJSON * cJSON_DetachItemFromObject(cJSON *object, const char *string)
{
    cJSON *to_detach = cJSON_GetObjectItem(object, string);

    return cJSON_DetachItemViaPointer(object, to_detach);
}

cJSON * cJSON_DetachItemFromObjectCaseSensitive(cJSON *object, const char *string)
{
    cJSON *to_detach = cJSON_GetObjectItemCaseSensitive(object, string);

    return cJSON_DetachItemViaPointer(object, to_detach);
}

void cJSON_DeleteItemFromObject(cJSON *object, const char *string)
{
    cJSON_Delete(cJSON_DetachItemFromObject(object, string));
}

void cJSON_DeleteItemFromObjectCaseSensitive(cJSON *object, const char *string)
{
    cJSON_Delete(cJSON_DetachItemFromObjectCaseSensitive(object, string));
}


void cJSON_InsertItemInArray(cJSON *array, int which, cJSON *newitem)
{
    cJSON *after_inserted = 
# 2143 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                           ((void *)0)
# 2143 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                               ;

    if (which < 0)
    {
        return;
    }

    after_inserted = get_array_item(array, (size_t)which);
    if (after_inserted == 
# 2151 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                         ((void *)0)
# 2151 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                             )
    {
        add_item_to_array(array, newitem);
        return;
    }

    newitem->next = after_inserted;
    newitem->prev = after_inserted->prev;
    after_inserted->prev = newitem;
    if (after_inserted == array->child)
    {
        array->child = newitem;
    }
    else
    {
        newitem->prev->next = newitem;
    }
}

cJSON_bool cJSON_ReplaceItemViaPointer(cJSON * const parent, cJSON * const item, cJSON * replacement)
{
    if ((parent == 
# 2172 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                  ((void *)0)
# 2172 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                      ) || (replacement == 
# 2172 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                                           ((void *)0)
# 2172 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                               ) || (item == 
# 2172 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                                                             ((void *)0)
# 2172 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                                                 ))
    {
        return ((cJSON_bool)0);
    }

    if (replacement == item)
    {
        return ((cJSON_bool)1);
    }

    replacement->next = item->next;
    replacement->prev = item->prev;

    if (replacement->next != 
# 2185 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                            ((void *)0)
# 2185 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                )
    {
        replacement->next->prev = replacement;
    }
    if (replacement->prev != 
# 2189 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                            ((void *)0)
# 2189 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                )
    {
        replacement->prev->next = replacement;
    }
    if (parent->child == item)
    {
        parent->child = replacement;
    }

    item->next = 
# 2198 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                ((void *)0)
# 2198 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                    ;
    item->prev = 
# 2199 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                ((void *)0)
# 2199 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                    ;
    cJSON_Delete(item);

    return ((cJSON_bool)1);
}

void cJSON_ReplaceItemInArray(cJSON *array, int which, cJSON *newitem)
{
    if (which < 0)
    {
        return;
    }

    cJSON_ReplaceItemViaPointer(array, get_array_item(array, (size_t)which), newitem);
}

static cJSON_bool replace_item_in_object(cJSON *object, const char *string, cJSON *replacement, cJSON_bool case_sensitive)
{
    if ((replacement == 
# 2217 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                       ((void *)0)
# 2217 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                           ) || (string == 
# 2217 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                                           ((void *)0)
# 2217 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                               ))
    {
        return ((cJSON_bool)0);
    }


    if (!(replacement->type & 512) && (replacement->string != 
# 2223 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                                                                             ((void *)0)
# 2223 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                                                                 ))
    {
        cJSON_free(replacement->string);
    }
    replacement->string = (char*)cJSON_strdup((const unsigned char*)string, &global_hooks);
    replacement->type &= ~512;

    cJSON_ReplaceItemViaPointer(object, get_object_item(object, string, case_sensitive), replacement);

    return ((cJSON_bool)1);
}

void cJSON_ReplaceItemInObject(cJSON *object, const char *string, cJSON *newitem)
{
    replace_item_in_object(object, string, newitem, ((cJSON_bool)0));
}

void cJSON_ReplaceItemInObjectCaseSensitive(cJSON *object, const char *string, cJSON *newitem)
{
    replace_item_in_object(object, string, newitem, ((cJSON_bool)1));
}


cJSON * cJSON_CreateNull(void)
{
    cJSON *item = cJSON_New_Item(&global_hooks);
    if(item)
    {
        item->type = (1 << 2);
    }

    return item;
}

cJSON * cJSON_CreateTrue(void)
{
    cJSON *item = cJSON_New_Item(&global_hooks);
    if(item)
    {
        item->type = (1 << 1);
    }

    return item;
}

cJSON * cJSON_CreateFalse(void)
{
    cJSON *item = cJSON_New_Item(&global_hooks);
    if(item)
    {
        item->type = (1 << 0);
    }

    return item;
}

cJSON * cJSON_CreateBool(cJSON_bool b)
{
    cJSON *item = cJSON_New_Item(&global_hooks);
    if(item)
    {
        item->type = b ? (1 << 1) : (1 << 0);
    }

    return item;
}

cJSON * cJSON_CreateNumber(double num)
{
    cJSON *item = cJSON_New_Item(&global_hooks);
    if(item)
    {
        item->type = (1 << 3);
        item->valuedouble = num;


        if (num >= 0x7fffffff)
        {
            item->valueint = 0x7fffffff;
        }
        else if (num <= 
# 2303 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                       (-0x7fffffff - 1)
# 2303 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                              )
        {
            item->valueint = 
# 2305 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                            (-0x7fffffff - 1)
# 2305 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                   ;
        }
        else
        {
            item->valueint = (int)num;
        }
    }

    return item;
}

cJSON * cJSON_CreateString(const char *string)
{
    cJSON *item = cJSON_New_Item(&global_hooks);
    if(item)
    {
        item->type = (1 << 4);
        item->valuestring = (char*)cJSON_strdup((const unsigned char*)string, &global_hooks);
        if(!item->valuestring)
        {
            cJSON_Delete(item);
            return 
# 2326 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                  ((void *)0)
# 2326 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                      ;
        }
    }

    return item;
}

cJSON * cJSON_CreateStringReference(const char *string)
{
    cJSON *item = cJSON_New_Item(&global_hooks);
    if (item != 
# 2336 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
               ((void *)0)
# 2336 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                   )
    {
        item->type = (1 << 4) | 256;
        item->valuestring = (char*)cast_away_const(string);
    }

    return item;
}

cJSON * cJSON_CreateObjectReference(const cJSON *child)
{
    cJSON *item = cJSON_New_Item(&global_hooks);
    if (item != 
# 2348 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
               ((void *)0)
# 2348 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                   ) {
        item->type = (1 << 6) | 256;
        item->child = (cJSON*)cast_away_const(child);
    }

    return item;
}

cJSON * cJSON_CreateArrayReference(const cJSON *child) {
    cJSON *item = cJSON_New_Item(&global_hooks);
    if (item != 
# 2358 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
               ((void *)0)
# 2358 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                   ) {
        item->type = (1 << 5) | 256;
        item->child = (cJSON*)cast_away_const(child);
    }

    return item;
}

cJSON * cJSON_CreateRaw(const char *raw)
{
    cJSON *item = cJSON_New_Item(&global_hooks);
    if(item)
    {
        item->type = (1 << 7);
        item->valuestring = (char*)cJSON_strdup((const unsigned char*)raw, &global_hooks);
        if(!item->valuestring)
        {
            cJSON_Delete(item);
            return 
# 2376 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                  ((void *)0)
# 2376 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                      ;
        }
    }

    return item;
}

cJSON * cJSON_CreateArray(void)
{
    cJSON *item = cJSON_New_Item(&global_hooks);
    if(item)
    {
        item->type=(1 << 5);
    }

    return item;
}

cJSON * cJSON_CreateObject(void)
{
    cJSON *item = cJSON_New_Item(&global_hooks);
    if (item)
    {
        item->type = (1 << 6);
    }

    return item;
}


cJSON * cJSON_CreateIntArray(const int *numbers, int count)
{
    size_t i = 0;
    cJSON *n = 
# 2409 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
              ((void *)0)
# 2409 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                  ;
    cJSON *p = 
# 2410 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
              ((void *)0)
# 2410 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                  ;
    cJSON *a = 
# 2411 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
              ((void *)0)
# 2411 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                  ;

    if ((count < 0) || (numbers == 
# 2413 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                                  ((void *)0)
# 2413 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                      ))
    {
        return 
# 2415 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
              ((void *)0)
# 2415 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                  ;
    }

    a = cJSON_CreateArray();
    for(i = 0; a && (i < (size_t)count); i++)
    {
        n = cJSON_CreateNumber(numbers[i]);
        if (!n)
        {
            cJSON_Delete(a);
            return 
# 2425 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                  ((void *)0)
# 2425 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                      ;
        }
        if(!i)
        {
            a->child = n;
        }
        else
        {
            suffix_object(p, n);
        }
        p = n;
    }

    return a;
}

cJSON * cJSON_CreateFloatArray(const float *numbers, int count)
{
    size_t i = 0;
    cJSON *n = 
# 2444 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
              ((void *)0)
# 2444 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                  ;
    cJSON *p = 
# 2445 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
              ((void *)0)
# 2445 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                  ;
    cJSON *a = 
# 2446 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
              ((void *)0)
# 2446 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                  ;

    if ((count < 0) || (numbers == 
# 2448 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                                  ((void *)0)
# 2448 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                      ))
    {
        return 
# 2450 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
              ((void *)0)
# 2450 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                  ;
    }

    a = cJSON_CreateArray();

    for(i = 0; a && (i < (size_t)count); i++)
    {
        n = cJSON_CreateNumber((double)numbers[i]);
        if(!n)
        {
            cJSON_Delete(a);
            return 
# 2461 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                  ((void *)0)
# 2461 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                      ;
        }
        if(!i)
        {
            a->child = n;
        }
        else
        {
            suffix_object(p, n);
        }
        p = n;
    }

    return a;
}

cJSON * cJSON_CreateDoubleArray(const double *numbers, int count)
{
    size_t i = 0;
    cJSON *n = 
# 2480 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
              ((void *)0)
# 2480 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                  ;
    cJSON *p = 
# 2481 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
              ((void *)0)
# 2481 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                  ;
    cJSON *a = 
# 2482 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
              ((void *)0)
# 2482 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                  ;

    if ((count < 0) || (numbers == 
# 2484 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                                  ((void *)0)
# 2484 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                      ))
    {
        return 
# 2486 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
              ((void *)0)
# 2486 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                  ;
    }

    a = cJSON_CreateArray();

    for(i = 0;a && (i < (size_t)count); i++)
    {
        n = cJSON_CreateNumber(numbers[i]);
        if(!n)
        {
            cJSON_Delete(a);
            return 
# 2497 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                  ((void *)0)
# 2497 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                      ;
        }
        if(!i)
        {
            a->child = n;
        }
        else
        {
            suffix_object(p, n);
        }
        p = n;
    }

    return a;
}

cJSON * cJSON_CreateStringArray(const char **strings, int count)
{
    size_t i = 0;
    cJSON *n = 
# 2516 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
              ((void *)0)
# 2516 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                  ;
    cJSON *p = 
# 2517 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
              ((void *)0)
# 2517 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                  ;
    cJSON *a = 
# 2518 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
              ((void *)0)
# 2518 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                  ;

    if ((count < 0) || (strings == 
# 2520 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                                  ((void *)0)
# 2520 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                      ))
    {
        return 
# 2522 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
              ((void *)0)
# 2522 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                  ;
    }

    a = cJSON_CreateArray();

    for (i = 0; a && (i < (size_t)count); i++)
    {
        n = cJSON_CreateString(strings[i]);
        if(!n)
        {
            cJSON_Delete(a);
            return 
# 2533 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                  ((void *)0)
# 2533 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                      ;
        }
        if(!i)
        {
            a->child = n;
        }
        else
        {
            suffix_object(p,n);
        }
        p = n;
    }

    return a;
}


cJSON * cJSON_Duplicate(const cJSON *item, cJSON_bool recurse)
{
    cJSON *newitem = 
# 2552 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                    ((void *)0)
# 2552 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                        ;
    cJSON *child = 
# 2553 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                  ((void *)0)
# 2553 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                      ;
    cJSON *next = 
# 2554 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                 ((void *)0)
# 2554 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                     ;
    cJSON *newchild = 
# 2555 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                     ((void *)0)
# 2555 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                         ;


    if (!item)
    {
        goto fail;
    }

    newitem = cJSON_New_Item(&global_hooks);
    if (!newitem)
    {
        goto fail;
    }

    newitem->type = item->type & (~256);
    newitem->valueint = item->valueint;
    newitem->valuedouble = item->valuedouble;
    if (item->valuestring)
    {
        newitem->valuestring = (char*)cJSON_strdup((unsigned char*)item->valuestring, &global_hooks);
        if (!newitem->valuestring)
        {
            goto fail;
        }
    }
    if (item->string)
    {
        newitem->string = (item->type&512) ? item->string : (char*)cJSON_strdup((unsigned char*)item->string, &global_hooks);
        if (!newitem->string)
        {
            goto fail;
        }
    }

    if (!recurse)
    {
        return newitem;
    }

    child = item->child;
    while (child != 
# 2595 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                   ((void *)0)
# 2595 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                       )
    {
        newchild = cJSON_Duplicate(child, ((cJSON_bool)1));
        if (!newchild)
        {
            goto fail;
        }
        if (next != 
# 2602 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                   ((void *)0)
# 2602 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                       )
        {

            next->next = newchild;
            newchild->prev = next;
            next = newchild;
        }
        else
        {

            newitem->child = newchild;
            next = newchild;
        }
        child = child->next;
    }

    return newitem;

fail:
    if (newitem != 
# 2621 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                  ((void *)0)
# 2621 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                      )
    {
        cJSON_Delete(newitem);
    }

    return 
# 2626 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
          ((void *)0)
# 2626 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
              ;
}

void cJSON_Minify(char *json)
{
    unsigned char *into = (unsigned char*)json;

    if (json == 
# 2633 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
               ((void *)0)
# 2633 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                   )
    {
        return;
    }

    while (*json)
    {
        if (*json == ' ')
        {
            json++;
        }
        else if (*json == '\t')
        {

            json++;
        }
        else if (*json == '\r')
        {
            json++;
        }
        else if (*json=='\n')
        {
            json++;
        }
        else if ((*json == '/') && (json[1] == '/'))
        {

            while (*json && (*json != '\n'))
            {
                json++;
            }
        }
        else if ((*json == '/') && (json[1] == '*'))
        {

            while (*json && !((*json == '*') && (json[1] == '/')))
            {
                json++;
            }
            json += 2;
        }
        else if (*json == '\"')
        {

            *into++ = (unsigned char)*json++;
            while (*json && (*json != '\"'))
            {
                if (*json == '\\')
                {
                    *into++ = (unsigned char)*json++;
                }
                *into++ = (unsigned char)*json++;
            }
            *into++ = (unsigned char)*json++;
        }
        else
        {

            *into++ = (unsigned char)*json++;
        }
    }


    *into = '\0';
}

cJSON_bool cJSON_IsInvalid(const cJSON * const item)
{
    if (item == 
# 2701 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
               ((void *)0)
# 2701 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                   )
    {
        return ((cJSON_bool)0);
    }

    return (item->type & 0xFF) == (0);
}

cJSON_bool cJSON_IsFalse(const cJSON * const item)
{
    if (item == 
# 2711 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
               ((void *)0)
# 2711 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                   )
    {
        return ((cJSON_bool)0);
    }

    return (item->type & 0xFF) == (1 << 0);
}

cJSON_bool cJSON_IsTrue(const cJSON * const item)
{
    if (item == 
# 2721 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
               ((void *)0)
# 2721 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                   )
    {
        return ((cJSON_bool)0);
    }

    return (item->type & 0xff) == (1 << 1);
}


cJSON_bool cJSON_IsBool(const cJSON * const item)
{
    if (item == 
# 2732 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
               ((void *)0)
# 2732 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                   )
    {
        return ((cJSON_bool)0);
    }

    return (item->type & ((1 << 1) | (1 << 0))) != 0;
}
cJSON_bool cJSON_IsNull(const cJSON * const item)
{
    if (item == 
# 2741 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
               ((void *)0)
# 2741 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                   )
    {
        return ((cJSON_bool)0);
    }

    return (item->type & 0xFF) == (1 << 2);
}

cJSON_bool cJSON_IsNumber(const cJSON * const item)
{
    if (item == 
# 2751 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
               ((void *)0)
# 2751 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                   )
    {
        return ((cJSON_bool)0);
    }

    return (item->type & 0xFF) == (1 << 3);
}

cJSON_bool cJSON_IsString(const cJSON * const item)
{
    if (item == 
# 2761 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
               ((void *)0)
# 2761 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                   )
    {
        return ((cJSON_bool)0);
    }

    return (item->type & 0xFF) == (1 << 4);
}

cJSON_bool cJSON_IsArray(const cJSON * const item)
{
    if (item == 
# 2771 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
               ((void *)0)
# 2771 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                   )
    {
        return ((cJSON_bool)0);
    }

    return (item->type & 0xFF) == (1 << 5);
}

cJSON_bool cJSON_IsObject(const cJSON * const item)
{
    if (item == 
# 2781 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
               ((void *)0)
# 2781 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                   )
    {
        return ((cJSON_bool)0);
    }

    return (item->type & 0xFF) == (1 << 6);
}

cJSON_bool cJSON_IsRaw(const cJSON * const item)
{
    if (item == 
# 2791 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
               ((void *)0)
# 2791 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                   )
    {
        return ((cJSON_bool)0);
    }

    return (item->type & 0xFF) == (1 << 7);
}

cJSON_bool cJSON_Compare(const cJSON * const a, const cJSON * const b, const cJSON_bool case_sensitive)
{
    if ((a == 
# 2801 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
             ((void *)0)
# 2801 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                 ) || (b == 
# 2801 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                            ((void *)0)
# 2801 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                ) || ((a->type & 0xFF) != (b->type & 0xFF)) || cJSON_IsInvalid(a))
    {
        return ((cJSON_bool)0);
    }


    switch (a->type & 0xFF)
    {
        case (1 << 0):
        case (1 << 1):
        case (1 << 2):
        case (1 << 3):
        case (1 << 4):
        case (1 << 7):
        case (1 << 5):
        case (1 << 6):
            break;

        default:
            return ((cJSON_bool)0);
    }


    if (a == b)
    {
        return ((cJSON_bool)1);
    }

    switch (a->type & 0xFF)
    {

        case (1 << 0):
        case (1 << 1):
        case (1 << 2):
            return ((cJSON_bool)1);

        case (1 << 3):
            if (a->valuedouble == b->valuedouble)
            {
                return ((cJSON_bool)1);
            }
            return ((cJSON_bool)0);

        case (1 << 4):
        case (1 << 7):
            if ((a->valuestring == 
# 2846 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                                  ((void *)0)
# 2846 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                      ) || (b->valuestring == 
# 2846 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                                                              ((void *)0)
# 2846 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                                                  ))
            {
                return ((cJSON_bool)0);
            }
            if (strcmp(a->valuestring, b->valuestring) == 0)
            {
                return ((cJSON_bool)1);
            }

            return ((cJSON_bool)0);

        case (1 << 5):
        {
            cJSON *a_element = a->child;
            cJSON *b_element = b->child;

            for (; (a_element != 
# 2862 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                                ((void *)0)
# 2862 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                    ) && (b_element != 
# 2862 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                                                       ((void *)0)
# 2862 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                                           );)
            {
                if (!cJSON_Compare(a_element, b_element, case_sensitive))
                {
                    return ((cJSON_bool)0);
                }

                a_element = a_element->next;
                b_element = b_element->next;
            }


            if (a_element != b_element) {
                return ((cJSON_bool)0);
            }

            return ((cJSON_bool)1);
        }

        case (1 << 6):
        {
            cJSON *a_element = 
# 2883 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                              ((void *)0)
# 2883 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                  ;
            cJSON *b_element = 
# 2884 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                              ((void *)0)
# 2884 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                  ;
            for(a_element = (a != 
# 2885 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
           ((void *)0)
# 2885 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
           ) ? (a)->child : 
# 2885 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
           ((void *)0)
# 2885 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
           ; a_element != 
# 2885 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
           ((void *)0)
# 2885 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
           ; a_element = a_element->next)
            {

                b_element = get_object_item(b, a_element->string, case_sensitive);
                if (b_element == 
# 2889 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                                ((void *)0)
# 2889 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                    )
                {
                    return ((cJSON_bool)0);
                }

                if (!cJSON_Compare(a_element, b_element, case_sensitive))
                {
                    return ((cJSON_bool)0);
                }
            }



            for(b_element = (b != 
# 2902 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
           ((void *)0)
# 2902 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
           ) ? (b)->child : 
# 2902 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
           ((void *)0)
# 2902 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
           ; b_element != 
# 2902 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
           ((void *)0)
# 2902 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
           ; b_element = b_element->next)
            {
                a_element = get_object_item(a, b_element->string, case_sensitive);
                if (a_element == 
# 2905 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c" 3 4
                                ((void *)0)
# 2905 "D:/ESP32/esp-idf-v3.1-rc1/components/json/cJSON/cJSON.c"
                                    )
                {
                    return ((cJSON_bool)0);
                }

                if (!cJSON_Compare(b_element, a_element, case_sensitive))
                {
                    return ((cJSON_bool)0);
                }
            }

            return ((cJSON_bool)1);
        }

        default:
            return ((cJSON_bool)0);
    }
}

void * cJSON_malloc(size_t size)
{
    return global_hooks.allocate(size);
}

void cJSON_free(void *object)
{
    global_hooks.deallocate(object);
}
