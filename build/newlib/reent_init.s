	.file	"reent_init.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC2:
	.string	"C"
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC0, _global_impure_ptr
	.literal .LC1, _cleanup_r
	.literal .LC3, .LC2
	.align	4
	.global	esp_reent_init
	.type	esp_reent_init, @function
esp_reent_init:
.LFB0:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/reent_init.c"
	.loc 1 34 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 35 0
	movi	a12, 0xf0
	movi.n	a11, 0
	mov.n	a10, a2
	call8	memset
.LVL1:
	.loc 1 36 0
	l32r	a8, .LC0
	l32i.n	a8, a8, 0
	l32i.n	a9, a8, 8
	s32i.n	a9, a2, 8
	.loc 1 37 0
	l32i.n	a9, a8, 12
	s32i.n	a9, a2, 12
	.loc 1 38 0
	l32i.n	a8, a8, 4
	s32i.n	a8, a2, 4
	.loc 1 39 0
	l32r	a8, .LC1
	s32i.n	a8, a2, 40
	.loc 1 40 0
	movi.n	a8, 1
	s32i.n	a8, a2, 24
	.loc 1 41 0
	movi.n	a8, 0
	s32i	a8, a2, 216
	.loc 1 42 0
	s32i	a8, a2, 220
	.loc 1 43 0
	s32i	a8, a2, 224
	.loc 1 44 0
	l32r	a8, .LC3
	s32i.n	a8, a2, 32
	retw.n
