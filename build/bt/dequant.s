	.file	"dequant.c"
	.text
.Ltext0:
	.section	.text.OI_SBC_Dequant,"ax",@progbits
	.literal_position
	.literal .LC0, dequant_long_scaled
	.literal .LC1, -1555931970
	.align	4
	.global	OI_SBC_Dequant
	.type	OI_SBC_Dequant, @function
OI_SBC_Dequant:
.LFB5:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/decoder/srce/dequant.c"
	.loc 1 148 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 155 0
	bltui	a4, 2, .L3
	.loc 1 159 0
	slli	a2, a2, 1
.LVL1:
	addi.n	a8, a2, 1
.LVL2:
	.loc 1 160 0
	l32r	a2, .LC0
	addx4	a4, a4, a2
.LVL3:
	l32i.n	a4, a4, 0
	mull	a4, a8, a4
.LVL4:
	.loc 1 161 0
	l32r	a8, .LC1
	add.n	a8, a4, a8
.LVL5:
	.loc 1 176 0
	movi.n	a2, 0xf
	sub	a2, a2, a3
	ssr	a2
	sra	a2, a8
	retw.n
.LVL6:
.L3:
	.loc 1 156 0
	movi.n	a2, 0
.LVL7:
	.loc 1 177 0
	retw.n
.LFE5:
	.size	OI_SBC_Dequant, .-OI_SBC_Dequant
	.section	.text.OI_SBC_Dequant_Unscaled,"ax",@progbits
	.literal_position
	.literal .LC2, -2147450879
	.literal .LC3, dequant_long_unscaled
	.literal .LC4, -2147483648
	.align	4
	.global	OI_SBC_Dequant_Unscaled
	.type	OI_SBC_Dequant_Unscaled, @function
OI_SBC_Dequant_Unscaled:
.LFB6:
	.loc 1 187 0
.LVL8:
	entry	sp, 32
.LCFI1:
	.loc 1 195 0
	bltui	a4, 2, .L7
	.loc 1 198 0
	bnei	a4, 16, .L6
	.loc 1 199 0
	slli	a8, a2, 16
	add.n	a2, a2, a8
.LVL9:
	l32r	a4, .LC2
.LVL10:
	add.n	a2, a2, a4
.LVL11:
	.loc 1 200 0
	movi.n	a8, 0x17
	sub	a8, a8, a3
	movi.n	a9, 1
	ssl	a8
	sll	a8, a9
	add.n	a8, a2, a8
	movi.n	a2, 0x18
.LVL12:
	sub	a2, a2, a3
	ssr	a2
	sra	a2, a8
	retw.n
.LVL13:
.L6:
	.loc 1 204 0
	slli	a2, a2, 1
.LVL14:
	addi.n	a8, a2, 1
.LVL15:
	.loc 1 205 0
	l32r	a2, .LC3
	addx4	a4, a4, a2
.LVL16:
	l32i.n	a2, a4, 0
	mull	a8, a8, a2
.LVL17:
	.loc 1 206 0
	l32r	a4, .LC4
	add.n	a2, a8, a4
.LVL18:
	.loc 1 208 0
	movi.n	a8, 0x17
.LVL19:
	sub	a8, a8, a3
	movi.n	a9, 1
	ssl	a8
	sll	a8, a9
	add.n	a8, a2, a8
	movi.n	a2, 0x18
.LVL20:
	sub	a2, a2, a3
	ssr	a2
	sra	a2, a8
	retw.n
.LVL21:
.L7:
	.loc 1 196 0
	movi.n	a2, 0
.LVL22:
	.loc 1 209 0
	retw.n
