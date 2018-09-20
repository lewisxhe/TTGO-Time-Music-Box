	.file	"nghttp2_priority_spec.c"
	.text
.Ltext0:
	.section	.text.nghttp2_priority_spec_init,"ax",@progbits
	.align	4
	.global	nghttp2_priority_spec_init
	.type	nghttp2_priority_spec_init, @function
nghttp2_priority_spec_init:
.LFB0:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/nghttp/nghttp2/lib/nghttp2_priority_spec.c"
	.loc 1 29 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 30 0
	s32i.n	a3, a2, 0
	.loc 1 31 0
	s32i.n	a4, a2, 4
	.loc 1 32 0
	movi.n	a8, 0
	movi.n	a9, 1
	movnez	a8, a9, a5
	mov.n	a5, a8
.LVL1:
	s8i	a8, a2, 8
	retw.n
.LFE0:
	.size	nghttp2_priority_spec_init, .-nghttp2_priority_spec_init
	.section	.text.nghttp2_priority_spec_default_init,"ax",@progbits
	.align	4
	.global	nghttp2_priority_spec_default_init
	.type	nghttp2_priority_spec_default_init, @function
nghttp2_priority_spec_default_init:
.LFB1:
	.loc 1 35 0
.LVL2:
	entry	sp, 32
.LCFI1:
	.loc 1 36 0
	movi.n	a8, 0
	s32i.n	a8, a2, 0
	.loc 1 37 0
	movi.n	a9, 0x10
	s32i.n	a9, a2, 4
	.loc 1 38 0
	s8i	a8, a2, 8
	retw.n
.LFE1:
	.size	nghttp2_priority_spec_default_init, .-nghttp2_priority_spec_default_init
	.section	.text.nghttp2_priority_spec_check_default,"ax",@progbits
	.align	4
	.global	nghttp2_priority_spec_check_default
	.type	nghttp2_priority_spec_check_default, @function
nghttp2_priority_spec_check_default:
.LFB2:
	.loc 1 41 0
.LVL3:
	entry	sp, 32
.LCFI2:
	.loc 1 42 0
	l32i.n	a8, a2, 0
	.loc 1 43 0
	bnez.n	a8, .L5
	.loc 1 43 0 is_stmt 0 discriminator 1
	l32i.n	a8, a2, 4
	.loc 1 42 0 is_stmt 1 discriminator 1
	bnei	a8, 16, .L6
	.loc 1 43 0 discriminator 4
	l8ui	a2, a2, 8
.LVL4:
	beqz.n	a2, .L7
	.loc 1 43 0 is_stmt 0
	movi.n	a2, 0
	retw.n
.LVL5:
.L5:
	movi.n	a2, 0
.LVL6:
	retw.n
.LVL7:
.L6:
	movi.n	a2, 0
.LVL8:
	retw.n
.L7:
	movi.n	a2, 1
	.loc 1 44 0 is_stmt 1
	retw.n
.LFE2:
	.size	nghttp2_priority_spec_check_default, .-nghttp2_priority_spec_check_default
	.section	.text.nghttp2_priority_spec_normalize_weight,"ax",@progbits
	.align	4
	.global	nghttp2_priority_spec_normalize_weight
	.type	nghttp2_priority_spec_normalize_weight, @function
nghttp2_priority_spec_normalize_weight:
.LFB3:
	.loc 1 46 0
.LVL9:
	entry	sp, 32
.LCFI3:
	.loc 1 47 0
	l32i.n	a8, a2, 4
	bgei	a8, 1, .L9
	.loc 1 48 0
	movi.n	a8, 1
	s32i.n	a8, a2, 4
	retw.n
.L9:
	.loc 1 49 0
	movi	a9, 0x100
	bge	a9, a8, .L8
	.loc 1 50 0
	s32i.n	a9, a2, 4
.L8:
	retw.n
.LFE3:
	.size	nghttp2_priority_spec_normalize_weight, .-nghttp2_priority_spec_normalize_weight
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
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/nghttp/nghttp2/lib/includes/nghttp2/nghttp2.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1a7
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x2c
	.4byte	0x4c
	.uleb128 0x5
	.byte	0xc
	.byte	0x4
	.2byte	0x3bf
	.4byte	0xd6
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x4
	.2byte	0x3c4
	.4byte	0x9a
	.byte	0
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x4
	.2byte	0x3c8
	.4byte	0x9a
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x4
	.2byte	0x3cc
	.4byte	0x8f
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x3cd
	.4byte	0xa5
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x1
	.byte	0x1b
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12e
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x1
	.byte	0x1b
	.4byte	0x12e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x1
	.byte	0x1c
	.4byte	0x9a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x1
	.byte	0x1c
	.4byte	0x9a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x1
	.byte	0x1d
	.4byte	0x57
	.4byte	.LLST0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xd6
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x1
	.byte	0x23
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x157
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x1
	.byte	0x23
	.4byte	0x12e
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x1
	.byte	0x29
	.4byte	0x57
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x180
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x1
	.byte	0x29
	.4byte	0x180
	.4byte	.LLST1
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x186
	.uleb128 0xd
	.4byte	0xd6
	.uleb128 0xe
	.4byte	.LASF26
	.byte	0x1
	.byte	0x2e
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x1
	.byte	0x2e
	.4byte	0x12e
	.uleb128 0x1
	.byte	0x52
	.byte	0
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL1
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LFE2
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
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
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF7:
	.string	"long long int"
.LASF6:
	.string	"unsigned int"
.LASF17:
	.string	"exclusive"
.LASF21:
	.string	"nghttp2_priority_spec_default_init"
.LASF22:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF15:
	.string	"stream_id"
.LASF23:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/nghttp/nghttp2/lib/nghttp2_priority_spec.c"
.LASF19:
	.string	"pri_spec"
.LASF11:
	.string	"long unsigned int"
.LASF18:
	.string	"nghttp2_priority_spec"
.LASF8:
	.string	"long long unsigned int"
.LASF4:
	.string	"__uint8_t"
.LASF25:
	.string	"nghttp2_priority_spec_check_default"
.LASF26:
	.string	"nghttp2_priority_spec_normalize_weight"
.LASF13:
	.string	"uint8_t"
.LASF1:
	.string	"unsigned char"
.LASF12:
	.string	"char"
.LASF9:
	.string	"long int"
.LASF14:
	.string	"int32_t"
.LASF20:
	.string	"nghttp2_priority_spec_init"
.LASF3:
	.string	"short unsigned int"
.LASF0:
	.string	"signed char"
.LASF5:
	.string	"__int32_t"
.LASF2:
	.string	"short int"
.LASF16:
	.string	"weight"
.LASF24:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\nghttp"
.LASF10:
	.string	"sizetype"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
