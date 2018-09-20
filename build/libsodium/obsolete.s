	.file	"obsolete.c"
	.text
.Ltext0:
	.section	.text.crypto_sign_edwards25519sha512batch_keypair,"ax",@progbits
	.literal_position
	.literal .LC0, 32, 0
	.align	4
	.global	crypto_sign_edwards25519sha512batch_keypair
	.type	crypto_sign_edwards25519sha512batch_keypair, @function
crypto_sign_edwards25519sha512batch_keypair:
.LFB0:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_sign/ed25519/ref10/obsolete.c"
	.loc 1 16 0
.LVL0:
	entry	sp, 192
.LCFI0:
	.loc 1 19 0
	movi.n	a11, 0x20
	mov.n	a10, a3
	call8	randombytes_buf
.LVL1:
	.loc 1 20 0
	l32r	a12, .LC0
	l32r	a13, .LC0+4
	mov.n	a11, a3
	mov.n	a10, a3
	call8	crypto_hash_sha512
.LVL2:
	.loc 1 21 0
	l8ui	a9, a3, 0
	movi.n	a8, -8
	and	a8, a9, a8
	s8i	a8, a3, 0
	.loc 1 22 0
	l8ui	a8, a3, 31
	extui	a9, a8, 0, 6
	.loc 1 23 0
	movi.n	a8, 0x40
	or	a8, a9, a8
	s8i	a8, a3, 31
	.loc 1 24 0
	mov.n	a11, a3
	mov.n	a10, sp
	call8	crypto_core_curve25519_ref10_ge_scalarmult_base
.LVL3:
	.loc 1 25 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	crypto_core_curve25519_ref10_ge_p3_tobytes
.LVL4:
	.loc 1 28 0
	movi.n	a2, 0
.LVL5:
	retw.n
.LFE0:
	.size	crypto_sign_edwards25519sha512batch_keypair, .-crypto_sign_edwards25519sha512batch_keypair
	.section	.text.crypto_sign_edwards25519sha512batch,"ax",@progbits
	.literal_position
	.literal .LC1, 32, 0
	.align	4
	.global	crypto_sign_edwards25519sha512batch
	.type	crypto_sign_edwards25519sha512batch, @function
crypto_sign_edwards25519sha512batch:
.LFB1:
	.loc 1 36 0
.LVL6:
	entry	sp, 752
.LCFI1:
	.loc 1 44 0
	mov.n	a10, sp
	call8	crypto_hash_sha512_init
.LVL7:
	.loc 1 45 0
	l32r	a12, .LC1
	l32r	a13, .LC1+4
	l32i	a5, sp, 752
	addi	a11, a5, 32
	mov.n	a10, sp
	call8	crypto_hash_sha512_update
.LVL8:
	.loc 1 46 0
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a11, a4
	mov.n	a10, sp
	call8	crypto_hash_sha512_update
.LVL9:
	.loc 1 47 0
	movi	a11, 0xd0
	add.n	a11, a11, sp
	mov.n	a10, sp
	call8	crypto_hash_sha512_final
.LVL10:
	.loc 1 48 0
	l32i	a11, sp, 752
	movi	a10, 0x190
	add.n	a10, a10, sp
	call8	crypto_core_curve25519_ref10_ge_scalarmult_base
.LVL11:
	.loc 1 49 0
	movi	a8, 0x150
	add.n	a8, a8, sp
	addi	a5, a8, 32
	movi	a11, 0x190
	add.n	a11, a11, sp
	mov.n	a10, a5
	call8	crypto_core_curve25519_ref10_ge_p3_tobytes
.LVL12:
	.loc 1 50 0
	movi	a10, 0xd0
	add.n	a10, a10, sp
	call8	crypto_core_curve25519_ref10_sc_reduce
.LVL13:
	.loc 1 51 0
	movi	a11, 0xd0
	add.n	a11, a11, sp
	movi	a10, 0x230
	add.n	a10, a10, sp
	call8	crypto_core_curve25519_ref10_ge_scalarmult_base
