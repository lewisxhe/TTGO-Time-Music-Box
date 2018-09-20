# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_scalarmult/curve25519/ref10/x25519_ref10.c"
# 1 "D:\\ESP32\\esp-idf-v3.1-rc1\\ESP32_PIC_A2DP\\build\\libsodium//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_scalarmult/curve25519/ref10/x25519_ref10.c"

# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 149 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4

# 149 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef int ptrdiff_t;
# 216 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef unsigned int size_t;
# 328 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef short unsigned int wchar_t;
# 3 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_scalarmult/curve25519/ref10/x25519_ref10.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h" 1
# 12 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h" 1
# 11 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/features.h" 1
# 12 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h" 2






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
# 4 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_scalarmult/curve25519/ref10/x25519_ref10.c" 2



# 1 "d:\\esp32\\esp-idf-v3.1-rc1\\components\\libsodium\\libsodium\\src\\libsodium\\crypto_scalarmult\\curve25519\\scalarmult_curve25519.h" 1




typedef struct crypto_scalarmult_curve25519_implementation {
    int (*mult)(unsigned char *q, const unsigned char *n,
                const unsigned char *p);
    int (*mult_base)(unsigned char *q, const unsigned char *n);
} crypto_scalarmult_curve25519_implementation;
# 8 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_scalarmult/curve25519/ref10/x25519_ref10.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/private/curve25519_ref10.h" 1



# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 5 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/private/curve25519_ref10.h" 2



typedef int32_t crypto_core_curve25519_ref10_fe[10];
# 35 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/private/curve25519_ref10.h"
extern void crypto_core_curve25519_ref10_fe_frombytes(crypto_core_curve25519_ref10_fe,const unsigned char *);
extern void crypto_core_curve25519_ref10_fe_tobytes(unsigned char *,const crypto_core_curve25519_ref10_fe);

extern void crypto_core_curve25519_ref10_fe_copy(crypto_core_curve25519_ref10_fe,const crypto_core_curve25519_ref10_fe);
extern int crypto_core_curve25519_ref10_fe_isnonzero(const crypto_core_curve25519_ref10_fe);
extern int crypto_core_curve25519_ref10_fe_isnegative(const crypto_core_curve25519_ref10_fe);
extern void crypto_core_curve25519_ref10_fe_0(crypto_core_curve25519_ref10_fe);
extern void crypto_core_curve25519_ref10_fe_1(crypto_core_curve25519_ref10_fe);
extern void crypto_core_curve25519_ref10_fe_cmov(crypto_core_curve25519_ref10_fe,const crypto_core_curve25519_ref10_fe,unsigned int);
extern void crypto_core_curve25519_ref10_fe_add(crypto_core_curve25519_ref10_fe,const crypto_core_curve25519_ref10_fe,const crypto_core_curve25519_ref10_fe);
extern void crypto_core_curve25519_ref10_fe_sub(crypto_core_curve25519_ref10_fe,const crypto_core_curve25519_ref10_fe,const crypto_core_curve25519_ref10_fe);
extern void crypto_core_curve25519_ref10_fe_neg(crypto_core_curve25519_ref10_fe,const crypto_core_curve25519_ref10_fe);
extern void crypto_core_curve25519_ref10_fe_mul(crypto_core_curve25519_ref10_fe,const crypto_core_curve25519_ref10_fe,const crypto_core_curve25519_ref10_fe);
extern void crypto_core_curve25519_ref10_fe_sq(crypto_core_curve25519_ref10_fe,const crypto_core_curve25519_ref10_fe);
extern void crypto_core_curve25519_ref10_fe_sq2(crypto_core_curve25519_ref10_fe,const crypto_core_curve25519_ref10_fe);
extern void crypto_core_curve25519_ref10_fe_invert(crypto_core_curve25519_ref10_fe,const crypto_core_curve25519_ref10_fe);
extern void crypto_core_curve25519_ref10_fe_pow22523(crypto_core_curve25519_ref10_fe,const crypto_core_curve25519_ref10_fe);
# 68 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/private/curve25519_ref10.h"
typedef struct {
    crypto_core_curve25519_ref10_fe X;
    crypto_core_curve25519_ref10_fe Y;
    crypto_core_curve25519_ref10_fe Z;
} crypto_core_curve25519_ref10_ge_p2;


