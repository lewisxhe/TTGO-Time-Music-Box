	.file	"a2d_sbc.c"
	.text
.Ltext0:
	.section	.text.A2D_SbcChkFrInit,"ax",@progbits
	.literal_position
	.literal .LC0, a2d_cb
	.literal .LC1, a2d_sbc_ds_cb
	.align	4
	.global	A2D_SbcChkFrInit
	.type	A2D_SbcChkFrInit, @function
A2D_SbcChkFrInit:
.LFB11:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/a2dp/a2d_sbc.c"
	.loc 1 117 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 122 0
	l8ui	a8, a2, 0
	bbsi	a8, 4, .L1
	.loc 1 123 0
	movi.n	a9, 1
	l32r	a8, .LC0
	s8i	a9, a8, 13
	.loc 1 124 0
	l8ui	a9, a2, 1
.LVL2:
	.loc 1 125 0
	l8ui	a10, a2, 0
	movi.n	a8, 0x10
	or	a8, a10, a8
	s8i	a8, a2, 0
	.loc 1 126 0
	l32r	a2, .LC1
.LVL3:
	movi.n	a8, 0
	s32i.n	a8, a2, 0
	s16i	a8, a2, 4
	.loc 1 127 0
	movi.n	a2, 0xc
	bany	a9, a2, .L5
	.loc 1 119 0
	movi.n	a8, 1
	j	.L3
.L5:
	.loc 1 128 0
	movi.n	a8, 2
.L3:
.LVL4:
	.loc 1 130 0
	bbsi	a9, 0, .L6
	.loc 1 120 0
	movi.n	a2, 4
	j	.L4
.L6:
	.loc 1 131 0
	movi.n	a2, 8
.L4:
.LVL5:
	.loc 1 133 0
	mull	a2, a8, a2
.LVL6:
	srai	a2, a2, 1
	addi.n	a2, a2, 6
	l32r	a8, .LC1
.LVL7:
	s8i	a2, a8, 5
.LVL8:
.L1:
	retw.n
.LFE11:
	.size	A2D_SbcChkFrInit, .-A2D_SbcChkFrInit
	.section	.text.A2D_SbcDescramble,"ax",@progbits
	.literal_position
	.literal .LC2, a2d_cb
	.literal .LC3, a2d_sbc_ds_cb
	.align	4
	.global	A2D_SbcDescramble
	.type	A2D_SbcDescramble, @function
A2D_SbcDescramble:
.LFB12:
	.loc 1 148 0
.LVL9:
	entry	sp, 32
.LCFI1:
	extui	a3, a3, 0, 16
	.loc 1 152 0
	l32r	a8, .LC2
	l8ui	a8, a8, 13
	beqz.n	a8, .L7
.LVL10:
	.loc 1 156 0
	l32r	a10, .LC3
	l8ui	a8, a10, 1
	s8i	a8, a10, 3
	.loc 1 157 0
	l8ui	a8, a10, 0
	s8i	a8, a10, 2
	.loc 1 159 0
	l8ui	a8, a2, 3
	movi	a9, 0x64
	and	a9, a8, a9
	s8i	a9, a10, 0
	.loc 1 160 0
	movi.n	a11, 0x30
	and	a11, a8, a11
	srai	a11, a11, 2
	extui	a8, a8, 0, 2
	add.n	a8, a8, a11
	s8i	a8, a10, 1
	.loc 1 161 0
	movi.n	a8, 0
	movi.n	a11, 1
	moveqz	a8, a11, a9
	extui	a8, a8, 0, 8
	s8i	a8, a10, 4
	.loc 1 169 0
	addx2	a8, a8, a10
	l8ui	a8, a8, 1
.LVL11:
	.loc 1 170 0
	beqz.n	a8, .L7
	.loc 1 171 0
	l8ui	a9, a10, 5
	add.n	a2, a2, a9
.LVL12:
	.loc 1 172 0
	bbci	a8, 0, .L9
	.loc 1 172 0 is_stmt 0 discriminator 1
	ssl	a11
	sll	a10, a8
	add.n	a9, a9, a10
	bgeu	a9, a3, .L9
.LVL13:
	.loc 1 174 0 is_stmt 1
	add.n	a3, a2, a8
.LVL14:
	l8ui	a8, a3, 0
.LVL15:
	.loc 1 175 0
	add.n	a2, a2, a10
.LVL16:
	l8ui	a9, a2, 0
	s8i	a9, a3, 0
.LVL17:
	.loc 1 176 0
	s8i	a8, a2, 0
	retw.n
.LVL18:
.L9:
	.loc 1 182 0
	add.n	a8, a2, a8
.LVL19:
	l8ui	a2, a8, 0
.LVL20:
	.loc 1 183 0
	srli	a3, a2, 3
	slli	a2, a2, 5
.LVL21:
	add.n	a2, a3, a2
.LVL22:
	.loc 1 184 0
	s8i	a2, a8, 0
.LVL23:
.L7:
	retw.n
.LFE12:
	.size	A2D_SbcDescramble, .-A2D_SbcDescramble
	.section	.text.A2D_BldSbcInfo,"ax",@progbits
	.align	4
	.global	A2D_BldSbcInfo
	.type	A2D_BldSbcInfo, @function
