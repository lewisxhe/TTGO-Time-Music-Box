# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/library/ssl_lib.c"
# 1 "D:\\ESP32\\esp-idf-v3.1-rc1\\ESP32_PIC_A2DP\\build\\openssl//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/library/ssl_lib.c"
# 15 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/library/ssl_lib.c"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/internal/ssl_lib.h" 1
# 22 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/internal/ssl_lib.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/internal/ssl_types.h" 1
# 22 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/internal/ssl_types.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/internal/ssl_code.h" 1
# 22 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/internal/ssl_code.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/internal/ssl3.h" 1
# 23 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/internal/ssl_code.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/internal/tls1.h" 1
# 24 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/internal/ssl_code.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/internal/x509_vfy.h" 1
# 25 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/internal/ssl_code.h" 2
# 64 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/internal/ssl_code.h"
typedef enum {

    MSG_FLOW_UNINITED,

    MSG_FLOW_ERROR,

    MSG_FLOW_RENEGOTIATE,

    MSG_FLOW_READING,

    MSG_FLOW_WRITING,

    MSG_FLOW_FINISHED
} MSG_FLOW_STATE;


typedef enum {
    TLS_ST_BEFORE,
    TLS_ST_OK,
    DTLS_ST_CR_HELLO_VERIFY_REQUEST,
    TLS_ST_CR_SRVR_HELLO,
    TLS_ST_CR_CERT,
    TLS_ST_CR_CERT_STATUS,
    TLS_ST_CR_KEY_EXCH,
    TLS_ST_CR_CERT_REQ,
    TLS_ST_CR_SRVR_DONE,
    TLS_ST_CR_SESSION_TICKET,
    TLS_ST_CR_CHANGE,
    TLS_ST_CR_FINISHED,
    TLS_ST_CW_CLNT_HELLO,
    TLS_ST_CW_CERT,
    TLS_ST_CW_KEY_EXCH,
    TLS_ST_CW_CERT_VRFY,
    TLS_ST_CW_CHANGE,
    TLS_ST_CW_NEXT_PROTO,
    TLS_ST_CW_FINISHED,
    TLS_ST_SW_HELLO_REQ,
    TLS_ST_SR_CLNT_HELLO,
    DTLS_ST_SW_HELLO_VERIFY_REQUEST,
    TLS_ST_SW_SRVR_HELLO,
    TLS_ST_SW_CERT,
    TLS_ST_SW_KEY_EXCH,
    TLS_ST_SW_CERT_REQ,
    TLS_ST_SW_SRVR_DONE,
    TLS_ST_SR_CERT,
    TLS_ST_SR_KEY_EXCH,
    TLS_ST_SR_CERT_VRFY,
    TLS_ST_SR_NEXT_PROTO,
    TLS_ST_SR_CHANGE,
    TLS_ST_SR_FINISHED,
    TLS_ST_SW_SESSION_TICKET,
    TLS_ST_SW_CERT_STATUS,
    TLS_ST_SW_CHANGE,
    TLS_ST_SW_FINISHED
} OSSL_HANDSHAKE_STATE;
# 23 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/internal/ssl_types.h" 2

typedef void SSL_CIPHER;

typedef void X509_STORE_CTX;
typedef void X509_STORE;

typedef void RSA;

typedef void STACK;







typedef int (*OPENSSL_sk_compfunc)(const void *, const void *);

struct stack_st;
typedef struct stack_st OPENSSL_STACK;

struct ssl_method_st;
typedef struct ssl_method_st SSL_METHOD;

struct ssl_method_func_st;
typedef struct ssl_method_func_st SSL_METHOD_FUNC;

struct record_layer_st;
typedef struct record_layer_st RECORD_LAYER;

struct ossl_statem_st;
typedef struct ossl_statem_st OSSL_STATEM;

struct ssl_session_st;
typedef struct ssl_session_st SSL_SESSION;

struct ssl_ctx_st;
typedef struct ssl_ctx_st SSL_CTX;

struct ssl_st;
typedef struct ssl_st SSL;

struct cert_st;
typedef struct cert_st CERT;

struct x509_st;
typedef struct x509_st X509;

struct X509_VERIFY_PARAM_st;
typedef struct X509_VERIFY_PARAM_st X509_VERIFY_PARAM;

struct evp_pkey_st;
typedef struct evp_pkey_st EVP_PKEY;

struct x509_method_st;
typedef struct x509_method_st X509_METHOD;

struct pkey_method_st;
typedef struct pkey_method_st PKEY_METHOD;

struct ssl_alpn_st;
typedef struct ssl_alpn_st SSL_ALPN;

struct bio_st;
typedef struct bio_st BIO;

struct stack_st {

    char **data;

    int num_alloc;

    OPENSSL_sk_compfunc c;
};

struct evp_pkey_st {

    void *pkey_pm;

    const PKEY_METHOD *method;
};

struct x509_st {


    void *x509_pm;

    const X509_METHOD *method;

    int ref_counter;
};

struct cert_st {

    int sec_level;

    X509 *x509;

    EVP_PKEY *pkey;

};

struct ossl_statem_st {

    MSG_FLOW_STATE state;

    int hand_state;
};

struct record_layer_st {

    int rstate;

    int read_ahead;
};

struct ssl_session_st {

    long timeout;

    long time;

    X509 *peer;
};

struct X509_VERIFY_PARAM_st {

    int depth;

};

