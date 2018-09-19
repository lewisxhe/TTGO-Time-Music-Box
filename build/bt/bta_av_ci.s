	.file	"bta_av_ci.c"
	.text
.Ltext0:
	.section	.text.bta_av_ci_src_data_ready,"ax",@progbits
	.literal_position
	.literal .LC0, 4655
	.align	4
	.global	bta_av_ci_src_data_ready
	.type	bta_av_ci_src_data_ready, @function
bta_av_ci_src_data_ready:
.LFB26:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/bta/av/bta_av_ci.c"
	.loc 1 49 0
.LVL0:
	entry	sp, 32
.LCFI0:
	extui	a2, a2, 0, 8
	.loc 1 52 0
	movi.n	a10, 8
	call8	malloc
.LVL1:
	beqz.n	a10, .L1
	.loc 1 53 0
	s16i	a2, a10, 6
	.loc 1 54 0
	l32r	a2, .LC0
.LVL2:
	s16i	a2, a10, 0
	.loc 1 55 0
	call8	bta_sys_sendmsg
.LVL3:
.L1:
	retw.n
.LFE26:
	.size	bta_av_ci_src_data_ready, .-bta_av_ci_src_data_ready
	.section	.text.bta_av_ci_setconfig,"ax",@progbits
	.literal_position
	.literal .LC1, 4626
	.literal .LC2, 4627
	.align	4
	.global	bta_av_ci_setconfig
	.type	bta_av_ci_setconfig, @function
bta_av_ci_setconfig:
.LFB27:
	.loc 1 74 0
.LVL4:
	entry	sp, 48
.LCFI1:
	extui	a2, a2, 0, 8
	extui	a3, a3, 0, 8
	extui	a4, a4, 0, 8
	extui	a5, a5, 0, 8
	extui	a8, a7, 0, 8
	s32i.n	a8, sp, 0
	l8ui	a8, sp, 48
	s32i.n	a8, sp, 4
	.loc 1 77 0
	movi.n	a10, 0x14
	call8	malloc
.LVL5:
	mov.n	a7, a10
.LVL6:
	beqz.n	a10, .L3
	.loc 1 78 0
	s16i	a2, a10, 6
	.loc 1 79 0
	bnez.n	a3, .L8
	l32r	a2, .LC1
.LVL7:
	j	.L5
.L8:
	l32r	a2, .LC2
.L5:
	.loc 1 79 0 is_stmt 0 discriminator 4
	s16i	a2, a7, 0
	.loc 1 81 0 is_stmt 1 discriminator 4
	s8i	a3, a7, 9
	.loc 1 82 0 discriminator 4
	s8i	a4, a7, 10
	.loc 1 83 0 discriminator 4
	l32i.n	a2, sp, 0
	s8i	a2, a7, 16
	.loc 1 84 0 discriminator 4
	s8i	a5, a7, 11
	.loc 1 85 0 discriminator 4
	l32i.n	a2, sp, 4
	s8i	a2, a7, 17
	.loc 1 86 0 discriminator 4
	movi.n	a2, 1
	movi.n	a3, 0
.LVL8:
	mov.n	a4, a3
.LVL9:
	movnez	a4, a2, a6
	moveqz	a2, a3, a5
	bnone	a4, a2, .L6
	.loc 1 87 0
	addi	a10, a7, 20
	s32i.n	a10, a7, 12
	.loc 1 88 0
	mov.n	a12, a5
	mov.n	a11, a6
	call8	memcpy
.LVL10:
	j	.L7
.L6:
	.loc 1 90 0
	movi.n	a2, 0
	s32i.n	a2, a7, 12
	.loc 1 91 0
	s8i	a2, a7, 11
.L7:
	.loc 1 94 0
	mov.n	a10, a7
	call8	bta_sys_sendmsg
.LVL11:
.L3:
	retw.n
.LFE27:
	.size	bta_av_ci_setconfig, .-bta_av_ci_setconfig
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
	.uleb128 0x30
	.align	4
