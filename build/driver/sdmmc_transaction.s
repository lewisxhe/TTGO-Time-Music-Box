	.file	"sdmmc_transaction.c"
	.text
.Ltext0:
	.section	.text.get_free_descriptors_count,"ax",@progbits
	.literal_position
	.literal .LC5, s_cur_transfer
	.literal .LC6, s_dma_desc
	.align	4
	.type	get_free_descriptors_count, @function
get_free_descriptors_count:
.LFB18:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdmmc_transaction.c"
	.loc 1 180 0
	entry	sp, 32
.LCFI0:
	.loc 1 181 0
	l32r	a2, .LC5
	l32i.n	a12, a2, 8
.LVL0:
.LBB15:
	.loc 1 187 0
	movi.n	a9, 0
.LBE15:
	.loc 1 182 0
	mov.n	a2, a9
.LBB17:
	.loc 1 187 0
	j	.L2
.LVL1:
.L4:
.LBB16:
	.loc 1 188 0
	add.n	a8, a9, a12
	extui	a8, a8, 0, 2
.LVL2:
	.loc 1 189 0
	slli	a10, a8, 4
	l32r	a11, .LC6
	add.n	a10, a11, a10
.LVL3:
	l32i.n	a10, a10, 0
.LVL4:
	bltz	a10, .L3
	.loc 1 192 0
	addi.n	a2, a2, 1
.LVL5:
	.loc 1 193 0
	slli	a8, a8, 4
.LVL6:
	add.n	a8, a11, a8
.LVL7:
	l32i.n	a8, a8, 12
.LVL8:
	beqz.n	a8, .L3
.LBE16:
	.loc 1 187 0 discriminator 2
	addi.n	a9, a9, 1
.LVL9:
.L2:
	.loc 1 187 0 is_stmt 0 discriminator 1
	bltui	a9, 4, .L4
.L3:
.LBE17:
	.loc 1 199 0 is_stmt 1
	retw.n
.LFE18:
	.size	get_free_descriptors_count, .-get_free_descriptors_count
	.section	.text.cmd_needs_auto_stop,"ax",@progbits
	.align	4
	.type	cmd_needs_auto_stop, @function
cmd_needs_auto_stop:
.LFB22:
	.loc 1 276 0
.LVL10:
	entry	sp, 32
.LCFI1:
	.loc 1 278 0
	l32i.n	a8, a2, 28
	beqz.n	a8, .L7
	.loc 1 279 0 discriminator 1
	l32i.n	a2, a2, 0
.LVL11:
	addi	a10, a2, -25
	movi.n	a11, 1
	movi.n	a8, 0
	mov.n	a3, a8
	moveqz	a3, a11, a10
	addi	a9, a2, -18
	moveqz	a8, a11, a9
	or	a8, a3, a8
	.loc 1 278 0 discriminator 1
	bnez.n	a8, .L8
	.loc 1 280 0
	movi.n	a8, 0x14
	beq	a2, a8, .L9
	.loc 1 281 0
	movi.n	a8, 0xb
	beq	a2, a8, .L10
	.loc 1 278 0
	movi.n	a2, 0
	retw.n
.LVL12:
.L7:
	movi.n	a2, 0
.LVL13:
	retw.n
.L8:
	movi.n	a2, 1
	retw.n
.L9:
	movi.n	a2, 1
	retw.n
.L10:
	movi.n	a2, 1
	.loc 1 283 0
	retw.n
.LFE22:
	.size	cmd_needs_auto_stop, .-cmd_needs_auto_stop
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC13:
	.string	"cmd->datalen % cmd->blklen == 0"
	.align	4
.LC16:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdmmc_transaction.c"
	.section	.text.make_hw_cmd,"ax",@progbits
	.literal_position
	.literal .LC8, 16384
	.literal .LC9, 32768
	.literal .LC10, 8192
	.literal .LC12, 536870912
	.literal .LC14, .LC13
	.literal .LC15, __func__$5804
	.literal .LC17, .LC16
	.literal .LC18, -4097
	.align	4
	.type	make_hw_cmd, @function
make_hw_cmd:
.LFB23:
	.loc 1 286 0
.LVL14:
	entry	sp, 32
.LCFI2:
	.loc 1 289 0
	l32i.n	a8, a2, 0
	extui	a9, a8, 0, 6
	.loc 1 290 0
	bnei	a8, 12, .L12
	.loc 1 291 0
	l32r	a3, .LC8
	or	a3, a9, a3
.LVL15:
	j	.L13
.L12:
	.loc 1 292 0
	bnez.n	a8, .L14
	.loc 1 293 0
	l32r	a3, .LC9
	or	a3, a9, a3
	j	.L13
.L14:
	.loc 1 295 0
	l32r	a3, .LC10
	or	a3, a9, a3
.L13:
	.loc 1 297 0
	bnez.n	a8, .L15
	.loc 1 298 0
	l32r	a8, .LC9
.LVL16:
	or	a3, a3, a8
.LVL17:
.L15:
	.loc 1 300 0
	l32i.n	a8, a2, 36
	bbci	a8, 12, .L16
	.loc 1 301 0
	movi.n	a9, 0x40
.LVL18:
	or	a3, a3, a9
.LVL19:
	.loc 1 302 0
	bbci	a8, 9, .L16
	.loc 1 303 0
	movi	a9, 0x80
.LVL20:
	or	a3, a3, a9
.LVL21:
.L16:
	.loc 1 306 0
	bbci	a8, 10, .L17
	.loc 1 307 0
	movi	a9, 0x100
.LVL22:
	or	a3, a3, a9
.LVL23:
.L17:
	.loc 1 309 0
	l32r	a9, .LC12
.LVL24:
	or	a3, a3, a9
.LVL25:
	.loc 1 310 0
	l32i.n	a9, a2, 24
	beqz.n	a9, .L18
	.loc 1 311 0
	movi	a9, 0x200
.LVL26:
	or	a3, a3, a9
.LVL27:
	.loc 1 312 0
	bbsi	a8, 6, .L19
	.loc 1 313 0
	movi	a8, 0x400
.LVL28:
	or	a3, a3, a8
.LVL29:
.L19:
	.loc 1 315 0
	l32i.n	a8, a2, 28
	l32i.n	a9, a2, 32
	remu	a8, a8, a9
	beqz.n	a8, .L20
	.loc 1 315 0 is_stmt 0 discriminator 1
	l32r	a13, .LC14
	l32r	a12, .LC15
	movi	a11, 0x13b
	l32r	a10, .LC17
	call8	__assert_func
.LVL30:
.L20:
	.loc 1 316 0 is_stmt 1
	mov.n	a10, a2
	call8	cmd_needs_auto_stop
.LVL31:
	extui	a10, a10, 0, 1
	slli	a10, a10, 12
	l32r	a2, .LC18
.LVL32:
	and	a3, a3, a2
.LVL33:
	or	a3, a3, a10
.L18:
.LVL34:
	.loc 1 322 0
	mov.n	a2, a3
	retw.n
.LFE23:
	.size	make_hw_cmd, .-make_hw_cmd
	.section	.rodata.str1.4
	.align	4
.LC22:
	.string	"!desc->owned_by_idmac"
	.align	4
.LC27:
	.string	"size_to_fill < 4 || size_to_fill % 4 == 0"
	.section	.text.fill_dma_descriptors,"ax",@progbits
	.literal_position
	.literal .LC19, s_cur_transfer
	.literal .LC20, s_dma_desc
	.literal .LC21, -2147483648
	.literal .LC23, .LC22
	.literal .LC24, __func__$5778
	.literal .LC25, .LC16
	.literal .LC26, 4096
	.literal .LC28, .LC27
	.literal .LC29, 8188
	.literal .LC30, -8192
	.align	4
	.type	fill_dma_descriptors, @function
fill_dma_descriptors:
.LFB19:
	.loc 1 202 0
.LVL35:
	entry	sp, 32
.LCFI3:
.LVL36:
.LBB18:
	.loc 1 203 0
	movi.n	a14, 0
	j	.L22
.LVL37:
.L27:
.LBB19:
	.loc 1 204 0
	l32r	a3, .LC19
	l32i.n	a11, a3, 4
	beqz.n	a11, .L21
	.loc 1 207 0
	l32i.n	a10, a3, 8
.LVL38:
	.loc 1 209 0
	slli	a3, a10, 4
	l32r	a8, .LC20
	add.n	a3, a8, a3
.LVL39:
	l32i.n	a3, a3, 0
.LVL40:
	bgez	a3, .L24
	.loc 1 209 0 is_stmt 0 discriminator 1
	l32r	a13, .LC23
	l32r	a12, .LC24
	movi	a11, 0xd1
	l32r	a10, .LC25
.LVL41:
	call8	__assert_func
.LVL42:
.L24:
	.loc 1 210 0 is_stmt 1
	l32r	a8, .LC26
	minu	a8, a11, a8
.LVL43:
	.loc 1 213 0
	sub	a12, a11, a8
	movi.n	a3, 0
	movi.n	a9, 1
	movnez	a9, a3, a12
.LVL44:
	.loc 1 214 0
	slli	a12, a10, 4
	l32r	a3, .LC20
	add.n	a12, a3, a12
	slli	a13, a9, 2
	l32i.n	a9, a12, 0
.LVL45:
	movi.n	a3, -5
	and	a9, a9, a3
	or	a9, a9, a13
	.loc 1 215 0
	movi.n	a3, 0x10
	or	a9, a9, a3
	.loc 1 216 0
	l32r	a3, .LC21
	or	a9, a9, a3
	s32i.n	a9, a12, 0
	.loc 1 217 0
	l32r	a3, .LC19
	l32i.n	a9, a3, 0
	s32i.n	a9, a12, 8
	.loc 1 218 0
	beq	a11, a8, .L28
	.loc 1 218 0 is_stmt 0 discriminator 2
	addi.n	a3, a10, 1
	extui	a3, a3, 0, 2
	slli	a3, a3, 4
	l32r	a12, .LC20
	add.n	a3, a3, a12
	j	.L25
.L28:
	.loc 1 218 0
	movi.n	a3, 0
.LVL46:
.L25:
	.loc 1 218 0 is_stmt 1 discriminator 4
	slli	a12, a10, 4
	l32r	a13, .LC20
	add.n	a12, a13, a12
	s32i.n	a3, a12, 12
	.loc 1 219 0 discriminator 4
	bltui	a8, 4, .L26
	.loc 1 219 0 is_stmt 0 discriminator 1
	extui	a3, a8, 0, 2
	beqz.n	a3, .L26
	.loc 1 219 0 discriminator 2
	l32r	a13, .LC28
	l32r	a12, .LC24
	movi	a11, 0xdb
.LVL47:
	l32r	a10, .LC25
.LVL48:
	call8	__assert_func
.LVL49:
.L26:
	.loc 1 220 0 is_stmt 1
	addi.n	a12, a8, 3
	extui	a12, a12, 0, 16
	slli	a3, a10, 4
	l32r	a13, .LC20
	add.n	a3, a13, a3
	l32r	a15, .LC29
	and	a12, a12, a15
	extui	a13, a12, 0, 13
	l32i.n	a15, a3, 4
	l32r	a12, .LC30
	and	a12, a15, a12
	or	a12, a12, a13
	s32i.n	a12, a3, 4
	.loc 1 222 0
	l32r	a3, .LC19
	sub	a11, a11, a8
.LVL50:
	s32i.n	a11, a3, 4
.LVL51:
	.loc 1 223 0
	add.n	a9, a9, a8
	s32i.n	a9, a3, 0
	.loc 1 224 0
	addi.n	a8, a10, 1
.LVL52:
	extui	a8, a8, 0, 2
	s32i.n	a8, a3, 8
.LBE19:
	.loc 1 203 0
	addi.n	a14, a14, 1
.LVL53:
.L22:
	.loc 1 203 0 is_stmt 0 discriminator 1
	bltu	a14, a2, .L27
.L21:
	retw.n
.LBE18:
.LFE19:
	.size	fill_dma_descriptors, .-fill_dma_descriptors
	.section	.rodata.str1.4
	.align	4
.LC31:
	.string	"sdmmc_req"
	.align	4
.LC33:
	.string	"\033[0;31mE (%d) %s: handle_idle_state_events unhandled: %08x %08x\033[0m\n"
	.section	.text.handle_idle_state_events,"ax",@progbits
	.literal_position
	.literal .LC32, .LC31
	.literal .LC34, .LC33
	.align	4
	.type	handle_idle_state_events, @function
handle_idle_state_events:
.LFB20:
	.loc 1 232 0 is_stmt 1
	entry	sp, 64
.LCFI4:
	.loc 1 238 0
	j	.L30
.L34:
	.loc 1 239 0
	l32i.n	a8, sp, 16
	bbci	a8, 0, .L31
	.loc 1 241 0
	movi.n	a9, -2
	and	a8, a8, a9
	s32i.n	a8, sp, 16
.L31:
	.loc 1 243 0
	l32i.n	a8, sp, 16
	bnez.n	a8, .L32
	.loc 1 243 0 is_stmt 0 discriminator 1
	l32i.n	a8, sp, 20
	beqz.n	a8, .L30
.L32:
	.loc 1 244 0 is_stmt 1 discriminator 2
	call8	esp_log_timestamp
.LVL54:
	l32r	a11, .LC32
	l32i.n	a8, sp, 20
	s32i.n	a8, sp, 0
	l32i.n	a15, sp, 16
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC34
	movi.n	a10, 1
	call8	esp_log_write
.LVL55:
.L30:
	.loc 1 238 0
	addi	a11, sp, 16
	movi.n	a10, 0
	call8	sdmmc_host_wait_for_event
