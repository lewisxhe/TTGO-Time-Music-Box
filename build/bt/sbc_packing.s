	.file	"sbc_packing.c"
	.text
.Ltext0:
	.section	.text.EncPacking,"ax",@progbits
	.align	4
	.global	EncPacking
	.type	EncPacking, @function
EncPacking:
.LFB5:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/encoder/srce/sbc_packing.c"
	.loc 1 59 0
.LVL0:
	entry	sp, 64
.LCFI0:
	s32i.n	a2, sp, 4
	.loc 1 74 0
	l16si	a2, a2, 4
.LVL1:
	s32i.n	a2, sp, 16
.LVL2:
	.loc 1 75 0
	l32i.n	a3, sp, 4
	l16si	a6, a3, 6
.LVL3:
	.loc 1 86 0
	addmi	a2, a3, 0x600
.LVL4:
	l32i	a7, a2, 140
.LVL5:
	.loc 1 87 0
	movi	a3, -0x64
	s8i	a3, a7, 0
.LVL6:
	.loc 1 88 0
	l8ui	a2, a2, 144
	s8i	a2, a7, 1
	.loc 1 90 0
	l32i.n	a4, sp, 4
	l8ui	a2, a4, 12
	s8i	a2, a7, 2
	.loc 1 91 0
	addi.n	a3, a7, 4
.LVL7:
	.loc 1 97 0
	l16si	a2, a4, 2
	beqi	a2, 3, .L23
	.loc 1 94 0
	movi.n	a13, 8
	.loc 1 95 0
	movi.n	a8, 0
	j	.L3
.LVL8:
.L4:
	.loc 1 100 0 discriminator 3
	slli	a8, a8, 1
.LVL9:
	extui	a2, a8, 0, 8
.LVL10:
	.loc 1 101 0 discriminator 3
	addi.n	a5, a4, 8
	addx2	a5, a5, a10
	l16si	a8, a5, 2
.LVL11:
	or	a8, a8, a2
	extui	a8, a8, 0, 8
.LVL12:
	.loc 1 99 0 discriminator 3
	addi.n	a4, a4, 1
.LVL13:
	j	.L2
.LVL14:
.L23:
	movi.n	a4, 0
.LVL15:
	mov.n	a8, a4
	l32i.n	a9, sp, 16
	l32i.n	a10, sp, 4
.LVL16:
.L2:
	.loc 1 99 0 is_stmt 0 discriminator 1
	blt	a4, a9, .L4
	.loc 1 105 0 is_stmt 1
	l32i.n	a2, sp, 16
	beqi	a2, 4, .L24
	.loc 1 108 0
	addi.n	a3, a7, 5
.LVL17:
	s8i	a8, a7, 4
.LVL18:
	.loc 1 94 0
	movi.n	a13, 8
	.loc 1 109 0
	movi.n	a8, 0
	j	.L3
.LVL19:
.L24:
	.loc 1 106 0
	movi.n	a13, 4
.LVL20:
.L3:
	.loc 1 115 0
	l32i.n	a4, sp, 4
	addi	a4, a4, 36
	s32i.n	a4, sp, 12
.LVL21:
	.loc 1 116 0
	l32i.n	a2, sp, 16
	mull	a6, a2, a6
.LVL22:
	s32i.n	a6, sp, 8
.LVL23:
	.loc 1 115 0
	mov.n	a2, a4
	.loc 1 118 0
	mov.n	a4, a6
.LVL24:
	j	.L5
.LVL25:
.L7:
	.loc 1 119 0
	slli	a8, a8, 4
.LVL26:
	extui	a8, a8, 0, 8
.LVL27:
	.loc 1 120 0
	addi.n	a5, a2, 2
.LVL28:
	l16si	a2, a2, 0
	or	a8, a2, a8
.LVL29:
	extui	a8, a8, 0, 8
.LVL30:
	.loc 1 122 0
	bnei	a13, 4, .L25
.LVL31:
	.loc 1 124 0
	s8i	a8, a3, 0
.LVL32:
	addi.n	a3, a3, 1
.LVL33:
	.loc 1 123 0
	movi.n	a13, 8
	.loc 1 125 0
	movi.n	a8, 0
	j	.L6
