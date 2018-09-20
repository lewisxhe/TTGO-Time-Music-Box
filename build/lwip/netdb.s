	.file	"netdb.c"
	.text
.Ltext0:
	.section	.text.lwip_gethostbyname,"ax",@progbits
	.literal_position
	.literal .LC0, s_hostent$6584
	.literal .LC1, h_errno
	.literal .LC2, s_hostent_addr$6586
	.literal .LC3, s_phostent_addr$6587
	.literal .LC4, s_hostname$6588
	.literal .LC5, s_aliases$6585
	.align	4
	.global	lwip_gethostbyname
	.type	lwip_gethostbyname, @function
lwip_gethostbyname:
.LFB32:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/api/netdb.c"
	.loc 1 86 0
.LVL0:
	entry	sp, 64
.LCFI0:
	.loc 1 98 0
	movi.n	a12, 2
	mov.n	a11, sp
	mov.n	a10, a2
	call8	netconn_gethostbyname_addrtype
.LVL1:
	extui	a10, a10, 0, 8
.LVL2:
	.loc 1 99 0
	beqz.n	a10, .L2
	.loc 1 101 0
	movi	a3, 0xd2
	l32r	a2, .LC1
.LVL3:
	s32i.n	a3, a2, 0
	.loc 1 102 0
	movi.n	a2, 0
	retw.n
.LVL4:
.L2:
	.loc 1 106 0
	l32r	a4, .LC2
	movi.n	a6, 0x14
	mov.n	a12, a6
	mov.n	a11, sp
	mov.n	a10, a4
.LVL5:
	call8	memcpy
.LVL6:
	.loc 1 107 0
	l32r	a3, .LC3
	s32i.n	a4, a3, 0
	.loc 1 108 0
	movi.n	a4, 0
	s32i.n	a4, a3, 4
	.loc 1 109 0
	l32r	a5, .LC4
	movi	a12, 0x100
	mov.n	a11, a2
	mov.n	a10, a5
	call8	strncpy
.LVL7:
	.loc 1 110 0
	addmi	a2, a5, 0x100
.LVL8:
	s8i	a4, a2, 0
	.loc 1 111 0
	l32r	a2, .LC0
	s32i.n	a5, a2, 0
	.loc 1 112 0
	l32r	a5, .LC5
	s32i.n	a4, a5, 0
	.loc 1 113 0
	s32i.n	a5, a2, 4
	.loc 1 114 0
	movi.n	a4, 2
	s32i.n	a4, a2, 8
	.loc 1 115 0
	s32i.n	a6, a2, 12
	.loc 1 116 0
	s32i.n	a3, a2, 16
	.loc 1 141 0
	retw.n
.LFE32:
	.size	lwip_gethostbyname, .-lwip_gethostbyname
	.section	.text.lwip_gethostbyname_r,"ax",@progbits
	.align	4
	.global	lwip_gethostbyname_r
	.type	lwip_gethostbyname_r, @function
lwip_gethostbyname_r:
.LFB33:
	.loc 1 162 0
.LVL9:
	entry	sp, 64
.LCFI1:
	s32i.n	a7, sp, 20
	.loc 1 169 0
	bnez.n	a7, .L5
	.loc 1 171 0
	s32i.n	sp, sp, 20
.L5:
.LVL10:
	.loc 1 174 0
	bnez.n	a6, .L6
	.loc 1 176 0
	movi.n	a2, 0x16
.LVL11:
	l32i.n	a3, sp, 20
.LVL12:
	s32i.n	a2, a3, 0
	.loc 1 177 0
	movi.n	a2, -1
	retw.n
.LVL13:
.L6:
	.loc 1 180 0
	movi.n	a9, 0
	s32i.n	a9, a6, 0
	.loc 1 181 0
	movi.n	a7, 1
	mov.n	a8, a9
	moveqz	a8, a7, a2
	.loc 1 181 0
	movnez	a7, a9, a3
	or	a7, a7, a8
	.loc 1 181 0
	bne	a7, a9, .L8
	.loc 1 181 0 discriminator 1
	bne	a4, a9, .L9
.L8:
	.loc 1 183 0
	movi.n	a2, 0x16
.LVL14:
	l32i.n	a3, sp, 20
.LVL15:
	s32i.n	a2, a3, 0
	.loc 1 184 0
	movi.n	a2, -1
	retw.n
.LVL16:
.L9:
	.loc 1 187 0
	mov.n	a10, a2
	call8	strlen
.LVL17:
	mov.n	a7, a10
.LVL18:
	.loc 1 188 0
	addi	a8, a10, 36
	bgeu	a5, a8, .L10
	.loc 1 190 0
	movi.n	a2, 0x22
.LVL19:
	l32i.n	a3, sp, 20
.LVL20:
	s32i.n	a2, a3, 0
	.loc 1 191 0
	movi.n	a2, -1
	retw.n
.LVL21:
.L10:
	.loc 1 194 0
	addi.n	a4, a4, 3
.LVL22:
	movi.n	a5, -4
.LVL23:
	and	a4, a4, a5
.LVL24:
	.loc 1 195 0
	addi	a5, a4, 32
.LVL25:
	.loc 1 198 0
	addi.n	a8, a4, 8
	s32i.n	a8, sp, 16
	movi.n	a12, 2
	mov.n	a11, a8
	mov.n	a10, a2
	call8	netconn_gethostbyname_addrtype
.LVL26:
	extui	a10, a10, 0, 8
.LVL27:
	.loc 1 199 0
	beqz.n	a10, .L11
	.loc 1 201 0
	movi	a2, 0xd2
.LVL28:
	l32i.n	a3, sp, 20
.LVL29:
	s32i.n	a2, a3, 0
	.loc 1 202 0
	movi.n	a2, -1
	retw.n
.LVL30:
.L11:
	.loc 1 206 0
	mov.n	a12, a7
	mov.n	a11, a2
	mov.n	a10, a5
.LVL31:
	call8	memcpy
.LVL32:
	.loc 1 207 0
	add.n	a7, a5, a7
.LVL33:
	movi.n	a2, 0
.LVL34:
	s8i	a2, a7, 0
	.loc 1 210 0
	l32i.n	a2, sp, 16
	s32i.n	a2, a4, 0
	.loc 1 211 0
	movi.n	a2, 0
	s32i.n	a2, a4, 4
	.loc 1 212 0
	s32i.n	a2, a4, 28
	.loc 1 213 0
	s32i.n	a5, a3, 0
	.loc 1 214 0
	addi	a5, a4, 28
