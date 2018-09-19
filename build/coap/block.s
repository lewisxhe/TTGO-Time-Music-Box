	.file	"block.c"
	.text
.Ltext0:
	.section	.text.coap_opt_block_num,"ax",@progbits
	.align	4
	.global	coap_opt_block_num
	.type	coap_opt_block_num, @function
coap_opt_block_num:
.LFB41:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/coap/libcoap/src/block.c"
	.loc 1 26 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 30 0
	mov.n	a10, a2
	call8	coap_opt_length
.LVL2:
	.loc 1 32 0
	beqz.n	a10, .L5
	.loc 1 36 0
	bltui	a10, 2, .L6
	.loc 1 37 0
	mov.n	a10, a2
.LVL3:
	call8	coap_opt_value
.LVL4:
	mov.n	a3, a10
	.loc 1 38 0
	mov.n	a10, a2
	call8	coap_opt_length
.LVL5:
	.loc 1 37 0
	addi.n	a11, a10, -1
	mov.n	a10, a3
	call8	coap_decode_var_bytes
.LVL6:
	j	.L3
.LVL7:
.L6:
	.loc 1 27 0
	movi.n	a10, 0
.LVL8:
.L3:
	.loc 1 41 0
	slli	a3, a10, 4
	mov.n	a10, a2
.LVL9:
	call8	coap_opt_length
.LVL10:
	beqz.n	a10, .L7
	.loc 1 41 0 is_stmt 0 discriminator 1
	mov.n	a10, a2
	call8	coap_opt_value
.LVL11:
	mov.n	a4, a10
	mov.n	a10, a2
	call8	coap_opt_length
.LVL12:
	addi.n	a10, a10, -1
	add.n	a10, a4, a10
	j	.L4
.L7:
	.loc 1 41 0
	movi.n	a10, 0
.L4:
	.loc 1 41 0 discriminator 4
	l8ui	a2, a10, 0
.LVL13:
	srli	a2, a2, 4
	or	a2, a3, a2
	retw.n
.LVL14:
.L5:
	.loc 1 33 0 is_stmt 1
	movi.n	a2, 0
.LVL15:
	.loc 1 42 0
	retw.n
.LFE41:
	.size	coap_opt_block_num, .-coap_opt_block_num
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"block"
	.align	4
.LC3:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/coap/libcoap/src/block.c"
	.section	.text.coap_get_block,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC2, __func__$6472
	.literal .LC4, .LC3
	.literal .LC5, 1048575
	.align	4
	.global	coap_get_block
	.type	coap_get_block, @function
coap_get_block:
.LFB42:
	.loc 1 45 0
.LVL16:
	entry	sp, 64
.LCFI1:
	extui	a11, a3, 0, 16
	.loc 1 49 0
	bnez.n	a4, .L9
	.loc 1 49 0 is_stmt 0 discriminator 1
	l32r	a13, .LC1
	l32r	a12, .LC2
	movi.n	a11, 0x31
	l32r	a10, .LC4
	call8	__assert_func
.LVL17:
.L9:
	.loc 1 50 0 is_stmt 1
	movi.n	a8, 0
	s8i	a8, a4, 0
	s8i	a8, a4, 1
	s8i	a8, a4, 2
	s8i	a8, a4, 3
	s8i	a8, a4, 4
	s8i	a8, a4, 5
	s8i	a8, a4, 6
	s8i	a8, a4, 7
	.loc 1 52 0
	beqz.n	a2, .L15
	.loc 1 52 0 is_stmt 0 discriminator 1
	mov.n	a12, sp
	mov.n	a10, a2
	call8	coap_check_option
.LVL18:
	mov.n	a2, a10
.LVL19:
	beqz.n	a10, .L16
.LBB2:
	.loc 1 55 0 is_stmt 1
	call8	coap_opt_length
.LVL20:
	beqz.n	a10, .L17
	.loc 1 55 0 is_stmt 0 discriminator 1
	mov.n	a10, a2
	call8	coap_opt_length
