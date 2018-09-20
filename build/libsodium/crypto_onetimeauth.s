	.file	"crypto_onetimeauth.c"
	.text
.Ltext0:
	.section	.text.crypto_onetimeauth_statebytes,"ax",@progbits
	.align	4
	.global	crypto_onetimeauth_statebytes
	.type	crypto_onetimeauth_statebytes, @function
crypto_onetimeauth_statebytes:
.LFB0:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_onetimeauth/crypto_onetimeauth.c"
	.loc 1 7 0
	entry	sp, 32
.LCFI0:
	.loc 1 9 0
	movi	a2, 0x100
	retw.n
.LFE0:
	.size	crypto_onetimeauth_statebytes, .-crypto_onetimeauth_statebytes
	.section	.text.crypto_onetimeauth_bytes,"ax",@progbits
	.align	4
	.global	crypto_onetimeauth_bytes
	.type	crypto_onetimeauth_bytes, @function
crypto_onetimeauth_bytes:
.LFB1:
	.loc 1 13 0
	entry	sp, 32
.LCFI1:
	.loc 1 15 0
	movi.n	a2, 0x10
	retw.n
.LFE1:
	.size	crypto_onetimeauth_bytes, .-crypto_onetimeauth_bytes
	.section	.text.crypto_onetimeauth_keybytes,"ax",@progbits
	.align	4
	.global	crypto_onetimeauth_keybytes
	.type	crypto_onetimeauth_keybytes, @function
crypto_onetimeauth_keybytes:
.LFB2:
	.loc 1 19 0
	entry	sp, 32
.LCFI2:
	.loc 1 21 0
	movi.n	a2, 0x20
	retw.n
.LFE2:
	.size	crypto_onetimeauth_keybytes, .-crypto_onetimeauth_keybytes
	.section	.text.crypto_onetimeauth,"ax",@progbits
	.align	4
	.global	crypto_onetimeauth
	.type	crypto_onetimeauth, @function
crypto_onetimeauth:
.LFB3:
	.loc 1 26 0
.LVL0:
	entry	sp, 32
.LCFI3:
	.loc 1 27 0
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_onetimeauth_poly1305
.LVL1:
	.loc 1 28 0
	mov.n	a2, a10
.LVL2:
	retw.n
.LFE3:
	.size	crypto_onetimeauth, .-crypto_onetimeauth
	.section	.text.crypto_onetimeauth_verify,"ax",@progbits
	.align	4
	.global	crypto_onetimeauth_verify
	.type	crypto_onetimeauth_verify, @function
crypto_onetimeauth_verify:
.LFB4:
	.loc 1 33 0
.LVL3:
	entry	sp, 32
.LCFI4:
	.loc 1 34 0
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_onetimeauth_poly1305_verify
.LVL4:
	.loc 1 35 0
	mov.n	a2, a10
.LVL5:
	retw.n
.LFE4:
	.size	crypto_onetimeauth_verify, .-crypto_onetimeauth_verify
	.section	.text.crypto_onetimeauth_init,"ax",@progbits
	.align	4
	.global	crypto_onetimeauth_init
	.type	crypto_onetimeauth_init, @function
crypto_onetimeauth_init:
.LFB5:
	.loc 1 40 0
.LVL6:
	entry	sp, 32
.LCFI5:
	.loc 1 41 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_onetimeauth_poly1305_init
.LVL7:
	.loc 1 43 0
	mov.n	a2, a10
.LVL8:
	retw.n
.LFE5:
	.size	crypto_onetimeauth_init, .-crypto_onetimeauth_init
	.section	.text.crypto_onetimeauth_update,"ax",@progbits
	.align	4
	.global	crypto_onetimeauth_update
	.type	crypto_onetimeauth_update, @function
crypto_onetimeauth_update:
.LFB6:
	.loc 1 49 0
.LVL9:
	entry	sp, 32
.LCFI6:
	.loc 1 50 0
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_onetimeauth_poly1305_update
.LVL10:
	.loc 1 52 0
	mov.n	a2, a10
.LVL11:
	retw.n
.LFE6:
	.size	crypto_onetimeauth_update, .-crypto_onetimeauth_update
	.section	.text.crypto_onetimeauth_final,"ax",@progbits
	.align	4
	.global	crypto_onetimeauth_final
	.type	crypto_onetimeauth_final, @function