.LVL56:
	beqz.n	a10, .L34
	.loc 1 250 0
	movi.n	a2, 0
	retw.n
.LFE20:
	.size	handle_idle_state_events, .-handle_idle_state_events
	.section	.text.process_data_status,"ax",@progbits
	.literal_position
	.literal .LC35, 42624
	.literal .LC37, SDMMC
	.align	4
	.type	process_data_status, @function
process_data_status:
.LFB25:
	.loc 1 357 0
.LVL57:
	entry	sp, 32
.LCFI5:
	.loc 1 358 0
	l32r	a8, .LC35
	bnone	a2, a8, .L36
	.loc 1 359 0
	bbci	a2, 9, .L37
	.loc 1 360 0
	movi	a2, 0x107
.LVL58:
	s32i.n	a2, a3, 40
	j	.L38
.LVL59:
.L37:
	.loc 1 361 0
	bbci	a2, 7, .L39
	.loc 1 362 0
	movi	a2, 0x109
.LVL60:
	s32i.n	a2, a3, 40
	j	.L38
.LVL61:
.L39:
	.loc 1 363 0
	bbci	a2, 15, .L40
	.loc 1 364 0 discriminator 1
	l32i.n	a2, a3, 36
.LVL62:
	.loc 1 363 0 discriminator 1
	bbsi	a2, 6, .L40
	.loc 1 365 0
	movi	a2, 0x107
	s32i.n	a2, a3, 40
	j	.L38
.L40:
	.loc 1 367 0
	movi.n	a2, -1
	s32i.n	a2, a3, 40
.L38:
	.loc 1 369 0
	l32r	a8, .LC37
	memw
	l32i.n	a9, a8, 0
	movi.n	a2, 2
	or	a2, a9, a2
	memw
	s32i.n	a2, a8, 0
.L36:
	.loc 1 371 0
	l32i.n	a2, a3, 40
	beqz.n	a2, .L35
	.loc 1 372 0
	l32i.n	a2, a3, 24
	beqz.n	a2, .L35
	.loc 1 373 0
	call8	sdmmc_host_dma_stop
.LVL63:
.L35:
	retw.n
.LFE25:
	.size	process_data_status, .-process_data_status
	.section	.rodata.str1.4
	.align	4
.LC41:
	.string	"cmd->flags & SCF_RSP_PRESENT"
	.section	.text.process_command_response,"ax",@progbits
	.literal_position
	.literal .LC38, 4096
	.literal .LC39, SDMMC+48
	.literal .LC40, SDMMC
	.literal .LC42, .LC41
	.literal .LC43, __func__$5810
	.literal .LC44, .LC16
	.align	4
	.type	process_command_response, @function
process_command_response:
.LFB24:
	.loc 1 325 0
.LVL64:
	entry	sp, 32
.LCFI6:
	.loc 1 326 0
	l32i.n	a5, a3, 36
	l32r	a4, .LC38
	and	a4, a5, a4
	beqz.n	a4, .L43
	.loc 1 327 0
	bbci	a5, 9, .L44
	.loc 1 329 0
	movi.n	a12, 0x10
	l32r	a11, .LC39
	addi.n	a10, a3, 8
	call8	memcpy
.LVL65:
	j	.L43
.L44:
	.loc 1 331 0
	l32r	a8, .LC40
	memw
	l32i.n	a8, a8, 48
	s32i.n	a8, a3, 8
	.loc 1 332 0
	movi.n	a8, 0
	s32i.n	a8, a3, 12
	.loc 1 333 0
	s32i.n	a8, a3, 16
	.loc 1 334 0
	s32i.n	a8, a3, 20
.L43:
.LVL66:
	.loc 1 338 0
	bbci	a2, 8, .L45
	.loc 1 340 0
	bnez.n	a4, .L49
	.loc 1 340 0 is_stmt 0 discriminator 1
	l32r	a13, .LC42
	l32r	a12, .LC43
	movi	a11, 0x154
	l32r	a10, .LC44
	call8	__assert_func
.LVL67:
.L45:
	.loc 1 342 0 is_stmt 1
	bbci	a5, 10, .L47
	.loc 1 342 0 is_stmt 0 discriminator 1
	bbsi	a2, 6, .L50
.L47:
	.loc 1 344 0 is_stmt 1
	bbsi	a2, 1, .L51
	.loc 1 337 0
	movi.n	a4, 0
	j	.L46
.L49:
	.loc 1 341 0
	movi	a4, 0x107
	j	.L46
.L50:
	.loc 1 343 0
	movi	a4, 0x109
	j	.L46
.L51:
	.loc 1 345 0
	movi	a4, 0x108
.L46:
.LVL68:
	.loc 1 347 0
	beqz.n	a4, .L42
	.loc 1 348 0
	s32i.n	a4, a3, 40
	.loc 1 349 0
	l32i.n	a2, a3, 24
.LVL69:
	beqz.n	a2, .L42
	.loc 1 350 0
	call8	sdmmc_host_dma_stop
.LVL70:
.L42:
	retw.n
.LFE24:
	.size	process_command_response, .-process_command_response
	.section	.text.process_events,"ax",@progbits
	.literal_position
	.literal .LC45, 42624
	.literal .LC46, -42625
	.literal .LC47, s_cur_transfer
	.literal .LC48, 8200
	.align	4
	.type	process_events, @function
process_events:
.LFB27:
	.loc 1 388 0
.LVL71:
	entry	sp, 64
.LCFI7:
	s32i.n	a2, sp, 16
	s32i.n	a3, sp, 20
	.loc 1 395 0
	s32i.n	a2, sp, 0
	.loc 1 398 0
	l32i.n	a2, a5, 0
.LVL72:
	.loc 1 399 0
	movi.n	a8, -1
	.loc 1 400 0
	j	.L53
.LVL73:
.L62:
	.loc 1 402 0
	beqi	a2, 2, .L55
	beqi	a2, 3, .L56
	bnei	a2, 1, .L71
.LVL74:
.LBB20:
.LBB21:
	.loc 1 381 0
	l32i.n	a9, sp, 16
.LVL75:
	.loc 1 382 0
	movi	a8, -0x143
	and	a8, a9, a8
	s32i.n	a8, sp, 16
.LBE21:
.LBE20:
	.loc 1 407 0
	movi	a10, 0x142
	bnone	a9, a10, .L58
	.loc 1 408 0
	mov.n	a11, a4
	l32i.n	a10, sp, 0
	call8	process_command_response
.LVL76:
	.loc 1 409 0
	mov.n	a9, a2
	j	.L54
.LVL77:
.L58:
.LBB22:
.LBB23:
	.loc 1 382 0
	movi.n	a9, -5
.LVL78:
	and	a9, a8, a9
	s32i.n	a9, sp, 16
.LBE23:
.LBE22:
	.loc 1 411 0
	bbci	a8, 2, .L64
	.loc 1 412 0
	mov.n	a11, a4
	l32i.n	a10, sp, 0
	call8	process_command_response
.LVL79:
	.loc 1 413 0
	l32i.n	a8, a4, 40
	bnez.n	a8, .L65
	.loc 1 418 0
	l32i.n	a8, a4, 24
	bnez.n	a8, .L66
	.loc 1 419 0
	movi.n	a9, 0
	j	.L54
.LVL80:
.L55:
.LBB24:
.LBB25:
	.loc 1 381 0
	l32i.n	a9, sp, 16
.LVL81:
	.loc 1 382 0
	l32r	a8, .LC46
	and	a8, a9, a8
	s32i.n	a8, sp, 16
.LBE25:
.LBE24:
	.loc 1 428 0
	l32r	a8, .LC45
	bnone	a9, a8, .L59
	.loc 1 429 0
	mov.n	a11, a4
	l32i.n	a10, sp, 0
	call8	process_data_status
.LVL82:
	.loc 1 430 0
	call8	sdmmc_host_dma_stop
.LVL83:
.L59:
.LBB26:
.LBB27:
	.loc 1 381 0
	l32i.n	a9, sp, 20
.LVL84:
	.loc 1 382 0
	movi	a8, -0x104
	and	a8, a9, a8
	s32i.n	a8, sp, 20
.LBE27:
.LBE26:
	.loc 1 432 0
	movi	a8, 0x103
	bnone	a9, a8, .L67
	.loc 1 433 0
	l32r	a8, .LC47
	l32i.n	a9, a8, 12
.LVL85:
	addi.n	a9, a9, -1
	s32i.n	a9, a8, 12
	.loc 1 434 0
	l32i.n	a8, a8, 4
	beqz.n	a8, .L61
.LBB28:
	.loc 1 435 0
	call8	get_free_descriptors_count
.LVL86:
	.loc 1 436 0
	call8	fill_dma_descriptors
.LVL87:
	.loc 1 437 0
	call8	sdmmc_host_dma_resume
.LVL88:
.L61:
.LBE28:
	.loc 1 439 0
	l32r	a8, .LC47
	l32i.n	a8, a8, 12
	beqz.n	a8, .L68
	mov.n	a9, a2
	j	.L60
.LVL89:
.L67:
	mov.n	a9, a2
.LVL90:
	j	.L60
.L68:
	.loc 1 440 0
	movi.n	a9, 3
.L60:
.LVL91:
	.loc 1 443 0
	l32r	a8, .LC48
	l32i.n	a10, sp, 0
	bany	a10, a8, .L69
	j	.L54
.LVL92:
.L56:
.LBB29:
.LBB30:
	.loc 1 381 0
	l32i.n	a9, sp, 16
.LVL93:
	.loc 1 382 0
	movi.n	a8, -9
	and	a8, a9, a8
	s32i.n	a8, sp, 16
.LBE30:
.LBE29:
	.loc 1 451 0
	bbci	a9, 3, .L70
	.loc 1 454 0
	mov.n	a11, a4
	l32i.n	a10, sp, 0
	call8	process_data_status
.LVL94:
	.loc 1 455 0
	movi.n	a9, 0
	.loc 1 456 0
	j	.L54
.LVL95:
.L71:
	.loc 1 402 0
	mov.n	a9, a2
	j	.L54
.LVL96:
.L64:
	mov.n	a9, a2
	j	.L54
.LVL97:
.L65:
	.loc 1 414 0
	movi.n	a9, 0
	j	.L54
.L66:
	.loc 1 421 0
	movi.n	a9, 2
	j	.L54
.LVL98:
.L69:
	.loc 1 445 0
	movi.n	a9, 0
.LVL99:
	j	.L54
.LVL100:
.L70:
	mov.n	a9, a2
.LVL101:
.L54:
	.loc 1 414 0
	mov.n	a8, a2
	mov.n	a2, a9
.LVL102:
.L53:
	.loc 1 400 0
	bne	a2, a8, .L62
	.loc 1 460 0
	s32i.n	a8, a5, 0
	.loc 1 461 0
	l32i.n	a2, sp, 16
.LVL103:
	s32i.n	a2, a6, 0
	l32i.n	a2, sp, 20
	s32i.n	a2, a6, 4
	.loc 1 463 0
	movi.n	a2, 0
	retw.n
.LFE27:
	.size	process_events, .-process_events
	.section	.rodata.str1.4
	.align	4
.LC51:
	.string	"\033[0;31mE (%d) %s: sdmmc_host_wait_for_event returned 0x%x\033[0m\n"
	.section	.text.handle_event,"ax",@progbits
	.literal_position
	.literal .LC49, -858993459
	.literal .LC50, .LC31
	.literal .LC52, .LC51
	.align	4
	.type	handle_event, @function
handle_event:
.LFB21:
	.loc 1 255 0
.LVL104:
	entry	sp, 48
.LCFI8:
	.loc 1 257 0
	l32i.n	a10, a2, 44
	l32r	a5, .LC49
	muluh	a10, a10, a5
	mov.n	a11, sp
	srli	a10, a10, 3
	call8	sdmmc_host_wait_for_event
.LVL105:
	mov.n	a5, a10
.LVL106:
	.loc 1 258 0
	beqz.n	a10, .L73
	.loc 1 259 0 discriminator 2
	call8	esp_log_timestamp
.LVL107:
	l32r	a11, .LC50
	mov.n	a15, a5
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC52
	movi.n	a10, 1
	call8	esp_log_write
.LVL108:
	.loc 1 260 0 discriminator 2
	movi	a2, 0x107
.LVL109:
	bne	a5, a2, .L75
	.loc 1 261 0
	call8	sdmmc_host_dma_stop
.LVL110:
	.loc 1 263 0
	mov.n	a2, a5
	retw.n
.LVL111:
.L73:
	.loc 1 268 0
	l32i.n	a5, a4, 0
.LVL112:
	l32i.n	a10, sp, 0
.LVL113:
	or	a10, a10, a5
	s32i.n	a10, sp, 0
	.loc 1 269 0
	l32i.n	a5, a4, 4
	l32i.n	a11, sp, 4
	or	a11, a11, a5
	s32i.n	a11, sp, 4
	.loc 1 270 0
	mov.n	a14, a4
	mov.n	a13, a3
	mov.n	a12, a2
	call8	process_events
.LVL114:
	.loc 1 272 0
	movi.n	a2, 0
.LVL115:
	retw.n
.LVL116:
.L75:
	.loc 1 263 0
	mov.n	a2, a5
	.loc 1 273 0
	retw.n
.LFE21:
	.size	handle_event, .-handle_event
	.section	.rodata.str1.4
	.align	4
