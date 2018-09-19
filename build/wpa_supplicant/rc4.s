	.file	"rc4.c"
	.text
.Ltext0:
	.section	.text.rc4_skip,"ax",@progbits
	.align	4
	.global	rc4_skip
	.type	rc4_skip, @function
rc4_skip:
.LFB1:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/crypto/rc4.c"
	.loc 1 25 0
.LVL0:
	entry	sp, 288
.LCFI0:
.LVL1:
	.loc 1 31 0
	movi.n	a8, 0
	j	.L2
.LVL2:
.L3:
	.loc 1 32 0 discriminator 3
	add.n	a9, sp, a8
	s8i	a8, a9, 0
	.loc 1 31 0 discriminator 3
	addi.n	a8, a8, 1
.LVL3:
.L2:
	.loc 1 31 0 is_stmt 0 discriminator 1
	movi	a9, 0xff
	bgeu	a9, a8, .L3
	movi.n	a10, 0
	mov.n	a8, a10
.LVL4:
	mov.n	a9, a10
	j	.L4
.LVL5:
.L6:
	.loc 1 36 0 is_stmt 1
	add.n	a11, sp, a9
	l8ui	a12, a11, 0
	add.n	a8, a12, a8
.LVL6:
	add.n	a11, a2, a10
	l8ui	a11, a11, 0
	add.n	a8, a11, a8
	extui	a8, a8, 0, 8
.LVL7:
	.loc 1 37 0
	addi.n	a10, a10, 1
.LVL8:
	.loc 1 38 0
	bltu	a10, a3, .L5
	.loc 1 39 0
	movi.n	a10, 0
.LVL9:
.L5:
.LBB2:
	.loc 1 40 0 discriminator 2
	add.n	a11, sp, a8
	l8ui	a14, a11, 0
	add.n	a13, sp, a9
	s8i	a14, a13, 0
	s8i	a12, a11, 0
.LBE2:
	.loc 1 35 0 discriminator 2
	addi.n	a9, a9, 1
.LVL10:
.L4:
	.loc 1 35 0 is_stmt 0 discriminator 1
	movi	a11, 0xff
	bgeu	a11, a9, .L6
	movi.n	a8, 0
.LVL11:
	mov.n	a3, a8
.LVL12:
	mov.n	a2, a8
.LVL13:
	j	.L7
.LVL14:
.L8:
	.loc 1 46 0 is_stmt 1 discriminator 3
	addi.n	a2, a2, 1
.LVL15:
	extui	a2, a2, 0, 8
.LVL16:
	.loc 1 47 0 discriminator 3
	add.n	a11, sp, a2
	l8ui	a10, a11, 0
	add.n	a3, a10, a3
.LVL17:
	extui	a3, a3, 0, 8
.LVL18:
.LBB3:
	.loc 1 48 0 discriminator 3
	add.n	a9, sp, a3
	l8ui	a12, a9, 0
	s8i	a12, a11, 0
.LVL19:
	s8i	a10, a9, 0
.LBE3:
	.loc 1 45 0 discriminator 3
	addi.n	a8, a8, 1
.LVL20:
.L7:
	.loc 1 45 0 is_stmt 0 discriminator 1
	bltu	a8, a4, .L8
	movi.n	a9, 0
	j	.L9
.LVL21:
.L10:
	.loc 1 54 0 is_stmt 1 discriminator 3
	addi.n	a2, a2, 1
.LVL22:
	extui	a2, a2, 0, 8
.LVL23:
	.loc 1 55 0 discriminator 3
	add.n	a8, sp, a2
	l8ui	a4, a8, 0
	add.n	a3, a4, a3
.LVL24:
	extui	a3, a3, 0, 8
.LVL25:
.LBB4:
	.loc 1 56 0 discriminator 3
	add.n	a10, sp, a3
	l8ui	a11, a10, 0
	s8i	a11, a8, 0
.LVL26:
	s8i	a4, a10, 0
.LVL27:
.LBE4:
	.loc 1 57 0 discriminator 3
	l8ui	a8, a8, 0
	add.n	a4, a8, a4
.LVL28:
	extui	a4, a4, 0, 8
	add.n	a4, sp, a4
	l8ui	a8, a4, 0
	l8ui	a4, a5, 0
	xor	a4, a8, a4
	s8i	a4, a5, 0
	.loc 1 53 0 discriminator 3
	addi.n	a9, a9, 1
