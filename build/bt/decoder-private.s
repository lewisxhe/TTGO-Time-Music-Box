	.file	"decoder-private.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"Copyright 2002-2007 Open Interface North America, Inc. All rights reserved"
	.section	.text.internal_DecoderReset,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.align	4
	.global	internal_DecoderReset
	.type	internal_DecoderReset, @function
internal_DecoderReset:
.LFB5:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/decoder/srce/decoder-private.c"
	.loc 1 51 0
.LVL0:
	entry	sp, 32
.LCFI0:
	extui	a13, a5, 0, 8
	extui	a14, a6, 0, 8
.LVL1:
	.loc 1 55 0
	movi.n	a8, 0
	j	.L2
.LVL2:
.L3:
	.loc 1 56 0 discriminator 3
	add.n	a9, a2, a8
	movi.n	a10, 0
	s8i	a10, a9, 0
	.loc 1 55 0 discriminator 3
	addi.n	a8, a8, 1
.LVL3:
.L2:
	.loc 1 55 0 is_stmt 0 discriminator 1
	movi.n	a9, 0x53
	bgeu	a9, a8, .L3
	.loc 1 62 0 is_stmt 1
	movi.n	a8, 0
.LVL4:
	s8i	a8, a2, 82
	.loc 1 63 0
	bnez.n	a7, .L5
	.loc 1 68 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	OI_CODEC_SBC_Alloc
.LVL5:
	.loc 1 70 0
	bnez.n	a10, .L6
	.loc 1 74 0
	l32r	a3, .LC1
.LVL6:
	s32i.n	a3, a2, 0
	.loc 1 75 0
	movi.n	a3, 0
	s8i	a3, a2, 76
	.loc 1 76 0
	s8i	a3, a2, 80
	.loc 1 77 0
	addi.n	a10, a2, 4
.LVL7:
	call8	OI_SBC_ExpandFrameFields
.LVL8:
	.loc 1 81 0
	movi.n	a2, 0
.LVL9:
	retw.n
.LVL10:
.L5:
	.loc 1 64 0
	movi	a2, 0x65
.LVL11:
	retw.n
.LVL12:
.L6:
	.loc 1 71 0
	mov.n	a2, a10
.LVL13:
	.loc 1 82 0
	retw.n
.LFE5:
	.size	internal_DecoderReset, .-internal_DecoderReset
	.section	.text.OI_SBC_ReadHeader,"ax",@progbits
	.literal_position
	.literal .LC2, freq_values
	.literal .LC3, block_values
	.literal .LC4, channel_values
	.literal .LC5, band_values
	.align	4
	.global	OI_SBC_ReadHeader
	.type	OI_SBC_ReadHeader, @function
OI_SBC_ReadHeader:
.LFB6:
	.loc 1 92 0
.LVL14:
	entry	sp, 32
.LCFI1:
.LVL15:
	.loc 1 104 0
	l8ui	a9, a3, 1
.LVL16:
	.loc 1 105 0
	l8ui	a8, a2, 19
	beq	a9, a8, .L8
	.loc 1 107 0
	srli	a8, a9, 6
	s8i	a8, a2, 6
.LVL17:
	.loc 1 108 0
	l32r	a10, .LC2
	addx2	a8, a8, a10
	l16ui	a8, a8, 0
	s16i	a8, a2, 4
	.loc 1 110 0
	movi.n	a8, 0x30
	and	a8, a9, a8
	srli	a8, a8, 4
	s8i	a8, a2, 8
	.loc 1 111 0
	l32r	a10, .LC3
	add.n	a8, a10, a8
	l8ui	a8, a8, 0
	s8i	a8, a2, 7
	.loc 1 113 0
	movi.n	a8, 0xc
	and	a8, a9, a8
	srli	a8, a8, 2
	s8i	a8, a2, 11
	.loc 1 114 0
	l32r	a10, .LC4
	add.n	a8, a10, a8
	l8ui	a8, a8, 0
	s8i	a8, a2, 12
	.loc 1 116 0
	movi.n	a8, 2
	and	a8, a9, a8
	srai	a8, a8, 1
	s8i	a8, a2, 13
	.loc 1 118 0
	extui	a8, a9, 0, 1
	s8i	a8, a2, 10
	.loc 1 119 0
	l32r	a10, .LC5
	add.n	a8, a10, a8
	l8ui	a8, a8, 0
	s8i	a8, a2, 9
	.loc 1 121 0
	s8i	a9, a2, 19
.L8:
	.loc 1 126 0
	l8ui	a8, a3, 2
	s8i	a8, a2, 14
	.loc 1 127 0
	l8ui	a3, a3, 3
.LVL18:
	s8i	a3, a2, 15
	retw.n
.LFE6:
	.size	OI_SBC_ReadHeader, .-OI_SBC_ReadHeader
	.section	.text.OI_SBC_ReadScalefactors,"ax",@progbits
	.align	4
	.global	OI_SBC_ReadScalefactors
	.type	OI_SBC_ReadScalefactors, @function
OI_SBC_ReadScalefactors:
.LFB7:
	.loc 1 140 0
.LVL19:
	entry	sp, 32
.LCFI2:
	.loc 1 141 0
	l8ui	a8, a2, 9
	l8ui	a9, a2, 12
	mull	a9, a8, a9
.LVL20:
	.loc 1 142 0
	addi	a5, a2, 20
.LVL21:
	.loc 1 145 0
	beqi	a8, 8, .L10
	.loc 1 145 0 is_stmt 0 discriminator 1
	l8ui	a8, a2, 11
	beqi	a8, 3, .L11
.L10:
	.loc 1 146 0 is_stmt 1
	l8ui	a8, a2, 11
	bnei	a8, 3, .L12
.LVL22:
	.loc 1 147 0
	l8ui	a8, a3, 0
	s8i	a8, a2, 16
	addi.n	a3, a3, 1
.LVL23:
	j	.L13
.L12:
	.loc 1 149 0
	movi.n	a8, 0
	s8i	a8, a2, 16
.L13:
	.loc 1 151 0
	srli	a9, a9, 1
.LVL24:
.L14:
	.loc 1 153 0 discriminator 1
	addi.n	a11, a3, 1
.LVL25:
	l8ui	a8, a3, 0
.LVL26:
	srli	a3, a8, 4
	s8i	a3, a5, 0
.LVL27:
	.loc 1 154 0 discriminator 1
	extui	a8, a8, 0, 4
.LVL28:
	s8i	a8, a5, 1
	.loc 1 155 0 discriminator 1
	addi.n	a9, a9, -1
.LVL29:
	.loc 1 153 0 discriminator 1
	mov.n	a3, a11
	.loc 1 154 0 discriminator 1
	addi.n	a5, a5, 2
.LVL30:
	.loc 1 155 0 discriminator 1
	bnez.n	a9, .L14
	.loc 1 160 0
	mov.n	a10, a4
	call8	OI_BITSTREAM_ReadInit
.LVL31:
	retw.n
.LVL32:
.L11:
	.loc 1 163 0
	addi.n	a10, a3, 1
.LVL33:
	l8ui	a3, a3, 0
.LVL34:
	srli	a8, a3, 4
	s8i	a8, a2, 16
	.loc 1 164 0
	addi.n	a9, a9, -1
.LVL35:
	srli	a8, a9, 1
.LVL36:
	j	.L16
.LVL37:
.L17:
	.loc 1 167 0
	mov.n	a5, a9
.LVL38:
.L16:
	.loc 1 166 0 discriminator 1
	extui	a3, a3, 0, 4
.LVL39:
	s8i	a3, a5, 0
	.loc 1 167 0 discriminator 1
	addi.n	a9, a5, 2
.LVL40:
	addi.n	a11, a10, 1
.LVL41:
	l8ui	a3, a10, 0
.LVL42:
	srli	a2, a3, 4
	s8i	a2, a5, 1
	.loc 1 168 0 discriminator 1
	addi.n	a8, a8, -1
.LVL43:
	.loc 1 167 0 discriminator 1
	mov.n	a10, a11
	.loc 1 168 0 discriminator 1
	bnez.n	a8, .L17
.LVL44:
	.loc 1 169 0
	extui	a12, a3, 0, 4
	s8i	a12, a5, 2
	.loc 1 175 0
	mov.n	a10, a4
	call8	OI_BITSTREAM_ReadInit
.LVL45:
	.loc 1 176 0
	mov.n	a10, a4
	call8	OI_BITSTREAM_ReadUINT4Aligned
.LVL46:
	s8i	a10, a5, 3
	retw.n
.LFE7:
	.size	OI_SBC_ReadScalefactors, .-OI_SBC_ReadScalefactors
	.section	.text.OI_SBC_ReadSamples,"ax",@progbits
	.align	4
	.global	OI_SBC_ReadSamples
	.type	OI_SBC_ReadSamples, @function
OI_SBC_ReadSamples:
.LFB8:
	.loc 1 182 0
.LVL47:
	entry	sp, 64
.LCFI3:
	s32i.n	a2, sp, 8
.LVL48:
	.loc 1 184 0
	l8ui	a2, a2, 7
.LVL49:
	s32i.n	a2, sp, 16
.LVL50:
	.loc 1 185 0
	l32i.n	a5, sp, 8
	l32i.n	a5, a5, 40
	s32i.n	a5, sp, 0
.LVL51:
	.loc 1 186 0
	l32i.n	a4, a3, 0
.LVL52:
	.loc 1 187 0
	l32i.n	a2, a3, 4
.LVL53:
	.loc 1 188 0
	l32i.n	a3, a3, 8
.LVL54:
	.loc 1 190 0
	l32i.n	a5, sp, 8
.LVL55:
	l8ui	a6, a5, 12
	l8ui	a5, a5, 9
	mull	a5, a6, a5
	addi.n	a6, a5, 3
	movgez	a6, a5, a5
	srai	a6, a6, 2
	s32i.n	a6, sp, 12
.LVL56:
.L26:
.LBB2:
	.loc 1 193 0
	movi.n	a6, 0
	s32i.n	a6, sp, 4
	j	.L19
.LVL57:
.L25:
.LBB3:
	.loc 1 194 0
	l32i.n	a6, sp, 8
.LVL58:
	addi	a5, a6, 20
	l32i.n	a6, sp, 4
	addx4	a5, a6, a5
	l32i.n	a7, a5, 0
.LVL59:
	.loc 1 195 0
	addi.n	a5, a6, 12
	l32i.n	a6, sp, 8
	addx4	a5, a5, a6
	l32i.n	a6, a5, 12
.LVL60:
	.loc 1 197 0
	movi.n	a5, 0
	j	.L20
.LVL61:
.L24:
.LBB4:
	.loc 1 203 0
	extui	a12, a6, 0, 8
.LVL62:
	.loc 1 204 0
	srli	a6, a6, 8
.LVL63:
	.loc 1 205 0
	extui	a11, a7, 0, 8
.LVL64:
	.loc 1 206 0
	srli	a7, a7, 8
.LVL65:
	.loc 1 213 0
	beqz.n	a12, .L27
.LBB5:
	.loc 1 215 0
	ssl	a3
	sll	a8, a2
.LVL66:
	movi.n	a10, 0x20
	sub	a10, a10, a12
	ssr	a10
	srl	a10, a8
.LVL67:
	add.n	a3, a3, a12
.LVL68:
	j	.L22
.L23:
	.loc 1 215 0 is_stmt 0 discriminator 3
	slli	a2, a2, 8
.LVL69:
	l8ui	a8, a4, 0
	or	a2, a2, a8
.LVL70:
	addi	a3, a3, -8
.LVL71:
	addi.n	a4, a4, 1
.LVL72:
.L22:
	.loc 1 215 0 discriminator 1
	movi.n	a8, 0xf
	bltu	a8, a3, .L23
	.loc 1 216 0 is_stmt 1
	call8	OI_SBC_Dequant
.LVL73:
.LBE5:
	j	.L21
.LVL74:
.L27:
	.loc 1 218 0
	movi.n	a10, 0
.LVL75:
.L21:
	.loc 1 220 0 discriminator 2
	l32i.n	a8, sp, 0
	s32i.n	a10, a8, 0
.LBE4:
	.loc 1 197 0 discriminator 2
	addi.n	a5, a5, 1
.LVL76:
.LBB6:
	.loc 1 220 0 discriminator 2
	addi.n	a8, a8, 4
.LVL77:
	s32i.n	a8, sp, 0
.LVL78:
.L20:
.LBE6:
	.loc 1 197 0 discriminator 1
	bltui	a5, 4, .L24
.LBE3:
	.loc 1 193 0 discriminator 2
	l32i.n	a5, sp, 4
.LVL79:
	addi.n	a5, a5, 1
	s32i.n	a5, sp, 4
.LVL80:
.L19:
	.loc 1 193 0 is_stmt 0 discriminator 1
	l32i.n	a6, sp, 4
	l32i.n	a5, sp, 12
	bltu	a6, a5, .L25
.LBE2:
	.loc 1 223 0 is_stmt 1
	l32i.n	a6, sp, 16
	addi.n	a6, a6, -1
	s32i.n	a6, sp, 16
.LVL81:
	bnez.n	a6, .L26
	.loc 1 224 0
	retw.n
.LFE8:
	.size	OI_SBC_ReadSamples, .-OI_SBC_ReadSamples
	.global	OI_Codec_Copyright
	.section	.rodata.OI_Codec_Copyright,"a",@progbits
	.align	4
	.type	OI_Codec_Copyright, @object
	.size	OI_Codec_Copyright, 4
OI_Codec_Copyright:
	.word	.LC0
	.section	.rodata.band_values,"a",@progbits
	.align	4
	.type	band_values, @object
	.size	band_values, 2
band_values:
	.byte	4
	.byte	8
	.section	.rodata.channel_values,"a",@progbits
	.align	4
	.type	channel_values, @object
	.size	channel_values, 4
channel_values:
	.byte	1
	.byte	2
	.byte	2
	.byte	2
	.section	.rodata.block_values,"a",@progbits
	.align	4
	.type	block_values, @object
	.size	block_values, 4
block_values:
	.byte	4
	.byte	8
	.byte	12
	.byte	16
	.section	.rodata.freq_values,"a",@progbits
	.align	4
	.type	freq_values, @object
	.size	freq_values, 8
freq_values:
	.short	16000
	.short	32000
	.short	-21436
	.short	-17536
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
	.uleb128 0x40
	.align	4
