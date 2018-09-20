	.file	"chardata.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"s != NULL"
	.align	4
.LC3:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/expat/port/chardata.c"
	.section	.text.xmlstrlen,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC2, __func__$3549
	.literal .LC4, .LC3
	.align	4
	.type	xmlstrlen, @function
xmlstrlen:
.LFB0:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/port/chardata.c"
	.loc 1 21 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 23 0
	bnez.n	a2, .L4
	.loc 1 23 0 is_stmt 0 discriminator 1
	l32r	a13, .LC1
	l32r	a12, .LC2
	movi.n	a11, 0x17
	l32r	a10, .LC4
	call8	__assert_func
.LVL2:
.L3:
	.loc 1 25 0 is_stmt 1
	addi.n	a8, a8, 1
.LVL3:
	j	.L2
.LVL4:
.L4:
	movi.n	a8, 0
.LVL5:
.L2:
	.loc 1 24 0
	add.n	a9, a2, a8
	l8ui	a9, a9, 0
	bnez.n	a9, .L3
	.loc 1 27 0
	mov.n	a2, a8
.LVL6:
	retw.n
.LFE0:
	.size	xmlstrlen, .-xmlstrlen
	.section	.rodata.str1.4
	.align	4
.LC5:
	.string	"storage != NULL"
	.section	.text.CharData_Init,"ax",@progbits
	.literal_position
	.literal .LC6, .LC5
	.literal .LC7, __func__$3556
	.literal .LC8, .LC3
	.align	4
	.global	CharData_Init
	.type	CharData_Init, @function
CharData_Init:
.LFB1:
	.loc 1 32 0
.LVL7:
	entry	sp, 32
.LCFI1:
	.loc 1 33 0
	bnez.n	a2, .L6
	.loc 1 33 0 is_stmt 0 discriminator 1
	l32r	a13, .LC6
	l32r	a12, .LC7
	movi.n	a11, 0x21
	l32r	a10, .LC8
	call8	__assert_func
.LVL8:
.L6:
	.loc 1 34 0 is_stmt 1
	movi.n	a8, -1
	s32i.n	a8, a2, 0
	retw.n
.LFE1:
	.size	CharData_Init, .-CharData_Init
	.section	.text.CharData_AppendString,"ax",@progbits
	.literal_position
	.literal .LC9, .LC0
	.literal .LC10, __func__$3563
	.literal .LC11, .LC3
	.align	4
	.global	CharData_AppendString
	.type	CharData_AppendString, @function
CharData_AppendString:
.LFB2:
	.loc 1 39 0
.LVL9:
	entry	sp, 32
.LCFI2:
.LVL10:
	.loc 1 43 0
	bnez.n	a3, .L8
	.loc 1 43 0 is_stmt 0 discriminator 1
	l32r	a13, .LC9
	l32r	a12, .LC10
	movi.n	a11, 0x2b
	l32r	a10, .LC11
	call8	__assert_func
.LVL11:
.L8:
	.loc 1 44 0 is_stmt 1
	mov.n	a10, a3
	call8	strlen
.LVL12:
	mov.n	a4, a10
.LVL13:
	.loc 1 45 0
	l32i.n	a8, a2, 0
	bgez	a8, .L9
	.loc 1 46 0
	movi.n	a8, 0
	s32i.n	a8, a2, 0
.L9:
	.loc 1 47 0
	l32i.n	a9, a2, 0
	add.n	a10, a10, a9
	movi	a8, 0x400
	bge	a8, a10, .L10
	.loc 1 48 0
	sub	a4, a8, a9
.LVL14:
.L10:
	.loc 1 50 0
	add.n	a8, a4, a9
	movi	a10, 0x3ff
	blt	a10, a8, .L7
	.loc 1 51 0
	addi.n	a10, a2, 4
	mov.n	a12, a4
	mov.n	a11, a3
	add.n	a10, a10, a9
	call8	memcpy
.LVL15:
	.loc 1 52 0
	l32i.n	a3, a2, 0
.LVL16:
	add.n	a4, a3, a4
.LVL17:
	s32i.n	a4, a2, 0
.L7:
	retw.n
