	.file	"gap_api.c"
	.text
.Ltext0:
	.section	.text.GAP_SetTraceLevel,"ax",@progbits
	.literal_position
	.literal .LC0, gap_cb
	.align	4
	.global	GAP_SetTraceLevel
	.type	GAP_SetTraceLevel, @function
GAP_SetTraceLevel:
.LFB26:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/gap/gap_api.c"
	.loc 1 38 0
.LVL0:
	entry	sp, 32
.LCFI0:
	extui	a2, a2, 0, 8
	.loc 1 39 0
	movi	a8, 0xff
	beq	a2, a8, .L2
	.loc 1 40 0
	l32r	a8, .LC0
	s8i	a2, a8, 40
.L2:
	.loc 1 44 0
	l32r	a2, .LC0
.LVL1:
	l8ui	a2, a2, 40
	retw.n
.LFE26:
	.size	GAP_SetTraceLevel, .-GAP_SetTraceLevel
	.section	.text.GAP_Init,"ax",@progbits
	.literal_position
	.literal .LC1, gap_cb
	.align	4
	.global	GAP_Init
	.type	GAP_Init, @function
GAP_Init:
.LFB27:
	.loc 1 59 0
	entry	sp, 32
.LCFI1:
	.loc 1 60 0
	l32r	a2, .LC1
	movi	a12, 0x530
	movi.n	a11, 0
	mov.n	a10, a2
	call8	memset
.LVL2:
	.loc 1 63 0
	movi.n	a8, 2
	s8i	a8, a2, 40
	.loc 1 69 0
	call8	gap_conn_init
.LVL3:
	retw.n