.LEFDE6:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/decoder/include/oi_cpu_dep.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/decoder/include/oi_stddefs.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/decoder/include/oi_status.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/decoder/include/oi_codec_sbc.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/decoder/include/oi_codec_sbc_private.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/decoder/include/oi_bitstream.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x148f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF556
	.byte	0xc
	.4byte	.LASF557
	.4byte	.LASF558
	.4byte	.Ldebug_ranges0+0x18
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
	.byte	0x65
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0x66
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0x67
	.4byte	0x53
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x68
	.4byte	0x37
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x5
	.2byte	0x135
	.4byte	0x25
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x5
	.2byte	0x136
	.4byte	0x3e
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x5
	.2byte	0x137
	.4byte	0xa3
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x5
	.2byte	0x138
	.4byte	0x37
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x5
	.2byte	0x139
	.4byte	0x45
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x5
	.2byte	0x13a
	.4byte	0xaa
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x6
	.byte	0x85
	.4byte	0x9c
	.uleb128 0x8
	.byte	0x4
	.4byte	0x53
	.byte	0x7
	.byte	0x2a
	.4byte	0xdb6
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x65
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x66
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x67
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x68
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x69
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x6a
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x6b
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x6c
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x6d
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x6e
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x6f
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x70
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x71
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x72
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x73
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x74
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x75
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x76
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x77
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x78
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x79
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x7a
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x7b
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x7c
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x7d
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x7e
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x7f
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x80
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x81
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x82
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x83
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x84
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0x85
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0x86
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0x87
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0x88
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0x89
	.uleb128 0x9
	.4byte	.LASF65
	.byte	0x8a
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0x8b
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0x8c
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0x8d
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0x8e
	.uleb128 0x9
	.4byte	.LASF70
	.byte	0x8f
	.uleb128 0x9
	.4byte	.LASF71
	.byte	0x90
	.uleb128 0x9
	.4byte	.LASF72
	.byte	0x91
	.uleb128 0x9
	.4byte	.LASF73
	.byte	0x92
	.uleb128 0xa
	.4byte	.LASF74
	.2byte	0x192
	.uleb128 0xa
	.4byte	.LASF75
	.2byte	0x193
	.uleb128 0xa
	.4byte	.LASF76
	.2byte	0x194
	.uleb128 0xa
	.4byte	.LASF77
	.2byte	0x196
	.uleb128 0xa
	.4byte	.LASF78
	.2byte	0x197
	.uleb128 0xa
	.4byte	.LASF79
	.2byte	0x198
	.uleb128 0xa
	.4byte	.LASF80
	.2byte	0x19a
	.uleb128 0xa
	.4byte	.LASF81
	.2byte	0x19b
	.uleb128 0xa
	.4byte	.LASF82
	.2byte	0x19c
	.uleb128 0xa
	.4byte	.LASF83
	.2byte	0x19e
	.uleb128 0xa
	.4byte	.LASF84
	.2byte	0x1a2
	.uleb128 0xa
	.4byte	.LASF85
	.2byte	0x1a7
	.uleb128 0xa
	.4byte	.LASF86
	.2byte	0x1a9
	.uleb128 0xa
	.4byte	.LASF87
	.2byte	0x1aa
	.uleb128 0xa
	.4byte	.LASF88
	.2byte	0x1ab
	.uleb128 0xa
	.4byte	.LASF89
	.2byte	0x1ac
	.uleb128 0xa
	.4byte	.LASF90
	.2byte	0x1ad
	.uleb128 0xa
	.4byte	.LASF91
	.2byte	0x1ae
	.uleb128 0xa
	.4byte	.LASF92
	.2byte	0x1af
	.uleb128 0xa
	.4byte	.LASF93
	.2byte	0x1b1
	.uleb128 0xa
	.4byte	.LASF94
	.2byte	0x1b2
	.uleb128 0xa
	.4byte	.LASF95
	.2byte	0x1b3
	.uleb128 0xa
	.4byte	.LASF96
	.2byte	0x1b4
	.uleb128 0xa
	.4byte	.LASF97
	.2byte	0x1b5
	.uleb128 0xa
	.4byte	.LASF98
	.2byte	0x1b7
	.uleb128 0xa
	.4byte	.LASF99
	.2byte	0x1b8
	.uleb128 0xa
	.4byte	.LASF100
	.2byte	0x1b9
	.uleb128 0xa
	.4byte	.LASF101
	.2byte	0x1bc
	.uleb128 0xa
	.4byte	.LASF102
	.2byte	0x1bd
	.uleb128 0xa
	.4byte	.LASF103
	.2byte	0x1c2
	.uleb128 0xa
	.4byte	.LASF104
	.2byte	0x1c3
	.uleb128 0xa
	.4byte	.LASF105
	.2byte	0x1c4
	.uleb128 0xa
	.4byte	.LASF106
	.2byte	0x1c5
	.uleb128 0xa
	.4byte	.LASF107
	.2byte	0x1c6
	.uleb128 0xa
	.4byte	.LASF108
	.2byte	0x1cc
	.uleb128 0xa
	.4byte	.LASF109
	.2byte	0x1cd
	.uleb128 0xa
	.4byte	.LASF110
	.2byte	0x1ce
	.uleb128 0xa
	.4byte	.LASF111
	.2byte	0x1cf
	.uleb128 0xa
	.4byte	.LASF112
	.2byte	0x1d6
	.uleb128 0xa
	.4byte	.LASF113
	.2byte	0x1d7
	.uleb128 0xa
	.4byte	.LASF114
	.2byte	0x1d8
	.uleb128 0xa
	.4byte	.LASF115
	.2byte	0x1e2
	.uleb128 0xa
	.4byte	.LASF116
	.2byte	0x1e3
	.uleb128 0xa
	.4byte	.LASF117
	.2byte	0x1e4
	.uleb128 0xa
	.4byte	.LASF118
	.2byte	0x259
	.uleb128 0xa
	.4byte	.LASF119
	.2byte	0x25b
	.uleb128 0xa
	.4byte	.LASF120
	.2byte	0x25d
	.uleb128 0xa
	.4byte	.LASF121
	.2byte	0x25f
	.uleb128 0xa
	.4byte	.LASF122
	.2byte	0x260
	.uleb128 0xa
	.4byte	.LASF123
	.2byte	0x263
	.uleb128 0xa
	.4byte	.LASF124
	.2byte	0x264
	.uleb128 0xa
	.4byte	.LASF125
	.2byte	0x265
	.uleb128 0xa
	.4byte	.LASF126
	.2byte	0x266
	.uleb128 0xa
	.4byte	.LASF127
	.2byte	0x267
	.uleb128 0xa
	.4byte	.LASF128
	.2byte	0x268
	.uleb128 0xa
	.4byte	.LASF129
	.2byte	0x26b
	.uleb128 0xa
	.4byte	.LASF130
	.2byte	0x26c
	.uleb128 0xa
	.4byte	.LASF131
	.2byte	0x26d
	.uleb128 0xa
	.4byte	.LASF132
	.2byte	0x26e
	.uleb128 0xa
	.4byte	.LASF133
	.2byte	0x26f
	.uleb128 0xa
	.4byte	.LASF134
	.2byte	0x270
	.uleb128 0xa
	.4byte	.LASF135
	.2byte	0x271
	.uleb128 0xa
	.4byte	.LASF136
	.2byte	0x272
	.uleb128 0xa
	.4byte	.LASF137
	.2byte	0x273
	.uleb128 0xa
	.4byte	.LASF138
	.2byte	0x274
	.uleb128 0xa
	.4byte	.LASF139
	.2byte	0x275
	.uleb128 0xa
	.4byte	.LASF140
	.2byte	0x276
	.uleb128 0xa
	.4byte	.LASF141
	.2byte	0x277
	.uleb128 0xa
	.4byte	.LASF142
	.2byte	0x278
	.uleb128 0xa
	.4byte	.LASF143
	.2byte	0x279
	.uleb128 0xa
	.4byte	.LASF144
	.2byte	0x2bd
	.uleb128 0xa
	.4byte	.LASF145
	.2byte	0x2bd
	.uleb128 0xa
	.4byte	.LASF146
	.2byte	0x2be
	.uleb128 0xa
	.4byte	.LASF147
	.2byte	0x2bf
	.uleb128 0xa
	.4byte	.LASF148
	.2byte	0x2c0
	.uleb128 0xa
	.4byte	.LASF149
	.2byte	0x2c1
	.uleb128 0xa
	.4byte	.LASF150
	.2byte	0x2c2
	.uleb128 0xa
	.4byte	.LASF151
	.2byte	0x2c3
	.uleb128 0xa
	.4byte	.LASF152
	.2byte	0x2c4
	.uleb128 0xa
	.4byte	.LASF153
	.2byte	0x2c5
	.uleb128 0xa
	.4byte	.LASF154
	.2byte	0x2c6
	.uleb128 0xa
	.4byte	.LASF155
	.2byte	0x2c7
	.uleb128 0xa
	.4byte	.LASF156
	.2byte	0x2c8
	.uleb128 0xa
	.4byte	.LASF157
	.2byte	0x2c9
	.uleb128 0xa
	.4byte	.LASF158
	.2byte	0x2ca
	.uleb128 0xa
	.4byte	.LASF159
	.2byte	0x2cb
	.uleb128 0xa
	.4byte	.LASF160
	.2byte	0x2cc
	.uleb128 0xa
	.4byte	.LASF161
	.2byte	0x2cd
	.uleb128 0xa
	.4byte	.LASF162
	.2byte	0x2ce
	.uleb128 0xa
	.4byte	.LASF163
	.2byte	0x2cf
	.uleb128 0xa
	.4byte	.LASF164
	.2byte	0x2d0
	.uleb128 0xa
	.4byte	.LASF165
	.2byte	0x2d1
	.uleb128 0xa
	.4byte	.LASF166
	.2byte	0x2d2
	.uleb128 0xa
	.4byte	.LASF167
	.2byte	0x2d3
	.uleb128 0xa
	.4byte	.LASF168
	.2byte	0x2d4
	.uleb128 0xa
	.4byte	.LASF169
	.2byte	0x2d5
	.uleb128 0xa
	.4byte	.LASF170
	.2byte	0x2d6
	.uleb128 0xa
	.4byte	.LASF171
	.2byte	0x2d7
	.uleb128 0xa
	.4byte	.LASF172
	.2byte	0x2d8
	.uleb128 0xa
	.4byte	.LASF173
	.2byte	0x2d9
	.uleb128 0xa
	.4byte	.LASF174
	.2byte	0x2da
	.uleb128 0xa
	.4byte	.LASF175
	.2byte	0x2db
	.uleb128 0xa
	.4byte	.LASF176
	.2byte	0x2dc
	.uleb128 0xa
	.4byte	.LASF177
	.2byte	0x2dd
	.uleb128 0xa
	.4byte	.LASF178
	.2byte	0x2de
	.uleb128 0xa
	.4byte	.LASF179
	.2byte	0x2df
	.uleb128 0xa
	.4byte	.LASF180
	.2byte	0x2e0
	.uleb128 0xa
	.4byte	.LASF181
	.2byte	0x2e1
	.uleb128 0xa
	.4byte	.LASF182
	.2byte	0x2e2
	.uleb128 0xa
	.4byte	.LASF183
	.2byte	0x2e3
	.uleb128 0xa
	.4byte	.LASF184
	.2byte	0x2e4
	.uleb128 0xa
	.4byte	.LASF185
	.2byte	0x2e5
	.uleb128 0xa
	.4byte	.LASF186
	.2byte	0x2e6
	.uleb128 0xa
	.4byte	.LASF187
	.2byte	0x2e7
	.uleb128 0xa
	.4byte	.LASF188
	.2byte	0x2e8
	.uleb128 0xa
	.4byte	.LASF189
	.2byte	0x2e9
	.uleb128 0xa
	.4byte	.LASF190
	.2byte	0x2ea
	.uleb128 0xa
	.4byte	.LASF191
	.2byte	0x2eb
	.uleb128 0xa
	.4byte	.LASF192
	.2byte	0x2ec
	.uleb128 0xa
	.4byte	.LASF193
	.2byte	0x2ed
	.uleb128 0xa
	.4byte	.LASF194
	.2byte	0x2ee
	.uleb128 0xa
	.4byte	.LASF195
	.2byte	0x2ef
	.uleb128 0xa
	.4byte	.LASF196
	.2byte	0x2f0
	.uleb128 0xa
	.4byte	.LASF197
	.2byte	0x2f1
	.uleb128 0xa
	.4byte	.LASF198
	.2byte	0x2f2
	.uleb128 0xa
	.4byte	.LASF199
	.2byte	0x2f3
	.uleb128 0xa
	.4byte	.LASF200
	.2byte	0x2f4
	.uleb128 0xa
	.4byte	.LASF201
	.2byte	0x2f5
	.uleb128 0xa
	.4byte	.LASF202
	.2byte	0x2f5
	.uleb128 0xa
	.4byte	.LASF203
	.2byte	0x320
	.uleb128 0xa
	.4byte	.LASF204
	.2byte	0x322
	.uleb128 0xa
	.4byte	.LASF205
	.2byte	0x323
	.uleb128 0xa
	.4byte	.LASF206
	.2byte	0x324
	.uleb128 0xa
	.4byte	.LASF207
	.2byte	0x325
	.uleb128 0xa
	.4byte	.LASF208
	.2byte	0x326
	.uleb128 0xa
	.4byte	.LASF209
	.2byte	0x327
	.uleb128 0xa
	.4byte	.LASF210
	.2byte	0x328
	.uleb128 0xa
	.4byte	.LASF211
	.2byte	0x32a
	.uleb128 0xa
	.4byte	.LASF212
	.2byte	0x32b
	.uleb128 0xa
	.4byte	.LASF213
	.2byte	0x32c
	.uleb128 0xa
	.4byte	.LASF214
	.2byte	0x32d
	.uleb128 0xa
	.4byte	.LASF215
	.2byte	0x32f
	.uleb128 0xa
	.4byte	.LASF216
	.2byte	0x330
	.uleb128 0xa
	.4byte	.LASF217
	.2byte	0x331
	.uleb128 0xa
	.4byte	.LASF218
	.2byte	0x333
	.uleb128 0xa
	.4byte	.LASF219
	.2byte	0x335
	.uleb128 0xa
	.4byte	.LASF220
	.2byte	0x337
	.uleb128 0xa
	.4byte	.LASF221
	.2byte	0x338
	.uleb128 0xa
	.4byte	.LASF222
	.2byte	0x339
	.uleb128 0xa
	.4byte	.LASF223
	.2byte	0x33a
	.uleb128 0xa
	.4byte	.LASF224
	.2byte	0x33b
	.uleb128 0xa
	.4byte	.LASF225
	.2byte	0x33d
	.uleb128 0xa
	.4byte	.LASF226
	.2byte	0x33e
	.uleb128 0xa
	.4byte	.LASF227
	.2byte	0x33f
	.uleb128 0xa
	.4byte	.LASF228
	.2byte	0x340
	.uleb128 0xa
	.4byte	.LASF229
	.2byte	0x341
	.uleb128 0xa
	.4byte	.LASF230
	.2byte	0x342
	.uleb128 0xa
	.4byte	.LASF231
	.2byte	0x343
	.uleb128 0xa
	.4byte	.LASF232
	.2byte	0x344
	.uleb128 0xa
	.4byte	.LASF233
	.2byte	0x345
	.uleb128 0xa
	.4byte	.LASF234
	.2byte	0x346
	.uleb128 0xa
	.4byte	.LASF235
	.2byte	0x347
	.uleb128 0xa
	.4byte	.LASF236
	.2byte	0x348
	.uleb128 0xa
	.4byte	.LASF237
	.2byte	0x349
	.uleb128 0xa
	.4byte	.LASF238
	.2byte	0x34a
	.uleb128 0xa
	.4byte	.LASF239
	.2byte	0x34b
	.uleb128 0xa
	.4byte	.LASF240
	.2byte	0x385
	.uleb128 0xa
	.4byte	.LASF241
	.2byte	0x387
	.uleb128 0xa
	.4byte	.LASF242
	.2byte	0x388
	.uleb128 0xa
	.4byte	.LASF243
	.2byte	0x389
	.uleb128 0xa
	.4byte	.LASF244
	.2byte	0x38a
	.uleb128 0xa
	.4byte	.LASF245
	.2byte	0x38b
	.uleb128 0xa
	.4byte	.LASF246
	.2byte	0x38c
	.uleb128 0xa
	.4byte	.LASF247
	.2byte	0x38d
	.uleb128 0xa
	.4byte	.LASF248
	.2byte	0x38e
	.uleb128 0xa
	.4byte	.LASF249
	.2byte	0x38f
	.uleb128 0xa
	.4byte	.LASF250
	.2byte	0x390
	.uleb128 0xa
	.4byte	.LASF251
	.2byte	0x391
	.uleb128 0xa
	.4byte	.LASF252
	.2byte	0x393
	.uleb128 0xa
	.4byte	.LASF253
	.2byte	0x394
	.uleb128 0xa
	.4byte	.LASF254
	.2byte	0x395
	.uleb128 0xa
	.4byte	.LASF255
	.2byte	0x396
	.uleb128 0xa
	.4byte	.LASF256
	.2byte	0x398
	.uleb128 0xa
	.4byte	.LASF257
	.2byte	0x399
	.uleb128 0xa
	.4byte	.LASF258
	.2byte	0x39a
	.uleb128 0xa
	.4byte	.LASF259
	.2byte	0x39b
	.uleb128 0xa
	.4byte	.LASF260
	.2byte	0x39c
	.uleb128 0xa
	.4byte	.LASF261
	.2byte	0x39d
	.uleb128 0xa
	.4byte	.LASF262
	.2byte	0x39e
	.uleb128 0xa
	.4byte	.LASF263
	.2byte	0x39f
	.uleb128 0xa
	.4byte	.LASF264
	.2byte	0x3a0
	.uleb128 0xa
	.4byte	.LASF265
	.2byte	0x3e9
	.uleb128 0xa
	.4byte	.LASF266
	.2byte	0x3ea
	.uleb128 0xa
	.4byte	.LASF267
	.2byte	0x44d
	.uleb128 0xa
	.4byte	.LASF268
	.2byte	0x44e
	.uleb128 0xa
	.4byte	.LASF269
	.2byte	0x4b1
	.uleb128 0xa
	.4byte	.LASF270
	.2byte	0x4b3
	.uleb128 0xa
	.4byte	.LASF271
	.2byte	0x4b4
	.uleb128 0xa
	.4byte	.LASF272
	.2byte	0x4b5
	.uleb128 0xa
	.4byte	.LASF273
	.2byte	0x4b6
	.uleb128 0xa
	.4byte	.LASF274
	.2byte	0x4b7
	.uleb128 0xa
	.4byte	.LASF275
	.2byte	0x4b9
	.uleb128 0xa
	.4byte	.LASF276
	.2byte	0x4ba
	.uleb128 0xa
	.4byte	.LASF277
	.2byte	0x4bb
	.uleb128 0xa
	.4byte	.LASF278
	.2byte	0x4bc
	.uleb128 0xa
	.4byte	.LASF279
	.2byte	0x4be
	.uleb128 0xa
	.4byte	.LASF280
	.2byte	0x4bf
	.uleb128 0xa
	.4byte	.LASF281
	.2byte	0x4c0
	.uleb128 0xa
	.4byte	.LASF282
	.2byte	0x515
	.uleb128 0xa
	.4byte	.LASF283
	.2byte	0x519
	.uleb128 0xa
	.4byte	.LASF284
	.2byte	0x51b
	.uleb128 0xa
	.4byte	.LASF285
	.2byte	0x51d
	.uleb128 0xa
	.4byte	.LASF286
	.2byte	0x51e
	.uleb128 0xa
	.4byte	.LASF287
	.2byte	0x51f
	.uleb128 0xa
	.4byte	.LASF288
	.2byte	0x520
	.uleb128 0xa
	.4byte	.LASF289
	.2byte	0x521
	.uleb128 0xa
	.4byte	.LASF290
	.2byte	0x522
	.uleb128 0xa
	.4byte	.LASF291
	.2byte	0x524
	.uleb128 0xa
	.4byte	.LASF292
	.2byte	0x525
	.uleb128 0xa
	.4byte	.LASF293
	.2byte	0x526
	.uleb128 0xa
	.4byte	.LASF294
	.2byte	0x527
	.uleb128 0xa
	.4byte	.LASF295
	.2byte	0x528
	.uleb128 0xa
	.4byte	.LASF296
	.2byte	0x529
	.uleb128 0xa
	.4byte	.LASF297
	.2byte	0x52a
	.uleb128 0xa
	.4byte	.LASF298
	.2byte	0x52b
	.uleb128 0xa
	.4byte	.LASF299
	.2byte	0x52c
	.uleb128 0xa
	.4byte	.LASF300
	.2byte	0x52d
	.uleb128 0xa
	.4byte	.LASF301
	.2byte	0x52e
	.uleb128 0xa
	.4byte	.LASF302
	.2byte	0x52f
	.uleb128 0xa
	.4byte	.LASF303
	.2byte	0x530
	.uleb128 0xa
	.4byte	.LASF304
	.2byte	0x531
	.uleb128 0xa
	.4byte	.LASF305
	.2byte	0x532
	.uleb128 0xa
	.4byte	.LASF306
	.2byte	0x533
	.uleb128 0xa
	.4byte	.LASF307
	.2byte	0x534
	.uleb128 0xa
	.4byte	.LASF308
	.2byte	0x535
	.uleb128 0xa
	.4byte	.LASF309
	.2byte	0x536
	.uleb128 0xa
	.4byte	.LASF310
	.2byte	0x537
	.uleb128 0xa
	.4byte	.LASF311
	.2byte	0x538
	.uleb128 0xa
	.4byte	.LASF312
	.2byte	0x539
	.uleb128 0xa
	.4byte	.LASF313
	.2byte	0x53a
	.uleb128 0xa
	.4byte	.LASF314
	.2byte	0x53b
	.uleb128 0xa
	.4byte	.LASF315
	.2byte	0x53c
	.uleb128 0xa
	.4byte	.LASF316
	.2byte	0x53d
	.uleb128 0xa
	.4byte	.LASF317
	.2byte	0x579
	.uleb128 0xa
	.4byte	.LASF318
	.2byte	0x57a
	.uleb128 0xa
	.4byte	.LASF319
	.2byte	0x57b
	.uleb128 0xa
	.4byte	.LASF320
	.2byte	0x57c
	.uleb128 0xa
	.4byte	.LASF321
	.2byte	0x57d
	.uleb128 0xa
	.4byte	.LASF322
	.2byte	0x57f
	.uleb128 0xa
	.4byte	.LASF323
	.2byte	0x580
	.uleb128 0xa
	.4byte	.LASF324
	.2byte	0x581
	.uleb128 0xa
	.4byte	.LASF325
	.2byte	0x582
	.uleb128 0xa
	.4byte	.LASF326
	.2byte	0x583
	.uleb128 0xa
	.4byte	.LASF327
	.2byte	0x584
	.uleb128 0xa
	.4byte	.LASF328
	.2byte	0x585
	.uleb128 0xa
	.4byte	.LASF329
	.2byte	0x586
	.uleb128 0xa
	.4byte	.LASF330
	.2byte	0x587
	.uleb128 0xa
	.4byte	.LASF331
	.2byte	0x588
	.uleb128 0xa
	.4byte	.LASF332
	.2byte	0x589
	.uleb128 0xa
	.4byte	.LASF333
	.2byte	0x58a
	.uleb128 0xa
	.4byte	.LASF334
	.2byte	0x58b
	.uleb128 0xa
	.4byte	.LASF335
	.2byte	0x58c
	.uleb128 0xa
	.4byte	.LASF336
	.2byte	0x58d
	.uleb128 0xa
	.4byte	.LASF337
	.2byte	0x58e
	.uleb128 0xa
	.4byte	.LASF338
	.2byte	0x58f
	.uleb128 0xa
	.4byte	.LASF339
	.2byte	0x642
	.uleb128 0xa
	.4byte	.LASF340
	.2byte	0x643
	.uleb128 0xa
	.4byte	.LASF341
	.2byte	0x644
	.uleb128 0xa
	.4byte	.LASF342
	.2byte	0x645
	.uleb128 0xa
	.4byte	.LASF343
	.2byte	0x6a5
	.uleb128 0xa
	.4byte	.LASF344
	.2byte	0x6a6
	.uleb128 0xa
	.4byte	.LASF345
	.2byte	0x6a7
	.uleb128 0xa
	.4byte	.LASF346
	.2byte	0x6a8
	.uleb128 0xa
	.4byte	.LASF347
	.2byte	0x6a9
	.uleb128 0xa
	.4byte	.LASF348
	.2byte	0x6aa
	.uleb128 0xa
	.4byte	.LASF349
	.2byte	0x6ab
	.uleb128 0xa
	.4byte	.LASF350
	.2byte	0x6ac
	.uleb128 0xa
	.4byte	.LASF351
	.2byte	0x6ad
	.uleb128 0xa
	.4byte	.LASF352
	.2byte	0x6ae
	.uleb128 0xa
	.4byte	.LASF353
	.2byte	0x6af
	.uleb128 0xa
	.4byte	.LASF354
	.2byte	0x6b0
	.uleb128 0xa
	.4byte	.LASF355
	.2byte	0x6b1
	.uleb128 0xa
	.4byte	.LASF356
	.2byte	0x6b2
	.uleb128 0xa
	.4byte	.LASF357
	.2byte	0x6b3
	.uleb128 0xa
	.4byte	.LASF358
	.2byte	0x6b4
	.uleb128 0xa
	.4byte	.LASF359
	.2byte	0x6b5
	.uleb128 0xa
	.4byte	.LASF360
	.2byte	0x6b6
	.uleb128 0xa
	.4byte	.LASF361
	.2byte	0x6b7
	.uleb128 0xa
	.4byte	.LASF362
	.2byte	0x6b8
	.uleb128 0xa
	.4byte	.LASF363
	.2byte	0x6b9
	.uleb128 0xa
	.4byte	.LASF364
	.2byte	0x6bb
	.uleb128 0xa
	.4byte	.LASF365
	.2byte	0x6bc
	.uleb128 0xa
	.4byte	.LASF366
	.2byte	0x6c7
	.uleb128 0xa
	.4byte	.LASF367
	.2byte	0x6c8
	.uleb128 0xa
	.4byte	.LASF368
	.2byte	0x6c9
	.uleb128 0xa
	.4byte	.LASF369
	.2byte	0x6ca
	.uleb128 0xa
	.4byte	.LASF370
	.2byte	0x6cb
	.uleb128 0xa
	.4byte	.LASF371
	.2byte	0x6cc
	.uleb128 0xa
	.4byte	.LASF372
	.2byte	0x6cd
	.uleb128 0xa
	.4byte	.LASF373
	.2byte	0x6ce
	.uleb128 0xa
	.4byte	.LASF374
	.2byte	0x6cf
	.uleb128 0xa
	.4byte	.LASF375
	.2byte	0x6d0
	.uleb128 0xa
	.4byte	.LASF376
	.2byte	0x6d1
	.uleb128 0xa
	.4byte	.LASF377
	.2byte	0x6d2
	.uleb128 0xa
	.4byte	.LASF378
	.2byte	0x6d3
	.uleb128 0xa
	.4byte	.LASF379
	.2byte	0x6d4
	.uleb128 0xa
	.4byte	.LASF380
	.2byte	0x6d5
	.uleb128 0xa
	.4byte	.LASF381
	.2byte	0x6d6
	.uleb128 0xa
	.4byte	.LASF382
	.2byte	0x6d7
	.uleb128 0xa
	.4byte	.LASF383
	.2byte	0x6d8
	.uleb128 0xa
	.4byte	.LASF384
	.2byte	0x6d9
	.uleb128 0xa
	.4byte	.LASF385
	.2byte	0x6da
	.uleb128 0xa
	.4byte	.LASF386
	.2byte	0x6db
	.uleb128 0xa
	.4byte	.LASF387
	.2byte	0x6dc
	.uleb128 0xa
	.4byte	.LASF388
	.2byte	0x6dd
	.uleb128 0xa
	.4byte	.LASF389
	.2byte	0x709
	.uleb128 0xa
	.4byte	.LASF390
	.2byte	0x70a
	.uleb128 0xa
	.4byte	.LASF391
	.2byte	0x70b
	.uleb128 0xa
	.4byte	.LASF392
	.2byte	0x70c
	.uleb128 0xa
	.4byte	.LASF393
	.2byte	0x70d
	.uleb128 0xa
	.4byte	.LASF394
	.2byte	0x70e
	.uleb128 0xa
	.4byte	.LASF395
	.2byte	0x70f
	.uleb128 0xa
	.4byte	.LASF396
	.2byte	0x710
	.uleb128 0xa
	.4byte	.LASF397
	.2byte	0x76d
	.uleb128 0xa
	.4byte	.LASF398
	.2byte	0x76e
	.uleb128 0xa
	.4byte	.LASF399
	.2byte	0x76f
	.uleb128 0xa
	.4byte	.LASF400
	.2byte	0x7d1
	.uleb128 0xa
	.4byte	.LASF401
	.2byte	0x7d2
	.uleb128 0xa
	.4byte	.LASF402
	.2byte	0x7d3
	.uleb128 0xa
	.4byte	.LASF403
	.2byte	0x7d4
	.uleb128 0xa
	.4byte	.LASF404
	.2byte	0x7d5
	.uleb128 0xa
	.4byte	.LASF405
	.2byte	0x7d6
	.uleb128 0xa
	.4byte	.LASF406
	.2byte	0x7d7
	.uleb128 0xa
	.4byte	.LASF407
	.2byte	0x7d8
	.uleb128 0xa
	.4byte	.LASF408
	.2byte	0x7d9
	.uleb128 0xa
	.4byte	.LASF409
	.2byte	0x7da
	.uleb128 0xa
	.4byte	.LASF410
	.2byte	0x7db
	.uleb128 0xa
	.4byte	.LASF411
	.2byte	0x7dc
	.uleb128 0xa
	.4byte	.LASF412
	.2byte	0x7dd
	.uleb128 0xa
	.4byte	.LASF413
	.2byte	0x7de
	.uleb128 0xa
	.4byte	.LASF414
	.2byte	0x7e4
	.uleb128 0xa
	.4byte	.LASF415
	.2byte	0x7e5
	.uleb128 0xa
	.4byte	.LASF416
	.2byte	0x7e6
	.uleb128 0xa
	.4byte	.LASF417
	.2byte	0x7e7
	.uleb128 0xa
	.4byte	.LASF418
	.2byte	0x7e8
	.uleb128 0xa
	.4byte	.LASF419
	.2byte	0x7ee
	.uleb128 0xa
	.4byte	.LASF420
	.2byte	0x7ef
	.uleb128 0xa
	.4byte	.LASF421
	.2byte	0x7f0
	.uleb128 0xa
	.4byte	.LASF422
	.2byte	0x7f1
	.uleb128 0xa
	.4byte	.LASF423
	.2byte	0x7f2
	.uleb128 0xa
	.4byte	.LASF424
	.2byte	0x7f8
	.uleb128 0xa
	.4byte	.LASF425
	.2byte	0x7f9
	.uleb128 0xa
	.4byte	.LASF426
	.2byte	0x835
	.uleb128 0xa
	.4byte	.LASF427
	.2byte	0x836
	.uleb128 0xa
	.4byte	.LASF428
	.2byte	0x837
	.uleb128 0xa
	.4byte	.LASF429
	.2byte	0x838
	.uleb128 0xa
	.4byte	.LASF430
	.2byte	0x839
	.uleb128 0xa
	.4byte	.LASF431
	.2byte	0x83a
	.uleb128 0xa
	.4byte	.LASF432
	.2byte	0x899
	.uleb128 0xa
	.4byte	.LASF433
	.2byte	0x89a
	.uleb128 0xa
	.4byte	.LASF434
	.2byte	0x89b
	.uleb128 0xa
	.4byte	.LASF435
	.2byte	0x89c
	.uleb128 0xa
	.4byte	.LASF436
	.2byte	0x89d
	.uleb128 0xa
	.4byte	.LASF437
	.2byte	0x89e
	.uleb128 0xa
	.4byte	.LASF438
	.2byte	0x89f
	.uleb128 0xa
	.4byte	.LASF439
	.2byte	0x8fd
	.uleb128 0xa
	.4byte	.LASF440
	.2byte	0x8fe
	.uleb128 0xa
	.4byte	.LASF441
	.2byte	0x8ff
	.uleb128 0xa
	.4byte	.LASF442
	.2byte	0x900
	.uleb128 0xa
	.4byte	.LASF443
	.2byte	0x901
	.uleb128 0xa
	.4byte	.LASF444
	.2byte	0x902
	.uleb128 0xa
	.4byte	.LASF445
	.2byte	0x961
	.uleb128 0xa
	.4byte	.LASF446
	.2byte	0x962
	.uleb128 0xa
	.4byte	.LASF447
	.2byte	0x963
	.uleb128 0xa
	.4byte	.LASF448
	.2byte	0x964
	.uleb128 0xa
	.4byte	.LASF449
	.2byte	0x965
	.uleb128 0xa
	.4byte	.LASF450
	.2byte	0x966
	.uleb128 0xa
	.4byte	.LASF451
	.2byte	0xa29
	.uleb128 0xa
	.4byte	.LASF452
	.2byte	0xa2a
	.uleb128 0xa
	.4byte	.LASF453
	.2byte	0xa8d
	.uleb128 0xa
	.4byte	.LASF454
	.2byte	0xa8e
	.uleb128 0xa
	.4byte	.LASF455
	.2byte	0xa8f
	.uleb128 0xa
	.4byte	.LASF456
	.2byte	0xa90
	.uleb128 0xa
	.4byte	.LASF457
	.2byte	0xa91
	.uleb128 0xa
	.4byte	.LASF458
	.2byte	0xa92
	.uleb128 0xa
	.4byte	.LASF459
	.2byte	0xa93
	.uleb128 0xa
	.4byte	.LASF460
	.2byte	0xa94
	.uleb128 0xa
	.4byte	.LASF461
	.2byte	0xaf1
	.uleb128 0xa
	.4byte	.LASF462
	.2byte	0xaf2
	.uleb128 0xa
	.4byte	.LASF463
	.2byte	0xaf3
	.uleb128 0xa
	.4byte	.LASF464
	.2byte	0xaf4
	.uleb128 0xa
	.4byte	.LASF465
	.2byte	0xb55
	.uleb128 0xa
	.4byte	.LASF466
	.2byte	0xb56
	.uleb128 0xa
	.4byte	.LASF467
	.2byte	0xbb9
	.uleb128 0xa
	.4byte	.LASF468
	.2byte	0xbba
	.uleb128 0xa
	.4byte	.LASF469
	.2byte	0xc1d
	.uleb128 0xa
	.4byte	.LASF470
	.2byte	0xc1e
	.uleb128 0xa
	.4byte	.LASF471
	.2byte	0xc80
	.uleb128 0xa
	.4byte	.LASF472
	.2byte	0xc81
	.uleb128 0xa
	.4byte	.LASF473
	.2byte	0xc82
	.uleb128 0xa
	.4byte	.LASF474
	.2byte	0xce4
	.uleb128 0xa
	.4byte	.LASF475
	.2byte	0xce5
	.uleb128 0xa
	.4byte	.LASF476
	.2byte	0xce6
	.uleb128 0xa
	.4byte	.LASF477
	.2byte	0xce7
	.uleb128 0xa
	.4byte	.LASF478
	.2byte	0xce8
	.uleb128 0xa
	.4byte	.LASF479
	.2byte	0xce9
	.uleb128 0xa
	.4byte	.LASF480
	.2byte	0xcea
	.uleb128 0xa
	.4byte	.LASF481
	.2byte	0xceb
	.uleb128 0xa
	.4byte	.LASF482
	.2byte	0xcec
	.uleb128 0xa
	.4byte	.LASF483
	.2byte	0xced
	.uleb128 0xa
	.4byte	.LASF484
	.2byte	0x2328
	.uleb128 0xa
	.4byte	.LASF485
	.2byte	0x23f0
	.uleb128 0xa
	.4byte	.LASF486
	.2byte	0x24b8
	.uleb128 0xa
	.4byte	.LASF487
	.2byte	0x2710
	.uleb128 0xa
	.4byte	.LASF488
	.2byte	0xffff
	.byte	0
	.uleb128 0x7
	.4byte	.LASF489
	.byte	0x7
	.2byte	0x22e
	.4byte	0x130
	.uleb128 0x3
	.4byte	.LASF490
	.byte	0x8
	.byte	0x7b
	.4byte	0xe9
	.uleb128 0xb
	.byte	0x10
	.byte	0x8
	.byte	0x7f
	.4byte	0xe8a
	.uleb128 0xc
	.4byte	.LASF491
	.byte	0x8
	.byte	0x80
	.4byte	0x10d
	.byte	0
	.uleb128 0xc
	.4byte	.LASF492
	.byte	0x8
	.byte	0x81
	.4byte	0x101
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF493
	.byte	0x8
	.byte	0x83
	.4byte	0x101
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF494
	.byte	0x8
	.byte	0x84
	.4byte	0x101
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF495
	.byte	0x8
	.byte	0x87
	.4byte	0x101
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF496
	.byte	0x8
	.byte	0x88
	.4byte	0x101
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF497
	.byte	0x8
	.byte	0x8a
	.4byte	0x101
	.byte	0x7
	.uleb128 0xc
	.4byte	.LASF498
	.byte	0x8
	.byte	0x8b
	.4byte	0x101
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF499
	.byte	0x8
	.byte	0x8d
	.4byte	0x101
	.byte	0x9
	.uleb128 0xc
	.4byte	.LASF500
	.byte	0x8
	.byte	0x8e
	.4byte	0x101
	.byte	0xa
	.uleb128 0xd
	.string	"crc"
	.byte	0x8
	.byte	0x8f
	.4byte	0x101
	.byte	0xb
	.uleb128 0xc
	.4byte	.LASF501
	.byte	0x8
	.byte	0x90
	.4byte	0x101
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF502
	.byte	0x8
	.byte	0x91
	.4byte	0x101
	.byte	0xd
	.uleb128 0xc
	.4byte	.LASF503
	.byte	0x8
	.byte	0x92
	.4byte	0x101
	.byte	0xe
	.uleb128 0xc
	.4byte	.LASF504
	.byte	0x8
	.byte	0x96
	.4byte	0x101
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	.LASF505
	.byte	0x8
	.byte	0x97
	.4byte	0xdcd
	.uleb128 0xe
	.byte	0x10
	.byte	0x8
	.byte	0xa5
	.4byte	0xeb4
	.uleb128 0xf
	.4byte	.LASF506
	.byte	0x8
	.byte	0xa6
	.4byte	0xeb4
	.uleb128 0xf
	.4byte	.LASF507
	.byte	0x8
	.byte	0xa7
	.4byte	0xec4
	.byte	0
	.uleb128 0x5
	.4byte	0x101
	.4byte	0xec4
	.uleb128 0x6
	.4byte	0x85
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.4byte	0x119
	.4byte	0xed4
	.uleb128 0x6
	.4byte	0x85
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x50
	.byte	0x8
	.byte	0x9a
	.4byte	0xf79
	.uleb128 0xc
	.4byte	.LASF508
	.byte	0x8
	.byte	0x9b
	.4byte	0xf79
	.byte	0
	.uleb128 0xc
	.4byte	.LASF509
	.byte	0x8
	.byte	0x9c
	.4byte	0xe8a
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF510
	.byte	0x8
	.byte	0x9d
	.4byte	0xf84
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF511
	.byte	0x8
	.byte	0x9e
	.4byte	0x119
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF512
	.byte	0x8
	.byte	0x9f
	.4byte	0xf94
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF513
	.byte	0x8
	.byte	0xa1
	.4byte	0xf9a
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF514
	.byte	0x8
	.byte	0xa2
	.4byte	0xf5
	.byte	0x34
	.uleb128 0xc
	.4byte	.LASF515
	.byte	0x8
	.byte	0xa3
	.4byte	0xc7
	.byte	0x38
	.uleb128 0xc
	.4byte	.LASF516
	.byte	0x8
	.byte	0xa8
	.4byte	0xe95
	.byte	0x3c
	.uleb128 0xc
	.4byte	.LASF517
	.byte	0x8
	.byte	0xa9
	.4byte	0x101
	.byte	0x4c
	.uleb128 0xc
	.4byte	.LASF518
	.byte	0x8
	.byte	0xaa
	.4byte	0xd2
	.byte	0x4d
	.uleb128 0xc
	.4byte	.LASF519
	.byte	0x8
	.byte	0xab
	.4byte	0x101
	.byte	0x4e
	.uleb128 0xc
	.4byte	.LASF520
	.byte	0x8
	.byte	0xac
	.4byte	0x101
	.byte	0x4f
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0xf7f
	.uleb128 0x11
	.4byte	0x125
	.uleb128 0x5
	.4byte	0xdd
	.4byte	0xf94
	.uleb128 0x6
	.4byte	0x85
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0xf5
	.uleb128 0x5
	.4byte	0xfaa
	.4byte	0xfaa
	.uleb128 0x6
	.4byte	0x85
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0xdc2
	.uleb128 0x3
	.4byte	.LASF521
	.byte	0x8
	.byte	0xad
	.4byte	0xed4
	.uleb128 0xb
	.byte	0x54
	.byte	0x8
	.byte	0xc4
	.4byte	0x1000
	.uleb128 0xc
	.4byte	.LASF522
	.byte	0x8
	.byte	0xc5
	.4byte	0xfb0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF523
	.byte	0x8
	.byte	0xc6
	.4byte	0x101
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF524
	.byte	0x8
	.byte	0xc7
	.4byte	0x101
	.byte	0x51
	.uleb128 0xc
	.4byte	.LASF525
	.byte	0x8
	.byte	0xc8
	.4byte	0x101
	.byte	0x52
	.uleb128 0xc
	.4byte	.LASF526
	.byte	0x8
	.byte	0xc9
	.4byte	0x101
	.byte	0x53
	.byte	0
	.uleb128 0x3
	.4byte	.LASF527
	.byte	0x8
	.byte	0xca
	.4byte	0xfbb
	.uleb128 0xe
	.byte	0x4
	.byte	0x9
	.byte	0x61
	.4byte	0x1026
	.uleb128 0x12
	.string	"r"
	.byte	0x9
	.byte	0x62
	.4byte	0x1026
	.uleb128 0x12
	.string	"w"
	.byte	0x9
	.byte	0x63
	.4byte	0x1031
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x102c
	.uleb128 0x11
	.4byte	0x101
	.uleb128 0x10
	.byte	0x4
	.4byte	0x101
	.uleb128 0xb
	.byte	0xc
	.byte	0x9
	.byte	0x60
	.4byte	0x1064
	.uleb128 0xd
	.string	"ptr"
	.byte	0x9
	.byte	0x64
	.4byte	0x100b
	.byte	0
	.uleb128 0xc
	.4byte	.LASF528
	.byte	0x9
	.byte	0x65
	.4byte	0x119
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF529
	.byte	0x9
	.byte	0x66
	.4byte	0xc7
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF530
	.byte	0x9
	.byte	0x67
	.4byte	0x1037
	.uleb128 0x10
	.byte	0x4
	.4byte	0xfb0
	.uleb128 0x13
	.4byte	.LASF559
	.byte	0x1
	.byte	0x2d
	.4byte	0xdb6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x112d
	.uleb128 0x14
	.4byte	.LASF531
	.byte	0x1
	.byte	0x2d
	.4byte	0x112d
	.4byte	.LLST0
	.uleb128 0x14
	.4byte	.LASF532
	.byte	0x1
	.byte	0x2e
	.4byte	0x1133
	.4byte	.LLST1
	.uleb128 0x15
	.4byte	.LASF533
	.byte	0x1
	.byte	0x2f
	.4byte	0x119
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x15
	.4byte	.LASF520
	.byte	0x1
	.byte	0x30
	.4byte	0xd2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x15
	.4byte	.LASF519
	.byte	0x1
	.byte	0x31
	.4byte	0xd2
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x15
	.4byte	.LASF502
	.byte	0x1
	.byte	0x32
	.4byte	0xb1
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0x34
	.4byte	0xc7
	.4byte	.LLST2
	.uleb128 0x17
	.4byte	.LASF534
	.byte	0x1
	.byte	0x35
	.4byte	0xdb6
	.4byte	.LLST3
	.uleb128 0x18
	.4byte	.LVL5
	.4byte	0x145b
	.4byte	0x111c
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL8
	.4byte	0x1466
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x1000
	.uleb128 0x10
	.byte	0x4
	.4byte	0x119
	.uleb128 0x1b
	.4byte	.LASF537
	.byte	0x1
	.byte	0x5b
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1188
	.uleb128 0x15
	.4byte	.LASF522
	.byte	0x1
	.byte	0x5b
	.4byte	0x106f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.4byte	.LASF535
	.byte	0x1
	.byte	0x5b
	.4byte	0x1188
	.4byte	.LLST4
	.uleb128 0x1c
	.4byte	.LASF536
	.byte	0x1
	.byte	0x5d
	.4byte	0x1193
	.uleb128 0x3
	.byte	0x72
	.sleb128 4
	.byte	0x9f
	.uleb128 0x16
	.string	"d1"
	.byte	0x1
	.byte	0x5e
	.4byte	0x101
	.4byte	.LLST5
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x118e
	.uleb128 0x11
	.4byte	0xd2
	.uleb128 0x10
	.byte	0x4
	.4byte	0xe8a
	.uleb128 0x1b
	.4byte	.LASF538
	.byte	0x1
	.byte	0x89
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x123e
	.uleb128 0x14
	.4byte	.LASF522
	.byte	0x1
	.byte	0x89
	.4byte	0x106f
	.4byte	.LLST6
	.uleb128 0x1d
	.string	"b"
	.byte	0x1
	.byte	0x8a
	.4byte	0x1188
	.4byte	.LLST7
	.uleb128 0x1e
	.string	"bs"
	.byte	0x1
	.byte	0x8b
	.4byte	0x123e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0x8d
	.4byte	0xc7
	.4byte	.LLST8
	.uleb128 0x17
	.4byte	.LASF510
	.byte	0x1
	.byte	0x8e
	.4byte	0x1244
	.4byte	.LLST9
	.uleb128 0x16
	.string	"f"
	.byte	0x1
	.byte	0x8f
	.4byte	0xc7
	.4byte	.LLST10
	.uleb128 0x18
	.4byte	.LVL31
	.4byte	0x1471
	.4byte	0x1219
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL45
	.4byte	0x1471
	.4byte	0x122d
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL46
	.4byte	0x147c
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x1064
	.uleb128 0x10
	.byte	0x4
	.4byte	0xdd
	.uleb128 0x1b
	.4byte	.LASF539
	.byte	0x1
	.byte	0xb5
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1382
	.uleb128 0x14
	.4byte	.LASF531
	.byte	0x1
	.byte	0xb5
	.4byte	0x112d
	.4byte	.LLST11
	.uleb128 0x14
	.4byte	.LASF540
	.byte	0x1
	.byte	0xb5
	.4byte	0x123e
	.4byte	.LLST12
	.uleb128 0x17
	.4byte	.LASF522
	.byte	0x1
	.byte	0xb7
	.4byte	0x106f
	.4byte	.LLST13
	.uleb128 0x17
	.4byte	.LASF493
	.byte	0x1
	.byte	0xb8
	.4byte	0xc7
	.4byte	.LLST14
	.uleb128 0x16
	.string	"s"
	.byte	0x1
	.byte	0xb9
	.4byte	0xf94
	.4byte	.LLST15
	.uleb128 0x16
	.string	"ptr"
	.byte	0x1
	.byte	0xba
	.4byte	0x1031
	.4byte	.LLST16
	.uleb128 0x17
	.4byte	.LASF528
	.byte	0x1
	.byte	0xbb
	.4byte	0x119
	.4byte	.LLST17
	.uleb128 0x1c
	.4byte	.LASF529
	.byte	0x1
	.byte	0xbc
	.4byte	0xc7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	.LASF541
	.byte	0x1
	.byte	0xbe
	.4byte	0x1382
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1f
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0xc0
	.4byte	0xc7
	.4byte	.LLST18
	.uleb128 0x1f
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x17
	.4byte	.LASF542
	.byte	0x1
	.byte	0xc2
	.4byte	0x119
	.4byte	.LLST19
	.uleb128 0x17
	.4byte	.LASF543
	.byte	0x1
	.byte	0xc3
	.4byte	0x119
	.4byte	.LLST20
	.uleb128 0x16
	.string	"n"
	.byte	0x1
	.byte	0xc4
	.4byte	0xc7
	.4byte	.LLST21
	.uleb128 0x20
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x17
	.4byte	.LASF544
	.byte	0x1
	.byte	0xc6
	.4byte	0xf5
	.4byte	.LLST22
	.uleb128 0x17
	.4byte	.LASF516
	.byte	0x1
	.byte	0xc7
	.4byte	0xc7
	.4byte	.LLST23
	.uleb128 0x16
	.string	"sf"
	.byte	0x1
	.byte	0xc8
	.4byte	0xbc
	.4byte	.LLST24
	.uleb128 0x1f
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x16
	.string	"raw"
	.byte	0x1
	.byte	0xd6
	.4byte	0x119
	.4byte	.LLST25
	.uleb128 0x21
	.4byte	.LVL73
	.4byte	0x1487
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0xc7
	.uleb128 0x22
	.4byte	.LASF545
	.byte	0x4
	.2byte	0x2cc
	.4byte	0x139a
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x11
	.4byte	0x8c
	.uleb128 0x22
	.4byte	.LASF546
	.byte	0x4
	.2byte	0x2cd
	.4byte	0x13b2
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0x8c
	.uleb128 0x5
	.4byte	0x10d
	.4byte	0x13c7
	.uleb128 0x6
	.4byte	0x85
	.byte	0x3
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF547
	.byte	0x9
	.byte	0x56
	.4byte	0x13d8
	.uleb128 0x5
	.byte	0x3
	.4byte	freq_values
	.uleb128 0x11
	.4byte	0x13b7
	.uleb128 0x5
	.4byte	0x101
	.4byte	0x13ed
	.uleb128 0x6
	.4byte	0x85
	.byte	0x3
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF548
	.byte	0x9
	.byte	0x57
	.4byte	0x13fe
	.uleb128 0x5
	.byte	0x3
	.4byte	block_values
	.uleb128 0x11
	.4byte	0x13dd
	.uleb128 0x1c
	.4byte	.LASF549
	.byte	0x9
	.byte	0x58
	.4byte	0x1414
	.uleb128 0x5
	.byte	0x3
	.4byte	channel_values
	.uleb128 0x11
	.4byte	0x13dd
	.uleb128 0x5
	.4byte	0x101
	.4byte	0x1429
	.uleb128 0x6
	.4byte	0x85
	.byte	0x1
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF550
	.byte	0x9
	.byte	0x59
	.4byte	0x143a
	.uleb128 0x5
	.byte	0x3
	.4byte	band_values
	.uleb128 0x11
	.4byte	0x1419
	.uleb128 0x23
	.4byte	.LASF560
	.byte	0x1
	.byte	0x2b
	.4byte	0x1456
	.uleb128 0x5
	.byte	0x3
	.4byte	OI_Codec_Copyright
	.uleb128 0x10
	.byte	0x4
	.4byte	0x125
	.uleb128 0x11
	.4byte	0x1450
	.uleb128 0x24
	.4byte	.LASF551
	.4byte	.LASF551
	.byte	0x9
	.byte	0xdb
	.uleb128 0x24
	.4byte	.LASF552
	.4byte	.LASF552
	.byte	0x9
	.byte	0xda
	.uleb128 0x24
	.4byte	.LASF553
	.4byte	.LASF553
	.byte	0xa
	.byte	0x2b
	.uleb128 0x24
	.4byte	.LASF554
	.4byte	.LASF554
	.byte	0xa
	.byte	0x31
	.uleb128 0x24
	.4byte	.LASF555
	.4byte	.LASF555
	.byte	0x9
	.byte	0xd6
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
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xf
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
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x16
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
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
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL6
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL14
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL18
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x73
	.sleb128 1
	.4byte	.LVL17
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL19
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL25
	.4byte	.LVL31-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL31-1
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL33
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL41
	.4byte	.LVL45-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL20
	.4byte	.LVL31-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL32
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL45-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL21
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL24
	.4byte	.LVL27
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL30
	.2byte	0x3
	.byte	0x75
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x3
	.byte	0x75
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LFE7
	.2byte	0x3
	.byte	0x75
	.sleb128 4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL34
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL42
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL49
	.4byte	.LFE8
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL47
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL54
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL49
	.4byte	.LFE8
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL50
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LVL81
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL81
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL51
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x5
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0x23
	.uleb128 0x28
	.4byte	.LVL56
	.4byte	.LVL75
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0x6
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL78
	.4byte	.LFE8
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL52
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL69
	.4byte	.LVL72
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL53
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL70
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL58
	.4byte	.LFE8
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL59
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL60
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL75
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL62
	.4byte	.LVL73-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL64
	.4byte	.LVL73-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL67
	.4byte	.LVL73-1
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	0
	.4byte	0
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
.LASF130:
	.string	"OI_HCI_EVENT_TABLE_ERROR"
