	.file	"ip6_addr.c"
	.text
.Ltext0:
	.section	.text.ip6addr_aton,"ax",@progbits
	.align	4
	.global	ip6addr_aton
	.type	ip6addr_aton, @function
ip6addr_aton:
.LFB15:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/core/ipv6/ip6_addr.c"
	.loc 1 74 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 81 0
	mov.n	a4, a2
	.loc 1 80 0
	movi.n	a11, 8
	.loc 1 81 0
	j	.L2
.LVL2:
.L8:
	.loc 1 82 0
	movi.n	a9, 0x3a
	bne	a8, a9, .L3
	.loc 1 83 0
	addi.n	a11, a11, -1
.LVL3:
	j	.L4
.L3:
	.loc 1 84 0
	addi	a10, a8, -48
	movi.n	a12, 1
	extui	a10, a10, 0, 8
	movi.n	a9, 9
	bltu	a9, a10, .L5
	movi.n	a12, 0
.L5:
	addi	a10, a8, -97
	movi.n	a9, 1
	extui	a10, a10, 0, 8
	bgeui	a10, 6, .L6
	movi.n	a9, 0
.L6:
	and	a9, a12, a9
	extui	a9, a9, 0, 8
	beqz.n	a9, .L4
	.loc 1 84 0 is_stmt 0 discriminator 1
	addi	a8, a8, -65
	extui	a8, a8, 0, 8
	bgeui	a8, 6, .L31
.L4:
	.loc 1 81 0 is_stmt 1 discriminator 2
	addi.n	a4, a4, 1
.LVL4:
.L2:
	.loc 1 81 0 is_stmt 0 discriminator 1
	l8ui	a8, a4, 0
	bnez.n	a8, .L8
	movi.n	a10, 0
	mov.n	a4, a10
.LVL5:
	mov.n	a14, a10
	j	.L7
.LVL6:
.L25:
	.loc 1 94 0 is_stmt 1
	movi.n	a9, 0x3a
	bne	a8, a9, .L9
	.loc 1 95 0
	beqz.n	a3, .L10
	.loc 1 96 0
	bbci	a4, 0, .L11
.LVL7:
	.loc 1 97 0
	addx4	a9, a14, a3
	l32i.n	a8, a9, 0
	or	a10, a8, a10
.LVL8:
	s32i.n	a10, a9, 0
	addi.n	a14, a14, 1
.LVL9:
	j	.L10
.LVL10:
.L11:
	.loc 1 100 0
	slli	a10, a10, 16
.LVL11:
	addx4	a5, a14, a3
	s32i.n	a10, a5, 0
.L10:
	.loc 1 103 0
	addi.n	a4, a4, 1
.LVL12:
	.loc 1 105 0
	bgeui	a4, 8, .L32
	.loc 1 109 0
	l8ui	a9, a2, 1
	movi.n	a8, 0x3a
	bne	a9, a8, .L33
	.loc 1 110 0
	l8ui	a8, a2, 2
	movi.n	a5, 0x3a
	beq	a8, a5, .L34
	.loc 1 114 0
	addi.n	a2, a2, 1
.LVL13:
	.loc 1 116 0
	j	.L14
.L17:
	.loc 1 117 0
	addi.n	a11, a11, -1
.LVL14:
	.loc 1 118 0
	bbci	a4, 0, .L15
	.loc 1 119 0
	addi.n	a14, a14, 1
.LVL15:
	j	.L16
.L15:
	.loc 1 121 0
	beqz.n	a3, .L16
	.loc 1 122 0
	addx4	a8, a14, a3
	movi.n	a9, 0
	s32i.n	a9, a8, 0
.L16:
	.loc 1 125 0
	addi.n	a4, a4, 1
.LVL16:
	.loc 1 126 0
	bgeui	a4, 8, .L35
.L14:
	.loc 1 116 0
	bnez.n	a11, .L17
	.loc 1 104 0
	movi.n	a10, 0
	j	.L13
