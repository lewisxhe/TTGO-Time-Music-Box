	.file	"btc_main.c"
	.text
.Ltext0:
	.section	.text.btc_init_bluetooth,"ax",@progbits
	.literal_position
	.literal .LC0, btc_init_callback
	.align	4
	.type	btc_init_bluetooth, @function
btc_init_bluetooth:
.LFB30:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/core/btc_main.c"
	.loc 1 61 0
	entry	sp, 32
.LCFI0:
	.loc 1 62 0
	call8	osi_alarm_create_mux
.LVL0:
	.loc 1 63 0
	call8	osi_alarm_init
.LVL1:
	.loc 1 64 0
	l32r	a10, .LC0
	call8	bte_main_boot_entry
.LVL2:
	.loc 1 66 0
	call8	btc_config_init
.LVL3:
	.loc 1 68 0
	call8	btc_dm_load_ble_local_keys
.LVL4:
	retw.n
.LFE30:
	.size	btc_init_bluetooth, .-btc_init_bluetooth
	.section	.text.btc_main_get_future_p,"ax",@progbits
	.literal_position
	.literal .LC1, main_future
	.align	4
	.global	btc_main_get_future_p
	.type	btc_main_get_future_p, @function
btc_main_get_future_p:
.LFB26:
	.loc 1 34 0
.LVL5:
	entry	sp, 32
.LCFI1:
	.loc 1 36 0
	l32r	a8, .LC1
	addx4	a2, a2, a8
.LVL6:
	retw.n
.LFE26:
	.size	btc_main_get_future_p, .-btc_main_get_future_p
	.section	.text.btc_init_callback,"ax",@progbits
	.align	4
	.global	btc_init_callback
	.type	btc_init_callback, @function
btc_init_callback:
.LFB29:
	.loc 1 56 0
	entry	sp, 32
.LCFI2:
	.loc 1 57 0
	movi.n	a10, 0
	call8	btc_main_get_future_p
.LVL7:
	movi.n	a11, 1
	l32i.n	a10, a10, 0
	call8	future_ready
.LVL8:
	retw.n
.LFE29:
	.size	btc_init_callback, .-btc_init_callback
	.section	.text.btc_deinit_bluetooth,"ax",@progbits
	.align	4
	.type	btc_deinit_bluetooth, @function
btc_deinit_bluetooth:
.LFB31:
	.loc 1 74 0
	entry	sp, 32
.LCFI3:
	.loc 1 75 0
	call8	btc_gap_ble_deinit
.LVL9:
	.loc 1 76 0
	call8	bta_dm_sm_deinit
.LVL10:
	.loc 1 83 0
	call8	bte_main_shutdown
.LVL11:
	.loc 1 85 0
	call8	btc_config_clean_up
.LVL12:
	.loc 1 87 0
	call8	osi_alarm_deinit
.LVL13:
	.loc 1 88 0
	call8	osi_alarm_delete_mux
.LVL14:
	.loc 1 89 0
	movi.n	a10, 1
	call8	btc_main_get_future_p
.LVL15:
	movi.n	a11, 1
	l32i.n	a10, a10, 0
	call8	future_ready
.LVL16:
	retw.n
.LFE31:
	.size	btc_deinit_bluetooth, .-btc_deinit_bluetooth
	.section	.text.btc_enable_bluetooth,"ax",@progbits
	.literal_position
	.literal .LC2, btc_dm_sec_evt
	.align	4
	.type	btc_enable_bluetooth, @function
btc_enable_bluetooth:
.LFB27:
	.loc 1 39 0
	entry	sp, 32
.LCFI4:
	.loc 1 40 0
	l32r	a10, .LC2
	call8	BTA_EnableBluetooth
.LVL17:
	beqz.n	a10, .L5
	.loc 1 41 0
	movi.n	a10, 2
	call8	btc_main_get_future_p
.LVL18:
	movi.n	a11, 0
	l32i.n	a10, a10, 0
	call8	future_ready
.LVL19:
.L5:
	retw.n
.LFE27:
	.size	btc_enable_bluetooth, .-btc_enable_bluetooth
	.section	.text.btc_disable_bluetooth,"ax",@progbits
	.align	4
	.type	btc_disable_bluetooth, @function
btc_disable_bluetooth:
.LFB28:
	.loc 1 46 0
	entry	sp, 32
.LCFI5:
	.loc 1 48 0
	call8	btc_config_shut_down
