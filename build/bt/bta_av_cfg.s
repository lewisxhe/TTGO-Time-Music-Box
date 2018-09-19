	.file	"bta_av_cfg.c"
	.text
.Ltext0:
	.global	p_bta_av_rc_id
	.section	.data.p_bta_av_rc_id,"aw",@progbits
	.align	4
	.type	p_bta_av_rc_id, @object
	.size	p_bta_av_rc_id, 4
p_bta_av_rc_id:
	.word	bta_av_rc_id
	.global	p_bta_av_rc_id_ac
	.section	.bss.p_bta_av_rc_id_ac,"aw",@nobits
	.align	4
	.type	p_bta_av_rc_id_ac, @object
	.size	p_bta_av_rc_id_ac, 4
p_bta_av_rc_id_ac:
	.zero	4
	.global	bta_av_rc_id
	.section	.rodata.bta_av_rc_id,"a",@progbits
	.align	4
	.type	bta_av_rc_id, @object
	.size	bta_av_rc_id, 16
bta_av_rc_id:
	.short	0
	.short	0
	.short	0
	.short	0
	.short	6256
	.short	0
	.short	0
	.short	0
	.global	p_bta_av_cfg
	.section	.data.p_bta_av_cfg,"aw",@progbits
	.align	4
	.type	p_bta_av_cfg, @object
	.size	p_bta_av_cfg, 4
p_bta_av_cfg:
	.word	bta_av_cfg
	.global	bta_av_cfg
	.section	.rodata.bta_av_cfg,"a",@progbits
	.align	4
	.type	bta_av_cfg, @object
	.size	bta_av_cfg, 120
bta_av_cfg:
	.word	4120
	.short	512
	.short	1008
	.short	2
	.short	1
	.short	672
	.short	1008
	.word	bta_av_audio_flush_to
	.short	6
	.short	1008
	.short	600
	.byte	0
	.byte	2
	.byte	3
	.byte	8
	.zero	2
	.word	bta_av_meta_caps_co_ids
	.word	bta_av_meta_caps_evt_ids
	.word	0
	.word	0
	.byte	0
	.zero	34
	.byte	0
	.zero	34
	.zero	2
	.global	bta_av_meta_caps_evt_ids
	.section	.rodata.bta_av_meta_caps_evt_ids,"a",@progbits
	.align	4
	.type	bta_av_meta_caps_evt_ids, @object
	.size	bta_av_meta_caps_evt_ids, 3
bta_av_meta_caps_evt_ids:
	.byte	1
	.byte	2
	.byte	5
	.global	bta_av_audio_flush_to
	.section	.rodata.bta_av_audio_flush_to,"a",@progbits
	.align	4
	.type	bta_av_audio_flush_to, @object
	.size	bta_av_audio_flush_to, 10
bta_av_audio_flush_to:
	.zero	10
	.global	bta_av_meta_caps_co_ids
	.section	.rodata.bta_av_meta_caps_co_ids,"a",@progbits
	.align	4
	.type	bta_av_meta_caps_co_ids, @object
	.size	bta_av_meta_caps_co_ids, 8
bta_av_meta_caps_co_ids:
	.word	6488
	.word	4120
	.text