typedef struct {
    crypto_core_curve25519_ref10_fe X;
    crypto_core_curve25519_ref10_fe Y;
    crypto_core_curve25519_ref10_fe Z;
    crypto_core_curve25519_ref10_fe T;
} crypto_core_curve25519_ref10_ge_p3;


typedef struct {
    crypto_core_curve25519_ref10_fe X;
    crypto_core_curve25519_ref10_fe Y;
    crypto_core_curve25519_ref10_fe Z;
    crypto_core_curve25519_ref10_fe T;
} crypto_core_curve25519_ref10_ge_p1p1;


typedef struct {
    crypto_core_curve25519_ref10_fe yplusx;
    crypto_core_curve25519_ref10_fe yminusx;
    crypto_core_curve25519_ref10_fe xy2d;
} crypto_core_curve25519_ref10_ge_precomp;


typedef struct {
    crypto_core_curve25519_ref10_fe YplusX;
    crypto_core_curve25519_ref10_fe YminusX;
    crypto_core_curve25519_ref10_fe Z;
    crypto_core_curve25519_ref10_fe T2d;
} crypto_core_curve25519_ref10_ge_cached;
# 127 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/private/curve25519_ref10.h"
extern void crypto_core_curve25519_ref10_ge_tobytes(unsigned char *,const crypto_core_curve25519_ref10_ge_p2 *);
extern void crypto_core_curve25519_ref10_ge_p3_tobytes(unsigned char *,const crypto_core_curve25519_ref10_ge_p3 *);
extern int crypto_core_curve25519_ref10_ge_frombytes_negate_vartime(crypto_core_curve25519_ref10_ge_p3 *,const unsigned char *);

extern void crypto_core_curve25519_ref10_ge_p2_0(crypto_core_curve25519_ref10_ge_p2 *);
extern void crypto_core_curve25519_ref10_ge_p3_0(crypto_core_curve25519_ref10_ge_p3 *);
extern void crypto_core_curve25519_ref10_ge_precomp_0(crypto_core_curve25519_ref10_ge_precomp *);
extern void crypto_core_curve25519_ref10_ge_p3_to_p2(crypto_core_curve25519_ref10_ge_p2 *,const crypto_core_curve25519_ref10_ge_p3 *);
extern void crypto_core_curve25519_ref10_ge_p3_to_cached(crypto_core_curve25519_ref10_ge_cached *,const crypto_core_curve25519_ref10_ge_p3 *);
extern void crypto_core_curve25519_ref10_ge_p1p1_to_p2(crypto_core_curve25519_ref10_ge_p2 *,const crypto_core_curve25519_ref10_ge_p1p1 *);
extern void crypto_core_curve25519_ref10_ge_p1p1_to_p3(crypto_core_curve25519_ref10_ge_p3 *,const crypto_core_curve25519_ref10_ge_p1p1 *);
extern void crypto_core_curve25519_ref10_ge_p2_dbl(crypto_core_curve25519_ref10_ge_p1p1 *,const crypto_core_curve25519_ref10_ge_p2 *);
extern void crypto_core_curve25519_ref10_ge_p3_dbl(crypto_core_curve25519_ref10_ge_p1p1 *,const crypto_core_curve25519_ref10_ge_p3 *);

extern void crypto_core_curve25519_ref10_ge_madd(crypto_core_curve25519_ref10_ge_p1p1 *,const crypto_core_curve25519_ref10_ge_p3 *,const crypto_core_curve25519_ref10_ge_precomp *);
extern void crypto_core_curve25519_ref10_ge_msub(crypto_core_curve25519_ref10_ge_p1p1 *,const crypto_core_curve25519_ref10_ge_p3 *,const crypto_core_curve25519_ref10_ge_precomp *);
extern void crypto_core_curve25519_ref10_ge_add(crypto_core_curve25519_ref10_ge_p1p1 *,const crypto_core_curve25519_ref10_ge_p3 *,const crypto_core_curve25519_ref10_ge_cached *);
extern void crypto_core_curve25519_ref10_ge_sub(crypto_core_curve25519_ref10_ge_p1p1 *,const crypto_core_curve25519_ref10_ge_p3 *,const crypto_core_curve25519_ref10_ge_cached *);
extern void crypto_core_curve25519_ref10_ge_scalarmult_base(crypto_core_curve25519_ref10_ge_p3 *,const unsigned char *);
extern void crypto_core_curve25519_ref10_ge_double_scalarmult_vartime(crypto_core_curve25519_ref10_ge_p2 *,const unsigned char *,const crypto_core_curve25519_ref10_ge_p3 *,const unsigned char *);
extern void crypto_core_curve25519_ref10_ge_scalarmult_vartime(crypto_core_curve25519_ref10_ge_p3 *,const unsigned char *,const crypto_core_curve25519_ref10_ge_p3 *);
# 157 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/private/curve25519_ref10.h"
extern void crypto_core_curve25519_ref10_sc_reduce(unsigned char *);
extern void crypto_core_curve25519_ref10_sc_muladd(unsigned char *,const unsigned char *,const unsigned char *,const unsigned char *);
# 9 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_scalarmult/curve25519/ref10/x25519_ref10.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h" 1




# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 6 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/export.h" 1
# 8 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h" 2
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
# 10 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_scalarmult/curve25519/ref10/x25519_ref10.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_scalarmult/curve25519/ref10/x25519_ref10.h" 1



# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_scalarmult_curve25519.h" 1



# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 5 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_scalarmult_curve25519.h" 2
# 13 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_scalarmult_curve25519.h"
__attribute__ ((visibility ("default")))
size_t crypto_scalarmult_curve25519_bytes(void);


__attribute__ ((visibility ("default")))
size_t crypto_scalarmult_curve25519_scalarbytes(void);

__attribute__ ((visibility ("default")))
int crypto_scalarmult_curve25519(unsigned char *q, const unsigned char *n,
                                 const unsigned char *p)
            __attribute__ ((warn_unused_result));

__attribute__ ((visibility ("default")))
int crypto_scalarmult_curve25519_base(unsigned char *q, const unsigned char *n);



int _crypto_scalarmult_curve25519_pick_best_implementation(void);
# 5 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_scalarmult/curve25519/ref10/x25519_ref10.h" 2


extern struct crypto_scalarmult_curve25519_implementation
        crypto_scalarmult_curve25519_ref10_implementation;
# 11 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_scalarmult/curve25519/ref10/x25519_ref10.c" 2
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_scalarmult/curve25519/ref10/x25519_ref10.c"
static void
fe_cswap(crypto_core_curve25519_ref10_fe f, crypto_core_curve25519_ref10_fe g, unsigned int b)
{
    int32_t f0 = f[0];
    int32_t f1 = f[1];
    int32_t f2 = f[2];
    int32_t f3 = f[3];
    int32_t f4 = f[4];
    int32_t f5 = f[5];
    int32_t f6 = f[6];
    int32_t f7 = f[7];
    int32_t f8 = f[8];
    int32_t f9 = f[9];
    int32_t g0 = g[0];
    int32_t g1 = g[1];
    int32_t g2 = g[2];
    int32_t g3 = g[3];
    int32_t g4 = g[4];
    int32_t g5 = g[5];
    int32_t g6 = g[6];
    int32_t g7 = g[7];
    int32_t g8 = g[8];
    int32_t g9 = g[9];
    int32_t x0 = f0 ^ g0;
    int32_t x1 = f1 ^ g1;
    int32_t x2 = f2 ^ g2;
    int32_t x3 = f3 ^ g3;
    int32_t x4 = f4 ^ g4;
    int32_t x5 = f5 ^ g5;
    int32_t x6 = f6 ^ g6;
    int32_t x7 = f7 ^ g7;
    int32_t x8 = f8 ^ g8;
    int32_t x9 = f9 ^ g9;

    b = (unsigned int)(-(int)b);
    x0 &= b;
    x1 &= b;
    x2 &= b;
    x3 &= b;
    x4 &= b;
    x5 &= b;
    x6 &= b;
    x7 &= b;
    x8 &= b;
    x9 &= b;
    f[0] = f0 ^ x0;
    f[1] = f1 ^ x1;
    f[2] = f2 ^ x2;
    f[3] = f3 ^ x3;
    f[4] = f4 ^ x4;
    f[5] = f5 ^ x5;
    f[6] = f6 ^ x6;
    f[7] = f7 ^ x7;
    f[8] = f8 ^ x8;
    f[9] = f9 ^ x9;
    g[0] = g0 ^ x0;
    g[1] = g1 ^ x1;
    g[2] = g2 ^ x2;
    g[3] = g3 ^ x3;
    g[4] = g4 ^ x4;
    g[5] = g5 ^ x5;
    g[6] = g6 ^ x6;
    g[7] = g7 ^ x7;
    g[8] = g8 ^ x8;
    g[9] = g9 ^ x9;
}
# 97 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_scalarmult/curve25519/ref10/x25519_ref10.c"
static void
fe_mul121666(crypto_core_curve25519_ref10_fe h, const crypto_core_curve25519_ref10_fe f)
{
    int32_t f0 = f[0];
    int32_t f1 = f[1];
    int32_t f2 = f[2];
    int32_t f3 = f[3];
    int32_t f4 = f[4];
    int32_t f5 = f[5];
    int32_t f6 = f[6];
    int32_t f7 = f[7];
    int32_t f8 = f[8];
    int32_t f9 = f[9];
    int64_t h0 = f0 * (int64_t)121666;
    int64_t h1 = f1 * (int64_t)121666;
    int64_t h2 = f2 * (int64_t)121666;
    int64_t h3 = f3 * (int64_t)121666;
    int64_t h4 = f4 * (int64_t)121666;
    int64_t h5 = f5 * (int64_t)121666;
    int64_t h6 = f6 * (int64_t)121666;
    int64_t h7 = f7 * (int64_t)121666;
    int64_t h8 = f8 * (int64_t)121666;
    int64_t h9 = f9 * (int64_t)121666;
    int64_t carry0;
    int64_t carry1;
    int64_t carry2;
    int64_t carry3;
    int64_t carry4;
    int64_t carry5;
    int64_t carry6;
    int64_t carry7;
    int64_t carry8;
    int64_t carry9;

    carry9 = (h9 + ((int64_t)1 << 24)) >> 25;
    h0 += carry9 * 19;
    h9 -= carry9 * ((int64_t)1 << 25);
    carry1 = (h1 + ((int64_t)1 << 24)) >> 25;
    h2 += carry1;
    h1 -= carry1 * ((int64_t)1 << 25);
    carry3 = (h3 + ((int64_t)1 << 24)) >> 25;
    h4 += carry3;
    h3 -= carry3 * ((int64_t)1 << 25);
    carry5 = (h5 + ((int64_t)1 << 24)) >> 25;
    h6 += carry5;
    h5 -= carry5 * ((int64_t)1 << 25);
    carry7 = (h7 + ((int64_t)1 << 24)) >> 25;
    h8 += carry7;
    h7 -= carry7 * ((int64_t)1 << 25);

    carry0 = (h0 + ((int64_t)1 << 25)) >> 26;
    h1 += carry0;
    h0 -= carry0 * ((int64_t)1 << 26);
    carry2 = (h2 + ((int64_t)1 << 25)) >> 26;
    h3 += carry2;
    h2 -= carry2 * ((int64_t)1 << 26);
    carry4 = (h4 + ((int64_t)1 << 25)) >> 26;
    h5 += carry4;
    h4 -= carry4 * ((int64_t)1 << 26);
    carry6 = (h6 + ((int64_t)1 << 25)) >> 26;
    h7 += carry6;
    h6 -= carry6 * ((int64_t)1 << 26);
    carry8 = (h8 + ((int64_t)1 << 25)) >> 26;
    h9 += carry8;
    h8 -= carry8 * ((int64_t)1 << 26);

    h[0] = h0;
    h[1] = h1;
    h[2] = h2;
    h[3] = h3;
    h[4] = h4;
    h[5] = h5;
    h[6] = h6;
    h[7] = h7;
    h[8] = h8;
    h[9] = h9;
}