.LVL20:
	.loc 1 50 0
	call8	BTA_DisableBluetooth
.LVL21:
	beqz.n	a10, .L7
	.loc 1 51 0
	movi.n	a10, 3
	call8	btc_main_get_future_p
.LVL22:
	movi.n	a11, 0
	l32i.n	a10, a10, 0
	call8	future_ready
.LVL23:
.L7:
	retw.n
.LFE28:
	.size	btc_disable_bluetooth, .-btc_disable_bluetooth
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC4:
	.string	"BT_BTC"
	.align	4
.LC6:
	.string	"\033[0;31mE (%d) %s: %s UNKNOWN ACT %d\n\033[0m\n"
	.section	.text.btc_main_call_handler,"ax",@progbits
	.literal_position
	.literal .LC3, __func__$12256
	.literal .LC5, .LC4
	.literal .LC7, .LC6
	.align	4
	.global	btc_main_call_handler
	.type	btc_main_call_handler, @function
btc_main_call_handler:
.LFB32:
	.loc 1 93 0
.LVL24:
	entry	sp, 48
.LCFI6:
	.loc 1 96 0
	l8ui	a8, a2, 3
	beqi	a8, 1, .L11
	beqz.n	a8, .L12
	beqi	a8, 2, .L13
	beqi	a8, 3, .L14
	j	.L16
.L12:
	.loc 1 98 0
	call8	btc_init_bluetooth
.LVL25:
	.loc 1 99 0
	retw.n
.L11:
	.loc 1 101 0
	call8	btc_deinit_bluetooth
.LVL26:
	.loc 1 102 0
	retw.n
.L13:
	.loc 1 104 0
	call8	btc_enable_bluetooth
.LVL27:
	.loc 1 105 0
	retw.n
.L14:
	.loc 1 107 0
	call8	btc_disable_bluetooth
.LVL28:
	.loc 1 108 0
	retw.n
.L16:
	.loc 1 110 0 discriminator 1
	call8	esp_log_timestamp
.LVL29:
	l8ui	a2, a2, 3
.LVL30:
	l32r	a11, .LC5
	s32i.n	a2, sp, 0
	l32r	a15, .LC3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC7
	movi.n	a10, 1
	call8	esp_log_write
.LVL31:
	retw.n
.LFE32:
	.size	btc_main_call_handler, .-btc_main_call_handler
	.section	.rodata.__func__$12256,"a",@progbits
	.align	4
	.type	__func__$12256, @object
	.size	__func__$12256, 22
__func__$12256:
	.string	"btc_main_call_handler"
	.section	.bss.main_future,"aw",@nobits
	.align	4
	.type	main_future, @object
	.size	main_future, 16
