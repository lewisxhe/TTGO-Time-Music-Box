	.file	"crypto_box.c"
	.text
.Ltext0:
	.section	.text.crypto_box_seedbytes,"ax",@progbits
	.align	4
	.global	crypto_box_seedbytes
	.type	crypto_box_seedbytes, @function
crypto_box_seedbytes:
.LFB0:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_box/crypto_box.c"
	.loc 1 6 0
	entry	sp, 32
.LCFI0:
	.loc 1 8 0
	movi.n	a2, 0x20
	retw.n
.LFE0:
	.size	crypto_box_seedbytes, .-crypto_box_seedbytes
	.section	.text.crypto_box_publickeybytes,"ax",@progbits
	.align	4
	.global	crypto_box_publickeybytes
	.type	crypto_box_publickeybytes, @function
crypto_box_publickeybytes:
.LFB1:
	.loc 1 12 0
	entry	sp, 32
.LCFI1:
	.loc 1 14 0
	movi.n	a2, 0x20
	retw.n
.LFE1:
	.size	crypto_box_publickeybytes, .-crypto_box_publickeybytes
	.section	.text.crypto_box_secretkeybytes,"ax",@progbits
	.align	4
	.global	crypto_box_secretkeybytes
	.type	crypto_box_secretkeybytes, @function
crypto_box_secretkeybytes:
.LFB2:
	.loc 1 18 0
	entry	sp, 32
.LCFI2:
	.loc 1 20 0
	movi.n	a2, 0x20
	retw.n
.LFE2:
	.size	crypto_box_secretkeybytes, .-crypto_box_secretkeybytes
	.section	.text.crypto_box_beforenmbytes,"ax",@progbits
	.align	4
	.global	crypto_box_beforenmbytes
	.type	crypto_box_beforenmbytes, @function
crypto_box_beforenmbytes:
.LFB3:
	.loc 1 24 0
	entry	sp, 32
.LCFI3:
	.loc 1 26 0
	movi.n	a2, 0x20
	retw.n
.LFE3:
	.size	crypto_box_beforenmbytes, .-crypto_box_beforenmbytes
	.section	.text.crypto_box_noncebytes,"ax",@progbits
	.align	4
	.global	crypto_box_noncebytes
	.type	crypto_box_noncebytes, @function
crypto_box_noncebytes:
.LFB4:
	.loc 1 30 0
	entry	sp, 32
.LCFI4:
	.loc 1 32 0
	movi.n	a2, 0x18
	retw.n
.LFE4:
	.size	crypto_box_noncebytes, .-crypto_box_noncebytes
	.section	.text.crypto_box_zerobytes,"ax",@progbits
	.align	4
	.global	crypto_box_zerobytes
	.type	crypto_box_zerobytes, @function
crypto_box_zerobytes:
.LFB5:
	.loc 1 36 0
	entry	sp, 32
.LCFI5:
	.loc 1 38 0
	movi.n	a2, 0x20
	retw.n
.LFE5:
	.size	crypto_box_zerobytes, .-crypto_box_zerobytes
	.section	.text.crypto_box_boxzerobytes,"ax",@progbits
	.align	4
	.global	crypto_box_boxzerobytes
	.type	crypto_box_boxzerobytes, @function
crypto_box_boxzerobytes:
.LFB6:
	.loc 1 42 0
	entry	sp, 32
.LCFI6:
	.loc 1 44 0
	movi.n	a2, 0x10
	retw.n
.LFE6:
	.size	crypto_box_boxzerobytes, .-crypto_box_boxzerobytes
	.section	.text.crypto_box_macbytes,"ax",@progbits
	.align	4
	.global	crypto_box_macbytes
	.type	crypto_box_macbytes, @function
crypto_box_macbytes:
.LFB7:
	.loc 1 48 0
	entry	sp, 32
.LCFI7:
	.loc 1 50 0
	movi.n	a2, 0x10
	retw.n
.LFE7:
	.size	crypto_box_macbytes, .-crypto_box_macbytes
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"curve25519xsalsa20poly1305"
	.section	.text.crypto_box_primitive,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.align	4
	.global	crypto_box_primitive
	.type	crypto_box_primitive, @function
crypto_box_primitive:
.LFB8:
	.loc 1 54 0
	entry	sp, 32
.LCFI8:
	.loc 1 56 0
	l32r	a2, .LC1
	retw.n
.LFE8:
	.size	crypto_box_primitive, .-crypto_box_primitive
	.section	.text.crypto_box_seed_keypair,"ax",@progbits
	.align	4
	.global	crypto_box_seed_keypair
	.type	crypto_box_seed_keypair, @function