.Letext0:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avdt_api.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/bta/include/bta/bta_av_api.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/bta/av/bta_av_cfg.c"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xbe8
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF201
	.byte	0xc
	.4byte	.LASF202
	.4byte	.LASF203
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
	.byte	0x1
	.byte	0x12
	.4byte	0x44
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
	.byte	0x1
	.byte	0x16
	.4byte	0x2b
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x1
	.byte	0x1a
	.4byte	0x24
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x2
	.byte	0x15
	.4byte	0x39
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x2
	.byte	0x21
	.4byte	0x52
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x2
	.byte	0x2d
	.4byte	0x5d
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x3
	.byte	0x21
	.4byte	0x76
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x22
	.4byte	0x81
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x23
	.4byte	0x8c
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x29
	.4byte	0xc3
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF17
	.uleb128 0x5
	.byte	0x8
	.byte	0x3
	.byte	0xc6
	.4byte	0x10f
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x3
	.byte	0xc7
	.4byte	0x81
	.byte	0
	.uleb128 0x7
	.string	"len"
	.byte	0x3
	.byte	0xc8
	.4byte	0x81
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x3
	.byte	0xc9
	.4byte	0x81
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x3
	.byte	0xca
	.4byte	0x81
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x3
	.byte	0xcb
	.4byte	0x10f
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.4byte	0x76
	.4byte	0x11e
	.uleb128 0x9
	.4byte	0x11e
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF22
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x3
	.byte	0xcc
	.4byte	0xca
	.uleb128 0x8
	.4byte	0x97
	.4byte	0x140
	.uleb128 0xa
	.4byte	0x11e
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x97
	.uleb128 0x8
	.4byte	0x97
	.4byte	0x156
	.uleb128 0xa
	.4byte	0x11e
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF24
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF25
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF26
	.uleb128 0xb
	.byte	0x4
	.4byte	0x156
	.uleb128 0xd
	.byte	0x4
	.4byte	0x24
	.byte	0x4
	.2byte	0x1c0
	.4byte	0x29b
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF30
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x6
	.uleb128 0xe
	.4byte	.LASF34
	.byte	0x7
	.uleb128 0xe
	.4byte	.LASF35
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF36
	.byte	0x9
	.uleb128 0xe
	.4byte	.LASF37
	.byte	0xa
	.uleb128 0xe
	.4byte	.LASF38
	.byte	0xb
	.uleb128 0xe
	.4byte	.LASF39
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0xd
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0xe
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0xf
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x11
	.uleb128 0xe
	.4byte	.LASF45
	.byte	0x12
	.uleb128 0xe
	.4byte	.LASF46
	.byte	0x13
	.uleb128 0xe
	.4byte	.LASF47
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF48
	.byte	0x15
	.uleb128 0xe
	.4byte	.LASF49
	.byte	0x16
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0x17
	.uleb128 0xe
	.4byte	.LASF51
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0x19
	.uleb128 0xe
	.4byte	.LASF53
	.byte	0x1a
	.uleb128 0xe
	.4byte	.LASF54
	.byte	0x1b
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0x1d
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x1e
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x1f
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF60
	.byte	0x21
	.uleb128 0xe
	.4byte	.LASF61
	.byte	0x22
	.uleb128 0xe
	.4byte	.LASF62
	.byte	0x23
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0x24
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0x25
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0x26
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0x27
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0x28
	.uleb128 0xe
	.4byte	.LASF68
	.byte	0x29
	.uleb128 0xe
	.4byte	.LASF69
	.byte	0x2a
	.uleb128 0xe
	.4byte	.LASF70
	.byte	0x2b
	.uleb128 0xe
	.4byte	.LASF71
	.byte	0x2c
	.uleb128 0xe
	.4byte	.LASF72
	.byte	0x2d
	.uleb128 0xe
	.4byte	.LASF73
	.byte	0x2e
	.byte	0
	.uleb128 0x8
	.4byte	0xad
	.4byte	0x2ab
	.uleb128 0xa
	.4byte	0x11e
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x125
	.uleb128 0xd
	.byte	0x4
	.4byte	0x24
	.byte	0x4
	.2byte	0x6ea
	.4byte	0x2e9
	.uleb128 0xe
	.4byte	.LASF74
	.byte	0
	.uleb128 0xe
	.4byte	.LASF75
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF76
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF77
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF78
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF79
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF80
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xa2
	.uleb128 0x4
	.4byte	.LASF81
	.byte	0x5
	.byte	0x5e
	.4byte	0x97
	.uleb128 0x5
	.byte	0x14
	.byte	0x5
	.byte	0xd5
	.4byte	0x33f
	.uleb128 0x6
	.4byte	.LASF82
	.byte	0x5
	.byte	0xd6
	.4byte	0xad
	.byte	0
	.uleb128 0x6
	.4byte	.LASF83
	.byte	0x5
	.byte	0xd7
	.4byte	0xad
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF84
	.byte	0x5
	.byte	0xd8
	.4byte	0xad
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF85
	.byte	0x5
	.byte	0xd9
	.4byte	0xad
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF86
	.byte	0x5
	.byte	0xdb
	.4byte	0xad
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.4byte	.LASF87
	.byte	0x5
	.byte	0xdc
	.4byte	0x2fa
	.uleb128 0x5
	.byte	0x18
	.byte	0x5
	.byte	0xde
	.4byte	0x39b
	.uleb128 0x6
	.4byte	.LASF88
	.byte	0x5
	.byte	0xdf
	.4byte	0x97
	.byte	0
	.uleb128 0x6
	.4byte	.LASF89
	.byte	0x5
	.byte	0xe0
	.4byte	0xad
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF90
	.byte	0x5
	.byte	0xe1
	.4byte	0xad
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF91
	.byte	0x5
	.byte	0xe2
	.4byte	0xad
	.byte	0xc
	.uleb128 0x7
	.string	"lsr"
	.byte	0x5
	.byte	0xe3
	.4byte	0xad
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF92
	.byte	0x5
	.byte	0xe4
	.4byte	0xad
	.byte	0x14
	.byte	0
	.uleb128 0x4
	.4byte	.LASF93
	.byte	0x5
	.byte	0xe5
	.4byte	0x34a
	.uleb128 0xf
	.byte	0x20
	.byte	0x5
	.byte	0xe7
	.4byte	0x3ce
	.uleb128 0x10
	.string	"sr"
	.byte	0x5
	.byte	0xe8
	.4byte	0x33f
	.uleb128 0x10
	.string	"rr"
	.byte	0x5
	.byte	0xe9
	.4byte	0x39b
	.uleb128 0x11
	.4byte	.LASF94
	.byte	0x5
	.byte	0xea
	.4byte	0x3ce
	.byte	0
	.uleb128 0x8
	.4byte	0x97
	.4byte	0x3de
	.uleb128 0xa
	.4byte	0x11e
	.byte	0x1c
	.byte	0
	.uleb128 0x4
	.4byte	.LASF95
	.byte	0x5
	.byte	0xeb
	.4byte	0x3a6
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.byte	0xf9
	.4byte	0x422
	.uleb128 0x6
	.4byte	.LASF96
	.byte	0x5
	.byte	0xfa
	.4byte	0xb8
	.byte	0
	.uleb128 0x6
	.4byte	.LASF97
	.byte	0x5
	.byte	0xfb
	.4byte	0x97
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF98
	.byte	0x5
	.byte	0xfc
	.4byte	0x97
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF99
	.byte	0x5
	.byte	0xfd
	.4byte	0x97
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF100
	.byte	0x5
	.byte	0xfe
	.4byte	0x3e9
	.uleb128 0x12
	.byte	0x74
	.byte	0x5
	.2byte	0x101
	.4byte	0x507
	.uleb128 0x13
	.4byte	.LASF101
	.byte	0x5
	.2byte	0x102
	.4byte	0x507
	.byte	0
	.uleb128 0x13
	.4byte	.LASF102
	.byte	0x5
	.2byte	0x103
	.4byte	0x517
	.byte	0xa
	.uleb128 0x13
	.4byte	.LASF103
	.byte	0x5
	.2byte	0x104
	.4byte	0x97
	.byte	0x64
	.uleb128 0x13
	.4byte	.LASF104
	.byte	0x5
	.2byte	0x105
	.4byte	0x97
	.byte	0x65
	.uleb128 0x13
	.4byte	.LASF105
	.byte	0x5
	.2byte	0x106
	.4byte	0xa2
	.byte	0x66
	.uleb128 0x13
	.4byte	.LASF106
	.byte	0x5
	.2byte	0x107
	.4byte	0x97
	.byte	0x68
	.uleb128 0x13
	.4byte	.LASF107
	.byte	0x5
	.2byte	0x108
	.4byte	0x97
	.byte	0x69
	.uleb128 0x13
	.4byte	.LASF108
	.byte	0x5
	.2byte	0x109
	.4byte	0x97
	.byte	0x6a
	.uleb128 0x13
	.4byte	.LASF109
	.byte	0x5
	.2byte	0x10a
	.4byte	0x97
	.byte	0x6b
	.uleb128 0x13
	.4byte	.LASF110
	.byte	0x5
	.2byte	0x10c
	.4byte	0x97
	.byte	0x6c
	.uleb128 0x13
	.4byte	.LASF111
	.byte	0x5
	.2byte	0x10d
	.4byte	0x97
	.byte	0x6d
	.uleb128 0x13
	.4byte	.LASF112
	.byte	0x5
	.2byte	0x10e
	.4byte	0x97
	.byte	0x6e
	.uleb128 0x13
	.4byte	.LASF113
	.byte	0x5
	.2byte	0x10f
	.4byte	0x97
	.byte	0x6f
	.uleb128 0x13
	.4byte	.LASF114
	.byte	0x5
	.2byte	0x110
	.4byte	0x97
	.byte	0x70
	.uleb128 0x13
	.4byte	.LASF115
	.byte	0x5
	.2byte	0x111
	.4byte	0x97
	.byte	0x71
	.uleb128 0x13
	.4byte	.LASF116
	.byte	0x5
	.2byte	0x112
	.4byte	0x97
	.byte	0x72
	.byte	0
	.uleb128 0x8
	.4byte	0x97
	.4byte	0x517
	.uleb128 0xa
	.4byte	0x11e
	.byte	0x9
	.byte	0
	.uleb128 0x8
	.4byte	0x97
	.4byte	0x527
	.uleb128 0xa
	.4byte	0x11e
	.byte	0x59
	.byte	0
	.uleb128 0x14
	.4byte	.LASF117
	.byte	0x5
	.2byte	0x114
	.4byte	0x42d
	.uleb128 0x12
	.byte	0x6
	.byte	0x5
	.2byte	0x117
	.4byte	0x58b
	.uleb128 0x13
	.4byte	.LASF118
	.byte	0x5
	.2byte	0x118
	.4byte	0x97
	.byte	0
	.uleb128 0x13
	.4byte	.LASF119
	.byte	0x5
	.2byte	0x119
	.4byte	0x97
	.byte	0x1
	.uleb128 0x13
	.4byte	.LASF120
	.byte	0x5
	.2byte	0x11a
	.4byte	0x97
	.byte	0x2
	.uleb128 0x13
	.4byte	.LASF97
	.byte	0x5
	.2byte	0x11b
	.4byte	0x97
	.byte	0x3
	.uleb128 0x13
	.4byte	.LASF121
	.byte	0x5
	.2byte	0x11c
	.4byte	0x97
	.byte	0x4
	.uleb128 0x13
	.4byte	.LASF122
	.byte	0x5
	.2byte	0x11d
	.4byte	0x97
	.byte	0x5
	.byte	0
	.uleb128 0x14
	.4byte	.LASF123
	.byte	0x5
	.2byte	0x11e
	.4byte	0x533
	.uleb128 0x12
	.byte	0xc
	.byte	0x5
	.2byte	0x123
	.4byte	0x5bb
	.uleb128 0x15
	.string	"hdr"
	.byte	0x5
	.2byte	0x124
	.4byte	0x58b
	.byte	0
	.uleb128 0x13
	.4byte	.LASF124
	.byte	0x5
	.2byte	0x125
	.4byte	0x5bb
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x527
	.uleb128 0x14
	.4byte	.LASF125
	.byte	0x5
	.2byte	0x126
	.4byte	0x597
	.uleb128 0x12
	.byte	0x10
	.byte	0x5
	.2byte	0x129
	.4byte	0x5fe
	.uleb128 0x15
	.string	"hdr"
	.byte	0x5
	.2byte	0x12a
	.4byte	0x58b
	.byte	0
	.uleb128 0x13
	.4byte	.LASF124
	.byte	0x5
	.2byte	0x12b
	.4byte	0x5bb
	.byte	0x8
	.uleb128 0x13
	.4byte	.LASF126
	.byte	0x5
	.2byte	0x12c
	.4byte	0x97
	.byte	0xc
	.byte	0
	.uleb128 0x14
	.4byte	.LASF127
	.byte	0x5
	.2byte	0x12d
	.4byte	0x5cd
	.uleb128 0x12
	.byte	0xa
	.byte	0x5
	.2byte	0x130
	.4byte	0x63b
	.uleb128 0x15
	.string	"hdr"
	.byte	0x5
	.2byte	0x131
	.4byte	0x58b
	.byte	0
	.uleb128 0x13
	.4byte	.LASF128
	.byte	0x5
	.2byte	0x132
	.4byte	0xa2
	.byte	0x6
	.uleb128 0x13
	.4byte	.LASF129
	.byte	0x5
	.2byte	0x133
	.4byte	0xa2
	.byte	0x8
	.byte	0
	.uleb128 0x14
	.4byte	.LASF130
	.byte	0x5
	.2byte	0x134
	.4byte	0x60a
	.uleb128 0x12
	.byte	0x10
	.byte	0x5
	.2byte	0x139
	.4byte	0x678
	.uleb128 0x15
	.string	"hdr"
	.byte	0x5
	.2byte	0x13a
	.4byte	0x58b
	.byte	0
	.uleb128 0x13
	.4byte	.LASF131
	.byte	0x5
	.2byte	0x13b
	.4byte	0x140
	.byte	0x8
	.uleb128 0x15
	.string	"len"
	.byte	0x5
	.2byte	0x13c
	.4byte	0xa2
	.byte	0xc
	.byte	0
	.uleb128 0x14
	.4byte	.LASF132
	.byte	0x5
	.2byte	0x13d
	.4byte	0x647
	.uleb128 0x12
	.byte	0x10
	.byte	0x5
	.2byte	0x140
	.4byte	0x6b5
	.uleb128 0x15
	.string	"hdr"
	.byte	0x5
	.2byte	0x141
	.4byte	0x58b
	.byte	0
	.uleb128 0x13
	.4byte	.LASF133
	.byte	0x5
	.2byte	0x142
	.4byte	0x6b5
	.byte	0x8
	.uleb128 0x13
	.4byte	.LASF134
	.byte	0x5
	.2byte	0x143
	.4byte	0x97
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x422
	.uleb128 0x14
	.4byte	.LASF135
	.byte	0x5
	.2byte	0x144
	.4byte	0x684
	.uleb128 0x12
	.byte	0x8
	.byte	0x5
	.2byte	0x147
	.4byte	0x6eb
	.uleb128 0x15
	.string	"hdr"
	.byte	0x5
	.2byte	0x148
	.4byte	0x58b
	.byte	0
	.uleb128 0x13
	.4byte	.LASF136
	.byte	0x5
	.2byte	0x149
	.4byte	0xa2
	.byte	0x6
	.byte	0
	.uleb128 0x14
	.4byte	.LASF137
	.byte	0x5
	.2byte	0x14a
	.4byte	0x6c7
	.uleb128 0x16
	.byte	0x10
	.byte	0x5
	.2byte	0x14d
	.4byte	0x7cd
	.uleb128 0x17
	.string	"hdr"
	.byte	0x5
	.2byte	0x14e
	.4byte	0x58b
	.uleb128 0x18
	.4byte	.LASF138
	.byte	0x5
	.2byte	0x14f
	.4byte	0x6bb
	.uleb128 0x18
	.4byte	.LASF139
	.byte	0x5
	.2byte	0x150
	.4byte	0x5c1
	.uleb128 0x18
	.4byte	.LASF140
	.byte	0x5
	.2byte	0x151
	.4byte	0x63b
	.uleb128 0x18
	.4byte	.LASF141
	.byte	0x5
	.2byte	0x152
	.4byte	0x63b
	.uleb128 0x18
	.4byte	.LASF142
	.byte	0x5
	.2byte	0x153
	.4byte	0x5fe
	.uleb128 0x18
	.4byte	.LASF143
	.byte	0x5
	.2byte	0x154
	.4byte	0x58b
	.uleb128 0x18
	.4byte	.LASF144
	.byte	0x5
	.2byte	0x155
	.4byte	0x58b
	.uleb128 0x18
	.4byte	.LASF145
	.byte	0x5
	.2byte	0x156
	.4byte	0x58b
	.uleb128 0x18
	.4byte	.LASF146
	.byte	0x5
	.2byte	0x157
	.4byte	0x5c1
	.uleb128 0x18
	.4byte	.LASF147
	.byte	0x5
	.2byte	0x158
	.4byte	0x5c1
	.uleb128 0x18
	.4byte	.LASF148
	.byte	0x5
	.2byte	0x159
	.4byte	0x678
	.uleb128 0x18
	.4byte	.LASF149
	.byte	0x5
	.2byte	0x15a
	.4byte	0x678
	.uleb128 0x18
	.4byte	.LASF150
	.byte	0x5
	.2byte	0x15b
	.4byte	0x58b
	.uleb128 0x18
	.4byte	.LASF151
	.byte	0x5
	.2byte	0x15c
	.4byte	0x58b
	.uleb128 0x18
	.4byte	.LASF152
	.byte	0x5
	.2byte	0x15d
	.4byte	0x58b
	.uleb128 0x18
	.4byte	.LASF153
	.byte	0x5
	.2byte	0x15e
	.4byte	0x6eb
	.byte	0
	.uleb128 0x14
	.4byte	.LASF154
	.byte	0x5
	.2byte	0x15f
	.4byte	0x6f7
	.uleb128 0x14
	.4byte	.LASF155
	.byte	0x5
	.2byte	0x166
	.4byte	0x7e5
	.uleb128 0x19
	.4byte	0x7ff
	.uleb128 0x1a
	.4byte	0x97
	.uleb128 0x1a
	.4byte	0x140
	.uleb128 0x1a
	.4byte	0x97
	.uleb128 0x1a
	.4byte	0x7ff
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x7cd
	.uleb128 0x14
	.4byte	.LASF156
	.byte	0x5
	.2byte	0x16d
	.4byte	0x811
	.uleb128 0x19
	.4byte	0x82b
	.uleb128 0x1a
	.4byte	0x97
	.uleb128 0x1a
	.4byte	0x2ab
	.uleb128 0x1a
	.4byte	0xad
	.uleb128 0x1a
	.4byte	0x97
	.byte	0
	.uleb128 0x14
	.4byte	.LASF157
	.byte	0x5
	.2byte	0x177
	.4byte	0x837
	.uleb128 0x19
	.4byte	0x860
	.uleb128 0x1a
	.4byte	0x97
	.uleb128 0x1a
	.4byte	0x140
	.uleb128 0x1a
	.4byte	0xad
	.uleb128 0x1a
	.4byte	0xad
	.uleb128 0x1a
	.4byte	0xa2
	.uleb128 0x1a
	.4byte	0x97
	.uleb128 0x1a
	.4byte	0x97
	.byte	0
	.uleb128 0x14
	.4byte	.LASF158
	.byte	0x5
	.2byte	0x180
	.4byte	0x86c
	.uleb128 0x19
	.4byte	0x881
	.uleb128 0x1a
	.4byte	0x97
	.uleb128 0x1a
	.4byte	0x2ef
	.uleb128 0x1a
	.4byte	0x881
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x3de
	.uleb128 0xb
	.byte	0x4
	.4byte	0x7d9
	.uleb128 0x12
	.byte	0x8c
	.byte	0x5
	.2byte	0x189
	.4byte	0x919
	.uleb128 0x15
	.string	"cfg"
	.byte	0x5
	.2byte	0x18a
	.4byte	0x527
	.byte	0
	.uleb128 0x13
	.4byte	.LASF159
	.byte	0x5
	.2byte	0x18b
	.4byte	0x887
	.byte	0x74
	.uleb128 0x13
	.4byte	.LASF160
	.byte	0x5
	.2byte	0x18c
	.4byte	0x919
	.byte	0x78
	.uleb128 0x13
	.4byte	.LASF161
	.byte	0x5
	.2byte	0x18e
	.4byte	0x91f
	.byte	0x7c
	.uleb128 0x13
	.4byte	.LASF162
	.byte	0x5
	.2byte	0x191
	.4byte	0x925
	.byte	0x80
	.uleb128 0x15
	.string	"mtu"
	.byte	0x5
	.2byte	0x193
	.4byte	0xa2
	.byte	0x84
	.uleb128 0x13
	.4byte	.LASF163
	.byte	0x5
	.2byte	0x194
	.4byte	0xa2
	.byte	0x86
	.uleb128 0x13
	.4byte	.LASF99
	.byte	0x5
	.2byte	0x195
	.4byte	0x97
	.byte	0x88
	.uleb128 0x13
	.4byte	.LASF98
	.byte	0x5
	.2byte	0x196
	.4byte	0x97
	.byte	0x89
	.uleb128 0x13
	.4byte	.LASF164
	.byte	0x5
	.2byte	0x197
	.4byte	0xa2
	.byte	0x8a
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x805
	.uleb128 0xb
	.byte	0x4
	.4byte	0x82b
	.uleb128 0xb
	.byte	0x4
	.4byte	0x860
	.uleb128 0x14
	.4byte	.LASF165
	.byte	0x5
	.2byte	0x198
	.4byte	0x88d
	.uleb128 0x4
	.4byte	.LASF166
	.byte	0x6
	.byte	0xdb
	.4byte	0x97
	.uleb128 0x14
	.4byte	.LASF167
	.byte	0x6
	.2byte	0x1f6
	.4byte	0x94e
	.uleb128 0xb
	.byte	0x4
	.4byte	0x954
	.uleb128 0x19
	.4byte	0x964
	.uleb128 0x1a
	.4byte	0x15d
	.uleb128 0x1a
	.4byte	0x15d
	.byte	0
	.uleb128 0x14
	.4byte	.LASF168
	.byte	0x6
	.2byte	0x1f9
	.4byte	0x970
	.uleb128 0x19
	.4byte	0x985
	.uleb128 0x1a
	.4byte	0x985
	.uleb128 0x1a
	.4byte	0x16d
	.uleb128 0x1a
	.4byte	0x15d
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x92b
	.uleb128 0x12
	.byte	0x78
	.byte	0x6
	.2byte	0x1fc
	.4byte	0xaa6
	.uleb128 0x13
	.4byte	.LASF169
	.byte	0x6
	.2byte	0x1fd
	.4byte	0xad
	.byte	0
	.uleb128 0x13
	.4byte	.LASF170
	.byte	0x6
	.2byte	0x1fe
	.4byte	0xa2
	.byte	0x4
	.uleb128 0x13
	.4byte	.LASF171
	.byte	0x6
	.2byte	0x1ff
	.4byte	0xa2
	.byte	0x6
	.uleb128 0x13
	.4byte	.LASF172
	.byte	0x6
	.2byte	0x200
	.4byte	0xa2
	.byte	0x8
	.uleb128 0x13
	.4byte	.LASF173
	.byte	0x6
	.2byte	0x201
	.4byte	0xa2
	.byte	0xa
	.uleb128 0x13
	.4byte	.LASF174
	.byte	0x6
	.2byte	0x202
	.4byte	0xa2
	.byte	0xc
	.uleb128 0x13
	.4byte	.LASF175
	.byte	0x6
	.2byte	0x203
	.4byte	0xa2
	.byte	0xe
	.uleb128 0x13
	.4byte	.LASF176
	.byte	0x6
	.2byte	0x204
	.4byte	0xaa6
	.byte	0x10
	.uleb128 0x13
	.4byte	.LASF177
	.byte	0x6
	.2byte	0x205
	.4byte	0xa2
	.byte	0x14
	.uleb128 0x13
	.4byte	.LASF178
	.byte	0x6
	.2byte	0x206
	.4byte	0xa2
	.byte	0x16
	.uleb128 0x13
	.4byte	.LASF179
	.byte	0x6
	.2byte	0x207
	.4byte	0xa2
	.byte	0x18
	.uleb128 0x13
	.4byte	.LASF180
	.byte	0x6
	.2byte	0x208
	.4byte	0xb8
	.byte	0x1a
	.uleb128 0x13
	.4byte	.LASF181
	.byte	0x6
	.2byte	0x209
	.4byte	0x97
	.byte	0x1b
	.uleb128 0x13
	.4byte	.LASF182
	.byte	0x6
	.2byte	0x20a
	.4byte	0x97
	.byte	0x1c
	.uleb128 0x13
	.4byte	.LASF183
	.byte	0x6
	.2byte	0x20b
	.4byte	0x937
	.byte	0x1d
	.uleb128 0x13
	.4byte	.LASF184
	.byte	0x6
	.2byte	0x20c
	.4byte	0xab1
	.byte	0x20
	.uleb128 0x13
	.4byte	.LASF185
	.byte	0x6
	.2byte	0x20d
	.4byte	0xabc
	.byte	0x24
	.uleb128 0x13
	.4byte	.LASF186
	.byte	0x6
	.2byte	0x20e
	.4byte	0xac7
	.byte	0x28
	.uleb128 0x13
	.4byte	.LASF187
	.byte	0x6
	.2byte	0x20f
	.4byte	0xad2
	.byte	0x2c
	.uleb128 0x13
	.4byte	.LASF188
	.byte	0x6
	.2byte	0x210
	.4byte	0xad8
	.byte	0x30
	.uleb128 0x13
	.4byte	.LASF189
	.byte	0x6
	.2byte	0x211
	.4byte	0xad8
	.byte	0x53
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xaac
	.uleb128 0x1b
	.4byte	0xa2
	.uleb128 0xb
	.byte	0x4
	.4byte	0xab7
	.uleb128 0x1b
	.4byte	0xad
	.uleb128 0xb
	.byte	0x4
	.4byte	0xac2
	.uleb128 0x1b
	.4byte	0x97
	.uleb128 0xb
	.byte	0x4
	.4byte	0xacd
	.uleb128 0x1b
	.4byte	0x942
	.uleb128 0xb
	.byte	0x4
	.4byte	0x964
	.uleb128 0x8
	.4byte	0x156
	.4byte	0xae8
	.uleb128 0xa
	.4byte	0x11e
	.byte	0x22
	.byte	0
	.uleb128 0x14
	.4byte	.LASF190
	.byte	0x6
	.2byte	0x212
	.4byte	0x98b
	.uleb128 0x1c
	.4byte	.LASF191
	.byte	0x3
	.2byte	0x2cc
	.4byte	0xb07
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x1b
	.4byte	0x130
	.uleb128 0x1c
	.4byte	.LASF192
	.byte	0x3
	.2byte	0x2cd
	.4byte	0xb1f
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x130
	.uleb128 0x1d
	.4byte	.LASF193
	.byte	0x7
	.byte	0x76
	.4byte	0xb35
	.uleb128 0x5
	.byte	0x3
	.4byte	p_bta_av_cfg
	.uleb128 0xb
	.byte	0x4
	.4byte	0xae8
	.uleb128 0x1d
	.4byte	.LASF194
	.byte	0x7
	.byte	0xcd
	.4byte	0x2e9
	.uleb128 0x5
	.byte	0x3
	.4byte	p_bta_av_rc_id
	.uleb128 0x1d
	.4byte	.LASF195
	.byte	0x7
	.byte	0xca
	.4byte	0x2e9
	.uleb128 0x5
	.byte	0x3
	.4byte	p_bta_av_rc_id_ac
	.uleb128 0x1d
	.4byte	.LASF196
	.byte	0x7
	.byte	0x26
	.4byte	0xb6e
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_av_meta_caps_co_ids
	.uleb128 0x1b
	.4byte	0x29b
	.uleb128 0x8
	.4byte	0xa2
	.4byte	0xb83
	.uleb128 0xa
	.4byte	0x11e
	.byte	0x4
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF197
	.byte	0x7
	.byte	0x36
	.4byte	0xb94
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_av_audio_flush_to
	.uleb128 0x1b
	.4byte	0xb73
	.uleb128 0x1d
	.4byte	.LASF198
	.byte	0x7
	.byte	0x49
	.4byte	0xbaa
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_av_meta_caps_evt_ids
	.uleb128 0x1b
	.4byte	0x146
	.uleb128 0x1d
	.4byte	.LASF199
	.byte	0x7
	.byte	0x5a
	.4byte	0xbc0
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_av_cfg
	.uleb128 0x1b
	.4byte	0xae8
	.uleb128 0x8
	.4byte	0xa2
	.4byte	0xbd5
	.uleb128 0xa
	.4byte	0x11e
	.byte	0x7
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF200
	.byte	0x7
	.byte	0x78
	.4byte	0xbe6
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_av_rc_id
	.uleb128 0x1b
	.4byte	0xbc5
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x17
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
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.section	.debug_aranges,"",@progbits
	.4byte	0x14
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF28:
	.string	"BTM_EIR_UUID_SERVCLASS_SERIAL_PORT"
