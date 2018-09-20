	.file	"cache_err_int.c"
	.text
.Ltext0:
	.section	.text.esp_cache_err_int_init,"ax",@progbits
	.literal_position
	.literal .LC0, 33554432
	.literal .LC1, 1072694688
	.literal .LC2, 1032192
	.align	4
	.global	esp_cache_err_int_init
	.type	esp_cache_err_int_init, @function
esp_cache_err_int_init:
.LFB17:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/cache_err_int.c"
	.loc 1 35 0
	entry	sp, 32
.LCFI0:
.LBB12:
.LBB13:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portable.h"
	.loc 2 208 0
#APP
# 208 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portable.h" 1
	rsr.prid a2
 extui a2,a2,13,1
# 0 "" 2
#NO_APP
.LBE13:
.LBE12:
	.loc 1 37 0
	l32r	a10, .LC0
	call8	xt_ints_off
.LVL0:
	.loc 1 43 0
	movi.n	a12, 0x19
	movi.n	a11, 0x44
	mov.n	a10, a2
	call8	intr_matrix_set
.LVL1:
	.loc 1 54 0
	bnez.n	a2, .L2
.LVL2:
.LBB14:
.LBB15:
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/dport_access.h"
	.loc 3 172 0
	l32r	a3, .LC1
	mov.n	a10, a3
	call8	esp_dport_access_reg_read
.LVL3:
.LBE15:
.LBE14:
	.loc 1 55 0
	l32r	a2, .LC2
	or	a10, a10, a2
	memw
	s32i.n	a10, a3, 0
	j	.L3
.LVL4:
.L2:
.LBB16:
.LBB17:
	.loc 3 172 0
	l32r	a3, .LC1
	mov.n	a10, a3
	call8	esp_dport_access_reg_read
.LVL5:
.LBE17:
.LBE16:
	.loc 1 63 0
	movi.n	a2, 0x3f
	or	a10, a10, a2
	memw
	s32i.n	a10, a3, 0
.LVL6:
.L3:
	.loc 1 71 0
	l32r	a10, .LC0
	call8	xt_ints_on
.LVL7:
	retw.n
.LFE17:
	.size	esp_cache_err_int_init, .-esp_cache_err_int_init
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC3, 1072694268
	.literal .LC4, 32256
	.literal .LC5, 1072694308
	.align	4
	.global	esp_cache_err_get_cpuid
	.type	esp_cache_err_get_cpuid, @function
esp_cache_err_get_cpuid:
.LFB18:
	.loc 1 75 0
	entry	sp, 32
.LCFI1:
	.loc 1 76 0
	call8	esp_dport_access_int_pause
.LVL8:
.LBB18:
.LBB19:
	.loc 3 172 0
	l32r	a10, .LC3
	call8	esp_dport_access_reg_read
.LVL9:
.LBE19:
.LBE18:
	.loc 1 85 0
	l32r	a8, .LC4
	bany	a10, a8, .L6
.LVL10:
.LBB20:
.LBB21:
	.loc 3 172 0
	l32r	a10, .LC5
	call8	esp_dport_access_reg_read
.LVL11:
.LBE21:
.LBE20:
	.loc 1 97 0
	l32r	a2, .LC4
	bnone	a10, a2, .L7
	.loc 1 98 0
	movi.n	a2, 1
	retw.n
.LVL12:
.L6:
	.loc 1 86 0
	movi.n	a2, 0
	retw.n
.LVL13:
.L7:
	.loc 1 100 0
	movi.n	a2, -1
	.loc 1 101 0
	retw.n
.LFE18:
	.size	esp_cache_err_get_cpuid, .-esp_cache_err_get_cpuid
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
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI0-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI1-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
	.text
