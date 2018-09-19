	.file	"crypto_secretbox_easy.c"
	.text
.Ltext0:
	.section	.text.crypto_secretbox_detached,"ax",@progbits
	.literal_position
	.literal .LC2, 1, 0
	.align	4
	.global	crypto_secretbox_detached
	.type	crypto_secretbox_detached, @function
crypto_secretbox_detached:
.LFB12:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_secretbox/crypto_secretbox_easy.c"
	.loc 1 20 0
.LVL0:
	entry	sp, 432
.LCFI0:
	s32i	a7, sp, 372
	s32i	a6, sp, 368
	s32i	a3, sp, 380
	s32i	a6, sp, 384
	l32i	a6, sp, 372
.LVL1:
	l32i	a7, sp, 432
	.loc 1 27 0
	movi.n	a13, 0
	l32i	a12, sp, 436
	mov.n	a11, a7
	movi	a10, 0x140
	addi	a3, sp, 16
.LVL2:
	add.n	a10, a3, a10
	call8	crypto_core_hsalsa20
.LVL3:
	.loc 1 29 0
	mov.n	a5, a2
	mov.n	a3, a4
	bltu	a2, a4, .L2
	.loc 1 30 0 discriminator 1
	sub	a8, a2, a4
	.loc 1 29 0 discriminator 1
	bnez.n	a6, .L3
	bnez.n	a6, .L2
	l32i	a9, sp, 384
	bltu	a8, a9, .L3
.L2:
	.loc 1 30 0
	bltu	a3, a5, .L5
	.loc 1 32 0
	sub	a3, a3, a2
	.loc 1 31 0
	bnez.n	a6, .L3
	bnez.n	a6, .L5
	l32i	a5, sp, 384
	bgeu	a3, a5, .L5
.L3:
	.loc 1 33 0
	l32i	a12, sp, 368
	mov.n	a11, a4
	mov.n	a10, a2
	call8	memmove
.LVL4:
	.loc 1 34 0
	mov.n	a4, a2
.LVL5:
.L5:
	.loc 1 36 0
	movi.n	a3, 0
	s32i	a3, sp, 272
	s32i	a3, sp, 276
	s32i	a3, sp, 280
	s32i	a3, sp, 284
	s32i	a3, sp, 288
	s32i	a3, sp, 292
	s32i	a3, sp, 296
	s32i	a3, sp, 300
.LVL6:
	.loc 1 39 0
	bne	a6, a3, .L23
	bne	a6, a3, .L24
	movi.n	a3, 0x20
	l32i	a5, sp, 384
	bltu	a3, a5, .L23
.L24:
	.loc 1 38 0
	l32i	a5, sp, 368
	l32i	a3, sp, 372
	j	.L7
.L23:
	.loc 1 40 0
	movi.n	a5, 0x20
	movi.n	a3, 0
.L7:
.LVL7:
	.loc 1 42 0
	movi.n	a10, 0
	mov.n	a11, a10
	j	.L9
.LVL8:
.L12:
	.loc 1 43 0 discriminator 3
	addi	a8, a10, 32
	add.n	a9, a4, a10
	l8ui	a12, a9, 0
	addi	a13, sp, 16
	addmi	a9, a13, 0x100
	add.n	a8, a9, a8
	s8i	a12, a8, 0
	.loc 1 42 0 discriminator 3
	addi.n	a9, a10, 1
	movi.n	a8, 1
	bltu	a9, a10, .L11
	movi.n	a8, 0
.L11:
	add.n	a8, a8, a11
	mov.n	a10, a9
.LVL9:
	mov.n	a11, a8
.LVL10:
.L9:
	.loc 1 42 0 is_stmt 0 discriminator 1
	bltu	a11, a3, .L12
	bne	a3, a11, .L25
	bltu	a10, a5, .L12
.L25:
	.loc 1 45 0 is_stmt 1
	addi	a8, a7, 16
	s32i	a8, sp, 376
	movi	a15, 0x140
	addi	a9, sp, 16
	add.n	a15, a9, a15
	addi	a12, a5, 32
	movi.n	a13, 1
	bltu	a12, a5, .L14
	movi.n	a13, 0
