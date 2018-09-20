	.file	"ip4_addr.c"
	.text
.Ltext0:
	.section	.text.ip4_addr_isbroadcast_u32,"ax",@progbits
	.align	4
	.global	ip4_addr_isbroadcast_u32
	.type	ip4_addr_isbroadcast_u32, @function
ip4_addr_isbroadcast_u32:
.LFB15:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/core/ipv4/ip4_addr.c"
	.loc 1 60 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 65 0
	addi.n	a8, a2, -1
	movi.n	a9, -3
	bltu	a9, a8, .L3
	.loc 1 69 0
	l8ui	a9, a3, 181
	movi.n	a8, 2
	and	a8, a9, a8
	beqz.n	a8, .L2
	.loc 1 74 0
	l32i.n	a8, a3, 4
	beq	a2, a8, .L4
	.loc 1 77 0
	l32i.n	a3, a3, 24
.LVL1:
	xor	a8, a2, a8
	bany	a8, a3, .L5
	.loc 1 79 0
	movi.n	a8, -1
	xor	a3, a8, a3
	and	a2, a2, a3
.LVL2:
	beq	a3, a2, .L6
	.loc 1 84 0
	movi.n	a8, 0
	j	.L2
.LVL3:
.L3:
	.loc 1 67 0
	movi.n	a8, 1
	j	.L2
.L4:
	.loc 1 75 0
	movi.n	a8, 0
	j	.L2
.LVL4:
.L5:
	.loc 1 84 0
	movi.n	a8, 0
	j	.L2
.LVL5:
.L6:
	.loc 1 82 0
	movi.n	a8, 1
.L2:
	.loc 1 86 0
	mov.n	a2, a8
	retw.n
.LFE15:
	.size	ip4_addr_isbroadcast_u32, .-ip4_addr_isbroadcast_u32
	.section	.text.ip4_addr_netmask_valid,"ax",@progbits
	.literal_position
	.literal .LC0, -2147483648
	.align	4
	.global	ip4_addr_netmask_valid
	.type	ip4_addr_netmask_valid, @function
ip4_addr_netmask_valid:
.LFB16:
	.loc 1 95 0
.LVL6:
	entry	sp, 32
.LCFI1:
	.loc 1 97 0
	mov.n	a10, a2
	call8	lwip_htonl
.LVL7:
	.loc 1 100 0
	l32r	a8, .LC0
	j	.L8
.LVL8:
.L10:
	.loc 1 101 0
	bnone	a8, a10, .L9
	.loc 1 100 0 discriminator 2
	srli	a8, a8, 1
.LVL9:
.L8:
	.loc 1 100 0 is_stmt 0 discriminator 1
	bnez.n	a8, .L10
	j	.L9
.L12:
	.loc 1 107 0 is_stmt 1
	bany	a8, a10, .L13
	.loc 1 106 0
	srli	a8, a8, 1
.LVL10:
.L9:
	.loc 1 106 0 is_stmt 0 discriminator 1
	bnez.n	a8, .L12
	.loc 1 113 0 is_stmt 1
	movi.n	a2, 1
.LVL11:
	retw.n
.LVL12:
.L13:
	.loc 1 109 0
	movi.n	a2, 0
.LVL13:
	.loc 1 114 0
	retw.n
.LFE16:
	.size	ip4_addr_netmask_valid, .-ip4_addr_netmask_valid
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC4:
	.string	"unhandled"
	.align	4
.LC7:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/lwip/core/ipv4/ip4_addr.c"
	.section	.text.ip4addr_aton,"ax",@progbits
	.literal_position
	.literal .LC1, .L33
	.literal .LC2, 16777215
	.literal .LC3, 65535
	.literal .LC5, .LC4
	.literal .LC6, __func__$5947
	.literal .LC8, .LC7
	.align	4
	.global	ip4addr_aton
	.type	ip4addr_aton, @function
ip4addr_aton:
.LFB18:
	.loc 1 157 0
.LVL14:
	entry	sp, 48
.LCFI2:
.LVL15:
	.loc 1 171 0
	l8ui	a9, a2, 0
.LVL16:
	.loc 1 162 0
	mov.n	a12, sp
.LVL17:
.L29:
	.loc 1 178 0
	addi	a4, a9, -48
	extui	a4, a4, 0, 8
	movi.n	a5, 9
	bltu	a5, a4, .L38
.LVL18:
	.loc 1 183 0
	movi.n	a4, 0x30
	bne	a9, a4, .L39
	.loc 1 184 0
	addi.n	a11, a2, 1
.LVL19:
	l8ui	a9, a2, 1
.LVL20:
	.loc 1 185 0
	addi	a4, a9, -120
	movi.n	a10, 1
	movi.n	a5, 0
	mov.n	a6, a5
	moveqz	a6, a10, a4
	addi	a8, a9, -88
	moveqz	a5, a10, a8
	or	a4, a5, a6
	beqz.n	a4, .L40
.LVL21:
	.loc 1 187 0
	l8ui	a9, a2, 2
.LVL22:
	addi.n	a2, a2, 2
.LVL23:
	.loc 1 186 0
	movi.n	a13, 0x10
	j	.L16
.LVL24:
.L39:
	.loc 1 182 0
	movi.n	a13, 0xa
	j	.L16
.LVL25:
.L40:
	.loc 1 184 0
	mov.n	a2, a11
	.loc 1 189 0
	movi.n	a13, 8
.LVL26:
.L16:
	.loc 1 194 0
	mov.n	a14, a13
	movi.n	a15, -1
	quou	a11, a15, a13
.LVL27:
	.loc 1 195 0
	remu	a15, a15, a13
.LVL28:
	.loc 1 181 0
	movi.n	a8, 0
.LVL29:
.L17:
	.loc 1 197 0
	addi	a10, a9, -48
	extui	a10, a10, 0, 8
	movi.n	a4, 9
	bltu	a4, a10, .L18
