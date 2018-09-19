	.file	"auth_hmacsha256.c"
	.text
.Ltext0:
	.section	.text.crypto_auth_hmacsha256_bytes,"ax",@progbits
	.align	4
	.global	crypto_auth_hmacsha256_bytes
	.type	crypto_auth_hmacsha256_bytes, @function
crypto_auth_hmacsha256_bytes:
.LFB0:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_auth/hmacsha256/auth_hmacsha256.c"
	.loc 1 14 0
	entry	sp, 32
.LCFI0:
	.loc 1 16 0
	movi.n	a2, 0x20
	retw.n
.LFE0:
	.size	crypto_auth_hmacsha256_bytes, .-crypto_auth_hmacsha256_bytes
	.section	.text.crypto_auth_hmacsha256_keybytes,"ax",@progbits
	.align	4
	.global	crypto_auth_hmacsha256_keybytes
	.type	crypto_auth_hmacsha256_keybytes, @function
crypto_auth_hmacsha256_keybytes:
.LFB1:
	.loc 1 20 0
	entry	sp, 32
.LCFI1:
	.loc 1 22 0
	movi.n	a2, 0x20
	retw.n
.LFE1:
	.size	crypto_auth_hmacsha256_keybytes, .-crypto_auth_hmacsha256_keybytes
	.section	.text.crypto_auth_hmacsha256_statebytes,"ax",@progbits
	.align	4
	.global	crypto_auth_hmacsha256_statebytes
	.type	crypto_auth_hmacsha256_statebytes, @function
crypto_auth_hmacsha256_statebytes:
.LFB2:
	.loc 1 26 0
	entry	sp, 32
.LCFI2:
	.loc 1 28 0
	movi	a2, 0xd0
	retw.n
.LFE2:
	.size	crypto_auth_hmacsha256_statebytes, .-crypto_auth_hmacsha256_statebytes
	.section	.text.crypto_auth_hmacsha256_keygen,"ax",@progbits
	.align	4
	.global	crypto_auth_hmacsha256_keygen
	.type	crypto_auth_hmacsha256_keygen, @function
crypto_auth_hmacsha256_keygen:
.LFB3:
	.loc 1 32 0
.LVL0:
	entry	sp, 32
.LCFI3:
	.loc 1 33 0
	movi.n	a11, 0x20
	mov.n	a10, a2
	call8	randombytes_buf
.LVL1:
	retw.n
.LFE3:
	.size	crypto_auth_hmacsha256_keygen, .-crypto_auth_hmacsha256_keygen
	.section	.text.crypto_auth_hmacsha256_init,"ax",@progbits
	.literal_position
	.literal .LC0, 64, 0
	.align	4
	.global	crypto_auth_hmacsha256_init
	.type	crypto_auth_hmacsha256_init, @function
crypto_auth_hmacsha256_init:
.LFB4:
	.loc 1 39 0
.LVL2:
	entry	sp, 128
.LCFI4:
	.loc 1 44 0
	movi.n	a8, 0x40
	bgeu	a8, a4, .L6
	.loc 1 45 0
	mov.n	a10, a2
	call8	crypto_hash_sha256_init
.LVL3:
	.loc 1 46 0
	mov.n	a12, a4
	movi.n	a13, 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_hash_sha256_update
.LVL4:
	.loc 1 47 0
	addi	a11, sp, 64
	mov.n	a10, a2
	call8	crypto_hash_sha256_final
.LVL5:
	.loc 1 49 0
	movi.n	a4, 0x20
	.loc 1 48 0
	addi	a3, sp, 64
.LVL6:
.L6:
	.loc 1 51 0
	mov.n	a10, a2
	call8	crypto_hash_sha256_init
.LVL7:
	.loc 1 52 0
	movi.n	a12, 0x40
	movi.n	a11, 0x36
	mov.n	a10, sp
	call8	memset
.LVL8:
	.loc 1 53 0
	movi.n	a8, 0
	j	.L7
.LVL9:
.L8:
	.loc 1 54 0 discriminator 3
	add.n	a9, a3, a8
	l8ui	a11, a9, 0
	add.n	a10, sp, a8
	l8ui	a9, a10, 0
	xor	a9, a11, a9
	s8i	a9, a10, 0
	.loc 1 53 0 discriminator 3
	addi.n	a8, a8, 1
