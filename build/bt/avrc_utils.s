	.file	"avrc_utils.c"
	.text
.Ltext0:
	.section	.text.AVRC_IsValidAvcType,"ax",@progbits
	.literal_position
	.literal .LC0, .L5
	.align	4
	.global	AVRC_IsValidAvcType
	.type	AVRC_IsValidAvcType, @function
AVRC_IsValidAvcType:
.LFB5:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avrc/avrc_utils.c"
	.loc 1 38 0
.LVL0:
	entry	sp, 32
.LCFI0:
	extui	a2, a2, 0, 8
	extui	a3, a3, 0, 8
.LVL1:
	.loc 1 41 0
	bgeui	a3, 8, .L2
	.loc 1 42 0
	addi	a2, a2, -16
.LVL2:
	extui	a8, a2, 0, 8
	movi.n	a9, 0x31
	bltu	a9, a8, .L8
	mov.n	a2, a8
.LVL3:
	l32r	a8, .LC0
	addx4	a2, a2, a8
	l32i.n	a2, a2, 0
	jx	a2
	.section	.rodata.AVRC_IsValidAvcType,"a",@progbits
	.align	4
	.align	4
.L5:
	.word	.L4
	.word	.L4
	.word	.L4
	.word	.L4
	.word	.L6
	.word	.L4
	.word	.L4
	.word	.L6
	.word	.L6
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L4
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L4
	.word	.L7
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L8
	.word	.L6
	.word	.L6
	.section	.text.AVRC_IsValidAvcType
.L4:
	.loc 1 51 0
	beqi	a3, 1, .L9
	.loc 1 39 0
	movi.n	a2, 0
	retw.n
.L6:
	.loc 1 61 0
	beqz.n	a3, .L10
	.loc 1 39 0
	movi.n	a2, 0
	retw.n
.L7:
	.loc 1 67 0
	beqi	a3, 3, .L11
	.loc 1 39 0
	movi.n	a2, 0
	retw.n
.L2:
	.loc 1 73 0
	addi	a3, a3, -8
.LVL4:
	extui	a3, a3, 0, 8
.LVL5:
	bltui	a3, 8, .L12
	.loc 1 39 0
	movi.n	a2, 0
	retw.n
.L8:
	movi.n	a2, 0
	retw.n
.L9:
	.loc 1 52 0
	movi.n	a2, 1
	retw.n
.L10:
	.loc 1 62 0
	movi.n	a2, 1
	retw.n
.L11:
	.loc 1 68 0
	movi.n	a2, 1
	retw.n
.L12:
	.loc 1 75 0
	movi.n	a2, 1
.LVL6:
	.loc 1 80 0
	retw.n
.LFE5:
	.size	AVRC_IsValidAvcType, .-AVRC_IsValidAvcType
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC2:
	.string	"BT_AVRC"
	.align	4
.LC4:
	.string	"\033[0;31mE (%d) %s: avrc_is_valid_player_attrib_value() found not matching attrib(x%x)-value(x%x) pair!\033[0m\n"
	.section	.text.avrc_is_valid_player_attrib_value,"ax",@progbits
	.literal_position
	.literal .LC1, avrc_cb
	.literal .LC3, .LC2
	.literal .LC5, .LC4
	.align	4
	.global	avrc_is_valid_player_attrib_value
	.type	avrc_is_valid_player_attrib_value, @function
avrc_is_valid_player_attrib_value:
.LFB6:
	.loc 1 92 0
.LVL7:
	entry	sp, 48
.LCFI1:
	extui	a4, a2, 0, 8
	extui	a3, a3, 0, 8
.LVL8:
	.loc 1 95 0
	beqi	a4, 2, .L15
	bgeui	a4, 3, .L16
	beqi	a4, 1, .L17
	j	.L21
.L16:
	bltui	a4, 5, .L26
	j	.L21
.L17:
	.loc 1 97 0
	addi.n	a2, a3, -1
.LVL9:
	extui	a2, a2, 0, 8
	bltui	a2, 2, .L22
	.loc 1 93 0
	movi.n	a2, 0
	j	.L14
.LVL10:
.L15:
	.loc 1 104 0
	addi.n	a2, a3, -1
.LVL11:
	extui	a2, a2, 0, 8
	bltui	a2, 4, .L23
	.loc 1 93 0
	movi.n	a2, 0
	j	.L14
.LVL12:
.L26:
	.loc 1 112 0
	addi.n	a2, a3, -1
.LVL13:
	extui	a2, a2, 0, 8
	bltui	a2, 3, .L24
	.loc 1 93 0
	movi.n	a2, 0
	j	.L14
.LVL14:
.L21:
	movi.n	a2, 0
.LVL15:
	j	.L14
.L22:
	.loc 1 99 0
	movi.n	a2, 1
	j	.L14
.L23:
	.loc 1 106 0
	movi.n	a2, 1
	j	.L14
.L24:
	.loc 1 114 0
	movi.n	a2, 1
.L14:
.LVL16:
	.loc 1 119 0
	sext	a8, a4, 7
	bgez	a8, .L19
	.loc 1 120 0
	movi.n	a2, 1