static int
crypto_scalarmult_curve25519_ref10(unsigned char *q,
                                   const unsigned char *n,
                                   const unsigned char *p)
{
    unsigned char e[32];
    unsigned int i;
    crypto_core_curve25519_ref10_fe x1;
    crypto_core_curve25519_ref10_fe x2;
    crypto_core_curve25519_ref10_fe z2;
    crypto_core_curve25519_ref10_fe x3;
    crypto_core_curve25519_ref10_fe z3;
    crypto_core_curve25519_ref10_fe tmp0;
    crypto_core_curve25519_ref10_fe tmp1;
    int pos;
    unsigned int swap;
    unsigned int b;

    for (i = 0; i < 32; ++i) {
        e[i] = n[i];
    }
    e[0] &= 248;
    e[31] &= 127;
    e[31] |= 64;
    crypto_core_curve25519_ref10_fe_frombytes(x1, p);
    crypto_core_curve25519_ref10_fe_1(x2);
    crypto_core_curve25519_ref10_fe_0(z2);
    crypto_core_curve25519_ref10_fe_copy(x3, x1);
    crypto_core_curve25519_ref10_fe_1(z3);

    swap = 0;
    for (pos = 254; pos >= 0; --pos) {
        b = e[pos / 8] >> (pos & 7);
        b &= 1;
        swap ^= b;
        fe_cswap(x2, x3, swap);
        fe_cswap(z2, z3, swap);
        swap = b;
        crypto_core_curve25519_ref10_fe_sub(tmp0, x3, z3);
        crypto_core_curve25519_ref10_fe_sub(tmp1, x2, z2);
        crypto_core_curve25519_ref10_fe_add(x2, x2, z2);
        crypto_core_curve25519_ref10_fe_add(z2, x3, z3);
        crypto_core_curve25519_ref10_fe_mul(z3, tmp0, x2);
        crypto_core_curve25519_ref10_fe_mul(z2, z2, tmp1);
        crypto_core_curve25519_ref10_fe_sq(tmp0, tmp1);
        crypto_core_curve25519_ref10_fe_sq(tmp1, x2);
        crypto_core_curve25519_ref10_fe_add(x3, z3, z2);
        crypto_core_curve25519_ref10_fe_sub(z2, z3, z2);
        crypto_core_curve25519_ref10_fe_mul(x2, tmp1, tmp0);
        crypto_core_curve25519_ref10_fe_sub(tmp1, tmp1, tmp0);
        crypto_core_curve25519_ref10_fe_sq(z2, z2);
        fe_mul121666(z3, tmp1);
        crypto_core_curve25519_ref10_fe_sq(x3, x3);
        crypto_core_curve25519_ref10_fe_add(tmp0, tmp0, z3);
        crypto_core_curve25519_ref10_fe_mul(z3, x1, z2);
        crypto_core_curve25519_ref10_fe_mul(z2, tmp1, tmp0);
    }
    fe_cswap(x2, x3, swap);
    fe_cswap(z2, z3, swap);

    crypto_core_curve25519_ref10_fe_invert(z2, z2);
    crypto_core_curve25519_ref10_fe_mul(x2, x2, z2);
    crypto_core_curve25519_ref10_fe_tobytes(q, x2);

    return 0;
}

