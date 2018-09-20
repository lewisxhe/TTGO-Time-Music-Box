# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
# 1 "D:\\ESP32\\esp-idf-v3.1-rc1\\ESP32_PIC_A2DP\\build\\driver//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
# 87 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
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


# 88 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/sdio_slave.h" 1
# 18 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/sdio_slave.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/FreeRTOS.h" 1
# 76 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/FreeRTOS.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 77 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/FreeRTOS.h" 2
# 92 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/FreeRTOS.h"
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
# 93 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/FreeRTOS.h" 2






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




# 120 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/FreeRTOSConfig.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h" 1
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdbool.h" 1 3 4
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/soc.h" 1
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/soc.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_assert.h" 1
# 17 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_assert.h"
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
       
# 43 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_timer.h"
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

# 44 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_timer.h" 2
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
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/sdio_slave.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h" 1
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/sdio_slave.h" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/queue.h" 1
# 22 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/sdio_slave.h" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/host_reg.h" 1
# 24 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/sdio_slave.h" 2







typedef void(*sdio_event_cb_t)(uint8_t event);


typedef enum {
    SDIO_SLAVE_HOSTINT_SEND_NEW_PACKET = ((1UL << (23))),
    SDIO_SLAVE_HOSTINT_RECV_OVF = ((1UL << (17))),
    SDIO_SLAVE_HOSTINT_SEND_UDF = ((1UL << (16))),
    SDIO_SLAVE_HOSTINT_BIT7 = ((1UL << (7))),
    SDIO_SLAVE_HOSTINT_BIT6 = ((1UL << (6))),
    SDIO_SLAVE_HOSTINT_BIT5 = ((1UL << (5))),
    SDIO_SLAVE_HOSTINT_BIT4 = ((1UL << (4))),
    SDIO_SLAVE_HOSTINT_BIT3 = ((1UL << (3))),
    SDIO_SLAVE_HOSTINT_BIT2 = ((1UL << (2))),
    SDIO_SLAVE_HOSTINT_BIT1 = ((1UL << (1))),
    SDIO_SLAVE_HOSTINT_BIT0 = ((1UL << (0))),
} sdio_slave_hostint_t;


typedef enum {
    SDIO_SLAVE_TIMING_PSEND_PSAMPLE = 0,


    SDIO_SLAVE_TIMING_NSEND_PSAMPLE ,
    SDIO_SLAVE_TIMING_PSEND_NSAMPLE,
    SDIO_SLAVE_TIMING_NSEND_NSAMPLE,
} sdio_slave_timing_t;


typedef enum {
    SDIO_SLAVE_SEND_STREAM = 0,
    SDIO_SLAVE_SEND_PACKET = 1,
} sdio_slave_sending_mode_t;


typedef struct {
    sdio_slave_timing_t timing;
    sdio_slave_sending_mode_t sending_mode;
    int send_queue_size;
    size_t recv_buffer_size;





    sdio_event_cb_t event_cb;
} sdio_slave_config_t;




typedef void *sdio_slave_buf_handle_t;
# 93 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/sdio_slave.h"
esp_err_t sdio_slave_initialize(sdio_slave_config_t *config);



void sdio_slave_deinit();
# 108 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/sdio_slave.h"
esp_err_t sdio_slave_start();





void sdio_slave_stop();





esp_err_t sdio_slave_reset();
# 134 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/sdio_slave.h"
sdio_slave_buf_handle_t sdio_slave_recv_register_buf(uint8_t *start);







esp_err_t sdio_slave_recv_unregister_buf(sdio_slave_buf_handle_t handle);
# 154 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/sdio_slave.h"
esp_err_t sdio_slave_recv_load_buf(sdio_slave_buf_handle_t handle);
# 171 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/sdio_slave.h"
esp_err_t sdio_slave_recv(sdio_slave_buf_handle_t* handle_ret, uint8_t **start_o, size_t *len_o, TickType_t wait);
# 180 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/sdio_slave.h"
uint8_t* sdio_slave_recv_get_buf( sdio_slave_buf_handle_t handle, size_t *len_o);
# 199 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/sdio_slave.h"
esp_err_t sdio_slave_send_queue(uint8_t* addr, size_t len, void* arg, TickType_t wait);







esp_err_t sdio_slave_send_get_finished(void** out_arg, TickType_t wait);
# 219 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/sdio_slave.h"
esp_err_t sdio_slave_transmit(uint8_t* addr, size_t len);
# 232 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/sdio_slave.h"
uint8_t sdio_slave_read_reg(int pos);
# 243 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/sdio_slave.h"
esp_err_t sdio_slave_write_reg(int pos, uint8_t reg);





sdio_slave_hostint_t sdio_slave_get_host_intena();





void sdio_slave_set_host_intena(sdio_slave_hostint_t ena);
# 265 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/sdio_slave.h"
esp_err_t sdio_slave_send_host_int( uint8_t pos );