.LVL21:
	beqz.n	a10, .L18
	.loc 1 55 0 discriminator 3
	mov.n	a10, a2
	call8	coap_opt_value
.LVL22:
	mov.n	a3, a10
.LVL23:
	mov.n	a10, a2
	call8	coap_opt_length
.LVL24:
	addi.n	a10, a10, -1
	add.n	a10, a3, a10
	j	.L12
.LVL25:
.L18:
	.loc 1 55 0
	movi.n	a10, 0
.LVL26:
.L12:
	.loc 1 55 0 discriminator 6
	l8ui	a8, a10, 0
	extui	a8, a8, 0, 3
	j	.L11
.LVL27:
.L17:
	.loc 1 55 0
	movi.n	a8, 0
.LVL28:
.L11:
	.loc 1 55 0 discriminator 8
	slli	a9, a8, 1
	l8ui	a10, a4, 4
	movi.n	a8, -0xf
	and	a8, a10, a8
	or	a8, a8, a9
	s8i	a8, a4, 4
	.loc 1 56 0 is_stmt 1 discriminator 8
	mov.n	a10, a2
	call8	coap_opt_length
.LVL29:
	beqz.n	a10, .L13
	.loc 1 56 0 is_stmt 0 discriminator 1
	mov.n	a10, a2
	call8	coap_opt_length
.LVL30:
	beqz.n	a10, .L19
	.loc 1 56 0 discriminator 2
	mov.n	a10, a2
	call8	coap_opt_value
.LVL31:
	mov.n	a3, a10
	mov.n	a10, a2
	call8	coap_opt_length
.LVL32:
	addi.n	a10, a10, -1
	add.n	a10, a3, a10
	j	.L14
.L19:
	.loc 1 56 0
	movi.n	a10, 0
.L14:
	.loc 1 56 0 discriminator 5
	l8ui	a8, a10, 0
	bbci	a8, 3, .L13
	.loc 1 57 0 is_stmt 1
	l8ui	a9, a4, 4
	movi.n	a8, 1
	or	a8, a9, a8
	s8i	a8, a4, 4
.L13:
	.loc 1 61 0
	mov.n	a10, a2
	call8	coap_opt_block_num
.LVL33:
	.loc 1 62 0
	l32r	a2, .LC5
.LVL34:
	bltu	a2, a10, .L20
	.loc 1 65 0
	s32i.n	a10, a4, 0
	.loc 1 66 0
	movi.n	a2, 1
	retw.n
.LVL35:
.L15:
.LBE2:
	.loc 1 69 0
	movi.n	a2, 0
.LVL36:
	retw.n
.LVL37:
.L16:
	movi.n	a2, 0
.LVL38:
	retw.n
.LVL39:
.L20:
.LBB3:
	.loc 1 63 0
	movi.n	a2, 0
.LBE3:
	.loc 1 70 0
	retw.n
.LFE42:
	.size	coap_get_block, .-coap_get_block
	.section	.rodata.str1.4
	.align	4
.LC6:
	.string	"pdu"
	.align	4
.LC10:
	.string	"illegal block requested\n"
	.align	4
.LC12:
	.string	"not enough space, even the smallest block does not fit"
	.align	4
.LC14:
	.string	"decrease block size for %zu to %d\n"
	.section	.text.coap_write_block_opt,"ax",@progbits
	.literal_position
	.literal .LC7, .LC6
	.literal .LC8, __func__$6484
	.literal .LC9, .LC3
	.literal .LC11, .LC10
	.literal .LC13, .LC12
	.literal .LC15, .LC14
	.align	4
	.global	coap_write_block_opt
	.type	coap_write_block_opt, @function
coap_write_block_opt:
.LFB43:
	.loc 1 74 0
.LVL40:
	entry	sp, 48
.LCFI2:
	extui	a3, a3, 0, 16
	.loc 1 78 0
	bnez.n	a4, .L22
	.loc 1 78 0 is_stmt 0 discriminator 1
	l32r	a13, .LC7
	l32r	a12, .LC8
	movi.n	a11, 0x4e
	l32r	a10, .LC9
	call8	__assert_func
