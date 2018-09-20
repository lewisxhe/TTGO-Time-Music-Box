	.file	"ecdh.c"
	.text
.Ltext0:
	.section	.text.mbedtls_ecdh_gen_public,"ax",@progbits
	.align	4
	.global	mbedtls_ecdh_gen_public
	.type	mbedtls_ecdh_gen_public, @function
mbedtls_ecdh_gen_public:
.LFB0:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/ecdh.c"
	.loc 1 48 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 49 0
	mov.n	a14, a6
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_ecp_gen_keypair
.LVL1:
	.loc 1 50 0
	mov.n	a2, a10
.LVL2:
	retw.n
.LFE0:
	.size	mbedtls_ecdh_gen_public, .-mbedtls_ecdh_gen_public
	.section	.text.mbedtls_ecdh_compute_shared,"ax",@progbits
	.literal_position
	.literal .LC0, -20352
	.align	4
	.global	mbedtls_ecdh_compute_shared
	.type	mbedtls_ecdh_compute_shared, @function
mbedtls_ecdh_compute_shared:
.LFB1:
	.loc 1 61 0
.LVL3:
	entry	sp, 96
.LCFI1:
	s32i.n	a7, sp, 48
	mov.n	a7, a2
.LVL4:
	.loc 1 65 0
	mov.n	a10, sp
	call8	mbedtls_ecp_point_init
.LVL5:
	.loc 1 70 0
	mov.n	a11, a4
	mov.n	a10, a2
	call8	mbedtls_ecp_check_pubkey
.LVL6:
	mov.n	a2, a10
.LVL7:
	bnez.n	a10, .L3
	.loc 1 72 0
	l32i.n	a15, sp, 48
	mov.n	a14, a6
	mov.n	a13, a4
	mov.n	a12, a5
	mov.n	a11, sp
	mov.n	a10, a7
	call8	mbedtls_ecp_mul
.LVL8:
	mov.n	a2, a10
.LVL9:
	bnez.n	a10, .L3
	.loc 1 74 0
	mov.n	a10, sp
	call8	mbedtls_ecp_is_zero
.LVL10:
	bnez.n	a10, .L4
	.loc 1 80 0
	mov.n	a11, sp
	mov.n	a10, a3
	call8	mbedtls_mpi_copy
.LVL11:
	mov.n	a2, a10
.LVL12:
	j	.L3
.L4:
	.loc 1 76 0
	l32r	a2, .LC0
.LVL13:
.L3:
	.loc 1 83 0
	mov.n	a10, sp
	call8	mbedtls_ecp_point_free
.LVL14:
	.loc 1 86 0
	retw.n
.LFE1:
	.size	mbedtls_ecdh_compute_shared, .-mbedtls_ecdh_compute_shared
	.section	.text.mbedtls_ecdh_init,"ax",@progbits
	.align	4
	.global	mbedtls_ecdh_init
	.type	mbedtls_ecdh_init, @function
mbedtls_ecdh_init:
.LFB2:
	.loc 1 93 0
.LVL15:
	entry	sp, 32
.LCFI2:
	.loc 1 94 0
	movi	a12, 0x134
	movi.n	a11, 0
	mov.n	a10, a2
	call8	memset
.LVL16:
	retw.n
.LFE2:
	.size	mbedtls_ecdh_init, .-mbedtls_ecdh_init
	.section	.text.mbedtls_ecdh_free,"ax",@progbits
	.align	4
	.global	mbedtls_ecdh_free
	.type	mbedtls_ecdh_free, @function
mbedtls_ecdh_free:
.LFB3:
	.loc 1 101 0
.LVL17:
	entry	sp, 32
.LCFI3:
	.loc 1 102 0
	beqz.n	a2, .L6
	.loc 1 105 0
	mov.n	a10, a2
	call8	mbedtls_ecp_group_free
.LVL18:
	.loc 1 106 0
	movi	a10, 0x88
	add.n	a10, a2, a10
	call8	mbedtls_ecp_point_free
.LVL19:
	.loc 1 107 0
	movi	a10, 0xac
	add.n	a10, a2, a10
	call8	mbedtls_ecp_point_free
.LVL20:
	.loc 1 108 0
	movi	a10, 0xe0
	add.n	a10, a2, a10
	call8	mbedtls_ecp_point_free
.LVL21:
	.loc 1 109 0
	movi	a10, 0x104
	add.n	a10, a2, a10
	call8	mbedtls_ecp_point_free
.LVL22:
	.loc 1 110 0
	addi	a10, a2, 124
	call8	mbedtls_mpi_free
.LVL23:
	.loc 1 111 0
	movi	a10, 0xd0
	add.n	a10, a2, a10
	call8	mbedtls_mpi_free
.LVL24:
	.loc 1 112 0
	movi	a10, 0x128
	add.n	a10, a2, a10
	call8	mbedtls_mpi_free
.LVL25:
.L6:
	retw.n
.LFE3:
	.size	mbedtls_ecdh_free, .-mbedtls_ecdh_free
	.section	.text.mbedtls_ecdh_make_params,"ax",@progbits
	.literal_position
	.literal .LC1, -20352
	.align	4
	.global	mbedtls_ecdh_make_params
	.type	mbedtls_ecdh_make_params, @function
mbedtls_ecdh_make_params:
.LFB4:
	.loc 1 126 0