void sdio_slave_clear_host_int(uint8_t mask);
# 283 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/sdio_slave.h"
esp_err_t sdio_slave_wait_int(int pos, TickType_t wait);
# 89 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/slc_struct.h" 1
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/slc_struct.h"
typedef volatile struct {
    union {
        struct {
            uint32_t slc0_tx_rst: 1;
            uint32_t slc0_rx_rst: 1;
            uint32_t ahbm_fifo_rst: 1;
            uint32_t ahbm_rst: 1;
            uint32_t slc0_tx_loop_test: 1;
            uint32_t slc0_rx_loop_test: 1;
            uint32_t slc0_rx_auto_wrback: 1;
            uint32_t slc0_rx_no_restart_clr: 1;
            uint32_t slc0_rxdscr_burst_en: 1;
            uint32_t slc0_rxdata_burst_en: 1;
            uint32_t slc0_rxlink_auto_ret: 1;
            uint32_t slc0_txlink_auto_ret: 1;
            uint32_t slc0_txdscr_burst_en: 1;
            uint32_t slc0_txdata_burst_en: 1;
            uint32_t slc0_token_auto_clr: 1;
            uint32_t slc0_token_sel: 1;
            uint32_t slc1_tx_rst: 1;
            uint32_t slc1_rx_rst: 1;
            uint32_t slc0_wr_retry_mask_en: 1;
            uint32_t slc1_wr_retry_mask_en: 1;
            uint32_t slc1_tx_loop_test: 1;
            uint32_t slc1_rx_loop_test: 1;
            uint32_t slc1_rx_auto_wrback: 1;
            uint32_t slc1_rx_no_restart_clr: 1;
            uint32_t slc1_rxdscr_burst_en: 1;
            uint32_t slc1_rxdata_burst_en: 1;
            uint32_t slc1_rxlink_auto_ret: 1;
            uint32_t slc1_txlink_auto_ret: 1;
            uint32_t slc1_txdscr_burst_en: 1;
            uint32_t slc1_txdata_burst_en: 1;
            uint32_t slc1_token_auto_clr: 1;
            uint32_t slc1_token_sel: 1;
        };
        uint32_t val;
    } conf0;
    union {
        struct {
            uint32_t frhost_bit0: 1;
            uint32_t frhost_bit1: 1;
            uint32_t frhost_bit2: 1;
            uint32_t frhost_bit3: 1;
            uint32_t frhost_bit4: 1;
            uint32_t frhost_bit5: 1;
            uint32_t frhost_bit6: 1;
            uint32_t frhost_bit7: 1;
            uint32_t rx_start: 1;
            uint32_t tx_start: 1;
            uint32_t rx_udf: 1;
            uint32_t tx_ovf: 1;
            uint32_t token0_1to0: 1;
            uint32_t token1_1to0: 1;
            uint32_t tx_done: 1;
            uint32_t tx_suc_eof: 1;
            uint32_t rx_done: 1;
            uint32_t rx_eof: 1;
            uint32_t tohost: 1;
            uint32_t tx_dscr_err: 1;
            uint32_t rx_dscr_err: 1;
            uint32_t tx_dscr_empty: 1;
            uint32_t host_rd_ack: 1;
            uint32_t wr_retry_done: 1;
            uint32_t tx_err_eof: 1;
            uint32_t cmd_dtc: 1;
            uint32_t rx_quick_eof: 1;
            uint32_t reserved27: 5;
        };
        uint32_t val;
    } slc0_int_raw;
    union {
        struct {
            uint32_t frhost_bit0: 1;
            uint32_t frhost_bit1: 1;
            uint32_t frhost_bit2: 1;
            uint32_t frhost_bit3: 1;
            uint32_t frhost_bit4: 1;
            uint32_t frhost_bit5: 1;
            uint32_t frhost_bit6: 1;
            uint32_t frhost_bit7: 1;
            uint32_t rx_start: 1;
            uint32_t tx_start: 1;
            uint32_t rx_udf: 1;
            uint32_t tx_ovf: 1;
            uint32_t token0_1to0: 1;
            uint32_t token1_1to0: 1;
            uint32_t tx_done: 1;
            uint32_t tx_suc_eof: 1;
            uint32_t rx_done: 1;
            uint32_t rx_eof: 1;
            uint32_t tohost: 1;
            uint32_t tx_dscr_err: 1;
            uint32_t rx_dscr_err: 1;
            uint32_t tx_dscr_empty: 1;
            uint32_t host_rd_ack: 1;
            uint32_t wr_retry_done: 1;
            uint32_t tx_err_eof: 1;
            uint32_t cmd_dtc: 1;
            uint32_t rx_quick_eof: 1;
            uint32_t reserved27: 5;
        };
        uint32_t val;
    } slc0_int_st;
    union {
        struct {
            uint32_t frhost_bit0: 1;
            uint32_t frhost_bit1: 1;
            uint32_t frhost_bit2: 1;
            uint32_t frhost_bit3: 1;
            uint32_t frhost_bit4: 1;
            uint32_t frhost_bit5: 1;
            uint32_t frhost_bit6: 1;
            uint32_t frhost_bit7: 1;
            uint32_t rx_start: 1;
            uint32_t tx_start: 1;
            uint32_t rx_udf: 1;
            uint32_t tx_ovf: 1;
            uint32_t token0_1to0: 1;
            uint32_t token1_1to0: 1;
            uint32_t tx_done: 1;
            uint32_t tx_suc_eof: 1;
            uint32_t rx_done: 1;
            uint32_t rx_eof: 1;
            uint32_t tohost: 1;
            uint32_t tx_dscr_err: 1;
            uint32_t rx_dscr_err: 1;
            uint32_t tx_dscr_empty: 1;
            uint32_t host_rd_ack: 1;
            uint32_t wr_retry_done: 1;
            uint32_t tx_err_eof: 1;
            uint32_t cmd_dtc: 1;
            uint32_t rx_quick_eof: 1;
            uint32_t reserved27: 5;
        };
        uint32_t val;
    } slc0_int_ena;
    union {
        struct {
            uint32_t frhost_bit0: 1;
            uint32_t frhost_bit1: 1;
            uint32_t frhost_bit2: 1;
            uint32_t frhost_bit3: 1;
            uint32_t frhost_bit4: 1;
            uint32_t frhost_bit5: 1;
            uint32_t frhost_bit6: 1;
            uint32_t frhost_bit7: 1;
            uint32_t rx_start: 1;
            uint32_t tx_start: 1;
            uint32_t rx_udf: 1;
            uint32_t tx_ovf: 1;
            uint32_t token0_1to0: 1;
            uint32_t token1_1to0: 1;
            uint32_t tx_done: 1;
            uint32_t tx_suc_eof: 1;
            uint32_t rx_done: 1;
            uint32_t rx_eof: 1;
            uint32_t tohost: 1;
            uint32_t tx_dscr_err: 1;
            uint32_t rx_dscr_err: 1;
            uint32_t tx_dscr_empty: 1;
            uint32_t host_rd_ack: 1;
            uint32_t wr_retry_done: 1;
            uint32_t tx_err_eof: 1;
            uint32_t cmd_dtc: 1;
            uint32_t rx_quick_eof: 1;
            uint32_t reserved27: 5;
        };
        uint32_t val;
    } slc0_int_clr;
    union {
        struct {
            uint32_t frhost_bit8: 1;
            uint32_t frhost_bit9: 1;
            uint32_t frhost_bit10: 1;
            uint32_t frhost_bit11: 1;
            uint32_t frhost_bit12: 1;
            uint32_t frhost_bit13: 1;
            uint32_t frhost_bit14: 1;
            uint32_t frhost_bit15: 1;
            uint32_t rx_start: 1;
            uint32_t tx_start: 1;
            uint32_t rx_udf: 1;
            uint32_t tx_ovf: 1;
            uint32_t token0_1to0: 1;
            uint32_t token1_1to0: 1;
            uint32_t tx_done: 1;
            uint32_t tx_suc_eof: 1;
            uint32_t rx_done: 1;
            uint32_t rx_eof: 1;
            uint32_t tohost: 1;
            uint32_t tx_dscr_err: 1;
            uint32_t rx_dscr_err: 1;
            uint32_t tx_dscr_empty: 1;
            uint32_t host_rd_ack: 1;
            uint32_t wr_retry_done: 1;
            uint32_t tx_err_eof: 1;
            uint32_t reserved25: 7;
        };
        uint32_t val;
    } slc1_int_raw;
    union {
        struct {
            uint32_t frhost_bit8: 1;
            uint32_t frhost_bit9: 1;
            uint32_t frhost_bit10: 1;
            uint32_t frhost_bit11: 1;
            uint32_t frhost_bit12: 1;
            uint32_t frhost_bit13: 1;
            uint32_t frhost_bit14: 1;
            uint32_t frhost_bit15: 1;
            uint32_t rx_start: 1;
            uint32_t tx_start: 1;
            uint32_t rx_udf: 1;
            uint32_t tx_ovf: 1;
            uint32_t token0_1to0: 1;
            uint32_t token1_1to0: 1;
            uint32_t tx_done: 1;
            uint32_t tx_suc_eof: 1;
            uint32_t rx_done: 1;
            uint32_t rx_eof: 1;
            uint32_t tohost: 1;
            uint32_t tx_dscr_err: 1;
            uint32_t rx_dscr_err: 1;
            uint32_t tx_dscr_empty: 1;
            uint32_t host_rd_ack: 1;
            uint32_t wr_retry_done: 1;
            uint32_t tx_err_eof: 1;
            uint32_t reserved25: 7;
        };
        uint32_t val;
    } slc1_int_st;
    union {
        struct {
            uint32_t frhost_bit8: 1;
            uint32_t frhost_bit9: 1;
            uint32_t frhost_bit10: 1;
            uint32_t frhost_bit11: 1;
            uint32_t frhost_bit12: 1;
            uint32_t frhost_bit13: 1;
            uint32_t frhost_bit14: 1;
            uint32_t frhost_bit15: 1;
            uint32_t rx_start: 1;
            uint32_t tx_start: 1;
            uint32_t rx_udf: 1;
            uint32_t tx_ovf: 1;
            uint32_t token0_1to0: 1;
            uint32_t token1_1to0: 1;
            uint32_t tx_done: 1;
            uint32_t tx_suc_eof: 1;
            uint32_t rx_done: 1;
            uint32_t rx_eof: 1;
            uint32_t tohost: 1;
            uint32_t tx_dscr_err: 1;
            uint32_t rx_dscr_err: 1;
            uint32_t tx_dscr_empty: 1;
            uint32_t host_rd_ack: 1;
            uint32_t wr_retry_done: 1;
            uint32_t tx_err_eof: 1;
            uint32_t reserved25: 7;
        };
        uint32_t val;
    } slc1_int_ena;
    union {
        struct {
            uint32_t frhost_bit8: 1;
            uint32_t frhost_bit9: 1;
            uint32_t frhost_bit10: 1;
            uint32_t frhost_bit11: 1;
            uint32_t frhost_bit12: 1;
            uint32_t frhost_bit13: 1;
            uint32_t frhost_bit14: 1;
            uint32_t frhost_bit15: 1;
            uint32_t rx_start: 1;
            uint32_t tx_start: 1;
            uint32_t rx_udf: 1;
            uint32_t tx_ovf: 1;
            uint32_t token0_1to0: 1;
            uint32_t token1_1to0: 1;
            uint32_t tx_done: 1;
            uint32_t tx_suc_eof: 1;
            uint32_t rx_done: 1;
            uint32_t rx_eof: 1;
            uint32_t tohost: 1;
            uint32_t tx_dscr_err: 1;
            uint32_t rx_dscr_err: 1;
            uint32_t tx_dscr_empty: 1;
            uint32_t host_rd_ack: 1;
            uint32_t wr_retry_done: 1;
            uint32_t tx_err_eof: 1;
            uint32_t reserved25: 7;
        };
        uint32_t val;
    } slc1_int_clr;
    union {
        struct {
            uint32_t slc0_rx_full: 1;
            uint32_t slc0_rx_empty: 1;
            uint32_t reserved2: 14;
            uint32_t slc1_rx_full: 1;
            uint32_t slc1_rx_empty: 1;
            uint32_t reserved18:14;
        };
        uint32_t val;
    } rx_status;
    union {
        struct {
            uint32_t rxfifo_wdata: 9;
            uint32_t reserved9: 7;
            uint32_t rxfifo_push: 1;
            uint32_t reserved17: 15;
        };
        uint32_t val;
    } slc0_rxfifo_push;
    union {
        struct {
            uint32_t rxfifo_wdata: 9;
            uint32_t reserved9: 7;
            uint32_t rxfifo_push: 1;
            uint32_t reserved17: 15;
        };
        uint32_t val;
    } slc1_rxfifo_push;
    union {
        struct {
            uint32_t slc0_tx_full: 1;
            uint32_t slc0_tx_empty: 1;
            uint32_t reserved2: 14;
            uint32_t slc1_tx_full: 1;
            uint32_t slc1_tx_empty: 1;
            uint32_t reserved18:14;
        };
        uint32_t val;
    } tx_status;
    union {
        struct {
            uint32_t txfifo_rdata: 11;
            uint32_t reserved11: 5;
            uint32_t txfifo_pop: 1;
            uint32_t reserved17: 15;
        };
        uint32_t val;
    } slc0_txfifo_pop;
    union {
        struct {
            uint32_t txfifo_rdata: 11;
            uint32_t reserved11: 5;
            uint32_t txfifo_pop: 1;
            uint32_t reserved17: 15;
        };
        uint32_t val;
    } slc1_txfifo_pop;
    union {
        struct {
            uint32_t addr: 20;
            uint32_t reserved20: 8;
            uint32_t stop: 1;
            uint32_t start: 1;
            uint32_t restart: 1;
            uint32_t park: 1;
        };
        uint32_t val;
    } slc0_rx_link;
    union {
        struct {
            uint32_t addr: 20;
            uint32_t reserved20: 8;
            uint32_t stop: 1;
            uint32_t start: 1;
            uint32_t restart: 1;
            uint32_t park: 1;
        };
        uint32_t val;
    } slc0_tx_link;
    union {
        struct {
            uint32_t addr: 20;
            uint32_t bt_packet: 1;
            uint32_t reserved21: 7;
            uint32_t stop: 1;
            uint32_t start: 1;
            uint32_t restart: 1;
            uint32_t park: 1;
        };
        uint32_t val;
    } slc1_rx_link;
    union {
        struct {
            uint32_t addr: 20;
            uint32_t reserved20: 8;
            uint32_t stop: 1;
            uint32_t start: 1;
            uint32_t restart: 1;
            uint32_t park: 1;
        };
        uint32_t val;
    } slc1_tx_link;
    union {
        struct {
            uint32_t slc0_intvec: 8;
            uint32_t reserved8: 8;
            uint32_t slc1_intvec: 8;
            uint32_t reserved24: 8;
        };
        uint32_t val;
    } intvec_tohost;
    union {
        struct {
            uint32_t wdata: 12;
            uint32_t wr: 1;
            uint32_t inc: 1;
            uint32_t inc_more: 1;
            uint32_t reserved15: 1;
            uint32_t token0: 12;
            uint32_t reserved28: 4;
        };
        uint32_t val;
    } slc0_token0;
    union {
        struct {
            uint32_t wdata: 12;
            uint32_t wr: 1;
            uint32_t inc: 1;
            uint32_t inc_more: 1;
            uint32_t reserved15: 1;
            uint32_t token1: 12;
            uint32_t reserved28: 4;
        };
        uint32_t val;
    } slc0_token1;
    union {
        struct {
            uint32_t wdata: 12;
            uint32_t wr: 1;
            uint32_t inc: 1;
            uint32_t inc_more: 1;
            uint32_t reserved15: 1;
            uint32_t token0: 12;
            uint32_t reserved28: 4;
        };
        uint32_t val;
    } slc1_token0;
    union {
        struct {
            uint32_t wdata: 12;
            uint32_t wr: 1;
            uint32_t inc: 1;
            uint32_t inc_more: 1;
            uint32_t reserved15: 1;
            uint32_t token1: 12;
            uint32_t reserved28: 4;
        };
        uint32_t val;
    } slc1_token1;
    union {
        struct {
            uint32_t slc0_check_owner: 1;
            uint32_t slc0_tx_check_sum_en: 1;
            uint32_t slc0_rx_check_sum_en: 1;
            uint32_t cmd_hold_en: 1;
            uint32_t slc0_len_auto_clr: 1;
            uint32_t slc0_tx_stitch_en: 1;
            uint32_t slc0_rx_stitch_en: 1;
            uint32_t reserved7: 9;
            uint32_t slc1_check_owner: 1;
            uint32_t slc1_tx_check_sum_en: 1;
            uint32_t slc1_rx_check_sum_en: 1;
            uint32_t host_int_level_sel: 1;
            uint32_t slc1_tx_stitch_en: 1;
            uint32_t slc1_rx_stitch_en: 1;
            uint32_t clk_en: 1;
            uint32_t reserved23: 9;
        };
        uint32_t val;
    } conf1;
    uint32_t slc0_state0;
    uint32_t slc0_state1;
    uint32_t slc1_state0;
    uint32_t slc1_state1;
    union {
        struct {
            uint32_t txeof_ena: 6;
            uint32_t reserved6: 2;
            uint32_t fifo_map_ena: 4;
            uint32_t slc0_tx_dummy_mode: 1;
            uint32_t hda_map_128k: 1;
            uint32_t slc1_tx_dummy_mode: 1;
            uint32_t reserved15: 1;
            uint32_t tx_push_idle_num:16;
        };
        uint32_t val;
    } bridge_conf;
    uint32_t slc0_to_eof_des_addr;
    uint32_t slc0_tx_eof_des_addr;
    uint32_t slc0_to_eof_bfr_des_addr;
    uint32_t slc1_to_eof_des_addr;
    uint32_t slc1_tx_eof_des_addr;
    uint32_t slc1_to_eof_bfr_des_addr;
    union {
        struct {
            uint32_t mode: 3;
            uint32_t reserved3: 1;
            uint32_t addr: 2;
            uint32_t reserved6: 26;
        };
        uint32_t val;
    } ahb_test;
    union {
        struct {
            uint32_t cmd_st: 3;
            uint32_t reserved3: 1;
            uint32_t func_st: 4;
            uint32_t sdio_wakeup: 1;
            uint32_t reserved9: 3;
            uint32_t bus_st: 3;
            uint32_t reserved15: 1;
            uint32_t func1_acc_state: 5;
            uint32_t reserved21: 3;
            uint32_t func2_acc_state: 5;
            uint32_t reserved29: 3;
        };
        uint32_t val;
    } sdio_st;
    union {
        struct {
            uint32_t slc0_token_no_replace: 1;
            uint32_t slc0_infor_no_replace: 1;
            uint32_t slc0_rx_fill_mode: 1;
            uint32_t slc0_rx_eof_mode: 1;
            uint32_t slc0_rx_fill_en: 1;
            uint32_t slc0_rd_retry_threshold:11;
            uint32_t slc1_token_no_replace: 1;
            uint32_t slc1_infor_no_replace: 1;
            uint32_t slc1_rx_fill_mode: 1;
            uint32_t slc1_rx_eof_mode: 1;
            uint32_t slc1_rx_fill_en: 1;
            uint32_t slc1_rd_retry_threshold:11;
        };
        uint32_t val;
    } rx_dscr_conf;
    uint32_t slc0_txlink_dscr;
    uint32_t slc0_txlink_dscr_bf0;
    uint32_t slc0_txlink_dscr_bf1;
    uint32_t slc0_rxlink_dscr;
    uint32_t slc0_rxlink_dscr_bf0;
    uint32_t slc0_rxlink_dscr_bf1;
    uint32_t slc1_txlink_dscr;
    uint32_t slc1_txlink_dscr_bf0;
    uint32_t slc1_txlink_dscr_bf1;
    uint32_t slc1_rxlink_dscr;
    uint32_t slc1_rxlink_dscr_bf0;
    uint32_t slc1_rxlink_dscr_bf1;
    uint32_t slc0_tx_erreof_des_addr;
    uint32_t slc1_tx_erreof_des_addr;
    union {
        struct {
            uint32_t slc0_token:12;
            uint32_t reserved12: 4;
            uint32_t slc1_token:12;
            uint32_t reserved28: 4;
        };
        uint32_t val;
    } token_lat;
    union {
        struct {
            uint32_t wr_retry_threshold:11;
            uint32_t reserved11: 21;
        };
        uint32_t val;
    } tx_dscr_conf;
    uint32_t cmd_infor0;
    uint32_t cmd_infor1;
    union {
        struct {
            uint32_t len_wdata: 20;
            uint32_t len_wr: 1;
            uint32_t len_inc: 1;
            uint32_t len_inc_more: 1;
            uint32_t rx_packet_load_en: 1;
            uint32_t tx_packet_load_en: 1;
            uint32_t rx_get_used_dscr: 1;
            uint32_t tx_get_used_dscr: 1;
            uint32_t rx_new_pkt_ind: 1;
            uint32_t tx_new_pkt_ind: 1;
            uint32_t reserved29: 3;
        };
        uint32_t val;
    } slc0_len_conf;
    union {
        struct {
            uint32_t len: 20;
            uint32_t reserved20:12;
        };
        uint32_t val;
    } slc0_length;
    uint32_t slc0_txpkt_h_dscr;
    uint32_t slc0_txpkt_e_dscr;
    uint32_t slc0_rxpkt_h_dscr;
    uint32_t slc0_rxpkt_e_dscr;
    uint32_t slc0_txpktu_h_dscr;
    uint32_t slc0_txpktu_e_dscr;
    uint32_t slc0_rxpktu_h_dscr;
    uint32_t slc0_rxpktu_e_dscr;
    uint32_t reserved_10c;
    uint32_t reserved_110;
    union {
        struct {
            uint32_t slc0_position: 8;
            uint32_t slc1_position: 8;
            uint32_t reserved16: 16;
        };
        uint32_t val;
    } seq_position;
    union {
        struct {
            uint32_t rx_dscr_rec_lim: 10;
            uint32_t reserved10: 22;
        };
        uint32_t val;
    } slc0_dscr_rec_conf;
    union {
        struct {
            uint32_t dat0_crc_err_cnt: 8;
            uint32_t dat1_crc_err_cnt: 8;
            uint32_t dat2_crc_err_cnt: 8;
            uint32_t dat3_crc_err_cnt: 8;
        };
        uint32_t val;
    } sdio_crc_st0;
    union {
        struct {
            uint32_t cmd_crc_err_cnt: 8;
            uint32_t reserved8: 23;
            uint32_t err_cnt_clr: 1;
        };
        uint32_t val;
    } sdio_crc_st1;
    uint32_t slc0_eof_start_des;
    uint32_t slc0_push_dscr_addr;
    uint32_t slc0_done_dscr_addr;
    uint32_t slc0_sub_start_des;
    union {
        struct {
            uint32_t rx_dscr_cnt_lat: 10;
            uint32_t reserved10: 6;
            uint32_t rx_get_eof_occ: 1;
            uint32_t reserved17: 15;
        };
        uint32_t val;
    } slc0_dscr_cnt;
    union {
        struct {
            uint32_t len_lim: 20;
            uint32_t reserved20:12;
        };
        uint32_t val;
    } slc0_len_lim_conf;
    union {
        struct {
            uint32_t frhost_bit01: 1;
            uint32_t frhost_bit11: 1;
            uint32_t frhost_bit21: 1;
            uint32_t frhost_bit31: 1;
            uint32_t frhost_bit41: 1;
            uint32_t frhost_bit51: 1;
            uint32_t frhost_bit61: 1;
            uint32_t frhost_bit71: 1;
            uint32_t rx_start1: 1;
            uint32_t tx_start1: 1;
            uint32_t rx_udf1: 1;
            uint32_t tx_ovf1: 1;
            uint32_t token0_1to01: 1;
            uint32_t token1_1to01: 1;
            uint32_t tx_done1: 1;
            uint32_t tx_suc_eof1: 1;
            uint32_t rx_done1: 1;
            uint32_t rx_eof1: 1;
            uint32_t tohost1: 1;
            uint32_t tx_dscr_err1: 1;
            uint32_t rx_dscr_err1: 1;
            uint32_t tx_dscr_empty1: 1;
            uint32_t host_rd_ack1: 1;
            uint32_t wr_retry_done1: 1;
            uint32_t tx_err_eof1: 1;
            uint32_t cmd_dtc1: 1;
            uint32_t rx_quick_eof1: 1;
            uint32_t reserved27: 5;
        };
        uint32_t val;
    } slc0_int_st1;
    union {
        struct {
            uint32_t frhost_bit01: 1;
            uint32_t frhost_bit11: 1;
            uint32_t frhost_bit21: 1;
            uint32_t frhost_bit31: 1;
            uint32_t frhost_bit41: 1;
            uint32_t frhost_bit51: 1;
            uint32_t frhost_bit61: 1;
            uint32_t frhost_bit71: 1;
            uint32_t rx_start1: 1;
            uint32_t tx_start1: 1;
            uint32_t rx_udf1: 1;
            uint32_t tx_ovf1: 1;
            uint32_t token0_1to01: 1;
            uint32_t token1_1to01: 1;
            uint32_t tx_done1: 1;
            uint32_t tx_suc_eof1: 1;
            uint32_t rx_done1: 1;
            uint32_t rx_eof1: 1;
            uint32_t tohost1: 1;
            uint32_t tx_dscr_err1: 1;
            uint32_t rx_dscr_err1: 1;
            uint32_t tx_dscr_empty1: 1;
            uint32_t host_rd_ack1: 1;
            uint32_t wr_retry_done1: 1;
            uint32_t tx_err_eof1: 1;
            uint32_t cmd_dtc1: 1;
            uint32_t rx_quick_eof1: 1;
            uint32_t reserved27: 5;
        };
        uint32_t val;
    } slc0_int_ena1;
    union {
        struct {
            uint32_t frhost_bit81: 1;
            uint32_t frhost_bit91: 1;
            uint32_t frhost_bit101: 1;
            uint32_t frhost_bit111: 1;
            uint32_t frhost_bit121: 1;
            uint32_t frhost_bit131: 1;
            uint32_t frhost_bit141: 1;
            uint32_t frhost_bit151: 1;
            uint32_t rx_start1: 1;
            uint32_t tx_start1: 1;
            uint32_t rx_udf1: 1;
            uint32_t tx_ovf1: 1;
            uint32_t token0_1to01: 1;
            uint32_t token1_1to01: 1;
            uint32_t tx_done1: 1;
            uint32_t tx_suc_eof1: 1;
            uint32_t rx_done1: 1;
            uint32_t rx_eof1: 1;
            uint32_t tohost1: 1;
            uint32_t tx_dscr_err1: 1;
            uint32_t rx_dscr_err1: 1;
            uint32_t tx_dscr_empty1: 1;
            uint32_t host_rd_ack1: 1;
            uint32_t wr_retry_done1: 1;
            uint32_t tx_err_eof1: 1;
            uint32_t reserved25: 7;
        };
        uint32_t val;
    } slc1_int_st1;
    union {
        struct {
            uint32_t frhost_bit81: 1;
            uint32_t frhost_bit91: 1;
            uint32_t frhost_bit101: 1;
            uint32_t frhost_bit111: 1;
            uint32_t frhost_bit121: 1;
            uint32_t frhost_bit131: 1;
            uint32_t frhost_bit141: 1;
            uint32_t frhost_bit151: 1;
            uint32_t rx_start1: 1;
            uint32_t tx_start1: 1;
            uint32_t rx_udf1: 1;
            uint32_t tx_ovf1: 1;
            uint32_t token0_1to01: 1;
            uint32_t token1_1to01: 1;
            uint32_t tx_done1: 1;
            uint32_t tx_suc_eof1: 1;
            uint32_t rx_done1: 1;
            uint32_t rx_eof1: 1;
            uint32_t tohost1: 1;
            uint32_t tx_dscr_err1: 1;
            uint32_t rx_dscr_err1: 1;
            uint32_t tx_dscr_empty1: 1;
            uint32_t host_rd_ack1: 1;
            uint32_t wr_retry_done1: 1;
            uint32_t tx_err_eof1: 1;
            uint32_t reserved25: 7;
        };
        uint32_t val;
    } slc1_int_ena1;
    uint32_t reserved_14c;
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
    uint32_t date;
    uint32_t id;
} slc_dev_t;
extern slc_dev_t SLC;
# 90 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/slc_reg.h" 1
# 91 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/host_struct.h" 1
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/host_struct.h"
typedef volatile struct {
    uint32_t reserved_0;
    uint32_t reserved_4;
    uint32_t reserved_8;
    uint32_t reserved_c;
    union {
        struct {
            uint32_t reserved0: 24;
            uint32_t func2_int: 1;
            uint32_t reserved25: 7;
        };
        uint32_t val;
    } func2_0;
    union {
        struct {
            uint32_t func2_int_en: 1;
            uint32_t reserved1: 31;
        };
        uint32_t val;
    } func2_1;
    uint32_t reserved_18;
    uint32_t reserved_1c;
    union {
        struct {
            uint32_t func1_mdstat: 1;
            uint32_t reserved1: 31;
        };
        uint32_t val;
    } func2_2;
    uint32_t reserved_24;
    uint32_t reserved_28;
    uint32_t reserved_2c;
    uint32_t reserved_30;
    uint32_t gpio_status0;
    union {
        struct {
            uint32_t sdio_int1: 8;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } gpio_status1;
    uint32_t gpio_in0;
    union {
        struct {
            uint32_t sdio_in1: 8;
            uint32_t reserved8: 24;
        };
        uint32_t val;
    } gpio_in1;
    union {
        struct {
            uint32_t token0: 12;
            uint32_t rx_pf_valid: 1;
            uint32_t reserved13: 3;
            uint32_t reg_token1: 12;
            uint32_t rx_pf_eof: 4;
        };
        uint32_t val;
    } slc0_token_rdata;
    uint32_t slc0_pf;
    uint32_t slc1_pf;
    union {
        struct {
            uint32_t tohost_bit0: 1;
            uint32_t tohost_bit1: 1;
            uint32_t tohost_bit2: 1;
            uint32_t tohost_bit3: 1;
            uint32_t tohost_bit4: 1;
            uint32_t tohost_bit5: 1;
            uint32_t tohost_bit6: 1;
            uint32_t tohost_bit7: 1;
            uint32_t token0_1to0: 1;
            uint32_t token1_1to0: 1;
            uint32_t token0_0to1: 1;
            uint32_t token1_0to1: 1;
            uint32_t rx_sof: 1;
            uint32_t rx_eof: 1;
            uint32_t rx_start: 1;
            uint32_t tx_start: 1;
            uint32_t rx_udf: 1;
            uint32_t tx_ovf: 1;
            uint32_t rx_pf_valid: 1;
            uint32_t ext_bit0: 1;
            uint32_t ext_bit1: 1;
            uint32_t ext_bit2: 1;
            uint32_t ext_bit3: 1;
            uint32_t rx_new_packet: 1;
            uint32_t rd_retry: 1;
            uint32_t gpio_sdio: 1;
            uint32_t reserved26: 6;
        };
        uint32_t val;
    } slc0_int_raw;
    union {
        struct {
            uint32_t tohost_bit0: 1;
            uint32_t tohost_bit1: 1;
            uint32_t tohost_bit2: 1;
            uint32_t tohost_bit3: 1;
            uint32_t tohost_bit4: 1;
            uint32_t tohost_bit5: 1;
            uint32_t tohost_bit6: 1;
            uint32_t tohost_bit7: 1;
            uint32_t token0_1to0: 1;
            uint32_t token1_1to0: 1;
            uint32_t token0_0to1: 1;
            uint32_t token1_0to1: 1;
            uint32_t rx_sof: 1;
            uint32_t rx_eof: 1;
            uint32_t rx_start: 1;
            uint32_t tx_start: 1;
            uint32_t rx_udf: 1;
            uint32_t tx_ovf: 1;
            uint32_t rx_pf_valid: 1;
            uint32_t ext_bit0: 1;
            uint32_t ext_bit1: 1;
            uint32_t ext_bit2: 1;
            uint32_t ext_bit3: 1;
            uint32_t wifi_rx_new_packet: 1;
            uint32_t rd_retry: 1;
            uint32_t bt_rx_new_packet: 1;
            uint32_t reserved26: 6;
        };
        uint32_t val;
    } slc1_int_raw;
    union {
        struct {
            uint32_t tohost_bit0: 1;
            uint32_t tohost_bit1: 1;
            uint32_t tohost_bit2: 1;
            uint32_t tohost_bit3: 1;
            uint32_t tohost_bit4: 1;
            uint32_t tohost_bit5: 1;
            uint32_t tohost_bit6: 1;
            uint32_t tohost_bit7: 1;
            uint32_t token0_1to0: 1;
            uint32_t token1_1to0: 1;
            uint32_t token0_0to1: 1;
            uint32_t token1_0to1: 1;
            uint32_t rx_sof: 1;
            uint32_t rx_eof: 1;
            uint32_t rx_start: 1;
            uint32_t tx_start: 1;
            uint32_t rx_udf: 1;
            uint32_t tx_ovf: 1;
            uint32_t rx_pf_valid: 1;
            uint32_t ext_bit0: 1;
            uint32_t ext_bit1: 1;
            uint32_t ext_bit2: 1;
            uint32_t ext_bit3: 1;
            uint32_t rx_new_packet: 1;
            uint32_t rd_retry: 1;
            uint32_t gpio_sdio: 1;
            uint32_t reserved26: 6;
        };
        uint32_t val;
    } slc0_int_st;
    union {
        struct {
            uint32_t tohost_bit0: 1;
            uint32_t tohost_bit1: 1;
            uint32_t tohost_bit2: 1;
            uint32_t tohost_bit3: 1;
            uint32_t tohost_bit4: 1;
            uint32_t tohost_bit5: 1;
            uint32_t tohost_bit6: 1;
            uint32_t tohost_bit7: 1;
            uint32_t token0_1to0: 1;
            uint32_t token1_1to0: 1;
            uint32_t token0_0to1: 1;
            uint32_t token1_0to1: 1;
            uint32_t rx_sof: 1;
            uint32_t rx_eof: 1;
            uint32_t rx_start: 1;
            uint32_t tx_start: 1;
            uint32_t rx_udf: 1;
            uint32_t tx_ovf: 1;
            uint32_t rx_pf_valid: 1;
            uint32_t ext_bit0: 1;
            uint32_t ext_bit1: 1;
            uint32_t ext_bit2: 1;
            uint32_t ext_bit3: 1;
            uint32_t wifi_rx_new_packet: 1;
            uint32_t rd_retry: 1;
            uint32_t bt_rx_new_packet: 1;
            uint32_t reserved26: 6;
        };
        uint32_t val;
    } slc1_int_st;
    union {
        struct {
            uint32_t reg_slc0_len: 20;
            uint32_t reg_slc0_len_check:12;
        };
        uint32_t val;
    } pkt_len;
    union {
        struct {
            uint32_t state0: 8;
            uint32_t state1: 8;
            uint32_t state2: 8;
            uint32_t state3: 8;
        };
        uint32_t val;
    } state_w0;
    union {
        struct {
            uint32_t state4: 8;
            uint32_t state5: 8;
            uint32_t state6: 8;
            uint32_t state7: 8;
        };
        uint32_t val;
    } state_w1;
    union {
        struct {
            uint32_t conf0: 8;
            uint32_t conf1: 8;
            uint32_t conf2: 8;
            uint32_t conf3: 8;
        };
        uint32_t val;
    } conf_w0;
    union {
        struct {
            uint32_t conf4: 8;
            uint32_t conf5: 8;
            uint32_t conf6: 8;
            uint32_t conf7: 8;
        };
        uint32_t val;
    } conf_w1;
    union {
        struct {
            uint32_t conf8: 8;
            uint32_t conf9: 8;
            uint32_t conf10: 8;
            uint32_t conf11: 8;
        };
        uint32_t val;
    } conf_w2;
    union {
        struct {
            uint32_t conf12: 8;
            uint32_t conf13: 8;
            uint32_t conf14: 8;
            uint32_t conf15: 8;
        };
        uint32_t val;
    } conf_w3;
    union {
        struct {
            uint32_t conf16: 8;
            uint32_t conf17: 8;
            uint32_t conf18: 8;
            uint32_t conf19: 8;
        };
        uint32_t val;
    } conf_w4;
    union {
        struct {
            uint32_t conf20: 8;
            uint32_t conf21: 8;
            uint32_t conf22: 8;
            uint32_t conf23: 8;
        };
        uint32_t val;
    } conf_w5;
    uint32_t win_cmd;
    union {
        struct {
            uint32_t conf24: 8;
            uint32_t conf25: 8;
            uint32_t conf26: 8;
            uint32_t conf27: 8;
        };
        uint32_t val;
    } conf_w6;
    union {
        struct {
            uint32_t conf28: 8;
            uint32_t conf29: 8;
            uint32_t conf30: 8;
            uint32_t conf31: 8;
        };
        uint32_t val;
    } conf_w7;
    union {
        struct {
            uint32_t reg_slc0_len0:20;
            uint32_t reserved20: 12;
        };
        uint32_t val;
    } pkt_len0;
    union {
        struct {
            uint32_t reg_slc0_len1:20;
            uint32_t reserved20: 12;
        };
        uint32_t val;
    } pkt_len1;
    union {
        struct {
            uint32_t reg_slc0_len2:20;
            uint32_t reserved20: 12;
        };
        uint32_t val;
    } pkt_len2;
    union {
        struct {
            uint32_t conf32: 8;
            uint32_t conf33: 8;
            uint32_t conf34: 8;
            uint32_t conf35: 8;
        };
        uint32_t val;
    } conf_w8;
    union {
        struct {
            uint32_t conf36: 8;
            uint32_t conf37: 8;
            uint32_t conf38: 8;
            uint32_t conf39: 8;
        };
        uint32_t val;
    } conf_w9;
    union {
        struct {
            uint32_t conf40: 8;
            uint32_t conf41: 8;
            uint32_t conf42: 8;
            uint32_t conf43: 8;
        };
        uint32_t val;
    } conf_w10;
    union {
        struct {
            uint32_t conf44: 8;
            uint32_t conf45: 8;
            uint32_t conf46: 8;
            uint32_t conf47: 8;
        };
        uint32_t val;
    } conf_w11;
    union {
        struct {
            uint32_t conf48: 8;
            uint32_t conf49: 8;
            uint32_t conf50: 8;
            uint32_t conf51: 8;
        };
        uint32_t val;
    } conf_w12;
    union {
        struct {
            uint32_t conf52: 8;
            uint32_t conf53: 8;
            uint32_t conf54: 8;
            uint32_t conf55: 8;
        };
        uint32_t val;
    } conf_w13;
    union {
        struct {
            uint32_t conf56: 8;
            uint32_t conf57: 8;
            uint32_t conf58: 8;
            uint32_t conf59: 8;
        };
        uint32_t val;
    } conf_w14;
    union {
        struct {
            uint32_t conf60: 8;
            uint32_t conf61: 8;
            uint32_t conf62: 8;
            uint32_t conf63: 8;
        };
        uint32_t val;
    } conf_w15;
    uint32_t check_sum0;
    uint32_t check_sum1;
    union {
        struct {
            uint32_t token0: 12;
            uint32_t rx_pf_valid: 1;
            uint32_t reserved13: 3;
            uint32_t reg_token1: 12;
            uint32_t rx_pf_eof: 4;
        };
        uint32_t val;
    } slc1_token_rdata;
    union {
        struct {
            uint32_t token0_wd: 12;
            uint32_t reserved12: 4;
            uint32_t token1_wd: 12;
            uint32_t reserved28: 4;
        };
        uint32_t val;
    } slc0_token_wdata;
    union {
        struct {
            uint32_t token0_wd: 12;
            uint32_t reserved12: 4;
            uint32_t token1_wd: 12;
            uint32_t reserved28: 4;
        };
        uint32_t val;
    } slc1_token_wdata;
    union {
        struct {
            uint32_t slc0_token0_dec: 1;
            uint32_t slc0_token1_dec: 1;
            uint32_t slc0_token0_wr: 1;
            uint32_t slc0_token1_wr: 1;
            uint32_t slc1_token0_dec: 1;
            uint32_t slc1_token1_dec: 1;
            uint32_t slc1_token0_wr: 1;
            uint32_t slc1_token1_wr: 1;
            uint32_t slc0_len_wr: 1;
            uint32_t reserved9: 23;
        };
        uint32_t val;
    } token_con;
    union {
        struct {
            uint32_t tohost_bit0: 1;
            uint32_t tohost_bit1: 1;
            uint32_t tohost_bit2: 1;
            uint32_t tohost_bit3: 1;
            uint32_t tohost_bit4: 1;
            uint32_t tohost_bit5: 1;
            uint32_t tohost_bit6: 1;
            uint32_t tohost_bit7: 1;
            uint32_t token0_1to0: 1;
            uint32_t token1_1to0: 1;
            uint32_t token0_0to1: 1;
            uint32_t token1_0to1: 1;
            uint32_t rx_sof: 1;
            uint32_t rx_eof: 1;
            uint32_t rx_start: 1;
            uint32_t tx_start: 1;
            uint32_t rx_udf: 1;
            uint32_t tx_ovf: 1;
            uint32_t rx_pf_valid: 1;
            uint32_t ext_bit0: 1;
            uint32_t ext_bit1: 1;
            uint32_t ext_bit2: 1;
            uint32_t ext_bit3: 1;
            uint32_t rx_new_packet: 1;
            uint32_t rd_retry: 1;
            uint32_t gpio_sdio: 1;
            uint32_t reserved26: 6;
        };
        uint32_t val;
    } slc0_int_clr;
    union {
        struct {
            uint32_t tohost_bit0: 1;
            uint32_t tohost_bit1: 1;
            uint32_t tohost_bit2: 1;
            uint32_t tohost_bit3: 1;
            uint32_t tohost_bit4: 1;
            uint32_t tohost_bit5: 1;
            uint32_t tohost_bit6: 1;
            uint32_t tohost_bit7: 1;
            uint32_t token0_1to0: 1;
            uint32_t token1_1to0: 1;
            uint32_t token0_0to1: 1;
            uint32_t token1_0to1: 1;
            uint32_t rx_sof: 1;
            uint32_t rx_eof: 1;
            uint32_t rx_start: 1;
            uint32_t tx_start: 1;
            uint32_t rx_udf: 1;
            uint32_t tx_ovf: 1;
            uint32_t rx_pf_valid: 1;
            uint32_t ext_bit0: 1;
            uint32_t ext_bit1: 1;
            uint32_t ext_bit2: 1;
            uint32_t ext_bit3: 1;
            uint32_t wifi_rx_new_packet: 1;
            uint32_t rd_retry: 1;
            uint32_t bt_rx_new_packet: 1;
            uint32_t reserved26: 6;
        };
        uint32_t val;
    } slc1_int_clr;
    union {
        struct {
            uint32_t tohost_bit0: 1;
            uint32_t tohost_bit1: 1;
            uint32_t tohost_bit2: 1;
            uint32_t tohost_bit3: 1;
            uint32_t tohost_bit4: 1;
            uint32_t tohost_bit5: 1;
            uint32_t tohost_bit6: 1;
            uint32_t tohost_bit7: 1;
            uint32_t token0_1to0: 1;
            uint32_t token1_1to0: 1;
            uint32_t token0_0to1: 1;
            uint32_t token1_0to1: 1;
            uint32_t rx_sof: 1;
            uint32_t rx_eof: 1;
            uint32_t rx_start: 1;
            uint32_t tx_start: 1;
            uint32_t rx_udf: 1;
            uint32_t tx_ovf: 1;
            uint32_t rx_pf_valid: 1;
            uint32_t ext_bit0: 1;
            uint32_t ext_bit1: 1;
            uint32_t ext_bit2: 1;
            uint32_t ext_bit3: 1;
            uint32_t rx_new_packet: 1;
            uint32_t rd_retry: 1;
            uint32_t gpio_sdio: 1;
            uint32_t reserved26: 6;
        };
        uint32_t val;
    } slc0_func1_int_ena;
    union {
        struct {
            uint32_t tohost_bit0: 1;
            uint32_t tohost_bit1: 1;
            uint32_t tohost_bit2: 1;
            uint32_t tohost_bit3: 1;
            uint32_t tohost_bit4: 1;
            uint32_t tohost_bit5: 1;
            uint32_t tohost_bit6: 1;
            uint32_t tohost_bit7: 1;
            uint32_t token0_1to0: 1;
            uint32_t token1_1to0: 1;
            uint32_t token0_0to1: 1;
            uint32_t token1_0to1: 1;
            uint32_t rx_sof: 1;
            uint32_t rx_eof: 1;
            uint32_t rx_start: 1;
            uint32_t tx_start: 1;
            uint32_t rx_udf: 1;
            uint32_t tx_ovf: 1;
            uint32_t rx_pf_valid: 1;
            uint32_t ext_bit0: 1;
            uint32_t ext_bit1: 1;
            uint32_t ext_bit2: 1;
            uint32_t ext_bit3: 1;
            uint32_t wifi_rx_new_packet: 1;
            uint32_t rd_retry: 1;
            uint32_t bt_rx_new_packet: 1;
            uint32_t reserved26: 6;
        };
        uint32_t val;
    } slc1_func1_int_ena;
    union {
        struct {
            uint32_t tohost_bit0: 1;
            uint32_t tohost_bit1: 1;
            uint32_t tohost_bit2: 1;
            uint32_t tohost_bit3: 1;
            uint32_t tohost_bit4: 1;
            uint32_t tohost_bit5: 1;
            uint32_t tohost_bit6: 1;
            uint32_t tohost_bit7: 1;
            uint32_t token0_1to0: 1;
            uint32_t token1_1to0: 1;
            uint32_t token0_0to1: 1;
            uint32_t token1_0to1: 1;
            uint32_t rx_sof: 1;
            uint32_t rx_eof: 1;
            uint32_t rx_start: 1;
            uint32_t tx_start: 1;
            uint32_t rx_udf: 1;
            uint32_t tx_ovf: 1;
            uint32_t rx_pf_valid: 1;
            uint32_t ext_bit0: 1;
            uint32_t ext_bit1: 1;
            uint32_t ext_bit2: 1;
            uint32_t ext_bit3: 1;
            uint32_t rx_new_packet: 1;
            uint32_t rd_retry: 1;
            uint32_t gpio_sdio: 1;
            uint32_t reserved26: 6;
        };
        uint32_t val;
    } slc0_func2_int_ena;
    union {
        struct {
            uint32_t tohost_bit0: 1;
            uint32_t tohost_bit1: 1;
            uint32_t tohost_bit2: 1;
            uint32_t tohost_bit3: 1;
            uint32_t tohost_bit4: 1;
            uint32_t tohost_bit5: 1;
            uint32_t tohost_bit6: 1;
            uint32_t tohost_bit7: 1;
            uint32_t token0_1to0: 1;
            uint32_t token1_1to0: 1;
            uint32_t token0_0to1: 1;
            uint32_t token1_0to1: 1;
            uint32_t rx_sof: 1;
            uint32_t rx_eof: 1;
            uint32_t rx_start: 1;
            uint32_t tx_start: 1;
            uint32_t rx_udf: 1;
            uint32_t tx_ovf: 1;
            uint32_t rx_pf_valid: 1;
            uint32_t ext_bit0: 1;
            uint32_t ext_bit1: 1;
            uint32_t ext_bit2: 1;
            uint32_t ext_bit3: 1;
            uint32_t wifi_rx_new_packet: 1;
            uint32_t rd_retry: 1;
            uint32_t bt_rx_new_packet: 1;
            uint32_t reserved26: 6;
        };
        uint32_t val;
    } slc1_func2_int_ena;
    union {
        struct {
            uint32_t tohost_bit0: 1;
            uint32_t tohost_bit1: 1;
            uint32_t tohost_bit2: 1;
            uint32_t tohost_bit3: 1;
            uint32_t tohost_bit4: 1;
            uint32_t tohost_bit5: 1;
            uint32_t tohost_bit6: 1;
            uint32_t tohost_bit7: 1;
            uint32_t token0_1to0: 1;
            uint32_t token1_1to0: 1;
            uint32_t token0_0to1: 1;
            uint32_t token1_0to1: 1;
            uint32_t rx_sof: 1;
            uint32_t rx_eof: 1;
            uint32_t rx_start: 1;
            uint32_t tx_start: 1;
            uint32_t rx_udf: 1;
            uint32_t tx_ovf: 1;
            uint32_t rx_pf_valid: 1;
            uint32_t ext_bit0: 1;
            uint32_t ext_bit1: 1;
            uint32_t ext_bit2: 1;
            uint32_t ext_bit3: 1;
            uint32_t rx_new_packet: 1;
            uint32_t rd_retry: 1;
            uint32_t gpio_sdio: 1;
            uint32_t reserved26: 6;
        };
        uint32_t val;
    } slc0_int_ena;
    union {
        struct {
            uint32_t tohost_bit0: 1;
            uint32_t tohost_bit1: 1;
            uint32_t tohost_bit2: 1;
            uint32_t tohost_bit3: 1;
            uint32_t tohost_bit4: 1;
            uint32_t tohost_bit5: 1;
            uint32_t tohost_bit6: 1;
            uint32_t tohost_bit7: 1;
            uint32_t token0_1to0: 1;
            uint32_t token1_1to0: 1;
            uint32_t token0_0to1: 1;
            uint32_t token1_0to1: 1;
            uint32_t rx_sof: 1;
            uint32_t rx_eof: 1;
            uint32_t rx_start: 1;
            uint32_t tx_start: 1;
            uint32_t rx_udf: 1;
            uint32_t tx_ovf: 1;
            uint32_t rx_pf_valid: 1;
            uint32_t ext_bit0: 1;
            uint32_t ext_bit1: 1;
            uint32_t ext_bit2: 1;
            uint32_t ext_bit3: 1;
            uint32_t wifi_rx_new_packet: 1;
            uint32_t rd_retry: 1;
            uint32_t bt_rx_new_packet: 1;
            uint32_t reserved26: 6;
        };
        uint32_t val;
    } slc1_int_ena;
    union {
        struct {
            uint32_t infor: 20;
            uint32_t reserved20: 12;
        };
        uint32_t val;
    } slc0_rx_infor;
    union {
        struct {
            uint32_t infor: 20;
            uint32_t reserved20: 12;
        };
        uint32_t val;
    } slc1_rx_infor;
    uint32_t slc0_len_wd;
    uint32_t apbwin_wdata;
    union {
        struct {
            uint32_t addr: 28;
            uint32_t wr: 1;
            uint32_t start: 1;
            uint32_t reserved30: 2;
        };
        uint32_t val;
    } apbwin_conf;
    uint32_t apbwin_rdata;
    union {
        struct {
            uint32_t bit7_clraddr: 9;
            uint32_t bit6_clraddr: 9;
            uint32_t reserved18: 14;
        };
        uint32_t val;
    } slc0_rdclr;
    union {
        struct {
            uint32_t bit7_clraddr: 9;
            uint32_t bit6_clraddr: 9;
            uint32_t reserved18: 14;
        };
        uint32_t val;
    } slc1_rdclr;
    union {
        struct {
            uint32_t tohost_bit01: 1;
            uint32_t tohost_bit11: 1;
            uint32_t tohost_bit21: 1;
            uint32_t tohost_bit31: 1;
            uint32_t tohost_bit41: 1;
            uint32_t tohost_bit51: 1;
            uint32_t tohost_bit61: 1;
            uint32_t tohost_bit71: 1;
            uint32_t token0_1to01: 1;
            uint32_t token1_1to01: 1;
            uint32_t token0_0to11: 1;
            uint32_t token1_0to11: 1;
            uint32_t rx_sof1: 1;
            uint32_t rx_eof1: 1;
            uint32_t rx_start1: 1;
            uint32_t tx_start1: 1;
            uint32_t rx_udf1: 1;
            uint32_t tx_ovf1: 1;
            uint32_t rx_pf_valid1: 1;
            uint32_t ext_bit01: 1;
            uint32_t ext_bit11: 1;
            uint32_t ext_bit21: 1;
            uint32_t ext_bit31: 1;
            uint32_t rx_new_packet1: 1;
            uint32_t rd_retry1: 1;
            uint32_t gpio_sdio1: 1;
            uint32_t reserved26: 6;
        };
        uint32_t val;
    } slc0_int_ena1;
    union {
        struct {
            uint32_t tohost_bit01: 1;
            uint32_t tohost_bit11: 1;
            uint32_t tohost_bit21: 1;
            uint32_t tohost_bit31: 1;
            uint32_t tohost_bit41: 1;
            uint32_t tohost_bit51: 1;
            uint32_t tohost_bit61: 1;
            uint32_t tohost_bit71: 1;
            uint32_t token0_1to01: 1;
            uint32_t token1_1to01: 1;
            uint32_t token0_0to11: 1;
            uint32_t token1_0to11: 1;
            uint32_t rx_sof1: 1;
            uint32_t rx_eof1: 1;
            uint32_t rx_start1: 1;
            uint32_t tx_start1: 1;
            uint32_t rx_udf1: 1;
            uint32_t tx_ovf1: 1;
            uint32_t rx_pf_valid1: 1;
            uint32_t ext_bit01: 1;
            uint32_t ext_bit11: 1;
            uint32_t ext_bit21: 1;
            uint32_t ext_bit31: 1;
            uint32_t wifi_rx_new_packet1: 1;
            uint32_t rd_retry1: 1;
            uint32_t bt_rx_new_packet1: 1;
            uint32_t reserved26: 6;
        };
        uint32_t val;
    } slc1_int_ena1;
    uint32_t reserved_11c;
    uint32_t reserved_120;
    uint32_t reserved_124;
    uint32_t reserved_128;
    uint32_t reserved_12c;
    uint32_t reserved_130;
    uint32_t reserved_134;
    uint32_t reserved_138;
    uint32_t reserved_13c;
    uint32_t reserved_140;
    uint32_t reserved_144;
    uint32_t reserved_148;
    uint32_t reserved_14c;
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
    uint32_t date;
    uint32_t id;
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
    union {
        struct {
            uint32_t frc_sdio11: 5;
            uint32_t frc_sdio20: 5;
            uint32_t frc_neg_samp: 5;
            uint32_t frc_pos_samp: 5;
            uint32_t frc_quick_in: 5;
            uint32_t sdio20_int_delay: 1;
            uint32_t sdio_pad_pullup: 1;
            uint32_t hspeed_con_en: 1;
            uint32_t reserved28: 4;
        };
        uint32_t val;
    } conf;
    union {
        struct {
            uint32_t sdio20_mode: 5;
            uint32_t sdio_neg_samp: 5;
            uint32_t sdio_quick_in: 5;
            uint32_t reserved15: 17;
        };
        uint32_t val;
    } inf_st;
} host_dev_t;
extern host_dev_t HOST;
# 92 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/hinf_struct.h" 1
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/hinf_struct.h"
typedef volatile struct {
    union {
        struct {
            uint32_t user_id_fn1: 16;
            uint32_t device_id_fn1:16;
        };
        uint32_t val;
    } cfg_data0;
    union {
        struct {
            uint32_t sdio_enable: 1;
            uint32_t sdio_ioready1: 1;
            uint32_t highspeed_enable: 1;
            uint32_t highspeed_mode: 1;
            uint32_t sdio_cd_enable: 1;
            uint32_t sdio_ioready2: 1;
            uint32_t sdio_int_mask: 1;
            uint32_t ioenable2: 1;
            uint32_t cd_disable: 1;
            uint32_t func1_eps: 1;
            uint32_t emp: 1;
            uint32_t ioenable1: 1;
            uint32_t sdio20_conf0: 4;
            uint32_t sdio_ver: 12;
            uint32_t func2_eps: 1;
            uint32_t sdio20_conf1: 3;
        };
        uint32_t val;
    } cfg_data1;
    uint32_t reserved_8;
    uint32_t reserved_c;
    uint32_t reserved_10;
    uint32_t reserved_14;
    uint32_t reserved_18;
    union {
        struct {
            uint32_t pin_state: 8;
            uint32_t chip_state: 8;
            uint32_t sdio_rst: 1;
            uint32_t sdio_ioready0: 1;
            uint32_t reserved18: 14;
        };
        uint32_t val;
    } cfg_data7;
    uint32_t cis_conf0;
    uint32_t cis_conf1;
    uint32_t cis_conf2;
    uint32_t cis_conf3;
    uint32_t cis_conf4;
    uint32_t cis_conf5;
    uint32_t cis_conf6;
    uint32_t cis_conf7;
    union {
        struct {
            uint32_t user_id_fn2: 16;
            uint32_t device_id_fn2:16;
        };
        uint32_t val;
    } cfg_data16;
    uint32_t reserved_44;
    uint32_t reserved_48;
    uint32_t reserved_4c;
    uint32_t reserved_50;
    uint32_t reserved_54;
    uint32_t reserved_58;
    uint32_t reserved_5c;
    uint32_t reserved_60;
    uint32_t reserved_64;
    uint32_t reserved_68;
    uint32_t reserved_6c;
    uint32_t reserved_70;
    uint32_t reserved_74;
    uint32_t reserved_78;
    uint32_t reserved_7c;
    uint32_t reserved_80;
    uint32_t reserved_84;
    uint32_t reserved_88;
    uint32_t reserved_8c;
    uint32_t reserved_90;
    uint32_t reserved_94;
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
    uint32_t reserved_f8;
    uint32_t date;
} hinf_dev_t;
extern hinf_dev_t HINF;
# 93 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 2
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
# 94 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 2
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
# 95 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 2


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
# 98 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/dport_reg.h" 1
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/dport_reg.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/dport_access.h" 1
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/dport_reg.h" 2
# 99 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 2

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
# 101 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/core-macros.h" 1
# 398 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/core-macros.h"
static inline unsigned XTHAL_COMPARE_AND_SET( int *addr, int testval, int setval )
{
    int result;


    __asm__ __volatile__ (
 "   wsr.scompare1 %2 \n"
 "   s32c1i %0, %3, 0 \n"
     : "=a"(result) : "0" (setval), "a" (testval), "a" (addr)
     : "memory");
# 428 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/core-macros.h"
    return result;
}



static inline unsigned XTHAL_RER (unsigned int reg)
{
  unsigned result;

  __asm__ __volatile__ (
 "   rer     %0, %1"
 : "=a" (result) : "a" (reg) : "memory");

  return result;
}

static inline void XTHAL_WER (unsigned reg, unsigned value)
{
  __asm__ __volatile__ (
 "   wer     %0, %1"
 : : "a" (value), "a" (reg) : "memory");
}
# 102 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 2
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
# 103 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 2
# 114 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
static const char TAG[] = "sdio_slave";

typedef enum {
    STATE_IDLE = 1,
    STATE_WAIT_FOR_START = 2,
    STATE_SENDING = 3,
} send_state_t;

typedef struct {
    uint32_t clk_gpio;
    uint32_t cmd_gpio;
    uint32_t d0_gpio;
    uint32_t d1_gpio;
    uint32_t d2_gpio;
    uint32_t d3_gpio;
    int func;
} sdio_slave_slot_info_t ;






static const sdio_slave_slot_info_t s_slot_info[2] = {
    {
        .clk_gpio = 6,
        .cmd_gpio = 11,
        .d0_gpio = 7,
        .d1_gpio = 8,
        .d2_gpio = 9,
        .d3_gpio = 10,
        .func = 0,
    }, {
        .clk_gpio = 14,
        .cmd_gpio = 15,
        .d0_gpio = 2,
        .d1_gpio = 4,
        .d2_gpio = 12,
        .d3_gpio = 13,
        .func = 4,
    },
};



typedef struct buf_desc_s{
    volatile uint32_t size :12,
             length:12,
             offset: 5,
             sosf : 1,
             eof : 1,
             owner : 1;
    uint8_t* buf;
    union{
        struct { struct buf_desc_s *tqe_next; struct buf_desc_s **tqe_prev; } te;
        struct {
            struct { struct buf_desc_s *stqe_next; } qe;
            union {
                uint32_t pkt_len;


                uint32_t not_receiving;
            };
        };
    };
    void* arg;
} buf_desc_t;

typedef struct bufdesc_stailq_head_s { struct buf_desc_s *stqh_first; struct buf_desc_s **stqh_last; } buf_stailq_t;
typedef struct bufdesc_tailq_head_s { struct buf_desc_s *tqh_first; struct buf_desc_s **tqh_last; } buf_tailq_t;

typedef struct {
    uint8_t* data;
    uint8_t* write_ptr;
    uint8_t* read_ptr;
    uint8_t* free_ptr;
    size_t item_size;
    size_t size;
    portMUX_TYPE write_spinlock;
    SemaphoreHandle_t remain_cnt;
} sdio_ringbuf_t;


typedef enum {
    ringbuf_write_ptr = ( (unsigned int)&(((sdio_ringbuf_t *)(0))->write_ptr) ),
    ringbuf_read_ptr = ( (unsigned int)&(((sdio_ringbuf_t *)(0))->read_ptr) ),
    ringbuf_free_ptr = ( (unsigned int)&(((sdio_ringbuf_t *)(0))->free_ptr) ),
} sdio_ringbuf_pointer_t;



typedef struct {
    sdio_slave_config_t config;
    intr_handle_t intr_handle;

    union {
        SemaphoreHandle_t events[9];
        struct {
            SemaphoreHandle_t _events[8];
            SemaphoreHandle_t recv_event;
        };
    };
    portMUX_TYPE reg_spinlock;


    send_state_t send_state;
    sdio_ringbuf_t sendbuf;
    QueueHandle_t ret_queue;
    buf_desc_t* in_flight;
    buf_desc_t* in_flight_end;
    buf_desc_t* in_flight_next;

    buf_stailq_t recv_link_list;
    buf_tailq_t recv_reg_list;
    volatile buf_desc_t* recv_cur_ret;
    portMUX_TYPE recv_spinlock;
} sdio_context_t;

static sdio_context_t context = {
    .intr_handle = 
# 233 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                  ((void *)0)
# 233 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                      ,

    .events = {},
    .reg_spinlock = { .owner = 0xB33FFFFF, .count = 0, },

    .send_state = STATE_IDLE,
    .sendbuf = (sdio_ringbuf_t){.write_spinlock = { .owner = 0xB33FFFFF, .count = 0, },},
    .ret_queue = 
# 240 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                       ((void *)0)
# 240 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                           ,
    .in_flight = 
# 241 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                       ((void *)0)
# 241 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                           ,
    .in_flight_end = 
# 242 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                       ((void *)0)
# 242 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                           ,
    .in_flight_next = 
# 243 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                       ((void *)0)
# 243 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                           ,

    .recv_link_list = { 
# 245 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                       ((void *)0)
# 245 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                       , &(context.recv_link_list).stqh_first },
    .recv_reg_list = { 
# 246 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                       ((void *)0)
# 246 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                       , &(context.recv_reg_list).tqh_first },
    .recv_cur_ret = 
# 247 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                       ((void *)0)
# 247 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                           ,
    .recv_spinlock = { .owner = 0xB33FFFFF, .count = 0, },
};

static void sdio_intr(void*);
static void sdio_intr_host(void*);
static void sdio_intr_send(void*);
static void sdio_intr_recv(void*);

static esp_err_t send_flush_data();
static esp_err_t send_reset_counter();
static void recv_flush_data();
static void recv_reset_counter();

static esp_err_t send_start();
static void send_stop();
static esp_err_t recv_start();
static void recv_stop();

static void deinit_context();



typedef enum {
    RINGBUF_GET_ONE = 0,
    RINGBUF_GET_ALL = 1,
} ringbuf_get_all_t;

static void sdio_ringbuf_deinit(sdio_ringbuf_t* buf)
{
    if ( buf->remain_cnt != 
# 277 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                           ((void *)0) 
# 277 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                                ) vQueueDelete( ( QueueHandle_t ) ( buf->remain_cnt ) );
    if ( buf->data != 
# 278 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                     ((void *)0) 
# 278 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                          ) free(buf->data);
    *buf = (sdio_ringbuf_t){.write_spinlock = { .owner = 0xB33FFFFF, .count = 0, },};
}

static esp_err_t sdio_ringbuf_init(sdio_ringbuf_t* buf, int item_size, int item_cnt)
{
    if (buf->data != 
# 284 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                    ((void *)0) 
# 284 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                         ) {
        do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):""sdio_ringbuf_init: already initialized" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",285,__FUNCTION__); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):""sdio_ringbuf_init: already initialized" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",285,__FUNCTION__); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "%s:%d (%s):""sdio_ringbuf_init: already initialized" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",285,__FUNCTION__); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "%s:%d (%s):""sdio_ringbuf_init: already initialized" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",285,__FUNCTION__); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):""sdio_ringbuf_init: already initialized" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",285,__FUNCTION__); } } while(0); } while(0);
        return 0x103;
    }
    buf->item_size = item_size;

    buf->size = item_size * (item_cnt+1);

    buf->data = (uint8_t*)malloc(buf->size);
    if ( buf->data == 
# 293 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                     ((void *)0) 
# 293 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                          ) goto no_mem;
    buf->remain_cnt = xQueueCreateCountingSemaphore( ( item_cnt ), ( item_cnt ) );
    if ( buf->remain_cnt == 
# 295 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                           ((void *)0) 
# 295 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                                ) goto no_mem;

    buf->write_ptr = buf->data;
    buf->read_ptr = buf->data;
    buf->free_ptr = buf->data;
    return 0;
no_mem:
    sdio_ringbuf_deinit(buf);
    return 0x101;
}


static inline uint8_t* sdio_ringbuf_offset_ptr( sdio_ringbuf_t *buf, sdio_ringbuf_pointer_t ptr, uint32_t offset )
{
    uint8_t *buf_ptr = (uint8_t*)*(uint32_t*)(((uint8_t*)buf)+ptr);
    uint8_t *offset_ptr=buf_ptr+offset;
    if (offset_ptr >= buf->data + buf->size) offset_ptr -= buf->size;
    return offset_ptr;
}

static esp_err_t sdio_ringbuf_send( sdio_ringbuf_t* buf, esp_err_t (*copy_callback)(uint8_t*, void*), void* arg, TickType_t wait )
{
    int ret = xQueueGenericReceive( ( QueueHandle_t ) ( buf->remain_cnt ), 
# 317 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                       ((void *)0)
# 317 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                       , ( wait ), ( ( BaseType_t ) 0 ) );
    if (ret != ( ( BaseType_t ) 1 )) return 0x107;

    vTaskEnterCritical(&buf->write_spinlock);
    uint8_t* get_ptr = sdio_ringbuf_offset_ptr( buf, ringbuf_write_ptr, buf->item_size );
    esp_err_t err = 0;
    if (copy_callback) (*copy_callback)(get_ptr, arg);
    if ( err != 0 ) {
        vTaskExitCritical(&buf->write_spinlock);
        return err;
    }
    buf->write_ptr = get_ptr;
    vTaskExitCritical(&buf->write_spinlock);
    return 0;
}



static inline esp_err_t sdio_ringbuf_recv(sdio_ringbuf_t* buf, uint8_t **start, uint8_t **end, ringbuf_get_all_t get_all, TickType_t wait)
{
    ((buf->free_ptr == buf->read_ptr) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c", 337, __func__, "buf->free_ptr == buf->read_ptr"));
    ((wait == 0) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c", 338, __func__, "wait == 0"));
    if ( start == 
# 339 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                 ((void *)0) 
# 339 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                      && end == 
# 339 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                                ((void *)0) 
# 339 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                                     ) return 0x102;
    if ( buf->read_ptr == buf->write_ptr ) return 0x105;

    uint8_t *get_start = sdio_ringbuf_offset_ptr(buf, ringbuf_read_ptr, buf->item_size);

    if ( get_all != RINGBUF_GET_ONE ) {
        buf->read_ptr = buf->write_ptr;
    } else {
        buf->read_ptr = get_start;
    }

    if ( start != 
# 350 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                 ((void *)0) 
# 350 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                      ) *start = get_start;
    if ( end != 
# 351 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
               ((void *)0) 
# 351 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                    ) *end = buf->read_ptr;
    return 0;
}

static inline void sdio_ringbuf_return_from_isr(sdio_ringbuf_t* buf, uint8_t *ptr, int *yield)
{
    ((sdio_ringbuf_offset_ptr(buf, ringbuf_free_ptr, buf->item_size) == ptr) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c", 357, __func__, "sdio_ringbuf_offset_ptr(buf, ringbuf_free_ptr, buf->item_size) == ptr"));
    int size = (buf->read_ptr + buf->size - buf->free_ptr)%buf->size;
    int count = size/buf->item_size;
    ((count*buf->item_size==size) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c", 360, __func__, "count*buf->item_size==size"));
    buf->free_ptr = buf->read_ptr;
    for( int i = 0; i < count; i ++ ) {
        int ret = xQueueGiveFromISR( ( QueueHandle_t ) ( buf->remain_cnt ), ( yield ) );
        ((ret == ( ( BaseType_t ) 1 )) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c", 364, __func__, "ret == pdTRUE"));
    }
}

static inline void sdio_ringbuf_return(sdio_ringbuf_t* buf, uint8_t *ptr)
{
    ((sdio_ringbuf_offset_ptr(buf, ringbuf_free_ptr, buf->item_size) == ptr) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c", 370, __func__, "sdio_ringbuf_offset_ptr(buf, ringbuf_free_ptr, buf->item_size) == ptr"));
    int size = (buf->read_ptr + buf->size - buf->free_ptr)%buf->size;
    int count = size/buf->item_size;
    ((count*buf->item_size==size) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c", 373, __func__, "count*buf->item_size==size"));
    buf->free_ptr = buf->read_ptr;
    for( int i = 0; i < count; i ++ ) {
        int ret = xQueueGenericSend( ( QueueHandle_t ) ( buf->remain_cnt ), 
# 376 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                           ((void *)0)
# 376 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                           , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
        ((ret == ( ( BaseType_t ) 1 )) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c", 377, __func__, "ret == pdTRUE"));
    }
}

static inline uint8_t* sdio_ringbuf_peek_front(sdio_ringbuf_t* buf)
{
    if ( buf->read_ptr != buf->write_ptr ) {
        return sdio_ringbuf_offset_ptr(buf, ringbuf_read_ptr, buf->item_size);
    } else {
        return 
# 386 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
              ((void *)0)
# 386 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                  ;
    }
}

static inline uint8_t* sdio_ringbuf_peek_rear( sdio_ringbuf_t *buf )
{
    return buf->write_ptr;
}

static inline 
# 395 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
             _Bool 
# 395 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                  sdio_ringbuf_empty( sdio_ringbuf_t* buf )
{
    return (buf->read_ptr == buf->write_ptr? 
# 397 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                                            1 
# 397 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                                                 : 
# 397 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                                                   0
# 397 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                                                        );
}


static inline void show_ll(buf_desc_t *item)
{
   do { if (3 >= ESP_LOG_DEBUG) { ets_printf( "D" " (%d) %s: " "=> %p: size: %d(%d), eof: %d, owner: %d" "\033[0m" "\n", esp_log_timestamp(), TAG, item, item->size, item->length, item->eof, item->owner); }} while(0);
    do { if (3 >= ESP_LOG_DEBUG) { ets_printf( "D" " (%d) %s: " "   buf: %p, stqe_next: %p, tqe-prev: %p" "\033[0m" "\n", esp_log_timestamp(), TAG, item->buf, item->qe.stqe_next, item->te.tqe_prev); }} while(0);
}

static void __attribute((unused)) dump_ll(buf_stailq_t *queue)
{
    buf_desc_t *item = 
# 409 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                      ((void *)0)
# 409 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                          ;
    do { if (3 >= ESP_LOG_DEBUG) { ets_printf( "D" " (%d) %s: " ">>>>> first: %p, last: %p <<<<<" "\033[0m" "\n", esp_log_timestamp(), TAG, queue->stqh_first, queue->stqh_last); }} while(0);
    for((item) = (((queue))->stqh_first); (item); (item) = (((item))->qe.stqe_next)) {
        show_ll(item);
    }
}

static inline void deinit_context()
{
    context.config = (sdio_slave_config_t){};
    for( int i = 0; i < 9; i ++ ) {
        if ( context.events[i] != 
# 420 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                                 ((void *)0) 
# 420 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                                      ) {
            vQueueDelete( ( QueueHandle_t ) ( context.events[i] ) );
            context.events[i] = 
# 422 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                               ((void *)0)
# 422 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                                   ;
        }
    }
    if ( context.ret_queue != 
# 425 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                             ((void *)0) 
# 425 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                                  ) {
        vQueueDelete(context.ret_queue);
        context.ret_queue = 
# 427 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                           ((void *)0)
# 427 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                               ;
    }
    sdio_ringbuf_deinit( &context.sendbuf );
}

esp_err_t link_desc_to_last(uint8_t* desc, void* arg)
{
    (((buf_desc_t*)arg)->qe.stqe_next) = (buf_desc_t*)desc;
    return 0;
}

static esp_err_t init_ringbuf()
{
    esp_err_t ret = sdio_ringbuf_init( &context.sendbuf, sizeof(buf_desc_t), context.config.send_queue_size );
    if ( ret != 0 ) return ret;

    esp_err_t rcv_res;
    buf_desc_t *first=
# 444 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                     ((void *)0)
# 444 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                         , *last=
# 444 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                                 ((void *)0)
# 444 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                                     ;


    ret = sdio_ringbuf_send( &context.sendbuf, 
# 447 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                                              ((void *)0)
# 447 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                                                  , 
# 447 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                                                    ((void *)0)
# 447 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                                                        , ( TickType_t ) 0xffffffffUL);
    if ( ret != 0 ) return ret;


    for ( int i = 0; i < context.config.send_queue_size+1; i++ ) {
        rcv_res = sdio_ringbuf_recv( &context.sendbuf, (uint8_t**)&last, 
# 452 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                                                                        ((void *)0)
# 452 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                                                                            , RINGBUF_GET_ONE, 0 );
        ((rcv_res == 0) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c", 453, __func__, "rcv_res == ESP_OK"));
        ret = sdio_ringbuf_send( &context.sendbuf, link_desc_to_last, last, ( TickType_t ) 0xffffffffUL);
        if ( ret != 0 ) return ret;
        sdio_ringbuf_return(&context.sendbuf, (uint8_t*)last);
    }
    first = 
# 458 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
           ((void *)0)
# 458 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
               ;
    last = 
# 459 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
          ((void *)0)
# 459 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
              ;

    rcv_res = sdio_ringbuf_recv( &context.sendbuf, (uint8_t**)&first, (uint8_t**)&last, RINGBUF_GET_ALL, 0 );
    ((rcv_res == 0) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c", 462, __func__, "rcv_res == ESP_OK"));
    ((first == last) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c", 463, __func__, "first == last"));
    sdio_ringbuf_return(&context.sendbuf, (uint8_t*)first );
    return 0;
}

static esp_err_t init_context(sdio_slave_config_t *config)
{
    do { if(!(*(uint32_t*)&context.config == 0)){ do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):""%s" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",470,__FUNCTION__, "sdio slave already initialized"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):""%s" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",470,__FUNCTION__, "sdio slave already initialized"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "%s:%d (%s):""%s" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",470,__FUNCTION__, "sdio slave already initialized"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "%s:%d (%s):""%s" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",470,__FUNCTION__, "sdio slave already initialized"); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):""%s" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",470,__FUNCTION__, "sdio slave already initialized"); } } while(0); } while(0); return 0x103;} }while (0);

    context.config = *config;



    context.recv_event = xQueueCreateCountingSemaphore( ( 0xffffffffUL ), ( 0 ) );
    for( int i = 0; i < 9; i ++ ) {
        if ( i < 8 ) {
            context.events[i] = xQueueGenericCreate( ( UBaseType_t ) 1, ( ( uint8_t ) 0U ), ( ( uint8_t ) 3U ) );
        }
        if ( context.events[i] == 
# 481 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                                 ((void *)0) 
# 481 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                                      ) {
            do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):""event initialize failed" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",482,__FUNCTION__); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):""event initialize failed" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",482,__FUNCTION__); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "%s:%d (%s):""event initialize failed" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",482,__FUNCTION__); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "%s:%d (%s):""event initialize failed" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",482,__FUNCTION__); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):""event initialize failed" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",482,__FUNCTION__); } } while(0); } while(0);
            goto no_mem;
        }
    }

    esp_err_t ret = init_ringbuf();
    if ( ret != 0 ) goto no_mem;

    context.ret_queue = xQueueGenericCreate( ( config->send_queue_size ), ( sizeof(void*) ), ( ( ( uint8_t ) 0U ) ) );
    if ( context.ret_queue == 
# 491 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                             ((void *)0) 
# 491 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                                  ) goto no_mem;

    context.recv_link_list = (buf_stailq_t){ 
# 493 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                                          ((void *)0)
# 493 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                                          , &(context.recv_link_list).stqh_first };
    context.recv_reg_list = (buf_tailq_t){ 
# 494 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                                         ((void *)0)
# 494 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                                         , &(context.recv_reg_list).tqh_first };
    return 0;

no_mem:
    deinit_context();
    return 0x101;
}

static void configure_pin(int pin, uint32_t func, 
# 502 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                                                 _Bool 
# 502 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                                                      pullup)
{
    const int sdmmc_func = func;
    const int drive_strength = 3;
    ((pin!=-1) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c", 506, __func__, "pin!=-1"));
    uint32_t reg = GPIO_PIN_MUX_REG[pin];
    ((reg!=0) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c", 508, __func__, "reg!=0"));

    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((reg)) >= 0x3ff00000) && ((reg)) <= 0x3ff13FFC)), (!((((reg)) >= 0x3ff00000) && ((reg)) <= 0x3ff13FFC)), 1), "(Cannot use SET_PERI_REG_MASK for DPORT registers use DPORT_SET_PERI_REG_MASK)"); (("(Cannot use SET_PERI_REG_MASK for DPORT registers use DPORT_SET_PERI_REG_MASK)" && (!((((reg)) >= 0x3ff00000) && ((reg)) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c", 510, __func__, "\"(Cannot use SET_PERI_REG_MASK for DPORT registers use DPORT_SET_PERI_REG_MASK)\" && (!((((reg)) >= 0x3ff00000) && ((reg)) <= 0x3ff13FFC))")); } while(0);; ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((reg))) >= 0x3ff00000) && (((reg))) <= 0x3ff13FFC)), (!(((((reg))) >= 0x3ff00000) && (((reg))) <= 0x3ff13FFC)), 1), "(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)"); (("(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)" && (!(((((reg))) >= 0x3ff00000) && (((reg))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c", 510, __func__, "\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!(((((reg))) >= 0x3ff00000) && (((reg))) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)((reg)))) = (uint32_t)((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((reg)) >= 0x3ff00000) && ((reg)) <= 0x3ff13FFC)), (!((((reg)) >= 0x3ff00000) && ((reg)) <= 0x3ff13FFC)), 1), "(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)"); (("(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)" && (!((((reg)) >= 0x3ff00000) && ((reg)) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c", 510, __func__, "\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!((((reg)) >= 0x3ff00000) && ((reg)) <= 0x3ff13FFC))")); } while(0);; (*((volatile uint32_t *)(reg))); })|(((1UL << (9)))))); }); });
    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((reg)) >= 0x3ff00000) && ((reg)) <= 0x3ff13FFC)), (!((((reg)) >= 0x3ff00000) && ((reg)) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)"); (("(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)" && (!((((reg)) >= 0x3ff00000) && ((reg)) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c", 511, __func__, "\"(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)\" && (!((((reg)) >= 0x3ff00000) && ((reg)) <= 0x3ff13FFC))")); } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((reg))) >= 0x3ff00000) && (((reg))) <= 0x3ff13FFC)), (!(((((reg))) >= 0x3ff00000) && (((reg))) <= 0x3ff13FFC)), 1), "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)"); (("(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)" && (!(((((reg))) >= 0x3ff00000) && (((reg))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c", 511, __func__, "\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!(((((reg))) >= 0x3ff00000) && (((reg))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((reg))) = (((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((reg)) >= 0x3ff00000) && ((reg)) <= 0x3ff13FFC)), (!((((reg)) >= 0x3ff00000) && ((reg)) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!((((reg)) >= 0x3ff00000) && ((reg)) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c", 511, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!((((reg)) >= 0x3ff00000) && ((reg)) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)(reg)); }) & ~((0x7) << (12)))|(((sdmmc_func) & (0x7))<<(12)))); })); });
    ({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((reg)) >= 0x3ff00000) && ((reg)) <= 0x3ff13FFC)), (!((((reg)) >= 0x3ff00000) && ((reg)) <= 0x3ff13FFC)), 1), "(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)"); (("(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)" && (!((((reg)) >= 0x3ff00000) && ((reg)) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c", 512, __func__, "\"(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)\" && (!((((reg)) >= 0x3ff00000) && ((reg)) <= 0x3ff13FFC))")); } while(0);; (({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!(((((reg))) >= 0x3ff00000) && (((reg))) <= 0x3ff13FFC)), (!(((((reg))) >= 0x3ff00000) && (((reg))) <= 0x3ff13FFC)), 1), "(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)"); (("(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)" && (!(((((reg))) >= 0x3ff00000) && (((reg))) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c", 512, __func__, "\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!(((((reg))) >= 0x3ff00000) && (((reg))) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)((reg))) = (((({ do { _Static_assert(__builtin_choose_expr(__builtin_constant_p(!((((reg)) >= 0x3ff00000) && ((reg)) <= 0x3ff13FFC)), (!((((reg)) >= 0x3ff00000) && ((reg)) <= 0x3ff13FFC)), 1), "(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)"); (("(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)" && (!((((reg)) >= 0x3ff00000) && ((reg)) <= 0x3ff13FFC))) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c", 512, __func__, "\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!((((reg)) >= 0x3ff00000) && ((reg)) <= 0x3ff13FFC))")); } while(0);; (*(volatile uint32_t *)(reg)); }) & ~((0x3) << (10)))|((((drive_strength)) & (0x3))<<(10)))); })); });;
    gpio_pulldown_dis(pin);
}

static inline esp_err_t sdio_slave_hw_init(sdio_slave_config_t *config)
{

    SLC.slc0_int_ena.val = 0;


    const sdio_slave_slot_info_t *slot = &s_slot_info[1];
    configure_pin(slot->clk_gpio, slot->func, 
# 523 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                                             0
# 523 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                                                  );
    configure_pin(slot->cmd_gpio, slot->func, 
# 524 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                                             0
# 524 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                                                  );
    configure_pin(slot->d0_gpio, slot->func, 
# 525 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                                            0
# 525 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                                                 );
    configure_pin(slot->d1_gpio, slot->func, 
# 526 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                                            0
# 526 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                                                 );
    configure_pin(slot->d2_gpio, slot->func, 
# 527 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                                            0
# 527 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                                                 );
    configure_pin(slot->d3_gpio, slot->func, 
# 528 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                                            0
# 528 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                                                 );


    periph_module_reset(PERIPH_SDIO_SLAVE_MODULE);
    periph_module_enable(PERIPH_SDIO_SLAVE_MODULE);

    SLC.conf0.slc0_rx_auto_wrback = 1;
    SLC.conf0.slc0_token_auto_clr = 0;
    SLC.conf0.slc0_rx_loop_test = 0;
    SLC.conf0.slc0_tx_loop_test = 0;

    SLC.conf1.slc0_rx_stitch_en = 0;
    SLC.conf1.slc0_tx_stitch_en = 0;
    SLC.conf1.slc0_len_auto_clr = 0;

    SLC.rx_dscr_conf.slc0_token_no_replace = 1;
    HINF.cfg_data1.highspeed_enable = 1;

    switch( config->timing ) {
        case SDIO_SLAVE_TIMING_PSEND_PSAMPLE:
            HOST.conf.frc_sdio20 = 0x1f;
            HOST.conf.frc_sdio11 = 0;
            HOST.conf.frc_pos_samp = 0x1f;
            HOST.conf.frc_neg_samp = 0;
            break;
        case SDIO_SLAVE_TIMING_PSEND_NSAMPLE:
            HOST.conf.frc_sdio20 = 0x1f;
            HOST.conf.frc_sdio11 = 0;
            HOST.conf.frc_pos_samp = 0;
            HOST.conf.frc_neg_samp = 0x1f;
            break;
        case SDIO_SLAVE_TIMING_NSEND_PSAMPLE:
            HOST.conf.frc_sdio20 = 0;
            HOST.conf.frc_sdio11 = 0x1f;
            HOST.conf.frc_pos_samp = 0x1f;
            HOST.conf.frc_neg_samp = 0;
            break;
        case SDIO_SLAVE_TIMING_NSEND_NSAMPLE:
            HOST.conf.frc_sdio20 = 0;
            HOST.conf.frc_sdio11 = 0x1f;
            HOST.conf.frc_pos_samp = 0;
            HOST.conf.frc_neg_samp = 0x1f;
            break;
    }

    SLC.slc0_int_ena.frhost_bit0 = 1;
    SLC.slc0_int_ena.frhost_bit1 = 1;
    SLC.slc0_int_ena.frhost_bit2 = 1;
    SLC.slc0_int_ena.frhost_bit3 = 1;
    SLC.slc0_int_ena.frhost_bit4 = 1;
    SLC.slc0_int_ena.frhost_bit5 = 1;
    SLC.slc0_int_ena.frhost_bit6 = 1;
    SLC.slc0_int_ena.frhost_bit7 = 1;

    return 0;
}

esp_err_t sdio_slave_initialize(sdio_slave_config_t *config)
{
    esp_err_t r;
    intr_handle_t intr_handle = 
# 588 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                               ((void *)0)
# 588 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                                   ;
    const int flags = 0;
    r = esp_intr_alloc(10, flags, sdio_intr, 
# 590 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                                                              ((void *)0)
# 590 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                                                                  , &intr_handle);
    if (r != 0 ) return r;

    r = sdio_slave_hw_init(config);
    if ( r != 0 ) return r;
    r = init_context(config);
    if ( r != 0 ) return r;
    context.intr_handle = intr_handle;

    sdio_slave_reset();
    return 0;
}

void sdio_slave_deinit()
{
    esp_err_t ret = esp_intr_free(context.intr_handle);
    ((ret==0) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c", 606, __func__, "ret==ESP_OK"));
    context.intr_handle = 
# 607 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                         ((void *)0)
# 607 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                             ;
    deinit_context();
}

esp_err_t sdio_slave_start()
{
    esp_err_t ret;
    HOST.slc0_int_clr.val = 0xffffffffUL;
    ret = send_start();
    if ( ret != 0 ) return ret;
    ret = recv_start();
    if ( ret != 0 ) return ret;
    HINF.cfg_data1.sdio_ioready1 = 1;
    return 0;
}

esp_err_t sdio_slave_reset()
{
    send_flush_data();
    send_reset_counter();
    recv_flush_data();
    recv_reset_counter();
    return 0;
}

void sdio_slave_stop()
{
    HINF.cfg_data1.sdio_ioready1 = 0;
    send_stop();
    recv_stop();
}






static void sdio_intr(void* arg)
{
    uint32_t int_val = SLC.slc0_int_st.val;
    uint32_t int_raw = SLC.slc0_int_raw.val;
    do { if (3 >= ESP_LOG_VERBOSE) { ets_printf( "V" " (%d) %s: " "sdio_intr: %08X(%08X)" "\033[0m" "\n", esp_log_timestamp(), TAG, int_val, int_raw); }} while(0);

    if ( int_val & (((1UL << (20))) | ((1UL << (17))) | ((1UL << (16))) | ((1UL << (10))) | ((1UL << (8)))) ) sdio_intr_send(arg);
    if ( int_val & (((1UL << (24))) | ((1UL << (21))) | ((1UL << (19))) | ((1UL << (15))) | ((1UL << (14))) | ((1UL << (11))) | ((1UL << (9)))) ) sdio_intr_recv(arg);
    if ( int_val & (((1UL << (7))) | ((1UL << (6))) | ((1UL << (5))) | ((1UL << (4))) | ((1UL << (3))) | ((1UL << (2))) | ((1UL << (1))) | ((1UL << (0)))) ) sdio_intr_host(arg);
}




static void sdio_intr_host(void* arg)
{
    uint8_t int_val = SLC.slc0_int_st.val & 0xff;

    int yield = ( ( BaseType_t ) 0 );
    SLC.slc0_int_clr.val = int_val;
    for( int i = 0; i < 8; i ++ ) {
        if ( (1UL << (i)) & int_val ) {
            if ( context.config.event_cb != 
# 666 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                                           ((void *)0) 
# 666 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                                                ) (*context.config.event_cb)(i);
            xQueueGiveFromISR( ( QueueHandle_t ) ( context.events[i] ), ( &yield ) );
        }
    }
    if ( yield ) {; _frxt_setup_switch();};
}

esp_err_t sdio_slave_wait_int(int pos, TickType_t wait)
{
    do { if(!(pos >= 0 && pos < 8)){ do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):""%s" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",675,__FUNCTION__, "interrupt num invalid"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):""%s" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",675,__FUNCTION__, "interrupt num invalid"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "%s:%d (%s):""%s" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",675,__FUNCTION__, "interrupt num invalid"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "%s:%d (%s):""%s" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",675,__FUNCTION__, "interrupt num invalid"); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):""%s" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",675,__FUNCTION__, "interrupt num invalid"); } } while(0); } while(0); return 0x102;} }while (0);
    return xQueueGenericReceive( ( QueueHandle_t ) ( context.events[pos] ), 
# 676 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
          ((void *)0)
# 676 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
          , ( wait ), ( ( BaseType_t ) 0 ) );
}


uint8_t sdio_slave_read_reg(int pos)
{
    if ( pos >= 28 && pos <= 31 ) do { if ( 3 >= ESP_LOG_WARN ) do { if (ESP_LOG_WARN==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s: ""%s: interrupt reg, for reference" "\033[0m" "\n", esp_log_timestamp(), TAG, __FUNCTION__, __FUNCTION__); } else if (ESP_LOG_WARN==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s: ""%s: interrupt reg, for reference" "\033[0m" "\n", esp_log_timestamp(), TAG, __FUNCTION__, __FUNCTION__); } else if (ESP_LOG_WARN==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "%s: ""%s: interrupt reg, for reference" "\033[0m" "\n", esp_log_timestamp(), TAG, __FUNCTION__, __FUNCTION__); } else if (ESP_LOG_WARN==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "%s: ""%s: interrupt reg, for reference" "\033[0m" "\n", esp_log_timestamp(), TAG, __FUNCTION__, __FUNCTION__); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s: ""%s: interrupt reg, for reference" "\033[0m" "\n", esp_log_timestamp(), TAG, __FUNCTION__, __FUNCTION__); } } while(0); } while(0);
    if ( pos < 0 || pos >= 64 ) do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):""read register address wrong" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",683,__FUNCTION__); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):""read register address wrong" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",683,__FUNCTION__); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "%s:%d (%s):""read register address wrong" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",683,__FUNCTION__); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "%s:%d (%s):""read register address wrong" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",683,__FUNCTION__); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):""read register address wrong" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",683,__FUNCTION__); } } while(0); } while(0);

    return *(uint8_t*)(((0x3ff55000 + 0x6C)+pos+(pos>23?4:0)+(pos>31?12:0)));
}

esp_err_t sdio_slave_write_reg(int pos, uint8_t reg)
{
    if ( pos >= 28 && pos <= 31 ) {
        do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):""interrupt reg, please use sdio_slave_clear_int" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",691,__FUNCTION__); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):""interrupt reg, please use sdio_slave_clear_int" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",691,__FUNCTION__); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "%s:%d (%s):""interrupt reg, please use sdio_slave_clear_int" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",691,__FUNCTION__); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "%s:%d (%s):""interrupt reg, please use sdio_slave_clear_int" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",691,__FUNCTION__); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):""interrupt reg, please use sdio_slave_clear_int" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",691,__FUNCTION__); } } while(0); } while(0);
        return 0x102;
    }
    if ( pos < 0 || pos >= 64 ) {
        do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):""write register address wrong" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",695,__FUNCTION__); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):""write register address wrong" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",695,__FUNCTION__); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "%s:%d (%s):""write register address wrong" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",695,__FUNCTION__); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "%s:%d (%s):""write register address wrong" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",695,__FUNCTION__); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):""write register address wrong" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",695,__FUNCTION__); } } while(0); } while(0);
        return 0x102;
    }
    uint32_t addr = ((0x3ff55000 + 0x6C)+pos+(pos>23?4:0)+(pos>31?12:0)) & (~3);
    uint32_t shift = (pos % 4)*8;

    vTaskEnterCritical(&context.reg_spinlock);
    int val = *(uint32_t*)addr;
    *(uint32_t*)addr = (val & ~(0xff << shift)) | (reg<<shift);
    vTaskExitCritical(&context.reg_spinlock);
    return 0;
}

