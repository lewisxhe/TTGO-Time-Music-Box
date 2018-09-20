	.file	"asn1.c"
	.text
.Ltext0:
	.section	.text.rotate_bits,"ax",@progbits
	.align	4
	.type	rotate_bits, @function
rotate_bits:
.LFB38:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wpa2/tls/asn1.c"
	.loc 1 168 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 172 0
	movi.n	a8, 0
	.loc 1 173 0
	mov.n	a9, a8
	j	.L2
.LVL2:
.L4:
	.loc 1 174 0
	slli	a8, a8, 1
.LVL3:
	extui	a8, a8, 0, 8
.LVL4:
	.loc 1 175 0
	bbci	a2, 0, .L3
	.loc 1 176 0
	movi.n	a10, 1
	or	a8, a8, a10
.LVL5:
	extui	a8, a8, 0, 8
.LVL6:
.L3:
	.loc 1 177 0 discriminator 2
	srli	a2, a2, 1
.LVL7:
	.loc 1 173 0 discriminator 2
	addi.n	a9, a9, 1
.LVL8:
.L2:
	.loc 1 173 0 is_stmt 0 discriminator 1
	blti	a9, 8, .L4
	.loc 1 181 0 is_stmt 1
	mov.n	a2, a8
.LVL9:
	retw.n
.LFE38:
	.size	rotate_bits, .-rotate_bits
	.section	.text.asn1_get_next,"ax",@progbits
	.align	4
	.global	asn1_get_next
	.type	asn1_get_next, @function
asn1_get_next:
.LFB34:
	.loc 1 15 0
.LVL10:
	entry	sp, 32
.LCFI1:
	.loc 1 19 0
	movi.n	a12, 0x10
	movi.n	a11, 0
	mov.n	a10, a4
	call8	memset
.LVL11:
	.loc 1 21 0
	add.n	a3, a2, a3
.LVL12:
	.loc 1 23 0
	addi.n	a8, a2, 1
.LVL13:
	l8ui	a9, a2, 0
	s8i	a9, a4, 4
	.loc 1 24 0
	srli	a2, a9, 6
.LVL14:
	s8i	a2, a4, 5
	.loc 1 25 0
	extui	a2, a9, 5, 1
	s8i	a2, a4, 6
	extui	a9, a9, 0, 5
	.loc 1 27 0
	movi.n	a2, 0x1f
	bne	a9, a2, .L6
	.loc 1 28 0
	movi.n	a2, 0
	s32i.n	a2, a4, 8
	j	.L8
.LVL15:
.L15:
	.loc 1 35 0
	mov.n	a8, a10
.LVL16:
.L8:
	.loc 1 30 0
	bgeu	a8, a3, .L14
	.loc 1 35 0
	addi.n	a10, a8, 1
.LVL17:
	l8ui	a9, a8, 0
.LVL18:
	.loc 1 38 0
	l32i.n	a8, a4, 8
.LVL19:
	slli	a8, a8, 7
	extui	a11, a9, 0, 7
	or	a8, a11, a8
	s32i.n	a8, a4, 8
.LVL20:
	.loc 1 39 0
	sext	a9, a9, 7
.LVL21:
	bltz	a9, .L15
	.loc 1 35 0
	mov.n	a8, a10
	j	.L9
.LVL22:
.L6:
	.loc 1 41 0
	s32i.n	a9, a4, 8
.L9:
	.loc 1 43 0
	addi.n	a9, a8, 1
.LVL23:
	l8ui	a8, a8, 0
.LVL24:
	.loc 1 44 0
	sext	a2, a8, 7
	bgez	a2, .L10
	.loc 1 45 0
	movi	a2, 0xff
	beq	a8, a2, .L16
	.loc 1 50 0
	extui	a8, a8, 0, 7
.LVL25:
	.loc 1 51 0
	movi.n	a2, 0
	s32i.n	a2, a4, 12
	.loc 1 52 0
	bltui	a8, 5, .L11
	j	.L17
.LVL26:
.L12:
	.loc 1 57 0
	bgeu	a9, a3, .L18
	.loc 1 62 0
	l32i.n	a8, a4, 12
	slli	a8, a8, 8
.LVL27:
	l8ui	a11, a9, 0
	or	a8, a11, a8
	s32i.n	a8, a4, 12
	.loc 1 56 0
	mov.n	a8, a10
	.loc 1 62 0
	addi.n	a9, a9, 1
