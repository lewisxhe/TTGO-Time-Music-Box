	.file	"bta_ar.c"
	.text
.Ltext0:
	.section	.text.bta_ar_id,"ax",@progbits
	.align	4
	.type	bta_ar_id, @function
bta_ar_id:
.LFB26:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/bta/ar/bta_ar.c"
	.loc 1 49 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 51 0
	movi.n	a8, 0x12
	beq	a2, a8, .L3
	.loc 1 53 0
	movi.n	a8, 0x13
	beq	a2, a8, .L4
	.loc 1 50 0
	movi.n	a2, 0
.LVL2:
	retw.n
.LVL3:
.L3:
	.loc 1 52 0
	movi.n	a2, 1
.LVL4:
	retw.n
.LVL5:
.L4:
	.loc 1 54 0
	movi.n	a2, 2
.LVL6:
	.loc 1 58 0
	retw.n
.LFE26:
	.size	bta_ar_id, .-bta_ar_id
	.section	.text.bta_ar_avdt_cback,"ax",@progbits
	.literal_position
	.literal .LC0, bta_ar_cb
	.align	4
	.type	bta_ar_avdt_cback, @function
bta_ar_avdt_cback:
.LFB28:
	.loc 1 85 0
.LVL7:
	entry	sp, 32
.LCFI1:
	extui	a2, a2, 0, 8
	extui	a4, a4, 0, 8
	.loc 1 87 0
	l32r	a8, .LC0
	l32i.n	a8, a8, 0
	beqz.n	a8, .L6
	.loc 1 88 0
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a8
.LVL8:
.L6:
	.loc 1 90 0
	l32r	a8, .LC0
	l32i.n	a8, a8, 4
	beqz.n	a8, .L5
	.loc 1 91 0
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a8
.LVL9:
.L5:
	retw.n
.LFE28:
	.size	bta_ar_avdt_cback, .-bta_ar_avdt_cback
	.section	.text.bta_ar_init,"ax",@progbits
	.literal_position
	.literal .LC1, bta_ar_cb
	.align	4
	.global	bta_ar_init
	.type	bta_ar_init, @function
bta_ar_init:
.LFB27:
	.loc 1 70 0
	entry	sp, 32
.LCFI2:
	.loc 1 72 0
	l32r	a8, .LC1
	movi.n	a9, 0
	s32i.n	a9, a8, 0
	s32i.n	a9, a8, 4
	s32i.n	a9, a8, 8
	s32i.n	a9, a8, 12
	s32i.n	a9, a8, 16
	s32i.n	a9, a8, 20
	s32i.n	a9, a8, 24
	retw.n
.LFE27:
	.size	bta_ar_init, .-bta_ar_init
	.section	.text.bta_ar_reg_avdt,"ax",@progbits
	.literal_position
	.literal .LC2, bta_ar_cb
	.literal .LC3, bta_ar_avdt_cback
	.align	4
	.global	bta_ar_reg_avdt
	.type	bta_ar_reg_avdt, @function
bta_ar_reg_avdt:
.LFB29:
	.loc 1 105 0
.LVL10:
	entry	sp, 32
.LCFI3:
	extui	a4, a4, 0, 8
.LVL11:
	.loc 1 108 0
	movi.n	a8, 0x12
	bne	a4, a8, .L10
	.loc 1 109 0
	l32r	a4, .LC2
.LVL12:
	s32i.n	a3, a4, 0
.LVL13:
	.loc 1 110 0
	movi.n	a4, 1
	j	.L11
.LVL14:
.L10:
	.loc 1 111 0
	movi.n	a8, 0x13
	bne	a4, a8, .L14
	.loc 1 112 0
	l32r	a4, .LC2
	s32i.n	a3, a4, 4
.LVL15:
	.loc 1 113 0
	movi.n	a4, 2
	j	.L11
.LVL16:
.L14:
	.loc 1 106 0
	movi.n	a4, 0
.LVL17:
.L11:
	.loc 1 121 0
	beqz.n	a4, .L9
	.loc 1 122 0
	l32r	a3, .LC2
.LVL18:
	l8ui	a3, a3, 8
	bnez.n	a3, .L13
	.loc 1 123 0
	l32r	a11, .LC3
	mov.n	a10, a2
	call8	AVDT_Register
.LVL19:
.L13:
	.loc 1 125 0
	l32r	a9, .LC2
	l8ui	a8, a9, 8
	or	a4, a4, a8
.LVL20:
	s8i	a4, a9, 8
.L9:
	retw.n
.LFE29:
	.size	bta_ar_reg_avdt, .-bta_ar_reg_avdt
	.section	.text.bta_ar_dereg_avdt,"ax",@progbits
	.literal_position
	.literal .LC4, bta_ar_cb
	.align	4
	.global	bta_ar_dereg_avdt
	.type	bta_ar_dereg_avdt, @function
bta_ar_dereg_avdt:
.LFB30:
	.loc 1 139 0
.LVL21:
	entry	sp, 32
.LCFI4:
	extui	a2, a2, 0, 8
.LVL22:
	.loc 1 142 0
	movi.n	a8, 0x12
	bne	a2, a8, .L16
	.loc 1 143 0
	movi.n	a8, 0
	l32r	a2, .LC4
.LVL23:
	s32i.n	a8, a2, 0
.LVL24:
	.loc 1 144 0
	movi.n	a8, 1
	j	.L17
.LVL25:
.L16:
	.loc 1 145 0
	movi.n	a8, 0x13
	bne	a2, a8, .L19
	.loc 1 146 0
	movi.n	a8, 0
	l32r	a2, .LC4
	s32i.n	a8, a2, 4
.LVL26:
	.loc 1 147 0
	movi.n	a8, 2
	j	.L17
.LVL27:
.L19:
	.loc 1 140 0
	movi.n	a8, 0
.LVL28:
.L17:
	.loc 1 149 0
	l32r	a10, .LC4
	movi.n	a2, -1
	xor	a8, a2, a8
.LVL29:
	l8ui	a9, a10, 8
	and	a8, a8, a9
	extui	a8, a8, 0, 8
	s8i	a8, a10, 8
	.loc 1 151 0
	bnez.n	a8, .L15
	.loc 1 152 0
	call8	AVDT_Deregister
.LVL30:
.L15:
	retw.n
.LFE30:
	.size	bta_ar_dereg_avdt, .-bta_ar_dereg_avdt
	.section	.text.bta_ar_avdt_conn,"ax",@progbits
	.literal_position
	.literal .LC5, bta_ar_cb
	.align	4
	.global	bta_ar_avdt_conn
	.type	bta_ar_avdt_conn, @function
bta_ar_avdt_conn:
.LFB31:
	.loc 1 169 0
