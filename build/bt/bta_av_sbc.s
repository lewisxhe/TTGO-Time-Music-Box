	.file	"bta_av_sbc.c"
	.text
.Ltext0:
	.section	.text.bta_av_sbc_up_sample_16s,"ax",@progbits
	.literal_position
	.literal .LC0, bta_av_sbc_ups_cb
	.align	4
	.global	bta_av_sbc_up_sample_16s
	.type	bta_av_sbc_up_sample_16s, @function
bta_av_sbc_up_sample_16s:
.LFB13:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/bta/av/bta_av_sbc.c"
	.loc 1 158 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 163 0
	l32r	a7, .LC0
	l32i.n	a11, a7, 4
.LVL2:
	.loc 1 164 0
	l32i.n	a14, a7, 8
.LVL3:
	.loc 1 160 0
	mov.n	a7, a3
	.loc 1 166 0
	j	.L2
.LVL4:
.L4:
	.loc 1 167 0
	l32r	a8, .LC0
	l16ui	a9, a8, 20
	s16i	a9, a7, 0
.LVL5:
	.loc 1 168 0
	l16ui	a9, a8, 22
	s16i	a9, a7, 2
	.loc 1 170 0
	l32i.n	a9, a8, 0
	sub	a9, a9, a11
	s32i.n	a9, a8, 0
	.loc 1 171 0
	addi.n	a5, a5, -1
.LVL6:
	.loc 1 168 0
	addi.n	a7, a7, 4
.LVL7:
.L2:
	.loc 1 166 0
	l32r	a8, .LC0
	l32i.n	a8, a8, 0
	blti	a8, 1, .L3
	.loc 1 166 0 is_stmt 0 discriminator 1
	bnez.n	a5, .L4
.L3:
	.loc 1 174 0 is_stmt 1
	mov.n	a15, a14
	l32r	a8, .LC0
	s32i.n	a14, a8, 0
	.loc 1 159 0
	mov.n	a8, a2
	.loc 1 176 0
	j	.L5
.LVL8:
.L9:
	.loc 1 177 0
	l16ui	a9, a8, 0
	l32r	a4, .LC0
	s16i	a9, a4, 20
	.loc 1 178 0
	addi.n	a13, a8, 4
.LVL9:
	l16ui	a8, a8, 2
	s16i	a8, a4, 22
.L7:
.LVL10:
	.loc 1 181 0 discriminator 2
	l32r	a9, .LC0
	l16ui	a8, a9, 20
	s16i	a8, a7, 0
	.loc 1 182 0 discriminator 2
	addi.n	a10, a7, 4
.LVL11:
	l16ui	a8, a9, 22
	s16i	a8, a7, 2
	.loc 1 184 0 discriminator 2
	l32i.n	a8, a9, 0
	sub	a8, a8, a11
	s32i.n	a8, a9, 0
	.loc 1 185 0 discriminator 2
	addi.n	a5, a5, -1
.LVL12:
	.loc 1 186 0 discriminator 2
	blti	a8, 1, .L6
	.loc 1 182 0 discriminator 1
	mov.n	a7, a10
	.loc 1 186 0 discriminator 1
	bnez.n	a5, .L7
.L6:
	.loc 1 188 0
	add.n	a8, a14, a8
	l32r	a4, .LC0
	s32i.n	a8, a4, 0
	.loc 1 176 0
	mov.n	a4, a12
	.loc 1 182 0
	mov.n	a7, a10
	.loc 1 178 0
	mov.n	a8, a13
.LVL13:
.L5:
	.loc 1 176 0
	addi.n	a12, a4, -1
.LVL14:
	beqz.n	a4, .L8
	.loc 1 176 0 is_stmt 0 discriminator 1
	bnez.n	a5, .L9
.L8:
	.loc 1 191 0 is_stmt 1
	l32r	a4, .LC0
	l32i.n	a4, a4, 0
	bne	a15, a4, .L10
	.loc 1 192 0
	movi.n	a5, 0
.LVL15:
	l32r	a4, .LC0
	s32i.n	a5, a4, 0
.L10:
	.loc 1 195 0
	sub	a2, a8, a2
.LVL16:
	s32i.n	a2, a6, 0
	.loc 1 197 0
	sub	a2, a7, a3
	retw.n
.LFE13:
	.size	bta_av_sbc_up_sample_16s, .-bta_av_sbc_up_sample_16s
	.section	.text.bta_av_sbc_up_sample_16m,"ax",@progbits
	.literal_position
	.literal .LC1, bta_av_sbc_ups_cb
	.align	4
	.global	bta_av_sbc_up_sample_16m
	.type	bta_av_sbc_up_sample_16m, @function
bta_av_sbc_up_sample_16m:
.LFB14:
	.loc 1 219 0
.LVL17:
	entry	sp, 32
.LCFI1:
.LVL18:
	.loc 1 223 0
	l32r	a7, .LC1
	l32i.n	a11, a7, 4
.LVL19:
	.loc 1 224 0
	l32i.n	a14, a7, 8
.LVL20:
	.loc 1 221 0
	mov.n	a7, a3
	.loc 1 226 0
	j	.L12
.LVL21:
.L14:
	.loc 1 227 0
	l32r	a8, .LC1
	l16ui	a9, a8, 20
	s16i	a9, a7, 0
.LVL22:
	.loc 1 228 0
	l16ui	a9, a8, 20
	s16i	a9, a7, 2
	.loc 1 230 0
	l32i.n	a9, a8, 0
	sub	a9, a9, a11
	s32i.n	a9, a8, 0
.LVL23:
	.loc 1 232 0
	addi	a5, a5, -2
.LVL24:
	.loc 1 228 0
	addi.n	a7, a7, 4
.LVL25:
.L12:
	.loc 1 226 0
	l32r	a8, .LC1
	l32i.n	a8, a8, 0
	blti	a8, 1, .L13
	.loc 1 226 0 is_stmt 0 discriminator 1
	bnez.n	a5, .L14
.L13:
	.loc 1 236 0 is_stmt 1
	mov.n	a15, a14
	l32r	a8, .LC1
	s32i.n	a14, a8, 0
	.loc 1 220 0
	mov.n	a8, a2
	.loc 1 238 0
	j	.L15
.LVL26:
.L19:
	.loc 1 239 0
	addi.n	a13, a8, 2
.LVL27:
	l16ui	a8, a8, 0
	l32r	a4, .LC1
	s16i	a8, a4, 20
.L17:
.LVL28:
	.loc 1 242 0 discriminator 2
	l32r	a9, .LC1
	l16ui	a8, a9, 20
	s16i	a8, a7, 0
	.loc 1 243 0 discriminator 2
	addi.n	a10, a7, 4
.LVL29:
	l16ui	a8, a9, 20
	s16i	a8, a7, 2
	.loc 1 245 0 discriminator 2
	l32i.n	a8, a9, 0
	sub	a8, a8, a11
	s32i.n	a8, a9, 0
.LVL30:
	.loc 1 247 0 discriminator 2
	addi	a5, a5, -2
.LVL31:
	.loc 1 249 0 discriminator 2
	blti	a8, 1, .L16
	.loc 1 243 0 discriminator 1
	mov.n	a7, a10
	.loc 1 249 0 discriminator 1
	bnez.n	a5, .L17
