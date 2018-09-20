	.file	"bitalloc-sbc.c"
	.text
.Ltext0:
	.section	.text.stereoBitAllocation,"ax",@progbits
	.align	4
	.type	stereoBitAllocation, @function
stereoBitAllocation:
.LFB6:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/decoder/srce/bitalloc-sbc.c"
	.loc 1 52 0
.LVL0:
	entry	sp, 64
.LCFI0:
	.loc 1 53 0
	l8ui	a5, a2, 9
.LVL1:
	.loc 1 60 0
	movi.n	a3, 0
	s32i.n	a3, sp, 16
	.loc 1 62 0
	addi	a13, sp, 16
	mov.n	a12, a3
	mov.n	a11, sp
	mov.n	a10, a2
	call8	computeBitneed
.LVL2:
	mov.n	a4, a10
.LVL3:
	.loc 1 63 0
	addi	a13, sp, 16
	movi.n	a12, 1
	add.n	a11, sp, a5
	mov.n	a10, a2
	call8	computeBitneed
.LVL4:
.LBB2:
	.loc 1 67 0
	addi	a14, sp, 20
	add.n	a13, a4, a10
.LVL5:
	slli	a12, a5, 1
	mov.n	a11, sp
	l8ui	a10, a2, 14
	call8	adjustToFitBitpool
.LVL6:
	mov.n	a6, a10
.LVL7:
	.loc 1 69 0
	l32i.n	a10, sp, 20
.LVL8:
.LBE2:
	.loc 1 72 0
	mov.n	a4, a5
	.loc 1 73 0
	j	.L2
.LVL9:
.L3:
	.loc 1 74 0
	add.n	a8, sp, a3
	l8ui	a11, a8, 0
	addi	a8, a3, 48
	add.n	a8, a2, a8
	mov.n	a12, a10
	add.n	a11, a11, a6
	addi.n	a10, a8, 12
.LVL10:
	call8	allocAdjustedBits
.LVL11:
	.loc 1 75 0
	addi.n	a3, a3, 1
.LVL12:
	.loc 1 76 0
	add.n	a8, sp, a4
	l8ui	a11, a8, 0
	addi	a8, a4, 48
	add.n	a8, a2, a8
	mov.n	a12, a10
	add.n	a11, a11, a6
	addi.n	a10, a8, 12
.LVL13:
	call8	allocAdjustedBits
.LVL14:
	.loc 1 77 0
	addi.n	a4, a4, 1
.LVL15:
.L2:
	.loc 1 73 0
	bltu	a3, a5, .L3
	movi.n	a4, 0
.LVL16:
	j	.L4
.LVL17:
.L6:
	.loc 1 82 0
	addi	a3, a4, 48
	add.n	a3, a2, a3
	mov.n	a11, a10
	addi.n	a10, a3, 12
.LVL18:
	call8	allocExcessBits
.LVL19:
	.loc 1 83 0
	addi.n	a4, a4, 1
.LVL20:
	.loc 1 84 0
	beqz.n	a10, .L1
	.loc 1 87 0
	addi	a3, a5, 48
	add.n	a3, a2, a3
	mov.n	a11, a10
	addi.n	a10, a3, 12
.LVL21:
	call8	allocExcessBits
.LVL22:
	.loc 1 88 0
	addi.n	a5, a5, 1
.LVL23:
.L4:
	.loc 1 81 0
	bnez.n	a10, .L6
.L1:
	retw.n
.LFE6:
	.size	stereoBitAllocation, .-stereoBitAllocation
	.section	.text.dualBitAllocation,"ax",@progbits
	.align	4
	.type	dualBitAllocation, @function
dualBitAllocation:
.LFB5:
	.loc 1 36 0
.LVL24:
	entry	sp, 64
.LCFI1:
	.loc 1 39 0
	movi.n	a3, 0
	s32i.n	a3, sp, 0
	.loc 1 40 0
	s32i.n	a3, sp, 4
	.loc 1 44 0
	mov.n	a13, sp
	mov.n	a12, a3
	addi.n	a11, sp, 8
	mov.n	a10, a2
	call8	computeBitneed
