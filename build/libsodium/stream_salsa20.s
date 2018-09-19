	.file	"stream_salsa20.c"
	.text
.Ltext0:
	.section	.text.crypto_stream_salsa20_keybytes,"ax",@progbits
	.align	4
	.global	crypto_stream_salsa20_keybytes
	.type	crypto_stream_salsa20_keybytes, @function
crypto_stream_salsa20_keybytes:
.LFB12:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_stream/salsa20/stream_salsa20.c"
	.loc 1 30 0
	entry	sp, 32
.LCFI0:
	.loc 1 32 0
	movi.n	a2, 0x20
	retw.n
.LFE12:
	.size	crypto_stream_salsa20_keybytes, .-crypto_stream_salsa20_keybytes
	.section	.text.crypto_stream_salsa20_noncebytes,"ax",@progbits
	.align	4
	.global	crypto_stream_salsa20_noncebytes
	.type	crypto_stream_salsa20_noncebytes, @function
crypto_stream_salsa20_noncebytes:
.LFB13:
	.loc 1 36 0
	entry	sp, 32
.LCFI1:
	.loc 1 38 0
	movi.n	a2, 8
	retw.n
.LFE13:
	.size	crypto_stream_salsa20_noncebytes, .-crypto_stream_salsa20_noncebytes
	.section	.text.crypto_stream_salsa20,"ax",@progbits
	.literal_position
	.literal .LC0, implementation
	.align	4
	.global	crypto_stream_salsa20
	.type	crypto_stream_salsa20, @function
crypto_stream_salsa20:
.LFB14:
	.loc 1 43 0
.LVL0:
	entry	sp, 32
.LCFI2:
	mov.n	a15, a7
	.loc 1 44 0
	l32r	a8, .LC0
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 0
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	callx8	a8
.LVL1:
	.loc 1 45 0
	mov.n	a2, a10
.LVL2:
	retw.n
.LFE14:
	.size	crypto_stream_salsa20, .-crypto_stream_salsa20
	.section	.text.crypto_stream_salsa20_xor_ic,"ax",@progbits
	.literal_position
	.literal .LC1, implementation
	.align	4
	.global	crypto_stream_salsa20_xor_ic
	.type	crypto_stream_salsa20_xor_ic, @function
crypto_stream_salsa20_xor_ic:
.LFB15:
	.loc 1 52 0
.LVL3:
	entry	sp, 48
.LCFI3:
	.loc 1 53 0
	l32r	a8, .LC1
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 4
	l32i.n	a9, sp, 56
	s32i.n	a9, sp, 8
	l32i.n	a10, sp, 48
	l32i.n	a11, sp, 52
	s32i.n	a10, sp, 0
	s32i.n	a11, sp, 4
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a8
.LVL4:
	.loc 1 54 0
	mov.n	a2, a10
.LVL5:
	retw.n
.LFE15:
	.size	crypto_stream_salsa20_xor_ic, .-crypto_stream_salsa20_xor_ic
	.section	.text.crypto_stream_salsa20_xor,"ax",@progbits
	.literal_position
	.literal .LC2, implementation
	.literal .LC3, 0, 0
	.align	4
	.global	crypto_stream_salsa20_xor
	.type	crypto_stream_salsa20_xor, @function
crypto_stream_salsa20_xor:
.LFB16:
	.loc 1 60 0
.LVL6:
	entry	sp, 48
.LCFI4:
	.loc 1 61 0
	l32r	a8, .LC2
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 4
	s32i.n	a7, sp, 8
	l32r	a10, .LC3
	l32r	a11, .LC3+4
	s32i.n	a10, sp, 0
	s32i.n	a11, sp, 4
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a8
.LVL7:
	.loc 1 62 0
	mov.n	a2, a10
.LVL8:
	retw.n
.LFE16:
	.size	crypto_stream_salsa20_xor, .-crypto_stream_salsa20_xor
	.section	.text.crypto_stream_salsa20_keygen,"ax",@progbits
	.align	4
	.global	crypto_stream_salsa20_keygen
	.type	crypto_stream_salsa20_keygen, @function
