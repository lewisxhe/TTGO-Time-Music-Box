	.file	"base64.c"
	.text
.Ltext0:
	.section	.text.base64_encode,"ax",@progbits
	.literal_position
	.literal .LC0, -1431655765
	.literal .LC1, 954437177
	.literal .LC2, base64_table
	.align	4
	.global	base64_encode
	.type	base64_encode, @function
base64_encode:
.LFB0:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wpa2/utils/base64.c"
	.loc 1 31 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 37 0
	slli	a10, a3, 2
	l32r	a8, .LC0
	muluh	a10, a10, a8
	srli	a10, a10, 1
	addi.n	a10, a10, 4
.LVL1:
	.loc 1 38 0
	l32r	a8, .LC1
	muluh	a8, a10, a8
	srli	a8, a8, 4
	add.n	a10, a10, a8
.LVL2:
	.loc 1 39 0
	addi.n	a10, a10, 1
.LVL3:
	.loc 1 40 0
	bltu	a10, a3, .L10
	.loc 1 42 0
	call8	malloc
.LVL4:
	.loc 1 43 0
	beqz.n	a10, .L11
	.loc 1 46 0
	add.n	a3, a2, a3
.LVL5:
	.loc 1 48 0
	mov.n	a9, a10
	.loc 1 49 0
	movi.n	a12, 0
	.loc 1 50 0
	j	.L3
.LVL6:
.L5:
	.loc 1 51 0
	l8ui	a8, a2, 0
	srli	a8, a8, 2
	l32r	a11, .LC2
	add.n	a8, a11, a8
	l8ui	a8, a8, 0
	s8i	a8, a9, 0
.LVL7:
	.loc 1 52 0
	l8ui	a8, a2, 0
	extui	a8, a8, 0, 2
	slli	a13, a8, 4
	l8ui	a8, a2, 1
	srli	a8, a8, 4
	or	a8, a13, a8
	add.n	a8, a11, a8
	l8ui	a8, a8, 0
	s8i	a8, a9, 1
.LVL8:
	.loc 1 53 0
	l8ui	a8, a2, 1
	extui	a8, a8, 0, 4
	slli	a13, a8, 2
	l8ui	a8, a2, 2
	srli	a8, a8, 6
	or	a8, a13, a8
	add.n	a8, a11, a8
	l8ui	a8, a8, 0
	s8i	a8, a9, 2
	.loc 1 54 0
	addi.n	a13, a9, 4
.LVL9:
	l8ui	a8, a2, 2
	extui	a8, a8, 0, 6
	add.n	a11, a11, a8
	l8ui	a8, a11, 0
	s8i	a8, a9, 3
	.loc 1 55 0
	addi.n	a2, a2, 3
.LVL10:
	.loc 1 56 0
	addi.n	a12, a12, 4
.LVL11:
	.loc 1 57 0
	movi.n	a8, 0x47
	bge	a8, a12, .L12
.LVL12:
	.loc 1 58 0
	movi.n	a8, 0xa
	s8i	a8, a9, 4
.LVL13:
	addi.n	a9, a9, 5
.LVL14:
	.loc 1 59 0
	movi.n	a12, 0
	j	.L3
.LVL15:
.L12:
	.loc 1 54 0
	mov.n	a9, a13
.LVL16:
.L3:
	.loc 1 50 0
	sub	a8, a3, a2
	bgei	a8, 3, .L5
	.loc 1 63 0
	beq	a3, a2, .L6
.LVL17:
	.loc 1 64 0
	l8ui	a3, a2, 0
.LVL18:
	srli	a3, a3, 2
	l32r	a11, .LC2
	add.n	a3, a11, a3
	l8ui	a3, a3, 0
	s8i	a3, a9, 0
	.loc 1 65 0
	bnei	a8, 1, .L7
.LVL19:
	.loc 1 66 0
	l8ui	a2, a2, 0
.LVL20:
	extui	a2, a2, 0, 2
	slli	a2, a2, 4
	add.n	a2, a11, a2
	l8ui	a2, a2, 0
	s8i	a2, a9, 1
	.loc 1 67 0
	addi.n	a3, a9, 3
.LVL21:
	movi.n	a2, 0x3d
	s8i	a2, a9, 2
	j	.L8