sdio_slave_hostint_t sdio_slave_get_host_intena()
{
    return HOST.slc0_func1_int_ena.val;
}

void sdio_slave_set_host_intena(sdio_slave_hostint_t ena)
{
    HOST.slc0_func1_int_ena.val = ena;
}

void sdio_slave_clear_host_int(uint8_t mask)
{
    SLC.intvec_tohost.slc0_intvec = mask;
}

esp_err_t sdio_slave_send_host_int( uint8_t pos )
{
    do { if(!(pos < 8)){ do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):""%s" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",725,__FUNCTION__, "interrupt num invalid"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):""%s" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",725,__FUNCTION__, "interrupt num invalid"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "%s:%d (%s):""%s" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",725,__FUNCTION__, "interrupt num invalid"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "%s:%d (%s):""%s" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",725,__FUNCTION__, "interrupt num invalid"); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):""%s" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",725,__FUNCTION__, "interrupt num invalid"); } } while(0); } while(0); return 0x102;} }while (0);
    SLC.intvec_tohost.slc0_intvec = (1UL << (pos));
    return 0;
}
# 739 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
static inline void send_length_write(uint32_t len)
{
    SLC.slc0_len_conf.val = (((len)<<0) & (0x000FFFFF)) | (((1)<<20) & (((1UL << (20)))));
    do { if (3 >= ESP_LOG_VERBOSE) { ets_printf( "V" " (%d) %s: " "send_length_write: %d, last_len: %08X" "\033[0m" "\n", esp_log_timestamp(), TAG, len, HOST.pkt_len.reg_slc0_len); }} while(0);
}

