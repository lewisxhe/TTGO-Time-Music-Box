# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/ccm.c"
# 1 "D:\\ESP32\\esp-idf-v3.1-rc1\\ESP32_PIC_A2DP\\build\\mbedtls//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/ccm.c"
# 34 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/ccm.c"
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
# 35 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/ccm.c" 2




# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/ccm.h" 1
# 52 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/ccm.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h" 1
# 38 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 149 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4

# 149 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef int ptrdiff_t;
# 216 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef unsigned int size_t;
# 328 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef short unsigned int wchar_t;
# 39 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h" 2
# 80 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h"

# 80 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h"
typedef enum {
    MBEDTLS_CIPHER_ID_NONE = 0,
    MBEDTLS_CIPHER_ID_NULL,
    MBEDTLS_CIPHER_ID_AES,
    MBEDTLS_CIPHER_ID_DES,
    MBEDTLS_CIPHER_ID_3DES,
    MBEDTLS_CIPHER_ID_CAMELLIA,
    MBEDTLS_CIPHER_ID_BLOWFISH,
    MBEDTLS_CIPHER_ID_ARC4,
    MBEDTLS_CIPHER_ID_ARIA,
    MBEDTLS_CIPHER_ID_CHACHA20,
} mbedtls_cipher_id_t;
# 100 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h"
typedef enum {
    MBEDTLS_CIPHER_NONE = 0,
    MBEDTLS_CIPHER_NULL,
    MBEDTLS_CIPHER_AES_128_ECB,
    MBEDTLS_CIPHER_AES_192_ECB,
    MBEDTLS_CIPHER_AES_256_ECB,
    MBEDTLS_CIPHER_AES_128_CBC,
    MBEDTLS_CIPHER_AES_192_CBC,
    MBEDTLS_CIPHER_AES_256_CBC,
    MBEDTLS_CIPHER_AES_128_CFB128,
    MBEDTLS_CIPHER_AES_192_CFB128,
    MBEDTLS_CIPHER_AES_256_CFB128,
    MBEDTLS_CIPHER_AES_128_CTR,
    MBEDTLS_CIPHER_AES_192_CTR,
    MBEDTLS_CIPHER_AES_256_CTR,
    MBEDTLS_CIPHER_AES_128_GCM,
    MBEDTLS_CIPHER_AES_192_GCM,
    MBEDTLS_CIPHER_AES_256_GCM,
    MBEDTLS_CIPHER_CAMELLIA_128_ECB,
    MBEDTLS_CIPHER_CAMELLIA_192_ECB,
    MBEDTLS_CIPHER_CAMELLIA_256_ECB,
    MBEDTLS_CIPHER_CAMELLIA_128_CBC,
    MBEDTLS_CIPHER_CAMELLIA_192_CBC,
    MBEDTLS_CIPHER_CAMELLIA_256_CBC,
    MBEDTLS_CIPHER_CAMELLIA_128_CFB128,
    MBEDTLS_CIPHER_CAMELLIA_192_CFB128,
    MBEDTLS_CIPHER_CAMELLIA_256_CFB128,
    MBEDTLS_CIPHER_CAMELLIA_128_CTR,
    MBEDTLS_CIPHER_CAMELLIA_192_CTR,
    MBEDTLS_CIPHER_CAMELLIA_256_CTR,
    MBEDTLS_CIPHER_CAMELLIA_128_GCM,
    MBEDTLS_CIPHER_CAMELLIA_192_GCM,
    MBEDTLS_CIPHER_CAMELLIA_256_GCM,
    MBEDTLS_CIPHER_DES_ECB,
    MBEDTLS_CIPHER_DES_CBC,
    MBEDTLS_CIPHER_DES_EDE_ECB,
    MBEDTLS_CIPHER_DES_EDE_CBC,
    MBEDTLS_CIPHER_DES_EDE3_ECB,
    MBEDTLS_CIPHER_DES_EDE3_CBC,
    MBEDTLS_CIPHER_BLOWFISH_ECB,
    MBEDTLS_CIPHER_BLOWFISH_CBC,
    MBEDTLS_CIPHER_BLOWFISH_CFB64,
    MBEDTLS_CIPHER_BLOWFISH_CTR,
    MBEDTLS_CIPHER_ARC4_128,
    MBEDTLS_CIPHER_AES_128_CCM,
    MBEDTLS_CIPHER_AES_192_CCM,
    MBEDTLS_CIPHER_AES_256_CCM,
    MBEDTLS_CIPHER_CAMELLIA_128_CCM,
    MBEDTLS_CIPHER_CAMELLIA_192_CCM,
    MBEDTLS_CIPHER_CAMELLIA_256_CCM,
    MBEDTLS_CIPHER_ARIA_128_ECB,
    MBEDTLS_CIPHER_ARIA_192_ECB,
    MBEDTLS_CIPHER_ARIA_256_ECB,
    MBEDTLS_CIPHER_ARIA_128_CBC,
    MBEDTLS_CIPHER_ARIA_192_CBC,
    MBEDTLS_CIPHER_ARIA_256_CBC,
    MBEDTLS_CIPHER_ARIA_128_CFB128,
    MBEDTLS_CIPHER_ARIA_192_CFB128,
    MBEDTLS_CIPHER_ARIA_256_CFB128,
    MBEDTLS_CIPHER_ARIA_128_CTR,
    MBEDTLS_CIPHER_ARIA_192_CTR,
    MBEDTLS_CIPHER_ARIA_256_CTR,
    MBEDTLS_CIPHER_ARIA_128_GCM,
    MBEDTLS_CIPHER_ARIA_192_GCM,
    MBEDTLS_CIPHER_ARIA_256_GCM,
    MBEDTLS_CIPHER_ARIA_128_CCM,
    MBEDTLS_CIPHER_ARIA_192_CCM,
    MBEDTLS_CIPHER_ARIA_256_CCM,
    MBEDTLS_CIPHER_AES_128_OFB,
    MBEDTLS_CIPHER_AES_192_OFB,
    MBEDTLS_CIPHER_AES_256_OFB,
    MBEDTLS_CIPHER_AES_128_XTS,
    MBEDTLS_CIPHER_AES_256_XTS,
    MBEDTLS_CIPHER_CHACHA20,
    MBEDTLS_CIPHER_CHACHA20_POLY1305,
} mbedtls_cipher_type_t;


