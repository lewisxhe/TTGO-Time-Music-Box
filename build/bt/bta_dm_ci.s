	.file	"bta_dm_ci.c"
	.text
.Ltext0:
	.section	.text.bta_dm_ci_io_req,"ax",@progbits
	.align	4
	.global	bta_dm_ci_io_req
	.type	bta_dm_ci_io_req, @function
bta_dm_ci_io_req:
.LFB26:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/bta/dm/bta_dm_ci.c"
	.loc 1 48 0
.LVL0:
	entry	sp, 32
.LCFI0:
	extui	a3, a3, 0, 8
	extui	a4, a4, 0, 8
	extui	a5, a5, 0, 8
	.loc 1 51 0
	movi.n	a10, 0x12
	call8	malloc
.LVL1:
	beqz.n	a10, .L1
	.loc 1 52 0
	movi	a8, 0x10f
	s16i	a8, a10, 0
	.loc 1 53 0
	addi.n	a9, a10, 8
.LVL2:
.LBB6:
.LBB7:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.loc 2 737 0
	movi.n	a8, 6
	j	.L3
.LVL3:
.L4:
	.loc 2 738 0
	l8ui	a11, a2, 0
	s8i	a11, a9, 0
	.loc 2 737 0
	addi.n	a8, a8, -1
.LVL4:
	.loc 2 738 0
	addi.n	a2, a2, 1
.LVL5:
	addi.n	a9, a9, 1
.LVL6:
.L3:
	.loc 2 737 0
	bnez.n	a8, .L4
.LBE7:
.LBE6:
	.loc 1 54 0
	s8i	a3, a10, 14
	.loc 1 55 0
	s8i	a4, a10, 15
	.loc 1 56 0
	s8i	a5, a10, 16
	.loc 1 57 0
	call8	bta_sys_sendmsg
.LVL7:
.L1:
	retw.n
.LFE26:
	.size	bta_dm_ci_io_req, .-bta_dm_ci_io_req
	.section	.text.bta_dm_ci_rmt_oob,"ax",@progbits
	.align	4
	.global	bta_dm_ci_rmt_oob
	.type	bta_dm_ci_rmt_oob, @function
bta_dm_ci_rmt_oob:
.LFB27:
	.loc 1 73 0
.LVL8:
	entry	sp, 32
.LCFI1:
	extui	a2, a2, 0, 8
	.loc 1 76 0
	movi.n	a10, 0x30
	call8	malloc
.LVL9:
	mov.n	a6, a10
.LVL10:
	beqz.n	a10, .L5
	.loc 1 77 0
	movi	a8, 0x110
	s16i	a8, a10, 0
	.loc 1 78 0
	addi.n	a9, a10, 8
.LVL11:
.LBB8:
.LBB9:
	.loc 2 737 0
	movi.n	a8, 6
	j	.L7
.LVL12:
.L8:
	.loc 2 738 0
	l8ui	a10, a3, 0
	s8i	a10, a9, 0
	.loc 2 737 0
	addi.n	a8, a8, -1
.LVL13:
	.loc 2 738 0
	addi.n	a3, a3, 1
.LVL14:
	addi.n	a9, a9, 1
.LVL15:
.L7:
	.loc 2 737 0
	bnez.n	a8, .L8
.LBE9:
.LBE8:
	.loc 1 79 0
	s8i	a2, a6, 46
	.loc 1 80 0
	movi.n	a2, 0x10
.LVL16:
	mov.n	a12, a2
	mov.n	a11, a4
	addi.n	a10, a6, 14
	call8	memcpy
.LVL17:
	.loc 1 81 0
	mov.n	a12, a2
	mov.n	a11, a5
	addi	a10, a6, 30
	call8	memcpy
.LVL18:
	.loc 1 82 0
	mov.n	a10, a6
	call8	bta_sys_sendmsg
.LVL19:
.L5:
	retw.n
.LFE27:
	.size	bta_dm_ci_rmt_oob, .-bta_dm_ci_rmt_oob
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
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI0-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI1-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
	.text