.L14:
	addi	a8, sp, 16
	addmi	a7, a8, 0x100
	l32i	a14, sp, 376
	add.n	a13, a13, a3
	mov.n	a11, a7
.LVL11:
	mov.n	a10, a7
	call8	crypto_stream_salsa20_xor
.LVL12:
	.loc 1 50 0
	mov.n	a11, a7
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_init
.LVL13:
	.loc 1 52 0
	movi.n	a9, 0
	mov.n	a10, a9
	j	.L15
.LVL14:
.L18:
	.loc 1 53 0 discriminator 3
	add.n	a11, a2, a9
	addi	a7, a9, 32
	addi	a12, sp, 16
	addmi	a8, a12, 0x100
	add.n	a7, a8, a7
	l8ui	a7, a7, 0
	s8i	a7, a11, 0
	.loc 1 52 0 discriminator 3
	addi.n	a8, a9, 1
	movi.n	a7, 1
	bltu	a8, a9, .L17
	movi.n	a7, 0
.L17:
	add.n	a7, a7, a10
	mov.n	a9, a8
.LVL15:
	mov.n	a10, a7
.LVL16:
.L15:
	.loc 1 52 0 is_stmt 0 discriminator 1
	bltu	a10, a3, .L18
	bne	a3, a10, .L26
	bltu	a9, a5, .L18
.L26:
	.loc 1 55 0 is_stmt 1
	movi.n	a11, 0x40
	addi	a13, sp, 16
	addmi	a10, a13, 0x100
.LVL17:
	call8	sodium_memzero
.LVL18:
	.loc 1 56 0
	bltu	a3, a6, .L27
	bne	a6, a3, .L20
	l32i	a6, sp, 384
	bgeu	a5, a6, .L20
.L27:
	.loc 1 57 0
	mov.n	a10, a5
	l32i	a6, sp, 368
	sub	a12, a6, a5
	movi.n	a13, 1
	l32i	a5, sp, 384
.LVL19:
	bltu	a5, a12, .L22
	movi.n	a13, 0
.L22:
	l32i	a5, sp, 372
	sub	a3, a5, a3
.LVL20:
	sub	a13, a3, a13
	movi	a3, 0x140
	addi	a6, sp, 16
	add.n	a3, a6, a3
	s32i.n	a3, sp, 8
	l32r	a8, .LC2
	l32r	a9, .LC2+4
	s32i.n	a8, sp, 0
	s32i.n	a9, sp, 4
	l32i	a14, sp, 376
	add.n	a11, a4, a10
	add.n	a10, a2, a10
	call8	crypto_stream_salsa20_xor_ic
.LVL21:
.L20:
	.loc 1 60 0
	movi.n	a11, 0x20
	movi	a10, 0x140
	addi	a8, sp, 16
	add.n	a10, a8, a10
	call8	sodium_memzero
.LVL22:
	.loc 1 62 0
	l32i	a12, sp, 368
	l32i	a13, sp, 372
	mov.n	a11, a2
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_update
.LVL23:
	.loc 1 63 0
	l32i	a11, sp, 380
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_final
.LVL24:
	.loc 1 64 0
	movi	a11, 0x100
	addi	a10, sp, 16
	call8	sodium_memzero
.LVL25:
	.loc 1 67 0
	movi.n	a2, 0
.LVL26:
	retw.n
.LFE12:
	.size	crypto_secretbox_detached, .-crypto_secretbox_detached
	.section	.text.crypto_secretbox_easy,"ax",@progbits
	.align	4
	.global	crypto_secretbox_easy
	.type	crypto_secretbox_easy, @function
crypto_secretbox_easy:
.LFB13:
	.loc 1 73 0
.LVL27:
	entry	sp, 48
.LCFI1:
	.loc 1 74 0
	bnez.n	a5, .L31
	bnez.n	a5, .L32
	movi.n	a8, -0x11
	bltu	a8, a4, .L31
