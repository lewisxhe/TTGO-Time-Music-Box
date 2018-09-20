	.file	"bitstream-decode.c"
	.text
.Ltext0:
	.section	.text.OI_BITSTREAM_ReadInit,"ax",@progbits
	.align	4
	.global	OI_BITSTREAM_ReadInit
	.type	OI_BITSTREAM_ReadInit, @function
OI_BITSTREAM_ReadInit:
.LFB5:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/decoder/srce/bitstream-decode.c"
	.loc 1 45 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 46 0
	l8ui	a8, a3, 0
	slli	a9, a8, 16
	l8ui	a8, a3, 1
	slli	a8, a8, 8
	or	a8, a9, a8
	l8ui	a9, a3, 2
	or	a8, a9, a8
	s32i.n	a8, a2, 4
	.loc 1 47 0
	addi.n	a3, a3, 3
.LVL1:
	s32i.n	a3, a2, 0
	.loc 1 48 0
	movi.n	a3, 8
.LVL2:
	s32i.n	a3, a2, 8
	retw.n
.LFE5:
	.size	OI_BITSTREAM_ReadInit, .-OI_BITSTREAM_ReadInit
	.section	.text.OI_BITSTREAM_ReadUINT,"ax",@progbits
	.align	4
	.global	OI_BITSTREAM_ReadUINT
	.type	OI_BITSTREAM_ReadUINT, @function
OI_BITSTREAM_ReadUINT:
.LFB6:
	.loc 1 52 0
.LVL3:
	entry	sp, 32
.LCFI1:
	mov.n	a8, a2
	.loc 1 55 0
	l32i.n	a2, a2, 4
.LVL4:
	l32i.n	a10, a8, 8
	ssl	a10
	sll	a9, a2
.LVL5:
	movi.n	a2, 0x20
	sub	a2, a2, a3
	ssr	a2
	srl	a2, a9
.LVL6:
	add.n	a3, a10, a3
.LVL7:
	s32i.n	a3, a8, 8
	j	.L3
.L4:
	.loc 1 55 0 is_stmt 0 discriminator 3
	l32i.n	a9, a8, 4
	slli	a9, a9, 8
	l32i.n	a11, a8, 0
	addi.n	a12, a11, 1
	s32i.n	a12, a8, 0
	l8ui	a11, a11, 0
	or	a9, a11, a9
	s32i.n	a9, a8, 4
	addi	a10, a10, -8
	s32i.n	a10, a8, 8
.L3:
	.loc 1 55 0 discriminator 1
	l32i.n	a10, a8, 8
	movi.n	a9, 0xf
	bltu	a9, a10, .L4
	.loc 1 58 0 is_stmt 1
	retw.n
.LFE6:
	.size	OI_BITSTREAM_ReadUINT, .-OI_BITSTREAM_ReadUINT
	.section	.text.OI_BITSTREAM_ReadUINT4Aligned,"ax",@progbits
	.align	4
	.global	OI_BITSTREAM_ReadUINT4Aligned
	.type	OI_BITSTREAM_ReadUINT4Aligned, @function
OI_BITSTREAM_ReadUINT4Aligned:
.LFB7:
	.loc 1 61 0
.LVL8:
	entry	sp, 32
.LCFI2:
	.loc 1 67 0
	l32i.n	a8, a2, 8
	bnei	a8, 8, .L6
	.loc 1 68 0
	l32i.n	a10, a2, 4
	slli	a10, a10, 8
.LVL9:
	.loc 1 69 0
	movi.n	a8, 0xc
	s32i.n	a8, a2, 8
	j	.L7
.LVL10:
.L6:
	.loc 1 71 0
	l32i.n	a8, a2, 4
	slli	a10, a8, 12
.LVL11:
	.loc 1 72 0
	slli	a8, a8, 8
	l32i.n	a9, a2, 0
	addi.n	a11, a9, 1
	s32i.n	a11, a2, 0
	l8ui	a9, a9, 0
	or	a8, a9, a8
	s32i.n	a8, a2, 4
	.loc 1 73 0
	movi.n	a8, 8
	s32i.n	a8, a2, 8
.L7:
.LVL12:
	.loc 1 78 0
	extui	a2, a10, 28, 4
.LVL13:
	retw.n
.LFE7:
	.size	OI_BITSTREAM_ReadUINT4Aligned, .-OI_BITSTREAM_ReadUINT4Aligned
	.section	.text.OI_BITSTREAM_ReadUINT8Aligned,"ax",@progbits
	.align	4
	.global	OI_BITSTREAM_ReadUINT8Aligned
	.type	OI_BITSTREAM_ReadUINT8Aligned, @function