.LVL10:
.L7:
	.loc 1 53 0 is_stmt 0 discriminator 1
	bltu	a8, a4, .L8
	.loc 1 56 0 is_stmt 1
	l32r	a12, .LC0
	l32r	a13, .LC0+4
	mov.n	a11, sp
	mov.n	a10, a2
	call8	crypto_hash_sha256_update
.LVL11:
	.loc 1 58 0
	addi	a2, a2, 104
.LVL12:
	mov.n	a10, a2
	call8	crypto_hash_sha256_init
.LVL13:
	.loc 1 59 0
	movi.n	a12, 0x40
	movi.n	a11, 0x5c
	mov.n	a10, sp
	call8	memset
.LVL14:
	.loc 1 60 0
	movi.n	a8, 0
	j	.L9
.LVL15:
.L10:
	.loc 1 61 0 discriminator 3
	add.n	a9, a3, a8
	l8ui	a11, a9, 0
	add.n	a10, sp, a8
	l8ui	a9, a10, 0
	xor	a9, a11, a9
	s8i	a9, a10, 0
	.loc 1 60 0 discriminator 3
	addi.n	a8, a8, 1
.LVL16:
.L9:
	.loc 1 60 0 is_stmt 0 discriminator 1
	bltu	a8, a4, .L10
	.loc 1 63 0 is_stmt 1
	l32r	a12, .LC0
	l32r	a13, .LC0+4
	mov.n	a11, sp
	mov.n	a10, a2
	call8	crypto_hash_sha256_update
.LVL17:
	.loc 1 65 0
	movi.n	a11, 0x40
	mov.n	a10, sp
	call8	sodium_memzero
.LVL18:
	.loc 1 66 0
	movi.n	a11, 0x20
	addi	a10, sp, 64
	call8	sodium_memzero
.LVL19:
	.loc 1 69 0
	movi.n	a2, 0
.LVL20:
	retw.n
.LFE4:
	.size	crypto_auth_hmacsha256_init, .-crypto_auth_hmacsha256_init
	.section	.text.crypto_auth_hmacsha256_update,"ax",@progbits
	.align	4
	.global	crypto_auth_hmacsha256_update
	.type	crypto_auth_hmacsha256_update, @function
crypto_auth_hmacsha256_update:
.LFB5:
	.loc 1 74 0
.LVL21:
	entry	sp, 32
.LCFI5:
	.loc 1 75 0
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_hash_sha256_update
.LVL22:
	.loc 1 78 0
	movi.n	a2, 0
.LVL23:
	retw.n
.LFE5:
	.size	crypto_auth_hmacsha256_update, .-crypto_auth_hmacsha256_update
	.section	.text.crypto_auth_hmacsha256_final,"ax",@progbits
	.literal_position
	.literal .LC1, 32, 0
	.align	4
	.global	crypto_auth_hmacsha256_final
	.type	crypto_auth_hmacsha256_final, @function
crypto_auth_hmacsha256_final:
.LFB6:
	.loc 1 83 0
.LVL24:
	entry	sp, 64
.LCFI6:
	.loc 1 86 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	crypto_hash_sha256_final
.LVL25:
	.loc 1 87 0
	addi	a2, a2, 104
.LVL26:
	l32r	a12, .LC1
	l32r	a13, .LC1+4
	mov.n	a11, sp
	mov.n	a10, a2
	call8	crypto_hash_sha256_update
.LVL27:
	.loc 1 88 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_hash_sha256_final
.LVL28:
	.loc 1 90 0
	movi.n	a11, 0x20
	mov.n	a10, sp
	call8	sodium_memzero
.LVL29:
	.loc 1 93 0
	movi.n	a2, 0
.LVL30:
	retw.n
.LFE6:
	.size	crypto_auth_hmacsha256_final, .-crypto_auth_hmacsha256_final
	.section	.text.crypto_auth_hmacsha256,"ax",@progbits
	.align	4
	.global	crypto_auth_hmacsha256
	.type	crypto_auth_hmacsha256, @function
crypto_auth_hmacsha256:
.LFB7:
	.loc 1 98 0
.LVL31:
	entry	sp, 240
.LCFI7:
	.loc 1 101 0
	movi.n	a12, 0x20
	mov.n	a11, a6
	mov.n	a10, sp
	call8	crypto_auth_hmacsha256_init