crypto_stream_salsa20_keygen:
.LFB17:
	.loc 1 66 0
.LVL9:
	entry	sp, 32
.LCFI5:
	.loc 1 67 0
	movi.n	a11, 0x20
	mov.n	a10, a2
	call8	randombytes_buf
.LVL10:
	retw.n
.LFE17:
	.size	crypto_stream_salsa20_keygen, .-crypto_stream_salsa20_keygen
	.section	.text._crypto_stream_salsa20_pick_best_implementation,"ax",@progbits
	.literal_position
	.literal .LC4, implementation
	.literal .LC5, crypto_stream_salsa20_ref_implementation
	.align	4
	.global	_crypto_stream_salsa20_pick_best_implementation
	.type	_crypto_stream_salsa20_pick_best_implementation, @function
_crypto_stream_salsa20_pick_best_implementation:
.LFB18:
	.loc 1 72 0
	entry	sp, 32
.LCFI6:
	.loc 1 76 0
	l32r	a9, .LC5
	l32r	a8, .LC4
	s32i.n	a9, a8, 0
	.loc 1 93 0
	movi.n	a2, 0
	retw.n
.LFE18:
	.size	_crypto_stream_salsa20_pick_best_implementation, .-_crypto_stream_salsa20_pick_best_implementation
	.section	.data.implementation,"aw",@progbits
	.align	4
	.type	implementation, @object
	.size	implementation, 4
implementation:
	.word	crypto_stream_salsa20_ref_implementation
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
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI0-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI1-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI2-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI3-.LFB15
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI4-.LFB16
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI5-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI6-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_stream/salsa20/stream_salsa20.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_stream/salsa20/ref/salsa20_ref.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/randombytes.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x336
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0xc
	.4byte	.LASF26
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
	.uleb128 0x5
	.byte	0x4
	.4byte	0x48
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x8
	.byte	0x5
	.byte	0x7
	.4byte	0xc1
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x5
	.byte	0x8
	.4byte	0xea
	.byte	0
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x5
	.byte	0xa
	.4byte	0x118
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.4byte	0x21
	.4byte	0xdf
	.uleb128 0x9
	.4byte	0x8f
	.uleb128 0x9
	.4byte	0x68
	.uleb128 0x9
	.4byte	0xdf
	.uleb128 0x9
	.4byte	0xdf
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xe5
	.uleb128 0xa
	.4byte	0x48
	.uleb128 0x5
	.byte	0x4
	.4byte	0xc1
	.uleb128 0x8
	.4byte	0x21
	.4byte	0x118
	.uleb128 0x9
	.4byte	0x8f
	.uleb128 0x9
	.4byte	0xdf
	.uleb128 0x9
	.4byte	0x68
	.uleb128 0x9
	.4byte	0xdf
	.uleb128 0x9
	.4byte	0x6f
	.uleb128 0x9
	.4byte	0xdf
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xf0
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0xe
	.4byte	0x9c
	.uleb128 0xb
	.4byte	.LASF17
	.byte	0x1
	.byte	0x1d
	.4byte	0x28
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x1
	.byte	0x23
	.4byte	0x28
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x1
	.byte	0x29
	.4byte	0x21
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ba
	.uleb128 0xd
	.string	"c"
	.byte	0x1
	.byte	0x29
	.4byte	0x8f
	.4byte	.LLST0
	.uleb128 0xe
	.4byte	.LASF19
	.byte	0x1
	.byte	0x29
	.4byte	0x68
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xf
	.string	"n"
	.byte	0x1
	.byte	0x2a
	.4byte	0xdf
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xf
	.string	"k"
	.byte	0x1
	.byte	0x2a
	.4byte	0xdf
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x10
	.4byte	.LVL1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x1
	.byte	0x30
	.4byte	0x21
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x242
	.uleb128 0xd
	.string	"c"
	.byte	0x1
	.byte	0x30
	.4byte	0x8f
	.4byte	.LLST1
	.uleb128 0xf
	.string	"m"
	.byte	0x1
	.byte	0x30
	.4byte	0xdf
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0x1
	.byte	0x31
	.4byte	0x68
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xf
	.string	"n"
	.byte	0x1
	.byte	0x32
	.4byte	0xdf
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xf
	.string	"ic"
	.byte	0x1
	.byte	0x32
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xf
	.string	"k"
	.byte	0x1
	.byte	0x33
	.4byte	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x10
	.4byte	.LVL4
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
	.byte	0x73
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x1
	.byte	0x39
	.4byte	0x21
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2bb
	.uleb128 0xd
	.string	"c"
	.byte	0x1
	.byte	0x39
	.4byte	0x8f
	.4byte	.LLST2
	.uleb128 0xf
	.string	"m"
	.byte	0x1
	.byte	0x39
	.4byte	0xdf
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0x1
	.byte	0x3a
	.4byte	0x68
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xf
	.string	"n"
	.byte	0x1
	.byte	0x3a
	.4byte	0xdf
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xf
	.string	"k"
	.byte	0x1
	.byte	0x3b
	.4byte	0xdf
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x10
	.4byte	.LVL7
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
	.byte	0x73
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF27
	.byte	0x1
	.byte	0x41
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2f2
	.uleb128 0xf
	.string	"k"
	.byte	0x1
	.byte	0x41
	.4byte	0x8f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x13
	.4byte	.LVL10
	.4byte	0x32e
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
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x1
	.byte	0x47
	.4byte	0x21
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.4byte	.LASF28
	.byte	0x1
	.byte	0x18
	.4byte	0x318
	.uleb128 0x5
	.byte	0x3
	.4byte	implementation
	.uleb128 0x5
	.byte	0x4
	.4byte	0x31e
	.uleb128 0xa
	.4byte	0x11e
	.uleb128 0x15
	.4byte	.LASF29
	.byte	0x6
	.byte	0x8
	.4byte	0x9c
	.uleb128 0x16
	.4byte	.LASF30
	.4byte	.LASF30
	.byte	0x7
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.4byte	.LFE14
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
	.4byte	.LFE15
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
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x4c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF14:
	.string	"stream"
