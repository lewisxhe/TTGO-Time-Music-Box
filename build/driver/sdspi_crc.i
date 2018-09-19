# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdspi_crc.c"
# 1 "D:\\ESP32\\esp-idf-v3.1-rc1\\ESP32_PIC_A2DP\\build\\driver//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdspi_crc.c"
# 15 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdspi_crc.c"
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
# 16 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdspi_crc.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/crc.h" 1
# 51 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/crc.h"
uint32_t crc32_le(uint32_t crc, uint8_t const *buf, uint32_t len);
# 64 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/crc.h"
uint32_t crc32_be(uint32_t crc, uint8_t const *buf, uint32_t len);
# 77 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/crc.h"
uint16_t crc16_le(uint16_t crc, uint8_t const *buf, uint32_t len);
# 90 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/crc.h"
uint16_t crc16_be(uint16_t crc, uint8_t const *buf, uint32_t len);
# 103 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/crc.h"
uint8_t crc8_le(uint8_t crc, uint8_t const *buf, uint32_t len);
# 116 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/crc.h"
uint8_t crc8_be(uint8_t crc, uint8_t const *buf, uint32_t len);
# 17 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdspi_crc.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdspi_crc.h" 1
# 14 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdspi_crc.h"
       

# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 149 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4

# 149 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef int ptrdiff_t;
# 216 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef unsigned int size_t;
# 328 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef short unsigned int wchar_t;
# 17 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdspi_crc.h" 2
# 30 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdspi_crc.h"

# 30 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdspi_crc.h"
uint8_t sdspi_crc7(const uint8_t *data, size_t size);







uint16_t sdspi_crc16(const uint8_t* data, size_t size);
# 18 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdspi_crc.c" 2

static const uint8_t crc7_table[256] =
{
 0x00, 0x09, 0x12, 0x1b, 0x24, 0x2d, 0x36, 0x3f, 0x48, 0x41, 0x5a, 0x53, 0x6c, 0x65, 0x7e, 0x77,
 0x19, 0x10, 0x0b, 0x02, 0x3d, 0x34, 0x2f, 0x26, 0x51, 0x58, 0x43, 0x4a, 0x75, 0x7c, 0x67, 0x6e,
 0x32, 0x3b, 0x20, 0x29, 0x16, 0x1f, 0x04, 0x0d, 0x7a, 0x73, 0x68, 0x61, 0x5e, 0x57, 0x4c, 0x45,
 0x2b, 0x22, 0x39, 0x30, 0x0f, 0x06, 0x1d, 0x14, 0x63, 0x6a, 0x71, 0x78, 0x47, 0x4e, 0x55, 0x5c,
 0x64, 0x6d, 0x76, 0x7f, 0x40, 0x49, 0x52, 0x5b, 0x2c, 0x25, 0x3e, 0x37, 0x08, 0x01, 0x1a, 0x13,
 0x7d, 0x74, 0x6f, 0x66, 0x59, 0x50, 0x4b, 0x42, 0x35, 0x3c, 0x27, 0x2e, 0x11, 0x18, 0x03, 0x0a,
 0x56, 0x5f, 0x44, 0x4d, 0x72, 0x7b, 0x60, 0x69, 0x1e, 0x17, 0x0c, 0x05, 0x3a, 0x33, 0x28, 0x21,
 0x4f, 0x46, 0x5d, 0x54, 0x6b, 0x62, 0x79, 0x70, 0x07, 0x0e, 0x15, 0x1c, 0x23, 0x2a, 0x31, 0x38,
 0x41, 0x48, 0x53, 0x5a, 0x65, 0x6c, 0x77, 0x7e, 0x09, 0x00, 0x1b, 0x12, 0x2d, 0x24, 0x3f, 0x36,
 0x58, 0x51, 0x4a, 0x43, 0x7c, 0x75, 0x6e, 0x67, 0x10, 0x19, 0x02, 0x0b, 0x34, 0x3d, 0x26, 0x2f,
 0x73, 0x7a, 0x61, 0x68, 0x57, 0x5e, 0x45, 0x4c, 0x3b, 0x32, 0x29, 0x20, 0x1f, 0x16, 0x0d, 0x04,
 0x6a, 0x63, 0x78, 0x71, 0x4e, 0x47, 0x5c, 0x55, 0x22, 0x2b, 0x30, 0x39, 0x06, 0x0f, 0x14, 0x1d,
 0x25, 0x2c, 0x37, 0x3e, 0x01, 0x08, 0x13, 0x1a, 0x6d, 0x64, 0x7f, 0x76, 0x49, 0x40, 0x5b, 0x52,
 0x3c, 0x35, 0x2e, 0x27, 0x18, 0x11, 0x0a, 0x03, 0x74, 0x7d, 0x66, 0x6f, 0x50, 0x59, 0x42, 0x4b,
 0x17, 0x1e, 0x05, 0x0c, 0x33, 0x3a, 0x21, 0x28, 0x5f, 0x56, 0x4d, 0x44, 0x7b, 0x72, 0x69, 0x60,
 0x0e, 0x07, 0x1c, 0x15, 0x2a, 0x23, 0x38, 0x31, 0x46, 0x4f, 0x54, 0x5d, 0x62, 0x6b, 0x70, 0x79,
};


uint8_t sdspi_crc7(const uint8_t *data, size_t size)
{
    uint8_t result = 0;
    for (size_t i = 0; i < size; ++i) {
        result = crc7_table[(result << 1) ^ data[i]];
    }
    return result;
}


uint16_t sdspi_crc16(const uint8_t* data, size_t size)
{
    return __builtin_bswap16(crc16_be(0xffff, data, size) ^ 0xffff);
}