.LVL17:
.L9:
	.loc 1 132 0
	addi	a12, a8, -48
	extui	a12, a12, 0, 8
	addi	a13, a8, -97
	extui	a13, a13, 0, 8
	movi.n	a15, 1
	movi.n	a9, 9
	bgeu	a9, a12, .L18
	movi.n	a15, 0
.L18:
	movi.n	a9, 1
	bltui	a13, 6, .L19
	movi.n	a9, 0
.L19:
	or	a9, a15, a9
	extui	a9, a9, 0, 8
	bnez.n	a9, .L20
	.loc 1 132 0 is_stmt 0 discriminator 1
	addi	a9, a8, -65
	extui	a9, a9, 0, 8
	bgeui	a9, 6, .L21
.L20:
	.loc 1 134 0 is_stmt 1
	slli	a10, a10, 4
.LVL18:
	movi.n	a9, 9
	bltu	a9, a12, .L22
	.loc 1 135 0 discriminator 1
	addi	a8, a8, -48
	j	.L23
.L22:
	.loc 1 134 0 discriminator 2
	movi.n	a9, 0x19
	bltu	a9, a13, .L24
	.loc 1 136 0 discriminator 4
	addi	a8, a8, -87
	j	.L23
.L24:
	.loc 1 136 0 is_stmt 0 discriminator 5
	addi	a8, a8, -55
.L23:
	.loc 1 134 0 is_stmt 1 discriminator 8
	add.n	a10, a8, a10
.LVL19:
	j	.L13
.LVL20:
.L33:
	.loc 1 104 0
	movi.n	a10, 0
.LVL21:
.L13:
	.loc 1 93 0 discriminator 2
	addi.n	a2, a2, 1
.LVL22:
	j	.L7
.LVL23:
.L31:
	movi.n	a10, 0
	mov.n	a4, a10
.LVL24:
	mov.n	a14, a10
.LVL25:
.L7:
	.loc 1 93 0 is_stmt 0 discriminator 1
	l8ui	a8, a2, 0
	bnez.n	a8, .L25
.L21:
	.loc 1 143 0 is_stmt 1
	beqz.n	a3, .L26
	.loc 1 144 0
	bbci	a4, 0, .L27
.LVL26:
	.loc 1 145 0
	addx4	a14, a14, a3
.LVL27:
	l32i.n	a2, a14, 0
.LVL28:
	or	a10, a2, a10
.LVL29:
	s32i.n	a10, a14, 0
	j	.L26
.LVL30:
.L27:
	.loc 1 148 0
	slli	a10, a10, 16
.LVL31:
	addx4	a14, a14, a3
.LVL32:
	s32i.n	a10, a14, 0
.LVL33:
.L26:
	.loc 1 153 0
	bnez.n	a3, .L36
	j	.L29
.LVL34:
.L30:
	.loc 1 155 0 discriminator 3
	addx4	a5, a2, a3
	l32i.n	a10, a5, 0
	call8	lwip_htonl
.LVL35:
	s32i.n	a10, a5, 0
	.loc 1 154 0 discriminator 3
	addi.n	a2, a2, 1
.LVL36:
	j	.L28
.LVL37:
.L36:
	movi.n	a2, 0
.LVL38:
.L28:
	.loc 1 154 0 is_stmt 0 discriminator 1
	bltui	a2, 4, .L30
.LVL39:
.L29:
	.loc 1 159 0 is_stmt 1
	beqi	a4, 7, .L37
	.loc 1 160 0
	movi.n	a2, 0
	retw.n
.LVL40:
.L32:
	.loc 1 107 0
	movi.n	a2, 0
.LVL41:
	retw.n
.LVL42:
.L34:
	.loc 1 112 0
	movi.n	a2, 0
.LVL43:
	retw.n
.LVL44:
.L35:
	.loc 1 128 0
	movi.n	a2, 0