.LC54:
	.string	"s_request_mutex == NULL"
	.section	.text.sdmmc_host_transaction_handler_init,"ax",@progbits
	.literal_position
	.literal .LC53, s_request_mutex
	.literal .LC55, .LC54
	.literal .LC56, __func__$5746
	.literal .LC57, .LC16
	.align	4
	.global	sdmmc_host_transaction_handler_init
	.type	sdmmc_host_transaction_handler_init, @function
sdmmc_host_transaction_handler_init:
.LFB15:
	.loc 1 86 0
	entry	sp, 32
.LCFI9:
	.loc 1 87 0
	l32r	a8, .LC53
	l32i.n	a8, a8, 0
	.loc 1 87 0
	beqz.n	a8, .L77
	.loc 1 87 0 is_stmt 0 discriminator 1
	l32r	a13, .LC55
	l32r	a12, .LC56
	movi.n	a11, 0x57
	l32r	a10, .LC57
	call8	__assert_func
.LVL117:
.L77:
	.loc 1 88 0 is_stmt 1
	movi.n	a10, 1
	call8	xQueueCreateMutex
.LVL118:
	l32r	a8, .LC53
	s32i.n	a10, a8, 0
	.loc 1 89 0
	bnez.n	a10, .L79
	.loc 1 90 0
	movi	a2, 0x101
	retw.n
.L79:
	.loc 1 101 0
	movi.n	a2, 0
	.loc 1 102 0
	retw.n
.LFE15:
	.size	sdmmc_host_transaction_handler_init, .-sdmmc_host_transaction_handler_init
	.section	.rodata.str1.4
	.align	4
.LC59:
	.string	"s_request_mutex"
	.section	.text.sdmmc_host_transaction_handler_deinit,"ax",@progbits
	.literal_position
	.literal .LC58, s_request_mutex
	.literal .LC60, .LC59
	.literal .LC61, __func__$5749
	.literal .LC62, .LC16
	.align	4
	.global	sdmmc_host_transaction_handler_deinit
	.type	sdmmc_host_transaction_handler_deinit, @function
sdmmc_host_transaction_handler_deinit:
.LFB16:
	.loc 1 105 0
	entry	sp, 32
.LCFI10:
	.loc 1 106 0
	l32r	a8, .LC58
	l32i.n	a10, a8, 0
	bnez.n	a10, .L81
	.loc 1 106 0 is_stmt 0 discriminator 1
	l32r	a13, .LC60
	l32r	a12, .LC61
	movi	a11, 0x6a
	l32r	a10, .LC62
	call8	__assert_func
.LVL119:
.L81:
	.loc 1 111 0 is_stmt 1
	call8	vQueueDelete
.LVL120:
	.loc 1 112 0
	movi.n	a9, 0
	l32r	a8, .LC58
	s32i.n	a9, a8, 0
	retw.n
.LFE16:
	.size	sdmmc_host_transaction_handler_deinit, .-sdmmc_host_transaction_handler_deinit
	.section	.text.sdmmc_host_do_transaction,"ax",@progbits
	.literal_position
	.literal .LC63, s_request_mutex
	.literal .LC64, -1073405952
	.literal .LC65, 335871
	.literal .LC66, s_dma_desc
	.literal .LC67, s_cur_transfer
	.literal .LC68, 4095
	.align	4
	.global	sdmmc_host_do_transaction
	.type	sdmmc_host_do_transaction, @function
sdmmc_host_do_transaction:
.LFB17:
	.loc 1 116 0
.LVL121:
	entry	sp, 48
.LCFI11:
	.loc 1 118 0
	movi.n	a13, 0
	movi.n	a12, -1
	mov.n	a11, a13
	l32r	a8, .LC63
	l32i.n	a10, a8, 0
	call8	xQueueGenericReceive
.LVL122:
	.loc 1 123 0
	call8	handle_idle_state_events
.LVL123:
	.loc 1 125 0
	mov.n	a10, a3
	call8	make_hw_cmd
.LVL124:
	mov.n	a4, a10
.LVL125:
	.loc 1 126 0
	l32i.n	a9, a3, 24
	beqz.n	a9, .L83
	.loc 1 128 0
	l32i.n	a8, a3, 28
	bltui	a8, 4, .L84
	.loc 1 128 0 is_stmt 0 discriminator 1
	extui	a8, a8, 0, 2
	bnez.n	a8, .L89
.L84:
	.loc 1 134 0 is_stmt 1
	extui	a8, a9, 0, 2
	bnez.n	a8, .L90
.LVL126:
.LBB31:
.LBB32:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/include/soc/soc_memory_layout.h"
	.loc 2 65 0 discriminator 1
	l32r	a8, .LC64
	add.n	a9, a9, a8
.LVL127:
.LBE32:
.LBE31:
	.loc 1 134 0 discriminator 1
	l32r	a8, .LC65
	bltu	a8, a9, .L91
	.loc 1 141 0
	l32r	a5, .LC66
	movi.n	a12, 0x40
	movi.n	a11, 0
	mov.n	a10, a5
	call8	memset
.LVL128:
	.loc 1 143 0
	movi.n	a8, 8
	s32i.n	a8, a5, 0
	.loc 1 145 0
	l32i.n	a8, a3, 24
	l32r	a9, .LC67
	s32i.n	a8, a9, 0
	.loc 1 146 0
	l32i.n	a10, a3, 28
	s32i.n	a10, a9, 4
	.loc 1 147 0
	movi.n	a8, 0
	s32i.n	a8, a9, 8
	.loc 1 148 0
	l32r	a8, .LC68
	add.n	a8, a10, a8
	srli	a8, a8, 12
	s32i.n	a8, a9, 12
	.loc 1 150 0
	movi.n	a10, 4
	call8	fill_dma_descriptors
.LVL129:
	.loc 1 152 0
	l32i.n	a12, a3, 28
	l32i.n	a11, a3, 32
	mov.n	a10, a5
	call8	sdmmc_host_dma_prepare
.LVL130:
.L83:
	.loc 1 155 0
	l32i.n	a12, a3, 4
.LVL131:
	mov.n	a11, a4
	mov.n	a10, a2
	call8	sdmmc_host_start_command
.LVL132:
	mov.n	a2, a10
.LVL133:
	.loc 1 156 0
	bnez.n	a10, .L85
	.loc 1 160 0
	movi.n	a4, 0
.LVL134:
	s32i.n	a4, a3, 40
	.loc 1 161 0
	movi.n	a5, 1
	s32i.n	a5, sp, 0
	.loc 1 162 0
	s32i.n	a4, sp, 4
	s32i.n	a4, sp, 8
	.loc 1 163 0
	j	.L86
.L88:
	.loc 1 164 0
	addi.n	a12, sp, 4
	mov.n	a11, sp
	mov.n	a10, a3
	call8	handle_event
.LVL135:
	mov.n	a2, a10
.LVL136:
	.loc 1 165 0
	bnez.n	a10, .L85
.L86:
	.loc 1 163 0
	l32i.n	a8, sp, 0
	bnez.n	a8, .L88
	j	.L85
.LVL137:
.L89:
	.loc 1 131 0
	movi	a2, 0x104
.LVL138:
	j	.L85
.LVL139:
.L90:
	.loc 1 137 0
	movi	a2, 0x102
.LVL140:
	j	.L85
.LVL141:
.L91:
	movi	a2, 0x102
.LVL142:
.L85:
	.loc 1 175 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	l32r	a3, .LC63
.LVL143:
	l32i.n	a10, a3, 0
	call8	xQueueGenericSend
.LVL144:
	.loc 1 177 0
	retw.n
.LFE17:
	.size	sdmmc_host_do_transaction, .-sdmmc_host_do_transaction
	.section	.rodata.__func__$5810,"a",@progbits
	.align	4
	.type	__func__$5810, @object
	.size	__func__$5810, 25
__func__$5810:
	.string	"process_command_response"
	.section	.rodata.__func__$5778,"a",@progbits
	.align	4
	.type	__func__$5778, @object
	.size	__func__$5778, 21
__func__$5778:
	.string	"fill_dma_descriptors"
	.section	.rodata.__func__$5804,"a",@progbits
	.align	4
	.type	__func__$5804, @object
	.size	__func__$5804, 12
__func__$5804:
	.string	"make_hw_cmd"
	.section	.rodata.__func__$5749,"a",@progbits
	.align	4
	.type	__func__$5749, @object
	.size	__func__$5749, 38
__func__$5749:
	.string	"sdmmc_host_transaction_handler_deinit"
	.section	.rodata.__func__$5746,"a",@progbits
	.align	4
	.type	__func__$5746, @object
	.size	__func__$5746, 36
__func__$5746:
	.string	"sdmmc_host_transaction_handler_init"
	.section	.bss.s_request_mutex,"aw",@nobits
	.align	4
	.type	s_request_mutex, @object
	.size	s_request_mutex, 4
s_request_mutex:
	.zero	4
	.section	.bss.s_cur_transfer,"aw",@nobits
	.align	4
	.type	s_cur_transfer, @object
	.size	s_cur_transfer, 16
s_cur_transfer:
	.zero	16
	.section	.bss.s_dma_desc,"aw",@nobits
	.align	4
	.type	s_dma_desc, @object
	.size	s_dma_desc, 64
s_dma_desc:
	.zero	64
	.global	SDMMC_CMD_ERR_MASK
	.section	.rodata.SDMMC_CMD_ERR_MASK,"a",@progbits
	.align	4
	.type	SDMMC_CMD_ERR_MASK, @object
	.size	SDMMC_CMD_ERR_MASK, 4
SDMMC_CMD_ERR_MASK:
	.word	322
	.global	SDMMC_DMA_DONE_MASK
	.section	.rodata.SDMMC_DMA_DONE_MASK,"a",@progbits
	.align	4
	.type	SDMMC_DMA_DONE_MASK, @object
	.size	SDMMC_DMA_DONE_MASK, 4
SDMMC_DMA_DONE_MASK:
	.word	259
	.global	SDMMC_DATA_ERR_MASK
	.section	.rodata.SDMMC_DATA_ERR_MASK,"a",@progbits
	.align	4
	.type	SDMMC_DATA_ERR_MASK, @object
	.size	SDMMC_DATA_ERR_MASK, 4
SDMMC_DATA_ERR_MASK:
	.word	42624
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
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI0-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI1-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI2-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI3-.LFB19
	.byte	0xe
	.uleb128 0x20
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
	.uleb128 0x40
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI5-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI6-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI7-.LFB27
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI8-.LFB21
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI9-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI10-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI11-.LFB17
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE22:
	.text
