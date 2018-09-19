	.file	"fast_crypto_internal-cipher.c"
	.text
.Ltext0:
	.section	.text.fast_crypto_cipher_init,"ax",@progbits
	.align	4
	.global	fast_crypto_cipher_init
	.type	fast_crypto_cipher_init, @function
fast_crypto_cipher_init:
.LFB1:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/fast_crypto/fast_crypto_internal-cipher.c"
	.loc 1 59 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 62 0
	movi	a11, 0x68
	movi.n	a10, 1
	call8	calloc
.LVL1:
	mov.n	a6, a10
.LVL2:
	.loc 1 63 0
	beqz.n	a10, .L7
	.loc 1 67 0
	s32i.n	a2, a10, 0
	.loc 1 69 0
	beqi	a2, 1, .L4
	bnei	a2, 5, .L8
	.loc 1 71 0
	movi.n	a2, 0x10
.LVL3:
	bgeu	a2, a5, .L6
	.loc 1 72 0
	call8	free
.LVL4:
	.loc 1 73 0
	movi.n	a2, 0
	retw.n
.LVL5:
.L6:
	.loc 1 75 0
	s32i.n	a5, a10, 24
	.loc 1 76 0
	mov.n	a12, a5
	mov.n	a11, a4
	addi.n	a10, a10, 8
	call8	memcpy
.LVL6:
	.loc 1 110 0
	mov.n	a2, a6
	.loc 1 77 0
	retw.n
.LVL7:
.L4:
	.loc 1 79 0
	addi	a2, a10, 36
.LVL8:
	mov.n	a10, a2
	call8	esp_aes_init
.LVL9:
	.loc 1 80 0
	movi	a12, 0x100
	mov.n	a11, a4
	mov.n	a10, a2
	call8	esp_aes_setkey
.LVL10:
	.loc 1 81 0
	addi	a2, a6, 69
	mov.n	a10, a2
	call8	esp_aes_init
.LVL11:
	.loc 1 82 0
	movi	a12, 0x100
	mov.n	a11, a4
	mov.n	a10, a2
	call8	esp_aes_setkey
.LVL12:
	.loc 1 83 0
	movi.n	a12, 0x10
	mov.n	a11, a3
	addi.n	a10, a6, 4
	call8	memcpy
.LVL13:
	.loc 1 110 0
	mov.n	a2, a6
	.loc 1 84 0
	retw.n
.LVL14:
.L8:
	.loc 1 106 0
	call8	free
.LVL15:
	.loc 1 107 0
	movi.n	a2, 0
.LVL16:
	retw.n
.LVL17:
.L7:
	.loc 1 64 0
	movi.n	a2, 0
.LVL18:
	.loc 1 111 0
	retw.n
.LFE1:
	.size	fast_crypto_cipher_init, .-fast_crypto_cipher_init
	.section	.text.fast_crypto_cipher_encrypt,"ax",@progbits
	.align	4
	.global	fast_crypto_cipher_encrypt
	.type	fast_crypto_cipher_encrypt, @function
fast_crypto_cipher_encrypt:
.LFB2:
	.loc 1 116 0
.LVL19:
	entry	sp, 32
.LCFI1:
.LVL20:
	.loc 1 122 0
	l32i.n	a7, a2, 0
	beqi	a7, 1, .L11
	bnei	a7, 5, .L21
	.loc 1 124 0
	beq	a3, a4, .L13
	.loc 1 125 0
	mov.n	a12, a5
	mov.n	a11, a3
	mov.n	a10, a4
	call8	memcpy
.LVL21:
.L13:
	.loc 1 127 0
	mov.n	a14, a5
	mov.n	a13, a4
	l32i.n	a12, a2, 4
	l32i.n	a11, a2, 24
	addi.n	a10, a2, 8
	call8	rc4_skip
.LVL22:
	.loc 1 129 0
	l32i.n	a3, a2, 4
.LVL23:
	add.n	a5, a3, a5
.LVL24:
	s32i.n	a5, a2, 4
	.loc 1 185 0
	movi.n	a2, 0
