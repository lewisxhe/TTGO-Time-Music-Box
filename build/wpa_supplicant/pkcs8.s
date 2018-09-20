	.file	"pkcs8.c"
	.text
.Ltext0:
	.section	.text.pkcs8_key_import,"ax",@progbits
	.literal_position
	.literal .LC0, 113549
	.align	4
	.global	pkcs8_key_import
	.type	pkcs8_key_import, @function
pkcs8_key_import:
.LFB34:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wpa2/tls/pkcs8.c"
	.loc 1 19 0
.LVL0:
	entry	sp, 224
.LCFI0:
	.loc 1 29 0
	mov.n	a12, sp
	mov.n	a11, a3
	mov.n	a10, a2
	call8	asn1_get_next
.LVL1:
	bltz	a10, .L5
	.loc 1 30 0 discriminator 1
	l8ui	a2, sp, 5
.LVL2:
	.loc 1 29 0 discriminator 1
	bnez.n	a2, .L6
	.loc 1 31 0
	l32i.n	a2, sp, 8
	.loc 1 30 0
	bnei	a2, 16, .L7
	.loc 1 36 0
	l32i.n	a10, sp, 0
	s32i.n	a10, sp, 16
	.loc 1 37 0
	l32i.n	a2, sp, 12
	add.n	a2, a10, a2
	.loc 1 40 0
	mov.n	a12, sp
	sub	a11, a2, a10
	call8	asn1_get_next
.LVL3:
	bltz	a10, .L8
	.loc 1 41 0 discriminator 1
	l8ui	a4, sp, 5
	.loc 1 40 0 discriminator 1
	bnez.n	a4, .L9
	.loc 1 41 0
	l32i.n	a4, sp, 8
	bnei	a4, 2, .L10
	.loc 1 48 0
	call8	bignum_init
.LVL4:
	mov.n	a4, a10
.LVL5:
	.loc 1 49 0
	beqz.n	a10, .L11
	.loc 1 52 0
	l32i.n	a12, sp, 12
	l32i.n	a11, sp, 0
	call8	bignum_set_unsigned_bin
.LVL6:
	bgez	a10, .L3
	.loc 1 54 0
	mov.n	a10, a4
	call8	bignum_deinit
.LVL7:
	.loc 1 55 0
	movi.n	a2, 0
	retw.n
.L3:
	.loc 1 57 0
	l32i.n	a8, sp, 12
	l32i.n	a9, sp, 0
	add.n	a8, a9, a8
	s32i.n	a8, sp, 16
	.loc 1 59 0
	movi.n	a11, 0
	mov.n	a10, a4
	call8	bignum_cmp_d
.LVL8:
	beqz.n	a10, .L4
	.loc 1 63 0
	mov.n	a10, a4
	call8	bignum_deinit
.LVL9:
	.loc 1 64 0
	movi.n	a2, 0
	retw.n
.L4:
	.loc 1 66 0
	mov.n	a10, a4
	call8	bignum_deinit
.LVL10:
	.loc 1 70 0
	mov.n	a12, sp
	mov.n	a11, a3
	l32i.n	a10, sp, 16
	call8	asn1_get_next
.LVL11:
	bltz	a10, .L12
	.loc 1 71 0 discriminator 1
	l8ui	a3, sp, 5
.LVL12:
	.loc 1 70 0 discriminator 1
	bnez.n	a3, .L13
	.loc 1 72 0
	l32i.n	a3, sp, 8
	.loc 1 71 0
	bnei	a3, 16, .L14
	.loc 1 80 0
	addi	a13, sp, 16
	addi	a12, sp, 20
	l32i.n	a11, sp, 12
	l32i.n	a10, sp, 0
	call8	asn1_get_oid
.LVL13:
	bnez.n	a10, .L15
	.loc 1 86 0
	movi.n	a12, 0x50
	addi	a11, sp, 104
	addi	a10, sp, 20
	call8	asn1_oid_to_str
.LVL14:
	.loc 1 89 0
	l32i	a3, sp, 100
	bnei	a3, 7, .L16
	.loc 1 90 0 discriminator 1
	l32i.n	a3, sp, 20
	.loc 1 89 0 discriminator 1
	bnei	a3, 1, .L17
	.loc 1 91 0
	l32i.n	a3, sp, 24
	.loc 1 90 0
	bnei	a3, 2, .L18
	.loc 1 91 0
	movi	a3, 0x348
	l32i.n	a4, sp, 28
