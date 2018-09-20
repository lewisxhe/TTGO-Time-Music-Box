	.file	"dbg_stubs.c"
	.text
.Ltext0:
	.section	.text.esp_dbg_stubs_data_free,"ax",@progbits
	.align	4
	.type	esp_dbg_stubs_data_free, @function
esp_dbg_stubs_data_free:
.LFB1:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/dbg_stubs.c"
	.loc 1 66 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 68 0
	mov.n	a10, a2
	call8	free
.LVL1:
	retw.n
.LFE1:
	.size	esp_dbg_stubs_data_free, .-esp_dbg_stubs_data_free
	.section	.text.esp_dbg_stubs_data_alloc,"ax",@progbits
	.align	4
	.type	esp_dbg_stubs_data_alloc, @function
esp_dbg_stubs_data_alloc:
.LFB0:
	.loc 1 58 0
.LVL2:
	entry	sp, 32
.LCFI1:
	.loc 1 60 0
	mov.n	a10, a2
	call8	malloc
.LVL3:
	.loc 1 63 0
	mov.n	a2, a10
.LVL4:
	retw.n
.LFE0:
	.size	esp_dbg_stubs_data_alloc, .-esp_dbg_stubs_data_alloc
	.section	.text.esp_dbg_stubs_init,"ax",@progbits
	.literal_position
	.literal .LC0, s_stub_code_buf
	.literal .LC1, s_dbg_stubs_ctl_data
	.literal .LC2, s_stub_min_stack
	.literal .LC3, esp_dbg_stubs_data_alloc
	.literal .LC4, esp_dbg_stubs_data_free
	.literal .LC5, s_stub_entry
	.literal .LC6, 1048596
	.align	4
	.global	esp_dbg_stubs_init
	.type	esp_dbg_stubs_init, @function
esp_dbg_stubs_init:
.LFB2:
	.loc 1 73 0
	entry	sp, 32
.LCFI2:
	.loc 1 74 0
	l32r	a8, .LC1
	l32r	a9, .LC0
	s32i.n	a9, a8, 0
	.loc 1 75 0
	l32r	a9, .LC2
	s32i.n	a9, a8, 4
	.loc 1 76 0
	l32r	a9, .LC3
	s32i.n	a9, a8, 8
	.loc 1 77 0
	l32r	a9, .LC4
	s32i.n	a9, a8, 12
	.loc 1 79 0
	l32r	a11, .LC5
	s32i.n	a8, a11, 0
	.loc 1 80 0
	l32r	a10, .LC6
	call8	eri_write
.LVL5:
	retw.n
.LFE2:
	.size	esp_dbg_stubs_init, .-esp_dbg_stubs_init
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC7:
	.string	"esp_dbg_stubs"
	.align	4
.LC9:
	.string	"\033[0;31mE (%d) %s: Invalid stub id %d!\033[0m\n"
	.section	.text.esp_dbg_stub_entry_set,"ax",@progbits
	.literal_position
	.literal .LC8, .LC7
	.literal .LC10, .LC9
	.literal .LC11, s_stub_entry
	.align	4
	.global	esp_dbg_stub_entry_set
	.type	esp_dbg_stub_entry_set, @function
esp_dbg_stub_entry_set:
.LFB3:
	.loc 1 85 0
.LVL6:
	entry	sp, 32
.LCFI3:
	.loc 1 86 0
	beqi	a2, 1, .L5
	.loc 1 87 0 discriminator 2
	call8	esp_log_timestamp
.LVL7:
	l32r	a11, .LC8
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC10
	movi.n	a10, 1
	call8	esp_log_write
.LVL8:
	.loc 1 88 0 discriminator 2
	movi	a2, 0x102
.LVL9:
	retw.n
.LVL10:
.L5:
	.loc 1 90 0
	l32r	a8, .LC11
	addx4	a2, a2, a8
.LVL11:
	s32i.n	a3, a2, 0
	.loc 1 92 0
	movi.n	a2, 0
	.loc 1 93 0
	retw.n
.LFE3:
	.size	esp_dbg_stub_entry_set, .-esp_dbg_stub_entry_set
	.section	.iram1,"aw",@progbits
	.align	4
	.type	s_stub_code_buf, @object
	.size	s_stub_code_buf, 32
