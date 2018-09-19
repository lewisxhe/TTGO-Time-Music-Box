	.file	"list.c"
	.text
.Ltext0:
	.section	.text.vListInitialise,"ax",@progbits
	.align	4
	.global	vListInitialise
	.type	vListInitialise, @function
vListInitialise:
.LFB14:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/list.c"
	.loc 1 80 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 84 0
	addi.n	a8, a2, 8
	s32i.n	a8, a2, 4
	.loc 1 88 0
	movi.n	a9, -1
	s32i.n	a9, a2, 8
	.loc 1 92 0
	s32i.n	a8, a2, 12
	.loc 1 93 0
	s32i.n	a8, a2, 16
	.loc 1 95 0
	movi.n	a8, 0
	s32i.n	a8, a2, 0
	retw.n
.LFE14:
	.size	vListInitialise, .-vListInitialise
	.section	.text.vListInitialiseItem,"ax",@progbits
	.align	4
	.global	vListInitialiseItem
	.type	vListInitialiseItem, @function
vListInitialiseItem:
.LFB15:
	.loc 1 105 0
.LVL1:
	entry	sp, 32
.LCFI1:
	.loc 1 107 0
	movi.n	a8, 0
	s32i.n	a8, a2, 16
	retw.n
.LFE15:
	.size	vListInitialiseItem, .-vListInitialiseItem
	.section	.text.vListInsertEnd,"ax",@progbits
	.align	4
	.global	vListInsertEnd
	.type	vListInsertEnd, @function
vListInsertEnd:
.LFB16:
	.loc 1 117 0
.LVL2:
	entry	sp, 32
.LCFI2:
	.loc 1 118 0
	l32i.n	a8, a2, 4
.LVL3:
	.loc 1 129 0
	s32i.n	a8, a3, 4
	.loc 1 130 0
	l32i.n	a9, a8, 8
	s32i.n	a9, a3, 8
	.loc 1 131 0
	l32i.n	a9, a8, 8
	s32i.n	a3, a9, 4
	.loc 1 132 0
	s32i.n	a3, a8, 8
	.loc 1 135 0
	s32i.n	a2, a3, 16
	.loc 1 137 0
	l32i.n	a3, a2, 0
.LVL4:
	addi.n	a3, a3, 1
	s32i.n	a3, a2, 0
	retw.n
.LFE16:
	.size	vListInsertEnd, .-vListInsertEnd
	.section	.text.vListInsert,"ax",@progbits
	.align	4
	.global	vListInsert
	.type	vListInsert, @function
vListInsert:
.LFB17:
	.loc 1 142 0
.LVL5:
	entry	sp, 32
.LCFI3:
	.loc 1 144 0
	l32i.n	a11, a3, 0
.LVL6:
	.loc 1 160 0
	bnei	a11, -1, .L5
	.loc 1 162 0
	l32i.n	a9, a2, 16
.LVL7:
	j	.L6
.LVL8:
.L5:
	.loc 1 188 0
	addi.n	a9, a2, 8
.LVL9:
	j	.L7
.L8:
	mov.n	a9, a8
.LVL10:
.L7:
	.loc 1 188 0 is_stmt 0 discriminator 1
	l32i.n	a8, a9, 4
	l32i.n	a10, a8, 0
	bgeu	a11, a10, .L8
.L6:
	.loc 1 195 0 is_stmt 1
	l32i.n	a8, a9, 4
	s32i.n	a8, a3, 4
	.loc 1 196 0
	s32i.n	a3, a8, 8
	.loc 1 197 0
	s32i.n	a9, a3, 8
	.loc 1 198 0
	s32i.n	a3, a9, 4
	.loc 1 202 0
	s32i.n	a2, a3, 16
	.loc 1 204 0
	l32i.n	a3, a2, 0
.LVL11:
	addi.n	a3, a3, 1
	s32i.n	a3, a2, 0
	retw.n
.LFE17:
	.size	vListInsert, .-vListInsert
	.section	.text.uxListRemove,"ax",@progbits
	.align	4
	.global	uxListRemove
	.type	uxListRemove, @function
uxListRemove:
.LFB18:
	.loc 1 209 0
.LVL12:
	entry	sp, 32
.LCFI4:
	.loc 1 212 0
	l32i.n	a8, a2, 16
.LVL13:
	.loc 1 214 0
	l32i.n	a9, a2, 4
	l32i.n	a10, a2, 8
	s32i.n	a10, a9, 8
	.loc 1 215 0
	l32i.n	a9, a2, 8
	l32i.n	a10, a2, 4
	s32i.n	a10, a9, 4
	.loc 1 218 0
	l32i.n	a9, a8, 4
	bne	a2, a9, .L10
	.loc 1 220 0
	l32i.n	a9, a2, 8
	s32i.n	a9, a8, 4
.L10:
	.loc 1 227 0
	movi.n	a9, 0
	s32i.n	a9, a2, 16
	.loc 1 228 0
	l32i.n	a2, a8, 0
.LVL14:
	addi.n	a2, a2, -1
	s32i.n	a2, a8, 0
	.loc 1 231 0
	retw.n
