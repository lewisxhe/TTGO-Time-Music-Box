# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/micro-ecc/micro-ecc/uECC.c"
# 1 "D:\\ESP32\\esp-idf-v3.1-rc1\\ESP32_PIC_A2DP\\build\\micro-ecc//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/micro-ecc/micro-ecc/uECC.c"


# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/micro-ecc/micro-ecc/uECC.h" 1





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
# 7 "D:/ESP32/esp-idf-v3.1-rc1/components/micro-ecc/micro-ecc/uECC.h" 2
# 78 "D:/ESP32/esp-idf-v3.1-rc1/components/micro-ecc/micro-ecc/uECC.h"
struct uECC_Curve_t;
typedef const struct uECC_Curve_t * uECC_Curve;







uECC_Curve uECC_secp160r1(void);


uECC_Curve uECC_secp192r1(void);


uECC_Curve uECC_secp224r1(void);


uECC_Curve uECC_secp256r1(void);


uECC_Curve uECC_secp256k1(void);
# 118 "D:/ESP32/esp-idf-v3.1-rc1/components/micro-ecc/micro-ecc/uECC.h"
typedef int (*uECC_RNG_Function)(uint8_t *dest, unsigned size);
# 130 "D:/ESP32/esp-idf-v3.1-rc1/components/micro-ecc/micro-ecc/uECC.h"
void uECC_set_rng(uECC_RNG_Function rng_function);





uECC_RNG_Function uECC_get_rng(void);





int uECC_curve_private_key_size(uECC_Curve curve);





int uECC_curve_public_key_size(uECC_Curve curve);
# 166 "D:/ESP32/esp-idf-v3.1-rc1/components/micro-ecc/micro-ecc/uECC.h"
int uECC_make_key(uint8_t *public_key, uint8_t *private_key, uECC_Curve curve);
# 183 "D:/ESP32/esp-idf-v3.1-rc1/components/micro-ecc/micro-ecc/uECC.h"
int uECC_shared_secret(const uint8_t *public_key,
                       const uint8_t *private_key,
                       uint8_t *secret,
                       uECC_Curve curve);
# 200 "D:/ESP32/esp-idf-v3.1-rc1/components/micro-ecc/micro-ecc/uECC.h"
void uECC_compress(const uint8_t *public_key, uint8_t *compressed, uECC_Curve curve);
# 211 "D:/ESP32/esp-idf-v3.1-rc1/components/micro-ecc/micro-ecc/uECC.h"
void uECC_decompress(const uint8_t *compressed, uint8_t *public_key, uECC_Curve curve);
# 226 "D:/ESP32/esp-idf-v3.1-rc1/components/micro-ecc/micro-ecc/uECC.h"
int uECC_valid_public_key(const uint8_t *public_key, uECC_Curve curve);
# 239 "D:/ESP32/esp-idf-v3.1-rc1/components/micro-ecc/micro-ecc/uECC.h"
int uECC_compute_public_key(const uint8_t *private_key, uint8_t *public_key, uECC_Curve curve);
# 258 "D:/ESP32/esp-idf-v3.1-rc1/components/micro-ecc/micro-ecc/uECC.h"
int uECC_sign(const uint8_t *private_key,
              const uint8_t *message_hash,
              unsigned hash_size,
              uint8_t *signature,
              uECC_Curve curve);
# 302 "D:/ESP32/esp-idf-v3.1-rc1/components/micro-ecc/micro-ecc/uECC.h"
typedef struct uECC_HashContext {
    void (*init_hash)(const struct uECC_HashContext *context);
    void (*update_hash)(const struct uECC_HashContext *context,
                        const uint8_t *message,
                        unsigned message_size);
    void (*finish_hash)(const struct uECC_HashContext *context, uint8_t *hash_result);
    unsigned block_size;
    unsigned result_size;
    uint8_t *tmp;
} uECC_HashContext;
# 334 "D:/ESP32/esp-idf-v3.1-rc1/components/micro-ecc/micro-ecc/uECC.h"
int uECC_sign_deterministic(const uint8_t *private_key,
                            const uint8_t *message_hash,
                            unsigned hash_size,
                            const uECC_HashContext *hash_context,
                            uint8_t *signature,
                            uECC_Curve curve);
# 355 "D:/ESP32/esp-idf-v3.1-rc1/components/micro-ecc/micro-ecc/uECC.h"
int uECC_verify(const uint8_t *public_key,
                const uint8_t *message_hash,
                unsigned hash_size,
                const uint8_t *signature,
                uECC_Curve curve);
# 4 "D:/ESP32/esp-idf-v3.1-rc1/components/micro-ecc/micro-ecc/uECC.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/micro-ecc/micro-ecc/uECC_vli.h" 1






# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/micro-ecc/micro-ecc/types.h" 1
# 70 "D:/ESP32/esp-idf-v3.1-rc1/components/micro-ecc/micro-ecc/types.h"
typedef int8_t wordcount_t;
typedef int16_t bitcount_t;
typedef int8_t cmpresult_t;
# 86 "D:/ESP32/esp-idf-v3.1-rc1/components/micro-ecc/micro-ecc/types.h"
typedef uint32_t uECC_word_t;
typedef uint64_t uECC_dword_t;
# 8 "D:/ESP32/esp-idf-v3.1-rc1/components/micro-ecc/micro-ecc/uECC_vli.h" 2
# 5 "D:/ESP32/esp-idf-v3.1-rc1/components/micro-ecc/micro-ecc/uECC.c" 2
# 84 "D:/ESP32/esp-idf-v3.1-rc1/components/micro-ecc/micro-ecc/uECC.c"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/micro-ecc/micro-ecc/platform-specific.inc" 1
# 85 "D:/ESP32/esp-idf-v3.1-rc1/components/micro-ecc/micro-ecc/uECC.c" 2
# 139 "D:/ESP32/esp-idf-v3.1-rc1/components/micro-ecc/micro-ecc/uECC.c"
struct uECC_Curve_t {
    wordcount_t num_words;
    wordcount_t num_bytes;
    bitcount_t num_n_bits;
    uECC_word_t p[8];
    uECC_word_t n[8];
    uECC_word_t G[8 * 2];
    uECC_word_t b[8];
    void (*double_jacobian)(uECC_word_t * X1,
                            uECC_word_t * Y1,
                            uECC_word_t * Z1,
                            uECC_Curve curve);

    void (*mod_sqrt)(uECC_word_t *a, uECC_Curve curve);

    void (*x_side)(uECC_word_t *result, const uECC_word_t *x, uECC_Curve curve);

    void (*mmod_fast)(uECC_word_t *result, uECC_word_t *product);

};
# 171 "D:/ESP32/esp-idf-v3.1-rc1/components/micro-ecc/micro-ecc/uECC.c"
static cmpresult_t uECC_vli_cmp_unsafe(const uECC_word_t *left,
                                       const uECC_word_t *right,
                                       wordcount_t num_words);
# 187 "D:/ESP32/esp-idf-v3.1-rc1/components/micro-ecc/micro-ecc/uECC.c"
static uECC_RNG_Function g_rng_function = 0;


void uECC_set_rng(uECC_RNG_Function rng_function) {
    g_rng_function = rng_function;
}

uECC_RNG_Function uECC_get_rng(void) {
    return g_rng_function;
}

int uECC_curve_private_key_size(uECC_Curve curve) {
    return ((curve->num_n_bits + 7) / 8);
}

int uECC_curve_public_key_size(uECC_Curve curve) {
    return 2 * curve->num_bytes;
}


static void uECC_vli_clear(uECC_word_t *vli, wordcount_t num_words) {
    wordcount_t i;
    for (i = 0; i < num_words; ++i) {
        vli[i] = 0;
    }
}




static uECC_word_t uECC_vli_isZero(const uECC_word_t *vli, wordcount_t num_words) {
    uECC_word_t bits = 0;
    wordcount_t i;
    for (i = 0; i < num_words; ++i) {
        bits |= vli[i];
    }
    return (bits == 0);
}


static uECC_word_t uECC_vli_testBit(const uECC_word_t *vli, bitcount_t bit) {
    return (vli[bit >> 5] & ((uECC_word_t)1 << (bit & 0x01F)));
}


static wordcount_t vli_numDigits(const uECC_word_t *vli, const wordcount_t max_words) {
    wordcount_t i;


    for (i = max_words - 1; i >= 0 && vli[i] == 0; --i) {
    }

    return (i + 1);
}


static bitcount_t uECC_vli_numBits(const uECC_word_t *vli, const wordcount_t max_words) {
    uECC_word_t i;
    uECC_word_t digit;

    wordcount_t num_digits = vli_numDigits(vli, max_words);
    if (num_digits == 0) {
        return 0;
    }

    digit = vli[num_digits - 1];
    for (i = 0; digit; ++i) {
        digit >>= 1;
    }

    return (((bitcount_t)(num_digits - 1) << 5) + i);
}



static void uECC_vli_set(uECC_word_t *dest, const uECC_word_t *src, wordcount_t num_words) {
    wordcount_t i;
    for (i = 0; i < num_words; ++i) {
        dest[i] = src[i];
    }
}



