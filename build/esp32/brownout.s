	.file	"brownout.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC1:
	.string	"\r\nBrownout detector was triggered\r\n\r\n"
	.section	.text.rtc_brownout_isr_handler,"ax",@progbits
	.literal_position
	.literal .LC0, 1072988232
	.literal .LC2, .LC1
	.align	4
	.type	rtc_brownout_isr_handler, @function
rtc_brownout_isr_handler:
.LFB18:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/brownout.c"
	.loc 1 35 0
	entry	sp, 32
.LCFI0:
.LBB5:
	.loc 1 40 0
	movi	a9, 0x80
	l32r	a8, .LC0
	memw
	s32i.n	a9, a8, 0
.LBE5:
.LBB6:
.LBB7:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portable.h"
	.loc 2 208 0
#APP
# 208 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
.LVL0:
#NO_APP
.LBE7:
.LBE6:
	.loc 1 44 0
	movi.n	a9, 0
	movi.n	a10, 1
	movnez	a10, a9, a8
	call8	esp_cpu_stall
.LVL1:
	.loc 1 45 0
	l32r	a10, .LC2
	call8	ets_printf
.LVL2:
	.loc 1 46 0
	call8	esp_restart_noos
.LVL3:
.LFE18:
	.size	rtc_brownout_isr_handler, .-rtc_brownout_isr_handler
	.section	.rodata.str1.4
	.align	4
.LC6:
	.string	"rtc_isr_register(rtc_brownout_isr_handler, NULL, RTC_CNTL_BROWN_OUT_INT_ENA_M)"
	.align	4
.LC9:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/esp32/brownout.c"
	.section	.text.esp_brownout_init,"ax",@progbits
	.literal_position
	.literal .LC3, 1072988372
	.literal .LC4, 1073905664
	.literal .LC5, rtc_brownout_isr_handler
	.literal .LC7, .LC6
	.literal .LC8, __func__$4796
	.literal .LC10, .LC9
	.literal .LC11, 1072988220
	.align	4
	.global	esp_brownout_init
	.type	esp_brownout_init, @function
esp_brownout_init:
.LFB19:
	.loc 1 50 0
	entry	sp, 32
.LCFI1:
.LBB8:
	.loc 1 51 0
	l32r	a9, .LC4
	l32r	a8, .LC3
	memw
	s32i.n	a9, a8, 0
.LBE8:
.LBB9:
	.loc 1 58 0
	movi	a12, 0x80
	movi.n	a11, 0
	l32r	a10, .LC5
	call8	rtc_isr_register
.LVL4:
	.loc 1 58 0
	beqz.n	a10, .L3
	.loc 1 58 0 is_stmt 0 discriminator 1
	l32r	a14, .LC7
	l32r	a13, .LC8
	movi.n	a12, 0x3a
	l32r	a11, .LC10
	call8	_esp_error_check_failed
.LVL5:
.L3:
.LBE9:
.LBB10:
	.loc 1 60 0 is_stmt 1
	l32r	a9, .LC11
	memw
	l32i.n	a10, a9, 0
.LVL6:
	movi	a8, 0x80
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	retw.n
.LBE10:
.LFE19:
	.size	esp_brownout_init, .-esp_brownout_init
	.section	.rodata.__func__$4796,"a",@progbits
	.align	4
	.type	__func__$4796, @object
	.size	__func__$4796, 18
__func__$4796:
	.string	"esp_brownout_init"
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
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI0-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI1-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
	.text