.LVL15:
	bne	a4, a3, .L19
	.loc 1 92 0
	l32r	a3, .LC0
	l32i.n	a4, sp, 32
	bne	a4, a3, .L20
	.loc 1 94 0
	l32i.n	a3, sp, 36
	.loc 1 93 0
	bnei	a3, 1, .L21
	.loc 1 95 0
	l32i.n	a3, sp, 40
	.loc 1 94 0
	bnei	a3, 1, .L22
	.loc 1 96 0
	l32i.n	a3, sp, 44
	.loc 1 95 0
	bnei	a3, 1, .L23
	.loc 1 102 0
	l32i.n	a3, sp, 12
	l32i.n	a10, sp, 0
	add.n	a10, a10, a3
	s32i.n	a10, sp, 16
	.loc 1 105 0
	mov.n	a12, sp
	sub	a11, a2, a10
	call8	asn1_get_next
.LVL16:
	bltz	a10, .L24
	.loc 1 106 0 discriminator 1
	l8ui	a2, sp, 5
	.loc 1 105 0 discriminator 1
	bnez.n	a2, .L25
	.loc 1 107 0
	l32i.n	a2, sp, 8
	.loc 1 106 0
	bnei	a2, 4, .L26
	.loc 1 115 0
	l32i.n	a11, sp, 12
	l32i.n	a10, sp, 0
	call8	crypto_rsa_import_private_key
.LVL17:
	mov.n	a2, a10
	retw.n
.LVL18:
.L5:
	.loc 1 34 0
	movi.n	a2, 0
.LVL19:
	retw.n
.L6:
	movi.n	a2, 0
	retw.n
.L7:
	movi.n	a2, 0
	retw.n
.L8:
	.loc 1 45 0
	movi.n	a2, 0
	retw.n
.L9:
	movi.n	a2, 0
	retw.n
.L10:
	movi.n	a2, 0
	retw.n
.LVL20:
.L11:
	.loc 1 50 0
	movi.n	a2, 0
	retw.n
.L12:
	.loc 1 77 0
	movi.n	a2, 0
	retw.n
.LVL21:
.L13:
	movi.n	a2, 0
	retw.n
.L14:
	movi.n	a2, 0
	retw.n
.L15:
	.loc 1 83 0
	movi.n	a2, 0
	retw.n
.L16:
	.loc 1 99 0
	movi.n	a2, 0
	retw.n
.L17:
	movi.n	a2, 0
	retw.n
.L18:
	movi.n	a2, 0
	retw.n
.LVL22:
.L19:
	movi.n	a2, 0
	retw.n
.L20:
	movi.n	a2, 0
	retw.n
.L21:
	movi.n	a2, 0
	retw.n
.L22:
	movi.n	a2, 0
	retw.n
.L23:
	movi.n	a2, 0
	retw.n
.L24:
	.loc 1 111 0
	movi.n	a2, 0
	retw.n
.L25:
	movi.n	a2, 0
	retw.n
.L26:
	movi.n	a2, 0
	.loc 1 117 0
	retw.n
.LFE34:
	.size	pkcs8_key_import, .-pkcs8_key_import
	.section	.text.pkcs8_enc_key_import,"ax",@progbits
	.align	4
	.global	pkcs8_enc_key_import
	.type	pkcs8_enc_key_import, @function
pkcs8_enc_key_import:
.LFB35:
	.loc 1 122 0
.LVL23:
	entry	sp, 64
.LCFI1:
	.loc 1 129 0
	beqz.n	a4, .L29
	.loc 1 141 0
	mov.n	a12, sp
	mov.n	a11, a3
	mov.n	a10, a2
	call8	asn1_get_next
.LVL24:
	bltz	a10, .L30
	.loc 1 142 0 discriminator 1
	l8ui	a2, sp, 5
.LVL25:
	.loc 1 141 0 discriminator 1
	bnez.n	a2, .L31
	.loc 1 143 0
	l32i.n	a2, sp, 8
	.loc 1 142 0
	bnei	a2, 16, .L32
	.loc 1 149 0
	l32i.n	a10, sp, 0
.LVL26:
	.loc 1 150 0
	l32i.n	a11, sp, 12
	add.n	a3, a10, a11
.LVL27:
	.loc 1 153 0
	mov.n	a12, sp
	call8	asn1_get_next
