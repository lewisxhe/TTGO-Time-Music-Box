	.file	"btc_a2dp.c"
	.text
.Ltext0:
	.section	.text.btc_a2dp_on_init,"ax",@progbits
	.align	4
	.global	btc_a2dp_on_init
	.type	btc_a2dp_on_init, @function
btc_a2dp_on_init:
.LFB26:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/profile/std/a2dp/btc_a2dp.c"
	.loc 1 40 0
	entry	sp, 32
.LCFI0:
	retw.n
.LFE26:
	.size	btc_a2dp_on_init, .-btc_a2dp_on_init
	.section	.text.btc_a2dp_on_idle,"ax",@progbits
	.align	4
	.global	btc_a2dp_on_idle
	.type	btc_a2dp_on_idle, @function
btc_a2dp_on_idle:
.LFB27:
	.loc 1 51 0
	.loc 1 51 0
	entry	sp, 32
.LCFI1:
	.loc 1 55 0
	call8	btc_av_get_peer_sep
.LVL0:
	bnei	a10, 1, .L3
	.loc 1 55 0 is_stmt 0 discriminator 1
	call8	btc_av_get_service_id
.LVL1:
	bnei	a10, 3, .L3
	.loc 1 56 0 is_stmt 1
	call8	btc_a2dp_source_on_idle
.LVL2:
.L3:
	.loc 1 60 0
	call8	bta_av_co_init
.LVL3:
	.loc 1 63 0
	call8	btc_av_get_peer_sep
.LVL4:
	bnez.n	a10, .L2
	.loc 1 63 0 is_stmt 0 discriminator 1
	call8	btc_av_get_service_id
.LVL5:
	movi.n	a8, 0x12
	bne	a10, a8, .L2
	.loc 1 64 0 is_stmt 1
	call8	btc_a2dp_sink_on_idle
.LVL6:
.L2:
	retw.n
.LFE27:
	.size	btc_a2dp_on_idle, .-btc_a2dp_on_idle
	.section	.text.btc_a2dp_on_started,"ax",@progbits
	.align	4
	.global	btc_a2dp_on_started
	.type	btc_a2dp_on_started, @function
btc_a2dp_on_started:
.LFB28:
	.loc 1 80 0
.LVL7:
	entry	sp, 32
.LCFI2:
	mov.n	a8, a2
	extui	a3, a3, 0, 8
.LVL8:
	.loc 1 85 0
	bnez.n	a2, .L6
	.loc 1 87 0
	movi.n	a10, 0
	call8	btc_a2dp_control_command_ack
.LVL9:
	.loc 1 88 0
	movi.n	a2, 1
.LVL10:
	retw.n
.LVL11:
.L6:
	.loc 1 91 0
	l8ui	a2, a2, 2
.LVL12:
	bnez.n	a2, .L8
	.loc 1 92 0
	l8ui	a2, a8, 4
	bnez.n	a2, .L10
	.loc 1 93 0
	l8ui	a4, a8, 3
	beqz.n	a4, .L9
	.loc 1 94 0
	beqz.n	a3, .L7
	.loc 1 95 0
	movi.n	a10, 0
	call8	btc_a2dp_control_command_ack
.LVL13:
	.loc 1 96 0
	mov.n	a2, a4
	retw.n
.LVL14:
.L9:
	.loc 1 101 0
	call8	btc_a2dp_source_setup_codec
.LVL15:
	.loc 1 81 0
	mov.n	a2, a4
	retw.n
.LVL16:
.L8:
	.loc 1 106 0
	beqz.n	a3, .L11
	.loc 1 107 0
	movi.n	a10, 1
	call8	btc_a2dp_control_command_ack
.LVL17:
	.loc 1 108 0
	movi.n	a2, 1
	retw.n
.LVL18:
.L10:
	.loc 1 81 0
	movi.n	a2, 0
	retw.n
.L11:
	movi.n	a2, 0
.L7:
	.loc 1 112 0
	retw.n
