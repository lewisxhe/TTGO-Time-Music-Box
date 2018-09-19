	.file	"hash_functions.c"
	.text
.Ltext0:
	.section	.text.hash_function_naive,"ax",@progbits
	.align	4
	.global	hash_function_naive
	.type	hash_function_naive, @function
hash_function_naive:
.LFB0:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/hash_functions.c"
	.loc 1 24 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 26 0
	retw.n
.LFE0:
	.size	hash_function_naive, .-hash_function_naive
	.section	.text.hash_function_integer,"ax",@progbits
	.literal_position
	.literal .LC0, -1640531535
	.align	4
	.global	hash_function_integer
	.type	hash_function_integer, @function
hash_function_integer:
.LFB1:
	.loc 1 29 0
.LVL1:
	entry	sp, 32
.LCFI1:
	.loc 1 31 0
	l32r	a8, .LC0
	mull	a2, a2, a8
.LVL2:
	retw.n
.LFE1:
	.size	hash_function_integer, .-hash_function_integer
	.section	.text.hash_function_pointer,"ax",@progbits
	.literal_position
	.literal .LC1, -1640531535
	.align	4
	.global	hash_function_pointer
	.type	hash_function_pointer, @function
hash_function_pointer:
.LFB2:
	.loc 1 34 0
.LVL3:
	entry	sp, 32
.LCFI2:
	.loc 1 36 0
	l32r	a8, .LC1
	mull	a2, a2, a8
.LVL4:
	retw.n
.LFE2:
	.size	hash_function_pointer, .-hash_function_pointer
	.section	.text.hash_function_string,"ax",@progbits
	.literal_position
	.literal .LC2, 5381
	.align	4
	.global	hash_function_string
	.type	hash_function_string, @function
hash_function_string:
.LFB3:
	.loc 1 39 0
.LVL5:
	entry	sp, 32
.LCFI3:
.LVL6:
	.loc 1 42 0
	mov.n	a10, a2
	call8	strlen
.LVL7:
.LBB2:
	.loc 1 43 0
	movi.n	a9, 0
.LBE2:
	.loc 1 40 0
	l32r	a8, .LC2
.LBB3:
	.loc 1 43 0
	j	.L5
.LVL8:
.L6:
	.loc 1 44 0 discriminator 3
	slli	a11, a8, 5
	add.n	a8, a8, a11
.LVL9:
	add.n	a11, a2, a9
	l8ui	a11, a11, 0
	add.n	a8, a8, a11
.LVL10:
	.loc 1 43 0 discriminator 3
	addi.n	a9, a9, 1
.LVL11:
.L5:
	.loc 1 43 0 is_stmt 0 discriminator 1
	bltu	a9, a10, .L6
.LBE3:
	.loc 1 47 0 is_stmt 1
	mov.n	a2, a8
.LVL12:
	retw.n
.LFE3:
	.size	hash_function_string, .-hash_function_string
	.section	.text.hash_function_blob,"ax",@progbits
	.align	4
	.global	hash_function_blob
	.type	hash_function_blob, @function
hash_function_blob:
.LFB4:
	.loc 1 50 0
.LVL13:
	entry	sp, 32
.LCFI4:
	.loc 1 53 0
	j	.L8
.LVL14:
.L9:
	.loc 1 57 0
	add.n	a11, a4, a10
	l8ui	a12, a11, 0
	slli	a9, a12, 7
	addi.n	a10, a10, -1
.LVL15:
	add.n	a8, a4, a10
	l8ui	a8, a8, 0
	srli	a8, a8, 1
	or	a8, a8, a9
	add.n	a8, a12, a8
	s8i	a8, a11, 0
.LVL16:
	j	.L10
.LVL17:
.L11:
	movi.n	a10, 3
.L10:
.LVL18:
	.loc 1 56 0
	bnez.n	a10, .L9
	.loc 1 61 0
	l8ui	a8, a4, 0
.LVL19:
	l8ui	a3, a2, 0
	slli	a9, a8, 7
	add.n	a8, a8, a9
	add.n	a8, a3, a8
	s8i	a8, a4, 0
	.loc 1 53 0
	mov.n	a3, a13
	.loc 1 61 0
	addi.n	a2, a2, 1
.LVL20:
.L8:
	.loc 1 53 0
	addi.n	a13, a3, -1