crypto_box_seed_keypair:
.LFB9:
	.loc 1 61 0
.LVL0:
	entry	sp, 32
.LCFI9:
	.loc 1 62 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_box_curve25519xsalsa20poly1305_seed_keypair
.LVL1:
	.loc 1 63 0
	mov.n	a2, a10
.LVL2:
	retw.n
.LFE9:
	.size	crypto_box_seed_keypair, .-crypto_box_seed_keypair
	.section	.text.crypto_box_keypair,"ax",@progbits
	.align	4
	.global	crypto_box_keypair
	.type	crypto_box_keypair, @function
crypto_box_keypair:
.LFB10:
	.loc 1 67 0
.LVL3:
	entry	sp, 32
.LCFI10:
	.loc 1 68 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_box_curve25519xsalsa20poly1305_keypair
.LVL4:
	.loc 1 69 0
	mov.n	a2, a10
.LVL5:
	retw.n
.LFE10:
	.size	crypto_box_keypair, .-crypto_box_keypair
	.section	.text.crypto_box_beforenm,"ax",@progbits
	.align	4
	.global	crypto_box_beforenm
	.type	crypto_box_beforenm, @function
crypto_box_beforenm:
.LFB11:
	.loc 1 74 0
.LVL6:
	entry	sp, 32
.LCFI11:
	.loc 1 75 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_box_curve25519xsalsa20poly1305_beforenm
.LVL7:
	.loc 1 76 0
	mov.n	a2, a10
.LVL8:
	retw.n
.LFE11:
	.size	crypto_box_beforenm, .-crypto_box_beforenm
	.section	.text.crypto_box_afternm,"ax",@progbits
	.align	4
	.global	crypto_box_afternm
	.type	crypto_box_afternm, @function
crypto_box_afternm:
.LFB12:
	.loc 1 82 0
.LVL9:
	entry	sp, 32
.LCFI12:
	mov.n	a15, a7
	.loc 1 83 0
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_box_curve25519xsalsa20poly1305_afternm
.LVL10:
	.loc 1 84 0
	mov.n	a2, a10
.LVL11:
	retw.n
.LFE12:
	.size	crypto_box_afternm, .-crypto_box_afternm
	.section	.text.crypto_box_open_afternm,"ax",@progbits
	.align	4
	.global	crypto_box_open_afternm
	.type	crypto_box_open_afternm, @function
crypto_box_open_afternm:
.LFB13:
	.loc 1 90 0
.LVL12:
	entry	sp, 32
.LCFI13:
	mov.n	a15, a7
	.loc 1 91 0
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_box_curve25519xsalsa20poly1305_open_afternm
.LVL13:
	.loc 1 92 0
	mov.n	a2, a10
.LVL14:
	retw.n
.LFE13:
	.size	crypto_box_open_afternm, .-crypto_box_open_afternm
	.section	.text.crypto_box,"ax",@progbits
	.align	4
	.global	crypto_box
	.type	crypto_box, @function
crypto_box:
.LFB14:
	.loc 1 98 0
.LVL15:
	entry	sp, 48
.LCFI14:
	mov.n	a15, a7
	.loc 1 99 0
	l32i.n	a8, sp, 48
	s32i.n	a8, sp, 0
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_box_curve25519xsalsa20poly1305
.LVL16:
	.loc 1 100 0
	mov.n	a2, a10
.LVL17:
	retw.n
.LFE14:
	.size	crypto_box, .-crypto_box
	.section	.text.crypto_box_open,"ax",@progbits
	.align	4
	.global	crypto_box_open
	.type	crypto_box_open, @function
crypto_box_open:
.LFB15:
	.loc 1 106 0
.LVL18:
	entry	sp, 48
.LCFI15:
	mov.n	a15, a7
	.loc 1 107 0
	l32i.n	a8, sp, 48
	s32i.n	a8, sp, 0
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_box_curve25519xsalsa20poly1305_open
.LVL19:
	.loc 1 108 0
	mov.n	a2, a10
.LVL20:
	retw.n
.LFE15:
	.size	crypto_box_open, .-crypto_box_open
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
	.uleb128 0x20
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
	.uleb128 0x20
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
	.uleb128 0x30
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
	.uleb128 0x30
	.align	4