typedef enum {
    MBEDTLS_MODE_NONE = 0,
    MBEDTLS_MODE_ECB,
    MBEDTLS_MODE_CBC,
    MBEDTLS_MODE_CFB,
    MBEDTLS_MODE_OFB,
    MBEDTLS_MODE_CTR,
    MBEDTLS_MODE_GCM,
    MBEDTLS_MODE_STREAM,
    MBEDTLS_MODE_CCM,
    MBEDTLS_MODE_XTS,
    MBEDTLS_MODE_CHACHAPOLY,
} mbedtls_cipher_mode_t;


typedef enum {
    MBEDTLS_PADDING_PKCS7 = 0,
    MBEDTLS_PADDING_ONE_AND_ZEROS,
    MBEDTLS_PADDING_ZEROS_AND_LEN,
    MBEDTLS_PADDING_ZEROS,
    MBEDTLS_PADDING_NONE,
} mbedtls_cipher_padding_t;


typedef enum {
    MBEDTLS_OPERATION_NONE = -1,
    MBEDTLS_DECRYPT = 0,
    MBEDTLS_ENCRYPT,
} mbedtls_operation_t;

enum {

    MBEDTLS_KEY_LENGTH_NONE = 0,

    MBEDTLS_KEY_LENGTH_DES = 64,

    MBEDTLS_KEY_LENGTH_DES_EDE = 128,

    MBEDTLS_KEY_LENGTH_DES_EDE3 = 192,
};
# 227 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h"
typedef struct mbedtls_cipher_base_t mbedtls_cipher_base_t;




typedef struct mbedtls_cmac_context_t mbedtls_cmac_context_t;





typedef struct {



    mbedtls_cipher_type_t type;


    mbedtls_cipher_mode_t mode;





    unsigned int key_bitlen;


    const char * name;





    unsigned int iv_size;





    int flags;


    unsigned int block_size;


    const mbedtls_cipher_base_t *base;

} mbedtls_cipher_info_t;