.LVL25:
	.loc 1 130 0
	retw.n
.LVL26:
.L11:
	.loc 1 132 0
	extui	a6, a5, 0, 4
	bnez.n	a6, .L18
	.loc 1 135 0
	srli	a6, a5, 4
.LVL27:
	.loc 1 136 0
	movi.n	a5, 0
.LVL28:
	j	.L14
.LVL29:
.L15:
	.loc 1 138 0 discriminator 3
	add.n	a9, a3, a8
	l8ui	a11, a9, 0
	add.n	a10, a2, a8
	l8ui	a9, a10, 4
	xor	a9, a11, a9
	s8i	a9, a10, 4
	.loc 1 137 0 discriminator 3
	addi.n	a8, a8, 1
.LVL30:
	j	.L16
.LVL31:
.L20:
	movi.n	a8, 0
.L16:
.LVL32:
	.loc 1 137 0 is_stmt 0 discriminator 1
	movi.n	a9, 0xf
	bgeu	a9, a8, .L15
	.loc 1 139 0 is_stmt 1
	addi.n	a7, a2, 4
	mov.n	a12, a7
	mov.n	a11, a7
	addi	a10, a2, 36
	call8	esp_internal_aes_encrypt
.LVL33:
	bnez.n	a10, .L19
	.loc 1 142 0 discriminator 2
	movi.n	a12, 0x10
	mov.n	a11, a7
	mov.n	a10, a4
	call8	memcpy
.LVL34:
	.loc 1 143 0 discriminator 2
	addi	a3, a3, 16
.LVL35:
	.loc 1 144 0 discriminator 2
	addi	a4, a4, 16
.LVL36:
	.loc 1 136 0 discriminator 2
	addi.n	a5, a5, 1
.LVL37:
.L14:
	.loc 1 136 0 is_stmt 0 discriminator 1
	bltu	a5, a6, .L20
	.loc 1 185 0 is_stmt 1
	movi.n	a2, 0
.LVL38:
	retw.n
.LVL39:
.L21:
	.loc 1 182 0
	movi.n	a2, -1
.LVL40:
	retw.n
.LVL41:
.L18:
	.loc 1 133 0
	movi.n	a2, -1
.LVL42:
	retw.n
.LVL43:
.L19:
	.loc 1 140 0
	movi.n	a2, -1
.LVL44:
	.loc 1 186 0
	retw.n
.LFE2:
	.size	fast_crypto_cipher_encrypt, .-fast_crypto_cipher_encrypt
	.section	.text.fast_crypto_cipher_decrypt,"ax",@progbits
	.align	4
	.global	fast_crypto_cipher_decrypt
	.type	fast_crypto_cipher_decrypt, @function
fast_crypto_cipher_decrypt:
.LFB3:
	.loc 1 191 0
.LVL45:
	entry	sp, 64
.LCFI2:
.LVL46:
	.loc 1 198 0
	l32i.n	a8, a2, 0
	beqi	a8, 1, .L24
	bnei	a8, 5, .L34
	.loc 1 200 0
	beq	a3, a4, .L26
	.loc 1 201 0
	mov.n	a12, a5
	mov.n	a11, a3
	mov.n	a10, a4
	call8	memcpy
.LVL47:
.L26:
	.loc 1 203 0
	mov.n	a14, a5
	mov.n	a13, a4
	l32i.n	a12, a2, 4
	l32i.n	a11, a2, 24
	addi.n	a10, a2, 8
	call8	rc4_skip
.LVL48:
	.loc 1 205 0
	l32i.n	a3, a2, 4
.LVL49:
	add.n	a5, a3, a5
.LVL50:
	s32i.n	a5, a2, 4
	.loc 1 264 0
	movi.n	a2, 0
.LVL51:
	.loc 1 206 0
	retw.n
.LVL52:
.L24:
	.loc 1 208 0
	extui	a6, a5, 0, 4
	bnez.n	a6, .L32
	.loc 1 211 0
	srli	a6, a5, 4
