	.file	"http_auth.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"%02x"
	.section	.text.md5_printf,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.align	4
	.type	md5_printf, @function
md5_printf:
.LFB34:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp_http_client/lib/http_auth.c"
	.loc 1 45 0
.LVL0:
	entry	sp, 208
.LCFI0:
	.loc 1 51 0
	s32i	a4, sp, 152
	s32i	a5, sp, 156
	s32i	a6, sp, 160
	s32i	a7, sp, 164
	.loc 1 51 0
	movi	a13, 0x90
	add.n	a13, sp, a13
	s32i	a13, sp, 132
	movi	a4, 0xb0
	add.n	a12, sp, a4
	s32i	a12, sp, 128
	movi.n	a14, 8
	s32i	a14, sp, 136
	.loc 1 52 0
	mov.n	a11, a3
	mov.n	a10, sp
	call8	vasprintf
.LVL1:
	mov.n	a7, a10
.LVL2:
	.loc 1 53 0
	l32i.n	a3, sp, 0
.LVL3:
	beqz.n	a3, .L5
	.loc 1 57 0
	addi	a10, sp, 40
	call8	MD5Init
.LVL4:
	.loc 1 58 0
	mov.n	a12, a7
	l32i.n	a11, sp, 0
	addi	a10, sp, 40
	call8	MD5Update
.LVL5:
	.loc 1 59 0
	addi	a11, sp, 40
	addi.n	a10, sp, 4
	call8	MD5Final
.LVL6:
	.loc 1 61 0
	movi.n	a3, 0
	j	.L3
.LVL7:
.L4:
	.loc 1 62 0 discriminator 3
	addi.n	a4, sp, 4
	add.n	a8, a4, a3
	l8ui	a12, a8, 0
	l32r	a11, .LC1
	addx2	a10, a3, a2
	call8	sprintf
.LVL8:
	.loc 1 61 0 discriminator 3
	addi.n	a3, a3, 1
.LVL9:
.L3:
	.loc 1 61 0 is_stmt 0 discriminator 1
	movi.n	a8, 0xf
	bge	a8, a3, .L4
	.loc 1 66 0 is_stmt 1
	l32i.n	a10, sp, 0
	call8	free
.LVL10:
	.loc 1 67 0
	movi.n	a2, 0x21
.LVL11:
	retw.n
.LVL12:
.L5:
	.loc 1 54 0
	movi.n	a2, -1
.LVL13:
	.loc 1 68 0
	retw.n
.LFE34:
	.size	md5_printf, .-md5_printf
	.section	.rodata.str1.4
	.align	4
.LC2:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/esp_http_client/lib/http_auth.c"
	.align	4
.LC4:
	.string	"HTTP_AUTH"
	.align	4
.LC6:
	.string	"\033[0;31mE (%d) %s: %s:%d (%s): %s\033[0m\n"
	.align	4
.LC8:
	.string	"Memory exhausted"
	.align	4
.LC11:
	.string	"%s:%s:%s"
	.align	4
.LC13:
	.string	"md5-sess"
	.align	4
.LC15:
	.string	"%s:%s:%016llx"
	.align	4
.LC17:
	.string	"%s:%s"
	.align	4
.LC19:
	.string	"auth-int"
	.align	4
.LC21:
	.string	"entity"
	.align	4
.LC23:
	.string	"%s:%s:%08x:%016llx:%s:%s"
	.align	4
.LC25:
	.string	"Digest username=\"%s\", realm=\"%s\", nonce=\"%s\", uri=\"%s\", algorithm=\"MD5\", response=\"%s\", opaque=\"%s\", qop=%s, nc=%08x, cnonce=\"%016llx\""
	.section	.text.http_auth_digest,"ax",@progbits
	.literal_position
	.literal .LC3, .LC2
	.literal .LC5, .LC4
	.literal .LC7, .LC6
	.literal .LC9, .LC8
	.literal .LC10, __FUNCTION__$6818
	.literal .LC12, .LC11
	.literal .LC14, .LC13
	.literal .LC16, .LC15
	.literal .LC18, .LC17
	.literal .LC20, .LC19
	.literal .LC22, .LC21
	.literal .LC24, .LC23
	.literal .LC26, .LC25
	.align	4
	.global	http_auth_digest
	.type	http_auth_digest, @function
