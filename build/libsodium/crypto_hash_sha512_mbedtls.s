	.file	"crypto_hash_sha512_mbedtls.c"
	.text
.Ltext0:
	.section	.text.sha512_mbedtls_to_libsodium,"ax",@progbits
	.align	4
	.type	sha512_mbedtls_to_libsodium, @function
sha512_mbedtls_to_libsodium:
.LFB0:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/port/crypto_hash_mbedtls/crypto_hash_sha512_mbedtls.c"
	.loc 1 51 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 52 0
	movi.n	a12, 0x10
	mov.n	a11, a3
	addi	a10, a2, 64
	call8	memcpy
.LVL1:
	.loc 1 53 0
	movi.n	a12, 0x40
	addi	a11, a3, 16
	mov.n	a10, a2
	call8	memcpy
.LVL2:
	.loc 1 54 0
	movi	a12, 0x80
	addi	a11, a3, 80
	addi	a10, a2, 80
	call8	memcpy
.LVL3:
	retw.n
.LFE0:
	.size	sha512_mbedtls_to_libsodium, .-sha512_mbedtls_to_libsodium
	.section	.text.sha512_libsodium_to_mbedtls,"ax",@progbits
	.align	4
	.type	sha512_libsodium_to_mbedtls, @function
sha512_libsodium_to_mbedtls:
.LFB1:
	.loc 1 58 0
.LVL4:
	entry	sp, 32
.LCFI1:
	.loc 1 59 0
	movi.n	a12, 0x10
	addi	a11, a3, 64
	mov.n	a10, a2
	call8	memcpy
.LVL5:
	.loc 1 60 0
	movi.n	a12, 0x40
	mov.n	a11, a3
	addi	a10, a2, 16
	call8	memcpy
.LVL6:
	.loc 1 61 0
	movi	a12, 0x80
	addi	a11, a3, 80
	addi	a10, a2, 80
	call8	memcpy
.LVL7:
	.loc 1 62 0
	movi.n	a3, 0
.LVL8:
	s32i	a3, a2, 208
	retw.n
.LFE1:
	.size	sha512_libsodium_to_mbedtls, .-sha512_libsodium_to_mbedtls
	.section	.text.crypto_hash_sha512_init,"ax",@progbits
	.align	4
	.global	crypto_hash_sha512_init
	.type	crypto_hash_sha512_init, @function
crypto_hash_sha512_init:
.LFB2:
	.loc 1 67 0
.LVL9:
	entry	sp, 256
.LCFI2:
	.loc 1 69 0
	mov.n	a10, sp
	call8	mbedtls_sha512_init
.LVL10:
	.loc 1 70 0
	movi.n	a11, 0
	mov.n	a10, sp
	call8	mbedtls_sha512_starts_ret
.LVL11:
	.loc 1 71 0
	bnez.n	a10, .L5
	.loc 1 74 0
	mov.n	a11, sp
	mov.n	a10, a2
.LVL12:
	call8	sha512_mbedtls_to_libsodium
.LVL13:
	.loc 1 75 0
	movi.n	a2, 0
.LVL14:
	retw.n
.LVL15:
.L5:
	.loc 1 72 0
	mov.n	a2, a10
.LVL16:
	.loc 1 76 0
	retw.n
.LFE2:
	.size	crypto_hash_sha512_init, .-crypto_hash_sha512_init
	.section	.text.crypto_hash_sha512_update,"ax",@progbits
	.align	4
	.global	crypto_hash_sha512_update
	.type	crypto_hash_sha512_update, @function
crypto_hash_sha512_update:
.LFB3:
	.loc 1 81 0
.LVL17:
	entry	sp, 256
.LCFI3:
	.loc 1 83 0
	mov.n	a11, a2
	mov.n	a10, sp
	call8	sha512_libsodium_to_mbedtls
.LVL18:
	.loc 1 84 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, sp
	call8	mbedtls_sha512_update_ret