.LVL32:
	.loc 1 102 0
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, sp
	call8	crypto_auth_hmacsha256_update
.LVL33:
	.loc 1 103 0
	mov.n	a11, a2
	mov.n	a10, sp
	call8	crypto_auth_hmacsha256_final
.LVL34:
	.loc 1 106 0
	movi.n	a2, 0
.LVL35:
	retw.n
.LFE7:
	.size	crypto_auth_hmacsha256, .-crypto_auth_hmacsha256
	.section	.text.crypto_auth_hmacsha256_verify,"ax",@progbits
	.align	4
	.global	crypto_auth_hmacsha256_verify
	.type	crypto_auth_hmacsha256_verify, @function
crypto_auth_hmacsha256_verify:
.LFB8:
	.loc 1 111 0
.LVL36:
	entry	sp, 64
.LCFI8:
	.loc 1 114 0
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, sp
	call8	crypto_auth_hmacsha256
.LVL37:
	.loc 1 116 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	crypto_verify_32
.LVL38:
	mov.n	a3, a10
.LVL39:
	.loc 1 117 0
	movi.n	a12, 0x20
	mov.n	a11, a2
	mov.n	a10, sp
	call8	sodium_memcmp
.LVL40:
	.loc 1 118 0
	or	a2, a3, a10
.LVL41:
	retw.n