A2D_BldSbcInfo:
.LFB13:
	.loc 1 220 0
.LVL24:
	entry	sp, 32
.LCFI2:
	extui	a2, a2, 0, 8
	.loc 1 223 0
	movi.n	a8, 1
	movi.n	a10, 0
	mov.n	a9, a10
	moveqz	a9, a8, a3
	.loc 1 223 0
	movnez	a8, a10, a4
	or	a8, a8, a9
	.loc 1 223 0
	bne	a8, a10, .L12
	.loc 1 224 0 discriminator 1
	l8ui	a8, a3, 0
	extui	a8, a8, 0, 4
	.loc 1 223 0 discriminator 1
	bne	a8, a10, .L13
	.loc 1 225 0
	l8ui	a9, a3, 1
	.loc 1 224 0
	movi.n	a8, -0x10
	bany	a9, a8, .L14
	.loc 1 226 0
	l8ui	a8, a3, 2
	extui	a8, a8, 0, 4
	.loc 1 225 0
	bne	a8, a10, .L15
	.loc 1 227 0
	l8ui	a9, a3, 3
	.loc 1 226 0
	movi.n	a8, -0xd
	bany	a9, a8, .L16
	.loc 1 228 0
	l8ui	a9, a3, 4
	.loc 1 227 0
	movi.n	a8, -4
	bany	a9, a8, .L17
	.loc 1 229 0
	l8ui	a9, a3, 5
	l8ui	a8, a3, 6
	.loc 1 228 0
	bltu	a9, a8, .L18
	.loc 1 229 0
	bltui	a9, 2, .L19
	.loc 1 230 0
	movi	a10, 0xfa
	bltu	a10, a9, .L20
	.loc 1 231 0
	bltui	a8, 2, .L21
	.loc 1 232 0
	bltu	a10, a8, .L22
.LVL25:
	.loc 1 238 0
	movi.n	a8, 6
	s8i	a8, a4, 0
.LVL26:
	.loc 1 239 0
	s8i	a2, a4, 1
.LVL27:
	.loc 1 240 0
	movi.n	a2, 0
.LVL28:
	s8i	a2, a4, 2
.LVL29:
	.loc 1 243 0
	l8ui	a8, a3, 0
	l8ui	a2, a3, 1
	or	a2, a8, a2
	s8i	a2, a4, 3
.LVL30:
	.loc 1 245 0
	l8ui	a2, a3, 2
	l8ui	a8, a3, 3
	l8ui	a9, a3, 4
	or	a2, a2, a8
	or	a2, a9, a2
	s8i	a2, a4, 4
.LVL31:
	.loc 1 247 0
	l8ui	a2, a3, 6
	s8i	a2, a4, 5
	.loc 1 248 0
	l8ui	a2, a3, 5
	s8i	a2, a4, 6
	.loc 1 237 0
	movi.n	a2, 0
	retw.n
.LVL32:
.L12:
	.loc 1 235 0
	movi.n	a2, 0xc
	retw.n
.L13:
	movi.n	a2, 0xc
	retw.n
.L14:
	movi.n	a2, 0xc
	retw.n
.L15:
	movi.n	a2, 0xc
	retw.n
.L16:
	movi.n	a2, 0xc
	retw.n
.L17:
	movi.n	a2, 0xc
	retw.n
.L18:
	movi.n	a2, 0xc
	retw.n
.L19:
	movi.n	a2, 0xc
	retw.n
.L20:
	movi.n	a2, 0xc
	retw.n
.L21:
	movi.n	a2, 0xc
	retw.n
.L22:
	movi.n	a2, 0xc
.LVL33:
	.loc 1 251 0
	retw.n
.LFE13:
	.size	A2D_BldSbcInfo, .-A2D_BldSbcInfo
	.section	.text.A2D_ParsSbcInfo,"ax",@progbits
	.align	4
	.global	A2D_ParsSbcInfo
	.type	A2D_ParsSbcInfo, @function
A2D_ParsSbcInfo:
.LFB14:
	.loc 1 272 0
.LVL34:
	entry	sp, 32
.LCFI3:
	extui	a4, a4, 0, 8
	.loc 1 276 0
	movi.n	a8, 1
	movi.n	a10, 0
	mov.n	a9, a10
	moveqz	a9, a8, a2
	.loc 1 276 0
	movnez	a8, a10, a3
	or	a8, a8, a9
	.loc 1 276 0
	bne	a8, a10, .L31
.LVL35:
	.loc 1 279 0
	l8ui	a8, a3, 0
.LVL36:
	.loc 1 282 0
	bnei	a8, 6, .L32
	.loc 1 282 0 is_stmt 0 discriminator 1
	l8ui	a8, a3, 2
	bne	a8, a10, .L33
.LVL37:
	.loc 1 286 0 is_stmt 1
	l8ui	a10, a3, 3
	movi.n	a8, -0x10
	and	a10, a10, a8
	s8i	a10, a2, 0
.LVL38:
	.loc 1 287 0
	l8ui	a9, a3, 3
	extui	a9, a9, 0, 4
	s8i	a9, a2, 1
