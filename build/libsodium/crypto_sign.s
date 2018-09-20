	.file	"crypto_sign.c"
	.text
.Ltext0:
	.section	.text.crypto_sign_statebytes,"ax",@progbits
	.align	4
	.global	crypto_sign_statebytes
	.type	crypto_sign_statebytes, @function
crypto_sign_statebytes:
.LFB0:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_sign/crypto_sign.c"
	.loc 1 6 0
	entry	sp, 32
.LCFI0:
	.loc 1 8 0
	movi	a2, 0xd0
	retw.n
.LFE0:
	.size	crypto_sign_statebytes, .-crypto_sign_statebytes
	.section	.text.crypto_sign_bytes,"ax",@progbits
	.align	4
	.global	crypto_sign_bytes
	.type	crypto_sign_bytes, @function
crypto_sign_bytes:
.LFB1:
	.loc 1 12 0
	entry	sp, 32
.LCFI1:
	.loc 1 14 0
	movi.n	a2, 0x40
	retw.n
.LFE1:
	.size	crypto_sign_bytes, .-crypto_sign_bytes
	.section	.text.crypto_sign_seedbytes,"ax",@progbits
	.align	4
	.global	crypto_sign_seedbytes
	.type	crypto_sign_seedbytes, @function
crypto_sign_seedbytes:
.LFB2:
	.loc 1 18 0
	entry	sp, 32
.LCFI2:
	.loc 1 20 0
	movi.n	a2, 0x20
	retw.n
.LFE2:
	.size	crypto_sign_seedbytes, .-crypto_sign_seedbytes
	.section	.text.crypto_sign_publickeybytes,"ax",@progbits
	.align	4
	.global	crypto_sign_publickeybytes
	.type	crypto_sign_publickeybytes, @function
crypto_sign_publickeybytes:
.LFB3:
	.loc 1 24 0
	entry	sp, 32
.LCFI3:
	.loc 1 26 0
	movi.n	a2, 0x20
	retw.n
.LFE3:
	.size	crypto_sign_publickeybytes, .-crypto_sign_publickeybytes
	.section	.text.crypto_sign_secretkeybytes,"ax",@progbits
	.align	4
	.global	crypto_sign_secretkeybytes
	.type	crypto_sign_secretkeybytes, @function
crypto_sign_secretkeybytes:
.LFB4:
	.loc 1 30 0
	entry	sp, 32
.LCFI4:
	.loc 1 32 0
	movi.n	a2, 0x40
	retw.n
.LFE4:
	.size	crypto_sign_secretkeybytes, .-crypto_sign_secretkeybytes
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"ed25519"
	.section	.text.crypto_sign_primitive,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.align	4
	.global	crypto_sign_primitive
	.type	crypto_sign_primitive, @function
crypto_sign_primitive:
.LFB5:
	.loc 1 36 0
	entry	sp, 32
.LCFI5:
	.loc 1 38 0
	l32r	a2, .LC1
	retw.n
.LFE5:
	.size	crypto_sign_primitive, .-crypto_sign_primitive
	.section	.text.crypto_sign_seed_keypair,"ax",@progbits
	.align	4
	.global	crypto_sign_seed_keypair
	.type	crypto_sign_seed_keypair, @function
crypto_sign_seed_keypair:
.LFB6:
	.loc 1 43 0
.LVL0:
	entry	sp, 32
.LCFI6:
	.loc 1 44 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_sign_ed25519_seed_keypair
.LVL1:
	.loc 1 45 0
	mov.n	a2, a10
.LVL2:
	retw.n
.LFE6:
	.size	crypto_sign_seed_keypair, .-crypto_sign_seed_keypair
	.section	.text.crypto_sign_keypair,"ax",@progbits
	.align	4
	.global	crypto_sign_keypair
	.type	crypto_sign_keypair, @function
crypto_sign_keypair:
.LFB7:
	.loc 1 49 0
.LVL3:
	entry	sp, 32
.LCFI7:
	.loc 1 50 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_sign_ed25519_keypair
.LVL4:
	.loc 1 51 0
	mov.n	a2, a10
.LVL5:
	retw.n
.LFE7:
	.size	crypto_sign_keypair, .-crypto_sign_keypair
	.section	.text.crypto_sign,"ax",@progbits
	.align	4
	.global	crypto_sign
	.type	crypto_sign, @function