http_auth_digest:
.LFB35:
	.loc 1 71 0
.LVL14:
	entry	sp, 96
.LCFI1:
	mov.n	a5, a2
	s32i.n	a3, sp, 48
.LVL15:
	.loc 1 74 0
	movi.n	a6, 0
	s32i.n	a6, sp, 32
	.loc 1 76 0
	movi.n	a2, 1
.LVL16:
	mov.n	a3, a6
.LVL17:
	moveqz	a3, a2, a5
	.loc 1 77 0
	l32i.n	a8, sp, 48
	movnez	a2, a6, a8
	.loc 1 76 0
	or	a2, a2, a3
	.loc 1 76 0
	bne	a2, a6, .L16
	.loc 1 78 0
	l32i.n	a2, a4, 16
	.loc 1 77 0
	beq	a2, a6, .L7
	.loc 1 79 0
	l32i.n	a2, a4, 8
	.loc 1 78 0
	beq	a2, a6, .L7
	.loc 1 80 0
	l32i.n	a2, a4, 12
	.loc 1 79 0
	beq	a2, a6, .L7
	.loc 1 84 0
	movi.n	a11, 0x21
	movi.n	a10, 1
	call8	calloc
.LVL18:
	mov.n	a3, a10
.LVL19:
	.loc 1 85 0
	bne	a10, a6, .L8
	.loc 1 85 0 is_stmt 0 discriminator 3
	call8	esp_log_timestamp
.LVL20:
	l32r	a11, .LC5
	l32r	a2, .LC9
	s32i.n	a2, sp, 8
	l32r	a2, .LC10
	s32i.n	a2, sp, 4
	movi.n	a2, 0x55
	s32i.n	a2, sp, 0
	l32r	a15, .LC3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC7
	movi.n	a10, 1
	call8	esp_log_write
.LVL21:
	.loc 1 73 0 is_stmt 1 discriminator 3
	mov.n	a7, a6
	.loc 1 85 0 discriminator 3
	j	.L9
.L8:
	.loc 1 87 0
	movi.n	a11, 0x21
	movi.n	a10, 1
	call8	calloc
.LVL22:
	mov.n	a6, a10
.LVL23:
	.loc 1 88 0
	bnez.n	a10, .L10
	.loc 1 88 0 is_stmt 0 discriminator 3
	call8	esp_log_timestamp
.LVL24:
	l32r	a11, .LC5
	l32r	a2, .LC9
	s32i.n	a2, sp, 8
	l32r	a2, .LC10
	s32i.n	a2, sp, 4
	movi.n	a2, 0x58
	s32i.n	a2, sp, 0
	l32r	a15, .LC3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC7
	movi.n	a10, 1
	call8	esp_log_write
.LVL25:
	.loc 1 73 0 is_stmt 1 discriminator 3
	movi.n	a7, 0
	.loc 1 88 0 discriminator 3
	j	.L9
.L10:
	.loc 1 90 0
	movi.n	a11, 0x21
	movi.n	a10, 1
	call8	calloc
.LVL26:
	mov.n	a7, a10
.LVL27:
	.loc 1 91 0
	bnez.n	a10, .L11
	.loc 1 91 0 is_stmt 0 discriminator 3
	call8	esp_log_timestamp
.LVL28:
	l32r	a11, .LC5
	l32r	a2, .LC9
	s32i.n	a2, sp, 8
	l32r	a2, .LC10
	s32i.n	a2, sp, 4
	movi.n	a2, 0x5b
	s32i.n	a2, sp, 0
	l32r	a15, .LC3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC7
	movi.n	a10, 1
	call8	esp_log_write
.LVL29:
	j	.L9