.Letext0:
	.file 3 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/queue.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/sdmmc_struct.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/sdmmc_types.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdmmc_private.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1dc0
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF251
	.byte	0xc
	.4byte	.LASF252
	.4byte	.LASF253
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x3
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
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x4
	.byte	0x12
	.4byte	0x57
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x4
	.byte	0x19
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x4
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0x31
	.4byte	0x25
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb8
	.uleb128 0x7
	.4byte	0xab
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0x2c
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x2d
	.4byte	0x70
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0xa9
	.4byte	0x89
	.uleb128 0x6
	.byte	0x4
	.4byte	0xef
	.uleb128 0x8
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x6
	.byte	0x18
	.4byte	0xc8
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.byte	0xc
	.byte	0x1f
	.4byte	0x12c
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF27
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x7
	.byte	0x6f
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x7
	.byte	0x76
	.4byte	0xd3
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x8
	.byte	0x58
	.4byte	0xa2
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0x25
	.4byte	0x173
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x9
	.byte	0x26
	.4byte	0xa2
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x9
	.byte	0x27
	.4byte	0xa2
	.byte	0
	.uleb128 0xd
	.byte	0x10
	.byte	0x9
	.byte	0x17
	.4byte	0x242
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x9
	.byte	0x18
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.4byte	.LASF34
	.byte	0x9
	.byte	0x19
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.4byte	.LASF35
	.byte	0x9
	.byte	0x1a
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.4byte	.LASF36
	.byte	0x9
	.byte	0x1b
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.4byte	.LASF37
	.byte	0x9
	.byte	0x1c
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.4byte	.LASF38
	.byte	0x9
	.byte	0x1d
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.4byte	.LASF39
	.byte	0x9
	.byte	0x1e
	.4byte	0xd3
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0x9
	.byte	0x1f
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0x9
	.byte	0x20
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0x9
	.byte	0x21
	.4byte	0xd3
	.byte	0x4
	.byte	0xd
	.byte	0x13
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x9
	.byte	0x22
	.4byte	0xd3
	.byte	0x4
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x9
	.byte	0x23
	.4byte	0xd3
	.byte	0x4
	.byte	0x6
	.byte	0
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF131
	.byte	0x9
	.byte	0x24
	.4byte	0xa2
	.byte	0x8
	.uleb128 0x10
	.4byte	0x154
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0x9
	.byte	0x29
	.4byte	0x173
	.uleb128 0xd
	.byte	0x4
	.byte	0x9
	.byte	0x30
	.4byte	0x3ae
	.uleb128 0xe
	.4byte	.LASF46
	.byte	0x9
	.byte	0x31
	.4byte	0xd3
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.4byte	.LASF47
	.byte	0x9
	.byte	0x32
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.4byte	.LASF48
	.byte	0x9
	.byte	0x33
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.4byte	.LASF49
	.byte	0x9
	.byte	0x34
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0x9
	.byte	0x35
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x11
	.string	"rw"
	.byte	0x9
	.byte	0x36
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.4byte	.LASF51
	.byte	0x9
	.byte	0x37
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0x9
	.byte	0x38
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.4byte	.LASF53
	.byte	0x9
	.byte	0x39
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.4byte	.LASF54
	.byte	0x9
	.byte	0x3a
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0x9
	.byte	0x3b
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0x9
	.byte	0x3c
	.4byte	0xd3
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x9
	.byte	0x3d
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x9
	.byte	0x3e
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0x9
	.byte	0x3f
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.4byte	.LASF60
	.byte	0x9
	.byte	0x40
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.4byte	.LASF61
	.byte	0x9
	.byte	0x41
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.4byte	.LASF62
	.byte	0x9
	.byte	0x42
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0x9
	.byte	0x43
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0x9
	.byte	0x44
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0x9
	.byte	0x45
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0x9
	.byte	0x46
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0x9
	.byte	0x47
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0x9
	.byte	0x48
	.4byte	0x24d
	.uleb128 0xd
	.byte	0x4
	.byte	0x9
	.byte	0x4f
	.4byte	0x4d0
	.uleb128 0xe
	.4byte	.LASF69
	.byte	0x9
	.byte	0x50
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.4byte	.LASF70
	.byte	0x9
	.byte	0x51
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.4byte	.LASF71
	.byte	0x9
	.byte	0x52
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x9
	.byte	0x53
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.4byte	.LASF72
	.byte	0x9
	.byte	0x54
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.4byte	.LASF73
	.byte	0x9
	.byte	0x55
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.4byte	.LASF74
	.byte	0x9
	.byte	0x56
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.4byte	.LASF75
	.byte	0x9
	.byte	0x57
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.4byte	.LASF76
	.byte	0x9
	.byte	0x58
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.4byte	.LASF77
	.byte	0x9
	.byte	0x59
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.4byte	.LASF78
	.byte	0x9
	.byte	0x5a
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.4byte	.LASF79
	.byte	0x9
	.byte	0x5b
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.4byte	.LASF39
	.byte	0x9
	.byte	0x5c
	.4byte	0xd3
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.4byte	.LASF80
	.byte	0x9
	.byte	0x5d
	.4byte	0xd3
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.4byte	.LASF81
	.byte	0x9
	.byte	0x5e
	.4byte	0xd3
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.4byte	.LASF82
	.byte	0x9
	.byte	0x5f
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.4byte	.LASF83
	.byte	0x9
	.byte	0x60
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x9
	.byte	0x61
	.4byte	0xd3
	.byte	0x4
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0x4e
	.4byte	0x4e9
	.uleb128 0x12
	.4byte	0x3b9
	.uleb128 0x13
	.string	"val"
	.byte	0x9
	.byte	0x63
	.4byte	0xd3
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.byte	0x9
	.byte	0x69
	.4byte	0x52e
	.uleb128 0xe
	.4byte	.LASF84
	.byte	0x9
	.byte	0x6a
	.4byte	0xd3
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.4byte	.LASF85
	.byte	0x9
	.byte	0x6b
	.4byte	0xd3
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.4byte	.LASF86
	.byte	0x9
	.byte	0x6c
	.4byte	0xd3
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.4byte	.LASF87
	.byte	0x9
	.byte	0x6d
	.4byte	0xd3
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0x68
	.4byte	0x547
	.uleb128 0x12
	.4byte	0x4e9
	.uleb128 0x13
	.string	"val"
	.byte	0x9
	.byte	0x6f
	.4byte	0xd3
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.byte	0x9
	.byte	0x73
	.4byte	0x57d
	.uleb128 0xe
	.4byte	.LASF88
	.byte	0x9
	.byte	0x74
	.4byte	0xd3
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.4byte	.LASF89
	.byte	0x9
	.byte	0x75
	.4byte	0xd3
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0x9
	.byte	0x76
	.4byte	0xd3
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0x72
	.4byte	0x596
	.uleb128 0x12
	.4byte	0x547
	.uleb128 0x13
	.string	"val"
	.byte	0x9
	.byte	0x78
	.4byte	0xd3
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.byte	0x9
	.byte	0x7c
	.4byte	0x5bd
	.uleb128 0xe
	.4byte	.LASF90
	.byte	0x9
	.byte	0x7d
	.4byte	0xd3
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.4byte	.LASF91
	.byte	0x9
	.byte	0x7e
	.4byte	0xd3
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0x7b
	.4byte	0x5d6
	.uleb128 0x12
	.4byte	0x596
	.uleb128 0x13
	.string	"val"
	.byte	0x9
	.byte	0x80
	.4byte	0xd3
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.byte	0x9
	.byte	0x84
	.4byte	0x5fd
	.uleb128 0xe
	.4byte	.LASF92
	.byte	0x9
	.byte	0x85
	.4byte	0xd3
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.4byte	.LASF93
	.byte	0x9
	.byte	0x86
	.4byte	0xd3
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0x83
	.4byte	0x616
	.uleb128 0x12
	.4byte	0x5d6
	.uleb128 0x13
	.string	"val"
	.byte	0x9
	.byte	0x88
	.4byte	0xd3
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.byte	0x9
	.byte	0x8c
	.4byte	0x63d
	.uleb128 0xe
	.4byte	.LASF94
	.byte	0x9
	.byte	0x8d
	.4byte	0xd3
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.4byte	.LASF95
	.byte	0x9
	.byte	0x8e
	.4byte	0xd3
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0x8b
	.4byte	0x656
	.uleb128 0x12
	.4byte	0x616
	.uleb128 0x13
	.string	"val"
	.byte	0x9
	.byte	0x90
	.4byte	0xd3
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.byte	0x9
	.byte	0x99
	.4byte	0x75c
	.uleb128 0x11
	.string	"cd"
	.byte	0x9
	.byte	0x9a
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.string	"re"
	.byte	0x9
	.byte	0x9b
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.4byte	.LASF96
	.byte	0x9
	.byte	0x9c
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.string	"dto"
	.byte	0x9
	.byte	0x9d
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.4byte	.LASF97
	.byte	0x9
	.byte	0x9e
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.4byte	.LASF98
	.byte	0x9
	.byte	0x9f
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.4byte	.LASF99
	.byte	0x9
	.byte	0xa0
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.4byte	.LASF100
	.byte	0x9
	.byte	0xa1
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.string	"rto"
	.byte	0x9
	.byte	0xa2
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.4byte	.LASF101
	.byte	0x9
	.byte	0xa3
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x11
	.string	"hto"
	.byte	0x9
	.byte	0xa4
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.4byte	.LASF102
	.byte	0x9
	.byte	0xa5
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x11
	.string	"hle"
	.byte	0x9
	.byte	0xa6
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.4byte	.LASF103
	.byte	0x9
	.byte	0xa7
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x11
	.string	"acd"
	.byte	0x9
	.byte	0xa8
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x11
	.string	"ebe"
	.byte	0x9
	.byte	0xa9
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.4byte	.LASF104
	.byte	0x9
	.byte	0xaa
	.4byte	0xd3
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0x98
	.4byte	0x775
	.uleb128 0x12
	.4byte	0x656
	.uleb128 0x13
	.string	"val"
	.byte	0x9
	.byte	0xac
	.4byte	0xd3
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.byte	0x9
	.byte	0xb6
	.4byte	0x87b
	.uleb128 0x11
	.string	"cd"
	.byte	0x9
	.byte	0xb7
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.string	"re"
	.byte	0x9
	.byte	0xb8
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.4byte	.LASF96
	.byte	0x9
	.byte	0xb9
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.string	"dto"
	.byte	0x9
	.byte	0xba
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.4byte	.LASF97
	.byte	0x9
	.byte	0xbb
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.4byte	.LASF98
	.byte	0x9
	.byte	0xbc
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.4byte	.LASF99
	.byte	0x9
	.byte	0xbd
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.4byte	.LASF100
	.byte	0x9
	.byte	0xbe
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.string	"rto"
	.byte	0x9
	.byte	0xbf
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.4byte	.LASF101
	.byte	0x9
	.byte	0xc0
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x11
	.string	"hto"
	.byte	0x9
	.byte	0xc1
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.4byte	.LASF102
	.byte	0x9
	.byte	0xc2
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x11
	.string	"hle"
	.byte	0x9
	.byte	0xc3
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.4byte	.LASF103
	.byte	0x9
	.byte	0xc4
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x11
	.string	"acd"
	.byte	0x9
	.byte	0xc5
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x11
	.string	"ebe"
	.byte	0x9
	.byte	0xc6
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.4byte	.LASF104
	.byte	0x9
	.byte	0xc7
	.4byte	0xd3
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0xb5
	.4byte	0x894
	.uleb128 0x12
	.4byte	0x775
	.uleb128 0x13
	.string	"val"
	.byte	0x9
	.byte	0xc9
	.4byte	0xd3
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.byte	0x9
	.byte	0xcd
	.4byte	0x99a
	.uleb128 0x11
	.string	"cd"
	.byte	0x9
	.byte	0xce
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.string	"re"
	.byte	0x9
	.byte	0xcf
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.4byte	.LASF96
	.byte	0x9
	.byte	0xd0
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.string	"dto"
	.byte	0x9
	.byte	0xd1
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.4byte	.LASF97
	.byte	0x9
	.byte	0xd2
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.4byte	.LASF98
	.byte	0x9
	.byte	0xd3
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.4byte	.LASF99
	.byte	0x9
	.byte	0xd4
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.4byte	.LASF100
	.byte	0x9
	.byte	0xd5
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.string	"rto"
	.byte	0x9
	.byte	0xd6
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.4byte	.LASF101
	.byte	0x9
	.byte	0xd7
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x11
	.string	"hto"
	.byte	0x9
	.byte	0xd8
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.4byte	.LASF102
	.byte	0x9
	.byte	0xd9
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x11
	.string	"hle"
	.byte	0x9
	.byte	0xda
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.4byte	.LASF103
	.byte	0x9
	.byte	0xdb
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x11
	.string	"acd"
	.byte	0x9
	.byte	0xdc
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x11
	.string	"ebe"
	.byte	0x9
	.byte	0xdd
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.4byte	.LASF104
	.byte	0x9
	.byte	0xde
	.4byte	0xd3
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0xcc
	.4byte	0x9b3
	.uleb128 0x12
	.4byte	0x894
	.uleb128 0x13
	.string	"val"
	.byte	0x9
	.byte	0xe0
	.4byte	0xd3
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.byte	0x9
	.byte	0xe4
	.4byte	0xa70
	.uleb128 0xe
	.4byte	.LASF105
	.byte	0x9
	.byte	0xe5
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.4byte	.LASF106
	.byte	0x9
	.byte	0xe6
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.4byte	.LASF107
	.byte	0x9
	.byte	0xe7
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.4byte	.LASF108
	.byte	0x9
	.byte	0xe8
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.4byte	.LASF109
	.byte	0x9
	.byte	0xe9
	.4byte	0xd3
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.4byte	.LASF110
	.byte	0x9
	.byte	0xea
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.4byte	.LASF111
	.byte	0x9
	.byte	0xeb
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.4byte	.LASF112
	.byte	0x9
	.byte	0xec
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.4byte	.LASF113
	.byte	0x9
	.byte	0xed
	.4byte	0xd3
	.byte	0x4
	.byte	0x6
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.4byte	.LASF114
	.byte	0x9
	.byte	0xee
	.4byte	0xd3
	.byte	0x4
	.byte	0xd
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.4byte	.LASF115
	.byte	0x9
	.byte	0xef
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.4byte	.LASF116
	.byte	0x9
	.byte	0xf0
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0xe3
	.4byte	0xa89
	.uleb128 0x12
	.4byte	0x9b3
	.uleb128 0x13
	.string	"val"
	.byte	0x9
	.byte	0xf2
	.4byte	0xd3
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.byte	0x9
	.byte	0xf6
	.4byte	0xadd
	.uleb128 0xe
	.4byte	.LASF117
	.byte	0x9
	.byte	0xf7
	.4byte	0xd3
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x9
	.byte	0xf8
	.4byte	0xd3
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.4byte	.LASF118
	.byte	0x9
	.byte	0xf9
	.4byte	0xd3
	.byte	0x4
	.byte	0xc
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.4byte	.LASF119
	.byte	0x9
	.byte	0xfa
	.4byte	0xd3
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.4byte	.LASF39
	.byte	0x9
	.byte	0xfb
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.byte	0xf5
	.4byte	0xaf6
	.uleb128 0x12
	.4byte	0xa89
	.uleb128 0x13
	.string	"val"
	.byte	0x9
	.byte	0xfd
	.4byte	0xd3
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.byte	0x9
	.2byte	0x101
	.4byte	0xb20
	.uleb128 0x15
	.4byte	.LASF120
	.byte	0x9
	.2byte	0x102
	.4byte	0xd3
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x9
	.2byte	0x103
	.4byte	0xd3
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.2byte	0x100
	.4byte	0xb3b
	.uleb128 0x12
	.4byte	0xaf6
	.uleb128 0x17
	.string	"val"
	.byte	0x9
	.2byte	0x105
	.4byte	0xd3
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.byte	0x9
	.2byte	0x109
	.4byte	0xb65
	.uleb128 0x15
	.4byte	.LASF120
	.byte	0x9
	.2byte	0x10a
	.4byte	0xd3
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x9
	.2byte	0x10b
	.4byte	0xd3
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.2byte	0x108
	.4byte	0xb80
	.uleb128 0x12
	.4byte	0xb3b
	.uleb128 0x17
	.string	"val"
	.byte	0x9
	.2byte	0x10d
	.4byte	0xd3
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.byte	0x9
	.2byte	0x115
	.4byte	0xbaa
	.uleb128 0x15
	.4byte	.LASF121
	.byte	0x9
	.2byte	0x116
	.4byte	0xd3
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x9
	.2byte	0x117
	.4byte	0xd3
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.2byte	0x114
	.4byte	0xbb9
	.uleb128 0x12
	.4byte	0xb80
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.byte	0x9
	.2byte	0x121
	.4byte	0xbe3
	.uleb128 0x15
	.4byte	.LASF120
	.byte	0x9
	.2byte	0x122
	.4byte	0xd3
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x9
	.2byte	0x123
	.4byte	0xd3
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.2byte	0x120
	.4byte	0xbf2
	.uleb128 0x12
	.4byte	0xbb9
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.byte	0x9
	.2byte	0x12a
	.4byte	0xc5b
	.uleb128 0x15
	.4byte	.LASF122
	.byte	0x9
	.2byte	0x12b
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x18
	.string	"fb"
	.byte	0x9
	.2byte	0x12c
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x18
	.string	"dsl"
	.byte	0x9
	.2byte	0x12d
	.4byte	0xd3
	.byte	0x4
	.byte	0x5
	.byte	0x19
	.byte	0
	.uleb128 0x15
	.4byte	.LASF123
	.byte	0x9
	.2byte	0x12e
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x18
	.string	"pbl"
	.byte	0x9
	.2byte	0x12f
	.4byte	0xd3
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x9
	.2byte	0x130
	.4byte	0xd3
	.byte	0x4
	.byte	0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.2byte	0x129
	.4byte	0xc76
	.uleb128 0x12
	.4byte	0xbf2
	.uleb128 0x17
	.string	"val"
	.byte	0x9
	.2byte	0x132
	.4byte	0xd3
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.byte	0x9
	.2byte	0x139
	.4byte	0xd2d
	.uleb128 0x18
	.string	"ti"
	.byte	0x9
	.2byte	0x13a
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x18
	.string	"ri"
	.byte	0x9
	.2byte	0x13b
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x18
	.string	"fbe"
	.byte	0x9
	.2byte	0x13c
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x15
	.4byte	.LASF33
	.byte	0x9
	.2byte	0x13d
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x18
	.string	"du"
	.byte	0x9
	.2byte	0x13e
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x18
	.string	"ces"
	.byte	0x9
	.2byte	0x13f
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x15
	.4byte	.LASF39
	.byte	0x9
	.2byte	0x140
	.4byte	0xd3
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0x18
	.string	"nis"
	.byte	0x9
	.2byte	0x141
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x15
	.4byte	.LASF124
	.byte	0x9
	.2byte	0x142
	.4byte	0xd3
	.byte	0x4
	.byte	0x3
	.byte	0x14
	.byte	0
	.uleb128 0x18
	.string	"fsm"
	.byte	0x9
	.2byte	0x143
	.4byte	0xd3
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x15
	.4byte	.LASF44
	.byte	0x9
	.2byte	0x144
	.4byte	0xd3
	.byte	0x4
	.byte	0xf
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.2byte	0x138
	.4byte	0xd48
	.uleb128 0x12
	.4byte	0xc76
	.uleb128 0x17
	.string	"val"
	.byte	0x9
	.2byte	0x146
	.4byte	0xd3
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.byte	0x9
	.2byte	0x14a
	.4byte	0xded
	.uleb128 0x18
	.string	"ti"
	.byte	0x9
	.2byte	0x14b
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x18
	.string	"ri"
	.byte	0x9
	.2byte	0x14c
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x18
	.string	"fbe"
	.byte	0x9
	.2byte	0x14d
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x15
	.4byte	.LASF33
	.byte	0x9
	.2byte	0x14e
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x18
	.string	"du"
	.byte	0x9
	.2byte	0x14f
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x18
	.string	"ces"
	.byte	0x9
	.2byte	0x150
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x15
	.4byte	.LASF39
	.byte	0x9
	.2byte	0x151
	.4byte	0xd3
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0x18
	.string	"ni"
	.byte	0x9
	.2byte	0x152
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x18
	.string	"ai"
	.byte	0x9
	.2byte	0x153
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x15
	.4byte	.LASF44
	.byte	0x9
	.2byte	0x154
	.4byte	0xd3
	.byte	0x4
	.byte	0x16
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.2byte	0x149
	.4byte	0xe08
	.uleb128 0x12
	.4byte	0xd48
	.uleb128 0x17
	.string	"val"
	.byte	0x9
	.2byte	0x156
	.4byte	0xd3
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.byte	0x9
	.2byte	0x166
	.4byte	0xe72
	.uleb128 0x15
	.4byte	.LASF125
	.byte	0x9
	.2byte	0x167
	.4byte	0xd3
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x15
	.4byte	.LASF126
	.byte	0x9
	.2byte	0x168
	.4byte	0xd3
	.byte	0x4
	.byte	0x3
	.byte	0x1a
	.byte	0
	.uleb128 0x15
	.4byte	.LASF127
	.byte	0x9
	.2byte	0x169
	.4byte	0xd3
	.byte	0x4
	.byte	0x3
	.byte	0x17
	.byte	0
	.uleb128 0x15
	.4byte	.LASF128
	.byte	0x9
	.2byte	0x16a
	.4byte	0xd3
	.byte	0x4
	.byte	0x4
	.byte	0x13
	.byte	0
	.uleb128 0x15
	.4byte	.LASF129
	.byte	0x9
	.2byte	0x16b
	.4byte	0xd3
	.byte	0x4
	.byte	0x4
	.byte	0xf
	.byte	0
	.uleb128 0x15
	.4byte	.LASF130
	.byte	0x9
	.2byte	0x16c
	.4byte	0xd3
	.byte	0x4
	.byte	0x4
	.byte	0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.2byte	0x165
	.4byte	0xe8d
	.uleb128 0x12
	.4byte	0xe08
	.uleb128 0x17
	.string	"val"
	.byte	0x9
	.2byte	0x16e
	.4byte	0xd3
	.byte	0
	.uleb128 0x19
	.2byte	0x804
	.byte	0x9
	.byte	0x4d
	.4byte	0x10f3
	.uleb128 0xf
	.4byte	.LASF132
	.byte	0x9
	.byte	0x64
	.4byte	0x4d0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF133
	.byte	0x9
	.byte	0x66
	.4byte	0xd3
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF134
	.byte	0x9
	.byte	0x70
	.4byte	0x52e
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF135
	.byte	0x9
	.byte	0x79
	.4byte	0x57d
	.byte	0xc
	.uleb128 0xf
	.4byte	.LASF136
	.byte	0x9
	.byte	0x81
	.4byte	0x5bd
	.byte	0x10
	.uleb128 0xf
	.4byte	.LASF137
	.byte	0x9
	.byte	0x89
	.4byte	0x5fd
	.byte	0x14
	.uleb128 0xf
	.4byte	.LASF138
	.byte	0x9
	.byte	0x91
	.4byte	0x63d
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF139
	.byte	0x9
	.byte	0x93
	.4byte	0xd3
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x1c
	.uleb128 0xf
	.4byte	.LASF140
	.byte	0x9
	.byte	0x96
	.4byte	0xd3
	.byte	0x20
	.uleb128 0xf
	.4byte	.LASF141
	.byte	0x9
	.byte	0xad
	.4byte	0x75c
	.byte	0x24
	.uleb128 0xf
	.4byte	.LASF142
	.byte	0x9
	.byte	0xaf
	.4byte	0xd3
	.byte	0x28
	.uleb128 0x1a
	.string	"cmd"
	.byte	0x9
	.byte	0xb1
	.4byte	0x3ae
	.byte	0x2c
	.uleb128 0xf
	.4byte	.LASF143
	.byte	0x9
	.byte	0xb3
	.4byte	0x10f3
	.byte	0x30
	.uleb128 0xf
	.4byte	.LASF144
	.byte	0x9
	.byte	0xca
	.4byte	0x87b
	.byte	0x40
	.uleb128 0xf
	.4byte	.LASF145
	.byte	0x9
	.byte	0xe1
	.4byte	0x99a
	.byte	0x44
	.uleb128 0xf
	.4byte	.LASF146
	.byte	0x9
	.byte	0xf3
	.4byte	0xa70
	.byte	0x48
	.uleb128 0xf
	.4byte	.LASF147
	.byte	0x9
	.byte	0xfe
	.4byte	0xadd
	.byte	0x4c
	.uleb128 0x1b
	.4byte	.LASF148
	.byte	0x9
	.2byte	0x106
	.4byte	0xb20
	.byte	0x50
	.uleb128 0x1b
	.4byte	.LASF149
	.byte	0x9
	.2byte	0x10e
	.4byte	0xb65
	.byte	0x54
	.uleb128 0x1b
	.4byte	.LASF150
	.byte	0x9
	.2byte	0x110
	.4byte	0xd3
	.byte	0x58
	.uleb128 0x1b
	.4byte	.LASF151
	.byte	0x9
	.2byte	0x111
	.4byte	0xd3
	.byte	0x5c
	.uleb128 0x1b
	.4byte	.LASF152
	.byte	0x9
	.2byte	0x112
	.4byte	0xd3
	.byte	0x60
	.uleb128 0x1b
	.4byte	.LASF153
	.byte	0x9
	.2byte	0x119
	.4byte	0xbaa
	.byte	0x64
	.uleb128 0x1b
	.4byte	.LASF154
	.byte	0x9
	.2byte	0x11b
	.4byte	0xd3
	.byte	0x68
	.uleb128 0x1b
	.4byte	.LASF155
	.byte	0x9
	.2byte	0x11c
	.4byte	0xd3
	.byte	0x6c
	.uleb128 0x1b
	.4byte	.LASF156
	.byte	0x9
	.2byte	0x11d
	.4byte	0xd3
	.byte	0x70
	.uleb128 0x1c
	.string	"uhs"
	.byte	0x9
	.2byte	0x11e
	.4byte	0xd3
	.byte	0x74
	.uleb128 0x1b
	.4byte	.LASF157
	.byte	0x9
	.2byte	0x125
	.4byte	0xbe3
	.byte	0x78
	.uleb128 0x1b
	.4byte	.LASF158
	.byte	0x9
	.2byte	0x127
	.4byte	0xd3
	.byte	0x7c
	.uleb128 0x1b
	.4byte	.LASF159
	.byte	0x9
	.2byte	0x133
	.4byte	0xc5b
	.byte	0x80
	.uleb128 0x1b
	.4byte	.LASF160
	.byte	0x9
	.2byte	0x135
	.4byte	0xd3
	.byte	0x84
	.uleb128 0x1b
	.4byte	.LASF161
	.byte	0x9
	.2byte	0x136
	.4byte	0x1103
	.byte	0x88
	.uleb128 0x1b
	.4byte	.LASF162
	.byte	0x9
	.2byte	0x147
	.4byte	0xd2d
	.byte	0x8c
	.uleb128 0x1b
	.4byte	.LASF163
	.byte	0x9
	.2byte	0x157
	.4byte	0xded
	.byte	0x90
	.uleb128 0x1b
	.4byte	.LASF164
	.byte	0x9
	.2byte	0x159
	.4byte	0xd3
	.byte	0x94
	.uleb128 0x1b
	.4byte	.LASF165
	.byte	0x9
	.2byte	0x15a
	.4byte	0xd3
	.byte	0x98
	.uleb128 0x1b
	.4byte	.LASF166
	.byte	0x9
	.2byte	0x15b
	.4byte	0xd3
	.byte	0x9c
	.uleb128 0x1b
	.4byte	.LASF167
	.byte	0x9
	.2byte	0x15c
	.4byte	0xd3
	.byte	0xa0
	.uleb128 0x1b
	.4byte	.LASF168
	.byte	0x9
	.2byte	0x15d
	.4byte	0xd3
	.byte	0xa4
	.uleb128 0x1b
	.4byte	.LASF169
	.byte	0x9
	.2byte	0x15e
	.4byte	0x1109
	.byte	0xa8
	.uleb128 0x1d
	.4byte	.LASF170
	.byte	0x9
	.2byte	0x15f
	.4byte	0xd3
	.2byte	0x100
	.uleb128 0x1d
	.4byte	.LASF171
	.byte	0x9
	.2byte	0x160
	.4byte	0xd3
	.2byte	0x104
	.uleb128 0x1d
	.4byte	.LASF172
	.byte	0x9
	.2byte	0x161
	.4byte	0xd3
	.2byte	0x108
	.uleb128 0x1d
	.4byte	.LASF173
	.byte	0x9
	.2byte	0x162
	.4byte	0xd3
	.2byte	0x10c
	.uleb128 0x1d
	.4byte	.LASF174
	.byte	0x9
	.2byte	0x163
	.4byte	0xd3
	.2byte	0x110
	.uleb128 0x1d
	.4byte	.LASF175
	.byte	0x9
	.2byte	0x164
	.4byte	0x1119
	.2byte	0x114
	.uleb128 0x1d
	.4byte	.LASF176
	.byte	0x9
	.2byte	0x16f
	.4byte	0xe72
	.2byte	0x800
	.byte	0
	.uleb128 0x1e
	.4byte	0xd3
	.4byte	0x1103
	.uleb128 0x1f
	.4byte	0x9b
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x242
	.uleb128 0x1e
	.4byte	0xd3
	.4byte	0x1119
	.uleb128 0x1f
	.4byte	0x9b
	.byte	0x15
	.byte	0
	.uleb128 0x1e
	.4byte	0xd3
	.4byte	0x112a
	.uleb128 0x20
	.4byte	0x9b
	.2byte	0x1ba
	.byte	0
	.uleb128 0x21
	.4byte	.LASF177
	.byte	0x9
	.2byte	0x170
	.4byte	0x1136
	.uleb128 0x22
	.4byte	0xe8d
	.uleb128 0x3
	.4byte	.LASF178
	.byte	0xa
	.byte	0x3e
	.4byte	0x10f3
	.uleb128 0xd
	.byte	0x30
	.byte	0xa
	.byte	0x4a
	.4byte	0x11bb
	.uleb128 0xf
	.4byte	.LASF179
	.byte	0xa
	.byte	0x4b
	.4byte	0xd3
	.byte	0
	.uleb128 0x1a
	.string	"arg"
	.byte	0xa
	.byte	0x4c
	.4byte	0xd3
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF92
	.byte	0xa
	.byte	0x4d
	.4byte	0x113b
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF93
	.byte	0xa
	.byte	0x4e
	.4byte	0xa2
	.byte	0x18
	.uleb128 0xf
	.4byte	.LASF180
	.byte	0xa
	.byte	0x4f
	.4byte	0x2c
	.byte	0x1c
	.uleb128 0xf
	.4byte	.LASF181
	.byte	0xa
	.byte	0x50
	.4byte	0x2c
	.byte	0x20
	.uleb128 0xf
	.4byte	.LASF182
	.byte	0xa
	.byte	0x51
	.4byte	0x25
	.byte	0x24
	.uleb128 0xf
	.4byte	.LASF183
	.byte	0xa
	.byte	0x6b
	.4byte	0xf0
	.byte	0x28
	.uleb128 0xf
	.4byte	.LASF184
	.byte	0xa
	.byte	0x6c
	.4byte	0x25
	.byte	0x2c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF185
	.byte	0xa
	.byte	0x6d
	.4byte	0x1146
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.4byte	.LASF186
	.uleb128 0x6
	.byte	0x4
	.4byte	0x11bb
	.uleb128 0xd
	.byte	0x8
	.byte	0xb
	.byte	0x18
	.4byte	0x11f4
	.uleb128 0xf
	.4byte	.LASF187
	.byte	0xb
	.byte	0x19
	.4byte	0xd3
	.byte	0
	.uleb128 0xf
	.4byte	.LASF188
	.byte	0xb
	.byte	0x1a
	.4byte	0xd3
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF189
	.byte	0xb
	.byte	0x1b
	.4byte	0x11d3
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.byte	0x1
	.byte	0x27
	.4byte	0x1224
	.uleb128 0xa
	.4byte	.LASF190
	.byte	0
	.uleb128 0xa
	.4byte	.LASF191
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF192
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF193
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF194
	.byte	0x1
	.byte	0x2c
	.4byte	0x11ff
	.uleb128 0xd
	.byte	0x10
	.byte	0x1
	.byte	0x2e
	.4byte	0x1268
	.uleb128 0x1a
	.string	"ptr"
	.byte	0x1
	.byte	0x2f
	.4byte	0x1268
	.byte	0
	.uleb128 0xf
	.4byte	.LASF195
	.byte	0x1
	.byte	0x30
	.4byte	0x2c
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF196
	.byte	0x1
	.byte	0x31
	.4byte	0x2c
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF197
	.byte	0x1
	.byte	0x32
	.4byte	0x2c
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbd
	.uleb128 0x3
	.4byte	.LASF198
	.byte	0x1
	.byte	0x33
	.4byte	0x122f
	.uleb128 0x23
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x17c
	.4byte	0x12c
	.byte	0x3
	.4byte	0x12af
	.uleb128 0x24
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x17c
	.4byte	0x12af
	.uleb128 0x24
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x17c
	.4byte	0xd3
	.uleb128 0x25
	.string	"ret"
	.byte	0x1
	.2byte	0x17d
	.4byte	0x12c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd3
	.uleb128 0x26
	.4byte	.LASF202
	.byte	0x2
	.byte	0x3f
	.4byte	0x12c
	.byte	0x3
	.4byte	0x12cf
	.uleb128 0x27
	.string	"p"
	.byte	0x2
	.byte	0x3f
	.4byte	0xe9
	.byte	0
	.uleb128 0x28
	.4byte	.LASF209
	.byte	0x1
	.byte	0xb3
	.4byte	0x2c
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1331
	.uleb128 0x29
	.4byte	.LASF203
	.byte	0x1
	.byte	0xb5
	.4byte	0x1331
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2a
	.4byte	.LASF204
	.byte	0x1
	.byte	0xb6
	.4byte	0x2c
	.4byte	.LLST0
	.uleb128 0x2b
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.byte	0xbb
	.4byte	0x2c
	.4byte	.LLST1
	.uleb128 0x2d
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.uleb128 0x2a
	.4byte	.LASF205
	.byte	0x1
	.byte	0xbc
	.4byte	0x1103
	.4byte	.LLST2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x2c
	.uleb128 0x2e
	.4byte	.LASF206
	.byte	0x1
	.2byte	0x113
	.4byte	0x12c
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1361
	.uleb128 0x2f
	.string	"cmd"
	.byte	0x1
	.2byte	0x113
	.4byte	0x1361
	.4byte	.LLST3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1367
	.uleb128 0x7
	.4byte	0x11bb
	.uleb128 0x2e
	.4byte	.LASF207
	.byte	0x1
	.2byte	0x11d
	.4byte	0x3ae
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13f6
	.uleb128 0x2f
	.string	"cmd"
	.byte	0x1
	.2byte	0x11d
	.4byte	0x11cd
	.4byte	.LLST4
	.uleb128 0x30
	.string	"res"
	.byte	0x1
	.2byte	0x11f
	.4byte	0x3ae
	.4byte	.LLST5
	.uleb128 0x31
	.4byte	.LASF208
	.4byte	0x1406
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5804
	.uleb128 0x32
	.4byte	.LVL30
	.4byte	0x1d29
	.4byte	0x13e5
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x13b
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5804
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.uleb128 0x34
	.4byte	.LVL31
	.4byte	0x1336
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	0xab
	.4byte	0x1406
	.uleb128 0x1f
	.4byte	0x9b
	.byte	0xb
	.byte	0
	.uleb128 0x7
	.4byte	0x13f6
	.uleb128 0x35
	.4byte	.LASF210
	.byte	0x1
	.byte	0xc9
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14f4
	.uleb128 0x36
	.4byte	.LASF211
	.byte	0x1
	.byte	0xc9
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x31
	.4byte	.LASF208
	.4byte	0x1504
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5778
	.uleb128 0x2d
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.byte	0xcb
	.4byte	0x2c
	.4byte	.LLST6
	.uleb128 0x2d
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.uleb128 0x2a
	.4byte	.LASF203
	.byte	0x1
	.byte	0xcf
	.4byte	0x1331
	.4byte	.LLST7
	.uleb128 0x2a
	.4byte	.LASF205
	.byte	0x1
	.byte	0xd0
	.4byte	0x1103
	.4byte	.LLST8
	.uleb128 0x2a
	.4byte	.LASF212
	.byte	0x1
	.byte	0xd2
	.4byte	0x2c
	.4byte	.LLST9
	.uleb128 0x2a
	.4byte	.LASF213
	.byte	0x1
	.byte	0xd5
	.4byte	0x12c
	.4byte	.LLST10
	.uleb128 0x32
	.4byte	.LVL42
	.4byte	0x1d29
	.4byte	0x14c6
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xd1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5778
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.byte	0
	.uleb128 0x34
	.4byte	.LVL49
	.4byte	0x1d29
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xdb
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5778
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC27
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	0xab
	.4byte	0x1504
	.uleb128 0x1f
	.4byte	0x9b
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.4byte	0x14f4
	.uleb128 0x28
	.4byte	.LASF214
	.byte	0x1
	.byte	0xe7
	.4byte	0xf0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x157d
	.uleb128 0x37
	.string	"evt"
	.byte	0x1
	.byte	0xed
	.4byte	0x11f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x38
	.4byte	.LVL54
	.4byte	0x1d34
	.uleb128 0x32
	.4byte	.LVL55
	.4byte	0x1d3f
	.4byte	0x1567
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC33
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC31
	.byte	0
	.uleb128 0x34
	.4byte	.LVL56
	.4byte	0x1d4a
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF215
	.byte	0x1
	.2byte	0x164
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15c4
	.uleb128 0x3a
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x164
	.4byte	0xd3
	.4byte	.LLST11
	.uleb128 0x3b
	.string	"cmd"
	.byte	0x1
	.2byte	0x164
	.4byte	0x11cd
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3c
	.4byte	.LASF208
	.4byte	0x15d4
	.uleb128 0x38
	.4byte	.LVL63
	.4byte	0x1d55
	.byte	0
	.uleb128 0x1e
	.4byte	0xab
	.4byte	0x15d4
	.uleb128 0x1f
	.4byte	0x9b
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.4byte	0x15c4
	.uleb128 0x39
	.4byte	.LASF216
	.byte	0x1
	.2byte	0x144
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x167f
	.uleb128 0x3a
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x144
	.4byte	0xd3
	.4byte	.LLST12
	.uleb128 0x3b
	.string	"cmd"
	.byte	0x1
	.2byte	0x144
	.4byte	0x11cd
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x30
	.string	"err"
	.byte	0x1
	.2byte	0x151
	.4byte	0xf0
	.4byte	.LLST13
	.uleb128 0x31
	.4byte	.LASF208
	.4byte	0x168f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5810
	.uleb128 0x32
	.4byte	.LVL65
	.4byte	0x1d60
	.4byte	0x1645
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 8
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x32
	.4byte	.LVL67
	.4byte	0x1d29
	.4byte	0x1675
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x154
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5810
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC41
	.byte	0
	.uleb128 0x38
	.4byte	.LVL70
	.4byte	0x1d55
	.byte	0
	.uleb128 0x1e
	.4byte	0xab
	.4byte	0x168f
	.uleb128 0x1f
	.4byte	0x9b
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.4byte	0x167f
	.uleb128 0x2e
	.4byte	.LASF217
	.byte	0x1
	.2byte	0x182
	.4byte	0xf0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18f8
	.uleb128 0x3b
	.string	"evt"
	.byte	0x1
	.2byte	0x182
	.4byte	0x11f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3b
	.string	"cmd"
	.byte	0x1
	.2byte	0x182
	.4byte	0x11cd
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3d
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x183
	.4byte	0x18f8
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3d
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x183
	.4byte	0x18fe
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x3e
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x185
	.4byte	0x1914
	.uleb128 0x3f
	.4byte	.LASF221
	.byte	0x1
	.2byte	0x18b
	.4byte	0x11f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3c
	.4byte	.LASF208
	.4byte	0x1929
	.uleb128 0x40
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x18e
	.4byte	0x1224
	.4byte	.LLST14
	.uleb128 0x40
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x18f
	.4byte	0x1224
	.4byte	.LLST15
	.uleb128 0x41
	.4byte	0x1279
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.byte	0x1
	.2byte	0x197
	.4byte	0x1765
	.uleb128 0x42
	.4byte	0x1296
	.4byte	.LLST16
	.uleb128 0x42
	.4byte	0x128a
	.4byte	.LLST17
	.uleb128 0x2d
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.uleb128 0x43
	.4byte	0x12a2
	.4byte	.LLST18
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	0x1279
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.byte	0x1
	.2byte	0x19b
	.4byte	0x179f
	.uleb128 0x42
	.4byte	0x1296
	.4byte	.LLST19
	.uleb128 0x42
	.4byte	0x128a
	.4byte	.LLST20
	.uleb128 0x2d
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.uleb128 0x43
	.4byte	0x12a2
	.4byte	.LLST21
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	0x1279
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.byte	0x1
	.2byte	0x1ac
	.4byte	0x17d9
	.uleb128 0x42
	.4byte	0x1296
	.4byte	.LLST22
	.uleb128 0x42
	.4byte	0x128a
	.4byte	.LLST23
	.uleb128 0x2d
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.uleb128 0x43
	.4byte	0x12a2
	.4byte	.LLST24
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	0x1279
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.byte	0x1
	.2byte	0x1b0
	.4byte	0x1813
	.uleb128 0x42
	.4byte	0x1296
	.4byte	.LLST25
	.uleb128 0x42
	.4byte	0x128a
	.4byte	.LLST26
	.uleb128 0x2d
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.uleb128 0x43
	.4byte	0x12a2
	.4byte	.LLST27
	.byte	0
	.byte	0
	.uleb128 0x44
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.4byte	0x184c
	.uleb128 0x40
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x1b3
	.4byte	0x25
	.4byte	.LLST28
	.uleb128 0x38
	.4byte	.LVL86
	.4byte	0x12cf
	.uleb128 0x38
	.4byte	.LVL87
	.4byte	0x140b
	.uleb128 0x38
	.4byte	.LVL88
	.4byte	0x1d69
	.byte	0
	.uleb128 0x41
	.4byte	0x1279
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.byte	0x1
	.2byte	0x1c3
	.4byte	0x1886
	.uleb128 0x42
	.4byte	0x1296
	.4byte	.LLST29
	.uleb128 0x42
	.4byte	0x128a
	.4byte	.LLST30
	.uleb128 0x2d
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.uleb128 0x43
	.4byte	0x12a2
	.4byte	.LLST31
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL76
	.4byte	0x15d9
	.4byte	0x18a1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL79
	.4byte	0x15d9
	.4byte	0x18bc
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL82
	.4byte	0x157d
	.4byte	0x18d7
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.4byte	.LVL83
	.4byte	0x1d55
	.uleb128 0x34
	.4byte	.LVL94
	.4byte	0x157d
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1224
	.uleb128 0x6
	.byte	0x4
	.4byte	0x11f4
	.uleb128 0x1e
	.4byte	0xb2
	.4byte	0x1914
	.uleb128 0x1f
	.4byte	0x9b
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.4byte	0x1904
	.uleb128 0x1e
	.4byte	0xab
	.4byte	0x1929
	.uleb128 0x1f
	.4byte	0x9b
	.byte	0xe
	.byte	0
	.uleb128 0x7
	.4byte	0x1919
	.uleb128 0x45
	.4byte	.LASF224
	.byte	0x1
	.byte	0xfd
	.4byte	0xf0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a06
	.uleb128 0x46
	.string	"cmd"
	.byte	0x1
	.byte	0xfd
	.4byte	0x11cd
	.4byte	.LLST32
	.uleb128 0x36
	.4byte	.LASF199
	.byte	0x1
	.byte	0xfd
	.4byte	0x18f8
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x36
	.4byte	.LASF219
	.byte	0x1
	.byte	0xfe
	.4byte	0x18fe
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3f
	.4byte	.LASF225
	.byte	0x1
	.2byte	0x100
	.4byte	0x11f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.string	"err"
	.byte	0x1
	.2byte	0x101
	.4byte	0xf0
	.4byte	.LLST33
	.uleb128 0x32
	.4byte	.LVL105
	.4byte	0x1d4a
	.4byte	0x19a3
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x38
	.4byte	.LVL107
	.4byte	0x1d34
	.uleb128 0x32
	.4byte	.LVL108
	.4byte	0x1d3f
	.4byte	0x19e0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC51
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.4byte	.LVL110
	.4byte	0x1d55
	.uleb128 0x34
	.4byte	.LVL114
	.4byte	0x1694
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x47
	.4byte	.LASF254
	.byte	0x1
	.byte	0x55
	.4byte	0xf0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a6d
	.uleb128 0x31
	.4byte	.LASF208
	.4byte	0x1a7d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5746
	.uleb128 0x32
	.4byte	.LVL117
	.4byte	0x1d29
	.4byte	0x1a5d
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x57
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5746
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC54
	.byte	0
	.uleb128 0x34
	.4byte	.LVL118
	.4byte	0x1d74
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	0xab
	.4byte	0x1a7d
	.uleb128 0x1f
	.4byte	0x9b
	.byte	0x23
	.byte	0
	.uleb128 0x7
	.4byte	0x1a6d
	.uleb128 0x48
	.4byte	.LASF255
	.byte	0x1
	.byte	0x68
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1adf
	.uleb128 0x31
	.4byte	.LASF208
	.4byte	0x1aef
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5749
	.uleb128 0x32
	.4byte	.LVL119
	.4byte	0x1d29
	.4byte	0x1ad5
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x6a
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5749
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC59
	.byte	0
	.uleb128 0x38
	.4byte	.LVL120
	.4byte	0x1d80
	.byte	0
	.uleb128 0x1e
	.4byte	0xab
	.4byte	0x1aef
	.uleb128 0x1f
	.4byte	0x9b
	.byte	0x25
	.byte	0
	.uleb128 0x7
	.4byte	0x1adf
	.uleb128 0x49
	.4byte	.LASF256
	.byte	0x1
	.byte	0x73
	.4byte	0xf0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c6b
	.uleb128 0x4a
	.4byte	.LASF226
	.byte	0x1
	.byte	0x73
	.4byte	0x25
	.4byte	.LLST34
	.uleb128 0x4a
	.4byte	.LASF227
	.byte	0x1
	.byte	0x73
	.4byte	0x11cd
	.4byte	.LLST35
	.uleb128 0x2c
	.string	"ret"
	.byte	0x1
	.byte	0x75
	.4byte	0xf0
	.4byte	.LLST36
	.uleb128 0x2a
	.4byte	.LASF228
	.byte	0x1
	.byte	0x7d
	.4byte	0x3ae
	.4byte	.LLST37
	.uleb128 0x3c
	.4byte	.LASF208
	.4byte	0x1c7b
	.uleb128 0x4b
	.string	"out"
	.byte	0x1
	.byte	0xab
	.4byte	.L85
	.uleb128 0x29
	.4byte	.LASF199
	.byte	0x1
	.byte	0xa1
	.4byte	0x1224
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.4byte	.LASF219
	.byte	0x1
	.byte	0xa2
	.4byte	0x11f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4c
	.4byte	0x12b5
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.byte	0x1
	.byte	0x87
	.4byte	0x1b96
	.uleb128 0x42
	.4byte	0x12c5
	.4byte	.LLST38
	.byte	0
	.uleb128 0x32
	.4byte	.LVL122
	.4byte	0x1d8c
	.4byte	0x1bb4
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x38
	.4byte	.LVL123
	.4byte	0x1509
	.uleb128 0x32
	.4byte	.LVL124
	.4byte	0x136c
	.4byte	0x1bd1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL128
	.4byte	0x1d98
	.4byte	0x1bf0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x32
	.4byte	.LVL129
	.4byte	0x140b
	.4byte	0x1c03
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x32
	.4byte	.LVL130
	.4byte	0x1da1
	.4byte	0x1c17
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL132
	.4byte	0x1dac
	.4byte	0x1c31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL135
	.4byte	0x192e
	.4byte	0x1c51
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x34
	.4byte	.LVL144
	.4byte	0x1db7
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	0xab
	.4byte	0x1c7b
	.uleb128 0x1f
	.4byte	0x9b
	.byte	0x19
	.byte	0
	.uleb128 0x7
	.4byte	0x1c6b
	.uleb128 0x37
	.string	"TAG"
	.byte	0x1
	.byte	0x25
	.4byte	0x1c92
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC31
	.byte	0x9f
	.uleb128 0x7
	.4byte	0xb2
	.uleb128 0x1e
	.4byte	0x242
	.4byte	0x1ca7
	.uleb128 0x1f
	.4byte	0x9b
	.byte	0x3
	.byte	0
	.uleb128 0x29
	.4byte	.LASF229
	.byte	0x1
	.byte	0x43
	.4byte	0x1c97
	.uleb128 0x5
	.byte	0x3
	.4byte	s_dma_desc
	.uleb128 0x29
	.4byte	.LASF230
	.byte	0x1
	.byte	0x44
	.4byte	0x126e
	.uleb128 0x5
	.byte	0x3
	.4byte	s_cur_transfer
	.uleb128 0x29
	.4byte	.LASF231
	.byte	0x1
	.byte	0x45
	.4byte	0x149
	.uleb128 0x5
	.byte	0x3
	.4byte	s_request_mutex
	.uleb128 0x4d
	.4byte	.LASF232
	.byte	0x1
	.byte	0x46
	.4byte	0x12c
	.uleb128 0x4e
	.4byte	.LASF233
	.byte	0x9
	.2byte	0x171
	.4byte	0x112a
	.uleb128 0x4f
	.4byte	.LASF234
	.byte	0x1
	.byte	0x35
	.4byte	0x1d02
	.uleb128 0x5
	.byte	0x3
	.4byte	SDMMC_DATA_ERR_MASK
	.uleb128 0x7
	.4byte	0xd3
	.uleb128 0x4f
	.4byte	.LASF235
	.byte	0x1
	.byte	0x3a
	.4byte	0x1d02
	.uleb128 0x5
	.byte	0x3
	.4byte	SDMMC_DMA_DONE_MASK
	.uleb128 0x4f
	.4byte	.LASF236
	.byte	0x1
	.byte	0x3e
	.4byte	0x1d02
	.uleb128 0x5
	.byte	0x3
	.4byte	SDMMC_CMD_ERR_MASK
	.uleb128 0x50
	.4byte	.LASF237
	.4byte	.LASF237
	.byte	0xd
	.byte	0x29
	.uleb128 0x50
	.4byte	.LASF238
	.4byte	.LASF238
	.byte	0xc
	.byte	0x57
	.uleb128 0x50
	.4byte	.LASF239
	.4byte	.LASF239
	.byte	0xc
	.byte	0x6b
	.uleb128 0x50
	.4byte	.LASF240
	.4byte	.LASF240
	.byte	0xb
	.byte	0x21
	.uleb128 0x50
	.4byte	.LASF241
	.4byte	.LASF241
	.byte	0xb
	.byte	0x25
	.uleb128 0x51
	.4byte	.LASF246
	.4byte	.LASF246
	.uleb128 0x50
	.4byte	.LASF242
	.4byte	.LASF242
	.byte	0xb
	.byte	0x27
	.uleb128 0x52
	.4byte	.LASF243
	.4byte	.LASF243
	.byte	0x8
	.2byte	0x578
	.uleb128 0x52
	.4byte	.LASF244
	.4byte	.LASF244
	.byte	0x8
	.2byte	0x3ac
	.uleb128 0x52
	.4byte	.LASF245
	.4byte	.LASF245
	.byte	0x8
	.2byte	0x38a
	.uleb128 0x51
	.4byte	.LASF247
	.4byte	.LASF247
	.uleb128 0x50
	.4byte	.LASF248
	.4byte	.LASF248
	.byte	0xb
	.byte	0x23
	.uleb128 0x50
	.4byte	.LASF249
	.4byte	.LASF249
	.byte	0xb
	.byte	0x1f
	.uleb128 0x52
	.4byte	.LASF250
	.4byte	.LASF250
	.byte	0x8
	.2byte	0x265
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x12
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
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
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.uleb128 0x4b
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x4c
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4d
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
	.uleb128 0x4e
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
	.uleb128 0x4f
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
	.uleb128 0x50
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
	.uleb128 0x51
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
	.uleb128 0x52
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
	.4byte	.LVL1
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0xb
	.byte	0x78
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x3
	.4byte	s_dma_desc
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0xb
	.byte	0x78
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x3
	.4byte	s_dma_desc
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x10
	.byte	0x79
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.byte	0x33
	.byte	0x1a
	.byte	0x34
	.byte	0x24
	.byte	0x3
	.4byte	s_dma_desc
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x10
	.byte	0x79
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.byte	0x33
	.byte	0x1a
	.byte	0x34
	.byte	0x24
	.byte	0x3
	.4byte	s_dma_desc
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL10
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
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL14
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL34
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL42-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL42
	.4byte	.LVL49-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL49
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL38
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL41
	.4byte	.LVL42-1
	.2byte	0x5
	.byte	0x3
	.4byte	s_cur_transfer+8
	.4byte	.LVL42
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL48
	.4byte	.LVL49-1
	.2byte	0x5
	.byte	0x3
	.4byte	s_cur_transfer+8
	.4byte	.LVL49
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0xb
	.byte	0x7a
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x3
	.4byte	s_dma_desc
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0xb
	.byte	0x7a
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x3
	.4byte	s_dma_desc
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL42-1
	.2byte	0xf
	.byte	0x3
	.4byte	s_cur_transfer+8
	.byte	0x6
	.byte	0x34
	.byte	0x24
	.byte	0x3
	.4byte	s_dma_desc
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL48
	.2byte	0xb
	.byte	0x7a
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x3
	.4byte	s_dma_desc
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL49-1
	.2byte	0xf
	.byte	0x3
	.4byte	s_cur_transfer+8
	.byte	0x6
	.byte	0x34
	.byte	0x24
	.byte	0x3
	.4byte	s_dma_desc
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL53
	.2byte	0xb
	.byte	0x7a
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x3
	.4byte	s_dma_desc
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL43
	.4byte	.LVL49-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL49
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x8
	.byte	0x7b
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0x30
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL49-1
	.2byte	0xc
	.byte	0x3
	.4byte	s_cur_transfer+4
	.byte	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0x30
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x8
	.byte	0x7b
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0x30
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0xc
	.byte	0x3
	.4byte	s_cur_transfer+4
	.byte	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0x30
	.byte	0x29
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL59
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
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL62
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL64
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL69
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL66
	.4byte	.LVL68
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL72
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL92
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL95
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL102
	.4byte	.LFE27
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL74
	.4byte	.LVL80
	.2byte	0x4
	.byte	0xa
	.2byte	0x142
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL98
	.2byte	0x4
	.byte	0xa
	.2byte	0x142
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL74
	.4byte	.LVL80
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL98
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL75
	.4byte	.LVL76-1
	.2byte	0x9
	.byte	0x79
	.sleb128 0
	.byte	0xa
	.2byte	0x142
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x9
	.byte	0x79
	.sleb128 0
	.byte	0xa
	.2byte	0x142
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL77
	.4byte	.LVL80
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL98
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL77
	.4byte	.LVL80
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL98
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL77
	.4byte	.LVL79-1
	.2byte	0x7
	.byte	0x78
	.sleb128 0
	.byte	0x34
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x7
	.byte	0x78
	.sleb128 0
	.byte	0x34
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL80
	.4byte	.LVL92
	.2byte	0x4
	.byte	0xa
	.2byte	0xa680
	.byte	0x9f
	.4byte	.LVL98
	.4byte	.LVL100
	.2byte	0x4
	.byte	0xa
	.2byte	0xa680
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL80
	.4byte	.LVL92
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	.LVL98
	.4byte	.LVL100
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL81
	.4byte	.LVL82-1
	.2byte	0x9
	.byte	0x79
	.sleb128 0
	.byte	0xa
	.2byte	0xa680
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL83
	.4byte	.LVL92
	.2byte	0x4
	.byte	0xa
	.2byte	0x103
	.byte	0x9f
	.4byte	.LVL98
	.4byte	.LVL100
	.2byte	0x4
	.byte	0xa
	.2byte	0x103
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL83
	.4byte	.LVL92
	.2byte	0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x9f
	.4byte	.LVL98
	.4byte	.LVL100
	.2byte	0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x9
	.byte	0x79
	.sleb128 0
	.byte	0xa
	.2byte	0x103
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x9
	.byte	0x79
	.sleb128 0
	.byte	0xa
	.2byte	0x103
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL86
	.4byte	.LVL87-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL92
	.4byte	.LVL95
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL92
	.4byte	.LVL95
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL93
	.4byte	.LVL94-1
	.2byte	0x7
	.byte	0x79
	.sleb128 0
	.byte	0x38
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x7
	.byte	0x79
	.sleb128 0
	.byte	0x38
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL104
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL109
	.4byte	.LVL111
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL111
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL115
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL106
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL112
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL116
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL121
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL133
	.4byte	.LVL137
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL139
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL140
	.4byte	.LVL141
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL141
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL142
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL121
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL143
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL133
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL142
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL131
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL142
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL126
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL127
	.4byte	.LVL128-1
	.2byte	0x2
	.byte	0x73
	.sleb128 24
	.4byte	.LVL141
	.4byte	.LVL142
	.2byte	0x2
	.byte	0x73
	.sleb128 24
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
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	0
	.4byte	0
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF197:
	.string	"desc_remaining"