.LASF130:
	.string	"tAVDT_OPEN"
.LASF139:
	.string	"getcap_cfm"
.LASF166:
	.string	"tBTA_AV_CODE"
.LASF58:
	.string	"BTM_EIR_UUID_SERVCLASS_CABLE_REPLACEMENT"
.LASF173:
	.string	"avrc_tg_cat"
.LASF178:
	.string	"video_mtu"
.LASF68:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SINK"
.LASF5:
	.string	"__uint8_t"
.LASF84:
	.string	"rtp_time"
.LASF90:
	.string	"seq_num_rcvd"
.LASF200:
	.string	"bta_av_rc_id"
.LASF111:
	.string	"mux_tsid_media"
.LASF199:
	.string	"bta_av_cfg"
.LASF63:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PSE"
.LASF87:
	.string	"tAVDT_SENDER_INFO"
.LASF91:
	.string	"jitter"
.LASF21:
	.string	"data"
.LASF124:
	.string	"p_cfg"
.LASF158:
	.string	"tAVDT_REPORT_CBACK"
.LASF66:
	.string	"BTM_EIR_UUID_SERVCLASS_PNP_INFORMATION"
.LASF198:
	.string	"bta_av_meta_caps_evt_ids"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF170:
	.string	"avrc_mtu"
