	.file	"pdu.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"optp"
	.align	4
.LC3:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/coap/libcoap/src/pdu.c"
	.align	4
.LC5:
	.string	"*optp"
	.align	4
.LC7:
	.string	"length"
	.align	4
.LC9:
	.string	"optsize <= *length"
	.section	.text.next_option_safe,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC2, __func__$6528
	.literal .LC4, .LC3
	.literal .LC6, .LC5
	.literal .LC8, .LC7
	.literal .LC10, .LC9
	.align	4
	.type	next_option_safe, @function
next_option_safe:
.LFB51:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/coap/libcoap/src/pdu.c"
	.loc 1 325 0
.LVL0:
	entry	sp, 48
.LCFI0:
	.loc 1 329 0
	bnez.n	a2, .L2
	.loc 1 329 0 is_stmt 0 discriminator 1
	l32r	a13, .LC1
	l32r	a12, .LC2
	movi	a11, 0x149
	l32r	a10, .LC4
	call8	__assert_func
.LVL1:
.L2:
	.loc 1 329 0 discriminator 2
	l32i.n	a10, a2, 0
	bnez.n	a10, .L3
	.loc 1 329 0 discriminator 3
	l32r	a13, .LC6
	l32r	a12, .LC2
	movi	a11, 0x149
	l32r	a10, .LC4
	call8	__assert_func
.LVL2:
.L3:
	.loc 1 330 0 is_stmt 1
	bnez.n	a3, .L4
	.loc 1 330 0 is_stmt 0 discriminator 1
	l32r	a13, .LC8
	l32r	a12, .LC2
	movi	a11, 0x14a
	l32r	a10, .LC4
	call8	__assert_func
.LVL3:
.L4:
	.loc 1 332 0 is_stmt 1
	mov.n	a12, sp
	l32i.n	a11, a3, 0
	call8	coap_opt_parse
.LVL4:
	.loc 1 333 0
	beqz.n	a10, .L5
	.loc 1 334 0
	l32i.n	a8, a3, 0
	bgeu	a8, a10, .L6
	.loc 1 334 0 is_stmt 0 discriminator 1
	l32r	a13, .LC10
	l32r	a12, .LC2
	movi	a11, 0x14e
	l32r	a10, .LC4
.LVL5:
	call8	__assert_func
.LVL6:
.L6:
	.loc 1 336 0 is_stmt 1
	l32i.n	a8, a2, 0
	add.n	a8, a8, a10
	s32i.n	a8, a2, 0
	.loc 1 337 0
	l32i.n	a2, a3, 0
.LVL7:
	sub	a2, a2, a10
	s32i.n	a2, a3, 0
.L5:
	.loc 1 341 0
	mov.n	a2, a10
	retw.n
.LFE51:
	.size	next_option_safe, .-next_option_safe
	.section	.rodata.str1.4
	.align	4
.LC11:
	.string	"pdu"
	.section	.text.coap_pdu_clear,"ax",@progbits
	.literal_position
	.literal .LC12, .LC11
	.literal .LC13, __func__$6459
	.literal .LC14, .LC3
	.align	4
	.global	coap_pdu_clear
	.type	coap_pdu_clear, @function
coap_pdu_clear:
.LFB41:
	.loc 1 29 0
.LVL8:
	entry	sp, 32
.LCFI1:
	.loc 1 30 0
	bnez.n	a2, .L8
	.loc 1 30 0 is_stmt 0 discriminator 1
	l32r	a13, .LC12
	l32r	a12, .LC13
	movi.n	a11, 0x1e
	l32r	a10, .LC14
	call8	__assert_func
.LVL9:
.L8:
	.loc 1 37 0 is_stmt 1
	movi.n	a8, 0
	s16i	a8, a2, 8
	.loc 1 38 0
	movi.n	a11, 0
	s32i.n	a11, a2, 12
	.loc 1 40 0
	mov.n	a12, a3
	l32i.n	a10, a2, 4
	call8	memset
.LVL10:
	.loc 1 41 0
	s32i.n	a3, a2, 0
	.loc 1 42 0
	l32i.n	a3, a2, 4
.LVL11:
	l16ui	a9, a3, 0
	movi	a8, -0xc1
	and	a9, a9, a8
	movi.n	a8, 0x40
	or	a8, a9, a8
	s16i	a8, a3, 0
.LVL12:
	.loc 1 45 0
	movi.n	a3, 4
	s16i	a3, a2, 10
	retw.n
.LFE41:
	.size	coap_pdu_clear, .-coap_pdu_clear
	.section	.rodata.str1.4
	.align	4
.LC15:
	.string	"size <= COAP_MAX_PDU_SIZE"
	.section	.text.coap_pdu_init,"ax",@progbits
	.literal_position
	.literal .LC16, .LC15
	.literal .LC17, __func__$6467
	.literal .LC18, .LC3
	.align	4
	.global	coap_pdu_init
	.type	coap_pdu_init, @function
coap_pdu_init:
.LFB42:
	.loc 1 76 0
.LVL13:
	entry	sp, 32
.LCFI2:
	extui	a6, a2, 0, 8
	extui	a3, a3, 0, 8
	extui	a4, a4, 0, 16
	.loc 1 82 0
	movi	a2, 0x578
.LVL14:
	bgeu	a2, a5, .L10
	.loc 1 82 0 is_stmt 0 discriminator 1
	l32r	a13, .LC16
	l32r	a12, .LC17
	movi.n	a11, 0x52
	l32r	a10, .LC18
	call8	__assert_func
.LVL15:
.L10:
	.loc 1 84 0 is_stmt 1
	addi	a2, a5, -4
	movi	a8, 0x574
	bltu	a8, a2, .L13
	.loc 1 89 0
	movi.n	a11, 0x10
	movi.n	a10, 7
	call8	coap_malloc_type
.LVL16:
	mov.n	a2, a10
.LVL17:
	.loc 1 90 0
	beqz.n	a10, .L14
	.loc 1 91 0
	mov.n	a11, a5
	movi.n	a10, 8
	call8	coap_malloc_type
.LVL18:
	s32i.n	a10, a2, 4
	.loc 1 92 0
	bnez.n	a10, .L12
	.loc 1 93 0
	mov.n	a11, a2
	movi.n	a10, 7
	call8	coap_free_type
.LVL19:
	.loc 1 94 0
	movi.n	a2, 0
.LVL20:
.L12:
	.loc 1 106 0
	beqz.n	a2, .L11
	.loc 1 110 0
	mov.n	a11, a5
	mov.n	a10, a2
	call8	coap_pdu_clear
.LVL21:
	.loc 1 111 0
	l32i.n	a5, a2, 4
.LVL22:
	s16i	a4, a5, 2
	.loc 1 112 0
	l32i.n	a8, a2, 4
	extui	a6, a6, 0, 2
.LVL23:
	slli	a5, a6, 4
	l16ui	a6, a8, 0
	movi	a4, -0x31
.LVL24:
	and	a6, a6, a4
	or	a6, a6, a5
	s16i	a6, a8, 0
	.loc 1 113 0
	l32i.n	a4, a2, 4
	s8i	a3, a4, 1
	retw.n
.LVL25:
.L13:
	.loc 1 85 0
	movi.n	a2, 0
	retw.n
.LVL26:
.L14:
	.loc 1 90 0
	movi.n	a2, 0
.LVL27:
.L11:
	.loc 1 116 0
	retw.n
.LFE42:
	.size	coap_pdu_init, .-coap_pdu_init
	.section	.rodata.str1.4
	.align	4
