	.file	"sign_ed25519.c"
	.text
.Ltext0:
	.section	.text.crypto_sign_ed25519ph_statebytes,"ax",@progbits
	.align	4
	.global	crypto_sign_ed25519ph_statebytes
	.type	crypto_sign_ed25519ph_statebytes, @function
crypto_sign_ed25519ph_statebytes:
.LFB0:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_sign/ed25519/sign_ed25519.c"
	.loc 1 10 0
	entry	sp, 32
.LCFI0:
	.loc 1 12 0
	movi	a2, 0xd0
	retw.n
.LFE0:
	.size	crypto_sign_ed25519ph_statebytes, .-crypto_sign_ed25519ph_statebytes
	.section	.text.crypto_sign_ed25519_bytes,"ax",@progbits
	.align	4
	.global	crypto_sign_ed25519_bytes
	.type	crypto_sign_ed25519_bytes, @function
crypto_sign_ed25519_bytes:
.LFB1:
	.loc 1 16 0
	entry	sp, 32
.LCFI1:
	.loc 1 18 0
	movi.n	a2, 0x40
	retw.n
.LFE1:
	.size	crypto_sign_ed25519_bytes, .-crypto_sign_ed25519_bytes
	.section	.text.crypto_sign_ed25519_seedbytes,"ax",@progbits
	.align	4
	.global	crypto_sign_ed25519_seedbytes
	.type	crypto_sign_ed25519_seedbytes, @function
crypto_sign_ed25519_seedbytes:
.LFB2:
	.loc 1 22 0
	entry	sp, 32
.LCFI2:
	.loc 1 24 0
	movi.n	a2, 0x20
	retw.n
.LFE2:
	.size	crypto_sign_ed25519_seedbytes, .-crypto_sign_ed25519_seedbytes
	.section	.text.crypto_sign_ed25519_publickeybytes,"ax",@progbits
	.align	4
	.global	crypto_sign_ed25519_publickeybytes
	.type	crypto_sign_ed25519_publickeybytes, @function
crypto_sign_ed25519_publickeybytes:
.LFB3:
	.loc 1 28 0
	entry	sp, 32
.LCFI3:
	.loc 1 30 0
	movi.n	a2, 0x20
	retw.n
.LFE3:
	.size	crypto_sign_ed25519_publickeybytes, .-crypto_sign_ed25519_publickeybytes
	.section	.text.crypto_sign_ed25519_secretkeybytes,"ax",@progbits
	.align	4
	.global	crypto_sign_ed25519_secretkeybytes
	.type	crypto_sign_ed25519_secretkeybytes, @function
crypto_sign_ed25519_secretkeybytes:
.LFB4:
	.loc 1 34 0
	entry	sp, 32
.LCFI4:
	.loc 1 36 0
	movi.n	a2, 0x40
	retw.n
.LFE4:
	.size	crypto_sign_ed25519_secretkeybytes, .-crypto_sign_ed25519_secretkeybytes
	.section	.text.crypto_sign_ed25519_sk_to_seed,"ax",@progbits
	.align	4
	.global	crypto_sign_ed25519_sk_to_seed
	.type	crypto_sign_ed25519_sk_to_seed, @function
crypto_sign_ed25519_sk_to_seed:
.LFB5:
	.loc 1 40 0
.LVL0:
	entry	sp, 32
.LCFI5:
	.loc 1 41 0
	movi.n	a12, 0x20
	mov.n	a11, a3
	mov.n	a10, a2
	call8	memmove
.LVL1:
	.loc 1 44 0
	movi.n	a2, 0
.LVL2:
	retw.n
.LFE5:
	.size	crypto_sign_ed25519_sk_to_seed, .-crypto_sign_ed25519_sk_to_seed
	.section	.text.crypto_sign_ed25519_sk_to_pk,"ax",@progbits
	.align	4
	.global	crypto_sign_ed25519_sk_to_pk
	.type	crypto_sign_ed25519_sk_to_pk, @function
