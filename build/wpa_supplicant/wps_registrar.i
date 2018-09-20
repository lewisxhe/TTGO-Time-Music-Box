# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
# 1 "D:\\ESP32\\esp-idf-v3.1-rc1\\ESP32_PIC_A2DP\\build\\wpa_supplicant//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"







# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/includes.h" 1
# 9 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/list.h" 1
# 18 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/list.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 149 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4

# 149 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef int ptrdiff_t;
# 216 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef unsigned int size_t;
# 328 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef short unsigned int wchar_t;
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/list.h" 2





# 23 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/list.h"
struct dl_list {
 struct dl_list *next;
 struct dl_list *prev;
};

static inline void dl_list_init(struct dl_list *list)
{
 list->next = list;
 list->prev = list;
}

static inline void dl_list_add(struct dl_list *list, struct dl_list *item)
{
 item->next = list->next;
 item->prev = list;
 list->next->prev = item;
 list->next = item;
}

static inline void dl_list_add_tail(struct dl_list *list, struct dl_list *item)
{
 dl_list_add(list->prev, item);
}

static inline void dl_list_del(struct dl_list *item)
{
 item->next->prev = item->prev;
 item->prev->next = item->next;
 item->next = 
# 51 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/list.h" 3 4
             ((void *)0)
# 51 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/list.h"
                 ;
 item->prev = 
# 52 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/list.h" 3 4
             ((void *)0)
# 52 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/list.h"
                 ;
}

static inline int dl_list_empty(struct dl_list *list)
{
 return list->next == list;
}

static inline unsigned int dl_list_len(struct dl_list *list)
{
 struct dl_list *item;
 int count = 0;
 for (item = list->next; item != list; item = item->next)
  count++;
 return count;
}
# 10 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 2
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
# 46 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/cdefs.h" 2
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_types.h" 2

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
# 11 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/base64.h" 1
# 18 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/base64.h"
unsigned char * base64_encode(const unsigned char *src, size_t len,
         size_t *out_len);
unsigned char * base64_decode(const unsigned char *src, size_t len,
         size_t *out_len);
# 12 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wps/utils/uuid.h" 1
# 14 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wps/utils/uuid.h"
int uuid_str2bin(const char *str, u8 *bin);
int uuid_bin2str(const u8 *bin, char *str, size_t max_len);
int is_nil_uuid(const u8 *uuid);
# 14 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/crypto.h" 1
# 30 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/crypto.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/common.h" 1
# 31 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/crypto.h" 2
# 40 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/crypto.h"
int md4_vector(size_t num_elem, const u8 *addr[], const size_t *len, u8 *mac);
# 50 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/crypto.h"
int md5_vector(size_t num_elem, const u8 *addr[], const size_t *len, u8 *mac);
# 76 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/crypto.h"
int sha1_vector(size_t num_elem, const u8 *addr[], const size_t *len,
  u8 *mac);
# 91 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/crypto.h"
int __attribute__((__warn_unused_result__)) fips186_2_prf(const u8 *seed, size_t seed_len, u8 *x,
          size_t xlen);
# 102 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/crypto.h"
int sha256_vector(size_t num_elem, const u8 *addr[], const size_t *len,
    u8 *mac);
# 113 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/crypto.h"
int fast_sha256_vector(size_t num_elem, const uint8_t *addr[], const size_t *len,
         uint8_t *mac);







void des_encrypt(const u8 *clear, const u8 *key, u8 *cypher);







void * aes_encrypt_init(const u8 *key, size_t len);







void aes_encrypt(void *ctx, const u8 *plain, u8 *crypt);





void aes_encrypt_deinit(void *ctx);







void * aes_decrypt_init(const u8 *key, size_t len);







void aes_decrypt(void *ctx, const u8 *crypt, u8 *plain);





void aes_decrypt_deinit(void *ctx);


enum crypto_hash_alg {
        CRYPTO_HASH_ALG_MD5, CRYPTO_HASH_ALG_SHA1,
        CRYPTO_HASH_ALG_HMAC_MD5, CRYPTO_HASH_ALG_HMAC_SHA1,
        CRYPTO_HASH_ALG_SHA256, CRYPTO_HASH_ALG_HMAC_SHA256
};

struct crypto_hash;
# 189 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/crypto.h"
struct crypto_hash * crypto_hash_init(enum crypto_hash_alg alg, const u8 *key,
          size_t key_len);
# 204 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/crypto.h"
struct crypto_hash * fast_crypto_hash_init(enum crypto_hash_alg alg, const uint8_t *key,
                    size_t key_len);
# 217 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/crypto.h"
void crypto_hash_update(struct crypto_hash *ctx, const u8 *data, size_t len);
# 229 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/crypto.h"
void fast_crypto_hash_update(struct crypto_hash *ctx, const uint8_t *data, size_t len);
# 248 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/crypto.h"
int crypto_hash_finish(struct crypto_hash *ctx, u8 *hash, size_t *len);
# 267 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/crypto.h"
int fast_crypto_hash_finish(struct crypto_hash *ctx, uint8_t *hash, size_t *len);


enum crypto_cipher_alg {
 CRYPTO_CIPHER_NULL = 0, CRYPTO_CIPHER_ALG_AES, CRYPTO_CIPHER_ALG_3DES,
 CRYPTO_CIPHER_ALG_DES, CRYPTO_CIPHER_ALG_RC2, CRYPTO_CIPHER_ALG_RC4
};

struct crypto_cipher;
# 290 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/crypto.h"
struct crypto_cipher * crypto_cipher_init(enum crypto_cipher_alg alg,
       const u8 *iv, const u8 *key,
       size_t key_len);
# 307 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/crypto.h"
struct crypto_cipher * fast_crypto_cipher_init(enum crypto_cipher_alg alg,
                 const uint8_t *iv, const uint8_t *key,
                 size_t key_len);
# 322 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/crypto.h"
int __attribute__((__warn_unused_result__)) crypto_cipher_encrypt(struct crypto_cipher *ctx,
           const u8 *plain, u8 *crypt, size_t len);
# 337 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/crypto.h"
int __attribute__((__warn_unused_result__)) fast_crypto_cipher_encrypt(struct crypto_cipher *ctx,
                const uint8_t *plain, uint8_t *crypt, size_t len);
# 352 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/crypto.h"
int __attribute__((__warn_unused_result__)) crypto_cipher_decrypt(struct crypto_cipher *ctx,
           const u8 *crypt, u8 *plain, size_t len);
# 367 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/crypto.h"
int __attribute__((__warn_unused_result__)) fast_crypto_cipher_decrypt(struct crypto_cipher *ctx,
                const uint8_t *crypt, uint8_t *plain, size_t len);
# 378 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/crypto.h"
void crypto_cipher_deinit(struct crypto_cipher *ctx);
# 388 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/crypto.h"
void fast_crypto_cipher_deinit(struct crypto_cipher *ctx);

struct crypto_public_key;
struct crypto_private_key;
# 407 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/crypto.h"
struct crypto_public_key * crypto_public_key_import(const u8 *key, size_t len);
# 420 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/crypto.h"
struct crypto_private_key * crypto_private_key_import(const u8 *key,
            size_t len,
            const char *passwd);
# 438 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/crypto.h"
struct crypto_public_key * crypto_public_key_from_cert(const u8 *buf,
             size_t len);
# 454 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/crypto.h"
int __attribute__((__warn_unused_result__)) crypto_public_key_encrypt_pkcs1_v15(
 struct crypto_public_key *key, const u8 *in, size_t inlen,
 u8 *out, size_t *outlen);
# 471 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/crypto.h"
int __attribute__((__warn_unused_result__)) crypto_private_key_decrypt_pkcs1_v15(
 struct crypto_private_key *key, const u8 *in, size_t inlen,
 u8 *out, size_t *outlen);
# 488 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/crypto.h"
int __attribute__((__warn_unused_result__)) crypto_private_key_sign_pkcs1(struct crypto_private_key *key,
            const u8 *in, size_t inlen,
            u8 *out, size_t *outlen);
# 500 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/crypto.h"
void crypto_public_key_free(struct crypto_public_key *key);
# 510 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/crypto.h"
void crypto_private_key_free(struct crypto_private_key *key);
# 521 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/crypto.h"
int __attribute__((__warn_unused_result__)) crypto_public_key_decrypt_pkcs1(
 struct crypto_public_key *key, const u8 *crypt, size_t crypt_len,
 u8 *plain, size_t *plain_len);
# 532 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/crypto.h"
int __attribute__((__warn_unused_result__)) crypto_global_init(void);
# 541 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/crypto.h"
void crypto_global_deinit(void);
# 563 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/crypto.h"
int __attribute__((__warn_unused_result__)) crypto_mod_exp(const u8 *base, size_t base_len,
    const u8 *power, size_t power_len,
    const u8 *modulus, size_t modulus_len,
    u8 *result, size_t *result_len);
# 588 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/crypto.h"
int __attribute__((__warn_unused_result__)) fast_crypto_mod_exp(const uint8_t *base, size_t base_len,
         const uint8_t *power, size_t power_len,
         const uint8_t *modulus, size_t modulus_len,
         uint8_t *result, size_t *result_len);
# 606 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/crypto.h"
int rc4_skip(const u8 *key, size_t keylen, size_t skip,
      u8 *data, size_t data_len);
# 16 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/sha256.h" 1
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/sha256.h"
void hmac_sha256_vector(const u8 *key, size_t key_len, size_t num_elem,
        const u8 *addr[], const size_t *len, u8 *mac);
void hmac_sha256(const u8 *key, size_t key_len, const u8 *data,
   size_t data_len, u8 *mac);
void sha256_prf(const u8 *key, size_t key_len, const char *label,
       const u8 *data, size_t data_len, u8 *buf, size_t buf_len);

void fast_hmac_sha256_vector(const uint8_t *key, size_t key_len, size_t num_elem,
               const uint8_t *addr[], const size_t *len, uint8_t *mac);
void fast_hmac_sha256(const uint8_t *key, size_t key_len, const uint8_t *data,
        size_t data_len, uint8_t *mac);
void fast_sha256_prf(const uint8_t *key, size_t key_len, const char *label,
              const uint8_t *data, size_t data_len, uint8_t *buf, size_t buf_len);
# 17 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/random.h" 1
# 18 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/ieee802_11_defs.h" 1
# 240 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/ieee802_11_defs.h"
struct ieee80211_hdr {
 le16 frame_control;
 le16 duration_id;
 u8 addr1[6];
 u8 addr2[6];
 u8 addr3[6];
 le16 seq_ctrl;


} __attribute__ ((packed));
# 259 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/ieee802_11_defs.h"
struct ieee80211_mgmt {
 le16 frame_control;
 le16 duration;
 u8 da[6];
 u8 sa[6];
 u8 bssid[6];
 le16 seq_ctrl;
 union {
  struct {
   le16 auth_alg;
   le16 auth_transaction;
   le16 status_code;

   u8 variable[0];
  } __attribute__ ((packed)) auth;
  struct {
   le16 reason_code;
  } __attribute__ ((packed)) deauth;
  struct {
   le16 capab_info;
   le16 listen_interval;

   u8 variable[0];
  } __attribute__ ((packed)) assoc_req;
  struct {
   le16 capab_info;
   le16 status_code;
   le16 aid;

   u8 variable[0];
  } __attribute__ ((packed)) assoc_resp, reassoc_resp;
  struct {
   le16 capab_info;
   le16 listen_interval;
   u8 current_ap[6];

   u8 variable[0];
  } __attribute__ ((packed)) reassoc_req;
  struct {
   le16 reason_code;
  } __attribute__ ((packed)) disassoc;
  struct {
   u8 timestamp[8];
   le16 beacon_int;
   le16 capab_info;


   u8 variable[0];
  } __attribute__ ((packed)) beacon;
  struct {

   u8 variable[0];
  } __attribute__ ((packed)) probe_req;
  struct {
   u8 timestamp[8];
   le16 beacon_int;
   le16 capab_info;


   u8 variable[0];
  } __attribute__ ((packed)) probe_resp;
  struct {
   u8 category;
   union {
    struct {
     u8 action_code;
     u8 dialog_token;
     u8 status_code;
     u8 variable[0];
    } __attribute__ ((packed)) wmm_action;
    struct{
     u8 action_code;
     u8 element_id;
     u8 length;
     u8 switch_mode;
     u8 new_chan;
     u8 switch_count;
    } __attribute__ ((packed)) chan_switch;
    struct {
     u8 action;
     u8 sta_addr[6];
     u8 target_ap_addr[6];
     u8 variable[0];
    } __attribute__ ((packed)) ft_action_req;
    struct {
     u8 action;
     u8 sta_addr[6];
     u8 target_ap_addr[6];
     le16 status_code;
     u8 variable[0];
    } __attribute__ ((packed)) ft_action_resp;
    struct {
     u8 action;
     u8 trans_id[2];
    } __attribute__ ((packed)) sa_query_req;
    struct {
     u8 action;
     u8 trans_id[2];
    } __attribute__ ((packed)) sa_query_resp;
   } u;
  } __attribute__ ((packed)) action;
 } u;
} __attribute__ ((packed));


struct ieee80211_ht_capabilities {
 le16 ht_capabilities_info;
 u8 a_mpdu_params;
 u8 supported_mcs_set[16];
 le16 ht_extended_capabilities;
 le32 tx_bf_capability_info;
 u8 asel_capabilities;
} __attribute__ ((packed));


struct ieee80211_ht_operation {
 u8 control_chan;
 u8 ht_param;
 le16 operation_mode;
 le16 stbc_param;
 u8 basic_set[16];
} __attribute__ ((packed));
# 508 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/ieee802_11_defs.h"
struct wmm_information_element {


 u8 oui[3];
 u8 oui_type;
 u8 oui_subtype;
 u8 version;
 u8 qos_info;

} __attribute__ ((packed));
# 530 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/ieee802_11_defs.h"
struct wmm_ac_parameter {
 u8 aci_aifsn;
 u8 cw;
 le16 txop_limit;
} __attribute__ ((packed));





struct wmm_parameter_element {


 u8 oui[3];
 u8 oui_type;
 u8 oui_subtype;
 u8 version;
 u8 qos_info;
 u8 reserved;
 struct wmm_ac_parameter ac[4];

} __attribute__ ((packed));


struct wmm_tspec_element {
 u8 eid;
 u8 length;
 u8 oui[3];
 u8 oui_type;
 u8 oui_subtype;
 u8 version;

 u8 ts_info[3];
 le16 nominal_msdu_size;
 le16 maximum_msdu_size;
 le32 minimum_service_interval;
 le32 maximum_service_interval;
 le32 inactivity_interval;
 le32 suspension_interval;
 le32 service_start_time;
 le32 minimum_data_rate;
 le32 mean_data_rate;
 le32 peak_data_rate;
 le32 maximum_burst_size;
 le32 delay_bound;
 le32 minimum_phy_rate;
 le16 surplus_bandwidth_allowance;
 le16 medium_time;
} __attribute__ ((packed));



enum {
 WMM_AC_BE = 0 ,
 WMM_AC_BK = 1 ,
 WMM_AC_VI = 2 ,
 WMM_AC_VO = 3
};
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 2
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
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wps/wps_dev_attr.h" 1
# 12 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wps/wps_dev_attr.h"
struct wps_parse_attr;

int wps_build_manufacturer(struct wps_device_data *dev, struct wpabuf *msg);
int wps_build_model_name(struct wps_device_data *dev, struct wpabuf *msg);
int wps_build_model_number(struct wps_device_data *dev, struct wpabuf *msg);
int wps_build_dev_name(struct wps_device_data *dev, struct wpabuf *msg);
int wps_build_device_attrs(struct wps_device_data *dev, struct wpabuf *msg);
int wps_build_os_version(struct wps_device_data *dev, struct wpabuf *msg);
int wps_build_vendor_ext_m1(struct wps_device_data *dev, struct wpabuf *msg);
int wps_build_rf_bands(struct wps_device_data *dev, struct wpabuf *msg);
int wps_build_primary_dev_type(struct wps_device_data *dev,
          struct wpabuf *msg);
int wps_build_secondary_dev_type(struct wps_device_data *dev,
     struct wpabuf *msg);
int wps_build_dev_name(struct wps_device_data *dev, struct wpabuf *msg);
int wps_process_device_attrs(struct wps_device_data *dev,
        struct wps_parse_attr *attr);
int wps_process_os_version(struct wps_device_data *dev, const u8 *ver);
int wps_process_rf_bands(struct wps_device_data *dev, const u8 *bands);
void wps_device_data_dup(struct wps_device_data *dst,
    const struct wps_device_data *src);
void wps_device_data_free(struct wps_device_data *dev);
int wps_build_vendor_ext(struct wps_device_data *dev, struct wpabuf *msg);
int wps_build_req_dev_type(struct wps_device_data *dev, struct wpabuf *msg,
      unsigned int num_req_dev_types,
      const u8 *req_dev_types);
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 2
# 76 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
struct wps_uuid_pin {
 struct dl_list list;
 u8 uuid[16];
 int wildcard_uuid;
 u8 *pin;
 size_t pin_len;


 int flags;
 struct os_time expiration;
 u8 enrollee_addr[6];
};


static void wps_free_pin(struct wps_uuid_pin *pin)
{
 free((pin->pin));
 free((pin));
}


static void wps_remove_pin(struct wps_uuid_pin *pin)
{
 dl_list_del(&pin->list);
 wps_free_pin(pin);
}


static void wps_free_pins(struct dl_list *pins)
{
 struct wps_uuid_pin *pin, *prev;
 for (pin = ((struct wps_uuid_pin *) ((char *) (pins)->next - 
# 107 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
__builtin_offsetof (
# 107 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
struct wps_uuid_pin
# 107 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
, 
# 107 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
list
# 107 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
)
# 107 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
)), prev = ((struct wps_uuid_pin *) ((char *) pin->list.next - 
# 107 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
__builtin_offsetof (
# 107 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
struct wps_uuid_pin
# 107 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
, 
# 107 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
list
# 107 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
)
# 107 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
)); &pin->list != (pins); pin = prev, prev = ((struct wps_uuid_pin *) ((char *) prev->list.next - 
# 107 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
__builtin_offsetof (
# 107 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
struct wps_uuid_pin
# 107 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
, 
# 107 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
list
# 107 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
)
# 107 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
)));
 wps_remove_pin(pin);
}



struct wps_pbc_session {
 struct wps_pbc_session *next;
 u8 addr[6];
 u8 uuid_e[16];
 struct os_time timestamp;
};


static void wps_free_pbc_sessions(struct wps_pbc_session *pbc)
{
 struct wps_pbc_session *prev;

 while (pbc) {
  prev = pbc;
  pbc = pbc->next;
  free((prev));
 }
}


struct wps_registrar_device {
 struct wps_registrar_device *next;
 struct wps_device_data dev;
 u8 uuid[16];
};


struct wps_registrar {
 struct wps_context *wps;

 int pbc;
 int selected_registrar;

 int (*new_psk_cb)(void *ctx, const u8 *mac_addr, const u8 *psk,
     size_t psk_len);
 int (*set_ie_cb)(void *ctx, struct wpabuf *beacon_ie,
    struct wpabuf *probe_resp_ie);
 void (*pin_needed_cb)(void *ctx, const u8 *uuid_e,
         const struct wps_device_data *dev);
 void (*reg_success_cb)(void *ctx, const u8 *mac_addr,
          const u8 *uuid_e, const u8 *dev_pw,
          size_t dev_pw_len);
 void (*set_sel_reg_cb)(void *ctx, int sel_reg, u16 dev_passwd_id,
          u16 sel_reg_config_methods);
 void (*enrollee_seen_cb)(void *ctx, const u8 *addr, const u8 *uuid_e,
     const u8 *pri_dev_type, u16 config_methods,
     u16 dev_password_id, u8 request_type,
     const char *dev_name);
 void *cb_ctx;

 struct dl_list pins;
 struct dl_list nfc_pw_tokens;
 struct wps_pbc_session *pbc_sessions;

 int skip_cred_build;
 struct wpabuf *extra_cred;
 int disable_auto_conf;
 int sel_reg_union;
 int sel_reg_dev_password_id_override;
 int sel_reg_config_methods_override;
 int static_wep_only;
 int dualband;

 struct wps_registrar_device *devices;

 int force_pbc_overlap;

 u8 authorized_macs[5][6];
 u8 authorized_macs_union[5][6];

 u8 p2p_dev_addr[6];

 u8 pbc_ignore_uuid[16];
 struct os_time pbc_ignore_start;
};


static int wps_set_ie(struct wps_registrar *reg);



static void wps_registrar_pbc_timeout(void *eloop_ctx);




static void wps_registrar_remove_pin(struct wps_registrar *reg,
         struct wps_uuid_pin *pin);