.LVL41:
.L22:
	.loc 1 80 0 is_stmt 1
	l32i.n	a9, a2, 0
	l32i.n	a8, a2, 4
	extui	a8, a8, 1, 3
	addi.n	a8, a8, 4
	ssl	a8
	sll	a9, a9
.LVL42:
	.loc 1 81 0
	bltu	a9, a5, .L23
	.loc 1 82 0
	l32r	a11, .LC11
	movi.n	a10, 7
	call8	coap_log_impl
.LVL43:
	.loc 1 83 0
	movi.n	a2, -2
.LVL44:
	retw.n
.LVL45:
.L23:
	.loc 1 86 0
	l32i.n	a6, a4, 0
	l16ui	a10, a4, 10
	sub	a6, a6, a10
	addi	a6, a6, -4
.LVL46:
	.loc 1 87 0
	movi.n	a10, 1
	ssl	a8
	sll	a8, a10
.LVL47:
	.loc 1 90 0
	bltu	a6, a8, .L25
	.loc 1 91 0
	sub	a9, a5, a9
.LVL48:
	movi.n	a5, 1
.LVL49:
	bltu	a8, a9, .L26
	movi.n	a5, 0
.L26:
	extui	a5, a5, 0, 1
	l8ui	a8, a2, 4
.LVL50:
	movi.n	a6, -2
.LVL51:
	and	a6, a8, a6
	or	a5, a6, a5
	s8i	a5, a2, 4
.LVL52:
	j	.L27
.LVL53:
.L25:
	.loc 1 98 0
	sub	a9, a5, a9
.LVL54:
	bltu	a6, a9, .L28
	.loc 1 101 0
	l8ui	a6, a2, 4
.LVL55:
	movi.n	a5, -2
.LVL56:
	and	a5, a6, a5
	s8i	a5, a2, 4
.LVL57:
	j	.L27
.LVL58:
.L28:
.LBB4:
	.loc 1 106 0
	movi.n	a5, 0xf
.LVL59:
	bltu	a5, a6, .L29
	.loc 1 107 0
	l32r	a11, .LC13
	movi.n	a10, 7
	call8	coap_log_impl
.LVL60:
	.loc 1 108 0
	movi.n	a2, -3
.LVL61:
	retw.n
.LVL62:
.L29:
	.loc 1 110 0
	mov.n	a10, a6
	call8	coap_fls
.LVL63:
	addi	a13, a10, -5
	mov.n	a12, a6
	l32r	a11, .LC15
	movi.n	a10, 7
	call8	coap_log_impl
.LVL64:
	.loc 1 111 0
	l32i.n	a5, a2, 4
	extui	a5, a5, 1, 3
.LVL65:
	.loc 1 112 0
	mov.n	a10, a6
	call8	coap_fls
.LVL66:
	addi	a10, a10, -5
	extui	a10, a10, 0, 3
	slli	a9, a10, 1
	l8ui	a8, a2, 4
	movi.n	a6, -0xf
.LVL67:
	and	a6, a8, a6
	or	a8, a6, a9
	.loc 1 113 0
	movi.n	a6, 1
	or	a6, a8, a6
	s8i	a6, a2, 4
	.loc 1 114 0
	sub	a5, a5, a10
	l32i.n	a6, a2, 0
	ssl	a5
	sll	a5, a6
	s32i.n	a5, a2, 0
.L27:
.LBE4:
	.loc 1 119 0
	l32i.n	a6, a2, 0
	slli	a6, a6, 4
	.loc 1 120 0
	l32i.n	a8, a2, 4
	extui	a2, a8, 0, 1
.LVL68:
	slli	a2, a2, 3
	.loc 1 119 0
	or	a2, a2, a6
	.loc 1 121 0
	extui	a11, a8, 1, 3
	.loc 1 119 0
	or	a11, a11, a2
	mov.n	a10, sp
	call8	coap_encode_var_bytes
