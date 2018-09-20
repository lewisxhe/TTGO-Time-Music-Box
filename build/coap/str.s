	.file	"str.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"coap_new_string: malloc\n"
	.section	.text.coap_new_string,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.align	4
	.global	coap_new_string
	.type	coap_new_string, @function
coap_new_string:
.LFB34:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/coap/libcoap/src/str.c"
	.loc 1 17 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
.LBB6:
.LBB7:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/coap/libcoap/include/coap/mem.h"
	.loc 2 71 0
	addi.n	a11, a2, 9
.LVL2:
	movi.n	a10, 0
	call8	coap_malloc_type
.LVL3:
.LBE7:
.LBE6:
	.loc 1 19 0
	bnez.n	a10, .L2
	.loc 1 21 0
	l32r	a11, .LC1
	movi.n	a10, 2
	call8	coap_log_impl
.LVL4:
	.loc 1 23 0
	movi.n	a2, 0
.LVL5:
	retw.n
.LVL6:
.L2:
	.loc 1 26 0
	movi.n	a2, 0
.LVL7:
	s8i	a2, a10, 0
	s8i	a2, a10, 1
	s8i	a2, a10, 2
	s8i	a2, a10, 3
	.loc 1 27 0
	addi.n	a2, a10, 8
	s32i.n	a2, a10, 4
	.loc 1 28 0
	mov.n	a2, a10
	.loc 1 29 0
	retw.n
.LFE34:
	.size	coap_new_string, .-coap_new_string
	.section	.text.coap_delete_string,"ax",@progbits
	.align	4
	.global	coap_delete_string
	.type	coap_delete_string, @function
coap_delete_string:
.LFB35:
	.loc 1 31 0
.LVL8:
	entry	sp, 32
.LCFI1:
.LVL9:
.LBB8:
.LBB9:
	.loc 2 78 0
	mov.n	a11, a2
	movi.n	a10, 0
	call8	coap_free_type
.LVL10:
	retw.n
.LBE9:
.LBE8:
.LFE35:
	.size	coap_delete_string, .-coap_delete_string
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
	.uleb128 0x20
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
	.uleb128 0x20
	.align	4
.LEFDE2:
	.text
.Letext0:
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/coap/libcoap/include/coap/debug.h"
	.file 4 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/coap/libcoap/include/coap/str.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x26a
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
	.4byte	.LASF21
	.byte	0x4
	.byte	0xd8
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
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
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4c
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF11
	.uleb128 0x7
	.byte	0x4
	.4byte	0x30
	.byte	0x3
	.byte	0x1a
	.4byte	0xd0
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x6
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.byte	0x5
	.byte	0xf
	.4byte	0xef
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x5
	.byte	0x10
	.4byte	0x25
	.byte	0
	.uleb128 0xb
	.string	"s"
	.byte	0x5
	.byte	0x11
	.4byte	0x7f
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.string	"str"
	.byte	0x5
	.byte	0x12
	.4byte	0xd0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x30
	.byte	0x2
	.byte	0x1d
	.4byte	0x149
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x6
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x7
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x9
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0xa
	.byte	0
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x2
	.byte	0x46
	.4byte	0x76
	.byte	0x3
	.4byte	0x165
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x2
	.byte	0x46
	.4byte	0x25
	.byte	0
	.uleb128 0xf
	.4byte	.LASF42
	.byte	0x2
	.byte	0x4d
	.byte	0x3
	.4byte	0x17d
	.uleb128 0xe
	.4byte	.LASF34
	.byte	0x2
	.byte	0x4d
	.4byte	0x76
	.byte	0
	.uleb128 0x10
	.4byte	.LASF43
	.byte	0x1
	.byte	0x11
	.4byte	0x1f9
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f9
	.uleb128 0x11
	.4byte	.LASF33
	.byte	0x1
	.byte	0x11
	.4byte	0x25
	.4byte	.LLST0
	.uleb128 0x12
	.string	"s"
	.byte	0x1
	.byte	0x12
	.4byte	0x1f9
	.uleb128 0x13
	.4byte	0x149
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0x1
	.byte	0x12
	.4byte	0x1e0
	.uleb128 0x14
	.4byte	0x159
	.4byte	.LLST1
	.uleb128 0x15
	.4byte	.LVL3
	.4byte	0x24c
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 9
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL4
	.4byte	0x257
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xef
	.uleb128 0x17
	.4byte	.LASF44
	.byte	0x1
	.byte	0x1f
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x24c
	.uleb128 0x18
	.string	"s"
	.byte	0x1
	.byte	0x1f
	.4byte	0x1f9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x19
	.4byte	0x165
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.byte	0x20
	.uleb128 0x1a
	.4byte	0x171
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x15
	.4byte	.LVL10
	.4byte	0x262
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x2
	.byte	0x37
	.uleb128 0x1b
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x3
	.byte	0x37
	.uleb128 0x1b
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x2
	.byte	0x41
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x16
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x3
	.byte	0x72
	.sleb128 9
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3-1
	.4byte	.LVL5
	.2byte	0x3
	.byte	0x72
	.sleb128 9
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x9
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x3
	.byte	0x72
	.sleb128 9
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LFE34
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x9
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
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF37:
	.string	"coap_free_type"
.LASF21:
	.string	"size_t"
.LASF31:
	.string	"COAP_RESOURCE"
.LASF41:
	.string	"coap_malloc"
.LASF1:
	.string	"short unsigned int"
.LASF19:
	.string	"LOG_DEBUG"
.LASF38:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF22:
	.string	"COAP_STRING"
.LASF44:
	.string	"coap_delete_string"
.LASF15:
	.string	"LOG_ERR"
.LASF16:
	.string	"LOG_WARNING"
.LASF43:
	.string	"coap_new_string"
.LASF27:
	.string	"COAP_CONTEXT"
.LASF9:
	.string	"long unsigned int"
.LASF36:
	.string	"coap_log_impl"
.LASF30:
	.string	"COAP_PDU_BUF"
.LASF28:
	.string	"COAP_ENDPOINT"
.LASF3:
	.string	"unsigned char"
.LASF24:
	.string	"COAP_ATTRIBUTE_VALUE"
.LASF39:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/coap/libcoap/src/str.c"
.LASF26:
	.string	"COAP_NODE"
.LASF13:
	.string	"LOG_ALERT"
.LASF25:
	.string	"COAP_PACKET"
.LASF42:
	.string	"coap_free"
.LASF17:
	.string	"LOG_NOTICE"
.LASF0:
	.string	"unsigned int"
.LASF12:
	.string	"LOG_EMERG"
.LASF14:
	.string	"LOG_CRIT"
.LASF10:
	.string	"char"
.LASF8:
	.string	"sizetype"
.LASF5:
	.string	"long long int"
.LASF34:
	.string	"object"
.LASF35:
	.string	"coap_malloc_type"
.LASF4:
	.string	"short int"
.LASF29:
	.string	"COAP_PDU"
.LASF40:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\coap"
.LASF18:
	.string	"LOG_INFO"
.LASF7:
	.string	"long int"
.LASF2:
	.string	"signed char"
.LASF23:
	.string	"COAP_ATTRIBUTE_NAME"
.LASF33:
	.string	"size"
.LASF11:
	.string	"_Bool"
.LASF20:
	.string	"length"
.LASF6:
	.string	"long long unsigned int"
.LASF32:
	.string	"COAP_RESOURCEATTR"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
