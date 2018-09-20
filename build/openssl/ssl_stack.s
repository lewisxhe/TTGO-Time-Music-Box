	.file	"ssl_stack.c"
	.text
.Ltext0:
	.section	.text.OPENSSL_sk_new,"ax",@progbits
	.align	4
	.global	OPENSSL_sk_new
	.type	OPENSSL_sk_new, @function
OPENSSL_sk_new:
.LFB0:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/library/ssl_stack.c"
	.loc 1 29 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 33 0
	movi.n	a10, 0xc
	call8	ssl_mem_zalloc
.LVL1:
	mov.n	a3, a10
.LVL2:
	.loc 1 34 0
	beqz.n	a10, .L4
	.loc 1 39 0
	movi.n	a10, 0x10
	call8	ssl_mem_zalloc
.LVL3:
	.loc 1 40 0
	beqz.n	a10, .L3
	.loc 1 45 0
	s32i.n	a10, a3, 0
	.loc 1 46 0
	movi.n	a8, 4
	s32i.n	a8, a3, 4
	.loc 1 47 0
	s32i.n	a2, a3, 8
	.loc 1 49 0
	mov.n	a2, a3
.LVL4:
	retw.n
.LVL5:
.L3:
	.loc 1 52 0
	mov.n	a10, a3
.LVL6:
	call8	free
.LVL7:
	.loc 1 54 0
	movi.n	a2, 0
.LVL8:
	retw.n
.LVL9:
.L4:
	movi.n	a2, 0
.LVL10:
	.loc 1 55 0
	retw.n
.LFE0:
	.size	OPENSSL_sk_new, .-OPENSSL_sk_new
	.section	.text.OPENSSL_sk_new_null,"ax",@progbits
	.align	4
	.global	OPENSSL_sk_new_null
	.type	OPENSSL_sk_new_null, @function
OPENSSL_sk_new_null:
.LFB1:
	.loc 1 61 0
	entry	sp, 32
.LCFI1:
	.loc 1 62 0
	movi.n	a10, 0
	call8	OPENSSL_sk_new
.LVL11:
	.loc 1 63 0
	mov.n	a2, a10
	retw.n
.LFE1:
	.size	OPENSSL_sk_new_null, .-OPENSSL_sk_new_null
	.section	.text.OPENSSL_sk_free,"ax",@progbits
	.align	4
	.global	OPENSSL_sk_free
	.type	OPENSSL_sk_free, @function
OPENSSL_sk_free:
.LFB2:
	.loc 1 69 0
.LVL12:
	entry	sp, 32
.LCFI2:
	.loc 1 72 0
	l32i.n	a10, a2, 0
	call8	free
.LVL13:
	.loc 1 73 0
	mov.n	a10, a2
	call8	free
.LVL14:
	retw.n
.LFE2:
	.size	OPENSSL_sk_free, .-OPENSSL_sk_free
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
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/internal/ssl_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/openssl/include/platform/ssl_port.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/malloc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1f4
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0xc
	.4byte	.LASF21
	.4byte	.LASF22
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF1
	.byte	0x2
	.byte	0x27
	.4byte	0x37
	.uleb128 0x4
	.byte	0x4
	.4byte	0x3d
	.uleb128 0x5
	.4byte	0x51
	.4byte	0x51
	.uleb128 0x6
	.4byte	0x58
	.uleb128 0x6
	.4byte	0x58
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.byte	0x4
	.4byte	0x5e
	.uleb128 0x8
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2a
	.4byte	0x6a
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0xc
	.byte	0x2
	.byte	0x59
	.4byte	0x99
	.uleb128 0xa
	.4byte	.LASF3
	.byte	0x2
	.byte	0x5b
	.4byte	0x99
	.byte	0
	.uleb128 0xa
	.4byte	.LASF4
	.byte	0x2
	.byte	0x5d
	.4byte	0x51
	.byte	0x4
	.uleb128 0xb
	.string	"c"
	.byte	0x2
	.byte	0x5f
	.4byte	0x2c
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x9f
	.uleb128 0x4
	.byte	0x4
	.4byte	0xa5
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0xc
	.4byte	.LASF16
	.byte	0x1
	.byte	0x1c
	.4byte	0x176
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x176
	.uleb128 0xd
	.string	"c"
	.byte	0x1
	.byte	0x1c
	.4byte	0x2c
	.4byte	.LLST0
	.uleb128 0xe
	.4byte	.LASF15
	.byte	0x1
	.byte	0x1e
	.4byte	0x176
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.4byte	.LASF3
	.byte	0x1
	.byte	0x1f
	.4byte	0x99
	.4byte	.LLST1
	.uleb128 0x10
	.4byte	.LASF24
	.byte	0x1
	.byte	0x35
	.uleb128 0x11
	.4byte	.LASF25
	.byte	0x1
	.byte	0x33
	.4byte	.L3
	.uleb128 0x12
	.4byte	.LVL1
	.4byte	0x1e1
	.4byte	0x152
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x12
	.4byte	.LVL3
	.4byte	0x1e1
	.4byte	0x165
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x14
	.4byte	.LVL7
	.4byte	0x1ec
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x5f
	.uleb128 0xc
	.4byte	.LASF17
	.byte	0x1
	.byte	0x3c
	.4byte	0x176
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a5
	.uleb128 0x14
	.4byte	.LVL11
	.4byte	0xeb
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF26
	.byte	0x1
	.byte	0x44
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e1
	.uleb128 0x16
	.4byte	.LASF15
	.byte	0x1
	.byte	0x44
	.4byte	0x176
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x17
	.4byte	.LVL13
	.4byte	0x1ec
	.uleb128 0x14
	.4byte	.LVL14
	.4byte	0x1ec
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF18
	.4byte	.LASF18
	.byte	0x3
	.byte	0x1b
	.uleb128 0x18
	.4byte	.LASF19
	.4byte	.LASF19
	.byte	0x4
	.byte	0x2d
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x73
	.sleb128 8
	.4byte	.LVL5
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF13:
	.string	"long long int"
.LASF12:
	.string	"short unsigned int"
.LASF0:
	.string	"unsigned int"
.LASF26:
	.string	"OPENSSL_sk_free"
.LASF20:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF24:
	.string	"no_mem1"
.LASF25:
	.string	"no_mem2"
.LASF15:
	.string	"stack"
.LASF9:
	.string	"long unsigned int"
.LASF16:
	.string	"OPENSSL_sk_new"
.LASF14:
	.string	"long long unsigned int"
.LASF3:
	.string	"data"
.LASF17:
	.string	"OPENSSL_sk_new_null"
.LASF22:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\openssl"
.LASF10:
	.string	"signed char"
.LASF7:
	.string	"unsigned char"
.LASF1:
	.string	"OPENSSL_sk_compfunc"
.LASF2:
	.string	"OPENSSL_STACK"
.LASF6:
	.string	"long int"
.LASF4:
	.string	"num_alloc"
.LASF18:
	.string	"ssl_mem_zalloc"
.LASF8:
	.string	"sizetype"
.LASF21:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/openssl/library/ssl_stack.c"
.LASF19:
	.string	"free"
.LASF11:
	.string	"short int"
.LASF5:
	.string	"char"
.LASF23:
	.string	"stack_st"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
