	.file	"keypair.c"
	.text
.Ltext0:
	.section	.text.crypto_sign_ed25519_seed_keypair,"ax",@progbits
	.literal_position
	.literal .LC0, 32, 0
	.align	4
	.global	crypto_sign_ed25519_seed_keypair
	.type	crypto_sign_ed25519_seed_keypair, @function
crypto_sign_ed25519_seed_keypair:
.LFB0:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_sign/ed25519/ref10/keypair.c"
	.loc 1 14 0
.LVL0:
	entry	sp, 192
.LCFI0:
	.loc 1 17 0
	l32r	a12, .LC0
	l32r	a13, .LC0+4
	mov.n	a11, a4
	mov.n	a10, a3
	call8	crypto_hash_sha512
.LVL1:
	.loc 1 18 0
	l8ui	a9, a3, 0
	movi.n	a8, -8
	and	a8, a9, a8
	s8i	a8, a3, 0
	.loc 1 19 0
	l8ui	a8, a3, 31
	extui	a9, a8, 0, 6
	.loc 1 20 0
	movi.n	a8, 0x40
	or	a8, a9, a8
	s8i	a8, a3, 31
	.loc 1 22 0
	mov.n	a11, a3
	mov.n	a10, sp
	call8	crypto_core_curve25519_ref10_ge_scalarmult_base
.LVL2:
	.loc 1 23 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	crypto_core_curve25519_ref10_ge_p3_tobytes
.LVL3:
	.loc 1 25 0
	movi.n	a12, 0x20
	mov.n	a11, a4
	mov.n	a10, a3
	call8	memmove
.LVL4:
	.loc 1 26 0
	movi.n	a12, 0x20
	mov.n	a11, a2
	add.n	a10, a3, a12
	call8	memmove
.LVL5:
	.loc 1 29 0
	movi.n	a2, 0
.LVL6:
	retw.n
.LFE0:
	.size	crypto_sign_ed25519_seed_keypair, .-crypto_sign_ed25519_seed_keypair
	.section	.text.crypto_sign_ed25519_keypair,"ax",@progbits
	.align	4
	.global	crypto_sign_ed25519_keypair
	.type	crypto_sign_ed25519_keypair, @function
crypto_sign_ed25519_keypair:
.LFB1:
	.loc 1 33 0
.LVL7:
	entry	sp, 64
.LCFI1:
	.loc 1 37 0
	movi.n	a11, 0x20
	mov.n	a10, sp
	call8	randombytes_buf
.LVL8:
	.loc 1 38 0
	mov.n	a12, sp
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_sign_ed25519_seed_keypair
.LVL9:
	mov.n	a2, a10
.LVL10:
	.loc 1 39 0
	movi.n	a11, 0x20
	mov.n	a10, sp
	call8	sodium_memzero
.LVL11:
	.loc 1 42 0
	retw.n
.LFE1:
	.size	crypto_sign_ed25519_keypair, .-crypto_sign_ed25519_keypair
	.section	.text.crypto_sign_ed25519_pk_to_curve25519,"ax",@progbits
	.align	4
	.global	crypto_sign_ed25519_pk_to_curve25519
	.type	crypto_sign_ed25519_pk_to_curve25519, @function
crypto_sign_ed25519_pk_to_curve25519:
.LFB2:
	.loc 1 47 0
.LVL12:
	entry	sp, 272
.LCFI2:
	mov.n	a4, a2
	.loc 1 52 0
	mov.n	a11, a3
	mov.n	a10, sp
	call8	crypto_core_curve25519_ref10_ge_frombytes_negate_vartime
.LVL13:
	mov.n	a2, a10
.LVL14:
	bnez.n	a10, .L5
	.loc 1 55 0
	movi	a10, 0xc8
	add.n	a10, a10, sp
	call8	crypto_core_curve25519_ref10_fe_1
.LVL15:
	.loc 1 56 0
	addi	a12, sp, 40
	movi	a11, 0xc8
	add.n	a11, a11, sp
	mov.n	a10, a11
	call8	crypto_core_curve25519_ref10_fe_sub
.LVL16:
	.loc 1 57 0
	movi	a11, 0xc8
	add.n	a11, a11, sp
	mov.n	a10, a11
	call8	crypto_core_curve25519_ref10_fe_invert