static inline void send_start_transmission(const void* desc)
{

    SLC.conf0.slc0_rx_rst = 1;
    SLC.conf0.slc0_rx_rst = 0;
    SLC.slc0_rx_link.addr = (uint32_t)desc;
    SLC.slc0_rx_link.start = 1;
}

static inline void send_stop_ll_operation()
{
    SLC.slc0_rx_link.stop = 1;
}

static inline uint32_t send_length_read()
{
    return HOST.pkt_len.reg_slc0_len;
}

__attribute__((aligned(4))) __attribute__((section(".dram1"))) static const buf_desc_t start_desc = {
    .owner = 1,
    .buf = (void*)0x3ffbbbbb,
    .size = 1,
    .length = 1,
    .eof = 1,
};

static inline void send_isr_invoker_enable()
{

    send_start_transmission( &start_desc );

    while( !SLC.slc0_int_raw.rx_done );
    HOST.slc0_int_clr.rx_new_packet = 1;
    send_stop_ll_operation();
}

static inline void send_isr_invoker_disable()
{
    SLC.slc0_int_clr.rx_done = 1;
}

static inline void send_intr_enable()
{
    SLC.slc0_int_ena.rx_eof = 1;
    send_isr_invoker_enable();
}

static inline void send_intr_disable()
{
    send_isr_invoker_disable();
    SLC.slc0_int_ena.rx_eof = 0;
}