.LVL29:
	.loc 1 57 0 discriminator 3
	addi.n	a5, a5, 1
.LVL30:
.L9:
	.loc 1 53 0 discriminator 1
	bltu	a9, a6, .L10
	.loc 1 61 0
	movi.n	a2, 0
.LVL31:
	retw.n
.LFE1:
	.size	rc4_skip, .-rc4_skip
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
	.uleb128 0x120
	.align	4
.LEFDE0:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1e1
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0xc
	.4byte	.LASF22
	.4byte	.LASF23
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF4
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
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x1a
	.4byte	0x5e
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
	.byte	0x2d
	.4byte	0x53
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0xd8
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x5
	.string	"u32"
	.byte	0x5
	.byte	0xa6
	.4byte	0x7e
	.uleb128 0x5
	.string	"u8"
	.byte	0x5
	.byte	0xa8
	.4byte	0x73
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x1
	.byte	0x17
	.4byte	0x4c
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c7
	.uleb128 0x7
	.string	"key"
	.byte	0x1
	.byte	0x17
	.4byte	0x1c7
	.4byte	.LLST0
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x1
	.byte	0x17
	.4byte	0x89
	.4byte	.LLST1
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x1
	.byte	0x17
	.4byte	0x89
	.4byte	.LLST2
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x1
	.byte	0x18
	.4byte	0x1d2
	.4byte	.LLST3
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x1
	.byte	0x18
	.4byte	0x89
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xa
	.string	"i"
	.byte	0x1
	.byte	0x1a
	.4byte	0xb0
	.4byte	.LLST4
	.uleb128 0xa
	.string	"j"
	.byte	0x1
	.byte	0x1a
	.4byte	0xb0
	.4byte	.LLST5
	.uleb128 0xa
	.string	"k"
	.byte	0x1
	.byte	0x1a
	.4byte	0xb0
	.4byte	.LLST6
	.uleb128 0xb
	.string	"S"
	.byte	0x1
	.byte	0x1b
	.4byte	0x1d8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0xa
	.string	"pos"
	.byte	0x1
	.byte	0x1b
	.4byte	0x1d2
	.4byte	.LLST7
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x1
	.byte	0x1c
	.4byte	0x89
	.4byte	.LLST8
	.uleb128 0xd
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x194
	.uleb128 0xa
	.string	"t"
	.byte	0x1
	.byte	0x28
	.4byte	0xbb
	.4byte	.LLST9
	.byte	0
	.uleb128 0xd
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x1af
	.uleb128 0xa
	.string	"t"
	.byte	0x1
	.byte	0x30
	.4byte	0xbb
	.4byte	.LLST10
	.byte	0
	.uleb128 0xe
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0xa
	.string	"t"
	.byte	0x1
	.byte	0x38
	.4byte	0xbb
	.4byte	.LLST11
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1cd
	.uleb128 0x10
	.4byte	0xbb
	.uleb128 0xf
	.byte	0x4
	.4byte	0xbb
	.uleb128 0x11
	.4byte	0xbb
	.uleb128 0x12
	.4byte	0x9b
	.byte	0xff
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x18
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL21
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL21
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL5
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL7
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL14
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL18
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL25
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL14
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL21
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL21
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL27
	.4byte	.LVL30
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL5
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x7b
	.sleb128 0
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x78
	.sleb128 0
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x54
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF4:
	.string	"__uint8_t"
.LASF11:
	.string	"size_t"
.LASF17:
	.string	"skip"
.LASF21:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF19:
	.string	"data_len"
.LASF24:
	.string	"rc4_skip"
.LASF18:
	.string	"data"
.LASF1:
	.string	"unsigned char"
.LASF14:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF20:
	.string	"kpos"
.LASF5:
	.string	"__uint32_t"
.LASF6:
	.string	"unsigned int"
.LASF8:
	.string	"long long unsigned int"
.LASF9:
	.string	"uint8_t"
.LASF22:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/crypto/rc4.c"
.LASF13:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF2:
	.string	"short int"
.LASF16:
	.string	"keylen"
.LASF10:
	.string	"uint32_t"
.LASF12:
	.string	"long int"
.LASF15:
	.string	"char"
.LASF23:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\wpa_supplicant"
.LASF0:
	.string	"signed char"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