.LVL17:
	.loc 1 58 0
	movi	a10, 0xa0
	add.n	a10, a10, sp
	call8	crypto_core_curve25519_ref10_fe_1
.LVL18:
	.loc 1 59 0
	addi	a12, sp, 40
	movi	a11, 0xa0
	add.n	a11, a11, sp
	mov.n	a10, a11
	call8	crypto_core_curve25519_ref10_fe_add
.LVL19:
	.loc 1 60 0
	movi	a12, 0xc8
	add.n	a12, a12, sp
	movi	a11, 0xa0
	add.n	a11, a11, sp
	mov.n	a10, a11
	call8	crypto_core_curve25519_ref10_fe_mul
.LVL20:
	.loc 1 61 0
	movi	a11, 0xa0
	add.n	a11, a11, sp
	mov.n	a10, a4
	call8	crypto_core_curve25519_ref10_fe_tobytes
.LVL21:
	.loc 1 63 0
	retw.n
.L5:
	.loc 1 53 0
	movi.n	a2, -1
	.loc 1 64 0
	retw.n
.LFE2:
	.size	crypto_sign_ed25519_pk_to_curve25519, .-crypto_sign_ed25519_pk_to_curve25519
	.section	.text.crypto_sign_ed25519_sk_to_curve25519,"ax",@progbits
	.literal_position
	.literal .LC1, 32, 0
	.align	4
	.global	crypto_sign_ed25519_sk_to_curve25519
	.type	crypto_sign_ed25519_sk_to_curve25519, @function
crypto_sign_ed25519_sk_to_curve25519:
.LFB3:
	.loc 1 69 0
.LVL22:
	entry	sp, 96
.LCFI3:
	.loc 1 72 0
	l32r	a12, .LC1
	l32r	a13, .LC1+4
	mov.n	a11, a3
	mov.n	a10, sp
	call8	crypto_hash_sha512
.LVL23:
	.loc 1 75 0
	l8ui	a9, sp, 0
	movi.n	a8, -8
	and	a8, a9, a8
	s8i	a8, sp, 0
	.loc 1 76 0
	l8ui	a8, sp, 31
	extui	a9, a8, 0, 7
	.loc 1 77 0
	movi.n	a8, 0x40
	or	a8, a9, a8
	s8i	a8, sp, 31
	.loc 1 78 0
	movi.n	a12, 0x20
	mov.n	a11, sp
	mov.n	a10, a2
	call8	memcpy
.LVL24:
	.loc 1 79 0
	movi.n	a11, 0x40
	mov.n	a10, sp
	call8	sodium_memzero
.LVL25:
	.loc 1 82 0
	movi.n	a2, 0
.LVL26:
	retw.n
.LFE3:
	.size	crypto_sign_ed25519_sk_to_curve25519, .-crypto_sign_ed25519_sk_to_curve25519
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
	.uleb128 0xc0
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
	.uleb128 0x40
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
	.uleb128 0x110
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
	.uleb128 0x60
	.align	4