.LVL30:
	.loc 1 199 0
	bltu	a11, a8, .L41
	.loc 1 199 0 is_stmt 0 discriminator 1
	bne	a8, a11, .L19
	.loc 1 199 0 discriminator 2
	blt	a15, a10, .L42
.L19:
	.loc 1 201 0 is_stmt 1
	mull	a8, a8, a14
.LVL31:
	add.n	a8, a9, a8
	addi	a8, a8, -48
.LVL32:
	.loc 1 202 0
	addi.n	a2, a2, 1
.LVL33:
	l8ui	a9, a2, 0
.LVL34:
	j	.L17
.LVL35:
.L18:
	.loc 1 203 0
	bnei	a13, 16, .L21
	.loc 1 203 0 is_stmt 0 discriminator 1
	movi.n	a4, 1
	movi.n	a5, 9
	bgeu	a5, a10, .L22
	movi.n	a4, 0
.L22:
	extui	a5, a4, 0, 8
	addi	a4, a9, -97
	extui	a4, a4, 0, 8
	movi.n	a10, 1
	bltui	a4, 6, .L23
	movi.n	a10, 0
.L23:
	extui	a10, a10, 0, 8
	or	a10, a5, a10
	bnez.n	a10, .L24
	.loc 1 203 0 discriminator 2
	addi	a5, a9, -65
	extui	a5, a5, 0, 8
	bgeui	a5, 6, .L21
.L24:
	.loc 1 204 0 is_stmt 1
	movi.n	a5, 0x19
	bltu	a5, a4, .L43
	movi	a10, 0x61
	j	.L25
.L43:
	movi.n	a10, 0x41
.L25:
	.loc 1 204 0 is_stmt 0 discriminator 4
	sub	a10, a9, a10
	addi.n	a10, a10, 10
	extui	a10, a10, 0, 8
.LVL36:
	.loc 1 205 0 is_stmt 1 discriminator 4
	bltu	a11, a8, .L44
	.loc 1 205 0 is_stmt 0 discriminator 1
	bne	a8, a11, .L26
	.loc 1 205 0 discriminator 2
	blt	a15, a10, .L45
.L26:
	.loc 1 207 0 is_stmt 1
	slli	a8, a8, 4
.LVL37:
	addi.n	a9, a9, 10
.LVL38:
	movi.n	a5, 0x19
	bltu	a5, a4, .L46
	movi	a10, 0x61
.LVL39:
	j	.L27
.LVL40:
.L46:
	movi.n	a10, 0x41
.LVL41:
.L27:
	.loc 1 207 0 is_stmt 0 discriminator 4
	sub	a9, a9, a10
.LVL42:
	or	a8, a8, a9
.LVL43:
	.loc 1 208 0 is_stmt 1 discriminator 4
	addi.n	a2, a2, 1
.LVL44:
	l8ui	a9, a2, 0
.LVL45:
	j	.L17
.LVL46:
.L21:
	.loc 1 226 0
	movi.n	a4, 0x2e
	bne	a9, a4, .L28
	.loc 1 233 0
	addi.n	a4, sp, 12
	bgeu	a12, a4, .L47
.LVL47:
	.loc 1 236 0
	s32i.n	a8, a12, 0
.LVL48:
	.loc 1 237 0
	l8ui	a9, a2, 1
.LVL49:
	.loc 1 236 0
	addi.n	a12, a12, 4
.LVL50:
	.loc 1 237 0
	addi.n	a2, a2, 1
.LVL51:
	.loc 1 241 0
	j	.L29
.LVL52:
.L28:
	.loc 1 245 0
	beqz.n	a9, .L30
	.loc 1 245 0 is_stmt 0 discriminator 1
	addi	a2, a9, -32
.LVL53:
	movi.n	a10, 1
	movi.n	a4, 0
	mov.n	a5, a4
	movnez	a5, a10, a2
	mov.n	a2, a5
	addi	a5, a9, -12
	movnez	a4, a10, a5
	bnone	a4, a2, .L30
	.loc 1 245 0 discriminator 2
	addi	a5, a9, -10
	movi.n	a2, 0
	mov.n	a6, a2
	movnez	a6, a10, a5
	extui	a5, a6, 0, 8
	addi	a4, a9, -13
	movnez	a2, a10, a4
	extui	a2, a2, 0, 8
	beqz.n	a5, .L30
	beqz.n	a2, .L30
	.loc 1 245 0 discriminator 3
	addi	a2, a9, -9
	mov.n	a5, a10
	movi.n	a4, 0
	mov.n	a6, a4
	movnez	a6, a10, a2
	extui	a2, a6, 0, 8
	addi	a10, a9, -11
	mov.n	a9, a4
.LVL54:
	movnez	a9, a5, a10
	extui	a9, a9, 0, 8
	beq	a2, a4, .L30
	bne	a9, a4, .L48
.LVL55:
.L30:
	.loc 1 252 0 is_stmt 1
	sub	a2, a12, sp
	srai	a2, a2, 2
	addi.n	a2, a2, 1
	bgeui	a2, 5, .L32
	l32r	a4, .LC1
	addx4	a4, a2, a4
	l32i.n	a4, a4, 0
	jx	a4
	.section	.rodata.ip4addr_aton,"a",@progbits
	.align	4
	.align	4
.L33:
	.word	.L15
	.word	.L34
	.word	.L35
	.word	.L36
	.word	.L37
	.section	.text.ip4addr_aton
.L35:
	.loc 1 261 0
	l32r	a2, .LC2
	bltu	a2, a8, .L49
	.loc 1 264 0
	l32i.n	a2, sp, 0
	movi	a4, 0xff
	bltu	a4, a2, .L50
	.loc 1 267 0
	slli	a2, a2, 24
	or	a8, a8, a2
.LVL56:
	.loc 1 268 0
	j	.L34