.LVL14:
	.loc 1 52 0
	movi	a11, 0x230
	add.n	a11, a11, sp
	movi	a10, 0x150
	add.n	a10, a10, sp
	call8	crypto_core_curve25519_ref10_ge_p3_tobytes
.LVL15:
	.loc 1 53 0
	mov.n	a10, sp
	call8	crypto_hash_sha512_init
.LVL16:
	.loc 1 54 0
	l32r	a12, .LC1
	l32r	a13, .LC1+4
	movi	a11, 0x150
	add.n	a11, a11, sp
	mov.n	a10, sp
	call8	crypto_hash_sha512_update
.LVL17:
	.loc 1 55 0
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a11, a4
	mov.n	a10, sp
	call8	crypto_hash_sha512_update
.LVL18:
	.loc 1 56 0
	movi	a11, 0x110
	add.n	a11, a11, sp
	mov.n	a10, sp
	call8	crypto_hash_sha512_final
.LVL19:
	.loc 1 57 0
	movi	a10, 0x110
	add.n	a10, a10, sp
	call8	crypto_core_curve25519_ref10_sc_reduce
.LVL20:
	.loc 1 58 0
	l32i	a13, sp, 752
	movi	a12, 0xd0
	add.n	a12, a12, sp
	movi	a11, 0x110
	add.n	a11, a11, sp
	mov.n	a10, a5
	call8	crypto_core_curve25519_ref10_sc_muladd
.LVL21:
	.loc 1 59 0
	movi.n	a11, 0x40
	movi	a10, 0x110
	add.n	a10, a10, sp
	call8	sodium_memzero
.LVL22:
	.loc 1 60 0
	mov.n	a12, a6
	mov.n	a11, a4
	addi	a10, a2, 32
	call8	memmove
.LVL23:
	.loc 1 61 0
	movi.n	a4, 0x20
.LVL24:
	mov.n	a12, a4
	movi	a11, 0x150
	add.n	a11, a11, sp
	mov.n	a10, a2
	call8	memcpy
.LVL25:
	.loc 1 62 0
	add.n	a10, a6, a4
	mov.n	a12, a4
	mov.n	a11, a5
	add.n	a10, a2, a10
	call8	memcpy
.LVL26:
	.loc 1 63 0
	addi	a2, a6, 64
.LVL27:
	movi.n	a4, 1
	bltu	a2, a6, .L3
	movi.n	a4, 0
.L3:
	add.n	a7, a4, a7
	s32i.n	a2, a3, 0
	s32i.n	a7, a3, 4
	.loc 1 66 0
	movi.n	a2, 0
	retw.n
.LFE1:
	.size	crypto_sign_edwards25519sha512batch, .-crypto_sign_edwards25519sha512batch
	.section	.text.crypto_sign_edwards25519sha512batch_open,"ax",@progbits
	.literal_position
	.literal .LC3, 0, 0
	.align	4
	.global	crypto_sign_edwards25519sha512batch_open
	.type	crypto_sign_edwards25519sha512batch_open, @function
crypto_sign_edwards25519sha512batch_open:
.LFB2:
	.loc 1 74 0
.LVL28:
	entry	sp, 1104
.LCFI2:
	movi	a5, 0x424
	add.n	a5, a5, sp
	s32i.n	a2, a5, 0
	movi	a8, 0x420
	add.n	a8, a8, sp
	s32i.n	a6, a8, 0
	.loc 1 85 0
	l32r	a8, .LC3
	l32r	a9, .LC3+4
	s32i.n	a8, a3, 0
	s32i.n	a9, a3, 4
	.loc 1 86 0
	addi	a2, a6, -64
.LVL29:
	movi.n	a5, 1
.LVL30:
	bltu	a2, a6, .L5
	movi.n	a5, 0
.L5:
	addi.n	a8, a7, -1
	add.n	a5, a5, a8
	bnez.n	a5, .L9
	bnez.n	a5, .L14
	movi	a8, -0x41
	bltu	a8, a2, .L9
