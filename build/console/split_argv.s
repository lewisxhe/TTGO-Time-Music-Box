	.file	"split_argv.c"
	.text
.Ltext0:
	.section	.text.end_arg$2684,"ax",@progbits
	.align	4
	.type	end_arg$2684, @function
end_arg$2684:
.LFB1:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/console/split_argv.c"
	.loc 1 51 0
	entry	sp, 48
.LCFI0:
	l32i.n	a8, sp, 28
	.loc 1 52 0
	movi.n	a10, 0
	s32i.n	a10, a8, 16
	.loc 1 53 0
	l32i.n	a9, a8, 12
	addi.n	a11, a9, 1
	s32i.n	a11, a8, 12
	l32i.n	a11, a8, 8
	addx4	a9, a9, a11
	l32i.n	a11, a8, 4
	s32i.n	a11, a9, 0
	.loc 1 54 0
	s32i.n	a10, a8, 0
	retw.n
.LFE1:
	.size	end_arg$2684, .-end_arg$2684
	.section	.text.esp_console_split_argv,"ax",@progbits
	.literal_position
	.literal .LC0, .L7
	.align	4
	.global	esp_console_split_argv
	.type	esp_console_split_argv, @function
esp_console_split_argv:
.LFB0:
	.loc 1 35 0
.LVL0:
	entry	sp, 64
.LCFI1:
	.loc 1 34 0
	s32i.n	a3, sp, 8
.LVL1:
	.loc 1 39 0
	movi.n	a3, 0
	s32i.n	a3, sp, 0
	.loc 1 40 0
	s32i.n	a3, sp, 12
	.loc 1 41 0
	s32i.n	a2, sp, 4
.LVL2:
.LBB2:
	.loc 1 43 0
	mov.n	a3, a2
	j	.L3
.LVL3:
.L20:
.LBB3:
	.loc 1 44 0
	l8ui	a8, a3, 0
.LVL4:
	.loc 1 45 0
	beqz.n	a8, .L4
	.loc 1 48 0
	movi.n	a9, -1
	s32i.n	a9, sp, 16
	.loc 1 57 0
	l32i.n	a10, sp, 0
	movi.n	a9, 0xa
	bltu	a9, a10, .L5
	l32r	a9, .LC0
	addx4	a9, a10, a9
	l32i.n	a9, a9, 0
	jx	a9
	.section	.rodata.esp_console_split_argv,"a",@progbits
	.align	4
	.align	4
.L7:
	.word	.L6
	.word	.L8
	.word	.L9
	.word	.L5
	.word	.L5
	.word	.L5
	.word	.L5
	.word	.L5
	.word	.L5
	.word	.L10
	.word	.L10
	.section	.text.esp_console_split_argv
.L6:
	.loc 1 59 0
	beqi	a8, 32, .L5
	.loc 1 61 0
	movi.n	a9, 0x22
	bne	a8, a9, .L11
	.loc 1 62 0
	s32i.n	a2, sp, 4
	.loc 1 63 0
	movi.n	a8, 2
.LVL5:
	s32i.n	a8, sp, 0
	j	.L5
.LVL6:
.L11:
	.loc 1 64 0
	movi.n	a9, 0x5c
	bne	a8, a9, .L12
	.loc 1 65 0
	s32i.n	a2, sp, 4
	.loc 1 66 0
	movi.n	a8, 9
.LVL7:
	s32i.n	a8, sp, 0
	j	.L5
.LVL8:
.L12:
	.loc 1 68 0
	s32i.n	a2, sp, 4
	.loc 1 69 0
	movi.n	a9, 1
	s32i.n	a9, sp, 0
	.loc 1 70 0
	s32i.n	a8, sp, 16
	j	.L5
.L9:
	.loc 1 75 0
	movi.n	a9, 0x22
	bne	a8, a9, .L13
	.loc 1 76 0
	addi	a8, sp, -20
.LVL9:
	s32i.n	sp, a8, 0
	call8	end_arg$2684
.LVL10:
	j	.L5