.LFE28:
	.size	btc_a2dp_on_started, .-btc_a2dp_on_started
	.section	.text.btc_a2dp_on_stopped,"ax",@progbits
	.align	4
	.global	btc_a2dp_on_stopped
	.type	btc_a2dp_on_stopped, @function
btc_a2dp_on_stopped:
.LFB29:
	.loc 1 121 0
.LVL19:
	entry	sp, 32
.LCFI3:
	.loc 1 124 0
	call8	btc_av_get_peer_sep
.LVL20:
	bnez.n	a10, .L13
	.loc 1 124 0 is_stmt 0 discriminator 1
	call8	btc_av_get_service_id
.LVL21:
	movi.n	a8, 0x12
	bne	a10, a8, .L13
	.loc 1 125 0 is_stmt 1
	mov.n	a10, a2
	call8	btc_a2dp_sink_on_stopped
.LVL22:
	.loc 1 126 0
	retw.n
.L13:
	.loc 1 131 0
	mov.n	a10, a2
	call8	btc_a2dp_source_on_stopped
.LVL23:
	retw.n
.LFE29:
	.size	btc_a2dp_on_stopped, .-btc_a2dp_on_stopped
	.section	.text.btc_a2dp_on_suspended,"ax",@progbits
	.align	4
	.global	btc_a2dp_on_suspended
	.type	btc_a2dp_on_suspended, @function
btc_a2dp_on_suspended:
.LFB30:
	.loc 1 141 0
.LVL24:
	entry	sp, 32
.LCFI4:
	.loc 1 144 0
	call8	btc_av_get_peer_sep
.LVL25:
	bnez.n	a10, .L16
	.loc 1 144 0 is_stmt 0 discriminator 1
	call8	btc_av_get_service_id
.LVL26:
	movi.n	a8, 0x12
	bne	a10, a8, .L16
	.loc 1 145 0 is_stmt 1
	mov.n	a10, a2
	call8	btc_a2dp_sink_on_suspended
.LVL27:
	.loc 1 146 0
	retw.n
.L16:
	.loc 1 150 0
	mov.n	a10, a2
	call8	btc_a2dp_source_on_suspended
.LVL28:
	retw.n
