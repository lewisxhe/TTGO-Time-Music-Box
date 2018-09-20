	.file	"pm_trace.c"
	.text
.Ltext0:
	.section	.text.esp_pm_trace_init,"ax",@progbits
	.literal_position
	.literal .LC0, s_trace_io
	.align	4
	.global	esp_pm_trace_init
	.type	esp_pm_trace_init, @function
esp_pm_trace_init:
.LFB4:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/pm_trace.c"
	.loc 1 34 0
	entry	sp, 32
.LCFI0:
.LVL0:
.LBB2:
	.loc 1 35 0
	movi.n	a2, 0
	j	.L2
.LVL1:
.L4:
.LBB3:
	.loc 1 36 0
	l32r	a8, .LC0
	addx4	a8, a2, a8
	l32i.n	a8, a8, 0
	neg	a10, a8
	and	a10, a10, a8
	nsau	a10, a10
	neg	a10, a10
	addi	a10, a10, 32
.LVL2:
	.loc 1 37 0
	beqz.n	a10, .L3
	.loc 1 40 0
	movi.n	a11, 2
	addi.n	a10, a10, -1
.LVL3:
	call8	gpio_set_direction
.LVL4:
.L3:
.LBE3:
	.loc 1 35 0 discriminator 2
	addi.n	a2, a2, 1
.LVL5:
.L2:
	.loc 1 35 0 is_stmt 0 discriminator 1
	movi.n	a8, 0xb
	bgeu	a8, a2, .L4
.LBE2:
	.loc 1 42 0 is_stmt 1
	retw.n
.LFE4:
	.size	esp_pm_trace_init, .-esp_pm_trace_init
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC1, s_trace_io
	.literal .LC2, 1072971784
	.align	4
	.global	esp_pm_trace_enter
	.type	esp_pm_trace_enter, @function
esp_pm_trace_enter:
.LFB5:
	.loc 1 45 0
.LVL6:
	entry	sp, 32
.LCFI1:
.LBB4:
	.loc 1 46 0
	addx2	a2, a2, a3
.LVL7:
	l32r	a3, .LC1
.LVL8:
	addx4	a2, a2, a3
	l32i.n	a8, a2, 0
	l32r	a2, .LC2
	memw
	s32i.n	a8, a2, 0
	retw.n
.LBE4:
.LFE5:
	.size	esp_pm_trace_enter, .-esp_pm_trace_enter
	.literal_position
	.literal .LC3, s_trace_io
	.literal .LC4, 1072971788
	.align	4
	.global	esp_pm_trace_exit
	.type	esp_pm_trace_exit, @function
esp_pm_trace_exit:
.LFB6:
	.loc 1 50 0
.LVL9:
	entry	sp, 32
.LCFI2:
.LBB5:
	.loc 1 51 0
	addx2	a2, a2, a3
.LVL10:
	l32r	a3, .LC3
.LVL11:
	addx4	a2, a2, a3
	l32i.n	a8, a2, 0
	l32r	a2, .LC4
	memw
	s32i.n	a8, a2, 0
	retw.n
.LBE5:
.LFE6:
	.size	esp_pm_trace_exit, .-esp_pm_trace_exit
	.section	.dram1,"a",@progbits
	.align	4
	.type	s_trace_io, @object
	.size	s_trace_io, 48