.LVL17:
.L19:
	.loc 1 123 0
	bnez.n	a2, .L20
	.loc 1 124 0
	l32r	a8, .LC1
	l8ui	a8, a8, 106
	beqz.n	a8, .L20
	.loc 1 124 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL18:
	l32r	a11, .LC3
	s32i.n	a3, sp, 0
	mov.n	a15, a4
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC5
	movi.n	a10, 1
	call8	esp_log_write
.LVL19:
.L20:
	.loc 1 129 0 is_stmt 1
	retw.n
.LFE6:
	.size	avrc_is_valid_player_attrib_value, .-avrc_is_valid_player_attrib_value
	.section	.text.AVRC_IsValidPlayerAttr,"ax",@progbits
	.align	4
	.global	AVRC_IsValidPlayerAttr
	.type	AVRC_IsValidPlayerAttr, @function
AVRC_IsValidPlayerAttr:
.LFB7:
	.loc 1 141 0
.LVL20:
	entry	sp, 32
.LCFI2:
	extui	a2, a2, 0, 8
.LVL21:
	.loc 1 144 0
	addi.n	a9, a2, -1
	movi.n	a8, 1
	extui	a9, a9, 0, 8
	bltui	a9, 4, .L28
	movi.n	a8, 0
.L28:
	extui	a8, a8, 0, 8
	.loc 1 145 0
	srli	a2, a2, 7
.LVL22:
	.loc 1 144 0
	or	a2, a8, a2
	beqz.n	a2, .L29
	.loc 1 146 0
	movi.n	a2, 1
.L29:
.LVL23:
	.loc 1 150 0
	retw.n
.LFE7:
	.size	AVRC_IsValidPlayerAttr, .-AVRC_IsValidPlayerAttr
	.section	.text.avrc_pars_pass_thru,"ax",@progbits
	.literal_position
	.literal .LC6, 6488
	.align	4
	.global	avrc_pars_pass_thru
	.type	avrc_pars_pass_thru, @function
avrc_pars_pass_thru:
.LFB8:
	.loc 1 166 0
.LVL24:
	entry	sp, 32
.LCFI3:
.LVL25:
	.loc 1 172 0
	l8ui	a9, a2, 4
	movi	a8, 0x7e
	bne	a9, a8, .L33
	.loc 1 172 0 is_stmt 0 discriminator 1
	l8ui	a8, a2, 12
	bnei	a8, 5, .L34
	.loc 1 173 0 is_stmt 1
	l32i.n	a9, a2, 8
.LVL26:
	.loc 1 174 0
	l8ui	a8, a9, 2
	l8ui	a2, a9, 1
.LVL27:
	slli	a2, a2, 8
	add.n	a8, a8, a2
	l8ui	a2, a9, 0
	slli	a2, a2, 16
	add.n	a2, a8, a2
.LVL28:
	.loc 1 175 0
	l32r	a8, .LC6
	bne	a2, a8, .L35
	.loc 1 176 0
	l8ui	a2, a9, 3
.LVL29:
	slli	a8, a2, 8
	l8ui	a2, a9, 4
	add.n	a2, a8, a2
	extui	a2, a2, 0, 16
.LVL30:
	.loc 1 177 0
	bgeui	a2, 2, .L36
	.loc 1 178 0
	s16i	a2, a3, 0
.LVL31:
	.loc 1 179 0
	movi.n	a2, 4
.LVL32:
	retw.n
.LVL33:
.L33:
	.loc 1 170 0
	movi.n	a2, 0
.LVL34:
	retw.n
.LVL35:
.L34:
	movi.n	a2, 0
.LVL36:
	retw.n
.LVL37:
.L35:
	movi.n	a2, 0
.LVL38:
	retw.n
.LVL39:
.L36:
	movi.n	a2, 0
.LVL40:
	.loc 1 184 0
	retw.n
.LFE8:
	.size	avrc_pars_pass_thru, .-avrc_pars_pass_thru
	.section	.text.avrc_opcode_from_pdu,"ax",@progbits
	.align	4
	.global	avrc_opcode_from_pdu
	.type	avrc_opcode_from_pdu, @function
avrc_opcode_from_pdu:
.LFB9:
	.loc 1 196 0
.LVL41:
	entry	sp, 32
.LCFI4:
	extui	a2, a2, 0, 8
.LVL42:
	.loc 1 199 0
	bgeui	a2, 2, .L40
	.loc 1 202 0
	movi	a2, 0x7c
.LVL43:
	retw.n
.L40:
	.loc 1 206 0
	movi.n	a2, 0
.LVL44:
	.loc 1 211 0
	retw.n
.LFE9:
	.size	avrc_opcode_from_pdu, .-avrc_opcode_from_pdu
	.section	.text.avrc_is_valid_opcode,"ax",@progbits
	.align	4
	.global	avrc_is_valid_opcode
	.type	avrc_is_valid_opcode, @function
avrc_is_valid_opcode:
.LFB10:
	.loc 1 223 0
.LVL45:
	entry	sp, 32
.LCFI5:
	extui	a2, a2, 0, 8