typedef struct {

    const mbedtls_cipher_info_t *cipher_info;


    int key_bitlen;




    mbedtls_operation_t operation;





    void (*add_padding)( unsigned char *output, size_t olen, size_t data_len );
    int (*get_padding)( unsigned char *input, size_t ilen, size_t *data_len );



    unsigned char unprocessed_data[16];


    size_t unprocessed_len;



    unsigned char iv[16];


    size_t iv_size;


    void *cipher_ctx;





} mbedtls_cipher_context_t;
# 328 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h"
const int *mbedtls_cipher_list( void );
# 340 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h"
const mbedtls_cipher_info_t *mbedtls_cipher_info_from_string( const char *cipher_name );
# 352 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h"
const mbedtls_cipher_info_t *mbedtls_cipher_info_from_type( const mbedtls_cipher_type_t cipher_type );
# 368 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h"
const mbedtls_cipher_info_t *mbedtls_cipher_info_from_values( const mbedtls_cipher_id_t cipher_id,
                                              int key_bitlen,
                                              const mbedtls_cipher_mode_t mode );




void mbedtls_cipher_init( mbedtls_cipher_context_t *ctx );






void mbedtls_cipher_free( mbedtls_cipher_context_t *ctx );
# 403 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h"
int mbedtls_cipher_setup( mbedtls_cipher_context_t *ctx, const mbedtls_cipher_info_t *cipher_info );
# 413 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h"
static inline unsigned int mbedtls_cipher_get_block_size( const mbedtls_cipher_context_t *ctx )
{
    if( 
# 415 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h" 3 4
       ((void *)0) 
# 415 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h"
            == ctx || 
# 415 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h" 3 4
                      ((void *)0) 
# 415 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h"
                           == ctx->cipher_info )
        return 0;

    return ctx->cipher_info->block_size;
}
# 430 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h"
static inline mbedtls_cipher_mode_t mbedtls_cipher_get_cipher_mode( const mbedtls_cipher_context_t *ctx )
{
    if( 
# 432 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h" 3 4
       ((void *)0) 
# 432 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h"
            == ctx || 
# 432 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h" 3 4
                      ((void *)0) 
# 432 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h"
                           == ctx->cipher_info )
        return MBEDTLS_MODE_NONE;

    return ctx->cipher_info->mode;
}
# 448 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h"
static inline int mbedtls_cipher_get_iv_size( const mbedtls_cipher_context_t *ctx )
{
    if( 
# 450 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h" 3 4
       ((void *)0) 
# 450 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h"
            == ctx || 
# 450 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h" 3 4
                      ((void *)0) 
# 450 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h"
                           == ctx->cipher_info )
        return 0;

    if( ctx->iv_size != 0 )
        return (int) ctx->iv_size;

    return (int) ctx->cipher_info->iv_size;
}
# 467 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h"
static inline mbedtls_cipher_type_t mbedtls_cipher_get_type( const mbedtls_cipher_context_t *ctx )
{
    if( 
# 469 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h" 3 4
       ((void *)0) 
# 469 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h"
            == ctx || 
# 469 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h" 3 4
                      ((void *)0) 
# 469 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h"
                           == ctx->cipher_info )
        return MBEDTLS_CIPHER_NONE;

    return ctx->cipher_info->type;
}
# 484 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h"
static inline const char *mbedtls_cipher_get_name( const mbedtls_cipher_context_t *ctx )
{
    if( 
# 486 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h" 3 4
       ((void *)0) 
# 486 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h"
            == ctx || 
# 486 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h" 3 4
                      ((void *)0) 
# 486 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h"
                           == ctx->cipher_info )
        return 0;

    return ctx->cipher_info->name;
}
# 501 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h"
static inline int mbedtls_cipher_get_key_bitlen( const mbedtls_cipher_context_t *ctx )
{
    if( 
# 503 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h" 3 4
       ((void *)0) 
# 503 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h"
            == ctx || 
# 503 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h" 3 4
                      ((void *)0) 
# 503 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h"
                           == ctx->cipher_info )
        return MBEDTLS_KEY_LENGTH_NONE;

    return (int) ctx->cipher_info->key_bitlen;
}
# 517 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h"
static inline mbedtls_operation_t mbedtls_cipher_get_operation( const mbedtls_cipher_context_t *ctx )
{
    if( 
# 519 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h" 3 4
       ((void *)0) 
# 519 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h"
            == ctx || 
# 519 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h" 3 4
                      ((void *)0) 
# 519 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h"
                           == ctx->cipher_info )
        return MBEDTLS_OPERATION_NONE;

    return ctx->operation;
}
# 541 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h"
int mbedtls_cipher_setkey( mbedtls_cipher_context_t *ctx, const unsigned char *key,
                   int key_bitlen, const mbedtls_operation_t operation );
