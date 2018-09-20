	.file	"avrc_opt.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"p_msg != NULL"
	.align	4
.LC3:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avrc/avrc_opt.c"
	.align	4
.LC5:
	.string	"AVRC_META_CMD_BUF_SIZE > (AVRC_MIN_CMD_LEN + p_msg->vendor_len)"
	.section	.text.avrc_vendor_msg,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC2, __func__$4312
	.literal .LC4, .LC3
	.literal .LC6, .LC5
	.align	4
	.type	avrc_vendor_msg, @function
avrc_vendor_msg:
.LFB5:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avrc/avrc_opt.c"
	.loc 1 50 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 54 0
	bnez.n	a2, .L2
	.loc 1 54 0 is_stmt 0 discriminator 1
	l32r	a13, .LC1
	l32r	a12, .LC2
	movi.n	a11, 0x36
	l32r	a10, .LC4
	call8	__assert_func
.LVL1:
.L2:
	.loc 1 57 0 is_stmt 1
	l16ui	a3, a2, 12
	addi	a3, a3, 20
	movi	a8, 0x293
	bge	a8, a3, .L3
	.loc 1 57 0 is_stmt 0 discriminator 1
	l32r	a13, .LC6
	l32r	a12, .LC2
	movi.n	a11, 0x39
	l32r	a10, .LC4
	call8	__assert_func
.LVL2:
.L3:
	.loc 1 58 0 is_stmt 1
	movi	a10, 0x294
	call8	malloc
.LVL3:
	mov.n	a3, a10
.LVL4:
	beqz.n	a10, .L4
	.loc 1 64 0
	movi.n	a8, 0xf
	s16i	a8, a10, 4
.LVL5:
	.loc 1 66 0
	l8ui	a9, a2, 0
	extui	a9, a9, 0, 4
	s8i	a9, a10, 23
.LVL6:
	.loc 1 67 0
	l8ui	a9, a2, 1
	slli	a10, a9, 3
	l8ui	a9, a2, 2
	or	a9, a10, a9
	s8i	a9, a3, 24
.LVL7:
	.loc 1 68 0
	movi.n	a9, 0
	s8i	a9, a3, 25
.LVL8:
	.loc 1 69 0
	l32i.n	a9, a2, 4
	extui	a10, a9, 16, 8
	s8i	a10, a3, 26
.LVL9:
	extui	a10, a9, 8, 8
	s8i	a10, a3, 27
	addi	a10, a3, 29
.LVL10:
	s8i	a9, a3, 28
	.loc 1 70 0
	l16ui	a12, a2, 12
	beqz.n	a12, .L5
	.loc 1 70 0 is_stmt 0 discriminator 1
	l32i.n	a11, a2, 8
	beqz.n	a11, .L5
	.loc 1 71 0 is_stmt 1
	call8	memcpy
.LVL11:
.L5:
	.loc 1 73 0
	l16ui	a2, a2, 12
.LVL12:
	addi	a2, a2, 21
	l16ui	a8, a3, 4
	sub	a2, a2, a8
	s16i	a2, a3, 2
	.loc 1 74 0
	movi.n	a2, 1
	s16i	a2, a3, 6
.LVL13:
.L4:
	.loc 1 77 0
	mov.n	a2, a3
	retw.n
.LFE5:
	.size	avrc_vendor_msg, .-avrc_vendor_msg
	.section	.text.AVRC_UnitCmd,"ax",@progbits
	.align	4
	.global	AVRC_UnitCmd
	.type	AVRC_UnitCmd, @function
AVRC_UnitCmd:
.LFB6:
	.loc 1 101 0
.LVL14:
	entry	sp, 32
.LCFI1:
	extui	a2, a2, 0, 8
	extui	a3, a3, 0, 8
	.loc 1 105 0
	movi	a10, 0x120
	call8	malloc
.LVL15:
	mov.n	a4, a10
.LVL16:
	beqz.n	a10, .L7
	.loc 1 106 0
	movi.n	a8, 0xf
	mov.n	a5, a8
	s16i	a8, a10, 4
.LVL17:
	.loc 1 108 0
	movi.n	a8, 1
	s8i	a8, a10, 23
.LVL18:
	.loc 1 110 0
	movi.n	a8, -1
	s8i	a8, a10, 24
