# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_box/crypto_box.c"
# 1 "D:\\ESP32\\esp-idf-v3.1-rc1\\ESP32_PIC_A2DP\\build\\libsodium//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_box/crypto_box.c"

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_box.h" 1
# 11 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_box.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 149 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4

# 149 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef int ptrdiff_t;
# 216 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef unsigned int size_t;
# 328 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef short unsigned int wchar_t;
# 12 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_box.h" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_box_curve25519xsalsa20poly1305.h" 1



# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 5 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_box_curve25519xsalsa20poly1305.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/export.h" 1
# 6 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_box_curve25519xsalsa20poly1305.h" 2
# 15 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_box_curve25519xsalsa20poly1305.h"

# 15 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_box_curve25519xsalsa20poly1305.h"
__attribute__ ((visibility ("default")))
size_t crypto_box_curve25519xsalsa20poly1305_seedbytes(void);


__attribute__ ((visibility ("default")))
size_t crypto_box_curve25519xsalsa20poly1305_publickeybytes(void);


__attribute__ ((visibility ("default")))
size_t crypto_box_curve25519xsalsa20poly1305_secretkeybytes(void);


__attribute__ ((visibility ("default")))
size_t crypto_box_curve25519xsalsa20poly1305_beforenmbytes(void);


__attribute__ ((visibility ("default")))
size_t crypto_box_curve25519xsalsa20poly1305_noncebytes(void);


__attribute__ ((visibility ("default")))
size_t crypto_box_curve25519xsalsa20poly1305_macbytes(void);


__attribute__ ((visibility ("default")))
size_t crypto_box_curve25519xsalsa20poly1305_boxzerobytes(void);




__attribute__ ((visibility ("default")))
size_t crypto_box_curve25519xsalsa20poly1305_zerobytes(void);

__attribute__ ((visibility ("default")))
int crypto_box_curve25519xsalsa20poly1305(unsigned char *c,
                                          const unsigned char *m,
                                          unsigned long long mlen,
                                          const unsigned char *n,
                                          const unsigned char *pk,
                                          const unsigned char *sk)
            __attribute__ ((warn_unused_result));

__attribute__ ((visibility ("default")))
int crypto_box_curve25519xsalsa20poly1305_open(unsigned char *m,
                                               const unsigned char *c,
                                               unsigned long long clen,
                                               const unsigned char *n,
                                               const unsigned char *pk,
                                               const unsigned char *sk)
            __attribute__ ((warn_unused_result));

__attribute__ ((visibility ("default")))
int crypto_box_curve25519xsalsa20poly1305_seed_keypair(unsigned char *pk,
                                                       unsigned char *sk,
                                                       const unsigned char *seed);

__attribute__ ((visibility ("default")))
int crypto_box_curve25519xsalsa20poly1305_keypair(unsigned char *pk,
                                                  unsigned char *sk);

__attribute__ ((visibility ("default")))
int crypto_box_curve25519xsalsa20poly1305_beforenm(unsigned char *k,
                                                   const unsigned char *pk,
                                                   const unsigned char *sk)
            __attribute__ ((warn_unused_result));

__attribute__ ((visibility ("default")))
int crypto_box_curve25519xsalsa20poly1305_afternm(unsigned char *c,
                                                  const unsigned char *m,
                                                  unsigned long long mlen,
                                                  const unsigned char *n,
                                                  const unsigned char *k);

__attribute__ ((visibility ("default")))
int crypto_box_curve25519xsalsa20poly1305_open_afternm(unsigned char *m,
                                                       const unsigned char *c,
                                                       unsigned long long clen,
                                                       const unsigned char *n,
                                                       const unsigned char *k)
            __attribute__ ((warn_unused_result));
# 14 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_box.h" 2
# 24 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_box.h"
__attribute__ ((visibility ("default")))
size_t crypto_box_seedbytes(void);


__attribute__ ((visibility ("default")))
size_t crypto_box_publickeybytes(void);


__attribute__ ((visibility ("default")))
size_t crypto_box_secretkeybytes(void);


__attribute__ ((visibility ("default")))
size_t crypto_box_noncebytes(void);


__attribute__ ((visibility ("default")))
size_t crypto_box_macbytes(void);


__attribute__ ((visibility ("default")))
const char *crypto_box_primitive(void);

__attribute__ ((visibility ("default")))
int crypto_box_seed_keypair(unsigned char *pk, unsigned char *sk,
                            const unsigned char *seed);

__attribute__ ((visibility ("default")))
int crypto_box_keypair(unsigned char *pk, unsigned char *sk);

__attribute__ ((visibility ("default")))
int crypto_box_easy(unsigned char *c, const unsigned char *m,
                    unsigned long long mlen, const unsigned char *n,
                    const unsigned char *pk, const unsigned char *sk)
            __attribute__ ((warn_unused_result));

__attribute__ ((visibility ("default")))
int crypto_box_open_easy(unsigned char *m, const unsigned char *c,
                         unsigned long long clen, const unsigned char *n,
                         const unsigned char *pk, const unsigned char *sk)
            __attribute__ ((warn_unused_result));

__attribute__ ((visibility ("default")))
int crypto_box_detached(unsigned char *c, unsigned char *mac,
                        const unsigned char *m, unsigned long long mlen,
                        const unsigned char *n, const unsigned char *pk,
                        const unsigned char *sk)
            __attribute__ ((warn_unused_result));

__attribute__ ((visibility ("default")))
int crypto_box_open_detached(unsigned char *m, const unsigned char *c,
                             const unsigned char *mac,
                             unsigned long long clen,
                             const unsigned char *n,
                             const unsigned char *pk,
                             const unsigned char *sk)
            __attribute__ ((warn_unused_result));