.LVL25:
	mov.n	a5, a10
.LVL26:
	.loc 1 45 0
	addi.n	a13, sp, 4
	movi.n	a12, 1
	addi	a11, sp, 16
	mov.n	a10, a2
	call8	computeBitneed
.LVL27:
	mov.n	a4, a10
.LVL28:
	.loc 1 47 0
	mov.n	a13, a5
	mov.n	a12, a3
	addi.n	a11, sp, 8
	mov.n	a10, a2
	call8	oneChannelBitAllocation
.LVL29:
	.loc 1 48 0
	mov.n	a13, a4
	movi.n	a12, 1
	addi	a11, sp, 16
	mov.n	a10, a2
	call8	oneChannelBitAllocation
.LVL30:
	retw.n
.LFE5:
	.size	dualBitAllocation, .-dualBitAllocation
	.section	.text.OI_SBC_ComputeBitAllocation,"ax",@progbits
	.literal_position
	.literal .LC0, balloc
	.align	4
	.global	OI_SBC_ComputeBitAllocation
	.type	OI_SBC_ComputeBitAllocation, @function
OI_SBC_ComputeBitAllocation:
.LFB7:
	.loc 1 102 0
.LVL31:
	entry	sp, 32
.LCFI2:
	mov.n	a10, a2
	.loc 1 110 0
	l8ui	a8, a2, 11
	l32r	a9, .LC0
	addx4	a8, a8, a9
	l32i.n	a8, a8, 0
	callx8	a8
.LVL32:
	retw.n
.LFE7:
	.size	OI_SBC_ComputeBitAllocation, .-OI_SBC_ComputeBitAllocation
	.section	.text.OI_CODEC_SBC_CalculateBitrate,"ax",@progbits
	.align	4
	.global	OI_CODEC_SBC_CalculateBitrate
	.type	OI_CODEC_SBC_CalculateBitrate, @function
OI_CODEC_SBC_CalculateBitrate:
.LFB8:
	.loc 1 114 0
.LVL33:
	entry	sp, 32
.LCFI3:
	.loc 1 115 0
	mov.n	a10, a2
	call8	internal_CalculateBitrate
.LVL34:
	.loc 1 116 0
	mov.n	a2, a10
.LVL35:
	retw.n
.LFE8:
	.size	OI_CODEC_SBC_CalculateBitrate, .-OI_CODEC_SBC_CalculateBitrate
	.section	.text.OI_CODEC_SBC_GetMaxBitneed,"ax",@progbits
	.align	4
	.global	OI_CODEC_SBC_GetMaxBitneed
	.type	OI_CODEC_SBC_GetMaxBitneed, @function
OI_CODEC_SBC_GetMaxBitneed:
.LFB9:
	.loc 1 122 0
.LVL36:
	entry	sp, 32
.LCFI4:
	mov.n	a8, a2
	.loc 1 123 0
	l8ui	a2, a2, 76
.LVL37:
	.loc 1 125 0
	movi.n	a9, 0
	s8i	a9, a8, 76
.LVL38:
	.loc 1 127 0
	retw.n
.LFE9:
	.size	OI_CODEC_SBC_GetMaxBitneed, .-OI_CODEC_SBC_GetMaxBitneed
	.section	.text.OI_CODEC_SBC_CalculateBitpool,"ax",@progbits
	.align	4
	.global	OI_CODEC_SBC_CalculateBitpool
	.type	OI_CODEC_SBC_CalculateBitpool, @function
OI_CODEC_SBC_CalculateBitpool:
.LFB10:
	.loc 1 134 0
.LVL39:
	entry	sp, 32
.LCFI5:
	extui	a3, a3, 0, 16
	.loc 1 135 0
	l8ui	a8, a2, 5
.LVL40:
	.loc 1 136 0
	l8ui	a10, a2, 3