.L16:
	.loc 1 251 0
	add.n	a8, a14, a8
	l32r	a4, .LC1
	s32i.n	a8, a4, 0
	.loc 1 238 0
	mov.n	a4, a12
	.loc 1 243 0
	mov.n	a7, a10
	.loc 1 239 0
	mov.n	a8, a13
.LVL32:
.L15:
	.loc 1 238 0
	addi.n	a12, a4, -1
.LVL33:
	beqz.n	a4, .L18
	.loc 1 238 0 is_stmt 0 discriminator 1
	bnez.n	a5, .L19
.L18:
	.loc 1 254 0 is_stmt 1
	l32r	a4, .LC1
	l32i.n	a4, a4, 0
	bne	a15, a4, .L20
	.loc 1 255 0
	movi.n	a5, 0
.LVL34:
	l32r	a4, .LC1
	s32i.n	a5, a4, 0
.L20:
	.loc 1 258 0
	sub	a2, a8, a2
.LVL35:
	s32i.n	a2, a6, 0
	.loc 1 260 0
	sub	a2, a7, a3
	retw.n
.LFE14:
	.size	bta_av_sbc_up_sample_16m, .-bta_av_sbc_up_sample_16m
	.section	.text.bta_av_sbc_up_sample_8s,"ax",@progbits
	.literal_position
	.literal .LC2, bta_av_sbc_ups_cb
	.align	4
	.global	bta_av_sbc_up_sample_8s
	.type	bta_av_sbc_up_sample_8s, @function
bta_av_sbc_up_sample_8s:
.LFB15:
	.loc 1 282 0
.LVL36:
	entry	sp, 32
.LCFI2:
.LVL37:
	.loc 1 287 0
	l32r	a7, .LC2
	l32i.n	a11, a7, 4
.LVL38:
	.loc 1 288 0
	l32i.n	a14, a7, 8
.LVL39:
	.loc 1 284 0
	mov.n	a7, a3
	.loc 1 290 0
	j	.L22
.LVL40:
.L24:
	.loc 1 291 0
	l32r	a8, .LC2
	l16ui	a9, a8, 20
	s16i	a9, a7, 0
.LVL41:
	.loc 1 292 0
	l16ui	a9, a8, 22
	s16i	a9, a7, 2
	.loc 1 294 0
	l32i.n	a9, a8, 0
	sub	a9, a9, a11
	s32i.n	a9, a8, 0
.LVL42:
	.loc 1 296 0
	addi	a5, a5, -2
.LVL43:
	.loc 1 292 0
	addi.n	a7, a7, 4
.LVL44:
.L22:
	.loc 1 290 0
	l32r	a8, .LC2
	l32i.n	a8, a8, 0
	blti	a8, 1, .L23
	.loc 1 290 0 is_stmt 0 discriminator 1
	bnez.n	a5, .L24
.L23:
	.loc 1 299 0 is_stmt 1
	mov.n	a15, a14
	l32r	a8, .LC2
	s32i.n	a14, a8, 0
	.loc 1 283 0
	mov.n	a10, a2
	.loc 1 301 0
	j	.L25
.LVL45:
.L29:
	.loc 1 302 0
	l8ui	a8, a10, 0
	l32r	a9, .LC2
	.loc 1 303 0
	addi	a8, a8, -128
	.loc 1 304 0
	slli	a8, a8, 8
	s16i	a8, a9, 20
	.loc 1 305 0
	addi.n	a13, a10, 2
.LVL46:
	l8ui	a8, a10, 1
	.loc 1 306 0
	addi	a8, a8, -128
	.loc 1 307 0
	slli	a8, a8, 8
	s16i	a8, a9, 22
.L27:
.LVL47:
	.loc 1 310 0 discriminator 2
	l32r	a9, .LC2
	l16ui	a8, a9, 20
	s16i	a8, a7, 0
	.loc 1 311 0 discriminator 2
	addi.n	a10, a7, 4
.LVL48:
	l16ui	a8, a9, 22
	s16i	a8, a7, 2
	.loc 1 313 0 discriminator 2
	l32i.n	a8, a9, 0
	sub	a8, a8, a11
	s32i.n	a8, a9, 0
.LVL49:
	.loc 1 315 0 discriminator 2
	addi	a5, a5, -2
.LVL50:
	.loc 1 316 0 discriminator 2
	blti	a8, 1, .L26
	.loc 1 311 0 discriminator 1
	mov.n	a7, a10
	.loc 1 316 0 discriminator 1
	bnez.n	a5, .L27
.L26:
	.loc 1 318 0
	add.n	a8, a14, a8
	l32r	a4, .LC2
	s32i.n	a8, a4, 0
	.loc 1 301 0
	mov.n	a4, a12
	.loc 1 311 0
	mov.n	a7, a10
	.loc 1 305 0
	mov.n	a10, a13
.LVL51:
.L25:
	.loc 1 301 0
	addi.n	a12, a4, -1
.LVL52:
	beqz.n	a4, .L28
	.loc 1 301 0 is_stmt 0 discriminator 1
	bnez.n	a5, .L29
.L28:
	.loc 1 321 0 is_stmt 1
	l32r	a4, .LC2
	l32i.n	a4, a4, 0
	bne	a15, a4, .L30
	.loc 1 322 0
	movi.n	a5, 0
.LVL53:
	l32r	a4, .LC2
	s32i.n	a5, a4, 0
.L30:
	.loc 1 325 0
	sub	a2, a10, a2
.LVL54:
	s32i.n	a2, a6, 0
	.loc 1 327 0
	sub	a2, a7, a3
	retw.n
.LFE15:
	.size	bta_av_sbc_up_sample_8s, .-bta_av_sbc_up_sample_8s
	.section	.text.bta_av_sbc_up_sample_8m,"ax",@progbits
	.literal_position
	.literal .LC3, bta_av_sbc_ups_cb
	.align	4
	.global	bta_av_sbc_up_sample_8m
	.type	bta_av_sbc_up_sample_8m, @function
bta_av_sbc_up_sample_8m:
.LFB16:
	.loc 1 349 0
.LVL55:
	entry	sp, 32
.LCFI3:
.LVL56:
	.loc 1 353 0
	l32r	a7, .LC3
	l32i.n	a11, a7, 4
.LVL57:
	.loc 1 354 0
	l32i.n	a14, a7, 8
.LVL58:
	.loc 1 351 0
	mov.n	a7, a3
	.loc 1 356 0
	j	.L32
.LVL59:
.L34:
	.loc 1 357 0
	l32r	a8, .LC3
	l16ui	a9, a8, 20
	s16i	a9, a7, 0
.LVL60:
	.loc 1 358 0
	l16ui	a9, a8, 20
	s16i	a9, a7, 2
	.loc 1 360 0
	l32i.n	a9, a8, 0
	sub	a9, a9, a11
	s32i.n	a9, a8, 0
	.loc 1 361 0
	addi	a5, a5, -4
.LVL61:
	.loc 1 358 0
	addi.n	a7, a7, 4
.LVL62:
.L32:
	.loc 1 356 0
	l32r	a8, .LC3
	l32i.n	a8, a8, 0
	blti	a8, 1, .L33
	.loc 1 356 0 is_stmt 0 discriminator 1
	bnez.n	a5, .L34
.L33:
	.loc 1 365 0 is_stmt 1
	mov.n	a15, a14
	l32r	a8, .LC3
	s32i.n	a14, a8, 0
	.loc 1 350 0
	mov.n	a8, a2
	.loc 1 367 0
	j	.L35