.LFE0:
	.size	esp_reent_init, .-esp_reent_init
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
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/lock.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/_types.h"
	.file 4 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/reent.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x82c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF116
	.byte	0xc
	.4byte	.LASF117
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0xb
	.4byte	0x21
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0xc
	.4byte	0x59
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x3
	.byte	0x10
	.4byte	0x7a
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x27
	.4byte	0x7a
	.uleb128 0x5
	.4byte	.LASF12
	.byte	0x4
	.2byte	0x165
	.4byte	0x28
	.uleb128 0x6
	.byte	0x4
	.byte	0x3
	.byte	0x4a
	.4byte	0xb7
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x3
	.byte	0x4c
	.4byte	0x8c
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x3
	.byte	0x4d
	.4byte	0xb7
	.byte	0
	.uleb128 0x8
	.4byte	0x3d
	.4byte	0xc7
	.uleb128 0x9
	.4byte	0xc7
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0xa
	.byte	0x8
	.byte	0x3
	.byte	0x47
	.4byte	0xef
	.uleb128 0xb
	.4byte	.LASF16
	.byte	0x3
	.byte	0x49
	.4byte	0x21
	.byte	0
	.uleb128 0xb
	.4byte	.LASF17
	.byte	0x3
	.byte	0x4e
	.4byte	0x98
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x3
	.byte	0x4f
	.4byte	0xce
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x3
	.byte	0x53
	.4byte	0x64
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x5
	.byte	0x16
	.4byte	0x112
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF21
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x18
	.byte	0x5
	.byte	0x2d
	.4byte	0x16c
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x5
	.byte	0x2f
	.4byte	0x16c
	.byte	0
	.uleb128 0xe
	.string	"_k"
	.byte	0x5
	.byte	0x30
	.4byte	0x21
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x5
	.byte	0x30
	.4byte	0x21
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x5
	.byte	0x30
	.4byte	0x21
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x5
	.byte	0x30
	.4byte	0x21
	.byte	0x10
	.uleb128 0xe
	.string	"_x"
	.byte	0x5
	.byte	0x31
	.4byte	0x172
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x119
	.uleb128 0x8
	.4byte	0x107
	.4byte	0x182
	.uleb128 0x9
	.4byte	0xc7
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x24
	.byte	0x5
	.byte	0x35
	.4byte	0x1fb
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x5
	.byte	0x37
	.4byte	0x21
	.byte	0
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x5
	.byte	0x38
	.4byte	0x21
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x5
	.byte	0x39
	.4byte	0x21
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x5
	.byte	0x3a
	.4byte	0x21
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x5
	.byte	0x3b
	.4byte	0x21
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x5
	.byte	0x3c
	.4byte	0x21
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x5
	.byte	0x3d
	.4byte	0x21
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x5
	.byte	0x3e
	.4byte	0x21
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x5
	.byte	0x3f
	.4byte	0x21
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF37
	.2byte	0x108
	.byte	0x5
	.byte	0x48
	.4byte	0x23b
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x5
	.byte	0x49
	.4byte	0x23b
	.byte	0
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x5
	.byte	0x4a
	.4byte	0x23b
	.byte	0x80
	.uleb128 0x11
	.4byte	.LASF40
	.byte	0x5
	.byte	0x4c
	.4byte	0x107
	.2byte	0x100
	.uleb128 0x11
	.4byte	.LASF41
	.byte	0x5
	.byte	0x4f
	.4byte	0x107
	.2byte	0x104
	.byte	0
	.uleb128 0x8
	.4byte	0x105
	.4byte	0x24b
	.uleb128 0x9
	.4byte	0xc7
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x8c
	.byte	0x5
	.byte	0x53
	.4byte	0x288
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x5
	.byte	0x54
	.4byte	0x288
	.byte	0
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x5
	.byte	0x55
	.4byte	0x21
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x5
	.byte	0x56
	.4byte	0x28e
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x5
	.byte	0x57
	.4byte	0x2a5
	.byte	0x88
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x24b
	.uleb128 0x8
	.4byte	0x29e
	.4byte	0x29e
	.uleb128 0x9
	.4byte	0xc7
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2a4
	.uleb128 0x12
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1fb
	.uleb128 0xd
	.4byte	.LASF46
	.byte	0x8
	.byte	0x5
	.byte	0x73
	.4byte	0x2d0
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x5
	.byte	0x74
	.4byte	0x2d0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x5
	.byte	0x75
	.4byte	0x21
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x3d
	.uleb128 0x13
	.4byte	.LASF49
	.byte	0xf0
	.byte	0x5
	.2byte	0x172
	.4byte	0x41c
	.uleb128 0x14
	.4byte	.LASF50
	.byte	0x5
	.2byte	0x176
	.4byte	0x21
	.byte	0
	.uleb128 0x14
	.4byte	.LASF51
	.byte	0x5
	.2byte	0x17b
	.4byte	0x651
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF52
	.byte	0x5
	.2byte	0x17b
	.4byte	0x651
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF53
	.byte	0x5
	.2byte	0x17b
	.4byte	0x651
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF54
	.byte	0x5
	.2byte	0x17d
	.4byte	0x21
	.byte	0x10
	.uleb128 0x14
	.4byte	.LASF55
	.byte	0x5
	.2byte	0x17f
	.4byte	0x56a
	.byte	0x14
	.uleb128 0x14
	.4byte	.LASF56
	.byte	0x5
	.2byte	0x181
	.4byte	0x21
	.byte	0x18
	.uleb128 0x14
	.4byte	.LASF57
	.byte	0x5
	.2byte	0x183
	.4byte	0x21
	.byte	0x1c
	.uleb128 0x14
	.4byte	.LASF58
	.byte	0x5
	.2byte	0x184
	.4byte	0x59b
	.byte	0x20
	.uleb128 0x15
	.string	"_mp"
	.byte	0x5
	.2byte	0x186
	.4byte	0x79e
	.byte	0x24
	.uleb128 0x14
	.4byte	.LASF59
	.byte	0x5
	.2byte	0x188
	.4byte	0x7af
	.byte	0x28
	.uleb128 0x14
	.4byte	.LASF60
	.byte	0x5
	.2byte	0x18a
	.4byte	0x21
	.byte	0x2c
	.uleb128 0x14
	.4byte	.LASF61
	.byte	0x5
	.2byte	0x18d
	.4byte	0x21
	.byte	0x30
	.uleb128 0x14
	.4byte	.LASF62
	.byte	0x5
	.2byte	0x18e
	.4byte	0x56a
	.byte	0x34
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x5
	.2byte	0x190
	.4byte	0x7b5
	.byte	0x38
	.uleb128 0x14
	.4byte	.LASF64
	.byte	0x5
	.2byte	0x191
	.4byte	0x7bb
	.byte	0x3c
	.uleb128 0x14
	.4byte	.LASF65
	.byte	0x5
	.2byte	0x192
	.4byte	0x56a
	.byte	0x40
	.uleb128 0x14
	.4byte	.LASF66
	.byte	0x5
	.2byte	0x195
	.4byte	0x7cc
	.byte	0x44
	.uleb128 0x14
	.4byte	.LASF42
	.byte	0x5
	.2byte	0x199
	.4byte	0x288
	.byte	0x48
	.uleb128 0x14
	.4byte	.LASF67
	.byte	0x5
	.2byte	0x19a
	.4byte	0x24b
	.byte	0x4c
	.uleb128 0x14
	.4byte	.LASF68
	.byte	0x5
	.2byte	0x19d
	.4byte	0x616
	.byte	0xd8
	.uleb128 0x14
	.4byte	.LASF69
	.byte	0x5
	.2byte	0x19e
	.4byte	0x651
	.byte	0xe4
	.uleb128 0x14
	.4byte	.LASF70
	.byte	0x5
	.2byte	0x19f
	.4byte	0x7d8
	.byte	0xe8
	.uleb128 0x14
	.4byte	.LASF71
	.byte	0x5
	.2byte	0x1a0
	.4byte	0x56a
	.byte	0xec
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2d6
	.uleb128 0xd
	.4byte	.LASF72
	.byte	0x68
	.byte	0x5
	.byte	0xb3
	.4byte	0x54c
	.uleb128 0xe
	.string	"_p"
	.byte	0x5
	.byte	0xb4
	.4byte	0x2d0
	.byte	0
	.uleb128 0xe
	.string	"_r"
	.byte	0x5
	.byte	0xb5
	.4byte	0x21
	.byte	0x4
	.uleb128 0xe
	.string	"_w"
	.byte	0x5
	.byte	0xb6
	.4byte	0x21
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF73
	.byte	0x5
	.byte	0xb7
	.4byte	0x44
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF74
	.byte	0x5
	.byte	0xb8
	.4byte	0x44
	.byte	0xe
	.uleb128 0xe
	.string	"_bf"
	.byte	0x5
	.byte	0xb9
	.4byte	0x2ab
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF75
	.byte	0x5
	.byte	0xba
	.4byte	0x21
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF76
	.byte	0x5
	.byte	0xbd
	.4byte	0x41c
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF77
	.byte	0x5
	.byte	0xc1
	.4byte	0x105
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF78
	.byte	0x5
	.byte	0xc3
	.4byte	0x577
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF79
	.byte	0x5
	.byte	0xc5
	.4byte	0x5a6
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF80
	.byte	0x5
	.byte	0xc8
	.4byte	0x5ca
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF81
	.byte	0x5
	.byte	0xc9
	.4byte	0x5e4
	.byte	0x30
	.uleb128 0xe
	.string	"_ub"
	.byte	0x5
	.byte	0xcc
	.4byte	0x2ab
	.byte	0x34
	.uleb128 0xe
	.string	"_up"
	.byte	0x5
	.byte	0xcd
	.4byte	0x2d0
	.byte	0x3c
	.uleb128 0xe
	.string	"_ur"
	.byte	0x5
	.byte	0xce
	.4byte	0x21
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF82
	.byte	0x5
	.byte	0xd1
	.4byte	0x5ea
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF83
	.byte	0x5
	.byte	0xd2
	.4byte	0x5fa
	.byte	0x47
	.uleb128 0xe
	.string	"_lb"
	.byte	0x5
	.byte	0xd5
	.4byte	0x2ab
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF84
	.byte	0x5
	.byte	0xd8
	.4byte	0x21
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF85
	.byte	0x5
	.byte	0xd9
	.4byte	0x6f
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF86
	.byte	0x5
	.byte	0xe0
	.4byte	0xfa
	.byte	0x58
	.uleb128 0xb
	.4byte	.LASF87
	.byte	0x5
	.byte	0xe2
	.4byte	0xef
	.byte	0x5c
	.uleb128 0xb
	.4byte	.LASF88
	.byte	0x5
	.byte	0xe3
	.4byte	0x21
	.byte	0x64
	.byte	0
	.uleb128 0x16
	.4byte	0x21
	.4byte	0x56a
	.uleb128 0x17
	.4byte	0x41c
	.uleb128 0x17
	.4byte	0x105
	.uleb128 0x17
	.4byte	0x56a
	.uleb128 0x17
	.4byte	0x21
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x570
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF89
	.uleb128 0xf
	.byte	0x4
	.4byte	0x54c
	.uleb128 0x16
	.4byte	0x21
	.4byte	0x59b
	.uleb128 0x17
	.4byte	0x41c
	.uleb128 0x17
	.4byte	0x105
	.uleb128 0x17
	.4byte	0x59b
	.uleb128 0x17
	.4byte	0x21
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5a1
	.uleb128 0x18
	.4byte	0x570
	.uleb128 0xf
	.byte	0x4
	.4byte	0x57d
	.uleb128 0x16
	.4byte	0x81
	.4byte	0x5ca
	.uleb128 0x17
	.4byte	0x41c
	.uleb128 0x17
	.4byte	0x105
	.uleb128 0x17
	.4byte	0x81
	.uleb128 0x17
	.4byte	0x21
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5ac
	.uleb128 0x16
	.4byte	0x21
	.4byte	0x5e4
	.uleb128 0x17
	.4byte	0x41c
	.uleb128 0x17
	.4byte	0x105
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5d0
	.uleb128 0x8
	.4byte	0x3d
	.4byte	0x5fa
	.uleb128 0x9
	.4byte	0xc7
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x3d
	.4byte	0x60a
	.uleb128 0x9
	.4byte	0xc7
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF90
	.byte	0x5
	.2byte	0x11d
	.4byte	0x422
	.uleb128 0x13
	.4byte	.LASF91
	.byte	0xc
	.byte	0x5
	.2byte	0x121
	.4byte	0x64b
	.uleb128 0x14
	.4byte	.LASF22
	.byte	0x5
	.2byte	0x123
	.4byte	0x64b
	.byte	0
	.uleb128 0x14
	.4byte	.LASF92
	.byte	0x5
	.2byte	0x124
	.4byte	0x21
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF93
	.byte	0x5
	.2byte	0x125
	.4byte	0x651
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x616
	.uleb128 0xf
	.byte	0x4
	.4byte	0x60a
	.uleb128 0x13
	.4byte	.LASF94
	.byte	0x18
	.byte	0x5
	.2byte	0x13d
	.4byte	0x699
	.uleb128 0x14
	.4byte	.LASF95
	.byte	0x5
	.2byte	0x13e
	.4byte	0x699
	.byte	0
	.uleb128 0x14
	.4byte	.LASF96
	.byte	0x5
	.2byte	0x13f
	.4byte	0x699
	.byte	0x6
	.uleb128 0x14
	.4byte	.LASF97
	.byte	0x5
	.2byte	0x140
	.4byte	0x2f
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF98
	.byte	0x5
	.2byte	0x143
	.4byte	0x52
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.4byte	0x2f
	.4byte	0x6a9
	.uleb128 0x9
	.4byte	0xc7
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.4byte	.LASF99
	.byte	0x10
	.byte	0x5
	.2byte	0x156
	.4byte	0x6eb
	.uleb128 0x14
	.4byte	.LASF100
	.byte	0x5
	.2byte	0x159
	.4byte	0x16c
	.byte	0
	.uleb128 0x14
	.4byte	.LASF101
	.byte	0x5
	.2byte	0x15a
	.4byte	0x21
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF102
	.byte	0x5
	.2byte	0x15b
	.4byte	0x16c
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF103
	.byte	0x5
	.2byte	0x15c
	.4byte	0x6eb
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x16c
	.uleb128 0x13
	.4byte	.LASF104
	.byte	0x50
	.byte	0x5
	.2byte	0x160
	.4byte	0x78e
	.uleb128 0x14
	.4byte	.LASF105
	.byte	0x5
	.2byte	0x163
	.4byte	0x56a
	.byte	0
	.uleb128 0x14
	.4byte	.LASF106
	.byte	0x5
	.2byte	0x164
	.4byte	0xef
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF107
	.byte	0x5
	.2byte	0x165
	.4byte	0xef
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF108
	.byte	0x5
	.2byte	0x166
	.4byte	0xef
	.byte	0x14
	.uleb128 0x14
	.4byte	.LASF109
	.byte	0x5
	.2byte	0x167
	.4byte	0x78e
	.byte	0x1c
	.uleb128 0x14
	.4byte	.LASF110
	.byte	0x5
	.2byte	0x168
	.4byte	0x21
	.byte	0x24
	.uleb128 0x14
	.4byte	.LASF111
	.byte	0x5
	.2byte	0x169
	.4byte	0xef
	.byte	0x28
	.uleb128 0x14
	.4byte	.LASF112
	.byte	0x5
	.2byte	0x16a
	.4byte	0xef
	.byte	0x30
	.uleb128 0x14
	.4byte	.LASF113
	.byte	0x5
	.2byte	0x16b
	.4byte	0xef
	.byte	0x38
	.uleb128 0x14
	.4byte	.LASF114
	.byte	0x5
	.2byte	0x16c
	.4byte	0xef
	.byte	0x40
	.uleb128 0x14
	.4byte	.LASF115
	.byte	0x5
	.2byte	0x16d
	.4byte	0xef
	.byte	0x48
	.byte	0
	.uleb128 0x8
	.4byte	0x570
	.4byte	0x79e
	.uleb128 0x9
	.4byte	0xc7
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6a9
	.uleb128 0x19
	.4byte	0x7af
	.uleb128 0x17
	.4byte	0x41c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x7a4
	.uleb128 0xf
	.byte	0x4
	.4byte	0x657
	.uleb128 0xf
	.byte	0x4
	.4byte	0x182
	.uleb128 0x19
	.4byte	0x7cc
	.uleb128 0x17
	.4byte	0x21
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x7d2
	.uleb128 0xf
	.byte	0x4
	.4byte	0x7c1
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6f1
	.uleb128 0x1a
	.4byte	.LASF118
	.byte	0x1
	.byte	0x21
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x81a
	.uleb128 0x1b
	.string	"r"
	.byte	0x1
	.byte	0x21
	.4byte	0x41c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1c
	.4byte	.LVL1
	.4byte	0x826
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0xf0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF119
	.byte	0x5
	.2byte	0x303
	.4byte	0x41c
	.uleb128 0x1f
	.4byte	.LASF120
	.4byte	.LASF120
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
	.uleb128 0x6
	.uleb128 0x17
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
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x11
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF93:
	.string	"_iobs"