static inline void send_isr_invoke()
{
    SLC.slc0_int_ena.rx_done = 1;
}

static inline send_state_t send_get_state()
{
    return context.send_state;
}

static inline void send_set_state(send_state_t state)
{
    context.send_state = state;
}


static esp_err_t send_start()
{
    do { if(!(send_get_state() == STATE_IDLE)){ do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):""%s" "\033[0m" "\n", esp_log_timestamp(), TAG,
 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
# 817 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
    ,
 818
# 817 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
    ,__FUNCTION__, "already started"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):""%s" "\033[0m" "\n", esp_log_timestamp(), TAG,
 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
# 817 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
    ,
 818
# 817 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
    ,__FUNCTION__, "already started"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "%s:%d (%s):""%s" "\033[0m" "\n", esp_log_timestamp(), TAG,
 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
# 817 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
    ,
 818
# 817 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
    ,__FUNCTION__, "already started"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "%s:%d (%s):""%s" "\033[0m" "\n", esp_log_timestamp(), TAG,
 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
# 817 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
    ,
 818
# 817 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
    ,__FUNCTION__, "already started"); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):""%s" "\033[0m" "\n", esp_log_timestamp(), TAG,
 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
# 817 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
    ,
 818
# 817 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
    ,__FUNCTION__, "already started"); } } while(0); } while(0); return 0x103;} }while (0)
                                                  ;
    SLC.slc0_int_clr.rx_eof = 1;
    send_set_state( STATE_WAIT_FOR_START );
    send_intr_enable();
    return 0;
}