.LVL63:
.L39:
	.loc 1 368 0
	addi.n	a13, a8, 1
.LVL64:
	l8ui	a8, a8, 0
	.loc 1 369 0
	addi	a8, a8, -128
	.loc 1 370 0
	slli	a8, a8, 8
	l32r	a4, .LC3
	s16i	a8, a4, 20
.L37:
.LVL65:
	.loc 1 373 0 discriminator 2
	l32r	a9, .LC3
	l16ui	a8, a9, 20
	s16i	a8, a7, 0
	.loc 1 374 0 discriminator 2
	addi.n	a10, a7, 4
.LVL66:
	l16ui	a8, a9, 20
	s16i	a8, a7, 2
	.loc 1 376 0 discriminator 2
	l32i.n	a8, a9, 0
	sub	a8, a8, a11
	s32i.n	a8, a9, 0
	.loc 1 377 0 discriminator 2
	addi	a5, a5, -4
.LVL67:
	.loc 1 379 0 discriminator 2
	blti	a8, 1, .L36
	.loc 1 374 0 discriminator 1
	mov.n	a7, a10
	.loc 1 379 0 discriminator 1
	bnez.n	a5, .L37
.L36:
	.loc 1 381 0
	add.n	a8, a14, a8
	l32r	a4, .LC3
	s32i.n	a8, a4, 0
	.loc 1 367 0
	mov.n	a4, a12
	.loc 1 374 0
	mov.n	a7, a10
	.loc 1 368 0
	mov.n	a8, a13
.LVL68:
.L35:
	.loc 1 367 0
	addi.n	a12, a4, -1
.LVL69:
	beqz.n	a4, .L38
	.loc 1 367 0 is_stmt 0 discriminator 1
	bnez.n	a5, .L39
.L38:
	.loc 1 384 0 is_stmt 1
	l32r	a4, .LC3
	l32i.n	a4, a4, 0
	bne	a15, a4, .L40
	.loc 1 385 0
	movi.n	a5, 0
.LVL70:
	l32r	a4, .LC3
	s32i.n	a5, a4, 0
.L40:
	.loc 1 388 0
	sub	a2, a8, a2
.LVL71:
	s32i.n	a2, a6, 0
	.loc 1 390 0
	sub	a2, a7, a3
	retw.n
.LFE16:
	.size	bta_av_sbc_up_sample_8m, .-bta_av_sbc_up_sample_8m
	.section	.text.bta_av_sbc_init_up_sample,"ax",@progbits
	.literal_position
	.literal .LC4, bta_av_sbc_ups_cb
	.literal .LC5, bta_av_sbc_up_sample_8m
	.literal .LC6, bta_av_sbc_up_sample_16m
	.literal .LC7, bta_av_sbc_up_sample_8s
	.literal .LC8, bta_av_sbc_up_sample_16s
	.align	4
	.global	bta_av_sbc_init_up_sample
	.type	bta_av_sbc_init_up_sample, @function
bta_av_sbc_init_up_sample:
.LFB11:
	.loc 1 68 0
.LVL72:
	entry	sp, 32
.LCFI4:
	extui	a4, a4, 0, 16
	extui	a5, a5, 0, 16
	.loc 1 69 0
	l32r	a8, .LC4
	movi.n	a9, -1
	s32i.n	a9, a8, 0
	.loc 1 70 0
	s32i.n	a2, a8, 4
	.loc 1 71 0
	s32i.n	a3, a8, 8
	.loc 1 72 0
	s16i	a4, a8, 16
	.loc 1 73 0
	s16i	a5, a8, 18
	.loc 1 75 0
	bnei	a5, 1, .L42
	.loc 1 77 0
	bnei	a4, 8, .L43
	.loc 1 78 0
	mov.n	a4, a8
.LVL73:
	l32r	a5, .LC5
.LVL74:
	s32i.n	a5, a8, 12
	.loc 1 79 0
	movi.n	a5, 1
	s8i	a5, a8, 24
	retw.n
.L43:
	.loc 1 81 0
	l32r	a4, .LC4
	l32r	a5, .LC6
	s32i.n	a5, a4, 12
	.loc 1 82 0
	movi.n	a5, 2
	s8i	a5, a4, 24
	retw.n
.L42:
	.loc 1 86 0
	bnei	a4, 8, .L45
	.loc 1 87 0
	l32r	a4, .LC4
	l32r	a5, .LC7
	s32i.n	a5, a4, 12
	.loc 1 88 0
	movi.n	a5, 2
	s8i	a5, a4, 24
	retw.n
.L45:
	.loc 1 90 0
	l32r	a4, .LC4
	l32r	a5, .LC8
	s32i.n	a5, a4, 12
	.loc 1 91 0
	movi.n	a5, 4
	s8i	a5, a4, 24
	retw.n
.LFE11:
	.size	bta_av_sbc_init_up_sample, .-bta_av_sbc_init_up_sample
	.section	.text.bta_av_sbc_up_sample,"ax",@progbits
	.literal_position
	.literal .LC9, bta_av_sbc_ups_cb
	.align	4
	.global	bta_av_sbc_up_sample
	.type	bta_av_sbc_up_sample, @function
bta_av_sbc_up_sample:
.LFB12:
	.loc 1 124 0
.LVL75:
	entry	sp, 32
.LCFI5:
	.loc 1 128 0
	l32r	a8, .LC9
	l32i.n	a8, a8, 12
	beqz.n	a8, .L47
	.loc 1 129 0
	l32r	a9, .LC9
	l8ui	a12, a9, 24
.LVL76:
	.loc 1 131 0
	mov.n	a14, a6
	quou	a13, a5, a12
.LVL77:
	quou	a12, a4, a12
.LVL78:
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a8
.LVL79:
	mov.n	a2, a10
.LVL80:
	retw.n
.LVL81:
.L47:
	.loc 1 133 0
	movi.n	a2, 0
.LVL82:
	s32i.n	a2, a6, 0
	.loc 1 136 0
	retw.n
.LFE12:
	.size	bta_av_sbc_up_sample, .-bta_av_sbc_up_sample
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC11:
	.string	"BT_APPL"
	.align	4
.LC13:
	.string	"\033[0;31mE (%d) %s: bta_av_sbc_cfg_for_cap: ch_mode(0x%02X) not supported\033[0m\n"
	.align	4
.LC15:
	.string	"\033[0;31mE (%d) %s: bta_av_sbc_cfg_for_cap: samp_freq(0x%02X) not supported\033[0m\n"
	.align	4
.LC17:
	.string	"\033[0;31mE (%d) %s: bta_av_sbc_cfg_for_cap: block_len(0x%02X) not supported\033[0m\n"
	.align	4
.LC19:
	.string	"\033[0;31mE (%d) %s: bta_av_sbc_cfg_for_cap: num_subbands(0x%02X) not supported\033[0m\n"
	.align	4
.LC21:
	.string	"\033[0;31mE (%d) %s: bta_av_sbc_cfg_for_cap: alloc_mthd(0x%02X) not supported\033[0m\n"
	.section	.text.bta_av_sbc_cfg_for_cap,"ax",@progbits
	.literal_position
	.literal .LC10, appl_trace_level
	.literal .LC12, .LC11
	.literal .LC14, .LC13
	.literal .LC16, .LC15
	.literal .LC18, .LC17
	.literal .LC20, .LC19
	.literal .LC22, .LC21
	.align	4
	.global	bta_av_sbc_cfg_for_cap
	.type	bta_av_sbc_cfg_for_cap, @function
