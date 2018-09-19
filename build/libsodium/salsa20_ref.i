# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_stream/salsa20/ref/salsa20_ref.c"
# 1 "D:\\ESP32\\esp-idf-v3.1-rc1\\ESP32_PIC_A2DP\\build\\libsodium//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_stream/salsa20/ref/salsa20_ref.c"






# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h" 1
# 12 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
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
# 13 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h" 2
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
# 8 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_stream/salsa20/ref/salsa20_ref.c" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_core_salsa20.h" 1



# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 149 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4

# 149 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef int ptrdiff_t;
# 216 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef unsigned int size_t;
# 328 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef short unsigned int wchar_t;
# 5 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_core_salsa20.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/export.h" 1
# 6 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_core_salsa20.h" 2







# 12 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_core_salsa20.h"
__attribute__ ((visibility ("default")))
size_t crypto_core_salsa20_outputbytes(void);


__attribute__ ((visibility ("default")))
size_t crypto_core_salsa20_inputbytes(void);


__attribute__ ((visibility ("default")))
size_t crypto_core_salsa20_keybytes(void);


__attribute__ ((visibility ("default")))
size_t crypto_core_salsa20_constbytes(void);

__attribute__ ((visibility ("default")))
int crypto_core_salsa20(unsigned char *out, const unsigned char *in,
                        const unsigned char *k, const unsigned char *c);
# 10 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_stream/salsa20/ref/salsa20_ref.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_stream_salsa20.h" 1
# 12 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_stream_salsa20.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 13 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_stream_salsa20.h" 2
# 24 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_stream_salsa20.h"
__attribute__ ((visibility ("default")))
size_t crypto_stream_salsa20_keybytes(void);


__attribute__ ((visibility ("default")))
size_t crypto_stream_salsa20_noncebytes(void);

__attribute__ ((visibility ("default")))
int crypto_stream_salsa20(unsigned char *c, unsigned long long clen,
                          const unsigned char *n, const unsigned char *k);

__attribute__ ((visibility ("default")))
int crypto_stream_salsa20_xor(unsigned char *c, const unsigned char *m,
                              unsigned long long mlen, const unsigned char *n,
                              const unsigned char *k);

__attribute__ ((visibility ("default")))
int crypto_stream_salsa20_xor_ic(unsigned char *c, const unsigned char *m,
                                 unsigned long long mlen,
                                 const unsigned char *n, uint64_t ic,
                                 const unsigned char *k);

__attribute__ ((visibility ("default")))
void crypto_stream_salsa20_keygen(unsigned char k[32U]);



int _crypto_stream_salsa20_pick_best_implementation(void);
# 11 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_stream/salsa20/ref/salsa20_ref.c" 2
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
# 12 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_stream/salsa20/ref/salsa20_ref.c" 2

# 1 "d:\\esp32\\esp-idf-v3.1-rc1\\components\\libsodium\\libsodium\\src\\libsodium\\crypto_stream\\salsa20\\stream_salsa20.h" 1






typedef struct crypto_stream_salsa20_implementation {
    int (*stream)(unsigned char *c, unsigned long long clen,
                  const unsigned char *n, const unsigned char *k);
    int (*stream_xor_ic)(unsigned char *c, const unsigned char *m,
                         unsigned long long mlen,
                         const unsigned char *n, uint64_t ic,
                         const unsigned char *k);
} crypto_stream_salsa20_implementation;
# 14 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_stream/salsa20/ref/salsa20_ref.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_stream/salsa20/ref/salsa20_ref.h" 1






extern struct crypto_stream_salsa20_implementation
    crypto_stream_salsa20_ref_implementation;
# 15 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_stream/salsa20/ref/salsa20_ref.c" 2



static int
stream_ref(unsigned char *c, unsigned long long clen, const unsigned char *n,
           const unsigned char *k)
{
    unsigned char in[16];
    unsigned char block[64];
    unsigned char kcopy[32];
    unsigned int i;
    unsigned int u;

    if (!clen) {
        return 0;
    }
    for (i = 0; i < 32; i++) {
        kcopy[i] = k[i];
    }
    for (i = 0; i < 8; i++) {
        in[i] = n[i];
    }
    for (i = 8; i < 16; i++) {
        in[i] = 0;
    }
    while (clen >= 64) {
        crypto_core_salsa20(c, in, kcopy, 
# 41 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_stream/salsa20/ref/salsa20_ref.c" 3 4
                                         ((void *)0)
# 41 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_stream/salsa20/ref/salsa20_ref.c"
                                             );
        u = 1;
        for (i = 8; i < 16; i++) {
            u += (unsigned int) in[i];
            in[i] = u;
            u >>= 8;
        }
        clen -= 64;
        c += 64;
    }
    if (clen) {
        crypto_core_salsa20(block, in, kcopy, 
# 52 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_stream/salsa20/ref/salsa20_ref.c" 3 4
                                             ((void *)0)
# 52 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_stream/salsa20/ref/salsa20_ref.c"
                                                 );
        for (i = 0; i < (unsigned int) clen; i++) {
            c[i] = block[i];
        }
    }
    sodium_memzero(block, sizeof block);
    sodium_memzero(kcopy, sizeof kcopy);

    return 0;
}

static int
stream_ref_xor_ic(unsigned char *c, const unsigned char *m,
                  unsigned long long mlen, const unsigned char *n, uint64_t ic,
                  const unsigned char *k)
{
    unsigned char in[16];
    unsigned char block[64];
    unsigned char kcopy[32];
    unsigned int i;
    unsigned int u;

    if (!mlen) {
        return 0;
    }
    for (i = 0; i < 32; i++) {
        kcopy[i] = k[i];
    }
    for (i = 0; i < 8; i++) {
        in[i] = n[i];
    }
    for (i = 8; i < 16; i++) {
        in[i] = (unsigned char) (ic & 0xff);
        ic >>= 8;
    }
    while (mlen >= 64) {
        crypto_core_salsa20(block, in, kcopy, 
# 88 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_stream/salsa20/ref/salsa20_ref.c" 3 4
                                             ((void *)0)
# 88 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_stream/salsa20/ref/salsa20_ref.c"
                                                 );
        for (i = 0; i < 64; i++) {
            c[i] = m[i] ^ block[i];
        }
        u = 1;
        for (i = 8; i < 16; i++) {
            u += (unsigned int) in[i];
            in[i] = u;
            u >>= 8;
        }
        mlen -= 64;
        c += 64;
        m += 64;
    }
    if (mlen) {
        crypto_core_salsa20(block, in, kcopy, 
# 103 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_stream/salsa20/ref/salsa20_ref.c" 3 4
                                             ((void *)0)
# 103 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_stream/salsa20/ref/salsa20_ref.c"
                                                 );
        for (i = 0; i < (unsigned int) mlen; i++) {
            c[i] = m[i] ^ block[i];
        }
    }
    sodium_memzero(block, sizeof block);
    sodium_memzero(kcopy, sizeof kcopy);

    return 0;
}

struct crypto_stream_salsa20_implementation
    crypto_stream_salsa20_ref_implementation = {
        .stream = stream_ref,
        .stream_xor_ic = stream_ref_xor_ic,
    };
