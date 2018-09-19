	.file	"sys.c"
	.text
.Ltext0:
	.section	.text.sys_msleep,"ax",@progbits
	.align	4
	.global	sys_msleep
	.type	sys_msleep, @function
sys_msleep:
.LFB15:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/core/sys.c"
	.loc 1 56 0
.LVL0:
	entry	sp, 48
.LCFI0:
	.loc 1 57 0
	beqz.n	a2, .L1
.LBB2:
	.loc 1 59 0
	movi.n	a11, 0
	mov.n	a10, sp
	call8	sys_sem_new
.LVL1:
	extui	a10, a10, 0, 8
.LVL2:
	.loc 1 60 0
	bnez.n	a10, .L1
	.loc 1 61 0
	mov.n	a11, a2
	mov.n	a10, sp
.LVL3:
	call8	sys_arch_sem_wait
.LVL4:
	.loc 1 62 0
	mov.n	a10, sp
	call8	sys_sem_free
.LVL5:
.L1:
	retw.n
.LBE2:
.LFE15:
	.size	sys_msleep, .-sys_msleep
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
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI0-.LFB15
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE0:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/queue.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/semphr.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/port/arch/sys_arch.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/port/arch/cc.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/err.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/sys.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x19a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0xc
	.4byte	.LASF27
	.4byte	.LASF28
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x11
	.4byte	0x45
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x1a
	.4byte	0x25
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x3
	.byte	0x14
	.4byte	0x3a
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x2d
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF15
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x4
	.byte	0x58
	.4byte	0x81
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x5
	.byte	0x4f
	.4byte	0xae
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x6
	.byte	0x2f
	.4byte	0xb9
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x7
	.byte	0x2f
	.4byte	0x91
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x7
	.byte	0x32
	.4byte	0x9c
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x8
	.byte	0x2f
	.4byte	0xcf
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x1
	.byte	0x37
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17c
	.uleb128 0x7
	.string	"ms"
	.byte	0x1
	.byte	0x37
	.4byte	0xda
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x8
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x1
	.byte	0x3a
	.4byte	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xa
	.string	"err"
	.byte	0x1
	.byte	0x3b
	.4byte	0xe5
	.4byte	.LLST0
	.uleb128 0xb
	.4byte	.LVL1
	.4byte	0x17c
	.4byte	0x150
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0xb
	.4byte	.LVL4
	.4byte	0x187
	.4byte	0x16a
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.4byte	.LVL5
	.4byte	0x192
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF23
	.4byte	.LASF23
	.byte	0x9
	.byte	0x93
	.uleb128 0xe
	.4byte	.LASF24
	.4byte	.LASF24
	.byte	0x9
	.byte	0xa0
	.uleb128 0xe
	.4byte	.LASF25
	.4byte	.LASF25
	.byte	0x9
	.byte	0xa3
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"__int8_t"
.LASF16:
	.string	"QueueHandle_t"
.LASF27:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/lwip/core/sys.c"
.LASF24:
	.string	"sys_arch_sem_wait"
.LASF19:
	.string	"s8_t"
.LASF26:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF13:
	.string	"int8_t"
.LASF21:
	.string	"err_t"
.LASF3:
	.string	"unsigned char"
.LASF11:
	.string	"long unsigned int"
.LASF1:
	.string	"short unsigned int"
.LASF17:
	.string	"SemaphoreHandle_t"
.LASF6:
	.string	"__uint32_t"
.LASF20:
	.string	"u32_t"
.LASF0:
	.string	"unsigned int"
.LASF12:
	.string	"char"
.LASF29:
	.string	"sys_msleep"
.LASF10:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF23:
	.string	"sys_sem_new"
.LASF28:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\lwip"
.LASF25:
	.string	"sys_sem_free"
.LASF4:
	.string	"short int"
.LASF14:
	.string	"uint32_t"
.LASF9:
	.string	"long int"
.LASF18:
	.string	"sys_sem_t"
.LASF2:
	.string	"signed char"
.LASF15:
	.string	"_Bool"
.LASF8:
	.string	"long long unsigned int"
.LASF22:
	.string	"delaysem"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