struct bio_st {
    const unsigned char * data;
    int dlen;
};

typedef enum { ALPN_INIT, ALPN_ENABLE, ALPN_DISABLE, ALPN_ERROR } ALPN_STATUS;
struct ssl_alpn_st {
     ALPN_STATUS alpn_status;

     char *alpn_string;


     const char *alpn_list[10];
};

struct ssl_ctx_st
{
    int version;

    int references;

    unsigned long options;

    SSL_ALPN ssl_alpn;

    const SSL_METHOD *method;

    CERT *cert;

    X509 *client_CA;

    int verify_mode;

    int (*default_verify_callback) (int ok, X509_STORE_CTX *ctx);

    long session_timeout;

    int read_ahead;

    int read_buffer_len;

    X509_VERIFY_PARAM param;
};

struct ssl_st
{

    int version;

    unsigned long options;


    int shutdown;

    CERT *cert;

    X509 *client_CA;

    SSL_CTX *ctx;

    const SSL_METHOD *method;

    RECORD_LAYER rlayer;


    OSSL_STATEM statem;

    SSL_SESSION *session;

    int verify_mode;

    int (*verify_callback) (int ok, X509_STORE_CTX *ctx);

    int rwstate;

    long verify_result;

    X509_VERIFY_PARAM param;

    int err;

    void (*info_callback) (const SSL *ssl, int type, int val);


    void *ssl_pm;
};

struct ssl_method_st {

    int version;


    int endpoint;

    const SSL_METHOD_FUNC *func;
};

struct ssl_method_func_st {

    int (*ssl_new)(SSL *ssl);

    void (*ssl_free)(SSL *ssl);

    int (*ssl_handshake)(SSL *ssl);

    int (*ssl_shutdown)(SSL *ssl);

    int (*ssl_clear)(SSL *ssl);

    int (*ssl_read)(SSL *ssl, void *buffer, int len);

    int (*ssl_send)(SSL *ssl, const void *buffer, int len);

    int (*ssl_pending)(const SSL *ssl);

    void (*ssl_set_fd)(SSL *ssl, int fd, int mode);

    void (*ssl_set_hostname)(SSL *ssl, const char *hostname);

    int (*ssl_get_fd)(const SSL *ssl, int mode);

    void (*ssl_set_bufflen)(SSL *ssl, int len);

    long (*ssl_get_verify_result)(const SSL *ssl);

    OSSL_HANDSHAKE_STATE (*ssl_get_state)(const SSL *ssl);
};

struct x509_method_st {

    int (*x509_new)(X509 *x, X509 *m_x);

    void (*x509_free)(X509 *x);

    int (*x509_load)(X509 *x, const unsigned char *buf, int len);

    int (*x509_show_info)(X509 *x);
};

struct pkey_method_st {

    int (*pkey_new)(EVP_PKEY *pkey, EVP_PKEY *m_pkey);

    void (*pkey_free)(EVP_PKEY *pkey);

    int (*pkey_load)(EVP_PKEY *pkey, const unsigned char *buf, int len);
};


typedef int (*next_proto_cb)(SSL *ssl, unsigned char **out,
                             unsigned char *outlen, const unsigned char *in,
                             unsigned int inlen, void *arg);
# 23 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/internal/ssl_lib.h" 2
# 16 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/library/ssl_lib.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/internal/ssl_pkey.h" 1
# 31 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/internal/ssl_pkey.h"
EVP_PKEY* __EVP_PKEY_new(EVP_PKEY *ipk);
# 40 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/internal/ssl_pkey.h"
EVP_PKEY* EVP_PKEY_new(void);
# 53 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/internal/ssl_pkey.h"
EVP_PKEY* d2i_PrivateKey(int type,
                         EVP_PKEY **a,
                         const unsigned char **pp,
                         long length);
# 65 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/internal/ssl_pkey.h"
void EVP_PKEY_free(EVP_PKEY *x);
# 79 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/internal/ssl_pkey.h"
 int SSL_use_PrivateKey_ASN1(int type, SSL *ssl, const unsigned char *d, long len);
# 17 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/library/ssl_lib.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/internal/ssl_x509.h" 1
# 23 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/internal/ssl_x509.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/internal/ssl_stack.h" 1
# 28 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/internal/ssl_stack.h"
OPENSSL_STACK* OPENSSL_sk_new(OPENSSL_sk_compfunc c);
# 37 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/internal/ssl_stack.h"
OPENSSL_STACK *OPENSSL_sk_new_null(void);
# 46 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/internal/ssl_stack.h"
void OPENSSL_sk_free(OPENSSL_STACK *stack);
# 24 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/internal/ssl_x509.h" 2

struct stack_st_X509_NAME; static inline struct stack_st_X509_NAME *sk_X509_NAME_new_null(void) { return (struct stack_st_X509_NAME *)OPENSSL_sk_new_null(); }
# 34 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/internal/ssl_x509.h"
X509* __X509_new(X509 *ix);
# 43 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/internal/ssl_x509.h"
X509* X509_new(void);
# 55 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/internal/ssl_x509.h"
X509* d2i_X509(X509 **cert, const unsigned char *buffer, long len);
# 64 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/internal/ssl_x509.h"
void X509_free(X509 *x);
# 76 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/internal/ssl_x509.h"
int SSL_CTX_add_client_CA(SSL_CTX *ctx, X509 *x);
# 88 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/internal/ssl_x509.h"
int SSL_add_client_CA(SSL *ssl, X509 *x);
# 102 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/internal/ssl_x509.h"
int SSL_use_certificate_ASN1(SSL *ssl, int len, const unsigned char *d);
# 115 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/internal/ssl_x509.h"
int X509_STORE_add_cert(X509_STORE *store, X509 *x);
# 132 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/internal/ssl_x509.h"
int BIO_write(BIO *b, const void *data, int dlen);
# 148 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/internal/ssl_x509.h"
X509 * PEM_read_bio_X509(BIO *bp, X509 **x, void *cb, void *u);
# 157 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/internal/ssl_x509.h"
BIO *BIO_new(void * method);