.LVL34:
.L25:
	.loc 1 127 0
	movi.n	a13, 4
.LVL35:
.L6:
	.loc 1 118 0 discriminator 2
	addi.n	a4, a4, -1
.LVL36:
	.loc 1 120 0 discriminator 2
	mov.n	a2, a5
.LVL37:
.L5:
	.loc 1 118 0 discriminator 1
	bgei	a4, 1, .L7
	.loc 1 132 0
	movi	a6, 0x268
.LVL38:
	l32i.n	a4, sp, 4
.LVL39:
	add.n	a6, a4, a6
.LVL40:
	.loc 1 134 0
	l16si	a2, a4, 8
.LVL41:
	.loc 1 135 0
	addi.n	a2, a2, -1
.LVL42:
	s32i.n	a2, sp, 0
.LVL43:
	j	.L8
.LVL44:
.L14:
	.loc 1 136 0
	movi	a2, 0x668
	l32i.n	a4, sp, 4
.LVL45:
	add.n	a2, a4, a2
.LVL46:
	.loc 1 138 0
	l32i.n	a4, sp, 8
	addi.n	a12, a4, -1
.LVL47:
	.loc 1 137 0
	l32i.n	a14, sp, 12
	.loc 1 138 0
	j	.L9
.LVL48:
.L13:
	.loc 1 139 0
	addi.n	a7, a2, 2
.LVL49:
	l16si	a5, a2, 0
.LVL50:
	.loc 1 140 0
	beqz.n	a5, .L10
	.loc 1 143 0
	l16si	a11, a14, 0
	addi.n	a4, a11, 1
	movi.n	a10, 1
	ssl	a4
	sll	a4, a10
.LVL51:
	.loc 1 144 0
	ssl	a5
	sll	a2, a10
	extui	a2, a2, 0, 16
	addi.n	a2, a2, -1
	extui	a2, a2, 0, 16
.LVL52:
	.loc 1 147 0
	l32i.n	a9, a6, 0
	srai	a9, a9, 2
	slli	a4, a4, 12
.LVL53:
	add.n	a4, a9, a4
.LVL54:
	.loc 1 150 0
	extui	a15, a4, 0, 16
	mull	a15, a15, a2
.LVL55:
	srai	a4, a4, 16
.LVL56:
	mull	a2, a2, a4
.LVL57:
	extui	a4, a15, 16, 16
	extui	a9, a2, 0, 16
.LVL58:
	add.n	a4, a9, a4
	extui	a4, a4, 16, 16
.LVL59:
	slli	a9, a2, 16
	add.n	a15, a15, a9
.LVL60:
	srai	a2, a2, 16
.LVL61:
	add.n	a2, a4, a2
.LVL62:
	.loc 1 152 0
	addi.n	a9, a11, 2
	ssr	a9
	sra	a9, a15
.LVL63:
	.loc 1 153 0
	movi.n	a4, 0x1e
.LVL64:
	sub	a11, a4, a11
.LVL65:
	ssl	a11
	sll	a10, a10
.LVL66:
	addi.n	a10, a10, -1
	and	a9, a9, a10
.LVL67:
	.loc 1 154 0
	ssl	a11
	sll	a4, a2
.LVL68:
	.loc 1 156 0
	or	a4, a9, a4
.LVL69:
	extui	a4, a4, 12, 16
.LVL70:
	.loc 1 172 0
	blt	a13, a5, .L11
	.loc 1 173 0
	ssl	a5
	sll	a8, a8
.LVL71:
	extui	a8, a8, 0, 8
.LVL72:
	.loc 1 174 0
	or	a8, a8, a4
.LVL73:
	extui	a8, a8, 0, 8
.LVL74:
	.loc 1 175 0
	sub	a13, a13, a5
.LVL75:
	j	.L10
.LVL76:
.L12:
	.loc 1 178 0
	sub	a5, a5, a13
.LVL77:
	.loc 1 179 0
	ssr	a5
	srl	a2, a4
.LVL78:
	.loc 1 185 0
	ssl	a13
	sll	a8, a8
.LVL79:
	extui	a8, a8, 0, 8