OI_BITSTREAM_ReadUINT8Aligned:
.LFB8:
	.loc 1 81 0
.LVL14:
	entry	sp, 32
.LCFI3:
	.loc 1 85 0
	l32i.n	a9, a2, 4
.LVL15:
	.loc 1 86 0
	slli	a8, a9, 8
	l32i.n	a10, a2, 0
	addi.n	a11, a10, 1
	s32i.n	a11, a2, 0
	l8ui	a10, a10, 0
	or	a8, a10, a8
	s32i.n	a8, a2, 4
	.loc 1 89 0
	extui	a2, a9, 16, 8
.LVL16:
	retw.n
.LFE8:
	.size	OI_BITSTREAM_ReadUINT8Aligned, .-OI_BITSTREAM_ReadUINT8Aligned
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI0-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI1-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI2-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI3-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/decoder/include/oi_cpu_dep.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/decoder/include/oi_codec_sbc_private.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x306
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0xc
	.4byte	.LASF37
	.4byte	.LASF38
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x12
	.4byte	0x37
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
	.uleb128 0x4
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
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0x21
	.4byte	0x68
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.4byte	0x73
	.4byte	0x9c
	.uleb128 0x6
	.4byte	0x85
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x5
	.byte	0x67
	.4byte	0x53
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0x68
	.4byte	0x37
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x5
	.2byte	0x137
	.4byte	0xa3
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x5
	.2byte	0x138
	.4byte	0x37
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x5
	.2byte	0x139
	.4byte	0x45
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x5
	.2byte	0x13a
	.4byte	0xaa
	.uleb128 0x8
	.byte	0x4
	.byte	0x6
	.byte	0x61
	.4byte	0x112
	.uleb128 0x9
	.string	"r"
	.byte	0x6
	.byte	0x62
	.4byte	0x112
	.uleb128 0x9
	.string	"w"
	.byte	0x6
	.byte	0x63
	.4byte	0x11d
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x118
	.uleb128 0xb
	.4byte	0xd3
	.uleb128 0xa
	.byte	0x4
	.4byte	0xd3
	.uleb128 0xc
	.byte	0xc
	.byte	0x6
	.byte	0x60
	.4byte	0x150
	.uleb128 0xd
	.string	"ptr"
	.byte	0x6
	.byte	0x64
	.4byte	0xf7
	.byte	0
	.uleb128 0xe
	.4byte	.LASF21
	.byte	0x6
	.byte	0x65
	.4byte	0xeb
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0x6
	.byte	0x66
	.4byte	0xb1
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x6
	.byte	0x67
	.4byte	0x123
	.uleb128 0xf
	.4byte	.LASF39
	.byte	0x1
	.byte	0x2b
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18c
	.uleb128 0x10
	.string	"bs"
	.byte	0x1
	.byte	0x2b
	.4byte	0x18c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x11
	.4byte	.LASF24
	.byte	0x1
	.byte	0x2c
	.4byte	0x192
	.4byte	.LLST0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x150
	.uleb128 0xa
	.byte	0x4
	.4byte	0x198
	.uleb128 0xb
	.4byte	0xbc
	.uleb128 0x12
	.4byte	.LASF26
	.byte	0x1
	.byte	0x33
	.4byte	0xeb
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e3
	.uleb128 0x13
	.string	"bs"
	.byte	0x1
	.byte	0x33
	.4byte	0x18c
	.4byte	.LLST1
	.uleb128 0x11
	.4byte	.LASF25
	.byte	0x1
	.byte	0x33
	.4byte	0xb1
	.4byte	.LLST2
	.uleb128 0x14
	.4byte	.LASF28
	.byte	0x1
	.byte	0x35
	.4byte	0xeb
	.4byte	.LLST3
	.byte	0
	.uleb128 0x12
	.4byte	.LASF27
	.byte	0x1
	.byte	0x3c
	.4byte	0xd3
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x21a
	.uleb128 0x13
	.string	"bs"
	.byte	0x1
	.byte	0x3c
	.4byte	0x18c
	.4byte	.LLST4
	.uleb128 0x14
	.4byte	.LASF28
	.byte	0x1
	.byte	0x3e
	.4byte	0xeb
	.4byte	.LLST5
	.byte	0
	.uleb128 0x12
	.4byte	.LASF29
	.byte	0x1
	.byte	0x50
	.4byte	0xd3
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x253
	.uleb128 0x13
	.string	"bs"
	.byte	0x1
	.byte	0x50
	.4byte	0x18c
	.4byte	.LLST6
	.uleb128 0x15
	.4byte	.LASF28
	.byte	0x1
	.byte	0x52
	.4byte	0xeb
	.uleb128 0x5
	.byte	0x79
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x16
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x2cc
	.4byte	0x266
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0xb
	.4byte	0x8c
	.uleb128 0x16
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x2cd
	.4byte	0x27e
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0x8c
	.uleb128 0x5
	.4byte	0xdf
	.4byte	0x293
	.uleb128 0x6
	.4byte	0x85
	.byte	0x3
	.byte	0
	.uleb128 0x17
	.4byte	.LASF32
	.byte	0x6
	.byte	0x56
	.4byte	0x2a7
	.byte	0x8
	.byte	0x80
	.byte	0x3e
	.byte	0
	.byte	0x7d
	.byte	0x44
	.byte	0xac
	.byte	0x80
	.byte	0xbb
	.uleb128 0xb
	.4byte	0x283
	.uleb128 0x5
	.4byte	0xd3
	.4byte	0x2bc
	.uleb128 0x6
	.4byte	0x85
	.byte	0x3
	.byte	0
	.uleb128 0x17
	.4byte	.LASF33
	.byte	0x6
	.byte	0x57
	.4byte	0x2cc
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0xc
	.byte	0x10
	.uleb128 0xb
	.4byte	0x2ac
	.uleb128 0x17
	.4byte	.LASF34
	.byte	0x6
	.byte	0x58
	.4byte	0x2e1
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.uleb128 0xb
	.4byte	0x2ac
	.uleb128 0x5
	.4byte	0xd3
	.4byte	0x2f6
	.uleb128 0x6
	.4byte	0x85
	.byte	0x1
	.byte	0
	.uleb128 0x17
	.4byte	.LASF35
	.byte	0x6
	.byte	0x59
	.4byte	0x304
	.byte	0x2
	.byte	0x4
	.byte	0x8
	.uleb128 0xb
	.4byte	0x2e6
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x17
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
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x17
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
	.uleb128 0x13
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
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
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
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x3
	.byte	0x73
	.sleb128 -3
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LFE5
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x6
	.byte	0x33
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL7
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL6
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x5
	.byte	0x7a
	.sleb128 0
	.byte	0x4c
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF29:
	.string	"OI_BITSTREAM_ReadUINT8Aligned"