main_future:
	.zero	16
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
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI0-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI1-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI2-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI3-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI4-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI5-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI6-.LFB32
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE12:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/queue.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/include/btc/btc_task.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/semphr.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/semaphore.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/future.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/include/btc/btc_main.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/alarm.h"
	.file 14 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/include/btc/btc_config.h"
	.file 15 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/include/btc/btc_dm.h"
	.file 16 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/profile/std/include/btc_gap_ble.h"
	.file 17 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/bta/dm/include/bta_dm_int.h"
	.file 18 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/bta/include/bta/bta_api.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x6ea
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF125
	.byte	0xc
	.4byte	.LASF126
	.4byte	.LASF127
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
	.byte	0x21
	.4byte	0x73
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x23
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x5
	.4byte	0x89
	.4byte	0xbd
	.uleb128 0x6
	.4byte	0xa6
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF16
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0x8
	.byte	0x4
	.4byte	0x5e
	.byte	0xa
	.byte	0x1f
	.4byte	0x105
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x5
	.byte	0x58
	.4byte	0xc4
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x8
	.byte	0x6
	.byte	0x17
	.4byte	0x159
	.uleb128 0xb
	.string	"sig"
	.byte	0x6
	.byte	0x18
	.4byte	0x73
	.byte	0
	.uleb128 0xb
	.string	"aid"
	.byte	0x6
	.byte	0x19
	.4byte	0x73
	.byte	0x1
	.uleb128 0xb
	.string	"pid"
	.byte	0x6
	.byte	0x1a
	.4byte	0x73
	.byte	0x2
	.uleb128 0xb
	.string	"act"
	.byte	0x6
	.byte	0x1b
	.4byte	0x73
	.byte	0x3
	.uleb128 0xb
	.string	"arg"
	.byte	0x6
	.byte	0x1c
	.4byte	0xc4
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x6
	.byte	0x1d
	.4byte	0x110
	.uleb128 0xc
	.byte	0x4
	.4byte	0x159
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x7
	.byte	0x4f
	.4byte	0x105
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x8
	.byte	0x1d
	.4byte	0x16a
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0xc
	.byte	0x9
	.byte	0x18
	.4byte	0x1b1
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x9
	.byte	0x19
	.4byte	0x9f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x9
	.byte	0x1a
	.4byte	0x175
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x9
	.byte	0x1b
	.4byte	0xc4
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x9
	.byte	0x1d
	.4byte	0x180
	.uleb128 0xe
	.byte	0x4
	.4byte	0x5e
	.byte	0xb
	.2byte	0x1c0
	.4byte	0x2e4
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0xf
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x11
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x12
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x13
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x15
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x16
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x17
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x19
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0x1a
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0x1b
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0x1d
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0x1e
	.uleb128 0x9
	.4byte	.LASF65
	.byte	0x1f
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0x21
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0x22
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0x23
	.uleb128 0x9
	.4byte	.LASF70
	.byte	0x24
	.uleb128 0x9
	.4byte	.LASF71
	.byte	0x25
	.uleb128 0x9
	.4byte	.LASF72
	.byte	0x26
	.uleb128 0x9
	.4byte	.LASF73
	.byte	0x27
	.uleb128 0x9
	.4byte	.LASF74
	.byte	0x28
	.uleb128 0x9
	.4byte	.LASF75
	.byte	0x29
	.uleb128 0x9
	.4byte	.LASF76
	.byte	0x2a
	.uleb128 0x9
	.4byte	.LASF77
	.byte	0x2b
	.uleb128 0x9
	.4byte	.LASF78
	.byte	0x2c
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0x2d
	.uleb128 0x9
	.4byte	.LASF80
	.byte	0x2e
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x5e
	.byte	0xb
	.2byte	0x6ea
	.4byte	0x31c
	.uleb128 0x9
	.4byte	.LASF81
	.byte	0
	.uleb128 0x9
	.4byte	.LASF82
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF83
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF84
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF85
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF87
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x5e
	.byte	0xc
	.byte	0x18
	.4byte	0x341
	.uleb128 0x9
	.4byte	.LASF88
	.byte	0
	.uleb128 0x9
	.4byte	.LASF89
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF90
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF91
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x5e
	.byte	0xc
	.byte	0x1f
	.4byte	0x36c
	.uleb128 0x9
	.4byte	.LASF92
	.byte	0
	.uleb128 0x9
	.4byte	.LASF93
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF94
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF95
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF96
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF97
	.byte	0xc
	.byte	0x25
	.4byte	0x341
	.uleb128 0xf
	.4byte	.LASF98
	.byte	0x1
	.byte	0x3c
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3c8
	.uleb128 0x10
	.4byte	.LVL0
	.4byte	0x62f
	.uleb128 0x10
	.4byte	.LVL1
	.4byte	0x63a
	.uleb128 0x11
	.4byte	.LVL2
	.4byte	0x645
	.4byte	0x3b5
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_init_callback
	.byte	0
	.uleb128 0x10
	.4byte	.LVL3
	.4byte	0x650
	.uleb128 0x10
	.4byte	.LVL4
	.4byte	0x65b
	.byte	0
	.uleb128 0x13
	.4byte	.LASF128
	.byte	0x1
	.byte	0x21
	.4byte	0x3f1
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3f1
	.uleb128 0x14
	.4byte	.LASF104
	.byte	0x1
	.byte	0x21
	.4byte	0x36c
	.4byte	.LLST0
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x3f7
	.uleb128 0xc
	.byte	0x4
	.4byte	0x1b1
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x1
	.byte	0x37
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x435
	.uleb128 0x11
	.4byte	.LVL7
	.4byte	0x3c8
	.4byte	0x425
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x16
	.4byte	.LVL8
	.4byte	0x666
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF99
	.byte	0x1
	.byte	0x49
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4a3
	.uleb128 0x10
	.4byte	.LVL9
	.4byte	0x671
	.uleb128 0x10
	.4byte	.LVL10
	.4byte	0x67c
	.uleb128 0x10
	.4byte	.LVL11
	.4byte	0x688
	.uleb128 0x10
	.4byte	.LVL12
	.4byte	0x693
	.uleb128 0x10
	.4byte	.LVL13
	.4byte	0x69e
	.uleb128 0x10
	.4byte	.LVL14
	.4byte	0x6a9
	.uleb128 0x11
	.4byte	.LVL15
	.4byte	0x3c8
	.4byte	0x493
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x16
	.4byte	.LVL16
	.4byte	0x666
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF100
	.byte	0x1
	.byte	0x26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4e4
	.uleb128 0x10
	.4byte	.LVL17
	.4byte	0x6b4
	.uleb128 0x11
	.4byte	.LVL18
	.4byte	0x3c8
	.4byte	0x4d4
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x16
	.4byte	.LVL19
	.4byte	0x666
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF101
	.byte	0x1
	.byte	0x2d
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x52e
	.uleb128 0x10
	.4byte	.LVL20
	.4byte	0x6c0
	.uleb128 0x10
	.4byte	.LVL21
	.4byte	0x6cb
	.uleb128 0x11
	.4byte	.LVL22
	.4byte	0x3c8
	.4byte	0x51e
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x16
	.4byte	.LVL23
	.4byte	0x666
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x1
	.byte	0x5c
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5c9
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.byte	0x5c
	.4byte	0x164
	.4byte	.LLST1
	.uleb128 0x18
	.4byte	.LASF129
	.4byte	0x5d9
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$12256
	.uleb128 0x10
	.4byte	.LVL25
	.4byte	0x377
	.uleb128 0x10
	.4byte	.LVL26
	.4byte	0x435
	.uleb128 0x10
	.4byte	.LVL27
	.4byte	0x4a3
	.uleb128 0x10
	.4byte	.LVL28
	.4byte	0x4e4
	.uleb128 0x10
	.4byte	.LVL29
	.4byte	0x6d7
	.uleb128 0x16
	.4byte	.LVL31
	.4byte	0x6e2
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$12256
	.uleb128 0x12
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	0xbd
	.4byte	0x5d9
	.uleb128 0x6
	.4byte	0xa6
	.byte	0x15
	.byte	0
	.uleb128 0x19
	.4byte	0x5c9
	.uleb128 0x1a
	.4byte	.LASF105
	.byte	0x4
	.2byte	0x2cc
	.4byte	0x5f1
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x19
	.4byte	0xad
	.uleb128 0x1a
	.4byte	.LASF106
	.byte	0x4
	.2byte	0x2cd
	.4byte	0x609
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0xad
	.uleb128 0x5
	.4byte	0x3f7
	.4byte	0x61e
	.uleb128 0x6
	.4byte	0xa6
	.byte	0x3
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF107
	.byte	0x1
	.byte	0x1c
	.4byte	0x60e
	.uleb128 0x5
	.byte	0x3
	.4byte	main_future
	.uleb128 0x1c
	.4byte	.LASF108
	.4byte	.LASF108
	.byte	0xd
	.byte	0x27
	.uleb128 0x1c
	.4byte	.LASF109
	.4byte	.LASF109
	.byte	0xd
	.byte	0x29
	.uleb128 0x1c
	.4byte	.LASF110
	.4byte	.LASF110
	.byte	0x1
	.byte	0x1e
	.uleb128 0x1c
	.4byte	.LASF111
	.4byte	.LASF111
	.byte	0xe
	.byte	0x19
	.uleb128 0x1c
	.4byte	.LASF112
	.4byte	.LASF112
	.byte	0xf
	.byte	0x50
	.uleb128 0x1c
	.4byte	.LASF113
	.4byte	.LASF113
	.byte	0x9
	.byte	0x2d
	.uleb128 0x1c
	.4byte	.LASF114
	.4byte	.LASF114
	.byte	0x10
	.byte	0xa8
	.uleb128 0x1d
	.4byte	.LASF115
	.4byte	.LASF115
	.byte	0x11
	.2byte	0x480
	.uleb128 0x1c
	.4byte	.LASF116
	.4byte	.LASF116
	.byte	0x1
	.byte	0x1f
	.uleb128 0x1c
	.4byte	.LASF117
	.4byte	.LASF117
	.byte	0xe
	.byte	0x1b
	.uleb128 0x1c
	.4byte	.LASF118
	.4byte	.LASF118
	.byte	0xd
	.byte	0x2a
	.uleb128 0x1c
	.4byte	.LASF119
	.4byte	.LASF119
	.byte	0xd
	.byte	0x28
	.uleb128 0x1d
	.4byte	.LASF120
	.4byte	.LASF120
	.byte	0x12
	.2byte	0x560
	.uleb128 0x1c
	.4byte	.LASF121
	.4byte	.LASF121
	.byte	0xe
	.byte	0x1a
	.uleb128 0x1d
	.4byte	.LASF122
	.4byte	.LASF122
	.byte	0x12
	.2byte	0x56e
	.uleb128 0x1c
	.4byte	.LASF123
	.4byte	.LASF123
	.byte	0xa
	.byte	0x57
	.uleb128 0x1c
	.4byte	.LASF124
	.4byte	.LASF124
	.byte	0xa
	.byte	0x6b
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x10
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL24
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x4c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF35:
	.string	"BTM_EIR_UUID_SERVCLASS_SERIAL_PORT"