static cmpresult_t uECC_vli_cmp_unsafe(const uECC_word_t *left,
                                       const uECC_word_t *right,
                                       wordcount_t num_words) {
    wordcount_t i;
    for (i = num_words - 1; i >= 0; --i) {
        if (left[i] > right[i]) {
            return 1;
        } else if (left[i] < right[i]) {
            return -1;
        }
    }
    return 0;
}



static uECC_word_t uECC_vli_equal(const uECC_word_t *left,
                                        const uECC_word_t *right,
                                        wordcount_t num_words) {
    uECC_word_t diff = 0;
    wordcount_t i;
    for (i = num_words - 1; i >= 0; --i) {
        diff |= (left[i] ^ right[i]);
    }
    return (diff == 0);
}

static uECC_word_t uECC_vli_sub(uECC_word_t *result,
                                      const uECC_word_t *left,
                                      const uECC_word_t *right,
                                      wordcount_t num_words);


static cmpresult_t uECC_vli_cmp(const uECC_word_t *left,
                                      const uECC_word_t *right,
                                      wordcount_t num_words) {
    uECC_word_t tmp[8];
    uECC_word_t neg = !!uECC_vli_sub(tmp, left, right, num_words);
    uECC_word_t equal = uECC_vli_isZero(tmp, num_words);
    return (!equal - 2 * neg);
}



static void uECC_vli_rshift1(uECC_word_t *vli, wordcount_t num_words) {
    uECC_word_t *end = vli;
    uECC_word_t carry = 0;

    vli += num_words;
    while (vli-- > end) {
        uECC_word_t temp = *vli;
        *vli = (temp >> 1) | carry;
        carry = temp << (32 - 1);
    }
}




static uECC_word_t uECC_vli_add(uECC_word_t *result,
                                      const uECC_word_t *left,
                                      const uECC_word_t *right,
                                      wordcount_t num_words) {
    uECC_word_t carry = 0;
    wordcount_t i;
    for (i = 0; i < num_words; ++i) {
        uECC_word_t sum = left[i] + right[i] + carry;
        if (sum != left[i]) {
            carry = (sum < left[i]);
        }
        result[i] = sum;
    }
    return carry;
}




static uECC_word_t uECC_vli_sub(uECC_word_t *result,
                                      const uECC_word_t *left,
                                      const uECC_word_t *right,
                                      wordcount_t num_words) {
    uECC_word_t borrow = 0;
    wordcount_t i;
    for (i = 0; i < num_words; ++i) {
        uECC_word_t diff = left[i] - right[i] - borrow;
        if (diff != left[i]) {
            borrow = (diff > left[i]);
        }
        result[i] = diff;
    }
    return borrow;
}





static void muladd(uECC_word_t a,
                   uECC_word_t b,
                   uECC_word_t *r0,
                   uECC_word_t *r1,
                   uECC_word_t *r2) {
# 400 "D:/ESP32/esp-idf-v3.1-rc1/components/micro-ecc/micro-ecc/uECC.c"
    uECC_dword_t p = (uECC_dword_t)a * b;
    uECC_dword_t r01 = ((uECC_dword_t)(*r1) << 32) | *r0;
    r01 += p;
    *r2 += (r01 < p);
    *r1 = r01 >> 32;
    *r0 = (uECC_word_t)r01;

}



static void uECC_vli_mult(uECC_word_t *result,
                                const uECC_word_t *left,
                                const uECC_word_t *right,
                                wordcount_t num_words) {
    uECC_word_t r0 = 0;
    uECC_word_t r1 = 0;
    uECC_word_t r2 = 0;
    wordcount_t i, k;


    for (k = 0; k < num_words; ++k) {
        for (i = 0; i <= k; ++i) {
            muladd(left[i], right[k - i], &r0, &r1, &r2);
        }
        result[k] = r0;
        r0 = r1;
        r1 = r2;
        r2 = 0;
    }
    for (k = num_words; k < num_words * 2 - 1; ++k) {
        for (i = (k + 1) - num_words; i < num_words; ++i) {
            muladd(left[i], right[k - i], &r0, &r1, &r2);
        }
        result[k] = r0;
        r0 = r1;
        r1 = r2;
        r2 = 0;
    }
    result[num_words * 2 - 1] = r0;
}
# 535 "D:/ESP32/esp-idf-v3.1-rc1/components/micro-ecc/micro-ecc/uECC.c"
static void uECC_vli_modAdd(uECC_word_t *result,
                                  const uECC_word_t *left,
                                  const uECC_word_t *right,
                                  const uECC_word_t *mod,
                                  wordcount_t num_words) {
    uECC_word_t carry = uECC_vli_add(result, left, right, num_words);
    if (carry || uECC_vli_cmp_unsafe(mod, result, num_words) != 1) {

        uECC_vli_sub(result, result, mod, num_words);
    }
}



static void uECC_vli_modSub(uECC_word_t *result,
                                  const uECC_word_t *left,
                                  const uECC_word_t *right,
                                  const uECC_word_t *mod,
                                  wordcount_t num_words) {
    uECC_word_t l_borrow = uECC_vli_sub(result, left, right, num_words);
    if (l_borrow) {


        uECC_vli_add(result, result, mod, num_words);
    }
}



static void uECC_vli_mmod(uECC_word_t *result,
                                uECC_word_t *product,
                                const uECC_word_t *mod,
                                wordcount_t num_words) {
    uECC_word_t mod_multiple[2 * 8];
    uECC_word_t tmp[2 * 8];
    uECC_word_t *v[2] = {tmp, product};
    uECC_word_t index;


    bitcount_t shift = (num_words * 2 * 32) - uECC_vli_numBits(mod, num_words);
    wordcount_t word_shift = shift / 32;
    wordcount_t bit_shift = shift % 32;
    uECC_word_t carry = 0;
    uECC_vli_clear(mod_multiple, word_shift);
    if (bit_shift > 0) {
        for(index = 0; index < (uECC_word_t)num_words; ++index) {
            mod_multiple[word_shift + index] = (mod[index] << bit_shift) | carry;
            carry = mod[index] >> (32 - bit_shift);
        }
    } else {
        uECC_vli_set(mod_multiple + word_shift, mod, num_words);
    }

    for (index = 1; shift >= 0; --shift) {
        uECC_word_t borrow = 0;
        wordcount_t i;
        for (i = 0; i < num_words * 2; ++i) {
            uECC_word_t diff = v[index][i] - mod_multiple[i] - borrow;
            if (diff != v[index][i]) {
                borrow = (diff > v[index][i]);
            }
            v[1 - index][i] = diff;
        }
        index = !(index ^ borrow);
        uECC_vli_rshift1(mod_multiple, num_words);
        mod_multiple[num_words - 1] |= mod_multiple[num_words] << (32 - 1);
        uECC_vli_rshift1(mod_multiple + num_words, num_words);
    }
    uECC_vli_set(result, v[index], num_words);
}


static void uECC_vli_modMult(uECC_word_t *result,
                                   const uECC_word_t *left,
                                   const uECC_word_t *right,
                                   const uECC_word_t *mod,
                                   wordcount_t num_words) {
    uECC_word_t product[2 * 8];
    uECC_vli_mult(product, left, right, num_words);
    uECC_vli_mmod(result, product, mod, num_words);
}

static void uECC_vli_modMult_fast(uECC_word_t *result,
                                        const uECC_word_t *left,
                                        const uECC_word_t *right,
                                        uECC_Curve curve) {
    uECC_word_t product[2 * 8];
    uECC_vli_mult(product, left, right, curve->num_words);

    curve->mmod_fast(result, product);



}
# 667 "D:/ESP32/esp-idf-v3.1-rc1/components/micro-ecc/micro-ecc/uECC.c"
static void uECC_vli_modSquare_fast(uECC_word_t *result,
                                          const uECC_word_t *left,
                                          uECC_Curve curve) {
    uECC_vli_modMult_fast(result, left, left, curve);
}




static void vli_modInv_update(uECC_word_t *uv,
                              const uECC_word_t *mod,
                              wordcount_t num_words) {
    uECC_word_t carry = 0;
    if (!(!(uv[0] & 1))) {
        carry = uECC_vli_add(uv, uv, mod, num_words);
    }
    uECC_vli_rshift1(uv, num_words);
    if (carry) {
        uv[num_words - 1] |= 0x80000000;
    }
}



static void uECC_vli_modInv(uECC_word_t *result,
                                  const uECC_word_t *input,
                                  const uECC_word_t *mod,
                                  wordcount_t num_words) {
    uECC_word_t a[8], b[8], u[8], v[8];
    cmpresult_t cmpResult;

    if (uECC_vli_isZero(input, num_words)) {
        uECC_vli_clear(result, num_words);
        return;
    }

    uECC_vli_set(a, input, num_words);
    uECC_vli_set(b, mod, num_words);
    uECC_vli_clear(u, num_words);
    u[0] = 1;
    uECC_vli_clear(v, num_words);
    while ((cmpResult = uECC_vli_cmp_unsafe(a, b, num_words)) != 0) {
        if ((!(a[0] & 1))) {
            uECC_vli_rshift1(a, num_words);
            vli_modInv_update(u, mod, num_words);
        } else if ((!(b[0] & 1))) {
            uECC_vli_rshift1(b, num_words);
            vli_modInv_update(v, mod, num_words);
        } else if (cmpResult > 0) {
            uECC_vli_sub(a, a, b, num_words);
            uECC_vli_rshift1(a, num_words);
            if (uECC_vli_cmp_unsafe(u, v, num_words) < 0) {
                uECC_vli_add(u, u, mod, num_words);
            }
            uECC_vli_sub(u, u, v, num_words);
            vli_modInv_update(u, mod, num_words);
        } else {
            uECC_vli_sub(b, b, a, num_words);
            uECC_vli_rshift1(b, num_words);
            if (uECC_vli_cmp_unsafe(v, u, num_words) < 0) {
                uECC_vli_add(v, v, mod, num_words);
            }
            uECC_vli_sub(v, v, u, num_words);
            vli_modInv_update(v, mod, num_words);
        }
    }
    uECC_vli_set(result, u, num_words);
}



# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/micro-ecc/micro-ecc/curve-specific.inc" 1
# 50 "D:/ESP32/esp-idf-v3.1-rc1/components/micro-ecc/micro-ecc/curve-specific.inc"
static void double_jacobian_default(uECC_word_t * X1,
                                    uECC_word_t * Y1,
                                    uECC_word_t * Z1,
                                    uECC_Curve curve) {

    uECC_word_t t4[8];
    uECC_word_t t5[8];
    wordcount_t num_words = curve->num_words;

    if (uECC_vli_isZero(Z1, num_words)) {
        return;
    }

    uECC_vli_modSquare_fast(t4, Y1, curve);
    uECC_vli_modMult_fast(t5, X1, t4, curve);
    uECC_vli_modSquare_fast(t4, t4, curve);
    uECC_vli_modMult_fast(Y1, Y1, Z1, curve);
    uECC_vli_modSquare_fast(Z1, Z1, curve);

    uECC_vli_modAdd(X1, X1, Z1, curve->p, num_words);
    uECC_vli_modAdd(Z1, Z1, Z1, curve->p, num_words);
    uECC_vli_modSub(Z1, X1, Z1, curve->p, num_words);
    uECC_vli_modMult_fast(X1, X1, Z1, curve);

    uECC_vli_modAdd(Z1, X1, X1, curve->p, num_words);
    uECC_vli_modAdd(X1, X1, Z1, curve->p, num_words);
    if (uECC_vli_testBit(X1, 0)) {
        uECC_word_t l_carry = uECC_vli_add(X1, X1, curve->p, num_words);
        uECC_vli_rshift1(X1, num_words);
        X1[num_words - 1] |= l_carry << (32 - 1);
    } else {
        uECC_vli_rshift1(X1, num_words);
    }


    uECC_vli_modSquare_fast(Z1, X1, curve);
    uECC_vli_modSub(Z1, Z1, t5, curve->p, num_words);
    uECC_vli_modSub(Z1, Z1, t5, curve->p, num_words);
    uECC_vli_modSub(t5, t5, Z1, curve->p, num_words);
    uECC_vli_modMult_fast(X1, X1, t5, curve);
    uECC_vli_modSub(t4, X1, t4, curve->p, num_words);

    uECC_vli_set(X1, Z1, num_words);
    uECC_vli_set(Z1, Y1, num_words);
    uECC_vli_set(Y1, t4, num_words);
}


static void x_side_default(uECC_word_t *result, const uECC_word_t *x, uECC_Curve curve) {
    uECC_word_t _3[8] = {3};
    wordcount_t num_words = curve->num_words;

    uECC_vli_modSquare_fast(result, x, curve);
    uECC_vli_modSub(result, result, _3, curve->p, num_words);
    uECC_vli_modMult_fast(result, result, x, curve);
    uECC_vli_modAdd(result, result, curve->b, curve->p, num_words);
}






static void mod_sqrt_default(uECC_word_t *a, uECC_Curve curve) {
    bitcount_t i;
    uECC_word_t p1[8] = {1};
    uECC_word_t l_result[8] = {1};
    wordcount_t num_words = curve->num_words;



    uECC_vli_add(p1, curve->p, p1, num_words);
    for (i = uECC_vli_numBits(p1, num_words) - 1; i > 1; --i) {
        uECC_vli_modSquare_fast(l_result, l_result, curve);
        if (uECC_vli_testBit(p1, i)) {
            uECC_vli_modMult_fast(l_result, l_result, a, curve);
        }
    }
    uECC_vli_set(a, l_result, num_words);
}






static void vli_mmod_fast_secp160r1(uECC_word_t *result, uECC_word_t *product);


static const struct uECC_Curve_t curve_secp160r1 = {
    5,
    20,
    161,
    { 0x7FFFFFFF, 0xFFFFFFFF,
        0xFFFFFFFF, 0xFFFFFFFF,
        0xFFFFFFFF },
    { 0xCA752257, 0xF927AED3,
        0x0001F4C8, 0x00000000,
        0x00000000, 0x00000001 },
    { 0x13CBFC82, 0x68C38BB9,
        0x46646989, 0x8EF57328,
        0x4A96B568,

        0x7AC5FB32, 0x04235137,
        0x59DCC912, 0x3168947D,
        0x23A62855 },
    { 0xC565FA45, 0x81D4D4AD,
        0x65ACF89F, 0x54BD7A8B,
        0x1C97BEFC },
    &double_jacobian_default,

    &mod_sqrt_default,

    &x_side_default,

    &vli_mmod_fast_secp160r1

};

uECC_Curve uECC_secp160r1(void) { return &curve_secp160r1; }






static void omega_mult_secp160r1(uECC_word_t *result, const uECC_word_t *right);
# 215 "D:/ESP32/esp-idf-v3.1-rc1/components/micro-ecc/micro-ecc/curve-specific.inc"
static void vli_mmod_fast_secp160r1(uECC_word_t *result, uECC_word_t *product) {
    uECC_word_t tmp[2 * 5];
    uECC_word_t carry;

    uECC_vli_clear(tmp, 5);
    uECC_vli_clear(tmp + 5, 5);

    omega_mult_secp160r1(tmp, product + 5);

    carry = uECC_vli_add(result, product, tmp, 5);
    uECC_vli_clear(product, 5);
    omega_mult_secp160r1(product, tmp + 5);
    carry += uECC_vli_add(result, result, product, 5);

    while (carry > 0) {
        --carry;
        uECC_vli_sub(result, result, curve_secp160r1.p, 5);
    }
    if (uECC_vli_cmp_unsafe(result, curve_secp160r1.p, 5) > 0) {
        uECC_vli_sub(result, result, curve_secp160r1.p, 5);
    }
}
# 257 "D:/ESP32/esp-idf-v3.1-rc1/components/micro-ecc/micro-ecc/curve-specific.inc"
static void omega_mult_secp160r1(uint32_t *result, const uint32_t *right) {
    uint32_t carry;
    unsigned i;


    uECC_vli_set(result + 1, right, 5);
    uECC_vli_rshift1(result + 1, 5);
    result[0] = right[0] << 31;

    carry = uECC_vli_add(result, result, right, 5);
    for (i = 5; carry; ++i) {
        uint64_t sum = (uint64_t)result[i] + carry;
        result[i] = (uint32_t)sum;
        carry = sum >> 32;
    }
}
# 281 "D:/ESP32/esp-idf-v3.1-rc1/components/micro-ecc/micro-ecc/curve-specific.inc"
static void vli_mmod_fast_secp192r1(uECC_word_t *result, uECC_word_t *product);


static const struct uECC_Curve_t curve_secp192r1 = {
    6,
    24,
    192,
    { 0xFFFFFFFF, 0xFFFFFFFF,
        0xFFFFFFFE, 0xFFFFFFFF,
        0xFFFFFFFF, 0xFFFFFFFF },
    { 0xB4D22831, 0x146BC9B1,
        0x99DEF836, 0xFFFFFFFF,
        0xFFFFFFFF, 0xFFFFFFFF },
    { 0x82FF1012, 0xF4FF0AFD,
        0x43A18800, 0x7CBF20EB,
        0xB03090F6, 0x188DA80E,

        0x1E794811, 0x73F977A1,
        0x6B24CDD5, 0x631011ED,
        0xFFC8DA78, 0x07192B95 },
    { 0xC146B9B1, 0xFEB8DEEC,
        0x72243049, 0x0FA7E9AB,
        0xE59C80E7, 0x64210519 },
    &double_jacobian_default,

    &mod_sqrt_default,

    &x_side_default,

    &vli_mmod_fast_secp192r1

};

uECC_Curve uECC_secp192r1(void) { return &curve_secp192r1; }
# 352 "D:/ESP32/esp-idf-v3.1-rc1/components/micro-ecc/micro-ecc/curve-specific.inc"
static void vli_mmod_fast_secp192r1(uint32_t *result, uint32_t *product) {
    uint32_t tmp[6];
    int carry;

    uECC_vli_set(result, product, 6);

    uECC_vli_set(tmp, &product[6], 6);
    carry = uECC_vli_add(result, result, tmp, 6);

    tmp[0] = tmp[1] = 0;
    tmp[2] = product[6];
    tmp[3] = product[7];
    tmp[4] = product[8];
    tmp[5] = product[9];
    carry += uECC_vli_add(result, result, tmp, 6);

    tmp[0] = tmp[2] = product[10];
    tmp[1] = tmp[3] = product[11];
    tmp[4] = tmp[5] = 0;
    carry += uECC_vli_add(result, result, tmp, 6);

    while (carry || uECC_vli_cmp_unsafe(curve_secp192r1.p, result, 6) != 1) {
        carry -= uECC_vli_sub(result, result, curve_secp192r1.p, 6);
    }
}
# 408 "D:/ESP32/esp-idf-v3.1-rc1/components/micro-ecc/micro-ecc/curve-specific.inc"
static void mod_sqrt_secp224r1(uECC_word_t *a, uECC_Curve curve);