.LVL46:
	.loc 1 225 0
	movi	a8, 0x7c
	beq	a2, a8, .L44
	movi	a8, 0xff
	beq	a2, a8, .L44
	beqz.n	a2, .L44
	.loc 1 224 0
	movi.n	a2, 0
.LVL47:
	retw.n
.L44:
	.loc 1 229 0
	movi.n	a2, 1
.LVL48:
	.loc 1 233 0
	retw.n
.LFE10:
	.size	avrc_is_valid_opcode, .-avrc_is_valid_opcode
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI0-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI1-.LFB6
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI2-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI3-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI4-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI5-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/sdp_api.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avrc_defs.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avrc_api.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avrc/include/avrc_int.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xa27
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF137
	.byte	0xc
	.4byte	.LASF138
	.4byte	.LASF139
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
	.byte	0x16
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x21
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x2d
	.4byte	0x65
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x4
	.byte	0x21
	.4byte	0x9a
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x4
	.byte	0x22
	.4byte	0xa5
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x4
	.byte	0x23
	.4byte	0xb0
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x4
	.byte	0x29
	.4byte	0xe7
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF21
	.uleb128 0x5
	.byte	0x8
	.byte	0x4
	.byte	0xc6
	.4byte	0x133
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x4
	.byte	0xc7
	.4byte	0xa5
	.byte	0
	.uleb128 0x7
	.string	"len"
	.byte	0x4
	.byte	0xc8
	.4byte	0xa5
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x4
	.byte	0xc9
	.4byte	0xa5
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x4
	.byte	0xca
	.4byte	0xa5
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x4
	.byte	0xcb
	.4byte	0x133
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.4byte	0x9a
	.4byte	0x142
	.uleb128 0x9
	.4byte	0x85
	.byte	0
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x4
	.byte	0xcc
	.4byte	0xee
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x132
	.4byte	0x159
	.uleb128 0x8
	.4byte	0xbb
	.4byte	0x169
	.uleb128 0xb
	.4byte	0x85
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0xbb
	.uleb128 0x8
	.4byte	0xbb
	.4byte	0x17f
	.uleb128 0xb
	.4byte	0x85
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.byte	0x10
	.byte	0x4
	.2byte	0x1ab
	.4byte	0x1ad
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x1ac
	.4byte	0xc6
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x1ad
	.4byte	0xd1
	.uleb128 0xe
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x1ae
	.4byte	0x16f
	.byte	0
	.uleb128 0xf
	.byte	0x14
	.byte	0x4
	.2byte	0x1a4
	.4byte	0x1d0
	.uleb128 0x10
	.string	"len"
	.byte	0x4
	.2byte	0x1a9
	.4byte	0xc6
	.byte	0
	.uleb128 0x10
	.string	"uu"
	.byte	0x4
	.2byte	0x1af
	.4byte	0x17f
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x1b1
	.4byte	0x1ad
	.uleb128 0x11
	.byte	0x4
	.4byte	0x2c
	.byte	0x9
	.byte	0x1f
	.4byte	0x20d
	.uleb128 0x12
	.4byte	.LASF32
	.byte	0
	.uleb128 0x12
	.4byte	.LASF33
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF34
	.byte	0x2
	.uleb128 0x12
	.4byte	.LASF35
	.byte	0x3
	.uleb128 0x12
	.4byte	.LASF36
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x5
	.byte	0
	.uleb128 0x13
	.4byte	0x227
	.uleb128 0x14
	.4byte	0xbb
	.uleb128 0x14
	.4byte	0xbb
	.uleb128 0x14
	.4byte	0xc6
	.uleb128 0x14
	.4byte	0x169
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x142
	.uleb128 0x13
	.4byte	0x238
	.uleb128 0x14
	.4byte	0xc6
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.byte	0x5
	.byte	0x5f
	.4byte	0x277
	.uleb128 0x16
	.string	"u8"
	.byte	0x5
	.byte	0x60
	.4byte	0xbb
	.uleb128 0x16
	.string	"u16"
	.byte	0x5
	.byte	0x61
	.4byte	0xc6
	.uleb128 0x16
	.string	"u32"
	.byte	0x5
	.byte	0x62
	.4byte	0xd1
	.uleb128 0x17
	.4byte	.LASF38
	.byte	0x5
	.byte	0x63
	.4byte	0x277
	.uleb128 0x17
	.4byte	.LASF39
	.byte	0x5
	.byte	0x64
	.4byte	0x2c4
	.byte	0
	.uleb128 0x8
	.4byte	0xbb
	.4byte	0x287
	.uleb128 0xb
	.4byte	0x85
	.byte	0x3
	.byte	0
	.uleb128 0x18
	.4byte	.LASF46
	.byte	0xc
	.byte	0x5
	.byte	0x69
	.4byte	0x2c4
	.uleb128 0x6
	.4byte	.LASF40
	.byte	0x5
	.byte	0x6a
	.4byte	0x2c4
	.byte	0
	.uleb128 0x6
	.4byte	.LASF41
	.byte	0x5
	.byte	0x6b
	.4byte	0xc6
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF42
	.byte	0x5
	.byte	0x6c
	.4byte	0xc6
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF43
	.byte	0x5
	.byte	0x6d
	.4byte	0x2dd
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x287
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.byte	0x5e
	.4byte	0x2dd
	.uleb128 0x7
	.string	"v"
	.byte	0x5
	.byte	0x65
	.4byte	0x238
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF44
	.byte	0x5
	.byte	0x67
	.4byte	0x2ca
	.uleb128 0x4
	.4byte	.LASF45
	.byte	0x5
	.byte	0x6e
	.4byte	0x287
	.uleb128 0x18
	.4byte	.LASF47
	.byte	0x14
	.byte	0x5
	.byte	0x70
	.4byte	0x330
	.uleb128 0x6
	.4byte	.LASF48
	.byte	0x5
	.byte	0x71
	.4byte	0x330
	.byte	0
	.uleb128 0x6
	.4byte	.LASF49
	.byte	0x5
	.byte	0x72
	.4byte	0x336
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF50
	.byte	0x5
	.byte	0x73
	.4byte	0xd1
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF51
	.byte	0x5
	.byte	0x74
	.4byte	0x14d
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x2e8
	.uleb128 0xc
	.byte	0x4
	.4byte	0x2f3
	.uleb128 0x4
	.4byte	.LASF52
	.byte	0x5
	.byte	0x75
	.4byte	0x2f3
	.uleb128 0x5
	.byte	0x7c
	.byte	0x5
	.byte	0x77
	.4byte	0x3d4
	.uleb128 0x6
	.4byte	.LASF53
	.byte	0x5
	.byte	0x78
	.4byte	0xd1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF54
	.byte	0x5
	.byte	0x79
	.4byte	0xd1
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF55
	.byte	0x5
	.byte	0x7a
	.4byte	0x3d4
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF56
	.byte	0x5
	.byte	0x7b
	.4byte	0xc6
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF57
	.byte	0x5
	.byte	0x7c
	.4byte	0x3da
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF58
	.byte	0x5
	.byte	0x7d
	.4byte	0xc6
	.byte	0x4c
	.uleb128 0x6
	.4byte	.LASF59
	.byte	0x5
	.byte	0x7e
	.4byte	0x3ea
	.byte	0x4e
	.uleb128 0x6
	.4byte	.LASF60
	.byte	0x5
	.byte	0x7f
	.4byte	0x169
	.byte	0x6c
	.uleb128 0x6
	.4byte	.LASF61
	.byte	0x5
	.byte	0x81
	.4byte	0x169
	.byte	0x70
	.uleb128 0x6
	.4byte	.LASF62
	.byte	0x5
	.byte	0x82
	.4byte	0xd1
	.byte	0x74
	.uleb128 0x6
	.4byte	.LASF63
	.byte	0x5
	.byte	0x83
	.4byte	0xd1
	.byte	0x78
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x33c
	.uleb128 0x8
	.4byte	0x1d0
	.4byte	0x3ea
	.uleb128 0xb
	.4byte	0x85
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0xc6
	.4byte	0x3fa
	.uleb128 0xb
	.4byte	0x85
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.4byte	.LASF64
	.byte	0x5
	.byte	0x85
	.4byte	0x347
	.uleb128 0x4
	.4byte	.LASF65
	.byte	0x6
	.byte	0xfb
	.4byte	0xbb
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.2byte	0x2f7
	.4byte	0x44e
	.uleb128 0x19
	.4byte	.LASF66
	.byte	0x6
	.2byte	0x2f8
	.4byte	0xbb
	.byte	0
	.uleb128 0x19
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x2f9
	.4byte	0xbb
	.byte	0x1
	.uleb128 0x19
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x2fa
	.4byte	0xbb
	.byte	0x2
	.uleb128 0x19
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x2fd
	.4byte	0xbb
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x2fe
	.4byte	0x410
	.uleb128 0xf
	.byte	0xc
	.byte	0x6
	.2byte	0x301
	.4byte	0x498
	.uleb128 0x10
	.string	"hdr"
	.byte	0x6
	.2byte	0x302
	.4byte	0x44e
	.byte	0
	.uleb128 0x19
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x303
	.4byte	0xd1
	.byte	0x4
	.uleb128 0x19
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x304
	.4byte	0xbb
	.byte	0x8
	.uleb128 0x19
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x305
	.4byte	0xbb
	.byte	0x9
	.byte	0
	.uleb128 0xa
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x306
	.4byte	0x45a
	.uleb128 0xf
	.byte	0xa
	.byte	0x6
	.2byte	0x309
	.4byte	0x4e2
	.uleb128 0x10
	.string	"hdr"
	.byte	0x6
	.2byte	0x30a
	.4byte	0x44e
	.byte	0
	.uleb128 0x19
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x30b
	.4byte	0x277
	.byte	0x4
	.uleb128 0x19
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x30d
	.4byte	0xdc
	.byte	0x8
	.uleb128 0x19
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x30f
	.4byte	0xbb
	.byte	0x9
	.byte	0
	.uleb128 0xa
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x312
	.4byte	0x4a4
	.uleb128 0xf
	.byte	0x10
	.byte	0x6
	.2byte	0x315
	.4byte	0x52c
	.uleb128 0x10
	.string	"hdr"
	.byte	0x6
	.2byte	0x316
	.4byte	0x44e
	.byte	0
	.uleb128 0x19
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x317
	.4byte	0xd1
	.byte	0x4
	.uleb128 0x19
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x318
	.4byte	0x169
	.byte	0x8
	.uleb128 0x19
	.4byte	.LASF79
	.byte	0x6
	.2byte	0x319
	.4byte	0xc6
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.4byte	.LASF80
	.byte	0x6
	.2byte	0x31a
	.4byte	0x4ee
	.uleb128 0xf
	.byte	0x10
	.byte	0x6
	.2byte	0x31d
	.4byte	0x583
	.uleb128 0x10
	.string	"hdr"
	.byte	0x6
	.2byte	0x31e
	.4byte	0x44e
	.byte	0
	.uleb128 0x19
	.4byte	.LASF81
	.byte	0x6
	.2byte	0x321
	.4byte	0xbb
	.byte	0x4
	.uleb128 0x19
	.4byte	.LASF82
	.byte	0x6
	.2byte	0x322
	.4byte	0xbb
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF83
	.byte	0x6
	.2byte	0x323
	.4byte	0x169
	.byte	0x8
	.uleb128 0x19
	.4byte	.LASF84
	.byte	0x6
	.2byte	0x325
	.4byte	0xbb
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.4byte	.LASF85
	.byte	0x6
	.2byte	0x327
	.4byte	0x538
	.uleb128 0xf
	.byte	0x10
	.byte	0x6
	.2byte	0x32e
	.4byte	0x5cd
	.uleb128 0x10
	.string	"hdr"
	.byte	0x6
	.2byte	0x32f
	.4byte	0x44e
	.byte	0
	.uleb128 0x19
	.4byte	.LASF86
	.byte	0x6
	.2byte	0x332
	.4byte	0x169
	.byte	0x4
	.uleb128 0x19
	.4byte	.LASF87
	.byte	0x6
	.2byte	0x333
	.4byte	0xc6
	.byte	0x8
	.uleb128 0x19
	.4byte	.LASF88
	.byte	0x6
	.2byte	0x334
	.4byte	0x227
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.4byte	.LASF89
	.byte	0x6
	.2byte	0x335
	.4byte	0x58f
	.uleb128 0xd
	.byte	0x10
	.byte	0x6
	.2byte	0x338
	.4byte	0x62b
	.uleb128 0x1a
	.string	"hdr"
	.byte	0x6
	.2byte	0x339
	.4byte	0x44e
	.uleb128 0xe
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x33a
	.4byte	0x498
	.uleb128 0x1a
	.string	"sub"
	.byte	0x6
	.2byte	0x33b
	.4byte	0x4e2
	.uleb128 0xe
	.4byte	.LASF90
	.byte	0x6
	.2byte	0x33c
	.4byte	0x52c
	.uleb128 0xe
	.4byte	.LASF91
	.byte	0x6
	.2byte	0x33d
	.4byte	0x583
	.uleb128 0xe
	.4byte	.LASF92
	.byte	0x6
	.2byte	0x33e
	.4byte	0x5cd
	.byte	0
	.uleb128 0xa
	.4byte	.LASF93
	.byte	0x6
	.2byte	0x33f
	.4byte	0x5d9
	.uleb128 0xc
	.byte	0x4
	.4byte	0x3fa
	.uleb128 0xc
	.byte	0x4
	.4byte	0xc6
	.uleb128 0x4
	.4byte	.LASF94
	.byte	0x7
	.byte	0x8b
	.4byte	0x22d
	.uleb128 0x4
	.4byte	.LASF95
	.byte	0x7
	.byte	0x90
	.4byte	0x20d
	.uleb128 0x4
	.4byte	.LASF96
	.byte	0x7
	.byte	0x98
	.4byte	0x664
	.uleb128 0x13
	.4byte	0x67e
	.uleb128 0x14
	.4byte	0xbb
	.uleb128 0x14
	.4byte	0xbb
	.uleb128 0x14
	.4byte	0xbb
	.uleb128 0x14
	.4byte	0x67e
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x62b
	.uleb128 0x5
	.byte	0x10
	.byte	0x7
	.byte	0x9b
	.4byte	0x6c9
	.uleb128 0x6
	.4byte	.LASF97
	.byte	0x7
	.byte	0x9c
	.4byte	0x6c9
	.byte	0
	.uleb128 0x6
	.4byte	.LASF98
	.byte	0x7
	.byte	0x9d
	.4byte	0x6cf
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF71
	.byte	0x7
	.byte	0x9e
	.4byte	0xd1
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF99
	.byte	0x7
	.byte	0x9f
	.4byte	0xbb
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF100
	.byte	0x7
	.byte	0xa0
	.4byte	0xbb
	.byte	0xd
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x64e
	.uleb128 0xc
	.byte	0x4
	.4byte	0x659
	.uleb128 0x4
	.4byte	.LASF101
	.byte	0x7
	.byte	0xa1
	.4byte	0x684
	.uleb128 0x5
	.byte	0x8
	.byte	0x8
	.byte	0x66
	.4byte	0x70d
	.uleb128 0x6
	.4byte	.LASF102
	.byte	0x8
	.byte	0x67
	.4byte	0x227
	.byte	0
	.uleb128 0x6
	.4byte	.LASF103
	.byte	0x8
	.byte	0x68
	.4byte	0xbb
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF104
	.byte	0x8
	.byte	0x69
	.4byte	0xdc
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF105
	.byte	0x8
	.byte	0x6a
	.4byte	0x6e0
	.uleb128 0x5
	.byte	0x8
	.byte	0x8
	.byte	0x6d
	.4byte	0x745
	.uleb128 0x6
	.4byte	.LASF106
	.byte	0x8
	.byte	0x6e
	.4byte	0x227
	.byte	0
	.uleb128 0x6
	.4byte	.LASF107
	.byte	0x8
	.byte	0x6f
	.4byte	0xc6
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF108
	.byte	0x8
	.byte	0x70
	.4byte	0xbb
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.4byte	.LASF109
	.byte	0x8
	.byte	0x71
	.4byte	0x718
	.uleb128 0x5
	.byte	0x6c
	.byte	0x8
	.byte	0x74
	.4byte	0x7ad
	.uleb128 0x7
	.string	"ccb"
	.byte	0x8
	.byte	0x75
	.4byte	0x7ad
	.byte	0
	.uleb128 0x7
	.string	"fcb"
	.byte	0x8
	.byte	0x77
	.4byte	0x7bd
	.byte	0x30
	.uleb128 0x7
	.string	"rcb"
	.byte	0x8
	.byte	0x78
	.4byte	0x7cd
	.byte	0x48
	.uleb128 0x6
	.4byte	.LASF110
	.byte	0x8
	.byte	0x7a
	.4byte	0x7dd
	.byte	0x60
	.uleb128 0x6
	.4byte	.LASF111
	.byte	0x8
	.byte	0x7b
	.4byte	0x637
	.byte	0x64
	.uleb128 0x6
	.4byte	.LASF112
	.byte	0x8
	.byte	0x7c
	.4byte	0xc6
	.byte	0x68
	.uleb128 0x6
	.4byte	.LASF113
	.byte	0x8
	.byte	0x7d
	.4byte	0xbb
	.byte	0x6a
	.byte	0
	.uleb128 0x8
	.4byte	0x6d5
	.4byte	0x7bd
	.uleb128 0xb
	.4byte	0x85
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x70d
	.4byte	0x7cd
	.uleb128 0xb
	.4byte	0x85
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x745
	.4byte	0x7dd
	.uleb128 0xb
	.4byte	0x85
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x643
	.uleb128 0x4
	.4byte	.LASF114
	.byte	0x8
	.byte	0x7e
	.4byte	0x750
	.uleb128 0x1b
	.4byte	.LASF117
	.byte	0x1
	.byte	0x25
	.4byte	0xdc
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x835
	.uleb128 0x1c
	.4byte	.LASF115
	.byte	0x1
	.byte	0x25
	.4byte	0xbb
	.4byte	.LLST0
	.uleb128 0x1c
	.4byte	.LASF116
	.byte	0x1
	.byte	0x25
	.4byte	0xbb
	.4byte	.LLST1
	.uleb128 0x1d
	.4byte	.LASF121
	.byte	0x1
	.byte	0x27
	.4byte	0xdc
	.4byte	.LLST2
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF118
	.byte	0x1
	.byte	0x5b
	.4byte	0xdc
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8ba
	.uleb128 0x1c
	.4byte	.LASF119
	.byte	0x1
	.byte	0x5b
	.4byte	0xbb
	.4byte	.LLST3
	.uleb128 0x1e
	.4byte	.LASF120
	.byte	0x1
	.byte	0x5b
	.4byte	0xbb
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.4byte	.LASF121
	.byte	0x1
	.byte	0x5d
	.4byte	0xdc
	.4byte	.LLST4
	.uleb128 0x1f
	.4byte	.LVL18
	.4byte	0xa14
	.uleb128 0x20
	.4byte	.LVL19
	.4byte	0xa1f
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF122
	.byte	0x1
	.byte	0x8c
	.4byte	0xdc
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8f2
	.uleb128 0x1c
	.4byte	.LASF123
	.byte	0x1
	.byte	0x8c
	.4byte	0xbb
	.4byte	.LLST5
	.uleb128 0x1d
	.4byte	.LASF121
	.byte	0x1
	.byte	0x8e
	.4byte	0xdc
	.4byte	.LLST6
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF124
	.byte	0x1
	.byte	0xa5
	.4byte	0x405
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x963
	.uleb128 0x1c
	.4byte	.LASF125
	.byte	0x1
	.byte	0xa5
	.4byte	0x963
	.4byte	.LLST7
	.uleb128 0x1e
	.4byte	.LASF126
	.byte	0x1
	.byte	0xa5
	.4byte	0x63d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.4byte	.LASF127
	.byte	0x1
	.byte	0xa7
	.4byte	0x169
	.4byte	.LLST8
	.uleb128 0x1d
	.4byte	.LASF128
	.byte	0x1
	.byte	0xa8
	.4byte	0xd1
	.4byte	.LLST9
	.uleb128 0x22
	.string	"id"
	.byte	0x1
	.byte	0xa9
	.4byte	0xc6
	.4byte	.LLST10
	.uleb128 0x1d
	.4byte	.LASF129
	.byte	0x1
	.byte	0xaa
	.4byte	0x405
	.4byte	.LLST11
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x583
	.uleb128 0x1b
	.4byte	.LASF130
	.byte	0x1
	.byte	0xc3
	.4byte	0xbb
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9a1
	.uleb128 0x23
	.string	"pdu"
	.byte	0x1
	.byte	0xc3
	.4byte	0xbb
	.4byte	.LLST12
	.uleb128 0x1d
	.4byte	.LASF69
	.byte	0x1
	.byte	0xc5
	.4byte	0xbb
	.4byte	.LLST13
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF131
	.byte	0x1
	.byte	0xde
	.4byte	0xdc
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9d9
	.uleb128 0x1c
	.4byte	.LASF69
	.byte	0x1
	.byte	0xde
	.4byte	0xbb
	.4byte	.LLST14
	.uleb128 0x1d
	.4byte	.LASF132
	.byte	0x1
	.byte	0xe0
	.4byte	0xdc
	.4byte	.LLST15
	.byte	0
	.uleb128 0x24
	.4byte	.LASF133
	.byte	0x4
	.2byte	0x2cc
	.4byte	0x9ec
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x25
	.4byte	0x159
	.uleb128 0x24
	.4byte	.LASF134
	.byte	0x4
	.2byte	0x2cd
	.4byte	0xa04
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	0x159
	.uleb128 0x26
	.4byte	.LASF140
	.byte	0x8
	.byte	0x8b
	.4byte	0x7e3
	.uleb128 0x27
	.4byte	.LASF135
	.4byte	.LASF135
	.byte	0x9
	.byte	0x57
	.uleb128 0x27
	.4byte	.LASF136
	.4byte	.LASF136
	.byte	0x9
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x17
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
	.uleb128 0xe
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
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x17
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
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x17
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x3
	.byte	0x72
	.sleb128 16
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x3
	.byte	0x73
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL24
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
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
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x3
	.byte	0x79
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x3
	.byte	0x79
	.sleb128 5
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x3
	.byte	0x79
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LFE8
	.2byte	0x3
	.byte	0x79
	.sleb128 5
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x1c
	.byte	0x79
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x79
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x22
	.byte	0x79
	.sleb128 2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LFE8
	.2byte	0x1c
	.byte	0x79
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x79
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x22
	.byte	0x79
	.sleb128 2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40
	.4byte	.LFE8
	.2byte	0xb
	.byte	0x79
	.sleb128 4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL25
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x44
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF67:
	.string	"subunit_type"