.LEFDE6:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/private/curve25519_ref10.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_hash_sha512.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/randombytes.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x4f7
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0xc
	.4byte	.LASF39
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
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x2
	.byte	0x19
	.4byte	0x21
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3d
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0x2c
	.4byte	0x4b
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x4
	.byte	0x8
	.4byte	0x9c
	.uleb128 0x6
	.4byte	0x86
	.4byte	0xac
	.uleb128 0x7
	.4byte	0x6b
	.byte	0x9
	.byte	0
	.uleb128 0x8
	.byte	0xa0
	.byte	0x4
	.byte	0x4b
	.4byte	0xdd
	.uleb128 0x9
	.string	"X"
	.byte	0x4
	.byte	0x4c
	.4byte	0x91
	.byte	0
	.uleb128 0x9
	.string	"Y"
	.byte	0x4
	.byte	0x4d
	.4byte	0x91
	.byte	0x28
	.uleb128 0x9
	.string	"Z"
	.byte	0x4
	.byte	0x4e
	.4byte	0x91
	.byte	0x50
	.uleb128 0x9
	.string	"T"
	.byte	0x4
	.byte	0x4f
	.4byte	0x91
	.byte	0x78
	.byte	0
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x4
	.byte	0x50
	.4byte	0xac
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x1
	.byte	0xc
	.4byte	0x21
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c2
	.uleb128 0xb
	.string	"pk"
	.byte	0x1
	.byte	0xc
	.4byte	0x79
	.4byte	.LLST0
	.uleb128 0xc
	.string	"sk"
	.byte	0x1
	.byte	0xc
	.4byte	0x79
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xd
	.4byte	.LASF15
	.byte	0x1
	.byte	0xd
	.4byte	0x1c2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xe
	.string	"A"
	.byte	0x1
	.byte	0xf
	.4byte	0xdd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0xf
	.4byte	.LVL1
	.4byte	0x462
	.4byte	0x14f
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
	.byte	0
	.uleb128 0xf
	.4byte	.LVL2
	.4byte	0x46d
	.4byte	0x16a
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL3
	.4byte	0x478
	.4byte	0x185
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
	.sleb128 -192
	.byte	0
	.uleb128 0xf
	.4byte	.LVL4
	.4byte	0x483
	.4byte	0x1a5
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
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.4byte	.LVL5
	.4byte	0x483
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 32
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
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1c8
	.uleb128 0x12
	.4byte	0x3d
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x1
	.byte	0x20
	.4byte	0x21
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x26c
	.uleb128 0xb
	.string	"pk"
	.byte	0x1
	.byte	0x20
	.4byte	0x79
	.4byte	.LLST1
	.uleb128 0xc
	.string	"sk"
	.byte	0x1
	.byte	0x20
	.4byte	0x79
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x13
	.4byte	.LASF15
	.byte	0x1
	.byte	0x22
	.4byte	0x26c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xe
	.string	"ret"
	.byte	0x1
	.byte	0x23
	.4byte	0x21
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.4byte	.LVL8
	.4byte	0x48e
	.4byte	0x235
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
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0xf
	.4byte	.LVL9
	.4byte	0xe8
	.4byte	0x255
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
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x11
	.4byte	.LVL11
	.4byte	0x499
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
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x3d
	.4byte	0x27c
	.uleb128 0x7
	.4byte	0x6b
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x1
	.byte	0x2d
	.4byte	0x21
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3bc
	.uleb128 0x14
	.4byte	.LASF19
	.byte	0x1
	.byte	0x2d
	.4byte	0x79
	.4byte	.LLST2
	.uleb128 0xd
	.4byte	.LASF20
	.byte	0x1
	.byte	0x2e
	.4byte	0x1c2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.string	"A"
	.byte	0x1
	.byte	0x30
	.4byte	0xdd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0xe
	.string	"x"
	.byte	0x1
	.byte	0x31
	.4byte	0x91
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x13
	.4byte	.LASF21
	.byte	0x1
	.byte	0x32
	.4byte	0x91
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xf
	.4byte	.LVL13
	.4byte	0x4a4
	.4byte	0x2f5
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL15
	.4byte	0x4af
	.4byte	0x30a
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0xf
	.4byte	.LVL16
	.4byte	0x4ba
	.4byte	0x32d
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.byte	0
	.uleb128 0xf
	.4byte	.LVL17
	.4byte	0x4c5
	.4byte	0x349
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0xf
	.4byte	.LVL18
	.4byte	0x4af
	.4byte	0x35e
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0xf
	.4byte	.LVL19
	.4byte	0x4d0
	.4byte	0x381
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.byte	0
	.uleb128 0xf
	.4byte	.LVL20
	.4byte	0x4db
	.4byte	0x3a4
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x11
	.4byte	.LVL21
	.4byte	0x4e6
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x1
	.byte	0x43
	.4byte	0x21
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x452
	.uleb128 0x14
	.4byte	.LASF23
	.byte	0x1
	.byte	0x43
	.4byte	0x79
	.4byte	.LLST3
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x1
	.byte	0x44
	.4byte	0x1c2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.string	"h"
	.byte	0x1
	.byte	0x46
	.4byte	0x452
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xf
	.4byte	.LVL23
	.4byte	0x462
	.4byte	0x419
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL24
	.4byte	0x4f1
	.4byte	0x43a
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
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.4byte	.LVL25
	.4byte	0x499
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x3d
	.4byte	0x462
	.uleb128 0x7
	.4byte	0x6b
	.byte	0x3f
	.byte	0
	.uleb128 0x15
	.4byte	.LASF25
	.4byte	.LASF25
	.byte	0x5
	.byte	0x26
	.uleb128 0x15
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x4
	.byte	0x91
	.uleb128 0x15
	.4byte	.LASF27
	.4byte	.LASF27
	.byte	0x4
	.byte	0x80
	.uleb128 0x15
	.4byte	.LASF28
	.4byte	.LASF28
	.byte	0x6
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF29
	.4byte	.LASF29
	.byte	0x7
	.byte	0x21
	.uleb128 0x15
	.4byte	.LASF30
	.4byte	.LASF30
	.byte	0x8
	.byte	0x16
	.uleb128 0x15
	.4byte	.LASF31
	.4byte	.LASF31
	.byte	0x4
	.byte	0x81
	.uleb128 0x15
	.4byte	.LASF32
	.4byte	.LASF32
	.byte	0x4
	.byte	0x2a
	.uleb128 0x15
	.4byte	.LASF33
	.4byte	.LASF33
	.byte	0x4
	.byte	0x2d
	.uleb128 0x15
	.4byte	.LASF34
	.4byte	.LASF34
	.byte	0x4
	.byte	0x32
	.uleb128 0x15
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x4
	.byte	0x2c
	.uleb128 0x15
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x4
	.byte	0x2f
	.uleb128 0x15
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x4
	.byte	0x24
	.uleb128 0x16
	.4byte	.LASF40
	.4byte	.LASF40
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0xf
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL22
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF28:
	.string	"memmove"