.LC20:
	.string	"coap_new_pdu: cannot allocate memory for new PDU\n"
	.section	.text.coap_new_pdu,"ax",@progbits
	.literal_position
	.literal .LC19, 65535
	.literal .LC21, .LC20
	.align	4
	.global	coap_new_pdu
	.type	coap_new_pdu, @function
coap_new_pdu:
.LFB43:
	.loc 1 119 0
	entry	sp, 32
.LCFI3:
	.loc 1 123 0
	l32r	a10, .LC19
	call8	lwip_ntohs
.LVL28:
	movi	a13, 0x578
	mov.n	a12, a10
	movi.n	a11, 0
	mov.n	a10, a11
	call8	coap_pdu_init
.LVL29:
	mov.n	a2, a10
.LVL30:
	.loc 1 129 0
	bnez.n	a10, .L17
	.loc 1 130 0
	l32r	a11, .LC21
	movi.n	a10, 2
	call8	coap_log_impl
.LVL31:
.L17:
	.loc 1 133 0
	retw.n
.LFE43:
	.size	coap_new_pdu, .-coap_new_pdu
	.section	.text.coap_delete_pdu,"ax",@progbits
	.align	4
	.global	coap_delete_pdu
	.type	coap_delete_pdu, @function
coap_delete_pdu:
.LFB44:
	.loc 1 136 0
.LVL32:
	entry	sp, 32
.LCFI4:
	.loc 1 138 0
	beqz.n	a2, .L18
	.loc 1 139 0
	l32i.n	a11, a2, 4
	beqz.n	a11, .L20
	.loc 1 140 0
	movi.n	a10, 8
	call8	coap_free_type
.LVL33:
.L20:
	.loc 1 142 0
	mov.n	a11, a2
	movi.n	a10, 7
	call8	coap_free_type
.LVL34:
.L18:
	retw.n
.LFE44:
	.size	coap_delete_pdu, .-coap_delete_pdu
	.section	.text.coap_add_token,"ax",@progbits
	.align	4
	.global	coap_add_token
	.type	coap_add_token, @function
coap_add_token:
.LFB45:
	.loc 1 153 0
.LVL35:
	entry	sp, 32
.LCFI5:
	.loc 1 154 0
	addi.n	a5, a3, 4
.LVL36:
	.loc 1 156 0
	movi.n	a8, 1
	movi.n	a9, 0
	moveqz	a9, a8, a2
	extui	a9, a9, 0, 8
	movi.n	a10, 8
	bltu	a10, a3, .L22
	movi.n	a8, 0
.L22:
	extui	a8, a8, 0, 8
	or	a8, a9, a8
	bnez.n	a8, .L25
	.loc 1 156 0 is_stmt 0 discriminator 1
	l32i.n	a8, a2, 0
	bltu	a8, a5, .L26
	.loc 1 159 0 is_stmt 1
	l32i.n	a10, a2, 4
	extui	a8, a3, 0, 4
	l16ui	a11, a10, 0
	movi.n	a9, -0x10
	and	a9, a11, a9
	or	a8, a9, a8
	s16i	a8, a10, 0
	.loc 1 160 0
	beqz.n	a3, .L24
	.loc 1 161 0
	l32i.n	a10, a2, 4
	mov.n	a12, a3
	mov.n	a11, a4
	addi.n	a10, a10, 4
	call8	memcpy
.LVL37:
.L24:
	.loc 1 162 0
	movi.n	a3, 0
.LVL38:
	s16i	a3, a2, 8
	.loc 1 163 0
	s16i	a5, a2, 10
	.loc 1 164 0
	movi.n	a3, 0
	s32i.n	a3, a2, 12
	.loc 1 166 0
	movi.n	a2, 1
.LVL39:
	retw.n
.LVL40:
.L25:
	.loc 1 157 0
	movi.n	a2, 0
.LVL41:
	retw.n
.LVL42:
.L26:
	movi.n	a2, 0
.LVL43:
	.loc 1 167 0
	retw.n
.LFE45:
	.size	coap_add_token, .-coap_add_token
	.section	.rodata.str1.4
	.align	4
.LC25:
	.string	"coap_add_option: options are not in correct order\n"
	.align	4
.LC27:
	.string	"coap_add_option: cannot add option\n"
	.section	.text.coap_add_option,"ax",@progbits
	.literal_position
	.literal .LC22, .LC11
	.literal .LC23, __func__$6489
	.literal .LC24, .LC3
	.literal .LC26, .LC25
	.literal .LC28, .LC27
	.align	4
	.global	coap_add_option
	.type	coap_add_option, @function
coap_add_option:
.LFB46:
	.loc 1 171 0
.LVL44:
	entry	sp, 32
.LCFI6:
	extui	a3, a3, 0, 16
	.loc 1 175 0
	bnez.n	a2, .L28
	.loc 1 175 0 is_stmt 0 discriminator 1
	l32r	a13, .LC22
	l32r	a12, .LC23
	movi	a11, 0xaf
	l32r	a10, .LC24
	call8	__assert_func
.LVL45:
.L28:
	.loc 1 176 0 is_stmt 1
	movi.n	a8, 0
	s32i.n	a8, a2, 12
	.loc 1 178 0
	l16ui	a12, a2, 8
	bgeu	a3, a12, .L29
	.loc 1 179 0
	l32r	a11, .LC26
	movi.n	a10, 4
	call8	coap_log_impl
.LVL46:
	.loc 1 180 0
	movi.n	a2, 0
.LVL47:
	retw.n
.LVL48:
.L29:
	.loc 1 183 0
	l32i.n	a10, a2, 4
	l16ui	a8, a2, 10
.LVL49:
	.loc 1 186 0
	l32i.n	a11, a2, 0
	sub	a12, a3, a12
	mov.n	a14, a4
	mov.n	a13, a5
	extui	a12, a12, 0, 16
	sub	a11, a11, a8
	add.n	a10, a10, a8
.LVL50:
	call8	coap_opt_encode
.LVL51:
	.loc 1 189 0
	bnez.n	a10, .L31
	.loc 1 190 0
	l32r	a11, .LC28
	movi.n	a10, 4
.LVL52:
	call8	coap_log_impl
.LVL53:
	.loc 1 192 0
	movi.n	a2, 0
.LVL54:
	retw.n
.LVL55:
.L31:
	.loc 1 194 0
	s16i	a3, a2, 8
	.loc 1 195 0
	l16ui	a3, a2, 10
.LVL56:
	add.n	a3, a10, a3
	s16i	a3, a2, 10
	.loc 1 198 0
	mov.n	a2, a10
.LVL57:
	.loc 1 199 0
	retw.n
.LFE46:
	.size	coap_add_option, .-coap_add_option
	.section	.text.coap_add_option_later,"ax",@progbits
	.literal_position
	.literal .LC29, .LC11
	.literal .LC30, __func__$6497
	.literal .LC31, .LC3
	.literal .LC32, .LC25
	.literal .LC33, .LC27
	.align	4
	.global	coap_add_option_later
	.type	coap_add_option_later, @function
coap_add_option_later:
.LFB47:
	.loc 1 203 0
.LVL58:
	entry	sp, 32
.LCFI7:
	extui	a3, a3, 0, 16
	.loc 1 207 0
	bnez.n	a2, .L33
	.loc 1 207 0 is_stmt 0 discriminator 1
	l32r	a13, .LC29
	l32r	a12, .LC30
	movi	a11, 0xcf
	l32r	a10, .LC31
	call8	__assert_func
.LVL59:
.L33:
	.loc 1 208 0 is_stmt 1
	movi.n	a5, 0
	s32i.n	a5, a2, 12
	.loc 1 210 0
	l16ui	a12, a2, 8
	bgeu	a3, a12, .L34
	.loc 1 211 0
	l32r	a11, .LC32
	movi.n	a10, 4
	call8	coap_log_impl