void *BIO_s_mem();






void BIO_free(BIO *b);
# 18 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/library/ssl_lib.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/internal/ssl_cert.h" 1
# 31 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/internal/ssl_cert.h"
CERT *__ssl_cert_new(CERT *ic);
# 40 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/internal/ssl_cert.h"
CERT* ssl_cert_new(void);
# 49 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/internal/ssl_cert.h"
void ssl_cert_free(CERT *cert);
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/library/ssl_lib.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/internal/ssl_dbg.h" 1
# 18 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/internal/ssl_dbg.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/platform/ssl_opt.h" 1
# 18 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/platform/ssl_opt.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/ESP32_PIC_A2DP/build/include/sdkconfig.h" 1
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/platform/ssl_opt.h" 2
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/internal/ssl_dbg.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/platform/ssl_port.h" 1
# 22 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/platform/ssl_port.h"
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
# 149 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4

# 149 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef int ptrdiff_t;
# 216 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef unsigned int size_t;
# 328 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef short unsigned int wchar_t;
# 46 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/cdefs.h" 2
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_types.h" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h" 1
# 13 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/_intsup.h" 1
# 14 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h" 2







# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
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
# 23 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/platform/ssl_port.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h" 1
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdarg.h" 1 3 4
# 40 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdarg.h" 3 4

# 40 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 98 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdarg.h" 3 4
typedef __gnuc_va_list va_list;
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/ESP32_PIC_A2DP/build/include/sdkconfig.h" 1
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h" 1
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/soc.h" 1
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/soc.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_assert.h" 1
# 17 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_assert.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/platform_include/assert.h" 1
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/platform_include/assert.h"
       
# 1 "D:/ESP32/esp-idf-v3.1-rc1/ESP32_PIC_A2DP/build/include/sdkconfig.h" 1
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/platform_include/assert.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h" 1
# 10 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/ieeefp.h" 1
# 11 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h" 2
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
# 12 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h" 2




# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 17 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h" 2

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
# 19 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h" 2

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




# 22 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/platform_include/assert.h" 2

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
# 22 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h" 2
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
# 24 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/platform/ssl_port.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h" 1
# 17 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h"
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


# 25 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/platform/ssl_port.h" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/malloc.h" 1
# 10 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/malloc.h"
# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 11 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/malloc.h" 2


# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/malloc.h" 1
# 14 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/malloc.h" 2
# 22 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/malloc.h"
struct mallinfo {
  size_t arena;
  size_t ordblks;
  size_t smblks;
  size_t hblks;
  size_t hblkhd;
  size_t usmblks;
  size_t fsmblks;
  size_t uordblks;
  size_t fordblks;
  size_t keepcost;
};



extern void * malloc (size_t);




extern void * _malloc_r (struct _reent *, size_t);


extern void free (void *);




extern void _free_r (struct _reent *, void *);


extern void * realloc (void *, size_t);




extern void * _realloc_r (struct _reent *, void *, size_t);


extern void * calloc (size_t, size_t);




extern void * _calloc_r (struct _reent *, size_t, size_t);


extern void * memalign (size_t, size_t);




extern void * _memalign_r (struct _reent *, size_t, size_t);


extern struct mallinfo mallinfo (void);




extern struct mallinfo _mallinfo_r (struct _reent *);


extern void malloc_stats (void);




extern void _malloc_stats_r (struct _reent *);


extern int mallopt (int, int);




extern int _mallopt_r (struct _reent *, int, int);


extern size_t malloc_usable_size (void *);




extern size_t _malloc_usable_size_r (struct _reent *, void *);





extern void * valloc (size_t);




extern void * _valloc_r (struct _reent *, size_t);


extern void * pvalloc (size_t);




extern void * _pvalloc_r (struct _reent *, size_t);


extern int malloc_trim (size_t);




extern int _malloc_trim_r (struct _reent *, size_t);




extern void mstats (char *);




extern void _mstats_r (struct _reent *, char *);
# 162 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/malloc.h"
extern void cfree (void *);
# 26 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/platform/ssl_port.h" 2

void *ssl_mem_zalloc(size_t size);
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/internal/ssl_dbg.h" 2
# 20 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/library/ssl_lib.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/platform/ssl_port.h" 1
# 21 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/library/ssl_lib.c" 2






static SSL_SESSION* SSL_SESSION_new(void)
{
    SSL_SESSION *session;

    session = ssl_mem_zalloc(sizeof(SSL_SESSION));
    if (!session) {
        ;
        goto failed1;
    }

    session->peer = X509_new();
    if (!session->peer) {
       ;
       goto failed2;
    }

    return session;

failed2:
    free(session);
failed1:
    return 
# 48 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/library/ssl_lib.c" 3 4
          ((void *)0)
# 48 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/library/ssl_lib.c"
              ;
}