.LVL45:
	retw.n
.LVL46:
.L37:
	.loc 1 163 0
	movi.n	a2, 1
	.loc 1 164 0
	retw.n
.LFE15:
	.size	ip6addr_aton, .-ip6addr_aton
	.section	.text.ip6addr_ntoa_r,"ax",@progbits
	.literal_position
	.literal .LC0, 61440
	.literal .LC1, 3840
	.align	4
	.global	ip6addr_ntoa_r
	.type	ip6addr_ntoa_r, @function
ip6addr_ntoa_r:
.LFB17:
	.loc 1 192 0
.LVL47:
	entry	sp, 48
.LCFI1:
	s32i.n	a2, sp, 8
.LVL48:
	.loc 1 198 0
	movi.n	a2, 0
.LVL49:
	s32i.n	a2, sp, 0
	.loc 1 197 0
	mov.n	a7, a2
	.loc 1 200 0
	mov.n	a6, a2
	j	.L39
.LVL50:
.L63:
	.loc 1 202 0
	srli	a2, a6, 1
	l32i.n	a5, sp, 8
	addx4	a2, a2, a5
	l32i.n	a10, a2, 0
	call8	lwip_htonl
.LVL51:
	mov.n	a5, a10
.LVL52:
	.loc 1 203 0
	extui	a2, a6, 0, 1
	s32i.n	a2, sp, 4
	bnez.n	a2, .L40
	.loc 1 204 0
	extui	a5, a10, 16, 16
.LVL53:
.L40:
	.loc 1 206 0
	extui	a2, a5, 0, 16
.LVL54:
	.loc 1 209 0
	bnez.n	a2, .L41
	.loc 1 210 0
	bnei	a6, 7, .L42
	.loc 1 212 0
	addi.n	a2, a7, 1
.LVL55:
	add.n	a7, a3, a7
	movi.n	a5, 0x3a
.LVL56:
	s8i	a5, a7, 0
	.loc 1 213 0
	bge	a2, a4, .L64
	.loc 1 212 0
	mov.n	a7, a2
	j	.L44
.LVL57:
.L42:
	.loc 1 218 0
	l32i.n	a8, sp, 0
	bnez.n	a8, .L45
	.loc 1 221 0
	addi.n	a8, a6, 1
	srli	a8, a8, 1
	l32i.n	a9, sp, 8
	addx4	a8, a8, a9
	l32i.n	a10, a8, 0
	call8	lwip_htonl
.LVL58:
	.loc 1 222 0
	l32i.n	a8, sp, 4
	beqz.n	a8, .L46
	.loc 1 223 0
	extui	a10, a10, 16, 16
.LVL59:
.L46:
	.loc 1 225 0
	extui	a10, a10, 0, 16
.LVL60:
	.loc 1 226 0
	bnez.n	a10, .L47
.LVL61:
	.loc 1 228 0
	addi.n	a2, a7, 1
.LVL62:
	add.n	a7, a3, a7
	movi.n	a5, 0x3a
.LVL63:
	s8i	a5, a7, 0
	.loc 1 229 0
	bge	a2, a4, .L65
	.loc 1 228 0
	mov.n	a7, a2
	.loc 1 227 0
	movi.n	a2, 1
.LVL64:
	s32i.n	a2, sp, 0
	j	.L48
.LVL65:
.L45:
	.loc 1 234 0
	l32i.n	a8, sp, 0
	bnei	a8, 1, .L47
	j	.L48
.L41:
	.loc 1 238 0
	l32i.n	a9, sp, 0
	bnei	a9, 1, .L47
	.loc 1 240 0
	movi.n	a8, 2
	s32i.n	a8, sp, 0
.LVL66:
.L47:
	.loc 1 243 0
	beqz.n	a6, .L67
	.loc 1 244 0
	addi.n	a9, a7, 1