.LFE27:
	.size	GAP_Init, .-GAP_Init
	.comm	gap_cb,1328,4
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
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/fixed_queue.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/hcidefs.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/gap_api.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/gap/include/gap_int.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x9fb
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF178
	.byte	0xc
	.4byte	.LASF179
	.4byte	.LASF180
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
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x16
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x21
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x2d
	.4byte	0x65
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x4
	.byte	0x21
	.4byte	0x9c
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x4
	.byte	0x22
	.4byte	0xa7
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x4
	.byte	0x23
	.4byte	0xb2
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x4
	.byte	0x29
	.4byte	0xe9
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF21
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.byte	0xc6
	.4byte	0x135
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x4
	.byte	0xc7
	.4byte	0xa7
	.byte	0
	.uleb128 0x8
	.string	"len"
	.byte	0x4
	.byte	0xc8
	.4byte	0xa7
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x4
	.byte	0xc9
	.4byte	0xa7
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x4
	.byte	0xca
	.4byte	0xa7
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x4
	.byte	0xcb
	.4byte	0x135
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	0x9c
	.4byte	0x144
	.uleb128 0xa
	.4byte	0x85
	.byte	0
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x4
	.byte	0xcc
	.4byte	0xf0
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x132
	.4byte	0x15b
	.uleb128 0x9
	.4byte	0xbd
	.4byte	0x16b
	.uleb128 0xc
	.4byte	0x85
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0xbd
	.uleb128 0xe
	.byte	0x18
	.byte	0x4
	.2byte	0x16c
	.4byte	0x1d6
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x16d
	.4byte	0xbd
	.byte	0
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x16e
	.4byte	0xbd
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x16f
	.4byte	0xd3
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x170
	.4byte	0xd3
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF32
	.byte	0x4
	.2byte	0x171
	.4byte	0xd3
	.byte	0xc
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x4
	.2byte	0x172
	.4byte	0xd3
	.byte	0x10
	.uleb128 0xf
	.4byte	.LASF34
	.byte	0x4
	.2byte	0x173
	.4byte	0xd3
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x4
	.2byte	0x174
	.4byte	0x171
	.uleb128 0x10
	.4byte	0x1ed
	.uleb128 0x11
	.4byte	0x8c
	.byte	0
	.uleb128 0x4
	.4byte	.LASF36
	.byte	0x5
	.byte	0x1f
	.4byte	0x1f8
	.uleb128 0x12
	.4byte	.LASF36
	.uleb128 0xd
	.byte	0x4
	.4byte	0x1ed
	.uleb128 0xe
	.byte	0x10
	.byte	0x6
	.2byte	0x53b
	.4byte	0x25a
	.uleb128 0x13
	.string	"id"
	.byte	0x6
	.2byte	0x53c
	.4byte	0xbd
	.byte	0
	.uleb128 0xf
	.4byte	.LASF37
	.byte	0x6
	.2byte	0x53d
	.4byte	0xbd
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF38
	.byte	0x6
	.2byte	0x53e
	.4byte	0xc8
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF39
	.byte	0x6
	.2byte	0x53f
	.4byte	0xd3
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF40
	.byte	0x6
	.2byte	0x540
	.4byte	0xd3
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF41
	.byte	0x6
	.2byte	0x541
	.4byte	0xd3
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x6
	.2byte	0x542
	.4byte	0x203
	.uleb128 0x10
	.4byte	0x271
	.uleb128 0x11
	.4byte	0xc8
	.byte	0
	.uleb128 0x10
	.4byte	0x281
	.uleb128 0x11
	.4byte	0xc8
	.uleb128 0x11
	.4byte	0x8c
	.byte	0
	.uleb128 0x4
	.4byte	.LASF43
	.byte	0x7
	.byte	0xaa
	.4byte	0x1e2
	.uleb128 0x14
	.byte	0x4
	.4byte	0x2c
	.byte	0x7
	.2byte	0x1c0
	.4byte	0x3b4
	.uleb128 0x15
	.4byte	.LASF44
	.byte	0
	.uleb128 0x15
	.4byte	.LASF45
	.byte	0x1
	.uleb128 0x15
	.4byte	.LASF46
	.byte	0x2
	.uleb128 0x15
	.4byte	.LASF47
	.byte	0x3
	.uleb128 0x15
	.4byte	.LASF48
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF49
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF50
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF51
	.byte	0x7
	.uleb128 0x15
	.4byte	.LASF52
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF53
	.byte	0x9
	.uleb128 0x15
	.4byte	.LASF54
	.byte	0xa
	.uleb128 0x15
	.4byte	.LASF55
	.byte	0xb
	.uleb128 0x15
	.4byte	.LASF56
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF57
	.byte	0xd
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0xe
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0xf
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x11
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x12
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x13
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x15
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x16
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x17
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x19
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x1a
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x1b
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x1d
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x1e
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x1f
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x20
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x21
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x22
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x23
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF81
	.byte	0x25
	.uleb128 0x15
	.4byte	.LASF82
	.byte	0x26
	.uleb128 0x15
	.4byte	.LASF83
	.byte	0x27
	.uleb128 0x15
	.4byte	.LASF84
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF85
	.byte	0x29
	.uleb128 0x15
	.4byte	.LASF86
	.byte	0x2a
	.uleb128 0x15
	.4byte	.LASF87
	.byte	0x2b
	.uleb128 0x15
	.4byte	.LASF88
	.byte	0x2c
	.uleb128 0x15
	.4byte	.LASF89
	.byte	0x2d
	.uleb128 0x15
	.4byte	.LASF90
	.byte	0x2e
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x144
	.uleb128 0x14
	.byte	0x4
	.4byte	0x2c
	.byte	0x7
	.2byte	0x6ea
	.4byte	0x3f2
	.uleb128 0x15
	.4byte	.LASF91
	.byte	0
	.uleb128 0x15
	.4byte	.LASF92
	.byte	0x1
	.uleb128 0x15
	.4byte	.LASF93
	.byte	0x2
	.uleb128 0x15
	.4byte	.LASF94
	.byte	0x3
	.uleb128 0x15
	.4byte	.LASF95
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0x6
	.byte	0
	.uleb128 0x6
	.byte	0xa
	.byte	0x8
	.byte	0x86
	.4byte	0x443
	.uleb128 0x7
	.4byte	.LASF98
	.byte	0x8
	.byte	0x8b
	.4byte	0xbd
	.byte	0
	.uleb128 0x7
	.4byte	.LASF99
	.byte	0x8
	.byte	0x8d
	.4byte	0xbd
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF100
	.byte	0x8
	.byte	0x8e
	.4byte	0xbd
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF101
	.byte	0x8
	.byte	0x8f
	.4byte	0xc8
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF102
	.byte	0x8
	.byte	0x90
	.4byte	0xc8
	.byte	0x6
	.uleb128 0x8
	.string	"mps"
	.byte	0x8
	.byte	0x91
	.4byte	0xc8
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF103
	.byte	0x8
	.byte	0x92
	.4byte	0x3f2
	.uleb128 0x6
	.byte	0x48
	.byte	0x8
	.byte	0x98
	.4byte	0x4ff
	.uleb128 0x7
	.4byte	.LASF104
	.byte	0x8
	.byte	0x99
	.4byte	0xc8
	.byte	0
	.uleb128 0x7
	.4byte	.LASF105
	.byte	0x8
	.byte	0x9a
	.4byte	0xde
	.byte	0x2
	.uleb128 0x8
	.string	"mtu"
	.byte	0x8
	.byte	0x9b
	.4byte	0xc8
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF106
	.byte	0x8
	.byte	0x9c
	.4byte	0xde
	.byte	0x6
	.uleb128 0x8
	.string	"qos"
	.byte	0x8
	.byte	0x9d
	.4byte	0x1d6
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF107
	.byte	0x8
	.byte	0x9e
	.4byte	0xde
	.byte	0x20
	.uleb128 0x7
	.4byte	.LASF108
	.byte	0x8
	.byte	0x9f
	.4byte	0xc8
	.byte	0x22
	.uleb128 0x7
	.4byte	.LASF109
	.byte	0x8
	.byte	0xa0
	.4byte	0xde
	.byte	0x24
	.uleb128 0x8
	.string	"fcr"
	.byte	0x8
	.byte	0xa1
	.4byte	0x443
	.byte	0x26
	.uleb128 0x7
	.4byte	.LASF110
	.byte	0x8
	.byte	0xa2
	.4byte	0xde
	.byte	0x30
	.uleb128 0x8
	.string	"fcs"
	.byte	0x8
	.byte	0xa3
	.4byte	0xbd
	.byte	0x31
	.uleb128 0x7
	.4byte	.LASF111
	.byte	0x8
	.byte	0xa4
	.4byte	0xde
	.byte	0x32
	.uleb128 0x7
	.4byte	.LASF112
	.byte	0x8
	.byte	0xa5
	.4byte	0x25a
	.byte	0x34
	.uleb128 0x7
	.4byte	.LASF113
	.byte	0x8
	.byte	0xa6
	.4byte	0xc8
	.byte	0x44
	.byte	0
	.uleb128 0x4
	.4byte	.LASF114
	.byte	0x8
	.byte	0xa7
	.4byte	0x44e
	.uleb128 0x4
	.4byte	.LASF115
	.byte	0x8
	.byte	0xc8
	.4byte	0x515
	.uleb128 0x10
	.4byte	0x52f
	.uleb128 0x11
	.4byte	0x16b
	.uleb128 0x11
	.4byte	0xc8
	.uleb128 0x11
	.4byte	0xc8
	.uleb128 0x11
	.4byte	0xbd
	.byte	0
	.uleb128 0x4
	.4byte	.LASF116
	.byte	0x8
	.byte	0xcf
	.4byte	0x53a
	.uleb128 0x10
	.4byte	0x54a
	.uleb128 0x11
	.4byte	0xc8
	.uleb128 0x11
	.4byte	0xc8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF117
	.byte	0x8
	.byte	0xd5
	.4byte	0x266
	.uleb128 0x4
	.4byte	.LASF118
	.byte	0x8
	.byte	0xdc
	.4byte	0x560
	.uleb128 0x10
	.4byte	0x570
	.uleb128 0x11
	.4byte	0xc8
	.uleb128 0x11
	.4byte	0x570
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x4ff
	.uleb128 0x4
	.4byte	.LASF119
	.byte	0x8
	.byte	0xe3
	.4byte	0x560
	.uleb128 0x4
	.4byte	.LASF120
	.byte	0x8
	.byte	0xea
	.4byte	0x58c
	.uleb128 0x10
	.4byte	0x59c
	.uleb128 0x11
	.4byte	0xc8
	.uleb128 0x11
	.4byte	0xde
	.byte	0
	.uleb128 0x4
	.4byte	.LASF121
	.byte	0x8
	.byte	0xf1
	.4byte	0x53a
	.uleb128 0x4
	.4byte	.LASF122
	.byte	0x8
	.byte	0xf7
	.4byte	0x5b2
	.uleb128 0x10
	.4byte	0x5bd
	.uleb128 0x11
	.4byte	0x16b
	.byte	0
	.uleb128 0x4
	.4byte	.LASF123
	.byte	0x8
	.byte	0xfe
	.4byte	0x5c8
	.uleb128 0x10
	.4byte	0x5d8
	.uleb128 0x11
	.4byte	0xc8
	.uleb128 0x11
	.4byte	0x3b4
	.byte	0
	.uleb128 0xb
	.4byte	.LASF124
	.byte	0x8
	.2byte	0x114
	.4byte	0x58c
	.uleb128 0xb
	.4byte	.LASF125
	.byte	0x8
	.2byte	0x126
	.4byte	0x53a
	.uleb128 0xe
	.byte	0x2c
	.byte	0x8
	.2byte	0x12d
	.4byte	0x689
	.uleb128 0xf
	.4byte	.LASF126
	.byte	0x8
	.2byte	0x12e
	.4byte	0x689
	.byte	0
	.uleb128 0xf
	.4byte	.LASF127
	.byte	0x8
	.2byte	0x12f
	.4byte	0x68f
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF128
	.byte	0x8
	.2byte	0x130
	.4byte	0x695
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF129
	.byte	0x8
	.2byte	0x131
	.4byte	0x69b
	.byte	0xc
	.uleb128 0xf
	.4byte	.LASF130
	.byte	0x8
	.2byte	0x132
	.4byte	0x6a1
	.byte	0x10
	.uleb128 0xf
	.4byte	.LASF131
	.byte	0x8
	.2byte	0x133
	.4byte	0x6a7
	.byte	0x14
	.uleb128 0xf
	.4byte	.LASF132
	.byte	0x8
	.2byte	0x134
	.4byte	0x6ad
	.byte	0x18
	.uleb128 0xf
	.4byte	.LASF133
	.byte	0x8
	.2byte	0x135
	.4byte	0x6b3
	.byte	0x1c
	.uleb128 0xf
	.4byte	.LASF134
	.byte	0x8
	.2byte	0x136
	.4byte	0x6b9
	.byte	0x20
	.uleb128 0xf
	.4byte	.LASF135
	.byte	0x8
	.2byte	0x137
	.4byte	0x6bf
	.byte	0x24
	.uleb128 0xf
	.4byte	.LASF136
	.byte	0x8
	.2byte	0x138
	.4byte	0x6c5
	.byte	0x28
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x50a
	.uleb128 0xd
	.byte	0x4
	.4byte	0x52f
	.uleb128 0xd
	.byte	0x4
	.4byte	0x54a
	.uleb128 0xd
	.byte	0x4
	.4byte	0x555
	.uleb128 0xd
	.byte	0x4
	.4byte	0x576
	.uleb128 0xd
	.byte	0x4
	.4byte	0x581
	.uleb128 0xd
	.byte	0x4
	.4byte	0x59c
	.uleb128 0xd
	.byte	0x4
	.4byte	0x5a7
	.uleb128 0xd
	.byte	0x4
	.4byte	0x5bd
	.uleb128 0xd
	.byte	0x4
	.4byte	0x5d8
	.uleb128 0xd
	.byte	0x4
	.4byte	0x5e4
	.uleb128 0xb
	.4byte	.LASF137
	.byte	0x8
	.2byte	0x13a
	.4byte	0x5f0
	.uleb128 0xe
	.byte	0xa
	.byte	0x8
	.2byte	0x13f
	.4byte	0x72f
	.uleb128 0xf
	.4byte	.LASF138
	.byte	0x8
	.2byte	0x140
	.4byte	0xbd
	.byte	0
	.uleb128 0xf
	.4byte	.LASF139
	.byte	0x8
	.2byte	0x141
	.4byte	0xbd
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF140
	.byte	0x8
	.2byte	0x142
	.4byte	0xc8
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF141
	.byte	0x8
	.2byte	0x143
	.4byte	0xc8
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF142
	.byte	0x8
	.2byte	0x144
	.4byte	0xc8
	.byte	0x6
	.uleb128 0xf
	.4byte	.LASF143
	.byte	0x8
	.2byte	0x145
	.4byte	0xc8
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.4byte	.LASF144
	.byte	0x8
	.2byte	0x147
	.4byte	0x6d7
	.uleb128 0x4
	.4byte	.LASF145
	.byte	0x9
	.byte	0x5d
	.4byte	0x53a
	.uleb128 0x4
	.4byte	.LASF146
	.byte	0x9
	.byte	0x63
	.4byte	0x271
	.uleb128 0x6
	.byte	0x10
	.byte	0xa
	.byte	0x1d
	.4byte	0x7a2
	.uleb128 0x7
	.4byte	.LASF147
	.byte	0xa
	.byte	0x1e
	.4byte	0x8c
	.byte	0
	.uleb128 0x7
	.4byte	.LASF148
	.byte	0xa
	.byte	0x1f
	.4byte	0x7a2
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF149
	.byte	0xa
	.byte	0x20
	.4byte	0x7a2
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0xa
	.byte	0x21
	.4byte	0xc8
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF150
	.byte	0xa
	.byte	0x22
	.4byte	0xbd
	.byte	0xe
	.uleb128 0x7
	.4byte	.LASF151
	.byte	0xa
	.byte	0x23
	.4byte	0xde
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x746
	.uleb128 0x4
	.4byte	.LASF152
	.byte	0xa
	.byte	0x24
	.4byte	0x751
	.uleb128 0x6
	.byte	0x7c
	.byte	0xa
	.byte	0x30
	.4byte	0x888
	.uleb128 0x7
	.4byte	.LASF153
	.byte	0xa
	.byte	0x37
	.4byte	0xbd
	.byte	0
	.uleb128 0x7
	.4byte	.LASF154
	.byte	0xa
	.byte	0x3e
	.4byte	0xbd
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF155
	.byte	0xa
	.byte	0x40
	.4byte	0xbd
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF156
	.byte	0xa
	.byte	0x41
	.4byte	0xc8
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF157
	.byte	0xa
	.byte	0x42
	.4byte	0xc8
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF158
	.byte	0xa
	.byte	0x43
	.4byte	0xde
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF159
	.byte	0xa
	.byte	0x44
	.4byte	0xbd
	.byte	0x9
	.uleb128 0x7
	.4byte	.LASF160
	.byte	0xa
	.byte	0x45
	.4byte	0x14f
	.byte	0xa
	.uleb128 0x8
	.string	"psm"
	.byte	0xa
	.byte	0x46
	.4byte	0xc8
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF161
	.byte	0xa
	.byte	0x47
	.4byte	0xc8
	.byte	0x12
	.uleb128 0x7
	.4byte	.LASF162
	.byte	0xa
	.byte	0x49
	.4byte	0xde
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF163
	.byte	0xa
	.byte	0x4a
	.4byte	0x1fd
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF164
	.byte	0xa
	.byte	0x4b
	.4byte	0x1fd
	.byte	0x1c
	.uleb128 0x7
	.4byte	.LASF165
	.byte	0xa
	.byte	0x4d
	.4byte	0xd3
	.byte	0x20
	.uleb128 0x7
	.4byte	.LASF166
	.byte	0xa
	.byte	0x4f
	.4byte	0x888
	.byte	0x24
	.uleb128 0x8
	.string	"cfg"
	.byte	0xa
	.byte	0x51
	.4byte	0x4ff
	.byte	0x28
	.uleb128 0x7
	.4byte	.LASF167
	.byte	0xa
	.byte	0x52
	.4byte	0x72f
	.byte	0x70
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x73b
	.uleb128 0x4
	.4byte	.LASF168
	.byte	0xa
	.byte	0x53
	.4byte	0x7b3
	.uleb128 0x16
	.2byte	0x504
	.byte	0xa
	.byte	0x55
	.4byte	0x8bb
	.uleb128 0x7
	.4byte	.LASF169
	.byte	0xa
	.byte	0x59
	.4byte	0x6cb
	.byte	0
	.uleb128 0x7
	.4byte	.LASF170
	.byte	0xa
	.byte	0x5b
	.4byte	0x8bb
	.byte	0x2c
	.byte	0
	.uleb128 0x9
	.4byte	0x88e
	.4byte	0x8cb
	.uleb128 0xc
	.4byte	0x85
	.byte	0x9
	.byte	0
	.uleb128 0x4
	.4byte	.LASF171
	.byte	0xa
	.byte	0x5c
	.4byte	0x899
	.uleb128 0x16
	.2byte	0x530
	.byte	0xa
	.byte	0x7e
	.4byte	0x910
	.uleb128 0x8
	.string	"blk"
	.byte	0xa
	.byte	0x7f
	.4byte	0x910
	.byte	0
	.uleb128 0x7
	.4byte	.LASF172
	.byte	0xa
	.byte	0x80
	.4byte	0x920
	.byte	0x20
	.uleb128 0x7
	.4byte	.LASF173
	.byte	0xa
	.byte	0x81
	.4byte	0xbd
	.byte	0x28
	.uleb128 0x7
	.4byte	.LASF174
	.byte	0xa
	.byte	0x86
	.4byte	0x8cb
	.byte	0x2c
	.byte	0
	.uleb128 0x9
	.4byte	0x7a8
	.4byte	0x920
	.uleb128 0xc
	.4byte	0x85
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.4byte	0x930
	.4byte	0x930
	.uleb128 0xc
	.4byte	0x85
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x281
	.uleb128 0x4
	.4byte	.LASF175
	.byte	0xa
	.byte	0x8f
	.4byte	0x8d6
	.uleb128 0x17
	.4byte	.LASF181
	.byte	0x1
	.byte	0x25
	.4byte	0xbd
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x96a
	.uleb128 0x18
	.4byte	.LASF182
	.byte	0x1
	.byte	0x25
	.4byte	0xbd
	.4byte	.LLST0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF183
	.byte	0x1
	.byte	0x3a
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9a9
	.uleb128 0x1a
	.4byte	.LVL2
	.4byte	0x9ea
	.4byte	0x99f
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x530
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL3
	.4byte	0x9f3
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF176
	.byte	0x4
	.2byte	0x2cc
	.4byte	0x9bc
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x1e
	.4byte	0x15b
	.uleb128 0x1d
	.4byte	.LASF177
	.byte	0x4
	.2byte	0x2cd
	.4byte	0x9d4
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	0x15b
	.uleb128 0x1f
	.4byte	.LASF184
	.byte	0x1
	.byte	0x19
	.4byte	0x936
	.uleb128 0x5
	.byte	0x3
	.4byte	gap_cb
	.uleb128 0x20
	.4byte	.LASF185
	.4byte	.LASF185
	.uleb128 0x21
	.4byte	.LASF186
	.4byte	.LASF186
	.byte	0xa
	.byte	0x94
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
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
.LASF45:
	.string	"BTM_EIR_UUID_SERVCLASS_SERIAL_PORT"