.L36:
	.loc 1 271 0
	l32r	a2, .LC3
	bltu	a2, a8, .L51
	.loc 1 274 0
	l32i.n	a4, sp, 0
	movi	a2, 0xff
	bltu	a2, a4, .L52
	.loc 1 274 0 is_stmt 0 discriminator 1
	l32i.n	a2, sp, 4
	movi	a5, 0xff
	bltu	a5, a2, .L53
	.loc 1 277 0 is_stmt 1
	slli	a4, a4, 24
	slli	a2, a2, 16
	or	a2, a4, a2
	or	a8, a8, a2
.LVL57:
	.loc 1 278 0
	j	.L34
.L37:
	.loc 1 281 0
	movi	a2, 0xff
	bltu	a2, a8, .L54
	.loc 1 284 0
	l32i.n	a5, sp, 0
	bltu	a2, a5, .L55
	.loc 1 284 0 is_stmt 0 discriminator 1
	l32i.n	a4, sp, 4
	bltu	a2, a4, .L56
	.loc 1 284 0 discriminator 2
	l32i.n	a2, sp, 8
	movi	a9, 0xff
	bltu	a9, a2, .L57
	.loc 1 287 0 is_stmt 1
	slli	a5, a5, 24
	slli	a4, a4, 16
	or	a4, a5, a4
	slli	a2, a2, 8
	or	a2, a4, a2
	or	a8, a8, a2
.LVL58:
	.loc 1 288 0
	j	.L34
.L32:
	.loc 1 290 0 discriminator 1
	l32r	a13, .LC5
.LVL59:
	l32r	a12, .LC6
.LVL60:
	movi	a11, 0x122
.LVL61:
	l32r	a10, .LC8
	call8	__assert_func
.LVL62:
.L34:
	.loc 1 293 0
	beqz.n	a3, .L58
	.loc 1 294 0
	mov.n	a10, a8
	call8	lwip_htonl
.LVL63:
	s32i.n	a10, a3, 0
	.loc 1 296 0
	movi.n	a2, 1
	retw.n
.LVL64:
.L38:
	.loc 1 179 0
	movi.n	a2, 0
.LVL65:
	retw.n
.LVL66:
.L41:
	.loc 1 200 0
	movi.n	a2, 0
.LVL67:
	retw.n
.LVL68:
.L42:
	movi.n	a2, 0
.LVL69:
	retw.n
.LVL70:
.L44:
	.loc 1 206 0
	movi.n	a2, 0
.LVL71:
	retw.n
.LVL72:
.L45:
	movi.n	a2, 0
.LVL73:
	retw.n
.LVL74:
.L47:
	.loc 1 234 0
	movi.n	a2, 0
.LVL75:
	retw.n
.LVL76:
.L48:
	.loc 1 246 0
	movi.n	a2, 0
	retw.n
.LVL77:
.L49:
	.loc 1 262 0
	movi.n	a2, 0
	retw.n
.L50:
	.loc 1 265 0
	movi.n	a2, 0
	retw.n
.L51:
	.loc 1 272 0
	movi.n	a2, 0
	retw.n
.L52:
	.loc 1 275 0
	movi.n	a2, 0
	retw.n
.L53:
	movi.n	a2, 0
	retw.n
.L54:
	.loc 1 282 0
	movi.n	a2, 0
	retw.n
.L55:
	.loc 1 285 0
	movi.n	a2, 0
	retw.n
.L56:
	movi.n	a2, 0
	retw.n
.L57:
	movi.n	a2, 0
	retw.n
.L58:
	.loc 1 296 0
	movi.n	a2, 1
.L15:
	.loc 1 297 0
	retw.n
.LFE18:
	.size	ip4addr_aton, .-ip4addr_aton
	.section	.text.ipaddr_addr,"ax",@progbits
	.align	4
	.global	ipaddr_addr
	.type	ipaddr_addr, @function
ipaddr_addr:
.LFB17:
	.loc 1 135 0
.LVL78:
	entry	sp, 48
.LCFI3:
	.loc 1 138 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	ip4addr_aton
.LVL79:
	beqz.n	a10, .L61
	.loc 1 139 0
	l32i.n	a2, sp, 0
.LVL80:
	retw.n
.LVL81:
.L61:
	.loc 1 141 0
	movi.n	a2, -1
.LVL82:
	.loc 1 142 0
	retw.n
.LFE17:
	.size	ipaddr_addr, .-ipaddr_addr
	.section	.text.ip4addr_ntoa_r,"ax",@progbits
	.literal_position
	.literal .LC9, -858993459
	.align	4
	.global	ip4addr_ntoa_r
	.type	ip4addr_ntoa_r, @function
ip4addr_ntoa_r:
.LFB20:
	.loc 1 325 0
.LVL83:
	entry	sp, 48
.LCFI4:
.LVL84:
	.loc 1 335 0
	l32i.n	a2, a2, 0
.LVL85:
	s32i.n	a2, sp, 0
.LVL86:
	.loc 1 337 0
	mov.n	a11, a3
	.loc 1 333 0
	movi.n	a10, 0
	.loc 1 339 0
	mov.n	a13, a10
	.loc 1 338 0
	mov.n	a12, sp
.LVL87:
	.loc 1 339 0
	j	.L63
.LVL88:
.L70:
	movi.n	a14, 0
.L64:
.LVL89:
	.loc 1 342 0 discriminator 1
	l8ui	a9, a12, 0
	l32r	a8, .LC9
	muluh	a8, a9, a8
	srli	a8, a8, 3
	addx4	a2, a8, a8
	slli	a15, a2, 1
	sub	a9, a9, a15
	extui	a9, a9, 0, 8
.LVL90:
	.loc 1 343 0 discriminator 1
	extui	a8, a8, 0, 8
	s8i	a8, a12, 0
	.loc 1 344 0 discriminator 1
	addi.n	a15, a14, 1
	extui	a15, a15, 0, 8
.LVL91:
	addi.n	a2, sp, 4
	add.n	a14, a2, a14
	addi	a9, a9, 48