.LVL39:
	.loc 1 289 0
	l8ui	a9, a3, 4
	and	a8, a9, a8
	s8i	a8, a2, 2
	.loc 1 290 0
	l8ui	a9, a3, 4
	movi.n	a8, 0xc
	and	a8, a9, a8
	s8i	a8, a2, 3
	.loc 1 291 0
	l8ui	a8, a3, 4
	extui	a8, a8, 0, 2
	s8i	a8, a2, 4
.LVL40:
	.loc 1 293 0
	l8ui	a9, a3, 5
	s8i	a9, a2, 6
	.loc 1 294 0
	l8ui	a11, a3, 6
	s8i	a11, a2, 5
.LVL41:
	.loc 1 296 0
	addi	a3, a9, -2
.LVL42:
	extui	a3, a3, 0, 8
	movi	a8, 0xf8
	bltu	a8, a3, .L34
	.loc 1 295 0
	movi.n	a3, 0
	j	.L25
.L34:
	.loc 1 297 0
	movi	a3, 0xcb
.L25:
.LVL43:
	.loc 1 300 0
	addi	a8, a11, -2
	extui	a8, a8, 0, 8
	movi	a12, 0xf8
	bltu	a12, a8, .L35
	.loc 1 300 0 is_stmt 0 discriminator 1
	bltu	a11, a9, .L36
	j	.L26
.L35:
	.loc 1 302 0 is_stmt 1
	movi	a3, 0xcd
.LVL44:
	j	.L26
.LVL45:
.L36:
	movi	a3, 0xcd
.LVL46:
.L26:
	.loc 1 305 0
	bnez.n	a4, .L24
	.loc 1 306 0
	call8	A2D_BitsSet
.LVL47:
	beqi	a10, 1, .L27
	.loc 1 307 0
	movi	a3, 0xc3
.LVL48:
.L27:
	.loc 1 309 0
	l8ui	a10, a2, 1
	call8	A2D_BitsSet
.LVL49:
	beqi	a10, 1, .L28
	.loc 1 310 0
	movi	a3, 0xc5
.LVL50:
.L28:
	.loc 1 312 0
	l8ui	a10, a2, 2
	call8	A2D_BitsSet
.LVL51:
	beqi	a10, 1, .L29
	.loc 1 313 0
	movi	a3, 0xdd
.LVL52:
.L29:
	.loc 1 315 0
	l8ui	a10, a2, 3
	call8	A2D_BitsSet
.LVL53:
	beqi	a10, 1, .L30
	.loc 1 316 0
	movi	a3, 0xc7
.LVL54:
.L30:
	.loc 1 318 0
	l8ui	a10, a2, 4
	call8	A2D_BitsSet
.LVL55:
	bnei	a10, 1, .L41
	j	.L24
.LVL56:
.L31:
	.loc 1 277 0
	movi.n	a3, 0xc
.LVL57:
	j	.L24
.LVL58:
.L32:
	.loc 1 283 0
	movi.n	a3, 0xd
.LVL59:
	j	.L24
.LVL60:
.L33:
	movi.n	a3, 0xd
.LVL61:
	j	.L24
.LVL62:
.L41:
	.loc 1 319 0
	movi	a3, 0xc9
.LVL63:
.L24:
	.loc 1 325 0
	mov.n	a2, a3
.LVL64:
	retw.n
.LFE14:
	.size	A2D_ParsSbcInfo, .-A2D_ParsSbcInfo
	.section	.text.A2D_BldSbcMplHdr,"ax",@progbits
	.align	4
	.global	A2D_BldSbcMplHdr
	.type	A2D_BldSbcMplHdr, @function
A2D_BldSbcMplHdr:
.LFB15:
	.loc 1 350 0
.LVL65:
	entry	sp, 32
.LCFI4:
	extui	a3, a3, 0, 8
	extui	a4, a4, 0, 8
	extui	a5, a5, 0, 8
	extui	a6, a6, 0, 8
	.loc 1 351 0
	beqz.n	a2, .L42
	.loc 1 352 0
	movi.n	a8, 0
	s8i	a8, a2, 0
	.loc 1 353 0
	beqz.n	a3, .L44
	.loc 1 354 0
	movi	a3, -0x80
.LVL66:
	s8i	a3, a2, 0
.L44:
	.loc 1 356 0
	beqz.n	a4, .L45
	.loc 1 357 0
	l8ui	a4, a2, 0
.LVL67:
	movi.n	a3, 0x40
	or	a3, a4, a3
	s8i	a3, a2, 0
.L45:
	.loc 1 359 0
	beqz.n	a5, .L46
	.loc 1 360 0
	l8ui	a4, a2, 0
	movi.n	a3, 0x20
	or	a3, a4, a3
	s8i	a3, a2, 0
.L46:
	.loc 1 362 0
	extui	a6, a6, 0, 4
.LVL68:
	l8ui	a8, a2, 0
	or	a6, a6, a8
	s8i	a6, a2, 0
.L42:
	retw.n
.LFE15:
	.size	A2D_BldSbcMplHdr, .-A2D_BldSbcMplHdr
	.section	.text.A2D_ParsSbcMplHdr,"ax",@progbits
	.align	4
	.global	A2D_ParsSbcMplHdr
	.type	A2D_ParsSbcMplHdr, @function