.LVL67:
	add.n	a7, a3, a7
	movi.n	a8, 0x3a
	s8i	a8, a7, 0
	.loc 1 245 0
	blt	a9, a4, .L49
	j	.L68
.LVL68:
.L67:
	mov.n	a9, a7
.LVL69:
.L49:
	.loc 1 250 0
	l32r	a7, .LC0
	and	a7, a5, a7
	beqz.n	a7, .L69
	.loc 1 253 0
	addi.n	a8, a9, 1
.LVL70:
	add.n	a9, a3, a9
	srli	a7, a7, 12
	movi.n	a10, 9
	bltu	a10, a7, .L51
	.loc 1 253 0 is_stmt 0 discriminator 1
	addi	a7, a7, 48
	extui	a7, a7, 0, 8
	j	.L52
.L51:
	.loc 1 253 0 discriminator 2
	addi	a7, a7, 55
	extui	a7, a7, 0, 8
.L52:
	.loc 1 253 0 discriminator 4
	s8i	a7, a9, 0
.LVL71:
	.loc 1 255 0 is_stmt 1 discriminator 4
	bge	a8, a4, .L70
	.loc 1 253 0
	mov.n	a9, a8
	.loc 1 254 0
	movi.n	a10, 0
	j	.L50
.LVL72:
.L69:
	.loc 1 251 0
	movi.n	a10, 1
.L50:
.LVL73:
	.loc 1 260 0
	l32r	a7, .LC1
	and	a7, a5, a7
	bnez.n	a7, .L53
	.loc 1 260 0 is_stmt 0 discriminator 1
	bnez.n	a10, .L71
.L53:
	.loc 1 263 0 is_stmt 1
	addi.n	a8, a9, 1
.LVL74:
	add.n	a9, a3, a9
	srli	a7, a7, 8
	movi.n	a10, 9
.LVL75:
	bltu	a10, a7, .L55
	.loc 1 263 0 is_stmt 0 discriminator 1
	addi	a7, a7, 48
	extui	a7, a7, 0, 8
	j	.L56
.L55:
	.loc 1 263 0 discriminator 2
	addi	a7, a7, 55
	extui	a7, a7, 0, 8
.L56:
	.loc 1 263 0 discriminator 4
	s8i	a7, a9, 0
.LVL76:
	.loc 1 265 0 is_stmt 1 discriminator 4
	bge	a8, a4, .L72
	.loc 1 264 0
	movi.n	a10, 0
	j	.L54
.LVL77:
.L71:
	mov.n	a8, a9
.LVL78:
.L54:
	.loc 1 270 0
	movi	a7, 0xf0
	and	a7, a5, a7
	bnez.n	a7, .L57
	.loc 1 270 0 is_stmt 0 discriminator 1
	bnez.n	a10, .L73
.L57:
	.loc 1 274 0 is_stmt 1
	addi.n	a9, a8, 1
.LVL79:
	add.n	a8, a3, a8
	srli	a7, a7, 4
	movi.n	a10, 9
.LVL80:
	bltu	a10, a7, .L59
	.loc 1 274 0 is_stmt 0 discriminator 1
	addi	a7, a7, 48
	j	.L60
.L59:
	.loc 1 274 0 discriminator 2
	addi	a7, a7, 55
.L60:
	.loc 1 274 0 discriminator 4
	s8i	a7, a8, 0
.LVL81:
	.loc 1 276 0 is_stmt 1 discriminator 4
	blt	a9, a4, .L58
	j	.L74
.LVL82:
.L73:
	mov.n	a9, a8
.LVL83:
.L58:
	.loc 1 281 0
	addi.n	a7, a9, 1
.LVL84:
	add.n	a9, a3, a9
	extui	a5, a5, 0, 4
	movi.n	a8, 9
	bltu	a8, a5, .L61
	.loc 1 281 0 is_stmt 0 discriminator 1
	extui	a2, a2, 0, 4