static void wps_registrar_add_authorized_mac(struct wps_registrar *reg,
          const u8 *addr)
{
 int i;
 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Add authorized MAC " "%02x:%02x:%02x:%02x:%02x:%02x" "\033[0m" "\n", esp_log_timestamp(), "wpa", (addr)[0], (addr)[1], (addr)[2], (addr)[3], (addr)[4], (addr)[5]); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Add authorized MAC " "%02x:%02x:%02x:%02x:%02x:%02x" "\033[0m" "\n", esp_log_timestamp(), "wpa", (addr)[0], (addr)[1], (addr)[2], (addr)[3], (addr)[4], (addr)[5]); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Add authorized MAC " "%02x:%02x:%02x:%02x:%02x:%02x" "\033[0m" "\n", esp_log_timestamp(), "wpa", (addr)[0], (addr)[1], (addr)[2], (addr)[3], (addr)[4], (addr)[5]); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Add authorized MAC " "%02x:%02x:%02x:%02x:%02x:%02x" "\033[0m" "\n", esp_log_timestamp(), "wpa", (addr)[0], (addr)[1], (addr)[2], (addr)[3], (addr)[4], (addr)[5]); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Add authorized MAC " "%02x:%02x:%02x:%02x:%02x:%02x" "\033[0m" "\n", esp_log_timestamp(), "wpa", (addr)[0], (addr)[1], (addr)[2], (addr)[3], (addr)[4], (addr)[5]); } } while(0); } while(0)
                   ;
 for (i = 0; i < 5; i++)
  if (memcmp((reg->authorized_macs[i]), (addr), (6)) == 0) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Authorized MAC was " "already in the list" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Authorized MAC was " "already in the list" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Authorized MAC was " "already in the list" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Authorized MAC was " "already in the list" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Authorized MAC was " "already in the list" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                             ;
   return;
  }
 for (i = 5 - 1; i > 0; i--)
  memcpy((reg->authorized_macs[i]), (reg->authorized_macs[i - 1]), (6))
              ;
 memcpy((reg->authorized_macs[0]), (addr), (6));
 wpa_hexdump(ESP_LOG_DEBUG, "WPS: Authorized MACs",
      (u8 *) reg->authorized_macs, sizeof(reg->authorized_macs));
}


static void wps_registrar_remove_authorized_mac(struct wps_registrar *reg,
      const u8 *addr)
{
 int i;
 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Remove authorized MAC " "%02x:%02x:%02x:%02x:%02x:%02x" "\033[0m" "\n", esp_log_timestamp(), "wpa", (addr)[0], (addr)[1], (addr)[2], (addr)[3], (addr)[4], (addr)[5]); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Remove authorized MAC " "%02x:%02x:%02x:%02x:%02x:%02x" "\033[0m" "\n", esp_log_timestamp(), "wpa", (addr)[0], (addr)[1], (addr)[2], (addr)[3], (addr)[4], (addr)[5]); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Remove authorized MAC " "%02x:%02x:%02x:%02x:%02x:%02x" "\033[0m" "\n", esp_log_timestamp(), "wpa", (addr)[0], (addr)[1], (addr)[2], (addr)[3], (addr)[4], (addr)[5]); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Remove authorized MAC " "%02x:%02x:%02x:%02x:%02x:%02x" "\033[0m" "\n", esp_log_timestamp(), "wpa", (addr)[0], (addr)[1], (addr)[2], (addr)[3], (addr)[4], (addr)[5]); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Remove authorized MAC " "%02x:%02x:%02x:%02x:%02x:%02x" "\033[0m" "\n", esp_log_timestamp(), "wpa", (addr)[0], (addr)[1], (addr)[2], (addr)[3], (addr)[4], (addr)[5]); } } while(0); } while(0)
                   ;
 for (i = 0; i < 5; i++) {
  if (memcmp((reg->authorized_macs), (addr), (6)) == 0)
   break;
 }
 if (i == 5) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Authorized MAC was not in the " "list" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Authorized MAC was not in the " "list" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Authorized MAC was not in the " "list" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Authorized MAC was not in the " "list" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Authorized MAC was not in the " "list" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
             ;
  return;
 }
 for (; i + 1 < 5; i++)
  memcpy((reg->authorized_macs[i]), (reg->authorized_macs[i + 1]), (6))
              ;
 memset(reg->authorized_macs[5 - 1], 0, 6)
             ;
 wpa_hexdump(ESP_LOG_DEBUG, "WPS: Authorized MACs",
      (u8 *) reg->authorized_macs, sizeof(reg->authorized_macs));
}


static void wps_free_devices(struct wps_registrar_device *dev)
{
 struct wps_registrar_device *prev;

 while (dev) {
  prev = dev;
  dev = dev->next;
  wps_device_data_free(&prev->dev);
  free((prev));
 }
}


static struct wps_registrar_device * wps_device_get(struct wps_registrar *reg,
          const u8 *addr)
{
 struct wps_registrar_device *dev;

 for (dev = reg->devices; dev; dev = dev->next) {
  if (memcmp((dev->dev.mac_addr), (addr), (6)) == 0)
   return dev;
 }
 return 
# 271 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
       ((void *)0)
# 271 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
           ;
}


static void wps_device_clone_data(struct wps_device_data *dst,
      struct wps_device_data *src)
{
 memcpy((dst->mac_addr), (src->mac_addr), (6));
 memcpy((dst->pri_dev_type), (src->pri_dev_type), (8));





 free((dst->device_name)); dst->device_name = src->device_name ? strdup(src->device_name) : 
# 285 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
((void *)0)
# 285 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                       ;
 free((dst->manufacturer)); dst->manufacturer = src->manufacturer ? strdup(src->manufacturer) : 
# 286 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
((void *)0)
# 286 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                        ;
 free((dst->model_name)); dst->model_name = src->model_name ? strdup(src->model_name) : 
# 287 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
((void *)0)
# 287 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                      ;
 free((dst->model_number)); dst->model_number = src->model_number ? strdup(src->model_number) : 
# 288 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
((void *)0)
# 288 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                        ;
 free((dst->serial_number)); dst->serial_number = src->serial_number ? strdup(src->serial_number) : 
# 289 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
((void *)0)
# 289 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                         ;

}


int wps_device_store(struct wps_registrar *reg,
       struct wps_device_data *dev, const u8 *uuid)
{
 struct wps_registrar_device *d;

 d = wps_device_get(reg, dev->mac_addr);
 if (d == 
# 300 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
         ((void *)0)
# 300 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
             ) {
  d = (struct wps_registrar_device *)calloc(1, (sizeof(*d)));
  if (d == 
# 302 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
          ((void *)0)
# 302 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
              )
   return -1;
  d->next = reg->devices;
  reg->devices = d;
 }

 wps_device_clone_data(&d->dev, dev);
 memcpy((d->uuid), (uuid), (16));

 return 0;
}


static void wps_registrar_add_pbc_session(struct wps_registrar *reg,
       const u8 *addr, const u8 *uuid_e)
{
 struct wps_pbc_session *pbc, *prev = 
# 318 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
                                     ((void *)0)
# 318 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                                         ;
 struct os_time now;

 os_get_time(&now);

 pbc = reg->pbc_sessions;
 while (pbc) {
  if (memcmp((pbc->addr), (addr), (6)) == 0 &&
      memcmp((pbc->uuid_e), (uuid_e), (16)) == 0) {
   if (prev)
    prev->next = pbc->next;
   else
    reg->pbc_sessions = pbc->next;
   break;
  }
  prev = pbc;
  pbc = pbc->next;
 }

 if (!pbc) {
  pbc = (struct wps_pbc_session *)calloc(1, (sizeof(*pbc)));
  if (pbc == 
# 339 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
            ((void *)0)
# 339 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                )
   return;
  memcpy((pbc->addr), (addr), (6));
  if (uuid_e)
   memcpy((pbc->uuid_e), (uuid_e), (16));
 }

 pbc->next = reg->pbc_sessions;
 reg->pbc_sessions = pbc;
 pbc->timestamp = now;


 prev = pbc;
 pbc = pbc->next;

 while (pbc) {
  if (now.sec > pbc->timestamp.sec + 120) {
   prev->next = 
# 356 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
               ((void *)0)
# 356 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                   ;
   wps_free_pbc_sessions(pbc);
   break;
  }
  prev = pbc;
  pbc = pbc->next;
 }
}


static void wps_registrar_remove_pbc_session(struct wps_registrar *reg,
          const u8 *uuid_e,
          const u8 *p2p_dev_addr)
{
 struct wps_pbc_session *pbc, *prev = 
# 370 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
                                     ((void *)0)
# 370 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                                         , *tmp;

 pbc = reg->pbc_sessions;
 while (pbc) {
  if (memcmp((pbc->uuid_e), (uuid_e), (16)) == 0 ||
      (p2p_dev_addr && !is_zero_ether_addr(reg->p2p_dev_addr) &&
       memcmp((reg->p2p_dev_addr), (p2p_dev_addr), (6)) ==
       0)) {
   if (prev)
    prev->next = pbc->next;
   else
    reg->pbc_sessions = pbc->next;
   tmp = pbc;
   pbc = pbc->next;
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Removing PBC session for " "addr=" "%02x:%02x:%02x:%02x:%02x:%02x" "\033[0m" "\n", esp_log_timestamp(), "wpa", (tmp->addr)[0], (tmp->addr)[1], (tmp->addr)[2], (tmp->addr)[3], (tmp->addr)[4], (tmp->addr)[5]); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Removing PBC session for " "addr=" "%02x:%02x:%02x:%02x:%02x:%02x" "\033[0m" "\n", esp_log_timestamp(), "wpa", (tmp->addr)[0], (tmp->addr)[1], (tmp->addr)[2], (tmp->addr)[3], (tmp->addr)[4], (tmp->addr)[5]); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Removing PBC session for " "addr=" "%02x:%02x:%02x:%02x:%02x:%02x" "\033[0m" "\n", esp_log_timestamp(), "wpa", (tmp->addr)[0], (tmp->addr)[1], (tmp->addr)[2], (tmp->addr)[3], (tmp->addr)[4], (tmp->addr)[5]); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Removing PBC session for " "addr=" "%02x:%02x:%02x:%02x:%02x:%02x" "\033[0m" "\n", esp_log_timestamp(), "wpa", (tmp->addr)[0], (tmp->addr)[1], (tmp->addr)[2], (tmp->addr)[3], (tmp->addr)[4], (tmp->addr)[5]); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Removing PBC session for " "addr=" "%02x:%02x:%02x:%02x:%02x:%02x" "\033[0m" "\n", esp_log_timestamp(), "wpa", (tmp->addr)[0], (tmp->addr)[1], (tmp->addr)[2], (tmp->addr)[3], (tmp->addr)[4], (tmp->addr)[5]); } } while(0); } while(0)
                                          ;
   wpa_hexdump(ESP_LOG_DEBUG, "WPS: Removed UUID-E",
        tmp->uuid_e, 16);
   free((tmp));
   continue;
  }
  prev = pbc;
  pbc = pbc->next;
 }
}


int wps_registrar_pbc_overlap(struct wps_registrar *reg,
         const u8 *addr, const u8 *uuid_e)
{
 int count = 0;
 struct wps_pbc_session *pbc;
 struct wps_pbc_session *first = 
# 402 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
                                ((void *)0)
# 402 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                                    ;
 struct os_time now;

 os_get_time(&now);

 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Checking active PBC sessions for overlap" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Checking active PBC sessions for overlap" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Checking active PBC sessions for overlap" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Checking active PBC sessions for overlap" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Checking active PBC sessions for overlap" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);

 if (uuid_e) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Add one for the requested UUID" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Add one for the requested UUID" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Add one for the requested UUID" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Add one for the requested UUID" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Add one for the requested UUID" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
  wpa_hexdump(ESP_LOG_DEBUG, "WPS: Requested UUID",
       uuid_e, 16);
  count++;
 }

 for (pbc = reg->pbc_sessions; pbc; pbc = pbc->next) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Consider PBC session with " "%02x:%02x:%02x:%02x:%02x:%02x" "\033[0m" "\n", esp_log_timestamp(), "wpa", (pbc->addr)[0], (pbc->addr)[1], (pbc->addr)[2], (pbc->addr)[3], (pbc->addr)[4], (pbc->addr)[5]); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Consider PBC session with " "%02x:%02x:%02x:%02x:%02x:%02x" "\033[0m" "\n", esp_log_timestamp(), "wpa", (pbc->addr)[0], (pbc->addr)[1], (pbc->addr)[2], (pbc->addr)[3], (pbc->addr)[4], (pbc->addr)[5]); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Consider PBC session with " "%02x:%02x:%02x:%02x:%02x:%02x" "\033[0m" "\n", esp_log_timestamp(), "wpa", (pbc->addr)[0], (pbc->addr)[1], (pbc->addr)[2], (pbc->addr)[3], (pbc->addr)[4], (pbc->addr)[5]); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Consider PBC session with " "%02x:%02x:%02x:%02x:%02x:%02x" "\033[0m" "\n", esp_log_timestamp(), "wpa", (pbc->addr)[0], (pbc->addr)[1], (pbc->addr)[2], (pbc->addr)[3], (pbc->addr)[4], (pbc->addr)[5]); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Consider PBC session with " "%02x:%02x:%02x:%02x:%02x:%02x" "\033[0m" "\n", esp_log_timestamp(), "wpa", (pbc->addr)[0], (pbc->addr)[1], (pbc->addr)[2], (pbc->addr)[3], (pbc->addr)[4], (pbc->addr)[5]); } } while(0); } while(0)
                         ;
  wpa_hexdump(ESP_LOG_DEBUG, "WPS: UUID-E",
       pbc->uuid_e, 16);
  if (now.sec > pbc->timestamp.sec + 120) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: PBC walk time has " "expired" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: PBC walk time has " "expired" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: PBC walk time has " "expired" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: PBC walk time has " "expired" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: PBC walk time has " "expired" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                 ;
   break;
  }
  if (first &&
      memcmp((pbc->uuid_e), (first->uuid_e), (16)) == 0) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Same Enrollee" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Same Enrollee" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Same Enrollee" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Same Enrollee" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Same Enrollee" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
   continue;
  }
  if (uuid_e == 
# 431 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
               ((void *)0) 
# 431 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                    ||
      memcmp((uuid_e), (pbc->uuid_e), (16))) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: New Enrollee" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: New Enrollee" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: New Enrollee" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: New Enrollee" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: New Enrollee" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
   count++;
  }
  if (first == 
# 436 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
              ((void *)0)
# 436 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                  )
   first = pbc;
 }

 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: %u active PBC session(s) found" "\033[0m" "\n", esp_log_timestamp(), "wpa", count); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: %u active PBC session(s) found" "\033[0m" "\n", esp_log_timestamp(), "wpa", count); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: %u active PBC session(s) found" "\033[0m" "\n", esp_log_timestamp(), "wpa", count); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: %u active PBC session(s) found" "\033[0m" "\n", esp_log_timestamp(), "wpa", count); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: %u active PBC session(s) found" "\033[0m" "\n", esp_log_timestamp(), "wpa", count); } } while(0); } while(0);

 return count > 1 ? 1 : 0;
}


static int wps_build_wps_state(struct wps_context *wps, struct wpabuf *msg)
{
 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS:  * Wi-Fi Protected Setup State (%d)" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->wps_state); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS:  * Wi-Fi Protected Setup State (%d)" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->wps_state); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS:  * Wi-Fi Protected Setup State (%d)" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->wps_state); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS:  * Wi-Fi Protected Setup State (%d)" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->wps_state); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS:  * Wi-Fi Protected Setup State (%d)" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->wps_state); } } while(0); } while(0)
                    ;
 wpabuf_put_be16(msg, ATTR_WPS_STATE);
 wpabuf_put_be16(msg, 1);
 wpabuf_put_u8(msg, wps->wps_state);
 return 0;
}
# 482 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
static int wps_build_ap_setup_locked(struct wps_context *wps,
         struct wpabuf *msg)
{
 if (wps->ap_setup_locked && wps->ap_setup_locked != 2) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS:  * AP Setup Locked" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS:  * AP Setup Locked" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS:  * AP Setup Locked" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS:  * AP Setup Locked" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS:  * AP Setup Locked" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
  wpabuf_put_be16(msg, ATTR_AP_SETUP_LOCKED);
  wpabuf_put_be16(msg, 1);
  wpabuf_put_u8(msg, 1);
 }
 return 0;
}


static int wps_build_selected_registrar(struct wps_registrar *reg,
     struct wpabuf *msg)
{
 if (!reg->sel_reg_union)
  return 0;
 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS:  * Selected Registrar" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS:  * Selected Registrar" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS:  * Selected Registrar" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS:  * Selected Registrar" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS:  * Selected Registrar" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
 wpabuf_put_be16(msg, ATTR_SELECTED_REGISTRAR);
 wpabuf_put_be16(msg, 1);
 wpabuf_put_u8(msg, 1);
 return 0;
}


static int wps_build_sel_reg_dev_password_id(struct wps_registrar *reg,
          struct wpabuf *msg)
{
 u16 id = reg->pbc ? DEV_PW_PUSHBUTTON : DEV_PW_DEFAULT;
 if (!reg->sel_reg_union)
  return 0;
 if (reg->sel_reg_dev_password_id_override >= 0)
  id = reg->sel_reg_dev_password_id_override;
 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS:  * Device Password ID (%d)" "\033[0m" "\n", esp_log_timestamp(), "wpa", id); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS:  * Device Password ID (%d)" "\033[0m" "\n", esp_log_timestamp(), "wpa", id); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS:  * Device Password ID (%d)" "\033[0m" "\n", esp_log_timestamp(), "wpa", id); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS:  * Device Password ID (%d)" "\033[0m" "\n", esp_log_timestamp(), "wpa", id); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS:  * Device Password ID (%d)" "\033[0m" "\n", esp_log_timestamp(), "wpa", id); } } while(0); } while(0);
 wpabuf_put_be16(msg, ATTR_DEV_PASSWORD_ID);
 wpabuf_put_be16(msg, 2);
 wpabuf_put_be16(msg, id);
 return 0;
}


static int wps_build_sel_pbc_reg_uuid_e(struct wps_registrar *reg,
     struct wpabuf *msg)
{
 u16 id = reg->pbc ? DEV_PW_PUSHBUTTON : DEV_PW_DEFAULT;
 if (!reg->sel_reg_union)
  return 0;
 if (reg->sel_reg_dev_password_id_override >= 0)
  id = reg->sel_reg_dev_password_id_override;
 if (id != DEV_PW_PUSHBUTTON || !reg->dualband)
  return 0;
 return wps_build_uuid_e(msg, reg->wps->uuid);
}


static void wps_set_pushbutton(u16 *methods, u16 conf_methods)
{
 *methods |= 0x0080;

 if ((conf_methods & 0x0280) ==
     0x0280)
  *methods |= 0x0280;
 if ((conf_methods & 0x0480) ==
     0x0480)
  *methods |= 0x0480;
 if ((*methods & 0x0280) !=
     0x0280 &&
     (*methods & 0x0480) !=
     0x0480) {





  *methods |= 0x0480;
 }

}


static int wps_build_sel_reg_config_methods(struct wps_registrar *reg,
         struct wpabuf *msg)
{
 u16 methods;
 if (!reg->sel_reg_union)
  return 0;
 methods = reg->wps->config_methods;
 methods &= ~0x0080;

 methods &= ~(0x0280 |
       0x0480);

 if (reg->pbc)
  wps_set_pushbutton(&methods, reg->wps->config_methods);
 if (reg->sel_reg_config_methods_override >= 0)
  methods = reg->sel_reg_config_methods_override;
 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS:  * Selected Registrar Config Methods (%x)" "\033[0m" "\n", esp_log_timestamp(), "wpa", methods); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS:  * Selected Registrar Config Methods (%x)" "\033[0m" "\n", esp_log_timestamp(), "wpa", methods); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS:  * Selected Registrar Config Methods (%x)" "\033[0m" "\n", esp_log_timestamp(), "wpa", methods); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS:  * Selected Registrar Config Methods (%x)" "\033[0m" "\n", esp_log_timestamp(), "wpa", methods); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS:  * Selected Registrar Config Methods (%x)" "\033[0m" "\n", esp_log_timestamp(), "wpa", methods); } } while(0); } while(0)
             ;
 wpabuf_put_be16(msg, ATTR_SELECTED_REGISTRAR_CONFIG_METHODS);
 wpabuf_put_be16(msg, 2);
 wpabuf_put_be16(msg, methods);
 return 0;
}


static int wps_build_probe_config_methods(struct wps_registrar *reg,
       struct wpabuf *msg)
{
 u16 methods;




 methods = reg->wps->config_methods & ~0x0080;