.L32:
	.loc 1 77 0
	s32i.n	a7, sp, 4
	s32i.n	a6, sp, 0
	mov.n	a14, a4
	mov.n	a15, a5
	mov.n	a12, a3
	mov.n	a11, a2
	addi	a10, a2, 16
	call8	crypto_secretbox_detached
.LVL28:
	mov.n	a2, a10
.LVL29:
	retw.n
.LVL30:
.L31:
	.loc 1 75 0
	movi.n	a2, -1
.LVL31:
	.loc 1 79 0
	retw.n
.LFE13:
	.size	crypto_secretbox_easy, .-crypto_secretbox_easy
	.section	.text.crypto_secretbox_open_detached,"ax",@progbits
	.literal_position
	.literal .LC3, 32, 0
	.literal .LC5, 1, 0
	.align	4
	.global	crypto_secretbox_open_detached
	.type	crypto_secretbox_open_detached, @function
crypto_secretbox_open_detached:
.LFB14:
	.loc 1 87 0
.LVL32:
	entry	sp, 160
.LCFI2:
	s32i	a7, sp, 112
	s32i	a6, sp, 124
	l32i	a7, sp, 112
	l32i	a5, sp, 160
	.loc 1 93 0
	movi.n	a13, 0
	l32i	a12, sp, 164
	mov.n	a11, a5
	addi	a10, sp, 80
	call8	crypto_core_hsalsa20
.LVL33:
	.loc 1 94 0
	addi	a5, a5, 16
	s32i	a5, sp, 116
	addi	a15, sp, 80
	mov.n	a14, a5
	l32r	a12, .LC3
	l32r	a13, .LC3+4
	addi	a10, sp, 16
	call8	crypto_stream_salsa20
.LVL34:
	.loc 1 96 0
	addi	a14, sp, 16
	mov.n	a12, a6
	l32i	a13, sp, 112
	mov.n	a11, a3
	mov.n	a10, a4
	call8	crypto_onetimeauth_poly1305_verify
.LVL35:
	s32i	a10, sp, 120
	beqz.n	a10, .L34
	.loc 1 97 0
	movi.n	a11, 0x20
	addi	a10, sp, 80
	call8	sodium_memzero
.LVL36:
	.loc 1 98 0
	movi.n	a2, -1
.LVL37:
	s32i	a2, sp, 120
	j	.L35
.LVL38:
.L34:
	.loc 1 100 0
	beqz.n	a2, .L35
	.loc 1 103 0
	mov.n	a4, a3
.LVL39:
	mov.n	a5, a2
	bltu	a3, a2, .L36
	.loc 1 104 0 discriminator 1
	sub	a8, a3, a2
	.loc 1 103 0 discriminator 1
	bnez.n	a7, .L37
	bnez.n	a7, .L36
	l32i	a9, sp, 124
	bltu	a8, a9, .L37
.L36:
	.loc 1 104 0
	bltu	a5, a4, .L39
	.loc 1 106 0
	sub	a4, a2, a4
	.loc 1 105 0
	bnez.n	a7, .L37
	bnez.n	a7, .L39
	l32i	a5, sp, 124
	bgeu	a4, a5, .L39
.L37:
	.loc 1 107 0
	mov.n	a12, a6
	mov.n	a11, a3
	mov.n	a10, a2
	call8	memmove
.LVL40:
	.loc 1 108 0
	mov.n	a3, a2
.LVL41:
.L39:
	.loc 1 111 0
	bnez.n	a7, .L57
	bnez.n	a7, .L58
	movi.n	a4, 0x20
	l32i	a5, sp, 124
	bltu	a4, a5, .L57
.L58:
	.loc 1 110 0
	mov.n	a5, a6
	l32i	a4, sp, 112
	j	.L41
.L57:
	.loc 1 112 0
	movi.n	a5, 0x20
	movi.n	a4, 0
.L41:
.LVL42:
	.loc 1 114 0
	movi.n	a8, 0
	mov.n	a10, a8
	j	.L43