.LEFDE2:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/bta/include/bta/bta_av_api.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/bta/av/include/bta_av_int.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/bta/include/bta/bta_sys.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x4e0
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF99
	.byte	0xc
	.4byte	.LASF100
	.4byte	.LASF101
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
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
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
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
	.byte	0x3
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x21
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0x21
	.4byte	0x73
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x29
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x8
	.byte	0x4
	.byte	0xc6
	.4byte	0xeb
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x4
	.byte	0xc7
	.4byte	0x7e
	.byte	0
	.uleb128 0x7
	.string	"len"
	.byte	0x4
	.byte	0xc8
	.4byte	0x7e
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x4
	.byte	0xc9
	.4byte	0x7e
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x4
	.byte	0xca
	.4byte	0x7e
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x4
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
	.byte	0x4
	.byte	0xcc
	.4byte	0xa6
	.uleb128 0x8
	.4byte	0x89
	.4byte	0x11c
	.uleb128 0xa
	.4byte	0xfa
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x89
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF20
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF21
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF22
	.uleb128 0xb
	.byte	0x4
	.4byte	0x101
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x5
	.byte	0x4f
	.4byte	0x89
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x5
	.byte	0x53
	.4byte	0x89
	.uleb128 0xc
	.byte	0x4
	.4byte	0x5e
	.byte	0x6
	.byte	0x29
	.4byte	0x2f6
	.uleb128 0xd
	.4byte	.LASF25
	.2byte	0x1200
	.uleb128 0xd
	.4byte	.LASF26
	.2byte	0x1201
	.uleb128 0xd
	.4byte	.LASF27
	.2byte	0x1202
	.uleb128 0xd
	.4byte	.LASF28
	.2byte	0x1203
	.uleb128 0xd
	.4byte	.LASF29
	.2byte	0x1204
	.uleb128 0xd
	.4byte	.LASF30
	.2byte	0x1205
	.uleb128 0xd
	.4byte	.LASF31
	.2byte	0x1206
	.uleb128 0xd
	.4byte	.LASF32
	.2byte	0x1207
	.uleb128 0xd
	.4byte	.LASF33
	.2byte	0x1208
	.uleb128 0xd
	.4byte	.LASF34
	.2byte	0x1209
	.uleb128 0xd
	.4byte	.LASF35
	.2byte	0x120a
	.uleb128 0xd
	.4byte	.LASF36
	.2byte	0x120b
	.uleb128 0xd
	.4byte	.LASF37
	.2byte	0x120c
	.uleb128 0xd
	.4byte	.LASF38
	.2byte	0x120d
	.uleb128 0xd
	.4byte	.LASF39
	.2byte	0x120e
	.uleb128 0xd
	.4byte	.LASF40
	.2byte	0x120f
	.uleb128 0xd
	.4byte	.LASF41
	.2byte	0x1210
	.uleb128 0xd
	.4byte	.LASF42
	.2byte	0x1211
	.uleb128 0xd
	.4byte	.LASF43
	.2byte	0x1212
	.uleb128 0xd
	.4byte	.LASF44
	.2byte	0x1213
	.uleb128 0xd
	.4byte	.LASF45
	.2byte	0x1214
	.uleb128 0xd
	.4byte	.LASF46
	.2byte	0x1215
	.uleb128 0xd
	.4byte	.LASF47
	.2byte	0x1216
	.uleb128 0xd
	.4byte	.LASF48
	.2byte	0x1217
	.uleb128 0xd
	.4byte	.LASF49
	.2byte	0x1218
	.uleb128 0xd
	.4byte	.LASF50
	.2byte	0x1219
	.uleb128 0xd
	.4byte	.LASF51
	.2byte	0x121a
	.uleb128 0xd
	.4byte	.LASF52
	.2byte	0x121b
	.uleb128 0xd
	.4byte	.LASF53
	.2byte	0x121c
	.uleb128 0xd
	.4byte	.LASF54
	.2byte	0x121d
	.uleb128 0xd
	.4byte	.LASF55
	.2byte	0x121e
	.uleb128 0xd
	.4byte	.LASF56
	.2byte	0x121f
	.uleb128 0xd
	.4byte	.LASF57
	.2byte	0x1220
	.uleb128 0xd
	.4byte	.LASF58
	.2byte	0x1221
	.uleb128 0xd
	.4byte	.LASF59
	.2byte	0x1222
	.uleb128 0xd
	.4byte	.LASF60
	.2byte	0x1223
	.uleb128 0xd
	.4byte	.LASF61
	.2byte	0x1224
	.uleb128 0xd
	.4byte	.LASF62
	.2byte	0x1225
	.uleb128 0xd
	.4byte	.LASF63
	.2byte	0x1226
	.uleb128 0xd
	.4byte	.LASF64
	.2byte	0x1227
	.uleb128 0xd
	.4byte	.LASF65
	.2byte	0x1228
	.uleb128 0xd
	.4byte	.LASF66
	.2byte	0x1229
	.uleb128 0xd
	.4byte	.LASF67
	.2byte	0x122a
	.uleb128 0xd
	.4byte	.LASF68
	.2byte	0x122b
	.uleb128 0xd
	.4byte	.LASF69
	.2byte	0x122c
	.uleb128 0xd
	.4byte	.LASF70
	.2byte	0x122d
	.uleb128 0xd
	.4byte	.LASF71
	.2byte	0x122e
	.uleb128 0xd
	.4byte	.LASF72
	.2byte	0x122f
	.uleb128 0xd
	.4byte	.LASF73
	.2byte	0x1230
	.uleb128 0xd
	.4byte	.LASF74
	.2byte	0x1231
	.uleb128 0xd
	.4byte	.LASF75
	.2byte	0x1232
	.uleb128 0xd
	.4byte	.LASF76
	.2byte	0x1233
	.uleb128 0xd
	.4byte	.LASF77
	.2byte	0x1234
	.uleb128 0xd
	.4byte	.LASF78
	.2byte	0x1235
	.uleb128 0xd
	.4byte	.LASF79
	.2byte	0x1236
	.uleb128 0xd
	.4byte	.LASF80
	.2byte	0x1237
	.uleb128 0xd
	.4byte	.LASF81
	.2byte	0x1238
	.uleb128 0xd
	.4byte	.LASF82
	.2byte	0x1239
	.byte	0
	.uleb128 0xe
	.byte	0x14
	.byte	0x6
	.2byte	0x133
	.4byte	0x368
	.uleb128 0xf
	.string	"hdr"
	.byte	0x6
	.2byte	0x134
	.4byte	0x101
	.byte	0
	.uleb128 0x10
	.4byte	.LASF83
	.byte	0x6
	.2byte	0x135
	.4byte	0x148
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF84
	.byte	0x6
	.2byte	0x136
	.4byte	0x89
	.byte	0x9
	.uleb128 0x10
	.4byte	.LASF85
	.byte	0x6
	.2byte	0x137
	.4byte	0x89
	.byte	0xa
	.uleb128 0x10
	.4byte	.LASF86
	.byte	0x6
	.2byte	0x138
	.4byte	0x89
	.byte	0xb
	.uleb128 0x10
	.4byte	.LASF87
	.byte	0x6
	.2byte	0x139
	.4byte	0x11c
	.byte	0xc
	.uleb128 0x10
	.4byte	.LASF88
	.byte	0x6
	.2byte	0x13a
	.4byte	0x94
	.byte	0x10
	.uleb128 0x10
	.4byte	.LASF89
	.byte	0x6
	.2byte	0x13b
	.4byte	0x89
	.byte	0x11
	.byte	0
	.uleb128 0x11
	.4byte	.LASF90
	.byte	0x6
	.2byte	0x13c
	.4byte	0x2f6
	.uleb128 0x12
	.4byte	.LASF91
	.byte	0x1
	.byte	0x30
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3c4
	.uleb128 0x13
	.4byte	.LASF93
	.byte	0x1
	.byte	0x30
	.4byte	0x13d
	.4byte	.LLST0
	.uleb128 0x14
	.4byte	.LASF94
	.byte	0x1
	.byte	0x32
	.4byte	0x137
	.4byte	.LLST1
	.uleb128 0x15
	.4byte	.LVL1
	.4byte	0x4c4
	.4byte	0x3ba
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x17
	.4byte	.LVL3
	.4byte	0x4cf
	.byte	0
	.uleb128 0x12
	.4byte	.LASF92
	.byte	0x1
	.byte	0x48
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x48e
	.uleb128 0x13
	.4byte	.LASF83
	.byte	0x1
	.byte	0x48
	.4byte	0x148
	.4byte	.LLST2
	.uleb128 0x13
	.4byte	.LASF84
	.byte	0x1
	.byte	0x48
	.4byte	0x89
	.4byte	.LLST3
	.uleb128 0x13
	.4byte	.LASF85
	.byte	0x1
	.byte	0x48
	.4byte	0x89
	.4byte	.LLST4
	.uleb128 0x18
	.4byte	.LASF86
	.byte	0x1
	.byte	0x49
	.4byte	0x89
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x18
	.4byte	.LASF87
	.byte	0x1
	.byte	0x49
	.4byte	0x11c
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x13
	.4byte	.LASF88
	.byte	0x1
	.byte	0x49
	.4byte	0x94
	.4byte	.LLST5
	.uleb128 0x18
	.4byte	.LASF89
	.byte	0x1
	.byte	0x49
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.4byte	.LASF94
	.byte	0x1
	.byte	0x4b
	.4byte	0x48e
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x15
	.4byte	.LVL5
	.4byte	0x4c4
	.4byte	0x45d
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x15
	.4byte	.LVL10
	.4byte	0x4da
	.4byte	0x47d
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 20
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL11
	.4byte	0x4cf
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x368
	.uleb128 0x1b
	.4byte	.LASF95
	.byte	0x4
	.2byte	0x2cc
	.4byte	0x4a7
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x1c
	.4byte	0x10c
	.uleb128 0x1b
	.4byte	.LASF96
	.byte	0x4
	.2byte	0x2cd
	.4byte	0x4bf
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	0x10c
	.uleb128 0x1d
	.4byte	.LASF97
	.4byte	.LASF97
	.byte	0x7
	.byte	0x65
	.uleb128 0x1d
	.4byte	.LASF98
	.4byte	.LASF98
	.byte	0x8
	.byte	0xe0
	.uleb128 0x1e
	.4byte	.LASF102
	.4byte	.LASF102
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
	.uleb128 0xd
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
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
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL8
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL4
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL9
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL6
	.4byte	.LFE27
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
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
.LASF96:
	.string	"bd_addr_null"