.LASF98:
	.string	"p_msg_cback"
.LASF62:
	.string	"raw_size"
.LASF137:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF54:
	.string	"mem_free"
.LASF28:
	.string	"uuid16"
.LASF99:
	.string	"conn"
.LASF78:
	.string	"p_vendor_data"
.LASF26:
	.string	"BT_HDR"
.LASF45:
	.string	"tSDP_DISC_ATTR"
.LASF18:
	.string	"UINT16"
.LASF97:
	.string	"p_ctrl_cback"
.LASF100:
	.string	"control"
.LASF0:
	.string	"unsigned int"
.LASF127:
	.string	"p_data"
.LASF93:
	.string	"tAVRC_MSG"
.LASF135:
	.string	"esp_log_timestamp"
.LASF20:
	.string	"BOOLEAN"
.LASF43:
	.string	"attr_value"
.LASF70:
	.string	"tAVRC_HDR"
.LASF112:
	.string	"service_uuid"
.LASF29:
	.string	"uuid32"
.LASF128:
	.string	"co_id"
.LASF86:
	.string	"p_browse_data"
.LASF19:
	.string	"UINT32"
.LASF16:
	.string	"uint32_t"
.LASF88:
	.string	"p_browse_pkt"
.LASF94:
	.string	"tAVRC_FIND_CBACK"