.LVL19:
	.loc 1 85 0
	bnez.n	a10, .L8
	.loc 1 88 0
	mov.n	a11, sp
	mov.n	a10, a2
.LVL20:
	call8	sha512_mbedtls_to_libsodium
.LVL21:
	.loc 1 89 0
	movi.n	a2, 0
.LVL22:
	retw.n
.LVL23:
.L8:
	.loc 1 86 0
	mov.n	a2, a10
.LVL24:
	.loc 1 90 0
	retw.n
.LFE3:
	.size	crypto_hash_sha512_update, .-crypto_hash_sha512_update
	.section	.text.crypto_hash_sha512_final,"ax",@progbits
	.align	4
	.global	crypto_hash_sha512_final
	.type	crypto_hash_sha512_final, @function
crypto_hash_sha512_final:
.LFB4:
	.loc 1 94 0
.LVL25:
	entry	sp, 256
.LCFI4:
	.loc 1 96 0
	mov.n	a11, a2
	mov.n	a10, sp
	call8	sha512_libsodium_to_mbedtls
.LVL26:
	.loc 1 97 0
	mov.n	a11, a3
	mov.n	a10, sp
	call8	mbedtls_sha512_finish_ret
.LVL27:
	.loc 1 98 0
	mov.n	a2, a10
.LVL28:
	retw.n
.LFE4:
	.size	crypto_hash_sha512_final, .-crypto_hash_sha512_final
	.section	.text.crypto_hash_sha512,"ax",@progbits
	.align	4
	.global	crypto_hash_sha512
	.type	crypto_hash_sha512, @function
crypto_hash_sha512:
.LFB5:
	.loc 1 103 0
.LVL29:
	entry	sp, 32
.LCFI5:
	.loc 1 104 0
	movi.n	a13, 0
	mov.n	a12, a2
	mov.n	a11, a4
	mov.n	a10, a3
	call8	mbedtls_sha512_ret
.LVL30:
	.loc 1 105 0
	mov.n	a2, a10
.LVL31:
	retw.n
