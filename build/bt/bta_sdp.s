	.file	"bta_sdp.c"
	.text
.Ltext0:
	.section	.text.bta_sdp_sm_execute,"ax",@progbits
	.literal_position
	.literal .LC0, bta_sdp_action
	.align	4
	.global	bta_sdp_sm_execute
	.type	bta_sdp_sm_execute, @function
bta_sdp_sm_execute:
.LFB26:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/bta/sdp/bta_sdp.c"
	.loc 1 66 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 67 0
	beqz.n	a2, .L3
.LVL1:
	.loc 1 72 0
	l8ui	a8, a2, 0
.LVL2:
	.loc 1 75 0
	bgeui	a8, 4, .L4
	.loc 1 76 0
	l32r	a9, .LC0
	addx4	a8, a8, a9
.LVL3:
	l32i.n	a8, a8, 0
	mov.n	a10, a2
	callx8	a8
.LVL4:
	.loc 1 77 0
	movi.n	a2, 1
.LVL5:
	retw.n
.LVL6:
.L3:
	.loc 1 68 0
	movi.n	a2, 0
.LVL7:
	retw.n
.LVL8:
.L4:
	.loc 1 71 0
	movi.n	a2, 0
.LVL9:
	.loc 1 81 0
	retw.n
.LFE26:
	.size	bta_sdp_sm_execute, .-bta_sdp_sm_execute
	.global	bta_sdp_action
	.section	.rodata.bta_sdp_action,"a",@progbits
	.align	4
	.type	bta_sdp_action, @object
	.size	bta_sdp_action, 16