.LASF92:
	.string	"response"
.LASF3:
	.string	"size_t"
.LASF13:
	.string	"sizetype"
.LASF234:
	.string	"SDMMC_DATA_ERR_MASK"
.LASF214:
	.string	"handle_idle_state_events"
.LASF17:
	.string	"int32_t"
.LASF139:
	.string	"blksiz"
.LASF242:
	.string	"sdmmc_host_dma_resume"
.LASF65:
	.string	"use_hold_reg"
.LASF211:
	.string	"num_desc"
.LASF217:
	.string	"process_events"
.LASF208:
	.string	"__func__"
.LASF28:
	.string	"BaseType_t"
.LASF35:
	.string	"last_descriptor"
.LASF111:
	.string	"data_busy"
.LASF79:
	.string	"ceata_device_interrupt_status"
.LASF120:
	.string	"cards"
.LASF199:
	.string	"state"
.LASF46:
	.string	"cmd_index"
.LASF37:
	.string	"second_address_chained"
.LASF106:
	.string	"fifo_tx_watermark"
.LASF221:
	.string	"orig_evt"
.LASF63:
	.string	"boot_mode"
.LASF155:
	.string	"verid"
.LASF118:
	.string	"rx_watermark"
.LASF129:
	.string	"div_factor_h"