.LFE2:
	.size	CharData_AppendString, .-CharData_AppendString
	.section	.text.CharData_AppendXMLChars,"ax",@progbits
	.literal_position
	.literal .LC12, .LC5
	.literal .LC13, __func__$3570
	.literal .LC14, .LC3
	.literal .LC15, .LC0
	.align	4
	.global	CharData_AppendXMLChars
	.type	CharData_AppendXMLChars, @function
CharData_AppendXMLChars:
.LFB3:
	.loc 1 58 0
.LVL18:
	entry	sp, 32
.LCFI3:
	.loc 1 61 0
	bnez.n	a2, .L13
	.loc 1 61 0 is_stmt 0 discriminator 1
	l32r	a13, .LC12
	l32r	a12, .LC13
	movi.n	a11, 0x3d
	l32r	a10, .LC14
	call8	__assert_func
.LVL19:
.L13:
	.loc 1 62 0 is_stmt 1
	bnez.n	a3, .L14
	.loc 1 62 0 is_stmt 0 discriminator 1
	l32r	a13, .LC15
	l32r	a12, .LC13
	movi.n	a11, 0x3e
	l32r	a10, .LC14
	call8	__assert_func
.LVL20:
.L14:
	.loc 1 64 0 is_stmt 1
	l32i.n	a8, a2, 0
	bgez	a8, .L15
	.loc 1 65 0
	movi.n	a8, 0
	s32i.n	a8, a2, 0
.L15:
	.loc 1 66 0
	bgez	a4, .L16
	.loc 1 67 0
	mov.n	a10, a3
	call8	xmlstrlen
.LVL21:
	mov.n	a4, a10
.LVL22:
.L16:
	.loc 1 68 0
	l32i.n	a9, a2, 0
	add.n	a8, a4, a9
	movi	a10, 0x400
	bge	a10, a8, .L17
	.loc 1 69 0
	sub	a4, a10, a9
.LVL23:
.L17:
	.loc 1 71 0
	add.n	a8, a4, a9
	movi	a10, 0x3ff
	blt	a10, a8, .L12
	.loc 1 72 0
	addi.n	a10, a2, 4
	mov.n	a12, a4
	mov.n	a11, a3
	add.n	a10, a10, a9
	call8	memcpy
.LVL24:
	.loc 1 74 0
	l32i.n	a3, a2, 0
.LVL25:
	add.n	a4, a3, a4
.LVL26:
	s32i.n	a4, a2, 0
.L12:
	retw.n
.LFE3:
	.size	CharData_AppendXMLChars, .-CharData_AppendXMLChars
	.section	.rodata.str1.4
	.align	4
.LC19:
	.string	"expected != NULL"
	.align	4
.LC21:
	.string	"wrong number of data characters: got %d, expected %d:\n%s"
	.align	4
.LC23:
	.string	"got bad data bytes"
	.section	.text.CharData_CheckString,"ax",@progbits
	.literal_position
	.literal .LC16, .LC5
	.literal .LC17, __func__$3578
	.literal .LC18, .LC3
	.literal .LC20, .LC19
	.literal .LC22, .LC21
	.literal .LC24, .LC23
	.align	4
	.global	CharData_CheckString
	.type	CharData_CheckString, @function
CharData_CheckString:
.LFB4:
	.loc 1 80 0
.LVL27:
	entry	sp, 1312
.LCFI4:
	.loc 1 85 0
	bnez.n	a2, .L20
	.loc 1 85 0 is_stmt 0 discriminator 1
	l32r	a13, .LC16
	l32r	a12, .LC17
	movi.n	a11, 0x55
	l32r	a10, .LC18
	call8	__assert_func
.LVL28:
.L20:
	.loc 1 86 0 is_stmt 1
	bnez.n	a3, .L21
	.loc 1 86 0 is_stmt 0 discriminator 1
	l32r	a13, .LC20
	l32r	a12, .LC17
	movi.n	a11, 0x56
	l32r	a10, .LC18
	call8	__assert_func
.LVL29:
.L21:
	.loc 1 87 0 is_stmt 1
	l32i.n	a8, a2, 0
	movi.n	a4, 0
	max	a4, a8, a4
.LVL30:
	.loc 1 88 0
	mov.n	a10, a3
	call8	strlen