.LVL35:
	s32i.n	a5, a3, 4
	.loc 1 215 0
	movi.n	a5, 2
	s32i.n	a5, a3, 8
	.loc 1 216 0
	movi.n	a5, 0x14
	s32i.n	a5, a3, 12
	.loc 1 217 0
	s32i.n	a4, a3, 16
	.loc 1 220 0
	s32i.n	a3, a6, 0
.LVL36:
	.loc 1 224 0
	retw.n
.LFE33:
	.size	lwip_gethostbyname_r, .-lwip_gethostbyname_r
	.section	.text.lwip_freeaddrinfo,"ax",@progbits
	.align	4
	.global	lwip_freeaddrinfo
	.type	lwip_freeaddrinfo, @function
lwip_freeaddrinfo:
.LFB34:
	.loc 1 235 0
.LVL37:
	entry	sp, 32
.LCFI2:
	mov.n	a10, a2
	.loc 1 238 0
	j	.L14
.L15:
	.loc 1 239 0
	l32i.n	a2, a10, 28
.LVL38:
	.loc 1 240 0
	call8	free
.LVL39:
	.loc 1 241 0
	mov.n	a10, a2
.LVL40:
.L14:
	.loc 1 238 0
	bnez.n	a10, .L15
	.loc 1 243 0
	retw.n
.LFE34:
	.size	lwip_freeaddrinfo, .-lwip_freeaddrinfo
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC10:
	.string	"namelen is too long"
	.align	4
.LC13:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/lwip/api/netdb.c"
	.align	4
.LC15:
	.string	"total_size <= NETDB_ELEM_SIZE: please report this!"
	.section	.text.lwip_getaddrinfo,"ax",@progbits
	.literal_position
	.literal .LC6, 65534
	.literal .LC7, 16777216
	.literal .LC8, 16777343
	.literal .LC9, 65535
	.literal .LC11, .LC10
	.literal .LC12, __func__$6627
	.literal .LC14, .LC13
	.literal .LC16, .LC15
	.literal .LC17, memp_pools
	.align	4
	.global	lwip_getaddrinfo
	.type	lwip_getaddrinfo, @function
lwip_getaddrinfo:
.LFB35:
	.loc 1 269 0
.LVL41:
	entry	sp, 80
.LCFI3:
.LVL42:
	.loc 1 279 0
	beqz.n	a5, .L35
	.loc 1 282 0
	movi.n	a7, 0
	s32i.n	a7, a5, 0
	.loc 1 283 0
	movi.n	a6, 1
	mov.n	a8, a7
	moveqz	a8, a6, a2
	.loc 1 283 0
	movnez	a6, a7, a3
	.loc 1 283 0
	bany	a6, a8, .L36
	.loc 1 287 0
	beq	a4, a7, .L37
	.loc 1 288 0
	l32i.n	a6, a4, 4
.LVL43:
	.loc 1 289 0
	movi.n	a9, 1
	mov.n	a10, a7
	movnez	a10, a9, a6
	.loc 1 291 0
	addi	a8, a6, -2
	movnez	a7, a9, a8
	.loc 1 289 0
	bnone	a7, a10, .L18
	.loc 1 294 0
	bnei	a6, 10, .L38
	j	.L18
.LVL44:
.L37:
	.loc 1 300 0
	movi.n	a6, 0
.L18:
.LVL45:
	.loc 1 303 0
	beqz.n	a3, .L39
	.loc 1 306 0
	mov.n	a10, a3
	call8	atoi
.LVL46:
	mov.n	a3, a10
.LVL47:
	.loc 1 307 0
	addi.n	a7, a10, -1
	l32r	a8, .LC6
	bltu	a8, a7, .L40
	j	.L19
.LVL48:
.L39:
	.loc 1 274 0
	movi.n	a3, 0
.LVL49:
.L19:
	.loc 1 312 0
	beqz.n	a2, .L20
	.loc 1 314 0
	beqz.n	a4, .L21
	.loc 1 314 0 discriminator 1
	l32i.n	a7, a4, 0
	bbci	a7, 2, .L21
	.loc 1 316 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	ipaddr_aton
.LVL50:
	beqz.n	a10, .L41
	.loc 1 320 0
	l8ui	a7, sp, 16
	bnei	a7, 6, .L22
	.loc 1 320 0 is_stmt 0 discriminator 1
	beqi	a6, 2, .L42
.L22:
	.loc 1 320 0 discriminator 3
	beqi	a7, 6, .L23
	.loc 1 321 0 is_stmt 1
	bnei	a6, 10, .L23
	j	.L43
.L21:
.LVL51:
.LBB2:
	.loc 1 329 0
	beqi	a6, 2, .L44
	.loc 1 331 0
	bnei	a6, 10, .L45
.LVL52:
	.loc 1 333 0
	l32i.n	a7, a4, 0
	bbsi	a7, 4, .L46
	.loc 1 332 0
	movi.n	a12, 1
	j	.L24
.LVL53:
.L44:
	.loc 1 330 0
	movi.n	a12, 0
	j	.L24
.L45:
	.loc 1 328 0
	movi.n	a12, 2
	j	.L24
.LVL54:
.L46:
	.loc 1 334 0
	movi.n	a12, 3
.LVL55:
.L24:
	.loc 1 338 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	netconn_gethostbyname_addrtype
.LVL56:
	extui	a10, a10, 0, 8
.LVL57:
	.loc 1 339 0
	bnez.n	a10, .L47
	j	.L23
.LVL58:
.L20:
.LBE2:
	.loc 1 345 0
	beqz.n	a4, .L25
	.loc 1 345 0 discriminator 1
	l32i.n	a7, a4, 0
	bbci	a7, 0, .L25
	.loc 1 346 0
	bnei	a6, 10, .L26
	.loc 1 346 0 is_stmt 0 discriminator 1
	movi.n	a7, 0
	s32i.n	a7, sp, 0
	s32i.n	a7, sp, 4
	s32i.n	a7, sp, 8
	s32i.n	a7, sp, 12
	.loc 1 346 0 is_stmt 1 discriminator 1
	movi.n	a7, 6
	s8i	a7, sp, 16
	j	.L23