.LASF29:
	.string	"future"
.LASF65:
	.string	"BTM_EIR_UUID_SERVCLASS_CABLE_REPLACEMENT"
.LASF25:
	.string	"btc_msg_t"
.LASF121:
	.string	"btc_config_shut_down"
.LASF0:
	.string	"signed char"
.LASF4:
	.string	"__uint8_t"
.LASF116:
	.string	"bte_main_shutdown"
.LASF108:
	.string	"osi_alarm_create_mux"
.LASF104:
	.string	"type"
.LASF94:
	.string	"BTC_MAIN_ENABLE_FUTURE"
.LASF70:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PSE"
.LASF92:
	.string	"BTC_MAIN_INIT_FUTURE"
.LASF24:
	.string	"QueueHandle_t"
.LASF120:
	.string	"BTA_EnableBluetooth"
.LASF73:
	.string	"BTM_EIR_UUID_SERVCLASS_PNP_INFORMATION"
.LASF22:
	.string	"ESP_LOG_DEBUG"
.LASF7:
	.string	"long long int"
.LASF83:
	.string	"BTM_PM_STS_SNIFF"
.LASF61:
	.string	"BTM_EIR_UUID_SERVCLASS_DIR_PRT_REF_OBJ_SERVICE"
.LASF47:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REMOTE_CONTROL"
.LASF8:
	.string	"long long unsigned int"
