	.file	"secretbox_xsalsa20poly1305.c"
	.text
.Ltext0:
	.section	.text.crypto_secretbox_xsalsa20poly1305,"ax",@progbits
	.literal_position
	.align	4
	.global	crypto_secretbox_xsalsa20poly1305
	.type	crypto_secretbox_xsalsa20poly1305, @function
crypto_secretbox_xsalsa20poly1305:
.LFB0:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_secretbox/xsalsa20poly1305/secretbox_xsalsa20poly1305.c"
	.loc 1 11 0
.LVL0:
	entry	sp, 32
.LCFI0:
	mov.n	a15, a7
	.loc 1 14 0
	bnez.n	a5, .L8
	bnez.n	a5, .L7
	movi.n	a8, 0x1f
	bgeu	a8, a4, .L7
.L8:
	.loc 1 17 0
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_stream_xsalsa20_xor
.LVL1:
	.loc 1 18 0
	addi	a12, a4, -32
	movi.n	a13, 1
	bltu	a12, a4, .L4
	movi.n	a13, 0
.L4:
	addi.n	a5, a5, -1
	add.n	a13, a13, a5
	mov.n	a5, a13
	mov.n	a14, a2
	addi	a11, a2, 32
	addi	a10, a2, 16
	call8	crypto_onetimeauth_poly1305
.LVL2:
	.loc 1 19 0
	movi.n	a8, 0
	j	.L5
.LVL3:
.L6:
	.loc 1 20 0 discriminator 3
	add.n	a9, a2, a8
	movi.n	a10, 0
	s8i	a10, a9, 0
	.loc 1 19 0 discriminator 3
	addi.n	a8, a8, 1
.LVL4:
.L5:
	.loc 1 19 0 is_stmt 0 discriminator 1
	movi.n	a9, 0xf
	bge	a9, a8, .L6
	.loc 1 22 0 is_stmt 1
	movi.n	a2, 0
.LVL5:
	retw.n
.LVL6:
.L7:
	.loc 1 15 0
	movi.n	a2, -1
.LVL7:
	.loc 1 23 0
	retw.n
.LFE0:
	.size	crypto_secretbox_xsalsa20poly1305, .-crypto_secretbox_xsalsa20poly1305
	.section	.text.crypto_secretbox_xsalsa20poly1305_open,"ax",@progbits
	.literal_position
	.literal .LC1, 32, 0
	.align	4
	.global	crypto_secretbox_xsalsa20poly1305_open
	.type	crypto_secretbox_xsalsa20poly1305_open, @function
crypto_secretbox_xsalsa20poly1305_open:
.LFB1:
	.loc 1 30 0
.LVL8:
	entry	sp, 80
.LCFI1:
	.loc 1 34 0
	bnez.n	a5, .L17
	bnez.n	a5, .L15
	movi.n	a8, 0x1f
	bgeu	a8, a4, .L15
.L17:
	.loc 1 37 0
	mov.n	a15, a7
	mov.n	a14, a6
	l32r	a12, .LC1
	l32r	a13, .LC1+4
	mov.n	a10, sp
	call8	crypto_stream_xsalsa20
.LVL9:
	.loc 1 38 0
	addi	a12, a4, -32
	movi.n	a13, 1
	bltu	a12, a4, .L12
	movi.n	a13, 0
.L12:
	addi.n	a8, a5, -1
	add.n	a13, a13, a8
	mov.n	a14, sp
	addi	a11, a3, 32
	addi	a10, a3, 16
	call8	crypto_onetimeauth_poly1305_verify
.LVL10:
	s32i.n	a10, sp, 32
	bnez.n	a10, .L16
	.loc 1 42 0
	mov.n	a15, a7
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_stream_xsalsa20_xor
.LVL11:
	.loc 1 43 0
	movi.n	a3, 0
.LVL12:
	j	.L13
.LVL13:
.L14:
	.loc 1 44 0 discriminator 3
	add.n	a4, a2, a3
	movi.n	a5, 0
	s8i	a5, a4, 0
	.loc 1 43 0 discriminator 3
	addi.n	a3, a3, 1
.LVL14:
.L13:
	.loc 1 43 0 is_stmt 0 discriminator 1
	movi.n	a4, 0x1f
	bge	a4, a3, .L14
	j	.L10
.LVL15:
.L15:
	.loc 1 35 0 is_stmt 1
	movi.n	a2, -1
.LVL16:
	s32i.n	a2, sp, 32
	j	.L10
.LVL17:
.L16:
	.loc 1 40 0
	movi.n	a2, -1
.LVL18:
	s32i.n	a2, sp, 32
.LVL19:
.L10:
	.loc 1 47 0
	l32i.n	a2, sp, 32
	retw.n
.LFE1:
	.size	crypto_secretbox_xsalsa20poly1305_open, .-crypto_secretbox_xsalsa20poly1305_open
	.section	.text.crypto_secretbox_xsalsa20poly1305_keybytes,"ax",@progbits
	.align	4
	.global	crypto_secretbox_xsalsa20poly1305_keybytes
	.type	crypto_secretbox_xsalsa20poly1305_keybytes, @function