.L14:
	.loc 1 90 0
	add.n	a8, a4, a6
	addi.n	a8, a8, -1
	l8ui	a9, a8, 0
	movi.n	a8, -0x20
	bany	a9, a8, .L10
	.loc 1 93 0
	movi	a8, 0x450
	add.n	a8, a8, sp
	l32i.n	a11, a8, 0
	movi	a10, 0x238
	add.n	a10, sp, a10
	call8	crypto_core_curve25519_ref10_ge_frombytes_negate_vartime
.LVL31:
	bnez.n	a10, .L11
	.loc 1 94 0 discriminator 1
	mov.n	a11, a4
	movi	a10, 0x2d8
	add.n	a10, sp, a10
	call8	crypto_core_curve25519_ref10_ge_frombytes_negate_vartime
.LVL32:
	.loc 1 93 0 discriminator 1
	bnez.n	a10, .L12
	.loc 1 97 0
	movi	a11, 0x238
	add.n	a11, sp, a11
	movi	a10, 0x80
	add.n	a10, sp, a10
	call8	crypto_core_curve25519_ref10_ge_p3_to_cached
.LVL33:
	.loc 1 98 0
	addi	a12, a6, -32
	movi.n	a13, 1
	movi	a6, 0x420
.LVL34:
	add.n	a6, a6, sp
	l32i.n	a6, a6, 0
	bltu	a12, a6, .L8
	movi.n	a13, 0
.L8:
	addi.n	a7, a7, -1
	add.n	a13, a13, a7
	mov.n	a11, a4
	mov.n	a10, sp
	call8	crypto_hash_sha512
.LVL35:
	.loc 1 99 0
	mov.n	a10, sp
	call8	crypto_core_curve25519_ref10_sc_reduce
.LVL36:
	.loc 1 100 0
	movi	a12, 0x2d8
	add.n	a12, a12, sp
	mov.n	a11, sp
	movi	a10, 0x378
	add.n	a10, a10, sp
	call8	crypto_core_curve25519_ref10_ge_scalarmult_vartime
.LVL37:
	.loc 1 101 0
	movi	a12, 0x80
	add.n	a12, sp, a12
	movi	a11, 0x378
	add.n	a11, a11, sp
	movi	a10, 0x120
	add.n	a10, a10, sp
	call8	crypto_core_curve25519_ref10_ge_add
.LVL38:
	.loc 1 102 0
	movi	a11, 0x120
	add.n	a11, a11, sp
	movi	a10, 0x1c0
	add.n	a10, a10, sp
	call8	crypto_core_curve25519_ref10_ge_p1p1_to_p2
.LVL39:
	.loc 1 103 0
	movi	a11, 0x1c0
	add.n	a11, a11, sp
	addi	a10, sp, 64
	call8	crypto_core_curve25519_ref10_ge_tobytes
.LVL40:
	.loc 1 104 0
	l8ui	a7, sp, 95
	movi	a6, -0x80
	xor	a6, a7, a6
	s8i	a6, sp, 95
	.loc 1 105 0
	addi	a11, a2, 32
	add.n	a11, a4, a11
	movi	a10, 0x2d8
	add.n	a10, a10, sp
	call8	crypto_core_curve25519_ref10_ge_scalarmult_base
.LVL41:
	.loc 1 106 0
	movi	a11, 0x2d8
	add.n	a11, a11, sp
	addi	a10, sp, 96
	call8	crypto_core_curve25519_ref10_ge_p3_tobytes
.LVL42:
	.loc 1 107 0
	addi	a11, sp, 96
	addi	a10, sp, 64
	call8	crypto_verify_32
.LVL43:
	mov.n	a6, a10
	bnez.n	a10, .L13
	.loc 1 110 0
	s32i.n	a2, a3, 0
	s32i.n	a5, a3, 4
	.loc 1 111 0
	mov.n	a12, a2
	addi	a11, a4, 32
	movi	a8, 0x424