 methods &= ~(0x0280 |
       0x0480);

 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS:  * Config Methods (%x)" "\033[0m" "\n", esp_log_timestamp(), "wpa", methods); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS:  * Config Methods (%x)" "\033[0m" "\n", esp_log_timestamp(), "wpa", methods); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS:  * Config Methods (%x)" "\033[0m" "\n", esp_log_timestamp(), "wpa", methods); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS:  * Config Methods (%x)" "\033[0m" "\n", esp_log_timestamp(), "wpa", methods); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS:  * Config Methods (%x)" "\033[0m" "\n", esp_log_timestamp(), "wpa", methods); } } while(0); } while(0);
 wpabuf_put_be16(msg, ATTR_CONFIG_METHODS);
 wpabuf_put_be16(msg, 2);
 wpabuf_put_be16(msg, methods);
 return 0;
}


static int wps_build_config_methods_r(struct wps_registrar *reg,
          struct wpabuf *msg)
{
 return wps_build_config_methods(msg, reg->wps->config_methods);
}


const u8 * wps_authorized_macs(struct wps_registrar *reg, size_t *count)
{
 *count = 0;


 while (*count < 5) {
  if (is_zero_ether_addr(reg->authorized_macs_union[*count]))
   break;
  (*count)++;
 }


 return (const u8 *) reg->authorized_macs_union;
}
# 644 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
struct wps_registrar * wps_registrar_init(struct wps_context *wps,
     const struct wps_registrar_config *cfg)
{
 struct wps_registrar *reg = (struct wps_registrar *)calloc(1, (sizeof(*reg)));
 if (reg == 
# 648 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
           ((void *)0)
# 648 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
               )
  return 
# 649 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
        ((void *)0)
# 649 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
            ;

 dl_list_init(&reg->pins);




 reg->wps = wps;
 reg->new_psk_cb = cfg->new_psk_cb;
 reg->set_ie_cb = cfg->set_ie_cb;

 reg->pin_needed_cb = cfg->pin_needed_cb;

 reg->reg_success_cb = cfg->reg_success_cb;
 reg->set_sel_reg_cb = cfg->set_sel_reg_cb;
 reg->enrollee_seen_cb = cfg->enrollee_seen_cb;
 reg->cb_ctx = cfg->cb_ctx;
 reg->skip_cred_build = cfg->skip_cred_build;
 if (cfg->extra_cred) {
  reg->extra_cred = wpabuf_alloc_copy(cfg->extra_cred,
          cfg->extra_cred_len);
  if (reg->extra_cred == 
# 670 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
                        ((void *)0)
# 670 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                            ) {
   free((reg));
   return 
# 672 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
         ((void *)0)
# 672 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
             ;
  }
 }
 reg->disable_auto_conf = cfg->disable_auto_conf;
 reg->sel_reg_dev_password_id_override = -1;
 reg->sel_reg_config_methods_override = -1;
 reg->static_wep_only = cfg->static_wep_only;
 reg->dualband = cfg->dualband;

 if (wps_set_ie(reg)) {
  wps_registrar_deinit(reg);
  return 
# 683 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
        ((void *)0)
# 683 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
            ;
 }

 return reg;
}






void wps_registrar_deinit(struct wps_registrar *reg)
{
 if (reg == 
# 696 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
           ((void *)0)
# 696 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
               )
  return;
# 706 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
 wps_free_pins(&reg->pins);




 wps_free_pbc_sessions(reg->pbc_sessions);
 wpabuf_free(reg->extra_cred);
 wps_free_devices(reg->devices);
 free((reg));
}



static void wps_registrar_invalidate_unused(struct wps_registrar *reg)
{
 struct wps_uuid_pin *pin;

 for (pin = ((struct wps_uuid_pin *) ((char *) (&reg->pins)->next - 
# 723 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
__builtin_offsetof (
# 723 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
struct wps_uuid_pin
# 723 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
, 
# 723 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
list
# 723 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
)
# 723 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
)); &pin->list != (&reg->pins); pin = ((struct wps_uuid_pin *) ((char *) pin->list.next - 
# 723 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
__builtin_offsetof (
# 723 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
struct wps_uuid_pin
# 723 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
, 
# 723 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
list
# 723 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
)
# 723 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
))) {
  if (pin->wildcard_uuid == 1 && !(pin->flags & (1UL << (0)))) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Invalidate previously " "configured wildcard PIN" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Invalidate previously " "configured wildcard PIN" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Invalidate previously " "configured wildcard PIN" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Invalidate previously " "configured wildcard PIN" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Invalidate previously " "configured wildcard PIN" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                                 ;
   wps_registrar_remove_pin(reg, pin);
   break;
  }
 }
}
# 744 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
int wps_registrar_add_pin(struct wps_registrar *reg, const u8 *addr,
     const u8 *uuid, const u8 *pin, size_t pin_len,
     int timeout)
{
 struct wps_uuid_pin *p;

 p = (struct wps_uuid_pin *)calloc(1, (sizeof(*p)));
 if (p == 
# 751 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
         ((void *)0)
# 751 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
             )
  return -1;
 if (addr)
  memcpy((p->enrollee_addr), (addr), (6));
 if (uuid == 
# 755 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
            ((void *)0)
# 755 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                )
  p->wildcard_uuid = 1;
 else
  memcpy((p->uuid), (uuid), (16));
 p->pin = (u8 *)malloc((pin_len));
 if (p->pin == 
# 760 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
              ((void *)0)
# 760 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                  ) {
  free((p));
  return -1;
 }
 memcpy((p->pin), (pin), (pin_len));
 p->pin_len = pin_len;

 if (timeout) {
  p->flags |= (1UL << (1));
  os_get_time(&p->expiration);
  p->expiration.sec += timeout;
 }

 if (p->wildcard_uuid)
  wps_registrar_invalidate_unused(reg);

 dl_list_add(&reg->pins, &p->list);

 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: A new PIN configured (timeout=%d)" "\033[0m" "\n", esp_log_timestamp(), "wpa", timeout); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: A new PIN configured (timeout=%d)" "\033[0m" "\n", esp_log_timestamp(), "wpa", timeout); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: A new PIN configured (timeout=%d)" "\033[0m" "\n", esp_log_timestamp(), "wpa", timeout); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: A new PIN configured (timeout=%d)" "\033[0m" "\n", esp_log_timestamp(), "wpa", timeout); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: A new PIN configured (timeout=%d)" "\033[0m" "\n", esp_log_timestamp(), "wpa", timeout); } } while(0); } while(0)
             ;
 wpa_hexdump(ESP_LOG_DEBUG, "WPS: UUID", uuid, 16);
 wpa_hexdump_ascii_key(ESP_LOG_DEBUG, "WPS: PIN", pin, pin_len);
 reg->selected_registrar = 1;
 reg->pbc = 0;
 if (addr)
  wps_registrar_add_authorized_mac(reg, addr);
 else
  wps_registrar_add_authorized_mac(
   reg, (u8 *) "\xff\xff\xff\xff\xff\xff");
 wps_registrar_selected_registrar_changed(reg);





 return 0;
}


static void wps_registrar_remove_pin(struct wps_registrar *reg,
         struct wps_uuid_pin *pin)
{
 u8 *addr;
 u8 bcast[6] = { 0xff, 0xff, 0xff, 0xff, 0xff, 0xff };

 if (is_zero_ether_addr(pin->enrollee_addr))
  addr = bcast;
 else
  addr = pin->enrollee_addr;
 wps_registrar_remove_authorized_mac(reg, addr);
 wps_remove_pin(pin);
 wps_registrar_selected_registrar_changed(reg);
}


static void wps_registrar_expire_pins(struct wps_registrar *reg)
{
 struct wps_uuid_pin *pin, *prev;
 struct os_time now;

 os_get_time(&now);
 for (pin = ((struct wps_uuid_pin *) ((char *) (&reg->pins)->next - 
# 821 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
__builtin_offsetof (
# 821 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
struct wps_uuid_pin
# 821 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
, 
# 821 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
list
# 821 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
)
# 821 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
)), prev = ((struct wps_uuid_pin *) ((char *) pin->list.next - 
# 821 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
__builtin_offsetof (
# 821 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
struct wps_uuid_pin
# 821 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
, 
# 821 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
list
# 821 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
)
# 821 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
)); &pin->list != (&reg->pins); pin = prev, prev = ((struct wps_uuid_pin *) ((char *) prev->list.next - 
# 821 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
__builtin_offsetof (
# 821 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
struct wps_uuid_pin
# 821 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
, 
# 821 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
list
# 821 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
)
# 821 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
)))
 {
  if ((pin->flags & (1UL << (1))) &&
      ((&pin->expiration)->sec < (&now)->sec || ((&pin->expiration)->sec == (&now)->sec && (&pin->expiration)->usec < (&now)->usec))) {
   wpa_hexdump(ESP_LOG_DEBUG, "WPS: Expired PIN for UUID",
        pin->uuid, 16);
   wps_registrar_remove_pin(reg, pin);
  }
 }
}
# 840 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
static int wps_registrar_invalidate_wildcard_pin(struct wps_registrar *reg,
       const u8 *dev_pw,
       size_t dev_pw_len)
{
 struct wps_uuid_pin *pin, *prev;

 for (pin = ((struct wps_uuid_pin *) ((char *) (&reg->pins)->next - 
# 846 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
__builtin_offsetof (
# 846 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
struct wps_uuid_pin
# 846 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
, 
# 846 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
list
# 846 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
)
# 846 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
)), prev = ((struct wps_uuid_pin *) ((char *) pin->list.next - 
# 846 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
__builtin_offsetof (
# 846 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
struct wps_uuid_pin
# 846 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
, 
# 846 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
list
# 846 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
)
# 846 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
)); &pin->list != (&reg->pins); pin = prev, prev = ((struct wps_uuid_pin *) ((char *) prev->list.next - 
# 846 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
__builtin_offsetof (
# 846 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
struct wps_uuid_pin
# 846 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
, 
# 846 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
list
# 846 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
)
# 846 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
)))
 {
  if (dev_pw && pin->pin &&
      (dev_pw_len != pin->pin_len ||
       memcmp((dev_pw), (pin->pin), (dev_pw_len)) != 0))
   continue;
  if (pin->wildcard_uuid) {
   wpa_hexdump(ESP_LOG_DEBUG, "WPS: Invalidated PIN for UUID",
        pin->uuid, 16);
   wps_registrar_remove_pin(reg, pin);
   return 0;
  }
 }

 return -1;
}
# 870 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
int wps_registrar_invalidate_pin(struct wps_registrar *reg, const u8 *uuid)
{
 struct wps_uuid_pin *pin, *prev;

 for (pin = ((struct wps_uuid_pin *) ((char *) (&reg->pins)->next - 
# 874 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
__builtin_offsetof (
# 874 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
struct wps_uuid_pin
# 874 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
, 
# 874 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
list
# 874 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
)
# 874 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
)), prev = ((struct wps_uuid_pin *) ((char *) pin->list.next - 
# 874 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
__builtin_offsetof (
# 874 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
struct wps_uuid_pin
# 874 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
, 
# 874 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
list
# 874 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
)
# 874 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
)); &pin->list != (&reg->pins); pin = prev, prev = ((struct wps_uuid_pin *) ((char *) prev->list.next - 
# 874 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
__builtin_offsetof (
# 874 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
struct wps_uuid_pin
# 874 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
, 
# 874 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
list
# 874 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
)
# 874 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
)))
 {
  if (memcmp((pin->uuid), (uuid), (16)) == 0) {
   wpa_hexdump(ESP_LOG_DEBUG, "WPS: Invalidated PIN for UUID",
        pin->uuid, 16);
   wps_registrar_remove_pin(reg, pin);
   return 0;
  }
 }

 return -1;
}


static const u8 * wps_registrar_get_pin(struct wps_registrar *reg,
     const u8 *uuid, size_t *pin_len)
{
 struct wps_uuid_pin *pin, *found = 
# 891 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
                                   ((void *)0)
# 891 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                                       ;

 wps_registrar_expire_pins(reg);

 for (pin = ((struct wps_uuid_pin *) ((char *) (&reg->pins)->next - 
# 895 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
__builtin_offsetof (
# 895 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
struct wps_uuid_pin
# 895 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
, 
# 895 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
list
# 895 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
)
# 895 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
)); &pin->list != (&reg->pins); pin = ((struct wps_uuid_pin *) ((char *) pin->list.next - 
# 895 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
__builtin_offsetof (
# 895 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
struct wps_uuid_pin
# 895 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
, 
# 895 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
list
# 895 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
)
# 895 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
))) {
  if (!pin->wildcard_uuid &&
      memcmp((pin->uuid), (uuid), (16)) == 0) {
   found = pin;
   break;
  }
 }

 if (!found) {


  for (pin = ((struct wps_uuid_pin *) ((char *) (&reg->pins)->next - 
# 906 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
 __builtin_offsetof (
# 906 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
 struct wps_uuid_pin
# 906 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
 , 
# 906 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
 list
# 906 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
 )
# 906 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
 )); &pin->list != (&reg->pins); pin = ((struct wps_uuid_pin *) ((char *) pin->list.next - 
# 906 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
 __builtin_offsetof (
# 906 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
 struct wps_uuid_pin
# 906 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
 , 
# 906 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
 list
# 906 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
 )
# 906 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
 ))) {
   if (pin->wildcard_uuid == 1 ||
       pin->wildcard_uuid == 2) {
    do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Found a wildcard " "PIN. Assigned it for this UUID-E" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Found a wildcard " "PIN. Assigned it for this UUID-E" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Found a wildcard " "PIN. Assigned it for this UUID-E" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Found a wildcard " "PIN. Assigned it for this UUID-E" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Found a wildcard " "PIN. Assigned it for this UUID-E" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                                           ;
    pin->wildcard_uuid++;
    memcpy((pin->uuid), (uuid), (16));
    found = pin;
    break;
   }
  }
 }

 if (!found)
  return 
# 920 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
        ((void *)0)
# 920 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
            ;





 if (found->flags & (1UL << (0))) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Selected PIN locked - do not " "allow concurrent re-use" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Selected PIN locked - do not " "allow concurrent re-use" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Selected PIN locked - do not " "allow concurrent re-use" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Selected PIN locked - do not " "allow concurrent re-use" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Selected PIN locked - do not " "allow concurrent re-use" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                                ;
  return 
# 929 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
        ((void *)0)
# 929 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
            ;
 }
 *pin_len = found->pin_len;
 found->flags |= (1UL << (0));
 return found->pin;
}
# 947 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
int wps_registrar_unlock_pin(struct wps_registrar *reg, const u8 *uuid)
{
 struct wps_uuid_pin *pin;

 for (pin = ((struct wps_uuid_pin *) ((char *) (&reg->pins)->next - 
# 951 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
__builtin_offsetof (
# 951 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
struct wps_uuid_pin
# 951 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
, 
# 951 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
list
# 951 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
)
# 951 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
)); &pin->list != (&reg->pins); pin = ((struct wps_uuid_pin *) ((char *) pin->list.next - 
# 951 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
__builtin_offsetof (
# 951 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
struct wps_uuid_pin
# 951 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
, 
# 951 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
list
# 951 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
)
# 951 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
))) {
  if (memcmp((pin->uuid), (uuid), (16)) == 0) {
   if (pin->wildcard_uuid == 3) {
    do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Invalidating used " "wildcard PIN" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Invalidating used " "wildcard PIN" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Invalidating used " "wildcard PIN" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Invalidating used " "wildcard PIN" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Invalidating used " "wildcard PIN" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                       ;
    return wps_registrar_invalidate_pin(reg, uuid);
   }
   pin->flags &= ~(1UL << (0));
   return 0;
  }
 }

 return -1;
}


static void wps_registrar_stop_pbc(struct wps_registrar *reg)
{
 reg->selected_registrar = 0;
 reg->pbc = 0;
 memset(reg->p2p_dev_addr, 0, 6);
 wps_registrar_remove_authorized_mac(reg,
         (u8 *) "\xff\xff\xff\xff\xff\xff");
 wps_registrar_selected_registrar_changed(reg);
}



static void wps_registrar_pbc_timeout(void *eloop_ctx)
{
 struct wps_registrar *reg = eloop_ctx;

 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: PBC timed out - disable PBC mode" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: PBC timed out - disable PBC mode" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: PBC timed out - disable PBC mode" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: PBC timed out - disable PBC mode" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: PBC timed out - disable PBC mode" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
 wps_pbc_timeout_event(reg->wps);
 wps_registrar_stop_pbc(reg);
}
# 1003 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
int wps_registrar_button_pushed(struct wps_registrar *reg,
    const u8 *p2p_dev_addr)
{
 if (p2p_dev_addr == 
# 1006 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
                    ((void *)0) 
# 1006 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                         &&
     wps_registrar_pbc_overlap(reg, 
# 1007 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
                                   ((void *)0)
# 1007 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                                       , 
# 1007 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
                                         ((void *)0)
# 1007 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                                             )) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: PBC overlap - do not start PBC " "mode" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: PBC overlap - do not start PBC " "mode" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: PBC overlap - do not start PBC " "mode" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: PBC overlap - do not start PBC " "mode" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: PBC overlap - do not start PBC " "mode" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
             ;
  wps_pbc_overlap_event(reg->wps);
  return -2;
 }
 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Button pushed - PBC mode started" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Button pushed - PBC mode started" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Button pushed - PBC mode started" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Button pushed - PBC mode started" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Button pushed - PBC mode started" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
 reg->force_pbc_overlap = 0;
 reg->selected_registrar = 1;
 reg->pbc = 1;
 if (p2p_dev_addr)
  memcpy((reg->p2p_dev_addr), (p2p_dev_addr), (6));
 else
  memset(reg->p2p_dev_addr, 0, 6);
 wps_registrar_add_authorized_mac(reg,
      (u8 *) "\xff\xff\xff\xff\xff\xff");
 wps_registrar_selected_registrar_changed(reg);
# 1036 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
 return 0;
}


static void wps_registrar_pbc_completed(struct wps_registrar *reg)
{
 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: PBC completed - stopping PBC mode" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: PBC completed - stopping PBC mode" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: PBC completed - stopping PBC mode" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: PBC completed - stopping PBC mode" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: PBC completed - stopping PBC mode" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);





 wps_registrar_stop_pbc(reg);
}



static void wps_registrar_pin_completed(struct wps_registrar *reg)
{
 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: PIN completed using internal Registrar" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: PIN completed using internal Registrar" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: PIN completed using internal Registrar" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: PIN completed using internal Registrar" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: PIN completed using internal Registrar" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);

 reg->selected_registrar = 0;
 wps_registrar_selected_registrar_changed(reg);
}


void wps_registrar_complete(struct wps_registrar *registrar, const u8 *uuid_e,
       const u8 *dev_pw, size_t dev_pw_len)
{
 if (registrar->pbc) {
  wps_registrar_remove_pbc_session(registrar,
       uuid_e, 
# 1067 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
              ((void *)0)
# 1067 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                  );
  wps_registrar_pbc_completed(registrar);
  os_get_time(&registrar->pbc_ignore_start);
  memcpy((registrar->pbc_ignore_uuid), (uuid_e), (16));
 } else {

  wps_registrar_pin_completed(registrar);

 }

 if (dev_pw &&
     wps_registrar_invalidate_wildcard_pin(registrar, dev_pw,
        dev_pw_len) == 0) {
  wpa_hexdump_key(ESP_LOG_DEBUG, "WPS: Invalidated wildcard PIN",
    dev_pw, dev_pw_len);
 }

}


int wps_registrar_wps_cancel(struct wps_registrar *reg)
{
 if (reg->pbc) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: PBC is set - cancelling it" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: PBC is set - cancelling it" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: PBC is set - cancelling it" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: PBC is set - cancelling it" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: PBC is set - cancelling it" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);


  wps_registrar_pbc_timeout(reg);




  return 1;
 } else if (reg->selected_registrar) {



  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: PIN is set - cancelling it" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: PIN is set - cancelling it" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: PIN is set - cancelling it" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: PIN is set - cancelling it" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: PIN is set - cancelling it" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
  wps_registrar_pin_completed(reg);
  wps_registrar_invalidate_wildcard_pin(reg, 
# 1105 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
                                            ((void *)0)
# 1105 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                                                , 0);
  return 1;

 }
 return 0;
}
# 1123 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
void wps_registrar_probe_req_rx(struct wps_registrar *reg, const u8 *addr,
    const struct wpabuf *wps_data,
    int p2p_wildcard)
{
 struct wps_parse_attr attr;
 int skip_add = 0;

 wpa_hexdump_buf(ESP_LOG_VERBOSE,
   "WPS: Probe Request with WPS data received",
   wps_data);

 if (wps_parse_msg(wps_data, &attr) < 0)
  return;

 if (attr.config_methods == 
# 1137 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
                           ((void *)0)
# 1137 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                               ) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: No Config Methods attribute in " "Probe Request" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: No Config Methods attribute in " "Probe Request" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: No Config Methods attribute in " "Probe Request" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: No Config Methods attribute in " "Probe Request" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: No Config Methods attribute in " "Probe Request" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                      ;
  return;
 }

 if (attr.dev_password_id == 
# 1143 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
                            ((void *)0)
# 1143 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                                ) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: No Device Password Id attribute " "in Probe Request" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: No Device Password Id attribute " "in Probe Request" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: No Device Password Id attribute " "in Probe Request" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: No Device Password Id attribute " "in Probe Request" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: No Device Password Id attribute " "in Probe Request" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                         ;
  return;
 }

 if (reg->enrollee_seen_cb && attr.uuid_e &&
     attr.primary_dev_type && attr.request_type && !p2p_wildcard) {
  char *dev_name = 
# 1151 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
                  ((void *)0)
# 1151 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                      ;
  if (attr.dev_name) {
   dev_name = (char *)calloc(1, (attr.dev_name_len + 1));
   if (dev_name) {
    memcpy((dev_name), (attr.dev_name), (attr.dev_name_len))
                         ;
   }
  }
  reg->enrollee_seen_cb(reg->cb_ctx, addr, attr.uuid_e,
          attr.primary_dev_type,
          ((u16) (((attr.config_methods)[0] << 8) | (attr.config_methods)[1])),
          ((u16) (((attr.dev_password_id)[0] << 8) | (attr.dev_password_id)[1])),
          *attr.request_type, dev_name);
  free((dev_name));
 }

 if (((u16) (((attr.dev_password_id)[0] << 8) | (attr.dev_password_id)[1])) != DEV_PW_PUSHBUTTON)
  return;

 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Probe Request for PBC received from " "%02x:%02x:%02x:%02x:%02x:%02x" "\033[0m" "\n", esp_log_timestamp(), "wpa", (addr)[0], (addr)[1], (addr)[2], (addr)[3], (addr)[4], (addr)[5]); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Probe Request for PBC received from " "%02x:%02x:%02x:%02x:%02x:%02x" "\033[0m" "\n", esp_log_timestamp(), "wpa", (addr)[0], (addr)[1], (addr)[2], (addr)[3], (addr)[4], (addr)[5]); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Probe Request for PBC received from " "%02x:%02x:%02x:%02x:%02x:%02x" "\033[0m" "\n", esp_log_timestamp(), "wpa", (addr)[0], (addr)[1], (addr)[2], (addr)[3], (addr)[4], (addr)[5]); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Probe Request for PBC received from " "%02x:%02x:%02x:%02x:%02x:%02x" "\033[0m" "\n", esp_log_timestamp(), "wpa", (addr)[0], (addr)[1], (addr)[2], (addr)[3], (addr)[4], (addr)[5]); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Probe Request for PBC received from " "%02x:%02x:%02x:%02x:%02x:%02x" "\033[0m" "\n", esp_log_timestamp(), "wpa", (addr)[0], (addr)[1], (addr)[2], (addr)[3], (addr)[4], (addr)[5]); } } while(0); } while(0)
                           ;
 if (attr.uuid_e == 
# 1172 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
                   ((void *)0)
# 1172 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                       ) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Invalid Probe Request WPS IE: No " "UUID-E included" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Invalid Probe Request WPS IE: No " "UUID-E included" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Invalid Probe Request WPS IE: No " "UUID-E included" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Invalid Probe Request WPS IE: No " "UUID-E included" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Invalid Probe Request WPS IE: No " "UUID-E included" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                        ;
  return;
 }
 wpa_hexdump(ESP_LOG_DEBUG, "WPS: UUID-E from Probe Request", attr.uuid_e,
      16);
# 1196 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
 if (!skip_add)
  wps_registrar_add_pbc_session(reg, addr, attr.uuid_e);
 if (wps_registrar_pbc_overlap(reg, addr, attr.uuid_e)) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: PBC session overlap detected" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: PBC session overlap detected" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: PBC session overlap detected" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: PBC session overlap detected" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: PBC session overlap detected" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
  reg->force_pbc_overlap = 1;
  wps_pbc_overlap_event(reg->wps);
 }
}


static int wps_cb_new_psk(struct wps_registrar *reg, const u8 *mac_addr,
     const u8 *psk, size_t psk_len)
{
 if (reg->new_psk_cb == 
# 1209 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
                       ((void *)0)
# 1209 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                           )
  return 0;

 return reg->new_psk_cb(reg->cb_ctx, mac_addr, psk, psk_len);
}



static void wps_cb_pin_needed(struct wps_registrar *reg, const u8 *uuid_e,
         const struct wps_device_data *dev)
{
 if (reg->pin_needed_cb == 
# 1220 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
                          ((void *)0)
# 1220 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                              )
  return;

 reg->pin_needed_cb(reg->cb_ctx, uuid_e, dev);
}


static void wps_cb_reg_success(struct wps_registrar *reg, const u8 *mac_addr,
          const u8 *uuid_e, const u8 *dev_pw,
          size_t dev_pw_len)
{
 if (reg->reg_success_cb == 
# 1231 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
                           ((void *)0)
# 1231 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                               )
  return;

 reg->reg_success_cb(reg->cb_ctx, mac_addr, uuid_e, dev_pw, dev_pw_len);
}


static int wps_cb_set_ie(struct wps_registrar *reg, struct wpabuf *beacon_ie,
    struct wpabuf *probe_resp_ie)
{
 return reg->set_ie_cb(reg->cb_ctx, beacon_ie, probe_resp_ie);
}


static void wps_cb_set_sel_reg(struct wps_registrar *reg)
{
 u16 methods = 0;
 if (reg->set_sel_reg_cb == 
# 1248 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
                           ((void *)0)
# 1248 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                               )
  return;

 if (reg->selected_registrar) {
  methods = reg->wps->config_methods & ~0x0080;

  methods &= ~(0x0280 |
        0x0480);

  if (reg->pbc)
   wps_set_pushbutton(&methods, reg->wps->config_methods);
 }

 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: wps_cb_set_sel_reg: sel_reg=%d " "config_methods=0x%x pbc=%d methods=0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", reg->selected_registrar, reg->wps->config_methods, reg->pbc, methods); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: wps_cb_set_sel_reg: sel_reg=%d " "config_methods=0x%x pbc=%d methods=0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", reg->selected_registrar, reg->wps->config_methods, reg->pbc, methods); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: wps_cb_set_sel_reg: sel_reg=%d " "config_methods=0x%x pbc=%d methods=0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", reg->selected_registrar, reg->wps->config_methods, reg->pbc, methods); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: wps_cb_set_sel_reg: sel_reg=%d " "config_methods=0x%x pbc=%d methods=0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", reg->selected_registrar, reg->wps->config_methods, reg->pbc, methods); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: wps_cb_set_sel_reg: sel_reg=%d " "config_methods=0x%x pbc=%d methods=0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", reg->selected_registrar, reg->wps->config_methods, reg->pbc, methods); } } while(0); } while(0)


                       ;

 reg->set_sel_reg_cb(reg->cb_ctx, reg->selected_registrar,
       reg->pbc ? DEV_PW_PUSHBUTTON : DEV_PW_DEFAULT,
       methods);
}


static int wps_set_ie(struct wps_registrar *reg)
{
 struct wpabuf *beacon;
 struct wpabuf *probe;
 const u8 *auth_macs;
 size_t count;
 size_t vendor_len = 0;
 int i;

 if (reg->set_ie_cb == 
# 1281 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
                      ((void *)0)
# 1281 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                          )
  return 0;

 for (i = 0; i < 10; i++) {
  if (reg->wps->dev.vendor_ext[i]) {
   vendor_len += 2 + 2;
   vendor_len += wpabuf_len(reg->wps->dev.vendor_ext[i]);
  }
 }

 beacon = wpabuf_alloc(400 + vendor_len);
 if (beacon == 
# 1292 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
              ((void *)0)
# 1292 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                  )
  return -1;
 probe = wpabuf_alloc(500 + vendor_len);
 if (probe == 
# 1295 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
             ((void *)0)
# 1295 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                 ) {
  wpabuf_free(beacon);
  return -1;
 }

 auth_macs = wps_authorized_macs(reg, &count);

 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Build Beacon IEs" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Build Beacon IEs" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Build Beacon IEs" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Build Beacon IEs" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Build Beacon IEs" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);

 if (wps_build_version(beacon) ||
     wps_build_wps_state(reg->wps, beacon) ||
     wps_build_ap_setup_locked(reg->wps, beacon) ||
     wps_build_selected_registrar(reg, beacon) ||
     wps_build_sel_reg_dev_password_id(reg, beacon) ||
     wps_build_sel_reg_config_methods(reg, beacon) ||
     wps_build_sel_pbc_reg_uuid_e(reg, beacon) ||
     (reg->dualband && wps_build_rf_bands(&reg->wps->dev, beacon)) ||
     wps_build_wfa_ext(beacon, 0, auth_macs, count) ||
     wps_build_vendor_ext(&reg->wps->dev, beacon)) {
  wpabuf_free(beacon);
  wpabuf_free(probe);
  return -1;
 }
# 1328 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Build Probe Response IEs" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Build Probe Response IEs" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Build Probe Response IEs" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Build Probe Response IEs" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Build Probe Response IEs" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);

 if (wps_build_version(probe) ||
     wps_build_wps_state(reg->wps, probe) ||
     wps_build_ap_setup_locked(reg->wps, probe) ||
     wps_build_selected_registrar(reg, probe) ||
     wps_build_sel_reg_dev_password_id(reg, probe) ||
     wps_build_sel_reg_config_methods(reg, probe) ||
     wps_build_resp_type(probe, reg->wps->ap ? WPS_RESP_AP :
    WPS_RESP_REGISTRAR) ||
     wps_build_uuid_e(probe, reg->wps->uuid) ||
     wps_build_device_attrs(&reg->wps->dev, probe) ||
     wps_build_probe_config_methods(reg, probe) ||
     (reg->dualband && wps_build_rf_bands(&reg->wps->dev, probe)) ||
     wps_build_wfa_ext(probe, 0, auth_macs, count) ||
     wps_build_vendor_ext(&reg->wps->dev, probe)) {
  wpabuf_free(beacon);
  wpabuf_free(probe);
  return -1;
 }

 beacon = wps_ie_encapsulate(beacon);
 probe = wps_ie_encapsulate(probe);

 if (!beacon || !probe) {
  wpabuf_free(beacon);
  wpabuf_free(probe);
  return -1;
 }

 if (reg->static_wep_only) {
# 1368 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
  const u8 ms_wps[7] = {
   221, 5,

   0x00, 0x50, 0xf2, 5,
   0x00
  };
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Add Microsoft Provisioning IE " "into Beacon/Probe Response frames" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Add Microsoft Provisioning IE " "into Beacon/Probe Response frames" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Add Microsoft Provisioning IE " "into Beacon/Probe Response frames" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Add Microsoft Provisioning IE " "into Beacon/Probe Response frames" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Add Microsoft Provisioning IE " "into Beacon/Probe Response frames" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                                          ;
  wpabuf_put_data(beacon, ms_wps, sizeof(ms_wps));
  wpabuf_put_data(probe, ms_wps, sizeof(ms_wps));
 }

 return wps_cb_set_ie(reg, beacon, probe);
}


static int wps_get_dev_password(struct wps_data *wps)
{
 const u8 *pin;
 size_t pin_len = 0;

 free((wps->dev_password));
 wps->dev_password = 
# 1390 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
                    ((void *)0)
# 1390 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                        ;

 if (wps->pbc) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Use default PIN for PBC" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Use default PIN for PBC" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Use default PIN for PBC" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Use default PIN for PBC" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Use default PIN for PBC" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
  pin = (const u8 *) "00000000";
  pin_len = 8;







 } else {


  pin = wps_registrar_get_pin(wps->wps->registrar, wps->uuid_e,
         &pin_len);
 }
 if (pin == 
# 1409 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
           ((void *)0)
# 1409 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
               ) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: No Device Password available for " "the Enrollee" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: No Device Password available for " "the Enrollee" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: No Device Password available for " "the Enrollee" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: No Device Password available for " "the Enrollee" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: No Device Password available for " "the Enrollee" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                     ;
  wps_cb_pin_needed(wps->wps->registrar, wps->uuid_e,
      &wps->peer_dev);
  return -1;

 }

 wps->dev_password = (u8 *)malloc((pin_len));
 if (wps->dev_password == 
# 1419 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
                         ((void *)0)
# 1419 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                             )
  return -1;
 memcpy((wps->dev_password), (pin), (pin_len));
 wps->dev_password_len = pin_len;

 return 0;
}


static int wps_build_uuid_r(struct wps_data *wps, struct wpabuf *msg)
{
 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS:  * UUID-R" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS:  * UUID-R" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS:  * UUID-R" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS:  * UUID-R" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS:  * UUID-R" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
 wpabuf_put_be16(msg, ATTR_UUID_R);
 wpabuf_put_be16(msg, 16);
 wpabuf_put_data(msg, wps->uuid_r, 16);
 return 0;
}


static int wps_build_r_hash(struct wps_data *wps, struct wpabuf *msg)
{
 u8 *hash;
 const u8 *addr[4];
 size_t len[4];

 if (os_get_random((wps->snonce), (2 * 16)) < 0)
  return -1;
 wpa_hexdump(ESP_LOG_DEBUG, "WPS: R-S1", wps->snonce, 16);
 wpa_hexdump(ESP_LOG_DEBUG, "WPS: R-S2",
      wps->snonce + 16, 16);

 if (wps->dh_pubkey_e == 
# 1450 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
                        ((void *)0) 
# 1450 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                             || wps->dh_pubkey_r == 
# 1450 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
                                                    ((void *)0)
# 1450 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                                                        ) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: DH public keys not available for " "R-Hash derivation" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: DH public keys not available for " "R-Hash derivation" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: DH public keys not available for " "R-Hash derivation" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: DH public keys not available for " "R-Hash derivation" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: DH public keys not available for " "R-Hash derivation" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                          ;
  return -1;
 }

 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS:  * R-Hash1" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS:  * R-Hash1" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS:  * R-Hash1" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS:  * R-Hash1" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS:  * R-Hash1" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
 wpabuf_put_be16(msg, ATTR_R_HASH1);
 wpabuf_put_be16(msg, 32);
 hash = wpabuf_put(msg, 32);

 addr[0] = wps->snonce;
 len[0] = 16;
 addr[1] = wps->psk1;
 len[1] = 16;
 addr[2] = wpabuf_head(wps->dh_pubkey_e);
 len[2] = wpabuf_len(wps->dh_pubkey_e);
 addr[3] = wpabuf_head(wps->dh_pubkey_r);
 len[3] = wpabuf_len(wps->dh_pubkey_r);
 if (wps_crypto_funcs.hmac_sha256_vector) {
  wps_crypto_funcs.hmac_sha256_vector(wps->authkey, 32, 4, addr, (int *)len, hash);
 } else {
  do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "In function %s, fail to register hmac_sha256_vector function!\r\n" "\033[0m" "\n", esp_log_timestamp(), "wpa", __FUNCTION__); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "In function %s, fail to register hmac_sha256_vector function!\r\n" "\033[0m" "\n", esp_log_timestamp(), "wpa", __FUNCTION__); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "In function %s, fail to register hmac_sha256_vector function!\r\n" "\033[0m" "\n", esp_log_timestamp(), "wpa", __FUNCTION__); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "In function %s, fail to register hmac_sha256_vector function!\r\n" "\033[0m" "\n", esp_log_timestamp(), "wpa", __FUNCTION__); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "In function %s, fail to register hmac_sha256_vector function!\r\n" "\033[0m" "\n", esp_log_timestamp(), "wpa", __FUNCTION__); } } while(0); } while(0);
  return -1;
 }
 wpa_hexdump(ESP_LOG_DEBUG, "WPS: R-Hash1", hash, 32);

 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS:  * R-Hash2" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS:  * R-Hash2" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS:  * R-Hash2" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS:  * R-Hash2" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS:  * R-Hash2" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
 wpabuf_put_be16(msg, ATTR_R_HASH2);
 wpabuf_put_be16(msg, 32);
 hash = wpabuf_put(msg, 32);

