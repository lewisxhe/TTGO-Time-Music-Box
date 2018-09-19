# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/sodium/version.c"
# 1 "D:\\ESP32\\esp-idf-v3.1-rc1\\ESP32_PIC_A2DP\\build\\libsodium//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/sodium/version.c"

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/port_include/sodium/version.h" 1




# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/export.h" 1
# 6 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/port_include/sodium/version.h" 2
# 22 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/port_include/sodium/version.h"
__attribute__ ((visibility ("default")))
const char *sodium_version_string(void);

__attribute__ ((visibility ("default")))
int sodium_library_version_major(void);

__attribute__ ((visibility ("default")))
int sodium_library_version_minor(void);
# 3 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/sodium/version.c" 2

const char *
sodium_version_string(void)
{
    return "1.0.12-idf";
}

int
sodium_library_version_major(void)
{
    return 9;
}

int
sodium_library_version_minor(void)
{
    return 4;
}

int
sodium_library_minimal(void)
{



    return 0;

}
