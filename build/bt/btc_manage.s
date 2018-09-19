	.file	"btc_manage.c"
	.text
.Ltext0:
	.section	.text.esp_profile_cb_reset,"ax",@progbits
	.literal_position
	.literal .LC0, btc_profile_cb_tab
	.align	4
	.global	esp_profile_cb_reset
	.type	esp_profile_cb_reset, @function
esp_profile_cb_reset:
.LFB26:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/core/btc_manage.c"
	.loc 1 25 0
	entry	sp, 32
.LCFI0:
.LVL0:
	.loc 1 28 0
	movi.n	a8, 0
	j	.L2
.LVL1:
.L3:
	.loc 1 29 0 discriminator 3
	l32r	a9, .LC0
	addx4	a9, a8, a9
	movi.n	a10, 0
	s32i.n	a10, a9, 0
	.loc 1 28 0 discriminator 3
	addi.n	a8, a8, 1
.LVL2:
.L2:
	.loc 1 28 0 is_stmt 0 discriminator 1
	movi.n	a9, 0xe
	bge	a9, a8, .L3
	.loc 1 31 0 is_stmt 1
	retw.n
.LFE26:
	.size	esp_profile_cb_reset, .-esp_profile_cb_reset
	.section	.text.btc_profile_cb_set,"ax",@progbits
	.literal_position
	.literal .LC1, btc_profile_cb_tab
	.align	4
	.global	btc_profile_cb_set
	.type	btc_profile_cb_set, @function
btc_profile_cb_set:
.LFB27:
	.loc 1 34 0
.LVL3:
	entry	sp, 32
.LCFI1:
	.loc 1 35 0
	movi.n	a8, 0xe
	bltu	a8, a2, .L6
	.loc 1 39 0
	l32r	a8, .LC1
	addx4	a2, a2, a8
.LVL4:
	s32i.n	a3, a2, 0
	.loc 1 41 0
	movi.n	a2, 0
	retw.n
.LVL5:
.L6:
	.loc 1 36 0
	movi.n	a2, -1
.LVL6:
	.loc 1 42 0
	retw.n
.LFE27:
	.size	btc_profile_cb_set, .-btc_profile_cb_set
	.section	.text.btc_profile_cb_get,"ax",@progbits
	.literal_position
	.literal .LC2, btc_profile_cb_tab
	.align	4
	.global	btc_profile_cb_get
	.type	btc_profile_cb_get, @function
btc_profile_cb_get:
.LFB28:
	.loc 1 45 0
.LVL7:
	entry	sp, 32
.LCFI2:
	.loc 1 46 0
	movi.n	a8, 0xe
	bltu	a8, a2, .L9
	.loc 1 50 0
	l32r	a8, .LC2
	addx4	a2, a2, a8
.LVL8:
	l32i.n	a2, a2, 0
	retw.n
.LVL9:
.L9:
	.loc 1 47 0
	movi.n	a2, 0
.LVL10:
	.loc 1 51 0
	retw.n
.LFE28:
	.size	btc_profile_cb_get, .-btc_profile_cb_get
	.section	.bss.btc_profile_cb_tab,"aw",@nobits
	.align	4
	.type	btc_profile_cb_tab, @object
	.size	btc_profile_cb_tab, 60
btc_profile_cb_tab:
	.zero	60
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
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/include/btc/btc_task.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1fa
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0xc
	.4byte	.LASF39
	.4byte	.LASF40
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.4byte	0x73
	.4byte	0x9c
	.uleb128 0x6
	.4byte	0x85
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x8
	.byte	0x4
	.4byte	0x53
	.byte	0x5
	.byte	0x2a
	.4byte	0x120
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x5
	.byte	0x43
	.4byte	0xb3
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x1
	.byte	0x18
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14e
	.uleb128 0xb
	.string	"i"
	.byte	0x1
	.byte	0x1a
	.4byte	0x4c
	.4byte	.LLST0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x1
	.byte	0x21
	.4byte	0x4c
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x183
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x1
	.byte	0x21
	.4byte	0x120
	.4byte	.LLST1
	.uleb128 0xe
	.string	"cb"
	.byte	0x1
	.byte	0x21
	.4byte	0xa3
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x1
	.byte	0x2c
	.4byte	0xa3
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ac
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x1
	.byte	0x2c
	.4byte	0x120
	.4byte	.LLST2
	.byte	0
	.uleb128 0xf
	.4byte	.LASF35
	.byte	0x4
	.2byte	0x2cc
	.4byte	0x1bf
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x10
	.4byte	0x8c
	.uleb128 0xf
	.4byte	.LASF36
	.byte	0x4
	.2byte	0x2cd
	.4byte	0x1d7
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	0x8c
	.uleb128 0x5
	.4byte	0xa3
	.4byte	0x1ec
	.uleb128 0x6
	.4byte	0x85
	.byte	0xe
	.byte	0
	.uleb128 0x11
	.4byte	.LASF37
	.byte	0x1
	.byte	0x16
	.4byte	0x1dc
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_profile_cb_tab
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF16:
	.string	"BTC_PID_DEV"
.LASF7:
	.string	"__uint8_t"
.LASF17:
	.string	"BTC_PID_GATTS"
.LASF22:
	.string	"BTC_PID_BLUFI"
.LASF9:
	.string	"UINT8"
.LASF3:
	.string	"short unsigned int"
.LASF34:
	.string	"btc_profile_cb_get"
.LASF32:
	.string	"profile_id"
.LASF38:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF24:
	.string	"BTC_PID_ALARM"
.LASF40:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF1:
	.string	"unsigned char"
.LASF39:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/core/btc_manage.c"
.LASF33:
	.string	"btc_profile_cb_set"
.LASF26:
	.string	"BTC_PID_PRF_QUE"
.LASF14:
	.string	"long unsigned int"
.LASF37:
	.string	"btc_profile_cb_tab"
.LASF25:
	.string	"BTC_PID_GAP_BT"
.LASF23:
	.string	"BTC_PID_DM_SEC"
.LASF28:
	.string	"BTC_PID_AVRC"
.LASF4:
	.string	"unsigned int"
.LASF31:
	.string	"btc_pid_t"
.LASF12:
	.string	"char"
.LASF8:
	.string	"uint8_t"
.LASF21:
	.string	"BTC_PID_SPPLIKE"
.LASF11:
	.string	"sizetype"
.LASF5:
	.string	"long long int"
.LASF35:
	.string	"bd_addr_any"
.LASF15:
	.string	"BTC_PID_MAIN_INIT"
.LASF30:
	.string	"BTC_PID_NUM"
.LASF27:
	.string	"BTC_PID_A2DP"
.LASF2:
	.string	"short int"
.LASF20:
	.string	"BTC_PID_BLE_HID"
.LASF18:
	.string	"BTC_PID_GATT_COMMON"
.LASF13:
	.string	"long int"
.LASF36:
	.string	"bd_addr_null"
.LASF41:
	.string	"esp_profile_cb_reset"
.LASF29:
	.string	"BTC_PID_SPP"
.LASF0:
	.string	"signed char"
.LASF10:
	.string	"_Bool"
.LASF6:
	.string	"long long unsigned int"
.LASF19:
	.string	"BTC_PID_GAP_BLE"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
