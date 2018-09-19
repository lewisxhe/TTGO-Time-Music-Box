# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/hmac_drbg.c"
# 1 "D:\\ESP32\\esp-idf-v3.1-rc1\\ESP32_PIC_A2DP\\build\\mbedtls//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/hmac_drbg.c"
# 31 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/hmac_drbg.c"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/port/include/mbedtls/esp_config.h" 1
# 30 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/port/include/mbedtls/esp_config.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/ESP32_PIC_A2DP/build/include/sdkconfig.h" 1
# 31 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/port/include/mbedtls/esp_config.h" 2
# 2665 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/port/include/mbedtls/esp_config.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/check_config.h" 1
# 37 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/check_config.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/limits.h" 1



# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/newlib.h" 1
# 5 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/limits.h" 2
# 131 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/limits.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include-fixed\\limits.h" 1 3 4
# 132 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/limits.h" 2
# 38 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/check_config.h" 2
# 681 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/check_config.h"
typedef int mbedtls_iso_c_forbids_empty_translation_units;
# 2666 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/port/include/mbedtls/esp_config.h" 2
# 32 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/hmac_drbg.c" 2




# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/hmac_drbg.h" 1
# 27 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/hmac_drbg.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/md.h" 1
# 30 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/md.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 149 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4

# 149 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef int ptrdiff_t;
# 216 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef unsigned int size_t;
# 328 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef short unsigned int wchar_t;
# 31 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/md.h" 2
# 56 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/md.h"

# 56 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/md.h"
typedef enum {
    MBEDTLS_MD_NONE=0,
    MBEDTLS_MD_MD2,
    MBEDTLS_MD_MD4,
    MBEDTLS_MD_MD5,
    MBEDTLS_MD_SHA1,
    MBEDTLS_MD_SHA224,
    MBEDTLS_MD_SHA256,
    MBEDTLS_MD_SHA384,
    MBEDTLS_MD_SHA512,
    MBEDTLS_MD_RIPEMD160,
} mbedtls_md_type_t;
# 78 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/md.h"
typedef struct mbedtls_md_info_t mbedtls_md_info_t;




typedef struct {

    const mbedtls_md_info_t *md_info;


    void *md_ctx;


    void *hmac_ctx;
} mbedtls_md_context_t;
# 103 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/md.h"
const int *mbedtls_md_list( void );
# 114 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/md.h"
const mbedtls_md_info_t *mbedtls_md_info_from_string( const char *md_name );
# 125 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/md.h"
const mbedtls_md_info_t *mbedtls_md_info_from_type( mbedtls_md_type_t md_type );
# 135 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/md.h"
void mbedtls_md_init( mbedtls_md_context_t *ctx );
# 150 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/md.h"
void mbedtls_md_free( mbedtls_md_context_t *ctx );
# 176 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/md.h"
int mbedtls_md_init_ctx( mbedtls_md_context_t *ctx, const mbedtls_md_info_t *md_info ) ;
# 199 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/md.h"
int mbedtls_md_setup( mbedtls_md_context_t *ctx, const mbedtls_md_info_t *md_info, int hmac );
# 220 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/md.h"
int mbedtls_md_clone( mbedtls_md_context_t *dst,
                      const mbedtls_md_context_t *src );
# 232 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/md.h"
unsigned char mbedtls_md_get_size( const mbedtls_md_info_t *md_info );
# 243 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/md.h"
mbedtls_md_type_t mbedtls_md_get_type( const mbedtls_md_info_t *md_info );
# 254 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/md.h"
const char *mbedtls_md_get_name( const mbedtls_md_info_t *md_info );
# 269 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/md.h"
int mbedtls_md_starts( mbedtls_md_context_t *ctx );
# 287 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/md.h"
int mbedtls_md_update( mbedtls_md_context_t *ctx, const unsigned char *input, size_t ilen );
# 307 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/md.h"
int mbedtls_md_finish( mbedtls_md_context_t *ctx, unsigned char *output );
# 327 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/md.h"
int mbedtls_md( const mbedtls_md_info_t *md_info, const unsigned char *input, size_t ilen,
        unsigned char *output );
