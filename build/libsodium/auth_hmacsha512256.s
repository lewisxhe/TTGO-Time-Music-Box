	.file	"auth_hmacsha512256.c"
	.text
.Ltext0:
	.section	.text.crypto_auth_hmacsha512256_bytes,"ax",@progbits
	.align	4
	.global	crypto_auth_hmacsha512256_bytes
	.type	crypto_auth_hmacsha512256_bytes, @function
crypto_auth_hmacsha512256_bytes:
.LFB0:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_auth/hmacsha512256/auth_hmacsha512256.c"
	.loc 1 15 0
	entry	sp, 32
.LCFI0:
	.loc 1 17 0
	movi.n	a2, 0x20
	retw.n
.LFE0:
	.size	crypto_auth_hmacsha512256_bytes, .-crypto_auth_hmacsha512256_bytes
	.section	.text.crypto_auth_hmacsha512256_keybytes,"ax",@progbits
	.align	4
	.global	crypto_auth_hmacsha512256_keybytes
	.type	crypto_auth_hmacsha512256_keybytes, @function
crypto_auth_hmacsha512256_keybytes:
.LFB1:
	.loc 1 21 0
	entry	sp, 32
.LCFI1:
	.loc 1 23 0
	movi.n	a2, 0x20
	retw.n
.LFE1:
	.size	crypto_auth_hmacsha512256_keybytes, .-crypto_auth_hmacsha512256_keybytes
	.section	.text.crypto_auth_hmacsha512256_statebytes,"ax",@progbits
	.align	4
	.global	crypto_auth_hmacsha512256_statebytes
	.type	crypto_auth_hmacsha512256_statebytes, @function
crypto_auth_hmacsha512256_statebytes:
.LFB2:
	.loc 1 27 0
	entry	sp, 32
.LCFI2:
	.loc 1 29 0
	movi	a2, 0x1a0
	retw.n
.LFE2:
	.size	crypto_auth_hmacsha512256_statebytes, .-crypto_auth_hmacsha512256_statebytes
	.section	.text.crypto_auth_hmacsha512256_keygen,"ax",@progbits
	.align	4
	.global	crypto_auth_hmacsha512256_keygen
	.type	crypto_auth_hmacsha512256_keygen, @function
crypto_auth_hmacsha512256_keygen:
.LFB3:
	.loc 1 34 0
.LVL0:
	entry	sp, 32
.LCFI3:
	.loc 1 35 0
	movi.n	a11, 0x20
	mov.n	a10, a2
	call8	randombytes_buf
.LVL1:
	retw.n
.LFE3:
	.size	crypto_auth_hmacsha512256_keygen, .-crypto_auth_hmacsha512256_keygen
	.section	.text.crypto_auth_hmacsha512256_init,"ax",@progbits
	.align	4
	.global	crypto_auth_hmacsha512256_init
	.type	crypto_auth_hmacsha512256_init, @function
crypto_auth_hmacsha512256_init:
.LFB4:
	.loc 1 41 0
.LVL2:
	entry	sp, 32
.LCFI4:
	.loc 1 42 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_auth_hmacsha512_init
.LVL3:
	.loc 1 44 0
	mov.n	a2, a10
.LVL4:
	retw.n
.LFE4:
	.size	crypto_auth_hmacsha512256_init, .-crypto_auth_hmacsha512256_init
	.section	.text.crypto_auth_hmacsha512256_update,"ax",@progbits
	.align	4
	.global	crypto_auth_hmacsha512256_update
	.type	crypto_auth_hmacsha512256_update, @function
crypto_auth_hmacsha512256_update:
.LFB5:
	.loc 1 50 0
.LVL5:
	entry	sp, 32
.LCFI5:
	.loc 1 51 0
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_auth_hmacsha512_update
.LVL6:
	.loc 1 53 0
	mov.n	a2, a10
.LVL7:
	retw.n
