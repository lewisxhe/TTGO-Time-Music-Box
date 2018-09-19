	.file	"lib_printf.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"\033[0;32mI (%d) %s: %s\033[0m\n"
	.section	.text.lib_printf,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.align	4
	.type	lib_printf, @function
lib_printf:
.LFB0:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/lib_printf.c"
	.loc 1 35 0
.LVL0:
	entry	sp, 128
.LCFI0:
	s32i	a4, sp, 80
	s32i	a5, sp, 84
	s32i	a6, sp, 88
	.loc 1 37 0
	mov.n	a13, a4
	mov.n	a14, a5
	mov.n	a15, a6
	mov.n	a12, a3
	movi.n	a11, 0x4f
	mov.n	a10, sp
	call8	vsnprintf
.LVL1:
	mov.n	a3, a10
.LVL2:
	.loc 1 38 0
	movi.n	a8, 0
	s8i	a8, sp, 79
	.loc 1 40 0
	addi.n	a8, a10, -1
.LVL3:
	j	.L2
.L5:
	.loc 1 41 0
	add.n	a9, sp, a8
	l8ui	a12, a9, 0
	addi	a11, a12, -10
	movi.n	a13, 1
	movi.n	a9, 0
	mov.n	a4, a9
	movnez	a4, a13, a11
	addi	a10, a12, -13
	movnez	a9, a13, a10
	bnone	a4, a9, .L3
	.loc 1 41 0 is_stmt 0 discriminator 1
	bnei	a12, 32, .L4
.L3:
	.loc 1 44 0 is_stmt 1 discriminator 2
	add.n	a9, sp, a8
	movi.n	a10, 0
	s8i	a10, a9, 0
	.loc 1 40 0 discriminator 2
	addi.n	a8, a8, -1
.LVL4:
.L2:
	.loc 1 40 0 is_stmt 0 discriminator 1
	bgez	a8, .L5
.L4:
	.loc 1 46 0 is_stmt 1
	blti	a8, 1, .L6
	.loc 1 47 0 discriminator 1
	call8	esp_log_timestamp
.LVL5:
	mov.n	a13, sp
	mov.n	a12, a2
	mov.n	a11, a10
	l32r	a10, .LC1
	call8	ets_printf
.LVL6:
.L6:
	.loc 1 51 0
	mov.n	a2, a3
.LVL7:
	retw.n
.LFE0:
	.size	lib_printf, .-lib_printf
	.section	.rodata.str1.4
	.align	4
.LC2:
	.string	"phy"
	.section	.text.phy_printf,"ax",@progbits
	.literal_position
	.literal .LC3, .LC2
	.align	4
	.global	phy_printf
	.type	phy_printf, @function
phy_printf:
.LFB1:
	.loc 1 54 0
.LVL8:
	entry	sp, 80
.LCFI1:
	.loc 1 56 0
	s32i.n	a3, sp, 20
	s32i.n	a4, sp, 24
	s32i.n	a5, sp, 28
	s32i.n	a6, sp, 32
	s32i.n	a7, sp, 36
	.loc 1 56 0
	addi	a13, sp, 16
	s32i.n	a13, sp, 4
	addi	a12, sp, 48
	s32i.n	a12, sp, 0
	movi.n	a14, 4
	s32i.n	a14, sp, 8
	.loc 1 57 0
	mov.n	a11, a2
	l32r	a10, .LC3
	call8	lib_printf
.LVL9:
	.loc 1 60 0
	mov.n	a2, a10
.LVL10:
	retw.n
.LFE1:
	.size	phy_printf, .-phy_printf
	.section	.text.rtc_printf,"ax",@progbits
	.align	4
	.global	rtc_printf
	.type	rtc_printf, @function
rtc_printf:
.LFB2:
	.loc 1 64 0
.LVL11:
	entry	sp, 32
.LCFI2:
	.loc 1 67 0
	movi.n	a2, 0
.LVL12:
	retw.n
.LFE2:
	.size	rtc_printf, .-rtc_printf
	.section	.rodata.str1.4
	.align	4
.LC4:
	.string	"wpa"
	.section	.text.wpa_printf,"ax",@progbits
	.literal_position
	.literal .LC5, .LC4
	.align	4
	.global	wpa_printf
	.type	wpa_printf, @function
wpa_printf:
.LFB3:
	.loc 1 70 0
.LVL13:
	entry	sp, 80
.LCFI3:
	.loc 1 72 0
	s32i.n	a3, sp, 20
	s32i.n	a4, sp, 24
	s32i.n	a5, sp, 28
	s32i.n	a6, sp, 32
	s32i.n	a7, sp, 36
	.loc 1 72 0
	addi	a13, sp, 16
	s32i.n	a13, sp, 4
	addi	a12, sp, 48
	s32i.n	a12, sp, 0
	movi.n	a14, 4
	s32i.n	a14, sp, 8
	.loc 1 73 0
	mov.n	a11, a2
	l32r	a10, .LC5
	call8	lib_printf
.LVL14:
	.loc 1 76 0
	mov.n	a2, a10
.LVL15:
	retw.n
.LFE3:
	.size	wpa_printf, .-wpa_printf
	.section	.rodata.str1.4
	.align	4
.LC6:
	.string	"wpa2"
	.section	.text.wpa2_printf,"ax",@progbits
	.literal_position
	.literal .LC7, .LC6
	.align	4
	.global	wpa2_printf
	.type	wpa2_printf, @function
wpa2_printf:
.LFB4:
	.loc 1 79 0
.LVL16:
	entry	sp, 80
.LCFI4:
	.loc 1 81 0
	s32i.n	a3, sp, 20
	s32i.n	a4, sp, 24
	s32i.n	a5, sp, 28
	s32i.n	a6, sp, 32
	s32i.n	a7, sp, 36
	.loc 1 81 0
	addi	a13, sp, 16
	s32i.n	a13, sp, 4
	addi	a12, sp, 48
	s32i.n	a12, sp, 0
	movi.n	a14, 4
	s32i.n	a14, sp, 8
	.loc 1 82 0
	mov.n	a11, a2
	l32r	a10, .LC7
	call8	lib_printf
.LVL17:
	.loc 1 85 0
	mov.n	a2, a10
.LVL18:
	retw.n
.LFE4:
	.size	wpa2_printf, .-wpa2_printf
	.section	.rodata.str1.4
	.align	4
.LC8:
	.string	"wps"
	.section	.text.wps_printf,"ax",@progbits
	.literal_position
	.literal .LC9, .LC8
	.align	4
	.global	wps_printf
	.type	wps_printf, @function
wps_printf:
.LFB5:
	.loc 1 88 0
.LVL19:
	entry	sp, 80
.LCFI5:
	.loc 1 90 0
	s32i.n	a3, sp, 20
	s32i.n	a4, sp, 24
	s32i.n	a5, sp, 28
	s32i.n	a6, sp, 32
	s32i.n	a7, sp, 36
	.loc 1 90 0
	addi	a13, sp, 16
	s32i.n	a13, sp, 4
	addi	a12, sp, 48
	s32i.n	a12, sp, 0
	movi.n	a14, 4
	s32i.n	a14, sp, 8
	.loc 1 91 0
	mov.n	a11, a2
	l32r	a10, .LC9
	call8	lib_printf
.LVL20:
	.loc 1 94 0
	mov.n	a2, a10
.LVL21:
	retw.n
.LFE5:
	.size	wps_printf, .-wps_printf
	.section	.rodata.str1.4
	.align	4
.LC10:
	.string	"pp"
	.section	.text.pp_printf,"ax",@progbits
	.literal_position
	.literal .LC11, .LC10
	.align	4
	.global	pp_printf
	.type	pp_printf, @function
pp_printf:
.LFB6:
	.loc 1 97 0
.LVL22:
	entry	sp, 80
.LCFI6:
	.loc 1 99 0
	s32i.n	a3, sp, 20
	s32i.n	a4, sp, 24
	s32i.n	a5, sp, 28
	s32i.n	a6, sp, 32
	s32i.n	a7, sp, 36
	.loc 1 99 0
	addi	a13, sp, 16
	s32i.n	a13, sp, 4
	addi	a12, sp, 48
	s32i.n	a12, sp, 0
	movi.n	a14, 4
	s32i.n	a14, sp, 8
	.loc 1 100 0
	mov.n	a11, a2
	l32r	a10, .LC11
	call8	lib_printf
.LVL23:
	.loc 1 103 0
	mov.n	a2, a10
.LVL24:
	retw.n
.LFE6:
	.size	pp_printf, .-pp_printf
	.section	.rodata.str1.4
	.align	4
.LC12:
	.string	"smartconfig"
	.section	.text.sc_printf,"ax",@progbits
	.literal_position
	.literal .LC13, .LC12
	.align	4
	.global	sc_printf
	.type	sc_printf, @function
sc_printf:
.LFB7:
	.loc 1 106 0
.LVL25:
	entry	sp, 80
.LCFI7:
	.loc 1 108 0
	s32i.n	a3, sp, 20
	s32i.n	a4, sp, 24
	s32i.n	a5, sp, 28
	s32i.n	a6, sp, 32
	s32i.n	a7, sp, 36
	.loc 1 108 0
	addi	a13, sp, 16
	s32i.n	a13, sp, 4
	addi	a12, sp, 48
	s32i.n	a12, sp, 0
	movi.n	a14, 4
	s32i.n	a14, sp, 8
	.loc 1 109 0
	mov.n	a11, a2
	l32r	a10, .LC13
	call8	lib_printf
.LVL26:
	.loc 1 112 0
	mov.n	a2, a10
.LVL27:
	retw.n
.LFE7:
	.size	sc_printf, .-sc_printf
	.section	.rodata.str1.4
	.align	4
.LC14:
	.string	"core"
	.section	.text.core_printf,"ax",@progbits
	.literal_position
	.literal .LC15, .LC14
	.align	4
	.global	core_printf
	.type	core_printf, @function
core_printf:
.LFB8:
	.loc 1 115 0
.LVL28:
	entry	sp, 80
.LCFI8:
	.loc 1 117 0
	s32i.n	a3, sp, 20
	s32i.n	a4, sp, 24
	s32i.n	a5, sp, 28
	s32i.n	a6, sp, 32
	s32i.n	a7, sp, 36
	.loc 1 117 0
	addi	a13, sp, 16
	s32i.n	a13, sp, 4
	addi	a12, sp, 48
	s32i.n	a12, sp, 0
	movi.n	a14, 4
	s32i.n	a14, sp, 8
	.loc 1 118 0
	mov.n	a11, a2
	l32r	a10, .LC15
	call8	lib_printf
.LVL29:
	.loc 1 121 0
	mov.n	a2, a10
.LVL30:
	retw.n
.LFE8:
	.size	core_printf, .-core_printf
	.section	.rodata.str1.4
	.align	4
.LC16:
	.string	"net80211"
	.section	.text.net80211_printf,"ax",@progbits
	.literal_position
	.literal .LC17, .LC16
	.align	4
	.global	net80211_printf
	.type	net80211_printf, @function
net80211_printf:
.LFB9:
	.loc 1 124 0
.LVL31:
	entry	sp, 80
.LCFI9:
	.loc 1 126 0
	s32i.n	a3, sp, 20
	s32i.n	a4, sp, 24
	s32i.n	a5, sp, 28
	s32i.n	a6, sp, 32
	s32i.n	a7, sp, 36
	.loc 1 126 0
	addi	a13, sp, 16
	s32i.n	a13, sp, 4
	addi	a12, sp, 48
	s32i.n	a12, sp, 0
	movi.n	a14, 4
	s32i.n	a14, sp, 8
	.loc 1 127 0
	mov.n	a11, a2
	l32r	a10, .LC17
	call8	lib_printf
.LVL32:
	.loc 1 130 0
	mov.n	a2, a10
.LVL33:
	retw.n
.LFE9:
	.size	net80211_printf, .-net80211_printf
	.section	.rodata.str1.4
	.align	4
.LC18:
	.string	"coexist"
	.section	.text.coexist_printf,"ax",@progbits
	.literal_position
	.literal .LC19, .LC18
	.align	4
	.global	coexist_printf
	.type	coexist_printf, @function
coexist_printf:
.LFB10:
	.loc 1 133 0
.LVL34:
	entry	sp, 80
.LCFI10:
	.loc 1 135 0
	s32i.n	a3, sp, 20
	s32i.n	a4, sp, 24
	s32i.n	a5, sp, 28
	s32i.n	a6, sp, 32
	s32i.n	a7, sp, 36
	.loc 1 135 0
	addi	a13, sp, 16
	s32i.n	a13, sp, 4
	addi	a12, sp, 48
	s32i.n	a12, sp, 0
	movi.n	a14, 4
	s32i.n	a14, sp, 8
	.loc 1 136 0
	mov.n	a11, a2
	l32r	a10, .LC19
	call8	lib_printf
.LVL35:
	.loc 1 139 0
	mov.n	a2, a10
.LVL36:
	retw.n
.LFE10:
	.size	coexist_printf, .-coexist_printf
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
	.uleb128 0x80
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
	.uleb128 0x50
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
	.uleb128 0x50
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI4-.LFB4
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI5-.LFB5
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI6-.LFB6
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI7-.LFB7
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI8-.LFB8
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI9-.LFB9
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI10-.LFB10
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE20:
	.text
.Letext0:
	.file 2 "<built-in>"
	.file 3 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdarg.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdio.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x567
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0xc
	.4byte	.LASF38
	.4byte	.LASF39
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
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x28
	.4byte	0x68
	.uleb128 0x5
	.4byte	.LASF40
	.byte	0xc
	.byte	0x2
	.byte	0
	.4byte	0x99
	.uleb128 0x6
	.4byte	.LASF7
	.byte	0x2
	.byte	0
	.4byte	0x99
	.byte	0
	.uleb128 0x6
	.4byte	.LASF8
	.byte	0x2
	.byte	0
	.4byte	0x99
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF9
	.byte	0x2
	.byte	0
	.4byte	0x41
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.byte	0x4
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
	.uleb128 0x8
	.byte	0x4
	.4byte	0xbd
	.uleb128 0x9
	.4byte	0xb0
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x62
	.4byte	0x5d
	.uleb128 0xa
	.byte	0x4
	.4byte	0x48
	.byte	0x5
	.byte	0x1f
	.4byte	0xfe
	.uleb128 0xb
	.4byte	.LASF16
	.byte	0
	.uleb128 0xb
	.4byte	.LASF17
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x1
	.byte	0x22
	.4byte	0x41
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b7
	.uleb128 0xd
	.string	"tag"
	.byte	0x1
	.byte	0x22
	.4byte	0xb7
	.4byte	.LLST0
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0x1
	.byte	0x22
	.4byte	0xb7
	.4byte	.LLST1
	.uleb128 0xf
	.string	"arg"
	.byte	0x1
	.byte	0x22
	.4byte	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.4byte	.LASF23
	.byte	0x1
	.byte	0x24
	.4byte	0x1b7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x11
	.string	"len"
	.byte	0x1
	.byte	0x25
	.4byte	0x41
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x27
	.4byte	0x41
	.4byte	.LLST2
	.uleb128 0x13
	.4byte	.LVL1
	.4byte	0x548
	.4byte	0x18d
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x4f
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL5
	.4byte	0x554
	.uleb128 0x16
	.4byte	.LVL6
	.4byte	0x55f
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	0xb0
	.4byte	0x1c7
	.uleb128 0x18
	.4byte	0xa2
	.byte	0x4f
	.byte	0
	.uleb128 0x19
	.4byte	.LASF24
	.byte	0x1
	.byte	0x35
	.4byte	0x41
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x226
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0x1
	.byte	0x35
	.4byte	0xb7
	.4byte	.LLST3
	.uleb128 0x1a
	.uleb128 0x11
	.string	"arg"
	.byte	0x1
	.byte	0x37
	.4byte	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x11
	.string	"res"
	.byte	0x1
	.byte	0x39
	.4byte	0x41
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x16
	.4byte	.LVL9
	.4byte	0xfe
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF25
	.byte	0x1
	.byte	0x3f
	.4byte	0x41
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x250
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0x1
	.byte	0x3f
	.4byte	0xb7
	.4byte	.LLST4
	.uleb128 0x1a
	.byte	0
	.uleb128 0x19
	.4byte	.LASF26
	.byte	0x1
	.byte	0x45
	.4byte	0x41
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2af
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0x1
	.byte	0x45
	.4byte	0xb7
	.4byte	.LLST5
	.uleb128 0x1a
	.uleb128 0x11
	.string	"arg"
	.byte	0x1
	.byte	0x47
	.4byte	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x11
	.string	"res"
	.byte	0x1
	.byte	0x49
	.4byte	0x41
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x16
	.4byte	.LVL14
	.4byte	0xfe
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF27
	.byte	0x1
	.byte	0x4e
	.4byte	0x41
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x30e
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0x1
	.byte	0x4e
	.4byte	0xb7
	.4byte	.LLST6
	.uleb128 0x1a
	.uleb128 0x11
	.string	"arg"
	.byte	0x1
	.byte	0x50
	.4byte	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x11
	.string	"res"
	.byte	0x1
	.byte	0x52
	.4byte	0x41
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x16
	.4byte	.LVL17
	.4byte	0xfe
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF28
	.byte	0x1
	.byte	0x57
	.4byte	0x41
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x36d
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0x1
	.byte	0x57
	.4byte	0xb7
	.4byte	.LLST7
	.uleb128 0x1a
	.uleb128 0x11
	.string	"arg"
	.byte	0x1
	.byte	0x59
	.4byte	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x11
	.string	"res"
	.byte	0x1
	.byte	0x5b
	.4byte	0x41
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x16
	.4byte	.LVL20
	.4byte	0xfe
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF29
	.byte	0x1
	.byte	0x60
	.4byte	0x41
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3cc
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0x1
	.byte	0x60
	.4byte	0xb7
	.4byte	.LLST8
	.uleb128 0x1a
	.uleb128 0x11
	.string	"arg"
	.byte	0x1
	.byte	0x62
	.4byte	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x11
	.string	"res"
	.byte	0x1
	.byte	0x64
	.4byte	0x41
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x16
	.4byte	.LVL23
	.4byte	0xfe
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF30
	.byte	0x1
	.byte	0x69
	.4byte	0x41
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x42b
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0x1
	.byte	0x69
	.4byte	0xb7
	.4byte	.LLST9
	.uleb128 0x1a
	.uleb128 0x11
	.string	"arg"
	.byte	0x1
	.byte	0x6b
	.4byte	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x11
	.string	"res"
	.byte	0x1
	.byte	0x6d
	.4byte	0x41
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x16
	.4byte	.LVL26
	.4byte	0xfe
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF31
	.byte	0x1
	.byte	0x72
	.4byte	0x41
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x48a
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0x1
	.byte	0x72
	.4byte	0xb7
	.4byte	.LLST10
	.uleb128 0x1a
	.uleb128 0x11
	.string	"arg"
	.byte	0x1
	.byte	0x74
	.4byte	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x11
	.string	"res"
	.byte	0x1
	.byte	0x76
	.4byte	0x41
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x16
	.4byte	.LVL29
	.4byte	0xfe
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF32
	.byte	0x1
	.byte	0x7b
	.4byte	0x41
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4e9
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0x1
	.byte	0x7b
	.4byte	0xb7
	.4byte	.LLST11
	.uleb128 0x1a
	.uleb128 0x11
	.string	"arg"
	.byte	0x1
	.byte	0x7d
	.4byte	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x11
	.string	"res"
	.byte	0x1
	.byte	0x7f
	.4byte	0x41
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x16
	.4byte	.LVL32
	.4byte	0xfe
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF33
	.byte	0x1
	.byte	0x84
	.4byte	0x41
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x548
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0x1
	.byte	0x84
	.4byte	0xb7
	.4byte	.LLST12
	.uleb128 0x1a
	.uleb128 0x11
	.string	"arg"
	.byte	0x1
	.byte	0x86
	.4byte	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x11
	.string	"res"
	.byte	0x1
	.byte	0x88
	.4byte	0x41
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x16
	.4byte	.LVL35
	.4byte	0xfe
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF34
	.4byte	.LASF34
	.byte	0x4
	.2byte	0x12c
	.uleb128 0x1c
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x5
	.byte	0x57
	.uleb128 0x1c
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x6
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x18
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x18
	.byte	0
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
	.4byte	.LVL0
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL2
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL36
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x6c
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
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
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
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
.LASF17:
	.string	"ESP_LOG_ERROR"
.LASF34:
	.string	"vsnprintf"
.LASF24:
	.string	"phy_printf"
.LASF27:
	.string	"wpa2_printf"
.LASF33:
	.string	"coexist_printf"
.LASF38:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/esp32/lib_printf.c"
.LASF37:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF35:
	.string	"esp_log_timestamp"
.LASF39:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\esp32"
.LASF19:
	.string	"ESP_LOG_INFO"
.LASF15:
	.string	"va_list"
.LASF18:
	.string	"ESP_LOG_WARN"
.LASF1:
	.string	"unsigned char"
.LASF12:
	.string	"long unsigned int"
.LASF23:
	.string	"temp"
.LASF3:
	.string	"short unsigned int"
.LASF30:
	.string	"sc_printf"
.LASF31:
	.string	"core_printf"
.LASF14:
	.string	"__gnuc_va_list"
.LASF22:
	.string	"format"
.LASF4:
	.string	"unsigned int"
.LASF20:
	.string	"ESP_LOG_DEBUG"
.LASF6:
	.string	"long long unsigned int"
.LASF28:
	.string	"wps_printf"
.LASF26:
	.string	"wpa_printf"
.LASF8:
	.string	"__va_reg"
.LASF41:
	.string	"lib_printf"
.LASF36:
	.string	"ets_printf"
.LASF11:
	.string	"sizetype"
.LASF5:
	.string	"long long int"
.LASF13:
	.string	"char"
.LASF32:
	.string	"net80211_printf"
.LASF2:
	.string	"short int"
.LASF16:
	.string	"ESP_LOG_NONE"
.LASF9:
	.string	"__va_ndx"
.LASF10:
	.string	"long int"
.LASF25:
	.string	"rtc_printf"
.LASF0:
	.string	"signed char"
.LASF40:
	.string	"__va_list_tag"
.LASF7:
	.string	"__va_stk"
.LASF21:
	.string	"ESP_LOG_VERBOSE"
.LASF29:
	.string	"pp_printf"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