.LVL53:
	.loc 1 212 0
	movi.n	a5, 0
.LVL54:
	j	.L27
.LVL55:
.L30:
	.loc 1 213 0
	movi.n	a12, 0x10
	mov.n	a11, a3
	mov.n	a10, sp
	call8	memcpy
.LVL56:
	.loc 1 214 0
	mov.n	a12, a4
	mov.n	a11, a3
	addi	a10, a2, 69
	call8	esp_internal_aes_decrypt
.LVL57:
	bnez.n	a10, .L33
	movi.n	a8, 0
	j	.L28
.LVL58:
.L29:
	.loc 1 218 0 discriminator 3
	add.n	a10, a4, a8
	add.n	a9, a2, a8
	l8ui	a11, a9, 4
	l8ui	a9, a10, 0
	xor	a9, a11, a9
	s8i	a9, a10, 0
	.loc 1 217 0 discriminator 3
	addi.n	a8, a8, 1
.LVL59:
.L28:
	.loc 1 217 0 is_stmt 0 discriminator 1
	movi.n	a9, 0xf
	bgeu	a9, a8, .L29
	.loc 1 219 0 is_stmt 1 discriminator 2
	movi.n	a12, 0x10
	mov.n	a11, sp
	addi.n	a10, a2, 4
	call8	memcpy
.LVL60:
	.loc 1 220 0 discriminator 2
	addi	a4, a4, 16
.LVL61:
	.loc 1 221 0 discriminator 2
	addi	a3, a3, 16
.LVL62:
	.loc 1 212 0 discriminator 2
	addi.n	a5, a5, 1
.LVL63:
.L27:
	.loc 1 212 0 is_stmt 0 discriminator 1
	bltu	a5, a6, .L30
	.loc 1 264 0 is_stmt 1
	movi.n	a2, 0
.LVL64:
	retw.n
.LVL65:
.L34:
	.loc 1 261 0
	movi.n	a2, -1
.LVL66:
	retw.n
.LVL67:
.L32:
	.loc 1 209 0
	movi.n	a2, -1
.LVL68:
	retw.n
.LVL69:
.L33:
	.loc 1 215 0
	movi.n	a2, -1
.LVL70:
	.loc 1 265 0
	retw.n
.LFE3:
	.size	fast_crypto_cipher_decrypt, .-fast_crypto_cipher_decrypt
	.section	.text.fast_crypto_cipher_deinit,"ax",@progbits
	.align	4
	.global	fast_crypto_cipher_deinit
	.type	fast_crypto_cipher_deinit, @function
fast_crypto_cipher_deinit:
.LFB4:
	.loc 1 269 0
.LVL71:
	entry	sp, 32
.LCFI3:
.LVL72:
	.loc 1 274 0
	l32i.n	a8, a2, 0
	bnei	a8, 1, .L36
	.loc 1 276 0
	addi	a10, a2, 36
	call8	esp_aes_free
.LVL73:
	.loc 1 277 0
	addi	a10, a2, 69
	call8	esp_aes_free
.LVL74:
.L36:
	.loc 1 286 0
	mov.n	a10, a2
	call8	free
.LVL75:
	retw.n