crypto_sign_ed25519_sk_to_pk:
.LFB6:
	.loc 1 48 0
.LVL3:
	entry	sp, 32
.LCFI6:
	.loc 1 49 0
	movi.n	a12, 0x20
	add.n	a11, a3, a12
	mov.n	a10, a2
	call8	memmove
.LVL4:
	.loc 1 52 0
	movi.n	a2, 0
.LVL5:
	retw.n
.LFE6:
	.size	crypto_sign_ed25519_sk_to_pk, .-crypto_sign_ed25519_sk_to_pk
	.section	.text.crypto_sign_ed25519ph_init,"ax",@progbits
	.align	4
	.global	crypto_sign_ed25519ph_init
	.type	crypto_sign_ed25519ph_init, @function
crypto_sign_ed25519ph_init:
.LFB7:
	.loc 1 56 0
.LVL6:
	entry	sp, 32
.LCFI7:
	.loc 1 57 0
	mov.n	a10, a2
	call8	crypto_hash_sha512_init
.LVL7:
	.loc 1 59 0
	movi.n	a2, 0
.LVL8:
	retw.n
.LFE7:
	.size	crypto_sign_ed25519ph_init, .-crypto_sign_ed25519ph_init
	.section	.text.crypto_sign_ed25519ph_update,"ax",@progbits
	.align	4
	.global	crypto_sign_ed25519ph_update
	.type	crypto_sign_ed25519ph_update, @function
crypto_sign_ed25519ph_update:
.LFB8:
	.loc 1 64 0
.LVL9:
	entry	sp, 32
.LCFI8:
	.loc 1 65 0
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_hash_sha512_update
.LVL10:
	.loc 1 66 0
	mov.n	a2, a10
.LVL11:
	retw.n
.LFE8:
	.size	crypto_sign_ed25519ph_update, .-crypto_sign_ed25519ph_update
	.section	.text.crypto_sign_ed25519ph_final_create,"ax",@progbits
	.literal_position
	.literal .LC0, 64, 0
	.align	4
	.global	crypto_sign_ed25519ph_final_create
	.type	crypto_sign_ed25519ph_final_create, @function
crypto_sign_ed25519ph_final_create:
.LFB9:
	.loc 1 73 0
.LVL12:
	entry	sp, 112
.LCFI9:
	.loc 1 76 0
	addi	a11, sp, 16
	mov.n	a10, a2
	call8	crypto_hash_sha512_final
.LVL13:
	.loc 1 78 0
	movi.n	a8, 1
	s32i.n	a8, sp, 4
	s32i.n	a5, sp, 0
	l32r	a14, .LC0
	l32r	a15, .LC0+4
	addi	a12, sp, 16
	mov.n	a11, a4
	mov.n	a10, a3
	call8	_crypto_sign_ed25519_detached
.LVL14:
	.loc 1 79 0
	mov.n	a2, a10
.LVL15:
	retw.n
.LFE9:
	.size	crypto_sign_ed25519ph_final_create, .-crypto_sign_ed25519ph_final_create
	.section	.text.crypto_sign_ed25519ph_final_verify,"ax",@progbits
	.literal_position
	.literal .LC1, 64, 0
	.align	4
	.global	crypto_sign_ed25519ph_final_verify
	.type	crypto_sign_ed25519ph_final_verify, @function
crypto_sign_ed25519ph_final_verify:
.LFB10:
	.loc 1 85 0
.LVL16:
	entry	sp, 96
.LCFI10:
	.loc 1 88 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	crypto_hash_sha512_final
.LVL17:
	.loc 1 90 0
	movi.n	a15, 1
	mov.n	a14, a4
	l32r	a12, .LC1
	l32r	a13, .LC1+4
	mov.n	a11, sp
	mov.n	a10, a3
	call8	_crypto_sign_ed25519_verify_detached
.LVL18:
	.loc 1 91 0
	mov.n	a2, a10