.LFE5:
	.size	crypto_hash_sha512, .-crypto_hash_sha512
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI1-.LFB1
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI2-.LFB2
	.byte	0xe
	.uleb128 0x100
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI3-.LFB3
	.byte	0xe
	.uleb128 0x100
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI4-.LFB4
	.byte	0xe
	.uleb128 0x100
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI5-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_hash_sha512.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/sha512.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x508
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0xc
	.4byte	.LASF37
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x12
	.4byte	0x48
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x1e
	.4byte	0x68
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x3
	.byte	0x15
	.4byte	0x3d
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x3
	.byte	0x39
	.4byte	0x5d
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.4byte	0x48
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0xd0
	.byte	0x4
	.byte	0x18
	.4byte	0xd8
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x4
	.byte	0x19
	.4byte	0xd8
	.byte	0
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x4
	.byte	0x1a
	.4byte	0xe8
	.byte	0x40
	.uleb128 0x8
	.string	"buf"
	.byte	0x4
	.byte	0x1b
	.4byte	0xf8
	.byte	0x50
	.byte	0
	.uleb128 0x9
	.4byte	0x7a
	.4byte	0xe8
	.uleb128 0xa
	.4byte	0x8c
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.4byte	0x7a
	.4byte	0xf8
	.uleb128 0xa
	.4byte	0x8c
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.4byte	0x6f
	.4byte	0x108
	.uleb128 0xa
	.4byte	0x8c
	.byte	0x7f
	.byte	0
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x4
	.byte	0x1c
	.4byte	0xa7
	.uleb128 0xb
	.byte	0xd8
	.byte	0x5
	.byte	0x37
	.4byte	0x14c
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x5
	.byte	0x39
	.4byte	0xe8
	.byte	0
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x5
	.byte	0x3a
	.4byte	0xd8
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x5
	.byte	0x3b
	.4byte	0x14c
	.byte	0x50
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x5
	.byte	0x3c
	.4byte	0x21
	.byte	0xd0
	.byte	0
	.uleb128 0x9
	.4byte	0x48
	.4byte	0x15c
	.uleb128 0xa
	.4byte	0x8c
	.byte	0x7f
	.byte	0
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x5
	.byte	0x3f
	.4byte	0x113
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x1
	.byte	0x32
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f5
	.uleb128 0xd
	.4byte	.LASF22
	.byte	0x1
	.byte	0x32
	.4byte	0x1f5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xd
	.4byte	.LASF23
	.byte	0x1
	.byte	0x32
	.4byte	0x1fb
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.4byte	.LVL1
	.4byte	0x4cb
	.4byte	0x1b6
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x72
	.sleb128 64
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0xe
	.4byte	.LVL2
	.4byte	0x4cb
	.4byte	0x1d6
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 16
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x10
	.4byte	.LVL3
	.4byte	0x4cb
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x72
	.sleb128 80
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x73
	.sleb128 80
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x108
	.uleb128 0x5
	.byte	0x4
	.4byte	0x201
	.uleb128 0x11
	.4byte	0x15c
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x1
	.byte	0x39
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x296
	.uleb128 0xd
	.4byte	.LASF23
	.byte	0x1
	.byte	0x39
	.4byte	0x296
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.byte	0x39
	.4byte	0x1f5
	.4byte	.LLST0
	.uleb128 0xe
	.4byte	.LVL5
	.4byte	0x4cb
	.4byte	0x257
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x73
	.sleb128 64
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0xe
	.4byte	.LVL6
	.4byte	0x4cb
	.4byte	0x277
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 16
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x10
	.4byte	.LVL7
	.4byte	0x4cb
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x72
	.sleb128 80
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x73
	.sleb128 80
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x15c
	.uleb128 0x13
	.4byte	.LASF26
	.byte	0x1
	.byte	0x42
	.4byte	0x21
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x329
	.uleb128 0x12
	.4byte	.LASF15
	.byte	0x1
	.byte	0x42
	.4byte	0x1f5
	.4byte	.LLST1
	.uleb128 0x14
	.string	"ctx"
	.byte	0x1
	.byte	0x44
	.4byte	0x15c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x15
	.string	"ret"
	.byte	0x1
	.byte	0x46
	.4byte	0x21
	.4byte	.LLST2
	.uleb128 0xe
	.4byte	.LVL10
	.4byte	0x4d4
	.4byte	0x2f7
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.byte	0
	.uleb128 0xe
	.4byte	.LVL11
	.4byte	0x4df
	.4byte	0x311
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x10
	.4byte	.LVL13
	.4byte	0x167
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF27
	.byte	0x1
	.byte	0x4f
	.4byte	0x21
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3e1
	.uleb128 0x12
	.4byte	.LASF15
	.byte	0x1
	.byte	0x4f
	.4byte	0x1f5
	.4byte	.LLST3
	.uleb128 0x16
	.string	"in"
	.byte	0x1
	.byte	0x50
	.4byte	0x3e1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x1
	.byte	0x50
	.4byte	0x68
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x14
	.string	"ctx"
	.byte	0x1
	.byte	0x52
	.4byte	0x15c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x15
	.string	"ret"
	.byte	0x1
	.byte	0x54
	.4byte	0x21
	.4byte	.LLST4
	.uleb128 0xe
	.4byte	.LVL18
	.4byte	0x206
	.4byte	0x3a8
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.4byte	.LVL19
	.4byte	0x4ea
	.4byte	0x3c9
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL21
	.4byte	0x167
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3e7
	.uleb128 0x11
	.4byte	0x48
	.uleb128 0x13
	.4byte	.LASF29
	.byte	0x1
	.byte	0x5d
	.4byte	0x21
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x463
	.uleb128 0x12
	.4byte	.LASF15
	.byte	0x1
	.byte	0x5d
	.4byte	0x1f5
	.4byte	.LLST5
	.uleb128 0x16
	.string	"out"
	.byte	0x1
	.byte	0x5d
	.4byte	0x9a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x14
	.string	"ctx"
	.byte	0x1
	.byte	0x5f
	.4byte	0x15c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0xe
	.4byte	.LVL26
	.4byte	0x206
	.4byte	0x44b
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL27
	.4byte	0x4f5
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF30
	.byte	0x1
	.byte	0x65
	.4byte	0x21
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4cb
	.uleb128 0x17
	.string	"out"
	.byte	0x1
	.byte	0x65
	.4byte	0x9a
	.4byte	.LLST6
	.uleb128 0x16
	.string	"in"
	.byte	0x1
	.byte	0x65
	.4byte	0x3e1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x1
	.byte	0x66
	.4byte	0x68
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LVL30
	.4byte	0x500
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF38
	.4byte	.LASF38
	.uleb128 0x19
	.4byte	.LASF31
	.4byte	.LASF31
	.byte	0x5
	.byte	0x4a
	.uleb128 0x19
	.4byte	.LASF32
	.4byte	.LASF32
	.byte	0x5
	.byte	0x66
	.uleb128 0x19
	.4byte	.LASF33
	.4byte	.LASF33
	.byte	0x5
	.byte	0x72
	.uleb128 0x19
	.4byte	.LASF34
	.4byte	.LASF34
	.byte	0x5
	.byte	0x80
	.uleb128 0x19
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x5
	.byte	0xde
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
	.uleb128 0x8
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
	.uleb128 0xe
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
	.uleb128 0xb
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
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.4byte	.LVL4
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL8
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL9
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL17
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL25
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x44
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF14:
	.string	"char"
