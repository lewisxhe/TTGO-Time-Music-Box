	.file	"framing.c"
	.text
.Ltext0:
	.section	.text.crc_iterate_top4,"ax",@progbits
	.literal_position
	.literal .LC0, crc8_narrow
	.align	4
	.global	crc_iterate_top4
	.type	crc_iterate_top4, @function
crc_iterate_top4:
.LFB5:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/decoder/srce/framing.c"
	.loc 1 146 0
.LVL0:
	entry	sp, 32
.LCFI0:
	extui	a2, a2, 0, 8
	extui	a3, a3, 0, 8
	.loc 1 147 0
	slli	a9, a2, 4
	xor	a3, a2, a3
.LVL1:
	srli	a3, a3, 4
	l32r	a8, .LC0
	add.n	a8, a8, a3
	l8ui	a2, a8, 0
.LVL2:
	xor	a2, a9, a2
	.loc 1 148 0
	extui	a2, a2, 0, 8
	retw.n
.LFE5:
	.size	crc_iterate_top4, .-crc_iterate_top4
	.section	.text.crc_iterate,"ax",@progbits
	.literal_position
	.literal .LC1, crc8_narrow
	.align	4
	.global	crc_iterate
	.type	crc_iterate, @function
crc_iterate:
.LFB6:
	.loc 1 152 0
.LVL3:
	entry	sp, 32
.LCFI1:
	extui	a2, a2, 0, 8
	extui	a3, a3, 0, 8
	.loc 1 153 0
	slli	a8, a2, 4
	xor	a2, a2, a3
.LVL4:
	srli	a2, a2, 4
	l32r	a10, .LC1
	add.n	a2, a10, a2
	l8ui	a9, a2, 0
	xor	a9, a8, a9
	extui	a8, a9, 0, 8
.LVL5:
	.loc 1 154 0
	slli	a11, a8, 4
	srli	a9, a8, 4
.LVL6:
	xor	a8, a3, a9
.LVL7:
	extui	a8, a8, 0, 4
	add.n	a8, a10, a8
	l8ui	a2, a8, 0
.LVL8:
	xor	a2, a11, a2
.LVL9:
	.loc 1 157 0
	extui	a2, a2, 0, 8
.LVL10:
	retw.n
.LFE6:
	.size	crc_iterate, .-crc_iterate
	.section	.text.OI_SBC_CalculateChecksum,"ax",@progbits
	.align	4
	.global	OI_SBC_CalculateChecksum
	.type	OI_SBC_CalculateChecksum, @function
OI_SBC_CalculateChecksum:
.LFB7:
	.loc 1 171 0
.LVL11:
	entry	sp, 32
.LCFI2:
.LVL12:
	.loc 1 179 0
	l8ui	a6, a2, 5
	l8ui	a4, a2, 8
	mull	a4, a6, a4
	srli	a4, a4, 1
	addi.n	a5, a4, 4
.LVL13:
	.loc 1 181 0
	l8ui	a2, a2, 7
.LVL14:
	bnei	a2, 3, .L4
	.loc 1 181 0 is_stmt 0 discriminator 1
	bnei	a6, 8, .L4
	.loc 1 182 0 is_stmt 1
	addi.n	a5, a4, 5
.LVL15:
.L4:
	.loc 1 173 0
	movi.n	a10, 0xf
	.loc 1 185 0
	movi.n	a4, 1
	j	.L5
.LVL16:
.L7:
	.loc 1 186 0
	beqi	a4, 3, .L6
	.loc 1 187 0
	add.n	a8, a3, a4
	l8ui	a11, a8, 0
	call8	crc_iterate
.LVL17:
.L6:
	.loc 1 185 0 discriminator 2
	addi.n	a4, a4, 1
.LVL18:
.L5:
	.loc 1 185 0 is_stmt 0 discriminator 1
	bltu	a4, a5, .L7
	.loc 1 191 0 is_stmt 1
	bnei	a2, 3, .L8
	.loc 1 191 0 is_stmt 0 discriminator 1
	bnei	a6, 4, .L8
	.loc 1 192 0 is_stmt 1
	add.n	a4, a3, a4
.LVL19:
	l8ui	a11, a4, 0
	call8	crc_iterate_top4