.LVL69:
	mov.n	a13, sp
	mov.n	a12, a10
	mov.n	a11, a3
	mov.n	a10, a4
	call8	coap_add_option
.LVL70:
	.loc 1 124 0
	movi.n	a2, 1
	.loc 1 125 0
	retw.n
.LFE43:
	.size	coap_write_block_opt, .-coap_write_block_opt
	.section	.text.coap_add_block,"ax",@progbits
	.align	4
	.global	coap_add_block
	.type	coap_add_block, @function
coap_add_block:
.LFB44:
	.loc 1 129 0
.LVL71:
	entry	sp, 32
.LCFI3:
	extui	a6, a6, 0, 8
	.loc 1 131 0
	addi.n	a6, a6, 4
.LVL72:
	ssl	a6
	sll	a5, a5
.LVL73:
	.loc 1 133 0
	bgeu	a5, a3, .L33
	.loc 1 137 0
	sub	a11, a3, a5
	ssr	a6
	srl	a3, a11
.LVL74:
	.loc 1 136 0
	beqz.n	a3, .L32
	.loc 1 137 0 discriminator 2
	movi.n	a3, 1
	ssl	a6
	sll	a11, a3
.L32:
	.loc 1 136 0 discriminator 4
	add.n	a12, a4, a5
	mov.n	a10, a2
	call8	coap_add_data
.LVL75:
	mov.n	a2, a10
.LVL76:
	retw.n
.LVL77:
.L33:
	.loc 1 134 0
	movi.n	a2, 0
.LVL78:
	.loc 1 139 0
	retw.n
.LFE44:
	.size	coap_add_block, .-coap_add_block
	.section	.rodata.__func__$6484,"a",@progbits
	.align	4
	.type	__func__$6484, @object
	.size	__func__$6484, 21
__func__$6484:
	.string	"coap_write_block_opt"
	.section	.rodata.__func__$6472,"a",@progbits
	.align	4
	.type	__func__$6472, @object
	.size	__func__$6472, 15