.LVL26:
	entry	sp, 48
.LCFI4:
	mov.n	a14, a7
	.loc 1 130 0
	beqz.n	a2, .L10
	.loc 1 130 0 discriminator 1
	l32i	a8, a2, 88
	beqz.n	a8, .L11
	.loc 1 133 0
	movi	a7, 0x88
.LVL27:
	add.n	a7, a2, a7
	mov.n	a13, a6
	mov.n	a12, a7
	addi	a11, a2, 124
	mov.n	a10, a2
	call8	mbedtls_ecdh_gen_public
.LVL28:
	bnez.n	a10, .L12
	.loc 1 137 0
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, sp
	mov.n	a10, a2
.LVL29:
	call8	mbedtls_ecp_tls_write_group
.LVL30:
	bnez.n	a10, .L13
	.loc 1 141 0
	l32i.n	a14, sp, 0
.LVL31:
	.loc 1 144 0
	sub	a15, a5, a14
.LVL32:
	add.n	a14, a4, a14
.LVL33:
	addi.n	a13, sp, 4
	l32i	a12, a2, 220
	mov.n	a11, a7
	mov.n	a10, a2
.LVL34:
	call8	mbedtls_ecp_tls_write_point
.LVL35:
	bnez.n	a10, .L14
	.loc 1 148 0
	l32i.n	a2, sp, 4
.LVL36:
	l32i.n	a4, sp, 0
	add.n	a2, a4, a2
	s32i.n	a2, a3, 0
	.loc 1 149 0
	movi.n	a2, 0
	retw.n
.LVL37:
.L10:
	.loc 1 131 0
	l32r	a2, .LC1
.LVL38:
	retw.n
.LVL39:
.L11:
	l32r	a2, .LC1
.LVL40:
	retw.n
.LVL41:
.L12:
	.loc 1 135 0
	mov.n	a2, a10
.LVL42:
	retw.n
.LVL43:
.L13:
	.loc 1 139 0
	mov.n	a2, a10
.LVL44:
	retw.n
.LVL45:
.L14:
	.loc 1 146 0
	mov.n	a2, a10
.LVL46:
	.loc 1 150 0
	retw.n
.LFE4:
	.size	mbedtls_ecdh_make_params, .-mbedtls_ecdh_make_params
	.section	.text.mbedtls_ecdh_read_params,"ax",@progbits
	.align	4
	.global	mbedtls_ecdh_read_params
	.type	mbedtls_ecdh_read_params, @function
mbedtls_ecdh_read_params:
.LFB5:
	.loc 1 161 0
.LVL47:
	entry	sp, 32
.LCFI5:
	.loc 1 164 0
	l32i.n	a12, a3, 0
	sub	a12, a4, a12
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_ecp_tls_read_group
.LVL48:
	bnez.n	a10, .L17
	.loc 1 167 0
	l32i.n	a13, a3, 0
	sub	a13, a4, a13
	mov.n	a12, a3
	movi	a11, 0xac
	add.n	a11, a2, a11
	mov.n	a10, a2
.LVL49:
	call8	mbedtls_ecp_tls_read_point
.LVL50:
	bnez.n	a10, .L18
	.loc 1 171 0
	movi.n	a2, 0
.LVL51:
	retw.n
.LVL52:
.L17:
	.loc 1 165 0
	mov.n	a2, a10
.LVL53:
	retw.n
.LVL54:
.L18:
	.loc 1 169 0
	mov.n	a2, a10
.LVL55:
	.loc 1 172 0
	retw.n
.LFE5:
	.size	mbedtls_ecdh_read_params, .-mbedtls_ecdh_read_params
	.section	.text.mbedtls_ecdh_get_params,"ax",@progbits
	.literal_position
	.literal .LC2, -20352
	.align	4
	.global	mbedtls_ecdh_get_params
	.type	mbedtls_ecdh_get_params, @function
mbedtls_ecdh_get_params:
.LFB6:
	.loc 1 179 0
.LVL56:
	entry	sp, 32
.LCFI6:
	.loc 1 182 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_ecp_group_copy
.LVL57:
	bnez.n	a10, .L22
	.loc 1 186 0
	bnei	a4, 1, .L21
	.loc 1 187 0
	movi	a11, 0x88
	add.n	a11, a3, a11
	movi	a10, 0xac
.LVL58:
	add.n	a10, a2, a10
	call8	mbedtls_ecp_copy
.LVL59:
	mov.n	a2, a10
.LVL60:
	retw.n
.LVL61:
.L21:
	.loc 1 190 0
	bnez.n	a4, .L23
	.loc 1 193 0
	movi	a10, 0x88
.LVL62:
	add.n	a11, a3, a10
	add.n	a10, a2, a10
	call8	mbedtls_ecp_copy
.LVL63:
	bnez.n	a10, .L24
	.loc 1 193 0 is_stmt 0 discriminator 1
	addi	a11, a3, 124
	addi	a10, a2, 124
.LVL64:
	call8	mbedtls_mpi_copy
.LVL65:
	bnez.n	a10, .L25
	.loc 1 197 0 is_stmt 1
	movi.n	a2, 0
.LVL66:
	retw.n
.LVL67:
.L22:
	.loc 1 183 0
	mov.n	a2, a10
.LVL68:
	retw.n