.LVL31:
	.loc 1 89 0
	beq	a4, a10, .L22
	.loc 1 91 0
	addi.n	a14, a2, 4
	mov.n	a13, a10
	mov.n	a12, a4
	l32r	a11, .LC22
	mov.n	a10, sp
.LVL32:
	call8	sprintf
.LVL33:
	.loc 1 97 0
	mov.n	a13, sp
	movi	a12, 0x61
	l32r	a11, .LC18
	movi.n	a10, 0
	call8	_fail_unless
.LVL34:
	.loc 1 98 0
	movi.n	a2, 0
.LVL35:
	retw.n
.LVL36:
.L22:
	.loc 1 100 0
	mov.n	a12, a10
	addi.n	a11, a2, 4
	mov.n	a10, a3
.LVL37:
	call8	memcmp
.LVL38:
	beqz.n	a10, .L24
	.loc 1 101 0
	l32r	a13, .LC24
	movi	a12, 0x65
	l32r	a11, .LC18
	movi.n	a10, 0
	call8	_fail_unless
.LVL39:
	.loc 1 102 0
	movi.n	a2, 0
.LVL40:
	retw.n
.LVL41:
.L24:
	.loc 1 104 0
	movi.n	a2, 1
.LVL42:
	.loc 1 105 0
	retw.n
.LFE4:
	.size	CharData_CheckString, .-CharData_CheckString
	.section	.rodata.str1.4
	.align	4
.LC28:
	.string	"wrong number of data characters: got %d, expected %d"
	.section	.text.CharData_CheckXMLChars,"ax",@progbits
	.literal_position
	.literal .LC25, .LC5
	.literal .LC26, __func__$3586
	.literal .LC27, .LC3
	.literal .LC29, .LC28
	.literal .LC30, .LC23
	.align	4
	.global	CharData_CheckXMLChars
	.type	CharData_CheckXMLChars, @function
CharData_CheckXMLChars:
.LFB5:
	.loc 1 109 0
.LVL43:
	entry	sp, 1056
.LCFI5:
	.loc 1 111 0
	mov.n	a10, a3
	call8	xmlstrlen
.LVL44:
	.loc 1 114 0
	bnez.n	a2, .L26
	.loc 1 114 0 is_stmt 0 discriminator 1
	l32r	a13, .LC25
	l32r	a12, .LC26
	movi	a11, 0x72
	l32r	a10, .LC27
.LVL45:
	call8	__assert_func
.LVL46:
.L26:
	.loc 1 115 0 is_stmt 1
	l32i.n	a12, a2, 0
	movi.n	a8, 0
	max	a12, a12, a8
.LVL47:
	.loc 1 116 0
	beq	a10, a12, .L27
	.loc 1 117 0
	mov.n	a13, a10
	l32r	a11, .LC29
	mov.n	a10, sp
.LVL48:
	call8	sprintf
.LVL49:
	.loc 1 119 0
	mov.n	a13, sp
	movi	a12, 0x77
	l32r	a11, .LC27
	movi.n	a10, 0
	call8	_fail_unless
.LVL50:
	.loc 1 120 0
	movi.n	a2, 0
.LVL51:
	retw.n
.LVL52:
.L27:
	.loc 1 122 0
	mov.n	a12, a10
.LVL53:
	addi.n	a11, a2, 4
	mov.n	a10, a3
.LVL54:
	call8	memcmp
.LVL55:
	beqz.n	a10, .L29
	.loc 1 123 0
	l32r	a13, .LC30
	movi	a12, 0x7b
	l32r	a11, .LC27
	movi.n	a10, 0
	call8	_fail_unless
.LVL56:
	.loc 1 124 0
	movi.n	a2, 0
.LVL57:
	retw.n
.LVL58:
.L29:
	.loc 1 126 0
	movi.n	a2, 1
.LVL59:
	.loc 1 127 0
	retw.n
.LFE5:
	.size	CharData_CheckXMLChars, .-CharData_CheckXMLChars
	.section	.rodata.__func__$3586,"a",@progbits
	.align	4
	.type	__func__$3586, @object
	.size	__func__$3586, 23
__func__$3586:
	.string	"CharData_CheckXMLChars"
	.section	.rodata.__func__$3578,"a",@progbits
	.align	4
	.type	__func__$3578, @object
	.size	__func__$3578, 21