static void SSL_SESSION_free(SSL_SESSION *session)
{
    X509_free(session->peer);
    free(session);
}




int ossl_statem_in_error(const SSL *ssl)
{
    ;

    if (ssl->statem.state == MSG_FLOW_ERROR)
        return 1;

    return 0;
}




int SSL_want(const SSL *ssl)
{
    ;

    return ssl->rwstate;
}




int SSL_want_nothing(const SSL *ssl)
{
    ;

    return (SSL_want(ssl) == 1);
}




int SSL_want_read(const SSL *ssl)
{
    ;

    return (SSL_want(ssl) == 3);
}




int SSL_want_write(const SSL *ssl)
{
    ;

    return (SSL_want(ssl) == 2);
}




int SSL_want_x509_lookup(const SSL *ssl)
{
    ;

    return (SSL_want(ssl) == 2);
}




int SSL_get_error(const SSL *ssl, int ret_code)
{
    int ret = 5;

    ;

    if (ret_code > 0)
        ret = 0;
    else if (ret_code < 0)
    {
        if (SSL_want_read(ssl))
            ret = 2;
        else if (SSL_want_write(ssl))
            ret = 3;
        else
            ret = 5;
    }
    else
    {
        if (ssl->shutdown & 2)
            ret = 6;
        else
            ret = 5;
    }

    return ret;
}




OSSL_HANDSHAKE_STATE SSL_get_state(const SSL *ssl)
{
    OSSL_HANDSHAKE_STATE state;

    ;

    state = ssl->method->func->ssl_get_state(ssl);

    return state;
}




SSL_CTX* SSL_CTX_new(const SSL_METHOD *method)
{
    SSL_CTX *ctx;
    CERT *cert;
    X509 *client_ca;

    if (!method) {
        ;
        return 
# 179 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/library/ssl_lib.c" 3 4
              ((void *)0)
# 179 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/library/ssl_lib.c"
                  ;
    }

    client_ca = X509_new();
    if (!client_ca) {
        ;
        goto failed1;
    }

    cert = ssl_cert_new();
    if (!cert) {
        ;
        goto failed2;
    }

    ctx = (SSL_CTX *)ssl_mem_zalloc(sizeof(SSL_CTX));
    if (!ctx) {
        ;
        goto failed3;
    }

    ctx->method = method;
    ctx->client_CA = client_ca;
    ctx->cert = cert;

    ctx->version = method->version;

    return ctx;

failed3:
    ssl_cert_free(cert);
failed2:
    X509_free(client_ca);
failed1:
    return 
# 213 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/library/ssl_lib.c" 3 4
          ((void *)0)
# 213 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/library/ssl_lib.c"
              ;
}




void SSL_CTX_free(SSL_CTX* ctx)
{
    ;

    ssl_cert_free(ctx->cert);

    X509_free(ctx->client_CA);

    if (ctx->ssl_alpn.alpn_string) {
  free((void *)ctx->ssl_alpn.alpn_string);
    }

    free(ctx);
}




int SSL_CTX_set_ssl_version(SSL_CTX *ctx, const SSL_METHOD *meth)
{
    ;
    ;

    ctx->method = meth;

    ctx->version = meth->version;

    return 1;
}




const SSL_METHOD *SSL_CTX_get_ssl_method(SSL_CTX *ctx)
{
    ;

    return ctx->method;
}




SSL *SSL_new(SSL_CTX *ctx)
{
    int ret = 0;
    SSL *ssl;

    if (!ctx) {
        ;
        return 
# 269 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/library/ssl_lib.c" 3 4
              ((void *)0)
# 269 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/library/ssl_lib.c"
                  ;
    }

    ssl = (SSL *)ssl_mem_zalloc(sizeof(SSL));
    if (!ssl) {
        ;
        goto failed1;
    }

    ssl->session = SSL_SESSION_new();
    if (!ssl->session) {
        ;
        goto failed2;
    }

    ssl->cert = __ssl_cert_new(ctx->cert);
    if (!ssl->cert) {
        ;
        goto failed3;
    }

    ssl->client_CA = __X509_new(ctx->client_CA);
    if (!ssl->client_CA) {
        ;
        goto failed4;
    }

    ssl->ctx = ctx;
    ssl->method = ctx->method;

    ssl->version = ctx->version;
    ssl->options = ctx->options;

    ssl->verify_mode = ctx->verify_mode;

    ret = ssl->method->func->ssl_new(ssl);
    if (ret) {
        ;
        goto failed5;
    }

    ssl->rwstate = 1;

    return ssl;

failed5:
    X509_free(ssl->client_CA);
failed4:
    ssl_cert_free(ssl->cert);
failed3:
    SSL_SESSION_free(ssl->session);
failed2:
    free(ssl);
failed1:
    return 
# 323 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/library/ssl_lib.c" 3 4
          ((void *)0)
# 323 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/library/ssl_lib.c"
              ;
}




void SSL_free(SSL *ssl)
{
    ;

    ssl->method->func->ssl_free(ssl);

    X509_free(ssl->client_CA);

    ssl_cert_free(ssl->cert);

    SSL_SESSION_free(ssl->session);

    free(ssl);
}




int SSL_do_handshake(SSL *ssl)
{
    int ret;

    ;

    ret = ssl->method->func->ssl_handshake(ssl);

    return ret;
}