.LVL19:
	retw.n
.LFE10:
	.size	crypto_sign_ed25519ph_final_verify, .-crypto_sign_ed25519ph_final_verify
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
	.uleb128 0x20
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
	.uleb128 0x20
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
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI9-.LFB9
	.byte	0xe
	.uleb128 0x70
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI10-.LFB10
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE20:
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_hash_sha512.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_sign_ed25519.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_sign/ed25519/ref10/ed25519_ref10.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x475
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0xc
	.4byte	.LASF41
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
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.4byte	0x53
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x15
	.4byte	0x48
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x39
	.4byte	0x68
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
	.4byte	0xa7
	.4byte	0xf3
	.uleb128 0xa
	.4byte	0x81
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.4byte	0xa7
	.4byte	0x103
	.uleb128 0xa
	.4byte	0x81
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.4byte	0x9c
	.4byte	0x113
	.uleb128 0xa
	.4byte	0x81
	.byte	0x7f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x1c
	.4byte	0xb2
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0xd0
	.byte	0x6
	.byte	0xf
	.4byte	0x136
	.uleb128 0x8
	.string	"hs"
	.byte	0x6
	.byte	0x10
	.4byte	0x113
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x6
	.byte	0x11
	.4byte	0x11e
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x1
	.byte	0x9
	.4byte	0x28
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x1
	.byte	0xf
	.4byte	0x28
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x1
	.byte	0x15
	.4byte	0x28
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x1
	.byte	0x1b
	.4byte	0x28
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x1
	.byte	0x21
	.4byte	0x28
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x1
	.byte	0x27
	.4byte	0x21
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1fb
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x1
	.byte	0x27
	.4byte	0x8f
	.4byte	.LLST0
	.uleb128 0xe
	.string	"sk"
	.byte	0x1
	.byte	0x27
	.4byte	0x1fb
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.4byte	.LVL1
	.4byte	0x436
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
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x201
	.uleb128 0x11
	.4byte	0x53
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x1
	.byte	0x2f
	.4byte	0x21
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x256
	.uleb128 0x12
	.string	"pk"
	.byte	0x1
	.byte	0x2f
	.4byte	0x8f
	.4byte	.LLST1
	.uleb128 0xe
	.string	"sk"
	.byte	0x1
	.byte	0x2f
	.4byte	0x1fb
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.4byte	.LVL4
	.4byte	0x436
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
	.sleb128 32
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x1
	.byte	0x37
	.4byte	0x21
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x28f
	.uleb128 0xd
	.4byte	.LASF16
	.byte	0x1
	.byte	0x37
	.4byte	0x28f
	.4byte	.LLST2
	.uleb128 0xf
	.4byte	.LVL7
	.4byte	0x441
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x136
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x1
	.byte	0x3e
	.4byte	0x21
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2f1
	.uleb128 0xd
	.4byte	.LASF16
	.byte	0x1
	.byte	0x3e
	.4byte	0x28f
	.4byte	.LLST3
	.uleb128 0xe
	.string	"m"
	.byte	0x1
	.byte	0x3f
	.4byte	0x1fb
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x13
	.4byte	.LASF30
	.byte	0x1
	.byte	0x3f
	.4byte	0x73
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xf
	.4byte	.LVL10
	.4byte	0x44c
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
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x1
	.byte	0x45
	.4byte	0x21
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x393
	.uleb128 0xd
	.4byte	.LASF16
	.byte	0x1
	.byte	0x45
	.4byte	0x28f
	.4byte	.LLST4
	.uleb128 0xe
	.string	"sig"
	.byte	0x1
	.byte	0x46
	.4byte	0x8f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x13
	.4byte	.LASF32
	.byte	0x1
	.byte	0x47
	.4byte	0x393
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xe
	.string	"sk"
	.byte	0x1
	.byte	0x48
	.4byte	0x1fb
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x14
	.string	"ph"
	.byte	0x1
	.byte	0x4a
	.4byte	0x399
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x15
	.4byte	.LVL13
	.4byte	0x457
	.4byte	0x368
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
	.4byte	.LVL14
	.4byte	0x462
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x10
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x73
	.uleb128 0x9
	.4byte	0x53
	.4byte	0x3a9
	.uleb128 0xa
	.4byte	0x81
	.byte	0x3f
	.byte	0
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x1
	.byte	0x52
	.4byte	0x21
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x436
	.uleb128 0xd
	.4byte	.LASF16
	.byte	0x1
	.byte	0x52
	.4byte	0x28f
	.4byte	.LLST5
	.uleb128 0xe
	.string	"sig"
	.byte	0x1
	.byte	0x53
	.4byte	0x8f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.string	"pk"
	.byte	0x1
	.byte	0x54
	.4byte	0x1fb
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x14
	.string	"ph"
	.byte	0x1
	.byte	0x56
	.4byte	0x399
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x15
	.4byte	.LVL17
	.4byte	0x457
	.4byte	0x413
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
	.4byte	.LVL18
	.4byte	0x46d
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
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF34
	.4byte	.LASF34
	.byte	0x7
	.byte	0x18
	.uleb128 0x16
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x5
	.byte	0x2a
	.uleb128 0x16
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x5
	.byte	0x2d
	.uleb128 0x16
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x5
	.byte	0x32
	.uleb128 0x16
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x8
	.byte	0x7
	.uleb128 0x16
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x8
	.byte	0xd
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
	.uleb128 0x17
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
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x6c
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
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
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
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF34:
	.string	"memmove"