.LVL80:
	.loc 1 187 0
	or	a8, a8, a2
.LVL81:
	.loc 1 191 0
	s8i	a8, a3, 0
.LVL82:
	.loc 1 192 0
	movi.n	a8, 0
	.loc 1 193 0
	movi.n	a13, 8
	.loc 1 191 0
	addi.n	a3, a3, 1
.LVL83:
.L11:
	.loc 1 177 0
	blt	a13, a5, .L12
	.loc 1 195 0
	ssl	a5
	sll	a8, a8
.LVL84:
	extui	a8, a8, 0, 8
.LVL85:
	.loc 1 201 0
	or	a8, a8, a4
.LVL86:
	extui	a8, a8, 0, 8
.LVL87:
	.loc 1 203 0
	sub	a13, a13, a5
.LVL88:
.L10:
	.loc 1 206 0 discriminator 2
	addi.n	a14, a14, 2
.LVL89:
	.loc 1 207 0 discriminator 2
	addi.n	a6, a6, 4
.LVL90:
	.loc 1 138 0 discriminator 2
	addi.n	a12, a12, -1
.LVL91:
	.loc 1 139 0 discriminator 2
	mov.n	a2, a7
.LVL92:
.L9:
	.loc 1 138 0 discriminator 1
	bgez	a12, .L13
	.loc 1 135 0 discriminator 2
	l32i.n	a2, sp, 0
.LVL93:
	addi.n	a2, a2, -1
	s32i.n	a2, sp, 0
.LVL94:
.L8:
	.loc 1 135 0 is_stmt 0 discriminator 1
	l32i.n	a4, sp, 0
	bgez	a4, .L14
	.loc 1 211 0 is_stmt 1
	ssl	a13
	sll	a8, a8
.LVL95:
	.loc 1 212 0
	s8i	a8, a3, 0
	.loc 1 213 0
	l32i.n	a2, sp, 4
	addmi	a4, a2, 0x600
	l32i	a8, a4, 140
.LVL96:
	sub	a2, a3, a8
	addi.n	a2, a2, 1
	s16i	a2, a4, 146
	.loc 1 215 0
	addi.n	a9, a8, 1
.LVL97:
	.loc 1 217 0
	l32i.n	a3, sp, 8
	srai	a10, a3, 1
.LVL98:
	.loc 1 224 0
	l8ui	a6, a8, 1
.LVL99:
	.loc 1 216 0
	movi.n	a3, 0xf
	.loc 1 225 0
	movi.n	a7, 1
	j	.L15
.LVL100:
.L19:
	.loc 1 227 0
	bnei	a7, 3, .L26
	j	.L17
.LVL101:
.L18:
	.loc 1 229 0 discriminator 3
	ssr	a5
	sra	a2, a6
	srli	a4, a3, 7
	xor	a4, a4, a2
	extui	a4, a4, 0, 1
.LVL102:
	.loc 1 230 0 discriminator 3
	slli	a3, a3, 1
.LVL103:
	extui	a2, a3, 0, 8
.LVL104:
	.loc 1 231 0 discriminator 3
	slli	a3, a4, 3
.LVL105:
	sub	a3, a3, a4
	addx4	a3, a3, a4
	xor	a3, a3, a2
	extui	a3, a3, 0, 8
.LVL106:
	.loc 1 228 0 discriminator 3
	addi.n	a5, a5, -1
.LVL107:
	j	.L16
.LVL108:
.L26:
	movi.n	a5, 7
.LVL109:
.L16:
	.loc 1 228 0 is_stmt 0 discriminator 1
	bgez	a5, .L18
.LVL110:
.L17:
	.loc 1 235 0 is_stmt 1 discriminator 2
	addi.n	a9, a9, 1
.LVL111:
	l8ui	a6, a9, 0
.LVL112:
	.loc 1 225 0 discriminator 2
	addi.n	a7, a7, 1
.LVL113:
.L15:
	.loc 1 225 0 is_stmt 0 discriminator 1
	addi.n	a2, a10, 4
	blt	a7, a2, .L19
	.loc 1 238 0 is_stmt 1
	l32i.n	a4, sp, 4
	l16si	a2, a4, 2
	bnei	a2, 3, .L21
	j	.L27