.LVL11:
.L13:
	.loc 1 77 0
	movi.n	a9, 0x5c
	bne	a8, a9, .L14
	.loc 1 78 0
	movi.n	a8, 0xa
.LVL12:
	s32i.n	a8, sp, 0
	j	.L5
.LVL13:
.L14:
	.loc 1 80 0
	s32i.n	a8, sp, 16
	j	.L5
.L10:
	.loc 1 86 0
	addi	a11, a8, -92
	movi.n	a13, 1
	movi.n	a9, 0
	mov.n	a5, a9
	moveqz	a5, a13, a11
	addi	a12, a8, -34
	moveqz	a9, a13, a12
	or	a9, a9, a5
	bnez.n	a9, .L15
	.loc 1 86 0 is_stmt 0 discriminator 1
	bnei	a8, 32, .L16
.L15:
	.loc 1 87 0 is_stmt 1
	s32i.n	a8, sp, 16
.L16:
	.loc 1 91 0
	movi.n	a8, -9
.LVL14:
	and	a10, a10, a8
	s32i.n	a10, sp, 0
	.loc 1 92 0
	j	.L5
.LVL15:
.L8:
	.loc 1 95 0
	bnei	a8, 32, .L17
	.loc 1 96 0
	addi	a8, sp, -20
.LVL16:
	s32i.n	sp, a8, 0
	call8	end_arg$2684
.LVL17:
	j	.L5
.LVL18:
.L17:
	.loc 1 97 0
	movi.n	a9, 0x5c
	bne	a8, a9, .L18
	.loc 1 98 0
	movi.n	a8, 9
.LVL19:
	s32i.n	a8, sp, 0
	j	.L5
.LVL20:
.L18:
	.loc 1 100 0
	s32i.n	a8, sp, 16
.LVL21:
.L5:
	.loc 1 105 0
	l32i.n	a8, sp, 16
	bltz	a8, .L19
	.loc 1 106 0
	s8i	a8, a2, 0
	.loc 1 107 0
	addi.n	a2, a2, 1
.LVL22:
.L19:
.LBE3:
	.loc 1 43 0 discriminator 2
	addi.n	a3, a3, 1
.LVL23:
.L3:
	.loc 1 43 0 is_stmt 0 discriminator 1
	addi.n	a9, a4, -1
	l32i.n	a8, sp, 12
	bltu	a8, a9, .L20
.L4:
.LBE2:
	.loc 1 111 0 is_stmt 1
	movi.n	a3, 0
.LVL24:
	s8i	a3, a2, 0
	.loc 1 113 0
	l32i.n	a2, sp, 0
.LVL25:
	beqz.n	a2, .L21
	.loc 1 113 0 is_stmt 0 discriminator 1
	l32i.n	a2, sp, 12
	bgeu	a2, a9, .L21
	.loc 1 114 0 is_stmt 1
	addi.n	a3, a2, 1
	s32i.n	a3, sp, 12
	l32i.n	a3, sp, 8
	addx4	a2, a2, a3
	l32i.n	a3, sp, 4
	s32i.n	a3, a2, 0
.L21:
	.loc 1 117 0
	l32i.n	a3, sp, 8
	l32i.n	a2, sp, 12
	addx4	a2, a2, a3
	movi.n	a3, 0
	s32i.n	a3, a2, 0
	.loc 1 120 0
	l32i.n	a2, sp, 12
	retw.n
.LFE0:
	.size	esp_console_split_argv, .-esp_console_split_argv
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
	.uleb128 0x30
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
	.uleb128 0x40
	.align	4
