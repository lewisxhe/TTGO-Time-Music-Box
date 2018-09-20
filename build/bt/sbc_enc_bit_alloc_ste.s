	.file	"sbc_enc_bit_alloc_ste.c"
	.text
.Ltext0:
	.section	.text.sbc_enc_bit_alloc_ste,"ax",@progbits
	.literal_position
	.literal .LC0, sbc_enc_as16Offset4
	.literal .LC1, sbc_enc_as16Offset8
	.align	4
	.global	sbc_enc_bit_alloc_ste
	.type	sbc_enc_bit_alloc_ste, @function
sbc_enc_bit_alloc_ste:
.LFB5:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/encoder/srce/sbc_enc_bit_alloc_ste.c"
	.loc 1 45 0
.LVL0:
	entry	sp, 48
.LCFI0:
	.loc 1 59 0
	l16si	a7, a2, 4
	mov.n	a9, a7
.LVL1:
	.loc 1 60 0
	l16si	a10, a2, 12
.LVL2:
	.loc 1 63 0
	l16si	a3, a2, 10
	bnei	a3, 1, .L2
	.loc 1 64 0
	addi	a6, a2, 36
.LVL3:
	.loc 1 65 0
	l16si	a8, a2, 34
.LVL4:
	j	.L3
.LVL5:
.L2:
	.loc 1 67 0
	movi	a6, 0x248
	add.n	a6, a2, a6
.LVL6:
	.loc 1 68 0
	addi	a5, a2, 36
.LVL7:
	.loc 1 70 0
	mov.n	a13, a6
	.loc 1 71 0
	movi.n	a15, 0
	.loc 1 69 0
	mov.n	a8, a15
	s32i.n	a10, sp, 0
	.loc 1 71 0
	j	.L4
.LVL8:
.L13:
	.loc 1 72 0
	bnei	a9, 4, .L5
	.loc 1 73 0
	l16si	a14, a2, 0
	l32r	a3, .LC0
	addx8	a14, a14, a3
.LVL9:
.L7:
	.loc 1 92 0 discriminator 1
	movi.n	a12, 0
	j	.L6
.LVL10:
.L5:
	.loc 1 75 0
	l16si	a3, a2, 0
	slli	a3, a3, 4
	l32r	a14, .LC1
	add.n	a14, a3, a14
.LVL11:
	j	.L7
.LVL12:
.L12:
	.loc 1 79 0
	l16ui	a4, a5, 0
	sext	a3, a4, 15
	bnez.n	a3, .L8
	.loc 1 80 0
	movi.n	a3, -5
	s16i	a3, a13, 0
	j	.L9
.L8:
	.loc 1 82 0
	l16ui	a10, a14, 0
	sext	a11, a10, 15
	sub	a3, a3, a11
.LVL13:
	.loc 1 84 0
	blti	a3, 1, .L10
	.loc 1 85 0
	srai	a3, a3, 1
.LVL14:
	s16i	a3, a13, 0
	j	.L9
.LVL15:
.L10:
	.loc 1 87 0
	sub	a4, a4, a10
	s16i	a4, a13, 0
.LVL16:
.L9:
	.loc 1 91 0
	l16si	a3, a13, 0
	bge	a8, a3, .L11
	.loc 1 92 0
	mov.n	a8, a3
.LVL17:
.L11:
	.loc 1 94 0 discriminator 2
	addi.n	a5, a5, 2
.LVL18:
	.loc 1 95 0 discriminator 2
	addi.n	a13, a13, 2
.LVL19:
	.loc 1 96 0 discriminator 2
	addi.n	a14, a14, 2
.LVL20:
	.loc 1 78 0 discriminator 2
	addi.n	a12, a12, 1
.LVL21:
.L6:
	.loc 1 78 0 is_stmt 0 discriminator 1
	blt	a12, a9, .L12
	.loc 1 71 0 is_stmt 1 discriminator 2
	addi.n	a15, a15, 1
.LVL22:
.L4:
	.loc 1 71 0 is_stmt 0 discriminator 1
	blti	a15, 2, .L13
	l32i.n	a10, sp, 0
.LVL23:
.L3:
	.loc 1 102 0 is_stmt 1
	addi.n	a8, a8, 1
.LVL24:
	.loc 1 104 0
	movi.n	a12, 0
	j	.L18
.LVL25:
.L40:
	.loc 1 106 0
	mov.n	a8, a13