.LVL114:
.L22:
	.loc 1 240 0 discriminator 3
	ssr	a5
	sra	a2, a6
	srli	a4, a3, 7
	xor	a4, a4, a2
	extui	a4, a4, 0, 1
.LVL115:
	.loc 1 241 0 discriminator 3
	slli	a3, a3, 1
.LVL116:
	extui	a2, a3, 0, 8
.LVL117:
	.loc 1 242 0 discriminator 3
	slli	a3, a4, 3
.LVL118:
	sub	a3, a3, a4
	addx4	a3, a3, a4
	xor	a3, a3, a2
	extui	a3, a3, 0, 8
.LVL119:
	.loc 1 239 0 discriminator 3
	addi.n	a5, a5, -1
.LVL120:
	j	.L20
.LVL121:
.L27:
	movi.n	a5, 7
	l32i.n	a7, sp, 16
.LVL122:
.L20:
	.loc 1 239 0 is_stmt 0 discriminator 1
	movi.n	a2, 8
	sub	a2, a2, a7
	bge	a5, a2, .L22
.LVL123:
.L21:
	.loc 1 252 0 is_stmt 1
	s8i	a3, a8, 3
	.loc 1 253 0
	l32i.n	a3, sp, 4
.LVL124:
	addmi	a2, a3, 0x600
	l16ui	a3, a2, 146
	l32i	a4, a2, 140
	add.n	a3, a4, a3
	s32i	a3, a2, 140
	retw.n