.LVL69:
.L23:
	.loc 1 191 0
	l32r	a2, .LC2
.LVL70:
	retw.n
.LVL71:
.L24:
	.loc 1 193 0
	mov.n	a2, a10
.LVL72:
	retw.n
.LVL73:
.L25:
	mov.n	a2, a10
.LVL74:
	.loc 1 198 0
	retw.n
.LFE6:
	.size	mbedtls_ecdh_get_params, .-mbedtls_ecdh_get_params
	.section	.text.mbedtls_ecdh_make_public,"ax",@progbits
	.literal_position
	.literal .LC3, -20352
	.align	4
	.global	mbedtls_ecdh_make_public
	.type	mbedtls_ecdh_make_public, @function
mbedtls_ecdh_make_public:
.LFB7:
	.loc 1 207 0
.LVL75:
	entry	sp, 32
.LCFI7:
	mov.n	a14, a7
	.loc 1 210 0
	beqz.n	a2, .L28
	.loc 1 210 0 discriminator 1
	l32i	a8, a2, 88
	beqz.n	a8, .L29
	.loc 1 213 0
	movi	a7, 0x88
.LVL76:
	add.n	a7, a2, a7
	mov.n	a13, a6
	mov.n	a12, a7
	addi	a11, a2, 124
	mov.n	a10, a2
	call8	mbedtls_ecdh_gen_public
.LVL77:
	bnez.n	a10, .L30
	.loc 1 217 0
	mov.n	a15, a5
	mov.n	a14, a4
	mov.n	a13, a3
	l32i	a12, a2, 220
	mov.n	a11, a7
	mov.n	a10, a2
.LVL78:
	call8	mbedtls_ecp_tls_write_point
.LVL79:
	mov.n	a2, a10
.LVL80:
	retw.n
.LVL81:
.L28:
	.loc 1 211 0
	l32r	a2, .LC3
.LVL82:
	retw.n
.LVL83:
.L29:
	l32r	a2, .LC3
.LVL84:
	retw.n
.LVL85:
.L30:
	.loc 1 215 0
	mov.n	a2, a10
.LVL86:
	.loc 1 219 0
	retw.n
.LFE7:
	.size	mbedtls_ecdh_make_public, .-mbedtls_ecdh_make_public
	.section	.text.mbedtls_ecdh_read_public,"ax",@progbits
	.literal_position
	.literal .LC4, -20352
	.align	4
	.global	mbedtls_ecdh_read_public
	.type	mbedtls_ecdh_read_public, @function
mbedtls_ecdh_read_public:
.LFB8:
	.loc 1 226 0
.LVL87:
	entry	sp, 48
.LCFI8:
	.loc 1 228 0
	s32i.n	a3, sp, 0
	.loc 1 230 0
	beqz.n	a2, .L33
	.loc 1 233 0
	mov.n	a13, a4
	mov.n	a12, sp
	movi	a11, 0xac
	add.n	a11, a2, a11
	mov.n	a10, a2
	call8	mbedtls_ecp_tls_read_point
.LVL88:
	bnez.n	a10, .L34
	.loc 1 236 0
	l32i.n	a2, sp, 0
.LVL89:
	sub	a3, a2, a3
.LVL90:
	beq	a4, a3, .L35
	.loc 1 237 0
	l32r	a2, .LC4
	retw.n
.LVL91:
.L33:
	.loc 1 231 0
	l32r	a2, .LC4
.LVL92:
	retw.n
.LVL93:
.L34:
	.loc 1 234 0
	mov.n	a2, a10
.LVL94:
	retw.n
.LVL95:
.L35:
	.loc 1 239 0
	movi.n	a2, 0
	.loc 1 240 0
	retw.n
.LFE8:
	.size	mbedtls_ecdh_read_public, .-mbedtls_ecdh_read_public
	.section	.text.mbedtls_ecdh_calc_secret,"ax",@progbits
	.literal_position
	.literal .LC5, -20352
	.align	4
	.global	mbedtls_ecdh_calc_secret
	.type	mbedtls_ecdh_calc_secret, @function
mbedtls_ecdh_calc_secret:
.LFB9:
	.loc 1 249 0
.LVL96:
	entry	sp, 32
.LCFI9:
	mov.n	a15, a7
	.loc 1 252 0
	beqz.n	a2, .L38
	.loc 1 255 0
	movi	a7, 0xd0
.LVL97:
	add.n	a7, a2, a7
	mov.n	a14, a6
	addi	a13, a2, 124
	movi	a12, 0xac
	add.n	a12, a2, a12
	mov.n	a11, a7
	mov.n	a10, a2
	call8	mbedtls_ecdh_compute_shared
.LVL98:
	bnez.n	a10, .L39
	.loc 1 261 0
	mov.n	a10, a7
.LVL99:
	call8	mbedtls_mpi_size
.LVL100:
	bltu	a5, a10, .L40
	.loc 1 264 0
	l32i	a2, a2, 88
.LVL101:
	srli	a6, a2, 3
.LVL102:
	extui	a5, a2, 0, 3
.LVL103:
	movi.n	a2, 0
	movi.n	a12, 1
	movnez	a2, a12, a5
	add.n	a12, a6, a2
	s32i.n	a12, a3, 0
	.loc 1 265 0
	mov.n	a11, a4
	mov.n	a10, a7
	call8	mbedtls_mpi_write_binary