crypto_sign:
.LFB8:
	.loc 1 57 0
.LVL6:
	entry	sp, 48
.LCFI8:
	mov.n	a15, a7
	.loc 1 58 0
	l32i.n	a8, sp, 48
	s32i.n	a8, sp, 0
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_sign_ed25519
.LVL7:
	.loc 1 59 0
	mov.n	a2, a10
.LVL8:
	retw.n
.LFE8:
	.size	crypto_sign, .-crypto_sign
	.section	.text.crypto_sign_open,"ax",@progbits
	.align	4
	.global	crypto_sign_open
	.type	crypto_sign_open, @function
crypto_sign_open:
.LFB9:
	.loc 1 65 0
.LVL9:
	entry	sp, 48
.LCFI9:
	mov.n	a15, a7
	.loc 1 66 0
	l32i.n	a8, sp, 48
	s32i.n	a8, sp, 0
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_sign_ed25519_open
.LVL10:
	.loc 1 67 0
	mov.n	a2, a10
.LVL11:
	retw.n
.LFE9:
	.size	crypto_sign_open, .-crypto_sign_open
	.section	.text.crypto_sign_detached,"ax",@progbits
	.align	4
	.global	crypto_sign_detached
	.type	crypto_sign_detached, @function
crypto_sign_detached:
.LFB10:
	.loc 1 73 0
.LVL12:
	entry	sp, 48
.LCFI10:
	mov.n	a15, a7
	.loc 1 74 0
	l32i.n	a8, sp, 48
	s32i.n	a8, sp, 0
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_sign_ed25519_detached
.LVL13:
	.loc 1 75 0
	mov.n	a2, a10
.LVL14:
	retw.n
.LFE10:
	.size	crypto_sign_detached, .-crypto_sign_detached
	.section	.text.crypto_sign_verify_detached,"ax",@progbits
	.align	4
	.global	crypto_sign_verify_detached
	.type	crypto_sign_verify_detached, @function
crypto_sign_verify_detached:
.LFB11:
	.loc 1 80 0
.LVL15:
	entry	sp, 32
.LCFI11:
	.loc 1 81 0
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_sign_ed25519_verify_detached
.LVL16:
	.loc 1 82 0
	mov.n	a2, a10
.LVL17:
	retw.n
.LFE11:
	.size	crypto_sign_verify_detached, .-crypto_sign_verify_detached
	.section	.text.crypto_sign_init,"ax",@progbits
	.align	4
	.global	crypto_sign_init
	.type	crypto_sign_init, @function
crypto_sign_init:
.LFB12:
	.loc 1 86 0
.LVL18:
	entry	sp, 32
.LCFI12:
	.loc 1 87 0
	mov.n	a10, a2
	call8	crypto_sign_ed25519ph_init
.LVL19:
	.loc 1 88 0
	mov.n	a2, a10
.LVL20:
	retw.n
.LFE12:
	.size	crypto_sign_init, .-crypto_sign_init
	.section	.text.crypto_sign_update,"ax",@progbits
	.align	4
	.global	crypto_sign_update
	.type	crypto_sign_update, @function
crypto_sign_update:
.LFB13:
	.loc 1 93 0
.LVL21:
	entry	sp, 32
.LCFI13:
	.loc 1 94 0
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_sign_ed25519ph_update
.LVL22:
	.loc 1 95 0
	mov.n	a2, a10
.LVL23:
	retw.n
.LFE13:
	.size	crypto_sign_update, .-crypto_sign_update
	.section	.text.crypto_sign_final_create,"ax",@progbits
	.align	4
	.global	crypto_sign_final_create
	.type	crypto_sign_final_create, @function
crypto_sign_final_create:
.LFB14:
	.loc 1 100 0
.LVL24:
	entry	sp, 32
.LCFI14:
	.loc 1 101 0
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_sign_ed25519ph_final_create
.LVL25:
	.loc 1 102 0
	mov.n	a2, a10
.LVL26:
	retw.n
.LFE14:
	.size	crypto_sign_final_create, .-crypto_sign_final_create
	.section	.text.crypto_sign_final_verify,"ax",@progbits
	.align	4
	.global	crypto_sign_final_verify
	.type	crypto_sign_final_verify, @function