A2D_ParsSbcMplHdr:
.LFB16:
	.loc 1 389 0
.LVL69:
	entry	sp, 32
.LCFI5:
	.loc 1 390 0
	movi.n	a8, 1
	movi.n	a9, 0
	mov.n	a10, a9
	movnez	a10, a8, a2
	moveqz	a8, a9, a3
	bnone	a10, a8, .L47
	.loc 1 390 0 is_stmt 0 discriminator 1
	movi.n	a8, 1
	mov.n	a10, a9
	movnez	a9, a8, a4
	extui	a9, a9, 0, 8
	moveqz	a8, a10, a5
	extui	a8, a8, 0, 8
	beq	a8, a10, .L47
	beq	a9, a10, .L47
	.loc 1 390 0 discriminator 2
	beq	a6, a10, .L47
	.loc 1 391 0 is_stmt 1
	l8ui	a8, a2, 0
	.loc 1 391 0
	srli	a8, a8, 7
	.loc 1 391 0
	s8i	a8, a3, 0
	.loc 1 392 0
	l8ui	a3, a2, 0
.LVL70:
	.loc 1 392 0
	extui	a3, a3, 6, 1
	.loc 1 392 0
	s8i	a3, a4, 0
	.loc 1 393 0
	l8ui	a3, a2, 0
	.loc 1 393 0
	extui	a3, a3, 5, 1
	.loc 1 393 0
	s8i	a3, a5, 0
	.loc 1 394 0
	l8ui	a2, a2, 0
.LVL71:
	extui	a2, a2, 0, 4
	s8i	a2, a6, 0
.L47:
	retw.n
.LFE16:
	.size	A2D_ParsSbcMplHdr, .-A2D_ParsSbcMplHdr
	.section	.bss.a2d_sbc_ds_cb,"aw",@nobits
	.align	4
	.type	a2d_sbc_ds_cb, @object
	.size	a2d_sbc_ds_cb, 6