static void vli_mmod_fast_secp224r1(uECC_word_t *result, uECC_word_t *product);


static const struct uECC_Curve_t curve_secp224r1 = {
    7,
    28,
    224,
    { 0x00000001, 0x00000000,
        0x00000000, 0xFFFFFFFF,
        0xFFFFFFFF, 0xFFFFFFFF,
        0xFFFFFFFF },
    { 0x5C5C2A3D, 0x13DD2945,
        0xE0B8F03E, 0xFFFF16A2,
        0xFFFFFFFF, 0xFFFFFFFF,
        0xFFFFFFFF },
    { 0x115C1D21, 0x343280D6,
        0x56C21122, 0x4A03C1D3,
        0x321390B9, 0x6BB4BF7F,
        0xB70E0CBD,

        0x85007E34, 0x44D58199,
        0x5A074764, 0xCD4375A0,
        0x4C22DFE6, 0xB5F723FB,
        0xBD376388 },
    { 0x2355FFB4, 0x270B3943,
        0xD7BFD8BA, 0x5044B0B7,
        0xF5413256, 0x0C04B3AB,
        0xB4050A85 },
    &double_jacobian_default,

    &mod_sqrt_secp224r1,

    &x_side_default,

    &vli_mmod_fast_secp224r1

};

uECC_Curve uECC_secp224r1(void) { return &curve_secp224r1; }




static void mod_sqrt_secp224r1_rs(uECC_word_t *d1,
                                  uECC_word_t *e1,
                                  uECC_word_t *f1,
                                  const uECC_word_t *d0,
                                  const uECC_word_t *e0,
                                  const uECC_word_t *f0) {
    uECC_word_t t[7];

    uECC_vli_modSquare_fast(t, d0, &curve_secp224r1);
    uECC_vli_modMult_fast(e1, d0, e0, &curve_secp224r1);
    uECC_vli_modAdd(d1, t, f0, curve_secp224r1.p, 7);
    uECC_vli_modAdd(e1, e1, e1, curve_secp224r1.p, 7);
    uECC_vli_modMult_fast(f1, t, f0, &curve_secp224r1);
    uECC_vli_modAdd(f1, f1, f1, curve_secp224r1.p, 7);
    uECC_vli_modAdd(f1, f1, f1, curve_secp224r1.p, 7);
}


static void mod_sqrt_secp224r1_rss(uECC_word_t *d1,
                                   uECC_word_t *e1,
                                   uECC_word_t *f1,
                                   const uECC_word_t *d0,
                                   const uECC_word_t *e0,
                                   const uECC_word_t *f0,
                                   const bitcount_t j) {
    bitcount_t i;

    uECC_vli_set(d1, d0, 7);
    uECC_vli_set(e1, e0, 7);
    uECC_vli_set(f1, f0, 7);
    for (i = 1; i <= j; i++) {
        mod_sqrt_secp224r1_rs(d1, e1, f1, d1, e1, f1);
    }
}


static void mod_sqrt_secp224r1_rm(uECC_word_t *d2,
                                  uECC_word_t *e2,
                                  uECC_word_t *f2,
                                  const uECC_word_t *c,
                                  const uECC_word_t *d0,
                                  const uECC_word_t *e0,
                                  const uECC_word_t *d1,
                                  const uECC_word_t *e1) {
    uECC_word_t t1[7];
    uECC_word_t t2[7];

    uECC_vli_modMult_fast(t1, e0, e1, &curve_secp224r1);
    uECC_vli_modMult_fast(t1, t1, c, &curve_secp224r1);

    uECC_vli_modSub(t1, curve_secp224r1.p, t1, curve_secp224r1.p, 7);
    uECC_vli_modMult_fast(t2, d0, d1, &curve_secp224r1);
    uECC_vli_modAdd(t2, t2, t1, curve_secp224r1.p, 7);
    uECC_vli_modMult_fast(t1, d0, e1, &curve_secp224r1);
    uECC_vli_modMult_fast(e2, d1, e0, &curve_secp224r1);
    uECC_vli_modAdd(e2, e2, t1, curve_secp224r1.p, 7);
    uECC_vli_modSquare_fast(f2, e2, &curve_secp224r1);
    uECC_vli_modMult_fast(f2, f2, c, &curve_secp224r1);

    uECC_vli_modSub(f2, curve_secp224r1.p, f2, curve_secp224r1.p, 7);
    uECC_vli_set(d2, t2, 7);
}


static void mod_sqrt_secp224r1_rp(uECC_word_t *d1,
                                  uECC_word_t *e1,
                                  uECC_word_t *f1,
                                  const uECC_word_t *c,
                                  const uECC_word_t *r) {
    wordcount_t i;
    wordcount_t pow2i = 1;
    uECC_word_t d0[7];
    uECC_word_t e0[7] = {1};
    uECC_word_t f0[7];

    uECC_vli_set(d0, r, 7);

    uECC_vli_modSub(f0, curve_secp224r1.p, c, curve_secp224r1.p, 7);
    for (i = 0; i <= 6; i++) {
        mod_sqrt_secp224r1_rss(d1, e1, f1, d0, e0, f0, pow2i);
        mod_sqrt_secp224r1_rm(d1, e1, f1, c, d1, e1, d0, e0);
        uECC_vli_set(d0, d1, 7);
        uECC_vli_set(e0, e1, 7);
        uECC_vli_set(f0, f1, 7);
        pow2i *= 2;
    }
}



static void mod_sqrt_secp224r1(uECC_word_t *a, uECC_Curve curve) {
    bitcount_t i;
    uECC_word_t e1[7];
    uECC_word_t f1[7];
    uECC_word_t d0[7];
    uECC_word_t e0[7];
    uECC_word_t f0[7];
    uECC_word_t d1[7];


    mod_sqrt_secp224r1_rp(d0, e0, f0, a, a);
    mod_sqrt_secp224r1_rs(d1, e1, f1, d0, e0, f0);
    for (i = 1; i <= 95; i++) {
        uECC_vli_set(d0, d1, 7);
        uECC_vli_set(e0, e1, 7);
        uECC_vli_set(f0, f1, 7);
        mod_sqrt_secp224r1_rs(d1, e1, f1, d0, e0, f0);
        if (uECC_vli_isZero(d1, 7)) {
                break;
        }
    }
    uECC_vli_modInv(f1, e0, curve_secp224r1.p, 7);
    uECC_vli_modMult_fast(a, d0, f1, &curve_secp224r1);
}
# 629 "D:/ESP32/esp-idf-v3.1-rc1/components/micro-ecc/micro-ecc/curve-specific.inc"
static void vli_mmod_fast_secp224r1(uint32_t *result, uint32_t *product)
{
    uint32_t tmp[7];
    int carry;


    uECC_vli_set(result, product, 7);


    tmp[0] = tmp[1] = tmp[2] = 0;
    tmp[3] = product[7];
    tmp[4] = product[8];
    tmp[5] = product[9];
    tmp[6] = product[10];
    carry = uECC_vli_add(result, result, tmp, 7);


    tmp[3] = product[11];
    tmp[4] = product[12];
    tmp[5] = product[13];
    tmp[6] = 0;
    carry += uECC_vli_add(result, result, tmp, 7);


    tmp[0] = product[7];
    tmp[1] = product[8];
    tmp[2] = product[9];
    tmp[3] = product[10];
    tmp[4] = product[11];
    tmp[5] = product[12];
    tmp[6] = product[13];
    carry -= uECC_vli_sub(result, result, tmp, 7);


    tmp[0] = product[11];
    tmp[1] = product[12];
    tmp[2] = product[13];
    tmp[3] = tmp[4] = tmp[5] = tmp[6] = 0;
    carry -= uECC_vli_sub(result, result, tmp, 7);

    if (carry < 0) {
        do {
            carry += uECC_vli_add(result, result, curve_secp224r1.p, 7);
        } while (carry < 0);
    } else {
        while (carry || uECC_vli_cmp_unsafe(curve_secp224r1.p, result, 7) != 1) {
            carry -= uECC_vli_sub(result, result, curve_secp224r1.p, 7);
        }
    }
}
# 733 "D:/ESP32/esp-idf-v3.1-rc1/components/micro-ecc/micro-ecc/curve-specific.inc"
static void vli_mmod_fast_secp256r1(uECC_word_t *result, uECC_word_t *product);


