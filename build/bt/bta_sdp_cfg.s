	.file	"bta_sdp_cfg.c"
	.text
.Ltext0:
	.global	p_bta_sdp_cfg
	.section	.data.p_bta_sdp_cfg,"aw",@progbits
	.align	4
	.type	p_bta_sdp_cfg, @object
	.size	p_bta_sdp_cfg, 4
p_bta_sdp_cfg:
	.word	bta_sdp_cfg
	.global	bta_sdp_cfg
	.section	.rodata.bta_sdp_cfg,"a",@progbits
	.align	4
	.type	bta_sdp_cfg, @object
	.size	bta_sdp_cfg, 8
bta_sdp_cfg:
	.short	1500
	.zero	2
	.word	bta_sdp_db_data
	.section	.bss.bta_sdp_db_data,"aw",@nobits
	.align	4
	.type	bta_sdp_db_data, @object
	.size	bta_sdp_db_data, 1500
bta_sdp_db_data:
	.zero	1500
	.text
.Letext0:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/sdp_api.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/bta/include/bta/bta_sdp_api.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/bta/sdp/bta_sdp_cfg.c"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x545
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF115
	.byte	0xc
	.4byte	.LASF116
	.4byte	.LASF117
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x1
	.byte	0x12
	.4byte	0x2f
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
	.byte	0x1
	.byte	0x16
	.4byte	0x48
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x1
	.byte	0x1a
	.4byte	0x61
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0x15
	.4byte	0x24
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x2
	.byte	0x21
	.4byte	0x3d
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x2
	.byte	0x2d
	.4byte	0x56
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x21
	.4byte	0x76
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x22
	.4byte	0x81
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x23
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF16
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x3
	.2byte	0x132
	.4byte	0xd2
	.uleb128 0x6
	.4byte	0x97
	.4byte	0xe2
	.uleb128 0x7
	.4byte	0xbf
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x97
	.uleb128 0x6
	.4byte	0x97
	.4byte	0xf8
	.uleb128 0x7
	.4byte	0xbf
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.byte	0x10
	.byte	0x3
	.2byte	0x1ab
	.4byte	0x126
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x3
	.2byte	0x1ac
	.4byte	0xa2
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x3
	.2byte	0x1ad
	.4byte	0xad
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x3
	.2byte	0x1ae
	.4byte	0xe8
	.byte	0
	.uleb128 0xb
	.byte	0x14
	.byte	0x3
	.2byte	0x1a4
	.4byte	0x149
	.uleb128 0xc
	.string	"len"
	.byte	0x3
	.2byte	0x1a9
	.4byte	0xa2
	.byte	0
	.uleb128 0xc
	.string	"uu"
	.byte	0x3
	.2byte	0x1af
	.4byte	0xf8
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF22
	.byte	0x3
	.2byte	0x1b1
	.4byte	0x126
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF23
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF24
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF25
	.uleb128 0xd
	.byte	0x4
	.byte	0x4
	.byte	0x5f
	.4byte	0x1a9
	.uleb128 0xe
	.string	"u8"
	.byte	0x4
	.byte	0x60
	.4byte	0x97
	.uleb128 0xe
	.string	"u16"
	.byte	0x4
	.byte	0x61
	.4byte	0xa2
	.uleb128 0xe
	.string	"u32"
	.byte	0x4
	.byte	0x62
	.4byte	0xad
	.uleb128 0xf
	.4byte	.LASF26
	.byte	0x4
	.byte	0x63
	.4byte	0x1a9
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x4
	.byte	0x64
	.4byte	0x1f6
	.byte	0
	.uleb128 0x6
	.4byte	0x97
	.4byte	0x1b9
	.uleb128 0x7
	.4byte	0xbf
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.4byte	.LASF34
	.byte	0xc
	.byte	0x4
	.byte	0x69
	.4byte	0x1f6
	.uleb128 0x11
	.4byte	.LASF28
	.byte	0x4
	.byte	0x6a
	.4byte	0x1f6
	.byte	0
	.uleb128 0x11
	.4byte	.LASF29
	.byte	0x4
	.byte	0x6b
	.4byte	0xa2
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF30
	.byte	0x4
	.byte	0x6c
	.4byte	0xa2
	.byte	0x6
	.uleb128 0x11
	.4byte	.LASF31
	.byte	0x4
	.byte	0x6d
	.4byte	0x20f
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1b9
	.uleb128 0x12
	.byte	0x4
	.byte	0x4
	.byte	0x5e
	.4byte	0x20f
	.uleb128 0x13
	.string	"v"
	.byte	0x4
	.byte	0x65
	.4byte	0x16a
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x4
	.byte	0x67
	.4byte	0x1fc
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x4
	.byte	0x6e
	.4byte	0x1b9
	.uleb128 0x10
	.4byte	.LASF35
	.byte	0x14
	.byte	0x4
	.byte	0x70
	.4byte	0x262
	.uleb128 0x11
	.4byte	.LASF36
	.byte	0x4
	.byte	0x71
	.4byte	0x262
	.byte	0
	.uleb128 0x11
	.4byte	.LASF37
	.byte	0x4
	.byte	0x72
	.4byte	0x268
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF38
	.byte	0x4
	.byte	0x73
	.4byte	0xad
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF39
	.byte	0x4
	.byte	0x74
	.4byte	0xc6
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x21a
	.uleb128 0x8
	.byte	0x4
	.4byte	0x225
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x4
	.byte	0x75
	.4byte	0x225
	.uleb128 0x12
	.byte	0x7c
	.byte	0x4
	.byte	0x77
	.4byte	0x306
	.uleb128 0x11
	.4byte	.LASF41
	.byte	0x4
	.byte	0x78
	.4byte	0xad
	.byte	0
	.uleb128 0x11
	.4byte	.LASF42
	.byte	0x4
	.byte	0x79
	.4byte	0xad
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF43
	.byte	0x4
	.byte	0x7a
	.4byte	0x306
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF44
	.byte	0x4
	.byte	0x7b
	.4byte	0xa2
	.byte	0xc
	.uleb128 0x11
	.4byte	.LASF45
	.byte	0x4
	.byte	0x7c
	.4byte	0x30c
	.byte	0x10
	.uleb128 0x11
	.4byte	.LASF46
	.byte	0x4
	.byte	0x7d
	.4byte	0xa2
	.byte	0x4c
	.uleb128 0x11
	.4byte	.LASF47
	.byte	0x4
	.byte	0x7e
	.4byte	0x31c
	.byte	0x4e
	.uleb128 0x11
	.4byte	.LASF48
	.byte	0x4
	.byte	0x7f
	.4byte	0xe2
	.byte	0x6c
	.uleb128 0x11
	.4byte	.LASF49
	.byte	0x4
	.byte	0x81
	.4byte	0xe2
	.byte	0x70
	.uleb128 0x11
	.4byte	.LASF50
	.byte	0x4
	.byte	0x82
	.4byte	0xad
	.byte	0x74
	.uleb128 0x11
	.4byte	.LASF51
	.byte	0x4
	.byte	0x83
	.4byte	0xad
	.byte	0x78
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x26e
	.uleb128 0x6
	.4byte	0x149
	.4byte	0x31c
	.uleb128 0x7
	.4byte	0xbf
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	0xa2
	.4byte	0x32c
	.uleb128 0x7
	.4byte	0xbf
	.byte	0xe
	.byte	0
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0x4
	.byte	0x85
	.4byte	0x279
	.uleb128 0x14
	.byte	0x4
	.4byte	0x61
	.byte	0x5
	.2byte	0x1c0
	.4byte	0x45f
	.uleb128 0x15
	.4byte	.LASF53
	.byte	0
	.uleb128 0x15
	.4byte	.LASF54
	.byte	0x1
	.uleb128 0x15
	.4byte	.LASF55
	.byte	0x2
	.uleb128 0x15
	.4byte	.LASF56
	.byte	0x3
	.uleb128 0x15
	.4byte	.LASF57
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x7
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x9
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0xa
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0xb
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0xd
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0xe
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0xf
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x11
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x12
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x13
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x15
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x16
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x17
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x19
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x1a
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x1b
	.uleb128 0x15
	.4byte	.LASF81
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF82
	.byte	0x1d
	.uleb128 0x15
	.4byte	.LASF83
	.byte	0x1e
	.uleb128 0x15
	.4byte	.LASF84
	.byte	0x1f
	.uleb128 0x15
	.4byte	.LASF85
	.byte	0x20
	.uleb128 0x15
	.4byte	.LASF86
	.byte	0x21
	.uleb128 0x15
	.4byte	.LASF87
	.byte	0x22
	.uleb128 0x15
	.4byte	.LASF88
	.byte	0x23
	.uleb128 0x15
	.4byte	.LASF89
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF90
	.byte	0x25
	.uleb128 0x15
	.4byte	.LASF91
	.byte	0x26
	.uleb128 0x15
	.4byte	.LASF92
	.byte	0x27
	.uleb128 0x15
	.4byte	.LASF93
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF94
	.byte	0x29
	.uleb128 0x15
	.4byte	.LASF95
	.byte	0x2a
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x2b
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0x2c
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0x2d
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0x2e
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.4byte	0x61
	.byte	0x5
	.2byte	0x6ea
	.4byte	0x497
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0x1
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x2
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x3
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF106
	.byte	0x6
	.byte	0
	.uleb128 0x12
	.byte	0x8
	.byte	0x6
	.byte	0x48
	.4byte	0x4b8
	.uleb128 0x11
	.4byte	.LASF107
	.byte	0x6
	.byte	0x49
	.4byte	0xa2
	.byte	0
	.uleb128 0x11
	.4byte	.LASF108
	.byte	0x6
	.byte	0x4b
	.4byte	0x4b8
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x32c
	.uleb128 0x3
	.4byte	.LASF109
	.byte	0x6
	.byte	0x4d
	.4byte	0x497
	.uleb128 0x16
	.4byte	.LASF110
	.byte	0x3
	.2byte	0x2cc
	.4byte	0x4dc
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x17
	.4byte	0xd2
	.uleb128 0x16
	.4byte	.LASF111
	.byte	0x3
	.2byte	0x2cd
	.4byte	0x4f4
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	0xd2
	.uleb128 0x6
	.4byte	0x97
	.4byte	0x50a
	.uleb128 0x18
	.4byte	0xbf
	.2byte	0x5db
	.byte	0
	.uleb128 0x19
	.4byte	.LASF112
	.byte	0x7
	.byte	0x21
	.4byte	0x4f9
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_sdp_db_data
	.uleb128 0x1a
	.4byte	.LASF113
	.byte	0x7
	.byte	0x24
	.4byte	0x52c
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_sdp_cfg
	.uleb128 0x17
	.4byte	0x4be
	.uleb128 0x1a
	.4byte	.LASF114
	.byte	0x7
	.byte	0x29
	.4byte	0x542
	.uleb128 0x5
	.byte	0x3
	.4byte	p_bta_sdp_cfg
	.uleb128 0x8
	.byte	0x4
	.4byte	0x4be
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xb
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
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
	.uleb128 0x17
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
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
.LASF111:
	.string	"bd_addr_null"