# 560 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h"
int mbedtls_cipher_set_padding_mode( mbedtls_cipher_context_t *ctx, mbedtls_cipher_padding_t mode );
# 579 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h"
int mbedtls_cipher_set_iv( mbedtls_cipher_context_t *ctx,
                   const unsigned char *iv, size_t iv_len );
# 591 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h"
int mbedtls_cipher_reset( mbedtls_cipher_context_t *ctx );
# 606 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h"
int mbedtls_cipher_update_ad( mbedtls_cipher_context_t *ctx,
                      const unsigned char *ad, size_t ad_len );
# 641 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h"
int mbedtls_cipher_update( mbedtls_cipher_context_t *ctx, const unsigned char *input,
                   size_t ilen, unsigned char *output, size_t *olen );
# 663 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h"
int mbedtls_cipher_finish( mbedtls_cipher_context_t *ctx,
                   unsigned char *output, size_t *olen );
# 679 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h"
int mbedtls_cipher_write_tag( mbedtls_cipher_context_t *ctx,
                      unsigned char *tag, size_t tag_len );
# 694 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h"
int mbedtls_cipher_check_tag( mbedtls_cipher_context_t *ctx,
                      const unsigned char *tag, size_t tag_len );
# 727 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h"
int mbedtls_cipher_crypt( mbedtls_cipher_context_t *ctx,
                  const unsigned char *iv, size_t iv_len,
                  const unsigned char *input, size_t ilen,
                  unsigned char *output, size_t *olen );
# 756 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h"
int mbedtls_cipher_auth_encrypt( mbedtls_cipher_context_t *ctx,
                         const unsigned char *iv, size_t iv_len,
                         const unsigned char *ad, size_t ad_len,
                         const unsigned char *input, size_t ilen,
                         unsigned char *output, size_t *olen,
                         unsigned char *tag, size_t tag_len );
# 791 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/cipher.h"
int mbedtls_cipher_auth_decrypt( mbedtls_cipher_context_t *ctx,
                         const unsigned char *iv, size_t iv_len,
                         const unsigned char *ad, size_t ad_len,
                         const unsigned char *input, size_t ilen,
                         unsigned char *output, size_t *olen,
                         const unsigned char *tag, size_t tag_len );
# 53 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/ccm.h" 2
# 71 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/ccm.h"
typedef struct {
    mbedtls_cipher_context_t cipher_ctx;
}
mbedtls_ccm_context;
# 87 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/ccm.h"
void mbedtls_ccm_init( mbedtls_ccm_context *ctx );
# 101 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/ccm.h"
int mbedtls_ccm_setkey( mbedtls_ccm_context *ctx,
                        mbedtls_cipher_id_t cipher,
                        const unsigned char *key,
                        unsigned int keybits );







void mbedtls_ccm_free( mbedtls_ccm_context *ctx );
# 142 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/ccm.h"
int mbedtls_ccm_encrypt_and_tag( mbedtls_ccm_context *ctx, size_t length,
                         const unsigned char *iv, size_t iv_len,
                         const unsigned char *add, size_t add_len,
                         const unsigned char *input, unsigned char *output,
                         unsigned char *tag, size_t tag_len );
# 183 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/ccm.h"
int mbedtls_ccm_star_encrypt_and_tag( mbedtls_ccm_context *ctx, size_t length,
                         const unsigned char *iv, size_t iv_len,
                         const unsigned char *add, size_t add_len,
                         const unsigned char *input, unsigned char *output,
                         unsigned char *tag, size_t tag_len );
# 213 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/ccm.h"
int mbedtls_ccm_auth_decrypt( mbedtls_ccm_context *ctx, size_t length,
                      const unsigned char *iv, size_t iv_len,
                      const unsigned char *add, size_t add_len,
                      const unsigned char *input, unsigned char *output,
                      const unsigned char *tag, size_t tag_len );
# 251 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/ccm.h"
int mbedtls_ccm_star_auth_decrypt( mbedtls_ccm_context *ctx, size_t length,
                      const unsigned char *iv, size_t iv_len,
                      const unsigned char *add, size_t add_len,
                      const unsigned char *input, unsigned char *output,
                      const unsigned char *tag, size_t tag_len );