.LVL92:
	s8i	a9, a14, 0
	mov.n	a14, a15
	.loc 1 345 0 discriminator 1
	bnez.n	a8, .L64
	j	.L65
.LVL93:
.L67:
	.loc 1 347 0
	addi.n	a2, a10, 1
.LVL94:
	bge	a10, a4, .L68
.LVL95:
	.loc 1 350 0
	addi.n	a5, sp, 4
	add.n	a9, a5, a8
	l8ui	a9, a9, 0
	s8i	a9, a11, 0
	.loc 1 346 0
	mov.n	a15, a8
	.loc 1 347 0
	mov.n	a10, a2
	.loc 1 350 0
	addi.n	a11, a11, 1
.LVL96:
.L65:
	.loc 1 346 0
	addi.n	a8, a15, -1
	extui	a8, a8, 0, 8
.LVL97:
	bnez.n	a15, .L67
	.loc 1 352 0
	addi.n	a2, a10, 1
.LVL98:
	bge	a10, a4, .L69
.LVL99:
	.loc 1 355 0 discriminator 2
	movi.n	a8, 0x2e
.LVL100:
	s8i	a8, a11, 0
	.loc 1 356 0 discriminator 2
	addi.n	a12, a12, 1
.LVL101:
	.loc 1 339 0 discriminator 2
	addi.n	a13, a13, 1
.LVL102:
	extui	a13, a13, 0, 8
.LVL103:
	.loc 1 352 0 discriminator 2
	mov.n	a10, a2
	.loc 1 355 0 discriminator 2
	addi.n	a11, a11, 1
.LVL104:
.L63:
	.loc 1 339 0 discriminator 1
	bltui	a13, 4, .L70
.LVL105:
	.loc 1 358 0
	addi.n	a11, a11, -1
.LVL106:
	movi.n	a2, 0
	s8i	a2, a11, 0
	.loc 1 359 0
	mov.n	a2, a3
	retw.n
.LVL107:
.L68:
	.loc 1 348 0
	movi.n	a2, 0
.LVL108:
	retw.n
.LVL109:
.L69:
	.loc 1 353 0
	movi.n	a2, 0
.LVL110:
	.loc 1 360 0
	retw.n
.LFE20:
	.size	ip4addr_ntoa_r, .-ip4addr_ntoa_r
	.section	.text.ip4addr_ntoa,"ax",@progbits
	.literal_position
	.literal .LC10, str$5951
	.align	4
	.global	ip4addr_ntoa
	.type	ip4addr_ntoa, @function
ip4addr_ntoa:
.LFB19:
	.loc 1 309 0
.LVL111:
	entry	sp, 32
.LCFI5:
	.loc 1 311 0
	movi.n	a12, 0x10
	l32r	a11, .LC10
	mov.n	a10, a2
	call8	ip4addr_ntoa_r
.LVL112:
	.loc 1 312 0
	mov.n	a2, a10
.LVL113:
	retw.n
.LFE19:
	.size	ip4addr_ntoa, .-ip4addr_ntoa
	.section	.bss.str$5951,"aw",@nobits
	.align	4
	.type	str$5951, @object
	.size	str$5951, 16
str$5951:
	.zero	16
	.section	.rodata.__func__$5947,"a",@progbits
	.align	4
	.type	__func__$5947, @object
	.size	__func__$5947, 13
__func__$5947:
	.string	"ip4addr_aton"
	.global	ip_addr_broadcast
	.section	.rodata.ip_addr_broadcast,"a",@progbits
	.align	4
	.type	ip_addr_broadcast, @object
	.size	ip_addr_broadcast, 20
ip_addr_broadcast:
	.word	-1
	.word	0
	.word	0
	.word	0
	.byte	0
	.zero	3
	.global	ip_addr_any
	.section	.rodata.ip_addr_any,"a",@progbits
	.align	4
	.type	ip_addr_any, @object
	.size	ip_addr_any, 20