.LVL26:
.L18:
	addi.n	a13, a8, -1
.LVL27:
	.loc 1 107 0
	sub	a10, a10, a12
.LVL28:
	.loc 1 109 0
	mov.n	a4, a6
	.loc 1 111 0
	movi.n	a12, 0
	.loc 1 108 0
	mov.n	a3, a12
	.loc 1 111 0
	j	.L14
.LVL29:
.L17:
	.loc 1 112 0
	l16si	a5, a4, 0
	blt	a5, a8, .L15
	.loc 1 112 0 is_stmt 0 discriminator 1
	addi.n	a11, a8, 15
	bge	a5, a11, .L15
	.loc 1 113 0 is_stmt 1
	bne	a8, a5, .L16
	.loc 1 114 0
	addi.n	a12, a12, 2
.LVL30:
	j	.L15
.L16:
	.loc 1 116 0
	addi.n	a12, a12, 1
.LVL31:
.L15:
	.loc 1 119 0 discriminator 2
	addi.n	a4, a4, 2
.LVL32:
	.loc 1 111 0 discriminator 2
	addi.n	a3, a3, 1
.LVL33:
.L14:
	.loc 1 111 0 is_stmt 0 discriminator 1
	slli	a5, a9, 1
	blt	a3, a5, .L17
	.loc 1 121 0 is_stmt 1
	sub	a3, a10, a12
.LVL34:
	bgei	a3, 1, .L40
	.loc 1 123 0
	bne	a12, a10, .L19
.LVL35:
	.loc 1 125 0
	addi	a13, a8, -2
.LVL36:
	.loc 1 124 0
	mov.n	a10, a3
.LVL37:
.L19:
	.loc 1 130 0
	movi	a3, 0x668
	add.n	a2, a2, a3
.LVL38:
	mov.n	a8, a2
	.loc 1 129 0
	mov.n	a11, a6
	.loc 1 131 0
	movi.n	a12, 0
.LVL39:
	j	.L20
.LVL40:
.L24:
	.loc 1 133 0
	l16ui	a3, a11, 0
	sext	a4, a3, 15
	addi.n	a14, a13, 2
	bge	a4, a14, .L21
	.loc 1 134 0
	movi.n	a3, 0
	s16i	a3, a8, 0
	j	.L22
.L21:
	.loc 1 136 0
	sub	a4, a4, a13
	movi.n	a14, 0xf
	blt	a14, a4, .L41
	.loc 1 137 0 discriminator 1
	sub	a3, a3, a13
	.loc 1 136 0 discriminator 1
	sext	a3, a3, 15
	j	.L23
.L41:
	.loc 1 136 0 is_stmt 0
	movi.n	a3, 0x10
.L23:
	.loc 1 136 0 discriminator 4
	s16i	a3, a8, 0
.L22:
	.loc 1 138 0 is_stmt 1 discriminator 2
	addi.n	a11, a11, 2
.LVL41:
	.loc 1 139 0 discriminator 2
	addi.n	a8, a8, 2
.LVL42:
	.loc 1 132 0 discriminator 2
	addi.n	a5, a5, 1
.LVL43:
	j	.L25
.LVL44:
.L42:
	movi.n	a5, 0
.L25:
.LVL45:
	.loc 1 132 0 is_stmt 0 discriminator 1
	blt	a5, a9, .L24
	.loc 1 131 0 is_stmt 1 discriminator 2
	addi.n	a12, a12, 1
.LVL46:
.L20:
	.loc 1 131 0 is_stmt 0 discriminator 1
	blti	a12, 2, .L42
.LVL47:
	.loc 1 147 0 is_stmt 1
	slli	a3, a7, 2
	sub	a3, a8, a3
.LVL48:
	.loc 1 146 0
	mov.n	a11, a6
	.loc 1 144 0
	movi.n	a8, 0
	.loc 1 145 0
	mov.n	a5, a8
	.loc 1 149 0
	j	.L26
.LVL49:
.L32:
	.loc 1 150 0
	l16ui	a12, a3, 0
	addi	a4, a12, -2
	extui	a4, a4, 0, 16
	movi.n	a14, 0xd
	bltu	a14, a4, .L27
	.loc 1 151 0
	addi.n	a12, a12, 1
	s16i	a12, a3, 0
	.loc 1 152 0
	addi.n	a10, a10, -1
.LVL50:
	j	.L28
.L27:
	.loc 1 153 0
	l16si	a11, a11, 0