.LVL104:
	mov.n	a2, a10
	retw.n
.LVL105:
.L38:
	.loc 1 253 0
	l32r	a2, .LC5
.LVL106:
	retw.n
.LVL107:
.L39:
	.loc 1 258 0
	mov.n	a2, a10
.LVL108:
	retw.n
.LVL109:
.L40:
	.loc 1 262 0
	l32r	a2, .LC5
.LVL110:
	.loc 1 266 0
	retw.n
.LFE9:
	.size	mbedtls_ecdh_calc_secret, .-mbedtls_ecdh_calc_secret
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
	.uleb128 0x60
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
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI4-.LFB4
	.byte	0xe
	.uleb128 0x30
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
	.uleb128 0x20
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
	.uleb128 0x20
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
	.uleb128 0x20
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
	.uleb128 0x30
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
	.uleb128 0x20
	.align	4
.LEFDE18:
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/ecp.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/ecdh.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xbbf
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0xc
	.4byte	.LASF81
	.4byte	.LASF82
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0xd8
	.4byte	0x37
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0x2d
	.4byte	0x5a
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4c
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x5
	.byte	0xa8
	.4byte	0x73
	.uleb128 0x7
	.byte	0xc
	.byte	0x5
	.byte	0xb6
	.4byte	0xd4
	.uleb128 0x8
	.string	"s"
	.byte	0x5
	.byte	0xb8
	.4byte	0x25
	.byte	0
	.uleb128 0x8
	.string	"n"
	.byte	0x5
	.byte	0xb9
	.4byte	0x2c
	.byte	0x4
	.uleb128 0x8
	.string	"p"
	.byte	0x5
	.byte	0xba
	.4byte	0xd4
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa2
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x5
	.byte	0xbc
	.4byte	0xad
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.byte	0x6
	.byte	0x44
	.4byte	0x146
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x7
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x9
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0xa
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0xb
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0xd
	.byte	0
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x6
	.byte	0x53
	.4byte	0xe5
	.uleb128 0x7
	.byte	0x24
	.byte	0x6
	.byte	0x72
	.4byte	0x178
	.uleb128 0x8
	.string	"X"
	.byte	0x6
	.byte	0x74
	.4byte	0xda
	.byte	0
	.uleb128 0x8
	.string	"Y"
	.byte	0x6
	.byte	0x75
	.4byte	0xda
	.byte	0xc
	.uleb128 0x8
	.string	"Z"
	.byte	0x6
	.byte	0x76
	.4byte	0xda
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x6
	.byte	0x78
	.4byte	0x151
	.uleb128 0x7
	.byte	0x7c
	.byte	0x6
	.byte	0x9f
	.4byte	0x231
	.uleb128 0x8
	.string	"id"
	.byte	0x6
	.byte	0xa1
	.4byte	0x146
	.byte	0
	.uleb128 0x8
	.string	"P"
	.byte	0x6
	.byte	0xa2
	.4byte	0xda
	.byte	0x4
	.uleb128 0x8
	.string	"A"
	.byte	0x6
	.byte	0xa3
	.4byte	0xda
	.byte	0x10
	.uleb128 0x8
	.string	"B"
	.byte	0x6
	.byte	0xa5
	.4byte	0xda
	.byte	0x1c
	.uleb128 0x8
	.string	"G"
	.byte	0x6
	.byte	0xa7
	.4byte	0x178
	.byte	0x28
	.uleb128 0x8
	.string	"N"
	.byte	0x6
	.byte	0xa8
	.4byte	0xda
	.byte	0x4c
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x6
	.byte	0xa9
	.4byte	0x2c
	.byte	0x58
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x6
	.byte	0xaa
	.4byte	0x2c
	.byte	0x5c
	.uleb128 0x8
	.string	"h"
	.byte	0x6
	.byte	0xad
	.4byte	0x37
	.byte	0x60
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x6
	.byte	0xae
	.4byte	0x246
	.byte	0x64
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x6
	.byte	0xb0
	.4byte	0x266
	.byte	0x68
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x6
	.byte	0xb1
	.4byte	0x266
	.byte	0x6c
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x6
	.byte	0xb2
	.4byte	0x7e
	.byte	0x70
	.uleb128 0x8
	.string	"T"
	.byte	0x6
	.byte	0xb3
	.4byte	0x260
	.byte	0x74
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x6
	.byte	0xb4
	.4byte	0x2c
	.byte	0x78
	.byte	0
	.uleb128 0xc
	.4byte	0x25
	.4byte	0x240
	.uleb128 0xd
	.4byte	0x240
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xda
	.uleb128 0x6
	.byte	0x4
	.4byte	0x231
	.uleb128 0xc
	.4byte	0x25
	.4byte	0x260
	.uleb128 0xd
	.4byte	0x260
	.uleb128 0xd
	.4byte	0x7e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x178
	.uleb128 0x6
	.byte	0x4
	.4byte	0x24c
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x6
	.byte	0xb6
	.4byte	0x183
	.uleb128 0x7
	.byte	0xac
	.byte	0x6
	.byte	0xfe
	.4byte	0x2a3
	.uleb128 0xe
	.string	"grp"
	.byte	0x6
	.2byte	0x100
	.4byte	0x26c
	.byte	0
	.uleb128 0xe
	.string	"d"
	.byte	0x6
	.2byte	0x101
	.4byte	0xda
	.byte	0x7c
	.uleb128 0xe
	.string	"Q"
	.byte	0x6
	.2byte	0x102
	.4byte	0x178
	.byte	0x88
	.byte	0
	.uleb128 0xf
	.4byte	.LASF40
	.byte	0x6
	.2byte	0x104
	.4byte	0x277
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.byte	0x7
	.byte	0x2f
	.4byte	0x2c8
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0x7
	.byte	0x32
	.4byte	0x2af
	.uleb128 0x10
	.2byte	0x134
	.byte	0x7
	.byte	0x37
	.4byte	0x341
	.uleb128 0x8
	.string	"grp"
	.byte	0x7
	.byte	0x39
	.4byte	0x26c
	.byte	0
	.uleb128 0x8
	.string	"d"
	.byte	0x7
	.byte	0x3a
	.4byte	0xda
	.byte	0x7c
	.uleb128 0x8
	.string	"Q"
	.byte	0x7
	.byte	0x3b
	.4byte	0x178
	.byte	0x88
	.uleb128 0x8
	.string	"Qp"
	.byte	0x7
	.byte	0x3c
	.4byte	0x178
	.byte	0xac
	.uleb128 0x8
	.string	"z"
	.byte	0x7
	.byte	0x3d
	.4byte	0xda
	.byte	0xd0
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x7
	.byte	0x3e
	.4byte	0x25
	.byte	0xdc
	.uleb128 0x8
	.string	"Vi"
	.byte	0x7
	.byte	0x3f
	.4byte	0x178
	.byte	0xe0
	.uleb128 0x11
	.string	"Vf"
	.byte	0x7
	.byte	0x40
	.4byte	0x178
	.2byte	0x104
	.uleb128 0x11
	.string	"_d"
	.byte	0x7
	.byte	0x41
	.4byte	0xda
	.2byte	0x128
	.byte	0
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0x7
	.byte	0x43
	.4byte	0x2d3
	.uleb128 0x12
	.4byte	.LASF48
	.byte	0x1
	.byte	0x2d
	.4byte	0x25
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3cd
	.uleb128 0x13
	.string	"grp"
	.byte	0x1
	.byte	0x2d
	.4byte	0x3cd
	.4byte	.LLST0
	.uleb128 0x14
	.string	"d"
	.byte	0x1
	.byte	0x2d
	.4byte	0x240
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x14
	.string	"Q"
	.byte	0x1
	.byte	0x2d
	.4byte	0x260
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x15
	.4byte	.LASF46
	.byte	0x1
	.byte	0x2e
	.4byte	0x3ec
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x15
	.4byte	.LASF47
	.byte	0x1
	.byte	0x2f
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x16
	.4byte	.LVL1
	.4byte	0xaef
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
	.byte	0x74
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x26c
	.uleb128 0xc
	.4byte	0x25
	.4byte	0x3ec
	.uleb128 0xd
	.4byte	0x7e
	.uleb128 0xd
	.4byte	0x95
	.uleb128 0xd
	.4byte	0x2c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3d3
	.uleb128 0x12
	.4byte	.LASF49
	.byte	0x1
	.byte	0x39
	.4byte	0x25
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x521
	.uleb128 0x13
	.string	"grp"
	.byte	0x1
	.byte	0x39
	.4byte	0x3cd
	.4byte	.LLST1
	.uleb128 0x14
	.string	"z"
	.byte	0x1
	.byte	0x39
	.4byte	0x240
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x14
	.string	"Q"
	.byte	0x1
	.byte	0x3a
	.4byte	0x521
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x14
	.string	"d"
	.byte	0x1
	.byte	0x3a
	.4byte	0x52c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x15
	.4byte	.LASF46
	.byte	0x1
	.byte	0x3b
	.4byte	0x3ec
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x18
	.4byte	.LASF47
	.byte	0x1
	.byte	0x3c
	.4byte	0x7e
	.4byte	.LLST2
	.uleb128 0x19
	.string	"ret"
	.byte	0x1
	.byte	0x3e
	.4byte	0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x19
	.string	"P"
	.byte	0x1
	.byte	0x3f
	.4byte	0x178
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1a
	.4byte	.LASF83
	.byte	0x1
	.byte	0x52
	.4byte	.L3
	.uleb128 0x1b
	.4byte	.LVL5
	.4byte	0xafb
	.4byte	0x491
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL6
	.4byte	0xb07
	.4byte	0x4ab
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
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL8
	.4byte	0xb13
	.4byte	0x4df
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
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
	.byte	0x74
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL10
	.4byte	0xb1f
	.4byte	0x4f4
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL11
	.4byte	0xb2b
	.4byte	0x50f
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x16
	.4byte	.LVL14
	.4byte	0xb36
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x527
	.uleb128 0x1c
	.4byte	0x178
	.uleb128 0x6
	.byte	0x4
	.4byte	0x532
	.uleb128 0x1c
	.4byte	0xda
	.uleb128 0x1d
	.4byte	.LASF50
	.byte	0x1
	.byte	0x5c
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x576
	.uleb128 0x14
	.string	"ctx"
	.byte	0x1
	.byte	0x5c
	.4byte	0x576
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x16
	.4byte	.LVL16
	.4byte	0xb42
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x134
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x341
	.uleb128 0x1d
	.4byte	.LASF51
	.byte	0x1
	.byte	0x64
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x642
	.uleb128 0x14
	.string	"ctx"
	.byte	0x1
	.byte	0x64
	.4byte	0x576
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1b
	.4byte	.LVL18
	.4byte	0xb4b
	.4byte	0x5b2
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL19
	.4byte	0xb36
	.4byte	0x5c7
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x72
	.sleb128 136
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL20
	.4byte	0xb36
	.4byte	0x5dc
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x72
	.sleb128 172
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL21
	.4byte	0xb36
	.4byte	0x5f1
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x72
	.sleb128 224
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL22
	.4byte	0xb36
	.4byte	0x606
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x72
	.sleb128 260
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL23
	.4byte	0xb57
	.4byte	0x61b
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x72
	.sleb128 124
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL24
	.4byte	0xb57
	.4byte	0x630
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x72
	.sleb128 208
	.byte	0
	.uleb128 0x16
	.4byte	.LVL25
	.4byte	0xb57
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x72
	.sleb128 296
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF52
	.byte	0x1
	.byte	0x7a
	.4byte	0x25
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x74d
	.uleb128 0x13
	.string	"ctx"
	.byte	0x1
	.byte	0x7a
	.4byte	0x576
	.4byte	.LLST3
	.uleb128 0x15
	.4byte	.LASF53
	.byte	0x1
	.byte	0x7a
	.4byte	0x74d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x13
	.string	"buf"
	.byte	0x1
	.byte	0x7b
	.4byte	0x95
	.4byte	.LLST4
	.uleb128 0x18
	.4byte	.LASF54
	.byte	0x1
	.byte	0x7b
	.4byte	0x2c
	.4byte	.LLST5
	.uleb128 0x15
	.4byte	.LASF46
	.byte	0x1
	.byte	0x7c
	.4byte	0x3ec
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x18
	.4byte	.LASF47
	.byte	0x1
	.byte	0x7d
	.4byte	0x7e
	.4byte	.LLST6
	.uleb128 0x1e
	.string	"ret"
	.byte	0x1
	.byte	0x7f
	.4byte	0x25
	.4byte	.LLST7
	.uleb128 0x1f
	.4byte	.LASF55
	.byte	0x1
	.byte	0x80
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.4byte	.LASF56
	.byte	0x1
	.byte	0x80
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1b
	.4byte	.LVL28
	.4byte	0x34c
	.4byte	0x70a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x72
	.sleb128 124
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL30
	.4byte	0xb62
	.4byte	0x730
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
	.byte	0x91
	.sleb128 -48
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
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL35
	.4byte	0xb6e
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
	.byte	0x77
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2c
	.uleb128 0x12
	.4byte	.LASF57
	.byte	0x1
	.byte	0x9f
	.4byte	0x25
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7dc
	.uleb128 0x13
	.string	"ctx"
	.byte	0x1
	.byte	0x9f
	.4byte	0x576
	.4byte	.LLST8
	.uleb128 0x14
	.string	"buf"
	.byte	0x1
	.byte	0xa0
	.4byte	0x7dc
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x14
	.string	"end"
	.byte	0x1
	.byte	0xa0
	.4byte	0x7e2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1e
	.string	"ret"
	.byte	0x1
	.byte	0xa2
	.4byte	0x25
	.4byte	.LLST9
	.uleb128 0x1b
	.4byte	.LVL48
	.4byte	0xb7a
	.4byte	0x7be
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
	.byte	0
	.uleb128 0x16
	.4byte	.LVL50
	.4byte	0xb86
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x72
	.sleb128 172
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7e2
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7e8
	.uleb128 0x1c
	.4byte	0x4c
	.uleb128 0x12
	.4byte	.LASF58
	.byte	0x1
	.byte	0xb1
	.4byte	0x25
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8a9
	.uleb128 0x13
	.string	"ctx"
	.byte	0x1
	.byte	0xb1
	.4byte	0x576
	.4byte	.LLST10
	.uleb128 0x14
	.string	"key"
	.byte	0x1
	.byte	0xb1
	.4byte	0x8a9
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0x1
	.byte	0xb2
	.4byte	0x2c8
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1e
	.string	"ret"
	.byte	0x1
	.byte	0xb4
	.4byte	0x25
	.4byte	.LLST11
	.uleb128 0x1b
	.4byte	.LVL57
	.4byte	0xb92
	.4byte	0x858
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
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL59
	.4byte	0xb9e
	.4byte	0x874
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x72
	.sleb128 172
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x73
	.sleb128 136
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL63
	.4byte	0xb9e
	.4byte	0x890
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x72
	.sleb128 136
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x73
	.sleb128 136
	.byte	0
	.uleb128 0x16
	.4byte	.LVL65
	.4byte	0xb2b
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x72
	.sleb128 124
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x73
	.sleb128 124
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8af
	.uleb128 0x1c
	.4byte	0x2a3
	.uleb128 0x12
	.4byte	.LASF60
	.byte	0x1
	.byte	0xcb
	.4byte	0x25
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x985
	.uleb128 0x13
	.string	"ctx"
	.byte	0x1
	.byte	0xcb
	.4byte	0x576
	.4byte	.LLST12
	.uleb128 0x15
	.4byte	.LASF53
	.byte	0x1
	.byte	0xcb
	.4byte	0x74d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x14
	.string	"buf"
	.byte	0x1
	.byte	0xcc
	.4byte	0x95
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x15
	.4byte	.LASF54
	.byte	0x1
	.byte	0xcc
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x15
	.4byte	.LASF46
	.byte	0x1
	.byte	0xcd
	.4byte	0x3ec
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x18
	.4byte	.LASF47
	.byte	0x1
	.byte	0xce
	.4byte	0x7e
	.4byte	.LLST13
	.uleb128 0x1e
	.string	"ret"
	.byte	0x1
	.byte	0xd0
	.4byte	0x25
	.4byte	.LLST14
	.uleb128 0x1b
	.4byte	.LVL77
	.4byte	0x34c
	.4byte	0x95c
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x72
	.sleb128 124
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0
	.uleb128 0x16
	.4byte	.LVL79
	.4byte	0xb6e
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
	.byte	0x77
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
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
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF61
	.byte	0x1
	.byte	0xe0
	.4byte	0x25
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa08
	.uleb128 0x13
	.string	"ctx"
	.byte	0x1
	.byte	0xe0
	.4byte	0x576
	.4byte	.LLST15
	.uleb128 0x13
	.string	"buf"
	.byte	0x1
	.byte	0xe1
	.4byte	0x7e2
	.4byte	.LLST16
	.uleb128 0x15
	.4byte	.LASF54
	.byte	0x1
	.byte	0xe1
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1e
	.string	"ret"
	.byte	0x1
	.byte	0xe3
	.4byte	0x25
	.4byte	.LLST17
	.uleb128 0x19
	.string	"p"
	.byte	0x1
	.byte	0xe4
	.4byte	0x7e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.4byte	.LVL88
	.4byte	0xb86
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x72
	.sleb128 172
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
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF62
	.byte	0x1
	.byte	0xf5
	.4byte	0x25
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaef
	.uleb128 0x13
	.string	"ctx"
	.byte	0x1
	.byte	0xf5
	.4byte	0x576
	.4byte	.LLST18
	.uleb128 0x15
	.4byte	.LASF53
	.byte	0x1
	.byte	0xf5
	.4byte	0x74d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x14
	.string	"buf"
	.byte	0x1
	.byte	0xf6
	.4byte	0x95
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x18
	.4byte	.LASF54
	.byte	0x1
	.byte	0xf6
	.4byte	0x2c
	.4byte	.LLST19
	.uleb128 0x18
	.4byte	.LASF46
	.byte	0x1
	.byte	0xf7
	.4byte	0x3ec
	.4byte	.LLST20
	.uleb128 0x18
	.4byte	.LASF47
	.byte	0x1
	.byte	0xf8
	.4byte	0x7e
	.4byte	.LLST21
	.uleb128 0x1e
	.string	"ret"
	.byte	0x1
	.byte	0xfa
	.4byte	0x25
	.4byte	.LLST22
	.uleb128 0x1b
	.4byte	.LVL98
	.4byte	0x3f2
	.4byte	0xabb
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
	.byte	0x77
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x72
	.sleb128 172
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x72
	.sleb128 124
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL100
	.4byte	0xbaa
	.4byte	0xacf
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL104
	.4byte	0xbb6
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x76
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF63
	.4byte	.LASF63
	.byte	0x6
	.2byte	0x2c8
	.uleb128 0x20
	.4byte	.LASF64
	.4byte	.LASF64
	.byte	0x6
	.2byte	0x14a
	.uleb128 0x20
	.4byte	.LASF65
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x289
	.uleb128 0x20
	.4byte	.LASF66
	.4byte	.LASF66
	.byte	0x6
	.2byte	0x254
	.uleb128 0x20
	.4byte	.LASF67
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x19b
	.uleb128 0x21
	.4byte	.LASF68
	.4byte	.LASF68
	.byte	0x5
	.byte	0xf3
	.uleb128 0x20
	.4byte	.LASF69
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x163
	.uleb128 0x22
	.4byte	.LASF84
	.4byte	.LASF84
	.uleb128 0x20
	.4byte	.LASF70
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x169
	.uleb128 0x21
	.4byte	.LASF71
	.4byte	.LASF71
	.byte	0x5
	.byte	0xcc
	.uleb128 0x20
	.4byte	.LASF72
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x235
	.uleb128 0x20
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x204
	.uleb128 0x20
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x228
	.uleb128 0x20
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x1f2
	.uleb128 0x20
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x187
	.uleb128 0x20
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x17b
	.uleb128 0x20
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0x5
	.2byte	0x161
	.uleb128 0x20
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0x5
	.2byte	0x1bf
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
	.uleb128 0xe
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x5
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
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
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL4
	.4byte	.LFE1
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL26
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
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
	.4byte	.LVL43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL43
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
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL46
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL26
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x7e
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL37
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL26
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x7e
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL37
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL27
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL28-1
	.4byte	.LVL37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL41
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL30
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL41
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL47
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL55
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL50
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL56
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL74
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL65
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL75
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL86
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL76
	.4byte	.LVL77-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL77-1
	.4byte	.LVL81
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL85
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL85
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL87
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL89
	.4byte	.LVL91
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL94
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL87
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL91
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL95
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL88
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL93
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL96
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL101
	.4byte	.LVL105
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL110
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL96
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL103
	.4byte	.LVL105
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL96
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL102
	.4byte	.LVL105
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL97
	.4byte	.LVL98-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL98-1
	.4byte	.LVL105
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL107
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL107
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x64
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"size_t"
.LASF74:
	.string	"mbedtls_ecp_tls_read_group"