static const struct uECC_Curve_t curve_secp256r1 = {
    8,
    32,
    256,
    { 0xFFFFFFFF, 0xFFFFFFFF,
        0xFFFFFFFF, 0x00000000,
        0x00000000, 0x00000000,
        0x00000001, 0xFFFFFFFF },
    { 0xFC632551, 0xF3B9CAC2,
        0xA7179E84, 0xBCE6FAAD,
        0xFFFFFFFF, 0xFFFFFFFF,
        0x00000000, 0xFFFFFFFF },
    { 0xD898C296, 0xF4A13945,
        0x2DEB33A0, 0x77037D81,
        0x63A440F2, 0xF8BCE6E5,
        0xE12C4247, 0x6B17D1F2,

        0x37BF51F5, 0xCBB64068,
        0x6B315ECE, 0x2BCE3357,
        0x7C0F9E16, 0x8EE7EB4A,
        0xFE1A7F9B, 0x4FE342E2 },
    { 0x27D2604B, 0x3BCE3C3E,
        0xCC53B0F6, 0x651D06B0,
        0x769886BC, 0xB3EBBD55,
        0xAA3A93E7, 0x5AC635D8 },
    &double_jacobian_default,

    &mod_sqrt_default,

    &x_side_default,

    &vli_mmod_fast_secp256r1

};

uECC_Curve uECC_secp256r1(void) { return &curve_secp256r1; }
# 883 "D:/ESP32/esp-idf-v3.1-rc1/components/micro-ecc/micro-ecc/curve-specific.inc"
static void vli_mmod_fast_secp256r1(uint32_t *result, uint32_t *product) {
    uint32_t tmp[8];
    int carry;


    uECC_vli_set(result, product, 8);


    tmp[0] = tmp[1] = tmp[2] = 0;
    tmp[3] = product[11];
    tmp[4] = product[12];
    tmp[5] = product[13];
    tmp[6] = product[14];
    tmp[7] = product[15];
    carry = uECC_vli_add(tmp, tmp, tmp, 8);
    carry += uECC_vli_add(result, result, tmp, 8);


    tmp[3] = product[12];
    tmp[4] = product[13];
    tmp[5] = product[14];
    tmp[6] = product[15];
    tmp[7] = 0;
    carry += uECC_vli_add(tmp, tmp, tmp, 8);
    carry += uECC_vli_add(result, result, tmp, 8);


    tmp[0] = product[8];
    tmp[1] = product[9];
    tmp[2] = product[10];
    tmp[3] = tmp[4] = tmp[5] = 0;
    tmp[6] = product[14];
    tmp[7] = product[15];
    carry += uECC_vli_add(result, result, tmp, 8);


    tmp[0] = product[9];
    tmp[1] = product[10];
    tmp[2] = product[11];
    tmp[3] = product[13];
    tmp[4] = product[14];
    tmp[5] = product[15];
    tmp[6] = product[13];
    tmp[7] = product[8];
    carry += uECC_vli_add(result, result, tmp, 8);


    tmp[0] = product[11];
    tmp[1] = product[12];
    tmp[2] = product[13];
    tmp[3] = tmp[4] = tmp[5] = 0;
    tmp[6] = product[8];
    tmp[7] = product[10];
    carry -= uECC_vli_sub(result, result, tmp, 8);


    tmp[0] = product[12];
    tmp[1] = product[13];
    tmp[2] = product[14];
    tmp[3] = product[15];
    tmp[4] = tmp[5] = 0;
    tmp[6] = product[9];
    tmp[7] = product[11];
    carry -= uECC_vli_sub(result, result, tmp, 8);


    tmp[0] = product[13];
    tmp[1] = product[14];
    tmp[2] = product[15];
    tmp[3] = product[8];
    tmp[4] = product[9];
    tmp[5] = product[10];
    tmp[6] = 0;
    tmp[7] = product[12];
    carry -= uECC_vli_sub(result, result, tmp, 8);


    tmp[0] = product[14];
    tmp[1] = product[15];
    tmp[2] = 0;
    tmp[3] = product[9];
    tmp[4] = product[10];
    tmp[5] = product[11];
    tmp[6] = 0;
    tmp[7] = product[13];
    carry -= uECC_vli_sub(result, result, tmp, 8);

    if (carry < 0) {
        do {
            carry += uECC_vli_add(result, result, curve_secp256r1.p, 8);
        } while (carry < 0);
    } else {
        while (carry || uECC_vli_cmp_unsafe(curve_secp256r1.p, result, 8) != 1) {
            carry -= uECC_vli_sub(result, result, curve_secp256r1.p, 8);
        }
    }
}
# 1062 "D:/ESP32/esp-idf-v3.1-rc1/components/micro-ecc/micro-ecc/curve-specific.inc"
static void double_jacobian_secp256k1(uECC_word_t * X1,
                                      uECC_word_t * Y1,
                                      uECC_word_t * Z1,
                                      uECC_Curve curve);
static void x_side_secp256k1(uECC_word_t *result, const uECC_word_t *x, uECC_Curve curve);

static void vli_mmod_fast_secp256k1(uECC_word_t *result, uECC_word_t *product);


static const struct uECC_Curve_t curve_secp256k1 = {
    8,
    32,
    256,
    { 0xFFFFFC2F, 0xFFFFFFFE,
        0xFFFFFFFF, 0xFFFFFFFF,
        0xFFFFFFFF, 0xFFFFFFFF,
        0xFFFFFFFF, 0xFFFFFFFF },
    { 0xD0364141, 0xBFD25E8C,
        0xAF48A03B, 0xBAAEDCE6,
        0xFFFFFFFE, 0xFFFFFFFF,
        0xFFFFFFFF, 0xFFFFFFFF },
    { 0x16F81798, 0x59F2815B,
        0x2DCE28D9, 0x029BFCDB,
        0xCE870B07, 0x55A06295,
        0xF9DCBBAC, 0x79BE667E,

        0xFB10D4B8, 0x9C47D08F,
        0xA6855419, 0xFD17B448,
        0x0E1108A8, 0x5DA4FBFC,
        0x26A3C465, 0x483ADA77 },
    { 0x00000007, 0x00000000,
        0x00000000, 0x00000000,
        0x00000000, 0x00000000,
        0x00000000, 0x00000000 },
    &double_jacobian_secp256k1,

    &mod_sqrt_default,

    &x_side_secp256k1,

    &vli_mmod_fast_secp256k1

};

uECC_Curve uECC_secp256k1(void) { return &curve_secp256k1; }



static void double_jacobian_secp256k1(uECC_word_t * X1,
                                      uECC_word_t * Y1,
                                      uECC_word_t * Z1,
                                      uECC_Curve curve) {

    uECC_word_t t4[8];
    uECC_word_t t5[8];

    if (uECC_vli_isZero(Z1, 8)) {
        return;
    }

    uECC_vli_modSquare_fast(t5, Y1, curve);
    uECC_vli_modMult_fast(t4, X1, t5, curve);
    uECC_vli_modSquare_fast(X1, X1, curve);
    uECC_vli_modSquare_fast(t5, t5, curve);
    uECC_vli_modMult_fast(Z1, Y1, Z1, curve);

    uECC_vli_modAdd(Y1, X1, X1, curve->p, 8);
    uECC_vli_modAdd(Y1, Y1, X1, curve->p, 8);
    if (uECC_vli_testBit(Y1, 0)) {
        uECC_word_t carry = uECC_vli_add(Y1, Y1, curve->p, 8);
        uECC_vli_rshift1(Y1, 8);
        Y1[8 - 1] |= carry << (32 - 1);
    } else {
        uECC_vli_rshift1(Y1, 8);
    }


    uECC_vli_modSquare_fast(X1, Y1, curve);
    uECC_vli_modSub(X1, X1, t4, curve->p, 8);
    uECC_vli_modSub(X1, X1, t4, curve->p, 8);

    uECC_vli_modSub(t4, t4, X1, curve->p, 8);
    uECC_vli_modMult_fast(Y1, Y1, t4, curve);
    uECC_vli_modSub(Y1, Y1, t5, curve->p, 8);
}


static void x_side_secp256k1(uECC_word_t *result, const uECC_word_t *x, uECC_Curve curve) {
    uECC_vli_modSquare_fast(result, x, curve);
    uECC_vli_modMult_fast(result, result, x, curve);
    uECC_vli_modAdd(result, result, curve->b, curve->p, 8);
}


static void omega_mult_secp256k1(uECC_word_t *result, const uECC_word_t *right);
static void vli_mmod_fast_secp256k1(uECC_word_t *result, uECC_word_t *product) {
    uECC_word_t tmp[2 * 8];
    uECC_word_t carry;

    uECC_vli_clear(tmp, 8);
    uECC_vli_clear(tmp + 8, 8);

    omega_mult_secp256k1(tmp, product + 8);

    carry = uECC_vli_add(result, product, tmp, 8);
    uECC_vli_clear(product, 8);
    omega_mult_secp256k1(product, tmp + 8);
    carry += uECC_vli_add(result, result, product, 8);

    while (carry > 0) {
        --carry;
        uECC_vli_sub(result, result, curve_secp256k1.p, 8);
    }
    if (uECC_vli_cmp_unsafe(result, curve_secp256k1.p, 8) > 0) {
        uECC_vli_sub(result, result, curve_secp256k1.p, 8);
    }
}
# 1211 "D:/ESP32/esp-idf-v3.1-rc1/components/micro-ecc/micro-ecc/curve-specific.inc"
static void omega_mult_secp256k1(uint32_t * result, const uint32_t * right) {

    uint32_t carry = 0;
    wordcount_t k;

    for (k = 0; k < 8; ++k) {
        uint64_t p = (uint64_t)0x3D1 * right[k] + carry;
        result[k] = (uint32_t) p;
        carry = p >> 32;
    }
    result[8] = carry;

    result[1 + 8] =
        uECC_vli_add(result + 1, result + 1, right, 8);
}
# 739 "D:/ESP32/esp-idf-v3.1-rc1/components/micro-ecc/micro-ecc/uECC.c" 2
# 748 "D:/ESP32/esp-idf-v3.1-rc1/components/micro-ecc/micro-ecc/uECC.c"
static void apply_z(uECC_word_t * X1,
                    uECC_word_t * Y1,
                    const uECC_word_t * const Z,
                    uECC_Curve curve) {
    uECC_word_t t1[8];

    uECC_vli_modSquare_fast(t1, Z, curve);
    uECC_vli_modMult_fast(X1, X1, t1, curve);
    uECC_vli_modMult_fast(t1, t1, Z, curve);
    uECC_vli_modMult_fast(Y1, Y1, t1, curve);
}


