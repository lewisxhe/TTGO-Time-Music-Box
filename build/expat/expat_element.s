	.file	"expat_element.c"
	.text
.Ltext0:
	.section	.text.endElement,"ax",@progbits
	.align	4
	.type	endElement, @function
endElement:
.LFB1:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/port/expat_element.c"
	.loc 1 31 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 35 0
	l32i.n	a8, a2, 0
	addi.n	a8, a8, -1
	s32i.n	a8, a2, 0
	retw.n
.LFE1:
	.size	endElement, .-endElement
	.section	.text.startElement,"ax",@progbits
	.align	4
	.type	startElement, @function
startElement:
.LFB0:
	.loc 1 18 0
.LVL2:
	entry	sp, 32
.LCFI1:
.LVL3:
	.loc 1 23 0
	movi.n	a4, 0
.LVL4:
	j	.L3
.LVL5:
.L9:
	.loc 1 24 0
	call8	__getreent
.LVL6:
	l32i.n	a9, a10, 8
	l32i.n	a8, a9, 8
	addi.n	a8, a8, -1
	s32i.n	a8, a9, 8
	bgez	a8, .L4
	.loc 1 24 0 is_stmt 0 discriminator 1
	call8	__getreent
.LVL7:
	l32i.n	a5, a10, 8
	l32i.n	a5, a5, 8
	call8	__getreent
.LVL8:
	l32i.n	a8, a10, 8
	l32i.n	a8, a8, 24
	blt	a5, a8, .L5
	.loc 1 24 0 discriminator 3
	call8	__getreent
.LVL9:
	l32i.n	a5, a10, 8
	l32i.n	a5, a5, 0
	movi.n	a8, 9
	s8i	a8, a5, 0
	call8	__getreent
.LVL10:
	l32i.n	a5, a10, 8
	l32i.n	a5, a5, 0
	l8ui	a5, a5, 0
	beqi	a5, 10, .L6
	.loc 1 24 0 discriminator 5
	call8	__getreent
.LVL11:
	l32i.n	a8, a10, 8
	l32i.n	a5, a8, 0
	addi.n	a5, a5, 1
	s32i.n	a5, a8, 0
	j	.L8
.L6:
	.loc 1 24 0 discriminator 6
	call8	__getreent
.LVL12:
	mov.n	a5, a10
	call8	__getreent
.LVL13:
	l32i.n	a12, a10, 8
	movi.n	a11, 0xa
	mov.n	a10, a5
	call8	__swbuf_r
.LVL14:
	j	.L8
.L5:
	.loc 1 24 0 discriminator 4
	call8	__getreent
.LVL15:
	mov.n	a5, a10
	call8	__getreent
.LVL16:
	l32i.n	a12, a10, 8
	movi.n	a11, 9
	mov.n	a10, a5
	call8	__swbuf_r
.LVL17:
	j	.L8
.L4:
	.loc 1 24 0 discriminator 2
	call8	__getreent
.LVL18:
	l32i.n	a8, a10, 8
	l32i.n	a8, a8, 0
	movi.n	a9, 9
	s8i	a9, a8, 0
	call8	__getreent
.LVL19:
	l32i.n	a9, a10, 8
	l32i.n	a8, a9, 0
	addi.n	a8, a8, 1
	s32i.n	a8, a9, 0
.L8:
	.loc 1 23 0 is_stmt 1 discriminator 2
	addi.n	a4, a4, 1
.LVL20:
.L3:
	.loc 1 23 0 is_stmt 0 discriminator 1
	l32i.n	a8, a2, 0
	blt	a4, a8, .L9
	.loc 1 25 0 is_stmt 1
	mov.n	a10, a3
	call8	puts
.LVL21:
	.loc 1 26 0
	l32i.n	a3, a2, 0
.LVL22:
	addi.n	a3, a3, 1
	s32i.n	a3, a2, 0
	retw.n
.LFE0:
	.size	startElement, .-startElement
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"no element parse"
	.align	4
.LC4:
	.string	"%s at line %lu\n"
	.align	4