.LASF4:
	.string	"__uint8_t"
.LASF3:
	.string	"size_t"
.LASF23:
	.string	"crypto_sign_ed25519_publickeybytes"
.LASF16:
	.string	"state"
.LASF35:
	.string	"crypto_hash_sha512_init"
.LASF17:
	.string	"count"
.LASF30:
	.string	"mlen"
.LASF19:
	.string	"crypto_sign_ed25519ph_state"
.LASF15:
	.string	"uint64_t"
.LASF40:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF20:
	.string	"crypto_sign_ed25519ph_statebytes"
.LASF31:
	.string	"crypto_sign_ed25519ph_final_create"
.LASF22:
	.string	"crypto_sign_ed25519_seedbytes"
.LASF5:
	.string	"unsigned char"
.LASF41:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_sign/ed25519/sign_ed25519.c"
.LASF12:
	.string	"long unsigned int"
.LASF1:
	.string	"short unsigned int"
.LASF33:
	.string	"crypto_sign_ed25519ph_final_verify"
.LASF27:
	.string	"crypto_sign_ed25519_sk_to_pk"
.LASF24:
	.string	"crypto_sign_ed25519_secretkeybytes"
.LASF29:
	.string	"crypto_sign_ed25519ph_update"
.LASF32:
	.string	"siglen_p"
.LASF18:
	.string	"crypto_hash_sha512_state"
.LASF0:
	.string	"unsigned int"
.LASF37:
	.string	"crypto_hash_sha512_final"
.LASF26:
	.string	"crypto_sign_ed25519_sk_to_seed"
.LASF9:
	.string	"long long unsigned int"
.LASF14:
	.string	"uint8_t"
.LASF38:
	.string	"_crypto_sign_ed25519_detached"
.LASF21:
	.string	"crypto_sign_ed25519_bytes"
.LASF11:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF13:
	.string	"char"
.LASF36:
	.string	"crypto_hash_sha512_update"
.LASF39:
	.string	"_crypto_sign_ed25519_verify_detached"
.LASF6:
	.string	"short int"
.LASF8:
	.string	"__uint64_t"
.LASF25:
	.string	"seed"
.LASF10:
	.string	"long int"
.LASF2:
	.string	"signed char"
.LASF28:
	.string	"crypto_sign_ed25519ph_init"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