static void XYcZ_initial_double(uECC_word_t * X1,
                                uECC_word_t * Y1,
                                uECC_word_t * X2,
                                uECC_word_t * Y2,
                                const uECC_word_t * const initial_Z,
                                uECC_Curve curve) {
    uECC_word_t z[8];
    wordcount_t num_words = curve->num_words;
    if (initial_Z) {
        uECC_vli_set(z, initial_Z, num_words);
    } else {
        uECC_vli_clear(z, num_words);
        z[0] = 1;
    }

    uECC_vli_set(X2, X1, num_words);
    uECC_vli_set(Y2, Y1, num_words);

    apply_z(X1, Y1, z, curve);
    curve->double_jacobian(X1, Y1, z, curve);
    apply_z(X2, Y2, z, curve);
}





static void XYcZ_add(uECC_word_t * X1,
                     uECC_word_t * Y1,
                     uECC_word_t * X2,
                     uECC_word_t * Y2,
                     uECC_Curve curve) {

    uECC_word_t t5[8];
    wordcount_t num_words = curve->num_words;

    uECC_vli_modSub(t5, X2, X1, curve->p, num_words);
    uECC_vli_modSquare_fast(t5, t5, curve);
    uECC_vli_modMult_fast(X1, X1, t5, curve);
    uECC_vli_modMult_fast(X2, X2, t5, curve);
    uECC_vli_modSub(Y2, Y2, Y1, curve->p, num_words);
    uECC_vli_modSquare_fast(t5, Y2, curve);

    uECC_vli_modSub(t5, t5, X1, curve->p, num_words);
    uECC_vli_modSub(t5, t5, X2, curve->p, num_words);
    uECC_vli_modSub(X2, X2, X1, curve->p, num_words);
    uECC_vli_modMult_fast(Y1, Y1, X2, curve);
    uECC_vli_modSub(X2, X1, t5, curve->p, num_words);
    uECC_vli_modMult_fast(Y2, Y2, X2, curve);
    uECC_vli_modSub(Y2, Y2, Y1, curve->p, num_words);

    uECC_vli_set(X2, t5, num_words);
}





static void XYcZ_addC(uECC_word_t * X1,
                      uECC_word_t * Y1,
                      uECC_word_t * X2,
                      uECC_word_t * Y2,
                      uECC_Curve curve) {

    uECC_word_t t5[8];
    uECC_word_t t6[8];
    uECC_word_t t7[8];
    wordcount_t num_words = curve->num_words;

    uECC_vli_modSub(t5, X2, X1, curve->p, num_words);
    uECC_vli_modSquare_fast(t5, t5, curve);
    uECC_vli_modMult_fast(X1, X1, t5, curve);
    uECC_vli_modMult_fast(X2, X2, t5, curve);
    uECC_vli_modAdd(t5, Y2, Y1, curve->p, num_words);
    uECC_vli_modSub(Y2, Y2, Y1, curve->p, num_words);

    uECC_vli_modSub(t6, X2, X1, curve->p, num_words);
    uECC_vli_modMult_fast(Y1, Y1, t6, curve);
    uECC_vli_modAdd(t6, X1, X2, curve->p, num_words);
    uECC_vli_modSquare_fast(X2, Y2, curve);
    uECC_vli_modSub(X2, X2, t6, curve->p, num_words);

    uECC_vli_modSub(t7, X1, X2, curve->p, num_words);
    uECC_vli_modMult_fast(Y2, Y2, t7, curve);
    uECC_vli_modSub(Y2, Y2, Y1, curve->p, num_words);

    uECC_vli_modSquare_fast(t7, t5, curve);
    uECC_vli_modSub(t7, t7, t6, curve->p, num_words);
    uECC_vli_modSub(t6, t7, X1, curve->p, num_words);
    uECC_vli_modMult_fast(t6, t6, t5, curve);
    uECC_vli_modSub(Y1, t6, Y1, curve->p, num_words);

    uECC_vli_set(X1, t7, num_words);
}


static void EccPoint_mult(uECC_word_t * result,
                          const uECC_word_t * point,
                          const uECC_word_t * scalar,
                          const uECC_word_t * initial_Z,
                          bitcount_t num_bits,
                          uECC_Curve curve) {

    uECC_word_t Rx[2][8];
    uECC_word_t Ry[2][8];
    uECC_word_t z[8];
    bitcount_t i;
    uECC_word_t nb;
    wordcount_t num_words = curve->num_words;

    uECC_vli_set(Rx[1], point, num_words);
    uECC_vli_set(Ry[1], point + num_words, num_words);

    XYcZ_initial_double(Rx[1], Ry[1], Rx[0], Ry[0], initial_Z, curve);

    for (i = num_bits - 2; i > 0; --i) {
        nb = !uECC_vli_testBit(scalar, i);
        XYcZ_addC(Rx[1 - nb], Ry[1 - nb], Rx[nb], Ry[nb], curve);
        XYcZ_add(Rx[nb], Ry[nb], Rx[1 - nb], Ry[1 - nb], curve);
    }

    nb = !uECC_vli_testBit(scalar, 0);
    XYcZ_addC(Rx[1 - nb], Ry[1 - nb], Rx[nb], Ry[nb], curve);


    uECC_vli_modSub(z, Rx[1], Rx[0], curve->p, num_words);
    uECC_vli_modMult_fast(z, z, Ry[1 - nb], curve);
    uECC_vli_modMult_fast(z, z, point, curve);
    uECC_vli_modInv(z, z, curve->p, num_words);

    uECC_vli_modMult_fast(z, z, point + num_words, curve);
    uECC_vli_modMult_fast(z, z, Rx[1 - nb], curve);


    XYcZ_add(Rx[nb], Ry[nb], Rx[1 - nb], Ry[1 - nb], curve);
    apply_z(Rx[0], Ry[0], z, curve);

    uECC_vli_set(result, Rx[0], num_words);
    uECC_vli_set(result + num_words, Ry[0], num_words);
}

static uECC_word_t regularize_k(const uECC_word_t * const k,
                                uECC_word_t *k0,
                                uECC_word_t *k1,
                                uECC_Curve curve) {
    wordcount_t num_n_words = ((curve->num_n_bits + ((4 * 8) - 1)) / (4 * 8));
    bitcount_t num_n_bits = curve->num_n_bits;
    uECC_word_t carry = uECC_vli_add(k0, k, curve->n, num_n_words) ||
        (num_n_bits < ((bitcount_t)num_n_words * 4 * 8) &&
         uECC_vli_testBit(k0, num_n_bits));
    uECC_vli_add(k1, k0, curve->n, num_n_words);
    return carry;
}

static uECC_word_t EccPoint_compute_public_key(uECC_word_t *result,
                                               uECC_word_t *private_key,
                                               uECC_Curve curve) {
    uECC_word_t tmp1[8];
    uECC_word_t tmp2[8];
    uECC_word_t *p2[2] = {tmp1, tmp2};
    uECC_word_t carry;



    carry = regularize_k(private_key, tmp1, tmp2, curve);

    EccPoint_mult(result, curve->G, p2[!carry], 0, curve->num_n_bits + 1, curve);

    if (uECC_vli_isZero((result), (curve)->num_words * 2)) {
        return 0;
    }
    return 1;
}
# 954 "D:/ESP32/esp-idf-v3.1-rc1/components/micro-ecc/micro-ecc/uECC.c"
static void uECC_vli_nativeToBytes(uint8_t *bytes,
                                         int num_bytes,
                                         const uECC_word_t *native) {
    wordcount_t i;
    for (i = 0; i < num_bytes; ++i) {
        unsigned b = num_bytes - 1 - i;
        bytes[i] = native[b / 4] >> (8 * (b % 4));
    }
}

static void uECC_vli_bytesToNative(uECC_word_t *native,
                                         const uint8_t *bytes,
                                         int num_bytes) {
    wordcount_t i;
    uECC_vli_clear(native, (num_bytes + (4 - 1)) / 4);
    for (i = 0; i < num_bytes; ++i) {
        unsigned b = num_bytes - 1 - i;
        native[b / 4] |=
            (uECC_word_t)bytes[i] << (8 * (b % 4));
    }
}