.L26:
	.loc 1 346 0 is_stmt 0 discriminator 2
	movi.n	a7, 0
	s32i.n	a7, sp, 0
	.loc 1 346 0 is_stmt 1 discriminator 2
	s8i	a7, sp, 16
	j	.L23
.L25:
	.loc 1 348 0
	bnei	a6, 10, .L27
	.loc 1 348 0 is_stmt 0 discriminator 1
	movi.n	a7, 0
	s32i.n	a7, sp, 0
	s32i.n	a7, sp, 4
	s32i.n	a7, sp, 8
	l32r	a7, .LC7
	s32i.n	a7, sp, 12
	.loc 1 348 0 is_stmt 1 discriminator 1
	movi.n	a7, 6
	s8i	a7, sp, 16
	j	.L23
.L27:
	.loc 1 348 0 is_stmt 0 discriminator 2
	l32r	a7, .LC8
	s32i.n	a7, sp, 0
	.loc 1 348 0 is_stmt 1 discriminator 2
	movi.n	a7, 0
	s8i	a7, sp, 16
.L23:
	.loc 1 353 0
	bnei	a6, 10, .L28
	.loc 1 353 0 is_stmt 0 discriminator 1
	l32i.n	a6, a4, 0
.LVL59:
	bbci	a6, 4, .L28
	.loc 1 354 0 is_stmt 1
	l8ui	a6, sp, 16
	bnez.n	a6, .L28
.LBB3:
	.loc 1 356 0
	l32i.n	a7, sp, 0
.LVL60:
	s32i.n	a6, sp, 0
	s32i.n	a6, sp, 4
	l32r	a10, .LC9
	call8	lwip_htonl
.LVL61:
	s32i.n	a10, sp, 8
	s32i.n	a7, sp, 12
	movi.n	a6, 6
	s8i	a6, sp, 16
.LVL62:
.L28:
.LBE3:
	.loc 1 361 0
	beqz.n	a2, .L48
	.loc 1 362 0
	mov.n	a10, a2
	call8	strlen
.LVL63:
	mov.n	a7, a10
.LVL64:
	.loc 1 363 0
	movi	a6, 0x100
	bltu	a6, a10, .L49
	.loc 1 367 0
	addi	a6, a10, 61
	s32i.n	a6, sp, 32
	movi.n	a6, 0x3c
	l32i.n	a8, sp, 32
	bltu	a6, a8, .L29
	.loc 1 367 0 is_stmt 0 discriminator 1
	l32r	a13, .LC11
	l32r	a12, .LC12
	movi	a11, 0x16f
	l32r	a10, .LC14
	call8	__assert_func
.LVL65:
.L48:
	.loc 1 276 0 is_stmt 1
	movi.n	a7, 0
	.loc 1 360 0
	movi.n	a6, 0x3c
	s32i.n	a6, sp, 32
.LVL66:
.L29:
	.loc 1 371 0
	movi	a6, 0x13d
	l32i.n	a8, sp, 32
	bgeu	a6, a8, .L30
	.loc 1 371 0 is_stmt 0 discriminator 1
	l32r	a13, .LC16
	l32r	a12, .LC12
	movi	a11, 0x174
	l32r	a10, .LC14
	call8	__assert_func
.LVL67:
.L30:
	.loc 1 373 0 is_stmt 1
	l32r	a6, .LC17
	l32i.n	a6, a6, 48
	l16ui	a10, a6, 0
	call8	malloc
.LVL68:
	mov.n	a6, a10
.LVL69:
	.loc 1 374 0
	beqz.n	a10, .L50
	.loc 1 377 0
	l32i.n	a12, sp, 32
	movi.n	a11, 0
	call8	memset
.LVL70:
	.loc 1 378 0
	addi	a8, a6, 32
	s32i.n	a8, sp, 32
.LVL71:
	.loc 1 379 0
	l8ui	a8, sp, 16
.LVL72:
	bnei	a8, 6, .L31
.LVL73:
.LBB4:
	.loc 1 383 0
	l32i.n	a8, sp, 0
	s32i.n	a8, a6, 40
	l32i.n	a8, sp, 4
	s32i.n	a8, a6, 44
	l32i.n	a8, sp, 8
	s32i.n	a8, a6, 48
	l32i.n	a8, sp, 12
	s32i.n	a8, a6, 52
	.loc 1 384 0
	movi.n	a8, 0xa
	s8i	a8, a6, 33
	.loc 1 385 0
	movi.n	a8, 0x1c
	s8i	a8, a6, 32
	.loc 1 386 0
	extui	a10, a3, 0, 16
	call8	lwip_htons
.LVL74:
	s16i	a10, a6, 34
	.loc 1 387 0
	movi.n	a3, 0xa
.LVL75:
	s32i.n	a3, a6, 4
.LBE4:
	j	.L32
.LVL76:
.L31:
.LBB5:
	.loc 1 393 0
	l32i.n	a8, sp, 0
	s32i.n	a8, a6, 36
	.loc 1 394 0
	movi.n	a8, 2
	s8i	a8, a6, 33
	.loc 1 395 0
	movi.n	a8, 0x10
	s8i	a8, a6, 32
	.loc 1 396 0
	extui	a10, a3, 0, 16
	call8	lwip_htons
.LVL77:
	s16i	a10, a6, 34
	.loc 1 397 0
	movi.n	a3, 2
.LVL78:
	s32i.n	a3, a6, 4
.LVL79:
.L32:
.LBE5:
	.loc 1 402 0
	beqz.n	a4, .L33
	.loc 1 404 0
	l32i.n	a3, a4, 8
	s32i.n	a3, a6, 8
	.loc 1 405 0
	l32i.n	a3, a4, 12
	s32i.n	a3, a6, 12
.L33:
	.loc 1 407 0
	beqz.n	a2, .L34
	.loc 1 409 0
	addi	a3, a6, 60
	s32i.n	a3, a6, 24
	.loc 1 410 0
	mov.n	a12, a7
	mov.n	a11, a2
	mov.n	a10, a3
	call8	memcpy
.LVL80:
	.loc 1 411 0
	add.n	a7, a3, a7
.LVL81:
	movi.n	a2, 0
.LVL82:
	s8i	a2, a7, 0
.L34:
	.loc 1 413 0
	movi.n	a2, 0x1c
	s32i.n	a2, a6, 16
	.loc 1 414 0
	l32i.n	a2, sp, 32
	s32i.n	a2, a6, 20
	.loc 1 416 0
	s32i.n	a6, a5, 0
	.loc 1 418 0
	movi.n	a2, 0
	retw.n