 addr[0] = wps->snonce + 16;
 addr[1] = wps->psk2;
 if (wps_crypto_funcs.hmac_sha256_vector) {
  wps_crypto_funcs.hmac_sha256_vector(wps->authkey, 32, 4, addr, (int *)len, hash);
 } else {
  do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "In function %s, fail to register hmac_sha256_vector function!\r\n" "\033[0m" "\n", esp_log_timestamp(), "wpa", __FUNCTION__); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "In function %s, fail to register hmac_sha256_vector function!\r\n" "\033[0m" "\n", esp_log_timestamp(), "wpa", __FUNCTION__); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "In function %s, fail to register hmac_sha256_vector function!\r\n" "\033[0m" "\n", esp_log_timestamp(), "wpa", __FUNCTION__); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "In function %s, fail to register hmac_sha256_vector function!\r\n" "\033[0m" "\n", esp_log_timestamp(), "wpa", __FUNCTION__); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "In function %s, fail to register hmac_sha256_vector function!\r\n" "\033[0m" "\n", esp_log_timestamp(), "wpa", __FUNCTION__); } } while(0); } while(0);
  return -1;
 }
 wpa_hexdump(ESP_LOG_DEBUG, "WPS: R-Hash2", hash, 32);

 return 0;
}


static int wps_build_r_snonce1(struct wps_data *wps, struct wpabuf *msg)
{
 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS:  * R-SNonce1" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS:  * R-SNonce1" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS:  * R-SNonce1" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS:  * R-SNonce1" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS:  * R-SNonce1" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
 wpabuf_put_be16(msg, ATTR_R_SNONCE1);
 wpabuf_put_be16(msg, 16);
 wpabuf_put_data(msg, wps->snonce, 16);
 return 0;
}


static int wps_build_r_snonce2(struct wps_data *wps, struct wpabuf *msg)
{
 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS:  * R-SNonce2" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS:  * R-SNonce2" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS:  * R-SNonce2" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS:  * R-SNonce2" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS:  * R-SNonce2" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
 wpabuf_put_be16(msg, ATTR_R_SNONCE2);
 wpabuf_put_be16(msg, 16);
 wpabuf_put_data(msg, wps->snonce + 16,
   16);
 return 0;
}


static int wps_build_cred_network_idx(struct wpabuf *msg,
          const struct wps_credential *cred)
{
 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS:  * Network Index (1)" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS:  * Network Index (1)" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS:  * Network Index (1)" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS:  * Network Index (1)" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS:  * Network Index (1)" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
 wpabuf_put_be16(msg, ATTR_NETWORK_INDEX);
 wpabuf_put_be16(msg, 1);
 wpabuf_put_u8(msg, 1);
 return 0;
}


static int wps_build_cred_ssid(struct wpabuf *msg,
          const struct wps_credential *cred)
{
 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS:  * SSID" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS:  * SSID" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS:  * SSID" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS:  * SSID" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS:  * SSID" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
 wpa_hexdump_ascii(ESP_LOG_DEBUG, "WPS: SSID for Credential",
     cred->ssid, cred->ssid_len);
 wpabuf_put_be16(msg, ATTR_SSID);
 wpabuf_put_be16(msg, cred->ssid_len);
 wpabuf_put_data(msg, cred->ssid, cred->ssid_len);
 return 0;
}