.LVL41:
	.loc 1 140 0
	l8ui	a9, a2, 7
	bnei	a9, 3, .L12
	.loc 1 141 0
	addx8	a8, a8, a8
.LVL42:
	j	.L13
.LVL43:
.L12:
	.loc 1 143 0
	bnez.n	a9, .L14
	.loc 1 144 0
	slli	a8, a8, 2
.LVL44:
	j	.L15
.LVL45:
.L14:
	.loc 1 146 0
	slli	a8, a8, 3
.LVL46:
.L15:
	.loc 1 148 0
	bnei	a9, 1, .L13
	.loc 1 149 0
	slli	a10, a10, 1
.LVL47:
	extui	a10, a10, 0, 16
.LVL48:
.L13:
	.loc 1 152 0
	addi	a3, a3, -4
.LVL49:
	subx8	a8, a3, a8
.LVL50:
	extui	a2, a8, 0, 16
.LVL51:
	.loc 1 154 0
	quou	a2, a2, a10
	retw.n
.LFE10:
	.size	OI_CODEC_SBC_CalculateBitpool, .-OI_CODEC_SBC_CalculateBitpool
	.section	.text.OI_CODEC_SBC_CalculatePcmBytes,"ax",@progbits
	.align	4
	.global	OI_CODEC_SBC_CalculatePcmBytes
	.type	OI_CODEC_SBC_CalculatePcmBytes, @function
OI_CODEC_SBC_CalculatePcmBytes:
.LFB11:
	.loc 1 157 0
.LVL52:
	entry	sp, 32
.LCFI6:
	.loc 1 158 0
	l8ui	a10, a2, 78
	l8ui	a9, a2, 9
	l8ui	a8, a2, 7
	mul16u	a2, a10, a9
.LVL53:
	mul16u	a2, a2, a8
	slli	a2, a2, 1
	extui	a2, a2, 0, 16
	.loc 1 159 0
	retw.n
.LFE11:
	.size	OI_CODEC_SBC_CalculatePcmBytes, .-OI_CODEC_SBC_CalculatePcmBytes
	.section	.text.OI_CODEC_SBC_CalculateFramelen,"ax",@progbits
	.align	4
	.global	OI_CODEC_SBC_CalculateFramelen
	.type	OI_CODEC_SBC_CalculateFramelen, @function
OI_CODEC_SBC_CalculateFramelen:
.LFB12:
	.loc 1 163 0
.LVL54:
	entry	sp, 32
.LCFI7:
	.loc 1 164 0
	mov.n	a10, a2
	call8	internal_CalculateFramelen
.LVL55:
	.loc 1 165 0
	mov.n	a2, a10
.LVL56:
	retw.n
.LFE12:
	.size	OI_CODEC_SBC_CalculateFramelen, .-OI_CODEC_SBC_CalculateFramelen
	.section	.rodata.balloc,"a",@progbits
	.align	4
	.type	balloc, @object
	.size	balloc, 16