bta_sdp_action:
	.word	bta_sdp_enable
	.word	bta_sdp_search
	.word	bta_sdp_create_record
	.word	bta_sdp_remove_record
	.comm	bta_sdp_cb,12,4
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
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/common/include/common/bt_defs.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/profile/std/include/bt_sdp.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/bta/include/bta/bta_sdp_api.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/bta/sdp/include/bta_sdp_int.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x8f5
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF163
	.byte	0xc
	.4byte	.LASF164
	.4byte	.LASF165
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
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x16
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x19
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x1a
	.4byte	0x25
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x21
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0x2c
	.4byte	0x65
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x3
	.byte	0x2d
	.4byte	0x70
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x4
	.byte	0x21
	.4byte	0xad
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x4
	.byte	0x22
	.4byte	0xb8
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x4
	.byte	0x23
	.4byte	0xce
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x4
	.byte	0x29
	.4byte	0x105
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF23
	.uleb128 0x7
	.byte	0x8
	.byte	0x4
	.byte	0xc6
	.4byte	0x151
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x4
	.byte	0xc7
	.4byte	0xb8
	.byte	0
	.uleb128 0x9
	.string	"len"
	.byte	0x4
	.byte	0xc8
	.4byte	0xb8
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x4
	.byte	0xc9
	.4byte	0xb8
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x4
	.byte	0xca
	.4byte	0xb8
	.byte	0x6
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x4
	.byte	0xcb
	.4byte	0x151
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.4byte	0xad
	.4byte	0x160
	.uleb128 0xb
	.4byte	0x90
	.byte	0
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x4
	.byte	0xcc
	.4byte	0x10c
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x132
	.4byte	0x177
	.uleb128 0xa
	.4byte	0xd9
	.4byte	0x187
	.uleb128 0xd
	.4byte	0x90
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.4byte	0xd9
	.4byte	0x197
	.uleb128 0xd
	.4byte	0x90
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.byte	0x10
	.byte	0x4
	.2byte	0x1ab
	.4byte	0x1c5
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x1ac
	.4byte	0xe4
	.uleb128 0xf
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x1ad
	.4byte	0xef
	.uleb128 0xf
	.4byte	.LASF32
	.byte	0x4
	.2byte	0x1ae
	.4byte	0x187
	.byte	0
	.uleb128 0x10
	.byte	0x14
	.byte	0x4
	.2byte	0x1a4
	.4byte	0x1e8
	.uleb128 0x11
	.string	"len"
	.byte	0x4
	.2byte	0x1a9
	.4byte	0xe4
	.byte	0
	.uleb128 0x11
	.string	"uu"
	.byte	0x4
	.2byte	0x1af
	.4byte	0x197
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x4
	.2byte	0x1b1
	.4byte	0x1c5
	.uleb128 0x7
	.byte	0x10
	.byte	0x5
	.byte	0x40
	.4byte	0x208
	.uleb128 0x9
	.string	"uu"
	.byte	0x5
	.byte	0x41
	.4byte	0x208
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0xad
	.4byte	0x218
	.uleb128 0xd
	.4byte	0x90
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x5
	.byte	0x42
	.4byte	0x1f4
	.uleb128 0x12
	.byte	0x4
	.4byte	0x25
	.byte	0x6
	.2byte	0x1c0
	.4byte	0x34b
	.uleb128 0x13
	.4byte	.LASF35
	.byte	0
	.uleb128 0x13
	.4byte	.LASF36
	.byte	0x1
	.uleb128 0x13
	.4byte	.LASF37
	.byte	0x2
	.uleb128 0x13
	.4byte	.LASF38
	.byte	0x3
	.uleb128 0x13
	.4byte	.LASF39
	.byte	0x4
	.uleb128 0x13
	.4byte	.LASF40
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF41
	.byte	0x6
	.uleb128 0x13
	.4byte	.LASF42
	.byte	0x7
	.uleb128 0x13
	.4byte	.LASF43
	.byte	0x8
	.uleb128 0x13
	.4byte	.LASF44
	.byte	0x9
	.uleb128 0x13
	.4byte	.LASF45
	.byte	0xa
	.uleb128 0x13
	.4byte	.LASF46
	.byte	0xb
	.uleb128 0x13
	.4byte	.LASF47
	.byte	0xc
	.uleb128 0x13
	.4byte	.LASF48
	.byte	0xd
	.uleb128 0x13
	.4byte	.LASF49
	.byte	0xe
	.uleb128 0x13
	.4byte	.LASF50
	.byte	0xf
	.uleb128 0x13
	.4byte	.LASF51
	.byte	0x10
	.uleb128 0x13
	.4byte	.LASF52
	.byte	0x11
	.uleb128 0x13
	.4byte	.LASF53
	.byte	0x12
	.uleb128 0x13
	.4byte	.LASF54
	.byte	0x13
	.uleb128 0x13
	.4byte	.LASF55
	.byte	0x14
	.uleb128 0x13
	.4byte	.LASF56
	.byte	0x15
	.uleb128 0x13
	.4byte	.LASF57
	.byte	0x16
	.uleb128 0x13
	.4byte	.LASF58
	.byte	0x17
	.uleb128 0x13
	.4byte	.LASF59
	.byte	0x18
	.uleb128 0x13
	.4byte	.LASF60
	.byte	0x19
	.uleb128 0x13
	.4byte	.LASF61
	.byte	0x1a
	.uleb128 0x13
	.4byte	.LASF62
	.byte	0x1b
	.uleb128 0x13
	.4byte	.LASF63
	.byte	0x1c
	.uleb128 0x13
	.4byte	.LASF64
	.byte	0x1d
	.uleb128 0x13
	.4byte	.LASF65
	.byte	0x1e
	.uleb128 0x13
	.4byte	.LASF66
	.byte	0x1f
	.uleb128 0x13
	.4byte	.LASF67
	.byte	0x20
	.uleb128 0x13
	.4byte	.LASF68
	.byte	0x21
	.uleb128 0x13
	.4byte	.LASF69
	.byte	0x22
	.uleb128 0x13
	.4byte	.LASF70
	.byte	0x23
	.uleb128 0x13
	.4byte	.LASF71
	.byte	0x24
	.uleb128 0x13
	.4byte	.LASF72
	.byte	0x25
	.uleb128 0x13
	.4byte	.LASF73
	.byte	0x26
	.uleb128 0x13
	.4byte	.LASF74
	.byte	0x27
	.uleb128 0x13
	.4byte	.LASF75
	.byte	0x28
	.uleb128 0x13
	.4byte	.LASF76
	.byte	0x29
	.uleb128 0x13
	.4byte	.LASF77
	.byte	0x2a
	.uleb128 0x13
	.4byte	.LASF78
	.byte	0x2b
	.uleb128 0x13
	.4byte	.LASF79
	.byte	0x2c
	.uleb128 0x13
	.4byte	.LASF80
	.byte	0x2d
	.uleb128 0x13
	.4byte	.LASF81
	.byte	0x2e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x160
	.uleb128 0x12
	.byte	0x4
	.4byte	0x25
	.byte	0x6
	.2byte	0x6ea
	.4byte	0x389
	.uleb128 0x13
	.4byte	.LASF82
	.byte	0
	.uleb128 0x13
	.4byte	.LASF83
	.byte	0x1
	.uleb128 0x13
	.4byte	.LASF84
	.byte	0x2
	.uleb128 0x13
	.4byte	.LASF85
	.byte	0x3
	.uleb128 0x13
	.4byte	.LASF86
	.byte	0x4
	.uleb128 0x13
	.4byte	.LASF87
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF88
	.byte	0x6
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xad
	.uleb128 0x14
	.byte	0x4
	.4byte	0x25
	.byte	0x7
	.byte	0x1d
	.4byte	0x3c6
	.uleb128 0x13
	.4byte	.LASF89
	.byte	0
	.uleb128 0x13
	.4byte	.LASF90
	.byte	0x1
	.uleb128 0x13
	.4byte	.LASF91
	.byte	0x2
	.uleb128 0x13
	.4byte	.LASF92
	.byte	0x3
	.uleb128 0x13
	.4byte	.LASF93
	.byte	0x4
	.uleb128 0x13
	.4byte	.LASF94
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF95
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.4byte	.LASF96
	.byte	0x7
	.byte	0x25
	.4byte	0x38f
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x38
	.byte	0x7
	.byte	0x35
	.4byte	0x462
	.uleb128 0x8
	.4byte	.LASF97
	.byte	0x7
	.byte	0x36
	.4byte	0x3c6
	.byte	0
	.uleb128 0x8
	.4byte	.LASF98
	.byte	0x7
	.byte	0x37
	.4byte	0x218
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF99
	.byte	0x7
	.byte	0x38
	.4byte	0xce
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF100
	.byte	0x7
	.byte	0x39
	.4byte	0xa0
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF101
	.byte	0x7
	.byte	0x3a
	.4byte	0xc3
	.byte	0x1c
	.uleb128 0x8
	.4byte	.LASF102
	.byte	0x7
	.byte	0x3b
	.4byte	0xc3
	.byte	0x20
	.uleb128 0x8
	.4byte	.LASF103
	.byte	0x7
	.byte	0x3c
	.4byte	0xc3
	.byte	0x24
	.uleb128 0x8
	.4byte	.LASF104
	.byte	0x7
	.byte	0x3f
	.4byte	0x33
	.byte	0x28
	.uleb128 0x8
	.4byte	.LASF105
	.byte	0x7
	.byte	0x40
	.4byte	0x389
	.byte	0x2c
	.uleb128 0x8
	.4byte	.LASF106
	.byte	0x7
	.byte	0x41
	.4byte	0x33
	.byte	0x30
	.uleb128 0x8
	.4byte	.LASF107
	.byte	0x7
	.byte	0x42
	.4byte	0x389
	.byte	0x34
	.byte	0
	.uleb128 0x4
	.4byte	.LASF108
	.byte	0x7
	.byte	0x43
	.4byte	0x3d1
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x44
	.byte	0x7
	.byte	0x45
	.4byte	0x4aa
	.uleb128 0x9
	.string	"hdr"
	.byte	0x7
	.byte	0x46
	.4byte	0x462
	.byte	0
	.uleb128 0x8
	.4byte	.LASF111
	.byte	0x7
	.byte	0x47
	.4byte	0xce
	.byte	0x38
	.uleb128 0x8
	.4byte	.LASF112
	.byte	0x7
	.byte	0x48
	.4byte	0xce
	.byte	0x3c
	.uleb128 0x8
	.4byte	.LASF113
	.byte	0x7
	.byte	0x49
	.4byte	0xce
	.byte	0x40
	.byte	0
	.uleb128 0x4
	.4byte	.LASF114
	.byte	0x7
	.byte	0x4a
	.4byte	0x46d
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x3c
	.byte	0x7
	.byte	0x4c
	.4byte	0x4da
	.uleb128 0x9
	.string	"hdr"
	.byte	0x7
	.byte	0x4d
	.4byte	0x462
	.byte	0
	.uleb128 0x8
	.4byte	.LASF112
	.byte	0x7
	.byte	0x4e
	.4byte	0xce
	.byte	0x38
	.byte	0
	.uleb128 0x4
	.4byte	.LASF116
	.byte	0x7
	.byte	0x4f
	.4byte	0x4b5
	.uleb128 0x15
	.4byte	.LASF117
	.byte	0x40
	.byte	0x7
	.byte	0x51
	.4byte	0x516
	.uleb128 0x9
	.string	"hdr"
	.byte	0x7
	.byte	0x52
	.4byte	0x462
	.byte	0
	.uleb128 0x8
	.4byte	.LASF112
	.byte	0x7
	.byte	0x53
	.4byte	0xce
	.byte	0x38
	.uleb128 0x8
	.4byte	.LASF118
	.byte	0x7
	.byte	0x54
	.4byte	0xce
	.byte	0x3c
	.byte	0
	.uleb128 0x4
	.4byte	.LASF119
	.byte	0x7
	.byte	0x55
	.4byte	0x4e5
	.uleb128 0x15
	.4byte	.LASF120
	.byte	0x38
	.byte	0x7
	.byte	0x57
	.4byte	0x53a
	.uleb128 0x9
	.string	"hdr"
	.byte	0x7
	.byte	0x58
	.4byte	0x462
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF121
	.byte	0x7
	.byte	0x59
	.4byte	0x521
	.uleb128 0x15
	.4byte	.LASF122
	.byte	0x4c
	.byte	0x7
	.byte	0x5b
	.4byte	0x576
	.uleb128 0x9
	.string	"hdr"
	.byte	0x7
	.byte	0x5c
	.4byte	0x462
	.byte	0
	.uleb128 0x8
	.4byte	.LASF123
	.byte	0x7
	.byte	0x5d
	.4byte	0x33
	.byte	0x38
	.uleb128 0x8
	.4byte	.LASF124
	.byte	0x7
	.byte	0x5e
	.4byte	0x576
	.byte	0x3c
	.byte	0
	.uleb128 0xa
	.4byte	0xad
	.4byte	0x586
	.uleb128 0xd
	.4byte	0x90
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.4byte	.LASF125
	.byte	0x7
	.byte	0x5f
	.4byte	0x545
	.uleb128 0x15
	.4byte	.LASF126
	.byte	0x38
	.byte	0x7
	.byte	0x61
	.4byte	0x5aa
	.uleb128 0x9
	.string	"hdr"
	.byte	0x7
	.byte	0x62
	.4byte	0x462
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF127
	.byte	0x7
	.byte	0x63
	.4byte	0x591
	.uleb128 0x16
	.byte	0x4c
	.byte	0x7
	.byte	0x65
	.4byte	0x60b
	.uleb128 0x17
	.string	"hdr"
	.byte	0x7
	.byte	0x66
	.4byte	0x462
	.uleb128 0x17
	.string	"mas"
	.byte	0x7
	.byte	0x67
	.4byte	0x4aa
	.uleb128 0x17
	.string	"mns"
	.byte	0x7
	.byte	0x68
	.4byte	0x4da
	.uleb128 0x17
	.string	"pse"
	.byte	0x7
	.byte	0x69
	.4byte	0x516
	.uleb128 0x17
	.string	"pce"
	.byte	0x7
	.byte	0x6a
	.4byte	0x53a
	.uleb128 0x17
	.string	"ops"
	.byte	0x7
	.byte	0x6b
	.4byte	0x586
	.uleb128 0x17
	.string	"sap"
	.byte	0x7
	.byte	0x6c
	.4byte	0x5aa
	.byte	0
	.uleb128 0x4
	.4byte	.LASF128
	.byte	0x7
	.byte	0x6d
	.4byte	0x5b5
	.uleb128 0x4
	.4byte	.LASF129
	.byte	0x8
	.byte	0x27
	.4byte	0xd9
	.uleb128 0x4
	.4byte	.LASF130
	.byte	0x8
	.byte	0x34
	.4byte	0xe4
	.uleb128 0x18
	.2byte	0x494
	.byte	0x8
	.byte	0x37
	.4byte	0x672
	.uleb128 0x8
	.4byte	.LASF131
	.byte	0x8
	.byte	0x38
	.4byte	0x616
	.byte	0
	.uleb128 0x8
	.4byte	.LASF132
	.byte	0x8
	.byte	0x39
	.4byte	0x16b
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF98
	.byte	0x8
	.byte	0x3a
	.4byte	0x1e8
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF133
	.byte	0x8
	.byte	0x3b
	.4byte	0x33
	.byte	0x1c
	.uleb128 0x8
	.4byte	.LASF134
	.byte	0x8
	.byte	0x3c
	.4byte	0x672
	.byte	0x20
	.byte	0
	.uleb128 0xa
	.4byte	0x60b
	.4byte	0x682
	.uleb128 0xd
	.4byte	0x90
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.4byte	.LASF135
	.byte	0x8
	.byte	0x3d
	.4byte	0x62c
	.uleb128 0x19
	.2byte	0x494
	.byte	0x8
	.byte	0x3f
	.4byte	0x6ad
	.uleb128 0x1a
	.4byte	.LASF131
	.byte	0x8
	.byte	0x40
	.4byte	0x616
	.uleb128 0x1a
	.4byte	.LASF136
	.byte	0x8
	.byte	0x41
	.4byte	0x682
	.byte	0
	.uleb128 0x4
	.4byte	.LASF137
	.byte	0x8
	.byte	0x42
	.4byte	0x68d
	.uleb128 0x4
	.4byte	.LASF138
	.byte	0x8
	.byte	0x45
	.4byte	0x6c3
	.uleb128 0x1b
	.4byte	0x6d8
	.uleb128 0x1c
	.4byte	0x621
	.uleb128 0x1c
	.4byte	0x6d8
	.uleb128 0x1c
	.4byte	0x97
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6ad
	.uleb128 0x14
	.byte	0x4
	.4byte	0x25
	.byte	0x9
	.byte	0x27
	.4byte	0x70e
	.uleb128 0x1d
	.4byte	.LASF139
	.2byte	0x2100
	.uleb128 0x1d
	.4byte	.LASF140
	.2byte	0x2101
	.uleb128 0x1d
	.4byte	.LASF141
	.2byte	0x2102
	.uleb128 0x1d
	.4byte	.LASF142
	.2byte	0x2103
	.uleb128 0x1d
	.4byte	.LASF143
	.2byte	0x2104
	.byte	0
	.uleb128 0x7
	.byte	0xc
	.byte	0x9
	.byte	0x38
	.4byte	0x72f
	.uleb128 0x9
	.string	"hdr"
	.byte	0x9
	.byte	0x39
	.4byte	0x160
	.byte	0
	.uleb128 0x8
	.4byte	.LASF144
	.byte	0x9
	.byte	0x3a
	.4byte	0x72f
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6b8
	.uleb128 0x4
	.4byte	.LASF145
	.byte	0x9
	.byte	0x3b
	.4byte	0x70e
	.uleb128 0x7
	.byte	0x24
	.byte	0x9
	.byte	0x3e
	.4byte	0x76d
	.uleb128 0x9
	.string	"hdr"
	.byte	0x9
	.byte	0x3f
	.4byte	0x160
	.byte	0
	.uleb128 0x8
	.4byte	.LASF146
	.byte	0x9
	.byte	0x40
	.4byte	0x16b
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF98
	.byte	0x9
	.byte	0x41
	.4byte	0x1e8
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.4byte	.LASF147
	.byte	0x9
	.byte	0x42
	.4byte	0x740
	.uleb128 0x7
	.byte	0xc
	.byte	0x9
	.byte	0x45
	.4byte	0x799
	.uleb128 0x9
	.string	"hdr"
	.byte	0x9
	.byte	0x46
	.4byte	0x160
	.byte	0
	.uleb128 0x8
	.4byte	.LASF148
	.byte	0x9
	.byte	0x47
	.4byte	0x97
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF149
	.byte	0x9
	.byte	0x48
	.4byte	0x778
	.uleb128 0x16
	.byte	0x24
	.byte	0x9
	.byte	0x4b
	.4byte	0x7d9
	.uleb128 0x17
	.string	"hdr"
	.byte	0x9
	.byte	0x4d
	.4byte	0x160
	.uleb128 0x1a
	.4byte	.LASF150
	.byte	0x9
	.byte	0x4e
	.4byte	0x735
	.uleb128 0x1a
	.4byte	.LASF151
	.byte	0x9
	.byte	0x4f
	.4byte	0x76d
	.uleb128 0x1a
	.4byte	.LASF152
	.byte	0x9
	.byte	0x50
	.4byte	0x799
	.byte	0
	.uleb128 0x4
	.4byte	.LASF153
	.byte	0x9
	.byte	0x51
	.4byte	0x7a4
	.uleb128 0x7
	.byte	0xc
	.byte	0x9
	.byte	0x54
	.4byte	0x811
	.uleb128 0x8
	.4byte	.LASF154
	.byte	0x9
	.byte	0x55
	.4byte	0xd9
	.byte	0
	.uleb128 0x8
	.4byte	.LASF132
	.byte	0x9
	.byte	0x56
	.4byte	0x16b
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF155
	.byte	0x9
	.byte	0x57
	.4byte	0x72f
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF156
	.byte	0x9
	.byte	0x58
	.4byte	0x7e4
	.uleb128 0x4
	.4byte	.LASF157
	.byte	0x1
	.byte	0x30
	.4byte	0x827
	.uleb128 0x6
	.byte	0x4
	.4byte	0x82d
	.uleb128 0x1b
	.4byte	0x838
	.uleb128 0x1c
	.4byte	0x838
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7d9
	.uleb128 0x1e
	.4byte	.LASF166
	.byte	0x1
	.byte	0x41
	.4byte	0xfa
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x891
	.uleb128 0x1f
	.4byte	.LASF167
	.byte	0x1
	.byte	0x41
	.4byte	0x34b
	.4byte	.LLST0
	.uleb128 0x20
	.string	"ret"
	.byte	0x1
	.byte	0x47
	.4byte	0xfa
	.4byte	.LLST1
	.uleb128 0x21
	.4byte	.LASF158
	.byte	0x1
	.byte	0x48
	.4byte	0xe4
	.4byte	.LLST2
	.uleb128 0x22
	.4byte	.LVL4
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF159
	.byte	0x4
	.2byte	0x2cc
	.4byte	0x8a4
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x25
	.4byte	0x177
	.uleb128 0x24
	.4byte	.LASF160
	.byte	0x4
	.2byte	0x2cd
	.4byte	0x8bc
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	0x177
	.uleb128 0x26
	.4byte	.LASF161
	.byte	0x1
	.byte	0x27
	.4byte	0x811
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_sdp_cb
	.uleb128 0xa
	.4byte	0x81c
	.4byte	0x8e2
	.uleb128 0xd
	.4byte	0x90
	.byte	0x3
	.byte	0
	.uleb128 0x26
	.4byte	.LASF162
	.byte	0x1
	.byte	0x33
	.4byte	0x8f3
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_sdp_action
	.uleb128 0x25
	.4byte	0x8d2
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x17
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
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x17
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
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
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LFE26
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x58
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
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF36:
	.string	"BTM_EIR_UUID_SERVCLASS_SERIAL_PORT"
