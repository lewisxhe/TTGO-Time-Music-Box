	.file	"synthesis-dct8.c"
	.text
.Ltext0:
	.section	.text.default_mul_32s_32s_hi,"ax",@progbits
	.align	4
	.global	default_mul_32s_32s_hi
	.type	default_mul_32s_32s_hi, @function
default_mul_32s_32s_hi:
.LFB5:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/decoder/srce/synthesis-dct8.c"
	.loc 1 66 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 70 0
	extui	a8, a2, 0, 16
.LVL1:
	srai	a2, a2, 16
.LVL2:
	.loc 1 71 0
	extui	a10, a3, 0, 16
.LVL3:
	srai	a3, a3, 16
.LVL4:
	.loc 1 72 0
	mull	a9, a8, a10
.LVL5:
	.loc 1 73 0
	mull	a10, a2, a10
.LVL6:
	extui	a9, a9, 16, 16
.LVL7:
	add.n	a9, a10, a9
.LVL8:
	.loc 1 74 0
	extui	a10, a9, 0, 16
.LVL9:
	.loc 1 75 0
	srai	a9, a9, 16
.LVL10:
	.loc 1 76 0
	mull	a8, a3, a8
.LVL11:
	add.n	a8, a10, a8
.LVL12:
	.loc 1 77 0
	mull	a3, a2, a3
.LVL13:
	add.n	a3, a9, a3
	srai	a2, a8, 16
.LVL14:
	.loc 1 78 0
	add.n	a2, a3, a2
	retw.n
.LFE5:
	.size	default_mul_32s_32s_hi, .-default_mul_32s_32s_hi
	.section	.text.dct2_8,"ax",@progbits
	.literal_position
	.literal .LC0, 759250125
	.literal .LC1, 32768
	.literal .LC2, 410903207
	.literal .LC3, 581104888
	.literal .LC4, 1402911301
	.align	4
	.global	dct2_8
	.type	dct2_8, @function
dct2_8:
.LFB6:
	.loc 1 212 0
.LVL15:
	entry	sp, 48
.LCFI1:
	.loc 1 232 0
	l32i.n	a9, a3, 0
.LVL16:
	.loc 1 233 0
	l32i.n	a12, a3, 4
.LVL17:
	.loc 1 234 0
	l32i.n	a11, a3, 8
.LVL18:
	.loc 1 235 0
	l32i.n	a14, a3, 12
.LVL19:
	.loc 1 236 0
	l32i.n	a13, a3, 16
.LVL20:
	.loc 1 237 0
	l32i.n	a6, a3, 20
.LVL21:
	.loc 1 238 0
	l32i.n	a10, a3, 24
.LVL22:
	.loc 1 239 0
	l32i.n	a5, a3, 28
.LVL23:
	.loc 1 242 0
	add.n	a4, a9, a5
.LVL24:
	.loc 1 243 0
	add.n	a3, a12, a10
.LVL25:
	.loc 1 244 0
	add.n	a8, a11, a6
.LVL26:
	.loc 1 245 0
	add.n	a7, a14, a13
.LVL27:
	.loc 1 247 0
	sub	a13, a14, a13
.LVL28:
	s32i.n	a13, sp, 4
.LVL29:
	.loc 1 248 0
	sub	a6, a11, a6
.LVL30:
	.loc 1 249 0
	sub	a10, a12, a10
.LVL31:
	s32i.n	a10, sp, 0
.LVL32:
	.loc 1 250 0
	sub	a5, a9, a5
.LVL33:
	.loc 1 252 0
	add.n	a4, a4, a7
.LVL34:
	slli	a7, a7, 1
.LVL35:
	sub	a7, a4, a7
.LVL36:
	.loc 1 253 0
	add.n	a3, a3, a8
.LVL37:
	slli	a11, a8, 1
.LVL38:
	sub	a11, a3, a11
.LVL39:
	.loc 1 257 0
	add.n	a11, a7, a11
.LVL40:
	l32r	a10, .LC0