.LEFDE30:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_box_curve25519xsalsa20poly1305.h"
	.file 3 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x497
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0xc
	.4byte	.LASF32
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x3
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
	.uleb128 0x5
	.4byte	.LASF2
	.byte	0x1
	.byte	0x5
	.4byte	0x28
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5
	.4byte	.LASF3
	.byte	0x1
	.byte	0xb
	.4byte	0x28
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5
	.4byte	.LASF4
	.byte	0x1
	.byte	0x11
	.4byte	0x28
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5
	.4byte	.LASF5
	.byte	0x1
	.byte	0x17
	.4byte	0x28
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5
	.4byte	.LASF6
	.byte	0x1
	.byte	0x1d
	.4byte	0x28
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5
	.4byte	.LASF7
	.byte	0x1
	.byte	0x23
	.4byte	0x28
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5
	.4byte	.LASF8
	.byte	0x1
	.byte	0x29
	.4byte	0x28
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5
	.4byte	.LASF9
	.byte	0x1
	.byte	0x2f
	.4byte	0x28
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5
	.4byte	.LASF10
	.byte	0x1
	.byte	0x35
	.4byte	0xfe
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x10b
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.uleb128 0x7
	.4byte	0x104
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x1
	.byte	0x3b
	.4byte	0x21
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16d
	.uleb128 0x9
	.string	"pk"
	.byte	0x1
	.byte	0x3b
	.4byte	0x16d
	.4byte	.LLST0
	.uleb128 0xa
	.string	"sk"
	.byte	0x1
	.byte	0x3b
	.4byte	0x16d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xb
	.4byte	.LASF12
	.byte	0x1
	.byte	0x3c
	.4byte	0x17a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xc
	.4byte	.LVL1
	.4byte	0x44d
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x173
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x6
	.byte	0x4
	.4byte	0x180
	.uleb128 0x7
	.4byte	0x173
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x1
	.byte	0x42
	.4byte	0x21
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1cf
	.uleb128 0x9
	.string	"pk"
	.byte	0x1
	.byte	0x42
	.4byte	0x16d
	.4byte	.LLST1
	.uleb128 0xa
	.string	"sk"
	.byte	0x1
	.byte	0x42
	.4byte	0x16d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xc
	.4byte	.LVL4
	.4byte	0x458
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x1
	.byte	0x48
	.4byte	0x21
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x22a
	.uleb128 0x9
	.string	"k"
	.byte	0x1
	.byte	0x48
	.4byte	0x16d
	.4byte	.LLST2
	.uleb128 0xa
	.string	"pk"
	.byte	0x1
	.byte	0x48
	.4byte	0x17a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xa
	.string	"sk"
	.byte	0x1
	.byte	0x49
	.4byte	0x17a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xc
	.4byte	.LVL7
	.4byte	0x463
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x1
	.byte	0x4f
	.4byte	0x21
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2a6
	.uleb128 0x9
	.string	"c"
	.byte	0x1
	.byte	0x4f
	.4byte	0x16d
	.4byte	.LLST3
	.uleb128 0xa
	.string	"m"
	.byte	0x1
	.byte	0x4f
	.4byte	0x17a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x1
	.byte	0x50
	.4byte	0x2a6
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xa
	.string	"n"
	.byte	0x1
	.byte	0x50
	.4byte	0x17a
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xa
	.string	"k"
	.byte	0x1
	.byte	0x51
	.4byte	0x17a
	.uleb128 0x1
	.byte	0x57
	.uleb128 0xc
	.4byte	.LVL10
	.4byte	0x46e
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF19
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x1
	.byte	0x57
	.4byte	0x21
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x329
	.uleb128 0x9
	.string	"m"
	.byte	0x1
	.byte	0x57
	.4byte	0x16d
	.4byte	.LLST4
	.uleb128 0xa
	.string	"c"
	.byte	0x1
	.byte	0x57
	.4byte	0x17a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x1
	.byte	0x58
	.4byte	0x2a6
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xa
	.string	"n"
	.byte	0x1
	.byte	0x58
	.4byte	0x17a
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xa
	.string	"k"
	.byte	0x1
	.byte	0x59
	.4byte	0x17a
	.uleb128 0x1
	.byte	0x57
	.uleb128 0xc
	.4byte	.LVL13
	.4byte	0x479
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x1
	.byte	0x5f
	.4byte	0x21
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3bb
	.uleb128 0x9
	.string	"c"
	.byte	0x1
	.byte	0x5f
	.4byte	0x16d
	.4byte	.LLST5
	.uleb128 0xa
	.string	"m"
	.byte	0x1
	.byte	0x5f
	.4byte	0x17a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x1
	.byte	0x60
	.4byte	0x2a6
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xa
	.string	"n"
	.byte	0x1
	.byte	0x60
	.4byte	0x17a
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xa
	.string	"pk"
	.byte	0x1
	.byte	0x61
	.4byte	0x17a
	.uleb128 0x1
	.byte	0x57
	.uleb128 0xa
	.string	"sk"
	.byte	0x1
	.byte	0x61
	.4byte	0x17a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.4byte	.LVL16
	.4byte	0x484
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x1
	.byte	0x67
	.4byte	0x21
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x44d
	.uleb128 0x9
	.string	"m"
	.byte	0x1
	.byte	0x67
	.4byte	0x16d
	.4byte	.LLST6
	.uleb128 0xa
	.string	"c"
	.byte	0x1
	.byte	0x67
	.4byte	0x17a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x1
	.byte	0x68
	.4byte	0x2a6
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xa
	.string	"n"
	.byte	0x1
	.byte	0x68
	.4byte	0x17a
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xa
	.string	"pk"
	.byte	0x1
	.byte	0x69
	.4byte	0x17a
	.uleb128 0x1
	.byte	0x57
	.uleb128 0xa
	.string	"sk"
	.byte	0x1
	.byte	0x69
	.4byte	0x17a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.4byte	.LVL19
	.4byte	0x48f
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF24
	.4byte	.LASF24
	.byte	0x2
	.byte	0x43
	.uleb128 0xe
	.4byte	.LASF25
	.4byte	.LASF25
	.byte	0x2
	.byte	0x48
	.uleb128 0xe
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x2
	.byte	0x4c
	.uleb128 0xe
	.4byte	.LASF27
	.4byte	.LASF27
	.byte	0x2
	.byte	0x52
	.uleb128 0xe
	.4byte	.LASF28
	.4byte	.LASF28
	.byte	0x2
	.byte	0x59
	.uleb128 0xe
	.4byte	.LASF29
	.4byte	.LASF29
	.byte	0x2
	.byte	0x31
	.uleb128 0xe
	.4byte	.LASF30
	.4byte	.LASF30
	.byte	0x2
	.byte	0x3a
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
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.4byte	.LFE9
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
	.4byte	.LFE10
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
	.4byte	.LFE11
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
	.4byte	.LFE12
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
	.4byte	.LFE13
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
	.4byte	.LFE14
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
.LASF9:
	.string	"crypto_box_macbytes"