s_stub_code_buf:
	.zero	32
	.section	.bss.s_stub_min_stack,"aw",@nobits
	.align	4
	.type	s_stub_min_stack, @object
	.size	s_stub_min_stack, 2048
s_stub_min_stack:
	.zero	2048
	.section	.bss.s_stub_entry,"aw",@nobits
	.align	4
	.type	s_stub_entry, @object
	.size	s_stub_entry, 8
s_stub_entry:
	.zero	8
	.section	.bss.s_dbg_stubs_ctl_data,"aw",@nobits
	.align	4
	.type	s_dbg_stubs_ctl_data, @object
	.size	s_dbg_stubs_ctl_data, 16
s_dbg_stubs_ctl_data:
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI0-.LFB1
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI1-.LFB0
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI2-.LFB2
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI3-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_dbg_stubs.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/xtensa-debug-module/include/eri.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x39e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0xc
	.4byte	.LASF47
	.4byte	.LASF48
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
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x19
	.4byte	0x57
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x1a
	.4byte	0x69
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x2c
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x2d
	.4byte	0x5e
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc3
	.uleb128 0x7
	.4byte	0xb6
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x18
	.4byte	0x89
	.uleb128 0x8
	.byte	0x4
	.4byte	0x69
	.byte	0x5
	.byte	0x16
	.4byte	0xf8
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x5
	.byte	0x1c
	.4byte	0xd3
	.uleb128 0x8
	.byte	0x4
	.4byte	0x69
	.byte	0x6
	.byte	0x1f
	.4byte	0x134
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.byte	0x10
	.byte	0x1
	.byte	0x2d
	.4byte	0x16d
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x1
	.byte	0x2e
	.4byte	0x94
	.byte	0
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x1
	.byte	0x2f
	.4byte	0x94
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x1
	.byte	0x30
	.4byte	0x94
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x1
	.byte	0x31
	.4byte	0x94
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x1
	.byte	0x41
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a9
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x1
	.byte	0x41
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xe
	.4byte	.LASF35
	.4byte	0x1b9
	.uleb128 0xf
	.4byte	.LVL1
	.4byte	0x36a
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0xb6
	.4byte	0x1b9
	.uleb128 0x12
	.4byte	0xa8
	.byte	0x17
	.byte	0
	.uleb128 0x7
	.4byte	0x1a9
	.uleb128 0x13
	.4byte	.LASF50
	.byte	0x1
	.byte	0x39
	.4byte	0x9f
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x20b
	.uleb128 0x14
	.4byte	.LASF34
	.byte	0x1
	.byte	0x39
	.4byte	0x94
	.4byte	.LLST0
	.uleb128 0xe
	.4byte	.LASF35
	.4byte	0x21b
	.uleb128 0x15
	.string	"p"
	.byte	0x1
	.byte	0x3c
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xf
	.4byte	.LVL3
	.4byte	0x375
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0xb6
	.4byte	0x21b
	.uleb128 0x12
	.4byte	0xa8
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.4byte	0x20b
	.uleb128 0x16
	.4byte	.LASF51
	.byte	0x1
	.byte	0x48
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x25b
	.uleb128 0xe
	.4byte	.LASF35
	.4byte	0x26b
	.uleb128 0xf
	.4byte	.LVL5
	.4byte	0x380
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x100014
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	s_stub_entry
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0xb6
	.4byte	0x26b
	.uleb128 0x12
	.4byte	0xa8
	.byte	0x12
	.byte	0
	.uleb128 0x7
	.4byte	0x25b
	.uleb128 0x17
	.4byte	.LASF52
	.byte	0x1
	.byte	0x54
	.4byte	0xc8
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2de
	.uleb128 0x18
	.string	"id"
	.byte	0x1
	.byte	0x54
	.4byte	0xf8
	.4byte	.LLST1
	.uleb128 0xd
	.4byte	.LASF36
	.byte	0x1
	.byte	0x54
	.4byte	0x94
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.4byte	.LVL7
	.4byte	0x38b
	.uleb128 0xf
	.4byte	.LVL8
	.4byte	0x396
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"TAG"
	.byte	0x1
	.byte	0x25
	.4byte	0x2f0
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC7
	.byte	0x9f
	.uleb128 0x7
	.4byte	0xbd
	.uleb128 0x1a
	.4byte	.LASF37
	.byte	0x1
	.byte	0x32
	.4byte	0x134
	.uleb128 0x5
	.byte	0x3
	.4byte	s_dbg_stubs_ctl_data
	.uleb128 0x11
	.4byte	0x94
	.4byte	0x316
	.uleb128 0x12
	.4byte	0xa8
	.byte	0x1
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF38
	.byte	0x1
	.byte	0x34
	.4byte	0x306
	.uleb128 0x5
	.byte	0x3
	.4byte	s_stub_entry
	.uleb128 0x11
	.4byte	0x7e
	.4byte	0x338
	.uleb128 0x1b
	.4byte	0xa8
	.2byte	0x7ff
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF39
	.byte	0x1
	.byte	0x35
	.4byte	0x327
	.uleb128 0x5
	.byte	0x3
	.4byte	s_stub_min_stack
	.uleb128 0x11
	.4byte	0x7e
	.4byte	0x359
	.uleb128 0x12
	.4byte	0xa8
	.byte	0x1f
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF40
	.byte	0x1
	.byte	0x36
	.4byte	0x349
	.uleb128 0x5
	.byte	0x3
	.4byte	s_stub_code_buf
	.uleb128 0x1c
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x7
	.byte	0x5a
	.uleb128 0x1c
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x7
	.byte	0x65
	.uleb128 0x1c
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x8
	.byte	0x1c
	.uleb128 0x1c
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x6
	.byte	0x57
	.uleb128 0x1c
	.4byte	.LASF45
	.4byte	.LASF45
	.byte	0x6
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xc
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
	.uleb128 0x18
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF19:
	.string	"ESP_DBG_STUB_ENTRY_FIRST"