.L11:
	.loc 1 93 0 is_stmt 1
	l32i.n	a14, sp, 48
	mov.n	a13, a2
	mov.n	a12, a5
	l32r	a11, .LC12
	mov.n	a10, a3
	call8	md5_printf
.LVL30:
	blti	a10, 1, .L9
	.loc 1 98 0
	l32r	a11, .LC14
	l32i.n	a10, a4, 4
	call8	strcasecmp
.LVL31:
	bnez.n	a10, .L12
	.loc 1 99 0
	l32i.n	a14, a4, 32
	l32i.n	a15, a4, 36
	l32i.n	a13, a4, 16
	mov.n	a12, a3
	l32r	a11, .LC16
	mov.n	a10, a3
	call8	md5_printf
.LVL32:
	blti	a10, 1, .L9
.L12:
	.loc 1 103 0
	l32i.n	a13, a4, 8
	l32i.n	a12, a4, 0
	l32r	a11, .LC18
	mov.n	a10, a6
	call8	md5_printf
.LVL33:
	blti	a10, 1, .L9
	.loc 1 108 0
	l32i.n	a10, a4, 20
	beqz.n	a10, .L13
	.loc 1 108 0 is_stmt 0 discriminator 1
	l32r	a11, .LC20
	call8	strcasecmp
.LVL34:
	bnez.n	a10, .L13
	.loc 1 109 0 is_stmt 1
	l32r	a13, .LC22
	mov.n	a12, a6
	l32r	a11, .LC18
	mov.n	a10, a6
	call8	md5_printf
.LVL35:
	blti	a10, 1, .L9
.L13:
	.loc 1 114 0
	l32i.n	a2, a4, 20
	beqz.n	a2, .L14
	.loc 1 116 0
	s32i.n	a6, sp, 12
	s32i.n	a2, sp, 8
	l32i.n	a8, a4, 32
	l32i.n	a9, a4, 36
	s32i.n	a8, sp, 0
	s32i.n	a9, sp, 4
	l32i.n	a14, a4, 40
	l32i.n	a13, a4, 16
	mov.n	a12, a3
	l32r	a11, .LC24
	mov.n	a10, a7
	call8	md5_printf
.LVL36:
	bgei	a10, 1, .L15
	j	.L9
.L14:
	.loc 1 121 0
	mov.n	a14, a6
	l32i.n	a13, a4, 16
	mov.n	a12, a3
	l32r	a11, .LC12
	mov.n	a10, a7
	call8	md5_printf
.LVL37:
	blti	a10, 1, .L9
.L15:
	.loc 1 125 0
	l32i.n	a8, a4, 32
	l32i.n	a9, a4, 36
	s32i.n	a8, sp, 16
	s32i.n	a9, sp, 20
	l32i.n	a2, a4, 40
	s32i.n	a2, sp, 12
	l32i.n	a2, a4, 20
	s32i.n	a2, sp, 8
	l32i.n	a2, a4, 24
	s32i.n	a2, sp, 4
	s32i.n	a7, sp, 0
	l32i.n	a15, a4, 8
	l32i.n	a14, a4, 16
	l32i.n	a13, a4, 12
	mov.n	a12, a5
	l32r	a11, .LC26
	addi	a10, sp, 32
	call8	asprintf
.LVL38:
.L9:
	.loc 1 129 0
	mov.n	a10, a3
	call8	free
.LVL39:
	.loc 1 130 0
	mov.n	a10, a6
	call8	free
.LVL40:
	.loc 1 131 0
	mov.n	a10, a7
	call8	free
.LVL41:
	.loc 1 132 0
	l32i.n	a2, sp, 32
	retw.n
.LVL42:
.L16:
	.loc 1 81 0
	movi.n	a2, 0
.L7:
	.loc 1 133 0
	retw.n
.LFE35:
	.size	http_auth_digest, .-http_auth_digest
	.section	.rodata.str1.4
	.align	4