.LFE4:
	.size	fast_crypto_cipher_deinit, .-fast_crypto_cipher_deinit
	.section	.debug_frame,"",@progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x3
	.string	""
	.uleb128 0x1
	.sleb128 -4
	.uleb128 0
	.byte	0xc
	.uleb128 0x1
	.uleb128 0
	.align	4
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI0-.LFB1
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI1-.LFB2
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI2-.LFB3
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI3-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/hwcrypto/aes.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/port/include/aes_alt.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/aes.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/crypto.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x62d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0xc
	.4byte	.LASF44
	.4byte	.LASF45
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x12
	.4byte	0x37
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0xd8
	.4byte	0x53
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x5
	.4byte	.LASF46
	.byte	0x4
	.4byte	0x53
	.byte	0x9
	.2byte	0x10e
	.4byte	0xd0
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.byte	0x21
	.byte	0x5
	.byte	0x31
	.4byte	0xf1
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x5
	.byte	0x32
	.4byte	0x73
	.byte	0
	.uleb128 0x9
	.string	"key"
	.byte	0x5
	.byte	0x33
	.4byte	0xf1
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	0x73
	.4byte	0x101
	.uleb128 0xb
	.4byte	0x85
	.byte	0x1f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0x34
	.4byte	0xd0
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x6
	.byte	0x21
	.4byte	0x101
	.uleb128 0x7
	.byte	0x18
	.byte	0x1
	.byte	0x1d
	.4byte	0x144
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x1
	.byte	0x1e
	.4byte	0x68
	.byte	0
	.uleb128 0x9
	.string	"key"
	.byte	0x1
	.byte	0x1f
	.4byte	0x144
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x1
	.byte	0x20
	.4byte	0x68
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.4byte	0x73
	.4byte	0x154
	.uleb128 0xb
	.4byte	0x85
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.byte	0x62
	.byte	0x1
	.byte	0x22
	.4byte	0x181
	.uleb128 0x9
	.string	"cbc"
	.byte	0x1
	.byte	0x23
	.4byte	0xf1
	.byte	0
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x1
	.byte	0x24
	.4byte	0x10c
	.byte	0x20
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x1
	.byte	0x25
	.4byte	0x10c
	.byte	0x41
	.byte	0
	.uleb128 0xc
	.byte	0x64
	.byte	0x1
	.byte	0x1c
	.4byte	0x1a0
	.uleb128 0xd
	.string	"rc4"
	.byte	0x1
	.byte	0x21
	.4byte	0x117
	.uleb128 0xd
	.string	"aes"
	.byte	0x1
	.byte	0x26
	.4byte	0x154
	.byte	0
	.uleb128 0xe
	.4byte	.LASF47
	.byte	0x68
	.byte	0x1
	.byte	0x1a
	.4byte	0x1c3
	.uleb128 0x9
	.string	"alg"
	.byte	0x1
	.byte	0x1b
	.4byte	0x9a
	.byte	0
	.uleb128 0x9
	.string	"u"
	.byte	0x1
	.byte	0x34
	.4byte	0x181
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.4byte	.LASF48
	.uleb128 0x10
	.4byte	.LASF28
	.byte	0x1
	.byte	0x38
	.4byte	0x303
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x303
	.uleb128 0x11
	.string	"alg"
	.byte	0x1
	.byte	0x38
	.4byte	0x9a
	.4byte	.LLST0
	.uleb128 0x12
	.string	"iv"
	.byte	0x1
	.byte	0x39
	.4byte	0x309
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x12
	.string	"key"
	.byte	0x1
	.byte	0x39
	.4byte	0x309
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x13
	.4byte	.LASF27
	.byte	0x1
	.byte	0x3a
	.4byte	0x68
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x14
	.string	"ctx"
	.byte	0x1
	.byte	0x3c
	.4byte	0x314
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x15
	.4byte	.LVL1
	.4byte	0x5cc
	.4byte	0x23c
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x68
	.byte	0
	.uleb128 0x15
	.4byte	.LVL4
	.4byte	0x5d7
	.4byte	0x250
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL6
	.4byte	0x5e2
	.4byte	0x270
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 8
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL9
	.4byte	0x5eb
	.4byte	0x284
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL10
	.4byte	0x5f6
	.4byte	0x2a5
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.uleb128 0x15
	.4byte	.LVL11
	.4byte	0x5eb
	.4byte	0x2b9
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL12
	.4byte	0x5f6
	.4byte	0x2da
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.uleb128 0x15
	.4byte	.LVL13
	.4byte	0x5e2
	.4byte	0x2f9
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x17
	.4byte	.LVL15
	.4byte	0x5d7
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.4byte	0x1c3
	.uleb128 0x18
	.byte	0x4
	.4byte	0x30f
	.uleb128 0x19
	.4byte	0x73
	.uleb128 0x18
	.byte	0x4
	.4byte	0x1a0
	.uleb128 0x10
	.4byte	.LASF29
	.byte	0x1
	.byte	0x72
	.4byte	0x4c
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x423
	.uleb128 0x11
	.string	"ctx"
	.byte	0x1
	.byte	0x72
	.4byte	0x303
	.4byte	.LLST1
	.uleb128 0x1a
	.4byte	.LASF30
	.byte	0x1
	.byte	0x72
	.4byte	0x309
	.4byte	.LLST2
	.uleb128 0x1a
	.4byte	.LASF31
	.byte	0x1
	.byte	0x73
	.4byte	0x423
	.4byte	.LLST3
	.uleb128 0x11
	.string	"len"
	.byte	0x1
	.byte	0x73
	.4byte	0x68
	.4byte	.LLST4
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0x75
	.4byte	0x68
	.4byte	.LLST5
	.uleb128 0x1b
	.string	"j"
	.byte	0x1
	.byte	0x75
	.4byte	0x68
	.4byte	.LLST6
	.uleb128 0x1c
	.4byte	.LASF32
	.byte	0x1
	.byte	0x75
	.4byte	0x68
	.4byte	.LLST7
	.uleb128 0x1c
	.4byte	.LASF33
	.byte	0x1
	.byte	0x76
	.4byte	0x314
	.4byte	.LLST8
	.uleb128 0x15
	.4byte	.LVL21
	.4byte	0x5e2
	.4byte	0x3c7
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL22
	.4byte	0x601
	.4byte	0x3e7
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 8
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL33
	.4byte	0x60d
	.4byte	0x407
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 36
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL34
	.4byte	0x5e2
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.4byte	0x73
	.uleb128 0x10
	.4byte	.LASF34
	.byte	0x1
	.byte	0xbd
	.4byte	0x4c
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x560
	.uleb128 0x11
	.string	"ctx"
	.byte	0x1
	.byte	0xbd
	.4byte	0x303
	.4byte	.LLST9
	.uleb128 0x1a
	.4byte	.LASF31
	.byte	0x1
	.byte	0xbd
	.4byte	0x309
	.4byte	.LLST10
	.uleb128 0x1a
	.4byte	.LASF30
	.byte	0x1
	.byte	0xbe
	.4byte	0x423
	.4byte	.LLST11
	.uleb128 0x11
	.string	"len"
	.byte	0x1
	.byte	0xbe
	.4byte	0x68
	.4byte	.LLST12
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0xc0
	.4byte	0x68
	.4byte	.LLST13
	.uleb128 0x1b
	.string	"j"
	.byte	0x1
	.byte	0xc0
	.4byte	0x68
	.4byte	.LLST14
	.uleb128 0x1c
	.4byte	.LASF32
	.byte	0x1
	.byte	0xc0
	.4byte	0x68
	.4byte	.LLST15
	.uleb128 0x14
	.string	"tmp"
	.byte	0x1
	.byte	0xc1
	.4byte	0xf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1c
	.4byte	.LASF33
	.byte	0x1
	.byte	0xc2
	.4byte	0x314
	.4byte	.LLST16
	.uleb128 0x15
	.4byte	.LVL47
	.4byte	0x5e2
	.4byte	0x4e4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL48
	.4byte	0x601
	.4byte	0x504
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 8
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL56
	.4byte	0x5e2
	.4byte	0x523
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x15
	.4byte	.LVL57
	.4byte	0x619
	.4byte	0x544
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x72
	.sleb128 69
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL60
	.4byte	0x5e2
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x10c
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5cc
	.uleb128 0x1f
	.string	"ctx"
	.byte	0x1
	.2byte	0x10c
	.4byte	0x303
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x20
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x10e
	.4byte	0x314
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x15
	.4byte	.LVL73
	.4byte	0x625
	.4byte	0x5a6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 36
	.byte	0
	.uleb128 0x15
	.4byte	.LVL74
	.4byte	0x625
	.4byte	0x5bb
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x72
	.sleb128 69
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL75
	.4byte	0x5d7
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x7
	.byte	0x57
	.uleb128 0x21
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x7
	.byte	0x5a
	.uleb128 0x22
	.4byte	.LASF50
	.4byte	.LASF50
	.uleb128 0x21
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x8
	.byte	0x7a
	.uleb128 0x21
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x8
	.byte	0xb3
	.uleb128 0x23
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x9
	.2byte	0x25e
	.uleb128 0x23
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x8
	.2byte	0x22e
	.uleb128 0x23
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x8
	.2byte	0x23d
	.uleb128 0x21
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x8
	.byte	0x81
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x2
	.byte	0x76
	.sleb128 0
	.4byte	.LVL4-1
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x2
	.byte	0x76
	.sleb128 0
	.4byte	.LVL6-1
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LVL9-1
	.2byte	0x2
	.byte	0x76
	.sleb128 0
	.4byte	.LVL9-1
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL19
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LFE2
	.2byte	0x3
	.byte	0x77
	.sleb128 -4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL19
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL19
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL36
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL19
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL28
	.4byte	.LVL39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL43
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL43
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL32
	.4byte	.LVL33-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL27
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL43
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL20
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LFE2
	.2byte	0x3
	.byte	0x77
	.sleb128 -4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL45
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL70
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL45
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL49
	.4byte	.LVL52
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL45
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL61
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL45
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL54
	.4byte	.LVL65
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL69
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL69
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL58
	.4byte	.LVL60-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL53
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL69
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL46
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL70
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF8:
	.string	"size_t"
