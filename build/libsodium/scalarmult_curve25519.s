	.file	"scalarmult_curve25519.c"
	.text
.Ltext0:
	.section	.text.crypto_scalarmult_curve25519,"ax",@progbits
	.literal_position
	.literal .LC0, implementation
	.align	4
	.global	crypto_scalarmult_curve25519
	.type	crypto_scalarmult_curve25519, @function
crypto_scalarmult_curve25519:
.LFB0:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_scalarmult/curve25519/scalarmult_curve25519.c"
	.loc 1 22 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 26 0
	l32r	a8, .LC0
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a8
.LVL2:
	bnez.n	a10, .L5
	movi.n	a9, 0
	mov.n	a8, a9
	j	.L3
.LVL3:
.L4:
	.loc 1 30 0 discriminator 3
	add.n	a10, a2, a8
	l8ui	a10, a10, 0
	or	a9, a9, a10
.LVL4:
	.loc 1 29 0 discriminator 3
	addi.n	a8, a8, 1
.LVL5:
.L3:
	.loc 1 29 0 is_stmt 0 discriminator 1
	movi.n	a10, 0x1f
	bgeu	a10, a8, .L4
	.loc 1 32 0 is_stmt 1
	addi.n	a2, a9, -1
.LVL6:
	extui	a2, a2, 8, 1
	neg	a2, a2
	retw.n
.LVL7:
.L5:
	.loc 1 27 0
	movi.n	a2, -1
.LVL8:
	.loc 1 33 0
	retw.n
.LFE0:
	.size	crypto_scalarmult_curve25519, .-crypto_scalarmult_curve25519
	.section	.text.crypto_scalarmult_curve25519_base,"ax",@progbits
	.literal_position
	.literal .LC1, implementation
	.align	4
	.global	crypto_scalarmult_curve25519_base
	.type	crypto_scalarmult_curve25519_base, @function
crypto_scalarmult_curve25519_base:
.LFB1:
	.loc 1 37 0
.LVL9:
	entry	sp, 32
.LCFI1:
	.loc 1 38 0
	l32r	a8, .LC1
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 4
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a8
.LVL10:
	.loc 1 39 0
	mov.n	a2, a10
.LVL11:
	retw.n
.LFE1:
	.size	crypto_scalarmult_curve25519_base, .-crypto_scalarmult_curve25519_base
	.section	.text.crypto_scalarmult_curve25519_bytes,"ax",@progbits
	.align	4
	.global	crypto_scalarmult_curve25519_bytes
	.type	crypto_scalarmult_curve25519_bytes, @function
crypto_scalarmult_curve25519_bytes:
.LFB2:
	.loc 1 43 0
	entry	sp, 32
.LCFI2:
	.loc 1 45 0
	movi.n	a2, 0x20
	retw.n
.LFE2:
	.size	crypto_scalarmult_curve25519_bytes, .-crypto_scalarmult_curve25519_bytes
	.section	.text.crypto_scalarmult_curve25519_scalarbytes,"ax",@progbits
	.align	4
	.global	crypto_scalarmult_curve25519_scalarbytes
	.type	crypto_scalarmult_curve25519_scalarbytes, @function
crypto_scalarmult_curve25519_scalarbytes:
.LFB3:
	.loc 1 49 0
	entry	sp, 32
.LCFI3:
	.loc 1 51 0
	movi.n	a2, 0x20
	retw.n
.LFE3:
	.size	crypto_scalarmult_curve25519_scalarbytes, .-crypto_scalarmult_curve25519_scalarbytes
	.section	.text._crypto_scalarmult_curve25519_pick_best_implementation,"ax",@progbits
	.literal_position
	.literal .LC2, implementation
	.literal .LC3, crypto_scalarmult_curve25519_ref10_implementation
	.align	4
	.global	_crypto_scalarmult_curve25519_pick_best_implementation
	.type	_crypto_scalarmult_curve25519_pick_best_implementation, @function
_crypto_scalarmult_curve25519_pick_best_implementation:
.LFB4:
	.loc 1 55 0
	entry	sp, 32
.LCFI4:
	.loc 1 59 0
	l32r	a9, .LC3
	l32r	a8, .LC2
	s32i.n	a9, a8, 0
	.loc 1 67 0
	movi.n	a2, 0
	retw.n
.LFE4:
	.size	_crypto_scalarmult_curve25519_pick_best_implementation, .-_crypto_scalarmult_curve25519_pick_best_implementation
	.section	.data.implementation,"aw",@progbits
	.align	4
	.type	implementation, @object
	.size	implementation, 4