.LVL19:
	.loc 1 111 0
	movi.n	a8, 0x30
	s8i	a8, a10, 25
	.loc 1 112 0
	movi.n	a12, 5
	movi	a11, 0xff
	addi	a10, a10, 26
.LVL20:
	call8	memset
.LVL21:
	.loc 1 113 0
	extui	a8, a5, 0, 16
	movi.n	a9, 0x1a
	sub	a8, a9, a8
	addi	a8, a8, -3
	s16i	a8, a4, 2
	.loc 1 114 0
	movi.n	a5, 1
	s16i	a5, a4, 6
.LVL22:
.L7:
	.loc 1 116 0
	mov.n	a13, a4
	movi.n	a12, 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	AVCT_MsgReq
.LVL23:
	.loc 1 117 0
	mov.n	a2, a10
.LVL24:
	retw.n
.LFE6:
	.size	AVRC_UnitCmd, .-AVRC_UnitCmd
	.section	.text.AVRC_SubCmd,"ax",@progbits
	.align	4
	.global	AVRC_SubCmd
	.type	AVRC_SubCmd, @function
AVRC_SubCmd:
.LFB7:
	.loc 1 145 0
.LVL25:
	entry	sp, 32
.LCFI2:
	extui	a2, a2, 0, 8
	extui	a3, a3, 0, 8
	extui	a4, a4, 0, 8
	.loc 1 149 0
	movi	a10, 0x120
	call8	malloc
.LVL26:
	mov.n	a5, a10
.LVL27:
	beqz.n	a10, .L9
	.loc 1 150 0
	movi.n	a8, 0xf
	mov.n	a6, a8
	s16i	a8, a10, 4
.LVL28:
	.loc 1 152 0
	movi.n	a9, 1
	s8i	a9, a10, 23
.LVL29:
	.loc 1 154 0
	movi.n	a9, -1
	s8i	a9, a10, 24
.LVL30:
	.loc 1 155 0
	movi.n	a9, 0x31
	s8i	a9, a10, 25
.LVL31:
	.loc 1 156 0
	extui	a4, a4, 0, 3
.LVL32:
	slli	a4, a4, 4
	movi.n	a9, 7
	or	a4, a4, a9
	s8i	a4, a10, 26
	.loc 1 157 0
	movi.n	a12, 4
	movi	a11, 0xff
	addi	a10, a10, 27
.LVL33:
	call8	memset
.LVL34:
	.loc 1 158 0
	extui	a6, a6, 0, 16
	movi.n	a4, 0x1b
	sub	a6, a4, a6
	addi	a6, a6, -4
	s16i	a6, a5, 2
	.loc 1 159 0
	movi.n	a4, 1
	s16i	a4, a5, 6
.LVL35:
.L9:
	.loc 1 161 0
	mov.n	a13, a5
	movi.n	a12, 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	AVCT_MsgReq
.LVL36:
	.loc 1 162 0
	mov.n	a2, a10
.LVL37:
	retw.n
.LFE7:
	.size	AVRC_SubCmd, .-AVRC_SubCmd
	.section	.text.AVRC_VendorCmd,"ax",@progbits
	.align	4
	.global	AVRC_VendorCmd
	.type	AVRC_VendorCmd, @function
AVRC_VendorCmd:
.LFB8:
	.loc 1 188 0
.LVL38:
	entry	sp, 32
.LCFI3:
	extui	a2, a2, 0, 8
	extui	a3, a3, 0, 8
	.loc 1 189 0
	mov.n	a10, a4
	call8	avrc_vendor_msg
.LVL39:
	.loc 1 190 0
	beqz.n	a10, .L12
	.loc 1 191 0
	mov.n	a13, a10
	movi.n	a12, 0
	mov.n	a11, a3
	mov.n	a10, a2
.LVL40:
	call8	AVCT_MsgReq
.LVL41:
	mov.n	a2, a10
.LVL42:
	retw.n
.LVL43:
.L12:
	.loc 1 193 0
	movi.n	a2, 1
	.loc 1 195 0
	retw.n
.LFE8:
	.size	AVRC_VendorCmd, .-AVRC_VendorCmd
	.section	.text.AVRC_VendorRsp,"ax",@progbits
	.align	4
	.global	AVRC_VendorRsp
	.type	AVRC_VendorRsp, @function