.LASF59:
	.string	"attr_filters"
.LASF22:
	.string	"event"
.LASF121:
	.string	"result"
.LASF49:
	.string	"p_next_rec"
.LASF9:
	.string	"long long unsigned int"
.LASF90:
	.string	"vendor"
.LASF123:
	.string	"attr"
.LASF6:
	.string	"__uint16_t"
.LASF81:
	.string	"op_id"
.LASF34:
	.string	"ESP_LOG_WARN"
.LASF85:
	.string	"tAVRC_MSG_PASS"
.LASF44:
	.string	"tSDP_DISC_ATVAL"
.LASF91:
	.string	"pass"
.LASF114:
	.string	"tAVRC_CB"
.LASF23:
	.string	"offset"
.LASF53:
	.string	"mem_size"
.LASF60:
	.string	"p_free_mem"
.LASF21:
	.string	"_Bool"
.LASF32:
	.string	"ESP_LOG_NONE"
.LASF27:
	.string	"BD_ADDR"
.LASF13:
	.string	"char"
.LASF125:
	.string	"p_msg"
.LASF30:
	.string	"uuid128"
.LASF58:
	.string	"num_attr_filters"
.LASF64:
	.string	"tSDP_DISCOVERY_DB"
.LASF139:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF104:
	.string	"frag_enabled"