.LVL60:
	.loc 1 212 0
	mov.n	a2, a5
.LVL61:
	retw.n
.LVL62:
.L34:
	.loc 1 215 0
	l32i.n	a5, a2, 4
	l16ui	a8, a2, 10
	add.n	a5, a5, a8
.LVL63:
	.loc 1 218 0
	l32i.n	a11, a2, 0
	sub	a12, a3, a12
	mov.n	a14, a4
	movi.n	a13, 0
	extui	a12, a12, 0, 16
	sub	a11, a11, a8
	mov.n	a10, a5
	call8	coap_opt_encode
.LVL64:
	.loc 1 221 0
	bnez.n	a10, .L36
	.loc 1 222 0
	l32r	a11, .LC33
	movi.n	a10, 4
.LVL65:
	call8	coap_log_impl
.LVL66:
	.loc 1 224 0
	movi.n	a2, 0
.LVL67:
	retw.n
.LVL68:
.L36:
	.loc 1 226 0
	s16i	a3, a2, 8
	.loc 1 227 0
	l16ui	a3, a2, 10
.LVL69:
	add.n	a3, a10, a3
	s16i	a3, a2, 10
	.loc 1 230 0
	sub	a10, a10, a4
.LVL70:
	add.n	a2, a5, a10
.LVL71:
	.loc 1 231 0
	retw.n
.LFE47:
	.size	coap_add_option_later, .-coap_add_option_later
	.section	.rodata.str1.4
	.align	4
.LC37:
	.string	"pdu->data == NULL"
	.align	4
.LC39:
	.string	"coap_add_data: cannot add: data too large for PDU\n"
	.section	.text.coap_add_data,"ax",@progbits
	.literal_position
	.literal .LC34, .LC11
	.literal .LC35, __func__$6503
	.literal .LC36, .LC3
	.literal .LC38, .LC37
	.literal .LC40, .LC39
	.align	4
	.global	coap_add_data
	.type	coap_add_data, @function
coap_add_data:
.LFB48:
	.loc 1 234 0
.LVL72:
	entry	sp, 32
.LCFI8:
	.loc 1 235 0
	bnez.n	a2, .L38
	.loc 1 235 0 is_stmt 0 discriminator 1
	l32r	a13, .LC34
	l32r	a12, .LC35
	movi	a11, 0xeb
	l32r	a10, .LC36
	call8	__assert_func
.LVL73:
.L38:
	.loc 1 236 0 is_stmt 1
	l32i.n	a8, a2, 12
	.loc 1 236 0
	beqz.n	a8, .L39
	.loc 1 236 0 is_stmt 0 discriminator 1
	l32r	a13, .LC38
	l32r	a12, .LC35
	movi	a11, 0xec
	l32r	a10, .LC36
	call8	__assert_func
.LVL74:
.L39:
	.loc 1 238 0 is_stmt 1
	beqz.n	a3, .L42
	.loc 1 241 0
	l16ui	a9, a2, 10
	add.n	a8, a3, a9
	addi.n	a8, a8, 1
	l32i.n	a10, a2, 0
	bgeu	a10, a8, .L41
	.loc 1 242 0
	l32r	a11, .LC40
	movi.n	a10, 4
	call8	coap_log_impl
.LVL75:
	.loc 1 243 0
	l32i.n	a2, a2, 12
.LVL76:
	.loc 1 243 0
	beqz.n	a2, .L43
	.loc 1 243 0 is_stmt 0 discriminator 1
	l32r	a13, .LC38
	l32r	a12, .LC35
	movi	a11, 0xf3
	l32r	a10, .LC36
	call8	__assert_func
.LVL77:
.L41:
	.loc 1 247 0 is_stmt 1
	l32i.n	a8, a2, 4
	add.n	a9, a8, a9
	s32i.n	a9, a2, 12
	.loc 1 248 0
	movi.n	a8, -1
	s8i	a8, a9, 0
	.loc 1 249 0
	l32i.n	a10, a2, 12
	addi.n	a10, a10, 1
	s32i.n	a10, a2, 12
	.loc 1 251 0
	mov.n	a12, a3
	mov.n	a11, a4
	call8	memcpy
.LVL78:
	.loc 1 252 0
	l16ui	a8, a2, 10
	add.n	a3, a3, a8
.LVL79:
	addi.n	a3, a3, 1
	s16i	a3, a2, 10
	.loc 1 253 0
	movi.n	a2, 1
.LVL80:
	retw.n
.LVL81:
.L42:
	.loc 1 239 0
	movi.n	a2, 1
.LVL82:
	retw.n
.L43:
	.loc 1 244 0
	movi.n	a2, 0
	.loc 1 254 0
	retw.n
.LFE48:
	.size	coap_add_data, .-coap_add_data
	.section	.rodata.str1.4
	.align	4
.LC44:
	.string	"len"
	.align	4
.LC46:
	.string	"data"
	.section	.text.coap_get_data,"ax",@progbits
	.literal_position
	.literal .LC41, .LC11
	.literal .LC42, __func__$6509
	.literal .LC43, .LC3
	.literal .LC45, .LC44
	.literal .LC47, .LC46
	.align	4
	.global	coap_get_data
	.type	coap_get_data, @function
coap_get_data:
.LFB49:
	.loc 1 257 0
.LVL83:
	entry	sp, 32
.LCFI9:
	.loc 1 258 0
	bnez.n	a2, .L45
	.loc 1 258 0 is_stmt 0 discriminator 1
	l32r	a13, .LC41
	l32r	a12, .LC42
	movi	a11, 0x102
	l32r	a10, .LC43
	call8	__assert_func
.LVL84:
.L45:
	.loc 1 259 0 is_stmt 1
	bnez.n	a3, .L46
	.loc 1 259 0 is_stmt 0 discriminator 1
	l32r	a13, .LC45
	l32r	a12, .LC42
	movi	a11, 0x103
	l32r	a10, .LC43
	call8	__assert_func
.LVL85:
.L46:
	.loc 1 260 0 is_stmt 1
	bnez.n	a4, .L47
	.loc 1 260 0 is_stmt 0 discriminator 1
	l32r	a13, .LC47
	l32r	a12, .LC42
	movi	a11, 0x104
	l32r	a10, .LC43
	call8	__assert_func
.LVL86:
.L47:
	.loc 1 262 0 is_stmt 1
	l32i.n	a10, a2, 12
	beqz.n	a10, .L48
	.loc 1 263 0
	l32i.n	a8, a2, 4
	l16ui	a9, a2, 10
	add.n	a8, a8, a9
	sub	a8, a8, a10
	s32i.n	a8, a3, 0
	.loc 1 264 0
	l32i.n	a2, a2, 12
.LVL87:
	s32i.n	a2, a4, 0
	j	.L49
.LVL88:
.L48:
	.loc 1 266 0
	movi.n	a2, 0
.LVL89:
	s32i.n	a2, a3, 0
	.loc 1 267 0
	s32i.n	a2, a4, 0
.L49:
	.loc 1 270 0
	l32i.n	a4, a4, 0
.LVL90:
	movi.n	a2, 0
	movi.n	a3, 1
.LVL91:
	movnez	a2, a3, a4
	.loc 1 271 0
	retw.n
.LFE49:
	.size	coap_get_data, .-coap_get_data
	.section	.text.coap_response_phrase,"ax",@progbits
	.literal_position
	.literal .LC48, coap_error
	.align	4
	.global	coap_response_phrase
	.type	coap_response_phrase, @function