.LASF230:
	.string	"s_cur_transfer"
.LASF130:
	.string	"div_factor_m"
.LASF116:
	.string	"dma_req"
.LASF128:
	.string	"div_factor_p"
.LASF41:
	.string	"owned_by_idmac"
.LASF127:
	.string	"phase_core"
.LASF43:
	.string	"buffer2_size"
.LASF4:
	.string	"__uint8_t"
.LASF104:
	.string	"sdio"
.LASF76:
	.string	"abort_read_data"
.LASF233:
	.string	"SDMMC"
.LASF174:
	.string	"enable_shift"
.LASF218:
	.string	"pstate"
.LASF110:
	.string	"data3_status"
.LASF254:
	.string	"sdmmc_host_transaction_handler_init"
.LASF12:
	.string	"long int"
.LASF31:
	.string	"buffer2_ptr"
.LASF158:
	.string	"reserved_7c"
.LASF256:
	.string	"sdmmc_host_do_transaction"
.LASF150:
	.string	"gpio"
.LASF172:
	.string	"uhs_reg_ext"
.LASF48:
	.string	"response_long"
.LASF183:
	.string	"error"
.LASF30:
	.string	"QueueHandle_t"
.LASF2:
	.string	"signed char"
.LASF16:
	.string	"uint8_t"