.LVL41:
	call8	default_mul_32s_32s_hi
.LVL42:
	.loc 1 259 0
	add.n	a4, a4, a3
.LVL43:
	slli	a3, a3, 1
.LVL44:
	sub	a3, a4, a3
.LVL45:
	.loc 1 261 0
	l32r	a8, .LC1
	add.n	a4, a4, a8
.LVL46:
	srai	a4, a4, 16
.LVL47:
	s16i	a4, a2, 0
	.loc 1 262 0
	add.n	a3, a3, a8
.LVL48:
	srai	a3, a3, 16
.LVL49:
	s16i	a3, a2, 8
	.loc 1 264 0
	addx4	a7, a10, a7
.LVL50:
	slli	a10, a10, 3
.LVL51:
	sub	a10, a7, a10
.LVL52:
	.loc 1 265 0
	addmi	a10, a10, 0x4000
.LVL53:
	srai	a10, a10, 15
.LVL54:
	s16i	a10, a2, 12
	.loc 1 266 0
	add.n	a8, a7, a8
	srai	a8, a8, 16
	s16i	a8, a2, 4
	.loc 1 268 0
	l32i.n	a3, sp, 4
	add.n	a4, a3, a6
.LVL55:
	.loc 1 269 0
	l32i.n	a3, sp, 0
	add.n	a6, a6, a3
.LVL56:
	.loc 1 270 0
	add.n	a3, a3, a5
.LVL57:
	.loc 1 272 0
	extui	a7, a4, 31, 1
.LVL58:
	add.n	a7, a7, a4
	srai	a7, a7, 1
.LVL59:
	.loc 1 273 0
	extui	a11, a6, 31, 1
	add.n	a11, a11, a6
.LVL60:
	.loc 1 274 0
	extui	a4, a3, 31, 1
	add.n	a4, a4, a3
	srai	a4, a4, 1
.LVL61:
	.loc 1 275 0
	extui	a3, a5, 31, 1
	add.n	a5, a3, a5
.LVL62:
	srai	a5, a5, 1
.LVL63:
	.loc 1 277 0
	srai	a11, a11, 1
.LVL64:
	l32r	a10, .LC0
	call8	default_mul_32s_32s_hi
.LVL65:
	mov.n	a6, a10
.LVL66:
	slli	a3, a10, 2
	s32i.n	a3, sp, 0
.LVL67:
	.loc 1 280 0
	sub	a11, a4, a7
.LVL68:
	l32r	a10, .LC2
	call8	default_mul_32s_32s_hi
.LVL69:
	slli	a3, a10, 2
.LVL70:
	.loc 1 282 0
	mov.n	a11, a7
	l32r	a10, .LC3
	call8	default_mul_32s_32s_hi
.LVL71:
	.loc 1 283 0
	subx4	a7, a10, a3
.LVL72:
	.loc 1 285 0
	mov.n	a11, a4
	l32r	a10, .LC4
	call8	default_mul_32s_32s_hi
.LVL73:
	.loc 1 286 0
	subx4	a10, a10, a3
.LVL74:
	.loc 1 288 0
	l32i.n	a3, sp, 0
.LVL75:
	add.n	a5, a5, a3
.LVL76:
	slli	a6, a6, 3
	sub	a6, a5, a6
.LVL77:
	.loc 1 290 0
	add.n	a6, a7, a6
.LVL78:
	slli	a7, a7, 1
.LVL79:
	sub	a7, a6, a7
.LVL80:
	.loc 1 291 0
	addmi	a7, a7, 0x4000
.LVL81:
	srai	a7, a7, 15
.LVL82:
	s16i	a7, a2, 6
	.loc 1 292 0
	addmi	a6, a6, 0x4000
.LVL83:
	srai	a6, a6, 15
.LVL84:
	s16i	a6, a2, 10
	.loc 1 294 0
	add.n	a5, a10, a5
.LVL85:
	slli	a3, a10, 1
	sub	a3, a5, a3