.LASF167:
	.string	"p_msg"
.LASF124:
	.string	"supported_formats_list"
.LASF66:
	.string	"BTM_EIR_UUID_SERVCLASS_CABLE_REPLACEMENT"
.LASF90:
	.string	"SDP_TYPE_MAP_MAS"
.LASF104:
	.string	"user1_ptr_len"
.LASF5:
	.string	"__uint8_t"
.LASF89:
	.string	"SDP_TYPE_RAW"
.LASF97:
	.string	"type"
.LASF123:
	.string	"supported_formats_list_len"
.LASF60:
	.string	"BTM_EIR_UUID_SERVCLASS_HF_HANDSFREE"
.LASF71:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PSE"
.LASF93:
	.string	"SDP_TYPE_PBAP_PCE"
.LASF27:
	.string	"data"
.LASF143:
	.string	"BTA_SDP_MAX_INT_EVT"
.LASF74:
	.string	"BTM_EIR_UUID_SERVCLASS_PNP_INFORMATION"
.LASF9:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF131:
	.string	"status"
.LASF139:
	.string	"BTA_SDP_API_ENABLE_EVT"
.LASF62:
	.string	"BTM_EIR_UUID_SERVCLASS_DIR_PRT_REF_OBJ_SERVICE"
.LASF48:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REMOTE_CONTROL"
.LASF10:
	.string	"long long unsigned int"