__attribute__ ((visibility ("default")))
size_t crypto_box_beforenmbytes(void);

__attribute__ ((visibility ("default")))
int crypto_box_beforenm(unsigned char *k, const unsigned char *pk,
                        const unsigned char *sk)
            __attribute__ ((warn_unused_result));

__attribute__ ((visibility ("default")))
int crypto_box_easy_afternm(unsigned char *c, const unsigned char *m,
                            unsigned long long mlen, const unsigned char *n,
                            const unsigned char *k);

__attribute__ ((visibility ("default")))
int crypto_box_open_easy_afternm(unsigned char *m, const unsigned char *c,
                                 unsigned long long clen, const unsigned char *n,
                                 const unsigned char *k)
            __attribute__ ((warn_unused_result));

__attribute__ ((visibility ("default")))
int crypto_box_detached_afternm(unsigned char *c, unsigned char *mac,
                                const unsigned char *m, unsigned long long mlen,
                                const unsigned char *n, const unsigned char *k);

__attribute__ ((visibility ("default")))
int crypto_box_open_detached_afternm(unsigned char *m, const unsigned char *c,
                                     const unsigned char *mac,
                                     unsigned long long clen, const unsigned char *n,
                                     const unsigned char *k)
            __attribute__ ((warn_unused_result));




__attribute__ ((visibility ("default")))
size_t crypto_box_sealbytes(void);

__attribute__ ((visibility ("default")))
int crypto_box_seal(unsigned char *c, const unsigned char *m,
                    unsigned long long mlen, const unsigned char *pk);

__attribute__ ((visibility ("default")))
int crypto_box_seal_open(unsigned char *m, const unsigned char *c,
                         unsigned long long clen,
                         const unsigned char *pk, const unsigned char *sk)
            __attribute__ ((warn_unused_result));




__attribute__ ((visibility ("default")))
size_t crypto_box_zerobytes(void);


__attribute__ ((visibility ("default")))
size_t crypto_box_boxzerobytes(void);

__attribute__ ((visibility ("default")))
int crypto_box(unsigned char *c, const unsigned char *m,
               unsigned long long mlen, const unsigned char *n,
               const unsigned char *pk, const unsigned char *sk)
            __attribute__ ((warn_unused_result));

__attribute__ ((visibility ("default")))
int crypto_box_open(unsigned char *m, const unsigned char *c,
                    unsigned long long clen, const unsigned char *n,
                    const unsigned char *pk, const unsigned char *sk)
            __attribute__ ((warn_unused_result));

__attribute__ ((visibility ("default")))
int crypto_box_afternm(unsigned char *c, const unsigned char *m,
                       unsigned long long mlen, const unsigned char *n,
                       const unsigned char *k);

__attribute__ ((visibility ("default")))
int crypto_box_open_afternm(unsigned char *m, const unsigned char *c,
                            unsigned long long clen, const unsigned char *n,
                            const unsigned char *k)
            __attribute__ ((warn_unused_result));
# 3 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_box/crypto_box.c" 2

size_t
crypto_box_seedbytes(void)
{
    return 32U;
}

size_t
crypto_box_publickeybytes(void)
{
    return 32U;
}

size_t
crypto_box_secretkeybytes(void)
{
    return 32U;
}

size_t
crypto_box_beforenmbytes(void)
{
    return 32U;
}

size_t
crypto_box_noncebytes(void)
{
    return 24U;
}

size_t
crypto_box_zerobytes(void)
{
    return (16U + 16U);
}

size_t
crypto_box_boxzerobytes(void)
{
    return 16U;
}

size_t
crypto_box_macbytes(void)
{
    return 16U;
}

const char *
crypto_box_primitive(void)
{
    return "curve25519xsalsa20poly1305";
}

int
crypto_box_seed_keypair(unsigned char *pk, unsigned char *sk,
                        const unsigned char *seed)
{
    return crypto_box_curve25519xsalsa20poly1305_seed_keypair(pk, sk, seed);
}

int
crypto_box_keypair(unsigned char *pk, unsigned char *sk)
{
    return crypto_box_curve25519xsalsa20poly1305_keypair(pk, sk);
}

int
crypto_box_beforenm(unsigned char *k, const unsigned char *pk,
                    const unsigned char *sk)
{
    return crypto_box_curve25519xsalsa20poly1305_beforenm(k, pk, sk);
}

int
crypto_box_afternm(unsigned char *c, const unsigned char *m,
                   unsigned long long mlen, const unsigned char *n,
                   const unsigned char *k)
{
    return crypto_box_curve25519xsalsa20poly1305_afternm(c, m, mlen, n, k);
}

int
crypto_box_open_afternm(unsigned char *m, const unsigned char *c,
                        unsigned long long clen, const unsigned char *n,
                        const unsigned char *k)
{
    return crypto_box_curve25519xsalsa20poly1305_open_afternm(m, c, clen, n, k);
}

int
crypto_box(unsigned char *c, const unsigned char *m,
           unsigned long long mlen, const unsigned char *n,
           const unsigned char *pk, const unsigned char *sk)
{
    return crypto_box_curve25519xsalsa20poly1305(c, m, mlen, n, pk, sk);
}

int
crypto_box_open(unsigned char *m, const unsigned char *c,
                unsigned long long clen, const unsigned char *n,
                const unsigned char *pk, const unsigned char *sk)
{
    return crypto_box_curve25519xsalsa20poly1305_open(m, c, clen, n, pk, sk);
}