.LASF103:
	.string	"BTM_PM_STS_PARK"
.LASF48:
	.string	"p_free_mem"
.LASF70:
	.string	"BTM_EIR_UUID_SERVCLASS_PANU"
.LASF92:
	.string	"BTM_EIR_UUID_SERVCLASS_PNP_INFORMATION"
.LASF85:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_PRINT"
.LASF86:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_SCAN"
.LASF2:
	.string	"short int"
.LASF50:
	.string	"raw_size"
.LASF44:
	.string	"num_uuid_filters"
.LASF108:
	.string	"p_sdp_db"
.LASF42:
	.string	"mem_free"
.LASF102:
	.string	"BTM_PM_STS_SNIFF"
.LASF40:
	.string	"tSDP_DISC_REC"
.LASF45:
	.string	"uuid_filters"
.LASF15:
	.string	"UINT32"
.LASF8:
	.string	"long long int"
.LASF6:
	.string	"__uint32_t"
.LASF65:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REM_CTRL_TARGET"
.LASF90:
	.string	"BTM_EIR_UUID_SERVCLASS_PHONE_ACCESS"
.LASF4:
	.string	"__uint16_t"
.LASF113:
	.string	"bta_sdp_cfg"
.LASF59:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_FILE_TRANSFER"
.LASF36:
	.string	"p_first_attr"