crypto_onetimeauth_final:
.LFB7:
	.loc 1 57 0
.LVL12:
	entry	sp, 32
.LCFI7:
	.loc 1 58 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_onetimeauth_poly1305_final
.LVL13:
	.loc 1 60 0
	mov.n	a2, a10
.LVL14:
	retw.n
.LFE7:
	.size	crypto_onetimeauth_final, .-crypto_onetimeauth_final
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"poly1305"
	.section	.text.crypto_onetimeauth_primitive,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.align	4
	.global	crypto_onetimeauth_primitive
	.type	crypto_onetimeauth_primitive, @function
crypto_onetimeauth_primitive:
.LFB8:
	.loc 1 64 0
	entry	sp, 32
.LCFI8:
	.loc 1 66 0
	l32r	a2, .LC1
	retw.n
.LFE8:
	.size	crypto_onetimeauth_primitive, .-crypto_onetimeauth_primitive
	.section	.text.crypto_onetimeauth_keygen,"ax",@progbits
	.align	4
	.global	crypto_onetimeauth_keygen
	.type	crypto_onetimeauth_keygen, @function
crypto_onetimeauth_keygen:
.LFB9:
	.loc 1 69 0
.LVL15:
	entry	sp, 32
.LCFI9:
	.loc 1 70 0
	movi.n	a11, 0x20
	mov.n	a10, a2
	call8	randombytes_buf
.LVL16:
	retw.n
.LFE9:
	.size	crypto_onetimeauth_keygen, .-crypto_onetimeauth_keygen
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
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_onetimeauth_poly1305.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_onetimeauth.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/randombytes.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x37f
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
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x2
	.byte	0xd8
	.4byte	0x37
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
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x5
	.byte	0x4
	.4byte	0x4c
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x5
	.byte	0x4
	.4byte	0x90
	.uleb128 0x6
	.4byte	0x83
	.uleb128 0x7
	.4byte	.LASF12
	.2byte	0x100
	.byte	0x3
	.byte	0x13
	.4byte	0xaf
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x3
	.byte	0x14
	.4byte	0xaf
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x4c
	.4byte	0xbf
	.uleb128 0xa
	.4byte	0x6f
	.byte	0xff
	.byte	0
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x15
	.4byte	0x95
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x10
	.4byte	0xbf
	.uleb128 0xb
	.4byte	.LASF14
	.byte	0x1
	.byte	0x6
	.4byte	0x2c
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xb
	.4byte	.LASF15
	.byte	0x1
	.byte	0xc
	.4byte	0x2c
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xb
	.4byte	.LASF16
	.byte	0x1
	.byte	0x12
	.4byte	0x2c
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF18
	.byte	0x1
	.byte	0x18
	.4byte	0x25
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x182
	.uleb128 0xd
	.string	"out"
	.byte	0x1
	.byte	0x18
	.4byte	0x7d
	.4byte	.LLST0
	.uleb128 0xe
	.string	"in"
	.byte	0x1
	.byte	0x18
	.4byte	0x182
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.4byte	.LASF17
	.byte	0x1
	.byte	0x19
	.4byte	0x61
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xe
	.string	"k"
	.byte	0x1
	.byte	0x19
	.4byte	0x182
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x10
	.4byte	.LVL1
	.4byte	0x340
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
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x188
	.uleb128 0x6
	.4byte	0x4c
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0x1
	.byte	0x1f
	.4byte	0x25
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f9
	.uleb128 0xd
	.string	"h"
	.byte	0x1
	.byte	0x1f
	.4byte	0x182
	.4byte	.LLST1
	.uleb128 0xe
	.string	"in"
	.byte	0x1
	.byte	0x1f
	.4byte	0x182
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.4byte	.LASF17
	.byte	0x1
	.byte	0x20
	.4byte	0x61
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xe
	.string	"k"
	.byte	0x1
	.byte	0x20
	.4byte	0x182
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x10
	.4byte	.LVL4
	.4byte	0x34b
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
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x1
	.byte	0x26
	.4byte	0x25
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x245
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.byte	0x26
	.4byte	0x245
	.4byte	.LLST2
	.uleb128 0xe
	.string	"key"
	.byte	0x1
	.byte	0x27
	.4byte	0x182
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x10
	.4byte	.LVL7
	.4byte	0x356
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
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xca
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x1
	.byte	0x2e
	.4byte	0x25
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2a8
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.byte	0x2e
	.4byte	0x245
	.4byte	.LLST3
	.uleb128 0xe
	.string	"in"
	.byte	0x1
	.byte	0x2f
	.4byte	0x182
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.4byte	.LASF17
	.byte	0x1
	.byte	0x30
	.4byte	0x61
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LVL10
	.4byte	0x361
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
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x1
	.byte	0x37
	.4byte	0x25
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2f4
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.byte	0x37
	.4byte	0x245
	.4byte	.LLST4
	.uleb128 0xe
	.string	"out"
	.byte	0x1
	.byte	0x38
	.4byte	0x7d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x10
	.4byte	.LVL13
	.4byte	0x36c
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
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x1
	.byte	0x3f
	.4byte	0x8a
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x13
	.4byte	.LASF35
	.byte	0x1
	.byte	0x44
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x340
	.uleb128 0xe
	.string	"k"
	.byte	0x1
	.byte	0x44
	.4byte	0x7d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x10
	.4byte	.LVL16
	.4byte	0x377
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
	.uleb128 0x14
	.4byte	.LASF25
	.4byte	.LASF25
	.byte	0x3
	.byte	0x23
	.uleb128 0x14
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x3
	.byte	0x29
	.uleb128 0x14
	.4byte	.LASF27
	.4byte	.LASF27
	.byte	0x3
	.byte	0x30
	.uleb128 0x14
	.4byte	.LASF28
	.4byte	.LASF28
	.byte	0x3
	.byte	0x34
	.uleb128 0x14
	.4byte	.LASF29
	.4byte	.LASF29
	.byte	0x3
	.byte	0x39
	.uleb128 0x14
	.4byte	.LASF30
	.4byte	.LASF30
	.byte	0x5
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
	.uleb128 0x5
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
	.uleb128 0x10
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LFE3
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
	.4byte	.LFE4
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
	.4byte	.LFE5
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
	.4byte	.LFE6
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
	.4byte	.LFE7
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF25:
	.string	"crypto_onetimeauth_poly1305"