bta_av_sbc_cfg_for_cap:
.LFB17:
	.loc 1 409 0
.LVL83:
	entry	sp, 48
.LCFI6:
.LVL84:
	.loc 1 415 0
	movi.n	a12, 1
	mov.n	a11, a2
	mov.n	a10, sp
	call8	A2D_ParsSbcInfo
.LVL85:
	mov.n	a3, a10
.LVL86:
	bnez.n	a10, .L63
	.loc 1 420 0
	l8ui	a9, sp, 1
	l8ui	a8, a4, 1
	bnone	a9, a8, .L51
	.loc 1 421 0
	s8i	a8, sp, 1
	.loc 1 428 0
	l8ui	a9, sp, 0
	l8ui	a8, a4, 0
	bany	a9, a8, .L52
	j	.L70
.L51:
	.loc 1 423 0
	l32r	a2, .LC10
.LVL87:
	l8ui	a2, a2, 0
	beqz.n	a2, .L64
	.loc 1 423 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL88:
	l32r	a11, .LC12
	l8ui	a15, a4, 1
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC14
	movi.n	a10, 1
	call8	esp_log_write
.LVL89:
	.loc 1 424 0 is_stmt 1 discriminator 1
	movi.n	a2, 0xa
	retw.n
.LVL90:
.L52:
	.loc 1 429 0
	s8i	a8, sp, 0
	.loc 1 436 0
	l8ui	a9, sp, 2
	l8ui	a8, a4, 2
	bany	a9, a8, .L54
	j	.L71
.L70:
	.loc 1 431 0
	l32r	a2, .LC10
.LVL91:
	l8ui	a2, a2, 0
	beqz.n	a2, .L65
	.loc 1 431 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL92:
	l32r	a11, .LC12
	l8ui	a15, a4, 0
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC16
	movi.n	a10, 1
	call8	esp_log_write
.LVL93:
	.loc 1 432 0 is_stmt 1 discriminator 1
	movi.n	a2, 0xa
	retw.n
.LVL94:
.L54:
	.loc 1 437 0
	s8i	a8, sp, 2
	.loc 1 444 0
	l8ui	a9, sp, 3
	l8ui	a8, a4, 3
	bany	a9, a8, .L56
	j	.L72
.L71:
	.loc 1 439 0
	l32r	a2, .LC10
.LVL95:
	l8ui	a2, a2, 0
	beqz.n	a2, .L66
	.loc 1 439 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL96:
	l32r	a11, .LC12
	l8ui	a15, a4, 2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC18
	movi.n	a10, 1
	call8	esp_log_write
.LVL97:
	.loc 1 440 0 is_stmt 1 discriminator 1
	movi.n	a2, 0xa
	retw.n
.LVL98:
.L56:
	.loc 1 445 0
	s8i	a8, sp, 3
	.loc 1 452 0
	l8ui	a9, sp, 4
	l8ui	a8, a4, 4
	bany	a9, a8, .L58
	j	.L73
.L72:
	.loc 1 447 0
	l32r	a2, .LC10
.LVL99:
	l8ui	a2, a2, 0
	beqz.n	a2, .L67
	.loc 1 447 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL100:
	l32r	a11, .LC12
	l8ui	a15, a4, 3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC20
	movi.n	a10, 1
	call8	esp_log_write
.LVL101:
	.loc 1 448 0 is_stmt 1 discriminator 1
	movi.n	a2, 0xa
	retw.n
.LVL102:
.L58:
	.loc 1 453 0
	s8i	a8, sp, 4
	.loc 1 460 0
	l8ui	a8, a4, 5
	bnez.n	a8, .L60
	j	.L61
.L73:
	.loc 1 455 0
	l32r	a2, .LC10
.LVL103:
	l8ui	a2, a2, 0
	beqz.n	a2, .L68
	.loc 1 455 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL104:
	l32r	a11, .LC12
	l8ui	a15, a4, 4
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC22
	movi.n	a10, 1
	call8	esp_log_write
.LVL105:
	.loc 1 456 0 is_stmt 1 discriminator 1
	movi.n	a2, 0xa
	retw.n
.LVL106:
.L60:
	.loc 1 460 0 discriminator 1
	l8ui	a9, sp, 5
	bgeu	a8, a9, .L61
	.loc 1 461 0
	s8i	a8, sp, 5
.L61:
	.loc 1 465 0
	l8ui	a4, a4, 6
.LVL107:
	beqz.n	a4, .L62
	.loc 1 465 0 is_stmt 0 discriminator 1
	l8ui	a8, sp, 6
	bgeu	a8, a4, .L62
	.loc 1 466 0 is_stmt 1
	s8i	a4, sp, 6
.L62:
	.loc 1 469 0
	bnez.n	a3, .L69
	.loc 1 471 0
	mov.n	a12, a2
	mov.n	a11, sp
	movi.n	a10, 0
	call8	A2D_BldSbcInfo
.LVL108:
	.loc 1 473 0
	mov.n	a2, a3
.LVL109:
	retw.n
.LVL110:
.L63:
	.loc 1 416 0
	mov.n	a2, a10
.LVL111:
	retw.n
.L64:
	.loc 1 424 0
	movi.n	a2, 0xa
	retw.n
.L65:
	.loc 1 432 0
	movi.n	a2, 0xa
	retw.n
.L66:
	.loc 1 440 0
	movi.n	a2, 0xa
	retw.n
.L67:
	.loc 1 448 0
	movi.n	a2, 0xa
	retw.n
.L68:
	.loc 1 456 0
	movi.n	a2, 0xa
	retw.n
.LVL112:
.L69:
	.loc 1 473 0
	mov.n	a2, a3
.LVL113:
	.loc 1 474 0
	retw.n
.LFE17:
	.size	bta_av_sbc_cfg_for_cap, .-bta_av_sbc_cfg_for_cap
	.section	.rodata.str1.4
	.align	4
.LC25:
	.string	"\033[0;31mE (%d) %s:  bta_av_sbc_cfg_matches_cap Parsing Failed %d\033[0m\n"
	.section	.text.bta_av_sbc_cfg_matches_cap,"ax",@progbits
	.literal_position
	.literal .LC23, appl_trace_level
	.literal .LC24, .LC11
	.literal .LC26, .LC25
	.align	4
	.global	bta_av_sbc_cfg_matches_cap
	.type	bta_av_sbc_cfg_matches_cap, @function
bta_av_sbc_cfg_matches_cap:
.LFB18:
	.loc 1 487 0
.LVL114:
	entry	sp, 48
.LCFI7:
.LVL115:
	.loc 1 492 0
	movi.n	a12, 1
	mov.n	a11, a2
	mov.n	a10, sp
	call8	A2D_ParsSbcInfo
.LVL116:
	mov.n	a2, a10
.LVL117:
	beqz.n	a10, .L75
	.loc 1 493 0
	l32r	a3, .LC23
.LVL118:
	l8ui	a3, a3, 0
	beqz.n	a3, .L76
	.loc 1 493 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL119:
	l32r	a11, .LC24
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC26
	movi.n	a10, 1
	call8	esp_log_write
.LVL120:
	retw.n