.LASF10:
	.string	"uint8_t"
.LASF74:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING"
.LASF43:
	.string	"p_first_rec"
.LASF63:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SOURCE"
.LASF38:
	.string	"time_read"
.LASF0:
	.string	"signed char"
.LASF34:
	.string	"t_sdp_disc_attr"
.LASF114:
	.string	"p_bta_sdp_cfg"
.LASF98:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SINK"
.LASF39:
	.string	"remote_bd_addr"
.LASF52:
	.string	"tSDP_DISCOVERY_DB"
.LASF116:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/bta/sdp/bta_sdp_cfg.c"
.LASF24:
	.string	"long int"
.LASF37:
	.string	"p_next_rec"
.LASF91:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_HS"
.LASF13:
	.string	"UINT8"
.LASF93:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SOURCE"
.LASF3:
	.string	"__uint8_t"
.LASF28:
	.string	"p_next_attr"
.LASF33:
	.string	"tSDP_DISC_ATTR"
.LASF58:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_OBJECT_PUSH"
.LASF83:
	.string	"BTM_EIR_UUID_SERVCLASS_HUMAN_INTERFACE"
.LASF79:
	.string	"BTM_EIR_UUID_SERVCLASS_AG_HANDSFREE"
.LASF60:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC_COMMAND"
.LASF69:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_AUDIO_GATEWAY"
.LASF104:
	.string	"BTM_PM_STS_SSR"