.LVL22:
.L7:
	.loc 1 69 0
	l8ui	a3, a2, 0
	extui	a3, a3, 0, 2
	slli	a8, a3, 4
	.loc 1 70 0
	l8ui	a3, a2, 1
	srli	a3, a3, 4
	.loc 1 69 0
	or	a3, a8, a3
	l32r	a8, .LC2
	add.n	a3, a8, a3
	l8ui	a3, a3, 0
	s8i	a3, a9, 1
	.loc 1 71 0
	addi.n	a3, a9, 3
.LVL23:
	l8ui	a2, a2, 1
.LVL24:
	extui	a2, a2, 0, 4
	addx4	a2, a2, a8
	l8ui	a2, a2, 0
	s8i	a2, a9, 2
.L8:
	.loc 1 73 0
	addi.n	a9, a3, 1
.LVL25:
	movi.n	a2, 0x3d
	s8i	a2, a3, 0
	.loc 1 74 0
	addi.n	a12, a12, 4
.LVL26:
.L6:
	.loc 1 77 0
	beqz.n	a12, .L9
.LVL27:
	.loc 1 78 0
	movi.n	a2, 0xa
	s8i	a2, a9, 0
	addi.n	a9, a9, 1
.LVL28:
.L9:
	.loc 1 80 0
	movi.n	a2, 0
	s8i	a2, a9, 0
	.loc 1 81 0
	beqz.n	a4, .L13
	.loc 1 82 0
	sub	a9, a9, a10
.LVL29:
	s32i.n	a9, a4, 0
	.loc 1 83 0
	mov.n	a2, a10
	retw.n
.LVL30:
.L10:
	.loc 1 41 0
	movi.n	a2, 0
.LVL31:
	retw.n
.LVL32:
.L11:
	.loc 1 44 0
	movi.n	a2, 0
.LVL33:
	retw.n
.LVL34:
.L13:
	.loc 1 83 0
	mov.n	a2, a10
	.loc 1 84 0
	retw.n
.LFE0:
	.size	base64_encode, .-base64_encode
	.section	.text.base64_decode,"ax",@progbits
	.literal_position
	.literal .LC3, base64_table
	.align	4
	.global	base64_decode
	.type	base64_decode, @function
base64_decode:
.LFB1:
	.loc 1 99 0
.LVL35:
	entry	sp, 304
.LCFI1:
.LVL36:
	.loc 1 104 0
	movi	a12, 0x100
	movi	a11, 0x80
	mov.n	a10, sp
	call8	memset
.LVL37:
	.loc 1 105 0
	movi.n	a8, 0
	j	.L15
.LVL38:
.L16:
	.loc 1 106 0 discriminator 3
	l32r	a9, .LC3
	add.n	a9, a9, a8
	l8ui	a9, a9, 0
	add.n	a9, sp, a9
	s8i	a8, a9, 0
	.loc 1 105 0 discriminator 3
	addi.n	a8, a8, 1
.LVL39:
.L15:
	.loc 1 105 0 is_stmt 0 discriminator 1
	movi.n	a9, 0x3f
	bgeu	a9, a8, .L16
	.loc 1 107 0 is_stmt 1
	movi.n	a8, 0
.LVL40:
	s8i	a8, sp, 61
.LVL41:
	.loc 1 109 0
	movi.n	a10, 0
	.loc 1 110 0
	mov.n	a8, a10
	j	.L17
.LVL42:
.L19:
	.loc 1 111 0
	add.n	a9, a2, a8
	l8ui	a9, a9, 0
	add.n	a9, sp, a9
	l8ui	a9, a9, 0
	beqi	a9, 128, .L18
	.loc 1 112 0
	addi.n	a10, a10, 1
.LVL43:
.L18:
	.loc 1 110 0 discriminator 2
	addi.n	a8, a8, 1
.LVL44:
.L17:
	.loc 1 110 0 is_stmt 0 discriminator 1
	bltu	a8, a3, .L19
	.loc 1 115 0 is_stmt 1
	beqz.n	a10, .L28
	.loc 1 115 0 is_stmt 0 discriminator 1
	extui	a8, a10, 0, 2
.LVL45:
	bnez.n	a8, .L29
	.loc 1 118 0 is_stmt 1
	srli	a10, a10, 2
.LVL46:
	.loc 1 119 0
	addx2	a10, a10, a10
