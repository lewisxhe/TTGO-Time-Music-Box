	.file	"uuid.c"
	.text
.Ltext0:
	.section	.text.uuid_str2bin,"ax",@progbits
	.align	4
	.global	uuid_str2bin
	.type	uuid_str2bin, @function
uuid_str2bin:
.LFB34:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/uuid.c"
	.loc 1 15 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 22 0
	movi.n	a12, 4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	hexstr2bin
.LVL2:
	bnez.n	a10, .L3
.LVL3:
	.loc 1 25 0
	addi.n	a11, a3, 4
.LVL4:
	.loc 1 27 0
	addi.n	a10, a2, 9
.LVL5:
	l8ui	a9, a2, 8
	movi.n	a8, 0x2d
	bne	a9, a8, .L4
	.loc 1 27 0 is_stmt 0 discriminator 1
	movi.n	a12, 2
	call8	hexstr2bin
.LVL6:
	bnez.n	a10, .L5
.LVL7:
	.loc 1 30 0 is_stmt 1
	addi.n	a11, a3, 6
.LVL8:
	.loc 1 32 0
	addi.n	a10, a2, 14
.LVL9:
	l8ui	a9, a2, 13
	movi.n	a8, 0x2d
	bne	a9, a8, .L6
	.loc 1 32 0 is_stmt 0 discriminator 1
	movi.n	a12, 2
	call8	hexstr2bin
.LVL10:
	bnez.n	a10, .L7
.LVL11:
	.loc 1 35 0 is_stmt 1
	addi.n	a11, a3, 8
.LVL12:
	.loc 1 37 0
	addi	a10, a2, 19
.LVL13:
	l8ui	a9, a2, 18
	movi.n	a8, 0x2d
	bne	a9, a8, .L8
	.loc 1 37 0 is_stmt 0 discriminator 1
	movi.n	a12, 2
	call8	hexstr2bin
.LVL14:
	bnez.n	a10, .L9
.LVL15:
	.loc 1 40 0 is_stmt 1
	addi.n	a11, a3, 10
.LVL16:
	.loc 1 42 0
	addi	a10, a2, 24
.LVL17:
	l8ui	a3, a2, 23
.LVL18:
	movi.n	a2, 0x2d
.LVL19:
	bne	a3, a2, .L10
	.loc 1 42 0 is_stmt 0 discriminator 1
	movi.n	a12, 6
	call8	hexstr2bin
.LVL20:
	mov.n	a2, a10
	beqz.n	a10, .L2
	j	.L11
.LVL21:
.L3:
	.loc 1 23 0 is_stmt 1
	movi.n	a2, -1
.LVL22:
	retw.n
.LVL23:
.L4:
	.loc 1 28 0
	movi.n	a2, -1
.LVL24:
	retw.n
.LVL25:
.L5:
	movi.n	a2, -1
.LVL26:
	retw.n
.LVL27:
.L6:
	.loc 1 33 0
	movi.n	a2, -1
.LVL28:
	retw.n
.LVL29:
.L7:
	movi.n	a2, -1
.LVL30:
	retw.n
.LVL31:
.L8:
	.loc 1 38 0
	movi.n	a2, -1
.LVL32:
	retw.n
.LVL33:
.L9:
	movi.n	a2, -1
.LVL34:
	retw.n
.LVL35:
.L10:
	.loc 1 43 0
	movi.n	a2, -1
	retw.n
.LVL36:
.L11:
	movi.n	a2, -1
.L2:
	.loc 1 46 0
	retw.n
.LFE34:
	.size	uuid_str2bin, .-uuid_str2bin
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"%02x%02x%02x%02x-%02x%02x-%02x%02x-%02x%02x-%02x%02x%02x%02x%02x%02x"
	.section	.text.uuid_bin2str,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.align	4
	.global	uuid_bin2str
	.type	uuid_bin2str, @function
uuid_bin2str:
.LFB35:
	.loc 1 50 0
.LVL37:
	entry	sp, 96
.LCFI1:
	.loc 1 54 0
	l8ui	a13, a2, 0
	l8ui	a14, a2, 1
	l8ui	a15, a2, 2
	l8ui	a5, a2, 3
	s32i.n	a5, sp, 0
	.loc 1 55 0
	l8ui	a5, a2, 4
	s32i.n	a5, sp, 4
	l8ui	a5, a2, 5
	s32i.n	a5, sp, 8
	l8ui	a5, a2, 6
	s32i.n	a5, sp, 12
	l8ui	a8, a2, 7
	.loc 1 56 0
	l8ui	a9, a2, 8
	l8ui	a10, a2, 9
	l8ui	a11, a2, 10
	l8ui	a12, a2, 11
	.loc 1 57 0
	l8ui	a5, a2, 12
	l8ui	a6, a2, 13
	l8ui	a7, a2, 14
	l8ui	a2, a2, 15