static void send_stop()
{
    SLC.slc0_rx_link.stop = 1;
    send_intr_disable();

    send_set_state( STATE_IDLE );
}

static inline esp_err_t send_isr_eof(int *yield)
{

    int ret = ( ( BaseType_t ) 1 );
    buf_desc_t *desc = context.in_flight;
    ((desc != 
# 839 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
   ((void *)0)
# 839 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
   ) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c", 839, __func__, "desc != NULL"));

    do {
        do { if (3 >= ESP_LOG_VERBOSE) { ets_printf( "V" " (%d) %s: " "end: %x" "\033[0m" "\n", esp_log_timestamp(), TAG, desc->arg); }} while(0);
        ret = xQueueGenericSendFromISR( ( context.ret_queue ), ( &desc->arg ), ( yield ), ( ( BaseType_t ) 0 ) );
        ((ret == ( ( BaseType_t ) 1 )) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c", 844, __func__, "ret == pdTRUE"));
        buf_desc_t* next = ((desc)->qe.stqe_next);
        desc = next;
    } while(desc!=
# 847 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                 ((void *)0)
# 847 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                     );
    ((context.in_flight_end)->qe.stqe_next) = context.in_flight_next;
    sdio_ringbuf_return_from_isr(&context.sendbuf, (uint8_t*)context.in_flight, yield);
    context.in_flight = 
# 850 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                       ((void *)0)
# 850 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                           ;
    context.in_flight_end = 
# 851 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                           ((void *)0)
# 851 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                               ;

    send_set_state( STATE_WAIT_FOR_START );
    return 0;
}

static inline esp_err_t send_isr_check_new_pkt(int *yield)
{
    esp_err_t ret;
    buf_desc_t *start = 
# 860 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                       ((void *)0)
# 860 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                           ;
    buf_desc_t *end = 
# 861 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                     ((void *)0)
# 861 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                         ;
    if ( context.config.sending_mode == SDIO_SLAVE_SEND_PACKET ) {
        ret = sdio_ringbuf_recv( &context.sendbuf, (uint8_t**)&start, (uint8_t**)&end, RINGBUF_GET_ONE, 0);
    } else {
        ret = sdio_ringbuf_recv( &context.sendbuf, (uint8_t**)&start, (uint8_t**)&end, RINGBUF_GET_ALL, 0);
    }
    if ( ret == 0 ) {
        context.in_flight = start;
        context.in_flight_end = end;
        end->eof = 1;

        context.in_flight_next = ((end)->qe.stqe_next);
        ((end)->qe.stqe_next) = 
# 873 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                              ((void *)0)
# 873 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                                  ;
    }
    return 0;
}

static inline esp_err_t send_isr_new_packet()
{


    buf_desc_t *const start_desc = context.in_flight;
    buf_desc_t *const end_desc = context.in_flight_end;
    ((start_desc != 
# 884 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
   ((void *)0) 
# 884 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
   && end_desc != 
# 884 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
   ((void *)0)
# 884 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
   ) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c", 884, __func__, "start_desc != NULL && end_desc != NULL"));

    send_stop_ll_operation();
    send_start_transmission( start_desc );


    send_length_write( end_desc->pkt_len );

    send_set_state( STATE_SENDING );

    do { if (3 >= ESP_LOG_DEBUG) { ets_printf( "D" " (%d) %s: " "restart new send: %p->%p, pkt_len: %d" "\033[0m" "\n", esp_log_timestamp(), TAG, start_desc, end_desc, end_desc->pkt_len); }} while(0);
    return 0;
}

static void sdio_intr_send(void* arg)
{
    do { if (3 >= ESP_LOG_VERBOSE) { ets_printf( "V" " (%d) %s: " "intr_send" "\033[0m" "\n", esp_log_timestamp(), TAG); }} while(0);
    int yield = ( ( BaseType_t ) 0 );


    if ( SLC.slc0_int_st.rx_done ) SLC.slc0_int_ena.rx_done = 0;



    if ( SLC.slc0_int_st.rx_eof ) {
        SLC.slc0_int_clr.rx_eof = 1;

        ((send_get_state() == STATE_SENDING) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c", 911, __func__, "send_get_state() == STATE_SENDING"));
        send_isr_eof(&yield);
    }



    if ( send_get_state() == STATE_WAIT_FOR_START ) {
        if ( context.in_flight == 
# 918 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                                 ((void *)0) 
# 918 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                                      ) send_isr_check_new_pkt(&yield);

        if ( context.in_flight ) send_isr_new_packet();
    }

    if ( yield ) {; _frxt_setup_switch();};
}

esp_err_t send_write_desc(uint8_t* desc, void* arg)
{
    buf_desc_t *new_desc = (buf_desc_t*)arg;
    buf_desc_t *tail = (buf_desc_t*)sdio_ringbuf_peek_rear(&context.sendbuf);
    new_desc->pkt_len = tail->pkt_len + new_desc->size;

    ((new_desc)->qe.stqe_next) = (((buf_desc_t*)desc)->qe.stqe_next);

    memcpy( desc, new_desc, sizeof(buf_desc_t) );
    return 0;
}

esp_err_t sdio_slave_send_queue(uint8_t* addr, size_t len, void* arg, TickType_t wait)
{
    do { if(!(len > 0)){ do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):""%s" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",940,__FUNCTION__, "len <= 0"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):""%s" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",940,__FUNCTION__, "len <= 0"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "%s:%d (%s):""%s" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",940,__FUNCTION__, "len <= 0"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "%s:%d (%s):""%s" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",940,__FUNCTION__, "len <= 0"); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):""%s" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",940,__FUNCTION__, "len <= 0"); } } while(0); } while(0); return 0x102;} }while (0);
    do { if(!(esp_ptr_dma_capable(addr) && (uint32_t)addr%4==0)){ do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):""%s" "\033[0m" "\n", esp_log_timestamp(), TAG,
 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
# 941 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
    ,
 942
# 941 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
    ,__FUNCTION__, "buffer to send should be DMA capable and 32-bit aligned"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):""%s" "\033[0m" "\n", esp_log_timestamp(), TAG,
 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
# 941 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
    ,
 942
# 941 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
    ,__FUNCTION__, "buffer to send should be DMA capable and 32-bit aligned"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "%s:%d (%s):""%s" "\033[0m" "\n", esp_log_timestamp(), TAG,
 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
# 941 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
    ,
 942
# 941 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
    ,__FUNCTION__, "buffer to send should be DMA capable and 32-bit aligned"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "%s:%d (%s):""%s" "\033[0m" "\n", esp_log_timestamp(), TAG,
 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
# 941 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
    ,
 942
# 941 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
    ,__FUNCTION__, "buffer to send should be DMA capable and 32-bit aligned"); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):""%s" "\033[0m" "\n", esp_log_timestamp(), TAG,
 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
# 941 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
    ,
 942
# 941 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
    ,__FUNCTION__, "buffer to send should be DMA capable and 32-bit aligned"); } } while(0); } while(0); return 0x102;} }while (0)
                            ;

    buf_desc_t new_desc = {
        .size = len,
        .length = len,
        .buf = addr,
        .owner = 1,

        .eof = (context.config.sending_mode == SDIO_SLAVE_SEND_PACKET?1:0),
        .arg = arg,
    };

    esp_err_t ret = sdio_ringbuf_send(&context.sendbuf, send_write_desc, &new_desc, wait);
    if ( ret != 0 ) return ret;

    send_isr_invoke();
    return 0;
}