a2d_sbc_ds_cb:
	.zero	6
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
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI0-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI1-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI2-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI3-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI4-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI5-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/sdp_api.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/a2d_api.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/a2dp/include/a2d_int.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/a2d_sbc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x820
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
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x132
	.4byte	0xe5
	.uleb128 0x6
	.4byte	0x9f
	.4byte	0xf5
	.uleb128 0x7
	.4byte	0xd2
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x9f
	.uleb128 0x6
	.4byte	0x9f
	.4byte	0x10b
	.uleb128 0x7
	.4byte	0xd2
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.byte	0x10
	.byte	0x4
	.2byte	0x1ab
	.4byte	0x139
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x1ac
	.4byte	0xaa
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x1ad
	.4byte	0xb5
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x1ae
	.4byte	0xfb
	.byte	0
	.uleb128 0xb
	.byte	0x14
	.byte	0x4
	.2byte	0x1a4
	.4byte	0x15c
	.uleb128 0xc
	.string	"len"
	.byte	0x4
	.2byte	0x1a9
	.4byte	0xaa
	.byte	0
	.uleb128 0xc
	.string	"uu"
	.byte	0x4
	.2byte	0x1af
	.4byte	0x10b
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x1b1
	.4byte	0x139
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF24
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF25
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF26
	.uleb128 0x8
	.byte	0x4
	.4byte	0x168
	.uleb128 0xd
	.byte	0x4
	.byte	0x5
	.byte	0x5f
	.4byte	0x1c2
	.uleb128 0xe
	.string	"u8"
	.byte	0x5
	.byte	0x60
	.4byte	0x9f
	.uleb128 0xe
	.string	"u16"
	.byte	0x5
	.byte	0x61
	.4byte	0xaa
	.uleb128 0xe
	.string	"u32"
	.byte	0x5
	.byte	0x62
	.4byte	0xb5
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x5
	.byte	0x63
	.4byte	0x1c2
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x5
	.byte	0x64
	.4byte	0x20f
	.byte	0
	.uleb128 0x6
	.4byte	0x9f
	.4byte	0x1d2
	.uleb128 0x7
	.4byte	0xd2
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.4byte	.LASF35
	.byte	0xc
	.byte	0x5
	.byte	0x69
	.4byte	0x20f
	.uleb128 0x11
	.4byte	.LASF29
	.byte	0x5
	.byte	0x6a
	.4byte	0x20f
	.byte	0
	.uleb128 0x11
	.4byte	.LASF30
	.byte	0x5
	.byte	0x6b
	.4byte	0xaa
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF31
	.byte	0x5
	.byte	0x6c
	.4byte	0xaa
	.byte	0x6
	.uleb128 0x11
	.4byte	.LASF32
	.byte	0x5
	.byte	0x6d
	.4byte	0x228
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1d2
	.uleb128 0x12
	.byte	0x4
	.byte	0x5
	.byte	0x5e
	.4byte	0x228
	.uleb128 0x13
	.string	"v"
	.byte	0x5
	.byte	0x65
	.4byte	0x183
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x5
	.byte	0x67
	.4byte	0x215
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x5
	.byte	0x6e
	.4byte	0x1d2
	.uleb128 0x10
	.4byte	.LASF36
	.byte	0x14
	.byte	0x5
	.byte	0x70
	.4byte	0x27b
	.uleb128 0x11
	.4byte	.LASF37
	.byte	0x5
	.byte	0x71
	.4byte	0x27b
	.byte	0
	.uleb128 0x11
	.4byte	.LASF38
	.byte	0x5
	.byte	0x72
	.4byte	0x281
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF39
	.byte	0x5
	.byte	0x73
	.4byte	0xb5
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF40
	.byte	0x5
	.byte	0x74
	.4byte	0xd9
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x233
	.uleb128 0x8
	.byte	0x4
	.4byte	0x23e
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x5
	.byte	0x75
	.4byte	0x23e
	.uleb128 0x12
	.byte	0x7c
	.byte	0x5
	.byte	0x77
	.4byte	0x31f
	.uleb128 0x11
	.4byte	.LASF42
	.byte	0x5
	.byte	0x78
	.4byte	0xb5
	.byte	0
	.uleb128 0x11
	.4byte	.LASF43
	.byte	0x5
	.byte	0x79
	.4byte	0xb5
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF44
	.byte	0x5
	.byte	0x7a
	.4byte	0x31f
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF45
	.byte	0x5
	.byte	0x7b
	.4byte	0xaa
	.byte	0xc
	.uleb128 0x11
	.4byte	.LASF46
	.byte	0x5
	.byte	0x7c
	.4byte	0x325
	.byte	0x10
	.uleb128 0x11
	.4byte	.LASF47
	.byte	0x5
	.byte	0x7d
	.4byte	0xaa
	.byte	0x4c
	.uleb128 0x11
	.4byte	.LASF48
	.byte	0x5
	.byte	0x7e
	.4byte	0x335
	.byte	0x4e
	.uleb128 0x11
	.4byte	.LASF49
	.byte	0x5
	.byte	0x7f
	.4byte	0xf5
	.byte	0x6c
	.uleb128 0x11
	.4byte	.LASF50
	.byte	0x5
	.byte	0x81
	.4byte	0xf5
	.byte	0x70
	.uleb128 0x11
	.4byte	.LASF51
	.byte	0x5
	.byte	0x82
	.4byte	0xb5
	.byte	0x74
	.uleb128 0x11
	.4byte	.LASF52
	.byte	0x5
	.byte	0x83
	.4byte	0xb5
	.byte	0x78
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x287
	.uleb128 0x6
	.4byte	0x15c
	.4byte	0x335
	.uleb128 0x7
	.4byte	0xd2
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	0xaa
	.4byte	0x345
	.uleb128 0x7
	.4byte	0xd2
	.byte	0xe
	.byte	0
	.uleb128 0x3
	.4byte	.LASF53
	.byte	0x5
	.byte	0x85
	.4byte	0x292
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0x6
	.byte	0x58
	.4byte	0x9f
	.uleb128 0x8
	.byte	0x4
	.4byte	0x345
	.uleb128 0x12
	.byte	0x10
	.byte	0x6
	.byte	0x70
	.4byte	0x3b2
	.uleb128 0x11
	.4byte	.LASF55
	.byte	0x6
	.byte	0x71
	.4byte	0xaa
	.byte	0
	.uleb128 0x11
	.4byte	.LASF56
	.byte	0x6
	.byte	0x72
	.4byte	0xaa
	.byte	0x2
	.uleb128 0x11
	.4byte	.LASF57
	.byte	0x6
	.byte	0x73
	.4byte	0x17d
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF58
	.byte	0x6
	.byte	0x75
	.4byte	0x17d
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF59
	.byte	0x6
	.byte	0x77
	.4byte	0xaa
	.byte	0xc
	.uleb128 0x11
	.4byte	.LASF60
	.byte	0x6
	.byte	0x78
	.4byte	0xaa
	.byte	0xe
	.byte	0
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0x6
	.byte	0x79
	.4byte	0x361
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0x6
	.byte	0x7c
	.4byte	0x3c8
	.uleb128 0x14
	.4byte	0x3d8
	.uleb128 0x15
	.4byte	0xc0
	.uleb128 0x15
	.4byte	0x3d8
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x3b2
	.uleb128 0x12
	.byte	0xc
	.byte	0x7
	.byte	0x2d
	.4byte	0x40b
	.uleb128 0x11
	.4byte	.LASF63
	.byte	0x7
	.byte	0x2e
	.4byte	0x40b
	.byte	0
	.uleb128 0x11
	.4byte	.LASF64
	.byte	0x7
	.byte	0x2f
	.4byte	0x35b
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF65
	.byte	0x7
	.byte	0x30
	.4byte	0xaa
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x3bd
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0x7
	.byte	0x31
	.4byte	0x3de
	.uleb128 0x12
	.byte	0x10
	.byte	0x7
	.byte	0x33
	.4byte	0x455
	.uleb128 0x11
	.4byte	.LASF67
	.byte	0x7
	.byte	0x34
	.4byte	0x411
	.byte	0
	.uleb128 0x11
	.4byte	.LASF68
	.byte	0x7
	.byte	0x35
	.4byte	0x9f
	.byte	0xc
	.uleb128 0x11
	.4byte	.LASF69
	.byte	0x7
	.byte	0x36
	.4byte	0xc0
	.byte	0xd
	.uleb128 0x11
	.4byte	.LASF70
	.byte	0x7
	.byte	0x37
	.4byte	0xaa
	.byte	0xe
	.byte	0
	.uleb128 0x3
	.4byte	.LASF71
	.byte	0x7
	.byte	0x38
	.4byte	0x41c
	.uleb128 0x12
	.byte	0x7
	.byte	0x8
	.byte	0x4d
	.4byte	0x4bd
	.uleb128 0x11
	.4byte	.LASF72
	.byte	0x8
	.byte	0x4e
	.4byte	0x9f
	.byte	0
	.uleb128 0x11
	.4byte	.LASF73
	.byte	0x8
	.byte	0x4f
	.4byte	0x9f
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF74
	.byte	0x8
	.byte	0x50
	.4byte	0x9f
	.byte	0x2
	.uleb128 0x11
	.4byte	.LASF75
	.byte	0x8
	.byte	0x51
	.4byte	0x9f
	.byte	0x3
	.uleb128 0x11
	.4byte	.LASF76
	.byte	0x8
	.byte	0x52
	.4byte	0x9f
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF77
	.byte	0x8
	.byte	0x53
	.4byte	0x9f
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF78
	.byte	0x8
	.byte	0x54
	.4byte	0x9f
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF79
	.byte	0x8
	.byte	0x55
	.4byte	0x460
	.uleb128 0x12
	.byte	0x2
	.byte	0x1
	.byte	0x5f
	.4byte	0x4e9
	.uleb128 0x13
	.string	"use"
	.byte	0x1
	.byte	0x60
	.4byte	0x9f
	.byte	0
	.uleb128 0x13
	.string	"idx"
	.byte	0x1
	.byte	0x61
	.4byte	0x9f
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF80
	.byte	0x1
	.byte	0x62
	.4byte	0x4c8
	.uleb128 0x12
	.byte	0x6
	.byte	0x1
	.byte	0x64
	.4byte	0x520
	.uleb128 0x13
	.string	"fr"
	.byte	0x1
	.byte	0x65
	.4byte	0x520
	.byte	0
	.uleb128 0x11
	.4byte	.LASF81
	.byte	0x1
	.byte	0x66
	.4byte	0x9f
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF82
	.byte	0x1
	.byte	0x67
	.4byte	0x9f
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.4byte	0x4e9
	.4byte	0x530
	.uleb128 0x7
	.4byte	0xd2
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF83
	.byte	0x1
	.byte	0x68
	.4byte	0x4f4
	.uleb128 0x16
	.4byte	.LASF86
	.byte	0x1
	.byte	0x74
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x58d
	.uleb128 0x17
	.4byte	.LASF88
	.byte	0x1
	.byte	0x74
	.4byte	0xf5
	.4byte	.LLST0
	.uleb128 0x18
	.string	"fmt"
	.byte	0x1
	.byte	0x76
	.4byte	0x9f
	.4byte	.LLST1
	.uleb128 0x19
	.4byte	.LASF84
	.byte	0x1
	.byte	0x77
	.4byte	0x9f
	.4byte	.LLST2
	.uleb128 0x19
	.4byte	.LASF85
	.byte	0x1
	.byte	0x78
	.4byte	0x9f
	.4byte	.LLST3
	.byte	0
	.uleb128 0x16
	.4byte	.LASF87
	.byte	0x1
	.byte	0x93
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x60c
	.uleb128 0x17
	.4byte	.LASF88
	.byte	0x1
	.byte	0x93
	.4byte	0xf5
	.4byte	.LLST4
	.uleb128 0x1a
	.string	"len"
	.byte	0x1
	.byte	0x93
	.4byte	0xaa
	.4byte	.LLST5
	.uleb128 0x19
	.4byte	.LASF89
	.byte	0x1
	.byte	0x95
	.4byte	0x60c
	.4byte	.LLST6
	.uleb128 0x19
	.4byte	.LASF90
	.byte	0x1
	.byte	0x95
	.4byte	0x60c
	.4byte	.LLST7
	.uleb128 0x18
	.string	"idx"
	.byte	0x1
	.byte	0x96
	.4byte	0xb5
	.4byte	.LLST8
	.uleb128 0x18
	.string	"tmp"
	.byte	0x1
	.byte	0x96
	.4byte	0xb5
	.4byte	.LLST9
	.uleb128 0x19
	.4byte	.LASF91
	.byte	0x1
	.byte	0x96
	.4byte	0xb5
	.4byte	.LLST10
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x4e9
	.uleb128 0x1b
	.4byte	.LASF96
	.byte	0x1
	.byte	0xdb
	.4byte	0x350
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x666
	.uleb128 0x17
	.4byte	.LASF92
	.byte	0x1
	.byte	0xdb
	.4byte	0x9f
	.4byte	.LLST11
	.uleb128 0x1c
	.4byte	.LASF93
	.byte	0x1
	.byte	0xdb
	.4byte	0x666
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x17
	.4byte	.LASF94
	.byte	0x1
	.byte	0xdb
	.4byte	0xf5
	.4byte	.LLST12
	.uleb128 0x19
	.4byte	.LASF95
	.byte	0x1
	.byte	0xdd
	.4byte	0x350
	.4byte	.LLST13
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x4bd
	.uleb128 0x1d
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x10f
	.4byte	0x350
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x702
	.uleb128 0x1e
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x10f
	.4byte	0x666
	.4byte	.LLST14
	.uleb128 0x1e
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x10f
	.4byte	0xf5
	.4byte	.LLST15
	.uleb128 0x1f
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x10f
	.4byte	0xc0
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x20
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x111
	.4byte	0x350
	.4byte	.LLST16
	.uleb128 0x20
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x112
	.4byte	0x9f
	.4byte	.LLST17
	.uleb128 0x21
	.4byte	.LVL47
	.4byte	0x818
	.uleb128 0x21
	.4byte	.LVL49
	.4byte	0x818
	.uleb128 0x21
	.4byte	.LVL51
	.4byte	0x818
	.uleb128 0x21
	.4byte	.LVL53
	.4byte	0x818
	.uleb128 0x21
	.4byte	.LVL55
	.4byte	0x818
	.byte	0
	.uleb128 0x22
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x15d
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x765
	.uleb128 0x1f
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x15d
	.4byte	0xf5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1e
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x15d
	.4byte	0xc0
	.4byte	.LLST18
	.uleb128 0x1e
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x15d
	.4byte	0xc0
	.4byte	.LLST19
	.uleb128 0x1f
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x15d
	.4byte	0xc0
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x23
	.string	"num"
	.byte	0x1
	.2byte	0x15d
	.4byte	0x9f
	.4byte	.LLST20
	.byte	0
	.uleb128 0x22
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x184
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7c6
	.uleb128 0x1e
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x184
	.4byte	0xf5
	.4byte	.LLST21
	.uleb128 0x1e
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x184
	.4byte	0x7c6
	.4byte	.LLST22
	.uleb128 0x1f
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x184
	.4byte	0x7c6
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1f
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x184
	.4byte	0x7c6
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1f
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x184
	.4byte	0xf5
	.uleb128 0x1
	.byte	0x56
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xc0
	.uleb128 0x24
	.4byte	.LASF111
	.byte	0x4
	.2byte	0x2cc
	.4byte	0x7df
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x25
	.4byte	0xe5
	.uleb128 0x24
	.4byte	.LASF112
	.byte	0x4
	.2byte	0x2cd
	.4byte	0x7f7
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	0xe5
	.uleb128 0x26
	.4byte	.LASF113
	.byte	0x1
	.byte	0x6a
	.4byte	0x530
	.uleb128 0x5
	.byte	0x3
	.4byte	a2d_sbc_ds_cb
	.uleb128 0x27
	.4byte	.LASF117
	.byte	0x7
	.byte	0x44
	.4byte	0x455
	.uleb128 0x28
	.4byte	.LASF118
	.4byte	.LASF118
	.byte	0x6
	.byte	0xec
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x72
	.sleb128 1
	.4byte	.LVL3
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0xf
	.byte	0x3
	.4byte	a2d_sbc_ds_cb+5
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LVL23
	.2byte	0xf
	.byte	0x3
	.4byte	a2d_sbc_ds_cb+5
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL9
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL14
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL10
	.4byte	.LVL23
	.2byte	0x6
	.byte	0x3
	.4byte	a2d_sbc_ds_cb
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL10
	.4byte	.LVL23
	.2byte	0x6
	.byte	0x3
	.4byte	a2d_sbc_ds_cb+2
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL11
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL15
	.4byte	.LVL18
	.2byte	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL13
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x8
	.byte	0x78
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL24
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x3
	.byte	0x74
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x3
	.byte	0x74
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x3
	.byte	0x74
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x3
	.byte	0x74
	.sleb128 5
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x3
	.byte	0x74
	.sleb128 6
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL25
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL34
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL64
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x3
	.byte	0x73
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x3
	.byte	0x73
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x3
	.byte	0x73
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x3
	.byte	0x73
	.sleb128 6
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL56
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x23
	.uleb128 0x6
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x3
	.byte	0x73
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x23
	.uleb128 0x2
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x3
	.byte	0x73
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x23
	.uleb128 0x2
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x23
	.uleb128 0x6
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL45
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL62
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL66
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL65
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL67
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL65
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL68
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL71
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL70
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
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
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF105:
	.string	"last"