.LVL43:
.L46:
	.loc 1 115 0 discriminator 3
	addi	a9, a8, 32
	add.n	a11, a3, a8
	l8ui	a11, a11, 0
	addi	a12, sp, 16
	add.n	a9, a12, a9
	s8i	a11, a9, 0
	.loc 1 114 0 discriminator 3
	addi.n	a11, a8, 1
	movi.n	a9, 1
	bltu	a11, a8, .L45
	movi.n	a9, 0
.L45:
	add.n	a9, a9, a10
	mov.n	a8, a11
.LVL44:
	mov.n	a10, a9
.LVL45:
.L43:
	.loc 1 114 0 is_stmt 0 discriminator 1
	bltu	a10, a4, .L46
	bne	a4, a10, .L59
	bltu	a8, a5, .L46
.L59:
	.loc 1 117 0 is_stmt 1
	addi	a12, a5, 32
	movi.n	a13, 1
	bltu	a12, a5, .L48
	movi.n	a13, 0
.L48:
	addi	a15, sp, 80
	l32i	a14, sp, 116
	add.n	a13, a13, a4
	addi	a11, sp, 16
	mov.n	a10, a11
.LVL46:
	call8	crypto_stream_salsa20_xor
.LVL47:
	.loc 1 120 0
	movi.n	a8, 0
	mov.n	a10, a8
	j	.L49
.LVL48:
.L52:
	.loc 1 121 0 discriminator 3
	add.n	a11, a2, a8
	addi	a9, a8, 32
	addi	a12, sp, 16
	add.n	a9, a12, a9
	l8ui	a9, a9, 0
	s8i	a9, a11, 0
	.loc 1 120 0 discriminator 3
	addi.n	a11, a8, 1
	movi.n	a9, 1
	bltu	a11, a8, .L51
	movi.n	a9, 0
.L51:
	add.n	a9, a9, a10
	mov.n	a8, a11
.LVL49:
	mov.n	a10, a9
.LVL50:
.L49:
	.loc 1 120 0 is_stmt 0 discriminator 1
	bltu	a10, a4, .L52
	bne	a4, a10, .L60
	bltu	a8, a5, .L52
.L60:
	.loc 1 123 0 is_stmt 1
	bltu	a4, a7, .L61
	bne	a7, a4, .L54
	l32i	a8, sp, 124
.LVL51:
	bgeu	a5, a8, .L54
.L61:
	.loc 1 124 0
	mov.n	a10, a5
	sub	a12, a6, a5
	movi.n	a13, 1
	l32i	a5, sp, 124
.LVL52:
	bltu	a5, a12, .L56
	movi.n	a13, 0
.L56:
	l32i	a5, sp, 112
	sub	a4, a5, a4
.LVL53:
	sub	a13, a4, a13
	addi	a4, sp, 80
	s32i.n	a4, sp, 8
	l32r	a4, .LC5
	l32r	a5, .LC5+4
	s32i.n	a4, sp, 0
	s32i.n	a5, sp, 4
	l32i	a14, sp, 116
	add.n	a11, a3, a10
	add.n	a10, a2, a10
	call8	crypto_stream_salsa20_xor_ic
.LVL54:
.L54:
	.loc 1 127 0
	movi.n	a11, 0x20
	addi	a10, sp, 80
	call8	sodium_memzero
.LVL55:
.L35:
	.loc 1 130 0
	l32i	a2, sp, 120
	retw.n
.LFE14:
	.size	crypto_secretbox_open_detached, .-crypto_secretbox_open_detached
	.section	.text.crypto_secretbox_open_easy,"ax",@progbits
	.literal_position
	.align	4
	.global	crypto_secretbox_open_easy
	.type	crypto_secretbox_open_easy, @function
crypto_secretbox_open_easy:
.LFB15:
	.loc 1 136 0
.LVL56:
	entry	sp, 48