.LFE5:
	.size	crypto_auth_hmacsha512256_update, .-crypto_auth_hmacsha512256_update
	.section	.text.crypto_auth_hmacsha512256_final,"ax",@progbits
	.align	4
	.global	crypto_auth_hmacsha512256_final
	.type	crypto_auth_hmacsha512256_final, @function
crypto_auth_hmacsha512256_final:
.LFB6:
	.loc 1 58 0
.LVL8:
	entry	sp, 96
.LCFI6:
	.loc 1 61 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	crypto_auth_hmacsha512_final
.LVL9:
	.loc 1 62 0
	movi.n	a12, 0x20
	mov.n	a11, sp
	mov.n	a10, a3
	call8	memcpy
.LVL10:
	.loc 1 65 0
	movi.n	a2, 0
.LVL11:
	retw.n
.LFE6:
	.size	crypto_auth_hmacsha512256_final, .-crypto_auth_hmacsha512256_final
	.section	.text.crypto_auth_hmacsha512256,"ax",@progbits
	.align	4
	.global	crypto_auth_hmacsha512256
	.type	crypto_auth_hmacsha512256, @function
crypto_auth_hmacsha512256:
.LFB7:
	.loc 1 70 0
.LVL12:
	entry	sp, 448
.LCFI7:
	.loc 1 73 0
	movi.n	a12, 0x20
	mov.n	a11, a6
	mov.n	a10, sp
	call8	crypto_auth_hmacsha512256_init
.LVL13:
	.loc 1 75 0
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, sp
	call8	crypto_auth_hmacsha512256_update
.LVL14:
	.loc 1 76 0
	mov.n	a11, a2
	mov.n	a10, sp
	call8	crypto_auth_hmacsha512256_final
.LVL15:
	.loc 1 79 0
	movi.n	a2, 0
.LVL16:
	retw.n
.LFE7:
	.size	crypto_auth_hmacsha512256, .-crypto_auth_hmacsha512256
	.section	.text.crypto_auth_hmacsha512256_verify,"ax",@progbits
	.align	4
	.global	crypto_auth_hmacsha512256_verify
	.type	crypto_auth_hmacsha512256_verify, @function
crypto_auth_hmacsha512256_verify:
.LFB8:
	.loc 1 86 0
.LVL17:
	entry	sp, 64
.LCFI8:
	.loc 1 89 0
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, sp
	call8	crypto_auth_hmacsha512256
.LVL18:
	.loc 1 91 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	crypto_verify_32
.LVL19:
	mov.n	a3, a10
.LVL20:
	.loc 1 92 0
	movi.n	a12, 0x20
	mov.n	a11, a2
	mov.n	a10, sp
	call8	sodium_memcmp
.LVL21:
	.loc 1 93 0
	or	a2, a3, a10
.LVL22:
	retw.n