static int wps_build_cred_auth_type(struct wpabuf *msg,
        const struct wps_credential *cred)
{
 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS:  * Authentication Type (0x%x)" "\033[0m" "\n", esp_log_timestamp(), "wpa", cred->auth_type); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS:  * Authentication Type (0x%x)" "\033[0m" "\n", esp_log_timestamp(), "wpa", cred->auth_type); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS:  * Authentication Type (0x%x)" "\033[0m" "\n", esp_log_timestamp(), "wpa", cred->auth_type); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS:  * Authentication Type (0x%x)" "\033[0m" "\n", esp_log_timestamp(), "wpa", cred->auth_type); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS:  * Authentication Type (0x%x)" "\033[0m" "\n", esp_log_timestamp(), "wpa", cred->auth_type); } } while(0); } while(0)
                     ;
 wpabuf_put_be16(msg, ATTR_AUTH_TYPE);
 wpabuf_put_be16(msg, 2);
 wpabuf_put_be16(msg, cred->auth_type);
 return 0;
}


static int wps_build_cred_encr_type(struct wpabuf *msg,
        const struct wps_credential *cred)
{
 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS:  * Encryption Type (0x%x)" "\033[0m" "\n", esp_log_timestamp(), "wpa", cred->encr_type); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS:  * Encryption Type (0x%x)" "\033[0m" "\n", esp_log_timestamp(), "wpa", cred->encr_type); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS:  * Encryption Type (0x%x)" "\033[0m" "\n", esp_log_timestamp(), "wpa", cred->encr_type); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS:  * Encryption Type (0x%x)" "\033[0m" "\n", esp_log_timestamp(), "wpa", cred->encr_type); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS:  * Encryption Type (0x%x)" "\033[0m" "\n", esp_log_timestamp(), "wpa", cred->encr_type); } } while(0); } while(0)
                     ;
 wpabuf_put_be16(msg, ATTR_ENCR_TYPE);
 wpabuf_put_be16(msg, 2);
 wpabuf_put_be16(msg, cred->encr_type);
 return 0;
}


static int wps_build_cred_network_key(struct wpabuf *msg,
          const struct wps_credential *cred)
{
 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS:  * Network Key (len=%d)" "\033[0m" "\n", esp_log_timestamp(), "wpa", (int) cred->key_len); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS:  * Network Key (len=%d)" "\033[0m" "\n", esp_log_timestamp(), "wpa", (int) cred->key_len); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS:  * Network Key (len=%d)" "\033[0m" "\n", esp_log_timestamp(), "wpa", (int) cred->key_len); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS:  * Network Key (len=%d)" "\033[0m" "\n", esp_log_timestamp(), "wpa", (int) cred->key_len); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS:  * Network Key (len=%d)" "\033[0m" "\n", esp_log_timestamp(), "wpa", (int) cred->key_len); } } while(0); } while(0)
                         ;
 wpa_hexdump_key(ESP_LOG_DEBUG, "WPS: Network Key",
   cred->key, cred->key_len);
 wpabuf_put_be16(msg, ATTR_NETWORK_KEY);
 wpabuf_put_be16(msg, cred->key_len);
 wpabuf_put_data(msg, cred->key, cred->key_len);
 return 0;
}


static int wps_build_cred_mac_addr(struct wpabuf *msg,
       const struct wps_credential *cred)
{
 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS:  * MAC Address (" "%02x:%02x:%02x:%02x:%02x:%02x" ")" "\033[0m" "\n", esp_log_timestamp(), "wpa", (cred->mac_addr)[0], (cred->mac_addr)[1], (cred->mac_addr)[2], (cred->mac_addr)[3], (cred->mac_addr)[4], (cred->mac_addr)[5]); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS:  * MAC Address (" "%02x:%02x:%02x:%02x:%02x:%02x" ")" "\033[0m" "\n", esp_log_timestamp(), "wpa", (cred->mac_addr)[0], (cred->mac_addr)[1], (cred->mac_addr)[2], (cred->mac_addr)[3], (cred->mac_addr)[4], (cred->mac_addr)[5]); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS:  * MAC Address (" "%02x:%02x:%02x:%02x:%02x:%02x" ")" "\033[0m" "\n", esp_log_timestamp(), "wpa", (cred->mac_addr)[0], (cred->mac_addr)[1], (cred->mac_addr)[2], (cred->mac_addr)[3], (cred->mac_addr)[4], (cred->mac_addr)[5]); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS:  * MAC Address (" "%02x:%02x:%02x:%02x:%02x:%02x" ")" "\033[0m" "\n", esp_log_timestamp(), "wpa", (cred->mac_addr)[0], (cred->mac_addr)[1], (cred->mac_addr)[2], (cred->mac_addr)[3], (cred->mac_addr)[4], (cred->mac_addr)[5]); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS:  * MAC Address (" "%02x:%02x:%02x:%02x:%02x:%02x" ")" "\033[0m" "\n", esp_log_timestamp(), "wpa", (cred->mac_addr)[0], (cred->mac_addr)[1], (cred->mac_addr)[2], (cred->mac_addr)[3], (cred->mac_addr)[4], (cred->mac_addr)[5]); } } while(0); } while(0)
                             ;
 wpabuf_put_be16(msg, ATTR_MAC_ADDR);
 wpabuf_put_be16(msg, 6);
 wpabuf_put_data(msg, cred->mac_addr, 6);
 return 0;
}


static int wps_build_credential(struct wpabuf *msg,
    const struct wps_credential *cred)
{
 if (wps_build_cred_network_idx(msg, cred) ||
     wps_build_cred_ssid(msg, cred) ||
     wps_build_cred_auth_type(msg, cred) ||
     wps_build_cred_encr_type(msg, cred) ||
     wps_build_cred_network_key(msg, cred) ||
     wps_build_cred_mac_addr(msg, cred))
  return -1;
 return 0;
}


int wps_build_credential_wrap(struct wpabuf *msg,
         const struct wps_credential *cred)
{
 struct wpabuf *wbuf;
 wbuf = wpabuf_alloc(200);
 if (wbuf == 
# 1610 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
            ((void *)0)
# 1610 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                )
  return -1;
 if (wps_build_credential(wbuf, cred)) {
  wpabuf_free(wbuf);
  return -1;
 }
 wpabuf_put_be16(msg, ATTR_CRED);
 wpabuf_put_be16(msg, wpabuf_len(wbuf));
 wpabuf_put_buf(msg, wbuf);
 wpabuf_free(wbuf);
 return 0;
}


int wps_build_cred(struct wps_data *wps, struct wpabuf *msg)
{
 struct wpabuf *cred;

 if (wps->wps->registrar->skip_cred_build)
  goto skip_cred_build;

 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS:  * Credential" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS:  * Credential" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS:  * Credential" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS:  * Credential" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS:  * Credential" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
 if (wps->use_cred) {
  memcpy((&wps->cred), (wps->use_cred), (sizeof(wps->cred)));
  goto use_provided;
 }
 memset(&wps->cred, 0, sizeof(wps->cred));

 memcpy((wps->cred.ssid), (wps->wps->ssid), (wps->wps->ssid_len));
 wps->cred.ssid_len = wps->wps->ssid_len;


 if (wps->auth_type & 0x0020)
  wps->auth_type = 0x0020;
 else if (wps->auth_type & 0x0002)
  wps->auth_type = 0x0002;
 else if (wps->auth_type & 0x0001)
  wps->auth_type = 0x0001;
 else if (wps->auth_type & 0x0004)
  wps->auth_type = 0x0004;
 else {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Unsupported auth_type 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->auth_type); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Unsupported auth_type 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->auth_type); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Unsupported auth_type 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->auth_type); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Unsupported auth_type 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->auth_type); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Unsupported auth_type 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->auth_type); } } while(0); } while(0)
                     ;
  return -1;
 }
 wps->cred.auth_type = wps->auth_type;

 if (wps->auth_type == 0x0020 ||
     wps->auth_type == 0x0002) {
  if (wps->encr_type & 0x0008)
   wps->encr_type = 0x0008;
  else if (wps->encr_type & 0x0004)
   wps->encr_type = 0x0004;
  else {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: No suitable encryption " "type for WPA/WPA2" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: No suitable encryption " "type for WPA/WPA2" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: No suitable encryption " "type for WPA/WPA2" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: No suitable encryption " "type for WPA/WPA2" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: No suitable encryption " "type for WPA/WPA2" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                           ;
   return -1;
  }
 } else {
  if (wps->encr_type & 0x0002)
   wps->encr_type = 0x0002;
  else if (wps->encr_type & 0x0001)
   wps->encr_type = 0x0001;
  else {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: No suitable encryption " "type for non-WPA/WPA2 mode" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: No suitable encryption " "type for non-WPA/WPA2 mode" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: No suitable encryption " "type for non-WPA/WPA2 mode" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: No suitable encryption " "type for non-WPA/WPA2 mode" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: No suitable encryption " "type for non-WPA/WPA2 mode" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                                    ;
   return -1;
  }
 }
 wps->cred.encr_type = wps->encr_type;



 memcpy((wps->cred.mac_addr), (wps->mac_addr_e), (6));

 if (wps->wps->wps_state == WPS_STATE_NOT_CONFIGURED && wps->wps->ap &&
     !wps->wps->registrar->disable_auto_conf) {
  u8 r[16];

  if (os_get_random((r), (sizeof(r))) < 0)
   return -1;
  free((wps->new_psk));

  if (wps->new_psk == 
# 1693 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
                     ((void *)0)
# 1693 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                         )
   return -1;
  wps->new_psk_len--;
  while (wps->new_psk_len &&
         wps->new_psk[wps->new_psk_len - 1] == '=')
   wps->new_psk_len--;
  wpa_hexdump_ascii_key(ESP_LOG_DEBUG, "WPS: Generated passphrase",
          wps->new_psk, wps->new_psk_len);
  memcpy((wps->cred.key), (wps->new_psk), (wps->new_psk_len));
  wps->cred.key_len = wps->new_psk_len;
 } else if (wps->use_psk_key && wps->wps->psk_set) {
  char hex[65];
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Use PSK format for Network Key" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Use PSK format for Network Key" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Use PSK format for Network Key" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Use PSK format for Network Key" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Use PSK format for Network Key" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);

  memcpy((wps->cred.key), (hex), (32 * 2));
  wps->cred.key_len = 32 * 2;
 } else if (wps->wps->network_key) {
  memcpy((wps->cred.key), (wps->wps->network_key), (wps->wps->network_key_len))
                               ;
  wps->cred.key_len = wps->wps->network_key_len;
 } else if (wps->auth_type & (0x0002 | 0x0020)) {
  char hex[65];

  free((wps->new_psk));
  wps->new_psk_len = 32;
  wps->new_psk = (u8 *)malloc((wps->new_psk_len));
  if (wps->new_psk == 
# 1719 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
                     ((void *)0)
# 1719 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                         )
   return -1;
  if (os_get_random((wps->new_psk), (wps->new_psk_len)) < 0) {
   free((wps->new_psk));
   wps->new_psk = 
# 1723 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
                 ((void *)0)
# 1723 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                     ;
   return -1;
  }
  wpa_hexdump_key(ESP_LOG_DEBUG, "WPS: Generated per-device PSK",
    wps->new_psk, wps->new_psk_len);


  memcpy((wps->cred.key), (hex), (wps->new_psk_len * 2));
  wps->cred.key_len = wps->new_psk_len * 2;
 }

use_provided:
# 1762 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
 cred = wpabuf_alloc(200);
 if (cred == 
# 1763 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
            ((void *)0)
# 1763 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                )
  return -1;

 if (wps_build_credential(cred, &wps->cred)) {
  wpabuf_free(cred);
  return -1;
 }

 wpabuf_put_be16(msg, ATTR_CRED);
 wpabuf_put_be16(msg, wpabuf_len(cred));
 wpabuf_put_buf(msg, cred);
 wpabuf_free(cred);

skip_cred_build:
 if (wps->wps->registrar->extra_cred) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS:  * Credential (pre-configured)" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS:  * Credential (pre-configured)" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS:  * Credential (pre-configured)" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS:  * Credential (pre-configured)" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS:  * Credential (pre-configured)" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
  wpabuf_put_buf(msg, wps->wps->registrar->extra_cred);
 }

 return 0;
}


static int wps_build_ap_settings(struct wps_data *wps, struct wpabuf *msg)
{
 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS:  * AP Settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS:  * AP Settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS:  * AP Settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS:  * AP Settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS:  * AP Settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);

 if (wps_build_credential(msg, &wps->cred))
  return -1;

 return 0;
}


static struct wpabuf * wps_build_ap_cred(struct wps_data *wps)
{
 struct wpabuf *msg, *plain;

 msg = wpabuf_alloc(1000);
 if (msg == 
# 1802 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
           ((void *)0)
# 1802 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
               )
  return 
# 1803 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
        ((void *)0)
# 1803 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
            ;

 plain = wpabuf_alloc(200);
 if (plain == 
# 1806 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
             ((void *)0)
# 1806 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                 ) {
  wpabuf_free(msg);
  return 
# 1808 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
        ((void *)0)
# 1808 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
            ;
 }

 if (wps_build_ap_settings(wps, plain)) {
  wpabuf_free(plain);
  wpabuf_free(msg);
  return 
# 1814 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
        ((void *)0)
# 1814 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
            ;
 }

 wpabuf_put_be16(msg, ATTR_CRED);
 wpabuf_put_be16(msg, wpabuf_len(plain));
 wpabuf_put_buf(msg, plain);
 wpabuf_free(plain);

 return msg;
}


static struct wpabuf * wps_build_m2(struct wps_data *wps)
{
 struct wpabuf *msg;

 if (os_get_random((wps->nonce_r), (16)) < 0)
  return 
# 1831 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
        ((void *)0)
# 1831 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
            ;
 wpa_hexdump(ESP_LOG_DEBUG, "WPS: Registrar Nonce",
      wps->nonce_r, 16);
 wpa_hexdump(ESP_LOG_DEBUG, "WPS: UUID-R", wps->uuid_r, 16);

 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Building Message M2" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Building Message M2" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Building Message M2" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Building Message M2" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Building Message M2" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
 msg = wpabuf_alloc(1000);
 if (msg == 
# 1838 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
           ((void *)0)
# 1838 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
               )
  return 
# 1839 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
        ((void *)0)
# 1839 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
            ;

 if (wps_build_version(msg) ||
     wps_build_msg_type(msg, WPS_M2) ||
     wps_build_enrollee_nonce(wps, msg) ||
     wps_build_registrar_nonce(wps, msg) ||
     wps_build_uuid_r(wps, msg) ||
     wps_build_public_key(wps, msg, WPS_CALC_KEY_NORMAL) ||
     wps_derive_keys(wps) ||
     wps_build_auth_type_flags(wps, msg) ||
     wps_build_encr_type_flags(wps, msg) ||
     wps_build_conn_type_flags(wps, msg) ||
     wps_build_config_methods_r(wps->wps->registrar, msg) ||
     wps_build_device_attrs(&wps->wps->dev, msg) ||
     wps_build_rf_bands(&wps->wps->dev, msg) ||
     wps_build_assoc_state(wps, msg) ||
     wps_build_config_error(msg, WPS_CFG_NO_ERROR) ||
     wps_build_dev_password_id(msg, wps->dev_pw_id) ||
     wps_build_os_version(&wps->wps->dev, msg) ||
     wps_build_wfa_ext(msg, 0, 
# 1858 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
                              ((void *)0)
# 1858 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                                  , 0) ||
     wps_build_authenticator(wps, msg)) {
  wpabuf_free(msg);
  return 
# 1861 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
        ((void *)0)
# 1861 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
            ;
 }

 wps->int_reg = 1;
 wps->state = RECV_M3;
 return msg;
}


static struct wpabuf * wps_build_m2d(struct wps_data *wps)
{
 struct wpabuf *msg;
 u16 err = wps->config_error;

 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Building Message M2D" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Building Message M2D" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Building Message M2D" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Building Message M2D" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Building Message M2D" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
 msg = wpabuf_alloc(1000);
 if (msg == 
# 1877 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
           ((void *)0)
# 1877 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
               )
  return 
# 1878 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
        ((void *)0)
# 1878 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
            ;

 if (wps->wps->ap && wps->wps->ap_setup_locked &&
     err == WPS_CFG_NO_ERROR)
  err = WPS_CFG_SETUP_LOCKED;

 if (wps_build_version(msg) ||
     wps_build_msg_type(msg, WPS_M2D) ||
     wps_build_enrollee_nonce(wps, msg) ||
     wps_build_registrar_nonce(wps, msg) ||
     wps_build_uuid_r(wps, msg) ||
     wps_build_auth_type_flags(wps, msg) ||
     wps_build_encr_type_flags(wps, msg) ||
     wps_build_conn_type_flags(wps, msg) ||
     wps_build_config_methods_r(wps->wps->registrar, msg) ||
     wps_build_device_attrs(&wps->wps->dev, msg) ||
     wps_build_rf_bands(&wps->wps->dev, msg) ||
     wps_build_assoc_state(wps, msg) ||
     wps_build_config_error(msg, err) ||
     wps_build_os_version(&wps->wps->dev, msg) ||
     wps_build_wfa_ext(msg, 0, 
# 1898 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
                              ((void *)0)
# 1898 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                                  , 0)) {
  wpabuf_free(msg);
  return 
# 1900 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
        ((void *)0)
# 1900 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
            ;
 }

 wps->state = RECV_M2D_ACK;
 return msg;
}


static struct wpabuf * wps_build_m4(struct wps_data *wps)
{
 struct wpabuf *msg, *plain;

 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Building Message M4" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Building Message M4" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Building Message M4" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Building Message M4" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Building Message M4" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);

 wps_derive_psk(wps, wps->dev_password, wps->dev_password_len);

 plain = wpabuf_alloc(200);
 if (plain == 
# 1917 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
             ((void *)0)
# 1917 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                 )
  return 
# 1918 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
        ((void *)0)
# 1918 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
            ;

 msg = wpabuf_alloc(1000);
 if (msg == 
# 1921 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
           ((void *)0)
# 1921 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
               ) {
  wpabuf_free(plain);
  return 
# 1923 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
        ((void *)0)
# 1923 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
            ;
 }

 if (wps_build_version(msg) ||
     wps_build_msg_type(msg, WPS_M4) ||
     wps_build_enrollee_nonce(wps, msg) ||
     wps_build_r_hash(wps, msg) ||
     wps_build_r_snonce1(wps, plain) ||
     wps_build_key_wrap_auth(wps, plain) ||
     wps_build_encr_settings(wps, msg, plain) ||
     wps_build_wfa_ext(msg, 0, 
# 1933 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
                              ((void *)0)
# 1933 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                                  , 0) ||
     wps_build_authenticator(wps, msg)) {
  wpabuf_free(plain);
  wpabuf_free(msg);
  return 
# 1937 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
        ((void *)0)
# 1937 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
            ;
 }
 wpabuf_free(plain);

 wps->state = RECV_M5;
 return msg;
}


static struct wpabuf * wps_build_m6(struct wps_data *wps)
{
 struct wpabuf *msg, *plain;

 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Building Message M6" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Building Message M6" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Building Message M6" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Building Message M6" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Building Message M6" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);

 plain = wpabuf_alloc(200);
 if (plain == 
# 1953 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
             ((void *)0)
# 1953 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                 )
  return 
# 1954 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
        ((void *)0)
# 1954 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
            ;

 msg = wpabuf_alloc(1000);
 if (msg == 
# 1957 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
           ((void *)0)
# 1957 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
               ) {
  wpabuf_free(plain);
  return 
# 1959 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
        ((void *)0)
# 1959 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
            ;
 }

 if (wps_build_version(msg) ||
     wps_build_msg_type(msg, WPS_M6) ||
     wps_build_enrollee_nonce(wps, msg) ||
     wps_build_r_snonce2(wps, plain) ||
     wps_build_key_wrap_auth(wps, plain) ||
     wps_build_encr_settings(wps, msg, plain) ||
     wps_build_wfa_ext(msg, 0, 
# 1968 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
                              ((void *)0)
# 1968 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                                  , 0) ||
     wps_build_authenticator(wps, msg)) {
  wpabuf_free(plain);
  wpabuf_free(msg);
  return 
# 1972 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
        ((void *)0)
# 1972 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
            ;
 }
 wpabuf_free(plain);

 wps->wps_pin_revealed = 1;
 wps->state = RECV_M7;
 return msg;
}


static struct wpabuf * wps_build_m8(struct wps_data *wps)
{
 struct wpabuf *msg, *plain;

 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Building Message M8" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Building Message M8" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Building Message M8" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Building Message M8" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Building Message M8" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);

 plain = wpabuf_alloc(500);
 if (plain == 
# 1989 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
             ((void *)0)
# 1989 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                 )
  return 
# 1990 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
        ((void *)0)
# 1990 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
            ;

 msg = wpabuf_alloc(1000);
 if (msg == 
# 1993 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
           ((void *)0)
# 1993 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
               ) {
  wpabuf_free(plain);
  return 
# 1995 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
        ((void *)0)
# 1995 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
            ;
 }

 if (wps_build_version(msg) ||
     wps_build_msg_type(msg, WPS_M8) ||
     wps_build_enrollee_nonce(wps, msg) ||
     ((wps->wps->ap || wps->er) && wps_build_cred(wps, plain)) ||
     (!wps->wps->ap && !wps->er && wps_build_ap_settings(wps, plain)) ||
     wps_build_key_wrap_auth(wps, plain) ||
     wps_build_encr_settings(wps, msg, plain) ||
     wps_build_wfa_ext(msg, 0, 
# 2005 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
                              ((void *)0)
# 2005 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                                  , 0) ||
     wps_build_authenticator(wps, msg)) {
  wpabuf_free(plain);
  wpabuf_free(msg);
  return 
# 2009 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
        ((void *)0)
# 2009 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
            ;
 }
 wpabuf_free(plain);

 wps->state = RECV_DONE;
 return msg;
}


struct wpabuf * wps_registrar_get_msg(struct wps_data *wps,
          enum wsc_op_code *op_code)
{
 struct wpabuf *msg;
# 2066 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
 switch (wps->state) {
 case SEND_M2:
  if (wps_get_dev_password(wps) < 0)
   msg = wps_build_m2d(wps);
  else
   msg = wps_build_m2(wps);
  *op_code = WSC_MSG;
  break;
 case SEND_M2D:
  msg = wps_build_m2d(wps);
  *op_code = WSC_MSG;
  break;
 case SEND_M4:
  msg = wps_build_m4(wps);
  *op_code = WSC_MSG;
  break;
 case SEND_M6:
  msg = wps_build_m6(wps);
  *op_code = WSC_MSG;
  break;
 case SEND_M8:
  msg = wps_build_m8(wps);
  *op_code = WSC_MSG;
  break;
 case RECV_DONE:
  msg = wps_build_wsc_ack(wps);
  *op_code = WSC_ACK;
  break;
 case SEND_WSC_NACK:
  msg = wps_build_wsc_nack(wps);
  *op_code = WSC_NACK;
  break;
 default:
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Unsupported state %d for building " "a message" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->state); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Unsupported state %d for building " "a message" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->state); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Unsupported state %d for building " "a message" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->state); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Unsupported state %d for building " "a message" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->state); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Unsupported state %d for building " "a message" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->state); } } while(0); } while(0)
                              ;
  msg = 
# 2101 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
       ((void *)0)
# 2101 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
           ;
  break;
 }

 if (*op_code == WSC_MSG && msg) {


  wpabuf_free(wps->last_msg);
  wps->last_msg = wpabuf_dup(msg);
 }

 return msg;
}


static int wps_process_enrollee_nonce(struct wps_data *wps, const u8 *e_nonce)
{
 if (e_nonce == 
# 2118 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
               ((void *)0)
# 2118 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                   ) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: No Enrollee Nonce received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: No Enrollee Nonce received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: No Enrollee Nonce received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: No Enrollee Nonce received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: No Enrollee Nonce received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
  return -1;
 }

 memcpy((wps->nonce_e), (e_nonce), (16));
 wpa_hexdump(ESP_LOG_DEBUG, "WPS: Enrollee Nonce",
      wps->nonce_e, 16);

 return 0;
}


static int wps_process_registrar_nonce(struct wps_data *wps, const u8 *r_nonce)
{
 if (r_nonce == 
# 2133 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
               ((void *)0)
# 2133 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                   ) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: No Registrar Nonce received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: No Registrar Nonce received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: No Registrar Nonce received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: No Registrar Nonce received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: No Registrar Nonce received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
  return -1;
 }

 if (memcmp((wps->nonce_r), (r_nonce), (16)) != 0) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Invalid Registrar Nonce received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Invalid Registrar Nonce received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Invalid Registrar Nonce received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Invalid Registrar Nonce received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Invalid Registrar Nonce received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
  return -1;
 }

 return 0;
}


static int wps_process_uuid_e(struct wps_data *wps, const u8 *uuid_e)
{
 if (uuid_e == 
# 2149 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
              ((void *)0)
# 2149 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                  ) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: No UUID-E received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: No UUID-E received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: No UUID-E received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: No UUID-E received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: No UUID-E received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
  return -1;
 }

 memcpy((wps->uuid_e), (uuid_e), (16));
 wpa_hexdump(ESP_LOG_DEBUG, "WPS: UUID-E", wps->uuid_e, 16);

 return 0;
}


static int wps_process_dev_password_id(struct wps_data *wps, const u8 *pw_id)
{
 if (pw_id == 
# 2163 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
             ((void *)0)
# 2163 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                 ) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: No Device Password ID received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: No Device Password ID received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: No Device Password ID received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: No Device Password ID received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: No Device Password ID received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
  return -1;
 }

 wps->dev_pw_id = ((u16) (((pw_id)[0] << 8) | (pw_id)[1]));
 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Device Password ID %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->dev_pw_id); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Device Password ID %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->dev_pw_id); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Device Password ID %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->dev_pw_id); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Device Password ID %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->dev_pw_id); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Device Password ID %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->dev_pw_id); } } while(0); } while(0);

 return 0;
}