.LVL121:
.L75:
	.loc 1 508 0 is_stmt 1
	l8ui	a9, sp, 0
	l8ui	a8, a3, 0
	bnone	a9, a8, .L77
	.loc 1 512 0
	l8ui	a9, sp, 1
	l8ui	a8, a3, 1
	bnone	a9, a8, .L78
	.loc 1 516 0
	l8ui	a9, sp, 2
	l8ui	a8, a3, 2
	bnone	a9, a8, .L79
	.loc 1 520 0
	l8ui	a9, sp, 3
	l8ui	a8, a3, 3
	bnone	a9, a8, .L80
	.loc 1 524 0
	l8ui	a9, sp, 4
	l8ui	a8, a3, 4
	bnone	a9, a8, .L81
	.loc 1 528 0
	l8ui	a8, sp, 5
	l8ui	a9, a3, 5
	bltu	a9, a8, .L82
	.loc 1 532 0
	l8ui	a8, sp, 6
	l8ui	a3, a3, 6
.LVL122:
	bltu	a8, a3, .L83
	retw.n
.LVL123:
.L77:
	.loc 1 509 0
	movi	a2, 0xc4
.LVL124:
	retw.n
.LVL125:
.L78:
	.loc 1 513 0
	movi	a2, 0xc6
.LVL126:
	retw.n
.LVL127:
.L79:
	.loc 1 517 0
	movi	a2, 0xdd
.LVL128:
	retw.n
.LVL129:
.L80:
	.loc 1 521 0
	movi	a2, 0xc8
.LVL130:
	retw.n
.LVL131:
.L81:
	.loc 1 525 0
	movi	a2, 0xca
.LVL132:
	retw.n
.LVL133:
.L82:
	.loc 1 529 0
	movi	a2, 0xce
.LVL134:
	retw.n
.LVL135:
.L83:
	.loc 1 533 0
	movi	a2, 0xcc
.LVL136:
.L76:
	.loc 1 537 0
	retw.n
.LFE18:
	.size	bta_av_sbc_cfg_matches_cap, .-bta_av_sbc_cfg_matches_cap
	.section	.text.bta_av_sbc_cfg_in_cap,"ax",@progbits
	.align	4
	.global	bta_av_sbc_cfg_in_cap
	.type	bta_av_sbc_cfg_in_cap, @function
bta_av_sbc_cfg_in_cap:
.LFB19:
	.loc 1 551 0
.LVL137:
	entry	sp, 48
.LCFI8:
.LVL138:
	.loc 1 556 0
	movi.n	a12, 0
	mov.n	a11, a2
	mov.n	a10, sp
	call8	A2D_ParsSbcInfo
.LVL139:
	bnez.n	a10, .L85
	.loc 1 564 0
	l8ui	a9, sp, 0
	l8ui	a8, a3, 0
	bnone	a9, a8, .L86
	.loc 1 568 0
	l8ui	a9, sp, 1
	l8ui	a8, a3, 1
	bnone	a9, a8, .L87
	.loc 1 572 0
	l8ui	a9, sp, 2
	l8ui	a8, a3, 2
	bnone	a9, a8, .L88
	.loc 1 576 0
	l8ui	a9, sp, 3
	l8ui	a8, a3, 3
	bnone	a9, a8, .L89
	.loc 1 580 0
	l8ui	a9, sp, 4
	l8ui	a8, a3, 4
	bnone	a9, a8, .L90
	.loc 1 584 0
	l8ui	a8, sp, 5
	l8ui	a9, a3, 5
	bltu	a9, a8, .L91
	.loc 1 588 0
	l8ui	a8, sp, 6
	l8ui	a3, a3, 6
.LVL140:
	bltu	a8, a3, .L92
	j	.L85
.LVL141:
.L86:
	.loc 1 565 0
	movi	a10, 0xc4
.LVL142:
	j	.L85
.LVL143:
.L87:
	.loc 1 569 0
	movi	a10, 0xc6
.LVL144:
	j	.L85
.LVL145:
.L88:
	.loc 1 573 0
	movi	a10, 0xdd
.LVL146:
	j	.L85
.LVL147:
.L89:
	.loc 1 577 0
	movi	a10, 0xc8
.LVL148:
	j	.L85
.LVL149:
.L90:
	.loc 1 581 0
	movi	a10, 0xca
.LVL150:
	j	.L85
.LVL151:
.L91:
	.loc 1 585 0
	movi	a10, 0xce
.LVL152:
	j	.L85
.LVL153:
.L92:
	.loc 1 589 0
	movi	a10, 0xcc
.LVL154:
.L85:
	.loc 1 593 0
	mov.n	a2, a10
.LVL155:
	retw.n
.LFE19:
	.size	bta_av_sbc_cfg_in_cap, .-bta_av_sbc_cfg_in_cap
	.section	.text.bta_av_sbc_bld_hdr,"ax",@progbits
	.align	4
	.global	bta_av_sbc_bld_hdr
	.type	bta_av_sbc_bld_hdr, @function
bta_av_sbc_bld_hdr:
.LFB20:
	.loc 1 605 0
.LVL156:
	entry	sp, 32
.LCFI9:
	.loc 1 608 0
	l16ui	a8, a2, 4
	addi.n	a8, a8, -1
	extui	a8, a8, 0, 16
	s16i	a8, a2, 4
	.loc 1 609 0
	addi.n	a10, a8, 8
.LVL157:
	.loc 1 610 0
	l16ui	a9, a2, 2
	addi.n	a9, a9, 1
	s16i	a9, a2, 2
	.loc 1 611 0
	extui	a14, a3, 0, 8
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	add.n	a10, a2, a10
.LVL158:
	call8	A2D_BldSbcMplHdr
.LVL159:
	retw.n