__func__$6472:
	.string	"coap_get_block"
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
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI0-.LFB41
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI1-.LFB42
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI2-.LFB43
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI3-.LFB44
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/coap/libcoap/include/coap/pdu.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/coap/libcoap/include/coap/option.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/coap/libcoap/include/coap/block.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/coap/libcoap/include/coap/encode.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/coap/libcoap/include/coap/debug.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x7b8
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0xc
	.4byte	.LASF67
	.4byte	.LASF68
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0x2
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
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x3
	.byte	0x16
	.4byte	0x37
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
	.uleb128 0x5
	.4byte	0x4c
	.4byte	0x8a
	.uleb128 0x6
	.4byte	0x8a
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x7
	.byte	0x4
	.4byte	0x4c
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x4
	.byte	0x21
	.4byte	0x5a
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF14
	.uleb128 0x8
	.byte	0x4
	.4byte	0x30
	.byte	0xa
	.byte	0x1a
	.4byte	0xf4
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.byte	0xb9
	.4byte	0x150
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x5
	.byte	0xba
	.4byte	0x30
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x5
	.byte	0xbb
	.4byte	0x30
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x5
	.byte	0xbc
	.4byte	0x30
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x5
	.byte	0xbd
	.4byte	0x30
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"id"
	.byte	0x5
	.byte	0xbf
	.4byte	0x37
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x5
	.byte	0xc0
	.4byte	0x150
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	0x4c
	.4byte	0x15f
	.uleb128 0xe
	.4byte	0x8a
	.byte	0
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0x5
	.byte	0xc1
	.4byte	0xf4
	.uleb128 0xa
	.byte	0x10
	.byte	0x5
	.byte	0xe3
	.4byte	0x1af
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x5
	.byte	0xe4
	.4byte	0x25
	.byte	0
	.uleb128 0xc
	.string	"hdr"
	.byte	0x5
	.byte	0xe5
	.4byte	0x1af
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x5
	.byte	0xe9
	.4byte	0x37
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x5
	.byte	0xea
	.4byte	0x37
	.byte	0xa
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x5
	.byte	0xeb
	.4byte	0x98
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x15f
	.uleb128 0x2
	.4byte	.LASF33
	.byte	0x5
	.byte	0xf7
	.4byte	0x16a
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0x6
	.byte	0x19
	.4byte	0x4c
	.uleb128 0x2
	.4byte	.LASF35
	.byte	0x6
	.byte	0x87
	.4byte	0x1d6
	.uleb128 0x5
	.4byte	0xa5
	.4byte	0x1e6
	.uleb128 0x6
	.4byte	0x8a
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.byte	0x18
	.byte	0x6
	.byte	0xfd
	.4byte	0x241
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x6
	.byte	0xfe
	.4byte	0x25
	.byte	0
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x6
	.byte	0xff
	.4byte	0x37
	.byte	0x4
	.uleb128 0xf
	.string	"bad"
	.byte	0x6
	.2byte	0x100
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF36
	.byte	0x6
	.2byte	0x101
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF37
	.byte	0x6
	.2byte	0x102
	.4byte	0x241
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF38
	.byte	0x6
	.2byte	0x103
	.4byte	0x1cb
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x1c0
	.uleb128 0x12
	.4byte	.LASF39
	.byte	0x6
	.2byte	0x104
	.4byte	0x1e6
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.byte	0x21
	.4byte	0x284
	.uleb128 0xc
	.string	"num"
	.byte	0x7
	.byte	0x22
	.4byte	0x30
	.byte	0
	.uleb128 0x13
	.string	"m"
	.byte	0x7
	.byte	0x23
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x4
	.uleb128 0x13
	.string	"szx"
	.byte	0x7
	.byte	0x24
	.4byte	0x30
	.byte	0x4
	.byte	0x3
	.byte	0x1c
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF40
	.byte	0x7
	.byte	0x25
	.4byte	0x253
	.uleb128 0x14
	.4byte	.LASF41
	.byte	0x1
	.byte	0x1a
	.4byte	0x30
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x35e
	.uleb128 0x15
	.4byte	.LASF43
	.byte	0x1
	.byte	0x1a
	.4byte	0x35e
	.4byte	.LLST0
	.uleb128 0x16
	.string	"num"
	.byte	0x1
	.byte	0x1b
	.4byte	0x30
	.4byte	.LLST1
	.uleb128 0x16
	.string	"len"
	.byte	0x1
	.byte	0x1c
	.4byte	0x37
	.4byte	.LLST2
	.uleb128 0x17
	.4byte	.LVL2
	.4byte	0x748
	.4byte	0x2e9
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL4
	.4byte	0x754
	.4byte	0x2fd
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL5
	.4byte	0x748
	.4byte	0x311
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL6
	.4byte	0x760
	.4byte	0x325
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL10
	.4byte	0x748
	.4byte	0x339
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL11
	.4byte	0x754
	.4byte	0x34d
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL12
	.4byte	0x748
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x364
	.uleb128 0x1a
	.4byte	0x1c0
	.uleb128 0x14
	.4byte	.LASF42
	.byte	0x1
	.byte	0x2d
	.4byte	0x3e
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4e8
	.uleb128 0x1b
	.string	"pdu"
	.byte	0x1
	.byte	0x2d
	.4byte	0x4e8
	.4byte	.LLST3
	.uleb128 0x15
	.4byte	.LASF24
	.byte	0x1
	.byte	0x2d
	.4byte	0x37
	.4byte	.LLST4
	.uleb128 0x1c
	.4byte	.LASF44
	.byte	0x1
	.byte	0x2d
	.4byte	0x4ee
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1d
	.4byte	.LASF45
	.byte	0x1
	.byte	0x2e
	.4byte	0x247
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.4byte	.LASF46
	.byte	0x1
	.byte	0x2f
	.4byte	0x241
	.4byte	.LLST5
	.uleb128 0x1f
	.4byte	.LASF52
	.4byte	0x504
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6472
	.uleb128 0x20
	.4byte	.Ldebug_ranges0+0
	.4byte	0x4a2
	.uleb128 0x16
	.string	"num"
	.byte	0x1
	.byte	0x35
	.4byte	0x30
	.4byte	.LLST6
	.uleb128 0x17
	.4byte	.LVL20
	.4byte	0x748
	.4byte	0x405
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL21
	.4byte	0x748
	.4byte	0x419
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL22
	.4byte	0x754
	.4byte	0x42d
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL24
	.4byte	0x748
	.4byte	0x441
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL29
	.4byte	0x748
	.4byte	0x455
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL30
	.4byte	0x748
	.4byte	0x469
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL31
	.4byte	0x754
	.4byte	0x47d
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL32
	.4byte	0x748
	.4byte	0x491
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL33
	.4byte	0x28f
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL17
	.4byte	0x76b
	.4byte	0x4d1
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x31
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6472
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL18
	.4byte	0x776
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x1b5
	.uleb128 0x7
	.byte	0x4
	.4byte	0x284
	.uleb128 0x5
	.4byte	0x9e
	.4byte	0x504
	.uleb128 0x6
	.4byte	0x8a
	.byte	0xe
	.byte	0
	.uleb128 0x1a
	.4byte	0x4f4
	.uleb128 0x14
	.4byte	.LASF47
	.byte	0x1
	.byte	0x49
	.4byte	0x3e
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x69f
	.uleb128 0x15
	.4byte	.LASF44
	.byte	0x1
	.byte	0x49
	.4byte	0x4ee
	.4byte	.LLST7
	.uleb128 0x1c
	.4byte	.LASF24
	.byte	0x1
	.byte	0x49
	.4byte	0x37
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.string	"pdu"
	.byte	0x1
	.byte	0x4a
	.4byte	0x4e8
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x15
	.4byte	.LASF48
	.byte	0x1
	.byte	0x4a
	.4byte	0x25
	.4byte	.LLST8
	.uleb128 0x1e
	.4byte	.LASF49
	.byte	0x1
	.byte	0x4b
	.4byte	0x25
	.4byte	.LLST9
	.uleb128 0x1e
	.4byte	.LASF50
	.byte	0x1
	.byte	0x4b
	.4byte	0x25
	.4byte	.LLST10
	.uleb128 0x1e
	.4byte	.LASF51
	.byte	0x1
	.byte	0x4b
	.4byte	0x25
	.4byte	.LLST11
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.byte	0x4c
	.4byte	0x7a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.4byte	.LASF52
	.4byte	0x6af
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6484
	.uleb128 0x23
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x623
	.uleb128 0x16
	.string	"szx"
	.byte	0x1
	.byte	0x67
	.4byte	0x4c
	.4byte	.LLST12
	.uleb128 0x17
	.4byte	.LVL60
	.4byte	0x782
	.4byte	0x5dc
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.uleb128 0x17
	.4byte	.LVL63
	.4byte	0x78d
	.4byte	0x5f0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL64
	.4byte	0x782
	.4byte	0x612
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL66
	.4byte	0x78d
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL41
	.4byte	0x76b
	.4byte	0x652
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x4e
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6484
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.uleb128 0x17
	.4byte	.LVL43
	.4byte	0x782
	.4byte	0x66e
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0x17
	.4byte	.LVL69
	.4byte	0x798
	.4byte	0x682
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x19
	.4byte	.LVL70
	.4byte	0x7a3
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	0x9e
	.4byte	0x6af
	.uleb128 0x6
	.4byte	0x8a
	.byte	0x14
	.byte	0
	.uleb128 0x1a
	.4byte	0x69f
	.uleb128 0x14
	.4byte	.LASF53
	.byte	0x1
	.byte	0x80
	.4byte	0x3e
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x73d
	.uleb128 0x1b
	.string	"pdu"
	.byte	0x1
	.byte	0x80
	.4byte	0x4e8
	.4byte	.LLST13
	.uleb128 0x1b
	.string	"len"
	.byte	0x1
	.byte	0x80
	.4byte	0x30
	.4byte	.LLST14
	.uleb128 0x1c
	.4byte	.LASF32
	.byte	0x1
	.byte	0x80
	.4byte	0x73d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x15
	.4byte	.LASF54
	.byte	0x1
	.byte	0x81
	.4byte	0x30
	.4byte	.LLST15
	.uleb128 0x15
	.4byte	.LASF55
	.byte	0x1
	.byte	0x81
	.4byte	0x4c
	.4byte	.LLST16
	.uleb128 0x1d
	.4byte	.LASF49
	.byte	0x1
	.byte	0x82
	.4byte	0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LVL75
	.4byte	0x7af
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x743
	.uleb128 0x1a
	.4byte	0x4c
	.uleb128 0x24
	.4byte	.LASF56
	.4byte	.LASF56
	.byte	0x6
	.2byte	0x185
	.uleb128 0x24
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0x6
	.2byte	0x193
	.uleb128 0x25
	.4byte	.LASF58
	.4byte	.LASF58
	.byte	0x8
	.byte	0x2b
	.uleb128 0x25
	.4byte	.LASF59
	.4byte	.LASF59
	.byte	0x9
	.byte	0x29
	.uleb128 0x24
	.4byte	.LASF60
	.4byte	.LASF60
	.byte	0x6
	.2byte	0x139
	.uleb128 0x25
	.4byte	.LASF61
	.4byte	.LASF61
	.byte	0xa
	.byte	0x37
	.uleb128 0x25
	.4byte	.LASF62
	.4byte	.LASF62
	.byte	0x8
	.byte	0x1e
	.uleb128 0x25
	.4byte	.LASF63
	.4byte	.LASF63
	.byte	0x8
	.byte	0x32
	.uleb128 0x24
	.4byte	.LASF64
	.4byte	.LASF64
	.byte	0x5
	.2byte	0x162
	.uleb128 0x24
	.4byte	.LASF65
	.4byte	.LASF65
	.byte	0x5
	.2byte	0x177
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14
	.4byte	.LFE41
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14
	.4byte	.LFE41
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LVL35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL36
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL16
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL28
	.4byte	.LVL35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL39
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL19
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL39
	.4byte	.LFE42
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL40
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL68
	.4byte	.LFE43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL40
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL49
	.4byte	.LVL53
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL59
	.4byte	.LFE43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL42
	.4byte	.LVL43-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL45
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL48
	.4byte	.LVL52
	.2byte	0xc
	.byte	0x72
	.sleb128 0
	.byte	0x6
	.byte	0x72
	.sleb128 4
	.byte	0x6
	.byte	0x31
	.byte	0x25
	.byte	0x23
	.uleb128 0x4
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL54
	.4byte	.LVL57
	.2byte	0xc
	.byte	0x72
	.sleb128 0
	.byte	0x6
	.byte	0x72
	.sleb128 4
	.byte	0x6
	.byte	0x31
	.byte	0x25
	.byte	0x23
	.uleb128 0x4
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL60-1
	.2byte	0xc
	.byte	0x72
	.sleb128 0
	.byte	0x6
	.byte	0x72
	.sleb128 4
	.byte	0x6
	.byte	0x31
	.byte	0x25
	.byte	0x23
	.uleb128 0x4
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL63-1
	.2byte	0xc
	.byte	0x72
	.sleb128 0
	.byte	0x6
	.byte	0x72
	.sleb128 4
	.byte	0x6
	.byte	0x31
	.byte	0x25
	.byte	0x23
	.uleb128 0x4
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL47
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0xb
	.byte	0x7a
	.sleb128 0
	.byte	0x72
	.sleb128 4
	.byte	0x6
	.byte	0x31
	.byte	0x25
	.byte	0x23
	.uleb128 0x4
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL60-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL62
	.4byte	.LVL63-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL46
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0xf
	.byte	0x74
	.sleb128 0
	.byte	0x6
	.byte	0x74
	.sleb128 10
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x1c
	.byte	0x34
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0xf
	.byte	0x74
	.sleb128 0
	.byte	0x6
	.byte	0x74
	.sleb128 10
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x1c
	.byte	0x34
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL65
	.4byte	.LVL66-1
	.2byte	0x6
	.byte	0x72
	.sleb128 4
	.byte	0x6
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL71
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL78
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL71
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL74
	.4byte	.LVL77
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LFE44
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL71
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL73
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL72
	.4byte	.LFE44
	.2byte	0x3
	.byte	0x76
	.sleb128 -4
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
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	0
	.4byte	0
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF27:
	.string	"token"