coap_response_phrase:
.LFB50:
	.loc 1 309 0
.LVL92:
	entry	sp, 32
.LCFI10:
	extui	a2, a2, 0, 8
.LVL93:
	.loc 1 311 0
	movi.n	a9, 0
	j	.L51
.LVL94:
.L54:
	.loc 1 312 0
	bne	a8, a2, .L52
	.loc 1 313 0
	l32r	a2, .LC48
.LVL95:
	addx8	a9, a9, a2
.LVL96:
	l32i.n	a2, a9, 4
	retw.n
.LVL97:
.L52:
	.loc 1 311 0 discriminator 2
	addi.n	a9, a9, 1
.LVL98:
.L51:
	.loc 1 311 0 is_stmt 0 discriminator 1
	l32r	a8, .LC48
	addx8	a8, a9, a8
	l8ui	a8, a8, 0
	bnez.n	a8, .L54
	.loc 1 315 0 is_stmt 1
	movi.n	a2, 0
	.loc 1 316 0
	retw.n
.LFE50:
	.size	coap_response_phrase, .-coap_response_phrase
	.section	.rodata.str1.4
	.align	4
.LC53:
	.string	"insufficient space to store parsed PDU\n"
	.align	4
.LC55:
	.string	"discarded invalid PDU\n"
	.align	4
.LC57:
	.string	"coap_pdu_parse: empty message is not empty\n"
	.align	4
.LC59:
	.string	"coap_pdu_parse: invalid Token\n"
	.align	4
.LC61:
	.string	"coap_pdu_parse: drop\n"
	.align	4
.LC63:
	.string	"*opt == COAP_PAYLOAD_START"
	.align	4
.LC65:
	.string	"coap_pdu_parse: message ending in payload start marker\n"
	.align	4
.LC67:
	.string	"set data to %p (pdu ends at %p)\n"
	.section	.text.coap_pdu_parse,"ax",@progbits
	.literal_position
	.literal .LC49, .LC46
	.literal .LC50, __func__$6535
	.literal .LC51, .LC3
	.literal .LC52, .LC11
	.literal .LC54, .LC53
	.literal .LC56, .LC55
	.literal .LC58, .LC57
	.literal .LC60, .LC59
	.literal .LC62, .LC61
	.literal .LC64, .LC63
	.literal .LC66, .LC65
	.literal .LC68, .LC67
	.align	4
	.global	coap_pdu_parse
	.type	coap_pdu_parse, @function
coap_pdu_parse:
.LFB52:
	.loc 1 344 0
.LVL99:
	entry	sp, 64
.LCFI11:
	s32i.n	a3, sp, 16
	.loc 1 347 0
	bnez.n	a2, .L56
	.loc 1 347 0 is_stmt 0 discriminator 1
	l32r	a13, .LC49
	l32r	a12, .LC50
	movi	a11, 0x15b
	l32r	a10, .LC51
	call8	__assert_func
.LVL100:
.L56:
	.loc 1 348 0 is_stmt 1
	bnez.n	a4, .L57
	.loc 1 348 0 is_stmt 0 discriminator 1
	l32r	a13, .LC52
	l32r	a12, .LC50
	movi	a11, 0x15c
	l32r	a10, .LC51
	call8	__assert_func
.LVL101:
.L57:
	.loc 1 350 0 is_stmt 1
	l32i.n	a9, a4, 0
	l32i.n	a8, sp, 16
	bgeu	a9, a8, .L58
	.loc 1 351 0
	l32r	a11, .LC54
	movi.n	a10, 7
	call8	coap_log_impl
.LVL102:
	.loc 1 352 0
	movi.n	a2, 0
.LVL103:
	retw.n
.LVL104:
.L58:
	.loc 1 355 0
	bgeui	a8, 4, .L60
	.loc 1 356 0
	l32r	a11, .LC56
	movi.n	a10, 7
	call8	coap_log_impl
.LVL105:
.L60:
	.loc 1 367 0
	l32i.n	a10, a4, 4
	l8ui	a8, a2, 0
	srli	a8, a8, 6
	slli	a9, a8, 6
	l16ui	a11, a10, 0
	movi	a8, -0xc1
	and	a8, a11, a8
	or	a8, a8, a9
	s16i	a8, a10, 0
	.loc 1 368 0
	l32i.n	a10, a4, 4
	l8ui	a8, a2, 0
	extui	a8, a8, 4, 2
	slli	a9, a8, 4
	l16ui	a11, a10, 0
	movi	a8, -0x31
	and	a8, a11, a8
	or	a8, a8, a9
	s16i	a8, a10, 0
	.loc 1 369 0
	l32i.n	a10, a4, 4
	l8ui	a8, a2, 0
	extui	a9, a8, 0, 4
	l16ui	a11, a10, 0
	movi.n	a8, -0x10
	and	a8, a11, a8
	or	a8, a8, a9
	s16i	a8, a10, 0
	.loc 1 370 0
	l32i.n	a8, a4, 4
	l8ui	a9, a2, 1
	s8i	a9, a8, 1
	.loc 1 372 0
	movi.n	a8, 0
	s32i.n	a8, a4, 12
	.loc 1 375 0
	l32i.n	a8, a4, 4
	l8ui	a9, a8, 1
	bnez.n	a9, .L61
	.loc 1 376 0
	l32i.n	a3, sp, 16
.LVL106:
	bnei	a3, 4, .L62
	.loc 1 376 0 is_stmt 0 discriminator 1
	l32i.n	a3, a8, 0
	extui	a3, a3, 0, 4
	beqz.n	a3, .L61
.L62:
	.loc 1 377 0 is_stmt 1
	l32r	a11, .LC58
	movi.n	a10, 7
	call8	coap_log_impl
.LVL107:
	.loc 1 432 0
	movi.n	a2, 0
.LVL108:
	.loc 1 378 0
	retw.n
.LVL109:
.L61:
	.loc 1 382 0
	l32i.n	a9, a8, 0
	extui	a9, a9, 0, 4
	addi.n	a3, a9, 4
	l32i.n	a10, sp, 16
	bltu	a10, a3, .L63
	.loc 1 383 0
	movi.n	a3, 8
	bge	a3, a9, .L64
.L63:
	.loc 1 384 0
	l32r	a11, .LC60
	movi.n	a10, 7
	call8	coap_log_impl
.LVL110:
	.loc 1 432 0
	movi.n	a2, 0
.LVL111:
	.loc 1 385 0
	retw.n
.LVL112:
.L64:
	.loc 1 391 0
	l8ui	a9, a2, 2
	l8ui	a3, a2, 3
	s8i	a9, a8, 2
	s8i	a3, a8, 3
	.loc 1 394 0
	l32i.n	a3, sp, 16
	bltui	a3, 5, .L65
	.loc 1 395 0
	l32i.n	a10, a4, 4
	addi	a12, a3, -4
	addi.n	a11, a2, 4
	addi.n	a10, a10, 4
	call8	memcpy
.LVL113:
.L65:
	.loc 1 397 0
	s16i	a3, a4, 10
	.loc 1 404 0
	l32i.n	a8, a4, 4
	l32i.n	a2, a8, 0
.LVL114:
	extui	a2, a2, 0, 4
	sub	a3, a3, a2
	addi	a3, a3, -4
	s32i.n	a3, sp, 16
	.loc 1 405 0
	l32i.n	a2, a8, 0
	extui	a2, a2, 0, 4
	addi.n	a2, a2, 4
	add.n	a2, a8, a2
	s32i.n	a2, sp, 0
	.loc 1 407 0
	j	.L66
.L68:
	.loc 1 408 0
	addi	a11, sp, 16