.LASF6:
	.string	"size_t"
.LASF28:
	.string	"implementation"
.LASF19:
	.string	"clen"
.LASF27:
	.string	"crypto_stream_salsa20_keygen"
.LASF26:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_stream/salsa20/stream_salsa20.c"
.LASF29:
	.string	"crypto_stream_salsa20_ref_implementation"
.LASF22:
	.string	"mlen"
.LASF9:
	.string	"uint64_t"
.LASF25:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF3:
	.string	"unsigned char"
.LASF12:
	.string	"long unsigned int"
.LASF1:
	.string	"short unsigned int"
.LASF21:
	.string	"crypto_stream_salsa20_xor_ic"
.LASF15:
	.string	"stream_xor_ic"
.LASF18:
	.string	"crypto_stream_salsa20_noncebytes"
.LASF17:
	.string	"crypto_stream_salsa20_keybytes"
.LASF4:
	.string	"short int"
.LASF30:
	.string	"randombytes_buf"
.LASF0:
	.string	"unsigned int"
.LASF8:
	.string	"long long unsigned int"
.LASF24:
	.string	"_crypto_stream_salsa20_pick_best_implementation"
.LASF11:
	.string	"sizetype"
.LASF5:
	.string	"long long int"
.LASF13:
	.string	"char"
.LASF23:
	.string	"crypto_stream_salsa20_xor"
.LASF20:
	.string	"crypto_stream_salsa20"
.LASF16:
	.string	"crypto_stream_salsa20_implementation"
.LASF7:
	.string	"__uint64_t"
.LASF10:
	.string	"long int"
.LASF2:
	.string	"signed char"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