.LASF88:
	.string	"_flags2"
.LASF106:
	.string	"_mblen_state"
.LASF109:
	.string	"_l64a_buf"
.LASF9:
	.string	"_off_t"
.LASF13:
	.string	"__wch"
.LASF53:
	.string	"_stderr"
.LASF17:
	.string	"__value"
.LASF46:
	.string	"__sbuf"
.LASF4:
	.string	"short int"
.LASF97:
	.string	"_add"
.LASF101:
	.string	"_result_k"
.LASF15:
	.string	"sizetype"
.LASF85:
	.string	"_offset"
.LASF71:
	.string	"_signal_buf"
.LASF115:
	.string	"_wcsrtombs_state"
.LASF57:
	.string	"_current_category"
.LASF73:
	.string	"_flags"
.LASF79:
	.string	"_write"
.LASF64:
	.string	"_localtime_buf"
.LASF67:
	.string	"_atexit0"
.LASF16:
	.string	"__count"
.LASF31:
	.string	"__tm_mday"
.LASF91:
	.string	"_glue"
.LASF113:
	.string	"_mbsrtowcs_state"
.LASF63:
	.string	"_r48"
.LASF52:
	.string	"_stdout"
.LASF42:
	.string	"_atexit"
.LASF61:
	.string	"_cvtlen"