.LC33:
	.string	"Basic "
	.section	.text.http_auth_basic,"ax",@progbits
	.literal_position
	.literal .LC27, .LC2
	.literal .LC28, .LC4
	.literal .LC29, .LC6
	.literal .LC30, .LC8
	.literal .LC31, __FUNCTION__$6827
	.literal .LC32, .LC17
	.literal .LC34, .LC33
	.align	4
	.global	http_auth_basic
	.type	http_auth_basic, @function
http_auth_basic:
.LFB36:
	.loc 1 136 0
.LVL43:
	entry	sp, 64
.LCFI2:
	mov.n	a4, a2
	.loc 1 138 0
	movi.n	a8, 0
	s32i.n	a8, sp, 20
	.loc 1 139 0
	movi.n	a11, 0x28
	movi.n	a10, 1
	call8	calloc
.LVL44:
	mov.n	a2, a10
.LVL45:
	.loc 1 140 0
	bnez.n	a10, .L18
	.loc 1 140 0 is_stmt 0 discriminator 3
	call8	esp_log_timestamp
.LVL46:
	l32r	a11, .LC28
	l32r	a3, .LC30
.LVL47:
	s32i.n	a3, sp, 8
	l32r	a3, .LC31
	s32i.n	a3, sp, 4
	movi	a3, 0x8c
	s32i.n	a3, sp, 0
	l32r	a15, .LC27
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC29
	movi.n	a10, 1
	call8	esp_log_write
.LVL48:
	j	.L19
.LVL49:
.L18:
	.loc 1 141 0 is_stmt 1
	mov.n	a13, a3
	mov.n	a12, a4
	l32r	a11, .LC32
	addi	a10, sp, 20
	call8	asprintf
.LVL50:
	.loc 1 142 0
	l32i.n	a8, sp, 20
	bnez.n	a8, .L20
	.loc 1 142 0 is_stmt 0 discriminator 3
	call8	esp_log_timestamp
.LVL51:
	l32r	a11, .LC28
	l32r	a3, .LC30
.LVL52:
	s32i.n	a3, sp, 8
	l32r	a3, .LC31
	s32i.n	a3, sp, 4
	movi	a3, 0x8e
	s32i.n	a3, sp, 0
	l32r	a15, .LC27
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC29
	movi.n	a10, 1
	call8	esp_log_write
.LVL53:
	j	.L19
.LVL54:
.L20:
	.loc 1 143 0 is_stmt 1
	beqz.n	a8, .L19
	.loc 1 146 0
	movi.n	a12, 7
	l32r	a11, .LC34
	mov.n	a10, a2
	call8	memcpy
.LVL55:
	.loc 1 147 0
	l32i.n	a3, sp, 20
.LVL56:
	mov.n	a10, a3
	call8	strlen
.LVL57:
	mov.n	a14, a10
	mov.n	a13, a3
	addi	a12, sp, 16
	movi.n	a11, 0x21
	addi.n	a10, a2, 6
	call8	mbedtls_base64_encode
.LVL58:
.L19:
	.loc 1 149 0
	l32i.n	a10, sp, 20
	call8	free
.LVL59:
	.loc 1 151 0
	retw.n
.LFE36:
	.size	http_auth_basic, .-http_auth_basic
	.section	.rodata.__FUNCTION__$6827,"a",@progbits
	.align	4
	.type	__FUNCTION__$6827, @object
	.size	__FUNCTION__$6827, 16
__FUNCTION__$6827:
	.string	"http_auth_basic"
	.section	.rodata.__FUNCTION__$6818,"a",@progbits
	.align	4
	.type	__FUNCTION__$6818, @object
	.size	__FUNCTION__$6818, 17