.LFE18:
	.size	uxListRemove, .-uxListRemove
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
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI0-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI1-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI2-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI3-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI4-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/list.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x29d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0xc
	.4byte	.LASF42
	.4byte	.LASF43
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x2
	.byte	0x1a
	.4byte	0x25
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0x2d
	.4byte	0x4f
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF13
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x4
	.byte	0x70
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x4
	.byte	0x76
	.4byte	0x86
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x14
	.byte	0x5
	.byte	0xb5
	.4byte	0xf7
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x5
	.byte	0xb8
	.4byte	0xa3
	.byte	0
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x5
	.byte	0xb9
	.4byte	0xf7
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x5
	.byte	0xba
	.4byte	0xf7
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x5
	.byte	0xbb
	.4byte	0x76
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x5
	.byte	0xbc
	.4byte	0x76
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xae
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x5
	.byte	0xbf
	.4byte	0xae
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0xc
	.byte	0x5
	.byte	0xc5
	.4byte	0x139
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x5
	.byte	0xc8
	.4byte	0xa3
	.byte	0
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x5
	.byte	0xc9
	.4byte	0xf7
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x5
	.byte	0xca
	.4byte	0xf7
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x5
	.byte	0xcc
	.4byte	0x108
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x14
	.byte	0x5
	.byte	0xd6
	.4byte	0x175
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x5
	.byte	0xd9
	.4byte	0x98
	.byte	0
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x5
	.byte	0xda
	.4byte	0x175
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x5
	.byte	0xdb
	.4byte	0x139
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xfd
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x5
	.byte	0xdd
	.4byte	0x144
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x1
	.byte	0x4f
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a9
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x1
	.byte	0x4f
	.4byte	0x1af
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x17b
	.uleb128 0xb
	.4byte	0x1a9
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x1
	.byte	0x68
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d7
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x1
	.byte	0x68
	.4byte	0x1d7
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0xb
	.4byte	0x175
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x1
	.byte	0x74
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x21b
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x1
	.byte	0x74
	.4byte	0x1af
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x1
	.byte	0x74
	.4byte	0x1d7
	.4byte	.LLST0
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x1
	.byte	0x76
	.4byte	0x1d7
	.uleb128 0x1
	.byte	0x58
	.byte	0
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x1
	.byte	0x8d
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x269
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x1
	.byte	0x8d
	.4byte	0x1af
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x1
	.byte	0x8d
	.4byte	0x1d7
	.4byte	.LLST1
	.uleb128 0xe
	.4byte	.LASF37
	.byte	0x1
	.byte	0x8f
	.4byte	0x175
	.4byte	.LLST2
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x1
	.byte	0x90
	.4byte	0x269
	.uleb128 0x1
	.byte	0x5b
	.byte	0
	.uleb128 0xb
	.4byte	0xa3
	.uleb128 0xf
	.4byte	.LASF39
	.byte	0x1
	.byte	0xd0
	.4byte	0x98
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x1
	.byte	0xd0
	.4byte	0x1d7
	.4byte	.LLST3
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x1
	.byte	0xd4
	.4byte	0x1af
	.uleb128 0x1
	.byte	0x58
	.byte	0
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x7
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
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x18
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL5
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL11
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL9
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
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
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF43:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\freertos"
.LASF15:
	.string	"TickType_t"
.LASF20:
	.string	"pvContainer"
.LASF27:
	.string	"pxIndex"
.LASF24:
	.string	"MiniListItem_t"
.LASF16:
	.string	"xItemValue"
.LASF1:
	.string	"short unsigned int"
.LASF28:
	.string	"xListEnd"
.LASF19:
	.string	"pvOwner"
.LASF22:
	.string	"xLIST_ITEM"
.LASF14:
	.string	"UBaseType_t"
.LASF9:
	.string	"long unsigned int"
.LASF40:
	.string	"pxItemToRemove"
.LASF18:
	.string	"pxPrevious"
.LASF31:
	.string	"vListInitialiseItem"
.LASF3:
	.string	"unsigned char"
.LASF29:
	.string	"List_t"
.LASF11:
	.string	"__uint32_t"
.LASF26:
	.string	"uxNumberOfItems"
.LASF34:
	.string	"vListInsertEnd"
.LASF17:
	.string	"pxNext"
.LASF0:
	.string	"unsigned int"
.LASF30:
	.string	"vListInitialise"
.LASF38:
	.string	"xValueOfInsertion"
.LASF6:
	.string	"long long unsigned int"
.LASF33:
	.string	"pxItem"
.LASF21:
	.string	"ListItem_t"
.LASF41:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF8:
	.string	"sizetype"
.LASF5:
	.string	"long long int"
.LASF10:
	.string	"char"
.LASF37:
	.string	"pxIterator"
.LASF4:
	.string	"short int"
.LASF12:
	.string	"uint32_t"
.LASF7:
	.string	"long int"
.LASF42:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/freertos/list.c"
.LASF39:
	.string	"uxListRemove"
.LASF23:
	.string	"xMINI_LIST_ITEM"
.LASF2:
	.string	"signed char"
.LASF32:
	.string	"pxList"
.LASF25:
	.string	"xLIST"
.LASF13:
	.string	"_Bool"
.LASF35:
	.string	"pxNewListItem"
.LASF36:
	.string	"vListInsert"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