# 264 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/ccm.h"
int mbedtls_ccm_self_test( int verbose );
# 40 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/ccm.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/platform_util.h" 1
# 28 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/platform_util.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 29 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/platform_util.h" 2
# 56 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/platform_util.h"
void mbedtls_platform_zeroize( void *buf, size_t len );
# 41 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/ccm.c" 2

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


# 43 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/ccm.c" 2



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
# 27 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/time.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/types.h" 1
# 69 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/types.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 70 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/types.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/types.h" 1
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
# 28 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/time.h" 2



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
# 59 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/platform.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdio.h" 1
# 36 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdio.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 37 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdio.h" 2


# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdarg.h" 1 3 4
# 40 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdarg.h" 3 4

# 40 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 40 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdio.h" 2
# 50 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdio.h"



# 52 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdio.h"
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

# 60 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/platform.h" 2
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
# 47 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/ccm.c" 2
# 61 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/ccm.c"
void mbedtls_ccm_init( mbedtls_ccm_context *ctx )
{
    memset( ctx, 0, sizeof( mbedtls_ccm_context ) );
}

int mbedtls_ccm_setkey( mbedtls_ccm_context *ctx,
                        mbedtls_cipher_id_t cipher,
                        const unsigned char *key,
                        unsigned int keybits )
{
    int ret;
    const mbedtls_cipher_info_t *cipher_info;

    cipher_info = mbedtls_cipher_info_from_values( cipher, keybits, MBEDTLS_MODE_ECB );
    if( cipher_info == 
# 75 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/ccm.c" 3 4
                      ((void *)0) 
# 75 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/ccm.c"
                           )
        return( -0x000D );

    if( cipher_info->block_size != 16 )
        return( -0x000D );

    mbedtls_cipher_free( &ctx->cipher_ctx );

    if( ( ret = mbedtls_cipher_setup( &ctx->cipher_ctx, cipher_info ) ) != 0 )
        return( ret );

    if( ( ret = mbedtls_cipher_setkey( &ctx->cipher_ctx, key, keybits,
                               MBEDTLS_ENCRYPT ) ) != 0 )
    {
        return( ret );
    }

    return( 0 );
}