.LASF25:
	.string	"data"
.LASF69:
	.string	"opcode"
.LASF57:
	.string	"uuid_filters"
.LASF14:
	.string	"uint8_t"
.LASF129:
	.string	"status"
.LASF24:
	.string	"layer_specific"
.LASF107:
	.string	"rasm_offset"
.LASF71:
	.string	"company_id"
.LASF68:
	.string	"subunit_id"
.LASF95:
	.string	"tAVRC_CTRL_CBACK"
.LASF8:
	.string	"long long int"
.LASF108:
	.string	"rasm_pdu"
.LASF138:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avrc/avrc_utils.c"
.LASF76:
	.string	"page"
.LASF111:
	.string	"p_db"
.LASF72:
	.string	"unit_type"
.LASF130:
	.string	"avrc_opcode_from_pdu"
.LASF110:
	.string	"p_cback"
.LASF42:
	.string	"attr_len_type"
.LASF109:
	.string	"tAVRC_RASM_CB"
.LASF52:
	.string	"tSDP_DISC_REC"
.LASF65:
	.string	"tAVRC_STS"
.LASF113:
	.string	"trace_level"
.LASF77:
	.string	"tAVRC_MSG_SUB"
.LASF35:
	.string	"ESP_LOG_INFO"
.LASF136:
	.string	"esp_log_write"