.LVL28:
	bltz	a10, .L33
	.loc 1 154 0 discriminator 1
	l8ui	a2, sp, 5
	.loc 1 153 0 discriminator 1
	bnez.n	a2, .L34
	.loc 1 155 0
	l32i.n	a2, sp, 8
	.loc 1 154 0
	bnei	a2, 16, .L35
	.loc 1 162 0
	l32i.n	a2, sp, 0
.LVL29:
	.loc 1 163 0
	l32i.n	a5, sp, 12
.LVL30:
	.loc 1 164 0
	add.n	a10, a2, a5
.LVL31:
	.loc 1 167 0
	mov.n	a12, sp
	sub	a11, a3, a10
	call8	asn1_get_next
.LVL32:
	bltz	a10, .L36
	.loc 1 168 0 discriminator 1
	l8ui	a3, sp, 5
.LVL33:
	.loc 1 167 0 discriminator 1
	bnez.n	a3, .L37
	.loc 1 169 0
	l32i.n	a3, sp, 8
	.loc 1 168 0
	bnei	a3, 4, .L38
	.loc 1 176 0
	addi	a15, sp, 16
	mov.n	a14, a4
	l32i.n	a13, sp, 12
	l32i.n	a12, sp, 0
	mov.n	a11, a5
	mov.n	a10, a2
	call8	pkcs5_decrypt
.LVL34:
	mov.n	a3, a10
.LVL35:
	.loc 1 178 0
	beqz.n	a10, .L39
.LBB2:
	.loc 1 180 0
	l32i.n	a11, sp, 16
	call8	pkcs8_key_import
.LVL36:
	mov.n	a2, a10
.LVL37:
	.loc 1 181 0
	mov.n	a10, a3
	call8	free
.LVL38:
	.loc 1 182 0
	retw.n
.LVL39:
.L29:
.LBE2:
	.loc 1 130 0
	movi.n	a2, 0
.LVL40:
	retw.n
.LVL41:
.L30:
	.loc 1 147 0
	movi.n	a2, 0
.LVL42:
	retw.n
.L31:
	movi.n	a2, 0
	retw.n
.L32:
	movi.n	a2, 0
	retw.n
.LVL43:
.L33:
	.loc 1 160 0
	movi.n	a2, 0
	retw.n
.L34:
	movi.n	a2, 0
	retw.n
.L35:
	movi.n	a2, 0
	retw.n
.LVL44:
.L36:
	.loc 1 173 0
	movi.n	a2, 0
.LVL45:
	retw.n
.LVL46:
.L37:
	movi.n	a2, 0
.LVL47:
	retw.n
.LVL48:
.L38:
	movi.n	a2, 0
.LVL49:
	retw.n
.LVL50:
.L39:
	.loc 1 185 0
	movi.n	a2, 0
.LVL51:
	.loc 1 186 0
	retw.n
.LFE35:
	.size	pkcs8_enc_key_import, .-pkcs8_enc_key_import
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
	.uleb128 0xe0
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
	.uleb128 0x40
	.align	4