.LVL115:
	mov.n	a10, sp
	call8	next_option_safe
.LVL116:
	bnez.n	a10, .L66
	.loc 1 409 0
	l32r	a11, .LC62
	movi.n	a10, 7
	call8	coap_log_impl
.LVL117:
	.loc 1 432 0
	movi.n	a2, 0
	.loc 1 410 0
	retw.n
.L66:
	.loc 1 407 0
	l32i.n	a2, sp, 16
	beqz.n	a2, .L67
	.loc 1 407 0 is_stmt 0 discriminator 1
	l32i.n	a8, sp, 0
	l8ui	a9, a8, 0
	movi	a8, 0xff
	bne	a9, a8, .L68
.L67:
	.loc 1 415 0 is_stmt 1
	beqz.n	a2, .L71
	.loc 1 416 0
	l32i.n	a12, sp, 0
	l8ui	a8, a12, 0
	movi	a3, 0xff
	beq	a8, a3, .L69
	.loc 1 416 0 is_stmt 0 discriminator 1
	l32r	a13, .LC64
	l32r	a12, .LC50
	movi	a11, 0x1a0
	l32r	a10, .LC51
	call8	__assert_func
.LVL118:
.L69:
	.loc 1 417 0 is_stmt 1
	addi.n	a12, a12, 1
	s32i.n	a12, sp, 0
	addi.n	a2, a2, -1
	s32i.n	a2, sp, 16
	.loc 1 419 0
	bnez.n	a2, .L70
	.loc 1 420 0
	l32r	a11, .LC66
	movi.n	a10, 7
	call8	coap_log_impl
.LVL119:
	.loc 1 421 0
	retw.n
.L70:
	.loc 1 424 0
	l32i.n	a13, a4, 4
	l16ui	a2, a4, 10
	add.n	a13, a13, a2
	l32r	a11, .LC68
	movi.n	a10, 7
	call8	coap_log_impl
.LVL120:
	.loc 1 426 0
	l32i.n	a2, sp, 0
	s32i.n	a2, a4, 12
	.loc 1 429 0
	movi.n	a2, 1
	retw.n
.L71:
	movi.n	a2, 1
	.loc 1 433 0
	retw.n
.LFE52:
	.size	coap_pdu_parse, .-coap_pdu_parse
	.section	.rodata.__func__$6528,"a",@progbits
	.align	4
	.type	__func__$6528, @object
	.size	__func__$6528, 17
__func__$6528:
	.string	"next_option_safe"
	.section	.rodata.__func__$6535,"a",@progbits
	.align	4
	.type	__func__$6535, @object
	.size	__func__$6535, 15
__func__$6535:
	.string	"coap_pdu_parse"
	.section	.rodata.__func__$6509,"a",@progbits
	.align	4
	.type	__func__$6509, @object
	.size	__func__$6509, 14
__func__$6509:
	.string	"coap_get_data"
	.section	.rodata.__func__$6503,"a",@progbits
	.align	4
	.type	__func__$6503, @object
	.size	__func__$6503, 14
__func__$6503:
	.string	"coap_add_data"
	.section	.rodata.__func__$6497,"a",@progbits
	.align	4
	.type	__func__$6497, @object
	.size	__func__$6497, 22
__func__$6497:
	.string	"coap_add_option_later"
	.section	.rodata.__func__$6489,"a",@progbits
	.align	4
	.type	__func__$6489, @object
	.size	__func__$6489, 16
__func__$6489:
	.string	"coap_add_option"
	.section	.rodata.__func__$6467,"a",@progbits
	.align	4
	.type	__func__$6467, @object
	.size	__func__$6467, 14
__func__$6467:
	.string	"coap_pdu_init"
	.section	.rodata.__func__$6459,"a",@progbits
	.align	4
	.type	__func__$6459, @object
	.size	__func__$6459, 15
__func__$6459:
	.string	"coap_pdu_clear"
	.global	coap_error
	.section	.rodata.str1.4
	.align	4
.LC69:
	.string	"Created"
	.align	4
.LC70:
	.string	"Deleted"
	.align	4
.LC71:
	.string	"Valid"
	.align	4
.LC72:
	.string	"Changed"
	.align	4
.LC73:
	.string	"Content"
	.align	4
.LC74:
	.string	"Continue"
	.align	4
.LC75:
	.string	"Bad Request"
	.align	4
.LC76:
	.string	"Unauthorized"
	.align	4
.LC77:
	.string	"Bad Option"
	.align	4
.LC78:
	.string	"Forbidden"
	.align	4
.LC79:
	.string	"Not Found"
	.align	4
.LC80:
	.string	"Method Not Allowed"
	.align	4
.LC81:
	.string	"Not Acceptable"
	.align	4
.LC82:
	.string	"Request Entity Incomplete"
	.align	4
.LC83:
	.string	"Precondition Failed"
	.align	4
.LC84:
	.string	"Request Entity Too Large"
	.align	4
.LC85:
	.string	"Unsupported Content-Format"
	.align	4
.LC86:
	.string	"Internal Server Error"
	.align	4
.LC87:
	.string	"Not Implemented"
	.align	4
.LC88:
	.string	"Bad Gateway"
	.align	4
.LC89:
	.string	"Service Unavailable"
	.align	4
.LC90:
	.string	"Gateway Timeout"
	.align	4
.LC91:
	.string	"Proxying Not Supported"
	.section	.data.coap_error,"aw",@progbits
	.align	4
	.type	coap_error, @object
	.size	coap_error, 192