# 348 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/md.h"
int mbedtls_md_file( const mbedtls_md_info_t *md_info, const char *path,
                     unsigned char *output );
# 370 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/md.h"
int mbedtls_md_hmac_starts( mbedtls_md_context_t *ctx, const unsigned char *key,
                    size_t keylen );
# 392 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/md.h"
int mbedtls_md_hmac_update( mbedtls_md_context_t *ctx, const unsigned char *input,
                    size_t ilen );
# 413 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/md.h"
int mbedtls_md_hmac_finish( mbedtls_md_context_t *ctx, unsigned char *output);
# 430 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/md.h"
int mbedtls_md_hmac_reset( mbedtls_md_context_t *ctx );
# 454 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/md.h"
int mbedtls_md_hmac( const mbedtls_md_info_t *md_info, const unsigned char *key, size_t keylen,
                const unsigned char *input, size_t ilen,
                unsigned char *output );


int mbedtls_md_process( mbedtls_md_context_t *ctx, const unsigned char *data );
# 28 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/hmac_drbg.h" 2
# 77 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/hmac_drbg.h"
typedef struct
{


    mbedtls_md_context_t md_ctx;
    unsigned char V[64];
    int reseed_counter;


    size_t entropy_len;
    int prediction_resistance;

    int reseed_interval;


    int (*f_entropy)(void *, unsigned char *, size_t);
    void *p_entropy;




} mbedtls_hmac_drbg_context;
# 108 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/hmac_drbg.h"
void mbedtls_hmac_drbg_init( mbedtls_hmac_drbg_context *ctx );
# 134 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/hmac_drbg.h"
int mbedtls_hmac_drbg_seed( mbedtls_hmac_drbg_context *ctx,
                    const mbedtls_md_info_t * md_info,
                    int (*f_entropy)(void *, unsigned char *, size_t),
                    void *p_entropy,
                    const unsigned char *custom,
                    size_t len );
# 154 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/hmac_drbg.h"
int mbedtls_hmac_drbg_seed_buf( mbedtls_hmac_drbg_context *ctx,
                        const mbedtls_md_info_t * md_info,
                        const unsigned char *data, size_t data_len );
# 167 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/hmac_drbg.h"
void mbedtls_hmac_drbg_set_prediction_resistance( mbedtls_hmac_drbg_context *ctx,
                                          int resistance );
# 178 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/hmac_drbg.h"
void mbedtls_hmac_drbg_set_entropy_len( mbedtls_hmac_drbg_context *ctx,
                                size_t len );
# 188 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/hmac_drbg.h"
void mbedtls_hmac_drbg_set_reseed_interval( mbedtls_hmac_drbg_context *ctx,
                                    int interval );
# 201 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/hmac_drbg.h"
void mbedtls_hmac_drbg_update( mbedtls_hmac_drbg_context *ctx,
                       const unsigned char *additional, size_t add_len );
# 214 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/hmac_drbg.h"
int mbedtls_hmac_drbg_reseed( mbedtls_hmac_drbg_context *ctx,
                      const unsigned char *additional, size_t len );
# 233 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/hmac_drbg.h"
int mbedtls_hmac_drbg_random_with_add( void *p_rng,
                               unsigned char *output, size_t output_len,
                               const unsigned char *additional,
                               size_t add_len );
# 251 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/hmac_drbg.h"
int mbedtls_hmac_drbg_random( void *p_rng, unsigned char *output, size_t out_len );