esp_err_t sdio_slave_send_get_finished(void** out_arg, TickType_t wait)
{
    void* arg = 
# 963 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
               ((void *)0)
# 963 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                   ;
    int err = xQueueGenericReceive( ( context.ret_queue ), ( &arg ), ( wait ), ( ( BaseType_t ) 0 ) );
    if (out_arg) *out_arg = arg;
    if ( err != ( ( BaseType_t ) 1 ) ) return 0x107;
    return 0;
}

esp_err_t sdio_slave_transmit(uint8_t* addr, size_t len)
{
    uint32_t timestamp = ({ int __ccount; __asm__ __volatile__("rsr.ccount %0" : "=a"(__ccount)); __ccount; });
    uint32_t ret_stamp;

    esp_err_t err = sdio_slave_send_queue( addr, len, (void*)timestamp, ( TickType_t ) 0xffffffffUL );
    if ( err != 0 ) return err;
    err = sdio_slave_send_get_finished( (void**)&ret_stamp, ( TickType_t ) 0xffffffffUL );
    if ( err != 0 ) return err;
    do { if(!(ret_stamp == timestamp)){ do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):""%s" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",979,__FUNCTION__, "already sent without return before"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):""%s" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",979,__FUNCTION__, "already sent without return before"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "%s:%d (%s):""%s" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",979,__FUNCTION__, "already sent without return before"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "%s:%d (%s):""%s" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",979,__FUNCTION__, "already sent without return before"); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):""%s" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",979,__FUNCTION__, "already sent without return before"); } } while(0); } while(0); return 0x103;} }while (0);

    return 0;
}


static esp_err_t send_flush_data()
{

    do { if(!(send_get_state() == STATE_IDLE)){ do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):""%s" "\033[0m" "\n", esp_log_timestamp(), TAG,
 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
# 988 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
    ,
 989
# 988 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
    ,__FUNCTION__, "flush data when transmission started"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):""%s" "\033[0m" "\n", esp_log_timestamp(), TAG,
 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
# 988 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
    ,
 989
# 988 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
    ,__FUNCTION__, "flush data when transmission started"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "%s:%d (%s):""%s" "\033[0m" "\n", esp_log_timestamp(), TAG,
 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
# 988 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
    ,
 989
# 988 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
    ,__FUNCTION__, "flush data when transmission started"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "%s:%d (%s):""%s" "\033[0m" "\n", esp_log_timestamp(), TAG,
 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
# 988 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
    ,
 989
# 988 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
    ,__FUNCTION__, "flush data when transmission started"); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):""%s" "\033[0m" "\n", esp_log_timestamp(), TAG,
 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
# 988 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
    ,
 989
# 988 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
    ,__FUNCTION__, "flush data when transmission started"); } } while(0); } while(0); return 0x103;} }while (0)
                                                                       ;

    HOST.slc0_int_clr.rx_new_packet = 1;

    buf_desc_t *last = 
# 993 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                      ((void *)0)
# 993 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                          ;
    if ( context.in_flight ) {
        buf_desc_t *desc = context.in_flight;
        while( desc != 
# 996 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                      ((void *)0) 
# 996 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                           ) {
            xQueueGenericSend( ( context.ret_queue ), ( desc->arg ), ( ( TickType_t ) 0xffffffffUL ), ( ( BaseType_t ) 0 ) );
            last = desc;
            desc = ((desc)->qe.stqe_next);
        }
        ((context.in_flight_end)->qe.stqe_next) = context.in_flight_next;
        sdio_ringbuf_return( &context.sendbuf, (uint8_t*)context.in_flight );
        context.in_flight = 
# 1003 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                           ((void *)0)
# 1003 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                               ;
        context.in_flight_end = 
# 1004 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                               ((void *)0)
# 1004 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                                   ;
    }

    buf_desc_t *head;
    esp_err_t ret = sdio_ringbuf_recv(&context.sendbuf, (uint8_t**)&head, 
# 1008 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                                                                         ((void *)0)
# 1008 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                                                                             , RINGBUF_GET_ALL, 0);
    if ( ret == 0 ) {
        buf_desc_t *desc = head;
        while( desc != 
# 1011 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                      ((void *)0) 
# 1011 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                           ) {
            xQueueGenericSend( ( context.ret_queue ), ( desc->arg ), ( ( TickType_t ) 0xffffffffUL ), ( ( BaseType_t ) 0 ) );
            last = desc;
            desc = ((desc)->qe.stqe_next);
        }
        sdio_ringbuf_return( &context.sendbuf, (uint8_t*)head );
    }




    send_set_state( STATE_IDLE );

    if ( last == 
# 1024 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                ((void *)0) 
# 1024 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                     ) last = (buf_desc_t*)sdio_ringbuf_peek_rear(&context.sendbuf);
    last->pkt_len = send_length_read();
    return 0;
}


static esp_err_t send_reset_counter()
{
    do { if(!(send_get_state() == STATE_IDLE)){ do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):""%s" "\033[0m" "\n", esp_log_timestamp(), TAG,
 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
# 1032 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
    ,
 1033
# 1032 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
    ,__FUNCTION__, "reset counter when transmission started"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):""%s" "\033[0m" "\n", esp_log_timestamp(), TAG,
 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
# 1032 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
    ,
 1033
# 1032 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
    ,__FUNCTION__, "reset counter when transmission started"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "%s:%d (%s):""%s" "\033[0m" "\n", esp_log_timestamp(), TAG,
 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
# 1032 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
    ,
 1033
# 1032 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
    ,__FUNCTION__, "reset counter when transmission started"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "%s:%d (%s):""%s" "\033[0m" "\n", esp_log_timestamp(), TAG,
 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
# 1032 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
    ,
 1033
# 1032 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
    ,__FUNCTION__, "reset counter when transmission started"); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):""%s" "\033[0m" "\n", esp_log_timestamp(), TAG,
 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
# 1032 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
    ,
 1033
# 1032 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
    ,__FUNCTION__, "reset counter when transmission started"); } } while(0); } while(0); return 0x103;} }while (0)
                                                                          ;

    send_length_write( 0 );

    uint32_t last_cnt=0;
    buf_desc_t *desc = context.in_flight;
    buf_desc_t *last = 