crypto_sign_final_verify:
.LFB15:
	.loc 1 107 0
.LVL27:
	entry	sp, 32
.LCFI15:
	.loc 1 108 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_sign_ed25519ph_final_verify
.LVL28:
	.loc 1 109 0
	mov.n	a2, a10
.LVL29:
	retw.n
.LFE15:
	.size	crypto_sign_final_verify, .-crypto_sign_final_verify
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
	.uleb128 0x30
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
	.uleb128 0x30
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
	.uleb128 0x30
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI11-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI12-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI13-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI14-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI15-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_hash_sha512.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_sign_ed25519.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_sign.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x65a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0xc
	.4byte	.LASF54
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
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb8
	.uleb128 0x6
	.4byte	0xab
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0xd0
	.byte	0x5
	.byte	0x18
	.4byte	0xee
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x5
	.byte	0x19
	.4byte	0xee
	.byte	0
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x5
	.byte	0x1a
	.4byte	0xfe
	.byte	0x40
	.uleb128 0x9
	.string	"buf"
	.byte	0x5
	.byte	0x1b
	.4byte	0x10e
	.byte	0x50
	.byte	0
	.uleb128 0xa
	.4byte	0x85
	.4byte	0xfe
	.uleb128 0xb
	.4byte	0x97
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.4byte	0x85
	.4byte	0x10e
	.uleb128 0xb
	.4byte	0x97
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	0x7a
	.4byte	0x11e
	.uleb128 0xb
	.4byte	0x97
	.byte	0x7f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x1c
	.4byte	0xbd
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0xd0
	.byte	0x6
	.byte	0xf
	.4byte	0x141
	.uleb128 0x9
	.string	"hs"
	.byte	0x6
	.byte	0x10
	.4byte	0x11e
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x6
	.byte	0x11
	.4byte	0x129
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x7
	.byte	0x17
	.4byte	0x141
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x1
	.byte	0x5
	.4byte	0x28
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x1
	.byte	0xb
	.4byte	0x28
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x1
	.byte	0x11
	.4byte	0x28
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x1
	.byte	0x17
	.4byte	0x28
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x1
	.byte	0x1d
	.4byte	0x28
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x1
	.byte	0x23
	.4byte	0xb2
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x1
	.byte	0x29
	.4byte	0x21
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x232
	.uleb128 0xe
	.string	"pk"
	.byte	0x1
	.byte	0x29
	.4byte	0xa5
	.4byte	.LLST0
	.uleb128 0xf
	.string	"sk"
	.byte	0x1
	.byte	0x29
	.4byte	0xa5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x10
	.4byte	.LASF27
	.byte	0x1
	.byte	0x2a
	.4byte	0x232
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x11
	.4byte	.LVL1
	.4byte	0x5ef
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
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x238
	.uleb128 0x6
	.4byte	0x53
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x1
	.byte	0x30
	.4byte	0x21
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x287
	.uleb128 0xe
	.string	"pk"
	.byte	0x1
	.byte	0x30
	.4byte	0xa5
	.4byte	.LLST1
	.uleb128 0xf
	.string	"sk"
	.byte	0x1
	.byte	0x30
	.4byte	0xa5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x11
	.4byte	.LVL4
	.4byte	0x5fa
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
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x1
	.byte	0x36
	.4byte	0x21
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x30a
	.uleb128 0xe
	.string	"sm"
	.byte	0x1
	.byte	0x36
	.4byte	0xa5
	.4byte	.LLST2
	.uleb128 0x10
	.4byte	.LASF31
	.byte	0x1
	.byte	0x36
	.4byte	0x30a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.string	"m"
	.byte	0x1
	.byte	0x37
	.4byte	0x232
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x10
	.4byte	.LASF32
	.byte	0x1
	.byte	0x37
	.4byte	0x73
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xf
	.string	"sk"
	.byte	0x1
	.byte	0x38
	.4byte	0x232
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x11
	.4byte	.LVL7
	.4byte	0x605
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
	.byte	0x74
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x73
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x1
	.byte	0x3e
	.4byte	0x21
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x393
	.uleb128 0xe
	.string	"m"
	.byte	0x1
	.byte	0x3e
	.4byte	0xa5
	.4byte	.LLST3
	.uleb128 0x10
	.4byte	.LASF34
	.byte	0x1
	.byte	0x3e
	.4byte	0x30a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.string	"sm"
	.byte	0x1
	.byte	0x3f
	.4byte	0x232
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x10
	.4byte	.LASF35
	.byte	0x1
	.byte	0x3f
	.4byte	0x73
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xf
	.string	"pk"
	.byte	0x1
	.byte	0x40
	.4byte	0x232
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x11
	.4byte	.LVL10
	.4byte	0x610
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
	.byte	0x74
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF36
	.byte	0x1
	.byte	0x46
	.4byte	0x21
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x417
	.uleb128 0xe
	.string	"sig"
	.byte	0x1
	.byte	0x46
	.4byte	0xa5
	.4byte	.LLST4
	.uleb128 0x10
	.4byte	.LASF37
	.byte	0x1
	.byte	0x46
	.4byte	0x30a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.string	"m"
	.byte	0x1
	.byte	0x47
	.4byte	0x232
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x10
	.4byte	.LASF32
	.byte	0x1
	.byte	0x47
	.4byte	0x73
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xf
	.string	"sk"
	.byte	0x1
	.byte	0x48
	.4byte	0x232
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x11
	.4byte	.LVL13
	.4byte	0x61b
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
	.byte	0x74
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x1
	.byte	0x4e
	.4byte	0x21
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x485
	.uleb128 0xe
	.string	"sig"
	.byte	0x1
	.byte	0x4e
	.4byte	0x232
	.4byte	.LLST5
	.uleb128 0xf
	.string	"m"
	.byte	0x1
	.byte	0x4e
	.4byte	0x232
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x10
	.4byte	.LASF32
	.byte	0x1
	.byte	0x4f
	.4byte	0x73
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xf
	.string	"pk"
	.byte	0x1
	.byte	0x4f
	.4byte	0x232
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x11
	.4byte	.LVL16
	.4byte	0x626
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
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x1
	.byte	0x55
	.4byte	0x21
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4be
	.uleb128 0x13
	.4byte	.LASF16
	.byte	0x1
	.byte	0x55
	.4byte	0x4be
	.4byte	.LLST6
	.uleb128 0x11
	.4byte	.LVL19
	.4byte	0x631
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x14c
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0x1
	.byte	0x5b
	.4byte	0x21
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x520
	.uleb128 0x13
	.4byte	.LASF16
	.byte	0x1
	.byte	0x5b
	.4byte	0x4be
	.4byte	.LLST7
	.uleb128 0xf
	.string	"m"
	.byte	0x1
	.byte	0x5b
	.4byte	0x232
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x10
	.4byte	.LASF32
	.byte	0x1
	.byte	0x5c
	.4byte	0x73
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LVL22
	.4byte	0x63c
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
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x1
	.byte	0x62
	.4byte	0x21
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x591
	.uleb128 0x13
	.4byte	.LASF16
	.byte	0x1
	.byte	0x62
	.4byte	0x4be
	.4byte	.LLST8
	.uleb128 0xf
	.string	"sig"
	.byte	0x1
	.byte	0x62
	.4byte	0xa5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x10
	.4byte	.LASF37
	.byte	0x1
	.byte	0x63
	.4byte	0x30a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xf
	.string	"sk"
	.byte	0x1
	.byte	0x63
	.4byte	0x232
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x11
	.4byte	.LVL25
	.4byte	0x647
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
	.byte	0x74
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x1
	.byte	0x69
	.4byte	0x21
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5ef
	.uleb128 0x13
	.4byte	.LASF16
	.byte	0x1
	.byte	0x69
	.4byte	0x4be
	.4byte	.LLST9
	.uleb128 0xf
	.string	"sig"
	.byte	0x1
	.byte	0x69
	.4byte	0xa5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.string	"pk"
	.byte	0x1
	.byte	0x6a
	.4byte	0x232
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x11
	.4byte	.LVL28
	.4byte	0x652
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
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x6
	.byte	0x43
	.uleb128 0x14
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x6
	.byte	0x40
	.uleb128 0x14
	.4byte	.LASF45
	.4byte	.LASF45
	.byte	0x6
	.byte	0x27
	.uleb128 0x14
	.4byte	.LASF46
	.4byte	.LASF46
	.byte	0x6
	.byte	0x2c
	.uleb128 0x14
	.4byte	.LASF47
	.4byte	.LASF47
	.byte	0x6
	.byte	0x32
	.uleb128 0x14
	.4byte	.LASF48
	.4byte	.LASF48
	.byte	0x6
	.byte	0x39
	.uleb128 0x14
	.4byte	.LASF49
	.4byte	.LASF49
	.byte	0x6
	.byte	0x57
	.uleb128 0x14
	.4byte	.LASF50
	.4byte	.LASF50
	.byte	0x6
	.byte	0x5a
	.uleb128 0x14
	.4byte	.LASF51
	.4byte	.LASF51
	.byte	0x6
	.byte	0x5f
	.uleb128 0x14
	.4byte	.LASF52
	.4byte	.LASF52
	.byte	0x6
	.byte	0x65
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.4byte	.LFE6
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
	.4byte	.LFE7
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
	.4byte	.LFE8
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
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x94
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
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
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
	.4byte	.LFB11
	.4byte	.LFE11
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
.LASF4:
	.string	"__uint8_t"