.Letext0:
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/bta/include/bta/bta_api.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/bta/dm/include/bta_dm_int.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/bta/include/bta/bta_sys.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x658
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF110
	.byte	0xc
	.4byte	.LASF111
	.4byte	.LASF112
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x4
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0x21
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x2
	.byte	0x21
	.4byte	0x73
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x2
	.byte	0x29
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x8
	.byte	0x2
	.byte	0xc6
	.4byte	0xeb
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x2
	.byte	0xc7
	.4byte	0x7e
	.byte	0
	.uleb128 0x7
	.string	"len"
	.byte	0x2
	.byte	0xc8
	.4byte	0x7e
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x2
	.byte	0xc9
	.4byte	0x7e
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x2
	.byte	0xca
	.4byte	0x7e
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x2
	.byte	0xcb
	.4byte	0xeb
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.4byte	0x73
	.4byte	0xfa
	.uleb128 0x9
	.4byte	0xfa
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x2
	.byte	0xcc
	.4byte	0xa6
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x2
	.2byte	0x132
	.4byte	0x118
	.uleb128 0x8
	.4byte	0x89
	.4byte	0x128
	.uleb128 0xb
	.4byte	0xfa
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x89
	.uleb128 0x8
	.4byte	0x89
	.4byte	0x13e
	.uleb128 0xb
	.4byte	0xfa
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x2
	.2byte	0x144
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF22
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF23
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF24
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x5
	.2byte	0x578
	.4byte	0x89
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x5
	.2byte	0x598
	.4byte	0x89
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x5
	.2byte	0x5a1
	.4byte	0x89
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x6
	.2byte	0x332
	.4byte	0x15f
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x6
	.2byte	0x340
	.4byte	0x16b
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x6
	.2byte	0x357
	.4byte	0x177
	.uleb128 0xd
	.byte	0x4
	.4byte	0x5e
	.byte	0x7
	.byte	0x32
	.4byte	0x37b
	.uleb128 0xe
	.4byte	.LASF31
	.2byte	0x100
	.uleb128 0xe
	.4byte	.LASF32
	.2byte	0x101
	.uleb128 0xe
	.4byte	.LASF33
	.2byte	0x102
	.uleb128 0xe
	.4byte	.LASF34
	.2byte	0x103
	.uleb128 0xe
	.4byte	.LASF35
	.2byte	0x104
	.uleb128 0xe
	.4byte	.LASF36
	.2byte	0x105
	.uleb128 0xe
	.4byte	.LASF37
	.2byte	0x106
	.uleb128 0xe
	.4byte	.LASF38
	.2byte	0x107
	.uleb128 0xe
	.4byte	.LASF39
	.2byte	0x108
	.uleb128 0xe
	.4byte	.LASF40
	.2byte	0x109
	.uleb128 0xe
	.4byte	.LASF41
	.2byte	0x10a
	.uleb128 0xe
	.4byte	.LASF42
	.2byte	0x10b
	.uleb128 0xe
	.4byte	.LASF43
	.2byte	0x10c
	.uleb128 0xe
	.4byte	.LASF44
	.2byte	0x10d
	.uleb128 0xe
	.4byte	.LASF45
	.2byte	0x10e
	.uleb128 0xe
	.4byte	.LASF46
	.2byte	0x10f
	.uleb128 0xe
	.4byte	.LASF47
	.2byte	0x110
	.uleb128 0xe
	.4byte	.LASF48
	.2byte	0x111
	.uleb128 0xe
	.4byte	.LASF49
	.2byte	0x112
	.uleb128 0xe
	.4byte	.LASF50
	.2byte	0x113
	.uleb128 0xe
	.4byte	.LASF51
	.2byte	0x114
	.uleb128 0xe
	.4byte	.LASF52
	.2byte	0x115
	.uleb128 0xe
	.4byte	.LASF53
	.2byte	0x116
	.uleb128 0xe
	.4byte	.LASF54
	.2byte	0x117
	.uleb128 0xe
	.4byte	.LASF55
	.2byte	0x118
	.uleb128 0xe
	.4byte	.LASF56
	.2byte	0x119
	.uleb128 0xe
	.4byte	.LASF57
	.2byte	0x11a
	.uleb128 0xe
	.4byte	.LASF58
	.2byte	0x11b
	.uleb128 0xe
	.4byte	.LASF59
	.2byte	0x11c
	.uleb128 0xe
	.4byte	.LASF60
	.2byte	0x11d
	.uleb128 0xe
	.4byte	.LASF61
	.2byte	0x11e
	.uleb128 0xe
	.4byte	.LASF62
	.2byte	0x11f
	.uleb128 0xe
	.4byte	.LASF63
	.2byte	0x120
	.uleb128 0xe
	.4byte	.LASF64
	.2byte	0x121
	.uleb128 0xe
	.4byte	.LASF65
	.2byte	0x122
	.uleb128 0xe
	.4byte	.LASF66
	.2byte	0x123
	.uleb128 0xe
	.4byte	.LASF67
	.2byte	0x124
	.uleb128 0xe
	.4byte	.LASF68
	.2byte	0x125
	.uleb128 0xe
	.4byte	.LASF69
	.2byte	0x126
	.uleb128 0xe
	.4byte	.LASF70
	.2byte	0x127
	.uleb128 0xe
	.4byte	.LASF71
	.2byte	0x128
	.uleb128 0xe
	.4byte	.LASF72
	.2byte	0x129
	.uleb128 0xe
	.4byte	.LASF73
	.2byte	0x12a
	.uleb128 0xe
	.4byte	.LASF74
	.2byte	0x12b
	.uleb128 0xe
	.4byte	.LASF75
	.2byte	0x12c
	.uleb128 0xe
	.4byte	.LASF76
	.2byte	0x12d
	.uleb128 0xe
	.4byte	.LASF77
	.2byte	0x12e
	.uleb128 0xe
	.4byte	.LASF78
	.2byte	0x12f
	.uleb128 0xe
	.4byte	.LASF79
	.2byte	0x130
	.uleb128 0xe
	.4byte	.LASF80
	.2byte	0x131
	.uleb128 0xe
	.4byte	.LASF81
	.2byte	0x132
	.uleb128 0xe
	.4byte	.LASF82
	.2byte	0x133
	.uleb128 0xe
	.4byte	.LASF83
	.2byte	0x134
	.uleb128 0xe
	.4byte	.LASF84
	.2byte	0x135
	.uleb128 0xe
	.4byte	.LASF85
	.2byte	0x136
	.uleb128 0xe
	.4byte	.LASF86
	.2byte	0x137
	.uleb128 0xe
	.4byte	.LASF87
	.2byte	0x138
	.uleb128 0xe
	.4byte	.LASF88
	.2byte	0x139
	.uleb128 0xe
	.4byte	.LASF89
	.2byte	0x13a
	.uleb128 0xe
	.4byte	.LASF90
	.2byte	0x13b
	.uleb128 0xe
	.4byte	.LASF91
	.2byte	0x13c
	.uleb128 0xe
	.4byte	.LASF92
	.2byte	0x13d
	.uleb128 0xe
	.4byte	.LASF93
	.2byte	0x13e
	.uleb128 0xe
	.4byte	.LASF94
	.2byte	0x13f
	.uleb128 0xe
	.4byte	.LASF95
	.2byte	0x140
	.byte	0
	.uleb128 0xf
	.byte	0x12
	.byte	0x7
	.2byte	0x128
	.4byte	0x3c6
	.uleb128 0x10
	.string	"hdr"
	.byte	0x7
	.2byte	0x129
	.4byte	0x101
	.byte	0
	.uleb128 0x11
	.4byte	.LASF96
	.byte	0x7
	.2byte	0x12a
	.4byte	0x10c
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF97
	.byte	0x7
	.2byte	0x12b
	.4byte	0x183
	.byte	0xe
	.uleb128 0x11
	.4byte	.LASF98
	.byte	0x7
	.2byte	0x12c
	.4byte	0x19b
	.byte	0xf
	.uleb128 0x11
	.4byte	.LASF99
	.byte	0x7
	.2byte	0x12d
	.4byte	0x18f
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.4byte	.LASF100
	.byte	0x7
	.2byte	0x12e
	.4byte	0x37b
	.uleb128 0xf
	.byte	0x30
	.byte	0x7
	.2byte	0x131
	.4byte	0x419
	.uleb128 0x10
	.string	"hdr"
	.byte	0x7
	.2byte	0x132
	.4byte	0x101
	.byte	0
	.uleb128 0x11
	.4byte	.LASF96
	.byte	0x7
	.2byte	0x133
	.4byte	0x10c
	.byte	0x8
	.uleb128 0x10
	.string	"c"
	.byte	0x7
	.2byte	0x134
	.4byte	0x13e
	.byte	0xe
	.uleb128 0x10
	.string	"r"
	.byte	0x7
	.2byte	0x135
	.4byte	0x13e
	.byte	0x1e
	.uleb128 0x11
	.4byte	.LASF101
	.byte	0x7
	.2byte	0x136
	.4byte	0x94
	.byte	0x2e
	.byte	0
	.uleb128 0xa
	.4byte	.LASF102
	.byte	0x7
	.2byte	0x137
	.4byte	0x3d2
	.uleb128 0x12
	.4byte	.LASF113
	.byte	0x2
	.2byte	0x2dd
	.byte	0x3
	.4byte	0x451
	.uleb128 0x13
	.string	"a"
	.byte	0x2
	.2byte	0x2dd
	.4byte	0x128
	.uleb128 0x13
	.string	"b"
	.byte	0x2
	.2byte	0x2dd
	.4byte	0x451
	.uleb128 0x14
	.string	"i"
	.byte	0x2
	.2byte	0x2df
	.4byte	0x57
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x457
	.uleb128 0x15
	.4byte	0x89
	.uleb128 0x16
	.4byte	.LASF103
	.byte	0x1
	.byte	0x2d
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x50c
	.uleb128 0x17
	.4byte	.LASF96
	.byte	0x1
	.byte	0x2d
	.4byte	0x128
	.4byte	.LLST0
	.uleb128 0x18
	.4byte	.LASF97
	.byte	0x1
	.byte	0x2d
	.4byte	0x183
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x18
	.4byte	.LASF98
	.byte	0x1
	.byte	0x2d
	.4byte	0x19b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x18
	.4byte	.LASF99
	.byte	0x1
	.byte	0x2e
	.4byte	0x18f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LASF105
	.byte	0x1
	.byte	0x31
	.4byte	0x50c
	.4byte	.LLST1
	.uleb128 0x1a
	.4byte	0x425
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0x1
	.byte	0x35
	.4byte	0x4ef
	.uleb128 0x1b
	.4byte	0x43c
	.4byte	.LLST2
	.uleb128 0x1b
	.4byte	0x432
	.4byte	.LLST3
	.uleb128 0x1c
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x1d
	.4byte	0x446
	.4byte	.LLST4
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL1
	.4byte	0x63c
	.4byte	0x502
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x42
	.byte	0
	.uleb128 0x20
	.4byte	.LVL7
	.4byte	0x647
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x3c6
	.uleb128 0x16
	.4byte	.LASF104
	.byte	0x1
	.byte	0x48
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x606
	.uleb128 0x17
	.4byte	.LASF101
	.byte	0x1
	.byte	0x48
	.4byte	0x94
	.4byte	.LLST5
	.uleb128 0x17
	.4byte	.LASF96
	.byte	0x1
	.byte	0x48
	.4byte	0x128
	.4byte	.LLST6
	.uleb128 0x21
	.string	"c"
	.byte	0x1
	.byte	0x48
	.4byte	0x128
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x21
	.string	"r"
	.byte	0x1
	.byte	0x48
	.4byte	0x128
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x22
	.4byte	.LASF105
	.byte	0x1
	.byte	0x4a
	.4byte	0x606
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1a
	.4byte	0x425
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.byte	0x4e
	.4byte	0x5a1
	.uleb128 0x1b
	.4byte	0x43c
	.4byte	.LLST7
	.uleb128 0x1b
	.4byte	0x432
	.4byte	.LLST8
	.uleb128 0x1c
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x1d
	.4byte	0x446
	.4byte	.LLST9
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL9
	.4byte	0x63c
	.4byte	0x5b5
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL17
	.4byte	0x652
	.4byte	0x5d5
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 14
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL18
	.4byte	0x652
	.4byte	0x5f5
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 30
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL19
	.4byte	0x647
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x419
	.uleb128 0x24
	.4byte	.LASF106
	.byte	0x2
	.2byte	0x2cc
	.4byte	0x61f
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x15
	.4byte	0x118
	.uleb128 0x24
	.4byte	.LASF107
	.byte	0x2
	.2byte	0x2cd
	.4byte	0x637
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	0x118
	.uleb128 0x25
	.4byte	.LASF108
	.4byte	.LASF108
	.byte	0x8
	.byte	0x65
	.uleb128 0x25
	.4byte	.LASF109
	.4byte	.LASF109
	.byte	0x9
	.byte	0xe0
	.uleb128 0x26
	.4byte	.LASF114
	.4byte	.LASF114
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
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL8
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL8
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL17-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL17-1
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
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF90:
	.string	"BTA_DM_API_REMOVE_ALL_ACL_EVT"