ip_addr_any:
	.zero	20
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
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI1-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI2-.LFB18
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI3-.LFB17
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI4-.LFB20
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI5-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/port/arch/cc.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/ip4_addr.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/ip6_addr.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/ip_addr.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/err.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/pbuf.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/netif.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/def.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/memp.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x96e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF114
	.byte	0xc
	.4byte	.LASF115
	.4byte	.LASF116
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
	.uleb128 0x4
	.4byte	.LASF3
	.byte	0x2
	.byte	0x11
	.4byte	0x45
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF4
	.byte	0x2
	.byte	0x12
	.4byte	0x57
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x16
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x1a
	.4byte	0x25
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa6
	.uleb128 0x7
	.uleb128 0x6
	.byte	0x4
	.4byte	0xad
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x6
	.byte	0x4
	.4byte	0xba
	.uleb128 0x8
	.4byte	0xad
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x14
	.4byte	0x3a
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0x21
	.4byte	0x65
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x3
	.byte	0x2d
	.4byte	0x70
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF19
	.uleb128 0x6
	.byte	0x4
	.4byte	0xf8
	.uleb128 0x9
	.4byte	0x103
	.uleb128 0xa
	.4byte	0x97
	.byte	0
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x4
	.byte	0x2e
	.4byte	0xca
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x4
	.byte	0x2f
	.4byte	0xbf
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x4
	.byte	0x30
	.4byte	0xd5
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x4
	.byte	0x32
	.4byte	0xe0
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x4
	.byte	0x5
	.byte	0x2e
	.4byte	0x148
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x5
	.byte	0x2f
	.4byte	0x124
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x5
	.byte	0x42
	.4byte	0x12f
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x10
	.byte	0x6
	.byte	0x39
	.4byte	0x16c
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x6
	.byte	0x3a
	.4byte	0x16c
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0x124
	.4byte	0x17c
	.uleb128 0xe
	.4byte	0x90
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x6
	.byte	0x4b
	.4byte	0x153
	.uleb128 0xf
	.byte	0x10
	.byte	0x7
	.byte	0x39
	.4byte	0x1a6
	.uleb128 0x10
	.string	"ip6"
	.byte	0x7
	.byte	0x3a
	.4byte	0x17c
	.uleb128 0x10
	.string	"ip4"
	.byte	0x7
	.byte	0x3b
	.4byte	0x148
	.byte	0
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x14
	.byte	0x7
	.byte	0x38
	.4byte	0x1cb
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x7
	.byte	0x3c
	.4byte	0x187
	.byte	0
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x7
	.byte	0x3d
	.4byte	0x103
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.4byte	.LASF32
	.byte	0x7
	.byte	0x3e
	.4byte	0x1a6
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x8
	.byte	0x2f
	.4byte	0x10e
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x18
	.byte	0x9
	.byte	0x6c
	.4byte	0x25a
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x9
	.byte	0x6e
	.4byte	0x25a
	.byte	0
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x9
	.byte	0x71
	.4byte	0x97
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x9
	.byte	0x7a
	.4byte	0x119
	.byte	0x8
	.uleb128 0x11
	.string	"len"
	.byte	0x9
	.byte	0x7d
	.4byte	0x119
	.byte	0xa
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x9
	.byte	0x80
	.4byte	0x103
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x9
	.byte	0x83
	.4byte	0x103
	.byte	0xd
	.uleb128 0x11
	.string	"ref"
	.byte	0x9
	.byte	0x8a
	.4byte	0x119
	.byte	0xe
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x9
	.byte	0x8d
	.4byte	0x3f0
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x9
	.byte	0x8e
	.4byte	0x97
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1e1
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0xe8
	.byte	0xa
	.byte	0xbd
	.4byte	0x3f0
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0xa
	.byte	0xbf
	.4byte	0x3f0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0xa
	.byte	0xc3
	.4byte	0x1cb
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0xa
	.byte	0xc4
	.4byte	0x1cb
	.byte	0x18
	.uleb128 0x11
	.string	"gw"
	.byte	0xa
	.byte	0xc5
	.4byte	0x1cb
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0xa
	.byte	0xc9
	.4byte	0x588
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0xa
	.byte	0xcc
	.4byte	0x598
	.byte	0x7c
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0xa
	.byte	0xce
	.4byte	0x5b8
	.byte	0x80
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0xa
	.byte	0xd4
	.4byte	0x475
	.byte	0x84
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0xa
	.byte	0xd9
	.4byte	0x49a
	.byte	0x88
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0xa
	.byte	0xde
	.4byte	0x504
	.byte	0x8c
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0xa
	.byte	0xe3
	.4byte	0x4cf
	.byte	0x90
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0xa
	.byte	0xf5
	.4byte	0x97
	.byte	0x94
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0xa
	.byte	0xf8
	.4byte	0x5c3
	.byte	0x98
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0xa
	.byte	0xfb
	.4byte	0x5ce
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0xa
	.byte	0xfc
	.4byte	0x57d
	.byte	0xa0
	.uleb128 0x12
	.4byte	.LASF54
	.byte	0xa
	.2byte	0x108
	.4byte	0x103
	.byte	0xa4
	.uleb128 0x12
	.4byte	.LASF55
	.byte	0xa
	.2byte	0x10d
	.4byte	0x103
	.byte	0xa5
	.uleb128 0x12
	.4byte	.LASF56
	.byte	0xa
	.2byte	0x117
	.4byte	0xb4
	.byte	0xa8
	.uleb128 0x13
	.string	"mtu"
	.byte	0xa
	.2byte	0x11f
	.4byte	0x119
	.byte	0xac
	.uleb128 0x12
	.4byte	.LASF57
	.byte	0xa
	.2byte	0x121
	.4byte	0x103
	.byte	0xae
	.uleb128 0x12
	.4byte	.LASF58
	.byte	0xa
	.2byte	0x123
	.4byte	0x5d4
	.byte	0xaf
	.uleb128 0x12
	.4byte	.LASF38
	.byte	0xa
	.2byte	0x125
	.4byte	0x103
	.byte	0xb5
	.uleb128 0x12
	.4byte	.LASF59
	.byte	0xa
	.2byte	0x127
	.4byte	0x5e4
	.byte	0xb6
	.uleb128 0x13
	.string	"num"
	.byte	0xa
	.2byte	0x129
	.4byte	0x103
	.byte	0xb8
	.uleb128 0x12
	.4byte	.LASF60
	.byte	0xa
	.2byte	0x139
	.4byte	0x529
	.byte	0xbc
	.uleb128 0x12
	.4byte	.LASF61
	.byte	0xa
	.2byte	0x13f
	.4byte	0x553
	.byte	0xc0
	.uleb128 0x12
	.4byte	.LASF62
	.byte	0xa
	.2byte	0x147
	.4byte	0x25a
	.byte	0xc4
	.uleb128 0x12
	.4byte	.LASF63
	.byte	0xa
	.2byte	0x148
	.4byte	0x25a
	.byte	0xc8
	.uleb128 0x12
	.4byte	.LASF64
	.byte	0xa
	.2byte	0x14a
	.4byte	0x119
	.byte	0xcc
	.uleb128 0x12
	.4byte	.LASF65
	.byte	0xa
	.2byte	0x14f
	.4byte	0xf2
	.byte	0xd0
	.uleb128 0x12
	.4byte	.LASF66
	.byte	0xa
	.2byte	0x150
	.4byte	0x1cb
	.byte	0xd4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x260
	.uleb128 0x14
	.byte	0x4
	.4byte	0x25
	.byte	0xd
	.byte	0x2d
	.4byte	0x475
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x1
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x2
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x3
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x7
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x9
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0xa
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0xb
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0xd
	.uleb128 0x15
	.4byte	.LASF81
	.byte	0xe
	.uleb128 0x15
	.4byte	.LASF82
	.byte	0xf
	.uleb128 0x15
	.4byte	.LASF83
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF84
	.byte	0x11
	.uleb128 0x15
	.4byte	.LASF85
	.byte	0x12
	.byte	0
	.uleb128 0x4
	.4byte	.LASF86
	.byte	0xa
	.byte	0x83
	.4byte	0x480
	.uleb128 0x6
	.byte	0x4
	.4byte	0x486
	.uleb128 0x16
	.4byte	0x1d6
	.4byte	0x49a
	.uleb128 0xa
	.4byte	0x25a
	.uleb128 0xa
	.4byte	0x3f0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF87
	.byte	0xa
	.byte	0x8e
	.4byte	0x4a5
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4ab
	.uleb128 0x16
	.4byte	0x1d6
	.4byte	0x4c4
	.uleb128 0xa
	.4byte	0x3f0
	.uleb128 0xa
	.4byte	0x25a
	.uleb128 0xa
	.4byte	0x4c4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4ca
	.uleb128 0x8
	.4byte	0x148
	.uleb128 0x4
	.4byte	.LASF88
	.byte	0xa
	.byte	0x9b
	.4byte	0x4da
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4e0
	.uleb128 0x16
	.4byte	0x1d6
	.4byte	0x4f9
	.uleb128 0xa
	.4byte	0x3f0
	.uleb128 0xa
	.4byte	0x25a
	.uleb128 0xa
	.4byte	0x4f9
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4ff
	.uleb128 0x8
	.4byte	0x17c
	.uleb128 0x4
	.4byte	.LASF89
	.byte	0xa
	.byte	0xa5
	.4byte	0x50f
	.uleb128 0x6
	.byte	0x4
	.4byte	0x515
	.uleb128 0x16
	.4byte	0x1d6
	.4byte	0x529
	.uleb128 0xa
	.4byte	0x3f0
	.uleb128 0xa
	.4byte	0x25a
	.byte	0
	.uleb128 0x4
	.4byte	.LASF90
	.byte	0xa
	.byte	0xaa
	.4byte	0x534
	.uleb128 0x6
	.byte	0x4
	.4byte	0x53a
	.uleb128 0x16
	.4byte	0x1d6
	.4byte	0x553
	.uleb128 0xa
	.4byte	0x3f0
	.uleb128 0xa
	.4byte	0x4c4
	.uleb128 0xa
	.4byte	0x103
	.byte	0
	.uleb128 0x4
	.4byte	.LASF91
	.byte	0xa
	.byte	0xaf
	.4byte	0x55e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x564
	.uleb128 0x16
	.4byte	0x1d6
	.4byte	0x57d
	.uleb128 0xa
	.4byte	0x3f0
	.uleb128 0xa
	.4byte	0x4f9
	.uleb128 0xa
	.4byte	0x103
	.byte	0
	.uleb128 0x4
	.4byte	.LASF92
	.byte	0xa
	.byte	0xb6
	.4byte	0xa0
	.uleb128 0xd
	.4byte	0x1cb
	.4byte	0x598
	.uleb128 0xe
	.4byte	0x90
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.4byte	0x103
	.4byte	0x5a8
	.uleb128 0xe
	.4byte	0x90
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x5b8
	.uleb128 0xa
	.4byte	0x3f0
	.uleb128 0xa
	.4byte	0x103
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5a8
	.uleb128 0x17
	.4byte	.LASF51
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5be
	.uleb128 0x17
	.4byte	.LASF93
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5c9
	.uleb128 0xd
	.4byte	0x103
	.4byte	0x5e4
	.uleb128 0xe
	.4byte	0x90
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.4byte	0xad
	.4byte	0x5f4
	.uleb128 0xe
	.4byte	0x90
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.4byte	.LASF94
	.byte	0x1
	.byte	0x3b
	.4byte	0x103
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x637
	.uleb128 0x19
	.4byte	.LASF27
	.byte	0x1
	.byte	0x3b
	.4byte	0x124
	.4byte	.LLST0
	.uleb128 0x19
	.4byte	.LASF41
	.byte	0x1
	.byte	0x3b
	.4byte	0x637
	.4byte	.LLST1
	.uleb128 0x1a
	.4byte	.LASF103
	.byte	0x1
	.byte	0x3d
	.4byte	0x148
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x63d
	.uleb128 0x8
	.4byte	0x260
	.uleb128 0x18
	.4byte	.LASF95
	.byte	0x1
	.byte	0x5e
	.4byte	0x103
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x697
	.uleb128 0x19
	.4byte	.LASF43
	.byte	0x1
	.byte	0x5e
	.4byte	0x124
	.4byte	.LLST2
	.uleb128 0x1b
	.4byte	.LASF96
	.byte	0x1
	.byte	0x60
	.4byte	0x124
	.4byte	.LLST3
	.uleb128 0x1c
	.4byte	.LASF97
	.byte	0x1
	.byte	0x61
	.4byte	0x124
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1d
	.4byte	.LVL7
	.4byte	0x95b
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF98
	.byte	0x1
	.byte	0x9c
	.4byte	0x33
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x787
	.uleb128 0x1f
	.string	"cp"
	.byte	0x1
	.byte	0x9c
	.4byte	0xb4
	.4byte	.LLST4
	.uleb128 0x20
	.4byte	.LASF27
	.byte	0x1
	.byte	0x9c
	.4byte	0x787
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.string	"val"
	.byte	0x1
	.byte	0x9e
	.4byte	0x124
	.4byte	.LLST5
	.uleb128 0x1b
	.4byte	.LASF99
	.byte	0x1
	.byte	0x9f
	.4byte	0x103
	.4byte	.LLST6
	.uleb128 0x21
	.string	"c"
	.byte	0x1
	.byte	0xa0
	.4byte	0xad
	.4byte	.LLST7
	.uleb128 0x1c
	.4byte	.LASF100
	.byte	0x1
	.byte	0xa1
	.4byte	0x16c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.string	"pp"
	.byte	0x1
	.byte	0xa2
	.4byte	0x78d
	.4byte	.LLST8
	.uleb128 0x21
	.string	"ch"
	.byte	0x1
	.byte	0xa6
	.4byte	0xad
	.4byte	.LLST9
	.uleb128 0x1b
	.4byte	.LASF101
	.byte	0x1
	.byte	0xa7
	.4byte	0x99
	.4byte	.LLST10
	.uleb128 0x1b
	.4byte	.LASF102
	.byte	0x1
	.byte	0xa8
	.4byte	0x33
	.4byte	.LLST11
	.uleb128 0x22
	.4byte	.LASF104
	.4byte	0x7a3
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5947
	.uleb128 0x23
	.4byte	.LVL62
	.4byte	0x966
	.4byte	0x77d
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x122
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5947
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x24
	.4byte	.LVL63
	.4byte	0x95b
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x148
	.uleb128 0x6
	.byte	0x4
	.4byte	0x124
	.uleb128 0xd
	.4byte	0xad
	.4byte	0x7a3
	.uleb128 0xe
	.4byte	0x90
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.4byte	0x793
	.uleb128 0x18
	.4byte	.LASF105
	.byte	0x1
	.byte	0x86
	.4byte	0x124
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7f4
	.uleb128 0x1f
	.string	"cp"
	.byte	0x1
	.byte	0x86
	.4byte	0xb4
	.4byte	.LLST12
	.uleb128 0x25
	.string	"val"
	.byte	0x1
	.byte	0x88
	.4byte	0x148
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.4byte	.LVL79
	.4byte	0x697
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x144
	.4byte	0xa7
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8b3
	.uleb128 0x27
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x144
	.4byte	0x4c4
	.4byte	.LLST13
	.uleb128 0x28
	.string	"buf"
	.byte	0x1
	.2byte	0x144
	.4byte	0xa7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x144
	.4byte	0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2a
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x146
	.4byte	0x124
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"inv"
	.byte	0x1
	.2byte	0x147
	.4byte	0x8b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.string	"rp"
	.byte	0x1
	.2byte	0x148
	.4byte	0xa7
	.4byte	.LLST14
	.uleb128 0x2c
	.string	"ap"
	.byte	0x1
	.2byte	0x149
	.4byte	0x8c3
	.4byte	.LLST15
	.uleb128 0x2c
	.string	"rem"
	.byte	0x1
	.2byte	0x14a
	.4byte	0x103
	.4byte	.LLST16
	.uleb128 0x2c
	.string	"n"
	.byte	0x1
	.2byte	0x14b
	.4byte	0x103
	.4byte	.LLST17
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.2byte	0x14c
	.4byte	0x103
	.4byte	.LLST18
	.uleb128 0x2c
	.string	"len"
	.byte	0x1
	.2byte	0x14d
	.4byte	0x33
	.4byte	.LLST19
	.byte	0
	.uleb128 0xd
	.4byte	0xad
	.4byte	0x8c3
	.uleb128 0xe
	.4byte	0x90
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x103
	.uleb128 0x26
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x134
	.4byte	0xa7
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x924
	.uleb128 0x27
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x134
	.4byte	0x4c4
	.4byte	.LLST20
	.uleb128 0x2b
	.string	"str"
	.byte	0x1
	.2byte	0x136
	.4byte	0x924
	.uleb128 0x5
	.byte	0x3
	.4byte	str$5951
	.uleb128 0x1d
	.4byte	.LVL112
	.4byte	0x7f4
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	str$5951
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0xad
	.4byte	0x934
	.uleb128 0xe
	.4byte	0x90
	.byte	0xf
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF110
	.byte	0x1
	.byte	0x30
	.4byte	0x945
	.uleb128 0x5
	.byte	0x3
	.4byte	ip_addr_any
	.uleb128 0x8
	.4byte	0x1cb
	.uleb128 0x2d
	.4byte	.LASF111
	.byte	0x1
	.byte	0x31
	.4byte	0x945
	.uleb128 0x5
	.byte	0x3
	.4byte	ip_addr_broadcast
	.uleb128 0x2e
	.4byte	.LASF112
	.4byte	.LASF112
	.byte	0xb
	.byte	0x6e
	.uleb128 0x2e
	.4byte	.LASF113
	.4byte	.LASF113
	.byte	0xc
	.byte	0x29
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x10
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
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
	.4byte	.LFE16
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
	.2byte	0x5
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x1f
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL14
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x3
	.byte	0x72
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL26
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LVL51
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL18
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL32
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL43
	.4byte	.LVL62-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL62
	.4byte	.LVL63-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL66
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL59
	.4byte	.LVL62-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL62
	.4byte	.LVL63-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL66
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x7b
	.sleb128 0
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x72
	.sleb128 2
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x7b
	.sleb128 0
	.4byte	.LVL26
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	.LVL35
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL38
	.4byte	.LVL42
	.2byte	0x3
	.byte	0x79
	.sleb128 -10
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	.LVL46
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x72
	.sleb128 1
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x3
	.byte	0x7a
	.sleb128 11
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x3
	.byte	0x7a
	.sleb128 11
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL47
	.4byte	.LVL50
	.2byte	0x3
	.byte	0x7c
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL62
	.4byte	.LVL63-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL64
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL30
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL36
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL66
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL27
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL61
	.4byte	.LVL62-1
	.2byte	0xc
	.byte	0x9
	.byte	0xff
	.byte	0xf7
	.uleb128 0x25
	.byte	0x7e
	.sleb128 0
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL63-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL66
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL28
	.4byte	.LVL62-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL62
	.4byte	.LVL63-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL66
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL78
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
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL83
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL85
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL86
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL88
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x3
	.byte	0x7b
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL99
	.4byte	.LVL104
	.2byte	0x3
	.byte	0x7b
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x3
	.byte	0x7b
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL106
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL90
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x3
	.byte	0x79
	.sleb128 -48
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL86
	.4byte	.LVL88
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x3
	.byte	0x7d
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL89
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL91
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL93
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL97
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL100
	.4byte	.LVL104
	.2byte	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL84
	.4byte	.LVL88
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL94
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL96
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL98
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL104
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL110
	.4byte	.LFE20
	.2byte	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL111
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL113
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
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
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF106:
	.string	"ip4addr_ntoa_r"