coap_error:
	.byte	65
	.zero	3
	.word	.LC69
	.byte	66
	.zero	3
	.word	.LC70
	.byte	67
	.zero	3
	.word	.LC71
	.byte	68
	.zero	3
	.word	.LC72
	.byte	69
	.zero	3
	.word	.LC73
	.byte	95
	.zero	3
	.word	.LC74
	.byte	-128
	.zero	3
	.word	.LC75
	.byte	-127
	.zero	3
	.word	.LC76
	.byte	-126
	.zero	3
	.word	.LC77
	.byte	-125
	.zero	3
	.word	.LC78
	.byte	-124
	.zero	3
	.word	.LC79
	.byte	-123
	.zero	3
	.word	.LC80
	.byte	-122
	.zero	3
	.word	.LC81
	.byte	-120
	.zero	3
	.word	.LC82
	.byte	-116
	.zero	3
	.word	.LC83
	.byte	-115
	.zero	3
	.word	.LC84
	.byte	-113
	.zero	3
	.word	.LC85
	.byte	-96
	.zero	3
	.word	.LC86
	.byte	-95
	.zero	3
	.word	.LC87
	.byte	-94
	.zero	3
	.word	.LC88
	.byte	-93
	.zero	3
	.word	.LC89
	.byte	-92
	.zero	3
	.word	.LC90
	.byte	-91
	.zero	3
	.word	.LC91
	.byte	0
	.zero	3
	.word	0
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
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.byte	0x4
	.4byte	.LCFI0-.LFB51
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI1-.LFB41
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI2-.LFB42
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI3-.LFB43
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI4-.LFB44
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI5-.LFB45
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI6-.LFB46
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x4
	.4byte	.LCFI7-.LFB47
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x4
	.4byte	.LCFI8-.LFB48
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.byte	0x4
	.4byte	.LCFI9-.LFB49
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.byte	0x4
	.4byte	.LCFI10-.LFB50
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.byte	0x4
	.4byte	.LCFI11-.LFB52
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE22:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/coap/libcoap/include/coap/pdu.h"
	.file 3 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/coap/libcoap/include/coap/option.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/coap/libcoap/include/coap/debug.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/coap/libcoap/include/coap/mem.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/def.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xd7b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0xc
	.4byte	.LASF76
	.4byte	.LASF77
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x3
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
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x5
	.byte	0x4
	.4byte	0x4c
	.uleb128 0x5
	.byte	0x4
	.4byte	0x89
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF11
	.uleb128 0x6
	.4byte	0x89
	.4byte	0xa7
	.uleb128 0x7
	.4byte	0x6f
	.byte	0xd
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x30
	.byte	0x5
	.byte	0x1a
	.4byte	0xe4
	.uleb128 0x9
	.4byte	.LASF12
	.byte	0
	.uleb128 0x9
	.4byte	.LASF13
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.byte	0x2
	.byte	0xb9
	.4byte	0x140
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x2
	.byte	0xba
	.4byte	0x30
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x2
	.byte	0xbb
	.4byte	0x30
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x2
	.byte	0xbc
	.4byte	0x30
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x2
	.byte	0xbd
	.4byte	0x30
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"id"
	.byte	0x2
	.byte	0xbf
	.4byte	0x37
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x2
	.byte	0xc0
	.4byte	0x140
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.4byte	0x4c
	.4byte	0x14f
	.uleb128 0xe
	.4byte	0x6f
	.byte	0
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0x2
	.byte	0xc1
	.4byte	0xe4
	.uleb128 0xa
	.byte	0x10
	.byte	0x2
	.byte	0xe3
	.4byte	0x19f
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x2
	.byte	0xe4
	.4byte	0x25
	.byte	0
	.uleb128 0xc
	.string	"hdr"
	.byte	0x2
	.byte	0xe5
	.4byte	0x19f
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x2
	.byte	0xe9
	.4byte	0x37
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x2
	.byte	0xea
	.4byte	0x37
	.byte	0xa
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x2
	.byte	0xeb
	.4byte	0x7d
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x14f
	.uleb128 0x2
	.4byte	.LASF31
	.byte	0x2
	.byte	0xf7
	.4byte	0x15a
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0x4
	.byte	0x19
	.4byte	0x4c
	.uleb128 0xa
	.byte	0xc
	.byte	0x4
	.byte	0x1d
	.4byte	0x1e8
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x4
	.byte	0x1e
	.4byte	0x37
	.byte	0
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x4
	.byte	0x1f
	.4byte	0x25
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x4
	.byte	0x20
	.4byte	0x7d
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF35
	.byte	0x4
	.byte	0x21
	.4byte	0x1bb
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1b0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x30
	.byte	0x6
	.byte	0x1d
	.4byte	0x248
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0xa
	.byte	0
	.uleb128 0xf
	.byte	0x8
	.byte	0x1
	.2byte	0x112
	.4byte	0x26c
	.uleb128 0x10
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x113
	.4byte	0x4c
	.byte	0
	.uleb128 0x10
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x114
	.4byte	0x83
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x115
	.4byte	0x248
	.uleb128 0x12
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x145
	.4byte	0x25
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3af
	.uleb128 0x13
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x145
	.4byte	0x3af
	.4byte	.LLST0
	.uleb128 0x14
	.4byte	.LASF29
	.byte	0x1
	.2byte	0x145
	.4byte	0x3b5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x15
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x146
	.4byte	0x1e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x147
	.4byte	0x25
	.4byte	.LLST1
	.uleb128 0x17
	.4byte	.LASF53
	.4byte	0x3cb
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6528
	.uleb128 0x18
	.4byte	.LVL1
	.4byte	0xd1e
	.4byte	0x30e
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x149
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6528
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL2
	.4byte	0xd1e
	.4byte	0x33e
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x149
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6528
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x18
	.4byte	.LVL3
	.4byte	0xd1e
	.4byte	0x36e
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x14a
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6528
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.uleb128 0x18
	.4byte	.LVL4
	.4byte	0xd29
	.4byte	0x382
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL6
	.4byte	0xd1e
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x14e
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6528
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1f3
	.uleb128 0x5
	.byte	0x4
	.4byte	0x25
	.uleb128 0x6
	.4byte	0x89
	.4byte	0x3cb
	.uleb128 0x7
	.4byte	0x6f
	.byte	0x10
	.byte	0
	.uleb128 0x1b
	.4byte	0x3bb
	.uleb128 0x1c
	.4byte	.LASF56
	.byte	0x1
	.byte	0x1d
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x454
	.uleb128 0x1d
	.string	"pdu"
	.byte	0x1
	.byte	0x1d
	.4byte	0x454
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1e
	.4byte	.LASF52
	.byte	0x1
	.byte	0x1d
	.4byte	0x25
	.4byte	.LLST2
	.uleb128 0x17
	.4byte	.LASF53
	.4byte	0x46a
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6459
	.uleb128 0x18
	.4byte	.LVL9
	.4byte	0xd1e
	.4byte	0x43e
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x4e
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6459
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL10
	.4byte	0xd34
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1a5
	.uleb128 0x6
	.4byte	0x89
	.4byte	0x46a
	.uleb128 0x7
	.4byte	0x6f
	.byte	0xe
	.byte	0
	.uleb128 0x1b
	.4byte	0x45a
	.uleb128 0x1f
	.4byte	.LASF54
	.byte	0x1
	.byte	0x4b
	.4byte	0x454
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x56f
	.uleb128 0x1e
	.4byte	.LASF21
	.byte	0x1
	.byte	0x4b
	.4byte	0x4c
	.4byte	.LLST3
	.uleb128 0x20
	.4byte	.LASF23
	.byte	0x1
	.byte	0x4b
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.string	"id"
	.byte	0x1
	.byte	0x4c
	.4byte	0x37
	.4byte	.LLST4
	.uleb128 0x1e
	.4byte	.LASF52
	.byte	0x1
	.byte	0x4c
	.4byte	0x25
	.4byte	.LLST5
	.uleb128 0x22
	.string	"pdu"
	.byte	0x1
	.byte	0x4d
	.4byte	0x454
	.4byte	.LLST6
	.uleb128 0x17
	.4byte	.LASF53
	.4byte	0x56f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6467
	.uleb128 0x18
	.4byte	.LVL15
	.4byte	0xd1e
	.4byte	0x50e
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x52
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6467
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.uleb128 0x18
	.4byte	.LVL16
	.4byte	0xd3d
	.4byte	0x526
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x18
	.4byte	.LVL18
	.4byte	0xd3d
	.4byte	0x53f
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL19
	.4byte	0xd48
	.4byte	0x558
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL21
	.4byte	0x3d0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x97
	.uleb128 0x1f
	.4byte	.LASF55
	.byte	0x1
	.byte	0x77
	.4byte	0x454
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5e7
	.uleb128 0x23
	.string	"pdu"
	.byte	0x1
	.byte	0x78
	.4byte	0x454
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x18
	.4byte	.LVL28
	.4byte	0xd53
	.4byte	0x5af
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0xffff
	.byte	0
	.uleb128 0x18
	.4byte	.LVL29
	.4byte	0x46f
	.4byte	0x5ce
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0xa
	.2byte	0x578
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL31
	.4byte	0xd5e
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF57
	.byte	0x1
	.byte	0x88
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x632
	.uleb128 0x1d
	.string	"pdu"
	.byte	0x1
	.byte	0x88
	.4byte	0x454
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x18
	.4byte	.LVL33
	.4byte	0xd48
	.4byte	0x61c
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL34
	.4byte	0xd48
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF58
	.byte	0x1
	.byte	0x99
	.4byte	0x3e
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x69a
	.uleb128 0x21
	.string	"pdu"
	.byte	0x1
	.byte	0x99
	.4byte	0x454
	.4byte	.LLST7
	.uleb128 0x21
	.string	"len"
	.byte	0x1
	.byte	0x99
	.4byte	0x25
	.4byte	.LLST8
	.uleb128 0x20
	.4byte	.LASF30
	.byte	0x1
	.byte	0x99
	.4byte	0x69a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x24
	.4byte	.LASF59
	.byte	0x1
	.byte	0x9a
	.4byte	0x6a5
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1a
	.4byte	.LVL37
	.4byte	0xd69
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x6a0
	.uleb128 0x1b
	.4byte	0x4c
	.uleb128 0x1b
	.4byte	0x25
	.uleb128 0x1f
	.4byte	.LASF60
	.byte	0x1
	.byte	0xab
	.4byte	0x25
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7a6
	.uleb128 0x21
	.string	"pdu"
	.byte	0x1
	.byte	0xab
	.4byte	0x454
	.4byte	.LLST9
	.uleb128 0x1e
	.4byte	.LASF21
	.byte	0x1
	.byte	0xab
	.4byte	0x37
	.4byte	.LLST10
	.uleb128 0x1d
	.string	"len"
	.byte	0x1
	.byte	0xab
	.4byte	0x30
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x20
	.4byte	.LASF30
	.byte	0x1
	.byte	0xab
	.4byte	0x69a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x25
	.4byte	.LASF51
	.byte	0x1
	.byte	0xac
	.4byte	0x25
	.4byte	.LLST11
	.uleb128 0x22
	.string	"opt"
	.byte	0x1
	.byte	0xad
	.4byte	0x1f3
	.4byte	.LLST12
	.uleb128 0x17
	.4byte	.LASF53
	.4byte	0x7b6
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6489
	.uleb128 0x18
	.4byte	.LVL45
	.4byte	0xd1e
	.4byte	0x757
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xaf
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6489
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.uleb128 0x18
	.4byte	.LVL46
	.4byte	0xd5e
	.4byte	0x773
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.byte	0
	.uleb128 0x18
	.4byte	.LVL51
	.4byte	0xd72
	.4byte	0x78d
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL53
	.4byte	0xd5e
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC27
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x89
	.4byte	0x7b6
	.uleb128 0x7
	.4byte	0x6f
	.byte	0xf
	.byte	0
	.uleb128 0x1b
	.4byte	0x7a6
	.uleb128 0x1f
	.4byte	.LASF61
	.byte	0x1
	.byte	0xcb
	.4byte	0x7d
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8ad
	.uleb128 0x21
	.string	"pdu"
	.byte	0x1
	.byte	0xcb
	.4byte	0x454
	.4byte	.LLST13
	.uleb128 0x1e
	.4byte	.LASF21
	.byte	0x1
	.byte	0xcb
	.4byte	0x37
	.4byte	.LLST14
	.uleb128 0x1d
	.string	"len"
	.byte	0x1
	.byte	0xcb
	.4byte	0x30
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x25
	.4byte	.LASF51
	.byte	0x1
	.byte	0xcc
	.4byte	0x25
	.4byte	.LLST15
	.uleb128 0x23
	.string	"opt"
	.byte	0x1
	.byte	0xcd
	.4byte	0x1f3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x17
	.4byte	.LASF53
	.4byte	0x8bd
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6497
	.uleb128 0x18
	.4byte	.LVL59
	.4byte	0xd1e
	.4byte	0x859
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xcf
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6497
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.uleb128 0x18
	.4byte	.LVL60
	.4byte	0xd5e
	.4byte	0x875
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.byte	0
	.uleb128 0x18
	.4byte	.LVL64
	.4byte	0xd72
	.4byte	0x894
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL66
	.4byte	0xd5e
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC27
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x89
	.4byte	0x8bd
	.uleb128 0x7
	.4byte	0x6f
	.byte	0x15
	.byte	0
	.uleb128 0x1b
	.4byte	0x8ad
	.uleb128 0x1f
	.4byte	.LASF62
	.byte	0x1
	.byte	0xea
	.4byte	0x3e
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9d5
	.uleb128 0x21
	.string	"pdu"
	.byte	0x1
	.byte	0xea
	.4byte	0x454
	.4byte	.LLST16
	.uleb128 0x21
	.string	"len"
	.byte	0x1
	.byte	0xea
	.4byte	0x30
	.4byte	.LLST17
	.uleb128 0x20
	.4byte	.LASF30
	.byte	0x1
	.byte	0xea
	.4byte	0x69a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x17
	.4byte	.LASF53
	.4byte	0x9d5
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6503
	.uleb128 0x18
	.4byte	.LVL73
	.4byte	0xd1e
	.4byte	0x944
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xeb
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6503
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.uleb128 0x18
	.4byte	.LVL74
	.4byte	0xd1e
	.4byte	0x973
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xec
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6503
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC37
	.byte	0
	.uleb128 0x18
	.4byte	.LVL75
	.4byte	0xd5e
	.4byte	0x98f
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC39
	.byte	0
	.uleb128 0x18
	.4byte	.LVL77
	.4byte	0xd1e
	.4byte	0x9be
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xf3
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6503
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC37
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL78
	.4byte	0xd69
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x97
	.uleb128 0x26
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x101
	.4byte	0x3e
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xac0
	.uleb128 0x27
	.string	"pdu"
	.byte	0x1
	.2byte	0x101
	.4byte	0x454
	.4byte	.LLST18
	.uleb128 0x27
	.string	"len"
	.byte	0x1
	.2byte	0x101
	.4byte	0x3b5
	.4byte	.LLST19
	.uleb128 0x13
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x101
	.4byte	0xac0
	.4byte	.LLST20
	.uleb128 0x17
	.4byte	.LASF53
	.4byte	0xac6
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6509
	.uleb128 0x18
	.4byte	.LVL84
	.4byte	0xd1e
	.4byte	0xa63
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x102
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6509
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.uleb128 0x18
	.4byte	.LVL85
	.4byte	0xd1e
	.4byte	0xa93
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x103
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6509
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC44
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL86
	.4byte	0xd1e
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x104
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6509
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC46
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7d
	.uleb128 0x1b
	.4byte	0x97
	.uleb128 0x26
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x135
	.4byte	0x83
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb04
	.uleb128 0x13
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x135
	.4byte	0x4c
	.4byte	.LLST21
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.2byte	0x136
	.4byte	0x3e
	.4byte	.LLST22
	.byte	0
	.uleb128 0x26
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x158
	.4byte	0x3e
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcf7
	.uleb128 0x13
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x158
	.4byte	0x7d
	.4byte	.LLST23
	.uleb128 0x13
	.4byte	.LASF29
	.byte	0x1
	.2byte	0x158
	.4byte	0x25
	.4byte	.LLST24
	.uleb128 0x29
	.string	"pdu"
	.byte	0x1
	.2byte	0x158
	.4byte	0x454
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2a
	.string	"opt"
	.byte	0x1
	.2byte	0x159
	.4byte	0x1f3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.4byte	.LASF53
	.4byte	0xcf7
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6535
	.uleb128 0x2b
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x1af
	.uleb128 0x18
	.4byte	.LVL100
	.4byte	0xd1e
	.4byte	0xba2
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x15b
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6535
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC46
	.byte	0
	.uleb128 0x18
	.4byte	.LVL101
	.4byte	0xd1e
	.4byte	0xbd2
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x15c
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6535
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.uleb128 0x18
	.4byte	.LVL102
	.4byte	0xd5e
	.4byte	0xbee
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC53
	.byte	0
	.uleb128 0x18
	.4byte	.LVL105
	.4byte	0xd5e
	.4byte	0xc0a
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC55
	.byte	0
	.uleb128 0x18
	.4byte	.LVL107
	.4byte	0xd5e
	.4byte	0xc26
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC57
	.byte	0
	.uleb128 0x18
	.4byte	.LVL110
	.4byte	0xd5e
	.4byte	0xc42
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC59
	.byte	0
	.uleb128 0x18
	.4byte	.LVL113
	.4byte	0xd69
	.4byte	0xc5c
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 -4
	.byte	0
	.uleb128 0x18
	.4byte	.LVL116
	.4byte	0x278
	.4byte	0xc76
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x18
	.4byte	.LVL117
	.4byte	0xd5e
	.4byte	0xc92
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC61
	.byte	0
	.uleb128 0x18
	.4byte	.LVL118
	.4byte	0xd1e
	.4byte	0xcc2
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1a0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6535
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC63
	.byte	0
	.uleb128 0x18
	.4byte	.LVL119
	.4byte	0xd5e
	.4byte	0xcde
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC65
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL120
	.4byte	0xd5e
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC67
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x45a
	.uleb128 0x6
	.4byte	0x26c
	.4byte	0xd0c
	.uleb128 0x7
	.4byte	0x6f
	.byte	0x17
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x119
	.4byte	0xcfc
	.uleb128 0x5
	.byte	0x3
	.4byte	coap_error
	.uleb128 0x2d
	.4byte	.LASF66
	.4byte	.LASF66
	.byte	0x7
	.byte	0x29
	.uleb128 0x2d
	.4byte	.LASF67
	.4byte	.LASF67
	.byte	0x4
	.byte	0x2f
	.uleb128 0x2e
	.4byte	.LASF72
	.4byte	.LASF72
	.uleb128 0x2d
	.4byte	.LASF68
	.4byte	.LASF68
	.byte	0x6
	.byte	0x37
	.uleb128 0x2d
	.4byte	.LASF69
	.4byte	.LASF69
	.byte	0x6
	.byte	0x41
	.uleb128 0x2d
	.4byte	.LASF70
	.4byte	.LASF70
	.byte	0x8
	.byte	0x6d
	.uleb128 0x2d
	.4byte	.LASF71
	.4byte	.LASF71
	.byte	0x5
	.byte	0x37
	.uleb128 0x2e
	.4byte	.LASF73
	.4byte	.LASF73
	.uleb128 0x2f
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0x4
	.2byte	0x15f
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
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
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x17
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
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
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LFE51
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6
	.4byte	.LFE51
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	.LVL12
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL23
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL13
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL24
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL13
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LFE42
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL35
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
	.4byte	.LFE45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL35
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x3
	.byte	0x75
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LFE45
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL44
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL57
	.4byte	.LFE46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL44
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL56
	.4byte	.LFE46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL55
	.4byte	.LFE46
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x6
	.byte	0x7a
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL51-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL58
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL71
	.4byte	.LFE47
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL58
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL69
	.4byte	.LFE47
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL68
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL72
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL77
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
	.4byte	.LFE48
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL72
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL79
	.4byte	.LVL81
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LFE48
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL83
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL89
	.4byte	.LFE49
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL83
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL91
	.4byte	.LFE49
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL83
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL90
	.4byte	.LFE49
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL92
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL95
	.4byte	.LFE50
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL94
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL97
	.4byte	.LFE50
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL99
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL104
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
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL112
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL114
	.4byte	.LFE52
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL99
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL106
	.4byte	.LVL115
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL115
	.4byte	.LVL116-1
	.2byte	0x2
	.byte	0x7b
	.sleb128 0
	.4byte	.LVL116-1
	.4byte	.LFE52
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x74
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB51
	.4byte	.LFE51
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF24:
	.string	"token"