.LCFI3:
	.loc 1 137 0
	bnez.n	a5, .L67
	bnez.n	a5, .L66
	movi.n	a8, 0xf
	bgeu	a8, a4, .L66
.L67:
	.loc 1 140 0
	addi	a14, a4, -16
	movi.n	a15, 1
	bltu	a14, a4, .L65
	movi.n	a15, 0
.L65:
	addi.n	a5, a5, -1
	add.n	a15, a15, a5
	mov.n	a5, a15
	s32i.n	a7, sp, 4
	s32i.n	a6, sp, 0
	mov.n	a12, a3
	addi	a11, a3, 16
	mov.n	a10, a2
	call8	crypto_secretbox_open_detached
.LVL57:
	mov.n	a2, a10
.LVL58:
	retw.n
.LVL59:
.L66:
	.loc 1 138 0
	movi.n	a2, -1
.LVL60:
	.loc 1 143 0
	retw.n
.LFE15:
	.size	crypto_secretbox_open_easy, .-crypto_secretbox_open_easy
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
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI0-.LFB12
	.byte	0xe
	.uleb128 0x1b0
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI1-.LFB13
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI2-.LFB14
	.byte	0xe
	.uleb128 0xa0
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI3-.LFB15
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE6:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_onetimeauth_poly1305.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_core_hsalsa20.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_stream_salsa20.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x5ec
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0xc
	.4byte	.LASF35
	.4byte	.LASF36
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x2
	.byte	0x32
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x5
	.byte	0x4
	.4byte	0x48
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0xaa
	.4byte	0x5d
	.uleb128 0x6
	.4byte	.LASF13
	.2byte	0x100
	.byte	0x4
	.byte	0x13
	.4byte	0xaf
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0x4
	.byte	0x14
	.4byte	0xaf
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x48
	.4byte	0xbf
	.uleb128 0x9
	.4byte	0x6f
	.byte	0xff
	.byte	0
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x4
	.byte	0x15
	.4byte	0x95
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x1
	.byte	0x10
	.4byte	0x3a
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2a3
	.uleb128 0xb
	.string	"c"
	.byte	0x1
	.byte	0x10
	.4byte	0x7d
	.4byte	.LLST0
	.uleb128 0xb
	.string	"mac"
	.byte	0x1
	.byte	0x10
	.4byte	0x7d
	.4byte	.LLST1
	.uleb128 0xb
	.string	"m"
	.byte	0x1
	.byte	0x11
	.4byte	0x2a3
	.4byte	.LLST2
	.uleb128 0xc
	.4byte	.LASF14
	.byte	0x1
	.byte	0x12
	.4byte	0x25
	.4byte	.LLST3
	.uleb128 0xd
	.string	"n"
	.byte	0x1
	.byte	0x12
	.4byte	0x2a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xd
	.string	"k"
	.byte	0x1
	.byte	0x13
	.4byte	0x2a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xe
	.4byte	.LASF15
	.byte	0x1
	.byte	0x15
	.4byte	0xbf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0xe
	.4byte	.LASF16
	.byte	0x1
	.byte	0x16
	.4byte	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0xe
	.4byte	.LASF17
	.byte	0x1
	.byte	0x17
	.4byte	0x2be
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0x18
	.4byte	0x25
	.4byte	.LLST4
	.uleb128 0x10
	.4byte	.LASF18
	.byte	0x1
	.byte	0x19
	.4byte	0x25
	.4byte	.LLST5
	.uleb128 0x11
	.4byte	.LVL3
	.4byte	0x581
	.4byte	0x1a4
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 320
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x11
	.4byte	.LVL4
	.4byte	0x58c
	.4byte	0x1c5
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0
	.uleb128 0x11
	.4byte	.LVL12
	.4byte	0x597
	.4byte	0x1e6
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0
	.uleb128 0x11
	.4byte	.LVL13
	.4byte	0x5a2
	.4byte	0x201
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x77
	.sleb128 -256
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL18
	.4byte	0x5ad
	.4byte	0x21c
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x11
	.4byte	.LVL21
	.4byte	0x5b8
	.4byte	0x238
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.uleb128 0x12
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL22
	.4byte	0x5ad
	.4byte	0x253
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.4byte	.LVL23
	.4byte	0x5c3
	.4byte	0x26e
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL24
	.4byte	0x5ce
	.4byte	0x28a
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0
	.uleb128 0x13
	.4byte	.LVL25
	.4byte	0x5ad
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2a9
	.uleb128 0x14
	.4byte	0x48
	.uleb128 0x8
	.4byte	0x48
	.4byte	0x2be
	.uleb128 0x9
	.4byte	0x6f
	.byte	0x3f
	.byte	0
	.uleb128 0x8
	.4byte	0x48
	.4byte	0x2ce
	.uleb128 0x9
	.4byte	0x6f
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x1
	.byte	0x46
	.4byte	0x3a
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x352
	.uleb128 0xb
	.string	"c"
	.byte	0x1
	.byte	0x46
	.4byte	0x7d
	.4byte	.LLST6
	.uleb128 0xd
	.string	"m"
	.byte	0x1
	.byte	0x46
	.4byte	0x2a3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x15
	.4byte	.LASF14
	.byte	0x1
	.byte	0x47
	.4byte	0x25
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xd
	.string	"n"
	.byte	0x1
	.byte	0x47
	.4byte	0x2a3
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xd
	.string	"k"
	.byte	0x1
	.byte	0x48
	.4byte	0x2a3
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x13
	.4byte	.LVL28
	.4byte	0xca
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 16
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x1
	.byte	0x52
	.4byte	0x3a
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4fd
	.uleb128 0xb
	.string	"m"
	.byte	0x1
	.byte	0x52
	.4byte	0x7d
	.4byte	.LLST7
	.uleb128 0xb
	.string	"c"
	.byte	0x1
	.byte	0x52
	.4byte	0x2a3
	.4byte	.LLST8
	.uleb128 0xb
	.string	"mac"
	.byte	0x1
	.byte	0x53
	.4byte	0x2a3
	.4byte	.LLST9
	.uleb128 0x15
	.4byte	.LASF22
	.byte	0x1
	.byte	0x54
	.4byte	0x25
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xd
	.string	"n"
	.byte	0x1
	.byte	0x55
	.4byte	0x2a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xd
	.string	"k"
	.byte	0x1
	.byte	0x56
	.4byte	0x2a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xe
	.4byte	.LASF16
	.byte	0x1
	.byte	0x58
	.4byte	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0xe
	.4byte	.LASF17
	.byte	0x1
	.byte	0x59
	.4byte	0x2be
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0x5a
	.4byte	0x25
	.4byte	.LLST10
	.uleb128 0x10
	.4byte	.LASF18
	.byte	0x1
	.byte	0x5b
	.4byte	0x25
	.4byte	.LLST11
	.uleb128 0x11
	.4byte	.LVL33
	.4byte	0x581
	.4byte	0x420
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x11
	.4byte	.LVL34
	.4byte	0x5d9
	.4byte	0x442
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x11
	.4byte	.LVL35
	.4byte	0x5e4
	.4byte	0x463
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.uleb128 0x11
	.4byte	.LVL36
	.4byte	0x5ad
	.4byte	0x47e
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.4byte	.LVL40
	.4byte	0x58c
	.4byte	0x49e
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL47
	.4byte	0x597
	.4byte	0x4c8
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x11
	.4byte	.LVL54
	.4byte	0x5b8
	.4byte	0x4e5
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x12
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x13
	.4byte	.LVL55
	.4byte	0x5ad
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x1
	.byte	0x85
	.4byte	0x3a
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x581
	.uleb128 0xb
	.string	"m"
	.byte	0x1
	.byte	0x85
	.4byte	0x7d
	.4byte	.LLST12
	.uleb128 0xd
	.string	"c"
	.byte	0x1
	.byte	0x85
	.4byte	0x2a3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x15
	.4byte	.LASF22
	.byte	0x1
	.byte	0x86
	.4byte	0x25
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xd
	.string	"n"
	.byte	0x1
	.byte	0x86
	.4byte	0x2a3
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xd
	.string	"k"
	.byte	0x1
	.byte	0x87
	.4byte	0x2a3
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x13
	.4byte	.LVL57
	.4byte	0x352
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 16
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF24
	.4byte	.LASF24
	.byte	0x5
	.byte	0x1c
	.uleb128 0x16
	.4byte	.LASF25
	.4byte	.LASF25
	.byte	0x6
	.byte	0x18
	.uleb128 0x16
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x7
	.byte	0x24
	.uleb128 0x16
	.4byte	.LASF27
	.4byte	.LASF27
	.byte	0x4
	.byte	0x30
	.uleb128 0x16
	.4byte	.LASF28
	.4byte	.LASF28
	.byte	0x8
	.byte	0x16
	.uleb128 0x16
	.4byte	.LASF29
	.4byte	.LASF29
	.byte	0x7
	.byte	0x29
	.uleb128 0x16
	.4byte	.LASF30
	.4byte	.LASF30
	.byte	0x4
	.byte	0x34
	.uleb128 0x16
	.4byte	.LASF31
	.4byte	.LASF31
	.byte	0x4
	.byte	0x39
	.uleb128 0x16
	.4byte	.LASF32
	.4byte	.LASF32
	.byte	0x7
	.byte	0x20
	.uleb128 0x16
	.4byte	.LASF33
	.4byte	.LASF33
	.byte	0x4
	.byte	0x29
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL2
	.4byte	.LFE12
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL1
	.4byte	.LFE12
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x6
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x6
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x7
	.byte	0x91
	.sleb128 -48
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL7
	.4byte	.LVL19
	.2byte	0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL32
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL55
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL32
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL41
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL32
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL39
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x7
	.byte	0x91
	.sleb128 -36
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL42
	.4byte	.LVL52
	.2byte	0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60
	.4byte	.LFE15
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
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF25:
	.string	"memmove"
