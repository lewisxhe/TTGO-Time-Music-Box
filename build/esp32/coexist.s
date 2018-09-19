	.file	"coexist.c"
	.text
.Ltext0:
	.section	.text.esp_coex_version_get,"ax",@progbits
	.align	4
	.global	esp_coex_version_get
	.type	esp_coex_version_get, @function
esp_coex_version_get:
.LFB0:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/coexist.c"
	.loc 1 19 0
	entry	sp, 32
.LCFI0:
	.loc 1 20 0
	call8	coex_version_get
.LVL0:
	.loc 1 21 0
	mov.n	a2, a10
	retw.n
.LFE0:
	.size	esp_coex_version_get, .-esp_coex_version_get
	.section	.text.esp_coex_preference_set,"ax",@progbits
	.align	4
	.global	esp_coex_preference_set
	.type	esp_coex_preference_set, @function
esp_coex_preference_set:
.LFB1:
	.loc 1 24 0
.LVL1:
	entry	sp, 32
.LCFI1:
	.loc 1 25 0
	mov.n	a10, a2
	call8	coex_preference_set
.LVL2:
	.loc 1 26 0
	mov.n	a2, a10
.LVL3:
	retw.n
.LFE1:
	.size	esp_coex_preference_set, .-esp_coex_preference_set
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI1-.LFB1
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_coexist.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/coexist_internal.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x174
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0xc
	.4byte	.LASF29
	.4byte	.LASF30
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
	.4byte	.LASF7
	.byte	0x2
	.byte	0x19
	.4byte	0x4c
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
	.byte	0x2c
	.4byte	0x41
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
	.uleb128 0x5
	.byte	0x4
	.4byte	0x95
	.uleb128 0x6
	.4byte	0x88
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x18
	.4byte	0x68
	.uleb128 0x7
	.byte	0x4
	.4byte	0x53
	.byte	0x5
	.byte	0x1c
	.4byte	0xca
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x21
	.4byte	0xa5
	.uleb128 0x7
	.byte	0x4
	.4byte	0x53
	.byte	0x6
	.byte	0x18
	.4byte	0xfa
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x6
	.byte	0x1d
	.4byte	0xd5
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x1
	.byte	0x12
	.4byte	0x8f
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x128
	.uleb128 0xa
	.4byte	.LVL0
	.4byte	0x161
	.byte	0
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x1
	.byte	0x17
	.4byte	0x9a
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x161
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x1
	.byte	0x17
	.4byte	0xca
	.4byte	.LLST0
	.uleb128 0xc
	.4byte	.LVL2
	.4byte	0x16c
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x6
	.byte	0x3e
	.uleb128 0xe
	.4byte	.LASF27
	.4byte	.LASF27
	.byte	0x6
	.byte	0x47
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xa
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LFE1
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF21:
	.string	"COEX_PREFER_BALANCE"
.LASF7:
	.string	"__int32_t"
.LASF20:
	.string	"COEX_PREFER_BT"
.LASF28:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF30:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\esp32"
.LASF17:
	.string	"ESP_COEX_PREFER_NUM"
.LASF27:
	.string	"coex_preference_set"
.LASF16:
	.string	"ESP_COEX_PREFER_BALANCE"
.LASF1:
	.string	"unsigned char"
.LASF31:
	.string	"prefer"
.LASF11:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF25:
	.string	"esp_coex_preference_set"
.LASF13:
	.string	"esp_err_t"
.LASF18:
	.string	"esp_coex_prefer_t"
.LASF23:
	.string	"coex_prefer_t"
.LASF26:
	.string	"coex_version_get"
.LASF29:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/esp32/coexist.c"
.LASF4:
	.string	"unsigned int"
.LASF6:
	.string	"long long unsigned int"
.LASF8:
	.string	"int32_t"
.LASF15:
	.string	"ESP_COEX_PREFER_BT"
.LASF10:
	.string	"sizetype"
.LASF5:
	.string	"long long int"
.LASF24:
	.string	"esp_coex_version_get"
.LASF12:
	.string	"char"
.LASF14:
	.string	"ESP_COEX_PREFER_WIFI"
.LASF19:
	.string	"COEX_PREFER_WIFI"
.LASF2:
	.string	"short int"
.LASF9:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF22:
	.string	"COEX_PREFER_NUM"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