static void
edwards_to_montgomery(crypto_core_curve25519_ref10_fe montgomeryX, const crypto_core_curve25519_ref10_fe edwardsY, const crypto_core_curve25519_ref10_fe edwardsZ)
{
    crypto_core_curve25519_ref10_fe tempX;
    crypto_core_curve25519_ref10_fe tempZ;

    crypto_core_curve25519_ref10_fe_add(tempX, edwardsZ, edwardsY);
    crypto_core_curve25519_ref10_fe_sub(tempZ, edwardsZ, edwardsY);
    crypto_core_curve25519_ref10_fe_invert(tempZ, tempZ);
    crypto_core_curve25519_ref10_fe_mul(montgomeryX, tempX, tempZ);
}

static int
crypto_scalarmult_curve25519_ref10_base(unsigned char *q,
                                        const unsigned char *n)
{
    unsigned char e[32];
    crypto_core_curve25519_ref10_ge_p3 A;
    crypto_core_curve25519_ref10_fe pk;
    unsigned int i;

    for (i = 0; i < 32; ++i) {
        e[i] = n[i];
    }
    e[0] &= 248;
    e[31] &= 127;
    e[31] |= 64;
    crypto_core_curve25519_ref10_ge_scalarmult_base(&A, e);
    edwards_to_montgomery(pk, A.Y, A.Z);
    crypto_core_curve25519_ref10_fe_tobytes(q, pk);

    return 0;
}

struct crypto_scalarmult_curve25519_implementation
    crypto_scalarmult_curve25519_ref10_implementation = {
        .mult = crypto_scalarmult_curve25519_ref10,
        .mult_base = crypto_scalarmult_curve25519_ref10_base
    };