.LVL83:
.L35:
	.loc 1 280 0
	movi	a2, 0xca
.LVL84:
	retw.n
.LVL85:
.L36:
	.loc 1 284 0
	movi	a2, 0xc8
.LVL86:
	retw.n
.LVL87:
.L38:
	.loc 1 297 0
	movi	a2, 0xcc
.LVL88:
	retw.n
.LVL89:
.L40:
	.loc 1 308 0
	movi	a2, 0xc9
.LVL90:
	retw.n
.LVL91:
.L41:
	.loc 1 317 0
	movi	a2, 0xc8
.LVL92:
	retw.n
.LVL93:
.L42:
	.loc 1 322 0
	movi	a2, 0xc8
.LVL94:
	retw.n
.LVL95:
.L43:
	movi	a2, 0xc8
.LVL96:
	retw.n
.LVL97:
.L47:
.LBB6:
	.loc 1 340 0
	movi	a2, 0xca
.LVL98:
	retw.n
.LVL99:
.L49:
.LBE6:
	.loc 1 365 0
	movi	a2, 0xca
.LVL100:
	retw.n
.LVL101:
.L50:
	.loc 1 375 0
	movi	a2, 0xcb
.LVL102:
	.loc 1 419 0
	retw.n
.LFE35:
	.size	lwip_getaddrinfo, .-lwip_getaddrinfo
	.section	.rodata.__func__$6627,"a",@progbits
	.align	4
	.type	__func__$6627, @object
	.size	__func__$6627, 17
__func__$6627:
	.string	"lwip_getaddrinfo"
	.section	.bss.s_aliases$6585,"aw",@nobits
	.align	4
	.type	s_aliases$6585, @object
	.size	s_aliases$6585, 4
s_aliases$6585:
	.zero	4
	.section	.bss.s_hostent$6584,"aw",@nobits
	.align	4
	.type	s_hostent$6584, @object
	.size	s_hostent$6584, 20
s_hostent$6584:
	.zero	20
	.section	.bss.s_hostname$6588,"aw",@nobits
	.align	4
	.type	s_hostname$6588, @object
	.size	s_hostname$6588, 257
s_hostname$6588:
	.zero	257
	.section	.bss.s_phostent_addr$6587,"aw",@nobits
	.align	4
	.type	s_phostent_addr$6587, @object
	.size	s_phostent_addr$6587, 8
s_phostent_addr$6587:
	.zero	8
	.section	.bss.s_hostent_addr$6586,"aw",@nobits
	.align	4
	.type	s_hostent_addr$6586, @object
	.size	s_hostent_addr$6586, 20