.LASF36:
	.string	"crypto_core_curve25519_ref10_fe_mul"
.LASF11:
	.string	"__int32_t"
.LASF39:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_sign/ed25519/ref10/keypair.c"
.LASF4:
	.string	"short int"
.LASF19:
	.string	"curve25519_pk"
.LASF20:
	.string	"ed25519_pk"
.LASF13:
	.string	"crypto_core_curve25519_ref10_fe"
.LASF22:
	.string	"crypto_sign_ed25519_sk_to_curve25519"
.LASF38:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF16:
	.string	"crypto_sign_ed25519_seed_keypair"
.LASF3:
	.string	"unsigned char"
.LASF26:
	.string	"crypto_core_curve25519_ref10_ge_scalarmult_base"
.LASF9:
	.string	"long unsigned int"
.LASF1:
	.string	"short unsigned int"
.LASF21:
	.string	"one_minus_y"
.LASF17:
	.string	"crypto_sign_ed25519_keypair"
.LASF18:
	.string	"crypto_sign_ed25519_pk_to_curve25519"
.LASF29:
	.string	"randombytes_buf"
.LASF35:
	.string	"crypto_core_curve25519_ref10_fe_add"
.LASF14:
	.string	"crypto_core_curve25519_ref10_ge_p3"
.LASF0:
	.string	"unsigned int"
.LASF27:
	.string	"crypto_core_curve25519_ref10_ge_p3_tobytes"
.LASF6:
	.string	"long long unsigned int"
.LASF31:
	.string	"crypto_core_curve25519_ref10_ge_frombytes_negate_vartime"
.LASF12:
	.string	"int32_t"
.LASF8:
	.string	"sizetype"
.LASF33:
	.string	"crypto_core_curve25519_ref10_fe_sub"
.LASF5:
	.string	"long long int"
.LASF37:
	.string	"crypto_core_curve25519_ref10_fe_tobytes"
.LASF32:
	.string	"crypto_core_curve25519_ref10_fe_1"
.LASF40:
	.string	"memcpy"
.LASF25:
	.string	"crypto_hash_sha512"
.LASF23:
	.string	"curve25519_sk"
.LASF24:
	.string	"ed25519_sk"
.LASF34:
	.string	"crypto_core_curve25519_ref10_fe_invert"
.LASF15:
	.string	"seed"
.LASF7:
	.string	"long int"
.LASF10:
	.string	"char"
.LASF2:
	.string	"signed char"
.LASF30:
	.string	"sodium_memzero"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
