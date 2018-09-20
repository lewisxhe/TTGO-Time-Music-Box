	.file	"onetimeauth_poly1305.c"
	.text
.Ltext0:
	.section	.text.crypto_onetimeauth_poly1305,"ax",@progbits
	.literal_position
	.literal .LC0, implementation
	.align	4
	.global	crypto_onetimeauth_poly1305
	.type	crypto_onetimeauth_poly1305, @function
crypto_onetimeauth_poly1305:
.LFB12:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_onetimeauth/poly1305/onetimeauth_poly1305.c"
	.loc 1 19 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 20 0
	l32r	a8, .LC0
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 0
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a8
.LVL1:
	.loc 1 21 0
	mov.n	a2, a10
.LVL2:
	retw.n
.LFE12:
	.size	crypto_onetimeauth_poly1305, .-crypto_onetimeauth_poly1305
	.section	.text.crypto_onetimeauth_poly1305_verify,"ax",@progbits
	.literal_position
	.literal .LC1, implementation
	.align	4
	.global	crypto_onetimeauth_poly1305_verify
	.type	crypto_onetimeauth_poly1305_verify, @function
crypto_onetimeauth_poly1305_verify:
.LFB13:
	.loc 1 28 0
.LVL3:
	entry	sp, 32
.LCFI1:
	.loc 1 29 0
	l32r	a8, .LC1
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 4
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a8
.LVL4:
	.loc 1 30 0
	mov.n	a2, a10
.LVL5:
	retw.n
.LFE13:
	.size	crypto_onetimeauth_poly1305_verify, .-crypto_onetimeauth_poly1305_verify
	.section	.text.crypto_onetimeauth_poly1305_init,"ax",@progbits
	.literal_position
	.literal .LC2, implementation
	.align	4
	.global	crypto_onetimeauth_poly1305_init
	.type	crypto_onetimeauth_poly1305_init, @function
crypto_onetimeauth_poly1305_init:
.LFB14:
	.loc 1 35 0
.LVL6:
	entry	sp, 32
.LCFI2:
	.loc 1 36 0
	l32r	a8, .LC2
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 8
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a8
.LVL7:
	.loc 1 37 0
	mov.n	a2, a10
.LVL8:
	retw.n
.LFE14:
	.size	crypto_onetimeauth_poly1305_init, .-crypto_onetimeauth_poly1305_init
	.section	.text.crypto_onetimeauth_poly1305_update,"ax",@progbits
	.literal_position
	.literal .LC3, implementation
	.align	4
	.global	crypto_onetimeauth_poly1305_update
	.type	crypto_onetimeauth_poly1305_update, @function
crypto_onetimeauth_poly1305_update:
.LFB15:
	.loc 1 43 0
.LVL9:
	entry	sp, 32
.LCFI3:
	.loc 1 44 0
	l32r	a8, .LC3
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 12
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a8
.LVL10:
	.loc 1 45 0
	mov.n	a2, a10
.LVL11:
	retw.n
.LFE15:
	.size	crypto_onetimeauth_poly1305_update, .-crypto_onetimeauth_poly1305_update
	.section	.text.crypto_onetimeauth_poly1305_final,"ax",@progbits
	.literal_position
	.literal .LC4, implementation
	.align	4
	.global	crypto_onetimeauth_poly1305_final
	.type	crypto_onetimeauth_poly1305_final, @function
crypto_onetimeauth_poly1305_final:
.LFB16:
	.loc 1 50 0
.LVL12:
	entry	sp, 32
.LCFI4:
	.loc 1 51 0
	l32r	a8, .LC4
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 16
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a8
.LVL13:
	.loc 1 52 0
	mov.n	a2, a10
.LVL14:
	retw.n
.LFE16:
	.size	crypto_onetimeauth_poly1305_final, .-crypto_onetimeauth_poly1305_final
	.section	.text.crypto_onetimeauth_poly1305_bytes,"ax",@progbits
	.align	4
	.global	crypto_onetimeauth_poly1305_bytes
	.type	crypto_onetimeauth_poly1305_bytes, @function