.LVL47:
	call8	malloc
.LVL48:
	.loc 1 120 0
	beqz.n	a10, .L30
	mov.n	a14, a10
	movi.n	a15, 0
	mov.n	a9, a15
	mov.n	a8, a15
	j	.L21
.LVL49:
.L27:
	.loc 1 125 0
	add.n	a11, a2, a8
	l8ui	a11, a11, 0
	add.n	a12, sp, a11
	l8ui	a12, a12, 0
.LVL50:
	.loc 1 126 0
	beqi	a12, 128, .L22
	.loc 1 129 0
	movi.n	a13, 0x3d
	bne	a11, a13, .L23
	.loc 1 130 0
	addi.n	a15, a15, 1
.LVL51:
.L23:
	.loc 1 131 0
	addmi	a5, sp, 0x100
	add.n	a11, a5, a9
.LVL52:
	s8i	a12, a11, 0
	.loc 1 132 0
	addi.n	a9, a9, 1
.LVL53:
	.loc 1 133 0
	bnei	a9, 4, .L22
.LVL54:
	.loc 1 134 0
	l8ui	a11, a5, 0
	slli	a11, a11, 2
	l8ui	a9, a5, 1
.LVL55:
	srli	a13, a9, 4
	or	a11, a13, a11
	s8i	a11, a14, 0
.LVL56:
	.loc 1 135 0
	slli	a9, a9, 4
	l8ui	a11, a5, 2
	srli	a13, a11, 2
	or	a9, a13, a9
	s8i	a9, a14, 1
	.loc 1 136 0
	addi.n	a13, a14, 3
.LVL57:
	slli	a11, a11, 6
	l8ui	a9, a5, 3
	or	a11, a11, a9
	s8i	a11, a14, 2
.LVL58:
	.loc 1 138 0
	beqz.n	a15, .L31
	.loc 1 139 0
	bnei	a15, 1, .L24
	.loc 1 140 0
	addi.n	a14, a14, 2
.LVL59:
	j	.L25
.LVL60:
.L24:
	.loc 1 141 0
	bnei	a15, 2, .L26
	.loc 1 142 0
	addi.n	a14, a14, 1
.LVL61:
	j	.L25
.LVL62:
.L26:
	.loc 1 145 0
	call8	free
.LVL63:
	.loc 1 146 0
	movi.n	a2, 0
.LVL64:
	retw.n
.LVL65:
.L31:
	.loc 1 136 0
	mov.n	a14, a13
	.loc 1 137 0
	movi.n	a9, 0
.LVL66:
.L22:
	.loc 1 124 0 discriminator 2
	addi.n	a8, a8, 1
.LVL67:
.L21:
	.loc 1 124 0 is_stmt 0 discriminator 1
	bltu	a8, a3, .L27
.LVL68:
.L25:
	.loc 1 153 0 is_stmt 1
	sub	a14, a14, a10
.LVL69:
	s32i.n	a14, a4, 0
	.loc 1 154 0
	mov.n	a2, a10
.LVL70:
	retw.n
.LVL71:
.L28:
	.loc 1 116 0
	movi.n	a2, 0
.LVL72:
	retw.n
.LVL73:
.L29:
	movi.n	a2, 0
.LVL74:
	retw.n
.LVL75:
.L30:
	.loc 1 121 0
	movi.n	a2, 0
.LVL76:
	.loc 1 155 0
	retw.n
.LFE1:
	.size	base64_decode, .-base64_decode
	.section	.rodata.base64_table,"a",@progbits
	.align	4
	.type	base64_table, @object
	.size	base64_table, 65
base64_table:
	.string	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
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
	.uleb128 0x130
	.align	4