.LFE8:
	.size	crypto_auth_hmacsha256_verify, .-crypto_auth_hmacsha256_verify
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
	.uleb128 0x20
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
	.uleb128 0x20
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
	.uleb128 0x80
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
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI6-.LFB6
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI7-.LFB7
	.byte	0xe
	.uleb128 0xf0
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI8-.LFB8
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE16:
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_hash_sha256.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_auth_hmacsha256.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/randombytes.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_verify_32.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x649
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0xc
	.4byte	.LASF46
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0xd8
	.4byte	0x33
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x3
	.byte	0x12
	.4byte	0x53
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x3
	.byte	0x1a
	.4byte	0x33
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0x1e
	.4byte	0x7e
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0x15
	.4byte	0x48
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x2d
	.4byte	0x61
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x39
	.4byte	0x73
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF14
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x5
	.byte	0x4
	.4byte	0x53
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x68
	.byte	0x5
	.byte	0x18
	.4byte	0xf9
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x5
	.byte	0x19
	.4byte	0xf9
	.byte	0
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x5
	.byte	0x1a
	.4byte	0x9b
	.byte	0x20
	.uleb128 0x8
	.string	"buf"
	.byte	0x5
	.byte	0x1b
	.4byte	0x109
	.byte	0x28
	.byte	0
	.uleb128 0x9
	.4byte	0x90
	.4byte	0x109
	.uleb128 0xa
	.4byte	0xad
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.4byte	0x85
	.4byte	0x119
	.uleb128 0xa
	.4byte	0xad
	.byte	0x3f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x5
	.byte	0x1c
	.4byte	0xc8
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0xd0
	.byte	0x6
	.byte	0x26
	.4byte	0x149
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x6
	.byte	0x27
	.4byte	0x119
	.byte	0
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x6
	.byte	0x28
	.4byte	0x119
	.byte	0x68
	.byte	0
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x6
	.byte	0x29
	.4byte	0x124
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x1
	.byte	0xd
	.4byte	0x28
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x1
	.byte	0x13
	.4byte	0x28
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x1
	.byte	0x19
	.4byte	0x28
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x1
	.byte	0x1f
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ca
	.uleb128 0xd
	.string	"k"
	.byte	0x1
	.byte	0x1f
	.4byte	0xbb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xe
	.4byte	.LVL1
	.4byte	0x5f4
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
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF29
	.byte	0x1
	.byte	0x25
	.4byte	0x21
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x354
	.uleb128 0x11
	.4byte	.LASF18
	.byte	0x1
	.byte	0x25
	.4byte	0x354
	.4byte	.LLST0
	.uleb128 0x12
	.string	"key"
	.byte	0x1
	.byte	0x26
	.4byte	0x35a
	.4byte	.LLST1
	.uleb128 0x11
	.4byte	.LASF27
	.byte	0x1
	.byte	0x26
	.4byte	0x28
	.4byte	.LLST2
	.uleb128 0x13
	.string	"pad"
	.byte	0x1
	.byte	0x28
	.4byte	0x365
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x14
	.4byte	.LASF28
	.byte	0x1
	.byte	0x29
	.4byte	0x375
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0x2a
	.4byte	0x28
	.4byte	.LLST3
	.uleb128 0x16
	.4byte	.LVL3
	.4byte	0x5ff
	.4byte	0x24e
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL4
	.4byte	0x60a
	.4byte	0x268
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
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL5
	.4byte	0x615
	.4byte	0x282
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
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x16
	.4byte	.LVL7
	.4byte	0x5ff
	.4byte	0x296
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL8
	.4byte	0x620
	.4byte	0x2b7
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x36
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x16
	.4byte	.LVL11
	.4byte	0x60a
	.4byte	0x2d2
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
	.sleb128 -128
	.byte	0
	.uleb128 0x16
	.4byte	.LVL13
	.4byte	0x5ff
	.4byte	0x2e6
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL14
	.4byte	0x620
	.4byte	0x307
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x5c
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x16
	.4byte	.LVL17
	.4byte	0x60a
	.4byte	0x322
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
	.sleb128 -128
	.byte	0
	.uleb128 0x16
	.4byte	.LVL18
	.4byte	0x62b
	.4byte	0x33d
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0xe
	.4byte	.LVL19
	.4byte	0x62b
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x149
	.uleb128 0x5
	.byte	0x4
	.4byte	0x360
	.uleb128 0x17
	.4byte	0x53
	.uleb128 0x9
	.4byte	0x53
	.4byte	0x375
	.uleb128 0xa
	.4byte	0xad
	.byte	0x3f
	.byte	0
	.uleb128 0x9
	.4byte	0x53
	.4byte	0x385
	.uleb128 0xa
	.4byte	0xad
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.4byte	.LASF30
	.byte	0x1
	.byte	0x48
	.4byte	0x21
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3e2
	.uleb128 0x11
	.4byte	.LASF18
	.byte	0x1
	.byte	0x48
	.4byte	0x354
	.4byte	.LLST4
	.uleb128 0xd
	.string	"in"
	.byte	0x1
	.byte	0x49
	.4byte	0x35a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x18
	.4byte	.LASF31
	.byte	0x1
	.byte	0x49
	.4byte	0x7e
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xe
	.4byte	.LVL22
	.4byte	0x60a
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
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF32
	.byte	0x1
	.byte	0x51
	.4byte	0x21
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x48a
	.uleb128 0x11
	.4byte	.LASF18
	.byte	0x1
	.byte	0x51
	.4byte	0x354
	.4byte	.LLST5
	.uleb128 0xd
	.string	"out"
	.byte	0x1
	.byte	0x52
	.4byte	0xbb
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x14
	.4byte	.LASF33
	.byte	0x1
	.byte	0x54
	.4byte	0x375
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x16
	.4byte	.LVL25
	.4byte	0x615
	.4byte	0x43f
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
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x16
	.4byte	.LVL27
	.4byte	0x60a
	.4byte	0x459
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
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x16
	.4byte	.LVL28
	.4byte	0x615
	.4byte	0x473
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
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.4byte	.LVL29
	.4byte	0x62b
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF34
	.byte	0x1
	.byte	0x60
	.4byte	0x21
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x53e
	.uleb128 0x12
	.string	"out"
	.byte	0x1
	.byte	0x60
	.4byte	0xbb
	.4byte	.LLST6
	.uleb128 0xd
	.string	"in"
	.byte	0x1
	.byte	0x60
	.4byte	0x35a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x18
	.4byte	.LASF31
	.byte	0x1
	.byte	0x61
	.4byte	0x7e
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xd
	.string	"k"
	.byte	0x1
	.byte	0x61
	.4byte	0x35a
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x14
	.4byte	.LASF18
	.byte	0x1
	.byte	0x63
	.4byte	0x149
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x16
	.4byte	.LVL32
	.4byte	0x1ca
	.4byte	0x50b
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x16
	.4byte	.LVL33
	.4byte	0x385
	.4byte	0x526
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.4byte	.LVL34
	.4byte	0x3e2
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF35
	.byte	0x1
	.byte	0x6d
	.4byte	0x21
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5f4
	.uleb128 0x12
	.string	"h"
	.byte	0x1
	.byte	0x6d
	.4byte	0x35a
	.4byte	.LLST7
	.uleb128 0x12
	.string	"in"
	.byte	0x1
	.byte	0x6d
	.4byte	0x35a
	.4byte	.LLST8
	.uleb128 0x18
	.4byte	.LASF31
	.byte	0x1
	.byte	0x6e
	.4byte	0x7e
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xd
	.string	"k"
	.byte	0x1
	.byte	0x6e
	.4byte	0x35a
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x14
	.4byte	.LASF36
	.byte	0x1
	.byte	0x70
	.4byte	0x375
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x16
	.4byte	.LVL37
	.4byte	0x48a
	.4byte	0x5bd
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL38
	.4byte	0x636
	.4byte	0x5d7
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
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0xe
	.4byte	.LVL40
	.4byte	0x641
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x7
	.byte	0x21
	.uleb128 0x19
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x5
	.byte	0x2a
	.uleb128 0x19
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x5
	.byte	0x2d
	.uleb128 0x19
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x5
	.byte	0x32
	.uleb128 0x19
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x8
	.byte	0x19
	.uleb128 0x19
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x9
	.byte	0x16
	.uleb128 0x19
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0xa
	.byte	0x10
	.uleb128 0x19
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x9
	.byte	0x1f
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
	.uleb128 0xe
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
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x17
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.4byte	.LVL2
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LVL20
	.2byte	0x4
	.byte	0x72
	.sleb128 -104
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL17-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LVL30
	.2byte	0x4
	.byte	0x72
	.sleb128 -104
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL31
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL36
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL41
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL36
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL39
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x5c
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
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
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF47:
	.string	"crypto_auth_hmacsha256_keygen"
