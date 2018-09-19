# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_scalarmult/crypto_scalarmult.c"
# 1 "D:\\ESP32\\esp-idf-v3.1-rc1\\ESP32_PIC_A2DP\\build\\libsodium//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_scalarmult/crypto_scalarmult.c"

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_scalarmult.h" 1



# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 149 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4

# 149 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef int ptrdiff_t;
# 216 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef unsigned int size_t;
# 328 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef short unsigned int wchar_t;
# 5 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_scalarmult.h" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_scalarmult_curve25519.h" 1



# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 5 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_scalarmult_curve25519.h" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/export.h" 1
# 7 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_scalarmult_curve25519.h" 2







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
# 7 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_scalarmult.h" 2







__attribute__ ((visibility ("default")))
size_t crypto_scalarmult_bytes(void);


__attribute__ ((visibility ("default")))
size_t crypto_scalarmult_scalarbytes(void);


__attribute__ ((visibility ("default")))
const char *crypto_scalarmult_primitive(void);

__attribute__ ((visibility ("default")))
int crypto_scalarmult_base(unsigned char *q, const unsigned char *n);

__attribute__ ((visibility ("default")))
int crypto_scalarmult(unsigned char *q, const unsigned char *n,
                      const unsigned char *p)
            __attribute__ ((warn_unused_result));
# 3 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_scalarmult/crypto_scalarmult.c" 2

const char *
crypto_scalarmult_primitive(void)
{
    return "curve25519";
}

int
crypto_scalarmult_base(unsigned char *q, const unsigned char *n)
{
    return crypto_scalarmult_curve25519_base(q, n);
}

int
crypto_scalarmult(unsigned char *q, const unsigned char *n,
                  const unsigned char *p)
{
    return crypto_scalarmult_curve25519(q, n, p);
}

size_t
crypto_scalarmult_bytes(void)
{
    return 32U;
}

size_t
crypto_scalarmult_scalarbytes(void)
{
    return 32U;
}