.LASF90:
	.string	"netif_igmp_mac_filter_fn"
.LASF78:
	.string	"MEMP_SYS_TIMEOUT"
.LASF49:
	.string	"output_ip6"
.LASF34:
	.string	"pbuf"
.LASF55:
	.string	"rs_count"
.LASF79:
	.string	"MEMP_NETDB"
.LASF100:
	.string	"parts"
.LASF4:
	.string	"__uint8_t"
.LASF31:
	.string	"type"
.LASF29:
	.string	"_ip_addr"
.LASF10:
	.string	"long long unsigned int"
.LASF52:
	.string	"dhcps_pcb"
.LASF27:
	.string	"addr"
.LASF44:
	.string	"ip6_addr_state"
.LASF71:
	.string	"MEMP_TCP_SEG"
.LASF3:
	.string	"__int8_t"
.LASF35:
	.string	"next"
.LASF76:
	.string	"MEMP_ARP_QUEUE"
.LASF9:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF13:
	.string	"long unsigned int"
.LASF61:
	.string	"mld_mac_filter"
.LASF58:
	.string	"hwaddr"
.LASF37:
	.string	"tot_len"
.LASF81:
	.string	"MEMP_IP6_REASSDATA"
.LASF50:
	.string	"state"
.LASF56:
	.string	"hostname"