void mbedtls_ccm_free( mbedtls_ccm_context *ctx )
{
    mbedtls_cipher_free( &ctx->cipher_ctx );
    mbedtls_platform_zeroize( ctx, sizeof( mbedtls_ccm_context ) );
}
# 135 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/ccm.c"
static int ccm_auth_crypt( mbedtls_ccm_context *ctx, int mode, size_t length,
                           const unsigned char *iv, size_t iv_len,
                           const unsigned char *add, size_t add_len,
                           const unsigned char *input, unsigned char *output,
                           unsigned char *tag, size_t tag_len )
{
    int ret;
    unsigned char i;
    unsigned char q;
    size_t len_left, olen;
    unsigned char b[16];
    unsigned char y[16];
    unsigned char ctr[16];
    const unsigned char *src;
    unsigned char *dst;
# 158 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/ccm.c"
    if( tag_len == 2 || tag_len > 16 || tag_len % 2 != 0 )
        return( -0x000D );


    if( iv_len < 7 || iv_len > 13 )
        return( -0x000D );

    if( add_len > 0xFF00 )
        return( -0x000D );

    q = 16 - 1 - (unsigned char) iv_len;
# 182 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/ccm.c"
    b[0] = 0;
    b[0] |= ( add_len > 0 ) << 6;
    b[0] |= ( ( tag_len - 2 ) / 2 ) << 3;
    b[0] |= q - 1;

    memcpy( b + 1, iv, iv_len );

    for( i = 0, len_left = length; i < q; i++, len_left >>= 8 )
        b[15-i] = (unsigned char)( len_left & 0xFF );

    if( len_left > 0 )
        return( -0x000D );



    memset( y, 0, 16 );
    for( i = 0; i < 16; i++ ) y[i] ^= b[i]; if( ( ret = mbedtls_cipher_update( &ctx->cipher_ctx, y, 16, y, &olen ) ) != 0 ) return( ret );;





    if( add_len > 0 )
    {
        size_t use_len;
        len_left = add_len;
        src = add;

        memset( b, 0, 16 );
        b[0] = (unsigned char)( ( add_len >> 8 ) & 0xFF );
        b[1] = (unsigned char)( ( add_len ) & 0xFF );

        use_len = len_left < 16 - 2 ? len_left : 16 - 2;
        memcpy( b + 2, src, use_len );
        len_left -= use_len;
        src += use_len;

        for( i = 0; i < 16; i++ ) y[i] ^= b[i]; if( ( ret = mbedtls_cipher_update( &ctx->cipher_ctx, y, 16, y, &olen ) ) != 0 ) return( ret );;

        while( len_left > 0 )
        {
            use_len = len_left > 16 ? 16 : len_left;

            memset( b, 0, 16 );
            memcpy( b, src, use_len );
            for( i = 0; i < 16; i++ ) y[i] ^= b[i]; if( ( ret = mbedtls_cipher_update( &ctx->cipher_ctx, y, 16, y, &olen ) ) != 0 ) return( ret );;

            len_left -= use_len;
            src += use_len;
        }
    }
# 244 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/ccm.c"
    ctr[0] = q - 1;
    memcpy( ctr + 1, iv, iv_len );
    memset( ctr + 1 + iv_len, 0, q );
    ctr[15] = 1;







    len_left = length;
    src = input;
    dst = output;

    while( len_left > 0 )
    {
        size_t use_len = len_left > 16 ? 16 : len_left;

        if( mode == 0 )
        {
            memset( b, 0, 16 );
            memcpy( b, src, use_len );
            for( i = 0; i < 16; i++ ) y[i] ^= b[i]; if( ( ret = mbedtls_cipher_update( &ctx->cipher_ctx, y, 16, y, &olen ) ) != 0 ) return( ret );;
        }

        if( ( ret = mbedtls_cipher_update( &ctx->cipher_ctx, ctr, 16, b, &olen ) ) != 0 ) return( ret ); for( i = 0; i < use_len; i++ ) dst[i] = src[i] ^ b[i];;

        if( mode == 1 )
        {
            memset( b, 0, 16 );
            memcpy( b, dst, use_len );
            for( i = 0; i < 16; i++ ) y[i] ^= b[i]; if( ( ret = mbedtls_cipher_update( &ctx->cipher_ctx, y, 16, y, &olen ) ) != 0 ) return( ret );;
        }

        dst += use_len;
        src += use_len;
        len_left -= use_len;





        for( i = 0; i < q; i++ )
            if( ++ctr[15-i] != 0 )
                break;
    }




    for( i = 0; i < q; i++ )
        ctr[15-i] = 0;

    if( ( ret = mbedtls_cipher_update( &ctx->cipher_ctx, ctr, 16, b, &olen ) ) != 0 ) return( ret ); for( i = 0; i < 16; i++ ) y[i] = y[i] ^ b[i];;
    memcpy( tag, y, tag_len );

    return( 0 );
}




int mbedtls_ccm_star_encrypt_and_tag( mbedtls_ccm_context *ctx, size_t length,
                         const unsigned char *iv, size_t iv_len,
                         const unsigned char *add, size_t add_len,
                         const unsigned char *input, unsigned char *output,
                         unsigned char *tag, size_t tag_len )
{
    return( ccm_auth_crypt( ctx, 0, length, iv, iv_len,
                            add, add_len, input, output, tag, tag_len ) );
}

int mbedtls_ccm_encrypt_and_tag( mbedtls_ccm_context *ctx, size_t length,
                         const unsigned char *iv, size_t iv_len,
                         const unsigned char *add, size_t add_len,
                         const unsigned char *input, unsigned char *output,
                         unsigned char *tag, size_t tag_len )
{
    if( tag_len == 0 )
        return( -0x000D );

    return( mbedtls_ccm_star_encrypt_and_tag( ctx, length, iv, iv_len, add,
                add_len, input, output, tag, tag_len ) );
}




int mbedtls_ccm_star_auth_decrypt( mbedtls_ccm_context *ctx, size_t length,
                      const unsigned char *iv, size_t iv_len,
                      const unsigned char *add, size_t add_len,
                      const unsigned char *input, unsigned char *output,
                      const unsigned char *tag, size_t tag_len )
{
    int ret;
    unsigned char check_tag[16];
    unsigned char i;
    int diff;

    if( ( ret = ccm_auth_crypt( ctx, 1, length,
                                iv, iv_len, add, add_len,
                                input, output, check_tag, tag_len ) ) != 0 )
    {
        return( ret );
    }


    for( diff = 0, i = 0; i < tag_len; i++ )
        diff |= tag[i] ^ check_tag[i];

    if( diff != 0 )
    {
        mbedtls_platform_zeroize( output, length );
        return( -0x000F );
    }

    return( 0 );
}