.LASF83:
	.string	"_nbuf"
.LASF8:
	.string	"_LOCK_RECURSIVE_T"
.LASF92:
	.string	"_niobs"
.LASF90:
	.string	"__FILE"
.LASF50:
	.string	"_errno"
.LASF110:
	.string	"_getdate_err"
.LASF29:
	.string	"__tm_min"
.LASF66:
	.string	"_sig_func"
.LASF120:
	.string	"memset"
.LASF103:
	.string	"_freelist"
.LASF76:
	.string	"_data"
.LASF44:
	.string	"_fns"
.LASF45:
	.string	"_on_exit_args_ptr"
.LASF87:
	.string	"_mbstate"
.LASF34:
	.string	"__tm_wday"
.LASF5:
	.string	"long long int"
.LASF38:
	.string	"_fnargs"
.LASF65:
	.string	"_asctime_buf"
.LASF86:
	.string	"_lock"
.LASF96:
	.string	"_mult"
.LASF36:
	.string	"__tm_isdst"
.LASF10:
	.string	"long int"
.LASF69:
	.string	"__sf"
.LASF40:
	.string	"_fntypes"
.LASF11:
	.string	"_fpos_t"
.LASF81:
	.string	"_close"
.LASF19:
	.string	"_flock_t"
.LASF82:
	.string	"_ubuf"