.LFE20:
	.size	bta_av_sbc_bld_hdr, .-bta_av_sbc_bld_hdr
	.comm	bta_av_sbc_ups_cb,28,4
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
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI0-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI1-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI2-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI3-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI4-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI5-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI6-.LFB17
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI7-.LFB18
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI8-.LFB19
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI9-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/a2d_sbc.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/common/include/common/bt_trace.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xa8b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0xc
	.4byte	.LASF95
	.4byte	.LASF96
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x12
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x15
	.4byte	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x16
	.4byte	0x62
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x19
	.4byte	0x74
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x1a
	.4byte	0x25
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x15
	.4byte	0x33
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x20
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x21
	.4byte	0x57
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x2c
	.4byte	0x69
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x2d
	.4byte	0x7b
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x21
	.4byte	0x94
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x22
	.4byte	0xaa
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x23
	.4byte	0xc0
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x27
	.4byte	0x9f
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0x28
	.4byte	0xb5
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF22
	.uleb128 0x5
	.byte	0x8
	.byte	0x4
	.byte	0xc6
	.4byte	0x14e
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x4
	.byte	0xc7
	.4byte	0xaa
	.byte	0
	.uleb128 0x7
	.string	"len"
	.byte	0x4
	.byte	0xc8
	.4byte	0xaa
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x4
	.byte	0xc9
	.4byte	0xaa
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x4
	.byte	0xca
	.4byte	0xaa
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x4
	.byte	0xcb
	.4byte	0x14e
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.4byte	0x94
	.4byte	0x15d
	.uleb128 0x9
	.4byte	0x15d
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF27
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x4
	.byte	0xcc
	.4byte	0x109
	.uleb128 0x8
	.4byte	0xcb
	.4byte	0x17f
	.uleb128 0xa
	.4byte	0x15d
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xcb
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF29
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF30
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF31
	.uleb128 0xd
	.byte	0x4
	.4byte	0x25
	.byte	0x7
	.byte	0x1f
	.4byte	0x1cd
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF34
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF35
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF36
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF37
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.byte	0x7
	.byte	0x5
	.byte	0x4d
	.4byte	0x22a
	.uleb128 0x6
	.4byte	.LASF38
	.byte	0x5
	.byte	0x4e
	.4byte	0xcb
	.byte	0
	.uleb128 0x6
	.4byte	.LASF39
	.byte	0x5
	.byte	0x4f
	.4byte	0xcb
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF40
	.byte	0x5
	.byte	0x50
	.4byte	0xcb
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF41
	.byte	0x5
	.byte	0x51
	.4byte	0xcb
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF42
	.byte	0x5
	.byte	0x52
	.4byte	0xcb
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF43
	.byte	0x5
	.byte	0x53
	.4byte	0xcb
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF44
	.byte	0x5
	.byte	0x54
	.4byte	0xcb
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0x5
	.byte	0x55
	.4byte	0x1cd
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0x1
	.byte	0x23
	.4byte	0x240
	.uleb128 0xf
	.4byte	0x74
	.4byte	0x263
	.uleb128 0x10
	.4byte	0x18c
	.uleb128 0x10
	.4byte	0x18c
	.uleb128 0x10
	.4byte	0xe1
	.uleb128 0x10
	.4byte	0xe1
	.uleb128 0x10
	.4byte	0x263
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xe1
	.uleb128 0x5
	.byte	0x1c
	.byte	0x1
	.byte	0x27
	.4byte	0x2de
	.uleb128 0x6
	.4byte	.LASF47
	.byte	0x1
	.byte	0x28
	.4byte	0xf7
	.byte	0
	.uleb128 0x6
	.4byte	.LASF48
	.byte	0x1
	.byte	0x29
	.4byte	0xe1
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF49
	.byte	0x1
	.byte	0x2a
	.4byte	0xe1
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF50
	.byte	0x1
	.byte	0x2b
	.4byte	0x2de
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF51
	.byte	0x1
	.byte	0x2c
	.4byte	0xd6
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF52
	.byte	0x1
	.byte	0x2d
	.4byte	0xd6
	.byte	0x12
	.uleb128 0x6
	.4byte	.LASF53
	.byte	0x1
	.byte	0x2e
	.4byte	0xec
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF54
	.byte	0x1
	.byte	0x2f
	.4byte	0xec
	.byte	0x16
	.uleb128 0x7
	.string	"div"
	.byte	0x1
	.byte	0x30
	.4byte	0xcb
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x235
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0x1
	.byte	0x31
	.4byte	0x269
	.uleb128 0x11
	.4byte	.LASF65
	.byte	0x1
	.byte	0x9b
	.4byte	0x74
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3ac
	.uleb128 0x12
	.4byte	.LASF56
	.byte	0x1
	.byte	0x9b
	.4byte	0x18c
	.4byte	.LLST0
	.uleb128 0x13
	.4byte	.LASF57
	.byte	0x1
	.byte	0x9b
	.4byte	0x18c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x12
	.4byte	.LASF58
	.byte	0x1
	.byte	0x9c
	.4byte	0xe1
	.4byte	.LLST1
	.uleb128 0x12
	.4byte	.LASF59
	.byte	0x1
	.byte	0x9c
	.4byte	0xe1
	.4byte	.LLST2
	.uleb128 0x13
	.4byte	.LASF60
	.byte	0x1
	.byte	0x9d
	.4byte	0x263
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x14
	.4byte	.LASF61
	.byte	0x1
	.byte	0x9f
	.4byte	0x3ac
	.4byte	.LLST3
	.uleb128 0x14
	.4byte	.LASF62
	.byte	0x1
	.byte	0xa0
	.4byte	0x3ac
	.4byte	.LLST4
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x1
	.byte	0xa1
	.4byte	0x3ac
	.uleb128 0x6
	.byte	0x3
	.4byte	bta_av_sbc_ups_cb+20
	.byte	0x9f
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x1
	.byte	0xa2
	.4byte	0x3ac
	.uleb128 0x6
	.byte	0x3
	.4byte	bta_av_sbc_ups_cb+22
	.byte	0x9f
	.uleb128 0x15
	.4byte	.LASF48
	.byte	0x1
	.byte	0xa3
	.4byte	0xe1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x15
	.4byte	.LASF49
	.byte	0x1
	.byte	0xa4
	.4byte	0xe1
	.uleb128 0x1
	.byte	0x5e
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xec
	.uleb128 0x11
	.4byte	.LASF66
	.byte	0x1
	.byte	0xd8
	.4byte	0x74
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x45d
	.uleb128 0x12
	.4byte	.LASF56
	.byte	0x1
	.byte	0xd8
	.4byte	0x18c
	.4byte	.LLST5
	.uleb128 0x13
	.4byte	.LASF57
	.byte	0x1
	.byte	0xd8
	.4byte	0x18c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x12
	.4byte	.LASF58
	.byte	0x1
	.byte	0xd9
	.4byte	0xe1
	.4byte	.LLST6
	.uleb128 0x12
	.4byte	.LASF59
	.byte	0x1
	.byte	0xd9
	.4byte	0xe1
	.4byte	.LLST7
	.uleb128 0x13
	.4byte	.LASF60
	.byte	0x1
	.byte	0xda
	.4byte	0x263
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x14
	.4byte	.LASF61
	.byte	0x1
	.byte	0xdc
	.4byte	0x3ac
	.4byte	.LLST8
	.uleb128 0x14
	.4byte	.LASF62
	.byte	0x1
	.byte	0xdd
	.4byte	0x3ac
	.4byte	.LLST9
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x1
	.byte	0xde
	.4byte	0x3ac
	.uleb128 0x6
	.byte	0x3
	.4byte	bta_av_sbc_ups_cb+20
	.byte	0x9f
	.uleb128 0x15
	.4byte	.LASF48
	.byte	0x1
	.byte	0xdf
	.4byte	0xe1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x15
	.4byte	.LASF49
	.byte	0x1
	.byte	0xe0
	.4byte	0xe1
	.uleb128 0x1
	.byte	0x5e
	.byte	0
	.uleb128 0x16
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x117
	.4byte	0x74
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x526
	.uleb128 0x17
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x117
	.4byte	0x18c
	.4byte	.LLST10
	.uleb128 0x18
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x117
	.4byte	0x18c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x17
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x118
	.4byte	0xe1
	.4byte	.LLST11
	.uleb128 0x17
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x118
	.4byte	0xe1
	.4byte	.LLST12
	.uleb128 0x18
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x119
	.4byte	0x263
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x19
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x11b
	.4byte	0x17f
	.4byte	.LLST13
	.uleb128 0x19
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x11c
	.4byte	0x3ac
	.4byte	.LLST14
	.uleb128 0x1a
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x11d
	.4byte	0x3ac
	.uleb128 0x6
	.byte	0x3
	.4byte	bta_av_sbc_ups_cb+20
	.byte	0x9f
	.uleb128 0x1a
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x11e
	.4byte	0x3ac
	.uleb128 0x6
	.byte	0x3
	.4byte	bta_av_sbc_ups_cb+22
	.byte	0x9f
	.uleb128 0x1a
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x11f
	.4byte	0xe1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1a
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x120
	.4byte	0xe1
	.uleb128 0x1
	.byte	0x5e
	.byte	0
	.uleb128 0x16
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x15a
	.4byte	0x74
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5dc
	.uleb128 0x17
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x15a
	.4byte	0x18c
	.4byte	.LLST15
	.uleb128 0x18
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x15a
	.4byte	0x18c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x17
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x15b
	.4byte	0xe1
	.4byte	.LLST16
	.uleb128 0x17
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x15b
	.4byte	0xe1
	.4byte	.LLST17
	.uleb128 0x18
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x15c
	.4byte	0x263
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x19
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x15e
	.4byte	0x17f
	.4byte	.LLST18
	.uleb128 0x19
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x15f
	.4byte	0x3ac
	.4byte	.LLST19
	.uleb128 0x1a
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x160
	.4byte	0x3ac
	.uleb128 0x6
	.byte	0x3
	.4byte	bta_av_sbc_ups_cb+20
	.byte	0x9f
	.uleb128 0x1a
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x161
	.4byte	0xe1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1a
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x162
	.4byte	0xe1
	.uleb128 0x1
	.byte	0x5e
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF81
	.byte	0x1
	.byte	0x43
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x62a
	.uleb128 0x13
	.4byte	.LASF48
	.byte	0x1
	.byte	0x43
	.4byte	0xe1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x13
	.4byte	.LASF49
	.byte	0x1
	.byte	0x43
	.4byte	0xe1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x12
	.4byte	.LASF51
	.byte	0x1
	.byte	0x43
	.4byte	0xd6
	.4byte	.LLST20
	.uleb128 0x12
	.4byte	.LASF52
	.byte	0x1
	.byte	0x43
	.4byte	0xd6
	.4byte	.LLST21
	.byte	0
	.uleb128 0x11
	.4byte	.LASF70
	.byte	0x1
	.byte	0x79
	.4byte	0x74
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6bd
	.uleb128 0x12
	.4byte	.LASF56
	.byte	0x1
	.byte	0x79
	.4byte	0x18c
	.4byte	.LLST22
	.uleb128 0x13
	.4byte	.LASF57
	.byte	0x1
	.byte	0x79
	.4byte	0x18c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x13
	.4byte	.LASF58
	.byte	0x1
	.byte	0x7a
	.4byte	0xe1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x13
	.4byte	.LASF59
	.byte	0x1
	.byte	0x7a
	.4byte	0xe1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x13
	.4byte	.LASF60
	.byte	0x1
	.byte	0x7b
	.4byte	0x263
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1c
	.string	"src"
	.byte	0x1
	.byte	0x7d
	.4byte	0xe1
	.4byte	.LLST23
	.uleb128 0x1c
	.string	"dst"
	.byte	0x1
	.byte	0x7e
	.4byte	0xe1
	.4byte	.LLST24
	.uleb128 0x1d
	.4byte	.LVL79
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
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x198
	.4byte	0xcb
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x874
	.uleb128 0x17
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x198
	.4byte	0x17f
	.4byte	.LLST25
	.uleb128 0x17
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x198
	.4byte	0x874
	.4byte	.LLST26
	.uleb128 0x17
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x198
	.4byte	0x874
	.4byte	.LLST27
	.uleb128 0x19
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x19a
	.4byte	0xcb
	.4byte	.LLST28
	.uleb128 0x1a
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x19b
	.4byte	0x22a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.4byte	.LVL85
	.4byte	0xa57
	.4byte	0x745
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x20
	.4byte	.LVL88
	.4byte	0xa62
	.uleb128 0x1f
	.4byte	.LVL89
	.4byte	0xa6d
	.4byte	0x77c
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.uleb128 0x20
	.4byte	.LVL92
	.4byte	0xa62
	.uleb128 0x1f
	.4byte	.LVL93
	.4byte	0xa6d
	.4byte	0x7b3
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.uleb128 0x20
	.4byte	.LVL96
	.4byte	0xa62
	.uleb128 0x1f
	.4byte	.LVL97
	.4byte	0xa6d
	.4byte	0x7ea
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.uleb128 0x20
	.4byte	.LVL100
	.4byte	0xa62
	.uleb128 0x1f
	.4byte	.LVL101
	.4byte	0xa6d
	.4byte	0x821
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.uleb128 0x20
	.4byte	.LVL104
	.4byte	0xa62
	.uleb128 0x1f
	.4byte	.LVL105
	.4byte	0xa6d
	.4byte	0x858
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.uleb128 0x21
	.4byte	.LVL108
	.4byte	0xa78
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x22a
	.uleb128 0x16
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x1e6
	.4byte	0xcb
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x92c
	.uleb128 0x17
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x1e6
	.4byte	0x17f
	.4byte	.LLST29
	.uleb128 0x17
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x1e6
	.4byte	0x874
	.4byte	.LLST30
	.uleb128 0x19
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x1e8
	.4byte	0xcb
	.4byte	.LLST31
	.uleb128 0x1a
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x1e9
	.4byte	0x22a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.4byte	.LVL116
	.4byte	0xa57
	.4byte	0x8f2
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x20
	.4byte	.LVL119
	.4byte	0xa62
	.uleb128 0x21
	.4byte	.LVL120
	.4byte	0xa6d
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x226
	.4byte	0xcb
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9a1
	.uleb128 0x17
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x226
	.4byte	0x17f
	.4byte	.LLST32
	.uleb128 0x17
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x226
	.4byte	0x874
	.4byte	.LLST33
	.uleb128 0x19
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x228
	.4byte	0xcb
	.4byte	.LLST34
	.uleb128 0x1a
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x229
	.4byte	0x22a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.4byte	.LVL139
	.4byte	0xa57
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x25c
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa04
	.uleb128 0x18
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x25c
	.4byte	0xa04
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x18
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x25c
	.4byte	0xd6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.string	"p"
	.byte	0x1
	.2byte	0x25e
	.4byte	0x17f
	.4byte	.LLST35
	.uleb128 0x21
	.4byte	.LVL159
	.4byte	0xa83
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x164
	.uleb128 0x24
	.4byte	.LASF85
	.byte	0x4
	.2byte	0x2cc
	.4byte	0xa1d
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x25
	.4byte	0x16f
	.uleb128 0x24
	.4byte	.LASF86
	.byte	0x4
	.2byte	0x2cd
	.4byte	0xa35
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	0x16f
	.uleb128 0x26
	.4byte	.LASF87
	.byte	0x6
	.2byte	0x2ea
	.4byte	0xcb
	.uleb128 0x27
	.4byte	.LASF88
	.byte	0x1
	.byte	0x33
	.4byte	0x2e4
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_av_sbc_ups_cb
	.uleb128 0x28
	.4byte	.LASF89
	.4byte	.LASF89
	.byte	0x5
	.byte	0x9a
	.uleb128 0x28
	.4byte	.LASF90
	.4byte	.LASF90
	.byte	0x7
	.byte	0x57
	.uleb128 0x28
	.4byte	.LASF91
	.4byte	.LASF91
	.byte	0x7
	.byte	0x6b
	.uleb128 0x28
	.4byte	.LASF92
	.4byte	.LASF92
	.byte	0x5
	.byte	0x85
	.uleb128 0x28
	.4byte	.LASF93
	.4byte	.LASF93
	.byte	0x5
	.byte	0xb3
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
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x17
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x4109
	.byte	0x1
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x2
	.uleb128 0x18
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
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL8
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL14
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL6
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x3
	.byte	0x78
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL13
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x3
	.byte	0x77
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x3
	.byte	0x77
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x3
	.byte	0x77
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL17
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL17
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL26
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL33
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL17
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL18
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL27
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL32
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x3
	.byte	0x77
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0x3
	.byte	0x77
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x3
	.byte	0x77
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL32
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL36
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL54
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL36
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL45
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL52
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL36
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL37
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL51
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL37
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x3
	.byte	0x77
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL44
	.2byte	0x3
	.byte	0x77
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x3
	.byte	0x77
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL51
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL55
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
.LLST16:
	.4byte	.LVL55
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL63
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL69
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL55
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL61
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL56
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL64
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL68
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL56
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x3
	.byte	0x77
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL62
	.2byte	0x3
	.byte	0x77
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x3
	.byte	0x77
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL68
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL73
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL74
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
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
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL76
	.4byte	.LVL78
	.2byte	0xc
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x25
	.byte	0x7c
	.sleb128 0
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LVL79-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0xc
	.byte	0x75
	.sleb128 0
	.byte	0xf7
	.uleb128 0x25
	.byte	0x7c
	.sleb128 0
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL79-1
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL83
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL87
	.4byte	.LVL90
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL91
	.4byte	.LVL94
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL95
	.4byte	.LVL98
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL99
	.4byte	.LVL102
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL103
	.4byte	.LVL106
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL106
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL110
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
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL113
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL83
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL86
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL83
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL107
	.4byte	.LVL110
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL110
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL112
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL84
	.4byte	.LVL86
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL114
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL117
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL114
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL118
	.4byte	.LVL121
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL135
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL115
	.4byte	.LVL117
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL117
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL125
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL126
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL127
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL129
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL131
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL132
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL133
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL134
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL135
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL136
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL137
	.4byte	.LVL155
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL155
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL137
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL140
	.4byte	.LVL141
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL141
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL153
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL139
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL143
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL145
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL147
	.4byte	.LVL148
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL149
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL151
	.4byte	.LVL152
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL153
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL157
	.4byte	.LVL158
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL158
	.4byte	.LVL159-1
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
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF66:
	.string	"bta_av_sbc_up_sample_16m"