balloc:
	.word	monoBitAllocation
	.word	dualBitAllocation
	.word	stereoBitAllocation
	.word	stereoBitAllocation
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI0-.LFB6
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI1-.LFB5
	.byte	0xe
	.uleb128 0x40
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
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI5-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI6-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI7-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/decoder/include/oi_cpu_dep.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/decoder/include/oi_stddefs.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/decoder/include/oi_codec_sbc.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/decoder/include/oi_codec_sbc_private.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x8d7
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0xc
	.4byte	.LASF96
	.4byte	.LASF97
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
	.byte	0x66
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0x67
	.4byte	0x53
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0x68
	.4byte	0x37
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x5
	.2byte	0x135
	.4byte	0x25
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x5
	.2byte	0x136
	.4byte	0x3e
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x5
	.2byte	0x137
	.4byte	0xa3
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x5
	.2byte	0x138
	.4byte	0x37
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x5
	.2byte	0x139
	.4byte	0x45
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x5
	.2byte	0x13a
	.4byte	0xaa
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x6
	.byte	0x85
	.4byte	0x9c
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x7
	.byte	0x7b
	.4byte	0xde
	.uleb128 0x8
	.byte	0x10
	.byte	0x7
	.byte	0x7f
	.4byte	0x1ed
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x7
	.byte	0x80
	.4byte	0x102
	.byte	0
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x7
	.byte	0x81
	.4byte	0xf6
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x7
	.byte	0x83
	.4byte	0xf6
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x7
	.byte	0x84
	.4byte	0xf6
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x7
	.byte	0x87
	.4byte	0xf6
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x7
	.byte	0x88
	.4byte	0xf6
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x7
	.byte	0x8a
	.4byte	0xf6
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x7
	.byte	0x8b
	.4byte	0xf6
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x7
	.byte	0x8d
	.4byte	0xf6
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x7
	.byte	0x8e
	.4byte	0xf6
	.byte	0xa
	.uleb128 0xa
	.string	"crc"
	.byte	0x7
	.byte	0x8f
	.4byte	0xf6
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x7
	.byte	0x90
	.4byte	0xf6
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x7
	.byte	0x91
	.4byte	0xf6
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x7
	.byte	0x92
	.4byte	0xf6
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x7
	.byte	0x96
	.4byte	0xf6
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x7
	.byte	0x97
	.4byte	0x130
	.uleb128 0xb
	.byte	0x10
	.byte	0x7
	.byte	0xa5
	.4byte	0x217
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x7
	.byte	0xa6
	.4byte	0x217
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x7
	.byte	0xa7
	.4byte	0x227
	.byte	0
	.uleb128 0x5
	.4byte	0xf6
	.4byte	0x227
	.uleb128 0x6
	.4byte	0x85
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.4byte	0x10e
	.4byte	0x237
	.uleb128 0x6
	.4byte	0x85
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.byte	0x50
	.byte	0x7
	.byte	0x9a
	.4byte	0x2dc
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x7
	.byte	0x9b
	.4byte	0x2dc
	.byte	0
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x7
	.byte	0x9c
	.4byte	0x1ed
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x7
	.byte	0x9d
	.4byte	0x2e7
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x7
	.byte	0x9e
	.4byte	0x10e
	.byte	0x24
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x7
	.byte	0x9f
	.4byte	0x2f7
	.byte	0x28
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x7
	.byte	0xa1
	.4byte	0x2fd
	.byte	0x2c
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x7
	.byte	0xa2
	.4byte	0xea
	.byte	0x34
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x7
	.byte	0xa3
	.4byte	0xbc
	.byte	0x38
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x7
	.byte	0xa8
	.4byte	0x1f8
	.byte	0x3c
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x7
	.byte	0xa9
	.4byte	0xf6
	.byte	0x4c
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x7
	.byte	0xaa
	.4byte	0xc7
	.byte	0x4d
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x7
	.byte	0xab
	.4byte	0xf6
	.byte	0x4e
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x7
	.byte	0xac
	.4byte	0xf6
	.byte	0x4f
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x2e2
	.uleb128 0xe
	.4byte	0x11a
	.uleb128 0x5
	.4byte	0xd2
	.4byte	0x2f7
	.uleb128 0x6
	.4byte	0x85
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0xea
	.uleb128 0x5
	.4byte	0x30d
	.4byte	0x30d
	.uleb128 0x6
	.4byte	0x85
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x125
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0x7
	.byte	0xad
	.4byte	0x237
	.uleb128 0xb
	.byte	0x8
	.byte	0x8
	.byte	0x4c
	.4byte	0x33d
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x8
	.byte	0x4d
	.4byte	0x33d
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x8
	.byte	0x4e
	.4byte	0x34d
	.byte	0
	.uleb128 0x5
	.4byte	0xf6
	.4byte	0x34d
	.uleb128 0x6
	.4byte	0x85
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.4byte	0x10e
	.4byte	0x35d
	.uleb128 0x6
	.4byte	0x85
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0x8
	.byte	0x4f
	.4byte	0x31e
	.uleb128 0xb
	.byte	0x10
	.byte	0x8
	.byte	0x51
	.4byte	0x387
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x8
	.byte	0x52
	.4byte	0x217
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x8
	.byte	0x53
	.4byte	0x227
	.byte	0
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0x8
	.byte	0x54
	.4byte	0x368
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0x8
	.byte	0x9f
	.4byte	0x39d
	.uleb128 0xd
	.byte	0x4
	.4byte	0x3a3
	.uleb128 0xf
	.4byte	0x3ae
	.uleb128 0x10
	.4byte	0x3ae
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x313
	.uleb128 0x11
	.4byte	.LASF65
	.byte	0x1
	.byte	0x33
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x52b
	.uleb128 0x12
	.4byte	.LASF67
	.byte	0x1
	.byte	0x33
	.4byte	0x3ae
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x13
	.4byte	.LASF30
	.byte	0x1
	.byte	0x35
	.4byte	0x52b
	.4byte	.LLST0
	.uleb128 0x14
	.4byte	.LASF60
	.byte	0x1
	.byte	0x36
	.4byte	0x387
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x13
	.4byte	.LASF61
	.byte	0x1
	.byte	0x37
	.4byte	0xbc
	.4byte	.LLST1
	.uleb128 0x14
	.4byte	.LASF62
	.byte	0x1
	.byte	0x38
	.4byte	0xb1
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x13
	.4byte	.LASF63
	.byte	0x1
	.byte	0x39
	.4byte	0xbc
	.4byte	.LLST2
	.uleb128 0x15
	.string	"sbL"
	.byte	0x1
	.byte	0x3a
	.4byte	0xbc
	.4byte	.LLST3
	.uleb128 0x15
	.string	"sbR"
	.byte	0x1
	.byte	0x3b
	.4byte	0xbc
	.4byte	.LLST4
	.uleb128 0x14
	.4byte	.LASF64
	.byte	0x1
	.byte	0x3c
	.4byte	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x483
	.uleb128 0x17
	.string	"ex"
	.byte	0x1
	.byte	0x42
	.4byte	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x18
	.4byte	.LVL6
	.4byte	0x88d
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x4
	.byte	0x75
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL2
	.4byte	0x898
	.4byte	0x4a9
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
	.byte	0x91
	.sleb128 -64
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL4
	.4byte	0x898
	.4byte	0x4d4
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x8
	.byte	0x91
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x40
	.byte	0x1c
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL11
	.4byte	0x8a3
	.4byte	0x4ed
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x7
	.byte	0x72
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x3c
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL14
	.4byte	0x8a3
	.4byte	0x506
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x7
	.byte	0x72
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x3c
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL19
	.4byte	0x8ae
	.4byte	0x51a
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 12
	.byte	0
	.uleb128 0x18
	.4byte	.LVL22
	.4byte	0x8ae
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 12
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0xbc
	.uleb128 0x11
	.4byte	.LASF66
	.byte	0x1
	.byte	0x23
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x637
	.uleb128 0x12
	.4byte	.LASF67
	.byte	0x1
	.byte	0x23
	.4byte	0x3ae
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.4byte	.LASF68
	.byte	0x1
	.byte	0x25
	.4byte	0xbc
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x14
	.4byte	.LASF69
	.byte	0x1
	.byte	0x26
	.4byte	0xbc
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x14
	.4byte	.LASF70
	.byte	0x1
	.byte	0x27
	.4byte	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x14
	.4byte	.LASF71
	.byte	0x1
	.byte	0x28
	.4byte	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x14
	.4byte	.LASF72
	.byte	0x1
	.byte	0x29
	.4byte	0x35d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x14
	.4byte	.LASF73
	.byte	0x1
	.byte	0x2a
	.4byte	0x35d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.4byte	.LVL25
	.4byte	0x898
	.4byte	0x5ca
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
	.byte	0x91
	.sleb128 -56
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL27
	.4byte	0x898
	.4byte	0x5ef
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
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL29
	.4byte	0x8b9
	.4byte	0x615
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
	.byte	0x91
	.sleb128 -56
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL30
	.4byte	0x8b9
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
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF98
	.byte	0x1
	.byte	0x65
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x666
	.uleb128 0x12
	.4byte	.LASF67
	.byte	0x1
	.byte	0x65
	.4byte	0x3ae
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1c
	.4byte	.LVL32
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF75
	.byte	0x1
	.byte	0x71
	.4byte	0x10e
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x69f
	.uleb128 0x1e
	.4byte	.LASF74
	.byte	0x1
	.byte	0x71
	.4byte	0x69f
	.4byte	.LLST5
	.uleb128 0x18
	.4byte	.LVL34
	.4byte	0x8c4
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x1ed
	.uleb128 0x1d
	.4byte	.LASF76
	.byte	0x1
	.byte	0x79
	.4byte	0xf6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6dd
	.uleb128 0x1e
	.4byte	.LASF67
	.byte	0x1
	.byte	0x79
	.4byte	0x3ae
	.4byte	.LLST6
	.uleb128 0x15
	.string	"max"
	.byte	0x1
	.byte	0x7b
	.4byte	0xf6
	.4byte	.LLST7
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF77
	.byte	0x1
	.byte	0x84
	.4byte	0x102
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x74f
	.uleb128 0x1e
	.4byte	.LASF74
	.byte	0x1
	.byte	0x84
	.4byte	0x69f
	.4byte	.LLST8
	.uleb128 0x1e
	.4byte	.LASF78
	.byte	0x1
	.byte	0x85
	.4byte	0x102
	.4byte	.LLST9
	.uleb128 0x13
	.4byte	.LASF30
	.byte	0x1
	.byte	0x87
	.4byte	0x102
	.4byte	.LLST10
	.uleb128 0x13
	.4byte	.LASF28
	.byte	0x1
	.byte	0x88
	.4byte	0x102
	.4byte	.LLST11
	.uleb128 0x15
	.string	"hdr"
	.byte	0x1
	.byte	0x89
	.4byte	0x102
	.4byte	.LLST12
	.uleb128 0x14
	.4byte	.LASF51
	.byte	0x1
	.byte	0x8a
	.4byte	0x102
	.uleb128 0x1
	.byte	0x58
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF79
	.byte	0x1
	.byte	0x9c
	.4byte	0x102
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x778
	.uleb128 0x1e
	.4byte	.LASF67
	.byte	0x1
	.byte	0x9c
	.4byte	0x3ae
	.4byte	.LLST13
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF80
	.byte	0x1
	.byte	0xa2
	.4byte	0x102
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7b1
	.uleb128 0x1e
	.4byte	.LASF74
	.byte	0x1
	.byte	0xa2
	.4byte	0x69f
	.4byte	.LLST14
	.uleb128 0x18
	.4byte	.LVL55
	.4byte	0x8cf
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF81
	.byte	0x4
	.2byte	0x2cc
	.4byte	0x7c4
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0xe
	.4byte	0x8c
	.uleb128 0x1f
	.4byte	.LASF82
	.byte	0x4
	.2byte	0x2cd
	.4byte	0x7dc
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0x8c
	.uleb128 0x5
	.4byte	0x102
	.4byte	0x7f1
	.uleb128 0x6
	.4byte	0x85
	.byte	0x3
	.byte	0
	.uleb128 0x20
	.4byte	.LASF83
	.byte	0x8
	.byte	0x56
	.4byte	0x805
	.byte	0x8
	.byte	0x80
	.byte	0x3e
	.byte	0
	.byte	0x7d
	.byte	0x44
	.byte	0xac
	.byte	0x80
	.byte	0xbb
	.uleb128 0xe
	.4byte	0x7e1
	.uleb128 0x5
	.4byte	0xf6
	.4byte	0x81a
	.uleb128 0x6
	.4byte	0x85
	.byte	0x3
	.byte	0
	.uleb128 0x20
	.4byte	.LASF84
	.byte	0x8
	.byte	0x57
	.4byte	0x82a
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0xc
	.byte	0x10
	.uleb128 0xe
	.4byte	0x80a
	.uleb128 0x20
	.4byte	.LASF85
	.byte	0x8
	.byte	0x58
	.4byte	0x83f
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.uleb128 0xe
	.4byte	0x80a
	.uleb128 0x5
	.4byte	0xf6
	.4byte	0x854
	.uleb128 0x6
	.4byte	0x85
	.byte	0x1
	.byte	0
	.uleb128 0x20
	.4byte	.LASF86
	.byte	0x8
	.byte	0x59
	.4byte	0x862
	.byte	0x2
	.byte	0x4
	.byte	0x8
	.uleb128 0xe
	.4byte	0x844
	.uleb128 0x5
	.4byte	0x392
	.4byte	0x877
	.uleb128 0x6
	.4byte	0x85
	.byte	0x3
	.byte	0
	.uleb128 0x14
	.4byte	.LASF87
	.byte	0x1
	.byte	0x5d
	.4byte	0x888
	.uleb128 0x5
	.byte	0x3
	.4byte	balloc
	.uleb128 0xe
	.4byte	0x867
	.uleb128 0x21
	.4byte	.LASF88
	.4byte	.LASF88
	.byte	0x8
	.byte	0x8c
	.uleb128 0x21
	.4byte	.LASF89
	.4byte	.LASF89
	.byte	0x8
	.byte	0x81
	.uleb128 0x21
	.4byte	.LASF90
	.4byte	.LASF90
	.byte	0x8
	.byte	0x92
	.uleb128 0x21
	.4byte	.LASF91
	.4byte	.LASF91
	.byte	0x8
	.byte	0x96
	.uleb128 0x21
	.4byte	.LASF92
	.4byte	.LASF92
	.byte	0x8
	.byte	0x86
	.uleb128 0x21
	.4byte	.LASF93
	.4byte	.LASF93
	.byte	0x8
	.byte	0x99
	.uleb128 0x21
	.4byte	.LASF94
	.4byte	.LASF94
	.byte	0x8
	.byte	0x9b
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
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x18
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x1
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.4byte	.LVL1
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL14
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18
	.4byte	.LVL19-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL22
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL17
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL9
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL17
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x3
	.byte	0x78
	.sleb128 76
	.4byte	.LVL38
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL39
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL51
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL39
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL49
	.4byte	.LFE10
	.2byte	0x3
	.byte	0x73
	.sleb128 4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x8
	.byte	0x72
	.sleb128 5
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x8
	.byte	0x72
	.sleb128 5
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL46
	.4byte	.LVL51
	.2byte	0x8
	.byte	0x72
	.sleb128 5
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LFE10
	.2byte	0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x5
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL41
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x8
	.byte	0x72
	.sleb128 3
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL46
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL56
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x54
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF36:
	.string	"join"