.LVL31:
	entry	sp, 48
.LCFI5:
	extui	a2, a2, 0, 8
.LVL32:
	.loc 1 173 0
	movi.n	a8, 0x12
	bne	a2, a8, .L21
	.loc 1 174 0
	l32r	a2, .LC5
.LVL33:
	l32i.n	a2, a2, 4
	beqz.n	a2, .L20
	.loc 1 175 0
	mov.n	a13, sp
	movi.n	a12, 0x16
	mov.n	a11, a3
	movi.n	a10, 0
	callx8	a2
.LVL34:
	retw.n
.L21:
	.loc 1 177 0
	movi.n	a8, 0x13
	bne	a2, a8, .L20
	.loc 1 178 0
	l32r	a2, .LC5
	l32i.n	a2, a2, 0
	beqz.n	a2, .L20
	.loc 1 179 0
	mov.n	a13, sp
	movi.n	a12, 0x16
	mov.n	a11, a3
	movi.n	a10, 0
	callx8	a2
.LVL35:
.L20:
	retw.n
.LFE31:
	.size	bta_ar_avdt_conn, .-bta_ar_avdt_conn
	.section	.text.bta_ar_reg_avct,"ax",@progbits
	.literal_position
	.literal .LC6, bta_ar_cb
	.align	4
	.global	bta_ar_reg_avct
	.type	bta_ar_reg_avct, @function
bta_ar_reg_avct:
.LFB32:
	.loc 1 194 0
.LVL36:
	entry	sp, 32
.LCFI6:
	extui	a2, a2, 0, 16
	extui	a3, a3, 0, 16
	extui	a4, a4, 0, 8
	.loc 1 195 0
	extui	a10, a5, 0, 8
	call8	bta_ar_id
.LVL37:
	mov.n	a5, a10
.LVL38:
	.loc 1 197 0
	beqz.n	a10, .L23
	.loc 1 198 0
	l32r	a8, .LC6
	l8ui	a8, a8, 9
	bnez.n	a8, .L25
	.loc 1 199 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	AVCT_Register
.LVL39:
.L25:
	.loc 1 201 0
	l32r	a9, .LC6
	l8ui	a8, a9, 9
	or	a5, a5, a8
.LVL40:
	s8i	a5, a9, 9
.L23:
	retw.n
.LFE32:
	.size	bta_ar_reg_avct, .-bta_ar_reg_avct
	.section	.text.bta_ar_dereg_avct,"ax",@progbits
	.literal_position
	.literal .LC7, bta_ar_cb
	.align	4
	.global	bta_ar_dereg_avct
	.type	bta_ar_dereg_avct, @function
bta_ar_dereg_avct:
.LFB33:
	.loc 1 215 0
.LVL41:
	entry	sp, 32
.LCFI7:
	.loc 1 216 0
	extui	a10, a2, 0, 8
	call8	bta_ar_id
.LVL42:
	.loc 1 218 0
	l32r	a9, .LC7
	movi.n	a8, -1
	xor	a10, a8, a10
.LVL43:
	l8ui	a8, a9, 9
	and	a10, a10, a8
	extui	a10, a10, 0, 8
	s8i	a10, a9, 9
	.loc 1 220 0
	bnez.n	a10, .L26
	.loc 1 221 0
	call8	AVCT_Deregister
.LVL44:
.L26:
	retw.n
.LFE33:
	.size	bta_ar_dereg_avct, .-bta_ar_dereg_avct
	.section	.text.bta_ar_reg_avrc,"ax",@progbits
	.literal_position
	.literal .LC8, 4364
	.literal .LC9, bta_ar_cb
	.literal .LC10, -4366
	.align	4
	.global	bta_ar_reg_avrc
	.type	bta_ar_reg_avrc, @function
bta_ar_reg_avrc:
.LFB34:
	.loc 1 236 0
.LVL45:
	entry	sp, 48
.LCFI8:
	extui	a2, a2, 0, 16
	extui	a5, a5, 0, 16
	.loc 1 237 0
	extui	a10, a6, 0, 8
	call8	bta_ar_id
.LVL46:
	.loc 1 240 0
	movi.n	a8, 1
	movi.n	a11, 0
	mov.n	a9, a11
	moveqz	a9, a8, a10
	movnez	a8, a11, a5
	or	a8, a8, a9
	bne	a8, a11, .L28
	.loc 1 244 0
	l32r	a8, .LC8
	bne	a2, a8, .L30
	.loc 1 245 0
	l32r	a8, .LC9
	l32i.n	a8, a8, 12
	bne	a8, a11, .L28
	.loc 1 246 0
	l32r	a6, .LC9
.LVL47:
	s8i	a10, a6, 24
	.loc 1 247 0
	call8	SDP_CreateRecord
.LVL48:
	s32i.n	a10, a6, 12
	.loc 1 248 0
	mov.n	a14, a10
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	AVRC_AddRecord
.LVL49:
	.loc 1 249 0
	mov.n	a10, a2
	call8	bta_sys_add_uuid
.LVL50:
	retw.n
.LVL51:
.L30:
	.loc 1 253 0
	l32r	a8, .LC10
	add.n	a8, a2, a8
	extui	a8, a8, 0, 16
	bgeui	a8, 2, .L28
	.loc 1 254 0
	l32r	a8, .LC9
	addi.n	a10, a10, 7
.LVL52:
	addx2	a10, a10, a8
.LVL53:
	s16i	a5, a10, 4
	.loc 1 255 0
	l16ui	a9, a8, 20
	l16ui	a5, a8, 22
.LVL54:
	or	a5, a9, a5
.LVL55:
	.loc 1 256 0
	l32i.n	a10, a8, 16
	bnez.n	a10, .L32
	.loc 1 257 0
	call8	SDP_CreateRecord
.LVL56:
	l32r	a6, .LC9
.LVL57:
	s32i.n	a10, a6, 16
	.loc 1 258 0
	mov.n	a14, a10
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	AVRC_AddRecord
.LVL58:
	.loc 1 259 0
	mov.n	a10, a2
	call8	bta_sys_add_uuid
.LVL59:
	retw.n
.LVL60:
.L32:
	.loc 1 264 0
	srli	a2, a5, 8
.LVL61:
	s8i	a2, sp, 0
.LVL62:
	s8i	a5, sp, 1
	.loc 1 265 0
	mov.n	a14, sp
	movi.n	a13, 2
	movi.n	a12, 1
	movi	a11, 0x311
	call8	SDP_AddAttribute
.LVL63:
.L28:
	retw.n