.LASF3:
	.string	"size_t"
.LASF39:
	.string	"crypto_sign_init"
.LASF16:
	.string	"state"
.LASF46:
	.string	"crypto_sign_ed25519_open"
.LASF17:
	.string	"count"
.LASF32:
	.string	"mlen"
.LASF30:
	.string	"crypto_sign"
.LASF10:
	.string	"uint8_t"
.LASF38:
	.string	"crypto_sign_verify_detached"
.LASF19:
	.string	"crypto_sign_ed25519ph_state"
.LASF11:
	.string	"uint64_t"
.LASF53:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF48:
	.string	"crypto_sign_ed25519_verify_detached"
.LASF51:
	.string	"crypto_sign_ed25519ph_final_create"
.LASF43:
	.string	"crypto_sign_ed25519_seed_keypair"
.LASF5:
	.string	"unsigned char"
.LASF54:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_sign/crypto_sign.c"
.LASF1:
	.string	"short unsigned int"
.LASF25:
	.string	"crypto_sign_secretkeybytes"
.LASF28:
	.string	"crypto_sign_seed_keypair"
.LASF36:
	.string	"crypto_sign_detached"
.LASF14:
	.string	"long unsigned int"
.LASF18:
	.string	"crypto_hash_sha512_state"
.LASF47:
	.string	"crypto_sign_ed25519_detached"