.LASF164:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/bta/sdp/bta_sdp.c"
.LASF64:
	.string	"BTM_EIR_UUID_SERVCLASS_PRINTING_STATUS"
.LASF122:
	.string	"_bluetooth_sdp_ops_record"
.LASF121:
	.string	"bluetooth_sdp_pce_record"
.LASF37:
	.string	"BTM_EIR_UUID_SERVCLASS_LAN_ACCESS_USING_PPP"
.LASF125:
	.string	"bluetooth_sdp_ops_record"
.LASF100:
	.string	"service_name"
.LASF11:
	.string	"long int"
.LASF92:
	.string	"SDP_TYPE_PBAP_PSE"
.LASF33:
	.string	"tBT_UUID"
.LASF47:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REM_CTRL_TARGET"
.LASF16:
	.string	"uint16_t"
.LASF99:
	.string	"service_name_length"
.LASF149:
	.string	"tBTA_SDP_API_RECORD_USER"
.LASF83:
	.string	"BTM_PM_STS_HOLD"
.LASF156:
	.string	"tBTA_SDP_CB"
.LASF31:
	.string	"uuid32"
.LASF135:
	.string	"tBTA_SDP_SEARCH_COMP"
.LASF117:
	.string	"_bluetooth_sdp_pse_record"