.LVL85:
	addi	a2, a2, 48
	j	.L62
.LVL86:
.L61:
	.loc 1 281 0 discriminator 2
	extui	a2, a2, 0, 4
.LVL87:
	addi	a2, a2, 55
.L62:
	.loc 1 281 0 discriminator 4
	s8i	a2, a9, 0
	.loc 1 282 0 is_stmt 1 discriminator 4
	bge	a7, a4, .L75
.LVL88:
.L48:
	.loc 1 200 0 discriminator 2
	addi.n	a6, a6, 1
.LVL89:
.L39:
	.loc 1 200 0 is_stmt 0 discriminator 1
	bltui	a6, 8, .L63
.L44:
	.loc 1 287 0 is_stmt 1
	add.n	a7, a3, a7
.LVL90:
	movi.n	a2, 0
	s8i	a2, a7, 0
	.loc 1 289 0
	mov.n	a2, a3
	retw.n
.LVL91:
.L64:
	.loc 1 214 0
	movi.n	a2, 0
.LVL92:
	retw.n
.LVL93:
.L65:
	.loc 1 230 0
	movi.n	a2, 0
.LVL94:
	retw.n
.LVL95:
.L68:
	.loc 1 246 0
	movi.n	a2, 0
.LVL96:
	retw.n
.LVL97:
.L70:
	.loc 1 256 0
	movi.n	a2, 0
.LVL98:
	retw.n
.LVL99:
.L72:
	.loc 1 266 0
	movi.n	a2, 0
.LVL100:
	retw.n
.LVL101:
.L74:
	.loc 1 277 0
	movi.n	a2, 0
.LVL102:
	retw.n
.LVL103:
.L75:
	.loc 1 283 0
	movi.n	a2, 0
	.loc 1 290 0
	retw.n
.LFE17:
	.size	ip6addr_ntoa_r, .-ip6addr_ntoa_r
	.section	.text.ip6addr_ntoa,"ax",@progbits
	.literal_position
	.literal .LC2, str$5674
	.align	4
	.global	ip6addr_ntoa
	.type	ip6addr_ntoa, @function
ip6addr_ntoa:
.LFB16:
	.loc 1 176 0
.LVL104:
	entry	sp, 32
.LCFI2:
	.loc 1 178 0
	movi.n	a12, 0x28
	l32r	a11, .LC2
	mov.n	a10, a2
	call8	ip6addr_ntoa_r
.LVL105:
	.loc 1 179 0
	mov.n	a2, a10
.LVL106:
	retw.n
.LFE16:
	.size	ip6addr_ntoa, .-ip6addr_ntoa
	.section	.bss.str$5674,"aw",@nobits
	.align	4
	.type	str$5674, @object
	.size	str$5674, 40
str$5674:
	.zero	40
	.global	ip6_addr_any
	.section	.rodata.ip6_addr_any,"a",@progbits
	.align	4
	.type	ip6_addr_any, @object
	.size	ip6_addr_any, 20
