	.file	"stream_chacha20.c"
	.text
.Ltext0:
	.section	.text.crypto_stream_chacha20_keybytes,"ax",@progbits
	.align	4
	.global	crypto_stream_chacha20_keybytes
	.type	crypto_stream_chacha20_keybytes, @function
crypto_stream_chacha20_keybytes:
.LFB12:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_stream/chacha20/stream_chacha20.c"
	.loc 1 20 0
	entry	sp, 32
.LCFI0:
	.loc 1 22 0
	movi.n	a2, 0x20
	retw.n
.LFE12:
	.size	crypto_stream_chacha20_keybytes, .-crypto_stream_chacha20_keybytes
	.section	.text.crypto_stream_chacha20_noncebytes,"ax",@progbits
	.align	4
	.global	crypto_stream_chacha20_noncebytes
	.type	crypto_stream_chacha20_noncebytes, @function
crypto_stream_chacha20_noncebytes:
.LFB13:
	.loc 1 25 0
	entry	sp, 32
.LCFI1:
	.loc 1 27 0
	movi.n	a2, 8
	retw.n
.LFE13:
	.size	crypto_stream_chacha20_noncebytes, .-crypto_stream_chacha20_noncebytes
	.section	.text.crypto_stream_chacha20_ietf_keybytes,"ax",@progbits
	.align	4
	.global	crypto_stream_chacha20_ietf_keybytes
	.type	crypto_stream_chacha20_ietf_keybytes, @function
crypto_stream_chacha20_ietf_keybytes:
.LFB14:
	.loc 1 30 0
	entry	sp, 32
.LCFI2:
	.loc 1 32 0
	movi.n	a2, 0x20
	retw.n
.LFE14:
	.size	crypto_stream_chacha20_ietf_keybytes, .-crypto_stream_chacha20_ietf_keybytes
	.section	.text.crypto_stream_chacha20_ietf_noncebytes,"ax",@progbits
	.align	4
	.global	crypto_stream_chacha20_ietf_noncebytes
	.type	crypto_stream_chacha20_ietf_noncebytes, @function
crypto_stream_chacha20_ietf_noncebytes:
.LFB15:
	.loc 1 35 0
	entry	sp, 32
.LCFI3:
	.loc 1 37 0
	movi.n	a2, 0xc
	retw.n
.LFE15:
	.size	crypto_stream_chacha20_ietf_noncebytes, .-crypto_stream_chacha20_ietf_noncebytes
	.section	.text.crypto_stream_chacha20,"ax",@progbits
	.literal_position
	.literal .LC0, implementation
	.align	4
	.global	crypto_stream_chacha20
	.type	crypto_stream_chacha20, @function
crypto_stream_chacha20:
.LFB16:
	.loc 1 42 0
.LVL0:
	entry	sp, 32
.LCFI4:
	mov.n	a15, a7
	.loc 1 43 0
	l32r	a8, .LC0
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 0
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	callx8	a8
.LVL1:
	.loc 1 44 0
	mov.n	a2, a10
.LVL2:
	retw.n
.LFE16:
	.size	crypto_stream_chacha20, .-crypto_stream_chacha20
	.section	.text.crypto_stream_chacha20_ietf,"ax",@progbits
	.literal_position
	.literal .LC1, implementation
	.align	4
	.global	crypto_stream_chacha20_ietf
	.type	crypto_stream_chacha20_ietf, @function
crypto_stream_chacha20_ietf:
.LFB17:
	.loc 1 49 0
.LVL3:
	entry	sp, 32
.LCFI5:
	mov.n	a15, a7
	.loc 1 50 0
	l32r	a8, .LC1
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 4
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	callx8	a8
.LVL4:
	.loc 1 51 0
	mov.n	a2, a10
.LVL5:
	retw.n