.LC6:
	.string	"XML_Parse Sucessful\n "
	.section	.text.xml_main,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC2, endElement
	.literal .LC3, startElement
	.literal .LC5, .LC4
	.literal .LC7, .LC6
	.align	4
	.global	xml_main
	.type	xml_main, @function
xml_main:
.LFB2:
	.loc 1 39 0
.LVL23:
	entry	sp, 48
.LCFI2:
.LVL24:
	.loc 1 41 0
	movi.n	a4, 0
	s32i.n	a4, sp, 0
	.loc 1 42 0
	bne	a3, a4, .L11
	.loc 1 43 0
	l32r	a10, .LC1
	call8	puts
.LVL25:
	.loc 1 44 0
	movi.n	a2, 1
.LVL26:
	retw.n
.LVL27:
.L11:
	.loc 1 47 0
	movi.n	a10, 0
	call8	XML_ParserCreate
.LVL28:
	mov.n	a4, a10
.LVL29:
	.loc 1 48 0
	beqz.n	a10, .L13
	.loc 1 49 0
	mov.n	a11, sp
	call8	XML_SetUserData
.LVL30:
	.loc 1 50 0
	l32r	a12, .LC2
	l32r	a11, .LC3
	mov.n	a10, a4
	call8	XML_SetElementHandler
.LVL31:
	.loc 1 51 0
	addi.n	a6, a2, 1
	mov.n	a10, a6
	call8	malloc
.LVL32:
	mov.n	a5, a10
.LVL33:
	.loc 1 52 0
	mov.n	a12, a6
	movi.n	a11, 0
	call8	memset
.LVL34:
	.loc 1 53 0
	mov.n	a12, a2
	mov.n	a11, a3
	mov.n	a10, a5
	call8	memcpy
.LVL35:
	.loc 1 54 0
	movi.n	a13, 0
	mov.n	a12, a2
	mov.n	a11, a5
	mov.n	a10, a4
	call8	XML_Parse
.LVL36:
	bnez.n	a10, .L14
	.loc 1 55 0
	mov.n	a10, a4
	call8	XML_GetErrorCode
.LVL37:
	call8	XML_ErrorString
.LVL38:
	mov.n	a2, a10
.LVL39:
	mov.n	a10, a4
	call8	XML_GetCurrentLineNumber
.LVL40:
	mov.n	a12, a10
	mov.n	a11, a2
	l32r	a10, .LC5
	call8	printf
.LVL41:
	j	.L13
.LVL42:
.L14:
	.loc 1 59 0
	l32r	a10, .LC7
	call8	printf
.LVL43:
.L13:
	.loc 1 63 0
	mov.n	a10, a4
	call8	XML_ParserFree
.LVL44:
	.loc 1 64 0
	movi.n	a2, 0
	.loc 1 65 0
	retw.n