.LVL28:
.L11:
	.loc 1 56 0
	addi.n	a10, a8, -1
	extui	a10, a10, 0, 8
.LVL29:
	bnez.n	a8, .L12
	j	.L13
.LVL30:
.L10:
	.loc 1 66 0
	s32i.n	a8, a4, 12
.LVL31:
.L13:
	.loc 1 69 0
	bltu	a3, a9, .L19
	.loc 1 69 0 is_stmt 0 discriminator 1
	l32i.n	a2, a4, 12
	sub	a3, a3, a9
.LVL32:
	bltu	a3, a2, .L20
	.loc 1 74 0 is_stmt 1
	s32i.n	a9, a4, 0
	.loc 1 75 0
	movi.n	a2, 0
	retw.n
.LVL33:
.L14:
	.loc 1 33 0
	movi.n	a2, -1
	retw.n
.LVL34:
.L16:
	.loc 1 48 0
	movi.n	a2, -1
	retw.n
.LVL35:
.L17:
	.loc 1 54 0
	movi.n	a2, -1
	retw.n
.LVL36:
.L18:
	.loc 1 60 0
	movi.n	a2, -1
	retw.n
.LVL37:
.L19:
	.loc 1 71 0
	movi.n	a2, -1
	retw.n
.LVL38:
.L20:
	movi.n	a2, -1
	.loc 1 76 0
	retw.n
.LFE34:
	.size	asn1_get_next, .-asn1_get_next
	.section	.text.asn1_parse_oid,"ax",@progbits
	.literal_position
	.literal .LC0, -858993459
	.align	4
	.global	asn1_parse_oid
	.type	asn1_parse_oid, @function
asn1_parse_oid:
.LFB35:
	.loc 1 80 0
.LVL39:
	entry	sp, 32
.LCFI2:
	.loc 1 85 0
	movi.n	a12, 0x54
	movi.n	a11, 0
	mov.n	a10, a4
	call8	memset
.LVL40:
	.loc 1 88 0
	add.n	a11, a2, a3
.LVL41:
	.loc 1 90 0
	j	.L22
.LVL42:
.L29:
	.loc 1 96 0
	mov.n	a2, a10
	j	.L24
.LVL43:
.L31:
	movi.n	a9, 0
.L24:
.LVL44:
	.loc 1 94 0
	bgeu	a2, a11, .L28
	.loc 1 96 0
	addi.n	a10, a2, 1
.LVL45:
	l8ui	a8, a2, 0
.LVL46:
	.loc 1 97 0
	slli	a9, a9, 7
.LVL47:
	extui	a2, a8, 0, 7
.LVL48:
	or	a9, a9, a2
.LVL49:
	.loc 1 98 0
	sext	a8, a8, 7
	bltz	a8, .L29
	.loc 1 100 0
	l32i	a2, a4, 80
	movi.n	a3, 0x13
	bltu	a3, a2, .L30
	.loc 1 104 0
	bnez.n	a2, .L25
	.loc 1 110 0
	l32r	a2, .LC0
	muluh	a2, a9, a2
	srli	a2, a2, 5
	s32i.n	a2, a4, 0
.LVL50:
	.loc 1 111 0
	bltui	a2, 3, .L26
	.loc 1 112 0
	movi.n	a2, 2
	s32i.n	a2, a4, 0
.L26:
	.loc 1 113 0
	l32i.n	a2, a4, 0
	addx4	a2, a2, a2
	slli	a8, a2, 3
	sub	a9, a9, a8
.LVL51:
	s32i.n	a9, a4, 4
	.loc 1 114 0
	movi.n	a2, 2
	s32i	a2, a4, 80
	j	.L27
.LVL52:
.L25:
	.loc 1 116 0
	addi.n	a3, a2, 1
	s32i	a3, a4, 80
.LVL53:
	addx4	a2, a2, a4
	s32i.n	a9, a2, 0
.LVL54:
.L27:
	.loc 1 96 0
	mov.n	a2, a10
.LVL55:
.L22:
	.loc 1 90 0
	bltu	a2, a11, .L31
	.loc 1 119 0
	movi.n	a2, 0
.LVL56:
	retw.n
.LVL57:
.L28:
	.loc 1 95 0
	movi.n	a2, -1