.LFE34:
	.size	bta_ar_reg_avrc, .-bta_ar_reg_avrc
	.section	.text.bta_ar_dereg_avrc,"ax",@progbits
	.literal_position
	.literal .LC11, 4364
	.literal .LC12, bta_ar_cb
	.literal .LC13, 4366
	.align	4
	.global	bta_ar_dereg_avrc
	.type	bta_ar_dereg_avrc, @function
bta_ar_dereg_avrc:
.LFB35:
	.loc 1 281 0
.LVL64:
	entry	sp, 48
.LCFI9:
	extui	a2, a2, 0, 16
	.loc 1 282 0
	extui	a10, a3, 0, 8
	call8	bta_ar_id
.LVL65:
	.loc 1 286 0
	beqz.n	a10, .L34
	.loc 1 290 0
	l32r	a8, .LC11
	bne	a2, a8, .L36
	.loc 1 291 0
	l32r	a8, .LC12
	l32i.n	a8, a8, 12
	beqz.n	a8, .L34
	.loc 1 291 0 is_stmt 0 discriminator 1
	l32r	a9, .LC12
	l8ui	a9, a9, 24
	bne	a10, a9, .L34
	.loc 1 292 0 is_stmt 1
	l32r	a3, .LC12
.LVL66:
	movi.n	a9, 0
	s8i	a9, a3, 24
	.loc 1 293 0
	mov.n	a10, a8
.LVL67:
	call8	SDP_DeleteRecord
.LVL68:
	.loc 1 294 0
	movi.n	a8, 0
	s32i.n	a8, a3, 12
	.loc 1 295 0
	mov.n	a10, a2
	call8	bta_sys_remove_uuid
.LVL69:
	retw.n
.LVL70:
.L36:
	.loc 1 297 0
	l32r	a8, .LC13
	bne	a2, a8, .L34
	.loc 1 298 0
	l32r	a8, .LC12
	l32i.n	a9, a8, 16
	beqz.n	a9, .L34
	.loc 1 299 0
	mov.n	a11, a8
	addi.n	a8, a10, 7
	addx2	a8, a8, a11
	movi.n	a10, 0
.LVL71:
	s16i	a10, a8, 4
	.loc 1 300 0
	l16ui	a10, a11, 20
	l16ui	a8, a11, 22
	or	a8, a10, a8
.LVL72:
	.loc 1 301 0
	bnez.n	a8, .L38
	.loc 1 303 0
	mov.n	a10, a9
	call8	SDP_DeleteRecord
.LVL73:
	.loc 1 304 0
	movi.n	a9, 0
	l32r	a8, .LC12
	s32i.n	a9, a8, 16
	.loc 1 305 0
	mov.n	a10, a2
	call8	bta_sys_remove_uuid
.LVL74:
	retw.n
.LVL75:
.L38:
	.loc 1 309 0
	srli	a2, a8, 8
.LVL76:
	s8i	a2, sp, 0
.LVL77:
	s8i	a8, sp, 1
	.loc 1 310 0
	mov.n	a14, sp
	movi.n	a13, 2
	movi.n	a12, 1
	movi	a11, 0x311
	mov.n	a10, a9
	call8	SDP_AddAttribute
.LVL78:
.L34:
	retw.n
