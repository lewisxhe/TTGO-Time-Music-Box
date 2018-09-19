	.file	"hw_random.c"
	.text
.Ltext0:
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC0, 1610830148
	.literal .LC1, last_ccount$2905
	.align	4
	.global	esp_random
	.type	esp_random, @function
esp_random:
.LFB3:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/hw_random.c"
	.loc 1 26 0
	entry	sp, 32
.LCFI0:
	.loc 1 45 0
	call8	esp_clk_cpu_freq
.LVL0:
	mov.n	a2, a10
	call8	esp_clk_apb_freq
.LVL1:
	quos	a10, a2, a10
.LVL2:
	.loc 1 49 0
	movi.n	a9, 0
.LVL3:
.L2:
.LBB2:
	.loc 1 51 0 discriminator 1
#APP
# 51 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/hw_random.c" 1
	rsr.ccount a8
# 0 "" 2
.LVL4:
#NO_APP
.LBE2:
	mov.n	a2, a8
.LVL5:
.LBB3:
	.loc 1 52 0 discriminator 1
	l32r	a11, .LC0
	memw
	l32i.n	a11, a11, 0
.LBE3:
	xor	a9, a9, a11
.LVL6:
	.loc 1 53 0 discriminator 1
	l32r	a11, .LC1
	l32i.n	a11, a11, 0
	sub	a8, a8, a11
.LVL7:
	slli	a11, a10, 4
	bltu	a8, a11, .L2
	.loc 1 54 0
	l32r	a8, .LC1
	s32i.n	a2, a8, 0
.LBB4:
	.loc 1 55 0
	l32r	a2, .LC0
.LVL8:
	memw
	l32i.n	a2, a2, 0
.LBE4:
	.loc 1 56 0
	xor	a2, a9, a2
	retw.n
.LFE3:
	.size	esp_random, .-esp_random
	.section	.bss.last_ccount$2905,"aw",@nobits
	.align	4
	.type	last_ccount$2905, @object
	.size	last_ccount$2905, 4
last_ccount$2905:
	.zero	4
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI0-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_clk.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x141
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0xc
	.4byte	.LASF21
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
	.byte	0x2
	.byte	0x1a
	.4byte	0x4f
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
	.byte	0x3
	.byte	0x2d
	.4byte	0x44
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
	.4byte	.LASF22
	.byte	0x1
	.byte	0x19
	.4byte	0x64
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x119
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x1
	.byte	0x2d
	.4byte	0x64
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x1
	.byte	0x2f
	.4byte	0x64
	.uleb128 0x5
	.byte	0x3
	.4byte	last_ccount$2905
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x1
	.byte	0x30
	.4byte	0x64
	.4byte	.LLST0
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x1
	.byte	0x31
	.4byte	0x64
	.4byte	.LLST1
	.uleb128 0x8
	.4byte	.LASF23
	.4byte	0x129
	.uleb128 0x9
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x106
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x1
	.byte	0x33
	.4byte	0x3d
	.4byte	.LLST2
	.byte	0
	.uleb128 0xa
	.4byte	.LVL0
	.4byte	0x12e
	.uleb128 0xa
	.4byte	.LVL1
	.4byte	0x139
	.byte	0
	.uleb128 0xb
	.4byte	0x84
	.4byte	0x129
	.uleb128 0xc
	.4byte	0x76
	.byte	0xa
	.byte	0
	.uleb128 0xd
	.4byte	0x119
	.uleb128 0xe
	.4byte	.LASF18
	.4byte	.LASF18
	.byte	0x4
	.byte	0x34
	.uleb128 0xe
	.4byte	.LASF19
	.4byte	.LASF19
	.byte	0x4
	.byte	0x3f
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LFE3
	.2byte	0x5
	.byte	0x3
	.4byte	last_ccount$2905
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LFE3
	.2byte	0x5
	.byte	0x3
	.4byte	last_ccount$2905
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"long long int"
.LASF4:
	.string	"unsigned int"
.LASF7:
	.string	"__uint32_t"
.LASF20:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF13:
	.string	"cpu_to_apb_freq_ratio"
.LASF19:
	.string	"esp_clk_apb_freq"
.LASF11:
	.string	"long unsigned int"
.LASF16:
	.string	"result"
.LASF6:
	.string	"long long unsigned int"
.LASF21:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/esp32/hw_random.c"
.LASF1:
	.string	"unsigned char"
.LASF14:
	.string	"last_ccount"
.LASF12:
	.string	"char"
.LASF8:
	.string	"uint32_t"
.LASF9:
	.string	"long int"
.LASF15:
	.string	"ccount"
.LASF3:
	.string	"short unsigned int"
.LASF0:
	.string	"signed char"
.LASF17:
	.string	"__ccount"
.LASF2:
	.string	"short int"
.LASF18:
	.string	"esp_clk_cpu_freq"
.LASF23:
	.string	"__func__"
.LASF10:
	.string	"sizetype"
.LASF22:
	.string	"esp_random"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