s_hostent_addr$6586:
	.zero	20
	.comm	h_errno,4,4
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
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI0-.LFB32
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI1-.LFB33
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI2-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI3-.LFB35
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE6:
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/port/arch/cc.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/ip4_addr.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/ip6_addr.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/ip_addr.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/inet.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/err.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/sockets.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/netdb.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/priv/memp_priv.h"
	.file 14 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/memp.h"
	.file 15 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/api.h"
	.file 16 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h"
	.file 17 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.file 18 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/def.h"
	.file 19 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xb6f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF145
	.byte	0xc
	.4byte	.LASF146
	.4byte	.LASF147
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF2
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
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x3
	.byte	0x11
	.4byte	0x50
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0x3
	.byte	0x12
	.4byte	0x62
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x3
	.byte	0x15
	.4byte	0x74
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x3
	.byte	0x16
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x3
	.byte	0x1a
	.4byte	0x30
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x5
	.byte	0x4
	.4byte	0xba
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x5
	.byte	0x4
	.4byte	0xc7
	.uleb128 0x6
	.4byte	0xba
	.uleb128 0x7
	.4byte	0xba
	.4byte	0xdc
	.uleb128 0x8
	.4byte	0xa6
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x4
	.byte	0x14
	.4byte	0x45
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x4
	.byte	0x15
	.4byte	0x57
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x4
	.byte	0x20
	.4byte	0x69
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x4
	.byte	0x21
	.4byte	0x7b
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x4
	.byte	0x2d
	.4byte	0x86
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF22
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x5
	.byte	0x2e
	.4byte	0xe7
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0x5
	.byte	0x2f
	.4byte	0xdc
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x5
	.byte	0x30
	.4byte	0xfd
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0x5
	.byte	0x31
	.4byte	0xf2
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0x5
	.byte	0x32
	.4byte	0x108
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0x5
	.byte	0x35
	.4byte	0xad
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x4
	.byte	0x6
	.byte	0x2e
	.4byte	0x175
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x6
	.byte	0x2f
	.4byte	0x146
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF29
	.byte	0x6
	.byte	0x42
	.4byte	0x15c
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x10
	.byte	0x7
	.byte	0x39
	.4byte	0x199
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x7
	.byte	0x3a
	.4byte	0x199
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x146
	.4byte	0x1a9
	.uleb128 0x8
	.4byte	0xa6
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF33
	.byte	0x7
	.byte	0x4b
	.4byte	0x180
	.uleb128 0xb
	.byte	0x10
	.byte	0x8
	.byte	0x39
	.4byte	0x1d3
	.uleb128 0xc
	.string	"ip6"
	.byte	0x8
	.byte	0x3a
	.4byte	0x1a9
	.uleb128 0xc
	.string	"ip4"
	.byte	0x8
	.byte	0x3b
	.4byte	0x175
	.byte	0
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x14
	.byte	0x8
	.byte	0x38
	.4byte	0x1f8
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x8
	.byte	0x3c
	.4byte	0x1b4
	.byte	0
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x8
	.byte	0x3d
	.4byte	0x11a
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.4byte	.LASF37
	.byte	0x8
	.byte	0x3e
	.4byte	0x1d3
	.uleb128 0x2
	.4byte	.LASF38
	.byte	0x9
	.byte	0x37
	.4byte	0x146
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x4
	.byte	0x9
	.byte	0x3a
	.4byte	0x227
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x9
	.byte	0x3b
	.4byte	0x203
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x10
	.byte	0x9
	.byte	0x3f
	.4byte	0x246
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x9
	.byte	0x40
	.4byte	0x199
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x9
	.byte	0x41
	.4byte	0x246
	.byte	0
	.uleb128 0x7
	.4byte	0x11a
	.4byte	0x256
	.uleb128 0x8
	.4byte	0xa6
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x10
	.byte	0x9
	.byte	0x3e
	.4byte	0x26e
	.uleb128 0xe
	.string	"un"
	.byte	0x9
	.byte	0x42
	.4byte	0x227
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF44
	.byte	0xa
	.byte	0x2f
	.4byte	0x125
	.uleb128 0x2
	.4byte	.LASF45
	.byte	0xb
	.byte	0x37
	.4byte	0x11a
	.uleb128 0x2
	.4byte	.LASF46
	.byte	0xb
	.byte	0x3c
	.4byte	0x130
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x10
	.byte	0xb
	.byte	0x41
	.4byte	0x2d8
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0xb
	.byte	0x42
	.4byte	0x11a
	.byte	0
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0xb
	.byte	0x43
	.4byte	0x279
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0xb
	.byte	0x44
	.4byte	0x284
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0xb
	.byte	0x45
	.4byte	0x20e
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0xb
	.byte	0x47
	.4byte	0xcc
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x1c
	.byte	0xb
	.byte	0x4c
	.4byte	0x32d
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0xb
	.byte	0x4d
	.4byte	0x11a
	.byte	0
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0xb
	.byte	0x4e
	.4byte	0x279
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0xb
	.byte	0x4f
	.4byte	0x284
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0xb
	.byte	0x50
	.4byte	0x146
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0xb
	.byte	0x51
	.4byte	0x256
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0xb
	.byte	0x52
	.4byte	0x146
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0x10
	.byte	0xb
	.byte	0x56
	.4byte	0x35e
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0xb
	.byte	0x57
	.4byte	0x11a
	.byte	0
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0xb
	.byte	0x58
	.4byte	0x279
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0xb
	.byte	0x59
	.4byte	0x35e
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.4byte	0xba
	.4byte	0x36e
	.uleb128 0x8
	.4byte	0xa6
	.byte	0xd
	.byte	0
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0x1c
	.byte	0xb
	.byte	0x5c
	.4byte	0x3b7
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0xb
	.byte	0x5d
	.4byte	0x11a
	.byte	0
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0xb
	.byte	0x5e
	.4byte	0x279
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0xb
	.byte	0x5f
	.4byte	0x3b7
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF68
	.byte	0xb
	.byte	0x60
	.4byte	0x3c7
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF69
	.byte	0xb
	.byte	0x62
	.4byte	0x3c7
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.4byte	0xba
	.4byte	0x3c7
	.uleb128 0x8
	.4byte	0xa6
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.4byte	0x146
	.4byte	0x3d7
	.uleb128 0x8
	.4byte	0xa6
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF70
	.byte	0xb
	.byte	0x69
	.4byte	0x146
	.uleb128 0x9
	.4byte	.LASF71
	.byte	0x14
	.byte	0xc
	.byte	0x58
	.4byte	0x42b
	.uleb128 0xa
	.4byte	.LASF72
	.byte	0xc
	.byte	0x59
	.4byte	0xb4
	.byte	0
	.uleb128 0xa
	.4byte	.LASF73
	.byte	0xc
	.byte	0x5a
	.4byte	0x42b
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF74
	.byte	0xc
	.byte	0x5c
	.4byte	0x3e
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF75
	.byte	0xc
	.byte	0x5d
	.4byte	0x3e
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF76
	.byte	0xc
	.byte	0x5e
	.4byte	0x42b
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb4
	.uleb128 0x9
	.4byte	.LASF77
	.byte	0x20
	.byte	0xc
	.byte	0x63
	.4byte	0x49e
	.uleb128 0xa
	.4byte	.LASF78
	.byte	0xc
	.byte	0x64
	.4byte	0x3e
	.byte	0
	.uleb128 0xa
	.4byte	.LASF79
	.byte	0xc
	.byte	0x65
	.4byte	0x3e
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF80
	.byte	0xc
	.byte	0x66
	.4byte	0x3e
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF81
	.byte	0xc
	.byte	0x67
	.4byte	0x3e
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0xc
	.byte	0x68
	.4byte	0x3d7
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF83
	.byte	0xc
	.byte	0x69
	.4byte	0x49e
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF84
	.byte	0xc
	.byte	0x6a
	.4byte	0xb4
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF85
	.byte	0xc
	.byte	0x6b
	.4byte	0x4a4
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x32d
	.uleb128 0x5
	.byte	0x4
	.4byte	0x431
	.uleb128 0xf
	.byte	0x4
	.4byte	0x30
	.byte	0xe
	.byte	0x2d
	.4byte	0x529
	.uleb128 0x10
	.4byte	.LASF86
	.byte	0
	.uleb128 0x10
	.4byte	.LASF87
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF88
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF89
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF90
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF91
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF92
	.byte	0x6
	.uleb128 0x10
	.4byte	.LASF93
	.byte	0x7
	.uleb128 0x10
	.4byte	.LASF94
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF95
	.byte	0x9
	.uleb128 0x10
	.4byte	.LASF96
	.byte	0xa
	.uleb128 0x10
	.4byte	.LASF97
	.byte	0xb
	.uleb128 0x10
	.4byte	.LASF98
	.byte	0xc
	.uleb128 0x10
	.4byte	.LASF99
	.byte	0xd
	.uleb128 0x10
	.4byte	.LASF100
	.byte	0xe
	.uleb128 0x10
	.4byte	.LASF101
	.byte	0xf
	.uleb128 0x10
	.4byte	.LASF102
	.byte	0x10
	.uleb128 0x10
	.4byte	.LASF103
	.byte	0x11
	.uleb128 0x10
	.4byte	.LASF104
	.byte	0x12
	.byte	0
	.uleb128 0x9
	.4byte	.LASF105
	.byte	0x2
	.byte	0xd
	.byte	0x7a
	.4byte	0x542
	.uleb128 0xa
	.4byte	.LASF106
	.byte	0xd
	.byte	0x7c
	.4byte	0x130
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF107
	.byte	0x20
	.byte	0x1
	.byte	0x33
	.4byte	0x573
	.uleb128 0xa
	.4byte	.LASF108
	.byte	0x1
	.byte	0x34
	.4byte	0x573
	.byte	0
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x1
	.byte	0x35
	.4byte	0x1f8
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF109
	.byte	0x1
	.byte	0x36
	.4byte	0xb4
	.byte	0x1c
	.byte	0
	.uleb128 0x7
	.4byte	0x583
	.4byte	0x583
	.uleb128 0x8
	.4byte	0xa6
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1f8
	.uleb128 0x11
	.4byte	.LASF115
	.byte	0x1
	.byte	0x55
	.4byte	0x680
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x680
	.uleb128 0x12
	.4byte	.LASF117
	.byte	0x1
	.byte	0x55
	.4byte	0xc1
	.4byte	.LLST0
	.uleb128 0x13
	.string	"err"
	.byte	0x1
	.byte	0x57
	.4byte	0x26e
	.4byte	.LLST1
	.uleb128 0x14
	.4byte	.LASF32
	.byte	0x1
	.byte	0x58
	.4byte	0x1f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x14
	.4byte	.LASF110
	.byte	0x1
	.byte	0x5b
	.4byte	0x3e2
	.uleb128 0x5
	.byte	0x3
	.4byte	s_hostent$6584
	.uleb128 0x14
	.4byte	.LASF111
	.byte	0x1
	.byte	0x5c
	.4byte	0xb4
	.uleb128 0x5
	.byte	0x3
	.4byte	s_aliases$6585
	.uleb128 0x14
	.4byte	.LASF112
	.byte	0x1
	.byte	0x5d
	.4byte	0x1f8
	.uleb128 0x5
	.byte	0x3
	.4byte	s_hostent_addr$6586
	.uleb128 0x14
	.4byte	.LASF113
	.byte	0x1
	.byte	0x5e
	.4byte	0x573
	.uleb128 0x5
	.byte	0x3
	.4byte	s_phostent_addr$6587
	.uleb128 0x14
	.4byte	.LASF114
	.byte	0x1
	.byte	0x5f
	.4byte	0x686
	.uleb128 0x5
	.byte	0x3
	.4byte	s_hostname$6588
	.uleb128 0x15
	.4byte	.LVL1
	.4byte	0xaf1
	.4byte	0x642
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
	.byte	0x91
	.sleb128 -64
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x15
	.4byte	.LVL6
	.4byte	0xafd
	.4byte	0x662
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL7
	.4byte	0xb06
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3e2
	.uleb128 0x7
	.4byte	0xba
	.4byte	0x697
	.uleb128 0x18
	.4byte	0xa6
	.2byte	0x100
	.byte	0
	.uleb128 0x11
	.4byte	.LASF116
	.byte	0x1
	.byte	0xa0
	.4byte	0x3e
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x79f
	.uleb128 0x12
	.4byte	.LASF117
	.byte	0x1
	.byte	0xa0
	.4byte	0xc1
	.4byte	.LLST2
	.uleb128 0x19
	.string	"ret"
	.byte	0x1
	.byte	0xa0
	.4byte	0x680
	.4byte	.LLST3
	.uleb128 0x19
	.string	"buf"
	.byte	0x1
	.byte	0xa0
	.4byte	0xb4
	.4byte	.LLST4
	.uleb128 0x12
	.4byte	.LASF118
	.byte	0x1
	.byte	0xa1
	.4byte	0x25
	.4byte	.LLST5
	.uleb128 0x1a
	.4byte	.LASF119
	.byte	0x1
	.byte	0xa1
	.4byte	0x79f
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x12
	.4byte	.LASF120
	.byte	0x1
	.byte	0xa1
	.4byte	0x7a5
	.4byte	.LLST6
	.uleb128 0x13
	.string	"err"
	.byte	0x1
	.byte	0xa3
	.4byte	0x26e
	.4byte	.LLST7
	.uleb128 0x1b
	.string	"h"
	.byte	0x1
	.byte	0xa4
	.4byte	0x7ab
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1c
	.4byte	.LASF121
	.byte	0x1
	.byte	0xa5
	.4byte	0xb4
	.4byte	.LLST8
	.uleb128 0x1c
	.4byte	.LASF122
	.byte	0x1
	.byte	0xa6
	.4byte	0x25
	.4byte	.LLST9
	.uleb128 0x14
	.4byte	.LASF123
	.byte	0x1
	.byte	0xa7
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x15
	.4byte	.LVL17
	.4byte	0xb11
	.4byte	0x762
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL26
	.4byte	0xaf1
	.4byte	0x782
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x17
	.4byte	.LVL32
	.4byte	0xafd
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x680
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3e
	.uleb128 0x5
	.byte	0x4
	.4byte	0x542
	.uleb128 0x1d
	.4byte	.LASF148
	.byte	0x1
	.byte	0xea
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7ed
	.uleb128 0x19
	.string	"ai"
	.byte	0x1
	.byte	0xea
	.4byte	0x4a4
	.4byte	.LLST10
	.uleb128 0x1c
	.4byte	.LASF124
	.byte	0x1
	.byte	0xec
	.4byte	0x4a4
	.4byte	.LLST11
	.uleb128 0x1e
	.4byte	.LVL39
	.4byte	0xb1c
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x10b
	.4byte	0x3e
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa7d
	.uleb128 0x20
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x10b
	.4byte	0xc1
	.4byte	.LLST12
	.uleb128 0x20
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x10b
	.4byte	0xc1
	.4byte	.LLST13
	.uleb128 0x21
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x10c
	.4byte	0xa7d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x22
	.string	"res"
	.byte	0x1
	.2byte	0x10c
	.4byte	0xa88
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x23
	.string	"err"
	.byte	0x1
	.2byte	0x10e
	.4byte	0x26e
	.4byte	.LLST14
	.uleb128 0x24
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x10f
	.4byte	0x1f8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.string	"ai"
	.byte	0x1
	.2byte	0x110
	.4byte	0x4a4
	.4byte	.LLST15
	.uleb128 0x23
	.string	"sa"
	.byte	0x1
	.2byte	0x111
	.4byte	0xa8e
	.4byte	.LLST16
	.uleb128 0x25
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x112
	.4byte	0x3e
	.4byte	.LLST17
	.uleb128 0x25
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x113
	.4byte	0x25
	.4byte	.LLST18
	.uleb128 0x25
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x114
	.4byte	0x25
	.4byte	.LLST19
	.uleb128 0x25
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x115
	.4byte	0x3e
	.4byte	.LLST20
	.uleb128 0x26
	.4byte	.LASF149
	.4byte	0xaa4
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6627
	.uleb128 0x27
	.4byte	.Ldebug_ranges0+0
	.4byte	0x901
	.uleb128 0x25
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x148
	.4byte	0x11a
	.4byte	.LLST21
	.uleb128 0x17
	.4byte	.LVL56
	.4byte	0xaf1
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x930
	.uleb128 0x23
	.string	"tmp"
	.byte	0x1
	.2byte	0x164
	.4byte	0x146
	.4byte	.LLST22
	.uleb128 0x17
	.4byte	.LVL61
	.4byte	0xb27
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0xffff
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x962
	.uleb128 0x23
	.string	"sa6"
	.byte	0x1
	.2byte	0x17d
	.4byte	0xaa9
	.4byte	.LLST23
	.uleb128 0x17
	.4byte	.LVL74
	.4byte	0xb32
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.4byte	0x994
	.uleb128 0x23
	.string	"sa4"
	.byte	0x1
	.2byte	0x187
	.4byte	0xaaf
	.4byte	.LLST24
	.uleb128 0x17
	.4byte	.LVL77
	.4byte	0xb32
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL46
	.4byte	0xb3d
	.4byte	0x9a8
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL50
	.4byte	0xb48
	.4byte	0x9c3
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x15
	.4byte	.LVL63
	.4byte	0xb11
	.4byte	0x9d7
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL65
	.4byte	0xb53
	.4byte	0xa07
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x16f
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6627
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0x15
	.4byte	.LVL67
	.4byte	0xb53
	.4byte	0xa37
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x174
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6627
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL68
	.4byte	0xb5e
	.uleb128 0x15
	.4byte	.LVL70
	.4byte	0xb69
	.4byte	0xa60
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0
	.uleb128 0x17
	.4byte	.LVL80
	.4byte	0xafd
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa83
	.uleb128 0x6
	.4byte	0x431
	.uleb128 0x5
	.byte	0x4
	.4byte	0x4a4
	.uleb128 0x5
	.byte	0x4
	.4byte	0x36e
	.uleb128 0x7
	.4byte	0xba
	.4byte	0xaa4
	.uleb128 0x8
	.4byte	0xa6
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.4byte	0xa94
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2d8
	.uleb128 0x5
	.byte	0x4
	.4byte	0x28f
	.uleb128 0x29
	.4byte	.LASF131
	.byte	0x1
	.byte	0x3b
	.4byte	0x3e
	.uleb128 0x5
	.byte	0x3
	.4byte	h_errno
	.uleb128 0x7
	.4byte	0xad6
	.4byte	0xad6
	.uleb128 0x8
	.4byte	0xa6
	.byte	0x11
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xadc
	.uleb128 0x6
	.4byte	0x529
	.uleb128 0x2a
	.4byte	.LASF132
	.byte	0xe
	.byte	0x41
	.4byte	0xaec
	.uleb128 0x6
	.4byte	0xac6
	.uleb128 0x2b
	.4byte	.LASF133
	.4byte	.LASF133
	.byte	0xf
	.2byte	0x126
	.uleb128 0x2c
	.4byte	.LASF143
	.4byte	.LASF143
	.uleb128 0x2d
	.4byte	.LASF134
	.4byte	.LASF134
	.byte	0x10
	.byte	0x24
	.uleb128 0x2d
	.4byte	.LASF135
	.4byte	.LASF135
	.byte	0x10
	.byte	0x21
	.uleb128 0x2d
	.4byte	.LASF136
	.4byte	.LASF136
	.byte	0x11
	.byte	0x5a
	.uleb128 0x2d
	.4byte	.LASF137
	.4byte	.LASF137
	.byte	0x12
	.byte	0x6e
	.uleb128 0x2d
	.4byte	.LASF138
	.4byte	.LASF138
	.byte	0x12
	.byte	0x6c
	.uleb128 0x2d
	.4byte	.LASF139
	.4byte	.LASF139
	.byte	0x11
	.byte	0x4e
	.uleb128 0x2d
	.4byte	.LASF140
	.4byte	.LASF140
	.byte	0x8
	.byte	0xa3
	.uleb128 0x2d
	.4byte	.LASF141
	.4byte	.LASF141
	.byte	0x13
	.byte	0x29
	.uleb128 0x2d
	.4byte	.LASF142
	.4byte	.LASF142
	.byte	0x11
	.byte	0x65
	.uleb128 0x2c
	.4byte	.LASF144
	.4byte	.LASF144
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x17
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL9
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LFE33
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x3
	.byte	0x74
	.sleb128 -3
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL9
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL23
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL10
	.4byte	.LFE33
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL27
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL25
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL36
	.4byte	.LFE33
	.2byte	0x3
	.byte	0x74
	.sleb128 32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL18
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL39
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL41
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
	.4byte	.LVL87
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL90
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
	.4byte	.LVL95
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL102
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL41
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL49
	.4byte	.LVL83
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL89
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL97
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL69
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL101
	.4byte	.LFE35
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL42
	.4byte	.LVL71
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL72
	.4byte	.LVL83
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL83
	.4byte	.LFE35
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL42
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL76
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL83
	.4byte	.LVL89
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LFE35
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL62
	.4byte	.LVL66
	.2byte	0x3
	.byte	0x8
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL67
	.4byte	.LVL68-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL68-1
	.4byte	.LVL71
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL99
	.4byte	.LVL101
	.2byte	0x3
	.byte	0x8
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL101
	.4byte	.LFE35
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL42
	.4byte	.LVL64
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL83
	.4byte	.LVL99
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LFE35
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL45
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL87
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL56-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL60
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL73
	.4byte	.LVL76
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL76
	.4byte	.LVL79
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
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
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	0
	.4byte	0
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF142:
	.string	"malloc"
