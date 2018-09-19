	.file	"coap_time.c"
	.text
.Ltext0:
	.section	.text.coap_clock_init,"ax",@progbits
	.literal_position
	.literal .LC0, coap_clock_offset
	.align	4
	.global	coap_clock_init
	.type	coap_clock_init, @function
coap_clock_init:
.LFB34:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/coap/libcoap/src/coap_time.c"
	.loc 1 27 0
	entry	sp, 48
.LCFI0:
	.loc 1 33 0
	movi.n	a11, 0
	mov.n	a10, sp
	call8	gettimeofday
.LVL0:
	.loc 1 36 0
	l32r	a8, .LC0
	l32i.n	a9, sp, 0
	s32i.n	a9, a8, 0
	retw.n
.LFE34:
	.size	coap_clock_init, .-coap_clock_init
	.section	.text.coap_ticks,"ax",@progbits
	.literal_position
	.literal .LC1, coap_clock_offset
	.align	4
	.global	coap_ticks
	.type	coap_ticks, @function
coap_ticks:
.LFB35:
	.loc 1 49 0
.LVL1:
	entry	sp, 48
.LCFI1:
	.loc 1 66 0
	movi.n	a11, 0
	mov.n	a10, sp
	call8	gettimeofday
.LVL2:
	.loc 1 73 0
	l32i.n	a8, sp, 4
	addmi	a8, a8, 0x200
	srli	a8, a8, 10
.LVL3:
	.loc 1 78 0
	l32r	a9, .LC1
	l32i.n	a10, a9, 0
	l32i.n	a9, sp, 0
	sub	a10, a9, a10
	slli	a9, a10, 5
	sub	a9, a9, a10
	addx4	a9, a9, a10
	slli	a10, a9, 3
	add.n	a8, a10, a8
.LVL4:
	s32i.n	a8, a2, 0
.LVL5:
	retw.n
.LFE35:
	.size	coap_ticks, .-coap_ticks
	.section	.text.coap_ticks_to_rt,"ax",@progbits
	.literal_position
	.literal .LC2, 274877907
	.literal .LC3, coap_clock_offset
	.align	4
	.global	coap_ticks_to_rt
	.type	coap_ticks_to_rt, @function
coap_ticks_to_rt:
.LFB36:
	.loc 1 82 0
.LVL6:
	entry	sp, 32
.LCFI2:
	.loc 1 83 0
	l32r	a8, .LC2
	muluh	a2, a2, a8
.LVL7:
	srli	a2, a2, 6
	l32r	a8, .LC3
	l32i.n	a8, a8, 0
	.loc 1 84 0
	add.n	a2, a2, a8
	retw.n
.LFE36:
	.size	coap_ticks_to_rt, .-coap_ticks_to_rt
	.section	.bss.coap_clock_offset,"aw",@nobits
	.align	4
	.type	coap_clock_offset, @object
	.size	coap_clock_offset, 4
coap_clock_offset:
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
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI0-.LFB34
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI1-.LFB35
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI2-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/time.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/coap/libcoap/include/coap/coap_time.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1a2
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0xc
	.4byte	.LASF22
	.4byte	.LASF23
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
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x2
	.byte	0x7a
	.4byte	0x5d
	.uleb128 0x5
	.4byte	.LASF12
	.byte	0x2
	.2byte	0x11d
	.4byte	0x5d
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x8
	.byte	0x3
	.byte	0x11
	.4byte	0xb5
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x3
	.byte	0x12
	.4byte	0x79
	.byte	0
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x3
	.byte	0x13
	.4byte	0x84
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF15
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x4
	.byte	0x54
	.4byte	0x6b
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x4
	.byte	0x59
	.4byte	0x79
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x1
	.byte	0x1b
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10a
	.uleb128 0x9
	.string	"tv"
	.byte	0x1
	.byte	0x20
	.4byte	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xa
	.4byte	.LVL0
	.4byte	0x19a
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x1
	.byte	0x31
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15c
	.uleb128 0xc
	.string	"t"
	.byte	0x1
	.byte	0x31
	.4byte	0x15c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xd
	.string	"tmp"
	.byte	0x1
	.byte	0x32
	.4byte	0x6b
	.4byte	.LLST0
	.uleb128 0x9
	.string	"tv"
	.byte	0x1
	.byte	0x41
	.4byte	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xa
	.4byte	.LVL2
	.4byte	0x19a
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0xbc
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0x1
	.byte	0x52
	.4byte	0xc7
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x189
	.uleb128 0x10
	.string	"t"
	.byte	0x1
	.byte	0x52
	.4byte	0xbc
	.4byte	.LLST1
	.byte	0
	.uleb128 0x11
	.4byte	.LASF20
	.byte	0x1
	.byte	0x11
	.4byte	0xc7
	.uleb128 0x5
	.byte	0x3
	.4byte	coap_clock_offset
	.uleb128 0x12
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x3
	.byte	0x4d
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
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
	.uleb128 0x12
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
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x9
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x23
	.uleb128 0x200
	.byte	0x3a
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LFE36
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
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF20:
	.string	"coap_clock_offset"
.LASF25:
	.string	"coap_ticks_to_rt"
.LASF22:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/coap/libcoap/src/coap_time.c"
.LASF18:
	.string	"coap_clock_init"
.LASF21:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF6:
	.string	"long long unsigned int"
.LASF3:
	.string	"unsigned char"
.LASF9:
	.string	"long unsigned int"
.LASF1:
	.string	"short unsigned int"
.LASF19:
	.string	"coap_ticks"
.LASF24:
	.string	"timeval"
.LASF16:
	.string	"coap_tick_t"
.LASF0:
	.string	"unsigned int"
.LASF10:
	.string	"char"
.LASF17:
	.string	"coap_time_t"
.LASF11:
	.string	"time_t"
.LASF14:
	.string	"tv_usec"
.LASF26:
	.string	"gettimeofday"
.LASF8:
	.string	"sizetype"
.LASF13:
	.string	"tv_sec"
.LASF5:
	.string	"long long int"
.LASF12:
	.string	"suseconds_t"
.LASF4:
	.string	"short int"
.LASF23:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\coap"
.LASF7:
	.string	"long int"
.LASF2:
	.string	"signed char"
.LASF15:
	.string	"_Bool"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