# 1039 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                      ((void *)0)
# 1039 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                          ;
    while( desc != 
# 1040 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                  ((void *)0) 
# 1040 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                       ) {
        last_cnt += desc->length;
        desc->pkt_len = last_cnt;
        last = desc;
        desc = ((desc)->qe.stqe_next);
    }


    desc = (buf_desc_t*)sdio_ringbuf_peek_front(&context.sendbuf);
    while( desc != 
# 1049 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                  ((void *)0) 
# 1049 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                       ) {
        last_cnt += desc->length;
        desc->pkt_len = last_cnt;
        last = desc;
        desc = ((desc)->qe.stqe_next);
    }
    if ( last == 
# 1055 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                ((void *)0) 
# 1055 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                     ) {
        last = (buf_desc_t*)sdio_ringbuf_peek_rear(&context.sendbuf);
        last->pkt_len = 0;
    }

    return 0;
}
# 1072 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
static inline void critical_enter_recv()
{
    vTaskEnterCritical(&context.recv_spinlock);
}

static inline void critical_exit_recv()
{
    vTaskExitCritical(&context.recv_spinlock);
}

static inline void recv_size_inc()
{

    SLC.slc0_token1.val = (((1)<<0) & (0x00000FFF)) | (((1)<<14) & (((1UL << (14)))));
}

static inline void recv_size_reset()
{
    SLC.slc0_token1.val = (((0)<<0) & (0x00000FFF)) | (((1)<<12) & (((1UL << (12)))));
}

static inline buf_desc_t* recv_get_first_empty_buf()
{
    buf_stailq_t *const queue = &context.recv_link_list;
    buf_desc_t *desc = ((queue)->stqh_first);
    while( desc && desc->owner == 0 ) {
        desc = ((desc)->qe.stqe_next);
    }
    return desc;
}

static esp_err_t recv_start()
{
    SLC.conf0.slc0_tx_rst = 1;
    SLC.conf0.slc0_tx_rst = 0;

    critical_enter_recv();
    buf_desc_t *desc = recv_get_first_empty_buf();
    if ( !desc ) {
        do { if ( 3 >= ESP_LOG_DEBUG ) do { if (ESP_LOG_DEBUG==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "recv: restart without desc" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_DEBUG==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "recv: restart without desc" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_DEBUG==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "recv: restart without desc" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_DEBUG==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "recv: restart without desc" "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "recv: restart without desc" "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
        critical_exit_recv();
        return 0;
    }

    SLC.slc0_tx_link.addr = (uint32_t)desc;
    SLC.slc0_tx_link.start = 1;
    critical_exit_recv();

    SLC.slc0_int_ena.tx_done = 1;
    return 0;
}

static void recv_stop()
{
    SLC.slc0_tx_link.stop = 1;
    SLC.slc0_int_ena.tx_done = 0;
}


static void recv_reset_counter()
{
    recv_size_reset();

    critical_enter_recv();
    buf_desc_t *desc = recv_get_first_empty_buf();
    while ( desc != 
# 1137 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                   ((void *)0) 
# 1137 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                        ) {
        ((desc->owner == 1) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c", 1138, __func__, "desc->owner == 1"));
        recv_size_inc();
        desc = ((desc)->qe.stqe_next);
    }
    critical_exit_recv();
}


static void recv_flush_data()
{
    buf_stailq_t *const queue = &context.recv_link_list;

    critical_enter_recv();
    while(1) {
        int ret = xQueueGenericReceive( ( QueueHandle_t ) ( context.recv_event ), 
# 1152 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                           ((void *)0)
# 1152 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                           , ( 0 ), ( ( BaseType_t ) 0 ) );
        if ( ret == ( ( BaseType_t ) 0 ) ) break;

        buf_desc_t *desc = ((queue)->stqh_first);
        ((desc != 
# 1156 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
       ((void *)0) 
# 1156 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
       && desc->owner == 0) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c", 1156, __func__, "desc != NULL && desc->owner == 0"));
        do { if (((((queue))->stqh_first) = (((((queue))->stqh_first))->qe.stqe_next)) == 
# 1157 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
       ((void *)0)
# 1157 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
       ) (queue)->stqh_last = &(((queue))->stqh_first); } while (0);
        desc->owner = 1;
        do { (((desc))->qe.stqe_next) = 
# 1159 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
       ((void *)0)
# 1159 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
       ; *(queue)->stqh_last = (desc); (queue)->stqh_last = &(((desc))->qe.stqe_next); } while (0);
        recv_size_inc();

    }
    critical_exit_recv();
}

static void sdio_intr_recv(void* arg)
{
    int yield = 0;
    if ( SLC.slc0_int_raw.tx_done ) {
        SLC.slc0_int_clr.tx_done = 1;
        while ( context.recv_cur_ret && context.recv_cur_ret->owner == 0 ) {



            context.recv_cur_ret = ((context.recv_cur_ret)->qe.stqe_next);
            do { if (3 >= ESP_LOG_VERBOSE) { ets_printf( "V" " (%d) %s: " "intr_recv: Give" "\033[0m" "\n", esp_log_timestamp(), TAG); }} while(0);
            xQueueGiveFromISR( ( QueueHandle_t ) ( context.recv_event ), ( &yield ) );
        };
    }
    if ( yield ) {; _frxt_setup_switch();};
}

esp_err_t sdio_slave_recv_load_buf(sdio_slave_buf_handle_t handle)
{
    buf_desc_t *desc = (buf_desc_t*)handle;
    do { if ( desc == 
# 1186 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
   ((void *)0) 
# 1186 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
   || !desc->not_receiving ) { return 0x102; } } while(0);

    buf_stailq_t *const queue = &context.recv_link_list;

    critical_enter_recv();
    do { ; ; ; ; if (((((desc))->te.tqe_next)) != 
# 1191 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
   ((void *)0)
# 1191 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
   ) (((desc))->te.tqe_next)->te.tqe_prev = (desc)->te.tqe_prev; else { (&context.recv_reg_list)->tqh_last = (desc)->te.tqe_prev; ; } *(desc)->te.tqe_prev = (((desc))->te.tqe_next); ; ; ; } while (0);
    desc->owner = 1;
    desc->not_receiving = 0;

    buf_desc_t *const tail = ((((queue))->stqh_first == 
# 1195 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                            ((void *)0)
# 1195 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                            ) ? 
# 1195 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                            ((void *)0) 
# 1195 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                            : ((struct buf_desc_s *)(void *) ((char *)((queue)->stqh_last) - 
# 1195 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                            __builtin_offsetof (
# 1195 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                            struct buf_desc_s
# 1195 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                            , 
# 1195 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                            qe
# 1195 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                            )
# 1195 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                            )));

    do { (((desc))->qe.stqe_next) = 
# 1197 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
   ((void *)0)
# 1197 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
   ; *(queue)->stqh_last = (desc); (queue)->stqh_last = &(((desc))->qe.stqe_next); } while (0);
    if (tail == 
# 1198 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
               ((void *)0) 
# 1198 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                    || (tail->owner == 0)) {

        if (tail != 
# 1200 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                   ((void *)0)
# 1200 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                       ) {




            while (context.recv_cur_ret != 
# 1205 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                                          ((void *)0)
# 1205 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                                              ) {}
        }
        ((context.recv_cur_ret == 
# 1207 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
       ((void *)0)
# 1207 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
       ) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c", 1207, __func__, "context.recv_cur_ret == NULL"));
        context.recv_cur_ret = desc;
    }
    ((context.recv_cur_ret != 
# 1210 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
   ((void *)0)
# 1210 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
   ) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c", 1210, __func__, "context.recv_cur_ret != NULL"));

    if (tail == 
# 1212 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
               ((void *)0)
# 1212 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                   ) {

        SLC.slc0_tx_link.addr = (uint32_t)desc;
        SLC.slc0_tx_link.start = 1;
        do { if ( 3 >= ESP_LOG_VERBOSE ) do { if (ESP_LOG_VERBOSE==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "recv_load_buf: start new" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_VERBOSE==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "recv_load_buf: start new" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_VERBOSE==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "recv_load_buf: start new" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_VERBOSE==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "recv_load_buf: start new" "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "recv_load_buf: start new" "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
    } else {

        SLC.slc0_tx_link.restart = 1;
        do { if ( 3 >= ESP_LOG_VERBOSE ) do { if (ESP_LOG_VERBOSE==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "recv_load_buf: restart" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_VERBOSE==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "recv_load_buf: restart" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_VERBOSE==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "recv_load_buf: restart" "\033[0m" "\n", esp_log_timestamp(), TAG); } else if (ESP_LOG_VERBOSE==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "recv_load_buf: restart" "\033[0m" "\n", esp_log_timestamp(), TAG); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "recv_load_buf: restart" "\033[0m" "\n", esp_log_timestamp(), TAG); } } while(0); } while(0);
    }
    critical_exit_recv();
    recv_size_inc();

    return 0;
}

sdio_slave_buf_handle_t sdio_slave_recv_register_buf(uint8_t *start)
{
    do { if(!(esp_ptr_dma_capable(start) && (uint32_t)start%4==0)){ do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):""%s" "\033[0m" "\n", esp_log_timestamp(), TAG,
 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
# 1230 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
    ,
 1231
# 1230 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
    ,__FUNCTION__, "buffer to register should be DMA capable and 32-bit aligned"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):""%s" "\033[0m" "\n", esp_log_timestamp(), TAG,
 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
# 1230 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
    ,
 1231
# 1230 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
    ,__FUNCTION__, "buffer to register should be DMA capable and 32-bit aligned"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "%s:%d (%s):""%s" "\033[0m" "\n", esp_log_timestamp(), TAG,
 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
# 1230 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
    ,
 1231
# 1230 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
    ,__FUNCTION__, "buffer to register should be DMA capable and 32-bit aligned"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "%s:%d (%s):""%s" "\033[0m" "\n", esp_log_timestamp(), TAG,
 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
# 1230 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
    ,
 1231
# 1230 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
    ,__FUNCTION__, "buffer to register should be DMA capable and 32-bit aligned"); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):""%s" "\033[0m" "\n", esp_log_timestamp(), TAG,
 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
# 1230 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
    ,
 1231
# 1230 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
    ,__FUNCTION__, "buffer to register should be DMA capable and 32-bit aligned"); } } while(0); } while(0); return 
# 1230 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
   ((void *)0)
# 1230 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
   ;} }while (0)
                                                                            ;
    buf_desc_t *desc = (buf_desc_t*)malloc(sizeof(buf_desc_t));
    if ( desc == 
# 1233 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                ((void *)0) 
# 1233 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                     ) {
        do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):""cannot allocate lldesc for new buffer" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",1234,__FUNCTION__); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):""cannot allocate lldesc for new buffer" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",1234,__FUNCTION__); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "%s:%d (%s):""cannot allocate lldesc for new buffer" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",1234,__FUNCTION__); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "%s:%d (%s):""cannot allocate lldesc for new buffer" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",1234,__FUNCTION__); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):""cannot allocate lldesc for new buffer" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",1234,__FUNCTION__); } } while(0); } while(0);
        return 
# 1235 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
              ((void *)0)
# 1235 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                  ;
    }


    *desc = (buf_desc_t) {
        .size = context.config.recv_buffer_size,
        .buf = start,

    };
    critical_enter_recv();
    do { ; (((desc))->te.tqe_next) = 
# 1245 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
   ((void *)0)
# 1245 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
   ; (desc)->te.tqe_prev = (&context.recv_reg_list)->tqh_last; *(&context.recv_reg_list)->tqh_last = (desc); (&context.recv_reg_list)->tqh_last = &(((desc))->te.tqe_next); ; ; } while (0);
    critical_exit_recv();
    return desc;
}

esp_err_t sdio_slave_recv(sdio_slave_buf_handle_t* handle_ret, uint8_t **start_o, size_t *len_o, TickType_t wait)
{
    do { if(!(handle_ret != 
# 1252 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
   ((void *)0)
# 1252 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
   )){ do { if ( 3 >= ESP_LOG_ERROR ) do { if (ESP_LOG_ERROR==ESP_LOG_ERROR ) { esp_log_write(ESP_LOG_ERROR, TAG, "\033[0;" "31" "m" "E" " (%d) %s: " "%s:%d (%s):""%s" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",1252,__FUNCTION__, "handle address cannot be 0"); } else if (ESP_LOG_ERROR==ESP_LOG_WARN ) { esp_log_write(ESP_LOG_WARN, TAG, "\033[0;" "33" "m" "W" " (%d) %s: " "%s:%d (%s):""%s" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",1252,__FUNCTION__, "handle address cannot be 0"); } else if (ESP_LOG_ERROR==ESP_LOG_DEBUG ) { esp_log_write(ESP_LOG_DEBUG, TAG, "D" " (%d) %s: " "%s:%d (%s):""%s" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",1252,__FUNCTION__, "handle address cannot be 0"); } else if (ESP_LOG_ERROR==ESP_LOG_VERBOSE ) { esp_log_write(ESP_LOG_VERBOSE, TAG, "V" " (%d) %s: " "%s:%d (%s):""%s" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",1252,__FUNCTION__, "handle address cannot be 0"); } else { esp_log_write(ESP_LOG_INFO, TAG, "\033[0;" "32" "m" "I" " (%d) %s: " "%s:%d (%s):""%s" "\033[0m" "\n", esp_log_timestamp(), TAG, "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c",1252,__FUNCTION__, "handle address cannot be 0"); } } while(0); } while(0); return 0x102;} }while (0);
    int ret = xQueueGenericReceive( ( QueueHandle_t ) ( context.recv_event ), 
# 1253 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                       ((void *)0)
# 1253 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                       , ( wait ), ( ( BaseType_t ) 0 ) );
    if ( ret == ( ( BaseType_t ) 0 ) ) return 0x107;

    buf_stailq_t *const queue = &context.recv_link_list;

    critical_enter_recv();

    buf_desc_t *desc = ((queue)->stqh_first);
    do { if (((((queue))->stqh_first) = (((((queue))->stqh_first))->qe.stqe_next)) == 
# 1261 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
   ((void *)0)
# 1261 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
   ) (queue)->stqh_last = &(((queue))->stqh_first); } while (0);
    do { ; (((desc))->te.tqe_next) = 
# 1262 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
   ((void *)0)
# 1262 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
   ; (desc)->te.tqe_prev = (&context.recv_reg_list)->tqh_last; *(&context.recv_reg_list)->tqh_last = (desc); (&context.recv_reg_list)->tqh_last = &(((desc))->te.tqe_next); ; ; } while (0);
    critical_exit_recv();

    ((desc != 
# 1265 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
   ((void *)0) 
# 1265 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
   && desc->owner == 0) ? (void)0 : __assert_func ("D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c", 1265, __func__, "desc != NULL && desc->owner == 0"));
    *handle_ret = (sdio_slave_buf_handle_t)desc;
    if ( start_o ) *start_o = desc->buf;
    if ( len_o ) *len_o = desc->length;
    return 0;
}

esp_err_t sdio_slave_recv_unregister_buf(sdio_slave_buf_handle_t handle)
{
    buf_desc_t *desc = (buf_desc_t*)handle;
    do { if ( desc == 
# 1275 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
   ((void *)0) 
# 1275 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
   || !desc->not_receiving ) { return 0x102; } } while(0);

    critical_enter_recv();
    do { ; ; ; ; if (((((desc))->te.tqe_next)) != 
# 1278 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
   ((void *)0)
# 1278 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
   ) (((desc))->te.tqe_next)->te.tqe_prev = (desc)->te.tqe_prev; else { (&context.recv_reg_list)->tqh_last = (desc)->te.tqe_prev; ; } *(desc)->te.tqe_prev = (((desc))->te.tqe_next); ; ; ; } while (0);
    critical_exit_recv();
    free(desc);
    return 0;
}

uint8_t* sdio_slave_recv_get_buf( sdio_slave_buf_handle_t handle, size_t *len_o )
{
    buf_desc_t *desc = (buf_desc_t*)handle;
    if ( handle == 
# 1287 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                  ((void *)0) 
# 1287 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                       ) return 
# 1287 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                                ((void *)0)
# 1287 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                                    ;

    if ( len_o!= 
# 1289 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c" 3 4
                ((void *)0) 
# 1289 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdio_slave.c"
                     ) *len_o= desc->length;
    return desc->buf;
}