.LFE17:
	.size	crypto_stream_chacha20_ietf, .-crypto_stream_chacha20_ietf
	.section	.text.crypto_stream_chacha20_xor_ic,"ax",@progbits
	.literal_position
	.literal .LC2, implementation
	.align	4
	.global	crypto_stream_chacha20_xor_ic
	.type	crypto_stream_chacha20_xor_ic, @function
crypto_stream_chacha20_xor_ic:
.LFB18:
	.loc 1 58 0
.LVL6:
	entry	sp, 48
.LCFI6:
	.loc 1 59 0
	l32r	a8, .LC2
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 8
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
.LVL7:
	.loc 1 60 0
	mov.n	a2, a10
.LVL8:
	retw.n
.LFE18:
	.size	crypto_stream_chacha20_xor_ic, .-crypto_stream_chacha20_xor_ic
	.section	.text.crypto_stream_chacha20_ietf_xor_ic,"ax",@progbits
	.literal_position
	.literal .LC3, implementation
	.align	4
	.global	crypto_stream_chacha20_ietf_xor_ic
	.type	crypto_stream_chacha20_ietf_xor_ic, @function
crypto_stream_chacha20_ietf_xor_ic:
.LFB19:
	.loc 1 67 0
.LVL9:
	entry	sp, 48
.LCFI7:
	mov.n	a15, a7
	.loc 1 68 0
	l32r	a8, .LC3
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 12
	l32i.n	a9, sp, 48
	s32i.n	a9, sp, 0
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a8
.LVL10:
	.loc 1 69 0
	mov.n	a2, a10
.LVL11:
	retw.n
.LFE19:
	.size	crypto_stream_chacha20_ietf_xor_ic, .-crypto_stream_chacha20_ietf_xor_ic
	.section	.text.crypto_stream_chacha20_xor,"ax",@progbits
	.literal_position
	.literal .LC4, implementation
	.literal .LC5, 0, 0
	.align	4
	.global	crypto_stream_chacha20_xor
	.type	crypto_stream_chacha20_xor, @function
crypto_stream_chacha20_xor:
.LFB20:
	.loc 1 75 0
.LVL12:
	entry	sp, 48
.LCFI8:
	.loc 1 76 0
	l32r	a8, .LC4
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 8
	s32i.n	a7, sp, 8
	l32r	a10, .LC5
	l32r	a11, .LC5+4
	s32i.n	a10, sp, 0
	s32i.n	a11, sp, 4
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a8
.LVL13:
	.loc 1 77 0
	mov.n	a2, a10
.LVL14:
	retw.n
.LFE20:
	.size	crypto_stream_chacha20_xor, .-crypto_stream_chacha20_xor
	.section	.text.crypto_stream_chacha20_ietf_xor,"ax",@progbits
	.literal_position
	.literal .LC6, implementation
	.align	4
	.global	crypto_stream_chacha20_ietf_xor
	.type	crypto_stream_chacha20_ietf_xor, @function
crypto_stream_chacha20_ietf_xor:
.LFB21:
	.loc 1 83 0
.LVL15:
	entry	sp, 48
.LCFI9:
	.loc 1 84 0
	l32r	a8, .LC6
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 12
	s32i.n	a7, sp, 0
	movi.n	a15, 0
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a8
.LVL16:
	.loc 1 85 0
	mov.n	a2, a10
.LVL17:
	retw.n
.LFE21:
	.size	crypto_stream_chacha20_ietf_xor, .-crypto_stream_chacha20_ietf_xor
	.section	.text.crypto_stream_chacha20_ietf_keygen,"ax",@progbits
	.align	4
	.global	crypto_stream_chacha20_ietf_keygen
	.type	crypto_stream_chacha20_ietf_keygen, @function
crypto_stream_chacha20_ietf_keygen:
.LFB22:
	.loc 1 89 0
.LVL18:
	entry	sp, 32
.LCFI10:
	.loc 1 90 0
	movi.n	a11, 0x20
	mov.n	a10, a2
	call8	randombytes_buf
.LVL19:
	retw.n