.LASF43:
	.string	"COAP_PDU"
.LASF56:
	.string	"coap_pdu_clear"
.LASF22:
	.string	"version"
.LASF30:
	.string	"data"
.LASF36:
	.string	"COAP_STRING"
.LASF64:
	.string	"coap_response_phrase"
.LASF70:
	.string	"lwip_ntohs"
.LASF76:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/coap/libcoap/src/pdu.c"
.LASF25:
	.string	"size_t"
.LASF54:
	.string	"coap_pdu_init"
.LASF8:
	.string	"sizetype"
.LASF44:
	.string	"COAP_PDU_BUF"
.LASF55:
	.string	"coap_new_pdu"
.LASF20:
	.string	"token_length"
.LASF79:
	.string	"discard"
.LASF29:
	.string	"length"
.LASF73:
	.string	"memcpy"
.LASF18:
	.string	"LOG_INFO"
.LASF4:
	.string	"short int"
.LASF74:
	.string	"coap_opt_encode"
.LASF34:
	.string	"value"
.LASF33:
	.string	"delta"
.LASF57:
	.string	"coap_delete_pdu"
.LASF80:
	.string	"coap_error"
.LASF50:
	.string	"option"
.LASF5:
	.string	"long long int"
.LASF37:
	.string	"COAP_ATTRIBUTE_NAME"