.LFE2:
	.size	xml_main, .-xml_main
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI0-.LFB1
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI1-.LFB0
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
	.uleb128 0x30
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/reent.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdio.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/expat.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.file 6 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x485
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0xc
	.4byte	.LASF40
	.4byte	.LASF41
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
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
	.uleb128 0x3
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
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7a
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x5
	.byte	0x4
	.4byte	0x87
	.uleb128 0x6
	.4byte	0x7a
	.uleb128 0x7
	.4byte	.LASF42
	.byte	0x4
	.byte	0x19
	.4byte	0x97
	.uleb128 0x5
	.byte	0x4
	.4byte	0x9d
	.uleb128 0x8
	.4byte	.LASF43
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x4
	.4byte	0x48
	.byte	0x4
	.byte	0x2d
	.4byte	0xc5
	.uleb128 0xa
	.4byte	.LASF11
	.byte	0
	.uleb128 0xa
	.4byte	.LASF12
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF13
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.4byte	.LASF16
	.byte	0x1
	.byte	0x1e
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x102
	.uleb128 0xc
	.4byte	.LASF14
	.byte	0x1
	.byte	0x1e
	.4byte	0x5d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xc
	.4byte	.LASF15
	.byte	0x1
	.byte	0x1e
	.4byte	0x81
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xd
	.4byte	.LASF19
	.byte	0x1
	.byte	0x20
	.4byte	0x102
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x41
	.uleb128 0xb
	.4byte	.LASF17
	.byte	0x1
	.byte	0x11
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x211
	.uleb128 0xc
	.4byte	.LASF14
	.byte	0x1
	.byte	0x11
	.4byte	0x5d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xe
	.4byte	.LASF15
	.byte	0x1
	.byte	0x11
	.4byte	0x81
	.4byte	.LLST0
	.uleb128 0xe
	.4byte	.LASF18
	.byte	0x1
	.byte	0x11
	.4byte	0x211
	.4byte	.LLST1
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0x13
	.4byte	0x41
	.4byte	.LLST2
	.uleb128 0xd
	.4byte	.LASF19
	.byte	0x1
	.byte	0x14
	.4byte	0x102
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x10
	.4byte	.LVL6
	.4byte	0x3cf
	.uleb128 0x10
	.4byte	.LVL7
	.4byte	0x3cf
	.uleb128 0x10
	.4byte	.LVL8
	.4byte	0x3cf
	.uleb128 0x10
	.4byte	.LVL9
	.4byte	0x3cf
	.uleb128 0x10
	.4byte	.LVL10
	.4byte	0x3cf
	.uleb128 0x10
	.4byte	.LVL11
	.4byte	0x3cf
	.uleb128 0x10
	.4byte	.LVL12
	.4byte	0x3cf
	.uleb128 0x10
	.4byte	.LVL13
	.4byte	0x3cf
	.uleb128 0x11
	.4byte	.LVL14
	.4byte	0x3db
	.4byte	0x1c3
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x10
	.4byte	.LVL15
	.4byte	0x3cf
	.uleb128 0x10
	.4byte	.LVL16
	.4byte	0x3cf
	.uleb128 0x11
	.4byte	.LVL17
	.4byte	0x3db
	.4byte	0x1ee
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x39
	.byte	0
	.uleb128 0x10
	.4byte	.LVL18
	.4byte	0x3cf
	.uleb128 0x10
	.4byte	.LVL19
	.4byte	0x3cf
	.uleb128 0x13
	.4byte	.LVL21
	.4byte	0x3e7
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x81
	.uleb128 0x14
	.4byte	.LASF45
	.byte	0x1
	.byte	0x26
	.4byte	0x41
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3cf
	.uleb128 0xe
	.4byte	.LASF20
	.byte	0x1
	.byte	0x26
	.4byte	0x41
	.4byte	.LLST3
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x1
	.byte	0x26
	.4byte	0x81
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.string	"buf"
	.byte	0x1
	.byte	0x28
	.4byte	0x74
	.4byte	.LLST4
	.uleb128 0xd
	.4byte	.LASF22
	.byte	0x1
	.byte	0x29
	.4byte	0x41
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xd
	.4byte	.LASF23
	.byte	0x1
	.byte	0x2f
	.4byte	0x8c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x11
	.4byte	.LVL25
	.4byte	0x3f2
	.4byte	0x28d
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL28
	.4byte	0x401
	.4byte	0x2a1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL30
	.4byte	0x40c
	.4byte	0x2bb
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x11
	.4byte	.LVL31
	.4byte	0x418
	.4byte	0x2e1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	startElement
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	endElement
	.byte	0
	.uleb128 0x11
	.4byte	.LVL32
	.4byte	0x424
	.4byte	0x2f5
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL34
	.4byte	0x42f
	.4byte	0x314
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL35
	.4byte	0x438
	.4byte	0x334
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL36
	.4byte	0x441
	.4byte	0x359
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x11
	.4byte	.LVL37
	.4byte	0x44d
	.4byte	0x36d
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL38
	.4byte	0x459
	.uleb128 0x11
	.4byte	.LVL40
	.4byte	0x465
	.4byte	0x38a
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL41
	.4byte	0x471
	.4byte	0x3a7
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL43
	.4byte	0x471
	.4byte	0x3be
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.uleb128 0x13
	.4byte	.LVL44
	.4byte	0x47c
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF24
	.4byte	.LASF24
	.byte	0x2
	.2byte	0x30b
	.uleb128 0x15
	.4byte	.LASF25
	.4byte	.LASF25
	.byte	0x3
	.2byte	0x21b
	.uleb128 0x16
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x3
	.byte	0xc7
	.uleb128 0x17
	.4byte	.LASF26
	.4byte	.LASF46
	.byte	0x6
	.byte	0
	.4byte	.LASF26
	.uleb128 0x16
	.4byte	.LASF27
	.4byte	.LASF27
	.byte	0x4
	.byte	0xce
	.uleb128 0x15
	.4byte	.LASF28
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x29f
	.uleb128 0x15
	.4byte	.LASF29
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x216
	.uleb128 0x16
	.4byte	.LASF30
	.4byte	.LASF30
	.byte	0x5
	.byte	0x65
	.uleb128 0x18
	.4byte	.LASF31
	.4byte	.LASF31
	.uleb128 0x18
	.4byte	.LASF32
	.4byte	.LASF32
	.uleb128 0x15
	.4byte	.LASF33
	.4byte	.LASF33
	.byte	0x4
	.2byte	0x30a
	.uleb128 0x15
	.4byte	.LASF34
	.4byte	.LASF34
	.byte	0x4
	.2byte	0x39a
	.uleb128 0x15
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x4
	.2byte	0x3e1
	.uleb128 0x15
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x4
	.2byte	0x3ac
	.uleb128 0x16
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x3
	.byte	0xb2
	.uleb128 0x15
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x4
	.2byte	0x3dd
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
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x18
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x6e
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.4byte	.LVL2
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL22
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL4
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39
	.4byte	.LVL42
	.2byte	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL24
	.4byte	.LVL33
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF41:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\expat"
.LASF19:
	.string	"depthPtr"