int SSL_connect(SSL *ssl)
{
    ;

    return SSL_do_handshake(ssl);
}




int SSL_accept(SSL *ssl)
{
    ;

    return SSL_do_handshake(ssl);
}




int SSL_shutdown(SSL *ssl)
{
    int ret;

    ;

    if (SSL_get_state(ssl) != TLS_ST_OK) return 1;

    ret = ssl->method->func->ssl_shutdown(ssl);

    return ret;
}




int SSL_clear(SSL *ssl)
{
    int ret;

    ;

    ret = SSL_shutdown(ssl);
    if (1 != ret) {
        ;
        goto failed1;
    }

    ssl->method->func->ssl_free(ssl);

    ret = ssl->method->func->ssl_new(ssl);
    if (!ret) {
        ;
        goto failed1;
    }

    return 1;

failed1:
    return ret;
}




int SSL_read(SSL *ssl, void *buffer, int len)
{
    int ret;

    ;
    ;
    ;

    ssl->rwstate = 3;

    ret = ssl->method->func->ssl_read(ssl, buffer, len);

    if (ret == len)
        ssl->rwstate = 1;

    return ret;
}




int SSL_write(SSL *ssl, const void *buffer, int len)
{
    int ret;
    int send_bytes;
    const unsigned char *pbuf;

    ;
    ;
    ;

    ssl->rwstate = 2;

    send_bytes = len;
    pbuf = (const unsigned char *)buffer;

    do {
        int bytes;

        if (send_bytes > 1460)
            bytes = 1460;
        else
            bytes = send_bytes;

        ret = ssl->method->func->ssl_send(ssl, pbuf, bytes);
        if (ret > 0) {
            pbuf += ret;
            send_bytes -= ret;
        }
    } while (ret > 0 && send_bytes);

    if (ret >= 0) {
        ret = len - send_bytes;
        ssl->rwstate = 1;
    } else
        ret = -1;

    return ret;
}




SSL_CTX *SSL_get_SSL_CTX(const SSL *ssl)
{
    ;

    return ssl->ctx;
}




const SSL_METHOD *SSL_get_ssl_method(SSL *ssl)
{
    ;

    return ssl->method;
}




int SSL_set_ssl_method(SSL *ssl, const SSL_METHOD *method)
{
    int ret;

    ;
    ;

    if (ssl->version != method->version) {

        ret = SSL_shutdown(ssl);
        if (1 != ret) {
            ;
            goto failed1;
        }

        ssl->method->func->ssl_free(ssl);

        ssl->method = method;

        ret = ssl->method->func->ssl_new(ssl);
        if (!ret) {
            ;
            goto failed1;
        }
    } else {
        ssl->method = method;
    }


    return 1;

failed1:
    return ret;
}




int SSL_get_shutdown(const SSL *ssl)
{
    ;

    return ssl->shutdown;
}




void SSL_set_shutdown(SSL *ssl, int mode)
{
    ;

    ssl->shutdown = mode;
}





int SSL_pending(const SSL *ssl)
{
    int ret;

    ;

    ret = ssl->method->func->ssl_pending(ssl);

    return ret;
}




int SSL_has_pending(const SSL *ssl)
{
    int ret;

    ;

    if (SSL_pending(ssl))
        ret = 1;
    else
        ret = 0;

    return ret;
}




unsigned long SSL_CTX_clear_options(SSL_CTX *ctx, unsigned long op)
{
    ;

    return ctx->options &= ~op;
}




unsigned long SSL_CTX_get_options(SSL_CTX *ctx)
{
    ;

    return ctx->options;
}




unsigned long SSL_CTX_set_options(SSL_CTX *ctx, unsigned long opt)
{
    ;

    return ctx->options |= opt;
}




unsigned long SSL_clear_options(SSL *ssl, unsigned long op)
{
    ;

    return ssl->options & ~op;
}




unsigned long SSL_get_options(SSL *ssl)
{
    ;

    return ssl->options;
}




unsigned long SSL_set_options(SSL *ssl, unsigned long op)
{
    ;

    return ssl->options |= op;
}




int SSL_get_fd(const SSL *ssl)
{
    int ret;

    ;

    ret = ssl->method->func->ssl_get_fd(ssl, 0);

    return ret;
}




int SSL_get_rfd(const SSL *ssl)
{
    int ret;

    ;

    ret = ssl->method->func->ssl_get_fd(ssl, 0);

    return ret;
}




int SSL_get_wfd(const SSL *ssl)
{
    int ret;

    ;

    ret = ssl->method->func->ssl_get_fd(ssl, 0);

    return ret;
}




int SSL_set_fd(SSL *ssl, int fd)
{
    ;
    ;

    ssl->method->func->ssl_set_fd(ssl, fd, 0);

    return 1;
}




int SSL_set_rfd(SSL *ssl, int fd)
{
    ;
    ;

    ssl->method->func->ssl_set_fd(ssl, fd, 0);

    return 1;
}




int SSL_set_wfd(SSL *ssl, int fd)
{
    ;
    ;

    ssl->method->func->ssl_set_fd(ssl, fd, 0);

    return 1;
}




int SSL_set_tlsext_host_name(SSL* ssl, const char *hostname)
{
     ;
     ;

     ssl->method->func->ssl_set_hostname(ssl, hostname);

     return 1;
}