ip6_addr_any:
	.word	0
	.word	0
	.word	0
	.word	0
	.byte	6
	.zero	3
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
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI0-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI1-.LFB17
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI2-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/port/arch/cc.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/ip4_addr.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/ip6_addr.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/ip_addr.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/def.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x367
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0xc
	.4byte	.LASF42
	.4byte	.LASF43
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x19
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x1a
	.4byte	0x25
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
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
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa6
	.uleb128 0x6
	.4byte	0x99
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x2c
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x2d
	.4byte	0x65
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF17
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x4
	.byte	0x2e
	.4byte	0xab
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x4
	.byte	0x32
	.4byte	0xc1
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x4
	.byte	0x33
	.4byte	0xb6
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x4
	.byte	0x5
	.byte	0x2e
	.4byte	0x10d
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x5
	.byte	0x2f
	.4byte	0xde
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x5
	.byte	0x42
	.4byte	0xf4
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x10
	.byte	0x6
	.byte	0x39
	.4byte	0x131
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x6
	.byte	0x3a
	.4byte	0x131
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0xde
	.4byte	0x141
	.uleb128 0xa
	.4byte	0x85
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x6
	.byte	0x4b
	.4byte	0x118
	.uleb128 0xb
	.byte	0x10
	.byte	0x7
	.byte	0x39
	.4byte	0x16b
	.uleb128 0xc
	.string	"ip6"
	.byte	0x7
	.byte	0x3a
	.4byte	0x141
	.uleb128 0xc
	.string	"ip4"
	.byte	0x7
	.byte	0x3b
	.4byte	0x10d
	.byte	0
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x14
	.byte	0x7
	.byte	0x38
	.4byte	0x190
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x7
	.byte	0x3c
	.4byte	0x14c
	.byte	0
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x7
	.byte	0x3d
	.4byte	0xd3
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x7
	.byte	0x3e
	.4byte	0x16b
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x1
	.byte	0x49
	.4byte	0x33
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x222
	.uleb128 0xe
	.string	"cp"
	.byte	0x1
	.byte	0x49
	.4byte	0xa0
	.4byte	.LLST0
	.uleb128 0xf
	.4byte	.LASF24
	.byte	0x1
	.byte	0x49
	.4byte	0x222
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x10
	.4byte	.LASF30
	.byte	0x1
	.byte	0x4b
	.4byte	0xde
	.4byte	.LLST1
	.uleb128 0x10
	.4byte	.LASF31
	.byte	0x1
	.byte	0x4b
	.4byte	0xde
	.4byte	.LLST2
	.uleb128 0x10
	.4byte	.LASF32
	.byte	0x1
	.byte	0x4b
	.4byte	0xde
	.4byte	.LLST3
	.uleb128 0x10
	.4byte	.LASF33
	.byte	0x1
	.byte	0x4b
	.4byte	0xde
	.4byte	.LLST4
	.uleb128 0x11
	.string	"s"
	.byte	0x1
	.byte	0x4c
	.4byte	0xa0
	.4byte	.LLST5
	.uleb128 0x12
	.4byte	.LVL35
	.4byte	0x35f
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x141
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x1
	.byte	0xbf
	.4byte	0x93
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2d5
	.uleb128 0x13
	.4byte	.LASF24
	.byte	0x1
	.byte	0xbf
	.4byte	0x2d5
	.4byte	.LLST6
	.uleb128 0x14
	.string	"buf"
	.byte	0x1
	.byte	0xbf
	.4byte	0x93
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.4byte	.LASF36
	.byte	0x1
	.byte	0xbf
	.4byte	0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x10
	.4byte	.LASF32
	.byte	0x1
	.byte	0xc1
	.4byte	0xde
	.4byte	.LLST7
	.uleb128 0x10
	.4byte	.LASF33
	.byte	0x1
	.byte	0xc1
	.4byte	0xde
	.4byte	.LLST8
	.uleb128 0x10
	.4byte	.LASF37
	.byte	0x1
	.byte	0xc1
	.4byte	0xde
	.4byte	.LLST9
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0xc2
	.4byte	0xe9
	.4byte	.LLST10
	.uleb128 0x10
	.4byte	.LASF38
	.byte	0x1
	.byte	0xc3
	.4byte	0xd3
	.4byte	.LLST11
	.uleb128 0x10
	.4byte	.LASF39
	.byte	0x1
	.byte	0xc3
	.4byte	0xd3
	.4byte	.LLST12
	.uleb128 0x12
	.4byte	.LVL51
	.4byte	0x35f
	.uleb128 0x12
	.4byte	.LVL58
	.4byte	0x35f
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2db
	.uleb128 0x6
	.4byte	0x141
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0x1
	.byte	0xaf
	.4byte	0x93
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x339
	.uleb128 0x13
	.4byte	.LASF24
	.byte	0x1
	.byte	0xaf
	.4byte	0x2d5
	.4byte	.LLST13
	.uleb128 0x15
	.string	"str"
	.byte	0x1
	.byte	0xb1
	.4byte	0x339
	.uleb128 0x5
	.byte	0x3
	.4byte	str$5674
	.uleb128 0x16
	.4byte	.LVL105
	.4byte	0x228
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
	.4byte	str$5674
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x99
	.4byte	0x349
	.uleb128 0xa
	.4byte	0x85
	.byte	0x27
	.byte	0
	.uleb128 0x18
	.4byte	.LASF44
	.byte	0x1
	.byte	0x33
	.4byte	0x35a
	.uleb128 0x5
	.byte	0x3
	.4byte	ip6_addr_any
	.uleb128 0x6
	.4byte	0x190
	.uleb128 0x19
	.4byte	.LASF45
	.4byte	.LASF45
	.byte	0x8
	.byte	0x6e
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x3
	.byte	0x7e
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x3
	.byte	0x7e
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL34
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL40
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL25
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL40
	.4byte	.LVL46
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL6
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL25
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL49
	.4byte	.LFE17
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x7
	.byte	0x75
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x7
	.byte	0x75
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x7
	.byte	0x75
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x7
	.byte	0x75
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x7
	.byte	0x75
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x7
	.byte	0x75
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL58
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL93
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL57
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL62
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL64
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL70
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL74
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL79
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL84
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL95
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL97
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL101
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL103
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL97
	.4byte	.LVL103
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL61
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL61
	.4byte	.LVL65
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LVL93
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL93
	.4byte	.LVL95
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL95
	.4byte	.LFE17
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL104
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL106
	.4byte	.LFE16
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
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF20:
	.string	"s32_t"