.LASF82:
	.string	"bd_addr_null"
.LASF25:
	.string	"SBC_BUFFER_T"
.LASF52:
	.string	"maxBitneed"
.LASF59:
	.string	"BIT_ALLOC"
.LASF86:
	.string	"band_values"
.LASF60:
	.string	"bitneeds"
.LASF91:
	.string	"allocExcessBits"
.LASF11:
	.string	"sizetype"
.LASF46:
	.string	"frameCount"
.LASF21:
	.string	"OI_UINT8"
.LASF70:
	.string	"bitpoolPreferenceL"
.LASF80:
	.string	"OI_CODEC_SBC_CalculateFramelen"
.LASF62:
	.string	"bitadjust"
.LASF83:
	.string	"freq_values"
.LASF32:
	.string	"mode"
.LASF85:
	.string	"channel_values"
.LASF39:
	.string	"cachedInfo"
.LASF87:
	.string	"balloc"
.LASF2:
	.string	"short int"
.LASF15:
	.string	"OI_INT"
.LASF66:
	.string	"dualBitAllocation"
.LASF47:
	.string	"subdata"
.LASF8:
	.string	"uint8_t"
.LASF84:
	.string	"block_values"
.LASF41:
	.string	"uint8"
.LASF37:
	.string	"enhanced"