__func__$3578:
	.string	"CharData_CheckString"
	.section	.rodata.__func__$3549,"a",@progbits
	.align	4
	.type	__func__$3549, @object
	.size	__func__$3549, 10
__func__$3549:
	.string	"xmlstrlen"
	.section	.rodata.__func__$3570,"a",@progbits
	.align	4
	.type	__func__$3570, @object
	.size	__func__$3570, 24
__func__$3570:
	.string	"CharData_AppendXMLChars"
	.section	.rodata.__func__$3563,"a",@progbits
	.align	4
	.type	__func__$3563, @object
	.size	__func__$3563, 22
__func__$3563:
	.string	"CharData_AppendString"
	.section	.rodata.__func__$3556,"a",@progbits
	.align	4
	.type	__func__$3556, @object
	.size	__func__$3556, 14
__func__$3556:
	.string	"CharData_Init"
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
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI2-.LFB2
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI3-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI4-.LFB4
	.byte	0xe
	.uleb128 0x520
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI5-.LFB5
	.byte	0xe
	.uleb128 0x420
	.align	4
.LEFDE10:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/port/include/chardata.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/expat_external.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdio.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/port/include/minicheck.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x6d1
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0xc
	.4byte	.LASF31
	.4byte	.LASF32
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.4byte	0x39
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF0
	.uleb128 0x5
	.4byte	0x32
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x3
	.byte	0x6c
	.4byte	0x32
	.uleb128 0x3
	.byte	0x4
	.4byte	0x95
	.uleb128 0x5
	.4byte	0x84
	.uleb128 0x7
	.2byte	0x404
	.byte	0x2
	.byte	0x13
	.4byte	0xbc
	.uleb128 0x8
	.4byte	.LASF11
	.byte	0x2
	.byte	0x14
	.4byte	0x25
	.byte	0
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x2
	.byte	0x15
	.4byte	0xbc
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.4byte	0x84
	.4byte	0xcd
	.uleb128 0xa
	.4byte	0x76
	.2byte	0x3ff
	.byte	0
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x2
	.byte	0x16
	.4byte	0x9a
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x1
	.byte	0x14
	.4byte	0x25
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x147
	.uleb128 0xc
	.string	"s"
	.byte	0x1
	.byte	0x14
	.4byte	0x8f
	.4byte	.LLST0
	.uleb128 0xd
	.string	"len"
	.byte	0x1
	.byte	0x16
	.4byte	0x25
	.4byte	.LLST1
	.uleb128 0xe
	.4byte	.LASF16
	.4byte	0x157
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3549
	.uleb128 0xf
	.4byte	.LVL2
	.4byte	0x694
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x47
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3549
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x32
	.4byte	0x157
	.uleb128 0x11
	.4byte	0x76
	.byte	0x9
	.byte	0
	.uleb128 0x5
	.4byte	0x147
	.uleb128 0x12
	.4byte	.LASF17
	.byte	0x1
	.byte	0x1f
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b9
	.uleb128 0x13
	.4byte	.LASF15
	.byte	0x1
	.byte	0x1f
	.4byte	0x1b9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xe
	.4byte	.LASF16
	.4byte	0x1cf
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3556
	.uleb128 0xf
	.4byte	.LVL8
	.4byte	0x694
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x21
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3556
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.4byte	0xcd
	.uleb128 0x9
	.4byte	0x32
	.4byte	0x1cf
	.uleb128 0x11
	.4byte	0x76
	.byte	0xd
	.byte	0
	.uleb128 0x5
	.4byte	0x1bf
	.uleb128 0x12
	.4byte	.LASF18
	.byte	0x1
	.byte	0x26
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x288
	.uleb128 0x13
	.4byte	.LASF15
	.byte	0x1
	.byte	0x26
	.4byte	0x1b9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xc
	.string	"s"
	.byte	0x1
	.byte	0x26
	.4byte	0x2c
	.4byte	.LLST2
	.uleb128 0x14
	.4byte	.LASF19
	.byte	0x1
	.byte	0x28
	.4byte	0x25
	.2byte	0x400
	.uleb128 0xd
	.string	"len"
	.byte	0x1
	.byte	0x29
	.4byte	0x25
	.4byte	.LLST3
	.uleb128 0xe
	.4byte	.LASF16
	.4byte	0x298
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3563
	.uleb128 0x15
	.4byte	.LVL11
	.4byte	0x694
	.4byte	0x25d
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x2b
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3563
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL12
	.4byte	0x69f
	.4byte	0x271
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL15
	.4byte	0x6aa
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x32
	.4byte	0x298
	.uleb128 0x11
	.4byte	0x76
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.4byte	0x288
	.uleb128 0x12
	.4byte	.LASF20
	.byte	0x1
	.byte	0x39
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x380
	.uleb128 0x13
	.4byte	.LASF15
	.byte	0x1
	.byte	0x39
	.4byte	0x1b9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xc
	.string	"s"
	.byte	0x1
	.byte	0x39
	.4byte	0x8f
	.4byte	.LLST4
	.uleb128 0xc
	.string	"len"
	.byte	0x1
	.byte	0x39
	.4byte	0x25
	.4byte	.LLST5
	.uleb128 0x14
	.4byte	.LASF19
	.byte	0x1
	.byte	0x3b
	.4byte	0x25
	.2byte	0x400
	.uleb128 0xe
	.4byte	.LASF16
	.4byte	0x390
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3570
	.uleb128 0x15
	.4byte	.LVL19
	.4byte	0x694
	.4byte	0x326
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x3d
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3570
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x15
	.4byte	.LVL20
	.4byte	0x694
	.4byte	0x355
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x3e
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3570
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL21
	.4byte	0xd8
	.4byte	0x369
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL24
	.4byte	0x6aa
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x32
	.4byte	0x390
	.uleb128 0x11
	.4byte	0x76
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.4byte	0x380
	.uleb128 0x16
	.4byte	.LASF23
	.byte	0x1
	.byte	0x4f
	.4byte	0x25
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x50b
	.uleb128 0x17
	.4byte	.LASF15
	.byte	0x1
	.byte	0x4f
	.4byte	0x1b9
	.4byte	.LLST6
	.uleb128 0x13
	.4byte	.LASF21
	.byte	0x1
	.byte	0x4f
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x18
	.4byte	.LASF22
	.byte	0x1
	.byte	0x51
	.4byte	0x50b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1312
	.uleb128 0xd
	.string	"len"
	.byte	0x1
	.byte	0x52
	.4byte	0x25
	.4byte	.LLST7
	.uleb128 0x18
	.4byte	.LASF11
	.byte	0x1
	.byte	0x53
	.4byte	0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xe
	.4byte	.LASF16
	.4byte	0x52c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3578
	.uleb128 0x15
	.4byte	.LVL28
	.4byte	0x694
	.4byte	0x433
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x55
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3578
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x15
	.4byte	.LVL29
	.4byte	0x694
	.4byte	0x462
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x56
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3578
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0
	.uleb128 0x15
	.4byte	.LVL31
	.4byte	0x69f
	.4byte	0x476
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL33
	.4byte	0x6b3
	.4byte	0x4a0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1312
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.byte	0
	.uleb128 0x15
	.4byte	.LVL34
	.4byte	0x6be
	.4byte	0x4c9
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x61
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1312
	.byte	0
	.uleb128 0x15
	.4byte	.LVL38
	.4byte	0x6c9
	.4byte	0x4e3
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.byte	0
	.uleb128 0xf
	.4byte	.LVL39
	.4byte	0x6be
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x65
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x32
	.4byte	0x51c
	.uleb128 0xa
	.4byte	0x76
	.2byte	0x4ff
	.byte	0
	.uleb128 0x9
	.4byte	0x32
	.4byte	0x52c
	.uleb128 0x11
	.4byte	0x76
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.4byte	0x51c
	.uleb128 0x16
	.4byte	.LASF24
	.byte	0x1
	.byte	0x6c
	.4byte	0x25
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x66e
	.uleb128 0x17
	.4byte	.LASF15
	.byte	0x1
	.byte	0x6c
	.4byte	0x1b9
	.4byte	.LLST8
	.uleb128 0x13
	.4byte	.LASF21
	.byte	0x1
	.byte	0x6c
	.4byte	0x8f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x18
	.4byte	.LASF22
	.byte	0x1
	.byte	0x6e
	.4byte	0x66e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0xd
	.string	"len"
	.byte	0x1
	.byte	0x6f
	.4byte	0x25
	.4byte	.LLST9
	.uleb128 0x19
	.4byte	.LASF11
	.byte	0x1
	.byte	0x70
	.4byte	0x25
	.4byte	.LLST10
	.uleb128 0xe
	.4byte	.LASF16
	.4byte	0x68f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3586
	.uleb128 0x15
	.4byte	.LVL44
	.4byte	0xd8
	.4byte	0x5b6
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL46
	.4byte	0x694
	.4byte	0x5e5
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x72
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3586
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x15
	.4byte	.LVL49
	.4byte	0x6b3
	.4byte	0x603
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC28
	.byte	0
	.uleb128 0x15
	.4byte	.LVL50
	.4byte	0x6be
	.4byte	0x62c
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x77
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.byte	0
	.uleb128 0x15
	.4byte	.LVL55
	.4byte	0x6c9
	.4byte	0x646
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.byte	0
	.uleb128 0xf
	.4byte	.LVL56
	.4byte	0x6be
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x7b
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x32
	.4byte	0x67f
	.uleb128 0xa
	.4byte	0x76
	.2byte	0x3ff
	.byte	0
	.uleb128 0x9
	.4byte	0x32
	.4byte	0x68f
	.uleb128 0x11
	.4byte	0x76
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.4byte	0x67f
	.uleb128 0x1a
	.4byte	.LASF25
	.4byte	.LASF25
	.byte	0x4
	.byte	0x29
	.uleb128 0x1a
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x5
	.byte	0x21
	.uleb128 0x1b
	.4byte	.LASF34
	.4byte	.LASF34
	.uleb128 0x1a
	.4byte	.LASF27
	.4byte	.LASF27
	.byte	0x6
	.byte	0xde
	.uleb128 0x1a
	.4byte	.LASF28
	.4byte	.LASF28
	.byte	0x7
	.byte	0x50
	.uleb128 0x1a
	.4byte	.LASF29
	.4byte	.LASF29
	.byte	0x5
	.byte	0x16
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
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x5
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
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL9
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL13
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL18
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL25
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL18
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL22
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL27
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL32
	.4byte	.LVL33-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL37
	.4byte	.LVL38-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL43
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL59
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL48
	.4byte	.LVL49-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL54
	.4byte	.LVL55-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL47
	.4byte	.LVL49-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL53
	.4byte	.LVL55-1
	.2byte	0xf
	.byte	0x72
	.sleb128 0
	.byte	0x6
	.byte	0x12
	.byte	0x78
	.sleb128 0
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x44
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
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF20:
	.string	"CharData_AppendXMLChars"