.LVL44:
	add.n	a8, a8, sp
.LVL45:
	l32i.n	a10, a8, 0
	call8	memmove
.LVL46:
	.loc 1 113 0
	j	.L6
.LVL47:
.L9:
	.loc 1 87 0
	movi.n	a6, -1
.LVL48:
	j	.L6
.LVL49:
.L10:
	.loc 1 91 0
	movi.n	a6, -1
.LVL50:
	j	.L6
.LVL51:
.L11:
	.loc 1 95 0
	movi.n	a6, -1
.LVL52:
	j	.L6
.LVL53:
.L12:
	movi.n	a6, -1
.LVL54:
	j	.L6
.L13:
	.loc 1 108 0
	movi.n	a6, -1
.L6:
	.loc 1 114 0
	mov.n	a2, a6
	retw.n
.LFE2:
	.size	crypto_sign_edwards25519sha512batch_open, .-crypto_sign_edwards25519sha512batch_open
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
	.uleb128 0x2f0
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
	.uleb128 0x450
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_hash_sha512.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/private/curve25519_ref10.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/randombytes.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_verify_32.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x8fb
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0xc
	.4byte	.LASF56
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x12
	.4byte	0x3a
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x19
	.4byte	0x5a
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x1e
	.4byte	0x21
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x15
	.4byte	0x2f
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x2c
	.4byte	0x4f
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x39
	.4byte	0x6f
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0xd8
	.4byte	0x61
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3a
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0xd0
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
	.4byte	0x109
	.byte	0x40
	.uleb128 0x8
	.string	"buf"
	.byte	0x5
	.byte	0x1b
	.4byte	0x119
	.byte	0x50
	.byte	0
	.uleb128 0x9
	.4byte	0x90
	.4byte	0x109
	.uleb128 0xa
	.4byte	0xad
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.4byte	0x90
	.4byte	0x119
	.uleb128 0xa
	.4byte	0xad
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.4byte	0x7a
	.4byte	0x129
	.uleb128 0xa
	.4byte	0xad
	.byte	0x7f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x5
	.byte	0x1c
	.4byte	0xc8
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x6
	.byte	0x8
	.4byte	0x13f
	.uleb128 0x9
	.4byte	0x85
	.4byte	0x14f
	.uleb128 0xa
	.4byte	0xad
	.byte	0x9
	.byte	0
	.uleb128 0xb
	.byte	0x78
	.byte	0x6
	.byte	0x44
	.4byte	0x176
	.uleb128 0x8
	.string	"X"
	.byte	0x6
	.byte	0x45
	.4byte	0x134
	.byte	0
	.uleb128 0x8
	.string	"Y"
	.byte	0x6
	.byte	0x46
	.4byte	0x134
	.byte	0x28
	.uleb128 0x8
	.string	"Z"
	.byte	0x6
	.byte	0x47
	.4byte	0x134
	.byte	0x50
	.byte	0
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x6
	.byte	0x48
	.4byte	0x14f
	.uleb128 0xb
	.byte	0xa0
	.byte	0x6
	.byte	0x4b
	.4byte	0x1b2
	.uleb128 0x8
	.string	"X"
	.byte	0x6
	.byte	0x4c
	.4byte	0x134
	.byte	0
	.uleb128 0x8
	.string	"Y"
	.byte	0x6
	.byte	0x4d
	.4byte	0x134
	.byte	0x28
	.uleb128 0x8
	.string	"Z"
	.byte	0x6
	.byte	0x4e
	.4byte	0x134
	.byte	0x50
	.uleb128 0x8
	.string	"T"
	.byte	0x6
	.byte	0x4f
	.4byte	0x134
	.byte	0x78
	.byte	0
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x6
	.byte	0x50
	.4byte	0x181
	.uleb128 0xb
	.byte	0xa0
	.byte	0x6
	.byte	0x53
	.4byte	0x1ee
	.uleb128 0x8
	.string	"X"
	.byte	0x6
	.byte	0x54
	.4byte	0x134
	.byte	0
	.uleb128 0x8
	.string	"Y"
	.byte	0x6
	.byte	0x55
	.4byte	0x134
	.byte	0x28
	.uleb128 0x8
	.string	"Z"
	.byte	0x6
	.byte	0x56
	.4byte	0x134
	.byte	0x50
	.uleb128 0x8
	.string	"T"
	.byte	0x6
	.byte	0x57
	.4byte	0x134
	.byte	0x78
	.byte	0
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x6
	.byte	0x58
	.4byte	0x1bd
	.uleb128 0xb
	.byte	0xa0
	.byte	0x6
	.byte	0x62
	.4byte	0x230
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x6
	.byte	0x63
	.4byte	0x134
	.byte	0
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x6
	.byte	0x64
	.4byte	0x134
	.byte	0x28
	.uleb128 0x8
	.string	"Z"
	.byte	0x6
	.byte	0x65
	.4byte	0x134
	.byte	0x50
	.uleb128 0x8
	.string	"T2d"
	.byte	0x6
	.byte	0x66
	.4byte	0x134
	.byte	0x78
	.byte	0
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x6
	.byte	0x67
	.4byte	0x1f9
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x1
	.byte	0xe
	.4byte	0x5a
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2e2
	.uleb128 0xd
	.string	"pk"
	.byte	0x1
	.byte	0xe
	.4byte	0xbb
	.4byte	.LLST0
	.uleb128 0xe
	.string	"sk"
	.byte	0x1
	.byte	0xf
	.4byte	0xbb
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.string	"A"
	.byte	0x1
	.byte	0x11
	.4byte	0x1b2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x10
	.4byte	.LVL1
	.4byte	0x82f
	.4byte	0x295
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.4byte	.LVL2
	.4byte	0x83a
	.4byte	0x2af
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL3
	.4byte	0x845
	.4byte	0x2ca
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL4
	.4byte	0x850
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x1
	.byte	0x1f
	.4byte	0x5a
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5a4
	.uleb128 0xd
	.string	"sm"
	.byte	0x1
	.byte	0x1f
	.4byte	0xbb
	.4byte	.LLST1
	.uleb128 0x13
	.4byte	.LASF30
	.byte	0x1
	.byte	0x20
	.4byte	0x5a4
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xd
	.string	"m"
	.byte	0x1
	.byte	0x21
	.4byte	0x5aa
	.4byte	.LLST2
	.uleb128 0x13
	.4byte	.LASF31
	.byte	0x1
	.byte	0x22
	.4byte	0x21
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xe
	.string	"sk"
	.byte	0x1
	.byte	0x23
	.4byte	0x5aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xf
	.string	"hs"
	.byte	0x1
	.byte	0x25
	.4byte	0x129
	.uleb128 0x3
	.byte	0x91
	.sleb128 -752
	.uleb128 0x14
	.4byte	.LASF32
	.byte	0x1
	.byte	0x26
	.4byte	0x5b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -544
	.uleb128 0x14
	.4byte	.LASF33
	.byte	0x1
	.byte	0x27
	.4byte	0x5b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -480
	.uleb128 0xf
	.string	"sig"
	.byte	0x1
	.byte	0x28
	.4byte	0x5b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0xf
	.string	"A"
	.byte	0x1
	.byte	0x29
	.4byte	0x1b2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0xf
	.string	"R"
	.byte	0x1
	.byte	0x2a
	.4byte	0x1b2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x10
	.4byte	.LVL7
	.4byte	0x85b
	.4byte	0x3ac
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -752
	.byte	0
	.uleb128 0x10
	.4byte	.LVL8
	.4byte	0x866
	.4byte	0x3c7
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -752
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 32
	.byte	0
	.uleb128 0x10
	.4byte	.LVL9
	.4byte	0x866
	.4byte	0x3e2
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -752
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL10
	.4byte	0x871
	.4byte	0x3fe
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -752
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -544
	.byte	0
	.uleb128 0x10
	.4byte	.LVL11
	.4byte	0x845
	.4byte	0x41a
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.4byte	.LVL12
	.4byte	0x850
	.4byte	0x435
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.byte	0
	.uleb128 0x10
	.4byte	.LVL13
	.4byte	0x87c
	.4byte	0x44a
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -544
	.byte	0
	.uleb128 0x10
	.4byte	.LVL14
	.4byte	0x845
	.4byte	0x466
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -544
	.byte	0
	.uleb128 0x10
	.4byte	.LVL15
	.4byte	0x850
	.4byte	0x481
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 -32
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.uleb128 0x10
	.4byte	.LVL16
	.4byte	0x85b
	.4byte	0x496
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -752
	.byte	0
	.uleb128 0x10
	.4byte	.LVL17
	.4byte	0x866
	.4byte	0x4b1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -752
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 -32
	.byte	0
	.uleb128 0x10
	.4byte	.LVL18
	.4byte	0x866
	.4byte	0x4cc
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -752
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL19
	.4byte	0x871
	.4byte	0x4e8
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -752
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -480
	.byte	0
	.uleb128 0x10
	.4byte	.LVL20
	.4byte	0x87c
	.4byte	0x4fd
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -480
	.byte	0
	.uleb128 0x10
	.4byte	.LVL21
	.4byte	0x887
	.4byte	0x526
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -480
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -544
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.4byte	.LVL22
	.4byte	0x892
	.4byte	0x541
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -480
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x10
	.4byte	.LVL23
	.4byte	0x89d
	.4byte	0x561
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 32
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL25
	.4byte	0x8a8
	.4byte	0x581
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 -32
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL26
	.4byte	0x8a8
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x72
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x21
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5b0
	.uleb128 0x15
	.4byte	0x3a
	.uleb128 0x9
	.4byte	0x3a
	.4byte	0x5c5
	.uleb128 0xa
	.4byte	0xad
	.byte	0x3f
	.byte	0
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x1
	.byte	0x45
	.4byte	0x5a
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x81f
	.uleb128 0xd
	.string	"m"
	.byte	0x1
	.byte	0x45
	.4byte	0xbb
	.4byte	.LLST3
	.uleb128 0x13
	.4byte	.LASF35
	.byte	0x1
	.byte	0x46
	.4byte	0x5a4
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.string	"sm"
	.byte	0x1
	.byte	0x47
	.4byte	0x5aa
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x16
	.4byte	.LASF36
	.byte	0x1
	.byte	0x48
	.4byte	0x21
	.4byte	.LLST4
	.uleb128 0xe
	.string	"pk"
	.byte	0x1
	.byte	0x49
	.4byte	0x5aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xf
	.string	"h"
	.byte	0x1
	.byte	0x4b
	.4byte	0x5b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1104
	.uleb128 0xf
	.string	"t1"
	.byte	0x1
	.byte	0x4c
	.4byte	0x81f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1040
	.uleb128 0xf
	.string	"t2"
	.byte	0x1
	.byte	0x4c
	.4byte	0x81f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1008
	.uleb128 0x17
	.4byte	.LASF31
	.byte	0x1
	.byte	0x4d
	.4byte	0x21
	.uleb128 0xf
	.string	"Ai"
	.byte	0x1
	.byte	0x4e
	.4byte	0x230
	.uleb128 0x3
	.byte	0x91
	.sleb128 -976
	.uleb128 0xf
	.string	"csa"
	.byte	0x1
	.byte	0x4f
	.4byte	0x1ee
	.uleb128 0x3
	.byte	0x91
	.sleb128 -816
	.uleb128 0xf
	.string	"cs"
	.byte	0x1
	.byte	0x50
	.4byte	0x176
	.uleb128 0x3
	.byte	0x91
	.sleb128 -656
	.uleb128 0xf
	.string	"A"
	.byte	0x1
	.byte	0x51
	.4byte	0x1b2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -536
	.uleb128 0xf
	.string	"R"
	.byte	0x1
	.byte	0x52
	.4byte	0x1b2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0xf
	.string	"cs3"
	.byte	0x1
	.byte	0x53
	.4byte	0x1b2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x10
	.4byte	.LVL31
	.4byte	0x8b1
	.4byte	0x6c4
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -536
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.4byte	.LVL32
	.4byte	0x8b1
	.4byte	0x6df
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL33
	.4byte	0x8bc
	.4byte	0x6fb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -976
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -536
	.byte	0
	.uleb128 0x10
	.4byte	.LVL35
	.4byte	0x83a
	.4byte	0x716
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1104
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL36
	.4byte	0x87c
	.4byte	0x72b
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1104
	.byte	0
	.uleb128 0x10
	.4byte	.LVL37
	.4byte	0x8c7
	.4byte	0x74e
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1104
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.byte	0
	.uleb128 0x10
	.4byte	.LVL38
	.4byte	0x8d2
	.4byte	0x771
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -816
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -976
	.byte	0
	.uleb128 0x10
	.4byte	.LVL39
	.4byte	0x8dd
	.4byte	0x78d
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -656
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -816
	.byte	0
	.uleb128 0x10
	.4byte	.LVL40
	.4byte	0x8e8
	.4byte	0x7a9
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1040
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -656
	.byte	0
	.uleb128 0x10
	.4byte	.LVL41
	.4byte	0x845
	.4byte	0x7c9
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x7
	.byte	0x72
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x20
	.byte	0
	.uleb128 0x10
	.4byte	.LVL42
	.4byte	0x850
	.4byte	0x7e5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1008
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.byte	0
	.uleb128 0x10
	.4byte	.LVL43
	.4byte	0x8f3
	.4byte	0x801
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1040
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1008
	.byte	0
	.uleb128 0x12
	.4byte	.LVL46
	.4byte	0x89d
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 32
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x3a
	.4byte	0x82f
	.uleb128 0xa
	.4byte	0xad
	.byte	0x1f
	.byte	0
	.uleb128 0x18
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x7
	.byte	0x21
	.uleb128 0x18
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x5
	.byte	0x26
	.uleb128 0x18
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x6
	.byte	0x91
	.uleb128 0x18
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x6
	.byte	0x80
	.uleb128 0x18
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x5
	.byte	0x2a
	.uleb128 0x18
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x5
	.byte	0x2d
	.uleb128 0x18
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x5
	.byte	0x32
	.uleb128 0x18
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x6
	.byte	0x9d
	.uleb128 0x18
	.4byte	.LASF45
	.4byte	.LASF45
	.byte	0x6
	.byte	0x9e
	.uleb128 0x18
	.4byte	.LASF46
	.4byte	.LASF46
	.byte	0x8
	.byte	0x16
	.uleb128 0x18
	.4byte	.LASF47
	.4byte	.LASF47
	.byte	0x9
	.byte	0x18
	.uleb128 0x19
	.4byte	.LASF57
	.4byte	.LASF57
	.uleb128 0x18
	.4byte	.LASF48
	.4byte	.LASF48
	.byte	0x6
	.byte	0x81
	.uleb128 0x18
	.4byte	.LASF49
	.4byte	.LASF49
	.byte	0x6
	.byte	0x87
	.uleb128 0x18
	.4byte	.LASF50
	.4byte	.LASF50
	.byte	0x6
	.byte	0x93
	.uleb128 0x18
	.4byte	.LASF51
	.4byte	.LASF51
	.byte	0x6
	.byte	0x8f
	.uleb128 0x18
	.4byte	.LASF52
	.4byte	.LASF52
	.byte	0x6
	.byte	0x88
	.uleb128 0x18
	.4byte	.LASF53
	.4byte	.LASF53
	.byte	0x6
	.byte	0x7f
	.uleb128 0x18
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0xa
	.byte	0x10
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL6
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL24
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x75
	.sleb128 0
	.4byte	.LVL30
	.4byte	.LVL44
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x9
	.byte	0x91
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0x450
	.byte	0x1c
	.4byte	.LVL45
	.4byte	.LFE2
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL28
	.4byte	.LVL34
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL34
	.4byte	.LVL47
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x21
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x21
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x21
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x21
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL54
	.4byte	.LFE2
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF19:
	.string	"count"