.LFE35:
	.size	bta_ar_dereg_avrc, .-bta_ar_dereg_avrc
	.comm	bta_ar_cb,28,4
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
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI0-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI1-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI2-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI3-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI4-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI5-.LFB31
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI6-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI7-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI8-.LFB34
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI9-.LFB35
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE18:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avdt_api.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/bta/include/bta/bta_av_api.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/bta/include/bta/bta_sys.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/bta/ar/include/bta_ar_int.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avct_api.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/sdp_api.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avrc_api.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xd5d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF187
	.byte	0xc
	.4byte	.LASF188
	.4byte	.LASF189
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
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
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x16
	.4byte	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x1a
	.4byte	0x69
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x21
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x2d
	.4byte	0x5e
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x21
	.4byte	0x7e
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x22
	.4byte	0x89
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x23
	.4byte	0x94
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x29
	.4byte	0xcb
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF17
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0x5
	.4byte	0x9f
	.4byte	0xe9
	.uleb128 0x6
	.4byte	0xd2
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x9f
	.uleb128 0x5
	.4byte	0x9f
	.4byte	0xff
	.uleb128 0x6
	.4byte	0xd2
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF19
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF20
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF21
	.uleb128 0x7
	.byte	0x4
	.4byte	0xff
	.uleb128 0x8
	.byte	0x6
	.byte	0x5
	.byte	0xee
	.4byte	0x15f
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x5
	.byte	0xef
	.4byte	0xaa
	.byte	0
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x5
	.byte	0xf0
	.4byte	0x9f
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x5
	.byte	0xf1
	.4byte	0x9f
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x5
	.byte	0xf2
	.4byte	0x9f
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x5
	.byte	0xf3
	.4byte	0x9f
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x5
	.byte	0xf4
	.4byte	0x11a
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.byte	0xf9
	.4byte	0x1a3
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x5
	.byte	0xfa
	.4byte	0xc0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x5
	.byte	0xfb
	.4byte	0x9f
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x5
	.byte	0xfc
	.4byte	0x9f
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x5
	.byte	0xfd
	.4byte	0x9f
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x5
	.byte	0xfe
	.4byte	0x16a
	.uleb128 0xa
	.byte	0x74
	.byte	0x5
	.2byte	0x101
	.4byte	0x288
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x5
	.2byte	0x102
	.4byte	0x288
	.byte	0
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x5
	.2byte	0x103
	.4byte	0x298
	.byte	0xa
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x5
	.2byte	0x104
	.4byte	0x9f
	.byte	0x64
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x5
	.2byte	0x105
	.4byte	0x9f
	.byte	0x65
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x5
	.2byte	0x106
	.4byte	0xaa
	.byte	0x66
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x5
	.2byte	0x107
	.4byte	0x9f
	.byte	0x68
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x5
	.2byte	0x108
	.4byte	0x9f
	.byte	0x69
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x5
	.2byte	0x109
	.4byte	0x9f
	.byte	0x6a
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x5
	.2byte	0x10a
	.4byte	0x9f
	.byte	0x6b
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x5
	.2byte	0x10c
	.4byte	0x9f
	.byte	0x6c
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x5
	.2byte	0x10d
	.4byte	0x9f
	.byte	0x6d
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x5
	.2byte	0x10e
	.4byte	0x9f
	.byte	0x6e
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x5
	.2byte	0x10f
	.4byte	0x9f
	.byte	0x6f
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x5
	.2byte	0x110
	.4byte	0x9f
	.byte	0x70
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x5
	.2byte	0x111
	.4byte	0x9f
	.byte	0x71
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x5
	.2byte	0x112
	.4byte	0x9f
	.byte	0x72
	.byte	0
	.uleb128 0x5
	.4byte	0x9f
	.4byte	0x298
	.uleb128 0x6
	.4byte	0xd2
	.byte	0x9
	.byte	0
	.uleb128 0x5
	.4byte	0x9f
	.4byte	0x2a8
	.uleb128 0x6
	.4byte	0xd2
	.byte	0x59
	.byte	0
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x5
	.2byte	0x114
	.4byte	0x1ae
	.uleb128 0xa
	.byte	0x6
	.byte	0x5
	.2byte	0x117
	.4byte	0x30c
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x5
	.2byte	0x118
	.4byte	0x9f
	.byte	0
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x5
	.2byte	0x119
	.4byte	0x9f
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x5
	.2byte	0x11a
	.4byte	0x9f
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x5
	.2byte	0x11b
	.4byte	0x9f
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x5
	.2byte	0x11c
	.4byte	0x9f
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x5
	.2byte	0x11d
	.4byte	0x9f
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x5
	.2byte	0x11e
	.4byte	0x2b4
	.uleb128 0xa
	.byte	0xc
	.byte	0x5
	.2byte	0x123
	.4byte	0x33c
	.uleb128 0xd
	.string	"hdr"
	.byte	0x5
	.2byte	0x124
	.4byte	0x30c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x5
	.2byte	0x125
	.4byte	0x33c
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x2a8
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x5
	.2byte	0x126
	.4byte	0x318
	.uleb128 0xa
	.byte	0x10
	.byte	0x5
	.2byte	0x129
	.4byte	0x37f
	.uleb128 0xd
	.string	"hdr"
	.byte	0x5
	.2byte	0x12a
	.4byte	0x30c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x5
	.2byte	0x12b
	.4byte	0x33c
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x5
	.2byte	0x12c
	.4byte	0x9f
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x5
	.2byte	0x12d
	.4byte	0x34e
	.uleb128 0xa
	.byte	0xa
	.byte	0x5
	.2byte	0x130
	.4byte	0x3bc
	.uleb128 0xd
	.string	"hdr"
	.byte	0x5
	.2byte	0x131
	.4byte	0x30c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF60
	.byte	0x5
	.2byte	0x132
	.4byte	0xaa
	.byte	0x6
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0x5
	.2byte	0x133
	.4byte	0xaa
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.4byte	.LASF62
	.byte	0x5
	.2byte	0x134
	.4byte	0x38b
	.uleb128 0xa
	.byte	0x10
	.byte	0x5
	.2byte	0x139
	.4byte	0x3f9
	.uleb128 0xd
	.string	"hdr"
	.byte	0x5
	.2byte	0x13a
	.4byte	0x30c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF63
	.byte	0x5
	.2byte	0x13b
	.4byte	0xe9
	.byte	0x8
	.uleb128 0xd
	.string	"len"
	.byte	0x5
	.2byte	0x13c
	.4byte	0xaa
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.4byte	.LASF64
	.byte	0x5
	.2byte	0x13d
	.4byte	0x3c8
	.uleb128 0xa
	.byte	0x10
	.byte	0x5
	.2byte	0x140
	.4byte	0x436
	.uleb128 0xd
	.string	"hdr"
	.byte	0x5
	.2byte	0x141
	.4byte	0x30c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF65
	.byte	0x5
	.2byte	0x142
	.4byte	0x436
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF66
	.byte	0x5
	.2byte	0x143
	.4byte	0x9f
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x1a3
	.uleb128 0xc
	.4byte	.LASF67
	.byte	0x5
	.2byte	0x144
	.4byte	0x405
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.2byte	0x147
	.4byte	0x46c
	.uleb128 0xd
	.string	"hdr"
	.byte	0x5
	.2byte	0x148
	.4byte	0x30c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF68
	.byte	0x5
	.2byte	0x149
	.4byte	0xaa
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.4byte	.LASF69
	.byte	0x5
	.2byte	0x14a
	.4byte	0x448
	.uleb128 0xe
	.byte	0x10
	.byte	0x5
	.2byte	0x14d
	.4byte	0x54e
	.uleb128 0xf
	.string	"hdr"
	.byte	0x5
	.2byte	0x14e
	.4byte	0x30c
	.uleb128 0x10
	.4byte	.LASF70
	.byte	0x5
	.2byte	0x14f
	.4byte	0x43c
	.uleb128 0x10
	.4byte	.LASF71
	.byte	0x5
	.2byte	0x150
	.4byte	0x342
	.uleb128 0x10
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x151
	.4byte	0x3bc
	.uleb128 0x10
	.4byte	.LASF73
	.byte	0x5
	.2byte	0x152
	.4byte	0x3bc
	.uleb128 0x10
	.4byte	.LASF74
	.byte	0x5
	.2byte	0x153
	.4byte	0x37f
	.uleb128 0x10
	.4byte	.LASF75
	.byte	0x5
	.2byte	0x154
	.4byte	0x30c
	.uleb128 0x10
	.4byte	.LASF76
	.byte	0x5
	.2byte	0x155
	.4byte	0x30c
	.uleb128 0x10
	.4byte	.LASF77
	.byte	0x5
	.2byte	0x156
	.4byte	0x30c
	.uleb128 0x10
	.4byte	.LASF78
	.byte	0x5
	.2byte	0x157
	.4byte	0x342
	.uleb128 0x10
	.4byte	.LASF79
	.byte	0x5
	.2byte	0x158
	.4byte	0x342
	.uleb128 0x10
	.4byte	.LASF80
	.byte	0x5
	.2byte	0x159
	.4byte	0x3f9
	.uleb128 0x10
	.4byte	.LASF81
	.byte	0x5
	.2byte	0x15a
	.4byte	0x3f9
	.uleb128 0x10
	.4byte	.LASF82
	.byte	0x5
	.2byte	0x15b
	.4byte	0x30c
	.uleb128 0x10
	.4byte	.LASF83
	.byte	0x5
	.2byte	0x15c
	.4byte	0x30c
	.uleb128 0x10
	.4byte	.LASF84
	.byte	0x5
	.2byte	0x15d
	.4byte	0x30c
	.uleb128 0x10
	.4byte	.LASF85
	.byte	0x5
	.2byte	0x15e
	.4byte	0x46c
	.byte	0
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x5
	.2byte	0x15f
	.4byte	0x478
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0x5
	.2byte	0x166
	.4byte	0x566
	.uleb128 0x11
	.4byte	0x580
	.uleb128 0x12
	.4byte	0x9f
	.uleb128 0x12
	.4byte	0xe9
	.uleb128 0x12
	.4byte	0x9f
	.uleb128 0x12
	.4byte	0x580
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x54e
	.uleb128 0x7
	.byte	0x4
	.4byte	0x55a
	.uleb128 0x5
	.4byte	0xaa
	.4byte	0x59c
	.uleb128 0x6
	.4byte	0xd2
	.byte	0x1
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.4byte	0x69
	.byte	0x6
	.2byte	0x1c0
	.4byte	0x6c4
	.uleb128 0x14
	.4byte	.LASF88
	.byte	0
	.uleb128 0x14
	.4byte	.LASF89
	.byte	0x1
	.uleb128 0x14
	.4byte	.LASF90
	.byte	0x2
	.uleb128 0x14
	.4byte	.LASF91
	.byte	0x3
	.uleb128 0x14
	.4byte	.LASF92
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF93
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF94
	.byte	0x6
	.uleb128 0x14
	.4byte	.LASF95
	.byte	0x7
	.uleb128 0x14
	.4byte	.LASF96
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF97
	.byte	0x9
	.uleb128 0x14
	.4byte	.LASF98
	.byte	0xa
	.uleb128 0x14
	.4byte	.LASF99
	.byte	0xb
	.uleb128 0x14
	.4byte	.LASF100
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF101
	.byte	0xd
	.uleb128 0x14
	.4byte	.LASF102
	.byte	0xe
	.uleb128 0x14
	.4byte	.LASF103
	.byte	0xf
	.uleb128 0x14
	.4byte	.LASF104
	.byte	0x10
	.uleb128 0x14
	.4byte	.LASF105
	.byte	0x11
	.uleb128 0x14
	.4byte	.LASF106
	.byte	0x12
	.uleb128 0x14
	.4byte	.LASF107
	.byte	0x13
	.uleb128 0x14
	.4byte	.LASF108
	.byte	0x14
	.uleb128 0x14
	.4byte	.LASF109
	.byte	0x15
	.uleb128 0x14
	.4byte	.LASF110
	.byte	0x16
	.uleb128 0x14
	.4byte	.LASF111
	.byte	0x17
	.uleb128 0x14
	.4byte	.LASF112
	.byte	0x18
	.uleb128 0x14
	.4byte	.LASF113
	.byte	0x19
	.uleb128 0x14
	.4byte	.LASF114
	.byte	0x1a
	.uleb128 0x14
	.4byte	.LASF115
	.byte	0x1b
	.uleb128 0x14
	.4byte	.LASF116
	.byte	0x1c
	.uleb128 0x14
	.4byte	.LASF117
	.byte	0x1d
	.uleb128 0x14
	.4byte	.LASF118
	.byte	0x1e
	.uleb128 0x14
	.4byte	.LASF119
	.byte	0x1f
	.uleb128 0x14
	.4byte	.LASF120
	.byte	0x20
	.uleb128 0x14
	.4byte	.LASF121
	.byte	0x21
	.uleb128 0x14
	.4byte	.LASF122
	.byte	0x22
	.uleb128 0x14
	.4byte	.LASF123
	.byte	0x23
	.uleb128 0x14
	.4byte	.LASF124
	.byte	0x24
	.uleb128 0x14
	.4byte	.LASF125
	.byte	0x25
	.uleb128 0x14
	.4byte	.LASF126
	.byte	0x26
	.uleb128 0x14
	.4byte	.LASF127
	.byte	0x27
	.uleb128 0x14
	.4byte	.LASF128
	.byte	0x28
	.uleb128 0x14
	.4byte	.LASF129
	.byte	0x29
	.uleb128 0x14
	.4byte	.LASF130
	.byte	0x2a
	.uleb128 0x14
	.4byte	.LASF131
	.byte	0x2b
	.uleb128 0x14
	.4byte	.LASF132
	.byte	0x2c
	.uleb128 0x14
	.4byte	.LASF133
	.byte	0x2d
	.uleb128 0x14
	.4byte	.LASF134
	.byte	0x2e
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.4byte	0x69
	.byte	0x6
	.2byte	0x6ea
	.4byte	0x6fc
	.uleb128 0x14
	.4byte	.LASF135
	.byte	0
	.uleb128 0x14
	.4byte	.LASF136
	.byte	0x1
	.uleb128 0x14
	.4byte	.LASF137
	.byte	0x2
	.uleb128 0x14
	.4byte	.LASF138
	.byte	0x3
	.uleb128 0x14
	.4byte	.LASF139
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF140
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF141
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF142
	.byte	0x7
	.byte	0x53
	.4byte	0x9f
	.uleb128 0x3
	.4byte	.LASF143
	.byte	0x8
	.byte	0x6e
	.4byte	0x9f
	.uleb128 0x8
	.byte	0x1c
	.byte	0x9
	.byte	0x28
	.4byte	0x787
	.uleb128 0x9
	.4byte	.LASF144
	.byte	0x9
	.byte	0x29
	.4byte	0x586
	.byte	0
	.uleb128 0x9
	.4byte	.LASF145
	.byte	0x9
	.byte	0x2a
	.4byte	0x586
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF146
	.byte	0x9
	.byte	0x2b
	.4byte	0x9f
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF147
	.byte	0x9
	.byte	0x2c
	.4byte	0x9f
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF148
	.byte	0x9
	.byte	0x2d
	.4byte	0xb5
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF149
	.byte	0x9
	.byte	0x2e
	.4byte	0xb5
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF150
	.byte	0x9
	.byte	0x2f
	.4byte	0x58c
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF151
	.byte	0x9
	.byte	0x30
	.4byte	0x9f
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF152
	.byte	0x9
	.byte	0x31
	.4byte	0x6fc
	.byte	0x19
	.byte	0
	.uleb128 0x3
	.4byte	.LASF153
	.byte	0x9
	.byte	0x32
	.4byte	0x712
	.uleb128 0x15
	.4byte	.LASF190
	.byte	0x1
	.byte	0x30
	.4byte	0x9f
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7ca
	.uleb128 0x16
	.4byte	.LASF154
	.byte	0x1
	.byte	0x30
	.4byte	0x707
	.4byte	.LLST0
	.uleb128 0x17
	.4byte	.LASF160
	.byte	0x1
	.byte	0x32
	.4byte	0x9f
	.4byte	.LLST1
	.byte	0
	.uleb128 0x18
	.4byte	.LASF191
	.byte	0x1
	.byte	0x54
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x854
	.uleb128 0x19
	.4byte	.LASF155
	.byte	0x1
	.byte	0x54
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x19
	.4byte	.LASF156
	.byte	0x1
	.byte	0x54
	.4byte	0xe9
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.4byte	.LASF157
	.byte	0x1
	.byte	0x54
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x19
	.4byte	.LASF63
	.byte	0x1
	.byte	0x54
	.4byte	0x580
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1a
	.4byte	.LVL8
	.4byte	0x835
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL9
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF192
	.byte	0x1
	.byte	0x45
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.4byte	.LASF161
	.byte	0x1
	.byte	0x68
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8ce
	.uleb128 0x19
	.4byte	.LASF158
	.byte	0x1
	.byte	0x68
	.4byte	0x8ce
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x16
	.4byte	.LASF159
	.byte	0x1
	.byte	0x68
	.4byte	0x586
	.4byte	.LLST2
	.uleb128 0x16
	.4byte	.LASF154
	.byte	0x1
	.byte	0x68
	.4byte	0x707
	.4byte	.LLST3
	.uleb128 0x17
	.4byte	.LASF160
	.byte	0x1
	.byte	0x6a
	.4byte	0x9f
	.4byte	.LLST4
	.uleb128 0x1f
	.4byte	.LVL19
	.4byte	0xceb
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_ar_avdt_cback
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x15f
	.uleb128 0x1e
	.4byte	.LASF162
	.byte	0x1
	.byte	0x8a
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x911
	.uleb128 0x16
	.4byte	.LASF154
	.byte	0x1
	.byte	0x8a
	.4byte	0x707
	.4byte	.LLST5
	.uleb128 0x17
	.4byte	.LASF160
	.byte	0x1
	.byte	0x8c
	.4byte	0x9f
	.4byte	.LLST6
	.uleb128 0x20
	.4byte	.LVL30
	.4byte	0xcf7
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF163
	.byte	0x1
	.byte	0xa8
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x99f
	.uleb128 0x16
	.4byte	.LASF154
	.byte	0x1
	.byte	0xa8
	.4byte	0x707
	.4byte	.LLST7
	.uleb128 0x19
	.4byte	.LASF156
	.byte	0x1
	.byte	0xa8
	.4byte	0xe9
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.4byte	.LASF157
	.byte	0x1
	.byte	0xaa
	.4byte	0x9f
	.byte	0x16
	.uleb128 0x22
	.4byte	.LASF164
	.byte	0x1
	.byte	0xab
	.4byte	0x54e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.4byte	.LVL34
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.4byte	0x97f
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x46
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x24
	.4byte	.LVL35
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x46
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF165
	.byte	0x1
	.byte	0xc1
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa2d
	.uleb128 0x25
	.string	"mtu"
	.byte	0x1
	.byte	0xc1
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x19
	.4byte	.LASF166
	.byte	0x1
	.byte	0xc1
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.4byte	.LASF26
	.byte	0x1
	.byte	0xc1
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x16
	.4byte	.LASF154
	.byte	0x1
	.byte	0xc1
	.4byte	0x707
	.4byte	.LLST8
	.uleb128 0x17
	.4byte	.LASF160
	.byte	0x1
	.byte	0xc3
	.4byte	0x9f
	.4byte	.LLST9
	.uleb128 0x26
	.4byte	.LVL37
	.4byte	0x792
	.4byte	0xa10
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL39
	.4byte	0xd03
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF167
	.byte	0x1
	.byte	0xd6
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa7f
	.uleb128 0x19
	.4byte	.LASF154
	.byte	0x1
	.byte	0xd6
	.4byte	0x707
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x17
	.4byte	.LASF160
	.byte	0x1
	.byte	0xd8
	.4byte	0x9f
	.4byte	.LLST10
	.uleb128 0x26
	.4byte	.LVL42
	.4byte	0x792
	.4byte	0xa75
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x20
	.4byte	.LVL44
	.4byte	0xd0e
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF168
	.byte	0x1
	.byte	0xea
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbc4
	.uleb128 0x16
	.4byte	.LASF169
	.byte	0x1
	.byte	0xea
	.4byte	0xaa
	.4byte	.LLST11
	.uleb128 0x19
	.4byte	.LASF170
	.byte	0x1
	.byte	0xea
	.4byte	0x114
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.4byte	.LASF171
	.byte	0x1
	.byte	0xea
	.4byte	0x114
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x16
	.4byte	.LASF172
	.byte	0x1
	.byte	0xeb
	.4byte	0xaa
	.4byte	.LLST12
	.uleb128 0x16
	.4byte	.LASF154
	.byte	0x1
	.byte	0xeb
	.4byte	0x707
	.4byte	.LLST13
	.uleb128 0x17
	.4byte	.LASF160
	.byte	0x1
	.byte	0xed
	.4byte	0x9f
	.4byte	.LLST14
	.uleb128 0x22
	.4byte	.LASF173
	.byte	0x1
	.byte	0xee
	.4byte	0xef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.string	"p"
	.byte	0x1
	.byte	0xee
	.4byte	0xe9
	.4byte	.LLST15
	.uleb128 0x26
	.4byte	.LVL46
	.4byte	0x792
	.4byte	0xb1c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x76
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x20
	.4byte	.LVL48
	.4byte	0xd19
	.uleb128 0x26
	.4byte	.LVL49
	.4byte	0xd25
	.4byte	0xb4b
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL50
	.4byte	0xd30
	.4byte	0xb5f
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL56
	.4byte	0xd19
	.uleb128 0x26
	.4byte	.LVL58
	.4byte	0xd25
	.4byte	0xb8e
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL59
	.4byte	0xd30
	.4byte	0xba2
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL63
	.4byte	0xd3c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x311
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x118
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcaa
	.uleb128 0x29
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x118
	.4byte	0xaa
	.4byte	.LLST16
	.uleb128 0x29
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x118
	.4byte	0x707
	.4byte	.LLST17
	.uleb128 0x2a
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x11a
	.4byte	0x9f
	.4byte	.LLST18
	.uleb128 0x2a
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x11b
	.4byte	0xaa
	.4byte	.LLST19
	.uleb128 0x2b
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x11c
	.4byte	0xef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.string	"p"
	.byte	0x1
	.2byte	0x11c
	.4byte	0xe9
	.4byte	.LLST20
	.uleb128 0x26
	.4byte	.LVL65
	.4byte	0x792
	.4byte	0xc4e
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x20
	.4byte	.LVL68
	.4byte	0xd48
	.uleb128 0x26
	.4byte	.LVL69
	.4byte	0xd54
	.4byte	0xc6b
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL73
	.4byte	0xd48
	.uleb128 0x26
	.4byte	.LVL74
	.4byte	0xd54
	.4byte	0xc88
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL78
	.4byte	0xd3c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x311
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF175
	.byte	0x4
	.2byte	0x2cc
	.4byte	0xcbd
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x2e
	.4byte	0xd9
	.uleb128 0x2d
	.4byte	.LASF176
	.byte	0x4
	.2byte	0x2cd
	.4byte	0xcd5
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	0xd9
	.uleb128 0x2f
	.4byte	.LASF193
	.byte	0x1
	.byte	0x22
	.4byte	0x787
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_ar_cb
	.uleb128 0x30
	.4byte	.LASF177
	.4byte	.LASF177
	.byte	0x5
	.2byte	0x1b8
	.uleb128 0x30
	.4byte	.LASF178
	.4byte	.LASF178
	.byte	0x5
	.2byte	0x1c7
	.uleb128 0x31
	.4byte	.LASF179
	.4byte	.LASF179
	.byte	0xa
	.byte	0x8e
	.uleb128 0x31
	.4byte	.LASF180
	.4byte	.LASF180
	.byte	0xa
	.byte	0x9e
	.uleb128 0x30
	.4byte	.LASF181
	.4byte	.LASF181
	.byte	0xb
	.2byte	0x1a2
	.uleb128 0x31
	.4byte	.LASF182
	.4byte	.LASF182
	.byte	0xc
	.byte	0xcc
	.uleb128 0x30
	.4byte	.LASF183
	.4byte	.LASF183
	.byte	0x8
	.2byte	0x109
	.uleb128 0x30
	.4byte	.LASF184
	.4byte	.LASF184
	.byte	0xb
	.2byte	0x1d2
	.uleb128 0x30
	.4byte	.LASF185
	.4byte	.LASF185
	.byte	0xb
	.2byte	0x1b2
	.uleb128 0x30
	.4byte	.LASF186
	.4byte	.LASF186
	.byte	0x8
	.2byte	0x10a
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x17
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
	.uleb128 0xf
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
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x17
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL10
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL18
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL12
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL38
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL45
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL61
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL45
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL47
	.4byte	.LVL51
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL57
	.4byte	.LVL60
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL46
	.4byte	.LVL48-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x3
	.byte	0x7a
	.sleb128 -7
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL60
	.4byte	.LVL62
	.2byte	0x3
	.byte	0x91
	.sleb128 -47
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x3
	.byte	0x91
	.sleb128 -46
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL64
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL76
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL64
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL66
	.4byte	.LVL70
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LFE35
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL65
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL65
	.4byte	.LVL72
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL73-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL75
	.4byte	.LVL78-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0x3
	.byte	0x91
	.sleb128 -47
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x3
	.byte	0x91
	.sleb128 -46
	.byte	0x9f
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
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
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
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
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
.LASF89:
	.string	"BTM_EIR_UUID_SERVCLASS_SERIAL_PORT"