.LASF87:
	.string	"MEMP_UDP_PCB"
.LASF108:
	.string	"addr_list"
.LASF97:
	.string	"MEMP_SYS_TIMEOUT"
.LASF78:
	.string	"ai_flags"
.LASF99:
	.string	"MEMP_ND6_QUEUE"
.LASF41:
	.string	"u32_addr"
.LASF31:
	.string	"ip6_addr"
.LASF2:
	.string	"size_t"
.LASF42:
	.string	"u8_addr"
.LASF98:
	.string	"MEMP_NETDB"
.LASF109:
	.string	"aliases"
.LASF77:
	.string	"addrinfo"
.LASF5:
	.string	"__uint8_t"
.LASF64:
	.string	"sockaddr_storage"
.LASF36:
	.string	"type"
.LASF134:
	.string	"strncpy"
.LASF34:
	.string	"_ip_addr"
.LASF12:
	.string	"long long unsigned int"
.LASF38:
	.string	"in_addr_t"
.LASF32:
	.string	"addr"
.LASF90:
	.string	"MEMP_TCP_SEG"
.LASF70:
	.string	"socklen_t"
.LASF3:
	.string	"__int8_t"
.LASF130:
	.string	"total_size"
.LASF95:
	.string	"MEMP_ARP_QUEUE"