.LASF5:
	.string	"__uint8_t"
.LASF6:
	.string	"__int32_t"
.LASF37:
	.string	"next_block_value"
.LASF1:
	.string	"short unsigned int"
.LASF22:
	.string	"ip4_addr"
.LASF35:
	.string	"ip6addr_ntoa_r"
.LASF41:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF39:
	.string	"empty_block_flag"
.LASF44:
	.string	"ip6_addr_any"
.LASF25:
	.string	"ip6_addr_t"
.LASF42:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/lwip/core/ipv6/ip6_addr.c"
.LASF40:
	.string	"ip6addr_ntoa"
.LASF27:
	.string	"u_addr"
.LASF3:
	.string	"unsigned char"
.LASF38:
	.string	"zero_flag"
.LASF12:
	.string	"long unsigned int"
.LASF24:
	.string	"addr"
.LASF16:
	.string	"uint32_t"
.LASF32:
	.string	"current_block_index"
.LASF7:
	.string	"__uint32_t"
.LASF19:
	.string	"u32_t"
.LASF29:
	.string	"ip_addr_t"
.LASF0:
	.string	"unsigned int"
.LASF21:
	.string	"ip4_addr_t"
.LASF13:
	.string	"char"
.LASF14:
	.string	"uint8_t"
.LASF34:
	.string	"ip6addr_aton"
.LASF18:
	.string	"u8_t"
.LASF33:
	.string	"current_block_value"
.LASF15:
	.string	"int32_t"
.LASF11:
	.string	"sizetype"
.LASF26:
	.string	"_ip_addr"
.LASF30:
	.string	"addr_index"
.LASF8:
	.string	"long long int"
.LASF23:
	.string	"ip6_addr"
.LASF43:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\lwip"
.LASF28:
	.string	"type"
.LASF4:
	.string	"short int"
.LASF31:
	.string	"zero_blocks"
.LASF36:
	.string	"buflen"
.LASF10:
	.string	"long int"
.LASF2:
	.string	"signed char"
.LASF17:
	.string	"_Bool"
.LASF9:
	.string	"long long unsigned int"
.LASF45:
	.string	"lwip_htonl"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