.Letext0:
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_dport_access.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/xtensa_api.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x289
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0xc
	.4byte	.LASF23
	.4byte	.LASF24
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
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x4
	.byte	0x1a
	.4byte	0x53
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
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x5
	.byte	0x2d
	.4byte	0x48
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF13
	.uleb128 0x5
	.4byte	.LASF25
	.byte	0x2
	.byte	0xce
	.4byte	0x68
	.byte	0x3
	.4byte	0xb1
	.uleb128 0x6
	.string	"id"
	.byte	0x2
	.byte	0xcf
	.4byte	0x41
	.byte	0
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x3
	.byte	0xa7
	.4byte	0x68
	.byte	0x3
	.4byte	0xcd
	.uleb128 0x8
	.string	"reg"
	.byte	0x3
	.byte	0xa7
	.4byte	0x68
	.byte	0
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x1
	.byte	0x22
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b0
	.uleb128 0xa
	.4byte	.LASF14
	.byte	0x1
	.byte	0x24
	.4byte	0x68
	.uleb128 0xb
	.4byte	0x96
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.byte	0x1
	.byte	0x24
	.4byte	0x110
	.uleb128 0xc
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.uleb128 0xd
	.4byte	0xa6
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xb1
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.byte	0x1
	.byte	0x37
	.4byte	0x13d
	.uleb128 0xe
	.4byte	0xc1
	.4byte	.LLST0
	.uleb128 0xf
	.4byte	.LVL3
	.4byte	0x254
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xb1
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.byte	0x1
	.byte	0x3f
	.4byte	0x16a
	.uleb128 0xe
	.4byte	0xc1
	.4byte	.LLST1
	.uleb128 0xf
	.4byte	.LVL5
	.4byte	0x254
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL0
	.4byte	0x25f
	.4byte	0x17f
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x40
	.byte	0x45
	.byte	0x24
	.byte	0
	.uleb128 0x11
	.4byte	.LVL1
	.4byte	0x26a
	.4byte	0x19e
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x44
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x49
	.byte	0
	.uleb128 0xf
	.4byte	.LVL7
	.4byte	0x276
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x40
	.byte	0x45
	.byte	0x24
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF28
	.byte	0x1
	.byte	0x4a
	.4byte	0x41
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x24f
	.uleb128 0x13
	.4byte	.LASF15
	.byte	0x1
	.byte	0x4d
	.4byte	0x24f
	.2byte	0x7e00
	.uleb128 0x14
	.4byte	.LASF16
	.byte	0x1
	.byte	0x59
	.4byte	0x24f
	.4byte	.LLST2
	.uleb128 0xb
	.4byte	0xb1
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.byte	0x1
	.byte	0x55
	.4byte	0x215
	.uleb128 0x15
	.4byte	0xc1
	.4byte	0x3ff003fc
	.uleb128 0xf
	.4byte	.LVL9
	.4byte	0x254
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff003fc
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xb1
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.byte	0x1
	.byte	0x61
	.4byte	0x245
	.uleb128 0xe
	.4byte	0xc1
	.4byte	.LLST3
	.uleb128 0xf
	.4byte	.LVL11
	.4byte	0x254
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff00424
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL8
	.4byte	0x281
	.byte	0
	.uleb128 0x17
	.4byte	0x68
	.uleb128 0x18
	.4byte	.LASF17
	.4byte	.LASF17
	.byte	0x6
	.byte	0x1e
	.uleb128 0x18
	.4byte	.LASF18
	.4byte	.LASF18
	.byte	0x7
	.byte	0x5f
	.uleb128 0x19
	.4byte	.LASF19
	.4byte	.LASF19
	.byte	0x8
	.2byte	0x21b
	.uleb128 0x18
	.4byte	.LASF20
	.4byte	.LASF20
	.byte	0x7
	.byte	0x54
	.uleb128 0x18
	.4byte	.LASF21
	.4byte	.LASF21
	.byte	0x6
	.byte	0x1b
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
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x13
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
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x19
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
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff005a0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff005a0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xa
	.2byte	0x7e00
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xa
	.2byte	0x7e00
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff00424
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LFE18
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff00424
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
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF23:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/esp32/cache_err_int.c"
.LASF26:
	.string	"DPORT_READ_PERI_REG"
.LASF28:
	.string	"esp_cache_err_get_cpuid"
.LASF24:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\esp32"
.LASF1:
	.string	"unsigned char"
.LASF7:
	.string	"__uint32_t"
.LASF17:
	.string	"esp_dport_access_reg_read"
.LASF14:
	.string	"core_id"
.LASF3:
	.string	"short unsigned int"
.LASF19:
	.string	"intr_matrix_set"
.LASF21:
	.string	"esp_dport_access_int_pause"
.LASF11:
	.string	"long unsigned int"
.LASF2:
	.string	"short int"
.LASF4:
	.string	"unsigned int"
.LASF6:
	.string	"long long unsigned int"
.LASF22:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF10:
	.string	"sizetype"
.LASF5:
	.string	"long long int"
.LASF27:
	.string	"esp_cache_err_int_init"
.LASF12:
	.string	"char"
.LASF25:
	.string	"xPortGetCoreID"
.LASF18:
	.string	"xt_ints_off"
.LASF8:
	.string	"uint32_t"
.LASF9:
	.string	"long int"
.LASF20:
	.string	"xt_ints_on"
.LASF15:
	.string	"pro_mask"
.LASF0:
	.string	"signed char"
.LASF16:
	.string	"app_mask"
.LASF13:
	.string	"_Bool"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