.LASF538:
	.string	"OI_SBC_ReadScalefactors"
.LASF62:
	.string	"OI_STATUS_END_OF_FILE"
.LASF206:
	.string	"OI_SDP_INVALID_PDU_SIZE"
.LASF518:
	.string	"formatByte"
.LASF11:
	.string	"sizetype"
.LASF226:
	.string	"OI_SDP_TRANSACTION_ID_MISMATCH"
.LASF449:
	.string	"OI_FIFOQ_NOT_ALLOCATED"
.LASF194:
	.string	"OI_HCIERR_ROLE_SWITCH_PENDING"
.LASF219:
	.string	"OI_SDP_SERVER_TOO_MANY_CONNECTIONS"
.LASF391:
	.string	"OI_HANDSFREE_SERVICE_NOT_STARTED"
.LASF249:
	.string	"OI_RFCOMM_DLCI_EXISTS"
.LASF193:
	.string	"OI_HCIERR_RESERVED_31"
.LASF35:
	.string	"OI_STATUS_INITIALIZATION_FAILED"
.LASF398:
	.string	"OI_HEADSET_AG_SERVICE_NOT_STARTED"
.LASF382:
	.string	"OI_OBEX_METHOD_NOT_ALLOWED"
.LASF353:
	.string	"OI_OBEX_OPERATION_IN_PROGRESS"