.LASF29:
	.string	"memcmp"
.LASF32:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\expat"
.LASF11:
	.string	"count"
.LASF1:
	.string	"unsigned int"
.LASF13:
	.string	"XML_Char"
.LASF16:
	.string	"__func__"
.LASF12:
	.string	"data"
.LASF4:
	.string	"unsigned char"
.LASF28:
	.string	"_fail_unless"
.LASF24:
	.string	"CharData_CheckXMLChars"
.LASF19:
	.string	"maxchars"
.LASF21:
	.string	"expected"
.LASF17:
	.string	"CharData_Init"
.LASF10:
	.string	"long unsigned int"
.LASF2:
	.string	"short unsigned int"
.LASF18:
	.string	"CharData_AppendString"
.LASF31:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/expat/port/chardata.c"
.LASF25:
	.string	"__assert_func"
.LASF14:
	.string	"CharData"
.LASF26:
	.string	"strlen"
.LASF7:
	.string	"long long unsigned int"
.LASF33:
	.string	"xmlstrlen"
.LASF30:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF9:
	.string	"sizetype"
.LASF6:
	.string	"long long int"
.LASF0:
	.string	"char"
.LASF34:
	.string	"memcpy"
.LASF5:
	.string	"short int"
.LASF22:
	.string	"buffer"
.LASF23:
	.string	"CharData_CheckString"
.LASF8:
	.string	"long int"
.LASF3:
	.string	"signed char"
.LASF15:
	.string	"storage"
.LASF27:
	.string	"sprintf"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