.LASF33:
	.string	"size_t"
.LASF26:
	.string	"crypto_box_curve25519xsalsa20poly1305_beforenm"
.LASF15:
	.string	"crypto_box_keypair"
.LASF25:
	.string	"crypto_box_curve25519xsalsa20poly1305_keypair"
.LASF31:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF21:
	.string	"clen"
.LASF23:
	.string	"crypto_box_open"
.LASF28:
	.string	"crypto_box_curve25519xsalsa20poly1305_open_afternm"
.LASF19:
	.string	"long long unsigned int"
.LASF3:
	.string	"crypto_box_publickeybytes"
.LASF22:
	.string	"crypto_box"
.LASF13:
	.string	"unsigned char"
.LASF29:
	.string	"crypto_box_curve25519xsalsa20poly1305"
.LASF11:
	.string	"char"
.LASF14:
	.string	"crypto_box_seed_keypair"
.LASF24:
	.string	"crypto_box_curve25519xsalsa20poly1305_seed_keypair"
.LASF10:
	.string	"crypto_box_primitive"
.LASF27:
	.string	"crypto_box_curve25519xsalsa20poly1305_afternm"
.LASF5:
	.string	"crypto_box_beforenmbytes"
.LASF12:
	.string	"seed"
.LASF20:
	.string	"crypto_box_open_afternm"
.LASF4:
	.string	"crypto_box_secretkeybytes"
.LASF18:
	.string	"mlen"
.LASF16:
	.string	"crypto_box_beforenm"
.LASF8:
	.string	"crypto_box_boxzerobytes"
.LASF1:
	.string	"short unsigned int"
.LASF17:
	.string	"crypto_box_afternm"
.LASF6:
	.string	"crypto_box_noncebytes"
.LASF30:
	.string	"crypto_box_curve25519xsalsa20poly1305_open"
.LASF2:
	.string	"crypto_box_seedbytes"
.LASF0:
	.string	"unsigned int"
.LASF32:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_box/crypto_box.c"
.LASF7:
	.string	"crypto_box_zerobytes"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
