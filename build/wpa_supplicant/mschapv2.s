	.file	"mschapv2.c"
	.text
.Ltext0:
	.section	.text.mschapv2_remove_domain,"ax",@progbits
	.align	4
	.global	mschapv2_remove_domain
	.type	mschapv2_remove_domain, @function
mschapv2_remove_domain:
.LFB34:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wpa2/eap_peer/mschapv2.c"
	.loc 1 13 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 21 0
	movi.n	a8, 0
	j	.L2
.LVL2:
.L5:
	.loc 1 22 0
	add.n	a10, a2, a8
	l8ui	a11, a10, 0
	movi.n	a10, 0x5c
	bne	a11, a10, .L3
	.loc 1 23 0
	sub	a9, a9, a8
	addi.n	a9, a9, -1
	s32i.n	a9, a3, 0
	.loc 1 24 0
	addi.n	a8, a8, 1
.LVL3:
	add.n	a2, a2, a8
.LVL4:
	retw.n
.LVL5:
.L3:
	.loc 1 21 0 discriminator 2
	addi.n	a8, a8, 1
.LVL6:
.L2:
	.loc 1 21 0 is_stmt 0 discriminator 1
	l32i.n	a9, a3, 0
	bltu	a8, a9, .L5
	.loc 1 29 0 is_stmt 1
	retw.n
.LFE34:
	.size	mschapv2_remove_domain, .-mschapv2_remove_domain
	.section	.text.mschapv2_derive_response,"ax",@progbits
	.align	4
	.global	mschapv2_derive_response
	.type	mschapv2_derive_response, @function
mschapv2_derive_response:
.LFB35:
	.loc 1 38 0
.LVL7:
	entry	sp, 96
.LCFI1:
	.loc 1 43 0
	s32i.n	a3, sp, 16
	.loc 1 44 0
	addi	a11, sp, 16
	mov.n	a10, a2
	call8	mschapv2_remove_domain
.LVL8:
	mov.n	a2, a10
.LVL9:
	.loc 1 46 0
	beqz.n	a6, .L7
	.loc 1 47 0
	l32i	a15, sp, 100
	mov.n	a14, a4
	l32i.n	a13, sp, 16
	mov.n	a12, a10
	l32i	a11, sp, 96
	mov.n	a10, a7
	call8	generate_nt_response_pwhash
.LVL10:
	bnez.n	a10, .L12
	.loc 1 50 0
	l32i	a3, sp, 104
.LVL11:
	s32i.n	a3, sp, 0
	l32i	a15, sp, 100
	l32i.n	a14, sp, 16
	mov.n	a13, a2
	mov.n	a12, a7
	l32i	a11, sp, 96
	mov.n	a10, a4
	call8	generate_authenticator_response_pwhash
.LVL12:
	.loc 1 49 0
	beqz.n	a10, .L9
	j	.L13
.LVL13:
.L7:
	.loc 1 56 0
	l32i	a3, sp, 100
.LVL14:
	s32i.n	a3, sp, 0
	mov.n	a15, a5
	mov.n	a14, a4
	l32i.n	a13, sp, 16
	mov.n	a12, a10
	l32i	a11, sp, 96
	mov.n	a10, a7
	call8	generate_nt_response
.LVL15:
	bnez.n	a10, .L14
	.loc 1 60 0
	l32i	a3, sp, 104
	s32i.n	a3, sp, 4
	l32i	a3, sp, 100
	s32i.n	a3, sp, 0
	l32i.n	a15, sp, 16
	mov.n	a14, a2
	mov.n	a13, a7
	l32i	a12, sp, 96
	mov.n	a11, a5
	mov.n	a10, a4
	call8	generate_authenticator_response
.LVL16:
	.loc 1 59 0
	bnez.n	a10, .L15
.L9:
	.loc 1 69 0
	beqz.n	a6, .L10
	.loc 1 70 0
	addi	a11, sp, 36
	mov.n	a10, a4
	call8	hash_nt_password_hash
.LVL17:
	beqz.n	a10, .L11
	j	.L16
.L10:
	.loc 1 73 0
	addi	a12, sp, 20
	mov.n	a11, a5
	mov.n	a10, a4
	call8	nt_password_hash
.LVL18:
	bnez.n	a10, .L17
	.loc 1 74 0 discriminator 1
	addi	a11, sp, 36
	addi	a10, sp, 20
	call8	hash_nt_password_hash
.LVL19:
	.loc 1 73 0 discriminator 1
	bnez.n	a10, .L18
.L11:
	.loc 1 77 0
	l32i	a12, sp, 108
	l32i	a11, sp, 100
	addi	a10, sp, 36
	call8	get_master_key