.LVL21:
	bnez.n	a3, .L11
	.loc 1 63 0
	retw.n
.LFE4:
	.size	hash_function_blob, .-hash_function_blob
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
	.uleb128 0x20
	.align	4
.LEFDE8:
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/hash_map.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1fb
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0xc
	.4byte	.LASF22
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x2
	.byte	0xd8
	.4byte	0x33
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x5
	.byte	0x4
	.4byte	0x48
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x5
	.byte	0x4
	.4byte	0x8c
	.uleb128 0x6
	.4byte	0x7f
	.uleb128 0x5
	.byte	0x4
	.4byte	0x97
	.uleb128 0x7
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x22
	.4byte	0x28
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF13
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x1
	.byte	0x17
	.4byte	0x98
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd1
	.uleb128 0x9
	.string	"key"
	.byte	0x1
	.byte	0x17
	.4byte	0x91
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x1
	.byte	0x1c
	.4byte	0x98
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfa
	.uleb128 0xa
	.string	"key"
	.byte	0x1
	.byte	0x1c
	.4byte	0x91
	.4byte	.LLST0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x1
	.byte	0x21
	.4byte	0x98
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x123
	.uleb128 0xa
	.string	"key"
	.byte	0x1
	.byte	0x21
	.4byte	0x91
	.4byte	.LLST1
	.byte	0
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x1
	.byte	0x26
	.4byte	0x98
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19e
	.uleb128 0xa
	.string	"key"
	.byte	0x1
	.byte	0x26
	.4byte	0x91
	.4byte	.LLST2
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x1
	.byte	0x28
	.4byte	0x98
	.4byte	.LLST3
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x1
	.byte	0x29
	.4byte	0x86
	.4byte	.LLST4
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x1
	.byte	0x2a
	.4byte	0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xd
	.4byte	.Ldebug_ranges0+0
	.4byte	0x18d
	.uleb128 0xe
	.string	"i"
	.byte	0x1
	.byte	0x2b
	.4byte	0x28
	.4byte	.LLST5
	.byte	0
	.uleb128 0xf
	.4byte	.LVL7
	.4byte	0x1f3
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF23
	.byte	0x1
	.byte	0x31
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e8
	.uleb128 0xa
	.string	"s"
	.byte	0x1
	.byte	0x31
	.4byte	0x1e8
	.4byte	.LLST6
	.uleb128 0xa
	.string	"len"
	.byte	0x1
	.byte	0x31
	.4byte	0x33
	.4byte	.LLST7
	.uleb128 0x9
	.string	"h"
	.byte	0x1
	.byte	0x31
	.4byte	0x79
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xe
	.string	"j"
	.byte	0x1
	.byte	0x33
	.4byte	0x28
	.4byte	.LLST8
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1ee
	.uleb128 0x6
	.4byte	0x48
	.uleb128 0x12
	.4byte	.LASF24
	.4byte	.LASF24
	.byte	0x4
	.byte	0x21
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
	.uleb128 0xe
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
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x18
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
	.uleb128 0xd
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x12
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
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xa
	.2byte	0x1505
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL10
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL13
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL14
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL21
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18
	.4byte	.LVL20
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	0
	.4byte	0
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF12:
	.string	"hash_index_t"
.LASF21:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF15:
	.string	"hash_function_integer"
.LASF23:
	.string	"hash_function_blob"
.LASF24:
	.string	"strlen"
.LASF3:
	.string	"unsigned char"
.LASF9:
	.string	"long unsigned int"
.LASF1:
	.string	"short unsigned int"
.LASF11:
	.string	"size_t"
.LASF14:
	.string	"hash_function_naive"
.LASF22:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/hash_functions.c"
.LASF17:
	.string	"hash_function_string"
.LASF0:
	.string	"unsigned int"
.LASF6:
	.string	"long long unsigned int"
.LASF18:
	.string	"hash"
.LASF8:
	.string	"sizetype"
.LASF5:
	.string	"long long int"
.LASF19:
	.string	"name"
.LASF20:
	.string	"string_len"
.LASF4:
	.string	"short int"
.LASF16:
	.string	"hash_function_pointer"
.LASF7:
	.string	"long int"
.LASF10:
	.string	"char"
.LASF2:
	.string	"signed char"
.LASF13:
	.string	"_Bool"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