.LFE22:
	.size	crypto_stream_chacha20_ietf_keygen, .-crypto_stream_chacha20_ietf_keygen
	.section	.text.crypto_stream_chacha20_keygen,"ax",@progbits
	.align	4
	.global	crypto_stream_chacha20_keygen
	.type	crypto_stream_chacha20_keygen, @function
crypto_stream_chacha20_keygen:
.LFB23:
	.loc 1 95 0
.LVL20:
	entry	sp, 32
.LCFI11:
	.loc 1 96 0
	movi.n	a11, 0x20
	mov.n	a10, a2
	call8	randombytes_buf
.LVL21:
	retw.n
.LFE23:
	.size	crypto_stream_chacha20_keygen, .-crypto_stream_chacha20_keygen
	.section	.text._crypto_stream_chacha20_pick_best_implementation,"ax",@progbits
	.literal_position
	.literal .LC7, implementation
	.literal .LC8, crypto_stream_chacha20_ref_implementation
	.align	4
	.global	_crypto_stream_chacha20_pick_best_implementation
	.type	_crypto_stream_chacha20_pick_best_implementation, @function
_crypto_stream_chacha20_pick_best_implementation:
.LFB24:
	.loc 1 101 0
	entry	sp, 32
.LCFI12:
	.loc 1 102 0
	l32r	a9, .LC8
	l32r	a8, .LC7
	s32i.n	a9, a8, 0
	.loc 1 117 0
	movi.n	a2, 0
	retw.n
.LFE24:
	.size	_crypto_stream_chacha20_pick_best_implementation, .-_crypto_stream_chacha20_pick_best_implementation
	.section	.data.implementation,"aw",@progbits
	.align	4
	.type	implementation, @object
	.size	implementation, 4