void mbedtls_hmac_drbg_free( mbedtls_hmac_drbg_context *ctx );
# 270 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/hmac_drbg.h"
int mbedtls_hmac_drbg_write_seed_file( mbedtls_hmac_drbg_context *ctx, const char *path );
# 283 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/hmac_drbg.h"
int mbedtls_hmac_drbg_update_seed_file( mbedtls_hmac_drbg_context *ctx, const char *path );
# 293 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/hmac_drbg.h"
int mbedtls_hmac_drbg_self_test( int verbose );
# 37 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/hmac_drbg.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/platform_util.h" 1
# 28 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/platform_util.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 29 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/platform_util.h" 2
# 56 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/platform_util.h"
void mbedtls_platform_zeroize( void *buf, size_t len );
# 38 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/hmac_drbg.c" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h" 1
# 10 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/_ansi.h" 1
# 16 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/_ansi.h"
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
# 15 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/reent.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/_types.h" 1
# 12 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/_types.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_types.h" 1






# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h" 1
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


# 40 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/hmac_drbg.c" 2


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

# 43 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/hmac_drbg.c" 2




# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/platform.h" 1
# 43 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/platform.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/platform_time.h" 1
# 52 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/platform_time.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/time.h" 1
# 15 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/time.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 16 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/time.h" 2


# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/time.h" 1
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/time.h" 2
# 29 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/time.h"


struct tm
{
  int tm_sec;
  int tm_min;
  int tm_hour;
  int tm_mday;
  int tm_mon;
  int tm_year;
  int tm_wday;
  int tm_yday;
  int tm_isdst;






};

clock_t clock (void);
double difftime (time_t _time2, time_t _time1);
time_t mktime (struct tm *_timeptr);
time_t time (time_t *_timer);

char *asctime (const struct tm *_tblock);
char *ctime (const time_t *_time);
struct tm *gmtime (const time_t *_timer);
struct tm *localtime (const time_t *_timer);

size_t strftime (char *restrict _s, size_t _maxsize, const char *restrict _fmt, const struct tm *restrict _t)

                                        ;

char *asctime_r (const struct tm *restrict, char *restrict)
                       ;
char *ctime_r (const time_t *, char *);
struct tm *gmtime_r (const time_t *restrict, struct tm *restrict)
                            ;
struct tm *localtime_r (const time_t *restrict, struct tm *restrict)
                            ;








char *strptime (const char *restrict, const char *restrict, struct tm *restrict)

                            ;
void tzset (void);
void _tzset_r (struct _reent *);

typedef struct __tzrule_struct
{
  char ch;
  int m;
  int n;
  int d;
  int s;
  time_t change;
  long offset;
} __tzrule_type;

typedef struct __tzinfo_struct
{
  int __tznorth;
  int __tzyear;
  __tzrule_type __tzrule[2];
} __tzinfo_type;

__tzinfo_type *__gettzinfo (void);
# 129 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/time.h"
extern long _timezone;
extern int _daylight;
extern char *_tzname[2];
# 53 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/platform_time.h" 2
typedef time_t mbedtls_time_t;
# 44 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/platform.h" 2
# 60 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/platform.h"
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




# 61 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/platform.h" 2
# 318 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/platform.h"
typedef struct {
    char dummy;
}
mbedtls_platform_context;
# 342 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/platform.h"
int mbedtls_platform_setup( mbedtls_platform_context *ctx );
# 357 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/platform.h"
void mbedtls_platform_teardown( mbedtls_platform_context *ctx );
# 48 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/hmac_drbg.c" 2
# 57 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/hmac_drbg.c"
void mbedtls_hmac_drbg_init( mbedtls_hmac_drbg_context *ctx )
{
    memset( ctx, 0, sizeof( mbedtls_hmac_drbg_context ) );




}




void mbedtls_hmac_drbg_update( mbedtls_hmac_drbg_context *ctx,
                       const unsigned char *additional, size_t add_len )
{
    size_t md_len = mbedtls_md_get_size( ctx->md_ctx.md_info );
    unsigned char rounds = ( additional != 
# 73 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/hmac_drbg.c" 3 4
                                          ((void *)0) 
# 73 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/hmac_drbg.c"
                                               && add_len != 0 ) ? 2 : 1;
    unsigned char sep[1];
    unsigned char K[64];

    for( sep[0] = 0; sep[0] < rounds; sep[0]++ )
    {

        mbedtls_md_hmac_reset( &ctx->md_ctx );
        mbedtls_md_hmac_update( &ctx->md_ctx, ctx->V, md_len );
        mbedtls_md_hmac_update( &ctx->md_ctx, sep, 1 );
        if( rounds == 2 )
            mbedtls_md_hmac_update( &ctx->md_ctx, additional, add_len );
        mbedtls_md_hmac_finish( &ctx->md_ctx, K );


        mbedtls_md_hmac_starts( &ctx->md_ctx, K, md_len );
        mbedtls_md_hmac_update( &ctx->md_ctx, ctx->V, md_len );
        mbedtls_md_hmac_finish( &ctx->md_ctx, ctx->V );
    }
}