.LASF7:
	.string	"__uint8_t"
.LASF33:
	.string	"block_values"
.LASF21:
	.string	"value"
.LASF3:
	.string	"short unsigned int"
.LASF16:
	.string	"OI_BYTE"
.LASF36:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF22:
	.string	"bitPtr"
.LASF39:
	.string	"OI_BITSTREAM_ReadInit"
.LASF38:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF9:
	.string	"UINT8"
.LASF35:
	.string	"band_values"
.LASF14:
	.string	"long unsigned int"
.LASF17:
	.string	"OI_INT32"
.LASF1:
	.string	"unsigned char"
.LASF34:
	.string	"channel_values"
.LASF26:
	.string	"OI_BITSTREAM_ReadUINT"
.LASF4:
	.string	"unsigned int"
.LASF19:
	.string	"OI_UINT16"
.LASF12:
	.string	"char"
.LASF8:
	.string	"uint8_t"
.LASF28:
	.string	"result"
.LASF20:
	.string	"OI_UINT32"
.LASF11:
	.string	"sizetype"
.LASF37:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/decoder/srce/bitstream-decode.c"
.LASF5:
	.string	"long long int"
.LASF30:
	.string	"bd_addr_any"
.LASF23:
	.string	"OI_BITSTREAM"
.LASF2:
	.string	"short int"
.LASF24:
	.string	"buffer"
.LASF27:
	.string	"OI_BITSTREAM_ReadUINT4Aligned"
.LASF32:
	.string	"freq_values"
.LASF15:
	.string	"OI_UINT"
.LASF13:
	.string	"long int"
.LASF31:
	.string	"bd_addr_null"
.LASF25:
	.string	"bits"
.LASF0:
	.string	"signed char"
.LASF10:
	.string	"_Bool"
.LASF18:
	.string	"OI_UINT8"
.LASF6:
	.string	"long long unsigned int"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