int SSL_version(const SSL *ssl)
{
    ;

    return ssl->version;
}




static const char* ssl_protocol_to_string(int version)
{
    const char *str;

    if (version == 0x0303)
        str = "TLSv1.2";
    else if (version == 0x0302)
        str = "TLSv1.1";
    else if (version == 0x0301)
        str = "TLSv1";
    else if (version == 0x0300)
        str = "SSLv3";
    else
        str = "unknown";

    return str;
}




const char *SSL_get_version(const SSL *ssl)
{
    ;

    return ssl_protocol_to_string(SSL_version(ssl));
}




const char* SSL_alert_desc_string(int value)
{
    const char *str;

    switch (value & 0xff)
    {
        case 0:
            str = "CN";
            break;
        case 10:
            str = "UM";
            break;
        case 20:
            str = "BM";
            break;
        case 30:
            str = "DF";
            break;
        case 40:
            str = "HF";
            break;
        case 41:
            str = "NC";
            break;
        case 42:
            str = "BC";
            break;
        case 43:
            str = "UC";
            break;
        case 44:
            str = "CR";
            break;
        case 45:
            str = "CE";
            break;
        case 46:
            str = "CU";
            break;
        case 47:
            str = "IP";
            break;
        case 21:
            str = "DC";
            break;
        case 22:
            str = "RO";
            break;
        case 48:
            str = "CA";
            break;
        case 49:
            str = "AD";
            break;
        case 50:
            str = "DE";
            break;
        case 51:
            str = "CY";
            break;
        case 60:
            str = "ER";
            break;
        case 70:
            str = "PV";
            break;
        case 71:
            str = "IS";
            break;
        case 80:
            str = "IE";
            break;
        case 90:
            str = "US";
            break;
        case 100:
            str = "NR";
            break;
        case 110:
            str = "UE";
            break;
        case 111:
            str = "CO";
            break;
        case 112:
            str = "UN";
            break;
        case 113:
            str = "BR";
            break;
        case 114:
            str = "BH";
            break;
        case 115:
            str = "UP";
            break;
        default:
            str = "UK";
            break;
    }

    return str;
}




const char* SSL_alert_desc_string_long(int value)
{
    const char *str;

    switch (value & 0xff)
    {
        case 0:
            str = "close notify";
            break;
        case 10:
            str = "unexpected_message";
            break;
        case 20:
            str = "bad record mac";
            break;
        case 30:
            str = "decompression failure";
            break;
        case 40:
            str = "handshake failure";
            break;
        case 41:
            str = "no certificate";
            break;
        case 42:
            str = "bad certificate";
            break;
        case 43:
            str = "unsupported certificate";
            break;
        case 44:
            str = "certificate revoked";
            break;
        case 45:
            str = "certificate expired";
            break;
        case 46:
            str = "certificate unknown";
            break;
        case 47:
            str = "illegal parameter";
            break;
        case 21:
            str = "decryption failed";
            break;
        case 22:
            str = "record overflow";
            break;
        case 48:
            str = "unknown CA";
            break;
        case 49:
            str = "access denied";
            break;
        case 50:
            str = "decode error";
            break;
        case 51:
            str = "decrypt error";
            break;
        case 60:
            str = "export restriction";
            break;
        case 70:
            str = "protocol version";
            break;
        case 71:
            str = "insufficient security";
            break;
        case 80:
            str = "internal error";
            break;
        case 90:
            str = "user canceled";
            break;
        case 100:
            str = "no renegotiation";
            break;
        case 110:
            str = "unsupported extension";
            break;
        case 111:
            str = "certificate unobtainable";
            break;
        case 112:
            str = "unrecognized name";
            break;
        case 113:
            str = "bad certificate status response";
            break;
        case 114:
            str = "bad certificate hash value";
            break;
        case 115:
            str = "unknown PSK identity";
            break;
        default:
            str = "unknown";
            break;
    }

    return str;
}




const char *SSL_alert_type_string(int value)
{
    const char *str;

    switch (value >> 8)
    {
    case 1:
        str = "W";
        break;
    case 2:
        str = "F";
        break;
    default:
        str = "U";
        break;
    }

    return str;
}




const char *SSL_alert_type_string_long(int value)
{
    const char *str;

    switch (value >> 8)
    {
        case 1:
            str = "warning";
            break;
        case 2:
            str = "fatal";
            break;
        default:
            str = "unknown";
            break;
    }

    return str;
}




const char *SSL_rstate_string(SSL *ssl)
{
    const char *str;

    ;

    switch (ssl->rlayer.rstate)
    {
        case 0xF0:
            str = "RH";
            break;
        case 0xF1:
            str = "RB";
            break;
        case 0xF2:
            str = "RD";
            break;
        default:
            str = "unknown";
            break;
    }

    return str;
}




const char *SSL_rstate_string_long(SSL *ssl)
{
    const char *str = "unknown";

    ;

    switch (ssl->rlayer.rstate)
    {
        case 0xF0:
            str = "read header";
            break;
        case 0xF1:
            str = "read body";
            break;
        case 0xF2:
            str = "read done";
            break;
        default:
            break;
    }

    return str;
}