int mbedtls_hmac_drbg_seed_buf( mbedtls_hmac_drbg_context *ctx,
                        const mbedtls_md_info_t * md_info,
                        const unsigned char *data, size_t data_len )
{
    int ret;

    if( ( ret = mbedtls_md_setup( &ctx->md_ctx, md_info, 1 ) ) != 0 )
        return( ret );






    mbedtls_md_hmac_starts( &ctx->md_ctx, ctx->V, mbedtls_md_get_size( md_info ) );
    memset( ctx->V, 0x01, mbedtls_md_get_size( md_info ) );

    mbedtls_hmac_drbg_update( ctx, data, data_len );

    return( 0 );
}




int mbedtls_hmac_drbg_reseed( mbedtls_hmac_drbg_context *ctx,
                      const unsigned char *additional, size_t len )
{
    unsigned char seed[384];
    size_t seedlen;


    if( len > 256 ||
        ctx->entropy_len + len > 384 )
    {
        return( -0x0005 );
    }

    memset( seed, 0, 384 );


    if( ctx->f_entropy( ctx->p_entropy, seed, ctx->entropy_len ) != 0 )
        return( -0x0009 );

    seedlen = ctx->entropy_len;


    if( additional != 
# 144 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/hmac_drbg.c" 3 4
                     ((void *)0) 
# 144 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/hmac_drbg.c"
                          && len != 0 )
    {
        memcpy( seed + seedlen, additional, len );
        seedlen += len;
    }


    mbedtls_hmac_drbg_update( ctx, seed, seedlen );


    ctx->reseed_counter = 1;


    return( 0 );
}




int mbedtls_hmac_drbg_seed( mbedtls_hmac_drbg_context *ctx,
                    const mbedtls_md_info_t * md_info,
                    int (*f_entropy)(void *, unsigned char *, size_t),
                    void *p_entropy,
                    const unsigned char *custom,
                    size_t len )
{
    int ret;
    size_t entropy_len, md_size;

    if( ( ret = mbedtls_md_setup( &ctx->md_ctx, md_info, 1 ) ) != 0 )
        return( ret );

    md_size = mbedtls_md_get_size( md_info );






    mbedtls_md_hmac_starts( &ctx->md_ctx, ctx->V, md_size );
    memset( ctx->V, 0x01, md_size );

    ctx->f_entropy = f_entropy;
    ctx->p_entropy = p_entropy;

    ctx->reseed_interval = 10000;
# 198 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/hmac_drbg.c"
    entropy_len = md_size <= 20 ? 16 :
                  md_size <= 28 ? 24 :
                                  32;





    ctx->entropy_len = entropy_len * 3 / 2;

    if( ( ret = mbedtls_hmac_drbg_reseed( ctx, custom, len ) ) != 0 )
        return( ret );

    ctx->entropy_len = entropy_len;

    return( 0 );
}




void mbedtls_hmac_drbg_set_prediction_resistance( mbedtls_hmac_drbg_context *ctx,
                                          int resistance )
{
    ctx->prediction_resistance = resistance;
}




void mbedtls_hmac_drbg_set_entropy_len( mbedtls_hmac_drbg_context *ctx, size_t len )
{
    ctx->entropy_len = len;
}




void mbedtls_hmac_drbg_set_reseed_interval( mbedtls_hmac_drbg_context *ctx, int interval )
{
    ctx->reseed_interval = interval;
}