.LASF83:
	.string	"hndl"
.LASF48:
	.string	"BTA_AV_STR_DISC_FAIL_EVT"
.LASF54:
	.string	"BTA_AV_STR_START_FAIL_EVT"
.LASF81:
	.string	"BTA_AV_API_START_EVT"
.LASF93:
	.string	"chnl"
.LASF19:
	.string	"BT_HDR"
.LASF2:
	.string	"short int"
.LASF60:
	.string	"BTA_AV_STR_SUSPEND_CFM_EVT"
.LASF97:
	.string	"malloc"
.LASF18:
	.string	"sizetype"
.LASF45:
	.string	"BTA_AV_SDP_DISC_OK_EVT"
.LASF38:
	.string	"BTA_AV_API_RECONFIG_EVT"
.LASF79:
	.string	"BTA_AV_API_SINK_ENABLE_EVT"
.LASF8:
	.string	"long long unsigned int"
.LASF27:
	.string	"BTA_AV_API_VENDOR_CMD_EVT"
.LASF46:
	.string	"BTA_AV_SDP_DISC_FAIL_EVT"
.LASF102:
	.string	"memcpy"
.LASF76:
	.string	"BTA_AV_AVRC_CLOSE_EVT"
.LASF14:
	.string	"event"
.LASF4:
	.string	"__uint16_t"