.LEFDE2:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa2/tls/asn1.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa2/tls/bignum.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa2/tls/rsa.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa2/tls/pkcs5.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/common.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x525
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0xc
	.4byte	.LASF49
	.4byte	.LASF50
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa0
	.uleb128 0x6
	.4byte	0x93
	.uleb128 0x7
	.string	"u8"
	.byte	0xa
	.byte	0x1c
	.4byte	0x73
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa5
	.uleb128 0x8
	.byte	0x4
	.4byte	0x53
	.byte	0xb
	.byte	0x1f
	.4byte	0xe6
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x10
	.byte	0x5
	.byte	0x2e
	.4byte	0x13b
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x5
	.byte	0x2f
	.4byte	0x13b
	.byte	0
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x5
	.byte	0x30
	.4byte	0xa5
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x5
	.byte	0x30
	.4byte	0xa5
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x5
	.byte	0x30
	.4byte	0xa5
	.byte	0x6
	.uleb128 0xc
	.string	"tag"
	.byte	0x5
	.byte	0x31
	.4byte	0x53
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x5
	.byte	0x31
	.4byte	0x53
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x141
	.uleb128 0x6
	.4byte	0xa5
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x54
	.byte	0x5
	.byte	0x35
	.4byte	0x16b
	.uleb128 0xc
	.string	"oid"
	.byte	0x5
	.byte	0x36
	.4byte	0x16b
	.byte	0
	.uleb128 0xc
	.string	"len"
	.byte	0x5
	.byte	0x37
	.4byte	0x68
	.byte	0x50
	.byte	0
	.uleb128 0xd
	.4byte	0x8c
	.4byte	0x17b
	.uleb128 0xe
	.4byte	0x85
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.4byte	.LASF29
	.uleb128 0x10
	.4byte	.LASF31
	.byte	0x1
	.byte	0x12
	.4byte	0x32d
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x32d
	.uleb128 0x11
	.string	"buf"
	.byte	0x1
	.byte	0x12
	.4byte	0x13b
	.4byte	.LLST0
	.uleb128 0x11
	.string	"len"
	.byte	0x1
	.byte	0x12
	.4byte	0x68
	.4byte	.LLST1
	.uleb128 0x12
	.string	"hdr"
	.byte	0x1
	.byte	0x14
	.4byte	0xe6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x12
	.string	"pos"
	.byte	0x1
	.byte	0x15
	.4byte	0x13b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x13
	.string	"end"
	.byte	0x1
	.byte	0x15
	.4byte	0x13b
	.uleb128 0x14
	.4byte	.LASF27
	.byte	0x1
	.byte	0x16
	.4byte	0x338
	.4byte	.LLST2
	.uleb128 0x12
	.string	"oid"
	.byte	0x1
	.byte	0x17
	.4byte	0x146
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x15
	.4byte	.LASF28
	.byte	0x1
	.byte	0x18
	.4byte	0x33e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x16
	.4byte	.LVL1
	.4byte	0x4ba
	.4byte	0x22e
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.uleb128 0x16
	.4byte	.LVL3
	.4byte	0x4ba
	.4byte	0x243
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.uleb128 0x18
	.4byte	.LVL4
	.4byte	0x4c5
	.uleb128 0x16
	.4byte	.LVL6
	.4byte	0x4d0
	.4byte	0x260
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL7
	.4byte	0x4db
	.4byte	0x274
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL8
	.4byte	0x4e6
	.4byte	0x28d
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x16
	.4byte	.LVL9
	.4byte	0x4db
	.4byte	0x2a1
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL10
	.4byte	0x4db
	.4byte	0x2b5
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL11
	.4byte	0x4ba
	.4byte	0x2d0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.uleb128 0x16
	.4byte	.LVL13
	.4byte	0x4f1
	.4byte	0x2ec
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.byte	0
	.uleb128 0x16
	.4byte	.LVL14
	.4byte	0x4fc
	.4byte	0x30e
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x50
	.byte	0
	.uleb128 0x16
	.4byte	.LVL16
	.4byte	0x4ba
	.4byte	0x323
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.uleb128 0x18
	.4byte	.LVL17
	.4byte	0x507
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x17b
	.uleb128 0xf
	.4byte	.LASF30
	.uleb128 0x5
	.byte	0x4
	.4byte	0x333
	.uleb128 0xd
	.4byte	0x93
	.4byte	0x34e
	.uleb128 0xe
	.4byte	0x85
	.byte	0x4f
	.byte	0
	.uleb128 0x10
	.4byte	.LASF32
	.byte	0x1
	.byte	0x79
	.4byte	0x32d
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4ba
	.uleb128 0x11
	.string	"buf"
	.byte	0x1
	.byte	0x79
	.4byte	0x13b
	.4byte	.LLST3
	.uleb128 0x11
	.string	"len"
	.byte	0x1
	.byte	0x79
	.4byte	0x68
	.4byte	.LLST4
	.uleb128 0x19
	.4byte	.LASF33
	.byte	0x1
	.byte	0x79
	.4byte	0x9a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x12
	.string	"hdr"
	.byte	0x1
	.byte	0x7b
	.4byte	0xe6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.string	"pos"
	.byte	0x1
	.byte	0x7c
	.4byte	0x13b
	.4byte	.LLST5
	.uleb128 0x1a
	.string	"end"
	.byte	0x1
	.byte	0x7c
	.4byte	0x13b
	.4byte	.LLST6
	.uleb128 0x14
	.4byte	.LASF34
	.byte	0x1
	.byte	0x7c
	.4byte	0x13b
	.4byte	.LLST7
	.uleb128 0x14
	.4byte	.LASF35
	.byte	0x1
	.byte	0x7d
	.4byte	0x68
	.4byte	.LLST8
	.uleb128 0x14
	.4byte	.LASF36
	.byte	0x1
	.byte	0x7e
	.4byte	0xaf
	.4byte	.LLST9
	.uleb128 0x15
	.4byte	.LASF37
	.byte	0x1
	.byte	0x7f
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x43a
	.uleb128 0x1a
	.string	"key"
	.byte	0x1
	.byte	0xb3
	.4byte	0x32d
	.4byte	.LLST10
	.uleb128 0x16
	.4byte	.LVL36
	.4byte	0x180
	.4byte	0x429
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL38
	.4byte	0x512
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL24
	.4byte	0x4ba
	.4byte	0x45a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x16
	.4byte	.LVL28
	.4byte	0x4ba
	.4byte	0x46e
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x16
	.4byte	.LVL32
	.4byte	0x4ba
	.4byte	0x497
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x8
	.byte	0x73
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL34
	.4byte	0x51d
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x5
	.byte	0x3b
	.uleb128 0x1d
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x6
	.byte	0x14
	.uleb128 0x1d
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x6
	.byte	0x18
	.uleb128 0x1d
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x6
	.byte	0x15
	.uleb128 0x1d
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x6
	.byte	0x1a
	.uleb128 0x1d
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x5
	.byte	0x3d
	.uleb128 0x1d
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x5
	.byte	0x3f
	.uleb128 0x1d
	.4byte	.LASF45
	.4byte	.LASF45
	.byte	0x7
	.byte	0x11
	.uleb128 0x1d
	.4byte	.LASF46
	.4byte	.LASF46
	.byte	0x8
	.byte	0x5a
	.uleb128 0x1d
	.4byte	.LASF47
	.4byte	.LASF47
	.byte	0x9
	.byte	0xc
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0x1
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
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL21
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LVL39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL41
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
.LLST4:
	.4byte	.LVL23
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL27
	.4byte	.LVL39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL43
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL26
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL31
	.4byte	.LVL32-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL32-1
	.4byte	.LVL37
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL27
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL43
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL29
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL30
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL44
	.4byte	.LFE35
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL35
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL50
	.4byte	.LFE35
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x52
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
.LASF7:
	.string	"__uint8_t"
