	.file	"stream_xsalsa20.c"
	.text
.Ltext0:
	.section	.text.crypto_stream_xsalsa20,"ax",@progbits
	.align	4
	.global	crypto_stream_xsalsa20
	.type	crypto_stream_xsalsa20, @function
crypto_stream_xsalsa20:
.LFB0:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_stream/xsalsa20/stream_xsalsa20.c"
	.loc 1 10 0
.LVL0:
	entry	sp, 64
.LCFI0:
	mov.n	a12, a7
	.loc 1 14 0
	movi.n	a13, 0
	mov.n	a11, a6
	mov.n	a10, sp
	call8	crypto_core_hsalsa20
.LVL1:
	.loc 1 15 0
	mov.n	a15, sp
	addi	a14, a6, 16
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	call8	crypto_stream_salsa20
.LVL2:
	mov.n	a2, a10
.LVL3:
	.loc 1 16 0
	movi.n	a11, 0x20
	mov.n	a10, sp
	call8	sodium_memzero
.LVL4:
	.loc 1 19 0
	retw.n
.LFE0:
	.size	crypto_stream_xsalsa20, .-crypto_stream_xsalsa20
	.section	.text.crypto_stream_xsalsa20_xor_ic,"ax",@progbits
	.align	4
	.global	crypto_stream_xsalsa20_xor_ic
	.type	crypto_stream_xsalsa20_xor_ic, @function
crypto_stream_xsalsa20_xor_ic:
.LFB1:
	.loc 1 25 0
.LVL5:
	entry	sp, 80
.LCFI1:
	.loc 1 29 0
	movi.n	a13, 0
	l32i	a12, sp, 88
	mov.n	a11, a6
	addi	a7, sp, 16
	mov.n	a10, a7
	call8	crypto_core_hsalsa20
.LVL6:
	.loc 1 30 0
	s32i.n	a7, sp, 8
	l32i	a8, sp, 80
	l32i	a9, sp, 84
	s32i.n	a8, sp, 0
	s32i.n	a9, sp, 4
	addi	a14, a6, 16
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_stream_salsa20_xor_ic
.LVL7:
	mov.n	a2, a10
.LVL8:
	.loc 1 31 0
	movi.n	a11, 0x20
	mov.n	a10, a7
	call8	sodium_memzero
.LVL9:
	.loc 1 34 0
	retw.n
.LFE1:
	.size	crypto_stream_xsalsa20_xor_ic, .-crypto_stream_xsalsa20_xor_ic
	.section	.text.crypto_stream_xsalsa20_xor,"ax",@progbits
	.literal_position
	.literal .LC0, 0, 0
	.align	4
	.global	crypto_stream_xsalsa20_xor
	.type	crypto_stream_xsalsa20_xor, @function
crypto_stream_xsalsa20_xor:
.LFB2:
	.loc 1 40 0
.LVL10:
	entry	sp, 48
.LCFI2:
	.loc 1 41 0
	s32i.n	a7, sp, 8
	l32r	a8, .LC0
	l32r	a9, .LC0+4
	s32i.n	a8, sp, 0
	s32i.n	a9, sp, 4
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_stream_xsalsa20_xor_ic
.LVL11:
	.loc 1 42 0
	mov.n	a2, a10
.LVL12:
	retw.n
.LFE2:
	.size	crypto_stream_xsalsa20_xor, .-crypto_stream_xsalsa20_xor
	.section	.text.crypto_stream_xsalsa20_keybytes,"ax",@progbits
	.align	4
	.global	crypto_stream_xsalsa20_keybytes
	.type	crypto_stream_xsalsa20_keybytes, @function
crypto_stream_xsalsa20_keybytes:
.LFB3:
	.loc 1 46 0
	entry	sp, 32
.LCFI3:
	.loc 1 48 0
	movi.n	a2, 0x20
	retw.n
.LFE3:
	.size	crypto_stream_xsalsa20_keybytes, .-crypto_stream_xsalsa20_keybytes
	.section	.text.crypto_stream_xsalsa20_noncebytes,"ax",@progbits
	.align	4
	.global	crypto_stream_xsalsa20_noncebytes
	.type	crypto_stream_xsalsa20_noncebytes, @function
crypto_stream_xsalsa20_noncebytes:
.LFB4:
	.loc 1 52 0
	entry	sp, 32
.LCFI4:
	.loc 1 54 0
	movi.n	a2, 0x18
	retw.n
.LFE4:
	.size	crypto_stream_xsalsa20_noncebytes, .-crypto_stream_xsalsa20_noncebytes
	.section	.text.crypto_stream_xsalsa20_keygen,"ax",@progbits
	.align	4
	.global	crypto_stream_xsalsa20_keygen
	.type	crypto_stream_xsalsa20_keygen, @function
crypto_stream_xsalsa20_keygen:
.LFB5:
	.loc 1 58 0
.LVL13:
	entry	sp, 32
.LCFI5:
	.loc 1 59 0
	movi.n	a11, 0x20
	mov.n	a10, a2
	call8	randombytes_buf
.LVL14:
	retw.n