const char *SSL_state_string(const SSL *ssl)
{
    const char *str = "UNKWN ";

    ;

    if (ossl_statem_in_error(ssl))
        str = "SSLERR";
    else
    {
        switch (SSL_get_state(ssl))
        {
            case TLS_ST_BEFORE:
                str = "PINIT ";
                break;
            case TLS_ST_OK:
                str = "SSLOK ";
                break;
            case TLS_ST_CW_CLNT_HELLO:
                str = "TWCH";
                break;
            case TLS_ST_CR_SRVR_HELLO:
                str = "TRSH";
                break;
            case TLS_ST_CR_CERT:
                str = "TRSC";
                break;
            case TLS_ST_CR_KEY_EXCH:
                str = "TRSKE";
                break;
            case TLS_ST_CR_CERT_REQ:
                str = "TRCR";
                break;
            case TLS_ST_CR_SRVR_DONE:
                str = "TRSD";
                break;
            case TLS_ST_CW_CERT:
                str = "TWCC";
                break;
            case TLS_ST_CW_KEY_EXCH:
                str = "TWCKE";
                break;
            case TLS_ST_CW_CERT_VRFY:
                str = "TWCV";
                break;
            case TLS_ST_SW_CHANGE:
            case TLS_ST_CW_CHANGE:
                str = "TWCCS";
                break;
            case TLS_ST_SW_FINISHED:
            case TLS_ST_CW_FINISHED:
                str = "TWFIN";
                break;
            case TLS_ST_SR_CHANGE:
            case TLS_ST_CR_CHANGE:
                str = "TRCCS";
                break;
            case TLS_ST_SR_FINISHED:
            case TLS_ST_CR_FINISHED:
                str = "TRFIN";
                break;
            case TLS_ST_SW_HELLO_REQ:
                str = "TWHR";
                break;
            case TLS_ST_SR_CLNT_HELLO:
                str = "TRCH";
                break;
            case TLS_ST_SW_SRVR_HELLO:
                str = "TWSH";
                break;
            case TLS_ST_SW_CERT:
                str = "TWSC";
                break;
            case TLS_ST_SW_KEY_EXCH:
                str = "TWSKE";
                break;
            case TLS_ST_SW_CERT_REQ:
                str = "TWCR";
                break;
            case TLS_ST_SW_SRVR_DONE:
                str = "TWSD";
                break;
            case TLS_ST_SR_CERT:
                str = "TRCC";
                break;
            case TLS_ST_SR_KEY_EXCH:
                str = "TRCKE";
                break;
            case TLS_ST_SR_CERT_VRFY:
                str = "TRCV";
                break;
            case DTLS_ST_CR_HELLO_VERIFY_REQUEST:
                str = "DRCHV";
                break;
            case DTLS_ST_SW_HELLO_VERIFY_REQUEST:
                str = "DWCHV";
                break;
            default:
                break;
        }
    }

    return str;
}




const char *SSL_state_string_long(const SSL *ssl)
{
    const char *str = "UNKWN ";

    ;

    if (ossl_statem_in_error(ssl))
        str = "SSLERR";
    else
    {
        switch (SSL_get_state(ssl))
        {
            case TLS_ST_BEFORE:
                str = "before SSL initialization";
                break;
            case TLS_ST_OK:
                str = "SSL negotiation finished successfully";
                break;
            case TLS_ST_CW_CLNT_HELLO:
                str = "SSLv3/TLS write client hello";
                break;
            case TLS_ST_CR_SRVR_HELLO:
                str = "SSLv3/TLS read server hello";
                break;
            case TLS_ST_CR_CERT:
                str = "SSLv3/TLS read server certificate";
                break;
            case TLS_ST_CR_KEY_EXCH:
                str = "SSLv3/TLS read server key exchange";
                break;
            case TLS_ST_CR_CERT_REQ:
                str = "SSLv3/TLS read server certificate request";
                break;
            case TLS_ST_CR_SESSION_TICKET:
                str = "SSLv3/TLS read server session ticket";
                break;
            case TLS_ST_CR_SRVR_DONE:
                str = "SSLv3/TLS read server done";
                break;
            case TLS_ST_CW_CERT:
                str = "SSLv3/TLS write client certificate";
                break;
            case TLS_ST_CW_KEY_EXCH:
                str = "SSLv3/TLS write client key exchange";
                break;
            case TLS_ST_CW_CERT_VRFY:
                str = "SSLv3/TLS write certificate verify";
                break;
            case TLS_ST_CW_CHANGE:
            case TLS_ST_SW_CHANGE:
                str = "SSLv3/TLS write change cipher spec";
                break;
            case TLS_ST_CW_FINISHED:
            case TLS_ST_SW_FINISHED:
                str = "SSLv3/TLS write finished";
                break;
            case TLS_ST_CR_CHANGE:
            case TLS_ST_SR_CHANGE:
                str = "SSLv3/TLS read change cipher spec";
                break;
            case TLS_ST_CR_FINISHED:
            case TLS_ST_SR_FINISHED:
                str = "SSLv3/TLS read finished";
                break;
            case TLS_ST_SR_CLNT_HELLO:
                str = "SSLv3/TLS read client hello";
                break;
            case TLS_ST_SW_HELLO_REQ:
                str = "SSLv3/TLS write hello request";
                break;
            case TLS_ST_SW_SRVR_HELLO:
                str = "SSLv3/TLS write server hello";
                break;
            case TLS_ST_SW_CERT:
                str = "SSLv3/TLS write certificate";
                break;
            case TLS_ST_SW_KEY_EXCH:
                str = "SSLv3/TLS write key exchange";
                break;
            case TLS_ST_SW_CERT_REQ:
                str = "SSLv3/TLS write certificate request";
                break;
            case TLS_ST_SW_SESSION_TICKET:
                str = "SSLv3/TLS write session ticket";
                break;
            case TLS_ST_SW_SRVR_DONE:
                str = "SSLv3/TLS write server done";
                break;
            case TLS_ST_SR_CERT:
                str = "SSLv3/TLS read client certificate";
                break;
            case TLS_ST_SR_KEY_EXCH:
                str = "SSLv3/TLS read client key exchange";
                break;
            case TLS_ST_SR_CERT_VRFY:
                str = "SSLv3/TLS read certificate verify";
                break;
            case DTLS_ST_CR_HELLO_VERIFY_REQUEST:
                str = "DTLS1 read hello verify request";
                break;
            case DTLS_ST_SW_HELLO_VERIFY_REQUEST:
                str = "DTLS1 write hello verify request";
                break;
            default:
                break;
        }
    }

    return str;
}