.LVL20:
	mov.n	a2, a10
.LVL21:
	beqz.n	a10, .L8
	.loc 1 78 0
	movi.n	a2, -1
	retw.n
.LVL22:
.L12:
	.loc 1 54 0
	movi.n	a2, -1
.LVL23:
	retw.n
.LVL24:
.L13:
	movi.n	a2, -1
.LVL25:
	retw.n
.LVL26:
.L14:
	.loc 1 66 0
	movi.n	a2, -1
.LVL27:
	retw.n
.LVL28:
.L15:
	movi.n	a2, -1
.LVL29:
	retw.n
.LVL30:
.L16:
	.loc 1 71 0
	movi.n	a2, -1
.LVL31:
	retw.n
.LVL32:
.L17:
	.loc 1 75 0
	movi.n	a2, -1
.LVL33:
	retw.n
.LVL34:
.L18:
	movi.n	a2, -1
.LVL35:
.L8:
	.loc 1 81 0
	retw.n
.LFE35:
	.size	mschapv2_derive_response, .-mschapv2_derive_response
	.section	.text.mschapv2_verify_auth_response,"ax",@progbits
	.align	4
	.global	mschapv2_verify_auth_response
	.type	mschapv2_verify_auth_response, @function
mschapv2_verify_auth_response:
.LFB36:
	.loc 1 85 0
.LVL36:
	entry	sp, 64
.LCFI2:
	.loc 1 87 0
	movi.n	a8, 0x29
	bgeu	a8, a4, .L21
	.loc 1 88 0 discriminator 1
	l8ui	a9, a3, 0
	.loc 1 87 0 discriminator 1
	movi.n	a8, 0x53
	bne	a9, a8, .L22
	.loc 1 88 0
	l8ui	a9, a3, 1
	movi.n	a8, 0x3d
	bne	a9, a8, .L23
	.loc 1 89 0 discriminator 1
	movi.n	a12, 0x14
	mov.n	a11, sp
	addi.n	a10, a3, 2
	call8	hexstr2bin
.LVL37:
	.loc 1 88 0 discriminator 1
	bnez.n	a10, .L24
	.loc 1 91 0
	movi.n	a12, 0x14
	mov.n	a11, sp
	mov.n	a10, a2
	call8	memcmp
.LVL38:
	mov.n	a2, a10
.LVL39:
	.loc 1 90 0
	beqz.n	a10, .L20
	j	.L25
.LVL40:
.L21:
	.loc 1 93 0
	movi.n	a2, -1
.LVL41:
	retw.n
.LVL42:
.L22:
	movi.n	a2, -1
.LVL43:
	retw.n
.LVL44:
.L23:
	movi.n	a2, -1
.LVL45:
	retw.n
.LVL46:
.L24:
	movi.n	a2, -1
.LVL47:
	retw.n
.L25:
	movi.n	a2, -1
.L20:
	.loc 1 95 0
	retw.n