.LASF62:
	.string	"tAVDT_OPEN"
.LASF184:
	.string	"SDP_AddAttribute"
.LASF71:
	.string	"getcap_cfm"
.LASF75:
	.string	"start_cfm"
.LASF119:
	.string	"BTM_EIR_UUID_SERVCLASS_CABLE_REPLACEMENT"
.LASF129:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SINK"
.LASF3:
	.string	"__uint8_t"
.LASF169:
	.string	"service_uuid"
.LASF171:
	.string	"provider_name"
.LASF48:
	.string	"mux_tcid_recov"
.LASF179:
	.string	"AVCT_Register"
.LASF43:
	.string	"mux_tsid_media"
.LASF84:
	.string	"report_conn"
.LASF116:
	.string	"BTM_EIR_UUID_SERVCLASS_BASIC_PRINTING"
.LASF150:
	.string	"ct_categories"
.LASF124:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PSE"
.LASF24:
	.string	"sig_tout"
.LASF164:
	.string	"data"
.LASF56:
	.string	"p_cfg"
.LASF127:
	.string	"BTM_EIR_UUID_SERVCLASS_PNP_INFORMATION"
.LASF87:
	.string	"tAVDT_CTRL_CBACK"
.LASF23:
	.string	"ret_tout"
.LASF25:
	.string	"idle_tout"