.LASF4:
	.string	"__uint8_t"
.LASF24:
	.string	"ESP_LOG_ERROR"
.LASF37:
	.string	"s_dbg_stubs_ctl_data"
.LASF18:
	.string	"ESP_DBG_STUB_CONTROL_DATA"
.LASF5:
	.string	"__int32_t"
.LASF35:
	.string	"__func__"
.LASF52:
	.string	"esp_dbg_stub_entry_set"
.LASF2:
	.string	"short int"
.LASF36:
	.string	"entry"
.LASF29:
	.string	"tramp_addr"
.LASF43:
	.string	"eri_write"
.LASF44:
	.string	"esp_log_timestamp"
.LASF48:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\esp32"
.LASF31:
	.string	"data_alloc"
.LASF30:
	.string	"min_stack_addr"
.LASF34:
	.string	"size"
.LASF15:
	.string	"long unsigned int"
.LASF33:
	.string	"addr"
.LASF12:
	.string	"uint32_t"
.LASF40:
	.string	"s_stub_code_buf"
.LASF1:
	.string	"unsigned char"
.LASF32:
	.string	"data_free"
.LASF17:
	.string	"esp_err_t"
.LASF6:
	.string	"__uint32_t"
.LASF26:
	.string	"ESP_LOG_INFO"
.LASF7:
	.string	"unsigned int"
.LASF27:
	.string	"ESP_LOG_DEBUG"
.LASF9:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint8_t"
.LASF39:
	.string	"s_stub_min_stack"
.LASF50:
	.string	"esp_dbg_stubs_data_alloc"
.LASF47:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/esp32/dbg_stubs.c"
.LASF25:
	.string	"ESP_LOG_WARN"
.LASF11:
	.string	"int32_t"
.LASF14:
	.string	"sizetype"
.LASF41:
	.string	"free"
.LASF8:
	.string	"long long int"
.LASF38:
	.string	"s_stub_entry"
.LASF46:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF16:
	.string	"char"
.LASF22:
	.string	"esp_dbg_stub_id_t"
.LASF20:
	.string	"ESP_DBG_STUB_ENTRY_GCOV"
.LASF23:
	.string	"ESP_LOG_NONE"
.LASF49:
	.string	"esp_dbg_stubs_data_free"
.LASF45:
	.string	"esp_log_write"
.LASF51:
	.string	"esp_dbg_stubs_init"
.LASF13:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF3:
	.string	"short unsigned int"
.LASF42:
	.string	"malloc"
.LASF28:
	.string	"ESP_LOG_VERBOSE"
.LASF21:
	.string	"ESP_DBG_STUB_ENTRY_MAX"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