.LVL58:
	retw.n
.LVL59:
.L30:
	.loc 1 102 0
	movi.n	a2, -1
	.loc 1 120 0
	retw.n
.LFE35:
	.size	asn1_parse_oid, .-asn1_parse_oid
	.section	.text.asn1_get_oid,"ax",@progbits
	.align	4
	.global	asn1_get_oid
	.type	asn1_get_oid, @function
asn1_get_oid:
.LFB36:
	.loc 1 125 0
.LVL60:
	entry	sp, 48
.LCFI3:
	.loc 1 128 0
	mov.n	a12, sp
	mov.n	a11, a3
	mov.n	a10, a2
	call8	asn1_get_next
.LVL61:
	bltz	a10, .L34
	.loc 1 128 0 is_stmt 0 discriminator 1
	l32i.n	a8, sp, 12
	beqz.n	a8, .L35
	.loc 1 131 0 is_stmt 1
	l8ui	a2, sp, 5
.LVL62:
	bnez.n	a2, .L36
	.loc 1 131 0 is_stmt 0 discriminator 1
	l32i.n	a2, sp, 8
	bnei	a2, 6, .L37
	.loc 1 137 0 is_stmt 1
	l32i.n	a10, sp, 0
	add.n	a8, a10, a8
	s32i.n	a8, a5, 0
	.loc 1 139 0
	mov.n	a12, a4
	l32i.n	a11, sp, 12
	call8	asn1_parse_oid
.LVL63:
	mov.n	a2, a10
	retw.n
.LVL64:
.L34:
	.loc 1 129 0
	movi.n	a2, -1
.LVL65:
	retw.n
.LVL66:
.L35:
	movi.n	a2, -1
.LVL67:
	retw.n
.L36:
	.loc 1 134 0
	movi.n	a2, -1
	retw.n
.L37:
	movi.n	a2, -1
	.loc 1 140 0
	retw.n
.LFE36:
	.size	asn1_get_oid, .-asn1_get_oid
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC1:
	.string	""
	.align	4
.LC3:
	.string	"."
	.align	4
.LC5:
	.string	"%s%lu"
	.section	.text.asn1_oid_to_str,"ax",@progbits
	.literal_position
	.literal .LC2, .LC1
	.literal .LC4, .LC3
	.literal .LC6, .LC5
	.align	4
	.global	asn1_oid_to_str
	.type	asn1_oid_to_str, @function
asn1_oid_to_str:
.LFB37:
	.loc 1 144 0
.LVL68:
	entry	sp, 32
.LCFI4:
.LVL69:
	.loc 1 149 0
	beqz.n	a4, .L38
	.loc 1 152 0
	movi.n	a5, 0
	s8i	a5, a3, 0
.LVL70:
	.loc 1 145 0
	mov.n	a6, a3
	.loc 1 154 0
	movi.n	a5, 0
	j	.L40
.LVL71:
.L43:
	.loc 1 156 0
	bnez.n	a5, .L44
	l32r	a12, .LC2
	j	.L41
.L44:
	l32r	a12, .LC4
.L41:
	.loc 1 156 0 is_stmt 0 discriminator 4
	addx4	a8, a5, a2
	l32i.n	a13, a8, 0
	l32r	a11, .LC6
	mov.n	a10, a6
	call8	sprintf
.LVL72:
	.loc 1 159 0 is_stmt 1 discriminator 4
	bltz	a10, .L42
	.loc 1 159 0 is_stmt 0 discriminator 1
	add.n	a8, a3, a4
	sub	a8, a8, a6
	bge	a10, a8, .L42
	.loc 1 161 0 is_stmt 1 discriminator 2
	add.n	a6, a6, a10
.LVL73:
	.loc 1 154 0 discriminator 2
	addi.n	a5, a5, 1
.LVL74:
.L40:
	.loc 1 154 0 is_stmt 0 discriminator 1
	l32i	a8, a2, 80
	bltu	a5, a8, .L43
.L42:
	.loc 1 163 0 is_stmt 1
	addi.n	a4, a4, -1
.LVL75:
	add.n	a3, a3, a4
.LVL76:
	movi.n	a2, 0
.LVL77:
	s8i	a2, a3, 0
.LVL78:
.L38:
	retw.n