.LASF28:
	.string	"XML_SetUserData"
.LASF15:
	.string	"name"
.LASF13:
	.string	"XML_STATUS_SUSPENDED"
.LASF34:
	.string	"XML_GetErrorCode"
.LASF17:
	.string	"startElement"
.LASF46:
	.string	"__builtin_puts"
.LASF11:
	.string	"XML_STATUS_ERROR"
.LASF42:
	.string	"XML_Parser"
.LASF14:
	.string	"userData"
.LASF9:
	.string	"long unsigned int"
.LASF18:
	.string	"atts"
.LASF3:
	.string	"short unsigned int"
.LASF24:
	.string	"__getreent"
.LASF29:
	.string	"XML_SetElementHandler"
.LASF1:
	.string	"unsigned char"
.LASF31:
	.string	"memset"
.LASF23:
	.string	"parser"
.LASF33:
	.string	"XML_Parse"
.LASF25:
	.string	"__swbuf_r"
.LASF4:
	.string	"unsigned int"
.LASF36:
	.string	"XML_GetCurrentLineNumber"
.LASF6:
	.string	"long long unsigned int"
.LASF20:
	.string	"argc"
.LASF39:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF8:
	.string	"sizetype"
.LASF5:
	.string	"long long int"
.LASF22:
	.string	"depth"
.LASF10:
	.string	"char"
.LASF35:
	.string	"XML_ErrorString"
.LASF37:
	.string	"printf"
.LASF44:
	.string	"XML_Status"
.LASF27:
	.string	"XML_ParserCreate"
.LASF2:
	.string	"short int"
.LASF43:
	.string	"XML_ParserStruct"
.LASF21:
	.string	"argv"
.LASF45:
	.string	"xml_main"
.LASF7:
	.string	"long int"
.LASF32:
	.string	"memcpy"
.LASF16:
	.string	"endElement"
.LASF26:
	.string	"puts"
.LASF0:
	.string	"signed char"
.LASF38:
	.string	"XML_ParserFree"
.LASF12:
	.string	"XML_STATUS_OK"
.LASF30:
	.string	"malloc"
.LASF40:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/expat/port/expat_element.c"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