.LASF119:
	.string	"_global_impure_ptr"
.LASF28:
	.string	"__tm_sec"
.LASF30:
	.string	"__tm_hour"
.LASF3:
	.string	"unsigned char"
.LASF78:
	.string	"_read"
.LASF118:
	.string	"esp_reent_init"
.LASF14:
	.string	"__wchb"
.LASF2:
	.string	"signed char"
.LASF6:
	.string	"long long unsigned int"
.LASF70:
	.string	"_misc"
.LASF0:
	.string	"unsigned int"
.LASF68:
	.string	"__sglue"
.LASF37:
	.string	"_on_exit_args"
.LASF112:
	.string	"_mbrtowc_state"
.LASF1:
	.string	"short unsigned int"
.LASF62:
	.string	"_cvtbuf"
.LASF77:
	.string	"_cookie"
.LASF47:
	.string	"_base"
.LASF74:
	.string	"_file"
.LASF89:
	.string	"char"
.LASF60:
	.string	"_gamma_signgam"
.LASF22:
	.string	"_next"
.LASF25:
	.string	"_wds"
.LASF99:
	.string	"_mprec"
.LASF117:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/newlib/reent_init.c"
.LASF27:
	.string	"__tm"
.LASF108:
	.string	"_mbtowc_state"
.LASF12:
	.string	"wint_t"