.LASF96:
	.string	"A2D_BldSbcInfo"
.LASF51:
	.string	"raw_size"
.LASF91:
	.string	"tmp2"
.LASF114:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF43:
	.string	"mem_free"
.LASF20:
	.string	"uuid16"
.LASF55:
	.string	"service_len"
.LASF102:
	.string	"p_dst"
.LASF34:
	.string	"tSDP_DISC_ATTR"
.LASF14:
	.string	"UINT16"
.LASF7:
	.string	"unsigned int"
.LASF57:
	.string	"p_service_name"
.LASF75:
	.string	"num_subbands"
.LASF73:
	.string	"ch_mode"
.LASF103:
	.string	"frag"
.LASF113:
	.string	"a2d_sbc_ds_cb"
.LASF16:
	.string	"BOOLEAN"
.LASF32:
	.string	"attr_value"
.LASF110:
	.string	"p_num"
.LASF65:
	.string	"service_uuid"
.LASF21:
	.string	"uuid32"
.LASF15:
	.string	"UINT32"
.LASF12:
	.string	"uint32_t"
.LASF98:
	.string	"p_info"
.LASF48:
	.string	"attr_filters"
.LASF84:
	.string	"num_chnl"
.LASF82:
	.string	"base"
.LASF81:
	.string	"index"