.LASF46:
	.string	"crypto_cipher_alg"
.LASF7:
	.string	"__uint8_t"
.LASF37:
	.string	"esp_aes_init"
.LASF6:
	.string	"long long unsigned int"
.LASF20:
	.string	"key_bytes"
.LASF36:
	.string	"free"
.LASF42:
	.string	"esp_aes_free"
.LASF5:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF41:
	.string	"esp_internal_aes_decrypt"
.LASF10:
	.string	"long int"
.LASF39:
	.string	"rc4_skip"
.LASF31:
	.string	"crypt"
.LASF27:
	.string	"key_len"
.LASF26:
	.string	"ctx_dec"
.LASF25:
	.string	"ctx_enc"
.LASF4:
	.string	"unsigned int"
.LASF15:
	.string	"CRYPTO_CIPHER_ALG_AES"
.LASF12:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF45:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\wpa_supplicant"
.LASF30:
	.string	"plain"
.LASF38:
	.string	"esp_aes_setkey"
.LASF16:
	.string	"CRYPTO_CIPHER_ALG_3DES"
.LASF32:
	.string	"blocks"
.LASF11:
	.string	"sizetype"
.LASF34:
	.string	"fast_crypto_cipher_decrypt"
.LASF33:
	.string	"fast_ctx"
.LASF24:
	.string	"keylen"
.LASF28:
	.string	"fast_crypto_cipher_init"
.LASF1:
	.string	"unsigned char"
.LASF43:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF44:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/fast_crypto/fast_crypto_internal-cipher.c"
.LASF2:
	.string	"short int"
.LASF40:
	.string	"esp_internal_aes_encrypt"
.LASF14:
	.string	"CRYPTO_CIPHER_NULL"
.LASF47:
	.string	"fast_crypto_cipher"
.LASF29:
	.string	"fast_crypto_cipher_encrypt"
.LASF13:
	.string	"char"
.LASF17:
	.string	"CRYPTO_CIPHER_ALG_DES"
.LASF50:
	.string	"memcpy"
.LASF49:
	.string	"fast_crypto_cipher_deinit"
.LASF21:
	.string	"esp_aes_context"
.LASF35:
	.string	"calloc"
.LASF9:
	.string	"uint8_t"
.LASF23:
	.string	"used_bytes"
.LASF22:
	.string	"mbedtls_aes_context"
.LASF18:
	.string	"CRYPTO_CIPHER_ALG_RC2"
.LASF19:
	.string	"CRYPTO_CIPHER_ALG_RC4"
.LASF48:
	.string	"crypto_cipher"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