void SSL_CTX_set_default_read_buffer_len(SSL_CTX *ctx, size_t len)
{
    ;

    ctx->read_buffer_len = len;
}




void SSL_set_default_read_buffer_len(SSL *ssl, size_t len)
{
    ;
    ;

    ssl->method->func->ssl_set_bufflen(ssl, len);
}




void SSL_set_info_callback(SSL *ssl, void (*cb) (const SSL *ssl, int type, int val))
{
    ;

    ssl->info_callback = cb;
}




int SSL_CTX_up_ref(SSL_CTX *ctx)
{
    ;




    ctx->references++;

    return 1;
}




void SSL_set_security_level(SSL *ssl, int level)
{
    ;

    ssl->cert->sec_level = level;
}




int SSL_get_security_level(const SSL *ssl)
{
    ;

    return ssl->cert->sec_level;
}




int SSL_CTX_get_verify_mode(const SSL_CTX *ctx)
{
    ;

    return ctx->verify_mode;
}




long SSL_CTX_set_timeout(SSL_CTX *ctx, long t)
{
    long l;

    ;

    l = ctx->session_timeout;
    ctx->session_timeout = t;

    return l;
}




long SSL_CTX_get_timeout(const SSL_CTX *ctx)
{
    ;

    return ctx->session_timeout;
}




void SSL_set_read_ahead(SSL *ssl, int yes)
{
    ;

    ssl->rlayer.read_ahead = yes;
}




void SSL_CTX_set_read_ahead(SSL_CTX *ctx, int yes)
{
    ;

    ctx->read_ahead = yes;
}




int SSL_get_read_ahead(const SSL *ssl)
{
    ;

    return ssl->rlayer.read_ahead;
}




long SSL_CTX_get_read_ahead(SSL_CTX *ctx)
{
    ;

    return ctx->read_ahead;
}




long SSL_CTX_get_default_read_ahead(SSL_CTX *ctx)
{
    ;

    return ctx->read_ahead;
}




long SSL_set_time(SSL *ssl, long t)
{
    ;

    ssl->session->time = t;

    return t;
}




long SSL_set_timeout(SSL *ssl, long t)
{
    ;

    ssl->session->timeout = t;

    return t;
}




long SSL_get_verify_result(const SSL *ssl)
{
    ;

    return ssl->method->func->ssl_get_verify_result(ssl);
}




int SSL_CTX_get_verify_depth(const SSL_CTX *ctx)
{
    ;

    return ctx->param.depth;
}




void SSL_CTX_set_verify_depth(SSL_CTX *ctx, int depth)
{
    ;

    ctx->param.depth = depth;
}




int SSL_get_verify_depth(const SSL *ssl)
{
    ;

    return ssl->param.depth;
}




void SSL_set_verify_depth(SSL *ssl, int depth)
{
    ;

    ssl->param.depth = depth;
}




void SSL_CTX_set_verify(SSL_CTX *ctx, int mode, int (*verify_callback)(int, X509_STORE_CTX *))
{
    ;

    ctx->verify_mode = mode;
    ctx->default_verify_callback = verify_callback;
}




void SSL_set_verify(SSL *ssl, int mode, int (*verify_callback)(int, X509_STORE_CTX *))
{
    ;

    ssl->verify_mode = mode;
    ssl->verify_callback = verify_callback;
}







int SSL_CTX_set_alpn_protos(SSL_CTX *ctx, const unsigned char *protos, unsigned protos_len)
{
     ctx->ssl_alpn.alpn_string = ssl_mem_zalloc(protos_len + 1);
     if (! ctx->ssl_alpn.alpn_string) {
   return 1;
     }
     ctx->ssl_alpn.alpn_status = ALPN_ENABLE;
     memcpy(ctx->ssl_alpn.alpn_string, protos, protos_len);

     char *ptr = ctx->ssl_alpn.alpn_string;
     int i;

     for (i = 0; i < 10 - 1; i++) {
   char len = *ptr;
   *ptr = '\0';
   ptr++;
   protos_len--;
   ctx->ssl_alpn.alpn_list[i] = ptr;
   ptr += len;
   protos_len -= len;
   if (! protos_len) {
        i++;
        break;
   }
     }
     ctx->ssl_alpn.alpn_list[i] = 
# 1606 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/library/ssl_lib.c" 3 4
                                 ((void *)0)
# 1606 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/library/ssl_lib.c"
                                     ;
     return 0;
}