__FUNCTION__$6818:
	.string	"http_auth_digest"
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
	.uleb128 0xd0
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
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdarg.h"
	.file 5 "<built-in>"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/md5_hash.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/esp_http_client/lib/include/http_auth.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdio.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/base64.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x9a4
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0xc
	.4byte	.LASF66
	.4byte	.LASF67
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF3
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
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x3
	.byte	0x12
	.4byte	0x57
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x3
	.byte	0x1a
	.4byte	0x30
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x3
	.byte	0x1e
	.4byte	0x82
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x6
	.byte	0x4
	.4byte	0x57
	.uleb128 0x6
	.byte	0x4
	.4byte	0xac
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb9
	.uleb128 0x7
	.4byte	0xac
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x4
	.byte	0x28
	.4byte	0xc9
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0xc
	.byte	0x5
	.byte	0
	.4byte	0xfa
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x5
	.byte	0
	.4byte	0x97
	.byte	0
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x5
	.byte	0
	.4byte	0x97
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x5
	.byte	0
	.4byte	0x3e
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x4
	.byte	0x62
	.4byte	0xbe
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x6
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x6
	.byte	0x2d
	.4byte	0x65
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x6
	.byte	0x39
	.4byte	0x77
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF23
	.uleb128 0xa
	.4byte	0x105
	.4byte	0x13d
	.uleb128 0xb
	.4byte	0x90
	.byte	0x3f
	.byte	0
	.uleb128 0x7
	.4byte	0xb3
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x58
	.byte	0x7
	.byte	0x18
	.4byte	0x172
	.uleb128 0xc
	.string	"buf"
	.byte	0x7
	.byte	0x19
	.4byte	0x172
	.byte	0
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x7
	.byte	0x1a
	.4byte	0x182
	.byte	0x10
	.uleb128 0xc
	.string	"in"
	.byte	0x7
	.byte	0x1b
	.4byte	0x12d
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.4byte	0x110
	.4byte	0x182
	.uleb128 0xb
	.4byte	0x90
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.4byte	0x110
	.4byte	0x192
	.uleb128 0xb
	.4byte	0x90
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x30
	.byte	0xb
	.byte	0x1f
	.4byte	0x1c3
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF30
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.byte	0x30
	.byte	0x8
	.byte	0x16
	.4byte	0x237
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x8
	.byte	0x17
	.4byte	0xa6
	.byte	0
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x8
	.byte	0x18
	.4byte	0xa6
	.byte	0x4
	.uleb128 0xc
	.string	"uri"
	.byte	0x8
	.byte	0x19
	.4byte	0xa6
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x8
	.byte	0x1a
	.4byte	0xa6
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x8
	.byte	0x1b
	.4byte	0xa6
	.byte	0x10
	.uleb128 0xc
	.string	"qop"
	.byte	0x8
	.byte	0x1c
	.4byte	0xa6
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x8
	.byte	0x1d
	.4byte	0xa6
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x8
	.byte	0x1e
	.4byte	0x11b
	.byte	0x20
	.uleb128 0xc
	.string	"nc"
	.byte	0x8
	.byte	0x1f
	.4byte	0x3e
	.byte	0x28
	.byte	0
	.uleb128 0x2
	.4byte	.LASF39
	.byte	0x8
	.byte	0x20
	.4byte	0x1c3
	.uleb128 0x10
	.4byte	.LASF68
	.byte	0x1
	.byte	0x2c
	.4byte	0x3e
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x361
	.uleb128 0x11
	.string	"md"
	.byte	0x1
	.byte	0x2c
	.4byte	0xa6
	.4byte	.LLST0
	.uleb128 0x11
	.string	"fmt"
	.byte	0x1
	.byte	0x2c
	.4byte	0xb3
	.4byte	.LLST1
	.uleb128 0x12
	.uleb128 0x13
	.string	"buf"
	.byte	0x1
	.byte	0x2e
	.4byte	0xa0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x14
	.4byte	.LASF40
	.byte	0x1
	.byte	0x2f
	.4byte	0x361
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x13
	.string	"len"
	.byte	0x1
	.byte	0x30
	.4byte	0x3e
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0x30
	.4byte	0x3e
	.4byte	.LLST2
	.uleb128 0x14
	.4byte	.LASF41
	.byte	0x1
	.byte	0x31
	.4byte	0x142
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x13
	.string	"ap"
	.byte	0x1
	.byte	0x32
	.4byte	0xfa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x16
	.4byte	.LVL1
	.4byte	0x90e
	.4byte	0x2e9
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL4
	.4byte	0x91a
	.4byte	0x2fe
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0x16
	.4byte	.LVL5
	.4byte	0x925
	.4byte	0x319
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL6
	.4byte	0x930
	.4byte	0x335
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
	.sleb128 -168
	.byte	0
	.uleb128 0x16
	.4byte	.LVL8
	.4byte	0x93b
	.4byte	0x357
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x7
	.byte	0x73
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL10
	.4byte	0x946
	.byte	0
	.uleb128 0xa
	.4byte	0x57
	.4byte	0x371
	.uleb128 0xb
	.4byte	0x90
	.byte	0x20
	.byte	0
	.uleb128 0x19
	.4byte	.LASF46
	.byte	0x1
	.byte	0x46
	.4byte	0xa6
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6f4
	.uleb128 0x1a
	.4byte	.LASF42
	.byte	0x1
	.byte	0x46
	.4byte	0xb3
	.4byte	.LLST3
	.uleb128 0x1a
	.4byte	.LASF43
	.byte	0x1
	.byte	0x46
	.4byte	0xb3
	.4byte	.LLST4
	.uleb128 0x1b
	.4byte	.LASF44
	.byte	0x1
	.byte	0x46
	.4byte	0x6f4
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x15
	.string	"ha1"
	.byte	0x1
	.byte	0x48
	.4byte	0xa6
	.4byte	.LLST5
	.uleb128 0x15
	.string	"ha2"
	.byte	0x1
	.byte	0x48
	.4byte	0xa6
	.4byte	.LLST6
	.uleb128 0x1c
	.4byte	.LASF40
	.byte	0x1
	.byte	0x49
	.4byte	0xa6
	.4byte	.LLST7
	.uleb128 0x14
	.4byte	.LASF45
	.byte	0x1
	.byte	0x4a
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1d
	.4byte	.LASF49
	.4byte	0x70a
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$6818
	.uleb128 0x1e
	.4byte	.LASF50
	.byte	0x1
	.byte	0x80
	.4byte	.L9
	.uleb128 0x16
	.4byte	.LVL18
	.4byte	0x951
	.4byte	0x423
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x21
	.byte	0
	.uleb128 0x18
	.4byte	.LVL20
	.4byte	0x95c
	.uleb128 0x16
	.4byte	.LVL21
	.4byte	0x967
	.4byte	0x47e
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x17
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$6818
	.uleb128 0x17
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.uleb128 0x16
	.4byte	.LVL22
	.4byte	0x951
	.4byte	0x497
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x21
	.byte	0
	.uleb128 0x18
	.4byte	.LVL24
	.4byte	0x95c
	.uleb128 0x16
	.4byte	.LVL25
	.4byte	0x967
	.4byte	0x4f2
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x17
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$6818
	.uleb128 0x17
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.uleb128 0x16
	.4byte	.LVL26
	.4byte	0x951
	.4byte	0x50b
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x21
	.byte	0
	.uleb128 0x18
	.4byte	.LVL28
	.4byte	0x95c
	.uleb128 0x16
	.4byte	.LVL29
	.4byte	0x967
	.4byte	0x566
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x17
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$6818
	.uleb128 0x17
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.uleb128 0x16
	.4byte	.LVL30
	.4byte	0x242
	.4byte	0x596
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0
	.uleb128 0x16
	.4byte	.LVL31
	.4byte	0x972
	.4byte	0x5ad
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.uleb128 0x16
	.4byte	.LVL32
	.4byte	0x242
	.4byte	0x5d0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL33
	.4byte	0x242
	.4byte	0x5ed
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.uleb128 0x16
	.4byte	.LVL34
	.4byte	0x972
	.4byte	0x604
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0
	.uleb128 0x16
	.4byte	.LVL35
	.4byte	0x242
	.4byte	0x630
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.byte	0
	.uleb128 0x16
	.4byte	.LVL36
	.4byte	0x242
	.4byte	0x661
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x2
	.byte	0x71
	.sleb128 12
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL37
	.4byte	0x242
	.4byte	0x68a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL38
	.4byte	0x97d
	.4byte	0x6bb
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL39
	.4byte	0x946
	.4byte	0x6cf
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL40
	.4byte	0x946
	.4byte	0x6e3
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL41
	.4byte	0x946
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x237
	.uleb128 0xa
	.4byte	0xac
	.4byte	0x70a
	.uleb128 0xb
	.4byte	0x90
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.4byte	0x6fa
	.uleb128 0x19
	.4byte	.LASF47
	.byte	0x1
	.byte	0x87
	.4byte	0xa6
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8e7
	.uleb128 0x1a
	.4byte	.LASF42
	.byte	0x1
	.byte	0x87
	.4byte	0xb3
	.4byte	.LLST8
	.uleb128 0x1a
	.4byte	.LASF43
	.byte	0x1
	.byte	0x87
	.4byte	0xb3
	.4byte	.LLST9
	.uleb128 0x13
	.string	"out"
	.byte	0x1
	.byte	0x89
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.4byte	.LASF48
	.byte	0x1
	.byte	0x8a
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x14
	.4byte	.LASF40
	.byte	0x1
	.byte	0x8b
	.4byte	0xa6
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1d
	.4byte	.LASF49
	.4byte	0x8f7
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$6827
	.uleb128 0x1e
	.4byte	.LASF51
	.byte	0x1
	.byte	0x94
	.4byte	.L19
	.uleb128 0x16
	.4byte	.LVL44
	.4byte	0x951
	.4byte	0x7a2
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.uleb128 0x18
	.4byte	.LVL46
	.4byte	0x95c
	.uleb128 0x16
	.4byte	.LVL48
	.4byte	0x967
	.4byte	0x7fd
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x17
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$6827
	.uleb128 0x17
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.uleb128 0x16
	.4byte	.LVL50
	.4byte	0x97d
	.4byte	0x826
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL51
	.4byte	0x95c
	.uleb128 0x16
	.4byte	.LVL53
	.4byte	0x967
	.4byte	0x881
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x17
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$6827
	.uleb128 0x17
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.uleb128 0x16
	.4byte	.LVL55
	.4byte	0x988
	.4byte	0x8a3
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC33
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.uleb128 0x16
	.4byte	.LVL57
	.4byte	0x991
	.4byte	0x8b7
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL58
	.4byte	0x99c
	.4byte	0x8dd
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 6
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x21
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL59
	.4byte	0x946
	.byte	0
	.uleb128 0xa
	.4byte	0xac
	.4byte	0x8f7
	.uleb128 0xb
	.4byte	0x90
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.4byte	0x8e7
	.uleb128 0x13
	.string	"TAG"
	.byte	0x1
	.byte	0x22
	.4byte	0x13d
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.uleb128 0x20
	.4byte	.LASF52
	.4byte	.LASF52
	.byte	0x9
	.2byte	0x116
	.uleb128 0x21
	.4byte	.LASF53
	.4byte	.LASF53
	.byte	0x7
	.byte	0x1e
	.uleb128 0x21
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0x7
	.byte	0x1f
	.uleb128 0x21
	.4byte	.LASF55
	.4byte	.LASF55
	.byte	0x7
	.byte	0x20
	.uleb128 0x21
	.4byte	.LASF56
	.4byte	.LASF56
	.byte	0x9
	.byte	0xde
	.uleb128 0x21
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0xa
	.byte	0x5a
	.uleb128 0x21
	.4byte	.LASF58
	.4byte	.LASF58
	.byte	0xa
	.byte	0x57
	.uleb128 0x21
	.4byte	.LASF59
	.4byte	.LASF59
	.byte	0xb
	.byte	0x57
	.uleb128 0x21
	.4byte	.LASF60
	.4byte	.LASF60
	.byte	0xb
	.byte	0x6b
	.uleb128 0x21
	.4byte	.LASF61
	.4byte	.LASF61
	.byte	0xc
	.byte	0x49
	.uleb128 0x21
	.4byte	.LASF62
	.4byte	.LASF62
	.byte	0x9
	.byte	0xfa
	.uleb128 0x22
	.4byte	.LASF69
	.4byte	.LASF69
	.uleb128 0x21
	.4byte	.LASF63
	.4byte	.LASF63
	.byte	0xc
	.byte	0x21
	.uleb128 0x21
	.4byte	.LASF64
	.4byte	.LASF64
	.byte	0xd
	.byte	0x37
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
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
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
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
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LFE35
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL14
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL17
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL42
	.4byte	.LFE35
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL19
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL15
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL42
	.4byte	.LFE35
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL15
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL42
	.4byte	.LFE35
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL45
	.4byte	.LFE36
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL43
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL56
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
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
.LASF37:
	.string	"opaque"