.LASF8:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF101:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REMOTE_CONTROL"
.LASF9:
	.string	"long long unsigned int"
.LASF82:
	.string	"connect_ind"
.LASF97:
	.string	"BTM_EIR_UUID_SERVCLASS_CORDLESS_TELEPHONY"
.LASF45:
	.string	"mux_tsid_report"
.LASF117:
	.string	"BTM_EIR_UUID_SERVCLASS_PRINTING_STATUS"
.LASF90:
	.string	"BTM_EIR_UUID_SERVCLASS_LAN_ACCESS_USING_PPP"
.LASF170:
	.string	"service_name"
.LASF20:
	.string	"long int"
.LASF168:
	.string	"bta_ar_reg_avrc"
.LASF181:
	.string	"SDP_CreateRecord"
.LASF64:
	.string	"tAVDT_SECURITY"
.LASF163:
	.string	"bta_ar_avdt_conn"
.LASF100:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REM_CTRL_TARGET"
.LASF154:
	.string	"sys_id"
.LASF144:
	.string	"p_av_conn_cback"
.LASF11:
	.string	"uint16_t"
.LASF73:
	.string	"open_ind"
.LASF47:
	.string	"mux_tsid_recov"
.LASF136:
	.string	"BTM_PM_STS_HOLD"