.LASF157:
	.string	"OI_HCIERR_HOST_REJECTED_RESOURCES"
.LASF503:
	.string	"min_bitpool"
.LASF485:
	.string	"OI_STATUS_RESERVED_FOR_BHAPI"
.LASF148:
	.string	"OI_HCIERR_PAGE_TIMEOUT"
.LASF461:
	.string	"OI_BLST_CHARACTER_TIMEOUT"
.LASF326:
	.string	"OI_SECMGR_UNKNOWN_ENCRYPT_VALUE"
.LASF299:
	.string	"OI_DEVMGR_UNKNOWN_LINK_TYPE"
.LASF541:
	.string	"iter_count"
.LASF105:
	.string	"OI_L2CAP_CONNECT_REFUSED_INVALID_PSM"
.LASF89:
	.string	"OI_STATUS_BUFFER_TOO_SMALL"
.LASF373:
	.string	"OI_OBEX_UNAUTHORIZED"
.LASF329:
	.string	"OI_SECMGR_ENCRYPTION_FAILED"
.LASF203:
	.string	"OI_SDP_SPEC_ERROR"
.LASF28:
	.string	"OI_STATUS_INVALID_PARAMETERS"
.LASF435:
	.string	"OI_PAN_INVALID_ROLE"
.LASF18:
	.string	"OI_BYTE"