.LASF19:
	.string	"int16_t"
.LASF11:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF15:
	.string	"long unsigned int"
.LASF132:
	.string	"memp_pools"
.LASF111:
	.string	"s_aliases"
.LASF100:
	.string	"MEMP_IP6_REASSDATA"
.LASF146:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/lwip/api/netdb.c"
.LASF121:
	.string	"hostname"
.LASF13:
	.string	"long int"
.LASF86:
	.string	"MEMP_RAW_PCB"
.LASF30:
	.string	"ip4_addr"
.LASF143:
	.string	"memcpy"
.LASF71:
	.string	"hostent"
.LASF56:
	.string	"sin6_port"
.LASF33:
	.string	"ip6_addr_t"
.LASF104:
	.string	"MEMP_MAX"
.LASF96:
	.string	"MEMP_IGMP_GROUP"
.LASF10:
	.string	"__uint32_t"
.LASF7:
	.string	"__int16_t"
.LASF52:
	.string	"sin_zero"
.LASF26:
	.string	"s16_t"
.LASF129:
	.string	"port_nr"
.LASF0:
	.string	"unsigned int"
.LASF40:
	.string	"s_addr"
.LASF20:
	.string	"uint16_t"
.LASF123:
	.string	"lh_errno"
.LASF135:
	.string	"strlen"