.LASF63:
	.string	"BTM_EIR_UUID_SERVCLASS_PRINTING_STATUS"
.LASF36:
	.string	"BTM_EIR_UUID_SERVCLASS_LAN_ACCESS_USING_PPP"
.LASF16:
	.string	"long int"
.LASF100:
	.string	"btc_enable_bluetooth"
.LASF42:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET"
.LASF124:
	.string	"esp_log_write"
.LASF46:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REM_CTRL_TARGET"
.LASF97:
	.string	"btc_main_future_type_t"
.LASF82:
	.string	"BTM_PM_STS_HOLD"
.LASF60:
	.string	"BTM_EIR_UUID_SERVCLASS_AG_HANDSFREE"
.LASF110:
	.string	"bte_main_boot_entry"
.LASF62:
	.string	"BTM_EIR_UUID_SERVCLASS_BASIC_PRINTING"
.LASF89:
	.string	"BTC_MAIN_ACT_DEINIT"
.LASF75:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SINK"
.LASF81:
	.string	"BTM_PM_STS_ACTIVE"
.LASF103:
	.string	"btc_main_call_handler"
.LASF80:
	.string	"BTM_EIR_MAX_SERVICES"
.LASF107:
	.string	"main_future"
.LASF109:
	.string	"osi_alarm_init"
.LASF6:
	.string	"unsigned int"
.LASF40:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_FILE_TRANSFER"
.LASF37:
	.string	"BTM_EIR_UUID_SERVCLASS_DIALUP_NETWORKING"
.LASF17:
	.string	"long unsigned int"
.LASF95:
	.string	"BTC_MAIN_DISABLE_FUTURE"
.LASF119:
	.string	"osi_alarm_delete_mux"
.LASF71:
	.string	"BTM_EIR_UUID_SERVCLASS_PHONE_ACCESS"
.LASF126:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/core/btc_main.c"
.LASF3:
	.string	"short unsigned int"
.LASF53:
	.string	"BTM_EIR_UUID_SERVCLASS_GN"
.LASF67:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_SCAN"
.LASF88:
	.string	"BTC_MAIN_ACT_INIT"
.LASF20:
	.string	"ESP_LOG_WARN"