.LFE30:
	.size	btc_a2dp_on_suspended, .-btc_a2dp_on_suspended
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
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI2-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI3-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI4-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/bta/include/bta/bta_av_api.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/api/include/api/esp_a2dp_api.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/profile/std/include/btc_av.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/profile/std/include/btc_a2dp_source.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/profile/std/a2dp/include/btc_av_co.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/profile/std/include/btc_a2dp_sink.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/profile/std/include/btc_a2dp_control.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/common/include/common/bt_trace.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x427
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0xc
	.4byte	.LASF54
	.4byte	.LASF55
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF7
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
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0x21
	.4byte	0x68
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0x29
	.4byte	0x89
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.4byte	0x73
	.4byte	0xa7
	.uleb128 0x6
	.4byte	0x90
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x7
	.byte	0x4
	.4byte	0x53
	.byte	0x6
	.byte	0x1f
	.4byte	0xed
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x5
	.byte	0x36
	.4byte	0x73
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x5
	.byte	0x4f
	.4byte	0x73
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x5
	.byte	0x53
	.4byte	0x73
	.uleb128 0x9
	.byte	0x5
	.byte	0x5
	.2byte	0x14f
	.4byte	0x159
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x5
	.2byte	0x150
	.4byte	0xf8
	.byte	0
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x5
	.2byte	0x151
	.4byte	0x103
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x5
	.2byte	0x152
	.4byte	0xed
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x5
	.2byte	0x153
	.4byte	0x7e
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x5
	.2byte	0x154
	.4byte	0x7e
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x5
	.2byte	0x155
	.4byte	0x10e
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.2byte	0x158
	.4byte	0x1a3
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x5
	.2byte	0x159
	.4byte	0xf8
	.byte	0
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x5
	.2byte	0x15a
	.4byte	0x103
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x5
	.2byte	0x15b
	.4byte	0x7e
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x5
	.2byte	0x15c
	.4byte	0xed
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x5
	.2byte	0x15d
	.4byte	0x165
	.uleb128 0x7
	.byte	0x4
	.4byte	0x53
	.byte	0x7
	.byte	0x47
	.4byte	0x1ce
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x1
	.byte	0x27
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x1
	.byte	0x32
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x234
	.uleb128 0xe
	.4byte	.LVL0
	.4byte	0x3b1
	.uleb128 0xe
	.4byte	.LVL1
	.4byte	0x3bc
	.uleb128 0xe
	.4byte	.LVL2
	.4byte	0x3c7
	.uleb128 0xe
	.4byte	.LVL3
	.4byte	0x3d2
	.uleb128 0xe
	.4byte	.LVL4
	.4byte	0x3b1
	.uleb128 0xe
	.4byte	.LVL5
	.4byte	0x3bc
	.uleb128 0xe
	.4byte	.LVL6
	.4byte	0x3dd
	.byte	0
	.uleb128 0xf
	.4byte	.LASF57
	.byte	0x1
	.byte	0x4f
	.4byte	0x7e
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2b7
	.uleb128 0x10
	.4byte	.LASF35
	.byte	0x1
	.byte	0x4f
	.4byte	0x2b7
	.4byte	.LLST0
	.uleb128 0x11
	.4byte	.LASF36
	.byte	0x1
	.byte	0x4f
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x12
	.string	"ack"
	.byte	0x1
	.byte	0x51
	.4byte	0x7e
	.4byte	.LLST1
	.uleb128 0x13
	.4byte	.LVL9
	.4byte	0x3e8
	.4byte	0x28b
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.4byte	.LVL13
	.4byte	0x3e8
	.4byte	0x29e
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.4byte	.LVL15
	.4byte	0x3f3
	.uleb128 0x15
	.4byte	.LVL17
	.4byte	0x3e8
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.4byte	0x159
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x1
	.byte	0x78
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x316
	.uleb128 0x11
	.4byte	.LASF35
	.byte	0x1
	.byte	0x78
	.4byte	0x316
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xe
	.4byte	.LVL20
	.4byte	0x3b1
	.uleb128 0xe
	.4byte	.LVL21
	.4byte	0x3bc
	.uleb128 0x13
	.4byte	.LVL22
	.4byte	0x3fe
	.4byte	0x305
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL23
	.4byte	0x409
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.4byte	0x1a3
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x1
	.byte	0x8c
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x375
	.uleb128 0x11
	.4byte	.LASF35
	.byte	0x1
	.byte	0x8c
	.4byte	0x316
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xe
	.4byte	.LVL25
	.4byte	0x3b1
	.uleb128 0xe
	.4byte	.LVL26
	.4byte	0x3bc
	.uleb128 0x13
	.4byte	.LVL27
	.4byte	0x414
	.4byte	0x364
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL28
	.4byte	0x41f
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF40
	.byte	0x4
	.2byte	0x2cc
	.4byte	0x388
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x18
	.4byte	0x97
	.uleb128 0x17
	.4byte	.LASF41
	.byte	0x4
	.2byte	0x2cd
	.4byte	0x3a0
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x97
	.uleb128 0x19
	.4byte	.LASF58
	.byte	0xd
	.2byte	0x2ea
	.4byte	0x73
	.uleb128 0x1a
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x8
	.byte	0xb3
	.uleb128 0x1a
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x8
	.byte	0xd8
	.uleb128 0x1a
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x9
	.byte	0xc1
	.uleb128 0x1a
	.4byte	.LASF45
	.4byte	.LASF45
	.byte	0xa
	.byte	0x8f
	.uleb128 0x1a
	.4byte	.LASF46
	.4byte	.LASF46
	.byte	0xb
	.byte	0x60
	.uleb128 0x1a
	.4byte	.LASF47
	.4byte	.LASF47
	.byte	0xc
	.byte	0x3f
	.uleb128 0x1a
	.4byte	.LASF48
	.4byte	.LASF48
	.byte	0x9
	.byte	0xde
	.uleb128 0x1a
	.4byte	.LASF49
	.4byte	.LASF49
	.byte	0xb
	.byte	0x6a
	.uleb128 0x1a
	.4byte	.LASF50
	.4byte	.LASF50
	.byte	0x9
	.byte	0xcb
	.uleb128 0x1a
	.4byte	.LASF51
	.4byte	.LASF51
	.byte	0xb
	.byte	0x74
	.uleb128 0x1a
	.4byte	.LASF52
	.4byte	.LASF52
	.byte	0x9
	.byte	0xd5
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL13-1
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL15-1
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL17-1
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LFE28
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL8
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LFE28
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
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
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF30:
	.string	"tBTA_AV_START"