.LASF65:
	.string	"mbedtls_ecp_check_pubkey"
.LASF58:
	.string	"mbedtls_ecdh_get_params"
.LASF8:
	.string	"long long unsigned int"
.LASF71:
	.string	"mbedtls_mpi_free"
.LASF37:
	.string	"t_data"
.LASF29:
	.string	"MBEDTLS_ECP_DP_CURVE448"
.LASF15:
	.string	"mbedtls_mpi"
.LASF23:
	.string	"MBEDTLS_ECP_DP_BP384R1"
.LASF7:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF35:
	.string	"t_pre"
.LASF46:
	.string	"f_rng"
.LASF16:
	.string	"MBEDTLS_ECP_DP_NONE"
.LASF70:
	.string	"mbedtls_ecp_group_free"
.LASF10:
	.string	"long int"
.LASF75:
	.string	"mbedtls_ecp_tls_read_point"
.LASF18:
	.string	"MBEDTLS_ECP_DP_SECP224R1"
.LASF53:
	.string	"olen"
.LASF66:
	.string	"mbedtls_ecp_mul"
.LASF72:
	.string	"mbedtls_ecp_tls_write_group"
.LASF6:
	.string	"__uint32_t"
.LASF17:
	.string	"MBEDTLS_ECP_DP_SECP192R1"