.LASF55:
	.string	"MD5Final"
.LASF67:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\esp_http_client"
.LASF33:
	.string	"method"
.LASF9:
	.string	"__uint64_t"
.LASF22:
	.string	"uint64_t"
.LASF6:
	.string	"short int"
.LASF3:
	.string	"size_t"
.LASF12:
	.string	"sizetype"
.LASF63:
	.string	"strlen"
.LASF18:
	.string	"__va_ndx"
.LASF7:
	.string	"__uint32_t"
.LASF19:
	.string	"va_list"
.LASF24:
	.string	"__va_list_tag"
.LASF69:
	.string	"memcpy"
.LASF51:
	.string	"_basic_exit"
.LASF39:
	.string	"esp_http_auth_data_t"
.LASF20:
	.string	"uint8_t"
.LASF62:
	.string	"asprintf"
.LASF43:
	.string	"password"
.LASF57:
	.string	"free"
.LASF45:
	.string	"auth_str"
.LASF48:
	.string	"user_info"
.LASF8:
	.string	"long long int"
.LASF26:
	.string	"bits"
.LASF25:
	.string	"MD5Context"
.LASF11:
	.string	"long int"
.LASF27:
	.string	"ESP_LOG_NONE"
.LASF30:
	.string	"ESP_LOG_INFO"