.LASF103:
	.string	"bta_dm_ci_io_req"
.LASF96:
	.string	"bd_addr"
.LASF58:
	.string	"BTA_DM_API_BLE_OBSERVE_EVT"
.LASF62:
	.string	"BTA_DM_API_BLE_STOP_ADV_EVT"
.LASF69:
	.string	"BTA_DM_API_BLE_SET_SCAN_RSP_EVT"
.LASF19:
	.string	"BT_HDR"
.LASF92:
	.string	"BTA_DM_API_UPDATE_WHITE_LIST_EVT"
.LASF98:
	.string	"oob_data"
.LASF26:
	.string	"tBTM_AUTH_REQ"
.LASF28:
	.string	"tBTA_IO_CAP"
.LASF72:
	.string	"BTA_DM_API_SET_DATA_LENGTH_EVT"
.LASF50:
	.string	"BTA_DM_API_BLE_PASSKEY_REPLY_EVT"
.LASF74:
	.string	"BTA_DM_API_SCAN_FILTER_SETUP_EVT"
.LASF108:
	.string	"malloc"
.LASF18:
	.string	"sizetype"
.LASF47:
	.string	"BTA_DM_CI_RMT_OOB_EVT"
.LASF54:
	.string	"BTA_DM_API_BLE_CONN_PARAM_EVT"