.LASF20:
	.string	"MBEDTLS_ECP_DP_SECP384R1"
.LASF60:
	.string	"mbedtls_ecdh_make_public"
.LASF33:
	.string	"nbits"
.LASF0:
	.string	"unsigned int"
.LASF81:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/ecdh.c"
.LASF12:
	.string	"long unsigned int"
.LASF59:
	.string	"side"
.LASF56:
	.string	"pt_len"
.LASF26:
	.string	"MBEDTLS_ECP_DP_SECP192K1"
.LASF54:
	.string	"blen"
.LASF77:
	.string	"mbedtls_ecp_copy"
.LASF1:
	.string	"short unsigned int"
.LASF27:
	.string	"MBEDTLS_ECP_DP_SECP224K1"
.LASF78:
	.string	"mbedtls_mpi_size"
.LASF45:
	.string	"mbedtls_ecdh_context"
.LASF41:
	.string	"MBEDTLS_ECDH_OURS"
.LASF73:
	.string	"mbedtls_ecp_tls_write_point"
.LASF47:
	.string	"p_rng"
.LASF22:
	.string	"MBEDTLS_ECP_DP_BP256R1"
.LASF82:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\mbedtls"
.LASF67:
	.string	"mbedtls_ecp_is_zero"
.LASF21:
	.string	"MBEDTLS_ECP_DP_SECP521R1"