.LASF44:
	.string	"auth_data"
.LASF4:
	.string	"__uint8_t"
.LASF56:
	.string	"sprintf"
.LASF36:
	.string	"nonce"
.LASF5:
	.string	"unsigned char"
.LASF65:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF2:
	.string	"signed char"
.LASF10:
	.string	"long long unsigned int"
.LASF21:
	.string	"uint32_t"
.LASF0:
	.string	"unsigned int"
.LASF38:
	.string	"cnonce"
.LASF53:
	.string	"MD5Init"
.LASF1:
	.string	"short unsigned int"
.LASF52:
	.string	"vasprintf"
.LASF40:
	.string	"digest"
.LASF14:
	.string	"char"
.LASF64:
	.string	"mbedtls_base64_encode"
.LASF50:
	.string	"_digest_exit"
.LASF41:
	.string	"md5_ctx"
.LASF46:
	.string	"http_auth_digest"
.LASF58:
	.string	"calloc"
.LASF23:
	.string	"_Bool"
.LASF29:
	.string	"ESP_LOG_WARN"
.LASF31:
	.string	"ESP_LOG_DEBUG"
.LASF35:
	.string	"realm"
.LASF13:
	.string	"long unsigned int"
.LASF54:
	.string	"MD5Update"
.LASF16:
	.string	"__va_stk"
.LASF34:
	.string	"algorithm"
.LASF32:
	.string	"ESP_LOG_VERBOSE"
.LASF42:
	.string	"username"
.LASF66:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/esp_http_client/lib/http_auth.c"
.LASF59:
	.string	"esp_log_timestamp"
.LASF15:
	.string	"__gnuc_va_list"
.LASF17:
	.string	"__va_reg"
.LASF61:
	.string	"strcasecmp"
.LASF68:
	.string	"md5_printf"
.LASF47:
	.string	"http_auth_basic"
.LASF60:
	.string	"esp_log_write"
.LASF49:
	.string	"__FUNCTION__"
.LASF28:
	.string	"ESP_LOG_ERROR"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