.LVL86:
	.loc 1 295 0
	addmi	a3, a3, 0x1000
.LVL87:
	srai	a3, a3, 13
.LVL88:
	s16i	a3, a2, 14
	.loc 1 296 0
	addmi	a5, a5, 0x4000
.LVL89:
	srai	a5, a5, 15
.LVL90:
	s16i	a5, a2, 2
	retw.n
.LFE6:
	.size	dct2_8, .-dct2_8
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
	.uleb128 0x30
	.align	4
.LEFDE2:
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
	.4byte	0x410
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0xc
	.4byte	.LASF28
	.4byte	.LASF29
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
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x5
	.2byte	0x136
	.4byte	0x3e
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
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x6
	.byte	0x7b
	.4byte	0xb1
	.uleb128 0x8
	.byte	0x4
	.4byte	0xed
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x1
	.byte	0x41
	.4byte	0xbd
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x191
	.uleb128 0xa
	.string	"u"
	.byte	0x1
	.byte	0x41
	.4byte	0xbd
	.4byte	.LLST0
	.uleb128 0xa
	.string	"v"
	.byte	0x1
	.byte	0x41
	.4byte	0xbd
	.4byte	.LLST1
	.uleb128 0xb
	.string	"u0"
	.byte	0x1
	.byte	0x43
	.4byte	0xe1
	.4byte	.LLST2
	.uleb128 0xb
	.string	"v0"
	.byte	0x1
	.byte	0x43
	.4byte	0xe1
	.4byte	.LLST3
	.uleb128 0xb
	.string	"u1"
	.byte	0x1
	.byte	0x44
	.4byte	0xbd
	.4byte	.LLST4
	.uleb128 0xb
	.string	"v1"
	.byte	0x1
	.byte	0x44
	.4byte	0xbd
	.4byte	.LLST5
	.uleb128 0xb
	.string	"w1"
	.byte	0x1
	.byte	0x44
	.4byte	0xbd
	.4byte	.LLST6
	.uleb128 0xc
	.string	"w2"
	.byte	0x1
	.byte	0x44
	.4byte	0xbd
	.uleb128 0x1
	.byte	0x59
	.uleb128 0xb
	.string	"t"
	.byte	0x1
	.byte	0x44
	.4byte	0xbd
	.4byte	.LLST7
	.byte	0
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x1
	.byte	0xd3
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x352
	.uleb128 0xe
	.string	"out"
	.byte	0x1
	.byte	0xd3
	.4byte	0xf8
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xa
	.string	"in"
	.byte	0x1
	.byte	0xd3
	.4byte	0x352
	.4byte	.LLST8
	.uleb128 0xb
	.string	"L00"
	.byte	0x1
	.byte	0xd8
	.4byte	0xbd
	.4byte	.LLST9
	.uleb128 0xb
	.string	"L01"
	.byte	0x1
	.byte	0xd8
	.4byte	0xbd
	.4byte	.LLST10
	.uleb128 0xb
	.string	"L02"
	.byte	0x1
	.byte	0xd8
	.4byte	0xbd
	.4byte	.LLST11
	.uleb128 0xb
	.string	"L03"
	.byte	0x1
	.byte	0xd8
	.4byte	0xbd
	.4byte	.LLST12
	.uleb128 0xb
	.string	"L04"
	.byte	0x1
	.byte	0xd8
	.4byte	0xbd
	.4byte	.LLST13
	.uleb128 0xb
	.string	"L05"
	.byte	0x1
	.byte	0xd8
	.4byte	0xbd
	.4byte	.LLST14
	.uleb128 0xb
	.string	"L06"
	.byte	0x1
	.byte	0xd8
	.4byte	0xbd
	.4byte	.LLST15
	.uleb128 0xb
	.string	"L07"
	.byte	0x1
	.byte	0xd8
	.4byte	0xbd
	.4byte	.LLST16
	.uleb128 0xb
	.string	"L25"
	.byte	0x1
	.byte	0xd9
	.4byte	0xbd
	.4byte	.LLST17
	.uleb128 0xb
	.string	"in0"
	.byte	0x1
	.byte	0xdb
	.4byte	0xbd
	.4byte	.LLST18
	.uleb128 0xb
	.string	"in1"
	.byte	0x1
	.byte	0xdb
	.4byte	0xbd
	.4byte	.LLST19
	.uleb128 0xb
	.string	"in2"
	.byte	0x1
	.byte	0xdb
	.4byte	0xbd
	.4byte	.LLST20
	.uleb128 0xb
	.string	"in3"
	.byte	0x1
	.byte	0xdb
	.4byte	0xbd
	.4byte	.LLST21
	.uleb128 0xb
	.string	"in4"
	.byte	0x1
	.byte	0xdc
	.4byte	0xbd
	.4byte	.LLST22
	.uleb128 0xb
	.string	"in5"
	.byte	0x1
	.byte	0xdc
	.4byte	0xbd
	.4byte	.LLST23
	.uleb128 0xb
	.string	"in6"
	.byte	0x1
	.byte	0xdc
	.4byte	0xbd
	.4byte	.LLST24
	.uleb128 0xb
	.string	"in7"
	.byte	0x1
	.byte	0xdc
	.4byte	0xbd
	.4byte	.LLST25
	.uleb128 0xf
	.4byte	.LVL42
	.4byte	0xfe
	.4byte	0x2d7
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x2d413ccd
	.byte	0
	.uleb128 0xf
	.4byte	.LVL65
	.4byte	0xfe
	.4byte	0x2fb
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x2d413ccd
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x9
	.byte	0x76
	.sleb128 0
	.byte	0x4f
	.byte	0x25
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x26
	.byte	0
	.uleb128 0xf
	.4byte	.LVL69
	.4byte	0xfe
	.4byte	0x31b
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x187de2a7
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.4byte	.LVL71
	.4byte	0xfe
	.4byte	0x338
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x22a2f4f8
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL73
	.4byte	0xfe
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x539eba45
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x358
	.uleb128 0x12
	.4byte	0xbd
	.uleb128 0x13
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x2cc
	.4byte	0x370
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x12
	.4byte	0x8c
	.uleb128 0x13
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x2cd
	.4byte	0x388
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x8c
	.uleb128 0x5
	.4byte	0xd5
	.4byte	0x39d
	.uleb128 0x6
	.4byte	0x85
	.byte	0x3
	.byte	0
	.uleb128 0x14
	.4byte	.LASF23
	.byte	0x7
	.byte	0x56
	.4byte	0x3b1
	.byte	0x8
	.byte	0x80
	.byte	0x3e
	.byte	0
	.byte	0x7d
	.byte	0x44
	.byte	0xac
	.byte	0x80
	.byte	0xbb
	.uleb128 0x12
	.4byte	0x38d
	.uleb128 0x5
	.4byte	0xc9
	.4byte	0x3c6
	.uleb128 0x6
	.4byte	0x85
	.byte	0x3
	.byte	0
	.uleb128 0x14
	.4byte	.LASF24
	.byte	0x7
	.byte	0x57
	.4byte	0x3d6
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0xc
	.byte	0x10
	.uleb128 0x12
	.4byte	0x3b6
	.uleb128 0x14
	.4byte	.LASF25
	.byte	0x7
	.byte	0x58
	.4byte	0x3eb
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.uleb128 0x12
	.4byte	0x3b6
	.uleb128 0x5
	.4byte	0xc9
	.4byte	0x400
	.uleb128 0x6
	.4byte	0x85
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.4byte	.LASF26
	.byte	0x7
	.byte	0x59
	.4byte	0x40e
	.byte	0x2
	.byte	0x4
	.byte	0x8
	.uleb128 0x12
	.4byte	0x3f0
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
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
	.uleb128 0x1c
	.uleb128 0xa
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
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL11
	.4byte	.LFE5
	.2byte	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6
	.4byte	.LFE5
	.2byte	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL2
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LFE5
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL4
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL13
	.4byte	.LFE5
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL9
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x78
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x18
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x72
	.sleb128 0
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x78
	.sleb128 0
	.byte	0x1e
	.byte	0x40
	.byte	0x25
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x1d
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x72
	.sleb128 0
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x1e
	.byte	0x40
	.byte	0x25
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LFE5
	.2byte	0x20
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x1e
	.byte	0x40
	.byte	0x25
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL15
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL25
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL24
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x5
	.byte	0x74
	.sleb128 -32768
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL25
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL45
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x5
	.byte	0x73
	.sleb128 -32768
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL26
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL42-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL42
	.4byte	.LVL51
	.2byte	0x5
	.byte	0x7a
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x5
	.byte	0x7a
	.sleb128 -16384
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL27
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0xa
	.byte	0x7e
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x23
	.uleb128 0x10
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL29
	.4byte	.LVL42-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL42-1
	.4byte	.LVL55
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL55
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL59
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x5
	.byte	0x7a
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x5
	.byte	0x77
	.sleb128 -16384
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL30
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL60
	.4byte	.LVL64
	.2byte	0x5
	.byte	0x7b
	.sleb128 0
	.byte	0x31
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL65-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL65-1
	.4byte	.LVL66
	.2byte	0xa
	.byte	0x76
	.sleb128 0
	.byte	0x4f
	.byte	0x25
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL70
	.4byte	.LVL77
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL77
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x5
	.byte	0x76
	.sleb128 -16384
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL32
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL41
	.4byte	.LVL57
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL57
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL61
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x5
	.byte	0x7a
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x4
	.byte	0x73
	.sleb128 -4096
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x8
	.byte	0x75
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0xc
	.byte	0x75
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x1c
	.byte	0xa
	.2byte	0x4000
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL33
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL63
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x5
	.byte	0x75
	.sleb128 -16384
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LVL69-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL69-1
	.4byte	.LVL70
	.2byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL16
	.4byte	.LVL42-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL17
	.4byte	.LVL42-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL18
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL38
	.4byte	.LVL42-1
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x23
	.uleb128 0x8
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL19
	.4byte	.LVL42-1
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL20
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL28
	.4byte	.LVL42-1
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x23
	.uleb128 0x10
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL21
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL30
	.4byte	.LVL42-1
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x23
	.uleb128 0x14
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL22
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL31
	.4byte	.LVL42-1
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x23
	.uleb128 0x18
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL23
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL33
	.4byte	.LVL42-1
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x23
	.uleb128 0x1c
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
.LASF22:
	.string	"bd_addr_null"