.LASF127:
	.string	"OI_HCI_CMD_TABLE_ERROR"
.LASF160:
	.string	"OI_HCIERR_HOST_TIMEOUT"
.LASF543:
	.string	"bits_by4"
.LASF368:
	.string	"OI_OBEX_PACKET_OVERFLOW"
.LASF271:
	.string	"OI_HCITRANS_NULL_DEVICE_HANDLE"
.LASF57:
	.string	"OI_STATUS_ACCESS_DENIED"
.LASF159:
	.string	"OI_HCIERR_HOST_REJECTED_PERSONAL_DEVICE"
.LASF211:
	.string	"OI_SDP_SERVER_NOT_CONNECTED"
.LASF67:
	.string	"OI_STATUS_ALREADY_INITIALIZED"
.LASF78:
	.string	"OI_STATUS_PSM_NOT_FOUND"
.LASF269:
	.string	"OI_HCITRANS_CANNOT_CONNECT_TO_DEVICE"
.LASF73:
	.string	"OI_STATUS_SPEC_VIOLATION"
.LASF113:
	.string	"OI_L2CAP_GET_INFO_NOT_SUPPORTED"
.LASF153:
	.string	"OI_HCIERR_MAX_NUM_OF_CONNECTIONS"
.LASF281:
	.string	"OI_HCITRANS_INITIALIZING"