.LASF52:
	.string	"crypto_sign_ed25519ph_final_verify"
.LASF50:
	.string	"crypto_sign_ed25519ph_update"
.LASF34:
	.string	"mlen_p"
.LASF29:
	.string	"crypto_sign_keypair"
.LASF37:
	.string	"siglen_p"
.LASF35:
	.string	"smlen"
.LASF0:
	.string	"unsigned int"
.LASF9:
	.string	"long long unsigned int"
.LASF22:
	.string	"crypto_sign_bytes"
.LASF40:
	.string	"crypto_sign_update"
.LASF41:
	.string	"crypto_sign_final_create"
.LASF13:
	.string	"sizetype"
.LASF31:
	.string	"smlen_p"
.LASF7:
	.string	"long long int"
.LASF15:
	.string	"char"
.LASF45:
	.string	"crypto_sign_ed25519"
.LASF6:
	.string	"short int"
.LASF8:
	.string	"__uint64_t"
.LASF44:
	.string	"crypto_sign_ed25519_keypair"
.LASF27:
	.string	"seed"
.LASF33:
	.string	"crypto_sign_open"
.LASF12:
	.string	"long int"
.LASF21:
	.string	"crypto_sign_statebytes"
.LASF23:
	.string	"crypto_sign_seedbytes"
.LASF2:
	.string	"signed char"
.LASF49:
	.string	"crypto_sign_ed25519ph_init"
.LASF20:
	.string	"crypto_sign_state"
.LASF42:
	.string	"crypto_sign_final_verify"
.LASF26:
	.string	"crypto_sign_primitive"
.LASF24:
	.string	"crypto_sign_publickeybytes"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