.LASF165:
	.string	"rx_queue_size"
.LASF32:
	.string	"peak_bandwidth"
.LASF167:
	.string	"ertm_info"
.LASF75:
	.string	"BTM_EIR_UUID_SERVCLASS_CABLE_REPLACEMENT"
.LASF139:
	.string	"allowed_modes"
.LASF132:
	.string	"pL2CA_DisconnectCfm_Cb"
.LASF118:
	.string	"tL2CA_CONFIG_IND_CB"
.LASF5:
	.string	"__uint8_t"
.LASF109:
	.string	"fcr_present"
.LASF173:
	.string	"trace_level"
.LASF80:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PSE"
.LASF163:
	.string	"tx_queue"
.LASF148:
	.string	"gap_cback"
.LASF34:
	.string	"delay_variation"
.LASF129:
	.string	"pL2CA_ConfigInd_Cb"
.LASF83:
	.string	"BTM_EIR_UUID_SERVCLASS_PNP_INFORMATION"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF116:
	.string	"tL2CA_CONNECT_CFM_CB"
.LASF120:
	.string	"tL2CA_DISCONNECT_IND_CB"
.LASF57:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REMOTE_CONTROL"
.LASF9:
	.string	"long long unsigned int"
.LASF159:
	.string	"chan_mode_mask"