.LASF75:
	.string	"send_irq_response"
.LASF149:
	.string	"wrtprt"
.LASF159:
	.string	"bmod"
.LASF5:
	.string	"unsigned char"
.LASF73:
	.string	"dma_enable"
.LASF132:
	.string	"ctrl"
.LASF156:
	.string	"hcon"
.LASF137:
	.string	"tmout"
.LASF27:
	.string	"_Bool"
.LASF190:
	.string	"SDMMC_IDLE"
.LASF50:
	.string	"data_expected"
.LASF243:
	.string	"xQueueCreateMutex"
.LASF167:
	.string	"bufaddrl"
.LASF15:
	.string	"char"
.LASF195:
	.string	"size_remaining"
.LASF168:
	.string	"bufaddru"
.LASF61:
	.string	"expect_boot_ack"
.LASF72:
	.string	"int_enable"
.LASF164:
	.string	"dscaddr"
.LASF54:
	.string	"stop_abort_cmd"
.LASF83:
	.string	"use_internal_dma"
.LASF182:
	.string	"flags"
.LASF131:
	.string	"buffer1_ptr"
.LASF147:
	.string	"fifoth"
.LASF22:
	.string	"ESP_LOG_ERROR"
.LASF58:
	.string	"read_ceata"
.LASF100:
	.string	"dcrc"