static int wps_process_e_hash1(struct wps_data *wps, const u8 *e_hash1)
{
 if (e_hash1 == 
# 2177 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
               ((void *)0)
# 2177 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                   ) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: No E-Hash1 received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: No E-Hash1 received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: No E-Hash1 received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: No E-Hash1 received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: No E-Hash1 received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
  return -1;
 }

 memcpy((wps->peer_hash1), (e_hash1), (32));
 wpa_hexdump(ESP_LOG_DEBUG, "WPS: E-Hash1", wps->peer_hash1, 32);

 return 0;
}


static int wps_process_e_hash2(struct wps_data *wps, const u8 *e_hash2)
{
 if (e_hash2 == 
# 2191 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
               ((void *)0)
# 2191 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                   ) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: No E-Hash2 received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: No E-Hash2 received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: No E-Hash2 received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: No E-Hash2 received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: No E-Hash2 received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
  return -1;
 }

 memcpy((wps->peer_hash2), (e_hash2), (32));
 wpa_hexdump(ESP_LOG_DEBUG, "WPS: E-Hash2", wps->peer_hash2, 32);

 return 0;
}


static int wps_process_e_snonce1(struct wps_data *wps, const u8 *e_snonce1)
{
 u8 hash[32];
 const u8 *addr[4];
 size_t len[4];

 if (e_snonce1 == 
# 2209 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
                 ((void *)0)
# 2209 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                     ) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: No E-SNonce1 received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: No E-SNonce1 received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: No E-SNonce1 received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: No E-SNonce1 received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: No E-SNonce1 received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
  return -1;
 }

 wpa_hexdump_key(ESP_LOG_DEBUG, "WPS: E-SNonce1", e_snonce1,
   16);


 addr[0] = e_snonce1;
 len[0] = 16;
 addr[1] = wps->psk1;
 len[1] = 16;
 addr[2] = wpabuf_head(wps->dh_pubkey_e);
 len[2] = wpabuf_len(wps->dh_pubkey_e);
 addr[3] = wpabuf_head(wps->dh_pubkey_r);
 len[3] = wpabuf_len(wps->dh_pubkey_r);
 if (wps_crypto_funcs.hmac_sha256_vector) {
  wps_crypto_funcs.hmac_sha256_vector(wps->authkey, 32, 4, addr, (int *)len, hash);
 } else {
  do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "In function %s, fail to register hmac_sha256_vector function!\r\n" "\033[0m" "\n", esp_log_timestamp(), "wpa", __FUNCTION__); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "In function %s, fail to register hmac_sha256_vector function!\r\n" "\033[0m" "\n", esp_log_timestamp(), "wpa", __FUNCTION__); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "In function %s, fail to register hmac_sha256_vector function!\r\n" "\033[0m" "\n", esp_log_timestamp(), "wpa", __FUNCTION__); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "In function %s, fail to register hmac_sha256_vector function!\r\n" "\033[0m" "\n", esp_log_timestamp(), "wpa", __FUNCTION__); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "In function %s, fail to register hmac_sha256_vector function!\r\n" "\033[0m" "\n", esp_log_timestamp(), "wpa", __FUNCTION__); } } while(0); } while(0);
  return -1;
 }
 if (memcmp((wps->peer_hash1), (hash), (32)) != 0) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: E-Hash1 derived from E-S1 does " "not match with the pre-committed value" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: E-Hash1 derived from E-S1 does " "not match with the pre-committed value" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: E-Hash1 derived from E-S1 does " "not match with the pre-committed value" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: E-Hash1 derived from E-S1 does " "not match with the pre-committed value" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: E-Hash1 derived from E-S1 does " "not match with the pre-committed value" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                                               ;
  wps->config_error = WPS_CFG_DEV_PASSWORD_AUTH_FAILURE;
  wps_pwd_auth_fail_event(wps->wps, 0, 1);
  return -1;
 }

 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Enrollee proved knowledge of the first " "half of the device password" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Enrollee proved knowledge of the first " "half of the device password" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Enrollee proved knowledge of the first " "half of the device password" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Enrollee proved knowledge of the first " "half of the device password" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Enrollee proved knowledge of the first " "half of the device password" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                                   ;

 return 0;
}


static int wps_process_e_snonce2(struct wps_data *wps, const u8 *e_snonce2)
{
 u8 hash[32];
 const u8 *addr[4];
 size_t len[4];

 if (e_snonce2 == 
# 2253 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
                 ((void *)0)
# 2253 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                     ) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: No E-SNonce2 received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: No E-SNonce2 received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: No E-SNonce2 received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: No E-SNonce2 received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: No E-SNonce2 received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
  return -1;
 }

 wpa_hexdump_key(ESP_LOG_DEBUG, "WPS: E-SNonce2", e_snonce2,
   16);


 addr[0] = e_snonce2;
 len[0] = 16;
 addr[1] = wps->psk2;
 len[1] = 16;
 addr[2] = wpabuf_head(wps->dh_pubkey_e);
 len[2] = wpabuf_len(wps->dh_pubkey_e);
 addr[3] = wpabuf_head(wps->dh_pubkey_r);
 len[3] = wpabuf_len(wps->dh_pubkey_r);

 if (wps_crypto_funcs.hmac_sha256_vector) {
  wps_crypto_funcs.hmac_sha256_vector(wps->authkey, 32, 4, addr, (int *)len, hash);
 } else {
  do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "In function %s, fail to register hmac_sha256_vector function!\r\n" "\033[0m" "\n", esp_log_timestamp(), "wpa", __FUNCTION__); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "In function %s, fail to register hmac_sha256_vector function!\r\n" "\033[0m" "\n", esp_log_timestamp(), "wpa", __FUNCTION__); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "In function %s, fail to register hmac_sha256_vector function!\r\n" "\033[0m" "\n", esp_log_timestamp(), "wpa", __FUNCTION__); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "In function %s, fail to register hmac_sha256_vector function!\r\n" "\033[0m" "\n", esp_log_timestamp(), "wpa", __FUNCTION__); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "In function %s, fail to register hmac_sha256_vector function!\r\n" "\033[0m" "\n", esp_log_timestamp(), "wpa", __FUNCTION__); } } while(0); } while(0);
  return -1;
 }
 if (memcmp((wps->peer_hash2), (hash), (32)) != 0) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: E-Hash2 derived from E-S2 does " "not match with the pre-committed value" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: E-Hash2 derived from E-S2 does " "not match with the pre-committed value" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: E-Hash2 derived from E-S2 does " "not match with the pre-committed value" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: E-Hash2 derived from E-S2 does " "not match with the pre-committed value" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: E-Hash2 derived from E-S2 does " "not match with the pre-committed value" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                                               ;

  wps_registrar_invalidate_pin(wps->wps->registrar, wps->uuid_e);

  wps->config_error = WPS_CFG_DEV_PASSWORD_AUTH_FAILURE;
  wps_pwd_auth_fail_event(wps->wps, 0, 2);
  return -1;
 }

 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Enrollee proved knowledge of the second " "half of the device password" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Enrollee proved knowledge of the second " "half of the device password" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Enrollee proved knowledge of the second " "half of the device password" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Enrollee proved knowledge of the second " "half of the device password" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Enrollee proved knowledge of the second " "half of the device password" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                                   ;
 wps->wps_pin_revealed = 0;

 wps_registrar_unlock_pin(wps->wps->registrar, wps->uuid_e);






 wps_registrar_invalidate_pin(wps->wps->registrar, wps->uuid_e);

 return 0;
}


static int wps_process_mac_addr(struct wps_data *wps, const u8 *mac_addr)
{
 if (mac_addr == 
# 2307 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
                ((void *)0)
# 2307 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                    ) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: No MAC Address received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: No MAC Address received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: No MAC Address received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: No MAC Address received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: No MAC Address received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
  return -1;
 }

 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Enrollee MAC Address " "%02x:%02x:%02x:%02x:%02x:%02x" "\033[0m" "\n", esp_log_timestamp(), "wpa", (mac_addr)[0], (mac_addr)[1], (mac_addr)[2], (mac_addr)[3], (mac_addr)[4], (mac_addr)[5]); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Enrollee MAC Address " "%02x:%02x:%02x:%02x:%02x:%02x" "\033[0m" "\n", esp_log_timestamp(), "wpa", (mac_addr)[0], (mac_addr)[1], (mac_addr)[2], (mac_addr)[3], (mac_addr)[4], (mac_addr)[5]); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Enrollee MAC Address " "%02x:%02x:%02x:%02x:%02x:%02x" "\033[0m" "\n", esp_log_timestamp(), "wpa", (mac_addr)[0], (mac_addr)[1], (mac_addr)[2], (mac_addr)[3], (mac_addr)[4], (mac_addr)[5]); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Enrollee MAC Address " "%02x:%02x:%02x:%02x:%02x:%02x" "\033[0m" "\n", esp_log_timestamp(), "wpa", (mac_addr)[0], (mac_addr)[1], (mac_addr)[2], (mac_addr)[3], (mac_addr)[4], (mac_addr)[5]); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Enrollee MAC Address " "%02x:%02x:%02x:%02x:%02x:%02x" "\033[0m" "\n", esp_log_timestamp(), "wpa", (mac_addr)[0], (mac_addr)[1], (mac_addr)[2], (mac_addr)[3], (mac_addr)[4], (mac_addr)[5]); } } while(0); } while(0)
                       ;
 memcpy((wps->mac_addr_e), (mac_addr), (6));
 memcpy((wps->peer_dev.mac_addr), (mac_addr), (6));

 return 0;
}


static int wps_process_pubkey(struct wps_data *wps, const u8 *pk,
         size_t pk_len)
{
 if (pk == 
# 2324 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
          ((void *)0) 
# 2324 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
               || pk_len == 0) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: No Public Key received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: No Public Key received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: No Public Key received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: No Public Key received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: No Public Key received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
  return -1;
 }

 wpabuf_free(wps->dh_pubkey_e);
 wps->dh_pubkey_e = wpabuf_alloc_copy(pk, pk_len);
 if (wps->dh_pubkey_e == 
# 2331 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
                        ((void *)0)
# 2331 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                            )
  return -1;

 return 0;
}


static int wps_process_auth_type_flags(struct wps_data *wps, const u8 *auth)
{
 u16 auth_types;

 if (auth == 
# 2342 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
            ((void *)0)
# 2342 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                ) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: No Authentication Type flags " "received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: No Authentication Type flags " "received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: No Authentication Type flags " "received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: No Authentication Type flags " "received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: No Authentication Type flags " "received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                 ;
  return -1;
 }

 auth_types = ((u16) (((auth)[0] << 8) | (auth)[1]));

 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Enrollee Authentication Type flags 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", auth_types); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Enrollee Authentication Type flags 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", auth_types); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Enrollee Authentication Type flags 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", auth_types); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Enrollee Authentication Type flags 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", auth_types); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Enrollee Authentication Type flags 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", auth_types); } } while(0); } while(0)
                ;
 wps->auth_type = wps->wps->auth_types & auth_types;
 if (wps->auth_type == 0) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: No match in supported " "authentication types (own 0x%x Enrollee 0x%x)" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->wps->auth_types, auth_types); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: No match in supported " "authentication types (own 0x%x Enrollee 0x%x)" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->wps->auth_types, auth_types); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: No match in supported " "authentication types (own 0x%x Enrollee 0x%x)" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->wps->auth_types, auth_types); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: No match in supported " "authentication types (own 0x%x Enrollee 0x%x)" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->wps->auth_types, auth_types); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: No match in supported " "authentication types (own 0x%x Enrollee 0x%x)" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->wps->auth_types, auth_types); } } while(0); } while(0)

                                       ;
# 2370 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
  return -1;

 }

 return 0;
}


static int wps_process_encr_type_flags(struct wps_data *wps, const u8 *encr)
{
 u16 encr_types;

 if (encr == 
# 2382 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
            ((void *)0)
# 2382 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                ) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: No Encryption Type flags " "received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: No Encryption Type flags " "received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: No Encryption Type flags " "received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: No Encryption Type flags " "received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: No Encryption Type flags " "received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                 ;
  return -1;
 }

 encr_types = ((u16) (((encr)[0] << 8) | (encr)[1]));

 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Enrollee Encryption Type flags 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", encr_types); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Enrollee Encryption Type flags 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", encr_types); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Enrollee Encryption Type flags 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", encr_types); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Enrollee Encryption Type flags 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", encr_types); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Enrollee Encryption Type flags 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", encr_types); } } while(0); } while(0)
                ;
 wps->encr_type = wps->wps->encr_types & encr_types;
 if (wps->encr_type == 0) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: No match in supported " "encryption types (own 0x%x Enrollee 0x%x)" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->wps->encr_types, encr_types); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: No match in supported " "encryption types (own 0x%x Enrollee 0x%x)" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->wps->encr_types, encr_types); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: No match in supported " "encryption types (own 0x%x Enrollee 0x%x)" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->wps->encr_types, encr_types); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: No match in supported " "encryption types (own 0x%x Enrollee 0x%x)" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->wps->encr_types, encr_types); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: No match in supported " "encryption types (own 0x%x Enrollee 0x%x)" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->wps->encr_types, encr_types); } } while(0); } while(0)

                                       ;
# 2410 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
  return -1;

 }

 return 0;
}


static int wps_process_conn_type_flags(struct wps_data *wps, const u8 *conn)
{
 if (conn == 
# 2420 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
            ((void *)0)
# 2420 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                ) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: No Connection Type flags " "received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: No Connection Type flags " "received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: No Connection Type flags " "received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: No Connection Type flags " "received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: No Connection Type flags " "received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                 ;
  return -1;
 }

 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Enrollee Connection Type flags 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *conn); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Enrollee Connection Type flags 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *conn); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Enrollee Connection Type flags 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *conn); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Enrollee Connection Type flags 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *conn); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Enrollee Connection Type flags 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", *conn); } } while(0); } while(0)
           ;

 return 0;
}


static int wps_process_config_methods(struct wps_data *wps, const u8 *methods)
{
 u16 m;

 if (methods == 
# 2437 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
               ((void *)0)
# 2437 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                   ) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: No Config Methods received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: No Config Methods received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: No Config Methods received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: No Config Methods received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: No Config Methods received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
  return -1;
 }

 m = ((u16) (((methods)[0] << 8) | (methods)[1]));

 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Enrollee Config Methods 0x%x" "%s%s%s%s%s%s%s%s%s" "\033[0m" "\n", esp_log_timestamp(), "wpa", m, m & 0x0001 ? " [USBA]" : "", m & 0x0002 ? " [Ethernet]" : "", m & 0x0004 ? " [Label]" : "", m & 0x0008 ? " [Display]" : "", m & 0x0010 ? " [Ext NFC Token]" : "", m & 0x0020 ? " [Int NFC Token]" : "", m & 0x0040 ? " [NFC]" : "", m & 0x0080 ? " [PBC]" : "", m & 0x0100 ? " [Keypad]" : ""); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Enrollee Config Methods 0x%x" "%s%s%s%s%s%s%s%s%s" "\033[0m" "\n", esp_log_timestamp(), "wpa", m, m & 0x0001 ? " [USBA]" : "", m & 0x0002 ? " [Ethernet]" : "", m & 0x0004 ? " [Label]" : "", m & 0x0008 ? " [Display]" : "", m & 0x0010 ? " [Ext NFC Token]" : "", m & 0x0020 ? " [Int NFC Token]" : "", m & 0x0040 ? " [NFC]" : "", m & 0x0080 ? " [PBC]" : "", m & 0x0100 ? " [Keypad]" : ""); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Enrollee Config Methods 0x%x" "%s%s%s%s%s%s%s%s%s" "\033[0m" "\n", esp_log_timestamp(), "wpa", m, m & 0x0001 ? " [USBA]" : "", m & 0x0002 ? " [Ethernet]" : "", m & 0x0004 ? " [Label]" : "", m & 0x0008 ? " [Display]" : "", m & 0x0010 ? " [Ext NFC Token]" : "", m & 0x0020 ? " [Int NFC Token]" : "", m & 0x0040 ? " [NFC]" : "", m & 0x0080 ? " [PBC]" : "", m & 0x0100 ? " [Keypad]" : ""); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Enrollee Config Methods 0x%x" "%s%s%s%s%s%s%s%s%s" "\033[0m" "\n", esp_log_timestamp(), "wpa", m, m & 0x0001 ? " [USBA]" : "", m & 0x0002 ? " [Ethernet]" : "", m & 0x0004 ? " [Label]" : "", m & 0x0008 ? " [Display]" : "", m & 0x0010 ? " [Ext NFC Token]" : "", m & 0x0020 ? " [Int NFC Token]" : "", m & 0x0040 ? " [NFC]" : "", m & 0x0080 ? " [PBC]" : "", m & 0x0100 ? " [Keypad]" : ""); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Enrollee Config Methods 0x%x" "%s%s%s%s%s%s%s%s%s" "\033[0m" "\n", esp_log_timestamp(), "wpa", m, m & 0x0001 ? " [USBA]" : "", m & 0x0002 ? " [Ethernet]" : "", m & 0x0004 ? " [Label]" : "", m & 0x0008 ? " [Display]" : "", m & 0x0010 ? " [Ext NFC Token]" : "", m & 0x0020 ? " [Int NFC Token]" : "", m & 0x0040 ? " [NFC]" : "", m & 0x0080 ? " [PBC]" : "", m & 0x0100 ? " [Keypad]" : ""); } } while(0); } while(0)
# 2454 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                                              ;

 if (!(m & 0x0008) && !wps->use_psk_key) {





  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Prefer PSK format key due to " "Enrollee not supporting display" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Prefer PSK format key due to " "Enrollee not supporting display" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Prefer PSK format key due to " "Enrollee not supporting display" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Prefer PSK format key due to " "Enrollee not supporting display" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Prefer PSK format key due to " "Enrollee not supporting display" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                                        ;
  wps->use_psk_key = 1;
 }

 return 0;
}


static int wps_process_wps_state(struct wps_data *wps, const u8 *state)
{
 if (state == 
# 2473 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
             ((void *)0)
# 2473 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                 ) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: No Wi-Fi Protected Setup State " "received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: No Wi-Fi Protected Setup State " "received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: No Wi-Fi Protected Setup State " "received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: No Wi-Fi Protected Setup State " "received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: No Wi-Fi Protected Setup State " "received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                 ;
  return -1;
 }

 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Enrollee Wi-Fi Protected Setup State %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", *state); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Enrollee Wi-Fi Protected Setup State %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", *state); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Enrollee Wi-Fi Protected Setup State %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", *state); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Enrollee Wi-Fi Protected Setup State %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", *state); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Enrollee Wi-Fi Protected Setup State %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", *state); } } while(0); } while(0)
            ;

 return 0;
}