.LFE5:
	.size	EncPacking, .-EncPacking
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
	.uleb128 0x40
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
	.4byte	0x473
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0xc
	.4byte	.LASF76
	.4byte	.LASF77
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
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x1a
	.4byte	0x69
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x21
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x2d
	.4byte	0x5e
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x21
	.4byte	0x7e
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x22
	.4byte	0x89
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x23
	.4byte	0x94
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF16
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0x5
	.4byte	0x9f
	.4byte	0xde
	.uleb128 0x6
	.4byte	0xc7
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF18
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF19
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF20
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0x24
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x5
	.byte	0x25
	.4byte	0xeb
	.uleb128 0x8
	.4byte	.LASF78
	.2byte	0x694
	.byte	0x6
	.byte	0x9a
	.4byte	0x220
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x6
	.byte	0x9b
	.4byte	0xf9
	.byte	0
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x6
	.byte	0x9c
	.4byte	0xf9
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x6
	.byte	0x9d
	.4byte	0xf9
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x6
	.byte	0x9e
	.4byte	0xf9
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x6
	.byte	0x9f
	.4byte	0xf9
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x6
	.byte	0xa0
	.4byte	0xf9
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x6
	.byte	0xa1
	.4byte	0xf9
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x6
	.byte	0xa3
	.4byte	0xaa
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x6
	.byte	0xa4
	.4byte	0x9f
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x6
	.byte	0xa6
	.4byte	0x220
	.byte	0x12
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x6
	.byte	0xa9
	.4byte	0xf9
	.byte	0x22
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x6
	.byte	0xaa
	.4byte	0x230
	.byte	0x24
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x6
	.byte	0xac
	.4byte	0x240
	.byte	0x44
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x6
	.byte	0xb0
	.4byte	0x246
	.byte	0x48
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x6
	.byte	0xb3
	.4byte	0x230
	.2byte	0x248
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x6
	.byte	0xb5
	.4byte	0x256
	.2byte	0x268
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x6
	.byte	0xb7
	.4byte	0x230
	.2byte	0x668
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x6
	.byte	0xb9
	.4byte	0xde
	.2byte	0x688
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x6
	.byte	0xba
	.4byte	0xde
	.2byte	0x68c
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x6
	.byte	0xbb
	.4byte	0xaa
	.2byte	0x690
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x6
	.byte	0xbc
	.4byte	0xaa
	.2byte	0x692
	.byte	0
	.uleb128 0x5
	.4byte	0xf9
	.4byte	0x230
	.uleb128 0x6
	.4byte	0xc7
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.4byte	0xf9
	.4byte	0x240
	.uleb128 0x6
	.4byte	0xc7
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xf9
	.uleb128 0x5
	.4byte	0xf9
	.4byte	0x256
	.uleb128 0x6
	.4byte	0xc7
	.byte	0xff
	.byte	0
	.uleb128 0x5
	.4byte	0x104
	.4byte	0x266
	.uleb128 0x6
	.4byte	0xc7
	.byte	0xff
	.byte	0
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x6
	.byte	0xbe
	.4byte	0x10f
	.uleb128 0xb
	.4byte	.LASF79
	.byte	0x1
	.byte	0x3a
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x43a
	.uleb128 0xc
	.4byte	.LASF80
	.byte	0x1
	.byte	0x3a
	.4byte	0x43a
	.4byte	.LLST0
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0x1
	.byte	0x3c
	.4byte	0xde
	.4byte	.LLST1
	.uleb128 0xd
	.4byte	.LASF46
	.byte	0x1
	.byte	0x3d
	.4byte	0x9f
	.4byte	.LLST2
	.uleb128 0xd
	.4byte	.LASF47
	.byte	0x1
	.byte	0x3e
	.4byte	0x104
	.4byte	.LLST3
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x1
	.byte	0x3f
	.4byte	0x104
	.4byte	.LLST4
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0x1
	.byte	0x40
	.4byte	0x104
	.4byte	.LLST5
	.uleb128 0xd
	.4byte	.LASF50
	.byte	0x1
	.byte	0x41
	.4byte	0x104
	.4byte	.LLST6
	.uleb128 0xd
	.4byte	.LASF51
	.byte	0x1
	.byte	0x43
	.4byte	0x104
	.4byte	.LLST7
	.uleb128 0xd
	.4byte	.LASF52
	.byte	0x1
	.byte	0x44
	.4byte	0xb5
	.4byte	.LLST8
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0x1
	.byte	0x44
	.4byte	0xb5
	.4byte	.LLST9
	.uleb128 0xd
	.4byte	.LASF54
	.byte	0x1
	.byte	0x45
	.4byte	0x104
	.4byte	.LLST10
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0x1
	.byte	0x46
	.4byte	0x9f
	.4byte	.LLST11
	.uleb128 0xd
	.4byte	.LASF56
	.byte	0x1
	.byte	0x47
	.4byte	0x9f
	.4byte	.LLST12
	.uleb128 0xd
	.4byte	.LASF57
	.byte	0x1
	.byte	0x48
	.4byte	0x240
	.4byte	.LLST13
	.uleb128 0xd
	.4byte	.LASF58
	.byte	0x1
	.byte	0x49
	.4byte	0x104
	.4byte	.LLST14
	.uleb128 0xd
	.4byte	.LASF59
	.byte	0x1
	.byte	0x4a
	.4byte	0x104
	.4byte	.LLST15
	.uleb128 0xd
	.4byte	.LASF60
	.byte	0x1
	.byte	0x4b
	.4byte	0x104
	.4byte	.LLST16
	.uleb128 0xd
	.4byte	.LASF61
	.byte	0x1
	.byte	0x4c
	.4byte	0xb5
	.4byte	.LLST17
	.uleb128 0xd
	.4byte	.LASF62
	.byte	0x1
	.byte	0x4d
	.4byte	0x240
	.4byte	.LLST18
	.uleb128 0xd
	.4byte	.LASF63
	.byte	0x1
	.byte	0x4e
	.4byte	0x440
	.4byte	.LLST19
	.uleb128 0xd
	.4byte	.LASF64
	.byte	0x1
	.byte	0x4f
	.4byte	0xaa
	.4byte	.LLST20
	.uleb128 0xd
	.4byte	.LASF65
	.byte	0x1
	.byte	0x50
	.4byte	0x104
	.4byte	.LLST21
	.uleb128 0xd
	.4byte	.LASF66
	.byte	0x1
	.byte	0x51
	.4byte	0x104
	.4byte	.LLST22
	.uleb128 0xd
	.4byte	.LASF67
	.byte	0x1
	.byte	0x53
	.4byte	0x104
	.4byte	.LLST23
	.uleb128 0xd
	.4byte	.LASF68
	.byte	0x1
	.byte	0x53
	.4byte	0x104
	.4byte	.LLST24
	.uleb128 0xd
	.4byte	.LASF69
	.byte	0x1
	.byte	0x53
	.4byte	0x104
	.4byte	.LLST25
	.uleb128 0xd
	.4byte	.LASF70
	.byte	0x1
	.byte	0x53
	.4byte	0x104
	.4byte	.LLST26
	.uleb128 0xd
	.4byte	.LASF71
	.byte	0x1
	.byte	0x53
	.4byte	0x104
	.4byte	.LLST27
	.uleb128 0xd
	.4byte	.LASF72
	.byte	0x1
	.byte	0x53
	.4byte	0x104
	.4byte	.LLST28
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x266
	.uleb128 0x7
	.byte	0x4
	.4byte	0x104
	.uleb128 0xe
	.4byte	.LASF73
	.byte	0x4
	.2byte	0x2cc
	.4byte	0x459
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0xf
	.4byte	0xce
	.uleb128 0xe
	.4byte	.LASF74
	.byte	0x4
	.2byte	0x2cd
	.4byte	0x471
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	0xce
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL15
	.4byte	.LFE5
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x3
	.byte	0x77
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x3
	.byte	0x77
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL81
	.4byte	.LVL83
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL97
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL123
	.4byte	.LFE5
	.2byte	0x3
	.byte	0x78
	.sleb128 3
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL74
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL87
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LVL100
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL112
	.4byte	.LVL113
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LVL113
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL45
	.4byte	.LFE5
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL25
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL47
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL100
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL8
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL16
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL23
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL38
	.4byte	.LFE5
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL7
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL31
	.4byte	.LVL34
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL101
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL114
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL70
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL78
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL81
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL70
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL50
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL98
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL102
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL115
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL97
	.4byte	.LVL100
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	.LVL100
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL106
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL119
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL21
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL24
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL37
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL46
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL49
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LFE5
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL3
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL53
	.4byte	.LVL65
	.2byte	0x6
	.byte	0x7a
	.sleb128 0
	.byte	0x7b
	.sleb128 1
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0xe
	.byte	0x7a
	.sleb128 0
	.byte	0x7e
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x23
	.uleb128 0x1
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL76
	.2byte	0xd
	.byte	0x31
	.byte	0x7e
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x23
	.uleb128 0x1
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	.LVL48
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL40
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL52
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL57
	.4byte	.LVL66
	.2byte	0xc
	.byte	0x7a
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x24
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL76
	.2byte	0xb
	.byte	0x31
	.byte	0x75
	.sleb128 0
	.byte	0x24
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0xb
	.byte	0x7a
	.sleb128 0
	.byte	0x7b
	.sleb128 1
	.byte	0x24
	.byte	0x3c
	.byte	0x24
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL65
	.2byte	0xe
	.byte	0x76
	.sleb128 0
	.byte	0x6
	.byte	0x32
	.byte	0x26
	.byte	0x7a
	.sleb128 0
	.byte	0x7b
	.sleb128 1
	.byte	0x24
	.byte	0x3c
	.byte	0x24
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x16
	.byte	0x76
	.sleb128 0
	.byte	0x6
	.byte	0x32
	.byte	0x26
	.byte	0x7a
	.sleb128 0
	.byte	0x7e
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x23
	.uleb128 0x1
	.byte	0x24
	.byte	0x3c
	.byte	0x24
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL76
	.2byte	0x15
	.byte	0x76
	.sleb128 0
	.byte	0x6
	.byte	0x32
	.byte	0x26
	.byte	0x31
	.byte	0x7e
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x23
	.uleb128 0x1
	.byte	0x24
	.byte	0x3c
	.byte	0x24
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL55
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL69
	.4byte	.LVL76
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL63
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL59
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x4a
	.byte	0x76
	.sleb128 0
	.byte	0x6
	.byte	0x32
	.byte	0x26
	.byte	0x7a
	.sleb128 0
	.byte	0x7b
	.sleb128 1
	.byte	0x24
	.byte	0x3c
	.byte	0x24
	.byte	0x22
	.byte	0x40
	.byte	0x26
	.byte	0x7a
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x24
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x31
	.byte	0x1c
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x1e
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x76
	.sleb128 0
	.byte	0x6
	.byte	0x32
	.byte	0x26
	.byte	0x7a
	.sleb128 0
	.byte	0x7b
	.sleb128 1
	.byte	0x24
	.byte	0x3c
	.byte	0x24
	.byte	0x22
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x7a
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x24
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x31
	.byte	0x1c
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x1e
	.byte	0x40
	.byte	0x25
	.byte	0x22
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x5a
	.byte	0x76
	.sleb128 0
	.byte	0x6
	.byte	0x32
	.byte	0x26
	.byte	0x7a
	.sleb128 0
	.byte	0x7e
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x23
	.uleb128 0x1
	.byte	0x24
	.byte	0x3c
	.byte	0x24
	.byte	0x22
	.byte	0x40
	.byte	0x26
	.byte	0x7a
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x24
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x31
	.byte	0x1c
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x1e
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x76
	.sleb128 0
	.byte	0x6
	.byte	0x32
	.byte	0x26
	.byte	0x7a
	.sleb128 0
	.byte	0x7e
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x23
	.uleb128 0x1
	.byte	0x24
	.byte	0x3c
	.byte	0x24
	.byte	0x22
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x7a
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x24
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x31
	.byte	0x1c
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x1e
	.byte	0x40
	.byte	0x25
	.byte	0x22
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL76
	.2byte	0x56
	.byte	0x76
	.sleb128 0
	.byte	0x6
	.byte	0x32
	.byte	0x26
	.byte	0x31
	.byte	0x7e
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x23
	.uleb128 0x1
	.byte	0x24
	.byte	0x3c
	.byte	0x24
	.byte	0x22
	.byte	0x40
	.byte	0x26
	.byte	0x31
	.byte	0x75
	.sleb128 0
	.byte	0x24
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x31
	.byte	0x1c
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x1e
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x76
	.sleb128 0
	.byte	0x6
	.byte	0x32
	.byte	0x26
	.byte	0x31
	.byte	0x7e
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x23
	.uleb128 0x1
	.byte	0x24
	.byte	0x3c
	.byte	0x24
	.byte	0x22
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x31
	.byte	0x75
	.sleb128 0
	.byte	0x24
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x31
	.byte	0x1c
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x1e
	.byte	0x40
	.byte	0x25
	.byte	0x22
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL57
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL61
	.4byte	.LVL65
	.2byte	0x20
	.byte	0x76
	.sleb128 0
	.byte	0x6
	.byte	0x32
	.byte	0x26
	.byte	0x7a
	.sleb128 0
	.byte	0x7b
	.sleb128 1
	.byte	0x24
	.byte	0x3c
	.byte	0x24
	.byte	0x22
	.byte	0x40
	.byte	0x26
	.byte	0x7a
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x24
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x31
	.byte	0x1c
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x28
	.byte	0x76
	.sleb128 0
	.byte	0x6
	.byte	0x32
	.byte	0x26
	.byte	0x7a
	.sleb128 0
	.byte	0x7e
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x23
	.uleb128 0x1
	.byte	0x24
	.byte	0x3c
	.byte	0x24
	.byte	0x22
	.byte	0x40
	.byte	0x26
	.byte	0x7a
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x24
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x31
	.byte	0x1c
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL76
	.2byte	0x26
	.byte	0x76
	.sleb128 0
	.byte	0x6
	.byte	0x32
	.byte	0x26
	.byte	0x31
	.byte	0x7e
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x23
	.uleb128 0x1
	.byte	0x24
	.byte	0x3c
	.byte	0x24
	.byte	0x22
	.byte	0x40
	.byte	0x26
	.byte	0x31
	.byte	0x75
	.sleb128 0
	.byte	0x24
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x31
	.byte	0x1c
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x1e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL62
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL54
	.4byte	.LVL57
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL66
	.2byte	0x10
	.byte	0x7a
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x24
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x31
	.byte	0x1c
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL76
	.2byte	0xf
	.byte	0x31
	.byte	0x75
	.sleb128 0
	.byte	0x24
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x31
	.byte	0x1c
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
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
.LASF47:
	.string	"s32Blk"