implementation:
	.word	crypto_scalarmult_curve25519_ref10_implementation
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
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_scalarmult/curve25519/scalarmult_curve25519.h"
	.file 3 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_scalarmult/curve25519/ref10/x25519_ref10.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1d8
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF13
	.byte	0xc
	.4byte	.LASF14
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
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
	.4byte	.LASF6
	.byte	0x8
	.byte	0x2
	.byte	0x5
	.4byte	0x66
	.uleb128 0x6
	.4byte	.LASF2
	.byte	0x2
	.byte	0x6
	.4byte	0x97
	.byte	0
	.uleb128 0x6
	.4byte	.LASF3
	.byte	0x2
	.byte	0x8
	.4byte	0xb1
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.4byte	0x21
	.4byte	0x7f
	.uleb128 0x8
	.4byte	0x7f
	.uleb128 0x8
	.4byte	0x8c
	.uleb128 0x8
	.4byte	0x8c
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x85
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x9
	.byte	0x4
	.4byte	0x92
	.uleb128 0xa
	.4byte	0x85
	.uleb128 0x9
	.byte	0x4
	.4byte	0x66
	.uleb128 0x7
	.4byte	0x21
	.4byte	0xb1
	.uleb128 0x8
	.4byte	0x7f
	.uleb128 0x8
	.4byte	0x8c
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x9d
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x9
	.4byte	0x41
	.uleb128 0xb
	.4byte	.LASF7
	.byte	0x1
	.byte	0x14
	.4byte	0x21
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x131
	.uleb128 0xc
	.string	"q"
	.byte	0x1
	.byte	0x14
	.4byte	0x7f
	.4byte	.LLST0
	.uleb128 0xd
	.string	"n"
	.byte	0x1
	.byte	0x14
	.4byte	0x8c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xd
	.string	"p"
	.byte	0x1
	.byte	0x15
	.4byte	0x8c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xe
	.string	"i"
	.byte	0x1
	.byte	0x17
	.4byte	0x28
	.4byte	.LLST1
	.uleb128 0xe
	.string	"d"
	.byte	0x1
	.byte	0x18
	.4byte	0x85
	.4byte	.LLST2
	.uleb128 0xf
	.4byte	.LVL2
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
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF8
	.byte	0x1
	.byte	0x24
	.4byte	0x21
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x175
	.uleb128 0xc
	.string	"q"
	.byte	0x1
	.byte	0x24
	.4byte	0x7f
	.4byte	.LLST3
	.uleb128 0xd
	.string	"n"
	.byte	0x1
	.byte	0x24
	.4byte	0x8c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.4byte	.LVL10
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
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF9
	.byte	0x1
	.byte	0x2a
	.4byte	0x28
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.4byte	.LASF10
	.byte	0x1
	.byte	0x30
	.4byte	0x28
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.4byte	.LASF11
	.byte	0x1
	.byte	0x36
	.4byte	0x21
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x12
	.4byte	.LASF12
	.byte	0x1
	.byte	0xf
	.4byte	0x1c5
	.uleb128 0x5
	.byte	0x3
	.4byte	implementation
	.uleb128 0x9
	.byte	0x4
	.4byte	0x1cb
	.uleb128 0xa
	.4byte	0xb7
	.uleb128 0x13
	.4byte	.LASF15
	.byte	0x4
	.byte	0x8
	.4byte	0x41
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x17
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x12
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL7
	.4byte	.LFE0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"size_t"
.LASF13:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF11:
	.string	"_crypto_scalarmult_curve25519_pick_best_implementation"
.LASF6:
	.string	"crypto_scalarmult_curve25519_implementation"
.LASF7:
	.string	"crypto_scalarmult_curve25519"
.LASF15:
	.string	"crypto_scalarmult_curve25519_ref10_implementation"
.LASF4:
	.string	"unsigned char"
.LASF3:
	.string	"mult_base"
.LASF9:
	.string	"crypto_scalarmult_curve25519_bytes"
.LASF12:
	.string	"implementation"
.LASF10:
	.string	"crypto_scalarmult_curve25519_scalarbytes"
.LASF2:
	.string	"mult"
.LASF1:
	.string	"short unsigned int"
.LASF8:
	.string	"crypto_scalarmult_curve25519_base"
.LASF14:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_scalarmult/curve25519/scalarmult_curve25519.c"
.LASF0:
	.string	"unsigned int"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