.LASF7:
	.string	"__uint8_t"
.LASF41:
	.string	"bd_addr_null"
.LASF17:
	.string	"ESP_LOG_ERROR"
.LASF18:
	.string	"ESP_LOG_WARN"
.LASF10:
	.string	"BOOLEAN"
.LASF9:
	.string	"UINT8"
.LASF29:
	.string	"suspending"
.LASF57:
	.string	"btc_a2dp_on_started"
.LASF4:
	.string	"unsigned int"
.LASF27:
	.string	"status"
.LASF53:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF31:
	.string	"tBTA_AV_SUSPEND"
.LASF39:
	.string	"btc_a2dp_on_suspended"
.LASF19:
	.string	"ESP_LOG_INFO"
.LASF35:
	.string	"p_av"
.LASF55:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF52:
	.string	"btc_a2dp_source_on_suspended"
.LASF1:
	.string	"unsigned char"
.LASF44:
	.string	"btc_a2dp_source_on_idle"
.LASF22:
	.string	"tBTA_AV_STATUS"
.LASF15:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF28:
	.string	"initiator"
.LASF56:
	.string	"btc_a2dp_on_init"
.LASF25:
	.string	"chnl"
.LASF37:
	.string	"btc_a2dp_on_idle"
.LASF51:
	.string	"btc_a2dp_sink_on_suspended"
.LASF49:
	.string	"btc_a2dp_sink_on_stopped"
.LASF2:
	.string	"short int"
.LASF43:
	.string	"btc_av_get_service_id"
.LASF47:
	.string	"btc_a2dp_control_command_ack"
.LASF20:
	.string	"ESP_LOG_DEBUG"
.LASF13:
	.string	"char"
.LASF8:
	.string	"uint8_t"
.LASF54:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/profile/std/a2dp/btc_a2dp.c"
.LASF58:
	.string	"appl_trace_level"
.LASF48:
	.string	"btc_a2dp_source_setup_codec"
.LASF40:
	.string	"bd_addr_any"
.LASF46:
	.string	"btc_a2dp_sink_on_idle"
.LASF50:
	.string	"btc_a2dp_source_on_stopped"
.LASF12:
	.string	"sizetype"
.LASF42:
	.string	"btc_av_get_peer_sep"
.LASF33:
	.string	"ESP_A2D_MEDIA_CTRL_ACK_FAILURE"
.LASF38:
	.string	"btc_a2dp_on_stopped"
.LASF24:
	.string	"tBTA_AV_HNDL"
.LASF16:
	.string	"ESP_LOG_NONE"
.LASF45:
	.string	"bta_av_co_init"
.LASF5:
	.string	"long long int"
.LASF14:
	.string	"long int"
.LASF36:
	.string	"pending_start"
.LASF32:
	.string	"ESP_A2D_MEDIA_CTRL_ACK_SUCCESS"
.LASF0:
	.string	"signed char"
.LASF34:
	.string	"ESP_A2D_MEDIA_CTRL_ACK_BUSY"
.LASF23:
	.string	"tBTA_AV_CHNL"
.LASF11:
	.string	"_Bool"
.LASF26:
	.string	"hndl"
.LASF6:
	.string	"long long unsigned int"
.LASF21:
	.string	"ESP_LOG_VERBOSE"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