.LASF71:
	.string	"BTA_DM_API_BLE_BROADCAST_EVT"
.LASF89:
	.string	"BTA_DM_API_EXECUTE_CBACK_EVT"
.LASF88:
	.string	"BTA_DM_API_DISABLE_TEST_MODE_EVT"
.LASF114:
	.string	"memcpy"
.LASF80:
	.string	"BTA_DM_API_BLE_SETUP_STORAGE_EVT"
.LASF14:
	.string	"event"
.LASF4:
	.string	"__uint16_t"
.LASF34:
	.string	"BTA_DM_API_SET_VISIBILITY_EVT"
.LASF76:
	.string	"BTA_DM_API_BLE_MULTI_ADV_ENB_EVT"
.LASF77:
	.string	"BTA_DM_API_BLE_MULTI_ADV_PARAM_UPD_EVT"
.LASF35:
	.string	"BTA_DM_ACL_CHANGE_EVT"
.LASF57:
	.string	"BTA_DM_API_BLE_SCAN_FIL_PARAM_EVT"
.LASF9:
	.string	"uint8_t"
.LASF51:
	.string	"BTA_DM_API_BLE_CONFIRM_REPLY_EVT"
.LASF113:
	.string	"bdcpy"
.LASF27:
	.string	"tBTM_OOB_DATA"