.LASF40:
	.string	"coap_block_t"
.LASF25:
	.string	"version"
.LASF32:
	.string	"data"
.LASF4:
	.string	"short int"
.LASF5:
	.string	"size_t"
.LASF10:
	.string	"sizetype"
.LASF23:
	.string	"token_length"
.LASF48:
	.string	"data_length"
.LASF31:
	.string	"length"
.LASF38:
	.string	"filter"
.LASF62:
	.string	"coap_fls"
.LASF6:
	.string	"__uint16_t"
.LASF47:
	.string	"coap_write_block_opt"
.LASF65:
	.string	"coap_add_data"
.LASF46:
	.string	"option"
.LASF7:
	.string	"long long int"
.LASF64:
	.string	"coap_add_option"
.LASF9:
	.string	"long int"
.LASF54:
	.string	"block_num"
.LASF36:
	.string	"filtered"
.LASF44:
	.string	"block"
.LASF28:
	.string	"coap_hdr_t"
.LASF22:
	.string	"LOG_DEBUG"
.LASF55:
	.string	"block_szx"
.LASF18:
	.string	"LOG_ERR"
.LASF3:
	.string	"unsigned char"
.LASF52:
	.string	"__func__"
.LASF63:
	.string	"coap_encode_var_bytes"
.LASF35:
	.string	"coap_opt_filter_t"