.LASF40:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REMOTE_CONTROL"
.LASF9:
	.string	"long long unsigned int"
.LASF150:
	.string	"connect_ind"
.LASF61:
	.string	"BTM_EIR_UUID_SERVCLASS_SAP"
.LASF113:
	.string	"mux_tsid_report"
.LASF95:
	.string	"tAVDT_REPORT_DATA"
.LASF56:
	.string	"BTM_EIR_UUID_SERVCLASS_PRINTING_STATUS"
.LASF29:
	.string	"BTM_EIR_UUID_SERVCLASS_LAN_ACCESS_USING_PPP"
.LASF25:
	.string	"long int"
.LASF82:
	.string	"ntp_sec"
.LASF85:
	.string	"pkt_count"
.LASF132:
	.string	"tAVDT_SECURITY"
.LASF98:
	.string	"media_type"
.LASF39:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REM_CTRL_TARGET"
.LASF11:
	.string	"uint16_t"
.LASF141:
	.string	"open_ind"
.LASF115:
	.string	"mux_tsid_recov"
.LASF75:
	.string	"BTM_PM_STS_HOLD"
.LASF183:
	.string	"rc_pass_rsp"
.LASF144:
	.string	"suspend_cfm"
.LASF119:
	.string	"err_param"
.LASF117:
	.string	"tAVDT_CFG"