.LASF22:
	.string	"clen"
.LASF15:
	.string	"state"
.LASF12:
	.string	"uintptr_t"
.LASF14:
	.string	"mlen"
.LASF20:
	.string	"crypto_secretbox_easy"
.LASF16:
	.string	"block0"
.LASF30:
	.string	"crypto_onetimeauth_poly1305_update"
.LASF27:
	.string	"crypto_onetimeauth_poly1305_init"
.LASF34:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF4:
	.string	"unsigned char"
.LASF33:
	.string	"crypto_onetimeauth_poly1305_verify"
.LASF9:
	.string	"long unsigned int"
.LASF2:
	.string	"short unsigned int"
.LASF29:
	.string	"crypto_stream_salsa20_xor_ic"
.LASF13:
	.string	"crypto_onetimeauth_poly1305_state"
.LASF21:
	.string	"crypto_secretbox_open_detached"
.LASF31:
	.string	"crypto_onetimeauth_poly1305_final"
.LASF17:
	.string	"subkey"
.LASF23:
	.string	"crypto_secretbox_open_easy"
.LASF1:
	.string	"unsigned int"
.LASF11:
	.string	"__uintptr_t"
.LASF24:
	.string	"crypto_core_hsalsa20"
.LASF0:
	.string	"long long unsigned int"
.LASF35:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_secretbox/crypto_secretbox_easy.c"
.LASF8:
	.string	"sizetype"
.LASF6:
	.string	"long long int"
.LASF10:
	.string	"char"
.LASF26:
	.string	"crypto_stream_salsa20_xor"
.LASF37:
	.string	"opaque"
.LASF32:
	.string	"crypto_stream_salsa20"
.LASF5:
	.string	"short int"
.LASF36:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\libsodium"
.LASF18:
	.string	"mlen0"
.LASF19:
	.string	"crypto_secretbox_detached"
.LASF7:
	.string	"long int"
.LASF3:
	.string	"signed char"
.LASF28:
	.string	"sodium_memzero"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