crypto_secretbox_xsalsa20poly1305_keybytes:
.LFB2:
	.loc 1 51 0
	entry	sp, 32
.LCFI2:
	.loc 1 53 0
	movi.n	a2, 0x20
	retw.n
.LFE2:
	.size	crypto_secretbox_xsalsa20poly1305_keybytes, .-crypto_secretbox_xsalsa20poly1305_keybytes
	.section	.text.crypto_secretbox_xsalsa20poly1305_noncebytes,"ax",@progbits
	.align	4
	.global	crypto_secretbox_xsalsa20poly1305_noncebytes
	.type	crypto_secretbox_xsalsa20poly1305_noncebytes, @function
crypto_secretbox_xsalsa20poly1305_noncebytes:
.LFB3:
	.loc 1 57 0
	entry	sp, 32
.LCFI3:
	.loc 1 59 0
	movi.n	a2, 0x18
	retw.n
.LFE3:
	.size	crypto_secretbox_xsalsa20poly1305_noncebytes, .-crypto_secretbox_xsalsa20poly1305_noncebytes
	.section	.text.crypto_secretbox_xsalsa20poly1305_zerobytes,"ax",@progbits
	.align	4
	.global	crypto_secretbox_xsalsa20poly1305_zerobytes
	.type	crypto_secretbox_xsalsa20poly1305_zerobytes, @function
crypto_secretbox_xsalsa20poly1305_zerobytes:
.LFB4:
	.loc 1 63 0
	entry	sp, 32
.LCFI4:
	.loc 1 65 0
	movi.n	a2, 0x20
	retw.n
.LFE4:
	.size	crypto_secretbox_xsalsa20poly1305_zerobytes, .-crypto_secretbox_xsalsa20poly1305_zerobytes
	.section	.text.crypto_secretbox_xsalsa20poly1305_boxzerobytes,"ax",@progbits
	.align	4
	.global	crypto_secretbox_xsalsa20poly1305_boxzerobytes
	.type	crypto_secretbox_xsalsa20poly1305_boxzerobytes, @function
crypto_secretbox_xsalsa20poly1305_boxzerobytes:
.LFB5:
	.loc 1 69 0
	entry	sp, 32
.LCFI5:
	.loc 1 71 0
	movi.n	a2, 0x10
	retw.n
.LFE5:
	.size	crypto_secretbox_xsalsa20poly1305_boxzerobytes, .-crypto_secretbox_xsalsa20poly1305_boxzerobytes
	.section	.text.crypto_secretbox_xsalsa20poly1305_macbytes,"ax",@progbits
	.align	4
	.global	crypto_secretbox_xsalsa20poly1305_macbytes
	.type	crypto_secretbox_xsalsa20poly1305_macbytes, @function
crypto_secretbox_xsalsa20poly1305_macbytes:
.LFB6:
	.loc 1 75 0
	entry	sp, 32
.LCFI6:
	.loc 1 77 0
	movi.n	a2, 0x10
	retw.n
.LFE6:
	.size	crypto_secretbox_xsalsa20poly1305_macbytes, .-crypto_secretbox_xsalsa20poly1305_macbytes
	.section	.text.crypto_secretbox_xsalsa20poly1305_keygen,"ax",@progbits
	.align	4
	.global	crypto_secretbox_xsalsa20poly1305_keygen
	.type	crypto_secretbox_xsalsa20poly1305_keygen, @function
crypto_secretbox_xsalsa20poly1305_keygen:
.LFB7:
	.loc 1 81 0
.LVL20:
	entry	sp, 32
.LCFI7:
	.loc 1 82 0
	movi.n	a11, 0x20
	mov.n	a10, a2
	call8	randombytes_buf
.LVL21:
	retw.n