.LASF38:
	.string	"p_next_rec"
.LASF9:
	.string	"long long unsigned int"
.LASF111:
	.string	"bd_addr_any"
.LASF4:
	.string	"__uint16_t"
.LASF70:
	.string	"avdt_sdp_ver"
.LASF88:
	.string	"p_pkt"
.LASF115:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/a2dp/a2d_sbc.c"
.LASF33:
	.string	"tSDP_DISC_ATVAL"
.LASF74:
	.string	"block_len"
.LASF42:
	.string	"mem_size"
.LASF109:
	.string	"p_start"
.LASF49:
	.string	"p_free_mem"
.LASF97:
	.string	"A2D_ParsSbcInfo"
.LASF17:
	.string	"_Bool"
.LASF87:
	.string	"A2D_SbcDescramble"
.LASF71:
	.string	"tA2D_CB"
.LASF67:
	.string	"find"
.LASF59:
	.string	"features"
.LASF19:
	.string	"BD_ADDR"
.LASF24:
	.string	"char"
.LASF22:
	.string	"uuid128"
.LASF47:
	.string	"num_attr_filters"
.LASF53:
	.string	"tSDP_DISCOVERY_DB"
.LASF116:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF46:
	.string	"uuid_filters"
.LASF85:
	.string	"num_subband"