.LASF33:
	.string	"passwd"
.LASF15:
	.string	"ESP_LOG_ERROR"
.LASF16:
	.string	"ESP_LOG_WARN"
.LASF3:
	.string	"short unsigned int"
.LASF22:
	.string	"class"
.LASF42:
	.string	"bignum_cmp_d"
.LASF31:
	.string	"pkcs8_key_import"
.LASF48:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF37:
	.string	"data_len"
.LASF38:
	.string	"asn1_get_next"
.LASF49:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wpa2/tls/pkcs8.c"
.LASF39:
	.string	"bignum_init"
.LASF27:
	.string	"zero"
.LASF36:
	.string	"data"
.LASF23:
	.string	"constructed"
.LASF1:
	.string	"unsigned char"
.LASF47:
	.string	"pkcs5_decrypt"
.LASF12:
	.string	"long unsigned int"
.LASF21:
	.string	"identifier"
.LASF8:
	.string	"size_t"
.LASF32:
	.string	"pkcs8_enc_key_import"
.LASF44:
	.string	"asn1_oid_to_str"
.LASF28:
	.string	"obuf"
.LASF34:
	.string	"enc_alg"
.LASF14:
	.string	"ESP_LOG_NONE"
.LASF4:
	.string	"unsigned int"
.LASF18:
	.string	"ESP_LOG_DEBUG"
.LASF6:
	.string	"long long unsigned int"
.LASF9:
	.string	"uint8_t"
.LASF41:
	.string	"bignum_deinit"
.LASF40:
	.string	"bignum_set_unsigned_bin"
.LASF20:
	.string	"payload"
.LASF35:
	.string	"enc_alg_len"
.LASF11:
	.string	"sizetype"
.LASF46:
	.string	"free"
.LASF5:
	.string	"long long int"
.LASF43:
	.string	"asn1_get_oid"
.LASF29:
	.string	"crypto_private_key"
.LASF2:
	.string	"short int"
.LASF45:
	.string	"crypto_rsa_import_private_key"
.LASF17:
	.string	"ESP_LOG_INFO"
.LASF30:
	.string	"bignum"
.LASF10:
	.string	"long int"
.LASF13:
	.string	"char"
.LASF50:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\wpa_supplicant"
.LASF0:
	.string	"signed char"
.LASF26:
	.string	"asn1_oid"
.LASF24:
	.string	"length"
.LASF19:
	.string	"ESP_LOG_VERBOSE"
.LASF25:
	.string	"asn1_hdr"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