.LVL51:
	addi.n	a4, a13, 1
	bne	a11, a4, .L28
	.loc 1 153 0 is_stmt 0 discriminator 1
	blti	a10, 2, .L28
	.loc 1 154 0 is_stmt 1
	movi.n	a4, 2
	s16i	a4, a3, 0
	.loc 1 155 0
	addi	a10, a10, -2
.LVL52:
.L28:
	.loc 1 157 0
	bnei	a8, 1, .L29
.LVL53:
	.loc 1 159 0
	addi.n	a5, a5, 1
.LVL54:
	.loc 1 160 0
	slli	a3, a5, 1
.LVL55:
	add.n	a11, a6, a3
.LVL56:
	.loc 1 161 0
	add.n	a3, a2, a3
.LVL57:
	.loc 1 158 0
	movi.n	a8, 0
	j	.L26
.LVL58:
.L29:
	.loc 1 165 0
	add.n	a3, a7, a5
.LVL59:
	slli	a3, a3, 1
	add.n	a11, a6, a3
.LVL60:
	.loc 1 166 0
	add.n	a3, a2, a3
.LVL61:
	.loc 1 164 0
	movi.n	a8, 1
.LVL62:
.L26:
	.loc 1 149 0
	srai	a4, a10, 31
	sub	a4, a4, a10
	extui	a4, a4, 31, 1
	movi.n	a12, 1
	blt	a5, a9, .L31
	movi.n	a12, 0
.L31:
	bany	a4, a12, .L32
	mov.n	a4, a2
	movi.n	a8, 0
.LVL63:
	mov.n	a6, a8
.LVL64:
	j	.L33
.LVL65:
.L38:
	.loc 1 175 0
	l16ui	a3, a4, 0
	sext	a5, a3, 15
	movi.n	a11, 0xf
	blt	a11, a5, .L34
	.loc 1 176 0
	addi.n	a3, a3, 1
	s16i	a3, a4, 0
	.loc 1 177 0
	addi.n	a10, a10, -1
.LVL66:
.L34:
	.loc 1 179 0
	bnei	a8, 1, .L35
.LVL67:
	.loc 1 181 0
	addi.n	a6, a6, 1
.LVL68:
	.loc 1 182 0
	addx2	a4, a6, a2
.LVL69:
	.loc 1 180 0
	movi.n	a8, 0
	j	.L33
.LVL70:
.L35:
	.loc 1 185 0
	add.n	a4, a7, a6
.LVL71:
	addx2	a4, a4, a2
.LVL72:
	.loc 1 184 0
	movi.n	a8, 1
.LVL73:
.L33:
	.loc 1 174 0
	srai	a3, a10, 31
	sub	a3, a3, a10
	extui	a3, a3, 31, 1
	movi.n	a5, 1
	blt	a6, a9, .L37
	movi.n	a5, 0
.L37:
	bany	a3, a5, .L38
	.loc 1 188 0
	retw.n
.LFE5:
	.size	sbc_enc_bit_alloc_ste, .-sbc_enc_bit_alloc_ste
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
	.uleb128 0x30
	.align	4