.LASF129:
	.string	"tBTA_SDP_STATUS"
.LASF76:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SINK"
.LASF20:
	.string	"UINT16"
.LASF86:
	.string	"BTM_PM_STS_SSR"
.LASF158:
	.string	"action"
.LASF136:
	.string	"sdp_search_comp"
.LASF148:
	.string	"user_data"
.LASF29:
	.string	"BD_ADDR"
.LASF155:
	.string	"p_dm_cback"
.LASF81:
	.string	"BTM_EIR_MAX_SERVICES"
.LASF160:
	.string	"bd_addr_null"
.LASF0:
	.string	"unsigned int"
.LASF41:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_FILE_TRANSFER"
.LASF101:
	.string	"rfcomm_channel_number"
.LASF38:
	.string	"BTM_EIR_UUID_SERVCLASS_DIALUP_NETWORKING"
.LASF28:
	.string	"BT_HDR"
.LASF13:
	.string	"long unsigned int"
.LASF120:
	.string	"_bluetooth_sdp_pce_record"
.LASF144:
	.string	"p_cback"
.LASF82:
	.string	"BTM_PM_STS_ACTIVE"
.LASF72:
	.string	"BTM_EIR_UUID_SERVCLASS_PHONE_ACCESS"
.LASF24:
	.string	"event"