.LASF81:
	.string	"BTA_DM_API_BLE_ENABLE_BATCH_SCAN_EVT"
.LASF104:
	.string	"bta_dm_ci_rmt_oob"
.LASF2:
	.string	"short int"
.LASF95:
	.string	"BTA_DM_MAX_EVT"
.LASF75:
	.string	"BTA_DM_API_SCAN_FILTER_ENABLE_EVT"
.LASF67:
	.string	"BTA_DM_API_BLE_SET_ADV_CONFIG_EVT"
.LASF7:
	.string	"long long int"
.LASF79:
	.string	"BTA_DM_API_BLE_MULTI_ADV_DISABLE_EVT"
.LASF37:
	.string	"BTA_DM_API_REMOVE_ACL_EVT"
.LASF94:
	.string	"BTA_DM_API_BLE_READ_RSSI_EVT"
.LASF87:
	.string	"BTA_DM_API_ENABLE_TEST_MODE_EVT"
.LASF46:
	.string	"BTA_DM_CI_IO_REQ_EVT"
.LASF12:
	.string	"BOOLEAN"
.LASF23:
	.string	"long int"
.LASF61:
	.string	"BTA_DM_API_SET_RAND_ADDR_EVT"
.LASF15:
	.string	"offset"
.LASF11:
	.string	"UINT8"
.LASF3:
	.string	"__uint8_t"
.LASF30:
	.string	"tBTA_OOB_DATA"
.LASF105:
	.string	"p_msg"
.LASF109:
	.string	"bta_sys_sendmsg"
.LASF64:
	.string	"BTA_DM_API_LOCAL_ICON_EVT"
.LASF43:
	.string	"BTA_DM_API_CONFIRM_EVT"
.LASF1:
	.string	"unsigned char"