.LASF55:
	.string	"BTM_EIR_UUID_SERVCLASS_BASIC_PRINTING"
.LASF89:
	.string	"packet_lost"
.LASF187:
	.string	"p_reg"
.LASF14:
	.string	"UINT16"
.LASF186:
	.string	"p_act_tbl"
.LASF177:
	.string	"audio_mqs"
.LASF78:
	.string	"BTM_PM_STS_SSR"
.LASF54:
	.string	"BTM_EIR_UUID_SERVCLASS_DIR_PRT_REF_OBJ_SERVICE"
.LASF140:
	.string	"open_cfm"
.LASF169:
	.string	"company_id"
.LASF92:
	.string	"dlsr"
.LASF195:
	.string	"p_bta_av_rc_id_ac"
.LASF73:
	.string	"BTM_EIR_MAX_SERVICES"
.LASF192:
	.string	"bd_addr_null"
.LASF154:
	.string	"tAVDT_CTRL"
.LASF120:
	.string	"label"
.LASF0:
	.string	"unsigned int"
.LASF33:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_FILE_TRANSFER"
.LASF30:
	.string	"BTM_EIR_UUID_SERVCLASS_DIALUP_NETWORKING"
.LASF135:
	.string	"tAVDT_DISCOVER"
.LASF23:
	.string	"BT_HDR"