.LVL20:
.L8:
	.loc 1 196 0
	mov.n	a2, a10
	retw.n
.LFE7:
	.size	OI_SBC_CalculateChecksum, .-OI_SBC_CalculateChecksum
	.section	.text.OI_SBC_ExpandFrameFields,"ax",@progbits
	.literal_position
	.literal .LC2, block_values
	.literal .LC3, band_values
	.literal .LC4, freq_values
	.literal .LC5, channel_values
	.align	4
	.global	OI_SBC_ExpandFrameFields
	.type	OI_SBC_ExpandFrameFields, @function
OI_SBC_ExpandFrameFields:
.LFB8:
	.loc 1 199 0
.LVL21:
	entry	sp, 32
.LCFI3:
	.loc 1 200 0
	l8ui	a8, a2, 4
	l32r	a9, .LC2
	add.n	a8, a9, a8
	l8ui	a8, a8, 0
	s8i	a8, a2, 3
	.loc 1 201 0
	l8ui	a8, a2, 6
	l32r	a9, .LC3
	add.n	a8, a9, a8
	l8ui	a8, a8, 0
	s8i	a8, a2, 5
	.loc 1 203 0
	l8ui	a8, a2, 2
	l32r	a9, .LC4
	addx2	a8, a8, a9
	l16ui	a8, a8, 0
	s16i	a8, a2, 0
	.loc 1 204 0
	l8ui	a8, a2, 7
	l32r	a9, .LC5
	add.n	a8, a9, a8
	l8ui	a8, a8, 0
	s8i	a8, a2, 8
	retw.n
.LFE8:
	.size	OI_SBC_ExpandFrameFields, .-OI_SBC_ExpandFrameFields
	.section	.text.shift_buffer,"ax",@progbits
	.align	4
	.global	shift_buffer
	.type	shift_buffer, @function
shift_buffer:
.LFB9:
	.loc 1 228 0
.LVL22:
	entry	sp, 32
.LCFI4:
	.loc 1 238 0
	srli	a8, a4, 3
.LVL23:
	.loc 1 241 0
	slli	a4, a4, 1
.LVL24:
	add.n	a2, a2, a4
.LVL25:
	.loc 1 242 0
	add.n	a3, a3, a4
.LVL26:
.L11:
.LBB2:
	.loc 1 245 0 discriminator 1
	addi	a4, a3, -4
.LVL27:
	l32i.n	a12, a4, 0
.LVL28:
	addi	a4, a3, -8
.LVL29:
	l32i.n	a11, a4, 0
.LVL30:
	addi	a4, a3, -12
	l32i.n	a10, a4, 0
.LVL31:
	addi	a3, a3, -16
.LVL32:
	l32i.n	a4, a3, 0
.LVL33:
	addi	a9, a2, -4
.LVL34:
	s32i.n	a12, a9, 0
.LVL35:
	addi	a9, a2, -8
.LVL36:
	s32i.n	a11, a9, 0
.LVL37:
	addi	a9, a2, -12
.LVL38:
	s32i.n	a10, a9, 0
	addi	a2, a2, -16
.LVL39:
	s32i.n	a4, a2, 0
.LBE2:
	.loc 1 246 0 discriminator 1
	addi.n	a8, a8, -1
.LVL40:
	bnez.n	a8, .L11
	.loc 1 248 0
	retw.n
.LFE9:
	.size	shift_buffer, .-shift_buffer
	.global	dequant_long_unscaled
	.section	.rodata.dequant_long_unscaled,"a",@progbits
	.align	4
	.type	dequant_long_unscaled, @object
	.size	dequant_long_unscaled, 68
dequant_long_unscaled:
	.word	0
	.word	0
	.word	715827883
	.word	306783378
	.word	143165577
	.word	69273666
	.word	34087042
	.word	16909320
	.word	8421505
	.word	4202512
	.word	2099202
	.word	1049088
	.word	524416
	.word	262176
	.word	131080
	.word	65538
	.word	32769
	.global	dequant_long_scaled
	.section	.rodata.dequant_long_scaled,"a",@progbits
	.align	4
	.type	dequant_long_scaled, @object
	.size	dequant_long_scaled, 68