.Letext0:
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/cpu.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_system.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/rtc_cntl.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x22a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0xc
	.4byte	.LASF24
	.4byte	.LASF25
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
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
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x3
	.byte	0x19
	.4byte	0x4c
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x3
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
	.byte	0x4
	.byte	0x2c
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0x2d
	.4byte	0x53
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x5
	.byte	0x18
	.4byte	0x73
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF16
	.uleb128 0x5
	.4byte	.LASF26
	.byte	0x2
	.byte	0xce
	.4byte	0x7e
	.byte	0x3
	.4byte	0xd2
	.uleb128 0x6
	.string	"id"
	.byte	0x2
	.byte	0xcf
	.4byte	0x4c
	.byte	0
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x1
	.byte	0x22
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x141
	.uleb128 0x8
	.4byte	.LASF17
	.4byte	0x151
	.uleb128 0x9
	.4byte	0xb7
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0x1
	.byte	0x2c
	.4byte	0x117
	.uleb128 0xa
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0xb
	.4byte	0xc7
	.4byte	.LLST0
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LVL1
	.4byte	0x1f6
	.uleb128 0xd
	.4byte	.LVL2
	.4byte	0x201
	.4byte	0x137
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0xc
	.4byte	.LVL3
	.4byte	0x20c
	.byte	0
	.uleb128 0xf
	.4byte	0x9e
	.4byte	0x151
	.uleb128 0x10
	.4byte	0x90
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.4byte	0x141
	.uleb128 0x12
	.4byte	.LASF28
	.byte	0x1
	.byte	0x31
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e1
	.uleb128 0x13
	.4byte	.LASF17
	.4byte	0x1f1
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4796
	.uleb128 0xa
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x14
	.4byte	.LASF29
	.byte	0x1
	.byte	0x3a
	.4byte	0xa5
	.4byte	.LLST1
	.uleb128 0xd
	.4byte	.LVL4
	.4byte	0x217
	.4byte	0x1b4
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	rtc_brownout_isr_handler
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.byte	0
	.uleb128 0x15
	.4byte	.LVL5
	.4byte	0x222
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x3a
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4796
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	0x9e
	.4byte	0x1f1
	.uleb128 0x10
	.4byte	0x90
	.byte	0x11
	.byte	0
	.uleb128 0x11
	.4byte	0x1e1
	.uleb128 0x16
	.4byte	.LASF18
	.4byte	.LASF18
	.byte	0x6
	.byte	0x50
	.uleb128 0x16
	.4byte	.LASF19
	.4byte	.LASF19
	.byte	0x7
	.byte	0xde
	.uleb128 0x16
	.4byte	.LASF20
	.4byte	.LASF20
	.byte	0x8
	.byte	0x50
	.uleb128 0x16
	.4byte	.LASF21
	.4byte	.LASF21
	.byte	0x9
	.byte	0x25
	.uleb128 0x16
	.4byte	.LASF22
	.4byte	.LASF22
	.byte	0x5
	.byte	0x4f
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
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x87
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
	.uleb128 0x8
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF17:
	.string	"__func__"
.LASF4:
	.string	"__int32_t"
.LASF21:
	.string	"rtc_isr_register"
.LASF28:
	.string	"esp_brownout_init"
.LASF25:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\esp32"
.LASF22:
	.string	"_esp_error_check_failed"
.LASF0:
	.string	"signed char"
.LASF1:
	.string	"unsigned char"
.LASF13:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF5:
	.string	"__uint32_t"
.LASF15:
	.string	"esp_err_t"
.LASF2:
	.string	"short int"
.LASF6:
	.string	"unsigned int"
.LASF8:
	.string	"long long unsigned int"
.LASF27:
	.string	"rtc_brownout_isr_handler"
.LASF19:
	.string	"ets_printf"
.LASF9:
	.string	"int32_t"
.LASF23:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF12:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF20:
	.string	"esp_restart_noos"
.LASF14:
	.string	"char"
.LASF26:
	.string	"xPortGetCoreID"
.LASF29:
	.string	"__err_rc"
.LASF10:
	.string	"uint32_t"
.LASF11:
	.string	"long int"
.LASF18:
	.string	"esp_cpu_stall"
.LASF16:
	.string	"_Bool"
.LASF24:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/esp32/brownout.c"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