.LFE6:
	.size	OI_SBC_Dequant_Unscaled, .-OI_SBC_Dequant_Unscaled
	.comm	dequant_long_unscaled,68,4
	.comm	dequant_long_scaled,68,4
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
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/decoder/include/oi_cpu_dep.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/decoder/include/oi_codec_sbc_private.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x29d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0xc
	.4byte	.LASF34
	.4byte	.LASF35
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
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x5
	.2byte	0x137
	.4byte	0xa3
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x5
	.2byte	0x138
	.4byte	0x37
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x5
	.2byte	0x139
	.4byte	0x45
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x5
	.2byte	0x13a
	.4byte	0xaa
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x1
	.byte	0x93
	.4byte	0xbc
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14d
	.uleb128 0x9
	.string	"raw"
	.byte	0x1
	.byte	0x93
	.4byte	0xe0
	.4byte	.LLST0
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x1
	.byte	0x93
	.4byte	0xb1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x1
	.byte	0x93
	.4byte	0xb1
	.4byte	.LLST1
	.uleb128 0xc
	.string	"d"
	.byte	0x1
	.byte	0x95
	.4byte	0xe0
	.4byte	.LLST2
	.uleb128 0xd
	.4byte	.LASF22
	.byte	0x1
	.byte	0x96
	.4byte	0xbc
	.4byte	.LLST3
	.byte	0
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x1
	.byte	0xba
	.4byte	0xbc
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ae
	.uleb128 0x9
	.string	"raw"
	.byte	0x1
	.byte	0xba
	.4byte	0xe0
	.4byte	.LLST4
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x1
	.byte	0xba
	.4byte	0xb1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x1
	.byte	0xba
	.4byte	0xb1
	.4byte	.LLST5
	.uleb128 0xc
	.string	"d"
	.byte	0x1
	.byte	0xbc
	.4byte	0xe0
	.4byte	.LLST6
	.uleb128 0xd
	.4byte	.LASF22
	.byte	0x1
	.byte	0xbd
	.4byte	0xbc
	.4byte	.LLST7
	.byte	0
	.uleb128 0xe
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x2cc
	.4byte	0x1c1
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0xf
	.4byte	0x8c
	.uleb128 0xe
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x2cd
	.4byte	0x1d9
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	0x8c
	.uleb128 0x5
	.4byte	0xd4
	.4byte	0x1ee
	.uleb128 0x6
	.4byte	0x85
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.4byte	.LASF27
	.byte	0x6
	.byte	0x56
	.4byte	0x202
	.byte	0x8
	.byte	0x80
	.byte	0x3e
	.byte	0
	.byte	0x7d
	.byte	0x44
	.byte	0xac
	.byte	0x80
	.byte	0xbb
	.uleb128 0xf
	.4byte	0x1de
	.uleb128 0x5
	.4byte	0xc8
	.4byte	0x217
	.uleb128 0x6
	.4byte	0x85
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.4byte	.LASF28
	.byte	0x6
	.byte	0x57
	.4byte	0x227
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0xc
	.byte	0x10
	.uleb128 0xf
	.4byte	0x207
	.uleb128 0x10
	.4byte	.LASF29
	.byte	0x6
	.byte	0x58
	.4byte	0x23c
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.uleb128 0xf
	.4byte	0x207
	.uleb128 0x5
	.4byte	0xc8
	.4byte	0x251
	.uleb128 0x6
	.4byte	0x85
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.4byte	.LASF30
	.byte	0x6
	.byte	0x59
	.4byte	0x25f
	.byte	0x2
	.byte	0x4
	.byte	0x8
	.uleb128 0xf
	.4byte	0x241
	.uleb128 0x5
	.4byte	0xe0
	.4byte	0x274
	.uleb128 0x6
	.4byte	0x85
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.4byte	.LASF31
	.byte	0x1
	.byte	0x73
	.4byte	0x285
	.uleb128 0x5
	.byte	0x3
	.4byte	dequant_long_scaled
	.uleb128 0xf
	.4byte	0x264
	.uleb128 0x11
	.4byte	.LASF32
	.byte	0x1
	.byte	0x74
	.4byte	0x29b
	.uleb128 0x5
	.byte	0x3
	.4byte	dequant_long_unscaled
	.uleb128 0xf
	.4byte	0x264
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
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
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LVL21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL16
	.4byte	.LVL21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL15
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x7
	.byte	0x72
	.sleb128 -2147483648
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x15
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x31
	.byte	0x24
	.byte	0x23
	.uleb128 0x1
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	dequant_long_unscaled
	.byte	0x22
	.byte	0x6
	.byte	0x1e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0xd
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x40
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x18
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x31
	.byte	0x24
	.byte	0x23
	.uleb128 0x1
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	dequant_long_unscaled
	.byte	0x22
	.byte	0x6
	.byte	0x1e
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF7:
	.string	"__uint8_t"
.LASF26:
	.string	"bd_addr_null"
.LASF23:
	.string	"OI_SBC_Dequant"
.LASF28:
	.string	"block_values"
.LASF9:
	.string	"UINT8"
.LASF17:
	.string	"OI_UINT8"
.LASF33:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF35:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF30:
	.string	"band_values"
.LASF14:
	.string	"long unsigned int"
.LASF16:
	.string	"OI_INT32"
.LASF3:
	.string	"short unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF29:
	.string	"channel_values"
.LASF31:
	.string	"dequant_long_scaled"
.LASF4:
	.string	"unsigned int"
.LASF18:
	.string	"OI_UINT16"
.LASF24:
	.string	"OI_SBC_Dequant_Unscaled"
.LASF12:
	.string	"char"
.LASF8:
	.string	"uint8_t"
.LASF22:
	.string	"result"
.LASF32:
	.string	"dequant_long_unscaled"
.LASF19:
	.string	"OI_UINT32"
.LASF11:
	.string	"sizetype"
.LASF5:
	.string	"long long int"
.LASF25:
	.string	"bd_addr_any"
.LASF34:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/decoder/srce/dequant.c"
.LASF2:
	.string	"short int"
.LASF27:
	.string	"freq_values"
.LASF15:
	.string	"OI_UINT"
.LASF13:
	.string	"long int"
.LASF20:
	.string	"scale_factor"
.LASF21:
	.string	"bits"
.LASF0:
	.string	"signed char"
.LASF10:
	.string	"_Bool"
.LASF6:
	.string	"long long unsigned int"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