dequant_long_scaled:
	.word	0
	.word	0
	.word	518643990
	.word	222275996
	.word	103728798
	.word	50191354
	.word	24697333
	.word	12251433
	.word	6101694
	.word	3044877
	.word	1520950
	.word	760104
	.word	379959
	.word	189956
	.word	94972
	.word	47485
	.word	23742
	.global	crc8_narrow
	.section	.rodata.crc8_narrow,"a",@progbits
	.align	4
	.type	crc8_narrow, @object
	.size	crc8_narrow, 16
crc8_narrow:
	.byte	0
	.byte	29
	.byte	58
	.byte	39
	.byte	116
	.byte	105
	.byte	78
	.byte	83
	.byte	-24
	.byte	-11
	.byte	-46
	.byte	-49
	.byte	-100
	.byte	-127
	.byte	-90
	.byte	-69
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
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI4-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/decoder/include/oi_cpu_dep.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/decoder/include/oi_codec_sbc.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/decoder/include/oi_codec_sbc_private.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x4ae
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0xc
	.4byte	.LASF60
	.4byte	.LASF61
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
	.2byte	0x136
	.4byte	0x3e
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x5
	.2byte	0x137
	.4byte	0xa3
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x5
	.2byte	0x138
	.4byte	0x37
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x5
	.2byte	0x139
	.4byte	0x45
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x5
	.2byte	0x13a
	.4byte	0xaa
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x6
	.byte	0x7b
	.4byte	0xc7
	.uleb128 0x8
	.byte	0x10
	.byte	0x6
	.byte	0x7f
	.4byte	0x1cb
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x6
	.byte	0x80
	.4byte	0xeb
	.byte	0
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x6
	.byte	0x81
	.4byte	0xdf
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x6
	.byte	0x83
	.4byte	0xdf
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x6
	.byte	0x84
	.4byte	0xdf
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x6
	.byte	0x87
	.4byte	0xdf
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x6
	.byte	0x88
	.4byte	0xdf
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x6
	.byte	0x8a
	.4byte	0xdf
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x6
	.byte	0x8b
	.4byte	0xdf
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x6
	.byte	0x8d
	.4byte	0xdf
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x6
	.byte	0x8e
	.4byte	0xdf
	.byte	0xa
	.uleb128 0xa
	.string	"crc"
	.byte	0x6
	.byte	0x8f
	.4byte	0xdf
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x6
	.byte	0x90
	.4byte	0xdf
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x6
	.byte	0x91
	.4byte	0xdf
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x6
	.byte	0x92
	.4byte	0xdf
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x6
	.byte	0x96
	.4byte	0xdf
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x6
	.byte	0x97
	.4byte	0x10e
	.uleb128 0xb
	.byte	0x4
	.4byte	0xd3
	.uleb128 0xb
	.byte	0x4
	.4byte	0x103
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x1
	.byte	0x91
	.4byte	0xdf
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x21a
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x1
	.byte	0x91
	.4byte	0xdf
	.4byte	.LLST0
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x1
	.byte	0x91
	.4byte	0xdf
	.4byte	.LLST1
	.byte	0
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x1
	.byte	0x97
	.4byte	0xdf
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x250
	.uleb128 0xe
	.string	"crc"
	.byte	0x1
	.byte	0x97
	.4byte	0xdf
	.4byte	.LLST2
	.uleb128 0xf
	.4byte	.LASF39
	.byte	0x1
	.byte	0x97
	.4byte	0xdf
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x1
	.byte	0xaa
	.4byte	0xdf
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c1
	.uleb128 0xd
	.4byte	.LASF43
	.byte	0x1
	.byte	0xaa
	.4byte	0x2c1
	.4byte	.LLST3
	.uleb128 0xf
	.4byte	.LASF44
	.byte	0x1
	.byte	0xaa
	.4byte	0x2c7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.byte	0xac
	.4byte	0xb1
	.4byte	.LLST4
	.uleb128 0x10
	.string	"crc"
	.byte	0x1
	.byte	0xad
	.4byte	0xdf
	.4byte	.LLST5
	.uleb128 0x11
	.4byte	.LASF45
	.byte	0x1
	.byte	0xb3
	.4byte	0xb1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x12
	.4byte	.LVL17
	.4byte	0x21a
	.uleb128 0x12
	.4byte	.LVL20
	.4byte	0x1e2
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1cb
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2cd
	.uleb128 0x13
	.4byte	0xbc
	.uleb128 0x14
	.4byte	.LASF46
	.byte	0x1
	.byte	0xc6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2f5
	.uleb128 0xf
	.4byte	.LASF43
	.byte	0x1
	.byte	0xc6
	.4byte	0x2c1
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x14
	.4byte	.LASF47
	.byte	0x1
	.byte	0xe3
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x397
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x1
	.byte	0xe3
	.4byte	0x1dc
	.4byte	.LLST6
	.uleb128 0xe
	.string	"src"
	.byte	0x1
	.byte	0xe3
	.4byte	0x1dc
	.4byte	.LLST7
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0x1
	.byte	0xe3
	.4byte	0xb1
	.4byte	.LLST8
	.uleb128 0x15
	.string	"n"
	.byte	0x1
	.byte	0xeb
	.4byte	0xb1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x10
	.string	"d"
	.byte	0x1
	.byte	0xec
	.4byte	0x1d6
	.4byte	.LLST9
	.uleb128 0x10
	.string	"s"
	.byte	0x1
	.byte	0xed
	.4byte	0x1d6
	.4byte	.LLST10
	.uleb128 0x16
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x15
	.string	"_a"
	.byte	0x1
	.byte	0xf5
	.4byte	0xd3
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x15
	.string	"_b"
	.byte	0x1
	.byte	0xf5
	.4byte	0xd3
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x15
	.string	"_c"
	.byte	0x1
	.byte	0xf5
	.4byte	0xd3
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x15
	.string	"_d"
	.byte	0x1
	.byte	0xf5
	.4byte	0xd3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF50
	.byte	0x4
	.2byte	0x2cc
	.4byte	0x3aa
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x13
	.4byte	0x8c
	.uleb128 0x17
	.4byte	.LASF51
	.byte	0x4
	.2byte	0x2cd
	.4byte	0x3c2
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0x8c
	.uleb128 0x5
	.4byte	0xeb
	.4byte	0x3d7
	.uleb128 0x6
	.4byte	0x85
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.4byte	.LASF52
	.byte	0x7
	.byte	0x56
	.4byte	0x3e8
	.uleb128 0x5
	.byte	0x3
	.4byte	freq_values
	.uleb128 0x13
	.4byte	0x3c7
	.uleb128 0x5
	.4byte	0xdf
	.4byte	0x3fd
	.uleb128 0x6
	.4byte	0x85
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.4byte	.LASF53
	.byte	0x7
	.byte	0x57
	.4byte	0x40e
	.uleb128 0x5
	.byte	0x3
	.4byte	block_values
	.uleb128 0x13
	.4byte	0x3ed
	.uleb128 0x11
	.4byte	.LASF54
	.byte	0x7
	.byte	0x58
	.4byte	0x424
	.uleb128 0x5
	.byte	0x3
	.4byte	channel_values
	.uleb128 0x13
	.4byte	0x3ed
	.uleb128 0x5
	.4byte	0xdf
	.4byte	0x439
	.uleb128 0x6
	.4byte	0x85
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.4byte	.LASF55
	.byte	0x7
	.byte	0x59
	.4byte	0x44a
	.uleb128 0x5
	.byte	0x3
	.4byte	band_values
	.uleb128 0x13
	.4byte	0x429
	.uleb128 0x5
	.4byte	0xbc
	.4byte	0x45f
	.uleb128 0x6
	.4byte	0x85
	.byte	0xf
	.byte	0
	.uleb128 0x18
	.4byte	.LASF56
	.byte	0x1
	.byte	0x3b
	.4byte	0x470
	.uleb128 0x5
	.byte	0x3
	.4byte	crc8_narrow
	.uleb128 0x13
	.4byte	0x44f
	.uleb128 0x5
	.4byte	0xf7
	.4byte	0x485
	.uleb128 0x6
	.4byte	0x85
	.byte	0x10
	.byte	0
	.uleb128 0x18
	.4byte	.LASF57
	.byte	0x1
	.byte	0x43
	.4byte	0x496
	.uleb128 0x5
	.byte	0x3
	.4byte	dequant_long_scaled
	.uleb128 0x13
	.4byte	0x475
	.uleb128 0x18
	.4byte	.LASF58
	.byte	0x1
	.byte	0x58
	.4byte	0x4ac
	.uleb128 0x5
	.byte	0x3
	.4byte	dequant_long_unscaled
	.uleb128 0x13
	.4byte	0x475
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
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
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
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
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x11
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x34
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1d
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x34
	.byte	0x24
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x73
	.sleb128 0
	.byte	0x27
	.byte	0x34
	.byte	0x25
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LFE6
	.2byte	0xb
	.byte	0x78
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x7b
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL11
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
.LLST4:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL12
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LVL20-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL22
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL26
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL24
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL25
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x3
	.byte	0x72
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x3
	.byte	0x72
	.sleb128 -8
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x3
	.byte	0x72
	.sleb128 -12
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL39
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x3
	.byte	0x73
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x3
	.byte	0x74
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x3
	.byte	0x73
	.sleb128 -8
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x3
	.byte	0x73
	.sleb128 -12
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x53
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
.LASF22:
	.string	"SBC_BUFFER_T"