.LASF73:
	.string	"BTM_EIR_UUID_SERVCLASS_PRINTING_STATUS"
.LASF46:
	.string	"BTM_EIR_UUID_SERVCLASS_LAN_ACCESS_USING_PPP"
.LASF149:
	.string	"gap_inq_rslt_cback"
.LASF10:
	.string	"long int"
.LASF174:
	.string	"conn"
.LASF158:
	.string	"rem_addr_specified"
.LASF111:
	.string	"ext_flow_spec_present"
.LASF124:
	.string	"tL2CA_CONGESTION_STATUS_CB"
.LASF126:
	.string	"pL2CA_ConnectInd_Cb"
.LASF56:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REM_CTRL_TARGET"
.LASF125:
	.string	"tL2CA_TX_COMPLETE_CB"
.LASF15:
	.string	"uint16_t"
.LASF156:
	.string	"gap_handle"
.LASF92:
	.string	"BTM_PM_STS_HOLD"
.LASF70:
	.string	"BTM_EIR_UUID_SERVCLASS_AG_HANDSFREE"
.LASF72:
	.string	"BTM_EIR_UUID_SERVCLASS_BASIC_PRINTING"
.LASF85:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SINK"
.LASF18:
	.string	"UINT16"
.LASF146:
	.string	"tGAP_CALLBACK"
