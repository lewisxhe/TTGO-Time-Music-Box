	.file	"encode.c"
	.text
.Ltext0:
	.section	.text.coap_fls,"ax",@progbits
	.align	4
	.global	coap_fls
	.type	coap_fls, @function
coap_fls:
.LFB32:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/coap/libcoap/src/encode.c"
	.loc 1 17 0
.LVL0:
	entry	sp, 32
.LCFI0:
	mov.n	a8, a2
.LVL1:
	.loc 1 19 0
	movi.n	a2, 0
.LVL2:
	j	.L2
.LVL3:
.L3:
	.loc 1 20 0 discriminator 3
	srli	a8, a8, 1
.LVL4:
	.loc 1 19 0 discriminator 3
	addi.n	a2, a2, 1
.LVL5:
.L2:
	.loc 1 19 0 is_stmt 0 discriminator 1
	bnez.n	a8, .L3
	.loc 1 22 0 is_stmt 1
	retw.n
.LFE32:
	.size	coap_fls, .-coap_fls
	.section	.text.coap_decode_var_bytes,"ax",@progbits
	.align	4
	.global	coap_decode_var_bytes
	.type	coap_decode_var_bytes, @function
coap_decode_var_bytes:
.LFB33:
	.loc 1 25 0
.LVL6:
	entry	sp, 32
.LCFI1:
.LVL7:
	.loc 1 26 0
	movi.n	a8, 0
	.loc 1 27 0
	mov.n	a9, a8
	j	.L5
.LVL8:
.L6:
	.loc 1 28 0 discriminator 3
	slli	a8, a8, 8
.LVL9:
	add.n	a10, a2, a9
	l8ui	a10, a10, 0
	add.n	a8, a8, a10
.LVL10:
	.loc 1 27 0 discriminator 3
	addi.n	a9, a9, 1
.LVL11:
.L5:
	.loc 1 27 0 is_stmt 0 discriminator 1
	bltu	a9, a3, .L6
	.loc 1 31 0 is_stmt 1
	mov.n	a2, a8
.LVL12:
	retw.n
.LFE33:
	.size	coap_decode_var_bytes, .-coap_decode_var_bytes
	.section	.text.coap_encode_var_bytes,"ax",@progbits
	.align	4
	.global	coap_encode_var_bytes
	.type	coap_encode_var_bytes, @function
coap_encode_var_bytes:
.LFB34:
	.loc 1 34 0
.LVL13:
	entry	sp, 32
.LCFI2:
.LVL14:
	.loc 1 37 0
	mov.n	a11, a3
	movi.n	a10, 0
	j	.L8
.LVL15:
.L10:
	.loc 1 38 0 discriminator 3
	srli	a11, a11, 8
.LVL16:
	.loc 1 37 0 discriminator 3
	addi.n	a10, a10, 1
.LVL17:
.L8:
	.loc 1 37 0 is_stmt 0 discriminator 1
	movi.n	a9, 1
	movi.n	a8, 0
	movnez	a8, a9, a11
	extui	a8, a8, 0, 8
	bltui	a10, 4, .L9
	movi.n	a9, 0
.L9:
	bany	a8, a9, .L10
	mov.n	a8, a10
	j	.L11
.LVL18:
.L12:
	.loc 1 42 0 is_stmt 1
	add.n	a8, a2, a9
	s8i	a3, a8, 0
	.loc 1 43 0
	srli	a3, a3, 8
.LVL19:
	.loc 1 41 0
	mov.n	a8, a9
.LVL20:
.L11:
	addi.n	a9, a8, -1
.LVL21:
	bnez.n	a8, .L12
	.loc 1 47 0
	mov.n	a2, a10
.LVL22:
	retw.n
.LFE34:
	.size	coap_encode_var_bytes, .-coap_encode_var_bytes
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
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI0-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI1-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI2-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x155
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF14
	.byte	0xc
	.4byte	.LASF15
	.4byte	.LASF16
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x4
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF11
	.uleb128 0x5
	.4byte	.LASF12
	.byte	0x1
	.byte	0x11
	.4byte	0x41
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xba
	.uleb128 0x6
	.string	"i"
	.byte	0x1
	.byte	0x11
	.4byte	0x48
	.4byte	.LLST0
	.uleb128 0x7
	.string	"n"
	.byte	0x1
	.byte	0x12
	.4byte	0x41
	.4byte	.LLST1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x1
	.byte	0x19
	.4byte	0x48
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10a
	.uleb128 0x6
	.string	"buf"
	.byte	0x1
	.byte	0x19
	.4byte	0x72
	.4byte	.LLST2
	.uleb128 0x8
	.string	"len"
	.byte	0x1
	.byte	0x19
	.4byte	0x48
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x7
	.string	"i"
	.byte	0x1
	.byte	0x1a
	.4byte	0x48
	.4byte	.LLST3
	.uleb128 0x7
	.string	"n"
	.byte	0x1
	.byte	0x1a
	.4byte	0x48
	.4byte	.LLST4
	.byte	0
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x1
	.byte	0x22
	.4byte	0x48
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x6
	.string	"buf"
	.byte	0x1
	.byte	0x22
	.4byte	0x72
	.4byte	.LLST5
	.uleb128 0x6
	.string	"val"
	.byte	0x1
	.byte	0x22
	.4byte	0x48
	.4byte	.LLST6
	.uleb128 0x7
	.string	"n"
	.byte	0x1
	.byte	0x23
	.4byte	0x48
	.4byte	.LLST7
	.uleb128 0x7
	.string	"i"
	.byte	0x1
	.byte	0x23
	.4byte	0x48
	.4byte	.LLST8
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LFE33
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL10
	.4byte	.LFE33
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL13
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL13
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL19
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL15
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL21
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x59
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
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"long long int"
.LASF4:
	.string	"unsigned int"
.LASF15:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/coap/libcoap/src/encode.c"
.LASF17:
	.string	"coap_encode_var_bytes"
.LASF16:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\coap"
.LASF14:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF9:
	.string	"long unsigned int"
.LASF6:
	.string	"long long unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF10:
	.string	"char"
.LASF7:
	.string	"long int"
.LASF12:
	.string	"coap_fls"
.LASF11:
	.string	"_Bool"
.LASF3:
	.string	"short unsigned int"
.LASF0:
	.string	"signed char"
.LASF2:
	.string	"short int"
.LASF8:
	.string	"sizetype"
.LASF13:
	.string	"coap_decode_var_bytes"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