.LASF63:
	.string	"bitcount"
.LASF75:
	.string	"OI_CODEC_SBC_CalculateBitrate"
.LASF35:
	.string	"bitpool"
.LASF5:
	.string	"long long int"
.LASF51:
	.string	"bits"
.LASF40:
	.string	"OI_CODEC_SBC_FRAME_INFO"
.LASF55:
	.string	"maxChannels"
.LASF44:
	.string	"frameInfo"
.LASF48:
	.string	"filterBuffer"
.LASF13:
	.string	"long int"
.LASF45:
	.string	"scale_factor"
.LASF9:
	.string	"UINT8"
.LASF71:
	.string	"bitpoolPreferenceR"
.LASF7:
	.string	"__uint8_t"
.LASF23:
	.string	"OI_UINT32"
.LASF72:
	.string	"bitneedsL"
.LASF31:
	.string	"subbands"
.LASF73:
	.string	"bitneedsR"
.LASF27:
	.string	"freqIndex"
.LASF43:
	.string	"codecInfo"
.LASF1:
	.string	"unsigned char"
.LASF97:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF33:
	.string	"nrof_channels"
.LASF89:
	.string	"computeBitneed"
.LASF50:
	.string	"filterBufferOffset"
.LASF0:
	.string	"signed char"
.LASF6:
	.string	"long long unsigned int"