s_trace_io:
	.word	16
	.word	32
	.word	65536
	.word	131072
	.word	262144
	.word	262144
	.word	524288
	.word	524288
	.word	33554432
	.word	67108864
	.word	134217728
	.word	134217728
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI0-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI1-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI2-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/pm_trace.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/gpio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x278
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0xc
	.4byte	.LASF36
	.4byte	.LASF37
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.4byte	0x5c
	.byte	0x2
	.byte	0x13
	.4byte	0x5c
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x5
	.4byte	.LASF12
	.byte	0x2
	.byte	0x1b
	.4byte	0x25
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x3
	.byte	0x1a
	.4byte	0x5c
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF14
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x4
	.byte	0x2d
	.4byte	0x91
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x5
	.byte	0xd8
	.4byte	0x5c
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF18
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF19
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF20
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF21
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF22
	.uleb128 0x2
	.byte	0x4
	.4byte	0x5c
	.byte	0x6
	.byte	0xbb
	.4byte	0x114
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.4byte	.LASF38
	.byte	0x1
	.byte	0x21
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a5
	.uleb128 0x8
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x9
	.string	"i"
	.byte	0x1
	.byte	0x23
	.4byte	0xb5
	.4byte	.LLST0
	.uleb128 0x8
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x9
	.string	"io"
	.byte	0x1
	.byte	0x24
	.4byte	0x8a
	.4byte	.LLST1
	.uleb128 0xa
	.4byte	.LVL4
	.4byte	0x26f
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x39
	.byte	0x4f
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	s_trace_io
	.byte	0x22
	.byte	0x6
	.byte	0x1f
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	s_trace_io
	.byte	0x22
	.byte	0x6
	.byte	0x1a
	.byte	0x12
	.byte	0x28
	.2byte	0x6
	.byte	0x13
	.byte	0x8
	.byte	0x20
	.byte	0x2f
	.2byte	0x14
	.byte	0x30
	.byte	0x16
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x1a
	.byte	0x28
	.2byte	0x9
	.byte	0x31
	.byte	0x24
	.byte	0x16
	.byte	0x23
	.uleb128 0x1
	.byte	0x16
	.byte	0x2f
	.2byte	0xffef
	.byte	0x13
	.byte	0x96
	.byte	0x1c
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x1
	.byte	0x2c
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e2
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x1
	.byte	0x2c
	.4byte	0x63
	.4byte	.LLST2
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x1
	.byte	0x2c
	.4byte	0x8a
	.4byte	.LLST3
	.uleb128 0xe
	.4byte	.LASF33
	.4byte	0x1f2
	.byte	0
	.uleb128 0xf
	.4byte	0xd5
	.4byte	0x1f2
	.uleb128 0x10
	.4byte	0xc7
	.byte	0x12
	.byte	0
	.uleb128 0x11
	.4byte	0x1e2
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x1
	.byte	0x31
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x234
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x1
	.byte	0x31
	.4byte	0x63
	.4byte	.LLST4
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x1
	.byte	0x31
	.4byte	0x8a
	.4byte	.LLST5
	.uleb128 0xe
	.4byte	.LASF33
	.4byte	0x244
	.byte	0
	.uleb128 0xf
	.4byte	0xd5
	.4byte	0x244
	.uleb128 0x10
	.4byte	0xc7
	.byte	0x11
	.byte	0
	.uleb128 0x11
	.4byte	0x234
	.uleb128 0xf
	.4byte	0x8a
	.4byte	0x259
	.uleb128 0x10
	.4byte	0xc7
	.byte	0xb
	.byte	0
	.uleb128 0x12
	.4byte	.LASF34
	.byte	0x1
	.byte	0x18
	.4byte	0x26a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_trace_io
	.uleb128 0x11
	.4byte	0x249
	.uleb128 0x13
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x6
	.2byte	0x158
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
	.uleb128 0x3
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xe
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x13
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
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL4-1
	.4byte	.LVL5
	.2byte	0x3b
	.byte	0x8
	.byte	0x20
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	s_trace_io
	.byte	0x22
	.byte	0x6
	.byte	0x1f
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	s_trace_io
	.byte	0x22
	.byte	0x6
	.byte	0x1a
	.byte	0x12
	.byte	0x28
	.2byte	0x6
	.byte	0x13
	.byte	0x8
	.byte	0x20
	.byte	0x2f
	.2byte	0x14
	.byte	0x30
	.byte	0x16
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x1a
	.byte	0x28
	.2byte	0x9
	.byte	0x31
	.byte	0x24
	.byte	0x16
	.byte	0x23
	.uleb128 0x1
	.byte	0x16
	.byte	0x2f
	.2byte	0xffef
	.byte	0x13
	.byte	0x96
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL8
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL11
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF39:
	.string	"gpio_set_direction"
.LASF17:
	.string	"size_t"
.LASF25:
	.string	"GPIO_MODE_OUTPUT"
.LASF11:
	.string	"short unsigned int"
.LASF0:
	.string	"ESP_PM_TRACE_IDLE"
.LASF37:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\esp32"
.LASF33:
	.string	"__func__"
.LASF8:
	.string	"signed char"
.LASF32:
	.string	"esp_pm_trace_exit"
.LASF9:
	.string	"unsigned char"
.LASF30:
	.string	"core_id"
.LASF5:
	.string	"ESP_PM_TRACE_SLEEP"
.LASF31:
	.string	"esp_pm_trace_enter"
.LASF26:
	.string	"GPIO_MODE_OUTPUT_OD"
.LASF4:
	.string	"ESP_PM_TRACE_ISR_HOOK"
.LASF20:
	.string	"long unsigned int"
.LASF13:
	.string	"__uint32_t"
.LASF1:
	.string	"ESP_PM_TRACE_TICK"
.LASF29:
	.string	"event"
.LASF6:
	.string	"ESP_PM_TRACE_TYPE_MAX"
.LASF7:
	.string	"unsigned int"
.LASF15:
	.string	"long long unsigned int"
.LASF38:
	.string	"esp_pm_trace_init"
.LASF36:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/esp32/pm_trace.c"
.LASF35:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF2:
	.string	"ESP_PM_TRACE_FREQ_SWITCH"
.LASF19:
	.string	"sizetype"
.LASF14:
	.string	"long long int"
.LASF21:
	.string	"char"
.LASF24:
	.string	"GPIO_MODE_INPUT"
.LASF10:
	.string	"short int"
.LASF27:
	.string	"GPIO_MODE_INPUT_OUTPUT_OD"
.LASF23:
	.string	"GPIO_MODE_DISABLE"
.LASF34:
	.string	"s_trace_io"
.LASF16:
	.string	"uint32_t"
.LASF18:
	.string	"long int"
.LASF28:
	.string	"GPIO_MODE_INPUT_OUTPUT"
.LASF3:
	.string	"ESP_PM_TRACE_CCOMPARE_UPDATE"
.LASF12:
	.string	"esp_pm_trace_event_t"
.LASF22:
	.string	"_Bool"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