.LASF95:
	.string	"BTM_PM_STS_SSR"
.LASF71:
	.string	"BTM_EIR_UUID_SERVCLASS_DIR_PRT_REF_OBJ_SERVICE"
.LASF43:
	.string	"tBTM_CMPL_CB"
.LASF27:
	.string	"BD_ADDR"
.LASF155:
	.string	"service_id"
.LASF90:
	.string	"BTM_EIR_MAX_SERVICES"
.LASF177:
	.string	"bd_addr_null"
.LASF40:
	.string	"access_latency"
.LASF37:
	.string	"stype"
.LASF50:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_FILE_TRANSFER"
.LASF47:
	.string	"BTM_EIR_UUID_SERVCLASS_DIALUP_NETWORKING"
.LASF26:
	.string	"BT_HDR"
.LASF12:
	.string	"long unsigned int"
.LASF39:
	.string	"sdu_inter_time"
.LASF152:
	.string	"tGAP_INFO"
.LASF138:
	.string	"preferred_mode"
.LASF134:
	.string	"pL2CA_DataInd_Cb"
.LASF91:
	.string	"BTM_PM_STS_ACTIVE"
.LASF81:
	.string	"BTM_EIR_UUID_SERVCLASS_PHONE_ACCESS"
.LASF22:
	.string	"event"