.LASF1:
	.string	"short unsigned int"
.LASF54:
	.string	"BTM_EIR_UUID_SERVCLASS_GN"
.LASF61:
	.string	"BTM_EIR_UUID_SERVCLASS_AG_HANDSFREE"
.LASF68:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_SCAN"
.LASF128:
	.string	"bluetooth_sdp_record"
.LASF32:
	.string	"uuid128"
.LASF151:
	.string	"get_search"
.LASF107:
	.string	"user2_ptr"
.LASF78:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_NOTIFICATION"
.LASF110:
	.string	"_bluetooth_sdp_mas_record"
.LASF34:
	.string	"bt_uuid_t"
.LASF103:
	.string	"profile_version"
.LASF52:
	.string	"BTM_EIR_UUID_SERVCLASS_PANU"
.LASF30:
	.string	"uuid16"
.LASF130:
	.string	"tBTA_SDP_EVT"
.LASF88:
	.string	"BTM_PM_STS_ERROR"
.LASF145:
	.string	"tBTA_SDP_API_ENABLE"
.LASF12:
	.string	"sizetype"
.LASF53:
	.string	"BTM_EIR_UUID_SERVCLASS_NAP"
.LASF150:
	.string	"enable"
.LASF21:
	.string	"UINT32"
.LASF63:
	.string	"BTM_EIR_UUID_SERVCLASS_BASIC_PRINTING"