.LEFDE0:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/encoder/include/sbc_types.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/encoder/include/sbc_encoder.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x3c4
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0xc
	.4byte	.LASF61
	.4byte	.LASF62
	.4byte	.Ldebug_ranges0+0
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
	.4byte	0x37
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
	.4byte	0x50
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
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x21
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0x21
	.4byte	0x73
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x22
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x5
	.4byte	0x89
	.4byte	0xbd
	.uleb128 0x6
	.4byte	0xa6
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x89
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF16
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x24
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0x25
	.4byte	0xca
	.uleb128 0x8
	.4byte	.LASF63
	.2byte	0x694
	.byte	0x6
	.byte	0x9a
	.4byte	0x1ff
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x6
	.byte	0x9b
	.4byte	0xd8
	.byte	0
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x6
	.byte	0x9c
	.4byte	0xd8
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x6
	.byte	0x9d
	.4byte	0xd8
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x6
	.byte	0x9e
	.4byte	0xd8
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x6
	.byte	0x9f
	.4byte	0xd8
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x6
	.byte	0xa0
	.4byte	0xd8
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x6
	.byte	0xa1
	.4byte	0xd8
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x6
	.byte	0xa3
	.4byte	0x94
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x6
	.byte	0xa4
	.4byte	0x89
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x6
	.byte	0xa6
	.4byte	0x1ff
	.byte	0x12
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x6
	.byte	0xa9
	.4byte	0xd8
	.byte	0x22
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x6
	.byte	0xaa
	.4byte	0x20f
	.byte	0x24
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x6
	.byte	0xac
	.4byte	0x21f
	.byte	0x44
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x6
	.byte	0xb0
	.4byte	0x225
	.byte	0x48
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x6
	.byte	0xb3
	.4byte	0x20f
	.2byte	0x248
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x6
	.byte	0xb5
	.4byte	0x235
	.2byte	0x268
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x6
	.byte	0xb7
	.4byte	0x20f
	.2byte	0x668
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x6
	.byte	0xb9
	.4byte	0xbd
	.2byte	0x688
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x6
	.byte	0xba
	.4byte	0xbd
	.2byte	0x68c
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x6
	.byte	0xbb
	.4byte	0x94
	.2byte	0x690
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x6
	.byte	0xbc
	.4byte	0x94
	.2byte	0x692
	.byte	0
	.uleb128 0x5
	.4byte	0xd8
	.4byte	0x20f
	.uleb128 0x6
	.4byte	0xa6
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.4byte	0xd8
	.4byte	0x21f
	.uleb128 0x6
	.4byte	0xa6
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xd8
	.uleb128 0x5
	.4byte	0xd8
	.4byte	0x235
	.uleb128 0x6
	.4byte	0xa6
	.byte	0xff
	.byte	0
	.uleb128 0x5
	.4byte	0xe3
	.4byte	0x245
	.uleb128 0x6
	.4byte	0xa6
	.byte	0xff
	.byte	0
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x6
	.byte	0xbe
	.4byte	0xee
	.uleb128 0xb
	.4byte	.LASF64
	.byte	0x1
	.byte	0x2c
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x345
	.uleb128 0xc
	.4byte	.LASF65
	.byte	0x1
	.byte	0x2c
	.4byte	0x345
	.4byte	.LLST0
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x1
	.byte	0x30
	.4byte	0xe3
	.4byte	.LLST1
	.uleb128 0xd
	.4byte	.LASF43
	.byte	0x1
	.byte	0x31
	.4byte	0xe3
	.4byte	.LLST2
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x1
	.byte	0x32
	.4byte	0xe3
	.4byte	.LLST3
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0x1
	.byte	0x33
	.4byte	0xe3
	.4byte	.LLST4
	.uleb128 0xd
	.4byte	.LASF46
	.byte	0x1
	.byte	0x34
	.4byte	0xe3
	.4byte	.LLST5
	.uleb128 0xd
	.4byte	.LASF47
	.byte	0x1
	.byte	0x35
	.4byte	0xe3
	.4byte	.LLST6
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x1
	.byte	0x36
	.4byte	0x21f
	.4byte	.LLST7
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0x1
	.byte	0x37
	.4byte	0xe3
	.4byte	.LLST8
	.uleb128 0xd
	.4byte	.LASF50
	.byte	0x1
	.byte	0x38
	.4byte	0x21f
	.4byte	.LLST9
	.uleb128 0xd
	.4byte	.LASF51
	.byte	0x1
	.byte	0x38
	.4byte	0x21f
	.4byte	.LLST10
	.uleb128 0xd
	.4byte	.LASF52
	.byte	0x1
	.byte	0x39
	.4byte	0x21f
	.4byte	.LLST11
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0x1
	.byte	0x3a
	.4byte	0x21f
	.4byte	.LLST12
	.uleb128 0xe
	.4byte	.LASF54
	.byte	0x1
	.byte	0x3b
	.4byte	0xe3
	.uleb128 0x1
	.byte	0x57
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0x1
	.byte	0x3c
	.4byte	0xe3
	.4byte	.LLST13
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x245
	.uleb128 0xf
	.4byte	.LASF56
	.byte	0x4
	.2byte	0x2cc
	.4byte	0x35e
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x10
	.4byte	0xad
	.uleb128 0xf
	.4byte	.LASF57
	.byte	0x4
	.2byte	0x2cd
	.4byte	0x376
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	0xad
	.uleb128 0x5
	.4byte	0xd8
	.4byte	0x391
	.uleb128 0x6
	.4byte	0xa6
	.byte	0x3
	.uleb128 0x6
	.4byte	0xa6
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.4byte	.LASF58
	.byte	0x1
	.byte	0x22
	.4byte	0x39c
	.uleb128 0x10
	.4byte	0x37b
	.uleb128 0x5
	.4byte	0xd8
	.4byte	0x3b7
	.uleb128 0x6
	.4byte	0xa6
	.byte	0x3
	.uleb128 0x6
	.4byte	0xa6
	.byte	0x7
	.byte	0
	.uleb128 0x11
	.4byte	.LASF59
	.byte	0x1
	.byte	0x23
	.4byte	0x3c2
	.uleb128 0x10
	.4byte	0x3a1
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LFE5
	.2byte	0x4
	.byte	0x72
	.sleb128 -1640
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL24
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL37
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL27
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL12
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL40
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL65
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL53
	.4byte	.LVL58
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL62
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL65
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL67
	.4byte	.LVL70
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LVL73
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL6
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0xa
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x7b
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL8
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL29
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL37
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL40
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL60
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL7
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL48
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL57
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL61
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL65
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL72
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL11
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL2
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF57:
	.string	"bd_addr_null"