.LASF72:
	.string	"memset"
.LASF7:
	.string	"long int"
.LASF41:
	.string	"COAP_CONTEXT"
.LASF26:
	.string	"coap_hdr_t"
.LASF19:
	.string	"LOG_DEBUG"
.LASF47:
	.string	"phrase"
.LASF15:
	.string	"LOG_ERR"
.LASF3:
	.string	"unsigned char"
.LASF53:
	.string	"__func__"
.LASF60:
	.string	"coap_add_option"
.LASF62:
	.string	"coap_add_data"
.LASF2:
	.string	"signed char"
.LASF6:
	.string	"long long unsigned int"
.LASF52:
	.string	"size"
.LASF21:
	.string	"type"
.LASF67:
	.string	"coap_opt_parse"
.LASF0:
	.string	"unsigned int"
.LASF69:
	.string	"coap_free_type"
.LASF23:
	.string	"code"
.LASF46:
	.string	"COAP_RESOURCEATTR"
.LASF13:
	.string	"LOG_ALERT"
.LASF1:
	.string	"short unsigned int"
.LASF14:
	.string	"LOG_CRIT"
.LASF16:
	.string	"LOG_WARNING"
.LASF48:
	.string	"error_desc_t"
.LASF63:
	.string	"coap_get_data"
.LASF10:
	.string	"char"
.LASF11:
	.string	"_Bool"
.LASF35:
	.string	"coap_option_t"
.LASF17:
	.string	"LOG_NOTICE"
.LASF12:
	.string	"LOG_EMERG"
.LASF40:
	.string	"COAP_NODE"
.LASF59:
	.string	"HEADERLENGTH"
.LASF38:
	.string	"COAP_ATTRIBUTE_VALUE"
.LASF77:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\coap"
.LASF71:
	.string	"coap_log_impl"
.LASF9:
	.string	"long unsigned int"
.LASF51:
	.string	"optsize"
.LASF32:
	.string	"coap_opt_t"
.LASF42:
	.string	"COAP_ENDPOINT"
.LASF58:
	.string	"coap_add_token"
.LASF27:
	.string	"max_size"
.LASF61:
	.string	"coap_add_option_later"
.LASF49:
	.string	"optp"
.LASF31:
	.string	"coap_pdu_t"
.LASF28:
	.string	"max_delta"
.LASF66:
	.string	"__assert_func"
.LASF75:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF45:
	.string	"COAP_RESOURCE"
.LASF39:
	.string	"COAP_PACKET"
.LASF68:
	.string	"coap_malloc_type"
.LASF65:
	.string	"coap_pdu_parse"
.LASF78:
	.string	"next_option_safe"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