crypto_onetimeauth_poly1305_bytes:
.LFB17:
	.loc 1 56 0
	entry	sp, 32
.LCFI5:
	.loc 1 58 0
	movi.n	a2, 0x10
	retw.n
.LFE17:
	.size	crypto_onetimeauth_poly1305_bytes, .-crypto_onetimeauth_poly1305_bytes
	.section	.text.crypto_onetimeauth_poly1305_keybytes,"ax",@progbits
	.align	4
	.global	crypto_onetimeauth_poly1305_keybytes
	.type	crypto_onetimeauth_poly1305_keybytes, @function
crypto_onetimeauth_poly1305_keybytes:
.LFB18:
	.loc 1 62 0
	entry	sp, 32
.LCFI6:
	.loc 1 64 0
	movi.n	a2, 0x20
	retw.n
.LFE18:
	.size	crypto_onetimeauth_poly1305_keybytes, .-crypto_onetimeauth_poly1305_keybytes
	.section	.text.crypto_onetimeauth_poly1305_statebytes,"ax",@progbits
	.align	4
	.global	crypto_onetimeauth_poly1305_statebytes
	.type	crypto_onetimeauth_poly1305_statebytes, @function
crypto_onetimeauth_poly1305_statebytes:
.LFB19:
	.loc 1 68 0
	entry	sp, 32
.LCFI7:
	.loc 1 70 0
	movi	a2, 0x100
	retw.n
.LFE19:
	.size	crypto_onetimeauth_poly1305_statebytes, .-crypto_onetimeauth_poly1305_statebytes
	.section	.text.crypto_onetimeauth_poly1305_keygen,"ax",@progbits
	.align	4
	.global	crypto_onetimeauth_poly1305_keygen
	.type	crypto_onetimeauth_poly1305_keygen, @function
crypto_onetimeauth_poly1305_keygen:
.LFB20:
	.loc 1 75 0
.LVL15:
	entry	sp, 32
.LCFI8:
	.loc 1 76 0
	movi.n	a11, 0x20
	mov.n	a10, a2
	call8	randombytes_buf
.LVL16:
	retw.n
.LFE20:
	.size	crypto_onetimeauth_poly1305_keygen, .-crypto_onetimeauth_poly1305_keygen
	.section	.text._crypto_onetimeauth_poly1305_pick_best_implementation,"ax",@progbits
	.literal_position
	.literal .LC5, implementation
	.literal .LC6, crypto_onetimeauth_poly1305_donna_implementation
	.align	4
	.global	_crypto_onetimeauth_poly1305_pick_best_implementation
	.type	_crypto_onetimeauth_poly1305_pick_best_implementation, @function
_crypto_onetimeauth_poly1305_pick_best_implementation:
.LFB21:
	.loc 1 81 0
	entry	sp, 32
.LCFI9:
	.loc 1 82 0
	l32r	a9, .LC6
	l32r	a8, .LC5
	s32i.n	a9, a8, 0
	.loc 1 89 0
	movi.n	a2, 0
	retw.n
.LFE21:
	.size	_crypto_onetimeauth_poly1305_pick_best_implementation, .-_crypto_onetimeauth_poly1305_pick_best_implementation
	.section	.data.implementation,"aw",@progbits
	.align	4
	.type	implementation, @object
	.size	implementation, 4
implementation:
	.word	crypto_onetimeauth_poly1305_donna_implementation
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
	.uleb128 0x20
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
	.uleb128 0x20
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
	.uleb128 0x20
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
	.uleb128 0x20
	.align	4