.LASF80:
	.string	"ai_socktype"
.LASF72:
	.string	"h_name"
.LASF27:
	.string	"u32_t"
.LASF110:
	.string	"s_hostent"
.LASF117:
	.string	"name"
.LASF88:
	.string	"MEMP_TCP_PCB"
.LASF106:
	.string	"size"
.LASF1:
	.string	"short unsigned int"
.LASF51:
	.string	"sin_addr"
.LASF29:
	.string	"ip4_addr_t"
.LASF74:
	.string	"h_addrtype"
.LASF137:
	.string	"lwip_htonl"
.LASF46:
	.string	"in_port_t"
.LASF138:
	.string	"lwip_htons"
.LASF105:
	.string	"memp_desc"
.LASF23:
	.string	"u8_t"
.LASF61:
	.string	"sa_len"
.LASF49:
	.string	"sin_family"
.LASF37:
	.string	"ip_addr_t"
.LASF44:
	.string	"err_t"
.LASF14:
	.string	"sizetype"
.LASF140:
	.string	"ipaddr_aton"
.LASF54:
	.string	"sin6_len"
.LASF55:
	.string	"sin6_family"
.LASF113:
	.string	"s_phostent_addr"
.LASF101:
	.string	"MEMP_MLD6_GROUP"
.LASF73:
	.string	"h_aliases"
.LASF48:
	.string	"sin_len"
.LASF67:
	.string	"s2_data1"
.LASF68:
	.string	"s2_data2"
.LASF69:
	.string	"s2_data3"
.LASF45:
	.string	"sa_family_t"
.LASF82:
	.string	"ai_addrlen"
.LASF50:
	.string	"sin_port"
.LASF62:
	.string	"sa_family"
.LASF75:
	.string	"h_length"
.LASF76:
	.string	"h_addr_list"
.LASF59:
	.string	"sin6_scope_id"
.LASF139:
	.string	"atoi"
.LASF22:
	.string	"_Bool"
.LASF141:
	.string	"__assert_func"
.LASF6:
	.string	"unsigned char"
.LASF145:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF83:
	.string	"ai_addr"
.LASF8:
	.string	"short int"
.LASF81:
	.string	"ai_protocol"
.LASF114:
	.string	"s_hostname"
.LASF85:
	.string	"ai_next"
.LASF149:
	.string	"__func__"
.LASF118:
	.string	"buflen"
.LASF24:
	.string	"s8_t"
.LASF43:
	.string	"in6_addr"
.LASF148:
	.string	"lwip_freeaddrinfo"
.LASF21:
	.string	"uint32_t"
.LASF16:
	.string	"char"
.LASF93:
	.string	"MEMP_TCPIP_MSG_API"
.LASF115:
	.string	"lwip_gethostbyname"
.LASF66:
	.string	"ss_family"
.LASF57:
	.string	"sin6_flowinfo"
.LASF91:
	.string	"MEMP_NETBUF"
.LASF9:
	.string	"__uint16_t"
.LASF89:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF92:
	.string	"MEMP_NETCONN"
.LASF103:
	.string	"MEMP_PBUF_POOL"
.LASF79:
	.string	"ai_family"
.LASF122:
	.string	"namelen"
.LASF131:
	.string	"h_errno"
.LASF136:
	.string	"free"
.LASF17:
	.string	"int8_t"
.LASF127:
	.string	"servname"
.LASF25:
	.string	"u16_t"
.LASF28:
	.string	"mem_ptr_t"
.LASF128:
	.string	"hints"
.LASF144:
	.string	"memset"
.LASF35:
	.string	"u_addr"
.LASF53:
	.string	"sockaddr_in6"
.LASF60:
	.string	"sockaddr"
.LASF47:
	.string	"sockaddr_in"
.LASF18:
	.string	"uint8_t"
.LASF125:
	.string	"lwip_getaddrinfo"
.LASF126:
	.string	"nodename"
.LASF116:
	.string	"lwip_gethostbyname_r"
.LASF112:
	.string	"s_hostent_addr"
.LASF147:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\lwip"
.LASF65:
	.string	"s2_len"
.LASF63:
	.string	"sa_data"
.LASF124:
	.string	"next"
.LASF84:
	.string	"ai_canonname"
.LASF58:
	.string	"sin6_addr"
.LASF120:
	.string	"h_errnop"
.LASF102:
	.string	"MEMP_PBUF"
.LASF119:
	.string	"result"
.LASF133:
	.string	"netconn_gethostbyname_addrtype"
.LASF107:
	.string	"gethostbyname_r_helper"
.LASF94:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF39:
	.string	"in_addr"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