.LASF74:
	.string	"bd_addr_null"
.LASF48:
	.string	"s32Ch"
.LASF57:
	.string	"ps16GenPtr"
.LASF2:
	.string	"short int"
.LASF17:
	.string	"sizetype"
.LASF70:
	.string	"s32TempVal2"
.LASF45:
	.string	"pu8PacketPtr"
.LASF21:
	.string	"SINT16"
.LASF15:
	.string	"UINT32"
.LASF63:
	.string	"ps32SbPtr"
.LASF13:
	.string	"UINT8"
.LASF4:
	.string	"__uint16_t"
.LASF76:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/encoder/srce/sbc_packing.c"
.LASF62:
	.string	"ps16ScfPtr"
.LASF34:
	.string	"as16ScaleFactor"
.LASF79:
	.string	"EncPacking"
.LASF10:
	.string	"uint8_t"
.LASF28:
	.string	"s16AllocationMethod"
.LASF54:
	.string	"s32LoopCount"
.LASF67:
	.string	"s32Hi1"
.LASF25:
	.string	"s16NumOfSubBands"
.LASF58:
	.string	"s32NumOfBlocks"
.LASF8:
	.string	"long long int"
.LASF19:
	.string	"long int"
.LASF39:
	.string	"as16Bits"
.LASF59:
	.string	"s32NumOfSubBands"