static int uECC_generate_random_int(uECC_word_t *random,
                                          const uECC_word_t *top,
                                          wordcount_t num_words) {
    uECC_word_t mask = (uECC_word_t)-1;
    uECC_word_t tries;
    bitcount_t num_bits = uECC_vli_numBits(top, num_words);

    if (!g_rng_function) {
        return 0;
    }

    for (tries = 0; tries < 64; ++tries) {
        if (!g_rng_function((uint8_t *)random, num_words * 4)) {
            return 0;
     }
        random[num_words - 1] &= mask >> ((bitcount_t)(num_words * 4 * 8 - num_bits));
        if (!uECC_vli_isZero(random, num_words) &&
          uECC_vli_cmp(top, random, num_words) == 1) {
            return 1;
        }
    }
    return 0;
}

int uECC_make_key(uint8_t *public_key,
                  uint8_t *private_key,
                  uECC_Curve curve) {




    uECC_word_t _private[8];
    uECC_word_t _public[8 * 2];

    uECC_word_t tries;

    for (tries = 0; tries < 64; ++tries) {
        if (!uECC_generate_random_int(_private, curve->n, ((curve->num_n_bits + ((4 * 8) - 1)) / (4 * 8)))) {
            return 0;
        }

        if (EccPoint_compute_public_key(_public, _private, curve)) {

            uECC_vli_nativeToBytes(private_key, ((curve->num_n_bits + 7) / 8), _private);
            uECC_vli_nativeToBytes(public_key, curve->num_bytes, _public);
            uECC_vli_nativeToBytes(
                public_key + curve->num_bytes, curve->num_bytes, _public + curve->num_words);

            return 1;
        }
    }
    return 0;
}

int uECC_shared_secret(const uint8_t *public_key,
                       const uint8_t *private_key,
                       uint8_t *secret,
                       uECC_Curve curve) {
    uECC_word_t _public[8 * 2];
    uECC_word_t _private[8];

    uECC_word_t tmp[8];
    uECC_word_t *p2[2] = {_private, tmp};
    uECC_word_t *initial_Z = 0;
    uECC_word_t carry;
    wordcount_t num_words = curve->num_words;
    wordcount_t num_bytes = curve->num_bytes;





    uECC_vli_bytesToNative(_private, private_key, ((curve->num_n_bits + 7) / 8));
    uECC_vli_bytesToNative(_public, public_key, num_bytes);
    uECC_vli_bytesToNative(_public + num_words, public_key + num_bytes, num_bytes);




    carry = regularize_k(_private, _private, tmp, curve);



    if (g_rng_function) {
        if (!uECC_generate_random_int(p2[carry], curve->p, num_words)) {
            return 0;
        }
        initial_Z = p2[carry];
    }

    EccPoint_mult(_public, _public, p2[!carry], initial_Z, curve->num_n_bits + 1, curve);



    uECC_vli_nativeToBytes(secret, num_bytes, _public);

    return !uECC_vli_isZero((_public), (curve)->num_words * 2);
}


void uECC_compress(const uint8_t *public_key, uint8_t *compressed, uECC_Curve curve) {
    wordcount_t i;
    for (i = 0; i < curve->num_bytes; ++i) {
        compressed[i+1] = public_key[i];
    }



    compressed[0] = 2 + (public_key[curve->num_bytes * 2 - 1] & 0x01);

}

void uECC_decompress(const uint8_t *compressed, uint8_t *public_key, uECC_Curve curve) {



    uECC_word_t point[8 * 2];

    uECC_word_t *y = point + curve->num_words;



    uECC_vli_bytesToNative(point, compressed + 1, curve->num_bytes);

    curve->x_side(y, point, curve);
    curve->mod_sqrt(y, curve);

    if ((y[0] & 0x01) != (compressed[0] & 0x01)) {
        uECC_vli_sub(y, curve->p, y, curve->num_words);
    }


    uECC_vli_nativeToBytes(public_key, curve->num_bytes, point);
    uECC_vli_nativeToBytes(public_key + curve->num_bytes, curve->num_bytes, y);

}


int uECC_valid_point(const uECC_word_t *point, uECC_Curve curve) {
    uECC_word_t tmp1[8];
    uECC_word_t tmp2[8];
    wordcount_t num_words = curve->num_words;


    if (uECC_vli_isZero((point), (curve)->num_words * 2)) {
        return 0;
    }


    if (uECC_vli_cmp_unsafe(curve->p, point, num_words) != 1 ||
            uECC_vli_cmp_unsafe(curve->p, point + num_words, num_words) != 1) {
        return 0;
    }

    uECC_vli_modSquare_fast(tmp1, point + num_words, curve);
    curve->x_side(tmp2, point, curve);


    return (int)(uECC_vli_equal(tmp1, tmp2, num_words));
}

int uECC_valid_public_key(const uint8_t *public_key, uECC_Curve curve) {



    uECC_word_t _public[8 * 2];



    uECC_vli_bytesToNative(_public, public_key, curve->num_bytes);
    uECC_vli_bytesToNative(
        _public + curve->num_words, public_key + curve->num_bytes, curve->num_bytes);

    return uECC_valid_point(_public, curve);
}

int uECC_compute_public_key(const uint8_t *private_key, uint8_t *public_key, uECC_Curve curve) {




    uECC_word_t _private[8];
    uECC_word_t _public[8 * 2];



    uECC_vli_bytesToNative(_private, private_key, ((curve->num_n_bits + 7) / 8));



    if (uECC_vli_isZero(_private, ((curve->num_n_bits + ((4 * 8) - 1)) / (4 * 8)))) {
        return 0;
    }

    if (uECC_vli_cmp(curve->n, _private, ((curve->num_n_bits + ((4 * 8) - 1)) / (4 * 8))) != 1) {
        return 0;
    }


    if (!EccPoint_compute_public_key(_public, _private, curve)) {
        return 0;
    }


    uECC_vli_nativeToBytes(public_key, curve->num_bytes, _public);
    uECC_vli_nativeToBytes(
        public_key + curve->num_bytes, curve->num_bytes, _public + curve->num_words);

    return 1;
}




static void bits2int(uECC_word_t *native,
                     const uint8_t *bits,
                     unsigned bits_size,
                     uECC_Curve curve) {
    unsigned num_n_bytes = ((curve->num_n_bits + 7) / 8);
    unsigned num_n_words = ((curve->num_n_bits + ((4 * 8) - 1)) / (4 * 8));
    int shift;
    uECC_word_t carry;
    uECC_word_t *ptr;

    if (bits_size > num_n_bytes) {
        bits_size = num_n_bytes;
    }

    uECC_vli_clear(native, num_n_words);



    uECC_vli_bytesToNative(native, bits, bits_size);

    if (bits_size * 8 <= (unsigned)curve->num_n_bits) {
        return;
    }
    shift = bits_size * 8 - curve->num_n_bits;
    carry = 0;
    ptr = native + num_n_words;
    while (ptr-- > native) {
        uECC_word_t temp = *ptr;
        *ptr = (temp >> shift) | carry;
        carry = temp << (32 - shift);
    }


    if (uECC_vli_cmp_unsafe(curve->n, native, num_n_words) != 1) {
        uECC_vli_sub(native, native, curve->n, num_n_words);
    }
}

static int uECC_sign_with_k(const uint8_t *private_key,
                            const uint8_t *message_hash,
                            unsigned hash_size,
                            uECC_word_t *k,
                            uint8_t *signature,
                            uECC_Curve curve) {

    uECC_word_t tmp[8];
    uECC_word_t s[8];
    uECC_word_t *k2[2] = {tmp, s};



    uECC_word_t p[8 * 2];

    uECC_word_t carry;
    wordcount_t num_words = curve->num_words;
    wordcount_t num_n_words = ((curve->num_n_bits + ((4 * 8) - 1)) / (4 * 8));
    bitcount_t num_n_bits = curve->num_n_bits;


    if (uECC_vli_isZero(k, num_words) || uECC_vli_cmp(curve->n, k, num_n_words) != 1) {
        return 0;
    }

    carry = regularize_k(k, tmp, s, curve);
    EccPoint_mult(p, curve->G, k2[!carry], 0, num_n_bits + 1, curve);
    if (uECC_vli_isZero(p, num_words)) {
        return 0;
    }



    if (!g_rng_function) {
        uECC_vli_clear(tmp, num_n_words);
        tmp[0] = 1;
    } else if (!uECC_generate_random_int(tmp, curve->n, num_n_words)) {
        return 0;
    }



    uECC_vli_modMult(k, k, tmp, curve->n, num_n_words);
    uECC_vli_modInv(k, k, curve->n, num_n_words);
    uECC_vli_modMult(k, k, tmp, curve->n, num_n_words);


    uECC_vli_nativeToBytes(signature, curve->num_bytes, p);





    uECC_vli_bytesToNative(tmp, private_key, ((curve->num_n_bits + 7) / 8));


    s[num_n_words - 1] = 0;
    uECC_vli_set(s, p, num_words);
    uECC_vli_modMult(s, tmp, s, curve->n, num_n_words);

    bits2int(tmp, message_hash, hash_size, curve);
    uECC_vli_modAdd(s, tmp, s, curve->n, num_n_words);
    uECC_vli_modMult(s, s, k, curve->n, num_n_words);
    if (uECC_vli_numBits(s, num_n_words) > (bitcount_t)curve->num_bytes * 8) {
        return 0;
    }



    uECC_vli_nativeToBytes(signature + curve->num_bytes, curve->num_bytes, s);

    return 1;
}