.LASF76:
	.string	"suspend_cfm"
.LASF51:
	.string	"err_param"
.LASF49:
	.string	"tAVDT_CFG"
.LASF145:
	.string	"p_avk_conn_cback"
.LASF22:
	.string	"ctrl_mtu"
.LASF186:
	.string	"bta_sys_remove_uuid"
.LASF26:
	.string	"sec_mask"
.LASF158:
	.string	"p_reg"
.LASF14:
	.string	"UINT16"
.LASF153:
	.string	"tBTA_AR_CB"
.LASF139:
	.string	"BTM_PM_STS_SSR"
.LASF160:
	.string	"mask"
.LASF115:
	.string	"BTM_EIR_UUID_SERVCLASS_DIR_PRT_REF_OBJ_SERVICE"
.LASF72:
	.string	"open_cfm"
.LASF134:
	.string	"BTM_EIR_MAX_SERVICES"
.LASF176:
	.string	"bd_addr_null"
.LASF173:
	.string	"temp"
.LASF190:
	.string	"bta_ar_id"
.LASF52:
	.string	"label"
.LASF7:
	.string	"unsigned int"
.LASF94:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_FILE_TRANSFER"
.LASF91:
	.string	"BTM_EIR_UUID_SERVCLASS_DIALUP_NETWORKING"
.LASF67:
	.string	"tAVDT_DISCOVER"
.LASF21:
	.string	"long unsigned int"
.LASF159:
	.string	"p_cback"