.LASF11:
	.string	"long int"
.LASF67:
	.string	"MEMP_RAW_PCB"
.LASF25:
	.string	"ip4_addr"
.LASF92:
	.string	"dhcp_event_fn"
.LASF57:
	.string	"hwaddr_len"
.LASF68:
	.string	"MEMP_UDP_PCB"
.LASF43:
	.string	"netmask"
.LASF89:
	.string	"netif_linkoutput_fn"
.LASF77:
	.string	"MEMP_IGMP_GROUP"
.LASF8:
	.string	"__uint32_t"
.LASF96:
	.string	"mask"
.LASF0:
	.string	"unsigned int"
.LASF108:
	.string	"s_addr"
.LASF66:
	.string	"last_ip_addr"
.LASF115:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/lwip/core/ipv4/ip4_addr.c"
.LASF88:
	.string	"netif_output_ip6_fn"
.LASF83:
	.string	"MEMP_PBUF"
.LASF47:
	.string	"output"
.LASF23:
	.string	"u32_t"
.LASF59:
	.string	"name"
.LASF40:
	.string	"l2_buf"
.LASF69:
	.string	"MEMP_TCP_PCB"
.LASF110:
	.string	"ip_addr_any"
.LASF1:
	.string	"short unsigned int"
.LASF116:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\lwip"
.LASF24:
	.string	"ip4_addr_t"