.LASF54:
	.string	"crypto_verify_32"
.LASF36:
	.string	"smlen"
.LASF37:
	.string	"randombytes_buf"
.LASF13:
	.string	"size_t"
.LASF12:
	.string	"uint64_t"
.LASF5:
	.string	"__uint8_t"
.LASF25:
	.string	"YplusX"
.LASF0:
	.string	"long long unsigned int"
.LASF20:
	.string	"crypto_hash_sha512_state"
.LASF40:
	.string	"crypto_core_curve25519_ref10_ge_p3_tobytes"
.LASF8:
	.string	"long long int"
.LASF1:
	.string	"signed char"
.LASF18:
	.string	"state"
.LASF14:
	.string	"long int"
.LASF26:
	.string	"YminusX"
.LASF57:
	.string	"memcpy"
.LASF56:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_sign/ed25519/ref10/obsolete.c"
.LASF30:
	.string	"smlen_p"
.LASF43:
	.string	"crypto_hash_sha512_final"
.LASF7:
	.string	"unsigned int"
.LASF16:
	.string	"long unsigned int"
.LASF50:
	.string	"crypto_core_curve25519_ref10_ge_scalarmult_vartime"
.LASF4:
	.string	"short unsigned int"
.LASF33:
	.string	"hram"
.LASF29:
	.string	"crypto_sign_edwards25519sha512batch"