int mbedtls_hmac_drbg_random_with_add( void *p_rng,
                               unsigned char *output, size_t out_len,
                               const unsigned char *additional, size_t add_len )
{
    int ret;
    mbedtls_hmac_drbg_context *ctx = (mbedtls_hmac_drbg_context *) p_rng;
    size_t md_len = mbedtls_md_get_size( ctx->md_ctx.md_info );
    size_t left = out_len;
    unsigned char *out = output;


    if( out_len > 1024 )
        return( -0x0003 );


    if( add_len > 256 )
        return( -0x0005 );


    if( ctx->f_entropy != 
# 264 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/hmac_drbg.c" 3 4
                         ((void *)0) 
# 264 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/hmac_drbg.c"
                              &&
        ( ctx->prediction_resistance == 1 ||
          ctx->reseed_counter > ctx->reseed_interval ) )
    {
        if( ( ret = mbedtls_hmac_drbg_reseed( ctx, additional, add_len ) ) != 0 )
            return( ret );

        add_len = 0;
    }


    if( additional != 
# 275 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/hmac_drbg.c" 3 4
                     ((void *)0) 
# 275 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/hmac_drbg.c"
                          && add_len != 0 )
        mbedtls_hmac_drbg_update( ctx, additional, add_len );


    while( left != 0 )
    {
        size_t use_len = left > md_len ? md_len : left;

        mbedtls_md_hmac_reset( &ctx->md_ctx );
        mbedtls_md_hmac_update( &ctx->md_ctx, ctx->V, md_len );
        mbedtls_md_hmac_finish( &ctx->md_ctx, ctx->V );

        memcpy( out, ctx->V, use_len );
        out += use_len;
        left -= use_len;
    }


    mbedtls_hmac_drbg_update( ctx, additional, add_len );


    ctx->reseed_counter++;


    return( 0 );
}




int mbedtls_hmac_drbg_random( void *p_rng, unsigned char *output, size_t out_len )
{
    int ret;
    mbedtls_hmac_drbg_context *ctx = (mbedtls_hmac_drbg_context *) p_rng;






    ret = mbedtls_hmac_drbg_random_with_add( ctx, output, out_len, 
# 315 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/hmac_drbg.c" 3 4
                                                                  ((void *)0)
# 315 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/hmac_drbg.c"
                                                                      , 0 );






    return( ret );
}




void mbedtls_hmac_drbg_free( mbedtls_hmac_drbg_context *ctx )
{
    if( ctx == 
# 330 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/hmac_drbg.c" 3 4
              ((void *)0) 
# 330 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/hmac_drbg.c"
                   )
        return;




    mbedtls_md_free( &ctx->md_ctx );
    mbedtls_platform_zeroize( ctx, sizeof( mbedtls_hmac_drbg_context ) );
}


int mbedtls_hmac_drbg_write_seed_file( mbedtls_hmac_drbg_context *ctx, const char *path )
{
    int ret;
    FILE *f;
    unsigned char buf[ 256 ];

    if( ( f = fopen( path, "wb" ) ) == 
# 347 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/hmac_drbg.c" 3 4
                                      ((void *)0) 
# 347 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/hmac_drbg.c"
                                           )
        return( -0x0007 );

    if( ( ret = mbedtls_hmac_drbg_random( ctx, buf, sizeof( buf ) ) ) != 0 )
        goto exit;

    if( fwrite( buf, 1, sizeof( buf ), f ) != sizeof( buf ) )
    {
        ret = -0x0007;
        goto exit;
    }

    ret = 0;

exit:
    fclose( f );
    mbedtls_platform_zeroize( buf, sizeof( buf ) );

    return( ret );
}