.LFE37:
	.size	asn1_oid_to_str, .-asn1_oid_to_str
	.section	.text.asn1_bit_string_to_long,"ax",@progbits
	.align	4
	.global	asn1_bit_string_to_long
	.type	asn1_bit_string_to_long, @function
asn1_bit_string_to_long:
.LFB39:
	.loc 1 185 0
.LVL79:
	entry	sp, 32
.LCFI5:
.LVL80:
	.loc 1 191 0
	addi.n	a4, a2, 1
.LVL81:
	.loc 1 193 0
	bltui	a3, 2, .L50
	.loc 1 194 0
	addi.n	a4, a2, 2
.LVL82:
	l8ui	a10, a2, 1
	call8	rotate_bits
.LVL83:
	mov.n	a2, a10
.LVL84:
	j	.L46
.LVL85:
.L50:
	.loc 1 186 0
	movi.n	a2, 0
.LVL86:
.L46:
	.loc 1 195 0
	bltui	a3, 3, .L47
	.loc 1 196 0
	addi.n	a5, a4, 1
.LVL87:
	l8ui	a10, a4, 0
	call8	rotate_bits
.LVL88:
	slli	a10, a10, 8
	or	a2, a2, a10
.LVL89:
	mov.n	a4, a5
.LVL90:
.L47:
	.loc 1 197 0
	bltui	a3, 4, .L48
	.loc 1 198 0
	addi.n	a5, a4, 1
.LVL91:
	l8ui	a10, a4, 0
	call8	rotate_bits
.LVL92:
	slli	a10, a10, 16
	or	a2, a2, a10
.LVL93:
	mov.n	a4, a5
.LVL94:
.L48:
	.loc 1 199 0
	bltui	a3, 5, .L49
.LVL95:
	.loc 1 200 0
	l8ui	a10, a4, 0
	call8	rotate_bits
.LVL96:
	slli	a10, a10, 24
	or	a2, a2, a10
.LVL97:
.L49:
	.loc 1 207 0
	retw.n