.LASF31:
	.string	"mlen"
.LASF53:
	.string	"crypto_core_curve25519_ref10_ge_tobytes"
.LASF24:
	.string	"crypto_core_curve25519_ref10_ge_p1p1"
.LASF15:
	.string	"sizetype"
.LASF42:
	.string	"crypto_hash_sha512_update"
.LASF49:
	.string	"crypto_core_curve25519_ref10_ge_p3_to_cached"
.LASF28:
	.string	"crypto_sign_edwards25519sha512batch_keypair"
.LASF22:
	.string	"crypto_core_curve25519_ref10_ge_p2"
.LASF23:
	.string	"crypto_core_curve25519_ref10_ge_p3"
.LASF46:
	.string	"sodium_memzero"
.LASF9:
	.string	"__uint64_t"
.LASF11:
	.string	"int32_t"
.LASF2:
	.string	"unsigned char"
.LASF21:
	.string	"crypto_core_curve25519_ref10_fe"
.LASF55:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF3:
	.string	"short int"
.LASF52:
	.string	"crypto_core_curve25519_ref10_ge_p1p1_to_p2"
.LASF39:
	.string	"crypto_core_curve25519_ref10_ge_scalarmult_base"
.LASF32:
	.string	"nonce"
.LASF27:
	.string	"crypto_core_curve25519_ref10_ge_cached"
.LASF34:
	.string	"crypto_sign_edwards25519sha512batch_open"
.LASF17:
	.string	"char"
.LASF6:
	.string	"__int32_t"
.LASF35:
	.string	"mlen_p"
.LASF51:
	.string	"crypto_core_curve25519_ref10_ge_add"
.LASF47:
	.string	"memmove"
.LASF10:
	.string	"uint8_t"
.LASF44:
	.string	"crypto_core_curve25519_ref10_sc_reduce"
.LASF48:
	.string	"crypto_core_curve25519_ref10_ge_frombytes_negate_vartime"
.LASF45:
	.string	"crypto_core_curve25519_ref10_sc_muladd"
.LASF38:
	.string	"crypto_hash_sha512"
.LASF41:
	.string	"crypto_hash_sha512_init"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