.LFE8:
	.size	crypto_auth_hmacsha512256_verify, .-crypto_auth_hmacsha512256_verify
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
	.uleb128 0x20
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
	.uleb128 0x60
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
	.uleb128 0x1c0
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
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_hash_sha512.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_auth_hmacsha512.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_auth_hmacsha512256.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/randombytes.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_verify_32.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x4ec
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0xc
	.4byte	.LASF42
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
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x1e
	.4byte	0x73
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0x15
	.4byte	0x48
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0x39
	.4byte	0x68
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x4
	.4byte	0x53
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0xd0
	.byte	0x5
	.byte	0x18
	.4byte	0xe3
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x5
	.byte	0x19
	.4byte	0xe3
	.byte	0
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x5
	.byte	0x1a
	.4byte	0xf3
	.byte	0x40
	.uleb128 0x8
	.string	"buf"
	.byte	0x5
	.byte	0x1b
	.4byte	0x103
	.byte	0x50
	.byte	0
	.uleb128 0x9
	.4byte	0x85
	.4byte	0xf3
	.uleb128 0xa
	.4byte	0x97
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.4byte	0x85
	.4byte	0x103
	.uleb128 0xa
	.4byte	0x97
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.4byte	0x7a
	.4byte	0x113
	.uleb128 0xa
	.4byte	0x97
	.byte	0x7f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x1c
	.4byte	0xb2
	.uleb128 0xb
	.4byte	.LASF19
	.2byte	0x1a0
	.byte	0x6
	.byte	0x26
	.4byte	0x144
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x6
	.byte	0x27
	.4byte	0x113
	.byte	0
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x6
	.byte	0x28
	.4byte	0x113
	.byte	0xd0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x6
	.byte	0x29
	.4byte	0x11e
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x7
	.byte	0x24
	.4byte	0x144
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x1
	.byte	0xe
	.4byte	0x28
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x1
	.byte	0x14
	.4byte	0x28
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x1
	.byte	0x1a
	.4byte	0x28
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xd
	.4byte	.LASF43
	.byte	0x1
	.byte	0x20
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d0
	.uleb128 0xe
	.string	"k"
	.byte	0x1
	.byte	0x21
	.4byte	0xa5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.4byte	.LVL1
	.4byte	0x4a4
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF27
	.byte	0x1
	.byte	0x27
	.4byte	0x21
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x22f
	.uleb128 0x12
	.4byte	.LASF16
	.byte	0x1
	.byte	0x27
	.4byte	0x22f
	.4byte	.LLST0
	.uleb128 0xe
	.string	"key"
	.byte	0x1
	.byte	0x28
	.4byte	0x235
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x13
	.4byte	.LASF26
	.byte	0x1
	.byte	0x28
	.4byte	0x28
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xf
	.4byte	.LVL3
	.4byte	0x4af
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x14f
	.uleb128 0x5
	.byte	0x4
	.4byte	0x23b
	.uleb128 0x14
	.4byte	0x53
	.uleb128 0x11
	.4byte	.LASF28
	.byte	0x1
	.byte	0x2f
	.4byte	0x21
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x29d
	.uleb128 0x12
	.4byte	.LASF16
	.byte	0x1
	.byte	0x2f
	.4byte	0x22f
	.4byte	.LLST1
	.uleb128 0xe
	.string	"in"
	.byte	0x1
	.byte	0x30
	.4byte	0x235
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x13
	.4byte	.LASF29
	.byte	0x1
	.byte	0x31
	.4byte	0x73
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xf
	.4byte	.LVL6
	.4byte	0x4ba
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF30
	.byte	0x1
	.byte	0x38
	.4byte	0x21
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x31a
	.uleb128 0x12
	.4byte	.LASF16
	.byte	0x1
	.byte	0x38
	.4byte	0x22f
	.4byte	.LLST2
	.uleb128 0xe
	.string	"out"
	.byte	0x1
	.byte	0x39
	.4byte	0xa5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x15
	.4byte	.LASF32
	.byte	0x1
	.byte	0x3b
	.4byte	0x31a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x16
	.4byte	.LVL9
	.4byte	0x4c5
	.4byte	0x2fc
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0xf
	.4byte	.LVL10
	.4byte	0x4d0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x53
	.4byte	0x32a
	.uleb128 0xa
	.4byte	0x97
	.byte	0x3f
	.byte	0
	.uleb128 0x11
	.4byte	.LASF31
	.byte	0x1
	.byte	0x44
	.4byte	0x21
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3de
	.uleb128 0x17
	.string	"out"
	.byte	0x1
	.byte	0x44
	.4byte	0xa5
	.4byte	.LLST3
	.uleb128 0xe
	.string	"in"
	.byte	0x1
	.byte	0x44
	.4byte	0x235
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x13
	.4byte	.LASF29
	.byte	0x1
	.byte	0x45
	.4byte	0x73
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xe
	.string	"k"
	.byte	0x1
	.byte	0x45
	.4byte	0x235
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x15
	.4byte	.LASF16
	.byte	0x1
	.byte	0x47
	.4byte	0x14f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -448
	.uleb128 0x16
	.4byte	.LVL13
	.4byte	0x1d0
	.4byte	0x3ab
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -448
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x16
	.4byte	.LVL14
	.4byte	0x240
	.4byte	0x3c6
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -448
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL15
	.4byte	0x29d
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -448
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF33
	.byte	0x1
	.byte	0x52
	.4byte	0x21
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x494
	.uleb128 0x17
	.string	"h"
	.byte	0x1
	.byte	0x52
	.4byte	0x235
	.4byte	.LLST4
	.uleb128 0x17
	.string	"in"
	.byte	0x1
	.byte	0x53
	.4byte	0x235
	.4byte	.LLST5
	.uleb128 0x13
	.4byte	.LASF29
	.byte	0x1
	.byte	0x54
	.4byte	0x73
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xe
	.string	"k"
	.byte	0x1
	.byte	0x55
	.4byte	0x235
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x15
	.4byte	.LASF34
	.byte	0x1
	.byte	0x57
	.4byte	0x494
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x16
	.4byte	.LVL18
	.4byte	0x32a
	.4byte	0x45d
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL19
	.4byte	0x4d9
	.4byte	0x477
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0xf
	.4byte	.LVL21
	.4byte	0x4e4
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x53
	.4byte	0x4a4
	.uleb128 0xa
	.4byte	0x97
	.byte	0x1f
	.byte	0
	.uleb128 0x18
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x8
	.byte	0x21
	.uleb128 0x18
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x6
	.byte	0x2f
	.uleb128 0x18
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x6
	.byte	0x34
	.uleb128 0x18
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x6
	.byte	0x39
	.uleb128 0x19
	.4byte	.LASF44
	.4byte	.LASF44
	.uleb128 0x18
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x9
	.byte	0x10
	.uleb128 0x18
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0xa
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL12
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL17
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL20
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
.LASF37:
	.string	"crypto_auth_hmacsha512_update"