.LVL38:
	.loc 1 52 0
	s32i.n	a2, sp, 48
	s32i.n	a7, sp, 44
	s32i.n	a6, sp, 40
	s32i.n	a5, sp, 36
	s32i.n	a12, sp, 32
	s32i.n	a11, sp, 28
	s32i.n	a10, sp, 24
	s32i.n	a9, sp, 20
	s32i.n	a8, sp, 16
	l32r	a12, .LC1
	mov.n	a11, a4
	mov.n	a10, a3
	call8	snprintf
.LVL39:
	.loc 1 58 0
	extui	a5, a10, 31, 1
	movi.n	a2, 1
	bgeu	a10, a4, .L13
	movi.n	a2, 0
.L13:
	extui	a2, a2, 0, 8
	or	a2, a5, a2
	beqz.n	a2, .L15
	.loc 1 59 0
	movi.n	a2, -1
	retw.n
.L15:
	.loc 1 60 0
	movi.n	a2, 0
	.loc 1 61 0
	retw.n
.LFE35:
	.size	uuid_bin2str, .-uuid_bin2str
	.section	.text.is_nil_uuid,"ax",@progbits
	.align	4
	.global	is_nil_uuid
	.type	is_nil_uuid, @function
is_nil_uuid:
.LFB36:
	.loc 1 65 0
.LVL40:
	entry	sp, 32
.LCFI2:
.LVL41:
	.loc 1 67 0
	movi.n	a8, 0
	j	.L17
.LVL42:
.L19:
	.loc 1 68 0
	add.n	a9, a2, a8
	l8ui	a9, a9, 0
	bnez.n	a9, .L20
	.loc 1 67 0 discriminator 2
	addi.n	a8, a8, 1
.LVL43:
.L17:
	.loc 1 67 0 is_stmt 0 discriminator 1
	movi.n	a9, 0xf
	bge	a9, a8, .L19
	.loc 1 70 0 is_stmt 1
	movi.n	a2, 1
.LVL44:
	retw.n
.LVL45:
.L20:
	.loc 1 69 0
	movi.n	a2, 0
.LVL46:
	.loc 1 71 0
	retw.n