.LASF11:
	.string	"size_t"
.LASF23:
	.string	"crypto_onetimeauth_final"
.LASF21:
	.string	"state"
.LASF32:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_onetimeauth/crypto_onetimeauth.c"
.LASF28:
	.string	"crypto_onetimeauth_poly1305_update"
.LASF13:
	.string	"crypto_onetimeauth_state"
.LASF15:
	.string	"crypto_onetimeauth_bytes"
.LASF27:
	.string	"crypto_onetimeauth_poly1305_init"
.LASF31:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF35:
	.string	"crypto_onetimeauth_keygen"
.LASF18:
	.string	"crypto_onetimeauth"
.LASF3:
	.string	"unsigned char"
.LASF26:
	.string	"crypto_onetimeauth_poly1305_verify"
.LASF9:
	.string	"long unsigned int"
.LASF1:
	.string	"short unsigned int"
.LASF22:
	.string	"crypto_onetimeauth_update"
.LASF17:
	.string	"inlen"
.LASF12:
	.string	"crypto_onetimeauth_poly1305_state"
.LASF30:
	.string	"randombytes_buf"
.LASF29:
	.string	"crypto_onetimeauth_poly1305_final"
.LASF0:
	.string	"unsigned int"
.LASF19:
	.string	"crypto_onetimeauth_verify"
.LASF6:
	.string	"long long unsigned int"
.LASF8:
	.string	"sizetype"
.LASF5:
	.string	"long long int"
.LASF24:
	.string	"crypto_onetimeauth_primitive"
.LASF10:
	.string	"char"
.LASF14:
	.string	"crypto_onetimeauth_statebytes"
.LASF34:
	.string	"opaque"
.LASF4:
	.string	"short int"
.LASF33:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\libsodium"
.LASF16:
	.string	"crypto_onetimeauth_keybytes"
.LASF20:
	.string	"crypto_onetimeauth_init"
.LASF7:
	.string	"long int"
.LASF2:
	.string	"signed char"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