.LASF26:
	.string	"long unsigned int"
.LASF160:
	.string	"p_data_cback"
.LASF167:
	.string	"tBTA_AV_ACT"
.LASF156:
	.string	"tAVDT_DATA_CBACK"
.LASF190:
	.string	"tBTA_AV_CFG"
.LASF74:
	.string	"BTM_PM_STS_ACTIVE"
.LASF64:
	.string	"BTM_EIR_UUID_SERVCLASS_PHONE_ACCESS"
.LASF134:
	.string	"num_seps"
.LASF105:
	.string	"psc_mask"
.LASF18:
	.string	"event"
.LASF1:
	.string	"short unsigned int"
.LASF46:
	.string	"BTM_EIR_UUID_SERVCLASS_GN"
.LASF53:
	.string	"BTM_EIR_UUID_SERVCLASS_AG_HANDSFREE"
.LASF137:
	.string	"tAVDT_DELAY_RPT"
.LASF114:
	.string	"mux_tcid_report"
.LASF70:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_NOTIFICATION"
.LASF103:
	.string	"num_codec"
.LASF161:
	.string	"p_media_cback"
.LASF159:
	.string	"p_ctrl_cback"
.LASF153:
	.string	"delay_rpt_cmd"
.LASF107:
	.string	"recov_mrws"