AVRC_VendorRsp:
.LFB9:
	.loc 1 224 0
.LVL44:
	entry	sp, 32
.LCFI4:
	extui	a2, a2, 0, 8
	extui	a3, a3, 0, 8
	.loc 1 225 0
	mov.n	a10, a4
	call8	avrc_vendor_msg
.LVL45:
	.loc 1 226 0
	beqz.n	a10, .L15
	.loc 1 227 0
	mov.n	a13, a10
	movi.n	a12, 2
	mov.n	a11, a3
	mov.n	a10, a2
.LVL46:
	call8	AVCT_MsgReq
.LVL47:
	mov.n	a2, a10
.LVL48:
	retw.n
.LVL49:
.L15:
	.loc 1 229 0
	movi.n	a2, 1
	.loc 1 231 0
	retw.n
.LFE9:
	.size	AVRC_VendorRsp, .-AVRC_VendorRsp
	.section	.rodata.__func__$4312,"a",@progbits
	.align	4
	.type	__func__$4312, @object
	.size	__func__$4312, 16
__func__$4312:
	.string	"avrc_vendor_msg"
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
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avrc_defs.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avct_api.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x5a6
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0xc
	.4byte	.LASF53
	.4byte	.LASF54
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
	.uleb128 0x5
	.byte	0x8
	.byte	0x4
	.byte	0xc6
	.4byte	0x10c
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x4
	.byte	0xc7
	.4byte	0x89
	.byte	0
	.uleb128 0x7
	.string	"len"
	.byte	0x4
	.byte	0xc8
	.4byte	0x89
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x4
	.byte	0xc9
	.4byte	0x89
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x4
	.byte	0xca
	.4byte	0x89
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x4
	.byte	0xcb
	.4byte	0x10c
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.4byte	0x7e
	.4byte	0x11b
	.uleb128 0x9
	.4byte	0x11b
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF21
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x4
	.byte	0xcc
	.4byte	0xc7
	.uleb128 0x8
	.4byte	0x9f
	.4byte	0x13d
	.uleb128 0xa
	.4byte	0x11b
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF23
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF24
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF25
	.uleb128 0xb
	.byte	0x4
	.4byte	0x122
	.uleb128 0xc
	.byte	0x4
	.byte	0x5
	.2byte	0x2f7
	.4byte	0x19c
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x5
	.2byte	0x2f8
	.4byte	0x9f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x5
	.2byte	0x2f9
	.4byte	0x9f
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x5
	.2byte	0x2fa
	.4byte	0x9f
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x5
	.2byte	0x2fd
	.4byte	0x9f
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.4byte	.LASF30
	.byte	0x5
	.2byte	0x2fe
	.4byte	0x15e
	.uleb128 0xc
	.byte	0x10
	.byte	0x5
	.2byte	0x315
	.4byte	0x1e6
	.uleb128 0xf
	.string	"hdr"
	.byte	0x5
	.2byte	0x316
	.4byte	0x19c
	.byte	0
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x5
	.2byte	0x317
	.4byte	0xb5
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x5
	.2byte	0x318
	.4byte	0x13d
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x5
	.2byte	0x319
	.4byte	0xaa
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.4byte	.LASF34
	.byte	0x5
	.2byte	0x31a
	.4byte	0x1a8
	.uleb128 0x10
	.4byte	.LASF55
	.byte	0x1
	.byte	0x31
	.4byte	0x158
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c9
	.uleb128 0x11
	.4byte	.LASF37
	.byte	0x1
	.byte	0x31
	.4byte	0x2c9
	.4byte	.LLST0
	.uleb128 0x12
	.4byte	.LASF35
	.byte	0x1
	.byte	0x33
	.4byte	0x158
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x13
	.4byte	.LASF36
	.byte	0x1
	.byte	0x34
	.4byte	0x13d
	.4byte	.LLST1
	.uleb128 0x14
	.4byte	.LASF56
	.4byte	0x2df
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4312
	.uleb128 0x15
	.4byte	.LVL1
	.4byte	0x573
	.4byte	0x274
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x36
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4312
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL2
	.4byte	0x573
	.4byte	0x2a3
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x39
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4312
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x15
	.4byte	.LVL3
	.4byte	0x57e
	.4byte	0x2b8
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x294
	.byte	0
	.uleb128 0x17
	.4byte	.LVL11
	.4byte	0x589
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 29
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1e6
	.uleb128 0x8
	.4byte	0x143
	.4byte	0x2df
	.uleb128 0xa
	.4byte	0x11b
	.byte	0xf
	.byte	0
	.uleb128 0x18
	.4byte	0x2cf
	.uleb128 0x19
	.4byte	.LASF40
	.byte	0x1
	.byte	0x64
	.4byte	0xaa
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x38b
	.uleb128 0x11
	.4byte	.LASF38
	.byte	0x1
	.byte	0x64
	.4byte	0x9f
	.4byte	.LLST2
	.uleb128 0x1a
	.4byte	.LASF39
	.byte	0x1
	.byte	0x64
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x12
	.4byte	.LASF35
	.byte	0x1
	.byte	0x66
	.4byte	0x158
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x13
	.4byte	.LASF36
	.byte	0x1
	.byte	0x67
	.4byte	0x13d
	.4byte	.LLST3
	.uleb128 0x15
	.4byte	.LVL15
	.4byte	0x57e
	.4byte	0x34a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x120
	.byte	0
	.uleb128 0x15
	.4byte	.LVL21
	.4byte	0x592
	.4byte	0x369
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 26
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xff
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x17
	.4byte	.LVL23
	.4byte	0x59d
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF41
	.byte	0x1
	.byte	0x90
	.4byte	0xaa
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x441
	.uleb128 0x11
	.4byte	.LASF38
	.byte	0x1
	.byte	0x90
	.4byte	0x9f
	.4byte	.LLST4
	.uleb128 0x1a
	.4byte	.LASF39
	.byte	0x1
	.byte	0x90
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x11
	.4byte	.LASF42
	.byte	0x1
	.byte	0x90
	.4byte	0x9f
	.4byte	.LLST5
	.uleb128 0x12
	.4byte	.LASF35
	.byte	0x1
	.byte	0x92
	.4byte	0x158
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x13
	.4byte	.LASF36
	.byte	0x1
	.byte	0x93
	.4byte	0x13d
	.4byte	.LLST6
	.uleb128 0x15
	.4byte	.LVL26
	.4byte	0x57e
	.4byte	0x400
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x120
	.byte	0
	.uleb128 0x15
	.4byte	.LVL34
	.4byte	0x592
	.4byte	0x41f
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 27
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xff
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x17
	.4byte	.LVL36
	.4byte	0x59d
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF43
	.byte	0x1
	.byte	0xbb
	.4byte	0xaa
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4c2
	.uleb128 0x11
	.4byte	.LASF38
	.byte	0x1
	.byte	0xbb
	.4byte	0x9f
	.4byte	.LLST7
	.uleb128 0x1a
	.4byte	.LASF39
	.byte	0x1
	.byte	0xbb
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.4byte	.LASF37
	.byte	0x1
	.byte	0xbb
	.4byte	0x2c9
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x13
	.4byte	.LASF44
	.byte	0x1
	.byte	0xbd
	.4byte	0x158
	.4byte	.LLST8
	.uleb128 0x15
	.4byte	.LVL39
	.4byte	0x1f2
	.4byte	0x4a6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL41
	.4byte	0x59d
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF45
	.byte	0x1
	.byte	0xdf
	.4byte	0xaa
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x543
	.uleb128 0x11
	.4byte	.LASF38
	.byte	0x1
	.byte	0xdf
	.4byte	0x9f
	.4byte	.LLST9
	.uleb128 0x1a
	.4byte	.LASF39
	.byte	0x1
	.byte	0xdf
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.4byte	.LASF37
	.byte	0x1
	.byte	0xdf
	.4byte	0x2c9
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x13
	.4byte	.LASF44
	.byte	0x1
	.byte	0xe1
	.4byte	0x158
	.4byte	.LLST10
	.uleb128 0x15
	.4byte	.LVL45
	.4byte	0x1f2
	.4byte	0x527
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL47
	.4byte	0x59d
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF46
	.byte	0x4
	.2byte	0x2cc
	.4byte	0x556
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x18
	.4byte	0x12d
	.uleb128 0x1b
	.4byte	.LASF47
	.byte	0x4
	.2byte	0x2cd
	.4byte	0x56e
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x12d
	.uleb128 0x1c
	.4byte	.LASF48
	.4byte	.LASF48
	.byte	0x6
	.byte	0x29
	.uleb128 0x1c
	.4byte	.LASF49
	.4byte	.LASF49
	.byte	0x7
	.byte	0x65
	.uleb128 0x1d
	.4byte	.LASF57
	.4byte	.LASF57
	.uleb128 0x1c
	.4byte	.LASF50
	.4byte	.LASF50
	.byte	0x8
	.byte	0x19
	.uleb128 0x1e
	.4byte	.LASF51
	.4byte	.LASF51
	.byte	0x9
	.2byte	0x110
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
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x3
	.byte	0x73
	.sleb128 24
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x3
	.byte	0x73
	.sleb128 26
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x3
	.byte	0x73
	.sleb128 27
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x3
	.byte	0x73
	.sleb128 28
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11-1
	.4byte	.LVL13
	.2byte	0x3
	.byte	0x73
	.sleb128 29
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL14
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x3
	.byte	0x74
	.sleb128 24
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x3
	.byte	0x74
	.sleb128 26
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21-1
	.4byte	.LVL22
	.2byte	0x3
	.byte	0x74
	.sleb128 26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL25
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
.LLST5:
	.4byte	.LVL25
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL32
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x3
	.byte	0x75
	.sleb128 24
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x3
	.byte	0x75
	.sleb128 26
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x3
	.byte	0x75
	.sleb128 27
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL34-1
	.4byte	.LVL35
	.2byte	0x3
	.byte	0x75
	.sleb128 27
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL38
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL40
	.4byte	.LVL41-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL43
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL44
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL46
	.4byte	.LVL47-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL49
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5a
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
.LASF42:
	.string	"page"