.LASF50:
	.string	"ps16GenBufPtr"
.LASF47:
	.string	"s32Ch"
.LASF52:
	.string	"ps16GenArrPtr"
.LASF2:
	.string	"short int"
.LASF14:
	.string	"sizetype"
.LASF44:
	.string	"s32SliceCount"
.LASF51:
	.string	"pas16ScaleFactor"
.LASF18:
	.string	"SINT16"
.LASF11:
	.string	"UINT8"
.LASF4:
	.string	"__uint16_t"
.LASF31:
	.string	"as16ScaleFactor"
.LASF9:
	.string	"uint8_t"
.LASF22:
	.string	"s16NumOfSubBands"
.LASF7:
	.string	"long long int"
.LASF53:
	.string	"ps16GenTabPtr"
.LASF16:
	.string	"long int"
.LASF36:
	.string	"as16Bits"
.LASF54:
	.string	"s32NumOfSubBands"
.LASF65:
	.string	"pstrCodecParams"
.LASF3:
	.string	"__uint8_t"
.LASF49:
	.string	"s32Loudness"
.LASF24:
	.string	"s16NumOfBlocks"
.LASF26:
	.string	"s16BitPool"
.LASF32:
	.string	"ps16NextPcmBuffer"
.LASF21:
	.string	"s16ChannelMode"
.LASF34:
	.string	"s16ScartchMemForBitAlloc"
.LASF20:
	.string	"s16SamplingFreq"
.LASF1:
	.string	"unsigned char"
.LASF62:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF48:
	.string	"ps16BitNeed"
.LASF0:
	.string	"signed char"
.LASF8:
	.string	"long long unsigned int"
.LASF6:
	.string	"unsigned int"
.LASF10:
	.string	"uint16_t"
.LASF33:
	.string	"as16PcmBuffer"
.LASF42:
	.string	"s32MaxBitNeed"
.LASF61:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/encoder/srce/sbc_enc_bit_alloc_ste.c"
.LASF30:
	.string	"s16MaxBitNeed"
.LASF12:
	.string	"UINT16"
.LASF15:
	.string	"char"
.LASF35:
	.string	"s32SbBuffer"
.LASF55:
	.string	"s32BitPool"
.LASF40:
	.string	"u16PacketLength"
.LASF19:
	.string	"SINT32"
.LASF5:
	.string	"short unsigned int"
.LASF13:
	.string	"_Bool"
.LASF41:
	.string	"SBC_ENC_PARAMS"
.LASF27:
	.string	"u16BitRate"
.LASF37:
	.string	"pu8Packet"
.LASF23:
	.string	"s16NumOfChannels"
.LASF63:
	.string	"SBC_ENC_PARAMS_TAG"
.LASF43:
	.string	"s32BitCount"
.LASF17:
	.string	"long unsigned int"
.LASF58:
	.string	"sbc_enc_as16Offset4"
.LASF59:
	.string	"sbc_enc_as16Offset8"
.LASF29:
	.string	"as16Join"
.LASF39:
	.string	"FrameHeader"
.LASF64:
	.string	"sbc_enc_bit_alloc_ste"
.LASF28:
	.string	"u8NumPacketToEncode"
.LASF46:
	.string	"s32Sb"
.LASF56:
	.string	"bd_addr_any"
.LASF25:
	.string	"s16AllocationMethod"
.LASF38:
	.string	"pu8NextPacket"
.LASF60:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF45:
	.string	"s32BitSlice"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