.LEFDE18:
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_onetimeauth_poly1305.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_onetimeauth/poly1305/onetimeauth_poly1305.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_onetimeauth/poly1305/donna/poly1305_donna.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/randombytes.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x434
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0xc
	.4byte	.LASF32
	.4byte	.LASF33
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x2
	.byte	0xd8
	.4byte	0x48
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
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x6
	.4byte	.LASF12
	.2byte	0x100
	.byte	0x3
	.byte	0x13
	.4byte	0xa4
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x3
	.byte	0x14
	.4byte	0xa4
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x2c
	.4byte	0xb4
	.uleb128 0x9
	.4byte	0x6f
	.byte	0xff
	.byte	0
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0x15
	.4byte	0x8a
	.uleb128 0xa
	.4byte	.LASF13
	.byte	0x14
	.byte	0x4
	.byte	0x7
	.4byte	0x108
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x4
	.byte	0x8
	.4byte	0x131
	.byte	0
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x4
	.byte	0xa
	.4byte	0x155
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x4
	.byte	0xc
	.4byte	0x175
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x4
	.byte	0xe
	.4byte	0x194
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x4
	.byte	0x11
	.4byte	0x1ae
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.4byte	0x41
	.4byte	0x126
	.uleb128 0xc
	.4byte	0x7d
	.uleb128 0xc
	.4byte	0x126
	.uleb128 0xc
	.4byte	0x56
	.uleb128 0xc
	.4byte	0x126
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x12c
	.uleb128 0xd
	.4byte	0x2c
	.uleb128 0x5
	.byte	0x4
	.4byte	0x108
	.uleb128 0xb
	.4byte	0x41
	.4byte	0x155
	.uleb128 0xc
	.4byte	0x126
	.uleb128 0xc
	.4byte	0x126
	.uleb128 0xc
	.4byte	0x56
	.uleb128 0xc
	.4byte	0x126
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x137
	.uleb128 0xb
	.4byte	0x41
	.4byte	0x16f
	.uleb128 0xc
	.4byte	0x16f
	.uleb128 0xc
	.4byte	0x126
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb4
	.uleb128 0x5
	.byte	0x4
	.4byte	0x15b
	.uleb128 0xb
	.4byte	0x41
	.4byte	0x194
	.uleb128 0xc
	.4byte	0x16f
	.uleb128 0xc
	.4byte	0x126
	.uleb128 0xc
	.4byte	0x56
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x17b
	.uleb128 0xb
	.4byte	0x41
	.4byte	0x1ae
	.uleb128 0xc
	.4byte	0x16f
	.uleb128 0xc
	.4byte	0x7d
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x19a
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x4
	.byte	0x13
	.4byte	0xbf
	.uleb128 0xe
	.4byte	.LASF21
	.byte	0x1
	.byte	0x11
	.4byte	0x41
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x229
	.uleb128 0xf
	.string	"out"
	.byte	0x1
	.byte	0x11
	.4byte	0x7d
	.4byte	.LLST0
	.uleb128 0x10
	.string	"in"
	.byte	0x1
	.byte	0x11
	.4byte	0x126
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x11
	.4byte	.LASF20
	.byte	0x1
	.byte	0x12
	.4byte	0x56
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x10
	.string	"k"
	.byte	0x1
	.byte	0x12
	.4byte	0x126
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x12
	.4byte	.LVL1
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0x1
	.byte	0x18
	.4byte	0x41
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x291
	.uleb128 0xf
	.string	"h"
	.byte	0x1
	.byte	0x18
	.4byte	0x126
	.4byte	.LLST1
	.uleb128 0x10
	.string	"in"
	.byte	0x1
	.byte	0x19
	.4byte	0x126
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x11
	.4byte	.LASF20
	.byte	0x1
	.byte	0x1a
	.4byte	0x56
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x10
	.string	"k"
	.byte	0x1
	.byte	0x1b
	.4byte	0x126
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x12
	.4byte	.LVL4
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF23
	.byte	0x1
	.byte	0x21
	.4byte	0x41
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2d9
	.uleb128 0x14
	.4byte	.LASF24
	.byte	0x1
	.byte	0x21
	.4byte	0x16f
	.4byte	.LLST2
	.uleb128 0x10
	.string	"key"
	.byte	0x1
	.byte	0x22
	.4byte	0x126
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x12
	.4byte	.LVL7
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF25
	.byte	0x1
	.byte	0x28
	.4byte	0x41
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x332
	.uleb128 0x14
	.4byte	.LASF24
	.byte	0x1
	.byte	0x28
	.4byte	0x16f
	.4byte	.LLST3
	.uleb128 0x10
	.string	"in"
	.byte	0x1
	.byte	0x29
	.4byte	0x126
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x11
	.4byte	.LASF20
	.byte	0x1
	.byte	0x2a
	.4byte	0x56
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LVL10
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF26
	.byte	0x1
	.byte	0x30
	.4byte	0x41
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x37a
	.uleb128 0x14
	.4byte	.LASF24
	.byte	0x1
	.byte	0x30
	.4byte	0x16f
	.4byte	.LLST4
	.uleb128 0x10
	.string	"out"
	.byte	0x1
	.byte	0x31
	.4byte	0x7d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x12
	.4byte	.LVL13
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF27
	.byte	0x1
	.byte	0x37
	.4byte	0x5d
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x15
	.4byte	.LASF28
	.byte	0x1
	.byte	0x3d
	.4byte	0x5d
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x15
	.4byte	.LASF29
	.byte	0x1
	.byte	0x43
	.4byte	0x5d
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x16
	.4byte	.LASF34
	.byte	0x1
	.byte	0x49
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3f0
	.uleb128 0x10
	.string	"k"
	.byte	0x1
	.byte	0x4a
	.4byte	0x7d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x17
	.4byte	.LVL16
	.4byte	0x42c
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.byte	0x50
	.4byte	0x41
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x18
	.4byte	.LASF35
	.byte	0x1
	.byte	0xd
	.4byte	0x416
	.uleb128 0x5
	.byte	0x3
	.4byte	implementation
	.uleb128 0x5
	.byte	0x4
	.4byte	0x41c
	.uleb128 0xd
	.4byte	0x1b4
	.uleb128 0x19
	.4byte	.LASF36
	.byte	0x5
	.byte	0xa
	.4byte	0xbf
	.uleb128 0x1a
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x6
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.4byte	.LFE12
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
	.4byte	.LFE13
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
	.4byte	.LFE14
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
	.4byte	.LFE15
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
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x64
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF34:
	.string	"crypto_onetimeauth_poly1305_keygen"