.LASF51:
	.string	"AVCT_MsgReq"
.LASF23:
	.string	"char"
.LASF3:
	.string	"__uint8_t"
.LASF47:
	.string	"bd_addr_null"
.LASF18:
	.string	"offset"
.LASF13:
	.string	"UINT8"
.LASF19:
	.string	"layer_specific"
.LASF22:
	.string	"BT_HDR"
.LASF40:
	.string	"AVRC_UnitCmd"
.LASF2:
	.string	"short int"
.LASF55:
	.string	"avrc_vendor_msg"
.LASF56:
	.string	"__func__"
.LASF45:
	.string	"AVRC_VendorRsp"
.LASF20:
	.string	"data"
.LASF54:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF31:
	.string	"company_id"
.LASF1:
	.string	"unsigned char"
.LASF38:
	.string	"handle"
.LASF25:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF6:
	.string	"__uint32_t"
.LASF50:
	.string	"memset"
.LASF4:
	.string	"__uint16_t"
.LASF34:
	.string	"tAVRC_MSG_VENDOR"
.LASF14:
	.string	"UINT16"
.LASF26:
	.string	"ctype"
.LASF27:
	.string	"subunit_type"
.LASF36:
	.string	"p_data"
.LASF48:
	.string	"__assert_func"
.LASF17:
	.string	"event"
.LASF29:
	.string	"opcode"
.LASF7:
	.string	"unsigned int"
.LASF9:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint8_t"
.LASF37:
	.string	"p_msg"
.LASF0:
	.string	"signed char"
.LASF28:
	.string	"subunit_id"
.LASF52:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF21:
	.string	"sizetype"
.LASF8:
	.string	"long long int"
.LASF32:
	.string	"p_vendor_data"
.LASF46:
	.string	"bd_addr_any"
.LASF15:
	.string	"UINT32"
.LASF53:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avrc/avrc_opt.c"
.LASF57:
	.string	"memcpy"
.LASF43:
	.string	"AVRC_VendorCmd"
.LASF11:
	.string	"uint16_t"
.LASF41:
	.string	"AVRC_SubCmd"
.LASF12:
	.string	"uint32_t"
.LASF24:
	.string	"long int"
.LASF44:
	.string	"p_buf"
.LASF33:
	.string	"vendor_len"
.LASF39:
	.string	"label"
.LASF16:
	.string	"_Bool"
.LASF30:
	.string	"tAVRC_HDR"
.LASF49:
	.string	"malloc"
.LASF35:
	.string	"p_cmd"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