.LASF1:
	.string	"short unsigned int"
.LASF63:
	.string	"BTM_EIR_UUID_SERVCLASS_GN"
.LASF131:
	.string	"pL2CA_DisconnectInd_Cb"
.LASF77:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_SCAN"
.LASF107:
	.string	"flush_to_present"
.LASF140:
	.string	"user_rx_buf_size"
.LASF87:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_NOTIFICATION"
.LASF168:
	.string	"tGAP_CCB"
.LASF143:
	.string	"fcr_tx_buf_size"
.LASF102:
	.string	"mon_tout"
.LASF38:
	.string	"max_sdu_size"
.LASF97:
	.string	"BTM_PM_STS_ERROR"
.LASF144:
	.string	"tL2CAP_ERTM_INFO"
.LASF184:
	.string	"gap_cb"
.LASF11:
	.string	"sizetype"
.LASF62:
	.string	"BTM_EIR_UUID_SERVCLASS_NAP"
.LASF115:
	.string	"tL2CA_CONNECT_IND_CB"
.LASF114:
	.string	"tL2CAP_CFG_INFO"
.LASF186:
	.string	"gap_conn_init"
.LASF33:
	.string	"latency"
.LASF164:
	.string	"rx_queue"
.LASF19:
	.string	"UINT32"