.LASF48:
	.string	"dest"
.LASF55:
	.string	"band_values"
.LASF2:
	.string	"short int"
.LASF11:
	.string	"sizetype"
.LASF19:
	.string	"OI_UINT8"
.LASF52:
	.string	"freq_values"
.LASF29:
	.string	"mode"
.LASF54:
	.string	"channel_values"
.LASF36:
	.string	"cachedInfo"
.LASF39:
	.string	"next"
.LASF34:
	.string	"enhanced"
.LASF38:
	.string	"oldcrc"
.LASF8:
	.string	"uint8_t"
.LASF53:
	.string	"block_values"
.LASF49:
	.string	"wordCount"
.LASF40:
	.string	"crc_iterate_top4"
.LASF27:
	.string	"nrof_subbands"
.LASF5:
	.string	"long long int"
.LASF37:
	.string	"OI_CODEC_SBC_FRAME_INFO"
.LASF41:
	.string	"crc_iterate"
.LASF13:
	.string	"long int"
.LASF32:
	.string	"bitpool"
.LASF9:
	.string	"UINT8"
.LASF7:
	.string	"__uint8_t"
.LASF43:
	.string	"frame"
.LASF21:
	.string	"OI_UINT32"
.LASF56:
	.string	"crc8_narrow"
.LASF28:
	.string	"subbands"