.LASF2:
	.string	"signed char"
.LASF8:
	.string	"long long unsigned int"
.LASF60:
	.string	"coap_check_option"
.LASF24:
	.string	"type"
.LASF0:
	.string	"unsigned int"
.LASF56:
	.string	"coap_opt_length"
.LASF13:
	.string	"uint16_t"
.LASF39:
	.string	"coap_opt_iterator_t"
.LASF26:
	.string	"code"
.LASF42:
	.string	"coap_get_block"
.LASF49:
	.string	"start"
.LASF58:
	.string	"coap_decode_var_bytes"
.LASF50:
	.string	"want"
.LASF17:
	.string	"LOG_CRIT"
.LASF19:
	.string	"LOG_WARNING"
.LASF12:
	.string	"char"
.LASF14:
	.string	"_Bool"
.LASF1:
	.string	"short unsigned int"
.LASF20:
	.string	"LOG_NOTICE"
.LASF15:
	.string	"LOG_EMERG"
.LASF67:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/coap/libcoap/src/block.c"
.LASF68:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\coap"
.LASF61:
	.string	"coap_log_impl"
.LASF11:
	.string	"long unsigned int"
.LASF53:
	.string	"coap_add_block"
.LASF34:
	.string	"coap_opt_t"
.LASF37:
	.string	"next_option"
.LASF41:
	.string	"coap_opt_block_num"
.LASF51:
	.string	"avail"
.LASF57:
	.string	"coap_opt_value"
.LASF29:
	.string	"max_size"
.LASF21:
	.string	"LOG_INFO"
.LASF33:
	.string	"coap_pdu_t"
.LASF30:
	.string	"max_delta"
.LASF59:
	.string	"__assert_func"
.LASF66:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF43:
	.string	"block_opt"
.LASF16:
	.string	"LOG_ALERT"
.LASF45:
	.string	"opt_iter"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