.LASF4:
	.string	"unsigned int"
.LASF30:
	.string	"nrof_subbands"
.LASF79:
	.string	"OI_CODEC_SBC_CalculatePcmBytes"
.LASF34:
	.string	"alloc"
.LASF49:
	.string	"filterBufferLen"
.LASF3:
	.string	"short unsigned int"
.LASF93:
	.string	"internal_CalculateBitrate"
.LASF74:
	.string	"frame"
.LASF12:
	.string	"char"
.LASF65:
	.string	"stereoBitAllocation"
.LASF10:
	.string	"_Bool"
.LASF20:
	.string	"OI_INT32"
.LASF17:
	.string	"OI_BYTE"
.LASF94:
	.string	"internal_CalculateFramelen"
.LASF18:
	.string	"OI_INT8"
.LASF98:
	.string	"OI_SBC_ComputeBitAllocation"
.LASF42:
	.string	"uint32"
.LASF14:
	.string	"long unsigned int"
.LASF38:
	.string	"min_bitpool"
.LASF56:
	.string	"OI_CODEC_SBC_COMMON_CONTEXT"
.LASF67:
	.string	"common"
.LASF69:
	.string	"bitcountR"
.LASF19:
	.string	"OI_INT16"
.LASF92:
	.string	"oneChannelBitAllocation"
.LASF61:
	.string	"excess"
.LASF76:
	.string	"OI_CODEC_SBC_GetMaxBitneed"
.LASF88:
	.string	"adjustToFitBitpool"
.LASF29:
	.string	"blocks"
.LASF68:
	.string	"bitcountL"
.LASF77:
	.string	"OI_CODEC_SBC_CalculateBitpool"
.LASF26:
	.string	"frequency"
.LASF81:
	.string	"bd_addr_any"
.LASF54:
	.string	"pcmStride"
.LASF24:
	.string	"OI_CHAR"
.LASF78:
	.string	"frameLen"
.LASF28:
	.string	"nrof_blocks"
.LASF16:
	.string	"OI_UINT"
.LASF22:
	.string	"OI_UINT16"
.LASF95:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF96:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/decoder/srce/bitalloc-sbc.c"
.LASF57:
	.string	"BITNEED_UNION1"
.LASF58:
	.string	"BITNEED_UNION2"
.LASF64:
	.string	"bitpoolPreference"
.LASF90:
	.string	"allocAdjustedBits"
.LASF53:
	.string	"formatByte"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