.LASF218:
	.string	"OI_SDP_SERVER_CONNECT_FAILED"
.LASF255:
	.string	"OI_RFCOMM_FRAMESIZE_EXCEEDED"
.LASF66:
	.string	"OI_STATUS_READ_IN_PROGRESS"
.LASF199:
	.string	"OI_HCIERR_SSP_NOT_SUPPORTED_BY_HOST"
.LASF239:
	.string	"OI_SDP_DATA_ELEMENT_TRUNCATED"
.LASF473:
	.string	"OI_UNICODE_DESTINATION_EXHAUSTED"
.LASF80:
	.string	"OI_STATUS_WRITE_IN_PROGRESS"
.LASF479:
	.string	"OI_AVRCP_RESPONSE_INVALID_PDU"
.LASF230:
	.string	"OI_SDP_CONNECTION_TIMEOUT"
.LASF496:
	.string	"subbands"
.LASF285:
	.string	"OI_DEVMGR_CONNECTION_LIST_FULL"
.LASF387:
	.string	"OI_OBEX_FILEOP_ERROR"
.LASF412:
	.string	"OI_BNEP_CONNECT_FAILED_INVALID_UUID_SIZE"
.LASF292:
	.string	"OI_DEVMGR_EVENT_CALLBACK_LIST_FULL"
.LASF102:
	.string	"OI_L2CAP_CMD_REJECT_RCVD"
.LASF87:
	.string	"OI_STATUS_EMPTY_GROUP"
.LASF161:
	.string	"OI_HCIERR_UNSUPPORTED"
.LASF7:
	.string	"__uint8_t"
.LASF93:
	.string	"OI_L2CAP_GROUP_ADD_CONNECT_FAIL"
.LASF152:
	.string	"OI_HCIERR_CONNECTION_TIMEOUT"
.LASF330:
	.string	"OI_SECMGR_UNIT_KEY_UNSUPPORTED"
.LASF404:
	.string	"OI_BNEP_RESPONSE_TIMEOUT"
.LASF33:
	.string	"OI_STATUS_OUT_OF_MEMORY"
.LASF95:
	.string	"OI_L2CAP_DATA_WRITE_ERROR_LINK_TERM"
.LASF245:
	.string	"OI_RFCOMM_INVALID_PARITYTYPE"
.LASF493:
	.string	"nrof_blocks"
.LASF478:
	.string	"OI_AVRCP_RESPONSE_PACKET_OVERFLOW"
.LASF389:
	.string	"OI_HANDSFREE_EVENT_REPORTING_DISABLED"
.LASF514:
	.string	"filterBufferLen"
.LASF13:
	.string	"long int"
.LASF254:
	.string	"OI_RFCOMM_INVALID_PACKET"
.LASF247:
	.string	"OI_RFCOMM_SESSION_EXISTS"
.LASF65:
	.string	"OI_STATUS_NEGOTIATION_FAILURE"
.LASF26:
	.string	"OI_STATUS_SUCCESS"
.LASF444:
	.string	"OI_CODEC_SBC_PARTIAL_DECODE"
.LASF124:
	.string	"OI_HCI_SHORT_EVENT"
.LASF175:
	.string	"OI_HCIERR_UNSPECIFIED_ERROR"
.LASF84:
	.string	"OI_STATUS_GROUP_FULL"
.LASF134:
	.string	"OI_HCI_FLOW_CONTROL_DISABLED"
.LASF164:
	.string	"OI_HCIERR_OTHER_END_LOW_RESOURCES"
.LASF200:
	.string	"OI_HCIERR_HOST_BUSY_PAIRING"
.LASF94:
	.string	"OI_L2CAP_GROUP_REMOVE_FAILURE"
.LASF379:
	.string	"OI_OBEX_INTERNAL_SERVER_ERROR"
.LASF475:
	.string	"OI_AVRCP_NOT_IMPLEMENTED"
.LASF436:
	.string	"OI_PAN_CONNECTION_IN_PROGRESS"
.LASF388:
	.string	"OI_OBEX_USERID_TOO_LONG"
.LASF557:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/decoder/srce/decoder-private.c"
.LASF22:
	.string	"OI_UINT8"
.LASF51:
	.string	"OI_STATUS_MBUF_OVERFLOW"
.LASF279:
	.string	"OI_HCITRANS_INTERNAL_ERROR"
.LASF550:
	.string	"band_values"
.LASF450:
	.string	"OI_FIFOQ_INVALID_DATA_PTR"
.LASF179:
	.string	"OI_HCIERR_LMP_ERROR_TRANS_COLLISION"
.LASF552:
	.string	"OI_SBC_ExpandFrameFields"
.LASF122:
	.string	"OI_HCI_BAD_EVENT_PARM_LEN"
.LASF417:
	.string	"OI_BNEP_FILTER_NET_FAILED_MAX_LIMIT_REACHED"
.LASF372:
	.string	"OI_OBEX_PRECONDITION_FAILED"
.LASF451:
	.string	"OI_HID_HOST_SERVICE_NOT_STARTED"
.LASF431:
	.string	"OI_NETIFC_PACKET_TOO_BIG"
.LASF136:
	.string	"OI_HCI_TX_ERROR"
.LASF177:
	.string	"OI_HCIERR_ROLE_CHANGE_NOT_ALLOWED"
.LASF75:
	.string	"OI_STATUS_INVALID_CID"
.LASF197:
	.string	"OI_HCIERR_ROLE_SWITCH_FAILED"
.LASF410:
	.string	"OI_BNEP_CONNECT_FAILED_INVALID_DEST_UUID"
.LASF527:
	.string	"OI_CODEC_SBC_DECODER_CONTEXT"
.LASF0:
	.string	"signed char"
.LASF8:
	.string	"uint8_t"
.LASF30:
	.string	"OI_STATUS_NOT_INITIALIZED"
.LASF137:
	.string	"OI_HCI_DEVICE_NOT_INITIALIZED"
.LASF512:
	.string	"subdata"
.LASF273:
	.string	"OI_HCITRANS_DEVICE_NOT_READY"
.LASF169:
	.string	"OI_HCIERR_UNKNOWN_LMP_PDU"
.LASF531:
	.string	"context"
.LASF361:
	.string	"OI_OBEX_CLIENT_ABORTED_COMMAND"
.LASF132:
	.string	"OI_HCI_NO_CMD_DESC_FOR_OPCODE"
.LASF384:
	.string	"OI_OBEX_FOLDER_BROWSING_NOT_ALLOWED"
.LASF455:
	.string	"OI_AT_BUSY"
.LASF1:
	.string	"unsigned char"
.LASF71:
	.string	"OI_STATUS_PIN_CODE_TOO_LONG"
.LASF459:
	.string	"OI_AT_CME_ERROR"
.LASF155:
	.string	"OI_HCIERR_ACL_CONNECTION_ALREADY_EXISTS"
.LASF409:
	.string	"OI_BNEP_CONNECT_BASE"
.LASF422:
	.string	"OI_BNEP_FILTER_MULTI_FAILED_MAX_LIMIT_REACHED"
.LASF183:
	.string	"OI_HCIERR_QOS_NOT_SUPPORTED"
.LASF196:
	.string	"OI_HCIERR_RESERVED_SLOT_VIOLATION"
.LASF190:
	.string	"OI_HCIERR_CHANNEL_CLASSIFICATION_NS"
.LASF17:
	.string	"OI_UINT"
.LASF58:
	.string	"OI_STATUS_DATA_ERROR"
.LASF77:
	.string	"OI_STATUS_CHANNEL_NOT_FOUND"
.LASF319:
	.string	"OI_SECMGR_ORPHANED_CALLBACK"
.LASF481:
	.string	"OI_AVRCP_RESPONSE_PARAMETER_NOT_FOUND"
.LASF10:
	.string	"_Bool"
.LASF460:
	.string	"OI_AT_CMS_ERROR"
.LASF528:
	.string	"value"
.LASF275:
	.string	"OI_HCITRANS_ACCESS_DENIED"
.LASF499:
	.string	"alloc"
.LASF139:
	.string	"OI_HCI_PASSTHROUGH_ERROR"
.LASF526:
	.string	"bufferedBlocks"
.LASF12:
	.string	"char"
.LASF106:
	.string	"OI_L2CAP_CONNECT_REFUSED_SECURITY"
.LASF346:
	.string	"OI_OBEX_CONNECT_FAILED"
.LASF59:
	.string	"OI_STATUS_INVALID_ROLE"
.LASF402:
	.string	"OI_BNEP_SERVICE_NOT_REGISTERED"
.LASF85:
	.string	"OI_STATUS_DEVICE_ALREADY_IN_GROUP"
.LASF258:
	.string	"OI_RFCOMM_CREDIT_ERROR"
.LASF524:
	.string	"restrictSubbands"
.LASF267:
	.string	"OI_TEST_UNKNOWN_TEST"
.LASF523:
	.string	"limitFrameFormat"
.LASF521:
	.string	"OI_CODEC_SBC_COMMON_CONTEXT"
.LASF256:
	.string	"OI_RFCOMM_INVALID_DLCI"
.LASF554:
	.string	"OI_BITSTREAM_ReadUINT4Aligned"
.LASF261:
	.string	"OI_RFCOMM_SESSION_SHUTDOWN"
.LASF156:
	.string	"OI_HCIERR_COMMAND_DISALLOWED"
.LASF467:
	.string	"OI_PBAP_REPOSITORY_NOT_SET"
.LASF217:
	.string	"OI_SDP_REQUEST_PENDING"
.LASF383:
	.string	"OI_OBEXSRV_INCOMPLETE_GET"
.LASF198:
	.string	"OI_HCIERR_EIR_TOO_LARGE"
.LASF182:
	.string	"OI_HCIERR_UNIT_KEY_USED"
.LASF101:
	.string	"OI_L2CAP_INVALID_ADDRESS"
.LASF551:
	.string	"OI_CODEC_SBC_Alloc"
.LASF519:
	.string	"pcmStride"
.LASF115:
	.string	"OI_L2CAP_INVALID_PSM"
.LASF380:
	.string	"OI_OBEX_UNSUPPORTED_MEDIA_TYPE"
.LASF307:
	.string	"OI_DEVMGR_NOT_IN_MASTER_MODE"
.LASF64:
	.string	"OI_STATUS_WRITE_ERROR"
.LASF511:
	.string	"frameCount"
.LASF112:
	.string	"OI_L2CAP_GET_INFO_BASE"
.LASF209:
	.string	"OI_SDP_ERROR"
.LASF403:
	.string	"OI_BNEP_INVALID_HANDLE"
.LASF348:
	.string	"OI_OBEX_ERROR"
.LASF324:
	.string	"OI_SECMGR_ACCESS_PENDING"
.LASF335:
	.string	"OI_SECMGR_INVALID_KEY_TYPE"
.LASF510:
	.string	"scale_factor"
.LASF252:
	.string	"OI_RFCOMM_TEST_IN_PROGRESS"
.LASF530:
	.string	"OI_BITSTREAM"
.LASF274:
	.string	"OI_HCITRANS_FUNCTION_NOT_SUPPORTED"
.LASF480:
	.string	"OI_AVRCP_RESPONSE_INVALID_PARAMETER"
.LASF40:
	.string	"OI_OS_ERROR"
.LASF370:
	.string	"OI_OBEX_NAME_REQUIRED"
.LASF529:
	.string	"bitPtr"
.LASF163:
	.string	"OI_HCIERR_OTHER_END_USER_DISCONNECT"
.LASF390:
	.string	"OI_HANDSFREE_NOT_CONNECTED"
.LASF312:
	.string	"OI_DEVMGR_BAD_INTERVAL"
.LASF325:
	.string	"OI_SECMGR_PIN_CODE_TOO_SHORT"
.LASF81:
	.string	"OI_STATUS_INVALID_PACKET"
.LASF426:
	.string	"OI_NETIFC_UP_FAILED"
.LASF178:
	.string	"OI_HCIERR_LMP_RESPONSE_TIMEOUT"
.LASF191:
	.string	"OI_HCIERR_INSUFFICIENT_SECURITY"
.LASF19:
	.string	"OI_INT8"
.LASF295:
	.string	"OI_DEVMGR_ENUM_UNEXPECTED_INQ_COMPLETE"
.LASF505:
	.string	"OI_CODEC_SBC_FRAME_INFO"
.LASF327:
	.string	"OI_SECMGR_INVALID_POLICY"
.LASF241:
	.string	"OI_RFCOMM_INVALID_BAUDRATE"
.LASF233:
	.string	"OI_SDP_TOO_MANY_SERVICE_RECORDS"
.LASF522:
	.string	"common"
.LASF296:
	.string	"OI_DEVMGR_ENUM_UNEXPECTED_INQ_RESULT"
.LASF222:
	.string	"OI_SDP_ILLEGAL_ARGUMENT"
.LASF56:
	.string	"OI_STATUS_RESET_IN_PROGRESS"
.LASF227:
	.string	"OI_SDP_UNEXPECTED_RESPONSE_PDU_ID"
.LASF507:
	.string	"uint32"
.LASF16:
	.string	"OI_INT"
.LASF231:
	.string	"OI_SDP_RESPONSE_DATA_ERROR"
.LASF185:
	.string	"OI_HCIERR_UNIT_KEY_PAIRING_UNSUPPORTED"
.LASF189:
	.string	"OI_HCIERR_QOS_REJECTED"
.LASF446:
	.string	"OI_FIFOQ_INVALID_Q"
.LASF162:
	.string	"OI_HCIERR_INVALID_PARAMETERS"