.LASF112:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF83:
	.string	"BTA_DM_API_BLE_READ_SCAN_REPORTS_EVT"
.LASF99:
	.string	"auth_req"
.LASF0:
	.string	"signed char"
.LASF8:
	.string	"long long unsigned int"
.LASF84:
	.string	"BTA_DM_API_BLE_TRACK_ADVERTISER_EVT"
.LASF6:
	.string	"unsigned int"
.LASF31:
	.string	"BTA_DM_API_ENABLE_EVT"
.LASF10:
	.string	"uint16_t"
.LASF107:
	.string	"bd_addr_null"
.LASF53:
	.string	"BTA_DM_API_BLE_SET_BG_CONN_TYPE"
.LASF73:
	.string	"BTA_DM_API_CFG_FILTER_COND_EVT"
.LASF63:
	.string	"BTA_DM_API_LOCAL_PRIVACY_EVT"
.LASF78:
	.string	"BTA_DM_API_BLE_MULTI_ADV_DATA_EVT"
.LASF66:
	.string	"BTA_DM_API_BLE_ADV_PARAM_All_EVT"
.LASF100:
	.string	"tBTA_DM_CI_IO_REQ"
.LASF40:
	.string	"BTA_DM_API_PIN_REPLY_EVT"
.LASF22:
	.string	"char"
.LASF56:
	.string	"BTA_DM_API_BLE_SCAN_PARAM_EVT"
.LASF5:
	.string	"short unsigned int"
.LASF59:
	.string	"BTA_DM_API_BLE_SCAN_EVT"
.LASF13:
	.string	"_Bool"
.LASF39:
	.string	"BTA_DM_API_BOND_CANCEL_EVT"
.LASF101:
	.string	"accept"
.LASF25:
	.string	"tBTM_IO_CAP"
.LASF52:
	.string	"BTA_DM_API_BLE_SEC_GRANT_EVT"
.LASF102:
	.string	"tBTA_DM_CI_RMT_OOB"
.LASF85:
	.string	"BTA_DM_API_BLE_ENERGY_INFO_EVT"
.LASF60:
	.string	"BTA_DM_API_UPDATE_CONN_PARAM_EVT"
.LASF24:
	.string	"long unsigned int"
.LASF29:
	.string	"tBTA_AUTH_REQ"
.LASF36:
	.string	"BTA_DM_API_ADD_DEVICE_EVT"
.LASF38:
	.string	"BTA_DM_API_BOND_EVT"
.LASF41:
	.string	"BTA_DM_PM_BTM_STATUS_EVT"
.LASF82:
	.string	"BTA_DM_API_BLE_DISABLE_BATCH_SCAN_EVT"
.LASF70:
	.string	"BTA_DM_API_BLE_SET_SCAN_RSP_RAW_EVT"
.LASF42:
	.string	"BTA_DM_PM_TIMER_EVT"
.LASF49:
	.string	"BTA_DM_API_ADD_BLEDEVICE_EVT"
.LASF45:
	.string	"BTA_DM_API_LOC_OOB_EVT"
.LASF68:
	.string	"BTA_DM_API_BLE_SET_ADV_CONFIG_RAW_EVT"
.LASF55:
	.string	"BTA_DM_API_BLE_CONN_SCAN_PARAM_EVT"
.LASF32:
	.string	"BTA_DM_API_DISABLE_EVT"
.LASF91:
	.string	"BTA_DM_API_REMOVE_DEVICE_EVT"
.LASF106:
	.string	"bd_addr_any"
.LASF111:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/bta/dm/bta_dm_ci.c"
.LASF65:
	.string	"BTA_DM_API_BLE_ADV_PARAM_EVT"
.LASF20:
	.string	"BD_ADDR"
.LASF33:
	.string	"BTA_DM_API_SET_NAME_EVT"
.LASF110:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF48:
	.string	"BTA_DM_API_ADD_BLEKEY_EVT"
.LASF17:
	.string	"data"
.LASF93:
	.string	"BTA_DM_API_BLE_READ_ADV_TX_POWER_EVT"
.LASF16:
	.string	"layer_specific"
.LASF86:
	.string	"BTA_DM_API_BLE_DISCONNECT_EVT"
.LASF97:
	.string	"io_cap"
.LASF21:
	.string	"BT_OCTET16"
.LASF44:
	.string	"BTA_DM_API_SET_ENCRYPTION_EVT"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