int uECC_sign(const uint8_t *private_key,
              const uint8_t *message_hash,
              unsigned hash_size,
              uint8_t *signature,
              uECC_Curve curve) {
    uECC_word_t k[8];
    uECC_word_t tries;

    for (tries = 0; tries < 64; ++tries) {
        if (!uECC_generate_random_int(k, curve->n, ((curve->num_n_bits + ((4 * 8) - 1)) / (4 * 8)))) {
            return 0;
        }

        if (uECC_sign_with_k(private_key, message_hash, hash_size, k, signature, curve)) {
            return 1;
        }
    }
    return 0;
}



static void HMAC_init(const uECC_HashContext *hash_context, const uint8_t *K) {
    uint8_t *pad = hash_context->tmp + 2 * hash_context->result_size;
    unsigned i;
    for (i = 0; i < hash_context->result_size; ++i)
        pad[i] = K[i] ^ 0x36;
    for (; i < hash_context->block_size; ++i)
        pad[i] = 0x36;

    hash_context->init_hash(hash_context);
    hash_context->update_hash(hash_context, pad, hash_context->block_size);
}

static void HMAC_update(const uECC_HashContext *hash_context,
                        const uint8_t *message,
                        unsigned message_size) {
    hash_context->update_hash(hash_context, message, message_size);
}

static void HMAC_finish(const uECC_HashContext *hash_context,
                        const uint8_t *K,
                        uint8_t *result) {
    uint8_t *pad = hash_context->tmp + 2 * hash_context->result_size;
    unsigned i;
    for (i = 0; i < hash_context->result_size; ++i)
        pad[i] = K[i] ^ 0x5c;
    for (; i < hash_context->block_size; ++i)
        pad[i] = 0x5c;

    hash_context->finish_hash(hash_context, result);

    hash_context->init_hash(hash_context);
    hash_context->update_hash(hash_context, pad, hash_context->block_size);
    hash_context->update_hash(hash_context, result, hash_context->result_size);
    hash_context->finish_hash(hash_context, result);
}


static void update_V(const uECC_HashContext *hash_context, uint8_t *K, uint8_t *V) {
    HMAC_init(hash_context, K);
    HMAC_update(hash_context, V, hash_context->result_size);
    HMAC_finish(hash_context, K, V);
}







int uECC_sign_deterministic(const uint8_t *private_key,
                            const uint8_t *message_hash,
                            unsigned hash_size,
                            const uECC_HashContext *hash_context,
                            uint8_t *signature,
                            uECC_Curve curve) {
    uint8_t *K = hash_context->tmp;
    uint8_t *V = K + hash_context->result_size;
    wordcount_t num_bytes = curve->num_bytes;
    wordcount_t num_n_words = ((curve->num_n_bits + ((4 * 8) - 1)) / (4 * 8));
    bitcount_t num_n_bits = curve->num_n_bits;
    uECC_word_t tries;
    unsigned i;
    for (i = 0; i < hash_context->result_size; ++i) {
        V[i] = 0x01;
        K[i] = 0;
    }


    HMAC_init(hash_context, K);
    V[hash_context->result_size] = 0x00;
    HMAC_update(hash_context, V, hash_context->result_size + 1);
    HMAC_update(hash_context, private_key, num_bytes);
    HMAC_update(hash_context, message_hash, hash_size);
    HMAC_finish(hash_context, K, K);

    update_V(hash_context, K, V);


    HMAC_init(hash_context, K);
    V[hash_context->result_size] = 0x01;
    HMAC_update(hash_context, V, hash_context->result_size + 1);
    HMAC_update(hash_context, private_key, num_bytes);
    HMAC_update(hash_context, message_hash, hash_size);
    HMAC_finish(hash_context, K, K);

    update_V(hash_context, K, V);

    for (tries = 0; tries < 64; ++tries) {
        uECC_word_t T[8];
        uint8_t *T_ptr = (uint8_t *)T;
        wordcount_t T_bytes = 0;
        for (;;) {
            update_V(hash_context, K, V);
            for (i = 0; i < hash_context->result_size; ++i) {
                T_ptr[T_bytes++] = V[i];
                if (T_bytes >= num_n_words * 4) {
                    goto filled;
                }
            }
        }
    filled:
        if ((bitcount_t)num_n_words * 4 * 8 > num_n_bits) {
            uECC_word_t mask = (uECC_word_t)-1;
            T[num_n_words - 1] &=
                mask >> ((bitcount_t)(num_n_words * 4 * 8 - num_n_bits));
        }

        if (uECC_sign_with_k(private_key, message_hash, hash_size, T, signature, curve)) {
            return 1;
        }


        HMAC_init(hash_context, K);
        V[hash_context->result_size] = 0x00;
        HMAC_update(hash_context, V, hash_context->result_size + 1);
        HMAC_finish(hash_context, K, K);

        update_V(hash_context, K, V);
    }
    return 0;
}

static bitcount_t smax(bitcount_t a, bitcount_t b) {
    return (a > b ? a : b);
}

int uECC_verify(const uint8_t *public_key,
                const uint8_t *message_hash,
                unsigned hash_size,
                const uint8_t *signature,
                uECC_Curve curve) {
    uECC_word_t u1[8], u2[8];
    uECC_word_t z[8];
    uECC_word_t sum[8 * 2];
    uECC_word_t rx[8];
    uECC_word_t ry[8];
    uECC_word_t tx[8];
    uECC_word_t ty[8];
    uECC_word_t tz[8];
    const uECC_word_t *points[4];
    const uECC_word_t *point;
    bitcount_t num_bits;
    bitcount_t i;



    uECC_word_t _public[8 * 2];

    uECC_word_t r[8], s[8];
    wordcount_t num_words = curve->num_words;
    wordcount_t num_n_words = ((curve->num_n_bits + ((4 * 8) - 1)) / (4 * 8));

    rx[num_n_words - 1] = 0;
    r[num_n_words - 1] = 0;
    s[num_n_words - 1] = 0;





    uECC_vli_bytesToNative(_public, public_key, curve->num_bytes);
    uECC_vli_bytesToNative(
        _public + num_words, public_key + curve->num_bytes, curve->num_bytes);
    uECC_vli_bytesToNative(r, signature, curve->num_bytes);
    uECC_vli_bytesToNative(s, signature + curve->num_bytes, curve->num_bytes);



    if (uECC_vli_isZero(r, num_words) || uECC_vli_isZero(s, num_words)) {
        return 0;
    }


    if (uECC_vli_cmp_unsafe(curve->n, r, num_n_words) != 1 ||
            uECC_vli_cmp_unsafe(curve->n, s, num_n_words) != 1) {
        return 0;
    }


    uECC_vli_modInv(z, s, curve->n, num_n_words);
    u1[num_n_words - 1] = 0;
    bits2int(u1, message_hash, hash_size, curve);
    uECC_vli_modMult(u1, u1, z, curve->n, num_n_words);
    uECC_vli_modMult(u2, r, z, curve->n, num_n_words);


    uECC_vli_set(sum, _public, num_words);
    uECC_vli_set(sum + num_words, _public + num_words, num_words);
    uECC_vli_set(tx, curve->G, num_words);
    uECC_vli_set(ty, curve->G + num_words, num_words);
    uECC_vli_modSub(z, sum, tx, curve->p, num_words);
    XYcZ_add(tx, ty, sum, sum + num_words, curve);
    uECC_vli_modInv(z, z, curve->p, num_words);
    apply_z(sum, sum + num_words, z, curve);


    points[0] = 0;
    points[1] = curve->G;
    points[2] = _public;
    points[3] = sum;
    num_bits = smax(uECC_vli_numBits(u1, num_n_words),
                    uECC_vli_numBits(u2, num_n_words));

    point = points[(!!uECC_vli_testBit(u1, num_bits - 1)) |
                   ((!!uECC_vli_testBit(u2, num_bits - 1)) << 1)];
    uECC_vli_set(rx, point, num_words);
    uECC_vli_set(ry, point + num_words, num_words);
    uECC_vli_clear(z, num_words);
    z[0] = 1;

    for (i = num_bits - 2; i >= 0; --i) {
        uECC_word_t index;
        curve->double_jacobian(rx, ry, z, curve);

        index = (!!uECC_vli_testBit(u1, i)) | ((!!uECC_vli_testBit(u2, i)) << 1);
        point = points[index];
        if (point) {
            uECC_vli_set(tx, point, num_words);
            uECC_vli_set(ty, point + num_words, num_words);
            apply_z(tx, ty, z, curve);
            uECC_vli_modSub(tz, rx, tx, curve->p, num_words);
            XYcZ_add(tx, ty, rx, ry, curve);
            uECC_vli_modMult_fast(z, z, tz, curve);
        }
    }

    uECC_vli_modInv(z, z, curve->p, num_words);
    apply_z(rx, ry, z, curve);


    if (uECC_vli_cmp_unsafe(curve->n, rx, num_n_words) != 1) {
        uECC_vli_sub(rx, rx, curve->n, num_n_words);
    }


    return (int)(uECC_vli_equal(rx, r, num_words));
}