.LEFDE2:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h"
	.file 4 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2fa
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0xc
	.4byte	.LASF24
	.4byte	.LASF25
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
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
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x4
	.byte	0xd8
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x5
	.4byte	0x3a
	.4byte	0x7f
	.uleb128 0x6
	.4byte	0x7f
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x7
	.byte	0x4
	.4byte	0x3a
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x1
	.byte	0x1d
	.4byte	0x8d
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19a
	.uleb128 0x9
	.string	"src"
	.byte	0x1
	.byte	0x1d
	.4byte	0x19a
	.4byte	.LLST0
	.uleb128 0x9
	.string	"len"
	.byte	0x1
	.byte	0x1d
	.4byte	0x5d
	.4byte	.LLST1
	.uleb128 0xa
	.4byte	.LASF11
	.byte	0x1
	.byte	0x1e
	.4byte	0x1a5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xb
	.string	"out"
	.byte	0x1
	.byte	0x20
	.4byte	0x8d
	.4byte	.LLST2
	.uleb128 0xb
	.string	"pos"
	.byte	0x1
	.byte	0x20
	.4byte	0x8d
	.4byte	.LLST3
	.uleb128 0xb
	.string	"end"
	.byte	0x1
	.byte	0x21
	.4byte	0x19a
	.4byte	.LLST4
	.uleb128 0xb
	.string	"in"
	.byte	0x1
	.byte	0x21
	.4byte	0x19a
	.4byte	.LLST5
	.uleb128 0xc
	.4byte	.LASF12
	.byte	0x1
	.byte	0x22
	.4byte	0x5d
	.4byte	.LLST6
	.uleb128 0xc
	.4byte	.LASF13
	.byte	0x1
	.byte	0x23
	.4byte	0x4f
	.4byte	.LLST7
	.uleb128 0xd
	.4byte	.LVL4
	.4byte	0x2dc
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x54
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x8
	.8byte	0xaaaaaaab
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x31
	.byte	0x25
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x8
	.8byte	0xaaaaaaab
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x31
	.byte	0x25
	.byte	0x23
	.uleb128 0x4
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xc
	.4byte	0x38e38e39
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x34
	.byte	0x25
	.byte	0x22
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x1a0
	.uleb128 0xf
	.4byte	0x3a
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5d
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x1
	.byte	0x61
	.4byte	0x8d
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2a6
	.uleb128 0x9
	.string	"src"
	.byte	0x1
	.byte	0x61
	.4byte	0x19a
	.4byte	.LLST8
	.uleb128 0x10
	.string	"len"
	.byte	0x1
	.byte	0x61
	.4byte	0x5d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xa
	.4byte	.LASF11
	.byte	0x1
	.byte	0x62
	.4byte	0x1a5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x11
	.4byte	.LASF16
	.byte	0x1
	.byte	0x64
	.4byte	0x2a6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0xb
	.string	"out"
	.byte	0x1
	.byte	0x64
	.4byte	0x8d
	.4byte	.LLST9
	.uleb128 0xb
	.string	"pos"
	.byte	0x1
	.byte	0x64
	.4byte	0x8d
	.4byte	.LLST10
	.uleb128 0x11
	.4byte	.LASF17
	.byte	0x1
	.byte	0x64
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.string	"tmp"
	.byte	0x1
	.byte	0x64
	.4byte	0x3a
	.4byte	.LLST11
	.uleb128 0xb
	.string	"i"
	.byte	0x1
	.byte	0x65
	.4byte	0x5d
	.4byte	.LLST12
	.uleb128 0xc
	.4byte	.LASF18
	.byte	0x1
	.byte	0x65
	.4byte	0x5d
	.4byte	.LLST13
	.uleb128 0xc
	.4byte	.LASF12
	.byte	0x1
	.byte	0x65
	.4byte	0x5d
	.4byte	.LLST14
	.uleb128 0xb
	.string	"pad"
	.byte	0x1
	.byte	0x66
	.4byte	0x4f
	.4byte	.LLST15
	.uleb128 0x12
	.4byte	.LVL37
	.4byte	0x2e7
	.4byte	0x293
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.uleb128 0x13
	.4byte	.LVL48
	.4byte	0x2dc
	.uleb128 0x13
	.4byte	.LVL63
	.4byte	0x2f2
	.byte	0
	.uleb128 0x5
	.4byte	0x3a
	.4byte	0x2b6
	.uleb128 0x6
	.4byte	0x7f
	.byte	0xff
	.byte	0
	.uleb128 0x5
	.4byte	0x3a
	.4byte	0x2c6
	.uleb128 0x6
	.4byte	0x7f
	.byte	0x40
	.byte	0
	.uleb128 0x11
	.4byte	.LASF19
	.byte	0x1
	.byte	0xe
	.4byte	0x2d7
	.uleb128 0x5
	.byte	0x3
	.4byte	base64_table
	.uleb128 0xf
	.4byte	0x2b6
	.uleb128 0x14
	.4byte	.LASF20
	.4byte	.LASF20
	.byte	0x2
	.byte	0x65
	.uleb128 0x14
	.4byte	.LASF21
	.4byte	.LASF21
	.byte	0x3
	.byte	0x19
	.uleb128 0x14
	.4byte	.LASF22
	.4byte	.LASF22
	.byte	0x2
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL5
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL34
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL32
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x3
	.byte	0x79
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x3
	.byte	0x79
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x3
	.byte	0x79
	.sleb128 5
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x3
	.byte	0x79
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x3
	.byte	0x79
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL34
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL18
	.4byte	.LVL30
	.2byte	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LFE0
	.2byte	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL5
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL1
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4-1
	.4byte	.LVL5
	.2byte	0x55
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x8
	.8byte	0xaaaaaaab
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x31
	.byte	0x25
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x8
	.8byte	0xaaaaaaab
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x31
	.byte	0x25
	.byte	0x23
	.uleb128 0x4
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xc
	.4byte	0x38e38e39
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x34
	.byte	0x25
	.byte	0x22
	.byte	0x23
	.uleb128 0x5
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL30
	.2byte	0x57
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x32
	.byte	0x24
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x8
	.8byte	0xaaaaaaab
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x31
	.byte	0x25
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x32
	.byte	0x24
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x8
	.8byte	0xaaaaaaab
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x31
	.byte	0x25
	.byte	0x23
	.uleb128 0x4
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xc
	.4byte	0x38e38e39
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x34
	.byte	0x25
	.byte	0x22
	.byte	0x23
	.uleb128 0x5
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x55
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x8
	.8byte	0xaaaaaaab
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x31
	.byte	0x25
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x8
	.8byte	0xaaaaaaab
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x31
	.byte	0x25
	.byte	0x23
	.uleb128 0x4
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xc
	.4byte	0x38e38e39
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x34
	.byte	0x25
	.byte	0x22
	.byte	0x23
	.uleb128 0x5
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LFE0
	.2byte	0x57
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x32
	.byte	0x24
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x8
	.8byte	0xaaaaaaab
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x31
	.byte	0x25
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x32
	.byte	0x24
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x8
	.8byte	0xaaaaaaab
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x31
	.byte	0x25
	.byte	0x23
	.uleb128 0x4
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xc
	.4byte	0x38e38e39
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x34
	.byte	0x25
	.byte	0x22
	.byte	0x23
	.uleb128 0x5
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL34
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL35
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL76
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL48
	.4byte	.LVL63-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL65
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL75
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL49
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x3
	.byte	0x7e
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x3
	.byte	0x7e
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL62
	.4byte	.LVL63-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL66
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL75
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x9
	.byte	0x91
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0x130
	.byte	0x1c
	.4byte	.LVL52
	.4byte	.LVL56
	.2byte	0x11
	.byte	0x72
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x91
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0x130
	.byte	0x1c
	.4byte	.LVL56
	.4byte	.LVL63-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL65
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL49
	.4byte	.LVL63-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL65
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL49
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL58
	.4byte	.LVL66
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL71
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x8
	.byte	0x7a
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL48-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL36
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL63-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL65
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL71
	.4byte	.LFE1
	.2byte	0x2
	.byte	0x30
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
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF10:
	.string	"char"
.LASF18:
	.string	"count"
.LASF23:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF17:
	.string	"block"
.LASF15:
	.string	"base64_decode"
.LASF3:
	.string	"unsigned char"
.LASF9:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF26:
	.string	"size_t"
.LASF16:
	.string	"dtable"
.LASF21:
	.string	"memset"
.LASF19:
	.string	"base64_table"
.LASF11:
	.string	"out_len"
.LASF1:
	.string	"unsigned int"
.LASF13:
	.string	"line_len"
.LASF0:
	.string	"long long unsigned int"
.LASF12:
	.string	"olen"
.LASF24:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wpa2/utils/base64.c"
.LASF8:
	.string	"sizetype"
.LASF22:
	.string	"free"
.LASF6:
	.string	"long long int"
.LASF4:
	.string	"short int"
.LASF14:
	.string	"base64_encode"
.LASF7:
	.string	"long int"
.LASF25:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\wpa_supplicant"
.LASF2:
	.string	"signed char"
.LASF20:
	.string	"malloc"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