.LASF80:
	.string	"MEMP_ND6_QUEUE"
.LASF97:
	.string	"nm_hostorder"
.LASF17:
	.string	"uint16_t"
.LASF112:
	.string	"lwip_htonl"
.LASF45:
	.string	"ipv6_addr_cb"
.LASF98:
	.string	"ip4addr_aton"
.LASF99:
	.string	"base"
.LASF85:
	.string	"MEMP_MAX"
.LASF32:
	.string	"ip_addr_t"
.LASF33:
	.string	"err_t"
.LASF12:
	.string	"sizetype"
.LASF64:
	.string	"loop_cnt_current"
.LASF41:
	.string	"netif"
.LASF82:
	.string	"MEMP_MLD6_GROUP"
.LASF60:
	.string	"igmp_mac_filter"
.LASF36:
	.string	"payload"
.LASF42:
	.string	"ip_addr"
.LASF111:
	.string	"ip_addr_broadcast"
.LASF39:
	.string	"l2_owner"
.LASF19:
	.string	"_Bool"
.LASF113:
	.string	"__assert_func"
.LASF5:
	.string	"unsigned char"
.LASF94:
	.string	"ip4_addr_isbroadcast_u32"
.LASF114:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF6:
	.string	"short int"
.LASF87:
	.string	"netif_output_fn"
.LASF104:
	.string	"__func__"
.LASF53:
	.string	"dhcp_event"
.LASF107:
	.string	"buflen"
.LASF46:
	.string	"input"
.LASF91:
	.string	"netif_mld_mac_filter_fn"
.LASF21:
	.string	"s8_t"
.LASF18:
	.string	"uint32_t"
.LASF109:
	.string	"ip4addr_ntoa"
.LASF26:
	.string	"ip6_addr"
.LASF74:
	.string	"MEMP_TCPIP_MSG_API"
.LASF14:
	.string	"char"
.LASF72:
	.string	"MEMP_NETBUF"
.LASF7:
	.string	"__uint16_t"
.LASF70:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF73:
	.string	"MEMP_NETCONN"
.LASF84:
	.string	"MEMP_PBUF_POOL"
.LASF63:
	.string	"loop_last"
.LASF102:
	.string	"cutlim"
.LASF62:
	.string	"loop_first"
.LASF86:
	.string	"netif_input_fn"
.LASF15:
	.string	"int8_t"
.LASF22:
	.string	"u16_t"
.LASF101:
	.string	"cutoff"
.LASF28:
	.string	"ip6_addr_t"
.LASF30:
	.string	"u_addr"
.LASF103:
	.string	"ipaddr"
.LASF16:
	.string	"uint8_t"
.LASF51:
	.string	"dhcp"
.LASF38:
	.string	"flags"
.LASF93:
	.string	"udp_pcb"
.LASF65:
	.string	"l2_buffer_free_notify"
.LASF54:
	.string	"ip6_autoconfig_enabled"
.LASF48:
	.string	"linkoutput"
.LASF105:
	.string	"ipaddr_addr"
.LASF20:
	.string	"u8_t"
.LASF75:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF95:
	.string	"ip4_addr_netmask_valid"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
