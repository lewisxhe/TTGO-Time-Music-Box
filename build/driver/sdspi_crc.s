	.file	"sdspi_crc.c"
	.text
.Ltext0:
	.section	.text.sdspi_crc7,"ax",@progbits
	.literal_position
	.literal .LC0, crc7_table
	.align	4
	.global	sdspi_crc7
	.type	sdspi_crc7, @function
sdspi_crc7:
.LFB0:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdspi_crc.c"
	.loc 1 41 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
.LBB2:
	.loc 1 43 0
	movi.n	a9, 0
.LBE2:
	.loc 1 42 0
	mov.n	a8, a9
.LBB3:
	.loc 1 43 0
	j	.L2
.LVL2:
.L3:
	.loc 1 44 0 discriminator 3
	slli	a8, a8, 1
.LVL3:
	add.n	a10, a2, a9
	l8ui	a10, a10, 0
	xor	a8, a10, a8
	l32r	a10, .LC0
	add.n	a8, a10, a8
	l8ui	a8, a8, 0
.LVL4:
	.loc 1 43 0 discriminator 3
	addi.n	a9, a9, 1
.LVL5:
.L2:
	.loc 1 43 0 is_stmt 0 discriminator 1
	bltu	a9, a3, .L3
.LBE3:
	.loc 1 47 0 is_stmt 1
	mov.n	a2, a8
.LVL6:
	retw.n
.LFE0:
	.size	sdspi_crc7, .-sdspi_crc7
	.section	.text.sdspi_crc16,"ax",@progbits
	.literal_position
	.literal .LC1, 65535
	.align	4
	.global	sdspi_crc16
	.type	sdspi_crc16, @function
sdspi_crc16:
.LFB1:
	.loc 1 51 0
.LVL7:
	entry	sp, 32
.LCFI1:
	.loc 1 52 0
	mov.n	a12, a3
	mov.n	a11, a2
	l32r	a10, .LC1
	call8	crc16_be
.LVL8:
	movi.n	a8, -1
	xor	a10, a8, a10
	extui	a10, a10, 0, 16
	slli	a2, a10, 8
.LVL9:
	srli	a10, a10, 8
	or	a2, a2, a10
	.loc 1 53 0
	extui	a2, a2, 0, 16
	retw.n
.LFE1:
	.size	sdspi_crc16, .-sdspi_crc16
	.section	.rodata.crc7_table,"a",@progbits
	.align	4
	.type	crc7_table, @object
	.size	crc7_table, 256