.LASF122:
	.string	"tL2CA_QOS_VIOLATION_IND_CB"
.LASF145:
	.string	"tGAP_CONN_CALLBACK"
.LASF142:
	.string	"fcr_rx_buf_size"
.LASF112:
	.string	"ext_flow_spec"
.LASF68:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_REF_OBJECTS"
.LASF52:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET"
.LASF29:
	.string	"service_type"
.LASF53:
	.string	"BTM_EIR_UUID_SERVCLASS_CORDLESS_TELEPHONY"
.LASF66:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_RESPONDER"
.LASF78:
	.string	"BTM_EIR_UUID_SERVCLASS_SAP"
.LASF160:
	.string	"rem_dev_address"
.LASF141:
	.string	"user_tx_buf_size"
.LASF65:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING"
.LASF137:
	.string	"tL2CAP_APPL_INFO"
.LASF64:
	.string	"BTM_EIR_UUID_SERVCLASS_DIRECT_PRINTING"
.LASF67:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_AUTO_ARCHIVE"
.LASF35:
	.string	"FLOW_SPEC"
.LASF21:
	.string	"_Bool"
.LASF55:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SINK"
.LASF182:
	.string	"new_level"
.LASF51:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC_COMMAND"
.LASF178:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF48:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC"
.LASF170:
	.string	"ccb_pool"