implementation:
	.word	crypto_stream_chacha20_ref_implementation
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
	.uleb128 0x20
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
	.uleb128 0x20
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
	.uleb128 0x30
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI7-.LFB19
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI8-.LFB20
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI9-.LFB21
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI10-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI11-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI12-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_stream/chacha20/stream_chacha20.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_stream/chacha20/ref/chacha20_ref.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/randombytes.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x565
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0xc
	.4byte	.LASF37
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
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
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0x1a
	.4byte	0x33
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
	.byte	0x2d
	.4byte	0x56
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
	.4byte	0x48
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x10
	.byte	0x5
	.byte	0x7
	.4byte	0xef
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x5
	.byte	0x8
	.4byte	0x118
	.byte	0
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x5
	.byte	0xa
	.4byte	0x118
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x5
	.byte	0xc
	.4byte	0x146
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x5
	.byte	0x10
	.4byte	0x174
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.4byte	0x21
	.4byte	0x10d
	.uleb128 0x9
	.4byte	0xa5
	.uleb128 0x9
	.4byte	0x73
	.uleb128 0x9
	.4byte	0x10d
	.uleb128 0x9
	.4byte	0x10d
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x113
	.uleb128 0xa
	.4byte	0x48
	.uleb128 0x5
	.byte	0x4
	.4byte	0xef
	.uleb128 0x8
	.4byte	0x21
	.4byte	0x146
	.uleb128 0x9
	.4byte	0xa5
	.uleb128 0x9
	.4byte	0x10d
	.uleb128 0x9
	.4byte	0x73
	.uleb128 0x9
	.4byte	0x10d
	.uleb128 0x9
	.4byte	0x85
	.uleb128 0x9
	.4byte	0x10d
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x11e
	.uleb128 0x8
	.4byte	0x21
	.4byte	0x174
	.uleb128 0x9
	.4byte	0xa5
	.uleb128 0x9
	.4byte	0x10d
	.uleb128 0x9
	.4byte	0x73
	.uleb128 0x9
	.4byte	0x10d
	.uleb128 0x9
	.4byte	0x7a
	.uleb128 0x9
	.4byte	0x10d
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x14c
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x5
	.byte	0x14
	.4byte	0xb2
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x1
	.byte	0x14
	.4byte	0x28
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x1
	.byte	0x19
	.4byte	0x28
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x1
	.byte	0x1e
	.4byte	0x28
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x1
	.byte	0x23
	.4byte	0x28
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x1
	.byte	0x28
	.4byte	0x21
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x240
	.uleb128 0xd
	.string	"c"
	.byte	0x1
	.byte	0x28
	.4byte	0xa5
	.4byte	.LLST0
	.uleb128 0xe
	.4byte	.LASF25
	.byte	0x1
	.byte	0x28
	.4byte	0x73
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
	.byte	0x29
	.4byte	0x10d
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xf
	.string	"k"
	.byte	0x1
	.byte	0x29
	.4byte	0x10d
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
	.4byte	.LASF27
	.byte	0x1
	.byte	0x2f
	.4byte	0x21
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2a7
	.uleb128 0xd
	.string	"c"
	.byte	0x1
	.byte	0x2f
	.4byte	0xa5
	.4byte	.LLST1
	.uleb128 0xe
	.4byte	.LASF25
	.byte	0x1
	.byte	0x2f
	.4byte	0x73
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
	.byte	0x30
	.4byte	0x10d
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xf
	.string	"k"
	.byte	0x1
	.byte	0x30
	.4byte	0x10d
	.uleb128 0x1
	.byte	0x57
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
	.4byte	.LASF28
	.byte	0x1
	.byte	0x36
	.4byte	0x21
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x32f
	.uleb128 0xd
	.string	"c"
	.byte	0x1
	.byte	0x36
	.4byte	0xa5
	.4byte	.LLST2
	.uleb128 0xf
	.string	"m"
	.byte	0x1
	.byte	0x36
	.4byte	0x10d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x1
	.byte	0x37
	.4byte	0x73
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
	.byte	0x38
	.4byte	0x10d
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xf
	.string	"ic"
	.byte	0x1
	.byte	0x38
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xf
	.string	"k"
	.byte	0x1
	.byte	0x39
	.4byte	0x10d
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
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
	.uleb128 0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x1
	.byte	0x3f
	.4byte	0x21
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3bc
	.uleb128 0xd
	.string	"c"
	.byte	0x1
	.byte	0x3f
	.4byte	0xa5
	.4byte	.LLST3
	.uleb128 0xf
	.string	"m"
	.byte	0x1
	.byte	0x3f
	.4byte	0x10d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x1
	.byte	0x40
	.4byte	0x73
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
	.byte	0x41
	.4byte	0x10d
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xf
	.string	"ic"
	.byte	0x1
	.byte	0x41
	.4byte	0x7a
	.uleb128 0x1
	.byte	0x57
	.uleb128 0xf
	.string	"k"
	.byte	0x1
	.byte	0x42
	.4byte	0x10d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.4byte	.LVL10
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
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x1
	.byte	0x48
	.4byte	0x21
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x435
	.uleb128 0xd
	.string	"c"
	.byte	0x1
	.byte	0x48
	.4byte	0xa5
	.4byte	.LLST4
	.uleb128 0xf
	.string	"m"
	.byte	0x1
	.byte	0x48
	.4byte	0x10d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x1
	.byte	0x49
	.4byte	0x73
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
	.byte	0x49
	.4byte	0x10d
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xf
	.string	"k"
	.byte	0x1
	.byte	0x4a
	.4byte	0x10d
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x10
	.4byte	.LVL13
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
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x1
	.byte	0x50
	.4byte	0x21
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4b3
	.uleb128 0xd
	.string	"c"
	.byte	0x1
	.byte	0x50
	.4byte	0xa5
	.4byte	.LLST5
	.uleb128 0xf
	.string	"m"
	.byte	0x1
	.byte	0x50
	.4byte	0x10d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x1
	.byte	0x51
	.4byte	0x73
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
	.byte	0x51
	.4byte	0x10d
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xf
	.string	"k"
	.byte	0x1
	.byte	0x52
	.4byte	0x10d
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x10
	.4byte	.LVL16
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
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF33
	.byte	0x1
	.byte	0x58
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4ea
	.uleb128 0xf
	.string	"k"
	.byte	0x1
	.byte	0x58
	.4byte	0xa5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x13
	.4byte	.LVL19
	.4byte	0x55d
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
	.uleb128 0x12
	.4byte	.LASF34
	.byte	0x1
	.byte	0x5e
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x521
	.uleb128 0xf
	.string	"k"
	.byte	0x1
	.byte	0x5e
	.4byte	0xa5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x13
	.4byte	.LVL21
	.4byte	0x55d
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
	.4byte	.LASF35
	.byte	0x1
	.byte	0x64
	.4byte	0x21
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.4byte	.LASF38
	.byte	0x1
	.byte	0x10
	.4byte	0x547
	.uleb128 0x5
	.byte	0x3
	.4byte	implementation
	.uleb128 0x5
	.byte	0x4
	.4byte	0x54d
	.uleb128 0xa
	.4byte	0x17a
	.uleb128 0x15
	.4byte	.LASF39
	.byte	0x6
	.byte	0x8
	.4byte	0xb2
	.uleb128 0x16
	.4byte	.LASF40
	.4byte	.LASF40
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
	.4byte	.LFE16
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
	.4byte	.LFE17
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
	.4byte	.LFE18
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
	.4byte	.LFE19
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
	.4byte	.LFE20
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
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x7c
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
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
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
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF16:
	.string	"stream"