.LASF153:
	.string	"tBTA_SDP_MSG"
.LASF141:
	.string	"BTA_SDP_API_CREATE_RECORD_USER_EVT"
.LASF77:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_ACCESS"
.LASF126:
	.string	"_bluetooth_sdp_sap_record"
.LASF119:
	.string	"bluetooth_sdp_pse_record"
.LASF59:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_REF_OBJECTS"
.LASF43:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET"
.LASF152:
	.string	"record"
.LASF44:
	.string	"BTM_EIR_UUID_SERVCLASS_CORDLESS_TELEPHONY"
.LASF57:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_RESPONDER"
.LASF69:
	.string	"BTM_EIR_UUID_SERVCLASS_SAP"
.LASF56:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING"
.LASF55:
	.string	"BTM_EIR_UUID_SERVCLASS_DIRECT_PRINTING"
.LASF58:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_AUTO_ARCHIVE"
.LASF23:
	.string	"_Bool"
.LASF17:
	.string	"int32_t"
.LASF3:
	.string	"unsigned char"
.LASF134:
	.string	"records"
.LASF163:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF39:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC"
.LASF4:
	.string	"short int"
.LASF157:
	.string	"tBTA_SDP_ACTION"
.LASF95:
	.string	"SDP_TYPE_SAP_SERVER"