.LASF86:
	.string	"bd_addr_null"
.LASF4:
	.string	"__int16_t"
.LASF21:
	.string	"INT32"
.LASF45:
	.string	"tA2D_SBC_CIE"
.LASF93:
	.string	"A2D_BldSbcMplHdr"
.LASF74:
	.string	"p_pref"
.LASF72:
	.string	"p_peer"
.LASF28:
	.string	"BT_HDR"
.LASF5:
	.string	"short int"
.LASF53:
	.string	"worker1"
.LASF27:
	.string	"sizetype"
.LASF78:
	.string	"p_cfg"
.LASF77:
	.string	"bta_av_sbc_cfg_matches_cap"
.LASF80:
	.string	"bta_av_sbc_cfg_in_cap"
.LASF19:
	.string	"UINT32"
.LASF10:
	.string	"long long int"
.LASF9:
	.string	"__uint32_t"
.LASF60:
	.string	"p_ret"
.LASF23:
	.string	"event"
.LASF6:
	.string	"__uint16_t"
.LASF70:
	.string	"bta_av_sbc_up_sample"
.LASF55:
	.string	"tBTA_AV_SBC_UPS_CB"
.LASF83:
	.string	"p_buf"
.LASF16:
	.string	"uint32_t"
.LASF52:
	.string	"n_channels"