.LASF178:
	.string	"AVDT_Deregister"
.LASF135:
	.string	"BTM_PM_STS_ACTIVE"
.LASF125:
	.string	"BTM_EIR_UUID_SERVCLASS_PHONE_ACCESS"
.LASF66:
	.string	"num_seps"
.LASF37:
	.string	"psc_mask"
.LASF157:
	.string	"event"
.LASF161:
	.string	"bta_ar_reg_avdt"
.LASF5:
	.string	"short unsigned int"
.LASF107:
	.string	"BTM_EIR_UUID_SERVCLASS_GN"
.LASF114:
	.string	"BTM_EIR_UUID_SERVCLASS_AG_HANDSFREE"
.LASF69:
	.string	"tAVDT_DELAY_RPT"
.LASF46:
	.string	"mux_tcid_report"
.LASF27:
	.string	"tAVDT_REG"
.LASF165:
	.string	"bta_ar_reg_avct"
.LASF131:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_NOTIFICATION"
.LASF35:
	.string	"num_codec"
.LASF28:
	.string	"in_use"
.LASF85:
	.string	"delay_rpt_cmd"
.LASF39:
	.string	"recov_mrws"
.LASF80:
	.string	"security_cfm"
.LASF191:
	.string	"bta_ar_avdt_cback"
.LASF38:
	.string	"recov_type"
.LASF141:
	.string	"BTM_PM_STS_ERROR"
.LASF79:
	.string	"reconfig_ind"
.LASF53:
	.string	"sig_id"
.LASF58:
	.string	"int_seid"
.LASF18:
	.string	"sizetype"
.LASF106:
	.string	"BTM_EIR_UUID_SERVCLASS_NAP"
.LASF152:
	.string	"hndl"
.LASF50:
	.string	"err_code"
.LASF193:
	.string	"bta_ar_cb"
.LASF32:
	.string	"tAVDT_SEP_INFO"
.LASF15:
	.string	"UINT32"
.LASF177:
	.string	"AVDT_Register"
.LASF33:
	.string	"codec_info"
.LASF147:
	.string	"avct_registered"
.LASF130:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_ACCESS"
.LASF78:
	.string	"reconfig_cfm"
.LASF142:
	.string	"tBTA_AV_HNDL"
.LASF54:
	.string	"ccb_idx"
.LASF112:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_REF_OBJECTS"
.LASF96:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET"
.LASF81:
	.string	"security_ind"
.LASF57:
	.string	"tAVDT_CONFIG"
.LASF110:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_RESPONDER"
.LASF151:
	.string	"tg_registered"
.LASF122:
	.string	"BTM_EIR_UUID_SERVCLASS_SAP"
.LASF83:
	.string	"disconnect_ind"
.LASF109:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING"
.LASF108:
	.string	"BTM_EIR_UUID_SERVCLASS_DIRECT_PRINTING"
.LASF111:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_AUTO_ARCHIVE"
.LASF166:
	.string	"mtu_br"
.LASF17:
	.string	"_Bool"
.LASF99:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SINK"
.LASF1:
	.string	"unsigned char"
.LASF68:
	.string	"delay"
.LASF187:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF92:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC"
.LASF34:
	.string	"protect_info"
.LASF2:
	.string	"short int"
.LASF16:
	.string	"BOOLEAN"
.LASF182:
	.string	"AVRC_AddRecord"
.LASF137:
	.string	"BTM_PM_STS_SNIFF"
.LASF42:
	.string	"mux_mask"
.LASF44:
	.string	"mux_tcid_media"
.LASF138:
	.string	"BTM_PM_STS_PARK"
.LASF61:
	.string	"lcid"
.LASF98:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SOURCE"
.LASF31:
	.string	"tsep"
.LASF74:
	.string	"config_ind"
.LASF93:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_OBJECT_PUSH"
.LASF12:
	.string	"uint32_t"
.LASF65:
	.string	"p_sep_info"
.LASF121:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_SCAN"
.LASF19:
	.string	"char"
.LASF86:
	.string	"tAVDT_CTRL"
.LASF70:
	.string	"discover_cfm"
.LASF4:
	.string	"__uint16_t"
.LASF174:
	.string	"bta_ar_dereg_avrc"
.LASF104:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_AUDIO_GATEWAY"
.LASF6:
	.string	"__uint32_t"
.LASF149:
	.string	"sdp_ct_handle"
.LASF120:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_PRINT"
.LASF180:
	.string	"AVCT_Deregister"
.LASF183:
	.string	"bta_sys_add_uuid"
.LASF146:
	.string	"avdt_registered"
.LASF59:
	.string	"tAVDT_SETCONFIG"
.LASF167:
	.string	"bta_ar_dereg_avct"
.LASF77:
	.string	"close_cfm"
.LASF95:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC_COMMAND"
.LASF172:
	.string	"categories"
.LASF132:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SOURCE"
.LASF40:
	.string	"recov_mnmp"
.LASF55:
	.string	"tAVDT_EVT_HDR"
.LASF185:
	.string	"SDP_DeleteRecord"
.LASF105:
	.string	"BTM_EIR_UUID_SERVCLASS_PANU"
.LASF29:
	.string	"seid"
.LASF192:
	.string	"bta_ar_init"
.LASF41:
	.string	"hdrcmp_mask"
.LASF102:
	.string	"BTM_EIR_UUID_SERVCLASS_INTERCOM"
.LASF60:
	.string	"peer_mtu"
.LASF13:
	.string	"UINT8"
.LASF126:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_HS"
.LASF10:
	.string	"uint8_t"
.LASF175:
	.string	"bd_addr_any"
.LASF36:
	.string	"num_protect"
.LASF140:
	.string	"BTM_PM_STS_PENDING"
.LASF143:
	.string	"tBTA_SYS_ID"
.LASF188:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/bta/ar/bta_ar.c"
.LASF113:
	.string	"BTM_EIR_UUID_SERVCLASS_HF_HANDSFREE"
.LASF88:
	.string	"BTM_EIR_UUID_SERVCLASS_SERVICE_DISCOVERY_SERVER"
.LASF189:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF155:
	.string	"handle"
.LASF63:
	.string	"p_data"
.LASF133:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SINK"
.LASF118:
	.string	"BTM_EIR_UUID_SERVCLASS_HUMAN_INTERFACE"
.LASF30:
	.string	"media_type"
.LASF156:
	.string	"bd_addr"
.LASF103:
	.string	"BTM_EIR_UUID_SERVCLASS_FAX"
.LASF162:
	.string	"bta_ar_dereg_avdt"
.LASF148:
	.string	"sdp_tg_handle"
.LASF123:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PCE"
.LASF128:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SOURCE"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