.LEFDE2:
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x229
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0xc
	.4byte	.LASF32
	.4byte	.LASF33
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
	.4byte	.LASF16
	.byte	0x2
	.byte	0xd8
	.4byte	0x48
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
	.4byte	0x83
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x6
	.byte	0x4
	.4byte	0x48
	.byte	0x1
	.byte	0x15
	.4byte	0xb5
	.uleb128 0x7
	.4byte	.LASF11
	.byte	0
	.uleb128 0x7
	.4byte	.LASF12
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x9
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0xa
	.byte	0
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x1
	.byte	0x20
	.4byte	0x8a
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7d
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x1
	.byte	0x22
	.4byte	0x5d
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x227
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x1
	.byte	0x22
	.4byte	0x7d
	.4byte	.LLST0
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x1
	.byte	0x22
	.4byte	0x5d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x1
	.byte	0x24
	.4byte	0x227
	.byte	0x22
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x1
	.byte	0x25
	.4byte	0x227
	.byte	0x5c
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x1
	.byte	0x26
	.4byte	0x227
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x1
	.byte	0x2a
	.4byte	0x7d
	.4byte	.LLST1
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x1
	.byte	0x27
	.4byte	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x1
	.byte	0x28
	.4byte	0x41
	.uleb128 0x4
	.byte	0x91
	.sleb128 -64
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x1
	.byte	0x29
	.4byte	0x7d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -64
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x1
	.byte	0x30
	.4byte	0x41
	.uleb128 0x4
	.byte	0x91
	.sleb128 -64
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x1
	.byte	0x22
	.4byte	0xc0
	.uleb128 0x4
	.byte	0x91
	.sleb128 -64
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x1
	.byte	0x2b
	.4byte	0x7d
	.4byte	.LLST2
	.uleb128 0xe
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x1
	.byte	0x2c
	.4byte	0x41
	.4byte	.LLST3
	.uleb128 0xf
	.4byte	.LASF35
	.byte	0x1
	.byte	0x33
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1
	.byte	0x58
	.4byte	0x212
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x1
	.byte	0x30
	.4byte	0x41
	.uleb128 0x4
	.byte	0x78
	.sleb128 0
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x1
	.byte	0x28
	.4byte	0x41
	.uleb128 0x4
	.byte	0x78
	.sleb128 0
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x1
	.byte	0x22
	.4byte	0xc0
	.uleb128 0x4
	.byte	0x78
	.sleb128 0
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x1
	.byte	0x29
	.4byte	0x7d
	.uleb128 0x4
	.byte	0x78
	.sleb128 0
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x1
	.byte	0x27
	.4byte	0xb5
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL10
	.4byte	0x1ac
	.uleb128 0x10
	.4byte	.LVL17
	.4byte	0x1ac
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0x41
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x4
	.byte	0x1
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
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x48
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x3
	.byte	0x7c
	.sleb128 34
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x58
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF16:
	.string	"size_t"
.LASF24:
	.string	"state"
.LASF14:
	.string	"SS_ARG_ESCAPED"
.LASF28:
	.string	"argv"
.LASF12:
	.string	"SS_ARG"
.LASF26:
	.string	"next_arg_start"
.LASF31:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF29:
	.string	"in_ptr"
.LASF23:
	.string	"out_ptr"
.LASF19:
	.string	"argv_size"
.LASF0:
	.string	"signed char"
.LASF32:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/console/split_argv.c"
.LASF1:
	.string	"unsigned char"
.LASF9:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF33:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\console"
.LASF15:
	.string	"SS_QUOTED_ARG_ESCAPED"
.LASF13:
	.string	"SS_QUOTED_ARG"
.LASF22:
	.string	"SPACE"
.LASF4:
	.string	"unsigned int"
.LASF6:
	.string	"long long unsigned int"
.LASF18:
	.string	"line"
.LASF21:
	.string	"ESCAPE"
.LASF8:
	.string	"sizetype"
.LASF34:
	.string	"esp_console_split_argv"
.LASF17:
	.string	"split_state_t"
.LASF5:
	.string	"long long int"
.LASF10:
	.string	"char"
.LASF27:
	.string	"char_out"
.LASF2:
	.string	"short int"
.LASF30:
	.string	"char_in"
.LASF25:
	.string	"argc"
.LASF7:
	.string	"long int"
.LASF11:
	.string	"SS_SPACE"
.LASF20:
	.string	"QUOTE"
.LASF35:
	.string	"end_arg"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