.LASF6:
	.string	"__uint8_t"
.LASF31:
	.string	"mbedtls_sha512_init"
.LASF15:
	.string	"state"
.LASF19:
	.string	"buffer"
.LASF26:
	.string	"crypto_hash_sha512_init"
.LASF16:
	.string	"count"
.LASF23:
	.string	"mb_ctx"
.LASF0:
	.string	"unsigned int"
.LASF10:
	.string	"uint64_t"
.LASF25:
	.string	"sha512_libsodium_to_mbedtls"
.LASF36:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF35:
	.string	"mbedtls_sha512_ret"
.LASF24:
	.string	"sha512_mbedtls_to_libsodium"
.LASF33:
	.string	"mbedtls_sha512_update_ret"
.LASF3:
	.string	"unsigned char"
.LASF13:
	.string	"long unsigned int"
.LASF1:
	.string	"short unsigned int"
.LASF28:
	.string	"inlen"
.LASF32:
	.string	"mbedtls_sha512_starts_ret"
.LASF17:
	.string	"crypto_hash_sha512_state"
.LASF20:
	.string	"is384"
.LASF29:
	.string	"crypto_hash_sha512_final"
.LASF8:
	.string	"long long unsigned int"
.LASF9:
	.string	"uint8_t"
.LASF22:
	.string	"ls_state"
.LASF12:
	.string	"sizetype"
.LASF5:
	.string	"long long int"
.LASF38:
	.string	"memcpy"
.LASF30:
	.string	"crypto_hash_sha512"
.LASF27:
	.string	"crypto_hash_sha512_update"
.LASF4:
	.string	"short int"
.LASF7:
	.string	"__uint64_t"
.LASF37:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/port/crypto_hash_mbedtls/crypto_hash_sha512_mbedtls.c"
.LASF34:
	.string	"mbedtls_sha512_finish_ret"
.LASF18:
	.string	"total"
.LASF11:
	.string	"long int"
.LASF21:
	.string	"mbedtls_sha512_context"
.LASF2:
	.string	"signed char"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