.LASF3:
	.string	"__uint8_t"
.LASF40:
	.string	"pu8Packet"
.LASF68:
	.string	"s32Low1"
.LASF27:
	.string	"s16NumOfBlocks"
.LASF29:
	.string	"s16BitPool"
.LASF35:
	.string	"ps16NextPcmBuffer"
.LASF24:
	.string	"s16ChannelMode"
.LASF37:
	.string	"s16ScartchMemForBitAlloc"
.LASF23:
	.string	"s16SamplingFreq"
.LASF1:
	.string	"unsigned char"
.LASF77:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF56:
	.string	"u8CRC"
.LASF50:
	.string	"s32PresentBit"
.LASF0:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF64:
	.string	"u16Levels"
.LASF12:
	.string	"uint32_t"
.LASF7:
	.string	"unsigned int"
.LASF11:
	.string	"uint16_t"
.LASF36:
	.string	"as16PcmBuffer"
.LASF66:
	.string	"s32Low"
.LASF53:
	.string	"u32QuantizedSbValue0"
.LASF33:
	.string	"s16MaxBitNeed"
.LASF55:
	.string	"u8XoredVal"
.LASF14:
	.string	"UINT16"
.LASF18:
	.string	"char"
.LASF38:
	.string	"s32SbBuffer"