.LASF118:
	.string	"avrc_is_valid_player_attrib_value"
.LASF73:
	.string	"unit"
.LASF96:
	.string	"tAVRC_MSG_CBACK"
.LASF51:
	.string	"remote_bd_addr"
.LASF50:
	.string	"time_read"
.LASF117:
	.string	"AVRC_IsValidAvcType"
.LASF38:
	.string	"array"
.LASF15:
	.string	"uint16_t"
.LASF115:
	.string	"pdu_id"
.LASF134:
	.string	"bd_addr_null"
.LASF56:
	.string	"num_uuid_filters"
.LASF140:
	.string	"avrc_cb"
.LASF4:
	.string	"short int"
.LASF74:
	.string	"tAVRC_MSG_UNIT"
.LASF10:
	.string	"long int"
.LASF48:
	.string	"p_first_attr"
.LASF84:
	.string	"pass_len"
.LASF126:
	.string	"p_vendor_unique_id"
.LASF31:
	.string	"tBT_UUID"
.LASF87:
	.string	"browse_len"
.LASF116:
	.string	"avc_type"
.LASF89:
	.string	"tAVRC_MSG_BROWSE"
.LASF5:
	.string	"__uint8_t"
.LASF63:
	.string	"raw_used"
.LASF79:
	.string	"vendor_len"