.LASF99:
	.string	"BTM_EIR_MAX_SERVICES"
.LASF88:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PCE"
.LASF1:
	.string	"unsigned char"
.LASF117:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF29:
	.string	"attr_id"
.LASF20:
	.string	"uuid32"
.LASF77:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_REF_OBJECTS"
.LASF67:
	.string	"BTM_EIR_UUID_SERVCLASS_INTERCOM"
.LASF49:
	.string	"raw_data"
.LASF46:
	.string	"num_attr_filters"
.LASF9:
	.string	"long long unsigned int"
.LASF12:
	.string	"uint32_t"
.LASF7:
	.string	"unsigned int"
.LASF109:
	.string	"tBTA_SDP_CFG"
.LASF11:
	.string	"uint16_t"
.LASF94:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SINK"
.LASF41:
	.string	"mem_size"
.LASF31:
	.string	"attr_value"
.LASF97:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SOURCE"
.LASF82:
	.string	"BTM_EIR_UUID_SERVCLASS_PRINTING_STATUS"
.LASF87:
	.string	"BTM_EIR_UUID_SERVCLASS_SAP"
.LASF5:
	.string	"short unsigned int"
.LASF17:
	.string	"sizetype"
.LASF57:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC"
.LASF14:
	.string	"UINT16"
.LASF23:
	.string	"char"
.LASF81:
	.string	"BTM_EIR_UUID_SERVCLASS_BASIC_PRINTING"
.LASF106:
	.string	"BTM_PM_STS_ERROR"
.LASF56:
	.string	"BTM_EIR_UUID_SERVCLASS_DIALUP_NETWORKING"
.LASF96:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_NOTIFICATION"
.LASF16:
	.string	"_Bool"
.LASF66:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REMOTE_CONTROL"
.LASF101:
	.string	"BTM_PM_STS_HOLD"
.LASF68:
	.string	"BTM_EIR_UUID_SERVCLASS_FAX"
.LASF100:
	.string	"BTM_PM_STS_ACTIVE"
.LASF22:
	.string	"tBT_UUID"
.LASF25:
	.string	"long unsigned int"
.LASF71:
	.string	"BTM_EIR_UUID_SERVCLASS_NAP"
.LASF35:
	.string	"t_sdp_disc_rec"
.LASF78:
	.string	"BTM_EIR_UUID_SERVCLASS_HF_HANDSFREE"
.LASF26:
	.string	"array"
.LASF32:
	.string	"tSDP_DISC_ATVAL"
.LASF62:
	.string	"BTM_EIR_UUID_SERVCLASS_CORDLESS_TELEPHONY"
.LASF84:
	.string	"BTM_EIR_UUID_SERVCLASS_CABLE_REPLACEMENT"
.LASF21:
	.string	"uuid128"
.LASF30:
	.string	"attr_len_type"
.LASF76:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_AUTO_ARCHIVE"
.LASF51:
	.string	"raw_used"
.LASF53:
	.string	"BTM_EIR_UUID_SERVCLASS_SERVICE_DISCOVERY_SERVER"
.LASF55:
	.string	"BTM_EIR_UUID_SERVCLASS_LAN_ACCESS_USING_PPP"
.LASF73:
	.string	"BTM_EIR_UUID_SERVCLASS_DIRECT_PRINTING"
.LASF64:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SINK"
.LASF107:
	.string	"sdp_db_size"
.LASF95:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_ACCESS"
.LASF18:
	.string	"BD_ADDR"
.LASF27:
	.string	"p_sub_attr"
.LASF80:
	.string	"BTM_EIR_UUID_SERVCLASS_DIR_PRT_REF_OBJ_SERVICE"
.LASF54:
	.string	"BTM_EIR_UUID_SERVCLASS_SERIAL_PORT"
.LASF105:
	.string	"BTM_PM_STS_PENDING"
.LASF72:
	.string	"BTM_EIR_UUID_SERVCLASS_GN"
.LASF75:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_RESPONDER"
.LASF89:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PSE"
.LASF115:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF110:
	.string	"bd_addr_any"
.LASF112:
	.string	"bta_sdp_db_data"
.LASF61:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET"
.LASF19:
	.string	"uuid16"
.LASF47:
	.string	"attr_filters"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