.LASF181:
	.string	"num_co_ids"
.LASF148:
	.string	"security_cfm"
.LASF106:
	.string	"recov_type"
.LASF162:
	.string	"p_report_cback"
.LASF80:
	.string	"BTM_PM_STS_ERROR"
.LASF133:
	.string	"p_sep_info"
.LASF121:
	.string	"sig_id"
.LASF126:
	.string	"int_seid"
.LASF72:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SINK"
.LASF93:
	.string	"tAVDT_REPORT_BLK"
.LASF22:
	.string	"sizetype"
.LASF165:
	.string	"tAVDT_CS"
.LASF45:
	.string	"BTM_EIR_UUID_SERVCLASS_NAP"
.LASF147:
	.string	"reconfig_ind"
.LASF118:
	.string	"err_code"
.LASF100:
	.string	"tAVDT_SEP_INFO"
.LASF15:
	.string	"UINT32"
.LASF168:
	.string	"tBTA_AV_REG"
.LASF171:
	.string	"avrc_br_mtu"
.LASF101:
	.string	"codec_info"
.LASF188:
	.string	"avrc_controller_name"
.LASF69:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_ACCESS"
.LASF146:
	.string	"reconfig_cfm"
.LASF94:
	.string	"cname"
.LASF122:
	.string	"ccb_idx"