int mbedtls_hmac_drbg_update_seed_file( mbedtls_hmac_drbg_context *ctx, const char *path )
{
    int ret = 0;
    FILE *f;
    size_t n;
    unsigned char buf[ 256 ];

    if( ( f = fopen( path, "rb" ) ) == 
# 375 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/hmac_drbg.c" 3 4
                                      ((void *)0) 
# 375 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/hmac_drbg.c"
                                           )
        return( -0x0007 );

    fseek( f, 0, 2 );
    n = (size_t) ftell( f );
    fseek( f, 0, 0 );

    if( n > 256 )
    {
        fclose( f );
        return( -0x0005 );
    }

    if( fread( buf, 1, n, f ) != n )
        ret = -0x0007;
    else
        mbedtls_hmac_drbg_update( ctx, buf, n );

    fclose( f );

    mbedtls_platform_zeroize( buf, sizeof( buf ) );

    if( ret != 0 )
        return( ret );

    return( mbedtls_hmac_drbg_write_seed_file( ctx, path ) );
}
# 419 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/hmac_drbg.c"
static const unsigned char entropy_pr[] = {
    0xa0, 0xc9, 0xab, 0x58, 0xf1, 0xe2, 0xe5, 0xa4, 0xde, 0x3e, 0xbd, 0x4f,
    0xf7, 0x3e, 0x9c, 0x5b, 0x64, 0xef, 0xd8, 0xca, 0x02, 0x8c, 0xf8, 0x11,
    0x48, 0xa5, 0x84, 0xfe, 0x69, 0xab, 0x5a, 0xee, 0x42, 0xaa, 0x4d, 0x42,
    0x17, 0x60, 0x99, 0xd4, 0x5e, 0x13, 0x97, 0xdc, 0x40, 0x4d, 0x86, 0xa3,
    0x7b, 0xf5, 0x59, 0x54, 0x75, 0x69, 0x51, 0xe4 };
static const unsigned char result_pr[80] = {
    0x9a, 0x00, 0xa2, 0xd0, 0x0e, 0xd5, 0x9b, 0xfe, 0x31, 0xec, 0xb1, 0x39,
    0x9b, 0x60, 0x81, 0x48, 0xd1, 0x96, 0x9d, 0x25, 0x0d, 0x3c, 0x1e, 0x94,
    0x10, 0x10, 0x98, 0x12, 0x93, 0x25, 0xca, 0xb8, 0xfc, 0xcc, 0x2d, 0x54,
    0x73, 0x19, 0x70, 0xc0, 0x10, 0x7a, 0xa4, 0x89, 0x25, 0x19, 0x95, 0x5e,
    0x4b, 0xc6, 0x00, 0x1d, 0x7f, 0x4e, 0x6a, 0x2b, 0xf8, 0xa3, 0x01, 0xab,
    0x46, 0x05, 0x5c, 0x09, 0xa6, 0x71, 0x88, 0xf1, 0xa7, 0x40, 0xee, 0xf3,
    0xe1, 0x5c, 0x02, 0x9b, 0x44, 0xaf, 0x03, 0x44 };


static const unsigned char entropy_nopr[] = {
    0x79, 0x34, 0x9b, 0xbf, 0x7c, 0xdd, 0xa5, 0x79, 0x95, 0x57, 0x86, 0x66,
    0x21, 0xc9, 0x13, 0x83, 0x11, 0x46, 0x73, 0x3a, 0xbf, 0x8c, 0x35, 0xc8,
    0xc7, 0x21, 0x5b, 0x5b, 0x96, 0xc4, 0x8e, 0x9b, 0x33, 0x8c, 0x74, 0xe3,
    0xe9, 0x9d, 0xfe, 0xdf };
static const unsigned char result_nopr[80] = {
    0xc6, 0xa1, 0x6a, 0xb8, 0xd4, 0x20, 0x70, 0x6f, 0x0f, 0x34, 0xab, 0x7f,
    0xec, 0x5a, 0xdc, 0xa9, 0xd8, 0xca, 0x3a, 0x13, 0x3e, 0x15, 0x9c, 0xa6,
    0xac, 0x43, 0xc6, 0xf8, 0xa2, 0xbe, 0x22, 0x83, 0x4a, 0x4c, 0x0a, 0x0a,
    0xff, 0xb1, 0x0d, 0x71, 0x94, 0xf1, 0xc1, 0xa5, 0xcf, 0x73, 0x22, 0xec,
    0x1a, 0xe0, 0x96, 0x4e, 0xd4, 0xbf, 0x12, 0x27, 0x46, 0xe0, 0x87, 0xfd,
    0xb5, 0xb3, 0xe9, 0x1b, 0x34, 0x93, 0xd5, 0xbb, 0x98, 0xfa, 0xed, 0x49,
    0xe8, 0x5f, 0x13, 0x0f, 0xc8, 0xa4, 0x59, 0xb7 };