.LFE36:
	.size	is_nil_uuid, .-is_nil_uuid
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
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI0-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI1-.LFB35
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI2-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/common.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x28f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0xc
	.4byte	.LASF23
	.4byte	.LASF24
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
	.byte	0xd8
	.4byte	0x53
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.4byte	0x99
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa6
	.uleb128 0x6
	.4byte	0x99
	.uleb128 0x7
	.string	"u8"
	.byte	0x5
	.byte	0x1c
	.4byte	0x73
	.uleb128 0x5
	.byte	0x4
	.4byte	0xab
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x1
	.byte	0xe
	.4byte	0x4c
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ae
	.uleb128 0x9
	.string	"str"
	.byte	0x1
	.byte	0xe
	.4byte	0xa0
	.4byte	.LLST0
	.uleb128 0x9
	.string	"bin"
	.byte	0x1
	.byte	0xe
	.4byte	0xb5
	.4byte	.LLST1
	.uleb128 0xa
	.string	"pos"
	.byte	0x1
	.byte	0x10
	.4byte	0xa0
	.4byte	.LLST2
	.uleb128 0xb
	.4byte	.LASF14
	.byte	0x1
	.byte	0x11
	.4byte	0xb5
	.4byte	.LLST3
	.uleb128 0xc
	.4byte	.LVL2
	.4byte	0x27a
	.4byte	0x12f
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0xc
	.4byte	.LVL6
	.4byte	0x27a
	.4byte	0x14e
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 9
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 4
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0xc
	.4byte	.LVL10
	.4byte	0x27a
	.4byte	0x16d
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 14
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 6
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0xc
	.4byte	.LVL14
	.4byte	0x27a
	.4byte	0x18c
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 19
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 8
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0xe
	.4byte	.LVL20
	.4byte	0x27a
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x1
	.byte	0x31
	.4byte	0x4c
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x239
	.uleb128 0x9
	.string	"bin"
	.byte	0x1
	.byte	0x31
	.4byte	0x239
	.4byte	.LLST4
	.uleb128 0xf
	.string	"str"
	.byte	0x1
	.byte	0x31
	.4byte	0x93
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x10
	.4byte	.LASF17
	.byte	0x1
	.byte	0x31
	.4byte	0x68
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x11
	.string	"len"
	.byte	0x1
	.byte	0x33
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xe
	.4byte	.LVL39
	.4byte	0x286
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0xd
	.uleb128 0x2
	.byte	0x71
	.sleb128 36
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x2
	.byte	0x71
	.sleb128 40
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x2
	.byte	0x71
	.sleb128 44
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x2
	.byte	0x71
	.sleb128 48
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x23f
	.uleb128 0x6
	.4byte	0xab
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x1
	.byte	0x40
	.4byte	0x4c
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x27a
	.uleb128 0x12
	.4byte	.LASF19
	.byte	0x1
	.byte	0x40
	.4byte	0x239
	.4byte	.LLST5
	.uleb128 0xa
	.string	"i"
	.byte	0x1
	.byte	0x42
	.4byte	0x4c
	.4byte	.LLST6
	.byte	0
	.uleb128 0x13
	.4byte	.LASF20
	.4byte	.LASF20
	.byte	0x5
	.2byte	0x127
	.uleb128 0x13
	.4byte	.LASF21
	.4byte	.LASF21
	.byte	0x6
	.2byte	0x10c
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LVL20-1
	.2byte	0x3
	.byte	0x7a
	.sleb128 -24
	.byte	0x9f
	.4byte	.LVL20-1
	.4byte	.LVL21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x3
	.byte	0x7a
	.sleb128 -9
	.byte	0x9f
	.4byte	.LVL25
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
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x3
	.byte	0x7a
	.sleb128 -14
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x3
	.byte	0x7a
	.sleb128 -19
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL18
	.4byte	.LVL20-1
	.2byte	0x3
	.byte	0x7b
	.sleb128 -10
	.byte	0x9f
	.4byte	.LVL20-1
	.4byte	.LVL21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x3
	.byte	0x7b
	.sleb128 -10
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x3
	.byte	0x72
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6-1
	.4byte	.LVL7
	.2byte	0x3
	.byte	0x72
	.sleb128 9
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x3
	.byte	0x72
	.sleb128 13
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10-1
	.4byte	.LVL11
	.2byte	0x3
	.byte	0x72
	.sleb128 14
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x3
	.byte	0x72
	.sleb128 18
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14-1
	.4byte	.LVL15
	.2byte	0x3
	.byte	0x72
	.sleb128 19
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x3
	.byte	0x72
	.sleb128 23
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL20-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20-1
	.4byte	.LVL21
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x18
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x3
	.byte	0x72
	.sleb128 9
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x9
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x3
	.byte	0x72
	.sleb128 14
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0xe
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x3
	.byte	0x72
	.sleb128 19
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x13
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL36
	.4byte	.LFE34
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x18
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL6-1
	.4byte	.LVL8
	.2byte	0x3
	.byte	0x73
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL10-1
	.4byte	.LVL12
	.2byte	0x3
	.byte	0x73
	.sleb128 6
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL14-1
	.4byte	.LVL16
	.2byte	0x3
	.byte	0x73
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL20-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL20-1
	.4byte	.LVL21
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x23
	.uleb128 0xa
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x3
	.byte	0x73
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x3
	.byte	0x73
	.sleb128 6
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x3
	.byte	0x73
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL36
	.4byte	.LFE34
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x23
	.uleb128 0xa
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL40
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL46
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LFE36
	.2byte	0x1
	.byte	0x58
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
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF7:
	.string	"__uint8_t"
.LASF21:
	.string	"snprintf"
.LASF18:
	.string	"is_nil_uuid"
.LASF22:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF1:
	.string	"unsigned char"
.LASF14:
	.string	"opos"
.LASF12:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF8:
	.string	"size_t"
.LASF16:
	.string	"uuid_bin2str"
.LASF20:
	.string	"hexstr2bin"
.LASF23:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wps/uuid.c"
.LASF17:
	.string	"max_len"
.LASF15:
	.string	"uuid_str2bin"
.LASF4:
	.string	"unsigned int"
.LASF19:
	.string	"uuid"
.LASF6:
	.string	"long long unsigned int"
.LASF9:
	.string	"uint8_t"
.LASF11:
	.string	"sizetype"
.LASF5:
	.string	"long long int"
.LASF2:
	.string	"short int"
.LASF10:
	.string	"long int"
.LASF13:
	.string	"char"
.LASF24:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\wpa_supplicant"
.LASF0:
	.string	"signed char"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