crc7_table:
	.byte	0
	.byte	9
	.byte	18
	.byte	27
	.byte	36
	.byte	45
	.byte	54
	.byte	63
	.byte	72
	.byte	65
	.byte	90
	.byte	83
	.byte	108
	.byte	101
	.byte	126
	.byte	119
	.byte	25
	.byte	16
	.byte	11
	.byte	2
	.byte	61
	.byte	52
	.byte	47
	.byte	38
	.byte	81
	.byte	88
	.byte	67
	.byte	74
	.byte	117
	.byte	124
	.byte	103
	.byte	110
	.byte	50
	.byte	59
	.byte	32
	.byte	41
	.byte	22
	.byte	31
	.byte	4
	.byte	13
	.byte	122
	.byte	115
	.byte	104
	.byte	97
	.byte	94
	.byte	87
	.byte	76
	.byte	69
	.byte	43
	.byte	34
	.byte	57
	.byte	48
	.byte	15
	.byte	6
	.byte	29
	.byte	20
	.byte	99
	.byte	106
	.byte	113
	.byte	120
	.byte	71
	.byte	78
	.byte	85
	.byte	92
	.byte	100
	.byte	109
	.byte	118
	.byte	127
	.byte	64
	.byte	73
	.byte	82
	.byte	91
	.byte	44
	.byte	37
	.byte	62
	.byte	55
	.byte	8
	.byte	1
	.byte	26
	.byte	19
	.byte	125
	.byte	116
	.byte	111
	.byte	102
	.byte	89
	.byte	80
	.byte	75
	.byte	66
	.byte	53
	.byte	60
	.byte	39
	.byte	46
	.byte	17
	.byte	24
	.byte	3
	.byte	10
	.byte	86
	.byte	95
	.byte	68
	.byte	77
	.byte	114
	.byte	123
	.byte	96
	.byte	105
	.byte	30
	.byte	23
	.byte	12
	.byte	5
	.byte	58
	.byte	51
	.byte	40
	.byte	33
	.byte	79
	.byte	70
	.byte	93
	.byte	84
	.byte	107
	.byte	98
	.byte	121
	.byte	112
	.byte	7
	.byte	14
	.byte	21
	.byte	28
	.byte	35
	.byte	42
	.byte	49
	.byte	56
	.byte	65
	.byte	72
	.byte	83
	.byte	90
	.byte	101
	.byte	108
	.byte	119
	.byte	126
	.byte	9
	.byte	0
	.byte	27
	.byte	18
	.byte	45
	.byte	36
	.byte	63
	.byte	54
	.byte	88
	.byte	81
	.byte	74
	.byte	67
	.byte	124
	.byte	117
	.byte	110
	.byte	103
	.byte	16
	.byte	25
	.byte	2
	.byte	11
	.byte	52
	.byte	61
	.byte	38
	.byte	47
	.byte	115
	.byte	122
	.byte	97
	.byte	104
	.byte	87
	.byte	94
	.byte	69
	.byte	76
	.byte	59
	.byte	50
	.byte	41
	.byte	32
	.byte	31
	.byte	22
	.byte	13
	.byte	4
	.byte	106
	.byte	99
	.byte	120
	.byte	113
	.byte	78
	.byte	71
	.byte	92
	.byte	85
	.byte	34
	.byte	43
	.byte	48
	.byte	57
	.byte	6
	.byte	15
	.byte	20
	.byte	29
	.byte	37
	.byte	44
	.byte	55
	.byte	62
	.byte	1
	.byte	8
	.byte	19
	.byte	26
	.byte	109
	.byte	100
	.byte	127
	.byte	118
	.byte	73
	.byte	64
	.byte	91
	.byte	82
	.byte	60
	.byte	53
	.byte	46
	.byte	39
	.byte	24
	.byte	17
	.byte	10
	.byte	3
	.byte	116
	.byte	125
	.byte	102
	.byte	111
	.byte	80
	.byte	89
	.byte	66
	.byte	75
	.byte	23
	.byte	30
	.byte	5
	.byte	12
	.byte	51
	.byte	58
	.byte	33
	.byte	40
	.byte	95
	.byte	86
	.byte	77
	.byte	68
	.byte	123
	.byte	114
	.byte	105
	.byte	96
	.byte	14
	.byte	7
	.byte	28
	.byte	21
	.byte	42
	.byte	35
	.byte	56
	.byte	49
	.byte	70
	.byte	79
	.byte	84
	.byte	93
	.byte	98
	.byte	107
	.byte	112
	.byte	121
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
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/crc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x17b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0xc
	.4byte	.LASF20
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x12
	.4byte	0x33
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x16
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0x15
	.4byte	0x28
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x21
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0xd8
	.4byte	0x5a
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x1
	.byte	0x28
	.4byte	0x6f
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe8
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x1
	.byte	0x28
	.4byte	0xe8
	.4byte	.LLST0
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x1
	.byte	0x28
	.4byte	0x85
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x1
	.byte	0x2a
	.4byte	0x6f
	.4byte	.LLST1
	.uleb128 0x9
	.4byte	.Ldebug_ranges0+0
	.uleb128 0xa
	.string	"i"
	.byte	0x1
	.byte	0x2b
	.4byte	0x85
	.4byte	.LLST2
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xee
	.uleb128 0xc
	.4byte	0x6f
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x1
	.byte	0x32
	.4byte	0x7a
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x146
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x1
	.byte	0x32
	.4byte	0xe8
	.4byte	.LLST3
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x1
	.byte	0x32
	.4byte	0x85
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xd
	.4byte	.LVL8
	.4byte	0x173
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0xffff
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	0x6f
	.4byte	0x156
	.uleb128 0x10
	.4byte	0x156
	.byte	0xff
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0x11
	.4byte	.LASF18
	.byte	0x1
	.byte	0x13
	.4byte	0x16e
	.uleb128 0x5
	.byte	0x3
	.4byte	crc7_table
	.uleb128 0xc
	.4byte	0x146
	.uleb128 0x12
	.4byte	.LASF21
	.4byte	.LASF21
	.byte	0x5
	.byte	0x5a
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL4
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	0
	.4byte	0
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF16:
	.string	"sdspi_crc16"
.LASF3:
	.string	"__uint8_t"
.LASF11:
	.string	"size_t"
.LASF12:
	.string	"data"
.LASF20:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdspi_crc.c"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"short unsigned int"
.LASF4:
	.string	"__uint16_t"
.LASF6:
	.string	"unsigned int"
.LASF8:
	.string	"long long unsigned int"
.LASF9:
	.string	"uint8_t"
.LASF14:
	.string	"result"
.LASF18:
	.string	"crc7_table"
.LASF19:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF17:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF2:
	.string	"short int"
.LASF10:
	.string	"uint16_t"
.LASF21:
	.string	"crc16_be"
.LASF0:
	.string	"signed char"
.LASF15:
	.string	"sdspi_crc7"
.LASF13:
	.string	"size"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