.LASF5:
	.string	"size_t"
.LASF38:
	.string	"implementation"
.LASF25:
	.string	"clen"
.LASF34:
	.string	"crypto_stream_chacha20_keygen"
.LASF26:
	.string	"crypto_stream_chacha20"
.LASF31:
	.string	"crypto_stream_chacha20_xor"
.LASF29:
	.string	"mlen"
.LASF11:
	.string	"uint64_t"
.LASF27:
	.string	"crypto_stream_chacha20_ietf"
.LASF37:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_stream/chacha20/stream_chacha20.c"
.LASF17:
	.string	"stream_ietf"
.LASF3:
	.string	"unsigned char"
.LASF35:
	.string	"_crypto_stream_chacha20_pick_best_implementation"
.LASF24:
	.string	"crypto_stream_chacha20_ietf_noncebytes"
.LASF1:
	.string	"short unsigned int"
.LASF28:
	.string	"crypto_stream_chacha20_xor_ic"
.LASF6:
	.string	"__uint32_t"
.LASF32:
	.string	"crypto_stream_chacha20_ietf_xor"
.LASF18:
	.string	"stream_xor_ic"
.LASF33:
	.string	"crypto_stream_chacha20_ietf_keygen"
.LASF14:
	.string	"long unsigned int"
.LASF21:
	.string	"crypto_stream_chacha20_keybytes"
.LASF40:
	.string	"randombytes_buf"
.LASF0:
	.string	"unsigned int"
.LASF9:
	.string	"long long unsigned int"
.LASF23:
	.string	"crypto_stream_chacha20_ietf_keybytes"
.LASF13:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF39:
	.string	"crypto_stream_chacha20_ref_implementation"
.LASF36:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF15:
	.string	"char"
.LASF30:
	.string	"crypto_stream_chacha20_ietf_xor_ic"
.LASF20:
	.string	"crypto_stream_chacha20_implementation"
.LASF19:
	.string	"stream_ietf_xor_ic"
.LASF4:
	.string	"short int"
.LASF8:
	.string	"__uint64_t"
.LASF10:
	.string	"uint32_t"
.LASF12:
	.string	"long int"
.LASF22:
	.string	"crypto_stream_chacha20_noncebytes"
.LASF2:
	.string	"signed char"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