.LASF111:
	.string	"_mbrlen_state"
.LASF56:
	.string	"__sdidinit"
.LASF41:
	.string	"_is_cxa"
.LASF21:
	.string	"long unsigned int"
.LASF59:
	.string	"__cleanup"
.LASF98:
	.string	"_rand_next"
.LASF18:
	.string	"_mbstate_t"
.LASF26:
	.string	"_Bigint"
.LASF23:
	.string	"_maxwds"
.LASF33:
	.string	"__tm_year"
.LASF105:
	.string	"_strtok_last"
.LASF95:
	.string	"_seed"
.LASF94:
	.string	"_rand48"
.LASF35:
	.string	"__tm_yday"
.LASF7:
	.string	"_lock_t"
.LASF20:
	.string	"__ULong"
.LASF80:
	.string	"_seek"
.LASF100:
	.string	"_result"
.LASF32:
	.string	"__tm_mon"
.LASF84:
	.string	"_blksize"
.LASF54:
	.string	"_inc"
.LASF43:
	.string	"_ind"
.LASF107:
	.string	"_wctomb_state"
.LASF75:
	.string	"_lbfsize"
.LASF39:
	.string	"_dso_handle"
.LASF102:
	.string	"_p5s"
.LASF24:
	.string	"_sign"
.LASF116:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF104:
	.string	"_misc_reent"
.LASF51:
	.string	"_stdin"
.LASF58:
	.string	"_current_locale"
.LASF49:
	.string	"_reent"
.LASF114:
	.string	"_wcrtomb_state"
.LASF55:
	.string	"_emergency"
.LASF48:
	.string	"_size"
.LASF72:
	.string	"__sFILE"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