.LASF91:
	.string	"BTC_MAIN_ACT_DISABLE"
.LASF114:
	.string	"btc_gap_ble_deinit"
.LASF77:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_NOTIFICATION"
.LASF21:
	.string	"ESP_LOG_INFO"
.LASF90:
	.string	"BTC_MAIN_ACT_ENABLE"
.LASF30:
	.string	"ready_can_be_called"
.LASF87:
	.string	"BTM_PM_STS_ERROR"
.LASF28:
	.string	"btc_msg"
.LASF14:
	.string	"sizetype"
.LASF52:
	.string	"BTM_EIR_UUID_SERVCLASS_NAP"
.LASF112:
	.string	"btc_dm_load_ble_local_keys"
.LASF117:
	.string	"btc_config_clean_up"
.LASF12:
	.string	"UINT32"
.LASF101:
	.string	"btc_disable_bluetooth"
.LASF76:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_ACCESS"
.LASF115:
	.string	"bta_dm_sm_deinit"
.LASF58:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_REF_OBJECTS"
.LASF96:
	.string	"BTC_MAIN_FUTURE_NUM"
.LASF43:
	.string	"BTM_EIR_UUID_SERVCLASS_CORDLESS_TELEPHONY"
.LASF118:
	.string	"osi_alarm_deinit"
.LASF56:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_RESPONDER"
.LASF68:
	.string	"BTM_EIR_UUID_SERVCLASS_SAP"
.LASF106:
	.string	"bd_addr_null"
.LASF54:
	.string	"BTM_EIR_UUID_SERVCLASS_DIRECT_PRINTING"
.LASF57:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_AUTO_ARCHIVE"
.LASF33:
	.string	"future_t"
.LASF31:
	.string	"semaphore"
.LASF13:
	.string	"_Bool"
.LASF45:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SINK"
.LASF113:
	.string	"future_ready"
.LASF125:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF38:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC"
.LASF2:
	.string	"short int"
.LASF51:
	.string	"BTM_EIR_UUID_SERVCLASS_PANU"
.LASF55:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING"
.LASF123:
	.string	"esp_log_timestamp"
.LASF19:
	.string	"ESP_LOG_ERROR"
.LASF129:
	.string	"__func__"
.LASF84:
	.string	"BTM_PM_STS_PARK"
.LASF93:
	.string	"BTC_MAIN_DEINIT_FUTURE"
.LASF44:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SOURCE"
.LASF39:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_OBJECT_PUSH"
.LASF10:
	.string	"uint32_t"
.LASF102:
	.string	"btc_init_callback"
.LASF59:
	.string	"BTM_EIR_UUID_SERVCLASS_HF_HANDSFREE"
.LASF26:
	.string	"SemaphoreHandle_t"
.LASF15:
	.string	"char"
.LASF23:
	.string	"ESP_LOG_VERBOSE"
.LASF18:
	.string	"ESP_LOG_NONE"
.LASF50:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_AUDIO_GATEWAY"
.LASF5:
	.string	"__uint32_t"
.LASF66:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_PRINT"
.LASF85:
	.string	"BTM_PM_STS_SSR"
.LASF1:
	.string	"unsigned char"
.LASF99:
	.string	"btc_deinit_bluetooth"
.LASF41:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC_COMMAND"
.LASF78:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SOURCE"
.LASF48:
	.string	"BTM_EIR_UUID_SERVCLASS_INTERCOM"
.LASF122:
	.string	"BTA_DisableBluetooth"
.LASF11:
	.string	"UINT8"
.LASF72:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_HS"
.LASF9:
	.string	"uint8_t"
.LASF105:
	.string	"bd_addr_any"
.LASF27:
	.string	"osi_sem_t"
.LASF86:
	.string	"BTM_PM_STS_PENDING"
.LASF111:
	.string	"btc_config_init"
.LASF34:
	.string	"BTM_EIR_UUID_SERVCLASS_SERVICE_DISCOVERY_SERVER"
.LASF127:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF98:
	.string	"btc_init_bluetooth"
.LASF79:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SINK"
.LASF64:
	.string	"BTM_EIR_UUID_SERVCLASS_HUMAN_INTERFACE"
.LASF128:
	.string	"btc_main_get_future_p"
.LASF49:
	.string	"BTM_EIR_UUID_SERVCLASS_FAX"
.LASF32:
	.string	"result"
.LASF69:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PCE"
.LASF74:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SOURCE"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