.LASF21:
	.string	"crypto_onetimeauth_poly1305"
.LASF11:
	.string	"size_t"
.LASF35:
	.string	"implementation"
.LASF24:
	.string	"state"
.LASF28:
	.string	"crypto_onetimeauth_poly1305_keybytes"
.LASF15:
	.string	"onetimeauth"
.LASF25:
	.string	"crypto_onetimeauth_poly1305_update"
.LASF27:
	.string	"crypto_onetimeauth_poly1305_bytes"
.LASF23:
	.string	"crypto_onetimeauth_poly1305_init"
.LASF31:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF16:
	.string	"onetimeauth_verify"
.LASF32:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_onetimeauth/poly1305/onetimeauth_poly1305.c"
.LASF1:
	.string	"unsigned char"
.LASF22:
	.string	"crypto_onetimeauth_poly1305_verify"
.LASF9:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF29:
	.string	"crypto_onetimeauth_poly1305_statebytes"
.LASF20:
	.string	"inlen"
.LASF12:
	.string	"crypto_onetimeauth_poly1305_state"
.LASF37:
	.string	"randombytes_buf"
.LASF26:
	.string	"crypto_onetimeauth_poly1305_final"
.LASF36:
	.string	"crypto_onetimeauth_poly1305_donna_implementation"
.LASF4:
	.string	"unsigned int"
.LASF6:
	.string	"long long unsigned int"
.LASF8:
	.string	"sizetype"
.LASF13:
	.string	"crypto_onetimeauth_poly1305_implementation"
.LASF17:
	.string	"onetimeauth_init"
.LASF5:
	.string	"long long int"
.LASF10:
	.string	"char"
.LASF18:
	.string	"onetimeauth_update"
.LASF14:
	.string	"opaque"
.LASF2:
	.string	"short int"
.LASF33:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\libsodium"
.LASF7:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF30:
	.string	"_crypto_onetimeauth_poly1305_pick_best_implementation"
.LASF19:
	.string	"onetimeauth_final"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
