	.file	"xtensa_overlay_os_hook.c"
	.text
.Ltext0:
	.section	.text.xt_overlay_init_os,"ax",@progbits
	.literal_position
	.literal .LC0, xt_overlay_mutex
	.align	4
	.global	xt_overlay_init_os
	.type	xt_overlay_init_os, @function
xt_overlay_init_os:
.LFB14:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/xtensa_overlay_os_hook.c"
	.loc 1 42 0
	entry	sp, 32
.LCFI0:
	.loc 1 46 0
	movi.n	a10, 1
	call8	xQueueCreateMutex
.LVL0:
	l32r	a8, .LC0
	s32i.n	a10, a8, 0
	retw.n
.LFE14:
	.size	xt_overlay_init_os, .-xt_overlay_init_os
	.section	.text.xt_overlay_lock,"ax",@progbits
	.literal_position
	.literal .LC1, xt_overlay_mutex
	.align	4
	.global	xt_overlay_lock
	.type	xt_overlay_lock, @function
xt_overlay_lock:
.LFB15:
	.loc 1 54 0
	entry	sp, 32
.LCFI1:
	.loc 1 55 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	l32r	a8, .LC1
	l32i.n	a10, a8, 0
	call8	xQueueGenericReceive
.LVL1:
	retw.n
.LFE15:
	.size	xt_overlay_lock, .-xt_overlay_lock
	.section	.text.xt_overlay_unlock,"ax",@progbits
	.literal_position
	.literal .LC2, xt_overlay_mutex
	.align	4
	.global	xt_overlay_unlock
	.type	xt_overlay_unlock, @function
xt_overlay_unlock:
.LFB16:
	.loc 1 63 0
	entry	sp, 32
.LCFI2:
	.loc 1 64 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	l32r	a8, .LC2
	l32i.n	a10, a8, 0
	call8	xQueueGenericSend
.LVL2:
	retw.n
.LFE16:
	.size	xt_overlay_unlock, .-xt_overlay_unlock
	.section	.bss.xt_overlay_mutex,"aw",@nobits
	.align	4
	.type	xt_overlay_mutex, @object
	.size	xt_overlay_mutex, 4
xt_overlay_mutex:
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
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI0-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI1-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI2-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/queue.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/semphr.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x18f
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
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x3
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x2d
	.4byte	0x5a
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF15
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x4
	.byte	0x6f
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x4
	.byte	0x76
	.4byte	0x9c
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x5
	.byte	0x58
	.4byte	0x81
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x6
	.byte	0x4f
	.4byte	0xc4
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x1
	.byte	0x29
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xff
	.uleb128 0x7
	.4byte	.LVL0
	.4byte	0x16e
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x1
	.byte	0x35
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12e
	.uleb128 0x7
	.4byte	.LVL1
	.4byte	0x17a
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x1
	.byte	0x3e
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15d
	.uleb128 0x7
	.4byte	.LVL2
	.4byte	0x186
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x1
	.byte	0x21
	.4byte	0xcf
	.uleb128 0x5
	.byte	0x3
	.4byte	xt_overlay_mutex
	.uleb128 0xa
	.4byte	.LASF23
	.4byte	.LASF23
	.byte	0x5
	.2byte	0x578
	.uleb128 0xa
	.4byte	.LASF24
	.4byte	.LASF24
	.byte	0x5
	.2byte	0x38a
	.uleb128 0xa
	.4byte	.LASF25
	.4byte	.LASF25
	.byte	0x5
	.2byte	0x265
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
	.uleb128 0x8
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
	.uleb128 0xe
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF28:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\freertos"
.LASF5:
	.string	"__uint8_t"
.LASF17:
	.string	"TickType_t"
.LASF22:
	.string	"xt_overlay_unlock"
.LASF18:
	.string	"QueueHandle_t"
.LASF29:
	.string	"xt_overlay_mutex"
.LASF20:
	.string	"xt_overlay_init_os"
.LASF3:
	.string	"unsigned char"
.LASF11:
	.string	"long unsigned int"
.LASF24:
	.string	"xQueueGenericReceive"
.LASF1:
	.string	"short unsigned int"
.LASF27:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/freertos/xtensa_overlay_os_hook.c"
.LASF6:
	.string	"__uint32_t"
.LASF19:
	.string	"SemaphoreHandle_t"
.LASF4:
	.string	"short int"
.LASF0:
	.string	"unsigned int"
.LASF8:
	.string	"long long unsigned int"
.LASF13:
	.string	"uint8_t"
.LASF21:
	.string	"xt_overlay_lock"
.LASF26:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF10:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF12:
	.string	"char"
.LASF25:
	.string	"xQueueGenericSend"
.LASF14:
	.string	"uint32_t"
.LASF9:
	.string	"long int"
.LASF23:
	.string	"xQueueCreateMutex"
.LASF2:
	.string	"signed char"
.LASF15:
	.string	"_Bool"
.LASF16:
	.string	"BaseType_t"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