.LFE7:
	.size	crypto_secretbox_xsalsa20poly1305_keygen, .-crypto_secretbox_xsalsa20poly1305_keygen
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
	.uleb128 0x50
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
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_stream_xsalsa20.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_onetimeauth_poly1305.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/randombytes.h"
	.file 5 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2f5
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0xc
	.4byte	.LASF27
	.4byte	.LASF28
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
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x5
	.byte	0xd8
	.4byte	0x4f
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
	.4byte	0x33
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x1
	.byte	0x7
	.4byte	0x48
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12d
	.uleb128 0x7
	.string	"c"
	.byte	0x1
	.byte	0x7
	.4byte	0x7d
	.4byte	.LLST0
	.uleb128 0x8
	.string	"m"
	.byte	0x1
	.byte	0x7
	.4byte	0x12d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x9
	.4byte	.LASF11
	.byte	0x1
	.byte	0x8
	.4byte	0x25
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x8
	.string	"n"
	.byte	0x1
	.byte	0x9
	.4byte	0x12d
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x8
	.string	"k"
	.byte	0x1
	.byte	0xa
	.4byte	0x12d
	.uleb128 0x1
	.byte	0x57
	.uleb128 0xa
	.string	"i"
	.byte	0x1
	.byte	0xc
	.4byte	0x48
	.4byte	.LLST1
	.uleb128 0xb
	.4byte	.LVL1
	.4byte	0x2c1
	.4byte	0x110
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.4byte	.LVL2
	.4byte	0x2cc
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 16
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 32
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x133
	.uleb128 0xe
	.4byte	0x33
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x1
	.byte	0x1a
	.4byte	0x48
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x211
	.uleb128 0x7
	.string	"m"
	.byte	0x1
	.byte	0x1a
	.4byte	0x7d
	.4byte	.LLST2
	.uleb128 0x7
	.string	"c"
	.byte	0x1
	.byte	0x1a
	.4byte	0x12d
	.4byte	.LLST3
	.uleb128 0xf
	.4byte	.LASF14
	.byte	0x1
	.byte	0x1b
	.4byte	0x25
	.4byte	.LLST4
	.uleb128 0x8
	.string	"n"
	.byte	0x1
	.byte	0x1c
	.4byte	0x12d
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x8
	.string	"k"
	.byte	0x1
	.byte	0x1d
	.4byte	0x12d
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x10
	.4byte	.LASF15
	.byte	0x1
	.byte	0x1f
	.4byte	0x211
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xa
	.string	"i"
	.byte	0x1
	.byte	0x20
	.4byte	0x48
	.4byte	.LLST5
	.uleb128 0xb
	.4byte	.LVL9
	.4byte	0x2d7
	.4byte	0x1cd
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.4byte	.LVL10
	.4byte	0x2e2
	.4byte	0x1ee
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 16
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 32
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0xd
	.4byte	.LVL11
	.4byte	0x2c1
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0x33
	.4byte	0x221
	.uleb128 0x12
	.4byte	0x6f
	.byte	0x1f
	.byte	0
	.uleb128 0x13
	.4byte	.LASF16
	.byte	0x1
	.byte	0x32
	.4byte	0x5d
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x13
	.4byte	.LASF17
	.byte	0x1
	.byte	0x38
	.4byte	0x5d
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x13
	.4byte	.LASF18
	.byte	0x1
	.byte	0x3e
	.4byte	0x5d
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x13
	.4byte	.LASF19
	.byte	0x1
	.byte	0x44
	.4byte	0x5d
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x13
	.4byte	.LASF20
	.byte	0x1
	.byte	0x4a
	.4byte	0x5d
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.4byte	.LASF30
	.byte	0x1
	.byte	0x50
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c1
	.uleb128 0x8
	.string	"k"
	.byte	0x1
	.byte	0x50
	.4byte	0x7d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xd
	.4byte	.LVL21
	.4byte	0x2ed
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF21
	.4byte	.LASF21
	.byte	0x2
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF22
	.4byte	.LASF22
	.byte	0x3
	.byte	0x23
	.uleb128 0x15
	.4byte	.LASF23
	.4byte	.LASF23
	.byte	0x2
	.byte	0x20
	.uleb128 0x15
	.4byte	.LASF24
	.4byte	.LASF24
	.byte	0x3
	.byte	0x29
	.uleb128 0x15
	.4byte	.LASF25
	.4byte	.LASF25
	.byte	0x4
	.byte	0x21
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL8
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
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL19
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL13
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL19
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL19
	.4byte	.LFE1
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x54
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF22:
	.string	"crypto_onetimeauth_poly1305"
.LASF29:
	.string	"size_t"
.LASF14:
	.string	"clen"
.LASF12:
	.string	"crypto_secretbox_xsalsa20poly1305"
.LASF11:
	.string	"mlen"
.LASF26:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF2:
	.string	"unsigned char"
.LASF24:
	.string	"crypto_onetimeauth_poly1305_verify"
.LASF20:
	.string	"crypto_secretbox_xsalsa20poly1305_macbytes"
.LASF9:
	.string	"long unsigned int"
.LASF4:
	.string	"short unsigned int"
.LASF18:
	.string	"crypto_secretbox_xsalsa20poly1305_zerobytes"
.LASF21:
	.string	"crypto_stream_xsalsa20_xor"
.LASF25:
	.string	"randombytes_buf"
.LASF13:
	.string	"crypto_secretbox_xsalsa20poly1305_open"
.LASF5:
	.string	"unsigned int"
.LASF0:
	.string	"long long unsigned int"
.LASF19:
	.string	"crypto_secretbox_xsalsa20poly1305_boxzerobytes"
.LASF30:
	.string	"crypto_secretbox_xsalsa20poly1305_keygen"
.LASF17:
	.string	"crypto_secretbox_xsalsa20poly1305_noncebytes"
.LASF8:
	.string	"sizetype"
.LASF6:
	.string	"long long int"
.LASF10:
	.string	"char"
.LASF3:
	.string	"short int"
.LASF28:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\libsodium"
.LASF7:
	.string	"long int"
.LASF23:
	.string	"crypto_stream_xsalsa20"
.LASF15:
	.string	"subkey"
.LASF1:
	.string	"signed char"
.LASF27:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_secretbox/xsalsa20poly1305/secretbox_xsalsa20poly1305.c"
.LASF16:
	.string	"crypto_secretbox_xsalsa20poly1305_keybytes"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