static size_t test_offset;
static int hmac_drbg_self_test_entropy( void *data,
                                        unsigned char *buf, size_t len )
{
    const unsigned char *p = data;
    memcpy( buf, p + test_offset, len );
    test_offset += len;
    return( 0 );
}
# 470 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/hmac_drbg.c"
int mbedtls_hmac_drbg_self_test( int verbose )
{
    mbedtls_hmac_drbg_context ctx;
    unsigned char buf[80];
    const mbedtls_md_info_t *md_info = mbedtls_md_info_from_type( MBEDTLS_MD_SHA1 );

    mbedtls_hmac_drbg_init( &ctx );




    if( verbose != 0 )
        printf( "  HMAC_DRBG (PR = True) : " );

    test_offset = 0;
    if( (mbedtls_hmac_drbg_seed( &ctx, md_info, hmac_drbg_self_test_entropy, (void *) entropy_pr, 
# 485 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/hmac_drbg.c" 3 4
   ((void *)0)
# 485 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/hmac_drbg.c"
   , 0 )) != 0 ) { if( verbose != 0 ) printf( "failed\n" ); return( 1 ); }

                                    ;
    mbedtls_hmac_drbg_set_prediction_resistance( &ctx, 1 );
    if( (mbedtls_hmac_drbg_random( &ctx, buf, 80 )) != 0 ) { if( verbose != 0 ) printf( "failed\n" ); return( 1 ); };
    if( (mbedtls_hmac_drbg_random( &ctx, buf, 80 )) != 0 ) { if( verbose != 0 ) printf( "failed\n" ); return( 1 ); };
    if( (memcmp( buf, result_pr, 80 )) != 0 ) { if( verbose != 0 ) printf( "failed\n" ); return( 1 ); };
    mbedtls_hmac_drbg_free( &ctx );

    mbedtls_hmac_drbg_free( &ctx );

    if( verbose != 0 )
        printf( "passed\n" );




    if( verbose != 0 )
        printf( "  HMAC_DRBG (PR = False) : " );

    mbedtls_hmac_drbg_init( &ctx );

    test_offset = 0;
    if( (mbedtls_hmac_drbg_seed( &ctx, md_info, hmac_drbg_self_test_entropy, (void *) entropy_nopr, 
# 508 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/hmac_drbg.c" 3 4
   ((void *)0)
# 508 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/hmac_drbg.c"
   , 0 )) != 0 ) { if( verbose != 0 ) printf( "failed\n" ); return( 1 ); }

                                    ;
    if( (mbedtls_hmac_drbg_reseed( &ctx, 
# 511 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/hmac_drbg.c" 3 4
   ((void *)0)
# 511 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/hmac_drbg.c"
   , 0 )) != 0 ) { if( verbose != 0 ) printf( "failed\n" ); return( 1 ); };
    if( (mbedtls_hmac_drbg_random( &ctx, buf, 80 )) != 0 ) { if( verbose != 0 ) printf( "failed\n" ); return( 1 ); };
    if( (mbedtls_hmac_drbg_random( &ctx, buf, 80 )) != 0 ) { if( verbose != 0 ) printf( "failed\n" ); return( 1 ); };
    if( (memcmp( buf, result_nopr, 80 )) != 0 ) { if( verbose != 0 ) printf( "failed\n" ); return( 1 ); };
    mbedtls_hmac_drbg_free( &ctx );

    mbedtls_hmac_drbg_free( &ctx );

    if( verbose != 0 )
        printf( "passed\n" );

    if( verbose != 0 )
        printf( "\n" );

    return( 0 );
}