.LASF11:
	.string	"sizetype"
.LASF38:
	.string	"T_size"
.LASF52:
	.string	"mbedtls_ecdh_make_params"
.LASF83:
	.string	"cleanup"
.LASF64:
	.string	"mbedtls_ecp_point_init"
.LASF32:
	.string	"pbits"
.LASF62:
	.string	"mbedtls_ecdh_calc_secret"
.LASF69:
	.string	"mbedtls_ecp_point_free"
.LASF19:
	.string	"MBEDTLS_ECP_DP_SECP256R1"
.LASF14:
	.string	"mbedtls_mpi_uint"
.LASF30:
	.string	"mbedtls_ecp_group_id"
.LASF3:
	.string	"unsigned char"
.LASF80:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF4:
	.string	"short int"
.LASF79:
	.string	"mbedtls_mpi_write_binary"
.LASF39:
	.string	"mbedtls_ecp_group"
.LASF28:
	.string	"MBEDTLS_ECP_DP_SECP256K1"
.LASF68:
	.string	"mbedtls_mpi_copy"
.LASF9:
	.string	"uint32_t"
.LASF40:
	.string	"mbedtls_ecp_keypair"
.LASF13:
	.string	"char"
.LASF48:
	.string	"mbedtls_ecdh_gen_public"
.LASF34:
	.string	"modp"
.LASF36:
	.string	"t_post"
.LASF44:
	.string	"point_format"
.LASF50:
	.string	"mbedtls_ecdh_init"
.LASF24:
	.string	"MBEDTLS_ECP_DP_BP512R1"
.LASF51:
	.string	"mbedtls_ecdh_free"
.LASF63:
	.string	"mbedtls_ecp_gen_keypair"
.LASF84:
	.string	"memset"
.LASF31:
	.string	"mbedtls_ecp_point"
.LASF57:
	.string	"mbedtls_ecdh_read_params"
.LASF25:
	.string	"MBEDTLS_ECP_DP_CURVE25519"
.LASF42:
	.string	"MBEDTLS_ECDH_THEIRS"
.LASF49:
	.string	"mbedtls_ecdh_compute_shared"
.LASF43:
	.string	"mbedtls_ecdh_side"
.LASF55:
	.string	"grp_len"
.LASF61:
	.string	"mbedtls_ecdh_read_public"
.LASF76:
	.string	"mbedtls_ecp_group_copy"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