.LASF4:
	.string	"__uint8_t"
.LASF3:
	.string	"size_t"
.LASF18:
	.string	"state"
.LASF20:
	.string	"crypto_hash_sha256_state"
.LASF40:
	.string	"crypto_hash_sha256_final"
.LASF19:
	.string	"count"
.LASF26:
	.string	"crypto_auth_hmacsha256_statebytes"
.LASF36:
	.string	"correct"
.LASF30:
	.string	"crypto_auth_hmacsha256_update"
.LASF43:
	.string	"crypto_verify_32"
.LASF28:
	.string	"khash"
.LASF13:
	.string	"uint64_t"
.LASF22:
	.string	"ictx"
.LASF21:
	.string	"crypto_auth_hmacsha256_state"
.LASF39:
	.string	"crypto_hash_sha256_update"
.LASF38:
	.string	"crypto_hash_sha256_init"
.LASF32:
	.string	"crypto_auth_hmacsha256_final"
.LASF5:
	.string	"unsigned char"
.LASF16:
	.string	"long unsigned int"
.LASF35:
	.string	"crypto_auth_hmacsha256_verify"
.LASF1:
	.string	"short unsigned int"
.LASF44:
	.string	"sodium_memcmp"
.LASF41:
	.string	"memset"
.LASF31:
	.string	"inlen"
.LASF7:
	.string	"__uint32_t"
.LASF37:
	.string	"randombytes_buf"
.LASF23:
	.string	"octx"
.LASF0:
	.string	"unsigned int"
.LASF25:
	.string	"crypto_auth_hmacsha256_keybytes"
.LASF46:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_auth/hmacsha256/auth_hmacsha256.c"
.LASF10:
	.string	"long long unsigned int"
.LASF11:
	.string	"uint8_t"
.LASF29:
	.string	"crypto_auth_hmacsha256_init"
.LASF15:
	.string	"sizetype"
.LASF33:
	.string	"ihash"
.LASF8:
	.string	"long long int"
.LASF45:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF17:
	.string	"char"
.LASF6:
	.string	"short int"
.LASF27:
	.string	"keylen"
.LASF9:
	.string	"__uint64_t"
.LASF12:
	.string	"uint32_t"
.LASF14:
	.string	"long int"
.LASF2:
	.string	"signed char"
.LASF42:
	.string	"sodium_memzero"
.LASF34:
	.string	"crypto_auth_hmacsha256"
.LASF24:
	.string	"crypto_auth_hmacsha256_bytes"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