.LFE39:
	.size	asn1_bit_string_to_long, .-asn1_bit_string_to_long
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
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI0-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI1-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI2-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI3-.LFB36
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI4-.LFB37
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI5-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa2/tls/asn1.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/common.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x4a9
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0xc
	.4byte	.LASF34
	.4byte	.LASF35
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF7
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
	.uleb128 0x4
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
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0xd8
	.4byte	0x53
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.4byte	0x99
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x6
	.string	"u8"
	.byte	0x6
	.byte	0x1c
	.4byte	0x73
	.uleb128 0x7
	.byte	0x4
	.4byte	0x53
	.byte	0x7
	.byte	0x1f
	.4byte	0xdb
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x10
	.byte	0x5
	.byte	0x2e
	.4byte	0x130
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x5
	.byte	0x2f
	.4byte	0x130
	.byte	0
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x5
	.byte	0x30
	.4byte	0xa0
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x5
	.byte	0x30
	.4byte	0xa0
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x5
	.byte	0x30
	.4byte	0xa0
	.byte	0x6
	.uleb128 0xb
	.string	"tag"
	.byte	0x5
	.byte	0x31
	.4byte	0x53
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x5
	.byte	0x31
	.4byte	0x53
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x136
	.uleb128 0xc
	.4byte	0xa0
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x54
	.byte	0x5
	.byte	0x35
	.4byte	0x160
	.uleb128 0xb
	.string	"oid"
	.byte	0x5
	.byte	0x36
	.4byte	0x160
	.byte	0
	.uleb128 0xb
	.string	"len"
	.byte	0x5
	.byte	0x37
	.4byte	0x68
	.byte	0x50
	.byte	0
	.uleb128 0xd
	.4byte	0x8c
	.4byte	0x170
	.uleb128 0xe
	.4byte	0x85
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.4byte	.LASF36
	.byte	0x1
	.byte	0xa7
	.4byte	0xa0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b5
	.uleb128 0x10
	.4byte	.LASF27
	.byte	0x1
	.byte	0xa7
	.4byte	0xa0
	.4byte	.LLST0
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0xa9
	.4byte	0x4c
	.4byte	.LLST1
	.uleb128 0x11
	.string	"res"
	.byte	0x1
	.byte	0xaa
	.4byte	0xa0
	.4byte	.LLST2
	.byte	0
	.uleb128 0x12
	.4byte	.LASF28
	.byte	0x1
	.byte	0xe
	.4byte	0x4c
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x241
	.uleb128 0x13
	.string	"buf"
	.byte	0x1
	.byte	0xe
	.4byte	0x130
	.4byte	.LLST3
	.uleb128 0x13
	.string	"len"
	.byte	0x1
	.byte	0xe
	.4byte	0x68
	.4byte	.LLST4
	.uleb128 0x14
	.string	"hdr"
	.byte	0x1
	.byte	0xe
	.4byte	0x241
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x11
	.string	"pos"
	.byte	0x1
	.byte	0x10
	.4byte	0x130
	.4byte	.LLST5
	.uleb128 0x11
	.string	"end"
	.byte	0x1
	.byte	0x10
	.4byte	0x130
	.4byte	.LLST6
	.uleb128 0x11
	.string	"tmp"
	.byte	0x1
	.byte	0x11
	.4byte	0xa0
	.4byte	.LLST7
	.uleb128 0x15
	.4byte	.LVL11
	.4byte	0x498
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xdb
	.uleb128 0x12
	.4byte	.LASF29
	.byte	0x1
	.byte	0x4f
	.4byte	0x4c
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2e1
	.uleb128 0x13
	.string	"buf"
	.byte	0x1
	.byte	0x4f
	.4byte	0x130
	.4byte	.LLST8
	.uleb128 0x13
	.string	"len"
	.byte	0x1
	.byte	0x4f
	.4byte	0x68
	.4byte	.LLST9
	.uleb128 0x14
	.string	"oid"
	.byte	0x1
	.byte	0x4f
	.4byte	0x2e1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x11
	.string	"pos"
	.byte	0x1
	.byte	0x51
	.4byte	0x130
	.4byte	.LLST10
	.uleb128 0x17
	.string	"end"
	.byte	0x1
	.byte	0x51
	.4byte	0x130
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x11
	.string	"val"
	.byte	0x1
	.byte	0x52
	.4byte	0x8c
	.4byte	.LLST11
	.uleb128 0x11
	.string	"tmp"
	.byte	0x1
	.byte	0x53
	.4byte	0xa0
	.4byte	.LLST12
	.uleb128 0x15
	.4byte	.LVL40
	.4byte	0x498
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x13b
	.uleb128 0x12
	.4byte	.LASF30
	.byte	0x1
	.byte	0x7b
	.4byte	0x4c
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x375
	.uleb128 0x13
	.string	"buf"
	.byte	0x1
	.byte	0x7b
	.4byte	0x130
	.4byte	.LLST13
	.uleb128 0x14
	.string	"len"
	.byte	0x1
	.byte	0x7b
	.4byte	0x68
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x14
	.string	"oid"
	.byte	0x1
	.byte	0x7b
	.4byte	0x2e1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x18
	.4byte	.LASF31
	.byte	0x1
	.byte	0x7c
	.4byte	0x375
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x17
	.string	"hdr"
	.byte	0x1
	.byte	0x7e
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.4byte	.LVL61
	.4byte	0x1b5
	.4byte	0x364
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x15
	.4byte	.LVL63
	.4byte	0x247
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x130
	.uleb128 0x1a
	.4byte	.LASF37
	.byte	0x1
	.byte	0x8f
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x402
	.uleb128 0x13
	.string	"oid"
	.byte	0x1
	.byte	0x8f
	.4byte	0x2e1
	.4byte	.LLST14
	.uleb128 0x13
	.string	"buf"
	.byte	0x1
	.byte	0x8f
	.4byte	0x93
	.4byte	.LLST15
	.uleb128 0x13
	.string	"len"
	.byte	0x1
	.byte	0x8f
	.4byte	0x68
	.4byte	.LLST16
	.uleb128 0x11
	.string	"pos"
	.byte	0x1
	.byte	0x91
	.4byte	0x93
	.4byte	.LLST17
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0x92
	.4byte	0x68
	.4byte	.LLST18
	.uleb128 0x11
	.string	"ret"
	.byte	0x1
	.byte	0x93
	.4byte	0x4c
	.4byte	.LLST19
	.uleb128 0x15
	.4byte	.LVL72
	.4byte	0x4a1
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF32
	.byte	0x1
	.byte	0xb8
	.4byte	0x8c
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x483
	.uleb128 0x13
	.string	"buf"
	.byte	0x1
	.byte	0xb8
	.4byte	0x130
	.4byte	.LLST20
	.uleb128 0x14
	.string	"len"
	.byte	0x1
	.byte	0xb8
	.4byte	0x68
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x11
	.string	"val"
	.byte	0x1
	.byte	0xba
	.4byte	0x8c
	.4byte	.LLST21
	.uleb128 0x11
	.string	"pos"
	.byte	0x1
	.byte	0xbb
	.4byte	0x130
	.4byte	.LLST22
	.uleb128 0x1b
	.4byte	.LASF38
	.4byte	0x493
	.uleb128 0x1c
	.4byte	.LVL83
	.4byte	0x170
	.uleb128 0x1c
	.4byte	.LVL88
	.4byte	0x170
	.uleb128 0x1c
	.4byte	.LVL92
	.4byte	0x170
	.uleb128 0x1c
	.4byte	.LVL96
	.4byte	0x170
	.byte	0
	.uleb128 0xd
	.4byte	0x99
	.4byte	0x493
	.uleb128 0xe
	.4byte	0x85
	.byte	0x17
	.byte	0
	.uleb128 0xc
	.4byte	0x483
	.uleb128 0x1d
	.4byte	.LASF39
	.4byte	.LASF39
	.uleb128 0x1e
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x8
	.byte	0xde
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LFE38
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL6
	.4byte	.LFE38
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL10
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL17
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL23
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL34
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL12
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL38
	.4byte	.LFE34
	.2byte	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x78
	.sleb128 0
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x7a
	.sleb128 -1
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x79
	.sleb128 -1
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x79
	.sleb128 -1
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x2
	.byte	0x79
	.sleb128 -1
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL39
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL39
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL42
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL45
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL59
	.4byte	.LFE35
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL44
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL57
	.4byte	.LFE35
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x7a
	.sleb128 -1
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x2
	.byte	0x7a
	.sleb128 -1
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x7a
	.sleb128 -1
	.4byte	.LVL59
	.4byte	.LFE35
	.2byte	0x2
	.byte	0x7a
	.sleb128 -1
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL60
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL62
	.4byte	.LVL64
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL67
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL68
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL77
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL68
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL76
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL68
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL75
	.4byte	.LVL78
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL71
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL79
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x3
	.byte	0x74
	.sleb128 -2
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL86
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL80
	.4byte	.LVL84
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LFE39
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL81
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL87
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL91
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL95
	.4byte	.LVL97
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
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
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF7:
	.string	"__uint8_t"