.LASF7:
	.string	"__uint8_t"
.LASF24:
	.string	"block_values"
.LASF9:
	.string	"UINT8"
.LASF17:
	.string	"OI_UINT8"
.LASF4:
	.string	"unsigned int"
.LASF28:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/decoder/srce/synthesis-dct8.c"
.LASF27:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF20:
	.string	"SBC_BUFFER_T"
.LASF29:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF26:
	.string	"band_values"
.LASF14:
	.string	"long unsigned int"
.LASF16:
	.string	"OI_INT32"
.LASF3:
	.string	"short unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF25:
	.string	"channel_values"
.LASF31:
	.string	"dct2_8"
.LASF18:
	.string	"OI_UINT16"
.LASF19:
	.string	"OI_UINT32"
.LASF11:
	.string	"sizetype"
.LASF8:
	.string	"uint8_t"
.LASF5:
	.string	"long long int"
.LASF12:
	.string	"char"
.LASF21:
	.string	"bd_addr_any"
.LASF2:
	.string	"short int"
.LASF23:
	.string	"freq_values"
.LASF30:
	.string	"default_mul_32s_32s_hi"
.LASF13:
	.string	"long int"
.LASF15:
	.string	"OI_INT16"
.LASF0:
	.string	"signed char"
.LASF10:
	.string	"_Bool"
.LASF6:
	.string	"long long unsigned int"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