.LASF42:
	.string	"BTA_AV_SRC_DATA_READY_EVT"
.LASF41:
	.string	"BTA_AV_API_RC_OPEN_EVT"
.LASF73:
	.string	"BTA_AV_SIG_CHG_EVT"
.LASF69:
	.string	"BTA_AV_API_REGISTER_EVT"
.LASF72:
	.string	"BTA_AV_CI_SRC_DATA_READY_EVT"
.LASF29:
	.string	"BTA_AV_API_META_RSP_EVT"
.LASF44:
	.string	"BTA_AV_CI_SETCONFIG_FAIL_EVT"
.LASF68:
	.string	"BTA_AV_API_ENABLE_EVT"
.LASF94:
	.string	"p_buf"
.LASF23:
	.string	"tBTA_AV_CHNL"
.LASF35:
	.string	"BTA_AV_API_CLOSE_EVT"
.LASF80:
	.string	"BTA_AV_AVDT_RPT_CONN_EVT"
.LASF91:
	.string	"bta_av_ci_src_data_ready"
.LASF36:
	.string	"BTA_AV_AP_START_EVT"
.LASF49:
	.string	"BTA_AV_STR_GETCAP_OK_EVT"
.LASF77:
	.string	"BTA_AV_CONN_CHG_EVT"
.LASF53:
	.string	"BTA_AV_STR_START_OK_EVT"
.LASF39:
	.string	"BTA_AV_API_PROTECT_REQ_EVT"