static int wps_process_assoc_state(struct wps_data *wps, const u8 *assoc)
{
 u16 a;

 if (assoc == 
# 2490 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
             ((void *)0)
# 2490 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                 ) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: No Association State received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: No Association State received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: No Association State received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: No Association State received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: No Association State received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
  return -1;
 }

 a = ((u16) (((assoc)[0] << 8) | (assoc)[1]));
 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Enrollee Association State %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", a); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Enrollee Association State %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", a); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Enrollee Association State %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", a); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Enrollee Association State %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", a); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Enrollee Association State %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", a); } } while(0); } while(0);

 return 0;
}


static int wps_process_config_error(struct wps_data *wps, const u8 *err)
{
 u16 e;

 if (err == 
# 2506 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
           ((void *)0)
# 2506 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
               ) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: No Configuration Error received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: No Configuration Error received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: No Configuration Error received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: No Configuration Error received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: No Configuration Error received" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
  return -1;
 }

 e = ((u16) (((err)[0] << 8) | (err)[1]));
 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Enrollee Configuration Error %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", e); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Enrollee Configuration Error %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", e); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Enrollee Configuration Error %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", e); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Enrollee Configuration Error %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", e); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Enrollee Configuration Error %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", e); } } while(0); } while(0);

 return 0;
}


static int wps_registrar_p2p_dev_addr_match(struct wps_data *wps)
{
# 2535 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
 return 1;
}


static int wps_registrar_skip_overlap(struct wps_data *wps)
{
# 2553 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
 return 0;
}


static enum wps_process_res wps_process_m1(struct wps_data *wps,
        struct wps_parse_attr *attr)
{
 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Received M1" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Received M1" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Received M1" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Received M1" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Received M1" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);

 if (wps->state != RECV_M1) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Unexpected state (%d) for " "receiving M1" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->state); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Unexpected state (%d) for " "receiving M1" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->state); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Unexpected state (%d) for " "receiving M1" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->state); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Unexpected state (%d) for " "receiving M1" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->state); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Unexpected state (%d) for " "receiving M1" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->state); } } while(0); } while(0)
                                 ;
  return WPS_FAILURE;
 }

 if (wps_process_uuid_e(wps, attr->uuid_e) ||
     wps_process_mac_addr(wps, attr->mac_addr) ||
     wps_process_enrollee_nonce(wps, attr->enrollee_nonce) ||
     wps_process_pubkey(wps, attr->public_key, attr->public_key_len) ||
     wps_process_auth_type_flags(wps, attr->auth_type_flags) ||
     wps_process_encr_type_flags(wps, attr->encr_type_flags) ||
     wps_process_conn_type_flags(wps, attr->conn_type_flags) ||
     wps_process_config_methods(wps, attr->config_methods) ||
     wps_process_wps_state(wps, attr->wps_state) ||
     wps_process_device_attrs(&wps->peer_dev, attr) ||
     wps_process_rf_bands(&wps->peer_dev, attr->rf_bands) ||
     wps_process_assoc_state(wps, attr->assoc_state) ||
     wps_process_dev_password_id(wps, attr->dev_password_id) ||
     wps_process_config_error(wps, attr->config_error) ||
     wps_process_os_version(&wps->peer_dev, attr->os_version))
  return WPS_FAILURE;

 if (wps->dev_pw_id < 0x10 &&
     wps->dev_pw_id != DEV_PW_DEFAULT &&
     wps->dev_pw_id != DEV_PW_USER_SPECIFIED &&
     wps->dev_pw_id != DEV_PW_MACHINE_SPECIFIED &&
     wps->dev_pw_id != DEV_PW_REGISTRAR_SPECIFIED &&
     (wps->dev_pw_id != DEV_PW_PUSHBUTTON ||
      !wps->wps->registrar->pbc)) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Unsupported Device Password ID %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->dev_pw_id); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Unsupported Device Password ID %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->dev_pw_id); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Unsupported Device Password ID %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->dev_pw_id); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Unsupported Device Password ID %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->dev_pw_id); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Unsupported Device Password ID %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->dev_pw_id); } } while(0); } while(0)
                     ;
  wps->state = SEND_M2D;
  return WPS_CONTINUE;
 }
# 2629 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
 if (wps->dev_pw_id == DEV_PW_PUSHBUTTON) {
  if ((wps->wps->registrar->force_pbc_overlap ||
       wps_registrar_pbc_overlap(wps->wps->registrar,
            wps->mac_addr_e, wps->uuid_e) ||
       !wps_registrar_p2p_dev_addr_match(wps)) &&
      !wps_registrar_skip_overlap(wps)) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: PBC overlap - deny PBC " "negotiation" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: PBC overlap - deny PBC " "negotiation" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: PBC overlap - deny PBC " "negotiation" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: PBC overlap - deny PBC " "negotiation" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: PBC overlap - deny PBC " "negotiation" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                     ;
   wps->state = SEND_M2D;
   wps->config_error = WPS_CFG_MULTIPLE_PBC_DETECTED;
   wps_pbc_overlap_event(wps->wps);
   wps_fail_event(wps->wps, WPS_M1,
           WPS_CFG_MULTIPLE_PBC_DETECTED,
           WPS_EI_NO_ERROR);
   wps->wps->registrar->force_pbc_overlap = 1;
   return WPS_CONTINUE;
  }
  wps_registrar_add_pbc_session(wps->wps->registrar,
           wps->mac_addr_e, wps->uuid_e);
  wps->pbc = 1;
 }
# 2668 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
 wps->state = SEND_M2;
 return WPS_CONTINUE;
}


static enum wps_process_res wps_process_m3(struct wps_data *wps,
        const struct wpabuf *msg,
        struct wps_parse_attr *attr)
{
 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Received M3" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Received M3" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Received M3" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Received M3" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Received M3" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);

 if (wps->state != RECV_M3) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Unexpected state (%d) for " "receiving M3" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->state); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Unexpected state (%d) for " "receiving M3" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->state); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Unexpected state (%d) for " "receiving M3" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->state); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Unexpected state (%d) for " "receiving M3" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->state); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Unexpected state (%d) for " "receiving M3" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->state); } } while(0); } while(0)
                                 ;
  wps->state = SEND_WSC_NACK;
  return WPS_CONTINUE;
 }

 if (wps->pbc && wps->wps->registrar->force_pbc_overlap &&
     !wps_registrar_skip_overlap(wps)) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Reject negotiation due to PBC " "session overlap" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Reject negotiation due to PBC " "session overlap" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Reject negotiation due to PBC " "session overlap" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Reject negotiation due to PBC " "session overlap" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Reject negotiation due to PBC " "session overlap" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                        ;
  wps->state = SEND_WSC_NACK;
  wps->config_error = WPS_CFG_MULTIPLE_PBC_DETECTED;
  return WPS_CONTINUE;
 }

 if (wps_process_registrar_nonce(wps, attr->registrar_nonce) ||
     wps_process_authenticator(wps, attr->authenticator, msg) ||
     wps_process_e_hash1(wps, attr->e_hash1) ||
     wps_process_e_hash2(wps, attr->e_hash2)) {
  wps->state = SEND_WSC_NACK;
  return WPS_CONTINUE;
 }

 wps->state = SEND_M4;
 return WPS_CONTINUE;
}


static enum wps_process_res wps_process_m5(struct wps_data *wps,
        const struct wpabuf *msg,
        struct wps_parse_attr *attr)
{
 struct wpabuf *decrypted;
 struct wps_parse_attr eattr;

 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Received M5" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Received M5" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Received M5" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Received M5" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Received M5" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);

 if (wps->state != RECV_M5) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Unexpected state (%d) for " "receiving M5" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->state); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Unexpected state (%d) for " "receiving M5" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->state); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Unexpected state (%d) for " "receiving M5" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->state); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Unexpected state (%d) for " "receiving M5" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->state); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Unexpected state (%d) for " "receiving M5" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->state); } } while(0); } while(0)
                                 ;
  wps->state = SEND_WSC_NACK;
  return WPS_CONTINUE;
 }

 if (wps->pbc && wps->wps->registrar->force_pbc_overlap &&
     !wps_registrar_skip_overlap(wps)) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Reject negotiation due to PBC " "session overlap" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Reject negotiation due to PBC " "session overlap" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Reject negotiation due to PBC " "session overlap" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Reject negotiation due to PBC " "session overlap" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Reject negotiation due to PBC " "session overlap" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                        ;
  wps->state = SEND_WSC_NACK;
  wps->config_error = WPS_CFG_MULTIPLE_PBC_DETECTED;
  return WPS_CONTINUE;
 }

 if (wps_process_registrar_nonce(wps, attr->registrar_nonce) ||
     wps_process_authenticator(wps, attr->authenticator, msg)) {
  wps->state = SEND_WSC_NACK;
  return WPS_CONTINUE;
 }

 decrypted = wps_decrypt_encr_settings(wps, attr->encr_settings,
           attr->encr_settings_len);
 if (decrypted == 
# 2741 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
                 ((void *)0)
# 2741 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                     ) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Failed to decrypted Encrypted " "Settings attribute" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Failed to decrypted Encrypted " "Settings attribute" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Failed to decrypted Encrypted " "Settings attribute" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Failed to decrypted Encrypted " "Settings attribute" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Failed to decrypted Encrypted " "Settings attribute" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                           ;
  wps->state = SEND_WSC_NACK;
  return WPS_CONTINUE;
 }

 if (wps_validate_m5_encr(decrypted, attr->version2 != 
# 2748 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
                                                      ((void *)0)
# 2748 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                                                          ) < 0) {
  wpabuf_free(decrypted);
  wps->state = SEND_WSC_NACK;
  return WPS_CONTINUE;
 }

 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Processing decrypted Encrypted Settings " "attribute" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Processing decrypted Encrypted Settings " "attribute" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Processing decrypted Encrypted Settings " "attribute" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Processing decrypted Encrypted Settings " "attribute" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Processing decrypted Encrypted Settings " "attribute" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                 ;
 if (wps_parse_msg(decrypted, &eattr) < 0 ||
     wps_process_key_wrap_auth(wps, decrypted, eattr.key_wrap_auth) ||
     wps_process_e_snonce1(wps, eattr.e_snonce1)) {
  wpabuf_free(decrypted);
  wps->state = SEND_WSC_NACK;
  return WPS_CONTINUE;
 }
 wpabuf_free(decrypted);

 wps->state = SEND_M6;
 return WPS_CONTINUE;
}


static void wps_sta_cred_cb(struct wps_data *wps)
{





 if (wps->cred.auth_type & 0x0020)
  wps->cred.auth_type = 0x0020;
 else if (wps->cred.auth_type & 0x0002)
  wps->cred.auth_type = 0x0002;
 if (wps->cred.encr_type & 0x0008)
  wps->cred.encr_type = 0x0008;
 else if (wps->cred.encr_type & 0x0004)
  wps->cred.encr_type = 0x0004;
 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Update local configuration based on the " "AP configuration" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Update local configuration based on the " "AP configuration" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Update local configuration based on the " "AP configuration" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Update local configuration based on the " "AP configuration" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Update local configuration based on the " "AP configuration" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                        ;
 if (wps->wps->cred_cb)
  wps->wps->cred_cb(wps->wps->cb_ctx, &wps->cred);
}


static void wps_cred_update(struct wps_credential *dst,
       struct wps_credential *src)
{
 memcpy((dst->ssid), (src->ssid), (sizeof(dst->ssid)));
 dst->ssid_len = src->ssid_len;
 dst->auth_type = src->auth_type;
 dst->encr_type = src->encr_type;
 dst->key_idx = src->key_idx;
 memcpy((dst->key), (src->key), (sizeof(dst->key)));
 dst->key_len = src->key_len;
}


static int wps_process_ap_settings_r(struct wps_data *wps,
         struct wps_parse_attr *attr)
{
 struct wpabuf *msg;

 if (wps->wps->ap || wps->er)
  return 0;


 if (wps_process_ap_settings(attr, &wps->cred) < 0)
  return -1;

 do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Received old AP configuration from AP" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Received old AP configuration from AP" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Received old AP configuration from AP" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Received old AP configuration from AP" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Received old AP configuration from AP" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);

 if (wps->new_ap_settings) {
  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Update AP configuration based on " "new settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Update AP configuration based on " "new settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Update AP configuration based on " "new settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Update AP configuration based on " "new settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Update AP configuration based on " "new settings" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                     ;
  wps_cred_update(&wps->cred, wps->new_ap_settings);
  return 0;
 } else {
# 2835 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
  wps_registrar_pin_completed(wps->wps->registrar);

  msg = wps_build_ap_cred(wps);
  if (msg == 
# 2838 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
            ((void *)0)
# 2838 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                )
   return -1;
  wps->cred.cred_attr = wpabuf_head(msg);
  wps->cred.cred_attr_len = wpabuf_len(msg);

  if (wps->ap_settings_cb) {
   wps->ap_settings_cb(wps->ap_settings_cb_ctx,
         &wps->cred);
   wpabuf_free(msg);
   return 1;
  }
  wps_sta_cred_cb(wps);

  wps->cred.cred_attr = 
# 2851 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
                       ((void *)0)
# 2851 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                           ;
  wps->cred.cred_attr_len = 0;
  wpabuf_free(msg);

  return 1;
 }
}


static enum wps_process_res wps_process_m7(struct wps_data *wps,
        const struct wpabuf *msg,
        struct wps_parse_attr *attr)
{
 struct wpabuf *decrypted;
 struct wps_parse_attr eattr;

 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Received M7" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Received M7" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Received M7" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Received M7" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Received M7" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);

 if (wps->state != RECV_M7) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Unexpected state (%d) for " "receiving M7" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->state); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Unexpected state (%d) for " "receiving M7" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->state); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Unexpected state (%d) for " "receiving M7" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->state); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Unexpected state (%d) for " "receiving M7" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->state); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Unexpected state (%d) for " "receiving M7" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->state); } } while(0); } while(0)
                                 ;
  wps->state = SEND_WSC_NACK;
  return WPS_CONTINUE;
 }

 if (wps->pbc && wps->wps->registrar->force_pbc_overlap &&
     !wps_registrar_skip_overlap(wps)) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Reject negotiation due to PBC " "session overlap" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Reject negotiation due to PBC " "session overlap" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Reject negotiation due to PBC " "session overlap" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Reject negotiation due to PBC " "session overlap" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Reject negotiation due to PBC " "session overlap" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                        ;
  wps->state = SEND_WSC_NACK;
  wps->config_error = WPS_CFG_MULTIPLE_PBC_DETECTED;
  return WPS_CONTINUE;
 }

 if (wps_process_registrar_nonce(wps, attr->registrar_nonce) ||
     wps_process_authenticator(wps, attr->authenticator, msg)) {
  wps->state = SEND_WSC_NACK;
  return WPS_CONTINUE;
 }

 decrypted = wps_decrypt_encr_settings(wps, attr->encr_settings,
           attr->encr_settings_len);
 if (decrypted == 
# 2893 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
                 ((void *)0)
# 2893 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                     ) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Failed to decrypt Encrypted " "Settings attribute" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Failed to decrypt Encrypted " "Settings attribute" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Failed to decrypt Encrypted " "Settings attribute" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Failed to decrypt Encrypted " "Settings attribute" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Failed to decrypt Encrypted " "Settings attribute" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                           ;
  wps->state = SEND_WSC_NACK;
  return WPS_CONTINUE;
 }

 if (wps_validate_m7_encr(decrypted, wps->wps->ap || wps->er,
     attr->version2 != 
# 2901 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
                      ((void *)0)
# 2901 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                          ) < 0) {
  wpabuf_free(decrypted);
  wps->state = SEND_WSC_NACK;
  return WPS_CONTINUE;
 }

 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Processing decrypted Encrypted Settings " "attribute" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Processing decrypted Encrypted Settings " "attribute" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Processing decrypted Encrypted Settings " "attribute" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Processing decrypted Encrypted Settings " "attribute" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Processing decrypted Encrypted Settings " "attribute" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                 ;
 if (wps_parse_msg(decrypted, &eattr) < 0 ||
     wps_process_key_wrap_auth(wps, decrypted, eattr.key_wrap_auth) ||
     wps_process_e_snonce2(wps, eattr.e_snonce2) ||
     wps_process_ap_settings_r(wps, &eattr)) {
  wpabuf_free(decrypted);
  wps->state = SEND_WSC_NACK;
  return WPS_CONTINUE;
 }

 wpabuf_free(decrypted);

 wps->state = SEND_M8;
 return WPS_CONTINUE;
}


static enum wps_process_res wps_process_wsc_msg(struct wps_data *wps,
      const struct wpabuf *msg)
{
 struct wps_parse_attr attr;
 enum wps_process_res ret = WPS_CONTINUE;

 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Received WSC_MSG" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Received WSC_MSG" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Received WSC_MSG" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Received WSC_MSG" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Received WSC_MSG" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);

 if (wps_parse_msg(msg, &attr) < 0)
  return WPS_FAILURE;

 if (attr.msg_type == 
# 2936 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
                     ((void *)0)
# 2936 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                         ) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: No Message Type attribute" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: No Message Type attribute" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: No Message Type attribute" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: No Message Type attribute" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: No Message Type attribute" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
  wps->state = SEND_WSC_NACK;
  return WPS_CONTINUE;
 }

 if (*attr.msg_type != WPS_M1 &&
     (attr.registrar_nonce == 
# 2943 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
                             ((void *)0) 
# 2943 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                                  ||
      memcmp((wps->nonce_r), (attr.registrar_nonce), (16))
                        != 0)) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Mismatch in registrar nonce" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Mismatch in registrar nonce" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Mismatch in registrar nonce" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Mismatch in registrar nonce" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Mismatch in registrar nonce" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
  return WPS_FAILURE;
 }

 switch (*attr.msg_type) {
 case WPS_M1:
  if (wps_validate_m1(msg) < 0)
   return WPS_FAILURE;
# 2965 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
  ret = wps_process_m1(wps, &attr);
  break;
 case WPS_M3:
  if (wps_validate_m3(msg) < 0)
   return WPS_FAILURE;
  ret = wps_process_m3(wps, msg, &attr);
  if (ret == WPS_FAILURE || wps->state == SEND_WSC_NACK)
   wps_fail_event(wps->wps, WPS_M3, wps->config_error,
           wps->error_indication);
  break;
 case WPS_M5:
  if (wps_validate_m5(msg) < 0)
   return WPS_FAILURE;
  ret = wps_process_m5(wps, msg, &attr);
  if (ret == WPS_FAILURE || wps->state == SEND_WSC_NACK)
   wps_fail_event(wps->wps, WPS_M5, wps->config_error,
           wps->error_indication);
  break;
 case WPS_M7:
  if (wps_validate_m7(msg) < 0)
   return WPS_FAILURE;
  ret = wps_process_m7(wps, msg, &attr);
  if (ret == WPS_FAILURE || wps->state == SEND_WSC_NACK)
   wps_fail_event(wps->wps, WPS_M7, wps->config_error,
           wps->error_indication);
  break;
 default:
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Unsupported Message Type %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", *attr.msg_type); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Unsupported Message Type %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", *attr.msg_type); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Unsupported Message Type %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", *attr.msg_type); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Unsupported Message Type %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", *attr.msg_type); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Unsupported Message Type %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", *attr.msg_type); } } while(0); } while(0)
                     ;
  return WPS_FAILURE;
 }

 if (ret == WPS_CONTINUE) {


  wpabuf_free(wps->last_msg);
  wps->last_msg = wpabuf_dup(msg);
 }

 return ret;
}