.LASF31:
	.string	"next"
.LASF15:
	.string	"ESP_LOG_ERROR"
.LASF38:
	.string	"__func__"
.LASF22:
	.string	"class"
.LASF33:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF28:
	.string	"asn1_get_next"
.LASF29:
	.string	"asn1_parse_oid"
.LASF23:
	.string	"constructed"
.LASF1:
	.string	"unsigned char"
.LASF12:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF8:
	.string	"size_t"
.LASF27:
	.string	"octet"
.LASF39:
	.string	"memset"
.LASF32:
	.string	"asn1_bit_string_to_long"
.LASF37:
	.string	"asn1_oid_to_str"
.LASF17:
	.string	"ESP_LOG_INFO"
.LASF4:
	.string	"unsigned int"
.LASF18:
	.string	"ESP_LOG_DEBUG"
.LASF6:
	.string	"long long unsigned int"
.LASF9:
	.string	"uint8_t"
.LASF20:
	.string	"payload"
.LASF16:
	.string	"ESP_LOG_WARN"
.LASF11:
	.string	"sizetype"
.LASF5:
	.string	"long long int"
.LASF30:
	.string	"asn1_get_oid"
.LASF21:
	.string	"identifier"
.LASF2:
	.string	"short int"
.LASF14:
	.string	"ESP_LOG_NONE"
.LASF24:
	.string	"length"
.LASF10:
	.string	"long int"
.LASF13:
	.string	"char"
.LASF35:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\wpa_supplicant"
.LASF0:
	.string	"signed char"
.LASF34:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wpa2/tls/asn1.c"
.LASF26:
	.string	"asn1_oid"
.LASF40:
	.string	"sprintf"
.LASF19:
	.string	"ESP_LOG_VERBOSE"
.LASF25:
	.string	"asn1_hdr"
.LASF36:
	.string	"rotate_bits"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