.LFE36:
	.size	mschapv2_verify_auth_response, .-mschapv2_verify_auth_response
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
	.uleb128 0x60
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI2-.LFB36
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/ms_funcs.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/common.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x44b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0xc
	.4byte	.LASF43
	.4byte	.LASF44
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
	.string	"u8"
	.byte	0x6
	.byte	0x1c
	.4byte	0x73
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9a
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x1
	.byte	0xc
	.4byte	0xed
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xed
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x1
	.byte	0xc
	.4byte	0xed
	.4byte	.LLST0
	.uleb128 0x9
	.string	"len"
	.byte	0x1
	.byte	0xc
	.4byte	0xf8
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xa
	.string	"i"
	.byte	0x1
	.byte	0xe
	.4byte	0x68
	.4byte	.LLST1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xf3
	.uleb128 0xb
	.4byte	0x9a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x68
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x1
	.byte	0x1f
	.4byte	0x4c
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x33f
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x1
	.byte	0x1f
	.4byte	0xed
	.4byte	.LLST2
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x1
	.byte	0x1f
	.4byte	0x68
	.4byte	.LLST3
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0x1
	.byte	0x20
	.4byte	0xed
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x1
	.byte	0x20
	.4byte	0x68
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x1
	.byte	0x21
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x1
	.byte	0x22
	.4byte	0xed
	.uleb128 0x1
	.byte	0x57
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x1
	.byte	0x23
	.4byte	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x1
	.byte	0x24
	.4byte	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x1
	.byte	0x24
	.4byte	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x1
	.byte	0x25
	.4byte	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0xd
	.4byte	.LASF14
	.byte	0x1
	.byte	0x27
	.4byte	0xed
	.4byte	.LLST4
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0x1
	.byte	0x28
	.4byte	0x68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0x1
	.byte	0x29
	.4byte	0x33f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x1
	.byte	0x29
	.4byte	0x33f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xf
	.4byte	.LVL8
	.4byte	0xaa
	.4byte	0x1f7
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0xf
	.4byte	.LVL10
	.4byte	0x3ea
	.4byte	0x225
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.4byte	.LVL12
	.4byte	0x3f5
	.4byte	0x25a
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x10
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL15
	.4byte	0x400
	.4byte	0x28e
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL16
	.4byte	0x40b
	.4byte	0x2ca
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.4byte	.LVL17
	.4byte	0x416
	.4byte	0x2e4
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0xf
	.4byte	.LVL18
	.4byte	0x421
	.4byte	0x305
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0xf
	.4byte	.LVL19
	.4byte	0x416
	.4byte	0x320
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x11
	.4byte	.LVL20
	.4byte	0x42c
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 12
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x9a
	.4byte	0x34f
	.uleb128 0x13
	.4byte	0x85
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x1
	.byte	0x53
	.4byte	0x4c
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3da
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x1
	.byte	0x53
	.4byte	0xed
	.4byte	.LLST5
	.uleb128 0x9
	.string	"buf"
	.byte	0x1
	.byte	0x54
	.4byte	0xed
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x1
	.byte	0x54
	.4byte	0x68
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x1
	.byte	0x56
	.4byte	0x3da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xf
	.4byte	.LVL37
	.4byte	0x437
	.4byte	0x3be
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 2
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x11
	.4byte	.LVL38
	.4byte	0x443
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x9a
	.4byte	0x3ea
	.uleb128 0x13
	.4byte	0x85
	.byte	0x13
	.byte	0
	.uleb128 0x14
	.4byte	.LASF33
	.4byte	.LASF33
	.byte	0x5
	.byte	0xf
	.uleb128 0x14
	.4byte	.LASF34
	.4byte	.LASF34
	.byte	0x5
	.byte	0x19
	.uleb128 0x14
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x5
	.byte	0xa
	.uleb128 0x14
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x5
	.byte	0x14
	.uleb128 0x14
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x5
	.byte	0x25
	.uleb128 0x14
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x5
	.byte	0x23
	.uleb128 0x14
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x5
	.byte	0x26
	.uleb128 0x15
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x6
	.2byte	0x127
	.uleb128 0x14
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x7
	.byte	0x16
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.4byte	.LFE34
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
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL14
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL24
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL36
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
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
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF20:
	.string	"password_len"
.LASF13:
	.string	"char"
.LASF7:
	.string	"__uint8_t"
.LASF41:
	.string	"memcmp"
.LASF9:
	.string	"uint8_t"
.LASF34:
	.string	"generate_authenticator_response_pwhash"
.LASF16:
	.string	"mschapv2_derive_response"
.LASF42:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF28:
	.string	"password_hash"
.LASF1:
	.string	"unsigned char"
.LASF38:
	.string	"nt_password_hash"
.LASF27:
	.string	"username_len"
.LASF43:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/wpa2/eap_peer/mschapv2.c"
.LASF12:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF8:
	.string	"size_t"
.LASF31:
	.string	"buf_len"
.LASF23:
	.string	"peer_challenge"
.LASF17:
	.string	"identity"
.LASF40:
	.string	"hexstr2bin"
.LASF29:
	.string	"password_hash_hash"
.LASF36:
	.string	"generate_authenticator_response"
.LASF33:
	.string	"generate_nt_response_pwhash"
.LASF26:
	.string	"master_key"
.LASF4:
	.string	"unsigned int"
.LASF6:
	.string	"long long unsigned int"
.LASF14:
	.string	"username"
.LASF37:
	.string	"hash_nt_password_hash"
.LASF32:
	.string	"recv_response"
.LASF11:
	.string	"sizetype"
.LASF5:
	.string	"long long int"
.LASF18:
	.string	"identity_len"
.LASF24:
	.string	"nt_response"
.LASF30:
	.string	"mschapv2_verify_auth_response"
.LASF15:
	.string	"mschapv2_remove_domain"
.LASF21:
	.string	"pwhash"
.LASF2:
	.string	"short int"
.LASF35:
	.string	"generate_nt_response"
.LASF10:
	.string	"long int"
.LASF22:
	.string	"auth_challenge"
.LASF44:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\wpa_supplicant"
.LASF0:
	.string	"signed char"
.LASF39:
	.string	"get_master_key"
.LASF25:
	.string	"auth_response"
.LASF19:
	.string	"password"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