static enum wps_process_res wps_process_wsc_ack(struct wps_data *wps,
      const struct wpabuf *msg)
{
 struct wps_parse_attr attr;

 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Received WSC_ACK" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Received WSC_ACK" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Received WSC_ACK" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Received WSC_ACK" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Received WSC_ACK" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);

 if (wps_parse_msg(msg, &attr) < 0)
  return WPS_FAILURE;

 if (attr.msg_type == 
# 3018 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
                     ((void *)0)
# 3018 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                         ) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: No Message Type attribute" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: No Message Type attribute" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: No Message Type attribute" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: No Message Type attribute" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: No Message Type attribute" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
  return WPS_FAILURE;
 }

 if (*attr.msg_type != WPS_WSC_ACK) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Invalid Message Type %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", *attr.msg_type); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Invalid Message Type %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", *attr.msg_type); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Invalid Message Type %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", *attr.msg_type); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Invalid Message Type %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", *attr.msg_type); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Invalid Message Type %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", *attr.msg_type); } } while(0); } while(0)
                     ;
  return WPS_FAILURE;
 }
# 3040 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
 if (attr.registrar_nonce == 
# 3040 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
                            ((void *)0) 
# 3040 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                                 ||
     memcmp((wps->nonce_r), (attr.registrar_nonce), (16)) != 0)
 {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Mismatch in registrar nonce" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Mismatch in registrar nonce" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Mismatch in registrar nonce" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Mismatch in registrar nonce" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Mismatch in registrar nonce" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
  return WPS_FAILURE;
 }

 if (attr.enrollee_nonce == 
# 3047 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
                           ((void *)0) 
# 3047 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                                ||
     memcmp((wps->nonce_e), (attr.enrollee_nonce), (16)) != 0) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Mismatch in enrollee nonce" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Mismatch in enrollee nonce" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Mismatch in enrollee nonce" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Mismatch in enrollee nonce" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Mismatch in enrollee nonce" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
  return WPS_FAILURE;
 }

 if (wps->state == RECV_M2D_ACK) {
# 3067 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: No more registrars available - " "terminate negotiation" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: No more registrars available - " "terminate negotiation" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: No more registrars available - " "terminate negotiation" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: No more registrars available - " "terminate negotiation" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: No more registrars available - " "terminate negotiation" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                              ;
 }

 return WPS_FAILURE;
}


static enum wps_process_res wps_process_wsc_nack(struct wps_data *wps,
       const struct wpabuf *msg)
{
 struct wps_parse_attr attr;
 int old_state;
 u16 config_error;

 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Received WSC_NACK" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Received WSC_NACK" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Received WSC_NACK" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Received WSC_NACK" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Received WSC_NACK" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);

 old_state = wps->state;
 wps->state = SEND_WSC_NACK;

 if (wps_parse_msg(msg, &attr) < 0)
  return WPS_FAILURE;

 if (attr.msg_type == 
# 3090 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
                     ((void *)0)
# 3090 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                         ) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: No Message Type attribute" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: No Message Type attribute" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: No Message Type attribute" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: No Message Type attribute" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: No Message Type attribute" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
  return WPS_FAILURE;
 }

 if (*attr.msg_type != WPS_WSC_NACK) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Invalid Message Type %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", *attr.msg_type); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Invalid Message Type %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", *attr.msg_type); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Invalid Message Type %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", *attr.msg_type); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Invalid Message Type %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", *attr.msg_type); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Invalid Message Type %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", *attr.msg_type); } } while(0); } while(0)
                     ;
  return WPS_FAILURE;
 }
# 3109 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
 if (attr.registrar_nonce == 
# 3109 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
                            ((void *)0) 
# 3109 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                                 ||
     memcmp((wps->nonce_r), (attr.registrar_nonce), (16)) != 0)
 {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Mismatch in registrar nonce" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Mismatch in registrar nonce" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Mismatch in registrar nonce" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Mismatch in registrar nonce" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Mismatch in registrar nonce" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
  return WPS_FAILURE;
 }

 if (attr.enrollee_nonce == 
# 3116 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
                           ((void *)0) 
# 3116 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                                ||
     memcmp((wps->nonce_e), (attr.enrollee_nonce), (16)) != 0) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Mismatch in enrollee nonce" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Mismatch in enrollee nonce" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Mismatch in enrollee nonce" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Mismatch in enrollee nonce" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Mismatch in enrollee nonce" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
  return WPS_FAILURE;
 }

 if (attr.config_error == 
# 3122 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
                         ((void *)0)
# 3122 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                             ) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: No Configuration Error attribute " "in WSC_NACK" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: No Configuration Error attribute " "in WSC_NACK" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: No Configuration Error attribute " "in WSC_NACK" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: No Configuration Error attribute " "in WSC_NACK" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: No Configuration Error attribute " "in WSC_NACK" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                    ;
  return WPS_FAILURE;
 }

 config_error = ((u16) (((attr.config_error)[0] << 8) | (attr.config_error)[1]));
 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Enrollee terminated negotiation with " "Configuration Error %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", config_error); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Enrollee terminated negotiation with " "Configuration Error %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", config_error); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Enrollee terminated negotiation with " "Configuration Error %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", config_error); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Enrollee terminated negotiation with " "Configuration Error %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", config_error); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Enrollee terminated negotiation with " "Configuration Error %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", config_error); } } while(0); } while(0)
                                            ;

 switch (old_state) {
 case RECV_M3:
  wps_fail_event(wps->wps, WPS_M2, config_error,
          wps->error_indication);
  break;
 case RECV_M5:
  wps_fail_event(wps->wps, WPS_M4, config_error,
          wps->error_indication);
  break;
 case RECV_M7:
  wps_fail_event(wps->wps, WPS_M6, config_error,
          wps->error_indication);
  break;
 case RECV_DONE:
  wps_fail_event(wps->wps, WPS_M8, config_error,
          wps->error_indication);
  break;
 default:
  break;
 }

 return WPS_FAILURE;
}


static enum wps_process_res wps_process_wsc_done(struct wps_data *wps,
       const struct wpabuf *msg)
{
 struct wps_parse_attr attr;

 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Received WSC_Done" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Received WSC_Done" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Received WSC_Done" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Received WSC_Done" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Received WSC_Done" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);



 if (wps->state != RECV_DONE && (!wps->ext_reg)){
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Unexpected state (%d) for " "receiving WSC_Done" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->state); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Unexpected state (%d) for " "receiving WSC_Done" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->state); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Unexpected state (%d) for " "receiving WSC_Done" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->state); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Unexpected state (%d) for " "receiving WSC_Done" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->state); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Unexpected state (%d) for " "receiving WSC_Done" "\033[0m" "\n", esp_log_timestamp(), "wpa", wps->state); } } while(0); } while(0)
                                       ;
  return WPS_FAILURE;
 }

 if (wps_parse_msg(msg, &attr) < 0)
  return WPS_FAILURE;

 if (attr.msg_type == 
# 3175 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
                     ((void *)0)
# 3175 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                         ) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: No Message Type attribute" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: No Message Type attribute" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: No Message Type attribute" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: No Message Type attribute" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: No Message Type attribute" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
  return WPS_FAILURE;
 }

 if (*attr.msg_type != WPS_WSC_DONE) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Invalid Message Type %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", *attr.msg_type); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Invalid Message Type %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", *attr.msg_type); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Invalid Message Type %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", *attr.msg_type); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Invalid Message Type %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", *attr.msg_type); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Invalid Message Type %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", *attr.msg_type); } } while(0); } while(0)
                     ;
  return WPS_FAILURE;
 }
# 3196 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
 if (attr.registrar_nonce == 
# 3196 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
                            ((void *)0) 
# 3196 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                                 ||
     memcmp((wps->nonce_r), (attr.registrar_nonce), (16)) != 0)
 {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Mismatch in registrar nonce" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Mismatch in registrar nonce" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Mismatch in registrar nonce" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Mismatch in registrar nonce" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Mismatch in registrar nonce" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
  return WPS_FAILURE;
 }

 if (attr.enrollee_nonce == 
# 3203 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
                           ((void *)0) 
# 3203 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                                ||
     memcmp((wps->nonce_e), (attr.enrollee_nonce), (16)) != 0) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Mismatch in enrollee nonce" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Mismatch in enrollee nonce" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Mismatch in enrollee nonce" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Mismatch in enrollee nonce" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Mismatch in enrollee nonce" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
  return WPS_FAILURE;
 }

 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Negotiation completed successfully" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Negotiation completed successfully" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Negotiation completed successfully" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Negotiation completed successfully" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Negotiation completed successfully" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
 wps_device_store(wps->wps->registrar, &wps->peer_dev,
    wps->uuid_e);

 if (wps->wps->wps_state == WPS_STATE_NOT_CONFIGURED && wps->new_psk &&
     wps->wps->ap && !wps->wps->registrar->disable_auto_conf) {
  struct wps_credential cred;

  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Moving to Configured state based " "on first Enrollee connection" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Moving to Configured state based " "on first Enrollee connection" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Moving to Configured state based " "on first Enrollee connection" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Moving to Configured state based " "on first Enrollee connection" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Moving to Configured state based " "on first Enrollee connection" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                                     ;

  memset(&cred, 0, sizeof(cred));
  memcpy((cred.ssid), (wps->wps->ssid), (wps->wps->ssid_len));
  cred.ssid_len = wps->wps->ssid_len;
  cred.auth_type = 0x0002 | 0x0020;
  cred.encr_type = 0x0004 | 0x0008;
  memcpy((cred.key), (wps->new_psk), (wps->new_psk_len));
  cred.key_len = wps->new_psk_len;

  wps->wps->wps_state = WPS_STATE_CONFIGURED;
  wpa_hexdump_ascii_key(ESP_LOG_DEBUG,
          "WPS: Generated random passphrase",
          wps->new_psk, wps->new_psk_len);
  if (wps->wps->cred_cb)
   wps->wps->cred_cb(wps->wps->cb_ctx, &cred);

  free((wps->new_psk));
  wps->new_psk = 
# 3236 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
                ((void *)0)
# 3236 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                    ;
 }

 if (!wps->wps->ap && !wps->er)
  wps_sta_cred_cb(wps);

 if (wps->new_psk) {
  if (wps_cb_new_psk(wps->wps->registrar, wps->mac_addr_e,
       wps->new_psk, wps->new_psk_len)) {
   do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Failed to configure the " "new PSK" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Failed to configure the " "new PSK" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Failed to configure the " "new PSK" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Failed to configure the " "new PSK" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Failed to configure the " "new PSK" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                 ;
  }
  free((wps->new_psk));
  wps->new_psk = 
# 3249 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
                ((void *)0)
# 3249 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
                    ;
 }

 wps_cb_reg_success(wps->wps->registrar, wps->mac_addr_e, wps->uuid_e,
      wps->dev_password, wps->dev_password_len);

 if (wps->pbc) {
  wps_registrar_remove_pbc_session(wps->wps->registrar,
       wps->uuid_e,
       wps->p2p_dev_addr);
  wps_registrar_pbc_completed(wps->wps->registrar);
  os_get_time(&wps->wps->registrar->pbc_ignore_start);
  memcpy((wps->wps->registrar->pbc_ignore_uuid), (wps->uuid_e), (16))
                  ;
 } else {

  wps_registrar_pin_completed(wps->wps->registrar);

 }



 wps_success_event(wps->wps);

 return WPS_DONE;
}


enum wps_process_res wps_registrar_process_msg(struct wps_data *wps,
            enum wsc_op_code op_code,
            const struct wpabuf *msg)
{
 enum wps_process_res ret;

 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Processing received message (len=%lu " "op_code=%d)" "\033[0m" "\n", esp_log_timestamp(), "wpa", (unsigned long) wpabuf_len(msg), op_code); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Processing received message (len=%lu " "op_code=%d)" "\033[0m" "\n", esp_log_timestamp(), "wpa", (unsigned long) wpabuf_len(msg), op_code); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Processing received message (len=%lu " "op_code=%d)" "\033[0m" "\n", esp_log_timestamp(), "wpa", (unsigned long) wpabuf_len(msg), op_code); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Processing received message (len=%lu " "op_code=%d)" "\033[0m" "\n", esp_log_timestamp(), "wpa", (unsigned long) wpabuf_len(msg), op_code); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Processing received message (len=%lu " "op_code=%d)" "\033[0m" "\n", esp_log_timestamp(), "wpa", (unsigned long) wpabuf_len(msg), op_code); } } while(0); } while(0)

                                              ;
# 3321 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
 switch (op_code) {
 case WSC_MSG:
  return wps_process_wsc_msg(wps, msg);
 case WSC_ACK:
  if (wps_validate_wsc_ack(msg) < 0)
   return WPS_FAILURE;
  return wps_process_wsc_ack(wps, msg);
 case WSC_NACK:
  if (wps_validate_wsc_nack(msg) < 0)
   return WPS_FAILURE;
  return wps_process_wsc_nack(wps, msg);
 case WSC_Done:
  if (wps_validate_wsc_done(msg) < 0)
   return WPS_FAILURE;
  ret = wps_process_wsc_done(wps, msg);
  if (ret == WPS_FAILURE) {
   wps->state = SEND_WSC_NACK;
   wps_fail_event(wps->wps, WPS_WSC_DONE,
           wps->config_error,
           wps->error_indication);
  }
  return ret;
 default:
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Unsupported op_code %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", op_code); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Unsupported op_code %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", op_code); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Unsupported op_code %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", op_code); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Unsupported op_code %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", op_code); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Unsupported op_code %d" "\033[0m" "\n", esp_log_timestamp(), "wpa", op_code); } } while(0); } while(0);
  return WPS_FAILURE;
 }
}


int wps_registrar_update_ie(struct wps_registrar *reg)
{
 return wps_set_ie(reg);
}
# 3405 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
static void wps_registrar_sel_reg_union(struct wps_registrar *reg)
{
# 3429 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
}
# 3439 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
void wps_registrar_selected_registrar_changed(struct wps_registrar *reg)
{
 do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Selected registrar information changed" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Selected registrar information changed" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Selected registrar information changed" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Selected registrar information changed" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Selected registrar information changed" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);

 reg->sel_reg_union = reg->selected_registrar;
 reg->sel_reg_dev_password_id_override = -1;
 reg->sel_reg_config_methods_override = -1;
 memcpy((reg->authorized_macs_union), (reg->authorized_macs), (5 * 6))
                                       ;
 wpa_hexdump(ESP_LOG_DEBUG, "WPS: Authorized MACs union (start with own)",
      (u8 *) reg->authorized_macs_union,
      sizeof(reg->authorized_macs_union));
 if (reg->selected_registrar) {
  u16 methods;

  methods = reg->wps->config_methods & ~0x0080;

  methods &= ~(0x0280 |
        0x0480);

  if (reg->pbc) {
   reg->sel_reg_dev_password_id_override =
    DEV_PW_PUSHBUTTON;
   wps_set_pushbutton(&methods, reg->wps->config_methods);
  }
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Internal Registrar selected " "(pbc=%d)" "\033[0m" "\n", esp_log_timestamp(), "wpa", reg->pbc); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Internal Registrar selected " "(pbc=%d)" "\033[0m" "\n", esp_log_timestamp(), "wpa", reg->pbc); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Internal Registrar selected " "(pbc=%d)" "\033[0m" "\n", esp_log_timestamp(), "wpa", reg->pbc); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Internal Registrar selected " "(pbc=%d)" "\033[0m" "\n", esp_log_timestamp(), "wpa", reg->pbc); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Internal Registrar selected " "(pbc=%d)" "\033[0m" "\n", esp_log_timestamp(), "wpa", reg->pbc); } } while(0); } while(0)
                           ;
  reg->sel_reg_config_methods_override = methods;
 } else {
        do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Internal Registrar not selected" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Internal Registrar not selected" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Internal Registrar not selected" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Internal Registrar not selected" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Internal Registrar not selected" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0);
     return;
 }

 wps_registrar_sel_reg_union(reg);

 wps_set_ie(reg);
 wps_cb_set_sel_reg(reg);
}


int wps_registrar_get_info(struct wps_registrar *reg, const u8 *addr,
      char *buf, size_t buflen)
{
 struct wps_registrar_device *d;
 int len = 0, ret;
 char uuid[40];
 char devtype[21];

 d = wps_device_get(reg, addr);
 if (d == 
# 3488 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c" 3 4
         ((void *)0)
# 3488 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/wps_registrar.c"
             )
  return 0;
 if (uuid_bin2str(d->uuid, uuid, sizeof(uuid)))
  return 0;

 ret = snprintf(buf + len, buflen - len,
     "wpsUuid=%s\n"
     "wpsPrimaryDeviceType=%s\n"
     "wpsDeviceName=%s\n"
     "wpsManufacturer=%s\n"
     "wpsModelName=%s\n"
     "wpsModelNumber=%s\n"
     "wpsSerialNumber=%s\n",
     uuid,
     wps_dev_type_bin2str(d->dev.pri_dev_type, devtype,
            sizeof(devtype)),
     d->dev.device_name ? d->dev.device_name : "",
     d->dev.manufacturer ? d->dev.manufacturer : "",
     d->dev.model_name ? d->dev.model_name : "",
     d->dev.model_number ? d->dev.model_number : "",
     d->dev.serial_number ? d->dev.serial_number : "");
 if (ret < 0 || (size_t) ret >= buflen - len)
  return len;
 len += ret;

 return len;
}


int wps_registrar_config_ap(struct wps_registrar *reg,
       struct wps_credential *cred)
{

 if (!(cred->encr_type & (0x0001 | 0x0004 |
     0x0008))) {
  if (cred->encr_type & 0x0002) {
   do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Reject new AP settings " "due to WEP configuration" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Reject new AP settings " "due to WEP configuration" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Reject new AP settings " "due to WEP configuration" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Reject new AP settings " "due to WEP configuration" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Reject new AP settings " "due to WEP configuration" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                                  ;
   return -1;
  }

  do { if ( 3 >= ESP_LOG_INFO ) do { if (ESP_LOG_INFO==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Reject new AP settings due to " "invalid encr_type 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", cred->encr_type); } else if (ESP_LOG_INFO==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Reject new AP settings due to " "invalid encr_type 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", cred->encr_type); } else if (ESP_LOG_INFO==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Reject new AP settings due to " "invalid encr_type 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", cred->encr_type); } else if (ESP_LOG_INFO==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Reject new AP settings due to " "invalid encr_type 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", cred->encr_type); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Reject new AP settings due to " "invalid encr_type 0x%x" "\033[0m" "\n", esp_log_timestamp(), "wpa", cred->encr_type); } } while(0); } while(0)
                                                ;
  return -1;
 }

 if ((cred->encr_type & (0x0004 | 0x0008)) ==
     0x0004) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Upgrade encr_type TKIP -> " "TKIP+AES" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Upgrade encr_type TKIP -> " "TKIP+AES" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Upgrade encr_type TKIP -> " "TKIP+AES" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Upgrade encr_type TKIP -> " "TKIP+AES" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Upgrade encr_type TKIP -> " "TKIP+AES" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                 ;
  cred->encr_type |= 0x0008;
 }

 if ((cred->auth_type & (0x0002 | 0x0020)) ==
     0x0002) {
  do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, "wpa", "\033[0;" "31" "m" "E" " (%d) %s: " "WPS: Upgrade auth_type WPAPSK -> " "WPAPSK+WPA2PSK" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, "wpa", "\033[0;" "33" "m" "W" " (%d) %s: " "WPS: Upgrade auth_type WPAPSK -> " "WPAPSK+WPA2PSK" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, "wpa", "D" " (%d) %s: " "WPS: Upgrade auth_type WPAPSK -> " "WPAPSK+WPA2PSK" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, "wpa", "V" " (%d) %s: " "WPS: Upgrade auth_type WPAPSK -> " "WPAPSK+WPA2PSK" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } else { esp_log_write(ESP_LOG_INFO, "wpa", "\033[0;" "32" "m" "I" " (%d) %s: " "WPS: Upgrade auth_type WPAPSK -> " "WPAPSK+WPA2PSK" "\033[0m" "\n", esp_log_timestamp(), "wpa"); } } while(0); } while(0)
                       ;
  cred->auth_type |= 0x0020;
 }


 if (reg->wps->cred_cb)
  return reg->wps->cred_cb(reg->wps->cb_ctx, cred);

 return -1;
}