.LASF24:
	.string	"freqIndex"
.LASF1:
	.string	"unsigned char"
.LASF61:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF30:
	.string	"nrof_channels"
.LASF0:
	.string	"signed char"
.LASF6:
	.string	"long long unsigned int"
.LASF4:
	.string	"unsigned int"
.LASF51:
	.string	"bd_addr_null"
.LASF31:
	.string	"alloc"
.LASF3:
	.string	"short unsigned int"
.LASF12:
	.string	"char"
.LASF46:
	.string	"OI_SBC_ExpandFrameFields"
.LASF10:
	.string	"_Bool"
.LASF18:
	.string	"OI_INT32"
.LASF57:
	.string	"dequant_long_scaled"
.LASF16:
	.string	"OI_BYTE"
.LASF44:
	.string	"data"
.LASF60:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/decoder/srce/framing.c"
.LASF14:
	.string	"long unsigned int"
.LASF35:
	.string	"min_bitpool"
.LASF33:
	.string	"join"
.LASF42:
	.string	"OI_SBC_CalculateChecksum"
.LASF17:
	.string	"OI_INT16"
.LASF45:
	.string	"count"
.LASF47:
	.string	"shift_buffer"
.LASF26:
	.string	"blocks"
.LASF23:
	.string	"frequency"
.LASF50:
	.string	"bd_addr_any"
.LASF20:
	.string	"OI_UINT16"
.LASF58:
	.string	"dequant_long_unscaled"
.LASF25:
	.string	"nrof_blocks"
.LASF15:
	.string	"OI_UINT"
.LASF59:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