.LASF4:
	.string	"__uint8_t"
.LASF3:
	.string	"size_t"
.LASF16:
	.string	"state"
.LASF34:
	.string	"correct"
.LASF17:
	.string	"count"
.LASF32:
	.string	"out0"
.LASF39:
	.string	"crypto_verify_32"
.LASF11:
	.string	"uint64_t"
.LASF42:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_auth/hmacsha512256/auth_hmacsha512256.c"
.LASF20:
	.string	"ictx"
.LASF25:
	.string	"crypto_auth_hmacsha512256_statebytes"
.LASF24:
	.string	"crypto_auth_hmacsha512256_keybytes"
.LASF22:
	.string	"crypto_auth_hmacsha512256_state"
.LASF30:
	.string	"crypto_auth_hmacsha512256_final"
.LASF5:
	.string	"unsigned char"
.LASF19:
	.string	"crypto_auth_hmacsha512_state"
.LASF31:
	.string	"crypto_auth_hmacsha512256"
.LASF14:
	.string	"long unsigned int"
.LASF1:
	.string	"short unsigned int"
.LASF40:
	.string	"sodium_memcmp"
.LASF29:
	.string	"inlen"
.LASF36:
	.string	"crypto_auth_hmacsha512_init"
.LASF21:
	.string	"octx"
.LASF35:
	.string	"randombytes_buf"
.LASF18:
	.string	"crypto_hash_sha512_state"
.LASF0:
	.string	"unsigned int"
.LASF43:
	.string	"crypto_auth_hmacsha512256_keygen"
.LASF9:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint8_t"
.LASF13:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF41:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF15:
	.string	"char"
.LASF44:
	.string	"memcpy"
.LASF6:
	.string	"short int"
.LASF26:
	.string	"keylen"
.LASF8:
	.string	"__uint64_t"
.LASF27:
	.string	"crypto_auth_hmacsha512256_init"
.LASF28:
	.string	"crypto_auth_hmacsha512256_update"
.LASF12:
	.string	"long int"
.LASF38:
	.string	"crypto_auth_hmacsha512_final"
.LASF2:
	.string	"signed char"
.LASF23:
	.string	"crypto_auth_hmacsha512256_bytes"
.LASF33:
	.string	"crypto_auth_hmacsha512256_verify"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