.LASF12:
	.string	"BOOLEAN"
.LASF21:
	.string	"long int"
.LASF15:
	.string	"offset"
.LASF11:
	.string	"UINT8"
.LASF3:
	.string	"__uint8_t"
.LASF87:
	.string	"p_seid"
.LASF40:
	.string	"BTA_AV_API_PROTECT_RSP_EVT"
.LASF63:
	.string	"BTA_AV_AVDT_CONNECT_EVT"
.LASF24:
	.string	"tBTA_AV_HNDL"
.LASF56:
	.string	"BTA_AV_STR_CONFIG_IND_EVT"
.LASF86:
	.string	"num_seid"
.LASF37:
	.string	"BTA_AV_AP_STOP_EVT"
.LASF52:
	.string	"BTA_AV_STR_OPEN_FAIL_EVT"
.LASF89:
	.string	"avdt_handle"
.LASF1:
	.string	"unsigned char"
.LASF101:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF0:
	.string	"signed char"
.LASF64:
	.string	"BTA_AV_AVDT_DISCONNECT_EVT"
.LASF74:
	.string	"BTA_AV_SIG_TIMER_EVT"
.LASF6:
	.string	"unsigned int"
.LASF10:
	.string	"uint16_t"
.LASF31:
	.string	"BTA_AV_AVRC_OPEN_EVT"
.LASF92:
	.string	"bta_av_ci_setconfig"
.LASF5:
	.string	"short unsigned int"
.LASF100:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/bta/av/bta_av_ci.c"
.LASF20:
	.string	"char"
.LASF32:
	.string	"BTA_AV_AVRC_MSG_EVT"
.LASF84:
	.string	"err_code"
.LASF78:
	.string	"BTA_AV_DEREG_COMP_EVT"
.LASF13:
	.string	"_Bool"
.LASF55:
	.string	"BTA_AV_STR_CLOSE_EVT"
.LASF17:
	.string	"data"
.LASF85:
	.string	"category"
.LASF75:
	.string	"BTA_AV_SDP_AVRC_DISC_EVT"
.LASF22:
	.string	"long unsigned int"
.LASF90:
	.string	"tBTA_AV_CI_SETCONFIG"
.LASF59:
	.string	"BTA_AV_STR_WRITE_CFM_EVT"
.LASF34:
	.string	"BTA_AV_API_OPEN_EVT"
.LASF50:
	.string	"BTA_AV_STR_GETCAP_FAIL_EVT"
.LASF62:
	.string	"BTA_AV_AVRC_TIMER_EVT"
.LASF47:
	.string	"BTA_AV_STR_DISC_OK_EVT"
.LASF26:
	.string	"BTA_AV_API_REMOTE_CMD_EVT"
.LASF9:
	.string	"uint8_t"
.LASF51:
	.string	"BTA_AV_STR_OPEN_OK_EVT"
.LASF61:
	.string	"BTA_AV_STR_RECONFIG_CFM_EVT"
.LASF70:
	.string	"BTA_AV_API_DEREGISTER_EVT"
.LASF30:
	.string	"BTA_AV_API_RC_CLOSE_EVT"
.LASF95:
	.string	"bd_addr_any"
.LASF58:
	.string	"BTA_AV_STR_SECURITY_CFM_EVT"
.LASF66:
	.string	"BTA_AV_AVDT_DELAY_RPT_EVT"
.LASF71:
	.string	"BTA_AV_API_DISCONNECT_EVT"
.LASF25:
	.string	"BTA_AV_API_DISABLE_EVT"
.LASF88:
	.string	"recfg_needed"
.LASF43:
	.string	"BTA_AV_CI_SETCONFIG_OK_EVT"
.LASF82:
	.string	"BTA_AV_API_STOP_EVT"
.LASF99:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF67:
	.string	"BTA_AV_ACP_CONNECT_EVT"
.LASF65:
	.string	"BTA_AV_ROLE_CHANGE_EVT"
.LASF33:
	.string	"BTA_AV_AVRC_NONE_EVT"
.LASF98:
	.string	"bta_sys_sendmsg"
.LASF16:
	.string	"layer_specific"
.LASF7:
	.string	"long long int"
.LASF28:
	.string	"BTA_AV_API_VENDOR_RSP_EVT"
.LASF57:
	.string	"BTA_AV_STR_SECURITY_IND_EVT"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