.LASF187:
	.string	"sdmmc_status"
.LASF170:
	.string	"cardthrctl"
.LASF154:
	.string	"usrid"
.LASF194:
	.string	"sdmmc_req_state_t"
.LASF96:
	.string	"cmd_done"
.LASF122:
	.string	"sw_reset"
.LASF80:
	.string	"card_voltage_a"
.LASF81:
	.string	"card_voltage_b"
.LASF109:
	.string	"cmd_fsm_state"
.LASF160:
	.string	"pldmnd"
.LASF62:
	.string	"disable_boot"
.LASF51:
	.string	"stream_mode"
.LASF56:
	.string	"card_num"
.LASF144:
	.string	"mintsts"
.LASF161:
	.string	"dbaddr"
.LASF237:
	.string	"__assert_func"
.LASF198:
	.string	"sdmmc_transfer_state_t"
.LASF125:
	.string	"phase_dout"
.LASF250:
	.string	"xQueueGenericSend"
.LASF212:
	.string	"size_to_fill"
.LASF101:
	.string	"drto"
.LASF14:
	.string	"long unsigned int"
.LASF143:
	.string	"resp"
.LASF146:
	.string	"status"
.LASF239:
	.string	"esp_log_write"
.LASF244:
	.string	"vQueueDelete"
.LASF196:
	.string	"next_desc"
.LASF210:
	.string	"fill_dma_descriptors"
.LASF171:
	.string	"back_end_power"
.LASF94:
	.string	"card_width"
.LASF102:
	.string	"frun"
.LASF176:
	.string	"clock"
.LASF232:
	.string	"s_is_app_cmd"
.LASF175:
	.string	"reserved_114"
.LASF141:
	.string	"intmask"
.LASF11:
	.string	"__intptr_t"
.LASF124:
	.string	"fbe_code"
.LASF184:
	.string	"timeout_ms"
.LASF181:
	.string	"blklen"
.LASF98:
	.string	"rxdr"
.LASF8:
	.string	"__uint32_t"
.LASF119:
	.string	"dw_dma_mts"
.LASF9:
	.string	"long long int"
.LASF97:
	.string	"txdr"
.LASF140:
	.string	"bytcnt"
.LASF228:
	.string	"hw_cmd"
.LASF123:
	.string	"enable"
.LASF107:
	.string	"fifo_empty"
.LASF88:
	.string	"card0"
.LASF89:
	.string	"card1"
.LASF169:
	.string	"reserved_a8"
.LASF142:
	.string	"cmdarg"
.LASF20:
	.string	"esp_err_t"
.LASF177:
	.string	"sdmmc_dev_t"
.LASF151:
	.string	"tcbcnt"
.LASF216:
	.string	"process_command_response"
.LASF200:
	.string	"mask"
.LASF251:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF105:
	.string	"fifo_rx_watermark"
.LASF186:
	.string	"float"
.LASF204:
	.string	"count"
.LASF225:
	.string	"event"
.LASF185:
	.string	"sdmmc_command_t"
.LASF32:
	.string	"next_desc_ptr"
.LASF0:
	.string	"unsigned int"
.LASF70:
	.string	"fifo_reset"
.LASF136:
	.string	"clkena"
.LASF19:
	.string	"intptr_t"
.LASF60:
	.string	"enable_boot"
.LASF112:
	.string	"data_fsm_busy"
.LASF23:
	.string	"ESP_LOG_WARN"
.LASF153:
	.string	"debnce"
.LASF219:
	.string	"unhandled_events"
.LASF166:
	.string	"dscaddru"
.LASF55:
	.string	"send_init"
.LASF108:
	.string	"fifo_full"
.LASF201:
	.string	"mask_check_and_clear"
.LASF180:
	.string	"datalen"
.LASF229:
	.string	"s_dma_desc"
.LASF252:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdmmc_transaction.c"
.LASF115:
	.string	"dma_ack"
.LASF82:
	.string	"enable_od_pullup"
.LASF134:
	.string	"clkdiv"
.LASF84:
	.string	"div0"
.LASF85:
	.string	"div1"
.LASF86:
	.string	"div2"
.LASF87:
	.string	"div3"
.LASF189:
	.string	"sdmmc_event_t"
.LASF26:
	.string	"ESP_LOG_VERBOSE"
.LASF114:
	.string	"fifo_count"
.LASF145:
	.string	"rintsts"
.LASF249:
	.string	"sdmmc_host_start_command"
.LASF207:
	.string	"make_hw_cmd"
.LASF178:
	.string	"sdmmc_response_t"
.LASF77:
	.string	"send_ccsd"
.LASF133:
	.string	"pwren"
.LASF241:
	.string	"sdmmc_host_dma_stop"
.LASF152:
	.string	"tbbcnt"
.LASF57:
	.string	"update_clk_reg"
.LASF238:
	.string	"esp_log_timestamp"
.LASF193:
	.string	"SDMMC_BUSY"
.LASF10:
	.string	"long long unsigned int"
.LASF59:
	.string	"ccs_expected"
.LASF179:
	.string	"opcode"
.LASF236:
	.string	"SDMMC_CMD_ERR_MASK"
.LASF220:
	.string	"s_state_names"
.LASF99:
	.string	"rcrc"
.LASF126:
	.string	"phase_din"
.LASF21:
	.string	"ESP_LOG_NONE"
.LASF29:
	.string	"TickType_t"
.LASF45:
	.string	"sdmmc_desc_t"
.LASF165:
	.string	"dscaddrl"
.LASF52:
	.string	"send_auto_stop"
.LASF247:
	.string	"memset"
.LASF36:
	.string	"first_descriptor"
.LASF24:
	.string	"ESP_LOG_INFO"
.LASF53:
	.string	"wait_complete"
.LASF205:
	.string	"desc"
.LASF34:
	.string	"disable_int_on_completion"
.LASF113:
	.string	"response_index"
.LASF255:
	.string	"sdmmc_host_transaction_handler_deinit"
.LASF253:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\driver"
.LASF215:
	.string	"process_data_status"
.LASF240:
	.string	"sdmmc_host_wait_for_event"
.LASF223:
	.string	"desc_to_fill"
.LASF121:
	.string	"debounce_count"
.LASF192:
	.string	"SDMMC_SENDING_DATA"
.LASF6:
	.string	"short int"
.LASF173:
	.string	"emmc_ddr_reg"
.LASF209:
	.string	"get_free_descriptors_count"
.LASF69:
	.string	"controller_reset"
.LASF235:
	.string	"SDMMC_DMA_DONE_MASK"
.LASF33:
	.string	"reserved1"
.LASF39:
	.string	"reserved2"
.LASF44:
	.string	"reserved3"
.LASF74:
	.string	"read_wait"
.LASF162:
	.string	"idsts"
.LASF148:
	.string	"cdetect"
.LASF78:
	.string	"send_auto_stop_ccsd"
.LASF91:
	.string	"cclk_low_power"
.LASF231:
	.string	"s_request_mutex"
.LASF222:
	.string	"next_state"
.LASF157:
	.string	"rst_n"
.LASF25:
	.string	"ESP_LOG_DEBUG"
.LASF224:
	.string	"handle_event"
.LASF68:
	.string	"sdmmc_hw_cmd_t"
.LASF90:
	.string	"cclk_enable"
.LASF49:
	.string	"check_response_crc"
.LASF227:
	.string	"cmdinfo"
.LASF246:
	.string	"memcpy"
.LASF248:
	.string	"sdmmc_host_dma_prepare"
.LASF64:
	.string	"volt_switch"
.LASF18:
	.string	"uint32_t"
.LASF71:
	.string	"dma_reset"
.LASF103:
	.string	"sbi_bci"
.LASF163:
	.string	"idinten"
.LASF67:
	.string	"start_command"
.LASF66:
	.string	"reserved"
.LASF38:
	.string	"end_of_ring"
.LASF1:
	.string	"short unsigned int"
.LASF135:
	.string	"clksrc"
.LASF138:
	.string	"ctype"
.LASF226:
	.string	"slot"
.LASF206:
	.string	"cmd_needs_auto_stop"
.LASF40:
	.string	"card_error_summary"
.LASF245:
	.string	"xQueueGenericReceive"
.LASF7:
	.string	"__int32_t"
.LASF117:
	.string	"tx_watermark"
.LASF202:
	.string	"esp_ptr_dma_capable"
.LASF42:
	.string	"buffer1_size"
.LASF95:
	.string	"card_width_8"
.LASF203:
	.string	"next"
.LASF93:
	.string	"data"
.LASF191:
	.string	"SDMMC_SENDING_CMD"
.LASF47:
	.string	"response_expect"
.LASF213:
	.string	"last"
.LASF188:
	.string	"dma_status"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