.LFE5:
	.size	crypto_stream_xsalsa20_keygen, .-crypto_stream_xsalsa20_keygen
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
	.uleb128 0x40
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
	.uleb128 0x30
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
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_core_hsalsa20.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_stream_salsa20.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/randombytes.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x374
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0xc
	.4byte	.LASF28
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF6
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
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x3
	.byte	0x1e
	.4byte	0x68
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0x39
	.4byte	0x5d
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
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x1
	.byte	0x8
	.4byte	0x21
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15b
	.uleb128 0x6
	.string	"c"
	.byte	0x1
	.byte	0x8
	.4byte	0x15b
	.4byte	.LLST0
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x1
	.byte	0x8
	.4byte	0x68
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
	.4byte	0x161
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x8
	.string	"k"
	.byte	0x1
	.byte	0x9
	.4byte	0x161
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x1
	.byte	0xb
	.4byte	0x16c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xa
	.string	"ret"
	.byte	0x1
	.byte	0xc
	.4byte	0x21
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xb
	.4byte	.LVL1
	.4byte	0x340
	.4byte	0x124
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0xb
	.4byte	.LVL2
	.4byte	0x34b
	.4byte	0x144
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 16
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0xd
	.4byte	.LVL4
	.4byte	0x356
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x48
	.uleb128 0xe
	.byte	0x4
	.4byte	0x167
	.uleb128 0xf
	.4byte	0x48
	.uleb128 0x10
	.4byte	0x48
	.4byte	0x17c
	.uleb128 0x11
	.4byte	0x81
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x1
	.byte	0x16
	.4byte	0x21
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x262
	.uleb128 0x6
	.string	"c"
	.byte	0x1
	.byte	0x16
	.4byte	0x15b
	.4byte	.LLST1
	.uleb128 0x8
	.string	"m"
	.byte	0x1
	.byte	0x16
	.4byte	0x161
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x1
	.byte	0x17
	.4byte	0x68
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
	.byte	0x17
	.4byte	0x161
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x8
	.string	"ic"
	.byte	0x1
	.byte	0x18
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x8
	.string	"k"
	.byte	0x1
	.byte	0x18
	.4byte	0x161
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x1
	.byte	0x1a
	.4byte	0x16c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xa
	.string	"ret"
	.byte	0x1
	.byte	0x1b
	.4byte	0x21
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xb
	.4byte	.LVL6
	.4byte	0x340
	.4byte	0x224
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0xb
	.4byte	.LVL7
	.4byte	0x361
	.4byte	0x24b
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
	.sleb128 16
	.uleb128 0xc
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.4byte	.LVL9
	.4byte	0x356
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF19
	.byte	0x1
	.byte	0x25
	.4byte	0x21
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2df
	.uleb128 0x6
	.string	"c"
	.byte	0x1
	.byte	0x25
	.4byte	0x15b
	.4byte	.LLST2
	.uleb128 0x8
	.string	"m"
	.byte	0x1
	.byte	0x25
	.4byte	0x161
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x1
	.byte	0x26
	.4byte	0x68
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
	.byte	0x26
	.4byte	0x161
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x8
	.string	"k"
	.byte	0x1
	.byte	0x27
	.4byte	0x161
	.uleb128 0x1
	.byte	0x57
	.uleb128 0xd
	.4byte	.LVL11
	.4byte	0x17c
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
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF20
	.byte	0x1
	.byte	0x2d
	.4byte	0x28
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.byte	0x33
	.4byte	0x28
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x13
	.4byte	.LASF29
	.byte	0x1
	.byte	0x39
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x340
	.uleb128 0x8
	.string	"k"
	.byte	0x1
	.byte	0x39
	.4byte	0x15b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xd
	.4byte	.LVL14
	.4byte	0x36c
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
	.uleb128 0x14
	.4byte	.LASF22
	.4byte	.LASF22
	.byte	0x5
	.byte	0x1c
	.uleb128 0x14
	.4byte	.LASF23
	.4byte	.LASF23
	.byte	0x6
	.byte	0x20
	.uleb128 0x14
	.4byte	.LASF24
	.4byte	.LASF24
	.byte	0x7
	.byte	0x16
	.uleb128 0x14
	.4byte	.LASF25
	.4byte	.LASF25
	.byte	0x6
	.byte	0x29
	.uleb128 0x14
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x8
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x18
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL5
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LFE2
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
.LASF29:
	.string	"crypto_stream_xsalsa20_keygen"
.LASF16:
	.string	"crypto_stream_xsalsa20"
.LASF15:
	.string	"subkey"
.LASF21:
	.string	"crypto_stream_xsalsa20_noncebytes"
.LASF17:
	.string	"crypto_stream_xsalsa20_xor_ic"
.LASF9:
	.string	"uint64_t"
.LASF4:
	.string	"short int"
.LASF6:
	.string	"size_t"
.LASF11:
	.string	"sizetype"
.LASF25:
	.string	"crypto_stream_salsa20_xor_ic"
.LASF14:
	.string	"clen"
.LASF24:
	.string	"sodium_memzero"
.LASF5:
	.string	"long long int"
.LASF10:
	.string	"long int"
.LASF28:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_stream/xsalsa20/stream_xsalsa20.c"
.LASF3:
	.string	"unsigned char"
.LASF23:
	.string	"crypto_stream_salsa20"
.LASF2:
	.string	"signed char"
.LASF8:
	.string	"long long unsigned int"
.LASF0:
	.string	"unsigned int"
.LASF19:
	.string	"crypto_stream_xsalsa20_xor"
.LASF1:
	.string	"short unsigned int"
.LASF13:
	.string	"char"
.LASF26:
	.string	"randombytes_buf"
.LASF7:
	.string	"__uint64_t"
.LASF12:
	.string	"long unsigned int"
.LASF18:
	.string	"mlen"
.LASF20:
	.string	"crypto_stream_xsalsa20_keybytes"
.LASF22:
	.string	"crypto_core_hsalsa20"
.LASF27:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