.LASF10:
	.string	"uint8_t"
.LASF95:
	.string	"status"
.LASF62:
	.string	"tA2D_FIND_CBACK"
.LASF118:
	.string	"A2D_BitsSet"
.LASF8:
	.string	"long long int"
.LASF64:
	.string	"p_db"
.LASF69:
	.string	"use_desc"
.LASF61:
	.string	"tA2D_Service"
.LASF63:
	.string	"p_cback"
.LASF72:
	.string	"samp_freq"
.LASF56:
	.string	"provider_len"
.LASF31:
	.string	"attr_len_type"
.LASF100:
	.string	"losc"
.LASF41:
	.string	"tSDP_DISC_REC"
.LASF68:
	.string	"trace_level"
.LASF80:
	.string	"tA2D_SBC_FR_CB"
.LASF40:
	.string	"remote_bd_addr"
.LASF39:
	.string	"time_read"
.LASF54:
	.string	"tA2D_STATUS"
.LASF27:
	.string	"array"
.LASF58:
	.string	"p_provider_name"
.LASF11:
	.string	"uint16_t"
.LASF90:
	.string	"p_last"
.LASF112:
	.string	"bd_addr_null"
.LASF45:
	.string	"num_uuid_filters"
.LASF2:
	.string	"short int"
.LASF106:
	.string	"A2D_ParsSbcMplHdr"
.LASF25:
	.string	"long int"
.LASF99:
	.string	"for_caps"
.LASF37:
	.string	"p_first_attr"
.LASF77:
	.string	"max_bitpool"
.LASF23:
	.string	"tBT_UUID"
.LASF86:
	.string	"A2D_SbcChkFrInit"
.LASF108:
	.string	"p_frag"
.LASF3:
	.string	"__uint8_t"
.LASF78:
	.string	"min_bitpool"
.LASF79:
	.string	"tA2D_SBC_CIE"
.LASF104:
	.string	"start"
.LASF52:
	.string	"raw_used"
.LASF101:
	.string	"A2D_BldSbcMplHdr"
.LASF89:
	.string	"p_cur"
.LASF18:
	.string	"sizetype"
.LASF26:
	.string	"long unsigned int"
.LASF50:
	.string	"raw_data"
.LASF36:
	.string	"t_sdp_disc_rec"
.LASF117:
	.string	"a2d_cb"
.LASF94:
	.string	"p_result"
.LASF1:
	.string	"unsigned char"
.LASF6:
	.string	"__uint32_t"
.LASF60:
	.string	"avdt_version"
.LASF30:
	.string	"attr_id"
.LASF93:
	.string	"p_ie"
.LASF83:
	.string	"tA2D_SBC_DS_CB"
.LASF29:
	.string	"p_next_attr"
.LASF92:
	.string	"media_type"
.LASF44:
	.string	"p_first_rec"
.LASF0:
	.string	"signed char"
.LASF107:
	.string	"p_src"
.LASF5:
	.string	"short unsigned int"
.LASF35:
	.string	"t_sdp_disc_attr"
.LASF13:
	.string	"UINT8"
.LASF76:
	.string	"alloc_mthd"
.LASF66:
	.string	"tA2D_FIND_CB"
.LASF28:
	.string	"p_sub_attr"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