.LASF364:
	.string	"OI_OBEX_OBJECT_OVERFLOW"
.LASF228:
	.string	"OI_SDP_REQUEST_TIMEOUT"
.LASF535:
	.string	"data"
.LASF470:
	.string	"OI_AADP_BAD_STATE"
.LASF246:
	.string	"OI_RFCOMM_INVALID_FLOWCONTROL"
.LASF29:
	.string	"OI_STATUS_NOT_IMPLEMENTED"
.LASF232:
	.string	"OI_SDP_TOO_MANY_ATTRIBUTE_BYTES"
.LASF471:
	.string	"OI_UNICODE_INVALID_SOURCE"
.LASF532:
	.string	"decoderData"
.LASF457:
	.string	"OI_AT_DELAYED"
.LASF14:
	.string	"long unsigned int"
.LASF263:
	.string	"OI_RFCOMM_REMOTE_DEVICE_DISCONNECTED"
.LASF294:
	.string	"OI_DEVMGR_BUSY"
.LASF376:
	.string	"OI_OBEX_INVALID_OPERATION"
.LASF44:
	.string	"OI_STATUS_INVALID_COMMAND"
.LASF205:
	.string	"OI_SDP_INVALID_REQUEST_SYNTAX"
.LASF413:
	.string	"OI_BNEP_CONNECT_FAILED_NOT_ALLOWED"
.LASF338:
	.string	"OI_SECMGR_NOT_BONDABLE"
.LASF405:
	.string	"OI_BNEP_INVALID_CONNECTION"
.LASF135:
	.string	"OI_HCI_TX_COMPLETE"
.LASF420:
	.string	"OI_BNEP_FILTER_MULTI_UNSUPPORTED_REQUEST"
.LASF72:
	.string	"OI_STATUS_STILL_REGISTERED"
.LASF411:
	.string	"OI_BNEP_CONNECT_FAILED_INVALID_SOURCE_UUID"
.LASF96:
	.string	"OI_L2CAP_DISCONNECT_LOCAL_REQUEST"
.LASF448:
	.string	"OI_FIFOQ_FULL"
.LASF45:
	.string	"OI_BUSY_FAIL"
.LASF202:
	.string	"OI_HCIERR_LAST_ERROR_VALUE"
.LASF104:
	.string	"OI_L2CAP_CONNECT_PENDING"
.LASF123:
	.string	"OI_HCI_CMD_QUEUE_FULL"
.LASF86:
	.string	"OI_STATUS_DUPLICATE_GROUP"
.LASF441:
	.string	"OI_CODEC_SBC_NOT_ENOUGH_BODY_DATA"
.LASF546:
	.string	"bd_addr_null"
.LASF251:
	.string	"OI_RFCOMM_REMOTE_REJECT"
.LASF321:
	.string	"OI_SECMGR_DEVICE_NOT_TRUSTED"
.LASF90:
	.string	"OI_STATUS_IDENTIFIER_NOT_FOUND"
.LASF262:
	.string	"OI_RFCOMM_LOCAL_DEVICE_DISCONNECTED"
.LASF339:
	.string	"OI_TCS_INVALID_ELEMENT_TYPE"
.LASF352:
	.string	"OI_OBEX_NO_MORE_CONNECTIONS"
.LASF504:
	.string	"cachedInfo"
.LASF192:
	.string	"OI_HCIERR_PARM_OUT_OF_MANDATORY_RANGE"
.LASF316:
	.string	"OI_DEVMGR_EIR_RESPONSE_2_LARGE"
.LASF125:
	.string	"OI_HCI_TRANSMIT_NOT_READY"
.LASF362:
	.string	"OI_OBEX_BAD_PACKET"
.LASF498:
	.string	"nrof_channels"
.LASF138:
	.string	"OI_HCI_UNSUPPORTED_COMMAND"
.LASF501:
	.string	"join"
.LASF107:
	.string	"OI_L2CAP_CONNECT_REFUSED_NO_RESOURCES"
.LASF427:
	.string	"OI_NETIFC_COULD_NOT_CREATE_THREAD"
.LASF395:
	.string	"OI_HANDSFREE_AUDIO_NOT_CONNECTED"
.LASF549:
	.string	"channel_values"
.LASF357:
	.string	"OI_OBEX_SERVICE_UNAVAILABLE"
.LASF340:
	.string	"OI_TCS_INVALID_PACKET"
.LASF111:
	.string	"OI_L2CAP_CONFIG_FAIL_UNKNOWN_OPTIONS"
.LASF513:
	.string	"filterBuffer"
.LASF70:
	.string	"OI_STATUS_LINK_TERMINATED"
.LASF266:
	.string	"OI_DISPATCH_TABLE_OVERFLOW"
.LASF187:
	.string	"OI_HCIERR_RESERVED_2B"
.LASF415:
	.string	"OI_BNEP_FILTER_NET_UNSUPPORTED_REQUEST"
.LASF5:
	.string	"long long int"
.LASF291:
	.string	"OI_DEVMGR_DUPLICATE_EVENT_CALLBACK"
.LASF309:
	.string	"OI_DEVMGR_BUSY_TIMEOUT"
.LASF445:
	.string	"OI_FIFOQ_QUEUE_NOT_ALIGNED"
.LASF223:
	.string	"OI_SDP_ATTRIBUTE_NOT_FOUND"
.LASF434:
	.string	"OI_PAN_INCOMPATIBLE_ROLES"
.LASF484:
	.string	"OI_STATUS_RESERVED_FOR_BCOT"
.LASF289:
	.string	"OI_DEVMGR_NO_INQUIRIES_ACTIVE"
.LASF253:
	.string	"OI_RFCOMM_SESSION_NOT_FOUND"
.LASF47:
	.string	"OI_STATUS_NOT_FOUND"
.LASF195:
	.string	"OI_HCIERR_RESERVED_33"
.LASF553:
	.string	"OI_BITSTREAM_ReadInit"
.LASF25:
	.string	"OI_CHAR"
.LASF397:
	.string	"OI_HEADSET_SERVICE_NOT_STARTED"
.LASF171:
	.string	"OI_HCIERR_SCO_OFFSET_REJECTED"
.LASF60:
	.string	"OI_STATUS_ALREADY_CONNECTED"
.LASF341:
	.string	"OI_TCS_CALL_IN_PROGRESS"
.LASF257:
	.string	"OI_RFCOMM_SERVER_NOT_REGISTERED"
.LASF536:
	.string	"frame"
.LASF320:
	.string	"OI_SECMGR_BUSY"
.LASF118:
	.string	"OI_HCI_NO_SUCH_CONNECTION"
.LASF201:
	.string	"OI_HCIERR_UNKNOWN_ERROR"
.LASF469:
	.string	"OI_AADP_BAD_ENDPOINT"
.LASF452:
	.string	"OI_HID_DEVICE_SERVICE_NOT_STARTED"
.LASF318:
	.string	"OI_SECMGR_INTERNAL_ERROR"
.LASF556:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF243:
	.string	"OI_RFCOMM_INVALID_STOPBIT"
.LASF491:
	.string	"frequency"
.LASF334:
	.string	"OI_SECMGR_INSUFFICIENT_LINK_KEY"
.LASF236:
	.string	"OI_SDP_BADLY_FORMED_ATTRIBUTE_VALUE"
.LASF99:
	.string	"OI_L2CAP_PING_TIMEOUT"
.LASF472:
	.string	"OI_UNICODE_SOURCE_EXHAUSTED"
.LASF336:
	.string	"OI_SECMGR_SSP_NOT_ENCRYPTED"
.LASF173:
	.string	"OI_HCIERR_SCO_AIR_MODE_REJECTED"
.LASF212:
	.string	"OI_SDP_ACCESS_DENIED"
.LASF442:
	.string	"OI_CODEC_SBC_NOT_ENOUGH_AUDIO_DATA"
.LASF314:
	.string	"OI_DEVMGR_CONNECTION_OVERLAP"
.LASF414:
	.string	"OI_BNEP_FILTER_NET_BASE"
.LASF61:
	.string	"OI_STATUS_PARSE_ERROR"
.LASF394:
	.string	"OI_HANDSFREE_AUDIO_ALREADY_CONNECTED"
.LASF120:
	.string	"OI_HCI_EVENT_UNDERRUN"
.LASF4:
	.string	"unsigned int"
.LASF158:
	.string	"OI_HCIERR_HOST_REJECTED_SECURITY"
.LASF168:
	.string	"OI_HCIERR_PAIRING_NOT_ALLOWED"
.LASF283:
	.string	"OI_DEVMGR_HARDWARE_ERROR"
.LASF290:
	.string	"OI_DEVMGR_DUPLICATE_CONNECTION"
.LASF386:
	.string	"OI_OBEX_OFS_ERROR"
.LASF465:
	.string	"OI_AVDTP_CONNECTION_SEQ_ERROR"
.LASF558:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF119:
	.string	"OI_HCI_CB_LIST_FULL"
.LASF23:
	.string	"OI_UINT16"
.LASF424:
	.string	"OI_BNEP_LOCAL_DEVICE_MUST_BE_MASTER"
.LASF270:
	.string	"OI_HCITRANS_BUFFER_TOO_SMALL"
.LASF126:
	.string	"OI_HCI_ORPHAN_SENT_EVENT"
.LASF88:
	.string	"OI_STATUS_PACKET_NOT_FOUND"
.LASF539:
	.string	"OI_SBC_ReadSamples"
.LASF121:
	.string	"OI_HCI_UNKNOWN_EVENT_CODE"
.LASF302:
	.string	"OI_DEVMGR_SCO_ALREADY_REGISTERED"
.LASF516:
	.string	"bits"
.LASF147:
	.string	"OI_HCIERR_HARDWARE_FAILURE"
.LASF215:
	.string	"OI_SDP_NO_MORE_DATA"
.LASF500:
	.string	"bitpool"
.LASF474:
	.string	"OI_AVRCP_TOO_MANY_CONNECTIONS"
.LASF53:
	.string	"OI_STATUS_CONNECTION_EXISTS"
.LASF221:
	.string	"OI_SDP_PARTIAL_RESPONSE"
.LASF468:
	.string	"OI_PBAP_PHONEBOOK_NOT_SET"
.LASF400:
	.string	"OI_BNEP_INVALID_MTU"
.LASF347:
	.string	"OI_OBEX_DISCONNECT_FAILED"
.LASF476:
	.string	"OI_AVRCP_REJECTED"
.LASF447:
	.string	"OI_FIFOQ_BUF_TOO_LARGE"
.LASF525:
	.string	"enhancedEnabled"
.LASF250:
	.string	"OI_RFCOMM_LINK_NOT_FOUND"
.LASF149:
	.string	"OI_HCIERR_AUTHENTICATION_FAILURE"
.LASF166:
	.string	"OI_HCIERR_CONNECTION_TERMINATED_LOCALLY"
.LASF151:
	.string	"OI_HCIERR_MEMORY_FULL"
.LASF20:
	.string	"OI_INT16"
.LASF333:
	.string	"OI_SECMGR_INVALID_SEC_LEVEL"
.LASF351:
	.string	"OI_OBEX_NOT_CONNECTED"
.LASF408:
	.string	"OI_BNEP_NOT_INITIALIZED"
.LASF224:
	.string	"OI_SDP_DATABASE_OUT_OF_RESOURCES"
.LASF443:
	.string	"OI_CODEC_SBC_CHECKSUM_MISMATCH"
.LASF308:
	.string	"OI_DEVMGR_POLICY_VIOLATION"
.LASF24:
	.string	"OI_UINT32"
.LASF355:
	.string	"OI_OBEX_GET_RESPONSE_ERROR"
.LASF301:
	.string	"OI_DEVMGR_UNKNOWN_IAC_LAP"
.LASF322:
	.string	"OI_SECMGR_DEVICE_ENCRYPT_FAIL"
.LASF547:
	.string	"freq_values"
.LASF458:
	.string	"OI_AT_BLACKLISTED"
.LASF374:
	.string	"OI_OBEX_NOT_IMPLEMENTED"
.LASF220:
	.string	"OI_SDP_NO_MATCHING_SERVICE_RECORD"
.LASF377:
	.string	"OI_OBEX_DATABASE_FULL"
.LASF298:
	.string	"OI_DEVMGR_ENUM_INQUIRIES_OVERLAP"
.LASF317:
	.string	"OI_SECMGR_NO_POLICY"
.LASF142:
	.string	"OI_HCI_TRANSPORT_RESET"
.LASF509:
	.string	"frameInfo"
.LASF310:
	.string	"OI_DEVMGR_REENCRYPT_FAILED"
.LASF560:
	.string	"OI_Codec_Copyright"
.LASF392:
	.string	"OI_HANDSFREE_AG_SERVICE_NOT_STARTED"
.LASF154:
	.string	"OI_HCIERR_MAX_NUM_OF_SCO_CONNECTIONS"
.LASF349:
	.string	"OI_OBEX_INCOMPLETE_PACKET"
.LASF396:
	.string	"OI_HANDSFREE_FEATURE_NOT_SUPPORTED"
.LASF55:
	.string	"OI_LOWER_STACK_ERROR"
.LASF486:
	.string	"OI_STATUS_RESERVED_FOR_SOUNDABOUT"
.LASF21:
	.string	"OI_INT32"
.LASF315:
	.string	"OI_DEVMGR_ORPHAN_SUBRATE_COMPLETE"
.LASF110:
	.string	"OI_L2CAP_CONFIG_FAIL_NO_REASON"
.LASF487:
	.string	"OI_STATUS_RESERVED_FOR_APPS"
.LASF6:
	.string	"long long unsigned int"
.LASF454:
	.string	"OI_AT_NO_CARRIER"
.LASF63:
	.string	"OI_STATUS_READ_ERROR"
.LASF416:
	.string	"OI_BNEP_FILTER_NET_FAILED_INVALID_PROTOCOL_TYPE"
.LASF50:
	.string	"OI_CALLBACK_FUNCTION_REQUIRED"
.LASF490:
	.string	"SBC_BUFFER_T"
.LASF286:
	.string	"OI_DEVMGR_NO_SUCH_CONNECTION"
.LASF248:
	.string	"OI_RFCOMM_INVALID_CHANNEL"
.LASF36:
	.string	"OI_STATUS_INITIALIZATION_PENDING"