.LASF11:
	.string	"sizetype"
.LASF12:
	.string	"long unsigned int"
.LASF61:
	.string	"raw_data"
.LASF37:
	.string	"ESP_LOG_VERBOSE"
.LASF133:
	.string	"bd_addr_any"
.LASF47:
	.string	"t_sdp_disc_rec"
.LASF105:
	.string	"tAVRC_FRAG_CB"
.LASF66:
	.string	"ctype"
.LASF103:
	.string	"frag_pdu"
.LASF3:
	.string	"unsigned char"
.LASF7:
	.string	"__uint32_t"
.LASF41:
	.string	"attr_id"
.LASF75:
	.string	"panel"
.LASF106:
	.string	"p_rmsg"
.LASF82:
	.string	"state"
.LASF132:
	.string	"is_valid"
.LASF36:
	.string	"ESP_LOG_DEBUG"
.LASF40:
	.string	"p_next_attr"
.LASF83:
	.string	"p_pass_data"
.LASF122:
	.string	"AVRC_IsValidPlayerAttr"
.LASF131:
	.string	"avrc_is_valid_opcode"
.LASF55:
	.string	"p_first_rec"
.LASF2:
	.string	"signed char"
.LASF101:
	.string	"tAVRC_CONN_CB"
.LASF1:
	.string	"short unsigned int"
.LASF124:
	.string	"avrc_pars_pass_thru"
.LASF46:
	.string	"t_sdp_disc_attr"
.LASF102:
	.string	"p_fmsg"
.LASF80:
	.string	"tAVRC_MSG_VENDOR"
.LASF92:
	.string	"browse"
.LASF17:
	.string	"UINT8"
.LASF119:
	.string	"attrib"
.LASF120:
	.string	"value"
.LASF33:
	.string	"ESP_LOG_ERROR"
.LASF39:
	.string	"p_sub_attr"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