.LASF49:
	.string	"dst_sps"
.LASF39:
	.string	"ch_mode"
.LASF51:
	.string	"bits"
.LASF92:
	.string	"A2D_BldSbcInfo"
.LASF95:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/bta/av/bta_av_sbc.c"
.LASF61:
	.string	"p_src_tmp"
.LASF30:
	.string	"long int"
.LASF24:
	.string	"offset"
.LASF35:
	.string	"ESP_LOG_INFO"
.LASF17:
	.string	"UINT8"
.LASF88:
	.string	"bta_av_sbc_ups_cb"
.LASF3:
	.string	"__uint8_t"
.LASF43:
	.string	"max_bitpool"
.LASF20:
	.string	"INT16"
.LASF42:
	.string	"alloc_mthd"
.LASF56:
	.string	"p_src"
.LASF2:
	.string	"unsigned char"
.LASF96:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF84:
	.string	"fr_per_pkt"
.LASF48:
	.string	"src_sps"
.LASF1:
	.string	"signed char"
.LASF57:
	.string	"p_dst"
.LASF11:
	.string	"long long unsigned int"
.LASF0:
	.string	"unsigned int"
.LASF14:
	.string	"uint16_t"
.LASF62:
	.string	"p_dst_tmp"
.LASF50:
	.string	"p_act"
.LASF58:
	.string	"src_samples"
.LASF91:
	.string	"esp_log_write"
.LASF75:
	.string	"status"
.LASF18:
	.string	"UINT16"
.LASF29:
	.string	"char"
.LASF22:
	.string	"_Bool"
.LASF47:
	.string	"cur_pos"
.LASF15:
	.string	"int32_t"
.LASF32:
	.string	"ESP_LOG_NONE"
.LASF7:
	.string	"short unsigned int"
.LASF13:
	.string	"int16_t"
.LASF87:
	.string	"appl_trace_level"
.LASF81:
	.string	"bta_av_sbc_init_up_sample"
.LASF41:
	.string	"num_subbands"
.LASF71:
	.string	"bta_av_sbc_cfg_for_cap"
.LASF26:
	.string	"data"
.LASF34:
	.string	"ESP_LOG_WARN"
.LASF40:
	.string	"block_len"
.LASF63:
	.string	"p_worker1"
.LASF64:
	.string	"p_worker2"
.LASF79:
	.string	"cfg_cie"
.LASF82:
	.string	"bta_av_sbc_bld_hdr"
.LASF31:
	.string	"long unsigned int"
.LASF44:
	.string	"min_bitpool"
.LASF89:
	.string	"A2D_ParsSbcInfo"
.LASF36:
	.string	"ESP_LOG_DEBUG"
.LASF37:
	.string	"ESP_LOG_VERBOSE"
.LASF73:
	.string	"p_cap"
.LASF8:
	.string	"__int32_t"
.LASF12:
	.string	"uint8_t"
.LASF76:
	.string	"peer_cie"
.LASF90:
	.string	"esp_log_timestamp"
.LASF85:
	.string	"bd_addr_any"
.LASF59:
	.string	"dst_samples"
.LASF67:
	.string	"p_worker"
.LASF65:
	.string	"bta_av_sbc_up_sample_16s"
.LASF38:
	.string	"samp_freq"
.LASF69:
	.string	"bta_av_sbc_up_sample_8m"
.LASF94:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF68:
	.string	"bta_av_sbc_up_sample_8s"
.LASF46:
	.string	"tBTA_AV_SBC_ACT"
.LASF54:
	.string	"worker2"
.LASF33:
	.string	"ESP_LOG_ERROR"
.LASF25:
	.string	"layer_specific"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