int mbedtls_ccm_auth_decrypt( mbedtls_ccm_context *ctx, size_t length,
                      const unsigned char *iv, size_t iv_len,
                      const unsigned char *add, size_t add_len,
                      const unsigned char *input, unsigned char *output,
                      const unsigned char *tag, size_t tag_len )
{
    if( tag_len == 0 )
        return( -0x000D );

    return( mbedtls_ccm_star_auth_decrypt( ctx, length, iv, iv_len, add,
                add_len, input, output, tag, tag_len ) );
}
# 388 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/ccm.c"
static const unsigned char key[] = {
    0x40, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47,
    0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f
};

static const unsigned char iv[] = {
    0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17,
    0x18, 0x19, 0x1a, 0x1b
};

static const unsigned char ad[] = {
    0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07,
    0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f,
    0x10, 0x11, 0x12, 0x13
};

static const unsigned char msg[] = {
    0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27,
    0x28, 0x29, 0x2a, 0x2b, 0x2c, 0x2d, 0x2e, 0x2f,
    0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37,
};

static const size_t iv_len [3] = { 7, 8, 12 };
static const size_t add_len[3] = { 8, 16, 20 };
static const size_t msg_len[3] = { 4, 16, 24 };
static const size_t tag_len[3] = { 4, 6, 8 };

static const unsigned char res[3][32] = {
    { 0x71, 0x62, 0x01, 0x5b, 0x4d, 0xac, 0x25, 0x5d },
    { 0xd2, 0xa1, 0xf0, 0xe0, 0x51, 0xea, 0x5f, 0x62,
        0x08, 0x1a, 0x77, 0x92, 0x07, 0x3d, 0x59, 0x3d,
        0x1f, 0xc6, 0x4f, 0xbf, 0xac, 0xcd },
    { 0xe3, 0xb2, 0x01, 0xa9, 0xf5, 0xb7, 0x1a, 0x7a,
        0x9b, 0x1c, 0xea, 0xec, 0xcd, 0x97, 0xe7, 0x0b,
        0x61, 0x76, 0xaa, 0xd9, 0xa4, 0x42, 0x8a, 0xa5,
        0x48, 0x43, 0x92, 0xfb, 0xc1, 0xb0, 0x99, 0x51 }
};

int mbedtls_ccm_self_test( int verbose )
{
    mbedtls_ccm_context ctx;
    unsigned char out[32];
    size_t i;
    int ret;

    mbedtls_ccm_init( &ctx );

    if( mbedtls_ccm_setkey( &ctx, MBEDTLS_CIPHER_ID_AES, key, 8 * sizeof key ) != 0 )
    {
        if( verbose != 0 )
            printf( "  CCM: setup failed" );

        return( 1 );
    }

    for( i = 0; i < 3; i++ )
    {
        if( verbose != 0 )
            printf( "  CCM-AES #%u: ", (unsigned int) i + 1 );

        ret = mbedtls_ccm_encrypt_and_tag( &ctx, msg_len[i],
                                   iv, iv_len[i], ad, add_len[i],
                                   msg, out,
                                   out + msg_len[i], tag_len[i] );

        if( ret != 0 ||
            memcmp( out, res[i], msg_len[i] + tag_len[i] ) != 0 )
        {
            if( verbose != 0 )
                printf( "failed\n" );

            return( 1 );
        }

        ret = mbedtls_ccm_auth_decrypt( &ctx, msg_len[i],
                                iv, iv_len[i], ad, add_len[i],
                                res[i], out,
                                res[i] + msg_len[i], tag_len[i] );

        if( ret != 0 ||
            memcmp( out, msg, msg_len[i] ) != 0 )
        {
            if( verbose != 0 )
                printf( "failed\n" );

            return( 1 );
        }

        if( verbose != 0 )
            printf( "passed\n" );
    }

    mbedtls_ccm_free( &ctx );

    if( verbose != 0 )
        printf( "\n" );

    return( 0 );
}