.LASF51:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_REF_OBJECTS"
.LASF35:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET"
.LASF36:
	.string	"BTM_EIR_UUID_SERVCLASS_CORDLESS_TELEPHONY"
.LASF125:
	.string	"tAVDT_CONFIG"
.LASF49:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_RESPONDER"
.LASF184:
	.string	"p_meta_co_ids"
.LASF151:
	.string	"disconnect_ind"
.LASF83:
	.string	"ntp_frac"
.LASF48:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING"
.LASF47:
	.string	"BTM_EIR_UUID_SERVCLASS_DIRECT_PRINTING"
.LASF50:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_AUTO_ARCHIVE"
.LASF172:
	.string	"avrc_ct_cat"
.LASF196:
	.string	"bta_av_meta_caps_co_ids"
.LASF185:
	.string	"p_meta_evt_ids"
.LASF17:
	.string	"_Bool"
.LASF152:
	.string	"report_conn"
.LASF3:
	.string	"unsigned char"
.LASF182:
	.string	"num_evt_ids"
.LASF194:
	.string	"p_bta_av_rc_id"
.LASF180:
	.string	"avrc_group"
.LASF136:
	.string	"delay"
.LASF201:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF31:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC"
.LASF102:
	.string	"protect_info"
.LASF4:
	.string	"short int"
.LASF86:
	.string	"octet_count"
.LASF175:
	.string	"audio_mtu"
.LASF16:
	.string	"BOOLEAN"
.LASF76:
	.string	"BTM_PM_STS_SNIFF"
.LASF110:
	.string	"mux_mask"
.LASF112:
	.string	"mux_tcid_media"
.LASF77:
	.string	"BTM_PM_STS_PARK"
.LASF129:
	.string	"lcid"
.LASF37:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SOURCE"
.LASF99:
	.string	"tsep"
.LASF142:
	.string	"config_ind"
.LASF32:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_OBJECT_PUSH"
.LASF12:
	.string	"uint32_t"
.LASF179:
	.string	"video_flush_to"
.LASF24:
	.string	"char"
.LASF60:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_SCAN"
.LASF138:
	.string	"discover_cfm"
.LASF6:
	.string	"__uint16_t"
.LASF43:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_AUDIO_GATEWAY"
.LASF7:
	.string	"__uint32_t"
.LASF59:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_PRINT"
.LASF19:
	.string	"offset"
.LASF163:
	.string	"flush_to"
.LASF127:
	.string	"tAVDT_SETCONFIG"
.LASF20:
	.string	"layer_specific"
.LASF193:
	.string	"p_bta_av_cfg"
.LASF145:
	.string	"close_cfm"
.LASF34:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC_COMMAND"
.LASF116:
	.string	"mux_tcid_recov"
.LASF71:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SOURCE"
.LASF108:
	.string	"recov_mnmp"
.LASF123:
	.string	"tAVDT_EVT_HDR"
.LASF44:
	.string	"BTM_EIR_UUID_SERVCLASS_PANU"
.LASF97:
	.string	"seid"
.LASF109:
	.string	"hdrcmp_mask"
.LASF41:
	.string	"BTM_EIR_UUID_SERVCLASS_INTERCOM"
.LASF128:
	.string	"peer_mtu"
.LASF13:
	.string	"UINT8"
.LASF65:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_HS"
.LASF96:
	.string	"in_use"
.LASF10:
	.string	"uint8_t"
.LASF191:
	.string	"bd_addr_any"
.LASF104:
	.string	"num_protect"
.LASF79:
	.string	"BTM_PM_STS_PENDING"
.LASF143:
	.string	"start_cfm"
.LASF176:
	.string	"p_audio_flush_to"
.LASF38:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SINK"
.LASF52:
	.string	"BTM_EIR_UUID_SERVCLASS_HF_HANDSFREE"
.LASF27:
	.string	"BTM_EIR_UUID_SERVCLASS_SERVICE_DISCOVERY_SERVER"
.LASF203:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF189:
	.string	"avrc_target_name"
.LASF202:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/bta/av/bta_av_cfg.c"
.LASF131:
	.string	"p_data"
.LASF81:
	.string	"AVDT_REPORT_TYPE"
.LASF88:
	.string	"frag_lost"
.LASF57:
	.string	"BTM_EIR_UUID_SERVCLASS_HUMAN_INTERFACE"
.LASF155:
	.string	"tAVDT_CTRL_CBACK"
.LASF174:
	.string	"sig_mtu"
.LASF42:
	.string	"BTM_EIR_UUID_SERVCLASS_FAX"
.LASF149:
	.string	"security_ind"
.LASF62:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PCE"
.LASF164:
	.string	"nsc_mask"
.LASF157:
	.string	"tAVDT_MEDIA_CBACK"
.LASF67:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SOURCE"
.LASF197:
	.string	"bta_av_audio_flush_to"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