.LASF147:
	.string	"tBTA_SDP_API_SEARCH"
.LASF84:
	.string	"BTM_PM_STS_SNIFF"
.LASF22:
	.string	"BOOLEAN"
.LASF85:
	.string	"BTM_PM_STS_PARK"
.LASF113:
	.string	"supported_message_types"
.LASF91:
	.string	"SDP_TYPE_MAP_MNS"
.LASF102:
	.string	"l2cap_psm"
.LASF45:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SOURCE"
.LASF133:
	.string	"record_count"
.LASF40:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_OBJECT_PUSH"
.LASF18:
	.string	"uint32_t"
.LASF98:
	.string	"uuid"
.LASF14:
	.string	"char"
.LASF6:
	.string	"__uint16_t"
.LASF51:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_AUDIO_GATEWAY"
.LASF7:
	.string	"__int32_t"
.LASF8:
	.string	"__uint32_t"
.LASF166:
	.string	"bta_sdp_sm_execute"
.LASF112:
	.string	"supported_features"
.LASF67:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_PRINT"
.LASF25:
	.string	"offset"
.LASF162:
	.string	"bta_sdp_action"
.LASF142:
	.string	"BTA_SDP_API_REMOVE_RECORD_USER_EVT"
.LASF26:
	.string	"layer_specific"
.LASF108:
	.string	"bluetooth_sdp_hdr_overlay"
.LASF42:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC_COMMAND"
.LASF79:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SOURCE"
.LASF109:
	.string	"_bluetooth_sdp_hdr_overlay"
.LASF138:
	.string	"tBTA_SDP_DM_CBACK"
.LASF127:
	.string	"bluetooth_sdp_sap_record"
.LASF115:
	.string	"_bluetooth_sdp_mns_record"
.LASF111:
	.string	"mas_instance_id"
.LASF116:
	.string	"bluetooth_sdp_mns_record"
.LASF49:
	.string	"BTM_EIR_UUID_SERVCLASS_INTERCOM"
.LASF19:
	.string	"UINT8"
.LASF73:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_HS"
.LASF94:
	.string	"SDP_TYPE_OPP_SERVER"
.LASF15:
	.string	"uint8_t"
.LASF159:
	.string	"bd_addr_any"
.LASF87:
	.string	"BTM_PM_STS_PENDING"
.LASF46:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SINK"
.LASF161:
	.string	"bta_sdp_cb"
.LASF35:
	.string	"BTM_EIR_UUID_SERVCLASS_SERVICE_DISCOVERY_SERVER"
.LASF165:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF114:
	.string	"bluetooth_sdp_mas_record"
.LASF96:
	.string	"bluetooth_sdp_types"
.LASF80:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SINK"
.LASF65:
	.string	"BTM_EIR_UUID_SERVCLASS_HUMAN_INTERFACE"
.LASF105:
	.string	"user1_ptr"
.LASF146:
	.string	"bd_addr"
.LASF50:
	.string	"BTM_EIR_UUID_SERVCLASS_FAX"
.LASF132:
	.string	"remote_addr"
.LASF137:
	.string	"tBTA_SDP"
.LASF140:
	.string	"BTA_SDP_API_SEARCH_EVT"
.LASF118:
	.string	"supported_repositories"
.LASF70:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PCE"
.LASF154:
	.string	"sdp_active"
.LASF75:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SOURCE"
.LASF106:
	.string	"user2_ptr_len"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