.LASF425:
	.string	"OI_BNEP_PACKET_FILTERED_OUT"
.LASF378:
	.string	"OI_OBEX_DATABASE_LOCKED"
.LASF537:
	.string	"OI_SBC_ReadHeader"
.LASF545:
	.string	"bd_addr_any"
.LASF365:
	.string	"OI_OBEX_NOT_FOUND"
.LASF144:
	.string	"OI_HCIERR_FIRST_ERROR_VALUE"
.LASF517:
	.string	"maxBitneed"
.LASF128:
	.string	"OI_HCI_UNKNOWN_CMD_ID"
.LASF437:
	.string	"OI_PAN_USER_ALREADY_CONNECTED"
.LASF186:
	.string	"OI_HCIERR_DIFFERENT_TRANS_COLLISION"
.LASF429:
	.string	"OI_NETIFC_INTERFACE_ALREADY_UP"
.LASF69:
	.string	"OI_STATUS_MTU_EXCEEDED"
.LASF438:
	.string	"OI_PAN_DEVICE_CONNECTED"
.LASF287:
	.string	"OI_DEVMGR_INQUIRY_IN_PROGRESS"
.LASF210:
	.string	"OI_SDP_CORRUPT_DATA_ELEMENT"
.LASF495:
	.string	"nrof_subbands"
.LASF540:
	.string	"global_bs"
.LASF305:
	.string	"OI_DEVMGR_NO_SUPPORT"
.LASF367:
	.string	"OI_OBEX_VALUE_NOT_ACCEPTABLE"
.LASF428:
	.string	"OI_NETIFC_INITIALIZATION_FAILED"
.LASF419:
	.string	"OI_BNEP_FILTER_MULTI_BASE"
.LASF393:
	.string	"OI_HANDSFREE_COMMAND_IN_PROGRESS"
.LASF116:
	.string	"OI_L2CAP_INVALID_MTU"
.LASF559:
	.string	"internal_DecoderReset"
.LASF277:
	.string	"OI_HCITRANS_SCO_DATA_ERROR"
.LASF54:
	.string	"OI_STATUS_NOT_CONFIGURED"
.LASF520:
	.string	"maxChannels"
.LASF407:
	.string	"OI_BNEP_CONNECTION_EXISTS"
.LASF109:
	.string	"OI_L2CAP_CONFIG_FAIL_INVALID_PARAMETERS"
.LASF100:
	.string	"OI_L2CAP_GET_INFO_TIMEOUT"
.LASF225:
	.string	"OI_SDP_SHORT_PDU"
.LASF229:
	.string	"OI_SDP_INVALID_RESPONSE_SYNTAX"
.LASF188:
	.string	"OI_HCIERR_QOS_UNACCEPTABLE_PARAMETER"
.LASF172:
	.string	"OI_HCIERR_SCO_INTERVAL_REJECTED"
.LASF421:
	.string	"OI_BNEP_FILTER_MULTI_FAILED_INVALID_ADDRESS"
.LASF145:
	.string	"OI_HCIERR_UNKNOWN_HCI_COMMAND"
.LASF176:
	.string	"OI_HCIERR_UNSUPPORTED_LMP_PARAMETERS"
.LASF170:
	.string	"OI_HCIERR_UNSUPPORTED_REMOTE_FEATURE"
.LASF74:
	.string	"OI_STATUS_PSM_ALREADY_REGISTERED"
.LASF207:
	.string	"OI_SDP_INVALID_CONTINUATION_STATE"
.LASF9:
	.string	"UINT8"
.LASF108:
	.string	"OI_L2CAP_CONFIG_BASE"
.LASF350:
	.string	"OI_OBEX_LENGTH_REQUIRED"
.LASF278:
	.string	"OI_HCITRANS_EVENT_DATA_ERROR"
.LASF237:
	.string	"OI_SDP_NO_ATTRIBUTE_LIST_TO_REMOVE"
.LASF260:
	.string	"OI_RFCOMM_QUERY_IN_PROGRESS"
.LASF43:
	.string	"OI_STATUS_PENDING"
.LASF385:
	.string	"OI_OBEX_SERVER_FORCED_DISCONNECT"
.LASF39:
	.string	"OI_TIMEOUT"
.LASF440:
	.string	"OI_CODEC_SBC_NOT_ENOUGH_HEADER_DATA"
.LASF439:
	.string	"OI_CODEC_SBC_NO_SYNCWORD"
.LASF418:
	.string	"OI_BNEP_FILTER_NET_FAILED_SECURITY"
.LASF272:
	.string	"OI_HCITRANS_IO_ERROR"
.LASF502:
	.string	"enhanced"
.LASF92:
	.string	"OI_L2CAP_DISCONNECT_REMOTE_REQUEST"
.LASF140:
	.string	"OI_HCI_PASSTHROUGH_ALREADY_SET"
.LASF433:
	.string	"OI_PAN_ROLE_NOT_ALLOWED"
.LASF165:
	.string	"OI_HCIERR_OTHER_END_POWERING_OFF"
.LASF466:
	.string	"OI_AVDTP_OUT_OF_RESOURCES"
.LASF363:
	.string	"OI_OBEX_BAD_REQUEST"
.LASF49:
	.string	"OI_STATUS_NOT_CONNECTED"
.LASF506:
	.string	"uint8"
.LASF264:
	.string	"OI_RFCOMM_OUT_OF_SERVER_CHANNELS"
.LASF174:
	.string	"OI_HCIERR_INVALID_LMP_PARMS"
.LASF406:
	.string	"OI_BNEP_INVALID_FILTER"
.LASF32:
	.string	"OI_STATUS_INTERNAL_ERROR"
.LASF143:
	.string	"OI_HCIERR_HCIIFC_INIT_FAILURE"
.LASF343:
	.string	"OI_OBEX_CONTINUE"
.LASF360:
	.string	"OI_OBEX_UNSUPPORTED_VERSION"
.LASF79:
	.string	"OI_STATUS_INVALID_STATE"
.LASF344:
	.string	"OI_OBEX_COMMAND_ERROR"
.LASF234:
	.string	"OI_SDP_INVALID_CONNECTION_ID"
.LASF2:
	.string	"short int"
.LASF244:
	.string	"OI_RFCOMM_INVALID_PARITY"
.LASF34:
	.string	"OI_ILLEGAL_REENTRANT_CALL"
.LASF497:
	.string	"mode"
.LASF313:
	.string	"OI_DEVMGR_INVALID_SCO_HANDLE"
.LASF430:
	.string	"OI_NETIFC_INTERFACE_NOT_UP"
.LASF515:
	.string	"filterBufferOffset"
.LASF103:
	.string	"OI_L2CAP_CONNECT_BASE"
.LASF129:
	.string	"OI_HCI_UNEXPECTED_EVENT"
.LASF534:
	.string	"status"
.LASF488:
	.string	"OI_STATUS_NONE"
.LASF46:
	.string	"OI_STATUS_ALREADY_REGISTERED"
.LASF98:
	.string	"OI_L2CAP_DISCONNECT_TIMEOUT"
.LASF83:
	.string	"OI_STATUS_INVALID_HANDLE"
.LASF453:
	.string	"OI_AT_ERROR"
.LASF37:
	.string	"OI_STATUS_NO_SCO_SUPPORT"
.LASF82:
	.string	"OI_STATUS_SEND_COMPLETE"
.LASF38:
	.string	"OI_STATUS_OUT_OF_STATIC_MEMORY"
.LASF345:
	.string	"OI_OBEX_CONNECTION_TIMEOUT"
.LASF214:
	.string	"OI_SDP_DEVICE_DOES_NOT_SUPPORT_SDP"
.LASF184:
	.string	"OI_HCIERR_INSTANT_PASSED"
.LASF463:
	.string	"OI_BLST_TX_NOT_READY"
.LASF150:
	.string	"OI_HCIERR_KEY_MISSING"
.LASF131:
	.string	"OI_HCI_EXPECTED_EVENT_TIMOUT"
.LASF276:
	.string	"OI_HCITRANS_ACL_DATA_ERROR"
.LASF544:
	.string	"dequant"
.LASF141:
	.string	"OI_HCI_RESET_FAILURE"
.LASF97:
	.string	"OI_L2CAP_CONNECT_TIMEOUT"
.LASF401:
	.string	"OI_BNEP_SETUP_TIMEOUT"
.LASF265:
	.string	"OI_DISPATCH_INVALID_CB_HANDLE"
.LASF342:
	.string	"OI_TCS_NO_CALL_IN_PROGRESS"
.LASF52:
	.string	"OI_STATUS_MBUF_UNDERFLOW"
.LASF423:
	.string	"OI_BNEP_FILTER_MULTI_FAILED_SECURITY"
.LASF114:
	.string	"OI_L2CAP_MTU_EXCEEDED"
.LASF300:
	.string	"OI_DEVMGR_PARAM_IO_ACTIVE"
.LASF268:
	.string	"OI_TEST_FAIL"
.LASF42:
	.string	"OI_STRING_FORMAT_ERROR"
.LASF15:
	.string	"OI_BOOL"
.LASF133:
	.string	"OI_HCI_INVALID_OPCODE_ERROR"
.LASF41:
	.string	"OI_FAIL"
.LASF533:
	.string	"decoderDataBytes"
.LASF366:
	.string	"OI_OBEX_ACCESS_DENIED"
.LASF332:
	.string	"OI_SECMGR_ILLEGAL_WRITE_SSP_MODE"
.LASF494:
	.string	"blocks"
.LASF297:
	.string	"OI_DEVMGR_ENUM_DATABASE_FULL"
.LASF282:
	.string	"OI_DEVMGR_NO_CONNECTION"
.LASF76:
	.string	"OI_STATUS_CID_NOT_FOUND"
.LASF235:
	.string	"OI_SDP_CANNOT_SET_ATTRIBUTE"
.LASF542:
	.string	"sf_by4"
.LASF213:
	.string	"OI_SDP_ATTRIBUTES_OUT_OF_ORDER"
.LASF216:
	.string	"OI_SDP_REQUEST_PARAMS_TOO_LONG"
.LASF303:
	.string	"OI_DEVMGR_SCO_NOT_REGISTERED"
.LASF358:
	.string	"OI_OBEX_TOO_MANY_HEADER_BYTES"
.LASF48:
	.string	"OI_STATUS_NOT_REGISTERED"
.LASF204:
	.string	"OI_SDP_INVALID_SERVICE_RECORD_HANDLE"
.LASF284:
	.string	"OI_DEVMGR_PENDING_CONNECT_LIST_FULL"
.LASF306:
	.string	"OI_DEVMGR_WRITE_POLICY_FAILED"
.LASF181:
	.string	"OI_HCIERR_ENCRYPTION_MODE_NOT_ACCEPTABLE"
.LASF399:
	.string	"OI_HEADSET_COMMAND_IN_PROGRESS"
.LASF462:
	.string	"OI_BLST_ACKNOWLDGE_TIMEOUT"
.LASF328:
	.string	"OI_SECMGR_AUTHORIZATION_FAILED"
.LASF259:
	.string	"OI_RFCOMM_NO_CHANNEL_NUMBER"
.LASF31:
	.string	"OI_STATUS_NO_RESOURCES"
.LASF3:
	.string	"short unsigned int"
.LASF240:
	.string	"OI_RFCOMM_WRITE_IN_PROGRESS"
.LASF304:
	.string	"OI_DEVMGR_SCO_WITHOUT_ACL"
.LASF311:
	.string	"OI_DEVMGR_ROLE_POLICY_CONFLICT"
.LASF359:
	.string	"OI_OBEX_UNKNOWN_COMMAND"
.LASF323:
	.string	"OI_SECMGR_DISCONNECTED_FAIL"
.LASF548:
	.string	"block_values"
.LASF356:
	.string	"OI_OBEX_REQUIRED_HEADER_NOT_FOUND"
.LASF489:
	.string	"OI_STATUS"
.LASF375:
	.string	"OI_OBEX_INVALID_AUTH_DIGEST"
.LASF464:
	.string	"OI_BLST_TX_BUSY"
.LASF371:
	.string	"OI_OBEX_PASSWORD_TOO_LONG"
.LASF280:
	.string	"OI_HCITRANS_LINK_NOT_ACTIVE"
.LASF483:
	.string	"OI_MAX_BM3_STATUS_VAL"
.LASF555:
	.string	"OI_SBC_Dequant"
.LASF492:
	.string	"freqIndex"
.LASF91:
	.string	"OI_L2CAP_DISCONNECT_LOWER_LAYER"
.LASF167:
	.string	"OI_HCIERR_REPEATED_ATTEMPTS"
.LASF117:
	.string	"OI_L2CAP_INVALID_FLUSHTO"
.LASF381:
	.string	"OI_OBEX_PARTIAL_CONTENT"
.LASF331:
	.string	"OI_SECMGR_NOT_REGISTERED"
.LASF337:
	.string	"OI_SECMGR_ORPHAN_EVENT"
.LASF68:
	.string	"OI_STATUS_STILL_CONNECTED"
.LASF369:
	.string	"OI_OBEX_NO_SUCH_FOLDER"
.LASF456:
	.string	"OI_AT_NO_ANSWER"
.LASF288:
	.string	"OI_DEVMGR_PERIODIC_INQUIRY_ACTIVE"
.LASF508:
	.string	"codecInfo"
.LASF477:
	.string	"OI_AVRCP_INVALID_RESPONSE"
.LASF238:
	.string	"OI_SDP_ATTRIBUTE_LIST_ALREADY_ADDED"
.LASF208:
	.string	"OI_SDP_INSUFFICIENT_RESOURCES"
.LASF27:
	.string	"OI_OK"
.LASF293:
	.string	"OI_DEVMGR_EVENT_CALLBACK_NOT_FOUND"
.LASF432:
	.string	"OI_PAN_ROLE_ALREADY_REGISTERED"
.LASF180:
	.string	"OI_HCIERR_LMP_PDU_NOT_ALLOWED"
.LASF482:
	.string	"OI_AVRCP_RESPONSE_INTERNAL_ERROR"
.LASF354:
	.string	"OI_OBEX_PUT_RESPONSE_ERROR"
.LASF242:
	.string	"OI_RFCOMM_INVALID_DATABIT"
.LASF146:
	.string	"OI_HCIERR_NO_CONNECTION"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