.LASF4:
	.string	"short int"
.LASF61:
	.string	"BTM_EIR_UUID_SERVCLASS_PANU"
.LASF172:
	.string	"btm_cback"
.LASF105:
	.string	"mtu_present"
.LASF136:
	.string	"pL2CA_TxComplete_Cb"
.LASF128:
	.string	"pL2CA_ConnectPnd_Cb"
.LASF20:
	.string	"BOOLEAN"
.LASF157:
	.string	"connection_id"
.LASF93:
	.string	"BTM_PM_STS_SNIFF"
.LASF161:
	.string	"rem_mtu_size"
.LASF175:
	.string	"tGAP_CB"
.LASF94:
	.string	"BTM_PM_STS_PARK"
.LASF54:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SOURCE"
.LASF86:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_ACCESS"
.LASF151:
	.string	"in_use"
.LASF166:
	.string	"p_callback"
.LASF49:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_OBJECT_PUSH"
.LASF16:
	.string	"uint32_t"
.LASF162:
	.string	"is_congested"
.LASF169:
	.string	"reg_info"
.LASF183:
	.string	"GAP_Init"
.LASF106:
	.string	"qos_present"
.LASF13:
	.string	"char"
.LASF98:
	.string	"mode"
.LASF130:
	.string	"pL2CA_ConfigCfm_Cb"
.LASF0:
	.string	"unsigned int"
.LASF6:
	.string	"__uint16_t"
.LASF150:
	.string	"index"
.LASF60:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_AUDIO_GATEWAY"
.LASF101:
	.string	"rtrans_tout"
.LASF181:
	.string	"GAP_SetTraceLevel"
.LASF7:
	.string	"__uint32_t"
.LASF121:
	.string	"tL2CA_DISCONNECT_CFM_CB"
.LASF41:
	.string	"flush_timeout"
.LASF76:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_PRINT"
.LASF23:
	.string	"offset"
.LASF25:
	.string	"data"
.LASF3:
	.string	"unsigned char"
.LASF42:
	.string	"tHCI_EXT_FLOW_SPEC"
.LASF108:
	.string	"flush_to"
.LASF179:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/gap/gap_api.c"
.LASF24:
	.string	"layer_specific"
.LASF28:
	.string	"qos_flags"
.LASF153:
	.string	"con_state"
.LASF88:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SOURCE"
.LASF135:
	.string	"pL2CA_CongestionStatus_Cb"
.LASF127:
	.string	"pL2CA_ConnectCfm_Cb"
.LASF185:
	.string	"memset"
.LASF110:
	.string	"fcs_present"
.LASF154:
	.string	"con_flags"
.LASF58:
	.string	"BTM_EIR_UUID_SERVCLASS_INTERCOM"
.LASF113:
	.string	"flags"
.LASF17:
	.string	"UINT8"
.LASF171:
	.string	"tGAP_CONN"
.LASF82:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_HS"
.LASF14:
	.string	"uint8_t"
.LASF176:
	.string	"bd_addr_any"
.LASF123:
	.string	"tL2CA_DATA_IND_CB"
.LASF96:
	.string	"BTM_PM_STS_PENDING"
.LASF100:
	.string	"max_transmit"
.LASF30:
	.string	"token_rate"
.LASF103:
	.string	"tL2CAP_FCR_OPTS"
.LASF69:
	.string	"BTM_EIR_UUID_SERVCLASS_HF_HANDSFREE"
.LASF44:
	.string	"BTM_EIR_UUID_SERVCLASS_SERVICE_DISCOVERY_SERVER"
.LASF180:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF99:
	.string	"tx_win_sz"
.LASF147:
	.string	"p_data"
.LASF89:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SINK"
.LASF36:
	.string	"fixed_queue_t"
.LASF74:
	.string	"BTM_EIR_UUID_SERVCLASS_HUMAN_INTERFACE"
.LASF133:
	.string	"pL2CA_QoSViolationInd_Cb"
.LASF117:
	.string	"tL2CA_CONNECT_PND_CB"
.LASF59:
	.string	"BTM_EIR_UUID_SERVCLASS_FAX"
.LASF31:
	.string	"token_bucket_size"
.LASF104:
	.string	"result"
.LASF79:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PCE"
.LASF84:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SOURCE"
.LASF119:
	.string	"tL2CA_CONFIG_CFM_CB"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