.LASF65:
	.string	"s32Temp1"
.LASF72:
	.string	"s32Temp2"
.LASF61:
	.string	"u32SfRaisedToPow2"
.LASF43:
	.string	"u16PacketLength"
.LASF22:
	.string	"SINT32"
.LASF5:
	.string	"short unsigned int"
.LASF16:
	.string	"_Bool"
.LASF44:
	.string	"SBC_ENC_PARAMS"
.LASF30:
	.string	"u16BitRate"
.LASF26:
	.string	"s16NumOfChannels"
.LASF78:
	.string	"SBC_ENC_PARAMS_TAG"
.LASF20:
	.string	"long unsigned int"
.LASF6:
	.string	"__uint32_t"
.LASF32:
	.string	"as16Join"
.LASF60:
	.string	"s32NumOfChannels"
.LASF42:
	.string	"FrameHeader"
.LASF31:
	.string	"u8NumPacketToEncode"
.LASF49:
	.string	"s32Sb"
.LASF80:
	.string	"pstrEncParams"
.LASF52:
	.string	"u32QuantizedSbValue"
.LASF73:
	.string	"bd_addr_any"
.LASF69:
	.string	"s32Carry"
.LASF46:
	.string	"Temp"
.LASF41:
	.string	"pu8NextPacket"
.LASF75:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF71:
	.string	"s32Hi"
.LASF51:
	.string	"s32LoopCountJ"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
