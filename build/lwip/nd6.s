	.file	"nd6.c"
	.text
.Ltext0:
	.section	.text.nd6_find_neighbor_cache_entry,"ax",@progbits
	.literal_position
	.literal .LC0, neighbor_cache
	.align	4
	.type	nd6_find_neighbor_cache_entry, @function
nd6_find_neighbor_cache_entry:
.LFB21:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/core/ipv6/nd6.c"
	.loc 1 1071 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 1073 0
	movi.n	a8, 0
	j	.L2
.LVL2:
.L5:
	.loc 1 1074 0
	l32i.n	a12, a2, 0
	sext	a10, a8, 7
	addx4	a11, a10, a10
	slli	a9, a11, 3
	l32r	a11, .LC0
	add.n	a9, a11, a9
	l32i.n	a9, a9, 0
	bne	a12, a9, .L3
	.loc 1 1074 0 is_stmt 0 discriminator 1
	l32i.n	a12, a2, 4
	addx4	a11, a10, a10
	slli	a9, a11, 3
	l32r	a11, .LC0
	add.n	a9, a11, a9
	l32i.n	a9, a9, 4
	bne	a12, a9, .L3
	.loc 1 1074 0 discriminator 2
	l32i.n	a12, a2, 8
	addx4	a11, a10, a10
	slli	a9, a11, 3
	l32r	a11, .LC0
	add.n	a9, a11, a9
	l32i.n	a9, a9, 8
	bne	a12, a9, .L3
	.loc 1 1074 0 discriminator 3
	l32i.n	a11, a2, 12
	addx4	a10, a10, a10
	slli	a9, a10, 3
	l32r	a10, .LC0
	add.n	a9, a10, a9
	l32i.n	a9, a9, 12
	beq	a11, a9, .L6
.L3:
	.loc 1 1073 0 is_stmt 1 discriminator 2
	addi.n	a8, a8, 1
.LVL3:
	extui	a8, a8, 0, 8
.LVL4:
.L2:
	.loc 1 1073 0 is_stmt 0 discriminator 1
	sext	a9, a8, 7
	movi.n	a10, 9
	bge	a10, a9, .L5
	.loc 1 1078 0 is_stmt 1
	movi	a2, 0xff
.LVL5:
	retw.n
.LVL6:
.L6:
	.loc 1 1075 0
	mov.n	a2, a8
.LVL7:
	.loc 1 1079 0
	retw.n
.LFE21:
	.size	nd6_find_neighbor_cache_entry, .-nd6_find_neighbor_cache_entry
	.section	.text.nd6_find_destination_cache_entry,"ax",@progbits
	.literal_position
	.literal .LC1, destination_cache
	.align	4
	.type	nd6_find_destination_cache_entry, @function
nd6_find_destination_cache_entry:
.LFB24:
	.loc 1 1230 0
.LVL8:
	entry	sp, 32
.LCFI1:
.LVL9:
	.loc 1 1232 0
	movi.n	a8, 0
	j	.L8
.LVL10:
.L11:
	.loc 1 1233 0
	l32i.n	a12, a2, 0
	sext	a10, a8, 7
	addx4	a11, a10, a10
	slli	a9, a11, 3
	l32r	a11, .LC1
	add.n	a9, a11, a9
	l32i.n	a9, a9, 0
	bne	a12, a9, .L9
	.loc 1 1233 0 is_stmt 0 discriminator 1
	l32i.n	a12, a2, 4
	addx4	a11, a10, a10
	slli	a9, a11, 3
	l32r	a11, .LC1
	add.n	a9, a11, a9
	l32i.n	a9, a9, 4
	bne	a12, a9, .L9
	.loc 1 1233 0 discriminator 2
	l32i.n	a12, a2, 8
	addx4	a11, a10, a10
	slli	a9, a11, 3
	l32r	a11, .LC1
	add.n	a9, a11, a9
	l32i.n	a9, a9, 8
	bne	a12, a9, .L9
	.loc 1 1233 0 discriminator 3
	l32i.n	a11, a2, 12
	addx4	a10, a10, a10
	slli	a9, a10, 3
	l32r	a10, .LC1
	add.n	a9, a10, a9
	l32i.n	a9, a9, 12
	beq	a11, a9, .L12
.L9:
	.loc 1 1232 0 is_stmt 1 discriminator 2
	addi.n	a8, a8, 1
.LVL11:
	extui	a8, a8, 0, 8
.LVL12:
.L8:
	.loc 1 1232 0 is_stmt 0 discriminator 1
	sext	a9, a8, 7
	movi.n	a10, 9
	bge	a10, a9, .L11
	.loc 1 1237 0 is_stmt 1
	movi	a2, 0xff
.LVL13:
	retw.n
.LVL14:
.L12:
	.loc 1 1234 0
	mov.n	a2, a8
.LVL15:
	.loc 1 1238 0
	retw.n
.LFE24:
	.size	nd6_find_destination_cache_entry, .-nd6_find_destination_cache_entry
	.section	.text.nd6_new_destination_cache_entry,"ax",@progbits
	.literal_position
	.literal .LC2, destination_cache
	.align	4
	.type	nd6_new_destination_cache_entry, @function
nd6_new_destination_cache_entry:
.LFB25:
	.loc 1 1249 0
	entry	sp, 32
.LCFI2:
.LVL16:
	.loc 1 1254 0
	movi.n	a8, 0
	j	.L14
.LVL17:
.L17:
	.loc 1 1255 0
	sext	a9, a8, 7
	addx4	a10, a9, a9
	slli	a2, a10, 3
	l32r	a10, .LC2
	add.n	a2, a10, a2
	l32i.n	a2, a2, 0
	.loc 1 1255 0
	bnez.n	a2, .L15
	.loc 1 1255 0 discriminator 1
	addx4	a10, a9, a9
	slli	a2, a10, 3
	l32r	a10, .LC2
	add.n	a2, a10, a2
	l32i.n	a2, a2, 4
	bnez.n	a2, .L15
	.loc 1 1255 0 is_stmt 0 discriminator 2
	addx4	a10, a9, a9
	slli	a2, a10, 3
	l32r	a10, .LC2
	add.n	a2, a10, a2
	l32i.n	a2, a2, 8
	bnez.n	a2, .L15
	.loc 1 1255 0 discriminator 3
	addx4	a9, a9, a9
	slli	a2, a9, 3
	add.n	a2, a10, a2
	l32i.n	a2, a2, 12
	beqz.n	a2, .L21
.L15:
	.loc 1 1254 0 is_stmt 1 discriminator 2
	addi.n	a8, a8, 1
.LVL18:
	extui	a8, a8, 0, 8
.LVL19:
.L14:
	.loc 1 1254 0 is_stmt 0 discriminator 1
	sext	a2, a8, 7
	movi.n	a9, 9
	bge	a9, a2, .L17
	mov.n	a2, a9
	movi.n	a9, 0
	j	.L18
.LVL20:
.L20:
	.loc 1 1264 0 is_stmt 1
	sext	a10, a9, 7
	addx4	a10, a10, a10
	slli	a8, a10, 3
	l32r	a10, .LC2
	add.n	a8, a10, a8
	l32i.n	a8, a8, 36
	beqz.n	a8, .L19
	.loc 1 1265 0
	mov.n	a2, a9
.LVL21:
.L19:
	.loc 1 1263 0 discriminator 2
	addi.n	a9, a9, 1
.LVL22:
	extui	a9, a9, 0, 8
.LVL23:
.L18:
	.loc 1 1263 0 is_stmt 0 discriminator 1
	sext	a8, a9, 7
	movi.n	a10, 9
	bge	a10, a8, .L20
	retw.n
.LVL24:
.L21:
	.loc 1 1256 0 is_stmt 1
	mov.n	a2, a8
	.loc 1 1270 0
	retw.n
.LFE25:
	.size	nd6_new_destination_cache_entry, .-nd6_new_destination_cache_entry
	.section	.text.nd6_is_prefix_in_netif,"ax",@progbits
	.literal_position
	.literal .LC3, prefix_list
	.align	4
	.type	nd6_is_prefix_in_netif, @function
nd6_is_prefix_in_netif:
.LFB26:
	.loc 1 1280 0
.LVL25:
	entry	sp, 32
.LCFI3:
.LVL26:
	.loc 1 1282 0
	movi.n	a8, 0
	j	.L24
.LVL27:
.L27:
	.loc 1 1283 0
	sext	a10, a8, 7
	subx8	a11, a10, a10
	slli	a9, a11, 2
	l32r	a11, .LC3
	add.n	a9, a11, a9
	l32i.n	a9, a9, 16
	bne	a9, a3, .L25
	.loc 1 1284 0 discriminator 1
	subx8	a11, a10, a10
	slli	a9, a11, 2
	l32r	a11, .LC3
	add.n	a9, a11, a9
	l32i.n	a9, a9, 20
	.loc 1 1283 0 discriminator 1
	beqz.n	a9, .L25
	.loc 1 1285 0
	l32i.n	a12, a2, 0
	subx8	a11, a10, a10
	slli	a9, a11, 2
	l32r	a11, .LC3
	add.n	a9, a11, a9
	l32i.n	a9, a9, 0
	.loc 1 1284 0
	bne	a12, a9, .L25
	.loc 1 1285 0
	l32i.n	a11, a2, 4
	subx8	a10, a10, a10
	slli	a9, a10, 2
	l32r	a10, .LC3
	add.n	a9, a10, a9
	l32i.n	a9, a9, 4
	beq	a11, a9, .L31
.L25:
	.loc 1 1282 0 discriminator 2
	addi.n	a8, a8, 1
.LVL28:
	extui	a8, a8, 0, 8
.LVL29:
.L24:
	.loc 1 1282 0 is_stmt 0 discriminator 1
	sext	a9, a8, 7
	blti	a9, 5, .L27
	movi.n	a9, 0
	j	.L28
.LVL30:
.L30:
	.loc 1 1291 0 is_stmt 1
	sext	a8, a9, 7
	add.n	a10, a3, a8
	l8ui	a10, a10, 124
	bbci	a10, 4, .L29
	.loc 1 1292 0 discriminator 1
	l32i.n	a12, a2, 0
	addx4	a11, a8, a8
	slli	a10, a11, 2
	add.n	a10, a3, a10
	l32i	a10, a10, 64
	.loc 1 1291 0 discriminator 1
	bne	a12, a10, .L29
	.loc 1 1292 0
	l32i.n	a11, a2, 4
	addx4	a8, a8, a8
	slli	a10, a8, 2
	add.n	a10, a3, a10
	l32i	a8, a10, 68
	beq	a11, a8, .L32
.L29:
	.loc 1 1290 0 discriminator 2
	addi.n	a9, a9, 1
.LVL31:
	extui	a9, a9, 0, 8
.LVL32:
.L28:
	.loc 1 1290 0 is_stmt 0 discriminator 1
	sext	a8, a9, 7
	blti	a8, 3, .L30
	.loc 1 1296 0 is_stmt 1
	movi.n	a2, 0
.LVL33:
	retw.n
.LVL34:
.L31:
	.loc 1 1286 0
	movi.n	a2, 1
.LVL35:
	retw.n
.LVL36:
.L32:
	.loc 1 1293 0
	movi.n	a2, 1
.LVL37:
	.loc 1 1297 0
	retw.n
.LFE26:
	.size	nd6_is_prefix_in_netif, .-nd6_is_prefix_in_netif
	.section	.text.nd6_get_router,"ax",@progbits
	.literal_position
	.literal .LC4, default_router_list
	.align	4
	.type	nd6_get_router, @function
nd6_get_router:
.LFB28:
	.loc 1 1368 0
.LVL38:
	entry	sp, 32
.LCFI4:
.LVL39:
	.loc 1 1372 0
	movi.n	a8, 0
	j	.L34
.LVL40:
.L38:
	.loc 1 1373 0
	sext	a9, a8, 7
	addx2	a9, a9, a9
	slli	a10, a9, 2
	l32r	a9, .LC4
	add.n	a10, a9, a10
	l32i.n	a9, a10, 0
	beqz.n	a9, .L35
	.loc 1 1373 0 discriminator 1
	beqz.n	a3, .L36
	.loc 1 1374 0 discriminator 2
	l32i.n	a10, a9, 16
	.loc 1 1373 0 discriminator 2
	bne	a3, a10, .L35
.L36:
	.loc 1 1375 0
	l32i.n	a11, a2, 0
	l32i.n	a10, a9, 0
	.loc 1 1374 0
	bne	a11, a10, .L35
	.loc 1 1375 0
	l32i.n	a11, a2, 4
	l32i.n	a10, a9, 4
	bne	a11, a10, .L35
	.loc 1 1375 0 is_stmt 0 discriminator 1
	l32i.n	a11, a2, 8
	l32i.n	a10, a9, 8
	bne	a11, a10, .L35
	.loc 1 1375 0 discriminator 2
	l32i.n	a10, a2, 12
	l32i.n	a9, a9, 12
	beq	a10, a9, .L39
.L35:
	.loc 1 1372 0 is_stmt 1 discriminator 2
	addi.n	a8, a8, 1
.LVL41:
	extui	a8, a8, 0, 8
.LVL42:
.L34:
	.loc 1 1372 0 is_stmt 0 discriminator 1
	sext	a9, a8, 7
	blti	a9, 3, .L38
	.loc 1 1381 0 is_stmt 1
	movi	a2, 0xff
.LVL43:
	retw.n
.LVL44:
.L39:
	.loc 1 1376 0
	mov.n	a2, a8
.LVL45:
	.loc 1 1382 0
	retw.n
.LFE28:
	.size	nd6_get_router, .-nd6_get_router
	.section	.text.nd6_get_onlink_prefix,"ax",@progbits
	.literal_position
	.literal .LC5, prefix_list
	.align	4
	.type	nd6_get_onlink_prefix, @function
nd6_get_onlink_prefix:
.LFB30:
	.loc 1 1442 0
.LVL46:
	entry	sp, 32
.LCFI5:
.LVL47:
	.loc 1 1446 0
	movi.n	a8, 0
	j	.L41
.LVL48:
.L44:
	.loc 1 1447 0
	sext	a10, a8, 7
	subx8	a11, a10, a10
	slli	a9, a11, 2
	l32r	a11, .LC5
	add.n	a9, a11, a9
	l32i.n	a11, a9, 0
	l32i.n	a9, a2, 0
	bne	a11, a9, .L42
	.loc 1 1447 0 is_stmt 0 discriminator 1
	subx8	a11, a10, a10
	slli	a9, a11, 2
	l32r	a11, .LC5
	add.n	a9, a11, a9
	l32i.n	a11, a9, 4
	l32i.n	a9, a2, 4
	bne	a11, a9, .L42
	.loc 1 1448 0 is_stmt 1 discriminator 2
	subx8	a10, a10, a10
	slli	a9, a10, 2
	l32r	a10, .LC5
	add.n	a9, a10, a9
	l32i.n	a9, a9, 16
	.loc 1 1447 0 discriminator 2
	beq	a9, a3, .L45
.L42:
	.loc 1 1446 0 discriminator 2
	addi.n	a8, a8, 1
.LVL49:
	extui	a8, a8, 0, 8
.LVL50:
.L41:
	.loc 1 1446 0 is_stmt 0 discriminator 1
	sext	a9, a8, 7
	blti	a9, 5, .L44
	.loc 1 1454 0 is_stmt 1
	movi	a2, 0xff
.LVL51:
	retw.n
.LVL52:
.L45:
	.loc 1 1449 0
	mov.n	a2, a8
.LVL53:
	.loc 1 1455 0
	retw.n
.LFE30:
	.size	nd6_get_onlink_prefix, .-nd6_get_onlink_prefix
	.section	.text.nd6_new_onlink_prefix,"ax",@progbits
	.literal_position
	.literal .LC6, prefix_list
	.align	4
	.type	nd6_new_onlink_prefix, @function
nd6_new_onlink_prefix:
.LFB31:
	.loc 1 1466 0
.LVL54:
	entry	sp, 32
.LCFI6:
.LVL55:
	.loc 1 1470 0
	movi.n	a8, 0
	j	.L47
.LVL56:
.L55:
	.loc 1 1471 0
	sext	a9, a8, 7
	subx8	a11, a9, a9
	slli	a10, a11, 2
	l32r	a11, .LC6
	add.n	a10, a11, a10
	l32i.n	a10, a10, 16
	beqz.n	a10, .L48
	.loc 1 1472 0 discriminator 1
	subx8	a11, a9, a9
	slli	a10, a11, 2
	l32r	a11, .LC6
	add.n	a10, a11, a10
	l32i.n	a10, a10, 20
	.loc 1 1471 0 discriminator 1
	bnez.n	a10, .L49
.L48:
	.loc 1 1474 0
	subx8	a11, a9, a9
	slli	a10, a11, 2
	l32r	a11, .LC6
	add.n	a10, a11, a10
	s32i.n	a3, a10, 16
	.loc 1 1475 0
	beqz.n	a2, .L56
	.loc 1 1475 0 is_stmt 0 discriminator 1
	l32i.n	a11, a2, 0
	j	.L50
.L56:
	.loc 1 1475 0
	movi.n	a11, 0
.L50:
	.loc 1 1475 0 is_stmt 1 discriminator 4
	subx8	a10, a9, a9
	slli	a3, a10, 2
.LVL57:
	l32r	a10, .LC6
.LVL58:
	add.n	a3, a10, a3
	s32i.n	a11, a3, 0
	.loc 1 1475 0 discriminator 4
	beqz.n	a2, .L57
	.loc 1 1475 0 is_stmt 0 discriminator 5
	l32i.n	a11, a2, 4
	j	.L51
.L57:
	.loc 1 1475 0
	movi.n	a11, 0
.L51:
	.loc 1 1475 0 is_stmt 1 discriminator 8
	subx8	a10, a9, a9
.LVL59:
	slli	a3, a10, 2
	l32r	a10, .LC6
.LVL60:
	add.n	a3, a10, a3
	s32i.n	a11, a3, 4
	.loc 1 1475 0 discriminator 8
	beqz.n	a2, .L58
	.loc 1 1475 0 is_stmt 0 discriminator 9
	l32i.n	a11, a2, 8
	j	.L52
.L58:
	.loc 1 1475 0
	movi.n	a11, 0
.L52:
	.loc 1 1475 0 is_stmt 1 discriminator 12
	subx8	a10, a9, a9
.LVL61:
	slli	a3, a10, 2
	l32r	a10, .LC6
.LVL62:
	add.n	a3, a10, a3
	s32i.n	a11, a3, 8
	.loc 1 1475 0 discriminator 12
	beqz.n	a2, .L59
	.loc 1 1475 0 is_stmt 0 discriminator 13
	l32i.n	a12, a2, 12
	j	.L53
.L59:
	.loc 1 1475 0
	movi.n	a12, 0
.L53:
	.loc 1 1475 0 is_stmt 1 discriminator 16
	l32r	a10, .LC6
	slli	a2, a9, 3
.LVL63:
	sub	a11, a2, a9
	slli	a3, a11, 2
	add.n	a3, a10, a3
	s32i.n	a12, a3, 12
	.loc 1 1477 0 discriminator 16
	mov.n	a2, a3
	movi.n	a3, 0
	s8i	a3, a2, 24
	.loc 1 1479 0 discriminator 16
	mov.n	a2, a8
	retw.n
.LVL64:
.L49:
	.loc 1 1470 0 discriminator 2
	addi.n	a8, a8, 1
.LVL65:
	extui	a8, a8, 0, 8
.LVL66:
.L47:
	.loc 1 1470 0 is_stmt 0 discriminator 1
	sext	a9, a8, 7
	blti	a9, 5, .L55
	.loc 1 1484 0 is_stmt 1
	movi	a2, 0xff
.LVL67:
	.loc 1 1485 0
	retw.n
.LFE31:
	.size	nd6_new_onlink_prefix, .-nd6_new_onlink_prefix
	.section	.text.nd6_send_q,"ax",@progbits
	.literal_position
	.literal .LC7, neighbor_cache
	.literal .LC8, ip_data
	.literal .LC9, ip_data+40
	.align	4
	.type	nd6_send_q, @function
nd6_send_q:
.LFB35:
	.loc 1 1745 0
.LVL68:
	entry	sp, 32
.LCFI7:
	extui	a2, a2, 0, 8
	.loc 1 1751 0
	extui	a3, a2, 0, 8
	movi.n	a8, 9
	bgeu	a8, a3, .L62
	retw.n
.L67:
.LVL69:
	.loc 1 1760 0
	l32i.n	a11, a3, 0
	addx4	a10, a9, a9
	slli	a8, a10, 3
	l32r	a10, .LC7
	add.n	a8, a10, a8
	s32i.n	a11, a8, 28
	.loc 1 1762 0
	l32i.n	a8, a3, 4
	l32i.n	a8, a8, 4
.LVL70:
	.loc 1 1764 0
	addi	a14, a8, 24
	.loc 1 1764 0
	beqz.n	a14, .L68
	.loc 1 1764 0 is_stmt 0 discriminator 1
	l8ui	a13, a8, 24
	l8ui	a11, a8, 25
	slli	a11, a11, 8
	or	a12, a11, a13
	l8ui	a10, a8, 26
	slli	a10, a10, 16
	or	a11, a10, a12
	l8ui	a10, a8, 27
	slli	a10, a10, 24
	or	a10, a10, a11
	j	.L63
.L68:
	.loc 1 1764 0
	movi.n	a10, 0
.L63:
	.loc 1 1764 0 is_stmt 1 discriminator 4
	l32r	a11, .LC8
	s32i.n	a10, a11, 40
	.loc 1 1764 0 discriminator 4
	beqz.n	a14, .L69
	.loc 1 1764 0 is_stmt 0 discriminator 5
	l8ui	a13, a8, 28
	l8ui	a11, a8, 29
	slli	a11, a11, 8
	or	a12, a11, a13
	l8ui	a10, a8, 30
	slli	a10, a10, 16
	or	a11, a10, a12
	l8ui	a10, a8, 31
	slli	a10, a10, 24
	or	a10, a10, a11
	j	.L64
.L69:
	.loc 1 1764 0
	movi.n	a10, 0
.L64:
	.loc 1 1764 0 is_stmt 1 discriminator 8
	l32r	a11, .LC8
	s32i.n	a10, a11, 44
	.loc 1 1764 0 discriminator 8
	beqz.n	a14, .L70
	.loc 1 1764 0 is_stmt 0 discriminator 9
	l8ui	a13, a8, 32
	l8ui	a11, a8, 33
	slli	a11, a11, 8
	or	a12, a11, a13
	l8ui	a10, a8, 34
	slli	a10, a10, 16
	or	a11, a10, a12
	l8ui	a10, a8, 35
	slli	a10, a10, 24
	or	a10, a10, a11
	j	.L65
.L70:
	.loc 1 1764 0
	movi.n	a10, 0
.L65:
	.loc 1 1764 0 is_stmt 1 discriminator 12
	l32r	a11, .LC8
	s32i.n	a10, a11, 48
	.loc 1 1764 0 discriminator 12
	beqz.n	a14, .L71
	.loc 1 1764 0 is_stmt 0 discriminator 13
	l8ui	a12, a8, 36
	l8ui	a10, a8, 37
	slli	a10, a10, 8
	or	a11, a10, a12
	l8ui	a10, a8, 38
	slli	a10, a10, 16
	or	a10, a10, a11
	l8ui	a8, a8, 39
.LVL71:
	slli	a8, a8, 24
	or	a8, a8, a10
	j	.L66
.LVL72:
.L71:
	.loc 1 1764 0
	movi.n	a8, 0
.LVL73:
.L66:
	.loc 1 1764 0 is_stmt 1 discriminator 16
	l32r	a10, .LC8
	s32i.n	a8, a10, 52
	.loc 1 1766 0 discriminator 16
	addx4	a9, a9, a9
	slli	a8, a9, 3
	l32r	a9, .LC7
	add.n	a8, a9, a8
	l32i.n	a10, a8, 16
	l32i	a8, a10, 144
	l32r	a12, .LC9
	l32i.n	a11, a3, 4
	callx8	a8
.LVL74:
	.loc 1 1768 0 discriminator 16
	l32i.n	a10, a3, 4
	call8	pbuf_free
.LVL75:
	.loc 1 1770 0 discriminator 16
	mov.n	a10, a3
	call8	free
.LVL76:
.L62:
	.loc 1 1756 0
	sext	a9, a2, 7
	addx4	a8, a9, a9
	slli	a3, a8, 3
	l32r	a8, .LC7
	add.n	a3, a8, a3
	l32i.n	a3, a3, 28
	bnez.n	a3, .L67
	retw.n
.LFE35:
	.size	nd6_send_q, .-nd6_send_q
	.section	.text.nd6_send_na,"ax",@progbits
	.literal_position
	.literal .LC10, multicast_address
	.literal .LC11, ip_data+20
	.literal .LC12, 16777216
	.align	4
	.type	nd6_send_na, @function
nd6_send_na:
.LFB19:
	.loc 1 929 0
.LVL77:
	entry	sp, 48
.LCFI8:
.LVL78:
	.loc 1 943 0
	l8ui	a5, a2, 174
	addi.n	a5, a5, 2
	srai	a6, a5, 3
	extui	a5, a5, 0, 3
	movi.n	a10, 1
	movi.n	a12, 0
	mov.n	a8, a12
	movnez	a8, a10, a5
	add.n	a5, a8, a6
	extui	a6, a5, 0, 16
.LVL79:
	.loc 1 944 0
	slli	a11, a6, 3
	addi	a11, a11, 24
	extui	a11, a11, 0, 16
	call8	pbuf_alloc
.LVL80:
	mov.n	a7, a10
.LVL81:
	.loc 1 945 0
	beqz.n	a10, .L72
	.loc 1 951 0
	l32i.n	a5, a10, 4
.LVL82:
	.loc 1 954 0
	movi	a8, -0x78
	s8i	a8, a5, 0
	.loc 1 955 0
	movi.n	a8, 0
	s8i	a8, a5, 1
	.loc 1 956 0
	movi.n	a9, 0
	s8i	a9, a5, 2
	s8i	a9, a5, 3
	.loc 1 957 0
	movi.n	a9, -0x10
	and	a9, a4, a9
	s8i	a9, a5, 4
	.loc 1 958 0
	s8i	a8, a5, 5
	.loc 1 959 0
	s8i	a8, a5, 6
	.loc 1 960 0
	s8i	a8, a5, 7
	.loc 1 961 0
	beqz.n	a3, .L80
	.loc 1 961 0 is_stmt 0 discriminator 1
	l32i.n	a8, a3, 0
	j	.L74
.L80:
	.loc 1 961 0
	movi.n	a8, 0
.L74:
	.loc 1 961 0 is_stmt 1 discriminator 4
	s8i	a8, a5, 8
	extui	a9, a8, 8, 8
	s8i	a9, a5, 9
	extui	a9, a8, 16, 8
	s8i	a9, a5, 10
	extui	a8, a8, 24, 8
	s8i	a8, a5, 11
	.loc 1 961 0 discriminator 4
	beqz.n	a3, .L81
	.loc 1 961 0 is_stmt 0 discriminator 5
	l32i.n	a8, a3, 4
	j	.L75
.L81:
	.loc 1 961 0
	movi.n	a8, 0
.L75:
	.loc 1 961 0 is_stmt 1 discriminator 8
	s8i	a8, a5, 12
	extui	a9, a8, 8, 8
	s8i	a9, a5, 13
	extui	a9, a8, 16, 8
	s8i	a9, a5, 14
	extui	a8, a8, 24, 8
	s8i	a8, a5, 15
	.loc 1 961 0 discriminator 8
	beqz.n	a3, .L82
	.loc 1 961 0 is_stmt 0 discriminator 9
	l32i.n	a8, a3, 8
	j	.L76
.L82:
	.loc 1 961 0
	movi.n	a8, 0
.L76:
	.loc 1 961 0 is_stmt 1 discriminator 12
	s8i	a8, a5, 16
	extui	a9, a8, 8, 8
	s8i	a9, a5, 17
	extui	a9, a8, 16, 8
	s8i	a9, a5, 18
	extui	a8, a8, 24, 8
	s8i	a8, a5, 19
	.loc 1 961 0 discriminator 12
	beqz.n	a3, .L83
	.loc 1 961 0 is_stmt 0 discriminator 13
	l32i.n	a8, a3, 12
	j	.L77
.L83:
	.loc 1 961 0
	movi.n	a8, 0
.L77:
	.loc 1 961 0 is_stmt 1 discriminator 16
	s8i	a8, a5, 20
	extui	a9, a8, 8, 8
	s8i	a9, a5, 21
	extui	a9, a8, 16, 8
	s8i	a9, a5, 22
	extui	a8, a8, 24, 8
	s8i	a8, a5, 23
	.loc 1 963 0 discriminator 16
	movi.n	a8, 2
	s8i	a8, a5, 24
	.loc 1 964 0 discriminator 16
	s8i	a6, a5, 25
	.loc 1 965 0 discriminator 16
	l8ui	a12, a2, 174
	movi	a11, 0xaf
	add.n	a11, a2, a11
	addi	a10, a5, 26
	call8	memcpy
.LVL83:
	.loc 1 968 0 discriminator 16
	bbci	a4, 0, .L78
	.loc 1 969 0
	l32r	a4, .LC10
.LVL84:
	movi	a6, 0x2ff
.LVL85:
	s32i.n	a6, a4, 0
	movi.n	a6, 0
	s32i.n	a6, a4, 4
	l32r	a6, .LC12
	s32i.n	a6, a4, 8
	l32i.n	a8, a3, 12
	movi	a6, 0xff
	or	a6, a8, a6
	s32i.n	a6, a4, 12
.LVL86:
	j	.L79
.LVL87:
.L78:
	.loc 1 971 0
	bbci	a4, 1, .L84
	.loc 1 972 0
	l32r	a4, .LC10
.LVL88:
	movi	a6, 0x2ff
.LVL89:
	s32i.n	a6, a4, 0
	movi.n	a6, 0
	s32i.n	a6, a4, 4
	s32i.n	a6, a4, 8
	l32r	a6, .LC12
	s32i.n	a6, a4, 12
.LVL90:
	j	.L79
.LVL91:
.L84:
	.loc 1 975 0
	l32r	a4, .LC11
.LVL92:
.L79:
	.loc 1 980 0
	mov.n	a14, a4
	mov.n	a13, a3
	l16ui	a12, a7, 10
	movi.n	a11, 0x3a
	mov.n	a10, a7
	call8	ip6_chksum_pseudo
.LVL93:
	s8i	a10, a5, 2
	extui	a10, a10, 8, 16
	s8i	a10, a5, 3
	.loc 1 987 0
	s32i.n	a2, sp, 0
	movi.n	a15, 0x3a
	movi.n	a14, 0
	movi	a13, 0xff
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a7
	call8	ip6_output_if
.LVL94:
	.loc 1 989 0
	mov.n	a10, a7
	call8	pbuf_free
.LVL95:
.L72:
	retw.n
.LFE19:
	.size	nd6_send_na, .-nd6_send_na
	.section	.text.nd6_send_rs,"ax",@progbits
	.literal_position
	.literal .LC13, ip6_addr_any
	.literal .LC14, multicast_address
	.literal .LC15, 33554432
	.align	4
	.type	nd6_send_rs, @function
nd6_send_rs:
.LFB20:
	.loc 1 1000 0
.LVL96:
	entry	sp, 48
.LCFI9:
.LVL97:
	.loc 1 1009 0
	l8ui	a3, a2, 124
	bbci	a3, 4, .L91
	.loc 1 1010 0
	addi	a4, a2, 64
.LVL98:
	j	.L86
.LVL99:
.L91:
	.loc 1 1012 0
	l32r	a4, .LC13
.L86:
.LVL100:
	.loc 1 1016 0
	l32r	a3, .LC14
	movi	a5, 0x2ff
	s32i.n	a5, a3, 0
	movi.n	a5, 0
	s32i.n	a5, a3, 4
	s32i.n	a5, a3, 8
	l32r	a5, .LC15
	s32i.n	a5, a3, 12
	.loc 1 1019 0
	l32r	a3, .LC13
	beq	a4, a3, .L92
	.loc 1 1020 0
	l8ui	a3, a2, 174
	addi.n	a3, a3, 2
	srai	a6, a3, 3
	extui	a5, a3, 0, 3
	movi.n	a3, 0
	movi.n	a8, 1
	movnez	a3, a8, a5
	add.n	a3, a3, a6
	extui	a6, a3, 0, 16
.LVL101:
	j	.L87
.LVL102:
.L92:
	.loc 1 1006 0
	movi.n	a6, 0
.LVL103:
.L87:
	.loc 1 1022 0
	slli	a11, a6, 3
	addi.n	a11, a11, 8
	extui	a11, a11, 0, 16
	movi.n	a12, 0
	movi.n	a10, 1
	call8	pbuf_alloc
.LVL104:
	mov.n	a5, a10
.LVL105:
	.loc 1 1023 0
	beqz.n	a10, .L93
	.loc 1 1029 0
	l32i.n	a3, a10, 4
.LVL106:
	.loc 1 1031 0
	movi	a8, -0x7b
	s8i	a8, a3, 0
	.loc 1 1032 0
	movi.n	a8, 0
	s8i	a8, a3, 1
	.loc 1 1033 0
	movi.n	a8, 0
	s8i	a8, a3, 2
	s8i	a8, a3, 3
	.loc 1 1034 0
	s8i	a8, a3, 4
	s8i	a8, a3, 5
	s8i	a8, a3, 6
	s8i	a8, a3, 7
	.loc 1 1036 0
	l32r	a8, .LC13
	beq	a4, a8, .L89
	.loc 1 1038 0
	l32i.n	a10, a10, 4
.LVL107:
	.loc 1 1039 0
	movi.n	a8, 1
	s8i	a8, a10, 8
	.loc 1 1040 0
	s8i	a6, a10, 9
	.loc 1 1041 0
	l8ui	a12, a2, 174
	movi	a11, 0xaf
	add.n	a11, a2, a11
	addi.n	a10, a10, 10
.LVL108:
	call8	memcpy
.LVL109:
.L89:
	.loc 1 1046 0
	l32r	a14, .LC14
	mov.n	a13, a4
	l16ui	a12, a5, 10
	movi.n	a11, 0x3a
	mov.n	a10, a5
	call8	ip6_chksum_pseudo
.LVL110:
	s8i	a10, a3, 2
	extui	a10, a10, 8, 16
	s8i	a10, a3, 3
	.loc 1 1054 0
	l32r	a3, .LC13
.LVL111:
	bne	a4, a3, .L94
	movi.n	a11, 0
	j	.L90
.L94:
	mov.n	a11, a4
.L90:
	.loc 1 1054 0 is_stmt 0 discriminator 4
	s32i.n	a2, sp, 0
	movi.n	a15, 0x3a
	movi.n	a14, 0
	movi	a13, 0xff
	l32r	a12, .LC14
	mov.n	a10, a5
	call8	ip6_output_if
.LVL112:
	extui	a2, a10, 0, 8
.LVL113:
	.loc 1 1056 0 is_stmt 1 discriminator 4
	mov.n	a10, a5
.LVL114:
	call8	pbuf_free
.LVL115:
	.loc 1 1058 0 discriminator 4
	retw.n
.LVL116:
.L93:
	.loc 1 1025 0
	movi	a2, 0xfe
.LVL117:
	.loc 1 1059 0
	retw.n
.LFE20:
	.size	nd6_send_rs, .-nd6_send_rs
	.section	.text.nd6_send_ns,"ax",@progbits
	.literal_position
	.literal .LC16, ip6_addr_any
	.literal .LC17, multicast_address
	.literal .LC18, 16777216
	.align	4
	.type	nd6_send_ns, @function
nd6_send_ns:
.LFB18:
	.loc 1 864 0
.LVL118:
	entry	sp, 64
.LCFI10:
	s32i.n	a4, sp, 16
	.loc 1 871 0
	l8ui	a4, a2, 124
.LVL119:
	bbci	a4, 4, .L104
	.loc 1 873 0
	addi	a7, a2, 64
.LVL120:
	j	.L96
.LVL121:
.L104:
	.loc 1 875 0
	l32r	a7, .LC16
.L96:
.LVL122:
	.loc 1 879 0
	l8ui	a4, a2, 174
	addi.n	a4, a4, 2
	srai	a5, a4, 3
	extui	a4, a4, 0, 3
	movi.n	a10, 1
	movi.n	a12, 0
	mov.n	a6, a12
	movnez	a6, a10, a4
	add.n	a4, a6, a5
	extui	a5, a4, 0, 16
.LVL123:
	.loc 1 880 0
	slli	a11, a5, 3
	addi	a11, a11, 24
	extui	a11, a11, 0, 16
	call8	pbuf_alloc
.LVL124:
	mov.n	a6, a10
.LVL125:
	.loc 1 881 0
	beqz.n	a10, .L95
	.loc 1 887 0
	l32i.n	a4, a10, 4
.LVL126:
	.loc 1 890 0
	movi	a8, -0x79
	s8i	a8, a4, 0
	.loc 1 891 0
	movi.n	a8, 0
	s8i	a8, a4, 1
	.loc 1 892 0
	movi.n	a8, 0
	s8i	a8, a4, 2
	s8i	a8, a4, 3
	.loc 1 893 0
	s8i	a8, a4, 4
	s8i	a8, a4, 5
	s8i	a8, a4, 6
	s8i	a8, a4, 7
	.loc 1 894 0
	beq	a3, a8, .L105
	.loc 1 894 0 is_stmt 0 discriminator 1
	l32i.n	a8, a3, 0
	j	.L98
.L105:
	.loc 1 894 0
	movi.n	a8, 0
.L98:
	.loc 1 894 0 is_stmt 1 discriminator 4
	s8i	a8, a4, 8
	extui	a9, a8, 8, 8
	s8i	a9, a4, 9
	extui	a9, a8, 16, 8
	s8i	a9, a4, 10
	extui	a8, a8, 24, 8
	s8i	a8, a4, 11
	.loc 1 894 0 discriminator 4
	beqz.n	a3, .L106
	.loc 1 894 0 is_stmt 0 discriminator 5
	l32i.n	a8, a3, 4
	j	.L99
.L106:
	.loc 1 894 0
	movi.n	a8, 0
.L99:
	.loc 1 894 0 is_stmt 1 discriminator 8
	s8i	a8, a4, 12
	extui	a9, a8, 8, 8
	s8i	a9, a4, 13
	extui	a9, a8, 16, 8
	s8i	a9, a4, 14
	extui	a8, a8, 24, 8
	s8i	a8, a4, 15
	.loc 1 894 0 discriminator 8
	beqz.n	a3, .L107
	.loc 1 894 0 is_stmt 0 discriminator 9
	l32i.n	a8, a3, 8
	j	.L100
.L107:
	.loc 1 894 0
	movi.n	a8, 0
.L100:
	.loc 1 894 0 is_stmt 1 discriminator 12
	s8i	a8, a4, 16
	extui	a9, a8, 8, 8
	s8i	a9, a4, 17
	extui	a9, a8, 16, 8
	s8i	a9, a4, 18
	extui	a8, a8, 24, 8
	s8i	a8, a4, 19
	.loc 1 894 0 discriminator 12
	beqz.n	a3, .L108
	.loc 1 894 0 is_stmt 0 discriminator 13
	l32i.n	a8, a3, 12
	j	.L101
.L108:
	.loc 1 894 0
	movi.n	a8, 0
.L101:
	.loc 1 894 0 is_stmt 1 discriminator 16
	s8i	a8, a4, 20
	extui	a9, a8, 8, 8
	s8i	a9, a4, 21
	extui	a9, a8, 16, 8
	s8i	a9, a4, 22
	extui	a8, a8, 24, 8
	s8i	a8, a4, 23
	.loc 1 896 0 discriminator 16
	movi.n	a8, 1
	s8i	a8, a4, 24
	.loc 1 897 0 discriminator 16
	s8i	a5, a4, 25
	.loc 1 898 0 discriminator 16
	l8ui	a12, a2, 174
	movi	a11, 0xaf
	add.n	a11, a2, a11
	addi	a10, a4, 26
	call8	memcpy
.LVL127:
	.loc 1 901 0 discriminator 16
	l32i.n	a5, sp, 16
.LVL128:
	bbci	a5, 0, .L102
	.loc 1 902 0
	l32r	a5, .LC17
	movi	a8, 0x2ff
	s32i.n	a8, a5, 0
	movi.n	a8, 0
	s32i.n	a8, a5, 4
	l32r	a8, .LC18
	s32i.n	a8, a5, 8
	l32i.n	a8, a3, 12
	movi	a3, 0xff
.LVL129:
	or	a3, a8, a3
	s32i.n	a3, a5, 12
.LVL130:
	.loc 1 903 0
	mov.n	a3, a5
.LVL131:
.L102:
	.loc 1 908 0
	mov.n	a14, a3
	mov.n	a13, a7
	l16ui	a12, a6, 10
	movi.n	a11, 0x3a
	mov.n	a10, a6
	call8	ip6_chksum_pseudo
.LVL132:
	s8i	a10, a4, 2
	extui	a10, a10, 8, 16
	s8i	a10, a4, 3
	.loc 1 915 0
	l32r	a4, .LC16
.LVL133:
	bne	a7, a4, .L109
	movi.n	a11, 0
	j	.L103
.L109:
	mov.n	a11, a7
.L103:
	.loc 1 915 0 is_stmt 0 discriminator 4
	s32i.n	a2, sp, 0
	movi.n	a15, 0x3a
	movi.n	a14, 0
	movi	a13, 0xff
	mov.n	a12, a3
	mov.n	a10, a6
	call8	ip6_output_if
.LVL134:
	.loc 1 917 0 is_stmt 1 discriminator 4
	mov.n	a10, a6
	call8	pbuf_free
.LVL135:
.L95:
	retw.n
.LFE18:
	.size	nd6_send_ns, .-nd6_send_ns
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC19:
	.string	"q != NULL"
	.align	4
.LC22:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/lwip/core/ipv6/nd6.c"
	.align	4
.LC24:
	.string	"q->p != NULL"
	.align	4
.LC26:
	.string	"r->p != NULL"
	.section	.text.nd6_free_q,"ax",@progbits
	.literal_position
	.literal .LC20, .LC19
	.literal .LC21, __func__$6801
	.literal .LC23, .LC22
	.literal .LC25, .LC24
	.literal .LC27, .LC26
	.align	4
	.type	nd6_free_q, @function
nd6_free_q:
.LFB34:
	.loc 1 1724 0
.LVL136:
	entry	sp, 32
.LCFI11:
	.loc 1 1726 0
	bnez.n	a2, .L111
	.loc 1 1726 0 discriminator 1
	l32r	a13, .LC20
	l32r	a12, .LC21
	movi	a11, 0x6be
	l32r	a10, .LC23
	call8	__assert_func
.LVL137:
.L111:
	.loc 1 1727 0
	l32i.n	a3, a2, 4
	bnez.n	a3, .L112
	.loc 1 1727 0 discriminator 1
	l32r	a13, .LC25
	l32r	a12, .LC21
	movi	a11, 0x6bf
	l32r	a10, .LC23
	call8	__assert_func
.LVL138:
.L114:
	.loc 1 1730 0
	l32i.n	a3, a2, 0
.LVL139:
	.loc 1 1731 0
	l32i.n	a10, a2, 4
	bnez.n	a10, .L113
	.loc 1 1731 0 discriminator 1
	l32r	a13, .LC27
	l32r	a12, .LC21
	movi	a11, 0x6c3
	l32r	a10, .LC23
	call8	__assert_func
.LVL140:
.L113:
	.loc 1 1732 0
	call8	pbuf_free
.LVL141:
	.loc 1 1733 0
	mov.n	a10, a2
	call8	free
.LVL142:
	.loc 1 1730 0
	mov.n	a2, a3
.LVL143:
.L112:
	.loc 1 1728 0
	bnez.n	a2, .L114
	.loc 1 1735 0
	retw.n
.LFE34:
	.size	nd6_free_q, .-nd6_free_q
	.section	.text.nd6_free_neighbor_cache_entry,"ax",@progbits
	.literal_position
	.literal .LC28, neighbor_cache
	.align	4
	.type	nd6_free_neighbor_cache_entry, @function
nd6_free_neighbor_cache_entry:
.LFB23:
	.loc 1 1199 0
.LVL144:
	entry	sp, 32
.LCFI12:
	extui	a2, a2, 0, 8
	.loc 1 1200 0
	extui	a8, a2, 0, 8
	movi.n	a9, 9
	bltu	a9, a8, .L115
	.loc 1 1203 0
	sext	a2, a2, 7
.LVL145:
	addx4	a9, a2, a2
	slli	a8, a9, 3
	l32r	a9, .LC28
	add.n	a8, a9, a8
	l8ui	a8, a8, 33
	bnez.n	a8, .L115
	.loc 1 1209 0
	addx4	a9, a2, a2
	slli	a8, a9, 3
	l32r	a9, .LC28
	add.n	a8, a9, a8
	l32i.n	a10, a8, 28
	beqz.n	a10, .L117
	.loc 1 1210 0
	call8	nd6_free_q
.LVL146:
	.loc 1 1211 0
	addx4	a9, a2, a2
	slli	a8, a9, 3
	l32r	a9, .LC28
	add.n	a8, a9, a8
	movi.n	a9, 0
	s32i.n	a9, a8, 28
.L117:
	.loc 1 1214 0
	l32r	a10, .LC28
	slli	a11, a2, 2
	add.n	a9, a11, a2
	slli	a8, a9, 3
	add.n	a8, a10, a8
	movi.n	a9, 0
	s8i	a9, a8, 32
	.loc 1 1215 0
	s8i	a9, a8, 33
	.loc 1 1216 0
	movi.n	a9, 0
	s32i.n	a9, a8, 16
	.loc 1 1217 0
	s32i.n	a9, a8, 36
	.loc 1 1218 0
	s32i.n	a9, a8, 0
	s32i.n	a9, a8, 4
	s32i.n	a9, a8, 8
	add.n	a2, a11, a2
	slli	a8, a2, 3
	mov.n	a2, a8
	add.n	a8, a10, a8
	s32i.n	a9, a8, 12
.L115:
	retw.n
.LFE23:
	.size	nd6_free_neighbor_cache_entry, .-nd6_free_neighbor_cache_entry
	.section	.text.nd6_new_neighbor_cache_entry,"ax",@progbits
	.literal_position
	.literal .LC29, neighbor_cache
	.align	4
	.type	nd6_new_neighbor_cache_entry, @function
nd6_new_neighbor_cache_entry:
.LFB22:
	.loc 1 1092 0
	entry	sp, 32
.LCFI13:
.LVL147:
	.loc 1 1099 0
	movi.n	a2, 0
	j	.L119
.LVL148:
.L121:
	.loc 1 1100 0
	sext	a8, a2, 7
	addx4	a8, a8, a8
	slli	a9, a8, 3
	l32r	a8, .LC29
	add.n	a9, a8, a9
	l8ui	a8, a9, 32
	beqz.n	a8, .L120
	.loc 1 1099 0 discriminator 2
	addi.n	a2, a2, 1
.LVL149:
	extui	a2, a2, 0, 8
.LVL150:
.L119:
	.loc 1 1099 0 is_stmt 0 discriminator 1
	sext	a8, a2, 7
	movi.n	a9, 9
	bge	a9, a8, .L121
	movi.n	a2, 0
.LVL151:
	j	.L122
.LVL152:
.L124:
	.loc 1 1109 0 is_stmt 1
	sext	a10, a2, 7
	addx4	a9, a10, a10
	slli	a8, a9, 3
	l32r	a9, .LC29
	add.n	a8, a9, a8
	l8ui	a8, a8, 32
	bnei	a8, 3, .L123
	.loc 1 1110 0 discriminator 1
	addx4	a9, a10, a10
	slli	a8, a9, 3
	l32r	a9, .LC29
	add.n	a8, a9, a8
	l8ui	a8, a8, 33
	.loc 1 1109 0 discriminator 1
	bnez.n	a8, .L123
	.loc 1 1111 0
	call8	nd6_free_neighbor_cache_entry
.LVL153:
	.loc 1 1112 0
	retw.n
.L123:
	.loc 1 1108 0 discriminator 2
	addi.n	a2, a2, 1
.LVL154:
	extui	a2, a2, 0, 8
.LVL155:
.L122:
	.loc 1 1108 0 is_stmt 0 discriminator 1
	sext	a8, a2, 7
	movi.n	a9, 9
	bge	a9, a8, .L124
	movi.n	a2, 0
.LVL156:
	j	.L125
.LVL157:
.L127:
	.loc 1 1118 0 is_stmt 1
	sext	a10, a2, 7
	addx4	a9, a10, a10
	slli	a8, a9, 3
	l32r	a9, .LC29
	add.n	a8, a9, a8
	l8ui	a8, a8, 32
	bnei	a8, 5, .L126
	.loc 1 1119 0 discriminator 1
	addx4	a9, a10, a10
	slli	a8, a9, 3
	l32r	a9, .LC29
	add.n	a8, a9, a8
	l8ui	a8, a8, 33
	.loc 1 1118 0 discriminator 1
	bnez.n	a8, .L126
	.loc 1 1120 0
	call8	nd6_free_neighbor_cache_entry
.LVL158:
	.loc 1 1121 0
	retw.n
.L126:
	.loc 1 1117 0 discriminator 2
	addi.n	a2, a2, 1
.LVL159:
	extui	a2, a2, 0, 8
.LVL160:
.L125:
	.loc 1 1117 0 is_stmt 0 discriminator 1
	sext	a8, a2, 7
	movi.n	a9, 9
	bge	a9, a8, .L127
	movi.n	a2, 0
.LVL161:
	j	.L128
.LVL162:
.L130:
	.loc 1 1127 0 is_stmt 1
	sext	a10, a2, 7
	addx4	a9, a10, a10
	slli	a8, a9, 3
	l32r	a9, .LC29
	add.n	a8, a9, a8
	l8ui	a8, a8, 32
	bnei	a8, 4, .L129
	.loc 1 1128 0 discriminator 1
	addx4	a9, a10, a10
	slli	a8, a9, 3
	l32r	a9, .LC29
	add.n	a8, a9, a8
	l8ui	a8, a8, 33
	.loc 1 1127 0 discriminator 1
	bnez.n	a8, .L129
	.loc 1 1129 0
	call8	nd6_free_neighbor_cache_entry
.LVL163:
	.loc 1 1130 0
	retw.n
.L129:
	.loc 1 1126 0 discriminator 2
	addi.n	a2, a2, 1
.LVL164:
	extui	a2, a2, 0, 8
.LVL165:
.L128:
	.loc 1 1126 0 is_stmt 0 discriminator 1
	sext	a8, a2, 7
	movi.n	a9, 9
	bge	a9, a8, .L130
	movi.n	a12, -1
	movi	a2, 0xff
.LVL166:
	movi.n	a8, 0
	j	.L131
.LVL167:
.L133:
	.loc 1 1138 0 is_stmt 1
	sext	a10, a8, 7
	addx4	a11, a10, a10
	slli	a9, a11, 3
	l32r	a11, .LC29
	add.n	a9, a11, a9
	l8ui	a9, a9, 32
	bnei	a9, 2, .L132
	.loc 1 1139 0 discriminator 1
	addx4	a11, a10, a10
	slli	a9, a11, 3
	l32r	a11, .LC29
	add.n	a9, a11, a9
	l8ui	a9, a9, 33
	.loc 1 1138 0 discriminator 1
	bnez.n	a9, .L132
	.loc 1 1140 0
	addx4	a10, a10, a10
	slli	a9, a10, 3
	add.n	a9, a11, a9
	l32i.n	a9, a9, 36
	bgeu	a9, a12, .L132
	.loc 1 1142 0
	mov.n	a12, a9
.LVL168:
	.loc 1 1141 0
	mov.n	a2, a8
.LVL169:
.L132:
	.loc 1 1137 0 discriminator 2
	addi.n	a8, a8, 1
.LVL170:
	extui	a8, a8, 0, 8
.LVL171:
.L131:
	.loc 1 1137 0 is_stmt 0 discriminator 1
	sext	a9, a8, 7
	movi.n	a10, 9
	bge	a10, a9, .L133
	.loc 1 1146 0 is_stmt 1
	bbsi	a2, 7, .L142
	.loc 1 1147 0
	sext	a10, a2, 7
	call8	nd6_free_neighbor_cache_entry
.LVL172:
	.loc 1 1148 0
	retw.n
.LVL173:
.L136:
	.loc 1 1156 0
	sext	a10, a8, 7
	addx4	a11, a10, a10
	slli	a9, a11, 3
	l32r	a11, .LC29
	add.n	a9, a11, a9
	l32i.n	a9, a9, 28
	.loc 1 1155 0
	bnez.n	a9, .L135
	.loc 1 1157 0
	addx4	a11, a10, a10
	slli	a9, a11, 3
	l32r	a11, .LC29
	add.n	a9, a11, a9
	l8ui	a9, a9, 32
	.loc 1 1156 0
	bnei	a9, 1, .L135
	.loc 1 1158 0
	addx4	a11, a10, a10
	slli	a9, a11, 3
	l32r	a11, .LC29
	add.n	a9, a11, a9
	l8ui	a9, a9, 33
	.loc 1 1157 0
	bnez.n	a9, .L135
	.loc 1 1159 0
	addx4	a10, a10, a10
	slli	a9, a10, 3
	add.n	a9, a11, a9
	l32i.n	a9, a9, 36
	bltu	a9, a12, .L135
	.loc 1 1161 0
	mov.n	a12, a9
.LVL174:
	.loc 1 1160 0
	mov.n	a2, a8
.LVL175:
.L135:
	.loc 1 1154 0 discriminator 2
	addi.n	a8, a8, 1
.LVL176:
	extui	a8, a8, 0, 8
.LVL177:
	j	.L134
.L142:
	movi.n	a12, 0
.LVL178:
	movi	a2, 0xff
.LVL179:
	mov.n	a8, a12
.LVL180:
.L134:
	.loc 1 1154 0 is_stmt 0 discriminator 1
	sext	a9, a8, 7
	movi.n	a10, 9
	bge	a10, a9, .L136
	.loc 1 1165 0 is_stmt 1
	bbsi	a2, 7, .L144
	.loc 1 1166 0
	sext	a10, a2, 7
	call8	nd6_free_neighbor_cache_entry
.LVL181:
	.loc 1 1167 0
	retw.n
.LVL182:
.L139:
	.loc 1 1174 0
	sext	a9, a10, 7
	addx4	a11, a9, a9
	slli	a8, a11, 3
	l32r	a11, .LC29
	add.n	a8, a11, a8
	l8ui	a8, a8, 32
	bnei	a8, 1, .L138
	.loc 1 1175 0 discriminator 1
	addx4	a11, a9, a9
	slli	a8, a11, 3
	l32r	a11, .LC29
	add.n	a8, a11, a8
	l8ui	a8, a8, 33
	.loc 1 1174 0 discriminator 1
	bnez.n	a8, .L138
	.loc 1 1176 0
	addx4	a9, a9, a9
	slli	a8, a9, 3
	add.n	a8, a11, a8
	l32i.n	a8, a8, 36
	bltu	a8, a12, .L138
	.loc 1 1178 0
	mov.n	a12, a8
.LVL183:
	.loc 1 1177 0
	mov.n	a2, a10
.LVL184:
.L138:
	.loc 1 1173 0 discriminator 2
	addi.n	a10, a10, 1
.LVL185:
	extui	a10, a10, 0, 8
.LVL186:
	j	.L137
.LVL187:
.L144:
	movi.n	a12, 0
.LVL188:
	movi	a2, 0xff
.LVL189:
	mov.n	a10, a12
.LVL190:
.L137:
	.loc 1 1173 0 is_stmt 0 discriminator 1
	sext	a8, a10, 7
	movi.n	a9, 9
	bge	a9, a8, .L139
	.loc 1 1182 0 is_stmt 1
	bbsi	a2, 7, .L146
	.loc 1 1183 0
	sext	a10, a2, 7
.LVL191:
	call8	nd6_free_neighbor_cache_entry
.LVL192:
	.loc 1 1184 0
	retw.n
.LVL193:
.L146:
	.loc 1 1188 0
	movi	a2, 0xff
.LVL194:
.L120:
	.loc 1 1189 0
	retw.n
.LFE22:
	.size	nd6_new_neighbor_cache_entry, .-nd6_new_neighbor_cache_entry
	.section	.text.nd6_new_router,"ax",@progbits
	.literal_position
	.literal .LC30, neighbor_cache
	.literal .LC31, default_router_list
	.align	4
	.type	nd6_new_router, @function
nd6_new_router:
.LFB29:
	.loc 1 1393 0
.LVL195:
	entry	sp, 32
.LCFI14:
	.loc 1 1398 0
	mov.n	a10, a2
	call8	nd6_find_neighbor_cache_entry
.LVL196:
	extui	a10, a10, 0, 8
.LVL197:
	.loc 1 1399 0
	sext	a8, a10, 7
	bgez	a8, .L148
	.loc 1 1401 0
	call8	nd6_new_neighbor_cache_entry
.LVL198:
	extui	a10, a10, 0, 8
.LVL199:
	.loc 1 1402 0
	sext	a8, a10, 7
	bltz	a8, .L157
	.loc 1 1406 0
	beqz.n	a2, .L158
	.loc 1 1406 0 is_stmt 0 discriminator 1
	l32i.n	a12, a2, 0
	j	.L150
.L158:
	.loc 1 1406 0
	movi.n	a12, 0
.L150:
	.loc 1 1406 0 is_stmt 1 discriminator 4
	addx4	a11, a8, a8
	slli	a9, a11, 3
	l32r	a11, .LC30
	add.n	a9, a11, a9
	s32i.n	a12, a9, 0
	.loc 1 1406 0 discriminator 4
	beqz.n	a2, .L159
	.loc 1 1406 0 is_stmt 0 discriminator 5
	l32i.n	a12, a2, 4
	j	.L151
.L159:
	.loc 1 1406 0
	movi.n	a12, 0
.L151:
	.loc 1 1406 0 is_stmt 1 discriminator 8
	addx4	a11, a8, a8
	slli	a9, a11, 3
	l32r	a11, .LC30
	add.n	a9, a11, a9
	s32i.n	a12, a9, 4
	.loc 1 1406 0 discriminator 8
	beqz.n	a2, .L160
	.loc 1 1406 0 is_stmt 0 discriminator 9
	l32i.n	a12, a2, 8
	j	.L152
.L160:
	.loc 1 1406 0
	movi.n	a12, 0
.L152:
	.loc 1 1406 0 is_stmt 1 discriminator 12
	addx4	a11, a8, a8
	slli	a9, a11, 3
	l32r	a11, .LC30
	add.n	a9, a11, a9
	s32i.n	a12, a9, 8
	.loc 1 1406 0 discriminator 12
	beqz.n	a2, .L161
	.loc 1 1406 0 is_stmt 0 discriminator 13
	l32i.n	a13, a2, 12
	j	.L153
.L161:
	.loc 1 1406 0
	movi.n	a13, 0
.L153:
	.loc 1 1406 0 is_stmt 1 discriminator 16
	l32r	a9, .LC30
	slli	a11, a8, 2
	add.n	a12, a11, a8
	slli	a2, a12, 3
.LVL200:
	add.n	a2, a9, a2
	s32i.n	a13, a2, 12
	.loc 1 1407 0 discriminator 16
	s32i.n	a3, a2, 16
	.loc 1 1408 0 discriminator 16
	movi.n	a3, 0
.LVL201:
	s32i.n	a3, a2, 28
	.loc 1 1409 0 discriminator 16
	movi.n	a12, 1
	s8i	a12, a2, 32
	.loc 1 1410 0 discriminator 16
	add.n	a8, a11, a8
	slli	a2, a8, 3
.LVL202:
	add.n	a2, a9, a2
.LVL203:
	s32i.n	a3, a2, 36
.LVL204:
.L148:
	.loc 1 1414 0
	sext	a10, a10, 7
.LVL205:
	addx4	a8, a10, a10
	slli	a2, a8, 3
	l32r	a8, .LC30
	add.n	a2, a8, a2
	movi.n	a8, 1
	s8i	a8, a2, 33
.LVL206:
	.loc 1 1417 0
	movi.n	a2, 0
	j	.L154
.LVL207:
.L156:
	.loc 1 1418 0
	sext	a9, a2, 7
	addx2	a11, a9, a9
	slli	a8, a11, 2
	l32r	a11, .LC31
	add.n	a8, a11, a8
	l32i.n	a8, a8, 0
	bnez.n	a8, .L155
	.loc 1 1419 0
	addx4	a10, a10, a10
	slli	a8, a10, 3
	l32r	a3, .LC30
	add.n	a8, a8, a3
	addx2	a9, a9, a9
	slli	a3, a9, 2
	add.n	a3, a11, a3
	s32i.n	a8, a3, 0
	.loc 1 1420 0
	retw.n
.L155:
	.loc 1 1417 0 discriminator 2
	addi.n	a2, a2, 1
.LVL208:
	extui	a2, a2, 0, 8
.LVL209:
.L154:
	.loc 1 1417 0 is_stmt 0 discriminator 1
	sext	a8, a2, 7
	blti	a8, 3, .L156
	.loc 1 1427 0 is_stmt 1
	addx4	a10, a10, a10
	slli	a2, a10, 3
.LVL210:
	l32r	a8, .LC30
	add.n	a2, a8, a2
	movi.n	a8, 0
	s8i	a8, a2, 33
	.loc 1 1430 0
	movi	a2, 0xff
	retw.n
.LVL211:
.L157:
	.loc 1 1404 0
	movi	a2, 0xff
.LVL212:
	.loc 1 1431 0
	retw.n
.LFE29:
	.size	nd6_new_router, .-nd6_new_router
	.section	.text.nd6_input,"ax",@progbits
	.literal_position
	.literal .LC32, nd6_ra_buffer
	.literal .LC33, 65535
	.literal .LC34, ip_data
	.literal .LC35, multicast_address
	.literal .LC36, 16777216
	.literal .LC37, 49407
	.literal .LC38, 33022
	.literal .LC39, ip_data+40
	.literal .LC40, prefix_list
	.literal .LC41, neighbor_cache
	.literal .LC42, reachable_time
	.literal .LC43, ip_data+20
	.literal .LC44, 5000
	.literal .LC45, default_router_list
	.literal .LC46, retrans_timer
	.literal .LC47, destination_cache
	.literal .LC48, 65534
	.align	4
	.global	nd6_input
	.type	nd6_input, @function
nd6_input:
.LFB15:
	.loc 1 119 0
.LVL213:
	entry	sp, 48
.LCFI15:
	.loc 1 125 0
	l32i.n	a4, a2, 4
	l8ui	a5, a4, 0
.LVL214:
	.loc 1 126 0
	movi	a6, 0x87
	beq	a5, a6, .L164
	bltu	a6, a5, .L165
	beqi	a5, 2, .L166
	movi	a6, 0x86
	beq	a5, a6, .L167
	j	.L163
.L165:
	movi	a6, 0x88
	beq	a5, a6, .L168
	movi	a6, 0x89
	beq	a5, a6, .L169
	j	.L163
.L168:
.LBB2:
	.loc 1 133 0
	l16ui	a5, a2, 10
	movi.n	a6, 0x17
	bltu	a6, a5, .L170
	.loc 1 135 0
	mov.n	a10, a2
	call8	pbuf_free
.LVL215:
	.loc 1 138 0
	retw.n
.LVL216:
.L170:
	.loc 1 144 0
	l32r	a6, .LC34
	l8ui	a7, a6, 40
	movi	a6, 0xff
	bne	a7, a6, .L172
	.loc 1 150 0
	movi.n	a6, 0x19
	bltu	a6, a5, .L173
	.loc 1 152 0
	mov.n	a10, a2
	call8	pbuf_free
.LVL217:
	.loc 1 155 0
	retw.n
.LVL218:
.L173:
	.loc 1 160 0
	l8ui	a6, a4, 25
	slli	a6, a6, 3
	addi	a6, a6, 24
	bgeu	a5, a6, .L174
	.loc 1 162 0
	mov.n	a10, a2
	call8	pbuf_free
.LVL219:
	.loc 1 165 0
	retw.n
.LVL220:
.L174:
	.loc 1 169 0
	addi.n	a11, a4, 8
	.loc 1 169 0
	beqz.n	a11, .L255
	.loc 1 169 0 is_stmt 0 discriminator 1
	l8ui	a7, a4, 8
	l8ui	a5, a4, 9
	slli	a5, a5, 8
	or	a6, a5, a7
	l8ui	a8, a4, 10
	slli	a8, a8, 16
	or	a5, a8, a6
	l8ui	a8, a4, 11
	slli	a8, a8, 24
	or	a8, a8, a5
	j	.L175
.L255:
	.loc 1 169 0
	movi.n	a8, 0
.L175:
	.loc 1 169 0 is_stmt 1 discriminator 4
	l32r	a5, .LC34
	s32i.n	a8, a5, 40
.LVL221:
	.loc 1 169 0 discriminator 4
	beqz.n	a11, .L256
	.loc 1 169 0 is_stmt 0 discriminator 5
	l8ui	a7, a4, 12
	l8ui	a5, a4, 13
	slli	a5, a5, 8
	or	a6, a5, a7
	l8ui	a9, a4, 14
	slli	a9, a9, 16
	or	a5, a9, a6
	l8ui	a9, a4, 15
	slli	a9, a9, 24
	or	a9, a9, a5
	j	.L176
.L256:
	.loc 1 169 0
	movi.n	a9, 0
.L176:
	.loc 1 169 0 is_stmt 1 discriminator 8
	l32r	a5, .LC34
	s32i.n	a9, a5, 44
	.loc 1 169 0 discriminator 8
	beqz.n	a11, .L257
	.loc 1 169 0 is_stmt 0 discriminator 9
	l8ui	a7, a4, 16
	l8ui	a5, a4, 17
	slli	a5, a5, 8
	or	a6, a5, a7
	l8ui	a10, a4, 18
	slli	a10, a10, 16
	or	a5, a10, a6
	l8ui	a10, a4, 19
	slli	a10, a10, 24
	or	a10, a10, a5
	j	.L177
.L257:
	.loc 1 169 0
	movi.n	a10, 0
.L177:
	.loc 1 169 0 is_stmt 1 discriminator 12
	l32r	a5, .LC34
	s32i.n	a10, a5, 48
	.loc 1 169 0 discriminator 12
	beqz.n	a11, .L258
	.loc 1 169 0 is_stmt 0 discriminator 13
	l8ui	a7, a4, 20
	l8ui	a5, a4, 21
	slli	a5, a5, 8
	or	a6, a5, a7
	l8ui	a11, a4, 22
	slli	a11, a11, 16
	or	a5, a11, a6
	l8ui	a11, a4, 23
	slli	a11, a11, 24
	or	a11, a11, a5
	j	.L178
.L258:
	.loc 1 169 0
	movi.n	a11, 0
.L178:
	.loc 1 169 0 is_stmt 1 discriminator 16
	l32r	a5, .LC34
	s32i.n	a11, a5, 52
.LVL222:
	.loc 1 173 0 discriminator 16
	movi.n	a5, 0
	j	.L179
.LVL223:
.L182:
	.loc 1 174 0
	sext	a6, a5, 7
	add.n	a7, a3, a6
	l8ui	a7, a7, 124
	beqz.n	a7, .L180
	.loc 1 175 0 discriminator 1
	addx4	a12, a6, a6
	slli	a7, a12, 2
	add.n	a7, a3, a7
	l32i	a7, a7, 64
	.loc 1 174 0 discriminator 1
	bne	a8, a7, .L180
	.loc 1 175 0
	addx4	a12, a6, a6
	slli	a7, a12, 2
	add.n	a7, a3, a7
	l32i	a7, a7, 68
	bne	a9, a7, .L180
	.loc 1 175 0 is_stmt 0 discriminator 1
	addx4	a12, a6, a6
	slli	a7, a12, 2
	add.n	a7, a3, a7
	l32i	a7, a7, 72
	bne	a10, a7, .L180
	.loc 1 175 0 discriminator 2
	addx4	a12, a6, a6
	slli	a7, a12, 2
	add.n	a7, a3, a7
	l32i	a7, a7, 76
	bne	a11, a7, .L180
	.loc 1 177 0 is_stmt 1
	add.n	a4, a3, a6
.LVL224:
	movi.n	a5, 0
.LVL225:
	s8i	a5, a4, 124
	.loc 1 181 0
	l32r	a11, .LC35
	movi	a4, 0x2ff
	s32i.n	a4, a11, 0
	movi.n	a4, 0
	s32i.n	a4, a11, 4
	l32r	a4, .LC36
	s32i.n	a4, a11, 8
	slli	a5, a6, 2
	add.n	a7, a5, a6
	slli	a4, a7, 2
	add.n	a4, a3, a4
	l32i	a7, a4, 76
	movi	a4, 0xff
	or	a4, a7, a4
	s32i.n	a4, a11, 12
	.loc 1 182 0
	add.n	a6, a5, a6
	slli	a4, a6, 2
	mov.n	a6, a4
	addi	a10, a4, 64
	add.n	a10, a3, a10
	call8	mld6_leavegroup
.LVL226:
	.loc 1 187 0
	l32r	a4, .LC34
	l32i.n	a5, a4, 40
	l32r	a4, .LC37
	and	a4, a5, a4
	l32r	a5, .LC38
	beq	a4, a5, .L181
	.loc 1 188 0
	mov.n	a11, a3
	l32r	a10, .LC39
	call8	nd6_get_onlink_prefix
.LVL227:
	extui	a10, a10, 0, 8
.LVL228:
	.loc 1 189 0
	sext	a4, a10, 7
	bltz	a4, .L181
	.loc 1 192 0
	mov.n	a3, a4
.LVL229:
	l32r	a6, .LC40
	slli	a4, a4, 3
	sub	a7, a4, a3
	slli	a5, a7, 2
	mov.n	a7, a5
	add.n	a5, a6, a5
	l8ui	a4, a5, 24
	movi.n	a3, 4
	or	a3, a4, a3
	s8i	a3, a5, 24
.LVL230:
.L181:
	.loc 1 197 0
	mov.n	a10, a2
	call8	pbuf_free
.LVL231:
	.loc 1 198 0
	retw.n
.LVL232:
.L180:
	.loc 1 173 0 discriminator 2
	addi.n	a5, a5, 1
.LVL233:
	extui	a5, a5, 0, 8
.LVL234:
.L179:
	.loc 1 173 0 is_stmt 0 discriminator 1
	sext	a6, a5, 7
	blti	a6, 3, .L182
	.loc 1 204 0 is_stmt 1
	l32r	a10, .LC39
	call8	nd6_find_neighbor_cache_entry
.LVL235:
	extui	a10, a10, 0, 8
.LVL236:
	.loc 1 205 0
	sext	a5, a10, 7
	bltz	a5, .L163
	.loc 1 206 0
	l8ui	a5, a4, 4
	bbci	a5, 5, .L163
	.loc 1 207 0
	sext	a10, a10, 7
.LVL237:
	addx4	a10, a10, a10
	slli	a5, a10, 3
	addi	a5, a5, 16
	l32r	a6, .LC41
	add.n	a10, a5, a6
	l8ui	a12, a3, 174
	addi	a11, a4, 26
	addi.n	a10, a10, 4
	call8	memcpy
.LVL238:
	j	.L163
.LVL239:
.L172:
	.loc 1 216 0
	addi.n	a9, a4, 8
	.loc 1 216 0
	beqz.n	a9, .L259
	.loc 1 216 0 is_stmt 0 discriminator 1
	l8ui	a8, a4, 8
	l8ui	a6, a4, 9
	slli	a6, a6, 8
	or	a7, a6, a8
	l8ui	a5, a4, 10
	slli	a5, a5, 16
	or	a6, a5, a7
	l8ui	a5, a4, 11
	slli	a5, a5, 24
	or	a5, a5, a6
	j	.L183
.L259:
	.loc 1 216 0
	movi.n	a5, 0
.L183:
	.loc 1 216 0 is_stmt 1 discriminator 4
	l32r	a6, .LC34
	s32i.n	a5, a6, 40
.LVL240:
	.loc 1 216 0 discriminator 4
	beqz.n	a9, .L260
	.loc 1 216 0 is_stmt 0 discriminator 5
	l8ui	a8, a4, 12
	l8ui	a6, a4, 13
	slli	a6, a6, 8
	or	a7, a6, a8
	l8ui	a5, a4, 14
	slli	a5, a5, 16
	or	a6, a5, a7
	l8ui	a5, a4, 15
	slli	a5, a5, 24
	or	a5, a5, a6
	j	.L184
.L260:
	.loc 1 216 0
	movi.n	a5, 0
.L184:
	.loc 1 216 0 is_stmt 1 discriminator 8
	l32r	a6, .LC34
	s32i.n	a5, a6, 44
	.loc 1 216 0 discriminator 8
	beqz.n	a9, .L261
	.loc 1 216 0 is_stmt 0 discriminator 9
	l8ui	a8, a4, 16
	l8ui	a6, a4, 17
	slli	a6, a6, 8
	or	a7, a6, a8
	l8ui	a5, a4, 18
	slli	a5, a5, 16
	or	a6, a5, a7
	l8ui	a5, a4, 19
	slli	a5, a5, 24
	or	a5, a5, a6
	j	.L185
.L261:
	.loc 1 216 0
	movi.n	a5, 0
.L185:
	.loc 1 216 0 is_stmt 1 discriminator 12
	l32r	a6, .LC34
	s32i.n	a5, a6, 48
	.loc 1 216 0 discriminator 12
	beqz.n	a9, .L262
	.loc 1 216 0 is_stmt 0 discriminator 13
	l8ui	a8, a4, 20
	l8ui	a6, a4, 21
	slli	a6, a6, 8
	or	a7, a6, a8
	l8ui	a5, a4, 22
	slli	a5, a5, 16
	or	a6, a5, a7
	l8ui	a5, a4, 23
	slli	a5, a5, 24
	or	a5, a5, a6
	j	.L186
.L262:
	.loc 1 216 0
	movi.n	a5, 0
.L186:
	.loc 1 216 0 is_stmt 1 discriminator 16
	l32r	a6, .LC34
	s32i.n	a5, a6, 52
	.loc 1 219 0 discriminator 16
	l32r	a10, .LC39
	call8	nd6_find_neighbor_cache_entry
.LVL241:
	extui	a10, a10, 0, 8
.LVL242:
	.loc 1 220 0 discriminator 16
	sext	a5, a10, 7
	bgez	a5, .L187
	.loc 1 222 0
	mov.n	a10, a2
.LVL243:
	call8	pbuf_free
.LVL244:
	.loc 1 223 0
	retw.n
.LVL245:
.L187:
	.loc 1 227 0
	sext	a5, a10, 7
	slli	a7, a5, 2
	add.n	a7, a7, a5
	slli	a6, a7, 3
	l32r	a7, .LC41
	add.n	a6, a7, a6
	s32i.n	a3, a6, 16
	.loc 1 228 0
	l32r	a7, .LC42
	l32i.n	a7, a7, 0
	s32i.n	a7, a6, 36
	.loc 1 229 0
	l8ui	a4, a4, 4
.LVL246:
	bbsi	a4, 5, .L188
	.loc 1 230 0 discriminator 1
	addx4	a6, a5, a5
	slli	a4, a6, 3
	l32r	a6, .LC41
	add.n	a4, a6, a4
	l8ui	a4, a4, 32
	.loc 1 229 0 discriminator 1
	bnei	a4, 1, .L189
.L188:
	.loc 1 232 0
	l16ui	a6, a2, 10
	movi.n	a4, 0x19
	bltu	a4, a6, .L190
	.loc 1 234 0
	mov.n	a10, a2
.LVL247:
	call8	pbuf_free
.LVL248:
	.loc 1 237 0
	retw.n
.LVL249:
.L190:
	.loc 1 240 0
	l32i.n	a11, a2, 4
.LVL250:
	.loc 1 242 0
	l8ui	a4, a11, 25
	slli	a4, a4, 3
	addi	a4, a4, 24
	bgeu	a6, a4, .L191
	.loc 1 244 0
	mov.n	a10, a2
.LVL251:
	call8	pbuf_free
.LVL252:
	.loc 1 247 0
	retw.n
.LVL253:
.L191:
	.loc 1 250 0
	addx4	a6, a5, a5
	slli	a4, a6, 3
	mov.n	a6, a4
	addi	a4, a4, 16
	l32r	a10, .LC41
.LVL254:
	add.n	a10, a4, a10
	l8ui	a12, a3, 174
	addi	a11, a11, 26
.LVL255:
	addi.n	a10, a10, 4
	call8	memcpy
.LVL256:
.L189:
	.loc 1 252 0
	slli	a4, a5, 2
	add.n	a4, a4, a5
	slli	a3, a4, 3
.LVL257:
	l32r	a4, .LC41
	add.n	a3, a4, a3
	movi.n	a4, 2
	s8i	a4, a3, 32
	.loc 1 255 0
	l32i.n	a3, a3, 28
	beqz.n	a3, .L163
	.loc 1 256 0
	mov.n	a10, a5
	call8	nd6_send_q
.LVL258:
	j	.L163
.LVL259:
.L164:
.LBE2:
.LBB3:
	.loc 1 269 0
	l16ui	a6, a2, 10
	movi.n	a5, 0x17
	bltu	a5, a6, .L192
	.loc 1 271 0
	mov.n	a10, a2
	call8	pbuf_free
.LVL260:
	.loc 1 274 0
	retw.n
.LVL261:
.L192:
	.loc 1 280 0
	movi.n	a5, 0x19
	bgeu	a5, a6, .L263
	.loc 1 281 0
	addi	a5, a4, 24
.LVL262:
	.loc 1 282 0
	l8ui	a7, a4, 25
	slli	a7, a7, 3
	addi	a7, a7, 24
	bltu	a6, a7, .L264
	j	.L193
.LVL263:
.L263:
	.loc 1 286 0
	movi.n	a5, 0
	j	.L193
.LVL264:
.L264:
	.loc 1 283 0
	movi.n	a5, 0
.LVL265:
.L193:
	.loc 1 291 0
	movi.n	a6, 0
	j	.L194
.LVL266:
.L198:
	.loc 1 292 0
	sext	a11, a6, 7
	add.n	a7, a3, a11
	l8ui	a7, a7, 124
	bbsi	a7, 4, .L195
	.loc 1 292 0 is_stmt 0 discriminator 1
	bbci	a7, 3, .L196
	.loc 1 294 0 is_stmt 1
	l32r	a7, .LC34
	l32i.n	a7, a7, 20
	.loc 1 293 0
	bnez.n	a7, .L196
	.loc 1 294 0
	l32r	a7, .LC34
	l32i.n	a7, a7, 24
	bnez.n	a7, .L196
	.loc 1 294 0 is_stmt 0 discriminator 1
	l32r	a7, .LC34
	l32i.n	a7, a7, 28
	bnez.n	a7, .L196
	.loc 1 294 0 discriminator 2
	l32r	a7, .LC34
	l32i.n	a7, a7, 32
	bnez.n	a7, .L196
.L195:
	.loc 1 295 0 is_stmt 1 discriminator 3
	l8ui	a10, a4, 8
	l8ui	a8, a4, 9
	slli	a8, a8, 8
	or	a9, a8, a10
	l8ui	a7, a4, 10
	slli	a7, a7, 16
	or	a8, a7, a9
	l8ui	a7, a4, 11
	slli	a7, a7, 24
	or	a7, a7, a8
	addx4	a9, a11, a11
	slli	a8, a9, 2
	add.n	a8, a3, a8
	l32i	a8, a8, 64
	.loc 1 294 0 discriminator 3
	bne	a7, a8, .L196
	.loc 1 295 0
	l8ui	a7, a4, 12
	l8ui	a8, a4, 13
	slli	a8, a8, 8
	or	a9, a8, a7
	l8ui	a7, a4, 14
	slli	a7, a7, 16
	or	a8, a7, a9
	l8ui	a7, a4, 15
	slli	a7, a7, 24
	or	a7, a7, a8
	addx4	a9, a11, a11
	slli	a8, a9, 2
	add.n	a8, a3, a8
	l32i	a8, a8, 68
	bne	a7, a8, .L196
	.loc 1 295 0 is_stmt 0 discriminator 1
	l8ui	a7, a4, 16
	l8ui	a8, a4, 17
	slli	a8, a8, 8
	or	a7, a8, a7
	l8ui	a8, a4, 18
	slli	a8, a8, 16
	or	a7, a8, a7
	l8ui	a8, a4, 19
	slli	a8, a8, 24
	or	a7, a8, a7
	addx4	a9, a11, a11
	slli	a8, a9, 2
	mov.n	a9, a8
	add.n	a8, a3, a8
	l32i	a8, a8, 72
	bne	a7, a8, .L196
	.loc 1 295 0 discriminator 2
	l8ui	a7, a4, 20
	l8ui	a8, a4, 21
	slli	a8, a8, 8
	or	a7, a8, a7
	l8ui	a8, a4, 22
	slli	a8, a8, 16
	or	a7, a8, a7
	l8ui	a8, a4, 23
	slli	a8, a8, 24
	or	a7, a8, a7
	add.n	a8, a3, a9
	l32i	a8, a8, 76
	beq	a7, a8, .L265
.L196:
	.loc 1 291 0 is_stmt 1 discriminator 2
	addi.n	a6, a6, 1
.LVL267:
	extui	a6, a6, 0, 8
.LVL268:
.L194:
	.loc 1 291 0 is_stmt 0 discriminator 1
	sext	a7, a6, 7
	blti	a7, 3, .L198
	.loc 1 290 0 is_stmt 1
	movi.n	a6, 0
.LVL269:
	j	.L197
.LVL270:
.L265:
	.loc 1 296 0
	movi.n	a6, 1
.LVL271:
.L197:
	.loc 1 302 0
	bnez.n	a6, .L199
	.loc 1 303 0
	mov.n	a10, a2
	call8	pbuf_free
.LVL272:
	.loc 1 304 0
	retw.n
.LVL273:
.L199:
	.loc 1 308 0
	l32r	a6, .LC34
.LVL274:
	l32i.n	a6, a6, 20
	.loc 1 308 0
	bnez.n	a6, .L200
	.loc 1 308 0 discriminator 1
	l32r	a6, .LC34
	l32i.n	a6, a6, 24
	bnez.n	a6, .L200
	.loc 1 308 0 is_stmt 0 discriminator 2
	l32r	a6, .LC34
	l32i.n	a6, a6, 28
	bnez.n	a6, .L200
	.loc 1 308 0 discriminator 3
	l32r	a6, .LC34
	l32i.n	a6, a6, 32
	beqz.n	a6, .L266
	j	.L200
.LVL275:
.L203:
	.loc 1 311 0 is_stmt 1
	sext	a7, a5, 7
	add.n	a6, a3, a7
	l8ui	a6, a6, 124
	beqz.n	a6, .L202
	.loc 1 312 0 discriminator 1
	l8ui	a6, a4, 8
	l8ui	a8, a4, 9
	slli	a8, a8, 8
	or	a6, a8, a6
	l8ui	a8, a4, 10
	slli	a8, a8, 16
	or	a6, a8, a6
	l8ui	a8, a4, 11
	slli	a8, a8, 24
	or	a6, a8, a6
	addx4	a9, a7, a7
	slli	a8, a9, 2
	add.n	a8, a3, a8
	l32i	a8, a8, 64
	.loc 1 311 0 discriminator 1
	bne	a6, a8, .L202
	.loc 1 312 0
	l8ui	a6, a4, 12
	l8ui	a8, a4, 13
	slli	a8, a8, 8
	or	a6, a8, a6
	l8ui	a8, a4, 14
	slli	a8, a8, 16
	or	a6, a8, a6
	l8ui	a8, a4, 15
	slli	a8, a8, 24
	or	a6, a8, a6
	addx4	a9, a7, a7
	slli	a8, a9, 2
	add.n	a8, a3, a8
	l32i	a8, a8, 68
	bne	a6, a8, .L202
	.loc 1 312 0 is_stmt 0 discriminator 1
	l8ui	a6, a4, 16
	l8ui	a8, a4, 17
	slli	a8, a8, 8
	or	a6, a8, a6
	l8ui	a8, a4, 18
	slli	a8, a8, 16
	or	a6, a8, a6
	l8ui	a8, a4, 19
	slli	a8, a8, 24
	or	a6, a8, a6
	addx4	a9, a7, a7
	slli	a8, a9, 2
	add.n	a8, a3, a8
	l32i	a8, a8, 72
	bne	a6, a8, .L202
	.loc 1 312 0 discriminator 2
	l8ui	a6, a4, 20
	l8ui	a8, a4, 21
	slli	a8, a8, 8
	or	a6, a8, a6
	l8ui	a8, a4, 22
	slli	a8, a8, 16
	or	a6, a8, a6
	l8ui	a8, a4, 23
	slli	a8, a8, 24
	or	a6, a8, a6
	addx4	a9, a7, a7
	slli	a8, a9, 2
	mov.n	a9, a8
	add.n	a8, a3, a8
	l32i	a8, a8, 76
	bne	a6, a8, .L202
	.loc 1 314 0 is_stmt 1
	addi	a11, a9, 64
	movi.n	a12, 0x22
	add.n	a11, a3, a11
	mov.n	a10, a3
	call8	nd6_send_na
.LVL276:
	.loc 1 315 0
	add.n	a6, a3, a7
	l8ui	a6, a6, 124
	bbci	a6, 3, .L202
	.loc 1 317 0
	add.n	a7, a3, a7
	movi.n	a6, 0
	s8i	a6, a7, 124
.L202:
	.loc 1 310 0 discriminator 2
	addi.n	a5, a5, 1
.LVL277:
	extui	a5, a5, 0, 8
.LVL278:
	j	.L201
.LVL279:
.L266:
	movi.n	a5, 0
.LVL280:
.L201:
	.loc 1 310 0 is_stmt 0 discriminator 1
	sext	a6, a5, 7
	blti	a6, 3, .L203
	j	.L163
.LVL281:
.L200:
	.loc 1 324 0 is_stmt 1
	bnez.n	a5, .L204
	.loc 1 326 0
	mov.n	a10, a2
	call8	pbuf_free
.LVL282:
	.loc 1 329 0
	retw.n
.LVL283:
.L204:
	.loc 1 332 0
	l32r	a10, .LC43
	call8	nd6_find_neighbor_cache_entry
.LVL284:
	extui	a10, a10, 0, 8
.LVL285:
	.loc 1 333 0
	sext	a6, a10, 7
	bltz	a6, .L205
	.loc 1 335 0
	addx4	a8, a6, a6
	slli	a7, a8, 3
	l32r	a8, .LC41
	add.n	a7, a8, a7
	l8ui	a7, a7, 32
	bnei	a7, 1, .L206
	.loc 1 336 0
	slli	a7, a6, 2
	add.n	a9, a7, a6
	slli	a8, a9, 3
	l32r	a9, .LC41
	add.n	a8, a9, a8
	s32i.n	a8, sp, 0
	s32i.n	a3, a8, 16
	.loc 1 337 0
	add.n	a9, a7, a6
	slli	a8, a9, 3
	addi	a8, a8, 16
	l32r	a9, .LC41
	add.n	a10, a8, a9
.LVL286:
	l8ui	a12, a3, 174
	addi.n	a11, a5, 2
	addi.n	a10, a10, 4
	call8	memcpy
.LVL287:
	.loc 1 340 0
	movi.n	a5, 4
.LVL288:
	l32i.n	a8, sp, 0
	s8i	a5, a8, 32
	.loc 1 341 0
	add.n	a6, a7, a6
	slli	a5, a6, 3
	l32r	a9, .LC41
	add.n	a5, a9, a5
	l32r	a6, .LC44
	s32i.n	a6, a5, 36
	j	.L206
.LVL289:
.L205:
	.loc 1 347 0
	call8	nd6_new_neighbor_cache_entry
.LVL290:
	extui	a10, a10, 0, 8
.LVL291:
	.loc 1 348 0
	sext	a7, a10, 7
	bgez	a7, .L207
	.loc 1 351 0
	mov.n	a10, a2
.LVL292:
	call8	pbuf_free
.LVL293:
	.loc 1 353 0
	retw.n
.LVL294:
.L207:
	.loc 1 355 0
	sext	a6, a10, 7
	slli	a8, a6, 2
	s32i.n	a8, sp, 0
	add.n	a8, a8, a6
	slli	a7, a8, 3
	l32r	a9, .LC41
	add.n	a7, a9, a7
	s32i.n	a3, a7, 16
	.loc 1 356 0
	l32i.n	a8, sp, 0
	add.n	a9, a8, a6
	slli	a8, a9, 3
	addi	a8, a8, 16
	l32r	a9, .LC41
	add.n	a10, a8, a9
.LVL295:
	l8ui	a12, a3, 174
	addi.n	a11, a5, 2
	addi.n	a10, a10, 4
	call8	memcpy
.LVL296:
	.loc 1 357 0
	l32r	a5, .LC34
.LVL297:
	l32i.n	a8, a5, 20
	.loc 1 357 0
	s32i.n	a8, a7, 0
	.loc 1 357 0
	l32i.n	a8, a5, 24
	.loc 1 357 0
	s32i.n	a8, a7, 4
	.loc 1 357 0
	l32i.n	a8, a5, 28
	.loc 1 357 0
	s32i.n	a8, a7, 8
	.loc 1 357 0
	l32i.n	a5, a5, 32
	.loc 1 357 0
	s32i.n	a5, a7, 12
	.loc 1 361 0
	movi.n	a5, 4
	s8i	a5, a7, 32
	.loc 1 362 0
	l32i.n	a5, sp, 0
	add.n	a6, a5, a6
	slli	a5, a6, 3
	l32r	a6, .LC41
	add.n	a5, a6, a5
	l32r	a6, .LC44
	s32i.n	a6, a5, 36
.L206:
	.loc 1 366 0
	addi.n	a9, a4, 8
	.loc 1 366 0
	beqz.n	a9, .L267
	.loc 1 366 0 is_stmt 0 discriminator 1
	l8ui	a8, a4, 8
	l8ui	a6, a4, 9
	slli	a6, a6, 8
	or	a7, a6, a8
	l8ui	a5, a4, 10
	slli	a5, a5, 16
	or	a6, a5, a7
	l8ui	a5, a4, 11
	slli	a5, a5, 24
	or	a5, a5, a6
	j	.L208
.L267:
	.loc 1 366 0
	movi.n	a5, 0
.L208:
	.loc 1 366 0 is_stmt 1 discriminator 4
	l32r	a6, .LC34
	s32i.n	a5, a6, 40
	.loc 1 366 0 discriminator 4
	beqz.n	a9, .L268
	.loc 1 366 0 is_stmt 0 discriminator 5
	l8ui	a8, a4, 12
	l8ui	a6, a4, 13
	slli	a6, a6, 8
	or	a7, a6, a8
	l8ui	a5, a4, 14
	slli	a5, a5, 16
	or	a6, a5, a7
	l8ui	a5, a4, 15
	slli	a5, a5, 24
	or	a5, a5, a6
	j	.L209
.L268:
	.loc 1 366 0
	movi.n	a5, 0
.L209:
	.loc 1 366 0 is_stmt 1 discriminator 8
	l32r	a6, .LC34
	s32i.n	a5, a6, 44
	.loc 1 366 0 discriminator 8
	beqz.n	a9, .L269
	.loc 1 366 0 is_stmt 0 discriminator 9
	l8ui	a8, a4, 16
	l8ui	a6, a4, 17
	slli	a6, a6, 8
	or	a7, a6, a8
	l8ui	a5, a4, 18
	slli	a5, a5, 16
	or	a6, a5, a7
	l8ui	a5, a4, 19
	slli	a5, a5, 24
	or	a5, a5, a6
	j	.L210
.L269:
	.loc 1 366 0
	movi.n	a5, 0
.L210:
	.loc 1 366 0 is_stmt 1 discriminator 12
	l32r	a6, .LC34
	s32i.n	a5, a6, 48
	.loc 1 366 0 discriminator 12
	beqz.n	a9, .L270
	.loc 1 366 0 is_stmt 0 discriminator 13
	l8ui	a7, a4, 20
	l8ui	a5, a4, 21
	slli	a5, a5, 8
	or	a6, a5, a7
	l8ui	a5, a4, 22
	slli	a5, a5, 16
	or	a5, a5, a6
	l8ui	a4, a4, 23
.LVL298:
	slli	a4, a4, 24
	or	a4, a4, a5
	j	.L211
.LVL299:
.L270:
	.loc 1 366 0
	movi.n	a4, 0
.LVL300:
.L211:
	.loc 1 366 0 is_stmt 1 discriminator 16
	l32r	a5, .LC34
	s32i.n	a4, a5, 52
	.loc 1 369 0 discriminator 16
	movi	a12, 0x60
	l32r	a11, .LC39
	mov.n	a10, a3
	call8	nd6_send_na
.LVL301:
	j	.L163
.LVL302:
.L167:
.LBE3:
.LBB4:
	.loc 1 381 0
	l16ui	a5, a2, 10
	movi.n	a6, 0xf
	bltu	a6, a5, .L212
	.loc 1 383 0
	mov.n	a10, a2
	call8	pbuf_free
.LVL303:
	.loc 1 386 0
	retw.n
.LVL304:
.L212:
	.loc 1 394 0
	l8ui	a5, a3, 165
	bltui	a5, 3, .L213
	.loc 1 395 0 discriminator 1
	mov.n	a10, a3
	call8	nd6_send_rs
.LVL305:
	extui	a10, a10, 0, 8
	.loc 1 394 0 discriminator 1
	bnez.n	a10, .L214
.L213:
	.loc 1 396 0
	movi.n	a5, 0
	s8i	a5, a3, 165
.L214:
	.loc 1 401 0
	mov.n	a11, a3
	l32r	a10, .LC43
	call8	nd6_get_router
.LVL306:
	extui	a10, a10, 0, 8
.LVL307:
	.loc 1 402 0
	sext	a5, a10, 7
	bgez	a5, .L215
	.loc 1 404 0
	mov.n	a11, a3
	l32r	a10, .LC43
.LVL308:
	call8	nd6_new_router
.LVL309:
	extui	a10, a10, 0, 8
.LVL310:
.L215:
	.loc 1 407 0
	sext	a5, a10, 7
	bgez	a5, .L216
	.loc 1 409 0
	mov.n	a10, a2
.LVL311:
	call8	pbuf_free
.LVL312:
	.loc 1 411 0
	retw.n
.LVL313:
.L216:
	.loc 1 415 0
	sext	a6, a10, 7
	l8ui	a10, a4, 6
.LVL314:
	l8ui	a5, a4, 7
	slli	a5, a5, 8
	or	a10, a5, a10
	call8	lwip_htons
.LVL315:
	addx2	a7, a6, a6
	slli	a5, a7, 2
	l32r	a7, .LC45
	add.n	a5, a7, a5
	s32i.n	a10, a5, 4
	.loc 1 419 0
	l8ui	a8, a4, 12
	l8ui	a5, a4, 13
	slli	a5, a5, 8
	or	a7, a5, a8
	l8ui	a10, a4, 14
	slli	a10, a10, 16
	or	a5, a10, a7
	l8ui	a10, a4, 15
	slli	a10, a10, 24
	or	a10, a10, a5
	beqz.n	a10, .L217
	.loc 1 420 0
	call8	lwip_htonl
.LVL316:
	l32r	a5, .LC46
	s32i.n	a10, a5, 0
.L217:
	.loc 1 422 0
	l8ui	a8, a4, 8
	l8ui	a5, a4, 9
	slli	a5, a5, 8
	or	a7, a5, a8
	l8ui	a10, a4, 10
	slli	a10, a10, 16
	or	a5, a10, a7
	l8ui	a10, a4, 11
	slli	a10, a10, 24
	or	a10, a10, a5
	beqz.n	a10, .L218
	.loc 1 423 0
	call8	lwip_htonl
.LVL317:
	l32r	a5, .LC42
	s32i.n	a10, a5, 0
.L218:
	.loc 1 431 0
	l8ui	a7, a4, 5
	addx2	a5, a6, a6
	slli	a4, a5, 2
.LVL318:
	l32r	a5, .LC45
	add.n	a4, a5, a4
	s8i	a7, a4, 8
.LVL319:
	.loc 1 434 0
	movi.n	a5, 0x10
	.loc 1 437 0
	j	.L219
.LVL320:
.L231:
	.loc 1 438 0
	l16ui	a7, a2, 10
	bne	a4, a7, .L220
	.loc 1 440 0
	l32i.n	a4, a2, 4
	add.n	a4, a4, a5
.LVL321:
	j	.L221
.LVL322:
.L220:
	.loc 1 443 0
	l32r	a4, .LC32
	movi.n	a12, 0x20
	mov.n	a11, a4
	mov.n	a10, a2
	call8	pbuf_copy_partial
.LVL323:
.L221:
	.loc 1 445 0
	l8ui	a7, a4, 0
	beqi	a7, 3, .L223
	beqi	a7, 5, .L224
	bnei	a7, 1, .L222
.LVL324:
.LBB5:
	.loc 1 450 0
	addx2	a8, a6, a6
	slli	a7, a8, 2
	l32r	a8, .LC45
	add.n	a7, a8, a7
	l32i.n	a10, a7, 0
	beqz.n	a10, .L222
	.loc 1 451 0 discriminator 1
	l8ui	a7, a10, 32
	.loc 1 450 0 discriminator 1
	bnei	a7, 1, .L222
	.loc 1 452 0
	l8ui	a12, a3, 174
	addi.n	a11, a4, 2
	addi	a10, a10, 20
	call8	memcpy
.LVL325:
	.loc 1 453 0
	slli	a8, a6, 1
	add.n	a8, a8, a6
	slli	a7, a8, 2
	l32r	a8, .LC45
	add.n	a7, a8, a7
	l32i.n	a8, a7, 0
	movi.n	a9, 2
	s8i	a9, a8, 32
	.loc 1 454 0
	l32i.n	a7, a7, 0
	l32r	a8, .LC42
	l32i.n	a8, a8, 0
	s32i.n	a8, a7, 36
	j	.L222
.LVL326:
.L224:
.LBE5:
.LBB6:
	.loc 1 462 0
	l8ui	a9, a4, 4
	l8ui	a7, a4, 5
	slli	a7, a7, 8
	or	a8, a7, a9
	l8ui	a7, a4, 6
	slli	a7, a7, 16
	or	a7, a7, a8
	l8ui	a10, a4, 7
	slli	a10, a10, 24
	or	a10, a10, a7
	call8	lwip_htonl
.LVL327:
	movi	a7, 0x4ff
	bgeu	a7, a10, .L222
	.loc 1 464 0
	l8ui	a9, a4, 4
	l8ui	a7, a4, 5
	slli	a7, a7, 8
	or	a8, a7, a9
	l8ui	a7, a4, 6
	slli	a7, a7, 16
	or	a7, a7, a8
	l8ui	a10, a4, 7
	slli	a10, a10, 24
	or	a10, a10, a7
	call8	lwip_htonl
.LVL328:
	s16i	a10, a3, 172
	j	.L222
.LVL329:
.L223:
.LBE6:
.LBB7:
	.loc 1 474 0
	l8ui	a7, a4, 3
	sext	a7, a7, 7
	bgez	a7, .L222
.LBB8:
	.loc 1 479 0
	addi	a10, a4, 16
	.loc 1 479 0
	beqz.n	a10, .L271
	.loc 1 479 0 is_stmt 0 discriminator 1
	l8ui	a7, a4, 16
	l8ui	a8, a4, 17
	slli	a8, a8, 8
	or	a9, a8, a7
	l8ui	a7, a4, 18
	slli	a7, a7, 16
	or	a8, a7, a9
	l8ui	a7, a4, 19
	slli	a7, a7, 24
	or	a7, a7, a8
	j	.L226
.L271:
	.loc 1 479 0
	movi.n	a7, 0
.L226:
	.loc 1 479 0 is_stmt 1 discriminator 4
	l32r	a8, .LC34
	s32i.n	a7, a8, 40
	.loc 1 479 0 discriminator 4
	beqz.n	a10, .L272
	.loc 1 479 0 is_stmt 0 discriminator 5
	l8ui	a7, a4, 20
	l8ui	a8, a4, 21
	slli	a8, a8, 8
	or	a9, a8, a7
	l8ui	a7, a4, 22
	slli	a7, a7, 16
	or	a8, a7, a9
	l8ui	a7, a4, 23
	slli	a7, a7, 24
	or	a7, a7, a8
	j	.L227
.L272:
	.loc 1 479 0
	movi.n	a7, 0
.L227:
	.loc 1 479 0 is_stmt 1 discriminator 8
	l32r	a8, .LC34
	s32i.n	a7, a8, 44
	.loc 1 479 0 discriminator 8
	beqz.n	a10, .L273
	.loc 1 479 0 is_stmt 0 discriminator 9
	l8ui	a7, a4, 24
	l8ui	a8, a4, 25
	slli	a8, a8, 8
	or	a9, a8, a7
	l8ui	a7, a4, 26
	slli	a7, a7, 16
	or	a8, a7, a9
	l8ui	a7, a4, 27
	slli	a7, a7, 24
	or	a7, a7, a8
	j	.L228
.L273:
	.loc 1 479 0
	movi.n	a7, 0
.L228:
	.loc 1 479 0 is_stmt 1 discriminator 12
	l32r	a8, .LC34
	s32i.n	a7, a8, 48
	.loc 1 479 0 discriminator 12
	beqz.n	a10, .L274
	.loc 1 479 0 is_stmt 0 discriminator 13
	l8ui	a7, a4, 28
	l8ui	a8, a4, 29
	slli	a8, a8, 8
	or	a9, a8, a7
	l8ui	a7, a4, 30
	slli	a7, a7, 16
	or	a8, a7, a9
	l8ui	a7, a4, 31
	slli	a7, a7, 24
	or	a7, a7, a8
	j	.L229
.L274:
	.loc 1 479 0
	movi.n	a7, 0
.L229:
	.loc 1 479 0 is_stmt 1 discriminator 16
	l32r	a8, .LC34
	s32i.n	a7, a8, 52
	.loc 1 482 0 discriminator 16
	mov.n	a11, a3
	l32r	a10, .LC39
	call8	nd6_get_onlink_prefix
.LVL330:
	extui	a10, a10, 0, 8
.LVL331:
	.loc 1 483 0 discriminator 16
	sext	a7, a10, 7
	bgez	a7, .L230
	.loc 1 485 0
	mov.n	a11, a3
	l32r	a10, .LC39
.LVL332:
	call8	nd6_new_onlink_prefix
.LVL333:
	extui	a10, a10, 0, 8
.LVL334:
.L230:
	.loc 1 487 0
	sext	a7, a10, 7
	bltz	a7, .L222
	.loc 1 488 0
	l8ui	a10, a4, 4
.LVL335:
	l8ui	a8, a4, 5
	slli	a8, a8, 8
	or	a9, a8, a10
	l8ui	a8, a4, 6
	slli	a8, a8, 16
	or	a8, a8, a9
	l8ui	a10, a4, 7
	slli	a10, a10, 24
	or	a10, a10, a8
	call8	lwip_htonl
.LVL336:
	subx8	a9, a7, a7
	slli	a8, a9, 2
	l32r	a9, .LC40
	add.n	a8, a9, a8
	s32i.n	a10, a8, 20
	.loc 1 491 0
	l8ui	a8, a4, 3
	bbci	a8, 6, .L222
	.loc 1 494 0
	mov.n	a8, a9
	slli	a10, a7, 3
	sub	a11, a10, a7
	slli	a9, a11, 2
	add.n	a9, a8, a9
	l8ui	a8, a9, 24
	movi.n	a7, 1
	or	a7, a8, a7
	s8i	a7, a9, 24
.LVL337:
.L222:
.LBE8:
.LBE7:
	.loc 1 513 0
	l8ui	a4, a4, 1
.LVL338:
	addx8	a5, a4, a5
.LVL339:
	extui	a5, a5, 0, 16
.LVL340:
.L219:
	.loc 1 437 0
	l16ui	a4, a2, 8
	mov.n	a13, a5
	sub	a7, a4, a5
	bgei	a7, 1, .L231
	j	.L163
.LVL341:
.L169:
.LBE4:
.LBB9:
	.loc 1 524 0
	l16ui	a6, a2, 10
	movi.n	a5, 0x27
	bltu	a5, a6, .L232
	.loc 1 526 0
	mov.n	a10, a2
	call8	pbuf_free
.LVL342:
	.loc 1 529 0
	retw.n
.LVL343:
.L232:
	.loc 1 534 0
	movi.n	a5, 0x29
	bgeu	a5, a6, .L275
	.loc 1 535 0
	addi	a5, a4, 40
.LVL344:
	.loc 1 536 0
	l8ui	a7, a4, 41
	slli	a7, a7, 3
	addi	a7, a7, 40
	bltu	a6, a7, .L276
	j	.L233
.LVL345:
.L275:
	.loc 1 540 0
	movi.n	a5, 0
	j	.L233
.LVL346:
.L276:
	.loc 1 537 0
	movi.n	a5, 0
.LVL347:
.L233:
	.loc 1 544 0
	addi	a10, a4, 24
	.loc 1 544 0
	beqz.n	a10, .L277
	.loc 1 544 0 is_stmt 0 discriminator 1
	l8ui	a9, a4, 24
	l8ui	a7, a4, 25
	slli	a7, a7, 8
	or	a8, a7, a9
	l8ui	a6, a4, 26
	slli	a6, a6, 16
	or	a7, a6, a8
	l8ui	a6, a4, 27
	slli	a6, a6, 24
	or	a6, a6, a7
	j	.L234
.L277:
	.loc 1 544 0
	movi.n	a6, 0
.L234:
	.loc 1 544 0 is_stmt 1 discriminator 4
	l32r	a7, .LC34
	s32i.n	a6, a7, 20
.LVL348:
	.loc 1 544 0 discriminator 4
	beqz.n	a10, .L278
	.loc 1 544 0 is_stmt 0 discriminator 5
	l8ui	a9, a4, 28
	l8ui	a7, a4, 29
	slli	a7, a7, 8
	or	a8, a7, a9
	l8ui	a6, a4, 30
	slli	a6, a6, 16
	or	a7, a6, a8
	l8ui	a6, a4, 31
	slli	a6, a6, 24
	or	a6, a6, a7
	j	.L235
.L278:
	.loc 1 544 0
	movi.n	a6, 0
.L235:
	.loc 1 544 0 is_stmt 1 discriminator 8
	l32r	a7, .LC34
	s32i.n	a6, a7, 24
	.loc 1 544 0 discriminator 8
	beqz.n	a10, .L279
	.loc 1 544 0 is_stmt 0 discriminator 9
	l8ui	a9, a4, 32
	l8ui	a7, a4, 33
	slli	a7, a7, 8
	or	a8, a7, a9
	l8ui	a6, a4, 34
	slli	a6, a6, 16
	or	a7, a6, a8
	l8ui	a6, a4, 35
	slli	a6, a6, 24
	or	a6, a6, a7
	j	.L236
.L279:
	.loc 1 544 0
	movi.n	a6, 0
.L236:
	.loc 1 544 0 is_stmt 1 discriminator 12
	l32r	a7, .LC34
	s32i.n	a6, a7, 28
	.loc 1 544 0 discriminator 12
	beqz.n	a10, .L280
	.loc 1 544 0 is_stmt 0 discriminator 13
	l8ui	a9, a4, 36
	l8ui	a7, a4, 37
	slli	a7, a7, 8
	or	a8, a7, a9
	l8ui	a6, a4, 38
	slli	a6, a6, 16
	or	a7, a6, a8
	l8ui	a6, a4, 39
	slli	a6, a6, 24
	or	a6, a6, a7
	j	.L237
.L280:
	.loc 1 544 0
	movi.n	a6, 0
.L237:
	.loc 1 544 0 is_stmt 1 discriminator 16
	l32r	a7, .LC34
	s32i.n	a6, a7, 32
	.loc 1 547 0 discriminator 16
	l32r	a10, .LC43
	call8	nd6_find_destination_cache_entry
.LVL349:
	extui	a10, a10, 0, 8
.LVL350:
	.loc 1 548 0 discriminator 16
	sext	a6, a10, 7
	bgez	a6, .L238
	.loc 1 550 0
	mov.n	a10, a2
.LVL351:
	call8	pbuf_free
.LVL352:
	.loc 1 551 0
	retw.n
.LVL353:
.L238:
	.loc 1 555 0
	sext	a10, a10, 7
.LVL354:
	addi.n	a11, a4, 8
	.loc 1 555 0
	beqz.n	a11, .L281
	.loc 1 555 0 is_stmt 0 discriminator 1
	l8ui	a9, a4, 8
	l8ui	a7, a4, 9
	slli	a7, a7, 8
	or	a8, a7, a9
	l8ui	a6, a4, 10
	slli	a6, a6, 16
	or	a7, a6, a8
	l8ui	a6, a4, 11
	slli	a6, a6, 24
	or	a6, a6, a7
	j	.L239
.L281:
	.loc 1 555 0
	movi.n	a6, 0
.L239:
	.loc 1 555 0 is_stmt 1 discriminator 4
	addx4	a8, a10, a10
	slli	a7, a8, 3
	l32r	a8, .LC47
	add.n	a7, a8, a7
	s32i.n	a6, a7, 16
	.loc 1 555 0 discriminator 4
	beqz.n	a11, .L282
	.loc 1 555 0 is_stmt 0 discriminator 5
	l8ui	a9, a4, 12
	l8ui	a7, a4, 13
	slli	a7, a7, 8
	or	a8, a7, a9
	l8ui	a6, a4, 14
	slli	a6, a6, 16
	or	a7, a6, a8
	l8ui	a6, a4, 15
	slli	a6, a6, 24
	or	a6, a6, a7
	j	.L240
.L282:
	.loc 1 555 0
	movi.n	a6, 0
.L240:
	.loc 1 555 0 is_stmt 1 discriminator 8
	addx4	a8, a10, a10
	slli	a7, a8, 3
	l32r	a8, .LC47
	add.n	a7, a8, a7
	s32i.n	a6, a7, 20
	.loc 1 555 0 discriminator 8
	beqz.n	a11, .L283
	.loc 1 555 0 is_stmt 0 discriminator 9
	l8ui	a9, a4, 16
	l8ui	a7, a4, 17
	slli	a7, a7, 8
	or	a8, a7, a9
	l8ui	a6, a4, 18
	slli	a6, a6, 16
	or	a7, a6, a8
	l8ui	a6, a4, 19
	slli	a6, a6, 24
	or	a6, a6, a7
	j	.L241
.L283:
	.loc 1 555 0
	movi.n	a6, 0
.L241:
	.loc 1 555 0 is_stmt 1 discriminator 12
	addx4	a8, a10, a10
	slli	a7, a8, 3
	l32r	a8, .LC47
	add.n	a7, a8, a7
	s32i.n	a6, a7, 24
	.loc 1 555 0 discriminator 12
	beqz.n	a11, .L284
	.loc 1 555 0 is_stmt 0 discriminator 13
	l8ui	a9, a4, 20
	l8ui	a7, a4, 21
	slli	a7, a7, 8
	or	a8, a7, a9
	l8ui	a6, a4, 22
	slli	a6, a6, 16
	or	a7, a6, a8
	l8ui	a6, a4, 23
	slli	a6, a6, 24
	or	a6, a6, a7
	j	.L242
.L284:
	.loc 1 555 0
	movi.n	a6, 0
.L242:
	.loc 1 555 0 is_stmt 1 discriminator 16
	addx4	a10, a10, a10
	slli	a7, a10, 3
	l32r	a8, .LC47
	add.n	a7, a8, a7
	s32i.n	a6, a7, 28
	.loc 1 558 0 discriminator 16
	beqz.n	a5, .L163
	.loc 1 559 0
	l8ui	a6, a5, 0
	bnei	a6, 2, .L163
	.loc 1 561 0
	beqz.n	a11, .L285
	.loc 1 561 0 is_stmt 0 discriminator 1
	l8ui	a6, a4, 8
	l8ui	a7, a4, 9
	slli	a7, a7, 8
	or	a8, a7, a6
	l8ui	a6, a4, 10
	slli	a6, a6, 16
	or	a7, a6, a8
	l8ui	a6, a4, 11
	slli	a6, a6, 24
	or	a6, a6, a7
	j	.L243
.L285:
	.loc 1 561 0
	movi.n	a6, 0
.L243:
	.loc 1 561 0 is_stmt 1 discriminator 4
	l32r	a7, .LC34
	s32i.n	a6, a7, 20
	.loc 1 561 0 discriminator 4
	beqz.n	a11, .L286
	.loc 1 561 0 is_stmt 0 discriminator 5
	l8ui	a6, a4, 12
	l8ui	a7, a4, 13
	slli	a7, a7, 8
	or	a8, a7, a6
	l8ui	a6, a4, 14
	slli	a6, a6, 16
	or	a7, a6, a8
	l8ui	a6, a4, 15
	slli	a6, a6, 24
	or	a6, a6, a7
	j	.L244
.L286:
	.loc 1 561 0
	movi.n	a6, 0
.L244:
	.loc 1 561 0 is_stmt 1 discriminator 8
	l32r	a7, .LC34
	s32i.n	a6, a7, 24
	.loc 1 561 0 discriminator 8
	beqz.n	a11, .L287
	.loc 1 561 0 is_stmt 0 discriminator 9
	l8ui	a6, a4, 16
	l8ui	a7, a4, 17
	slli	a7, a7, 8
	or	a8, a7, a6
	l8ui	a6, a4, 18
	slli	a6, a6, 16
	or	a7, a6, a8
	l8ui	a6, a4, 19
	slli	a6, a6, 24
	or	a6, a6, a7
	j	.L245
.L287:
	.loc 1 561 0
	movi.n	a6, 0
.L245:
	.loc 1 561 0 is_stmt 1 discriminator 12
	l32r	a7, .LC34
	s32i.n	a6, a7, 28
	.loc 1 561 0 discriminator 12
	beqz.n	a11, .L288
	.loc 1 561 0 is_stmt 0 discriminator 13
	l8ui	a8, a4, 20
	l8ui	a6, a4, 21
	slli	a6, a6, 8
	or	a7, a6, a8
	l8ui	a6, a4, 22
	slli	a6, a6, 16
	or	a6, a6, a7
	l8ui	a4, a4, 23
.LVL355:
	slli	a4, a4, 24
	or	a4, a4, a6
	j	.L246
.LVL356:
.L288:
	.loc 1 561 0
	movi.n	a4, 0
.LVL357:
.L246:
	.loc 1 561 0 is_stmt 1 discriminator 16
	l32r	a6, .LC34
	s32i.n	a4, a6, 32
	.loc 1 563 0 discriminator 16
	l32r	a10, .LC43
	call8	nd6_find_neighbor_cache_entry
.LVL358:
	extui	a4, a10, 0, 8
.LVL359:
	.loc 1 564 0 discriminator 16
	sext	a6, a4, 7
	bgez	a6, .L247
	.loc 1 565 0
	call8	nd6_new_neighbor_cache_entry
.LVL360:
	extui	a4, a10, 0, 8
.LVL361:
	.loc 1 566 0
	sext	a6, a4, 7
	bltz	a6, .L247
	.loc 1 567 0
	mov.n	a7, a6
	slli	a6, a6, 2
	s32i.n	a6, sp, 0
	add.n	a8, a6, a7
	slli	a6, a8, 3
	l32r	a8, .LC41
	add.n	a6, a8, a6
	s32i.n	a3, a6, 16
	.loc 1 568 0
	l32i.n	a8, sp, 0
	add.n	a9, a8, a7
	slli	a8, a9, 3
	addi	a8, a8, 16
	l32r	a9, .LC41
	add.n	a10, a8, a9
.LVL362:
	l8ui	a12, a3, 174
	addi.n	a11, a5, 2
	addi.n	a10, a10, 4
	call8	memcpy
.LVL363:
	.loc 1 569 0
	l32r	a8, .LC34
	l32i.n	a9, a8, 20
	.loc 1 569 0
	s32i.n	a9, a6, 0
	.loc 1 569 0
	l32i.n	a9, a8, 24
	.loc 1 569 0
	s32i.n	a9, a6, 4
	.loc 1 569 0
	l32i.n	a9, a8, 28
	.loc 1 569 0
	s32i.n	a9, a6, 8
	.loc 1 569 0
	l32i.n	a8, a8, 32
	.loc 1 569 0
	s32i.n	a8, a6, 12
	.loc 1 573 0
	movi.n	a8, 4
	s8i	a8, a6, 32
	.loc 1 574 0
	l32i.n	a6, sp, 0
	add.n	a7, a6, a7
	slli	a6, a7, 3
	l32r	a8, .LC41
	add.n	a6, a8, a6
	l32r	a7, .LC44
	s32i.n	a7, a6, 36
.LVL364:
.L247:
	.loc 1 577 0
	sext	a6, a4, 7
	bltz	a6, .L163
	.loc 1 578 0
	mov.n	a4, a6
.LVL365:
	addx4	a7, a6, a6
	slli	a6, a7, 3
	l32r	a7, .LC41
	add.n	a6, a7, a6
	l8ui	a6, a6, 32
	bnei	a6, 1, .L163
	.loc 1 579 0
	slli	a7, a4, 2
	add.n	a8, a7, a4
	slli	a6, a8, 3
	addi	a10, a6, 16
	l32r	a6, .LC41
	add.n	a10, a10, a6
	l8ui	a12, a3, 174
	addi.n	a11, a5, 2
	addi.n	a10, a10, 4
	call8	memcpy
.LVL366:
	.loc 1 582 0
	add.n	a5, a7, a4
.LVL367:
	slli	a3, a5, 3
.LVL368:
	add.n	a3, a6, a3
	movi.n	a5, 4
	s8i	a5, a3, 32
	.loc 1 583 0
	add.n	a4, a7, a4
	slli	a3, a4, 3
	add.n	a3, a6, a3
	l32r	a4, .LC44
	s32i.n	a4, a3, 36
	j	.L163
.LVL369:
.L166:
.LBE9:
.LBB10:
	.loc 1 597 0
	l16ui	a3, a2, 10
.LVL370:
	movi.n	a5, 0x2f
	bltu	a5, a3, .L248
	.loc 1 599 0
	mov.n	a10, a2
	call8	pbuf_free
.LVL371:
	.loc 1 602 0
	retw.n
.LVL372:
.L248:
	.loc 1 609 0
	addi	a8, a4, 32
	.loc 1 609 0
	beqz.n	a8, .L289
	.loc 1 609 0 is_stmt 0 discriminator 1
	l8ui	a7, a4, 32
	l8ui	a5, a4, 33
	slli	a5, a5, 8
	or	a6, a5, a7
	l8ui	a3, a4, 34
	slli	a3, a3, 16
	or	a5, a3, a6
	l8ui	a3, a4, 35
	slli	a3, a3, 24
	or	a3, a3, a5
	j	.L249
.L289:
	.loc 1 609 0
	movi.n	a3, 0
.L249:
	.loc 1 609 0 is_stmt 1 discriminator 4
	l32r	a5, .LC34
	s32i.n	a3, a5, 20
.LVL373:
	.loc 1 609 0 discriminator 4
	beqz.n	a8, .L290
	.loc 1 609 0 is_stmt 0 discriminator 5
	l8ui	a7, a4, 36
	l8ui	a5, a4, 37
	slli	a5, a5, 8
	or	a6, a5, a7
	l8ui	a3, a4, 38
	slli	a3, a3, 16
	or	a5, a3, a6
	l8ui	a3, a4, 39
	slli	a3, a3, 24
	or	a3, a3, a5
	j	.L250
.L290:
	.loc 1 609 0
	movi.n	a3, 0
.L250:
	.loc 1 609 0 is_stmt 1 discriminator 8
	l32r	a5, .LC34
	s32i.n	a3, a5, 24
	.loc 1 609 0 discriminator 8
	beqz.n	a8, .L291
	.loc 1 609 0 is_stmt 0 discriminator 9
	l8ui	a7, a4, 40
	l8ui	a5, a4, 41
	slli	a5, a5, 8
	or	a6, a5, a7
	l8ui	a3, a4, 42
	slli	a3, a3, 16
	or	a5, a3, a6
	l8ui	a3, a4, 43
	slli	a3, a3, 24
	or	a3, a3, a5
	j	.L251
.L291:
	.loc 1 609 0
	movi.n	a3, 0
.L251:
	.loc 1 609 0 is_stmt 1 discriminator 12
	l32r	a5, .LC34
	s32i.n	a3, a5, 28
	.loc 1 609 0 discriminator 12
	beqz.n	a8, .L292
	.loc 1 609 0 is_stmt 0 discriminator 13
	l8ui	a7, a4, 44
	l8ui	a5, a4, 45
	slli	a5, a5, 8
	or	a6, a5, a7
	l8ui	a3, a4, 46
	slli	a3, a3, 16
	or	a5, a3, a6
	l8ui	a3, a4, 47
	slli	a3, a3, 24
	or	a3, a3, a5
	j	.L252
.L292:
	.loc 1 609 0
	movi.n	a3, 0
.L252:
	.loc 1 609 0 is_stmt 1 discriminator 16
	l32r	a5, .LC34
	s32i.n	a3, a5, 32
	.loc 1 612 0 discriminator 16
	l32r	a10, .LC43
	call8	nd6_find_destination_cache_entry
.LVL374:
	extui	a3, a10, 0, 8
.LVL375:
	.loc 1 613 0 discriminator 16
	sext	a5, a3, 7
	bgez	a5, .L253
	.loc 1 615 0
	mov.n	a10, a2
.LVL376:
	call8	pbuf_free
.LVL377:
	.loc 1 616 0
	retw.n
.LVL378:
.L253:
	.loc 1 620 0
	l8ui	a7, a4, 4
	l8ui	a5, a4, 5
	slli	a5, a5, 8
	or	a6, a5, a7
	l8ui	a5, a4, 6
	slli	a5, a5, 16
	or	a5, a5, a6
	l8ui	a10, a4, 7
.LVL379:
	slli	a10, a10, 24
	or	a10, a10, a5
	call8	lwip_htonl
.LVL380:
	.loc 1 621 0
	sext	a3, a3, 7
.LVL381:
	l32r	a4, .LC48
.LVL382:
	bltu	a4, a10, .L293
	.loc 1 621 0 is_stmt 0 discriminator 1
	extui	a10, a10, 0, 16
.LVL383:
	j	.L254
.LVL384:
.L293:
	.loc 1 621 0
	l32r	a10, .LC33
.LVL385:
.L254:
	.loc 1 621 0 discriminator 4
	addx4	a3, a3, a3
	slli	a4, a3, 3
	l32r	a3, .LC47
	add.n	a4, a3, a4
	s16i	a10, a4, 32
.L163:
.LBE10:
	.loc 1 632 0 is_stmt 1
	mov.n	a10, a2
	call8	pbuf_free
.LVL386:
	retw.n
.LFE15:
	.size	nd6_input, .-nd6_input
	.section	.rodata.str1.4
	.align	4
.LC49:
	.string	"netif != NULL"
	.section	.text.nd6_set_cb,"ax",@progbits
	.literal_position
	.literal .LC50, .LC49
	.literal .LC51, __func__$6583
	.literal .LC52, .LC22
	.align	4
	.global	nd6_set_cb
	.type	nd6_set_cb, @function
nd6_set_cb:
.LFB16:
	.loc 1 643 0
.LVL387:
	entry	sp, 32
.LCFI16:
	.loc 1 644 0
	bnez.n	a2, .L295
	.loc 1 644 0 discriminator 1
	l32r	a13, .LC50
	l32r	a12, .LC51
	movi	a11, 0x284
	l32r	a10, .LC52
	call8	__assert_func
.LVL388:
.L295:
	.loc 1 646 0
	beqz.n	a2, .L294
	.loc 1 646 0 discriminator 1
	l8ui	a8, a2, 181
	bbci	a8, 0, .L294
	.loc 1 647 0
	s32i	a3, a2, 128
.L294:
	retw.n
.LFE16:
	.size	nd6_set_cb, .-nd6_set_cb
	.section	.text.nd6_tmr,"ax",@progbits
	.literal_position
	.literal .LC53, neighbor_cache
	.literal .LC54, .L301
	.literal .LC55, destination_cache
	.literal .LC56, default_router_list
	.literal .LC57, prefix_list
	.literal .LC58, netif_list
	.literal .LC59, multicast_address
	.literal .LC60, 16777216
	.align	4
	.global	nd6_tmr
	.type	nd6_tmr, @function
nd6_tmr:
.LFB17:
	.loc 1 663 0
	entry	sp, 32
.LCFI17:
.LVL389:
	.loc 1 668 0
	movi.n	a3, 0
	j	.L298
.LVL390:
.L311:
	.loc 1 669 0
	sext	a2, a3, 7
	addx4	a8, a2, a2
	slli	a4, a8, 3
	l32r	a8, .LC53
	add.n	a4, a8, a4
	l8ui	a4, a4, 32
	bgeui	a4, 6, .L299
	l32r	a8, .LC54
	addx4	a4, a4, a8
	l32i.n	a4, a4, 0
	jx	a4
	.section	.rodata.nd6_tmr,"a",@progbits
	.align	4
	.align	4
.L301:
	.word	.L299
	.word	.L300
	.word	.L302
	.word	.L303
	.word	.L304
	.word	.L305
	.section	.text.nd6_tmr
.L300:
	.loc 1 671 0
	addx4	a8, a2, a2
	slli	a4, a8, 3
	l32r	a8, .LC53
	add.n	a4, a8, a4
	l32i.n	a8, a4, 36
	bltui	a8, 3, .L306
	.loc 1 672 0 discriminator 1
	addx4	a9, a2, a2
	slli	a4, a9, 3
	l32r	a9, .LC53
	add.n	a4, a9, a4
	l8ui	a4, a4, 33
	.loc 1 671 0 discriminator 1
	bnez.n	a4, .L306
	.loc 1 674 0
	mov.n	a10, a2
	call8	nd6_free_neighbor_cache_entry
.LVL391:
	j	.L299
.L306:
	.loc 1 677 0
	l32r	a9, .LC53
	slli	a4, a2, 2
	add.n	a10, a4, a2
	slli	a11, a10, 3
	add.n	a11, a9, a11
	addi.n	a8, a8, 1
	s32i.n	a8, a11, 36
	.loc 1 678 0
	movi.n	a12, 1
	l32i.n	a10, a11, 16
	call8	nd6_send_ns
.LVL392:
	j	.L299
.L302:
	.loc 1 683 0
	addx4	a8, a2, a2
	slli	a4, a8, 3
	l32r	a8, .LC53
	add.n	a4, a8, a4
	l32i.n	a4, a4, 28
	beqz.n	a4, .L307
	.loc 1 684 0
	mov.n	a10, a2
	call8	nd6_send_q
.LVL393:
.L307:
	.loc 1 686 0
	addx4	a8, a2, a2
	slli	a4, a8, 3
	l32r	a8, .LC53
	add.n	a4, a8, a4
	l32i.n	a4, a4, 36
	movi	a8, 0x3e8
	bltu	a8, a4, .L308
	.loc 1 688 0
	l32r	a9, .LC53
	slli	a4, a2, 2
	add.n	a10, a4, a2
	slli	a8, a10, 3
	add.n	a8, a9, a8
	movi.n	a10, 3
	s8i	a10, a8, 32
	.loc 1 689 0
	movi.n	a2, 0
	s32i.n	a2, a8, 36
	j	.L299
.L308:
	.loc 1 691 0
	addx4	a2, a2, a2
	slli	a8, a2, 3
	l32r	a2, .LC53
	add.n	a8, a2, a8
	movi	a2, -0x3e8
	add.n	a4, a4, a2
	s32i.n	a4, a8, 36
	j	.L299
.L303:
	.loc 1 695 0
	l32r	a9, .LC53
	slli	a4, a2, 2
	add.n	a10, a4, a2
	slli	a8, a10, 3
	add.n	a8, a9, a8
	l32i.n	a4, a8, 36
	movi	a2, 0x3e8
	add.n	a2, a4, a2
	s32i.n	a2, a8, 36
	.loc 1 696 0
	j	.L299
.L304:
	.loc 1 698 0
	addx4	a8, a2, a2
	slli	a4, a8, 3
	l32r	a8, .LC53
	add.n	a4, a8, a4
	l32i.n	a4, a4, 36
	movi	a8, 0x3e8
	bltu	a8, a4, .L309
	.loc 1 700 0
	l32r	a9, .LC53
	slli	a4, a2, 2
	add.n	a10, a4, a2
	slli	a8, a10, 3
	add.n	a8, a9, a8
	movi.n	a10, 5
	s8i	a10, a8, 32
	.loc 1 701 0
	movi.n	a2, 0
	s32i.n	a2, a8, 36
	j	.L299
.L309:
	.loc 1 703 0
	addx4	a2, a2, a2
	slli	a8, a2, 3
	l32r	a2, .LC53
	add.n	a8, a2, a8
	movi	a2, -0x3e8
	add.n	a4, a4, a2
	s32i.n	a4, a8, 36
	j	.L299
.L305:
	.loc 1 707 0
	addx4	a8, a2, a2
	slli	a4, a8, 3
	l32r	a8, .LC53
	add.n	a4, a8, a4
	l32i.n	a4, a4, 36
	bltui	a4, 3, .L310
	.loc 1 708 0 discriminator 1
	addx4	a9, a2, a2
	slli	a8, a9, 3
	l32r	a9, .LC53
	add.n	a8, a9, a8
	l8ui	a8, a8, 33
	.loc 1 707 0 discriminator 1
	bnez.n	a8, .L310
	.loc 1 710 0
	mov.n	a10, a2
	call8	nd6_free_neighbor_cache_entry
.LVL394:
	j	.L299
.L310:
	.loc 1 713 0
	l32r	a8, .LC53
	slli	a9, a2, 2
	add.n	a10, a9, a2
	slli	a11, a10, 3
	add.n	a11, a8, a11
	addi.n	a4, a4, 1
	s32i.n	a4, a11, 36
	.loc 1 714 0
	movi.n	a12, 0
	l32i.n	a10, a11, 16
	call8	nd6_send_ns
.LVL395:
.L299:
	.loc 1 668 0 discriminator 2
	addi.n	a3, a3, 1
.LVL396:
	extui	a3, a3, 0, 8
.LVL397:
.L298:
	.loc 1 668 0 is_stmt 0 discriminator 1
	sext	a2, a3, 7
	movi.n	a4, 9
	bge	a4, a2, .L311
	movi.n	a10, 0
	j	.L312
.LVL398:
.L313:
	.loc 1 726 0 is_stmt 1 discriminator 3
	sext	a2, a10, 7
	l32r	a8, .LC55
	slli	a3, a2, 2
	add.n	a9, a3, a2
	slli	a4, a9, 3
	mov.n	a9, a4
	add.n	a4, a8, a4
	l32i.n	a4, a4, 36
	add.n	a3, a8, a9
	addi.n	a2, a4, 1
	s32i.n	a2, a3, 36
	.loc 1 725 0 discriminator 3
	addi.n	a10, a10, 1
.LVL399:
	extui	a10, a10, 0, 8
.LVL400:
.L312:
	.loc 1 725 0 is_stmt 0 discriminator 1
	sext	a2, a10, 7
	movi.n	a3, 9
	bge	a3, a2, .L313
	movi.n	a3, 0
	j	.L314
.LVL401:
.L317:
	.loc 1 731 0 is_stmt 1
	sext	a2, a3, 7
	addx2	a8, a2, a2
	slli	a4, a8, 2
	l32r	a8, .LC56
	add.n	a4, a8, a4
	l32i.n	a4, a4, 0
	beqz.n	a4, .L315
	.loc 1 733 0
	addx2	a8, a2, a2
	slli	a4, a8, 2
	l32r	a8, .LC56
	add.n	a4, a8, a4
	l32i.n	a4, a4, 4
	beqz.n	a4, .L316
	.loc 1 734 0
	addx2	a9, a2, a2
	slli	a8, a9, 2
	l32r	a9, .LC56
	add.n	a8, a9, a8
	addi.n	a4, a4, -1
	s32i.n	a4, a8, 4
.L316:
	.loc 1 736 0
	addx2	a8, a2, a2
	slli	a4, a8, 2
	l32r	a8, .LC56
	add.n	a4, a8, a4
	l32i.n	a4, a4, 4
	bnez.n	a4, .L315
	.loc 1 738 0
	mov.n	a9, a8
	slli	a10, a2, 1
	add.n	a8, a10, a2
	slli	a4, a8, 2
	add.n	a4, a9, a4
	l32i.n	a11, a4, 0
	movi.n	a8, 0
	s8i	a8, a11, 33
	.loc 1 739 0
	movi.n	a11, 0
	s32i.n	a11, a4, 0
	.loc 1 740 0
	s32i.n	a11, a4, 4
	.loc 1 741 0
	add.n	a2, a10, a2
	slli	a4, a2, 2
	add.n	a4, a9, a4
	s8i	a8, a4, 8
.L315:
	.loc 1 730 0 discriminator 2
	addi.n	a3, a3, 1
.LVL402:
	extui	a3, a3, 0, 8
.LVL403:
.L314:
	.loc 1 730 0 is_stmt 0 discriminator 1
	sext	a2, a3, 7
	blti	a2, 3, .L317
	movi.n	a4, 0
	j	.L318
.LVL404:
.L328:
	.loc 1 748 0 is_stmt 1
	sext	a3, a4, 7
	subx8	a8, a3, a3
	slli	a2, a8, 2
	l32r	a8, .LC57
	add.n	a2, a8, a2
	l32i.n	a2, a2, 16
	beqz.n	a2, .L319
	.loc 1 749 0
	subx8	a8, a3, a3
	slli	a2, a8, 2
	l32r	a8, .LC57
	add.n	a2, a8, a2
	l32i.n	a2, a2, 20
	bnez.n	a2, .L320
	.loc 1 751 0
	slli	a8, a3, 3
	sub	a8, a8, a3
	slli	a2, a8, 2
	l32r	a8, .LC57
	add.n	a2, a8, a2
	movi.n	a8, 0
	s32i.n	a8, a2, 20
	.loc 1 755 0
	l8ui	a2, a2, 24
	bbsi	a2, 1, .L338
.LBB11:
	j	.L322
.LVL405:
.L324:
	.loc 1 760 0
	subx8	a9, a3, a3
	slli	a8, a9, 2
	l32r	a9, .LC57
	add.n	a8, a9, a8
	l32i.n	a9, a8, 16
	sext	a8, a2, 7
	add.n	a10, a9, a8
	l8ui	a10, a10, 124
	beqz.n	a10, .L323
	.loc 1 761 0 discriminator 1
	subx8	a11, a3, a3
	slli	a10, a11, 2
	l32r	a11, .LC57
	add.n	a10, a11, a10
	l32i.n	a12, a10, 0
	addx4	a11, a8, a8
	slli	a10, a11, 2
	add.n	a10, a9, a10
	l32i	a10, a10, 64
	.loc 1 760 0 discriminator 1
	bne	a12, a10, .L323
	.loc 1 761 0
	subx8	a11, a3, a3
	slli	a10, a11, 2
	l32r	a11, .LC57
	add.n	a10, a11, a10
	l32i.n	a12, a10, 4
	addx4	a11, a8, a8
	slli	a10, a11, 2
	add.n	a10, a9, a10
	l32i	a10, a10, 68
	bne	a12, a10, .L323
	.loc 1 762 0
	add.n	a8, a9, a8
	movi.n	a9, 0
	s8i	a9, a8, 124
	.loc 1 763 0
	subx8	a8, a3, a3
	slli	a2, a8, 2
.LVL406:
	l32r	a8, .LC57
	add.n	a2, a8, a2
	s8i	a9, a2, 24
	.loc 1 766 0
	j	.L322
.LVL407:
.L323:
	.loc 1 759 0 discriminator 2
	addi.n	a2, a2, 1
.LVL408:
	extui	a2, a2, 0, 8
.LVL409:
	j	.L321
.LVL410:
.L338:
.LBE11:
	movi.n	a2, 1
.L321:
.LVL411:
.LBB12:
	.loc 1 759 0 is_stmt 0 discriminator 1
	sext	a8, a2, 7
	blti	a8, 3, .L324
.LVL412:
.L322:
.LBE12:
	.loc 1 772 0 is_stmt 1
	l32r	a10, .LC57
	slli	a2, a3, 3
	sub	a9, a2, a3
	slli	a8, a9, 2
	add.n	a8, a10, a8
	movi.n	a9, 0
	s32i.n	a9, a8, 16
	.loc 1 773 0
	sub	a3, a2, a3
	slli	a2, a3, 2
	mov.n	a3, a2
	s8i	a9, a8, 24
	j	.L319
.L320:
	.loc 1 775 0
	slli	a9, a3, 3
	sub	a9, a9, a3
	slli	a8, a9, 2
	l32r	a9, .LC57
	add.n	a8, a9, a8
	addi.n	a2, a2, -1
	s32i.n	a2, a8, 20
	.loc 1 779 0
	l32i.n	a8, a8, 16
	l8ui	a2, a8, 164
	beqz.n	a2, .L319
	.loc 1 780 0
	subx8	a9, a3, a3
	slli	a2, a9, 2
	l32r	a9, .LC57
	add.n	a2, a9, a2
	l8ui	a2, a2, 24
	extui	a2, a2, 0, 2
	bnei	a2, 1, .L319
	j	.L339
.LVL413:
.L327:
.LBB13:
	.loc 1 786 0
	sext	a9, a2, 7
	add.n	a10, a8, a9
	l8ui	a10, a10, 124
	bnez.n	a10, .L326
	.loc 1 788 0
	l32r	a13, .LC57
	slli	a11, a3, 3
	sub	a10, a11, a3
	slli	a2, a10, 2
.LVL414:
	add.n	a2, a13, a2
	l32i.n	a15, a2, 0
	slli	a10, a9, 2
	add.n	a14, a10, a9
	slli	a12, a14, 2
	add.n	a8, a8, a12
	s32i	a15, a8, 64
	l32i.n	a15, a2, 16
	l32i.n	a14, a2, 4
	add.n	a12, a10, a9
	slli	a8, a12, 2
	add.n	a8, a15, a8
	s32i	a14, a8, 68
	l32i.n	a12, a2, 16
	l32i	a15, a12, 72
	add.n	a14, a10, a9
	slli	a8, a14, 2
	add.n	a8, a12, a8
	s32i	a15, a8, 72
	l32i.n	a12, a2, 16
	l32i	a15, a12, 76
	add.n	a14, a10, a9
	slli	a8, a14, 2
	mov.n	a14, a8
	add.n	a8, a12, a8
	s32i	a15, a8, 76
	l32i.n	a8, a2, 16
	add.n	a12, a8, a14
	movi.n	a8, 6
	s8i	a8, a12, 80
	.loc 1 793 0
	l32i.n	a8, a2, 16
	add.n	a9, a8, a9
	movi.n	a8, 8
	s8i	a8, a9, 124
	.loc 1 796 0
	l8ui	a8, a2, 24
	movi.n	a3, 2
	or	a3, a8, a3
	s8i	a3, a2, 24
	.loc 1 799 0
	j	.L319
.LVL415:
.L326:
	.loc 1 785 0 discriminator 2
	addi.n	a2, a2, 1
.LVL416:
	extui	a2, a2, 0, 8
.LVL417:
	j	.L325
.LVL418:
.L339:
.LBE13:
	movi.n	a2, 1
.L325:
.LVL419:
.LBB14:
	.loc 1 785 0 is_stmt 0 discriminator 1
	sext	a9, a2, 7
	blti	a9, 3, .L327
.LVL420:
.L319:
.LBE14:
	.loc 1 747 0 is_stmt 1 discriminator 2
	addi.n	a4, a4, 1
.LVL421:
	extui	a4, a4, 0, 8
.LVL422:
.L318:
	.loc 1 747 0 is_stmt 0 discriminator 1
	sext	a2, a4, 7
	blti	a2, 5, .L328
	.loc 1 810 0 is_stmt 1
	l32r	a2, .LC58
	l32i.n	a4, a2, 0
.LVL423:
	j	.L329
.LVL424:
.L333:
	.loc 1 812 0
	sext	a3, a2, 7
	add.n	a8, a4, a3
	l8ui	a8, a8, 124
	bbci	a8, 3, .L330
	extui	a8, a8, 0, 3
	.loc 1 813 0
	blti	a8, 1, .L331
	.loc 1 815 0
	add.n	a3, a4, a3
	movi.n	a8, 0x30
	s8i	a8, a3, 124
	.loc 1 817 0
	l32i	a3, a4, 128
	beqz.n	a3, .L330
	.loc 1 818 0
	mov.n	a11, a2
	mov.n	a10, a4
	callx8	a3
.LVL425:
	j	.L330
.L331:
	.loc 1 823 0
	l8ui	a9, a4, 181
	bbci	a9, 0, .L330
	.loc 1 825 0
	bnez.n	a8, .L332
	.loc 1 827 0
	l32r	a11, .LC59
	movi	a8, 0x2ff
	s32i.n	a8, a11, 0
	movi.n	a8, 0
	s32i.n	a8, a11, 4
	l32r	a8, .LC60
	s32i.n	a8, a11, 8
	slli	a8, a3, 2
	add.n	a10, a8, a3
	slli	a9, a10, 2
	add.n	a9, a4, a9
	l32i	a10, a9, 76
	movi	a9, 0xff
	or	a9, a10, a9
	s32i.n	a9, a11, 12
	.loc 1 828 0
	add.n	a8, a8, a3
	slli	a9, a8, 2
	addi	a10, a9, 64
	add.n	a10, a4, a10
	call8	mld6_joingroup
.LVL426:
.L332:
	.loc 1 832 0
	addx4	a8, a3, a3
	slli	a11, a8, 2
	addi	a11, a11, 64
	movi.n	a12, 1
	add.n	a11, a4, a11
	mov.n	a10, a4
	call8	nd6_send_ns
.LVL427:
	.loc 1 833 0
	add.n	a3, a4, a3
	l8ui	a8, a3, 124
	addi.n	a8, a8, 1
	s8i	a8, a3, 124
.L330:
	.loc 1 811 0 discriminator 2
	addi.n	a2, a2, 1
.LVL428:
	extui	a2, a2, 0, 8
.LVL429:
	j	.L334
.LVL430:
.L340:
	movi.n	a2, 0
.L334:
.LVL431:
	.loc 1 811 0 is_stmt 0 discriminator 1
	sext	a3, a2, 7
	blti	a3, 3, .L333
	.loc 1 810 0 is_stmt 1 discriminator 2
	l32i.n	a4, a4, 0
.LVL432:
.L329:
	.loc 1 810 0 discriminator 1
	bnez.n	a4, .L340
	.loc 1 843 0
	l32r	a2, .LC58
	l32i.n	a2, a2, 0
.LVL433:
	j	.L335
.L337:
	.loc 1 844 0
	l8ui	a3, a2, 165
	beqz.n	a3, .L336
	.loc 1 844 0 is_stmt 0 discriminator 1
	l8ui	a3, a2, 181
	bbci	a3, 0, .L336
	.loc 1 845 0 is_stmt 1 discriminator 2
	l8ui	a3, a2, 124
	.loc 1 844 0 discriminator 2
	beqz.n	a3, .L336
	.loc 1 846 0
	mov.n	a10, a2
	call8	nd6_send_rs
.LVL434:
	extui	a10, a10, 0, 8
	bnez.n	a10, .L336
	.loc 1 847 0
	l8ui	a3, a2, 165
	addi.n	a3, a3, -1
	s8i	a3, a2, 165
.L336:
	.loc 1 843 0 discriminator 2
	l32i.n	a2, a2, 0
.LVL435:
.L335:
	.loc 1 843 0 discriminator 1
	bnez.n	a2, .L337
	.loc 1 853 0
	retw.n
.LFE17:
	.size	nd6_tmr, .-nd6_tmr
	.section	.text.nd6_select_router,"ax",@progbits
	.literal_position
	.literal .LC61, last_router$6728
	.literal .LC62, default_router_list
	.align	4
	.global	nd6_select_router
	.type	nd6_select_router, @function
nd6_select_router:
.LFB27:
	.loc 1 1309 0
.LVL436:
	entry	sp, 32
.LCFI18:
.LVL437:
	.loc 1 1320 0
	movi.n	a8, 0
	j	.L342
.LVL438:
.L347:
	.loc 1 1321 0
	l32r	a9, .LC61
	l8ui	a2, a9, 0
	addi.n	a2, a2, 1
	extui	a2, a2, 0, 8
	s8i	a2, a9, 0
	sext	a2, a2, 7
	blti	a2, 3, .L343
	.loc 1 1322 0
	movi.n	a9, 0
	l32r	a2, .LC61
	s8i	a9, a2, 0
.L343:
	.loc 1 1324 0
	sext	a9, a8, 7
	addx2	a10, a9, a9
	slli	a2, a10, 2
	l32r	a10, .LC62
	add.n	a2, a10, a2
	l32i.n	a2, a2, 0
	beqz.n	a2, .L344
	.loc 1 1324 0 discriminator 1
	beqz.n	a3, .L345
	.loc 1 1325 0 discriminator 2
	l32i.n	a10, a2, 16
	.loc 1 1324 0 discriminator 2
	bne	a3, a10, .L344
.L345:
	.loc 1 1326 0
	addx2	a9, a9, a9
	slli	a10, a9, 2
	l32r	a9, .LC62
	add.n	a10, a9, a10
	l32i.n	a9, a10, 4
	.loc 1 1325 0
	beqz.n	a9, .L344
	.loc 1 1327 0
	l8ui	a2, a2, 32
	.loc 1 1326 0
	beqi	a2, 2, .L357
.L344:
	.loc 1 1320 0 discriminator 2
	addi.n	a8, a8, 1
.LVL439:
	extui	a8, a8, 0, 8
.LVL440:
.L342:
	.loc 1 1320 0 is_stmt 0 discriminator 1
	sext	a2, a8, 7
	blti	a2, 3, .L347
	movi.n	a8, 0
.LVL441:
	j	.L348
.LVL442:
.L352:
	.loc 1 1334 0 is_stmt 1
	l32r	a9, .LC61
	l8ui	a2, a9, 0
	addi.n	a2, a2, 1
	extui	a2, a2, 0, 8
	s8i	a2, a9, 0
	sext	a2, a2, 7
	blti	a2, 3, .L349
	.loc 1 1335 0
	movi.n	a9, 0
	l32r	a2, .LC61
	s8i	a9, a2, 0
.L349:
	.loc 1 1337 0
	sext	a9, a8, 7
	addx2	a10, a9, a9
	slli	a2, a10, 2
	l32r	a10, .LC62
	add.n	a2, a10, a2
	l32i.n	a2, a2, 0
	beqz.n	a2, .L350
	.loc 1 1337 0 discriminator 1
	beqz.n	a3, .L351
	.loc 1 1338 0 discriminator 2
	l32i.n	a2, a2, 16
	.loc 1 1337 0 discriminator 2
	bne	a3, a2, .L350
.L351:
	.loc 1 1339 0
	addx2	a9, a9, a9
	slli	a2, a9, 2
	l32r	a9, .LC62
	add.n	a2, a9, a2
	l32i.n	a2, a2, 4
	.loc 1 1338 0
	bnez.n	a2, .L358
.L350:
	.loc 1 1333 0 discriminator 2
	addi.n	a8, a8, 1
.LVL443:
	extui	a8, a8, 0, 8
.LVL444:
.L348:
	.loc 1 1333 0 is_stmt 0 discriminator 1
	sext	a2, a8, 7
	blti	a2, 3, .L352
	movi.n	a8, 0
.LVL445:
	j	.L353
.LVL446:
.L356:
	.loc 1 1346 0 is_stmt 1
	l32r	a9, .LC61
	l8ui	a2, a9, 0
	addi.n	a2, a2, 1
	extui	a2, a2, 0, 8
	s8i	a2, a9, 0
	sext	a2, a2, 7
	blti	a2, 3, .L354
	.loc 1 1347 0
	movi.n	a9, 0
	l32r	a2, .LC61
	s8i	a9, a2, 0
.L354:
	.loc 1 1349 0
	sext	a2, a8, 7
	addx2	a2, a2, a2
	slli	a9, a2, 2
	l32r	a2, .LC62
	add.n	a9, a2, a9
	l32i.n	a2, a9, 0
	beqz.n	a2, .L355
	.loc 1 1349 0 discriminator 1
	beqz.n	a3, .L359
	.loc 1 1350 0 discriminator 2
	l32i.n	a2, a2, 16
	.loc 1 1349 0 discriminator 2
	beq	a3, a2, .L360
.L355:
	.loc 1 1345 0 discriminator 2
	addi.n	a8, a8, 1
.LVL447:
	extui	a8, a8, 0, 8
.LVL448:
.L353:
	.loc 1 1345 0 is_stmt 0 discriminator 1
	sext	a2, a8, 7
	blti	a2, 3, .L356
	.loc 1 1356 0 is_stmt 1
	movi	a2, 0xff
	retw.n
.L357:
	.loc 1 1328 0
	mov.n	a2, a8
	retw.n
.L358:
	.loc 1 1340 0
	mov.n	a2, a8
	retw.n
.L359:
	.loc 1 1351 0
	mov.n	a2, a8
	retw.n
.L360:
	mov.n	a2, a8
	.loc 1 1357 0
	retw.n
.LFE27:
	.size	nd6_select_router, .-nd6_select_router
	.section	.text.nd6_get_next_hop_entry,"ax",@progbits
	.literal_position
	.literal .LC63, nd6_cached_destination_index
	.literal .LC64, destination_cache
	.literal .LC65, 49407
	.literal .LC66, 33022
	.literal .LC67, default_router_list
	.literal .LC68, nd6_cached_neighbor_index
	.literal .LC69, neighbor_cache
	.align	4
	.global	nd6_get_next_hop_entry
	.type	nd6_get_next_hop_entry, @function
nd6_get_next_hop_entry:
.LFB32:
	.loc 1 1501 0
.LVL449:
	entry	sp, 32
.LCFI19:
	.loc 1 1515 0
	l32i.n	a5, a2, 0
	l32r	a4, .LC63
	l8ui	a4, a4, 0
	addx4	a9, a4, a4
	slli	a8, a9, 3
	l32r	a9, .LC64
	add.n	a8, a9, a8
	l32i.n	a8, a8, 0
	bne	a5, a8, .L362
	.loc 1 1515 0 is_stmt 0 discriminator 1
	l32i.n	a10, a2, 4
	addx4	a9, a4, a4
	slli	a8, a9, 3
	l32r	a9, .LC64
	add.n	a8, a9, a8
	l32i.n	a8, a8, 4
	bne	a10, a8, .L362
	.loc 1 1515 0 discriminator 2
	l32i.n	a10, a2, 8
	addx4	a9, a4, a4
	slli	a8, a9, 3
	l32r	a9, .LC64
	add.n	a8, a9, a8
	l32i.n	a8, a8, 8
	bne	a10, a8, .L362
	.loc 1 1515 0 discriminator 3
	l32i.n	a9, a2, 12
	addx4	a4, a4, a4
	slli	a8, a4, 3
	l32r	a4, .LC64
	add.n	a8, a4, a8
	l32i.n	a4, a8, 12
	beq	a9, a4, .L363
.L362:
	.loc 1 1521 0 is_stmt 1
	mov.n	a10, a2
	call8	nd6_find_destination_cache_entry
.LVL450:
	extui	a10, a10, 0, 8
.LVL451:
	.loc 1 1522 0
	sext	a4, a10, 7
	bltz	a4, .L364
	.loc 1 1524 0
	l32r	a2, .LC63
.LVL452:
	s8i	a10, a2, 0
	j	.L363
.LVL453:
.L364:
	.loc 1 1527 0
	call8	nd6_new_destination_cache_entry
.LVL454:
	extui	a10, a10, 0, 8
.LVL455:
	.loc 1 1528 0
	sext	a4, a10, 7
	bltz	a4, .L376
	.loc 1 1530 0
	extui	a4, a10, 0, 8
	l32r	a8, .LC63
	s8i	a4, a8, 0
	.loc 1 1537 0
	bnez.n	a2, .L366
	movi.n	a5, 0
.L366:
	.loc 1 1537 0 discriminator 4
	addx4	a9, a4, a4
	slli	a8, a9, 3
	l32r	a9, .LC64
	add.n	a8, a9, a8
	s32i.n	a5, a8, 0
	.loc 1 1537 0 discriminator 4
	beqz.n	a2, .L378
	.loc 1 1537 0 is_stmt 0 discriminator 5
	l32i.n	a9, a2, 4
	j	.L367
.L378:
	.loc 1 1537 0
	movi.n	a9, 0
.L367:
	.loc 1 1537 0 is_stmt 1 discriminator 8
	addx4	a8, a4, a4
	slli	a5, a8, 3
	l32r	a8, .LC64
	add.n	a5, a8, a5
	s32i.n	a9, a5, 4
	.loc 1 1537 0 discriminator 8
	beqz.n	a2, .L379
	.loc 1 1537 0 is_stmt 0 discriminator 9
	l32i.n	a9, a2, 8
	j	.L368
.L379:
	.loc 1 1537 0
	movi.n	a9, 0
.L368:
	.loc 1 1537 0 is_stmt 1 discriminator 12
	addx4	a8, a4, a4
	slli	a5, a8, 3
	l32r	a8, .LC64
	add.n	a5, a8, a5
	s32i.n	a9, a5, 8
	.loc 1 1537 0 discriminator 12
	beqz.n	a2, .L380
	.loc 1 1537 0 is_stmt 0 discriminator 13
	l32i.n	a9, a2, 12
	j	.L369
.L380:
	.loc 1 1537 0
	movi.n	a9, 0
.L369:
	.loc 1 1537 0 is_stmt 1 discriminator 16
	addx4	a8, a4, a4
	slli	a5, a8, 3
	l32r	a8, .LC64
	add.n	a5, a8, a5
	s32i.n	a9, a5, 12
	.loc 1 1540 0 discriminator 16
	l32i.n	a8, a2, 0
	l32r	a5, .LC65
	and	a5, a8, a5
	l32r	a8, .LC66
	beq	a5, a8, .L370
	.loc 1 1541 0 discriminator 1
	mov.n	a11, a3
	mov.n	a10, a2
.LVL456:
	call8	nd6_is_prefix_in_netif
.LVL457:
	extui	a10, a10, 0, 8
	.loc 1 1540 0 discriminator 1
	beqz.n	a10, .L371
.L370:
	.loc 1 1543 0
	l16ui	a9, a3, 172
	l32r	a5, .LC64
	slli	a10, a4, 2
	add.n	a8, a10, a4
	slli	a2, a8, 3
.LVL458:
	add.n	a2, a5, a2
	s16i	a9, a2, 32
	.loc 1 1544 0
	l32i.n	a8, a2, 0
	s32i.n	a8, a2, 16
	l32i.n	a8, a2, 4
	s32i.n	a8, a2, 20
	l32i.n	a8, a2, 8
	s32i.n	a8, a2, 24
	l32i.n	a8, a2, 12
	add.n	a4, a10, a4
	slli	a2, a4, 3
	add.n	a2, a5, a2
	s32i.n	a8, a2, 28
	j	.L363
.LVL459:
.L371:
	.loc 1 1547 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	nd6_select_router
.LVL460:
	extui	a10, a10, 0, 8
.LVL461:
	.loc 1 1548 0
	sext	a2, a10, 7
.LVL462:
	bgez	a2, .L372
	.loc 1 1550 0
	l32r	a2, .LC63
	l8ui	a2, a2, 0
	l32r	a5, .LC64
	slli	a8, a2, 2
	add.n	a4, a8, a2
	slli	a3, a4, 3
.LVL463:
	add.n	a3, a5, a3
	movi.n	a4, 0
	s32i.n	a4, a3, 0
	s32i.n	a4, a3, 4
	s32i.n	a4, a3, 8
	add.n	a2, a8, a2
	slli	a3, a2, 3
	add.n	a3, a5, a3
	s32i.n	a4, a3, 12
	.loc 1 1551 0
	movi	a2, 0xfc
	retw.n
.LVL464:
.L372:
	.loc 1 1553 0
	l32r	a2, .LC63
	l8ui	a8, a2, 0
	l16ui	a11, a3, 172
	l32r	a9, .LC64
	slli	a4, a8, 2
	add.n	a2, a4, a8
	slli	a5, a2, 3
	add.n	a2, a9, a5
	s16i	a11, a2, 32
	.loc 1 1554 0
	sext	a10, a10, 7
.LVL465:
	addx2	a10, a10, a10
	slli	a5, a10, 2
	l32r	a10, .LC67
	add.n	a5, a10, a5
	l32i.n	a5, a5, 0
	l32i.n	a10, a5, 0
	s32i.n	a10, a2, 16
	l32i.n	a10, a5, 4
	s32i.n	a10, a2, 20
	l32i.n	a10, a5, 8
	s32i.n	a10, a2, 24
	l32i.n	a5, a5, 12
	add.n	a2, a4, a8
	slli	a4, a2, 3
	add.n	a4, a9, a4
	s32i.n	a5, a4, 28
.L363:
	.loc 1 1567 0
	l32r	a2, .LC63
	l8ui	a8, a2, 0
	addx4	a4, a8, a8
	slli	a2, a4, 3
	l32r	a4, .LC64
	add.n	a2, a4, a2
	l32i.n	a9, a2, 16
	l32r	a2, .LC68
	l8ui	a4, a2, 0
	addx4	a5, a4, a4
	slli	a2, a5, 3
	l32r	a5, .LC69
	add.n	a2, a5, a2
	l32i.n	a2, a2, 0
	bne	a9, a2, .L373
	.loc 1 1567 0 is_stmt 0 discriminator 1
	addx4	a5, a8, a8
	slli	a2, a5, 3
	l32r	a5, .LC64
	add.n	a2, a5, a2
	l32i.n	a9, a2, 20
	addx4	a5, a4, a4
	slli	a2, a5, 3
	l32r	a5, .LC69
	add.n	a2, a5, a2
	l32i.n	a2, a2, 4
	bne	a9, a2, .L373
	.loc 1 1567 0 discriminator 2
	addx4	a5, a8, a8
	slli	a2, a5, 3
	l32r	a5, .LC64
	add.n	a2, a5, a2
	l32i.n	a9, a2, 24
	addx4	a5, a4, a4
	slli	a2, a5, 3
	l32r	a5, .LC69
	add.n	a2, a5, a2
	l32i.n	a2, a2, 8
	bne	a9, a2, .L373
	.loc 1 1567 0 discriminator 3
	addx4	a5, a8, a8
	slli	a2, a5, 3
	l32r	a5, .LC64
	add.n	a2, a5, a2
	l32i.n	a5, a2, 28
	addx4	a4, a4, a4
	slli	a2, a4, 3
	l32r	a4, .LC69
	add.n	a2, a4, a2
	l32i.n	a2, a2, 12
	beq	a5, a2, .L374
.L373:
	.loc 1 1573 0 is_stmt 1
	addx4	a8, a8, a8
	slli	a10, a8, 3
	addi	a10, a10, 16
	l32r	a2, .LC64
	add.n	a10, a2, a10
	call8	nd6_find_neighbor_cache_entry
.LVL466:
	extui	a10, a10, 0, 8
.LVL467:
	.loc 1 1574 0
	sext	a2, a10, 7
	bltz	a2, .L375
	.loc 1 1576 0
	l32r	a2, .LC68
	s8i	a10, a2, 0
	j	.L374
.L375:
	.loc 1 1579 0
	call8	nd6_new_neighbor_cache_entry
.LVL468:
	extui	a10, a10, 0, 8
.LVL469:
	.loc 1 1580 0
	sext	a2, a10, 7
	bltz	a2, .L381
	.loc 1 1582 0
	l32r	a2, .LC68
	s8i	a10, a2, 0
	.loc 1 1589 0
	sext	a10, a10, 7
.LVL470:
	l32r	a2, .LC63
	l8ui	a4, a2, 0
	l32r	a13, .LC64
	slli	a8, a4, 2
	add.n	a2, a8, a4
	slli	a5, a2, 3
	add.n	a5, a13, a5
	l32i.n	a14, a5, 16
	l32r	a11, .LC69
	slli	a12, a10, 2
	add.n	a2, a12, a10
	slli	a9, a2, 3
	add.n	a2, a11, a9
	s32i.n	a14, a2, 0
	l32i.n	a9, a5, 20
	s32i.n	a9, a2, 4
	l32i.n	a5, a5, 24
	s32i.n	a5, a2, 8
	add.n	a4, a8, a4
	slli	a5, a4, 3
	add.n	a5, a13, a5
	l32i.n	a4, a5, 28
	s32i.n	a4, a2, 12
	.loc 1 1591 0
	movi.n	a4, 0
	s8i	a4, a2, 33
	.loc 1 1592 0
	s32i.n	a3, a2, 16
	.loc 1 1593 0
	movi.n	a3, 1
.LVL471:
	s8i	a3, a2, 32
	.loc 1 1594 0
	add.n	a10, a12, a10
	slli	a2, a10, 3
.LVL472:
	add.n	a2, a11, a2
.LVL473:
	movi.n	a3, 0
	s32i.n	a3, a2, 36
.LVL474:
.L374:
	.loc 1 1599 0
	l32r	a2, .LC63
	l8ui	a8, a2, 0
	addx4	a8, a8, a8
	slli	a2, a8, 3
	l32r	a3, .LC64
	add.n	a2, a3, a2
	movi.n	a3, 0
	s32i.n	a3, a2, 36
	.loc 1 1601 0
	l32r	a2, .LC68
	l8ui	a2, a2, 0
	retw.n
.LVL475:
.L376:
	.loc 1 1533 0
	movi	a2, 0xff
.LVL476:
	retw.n
.L381:
	.loc 1 1585 0
	movi	a2, 0xff
	.loc 1 1602 0
	retw.n
.LFE32:
	.size	nd6_get_next_hop_entry, .-nd6_get_next_hop_entry
	.section	.text.nd6_queue_packet,"ax",@progbits
	.literal_position
	.literal .LC70, neighbor_cache
	.literal .LC71, memp_pools
	.align	4
	.global	nd6_queue_packet
	.type	nd6_queue_packet, @function
nd6_queue_packet:
.LFB33:
	.loc 1 1613 0
.LVL477:
	entry	sp, 32
.LCFI20:
	extui	a2, a2, 0, 8
.LVL478:
	.loc 1 1621 0
	extui	a4, a2, 0, 8
	movi.n	a8, 9
	bltu	a8, a4, .L396
	mov.n	a8, a3
	j	.L384
.LVL479:
.L386:
	.loc 1 1630 0
	l8ui	a4, a8, 12
	bnei	a4, 1, .L397
	.loc 1 1634 0
	l32i.n	a8, a8, 0
.LVL480:
.L384:
	.loc 1 1629 0
	bnez.n	a8, .L386
	.loc 1 1616 0
	movi.n	a4, 0
	j	.L385
.L397:
	.loc 1 1631 0
	movi.n	a4, 1
.L385:
.LVL481:
	.loc 1 1636 0
	beqz.n	a4, .L387
	.loc 1 1638 0
	movi.n	a12, 0
	l16ui	a11, a3, 8
	movi.n	a10, 2
	call8	pbuf_alloc
.LVL482:
	mov.n	a4, a10
.LVL483:
	.loc 1 1639 0
	j	.L388
.L390:
.LVL484:
	.loc 1 1643 0
	l32i.n	a9, a10, 0
	addx4	a8, a8, a8
	slli	a4, a8, 3
.LVL485:
	l32r	a8, .LC70
	add.n	a4, a8, a4
	s32i.n	a9, a4, 28
	.loc 1 1644 0
	movi.n	a4, 0
	s32i.n	a4, a10, 0
	.loc 1 1645 0
	call8	nd6_free_q
.LVL486:
	.loc 1 1650 0
	mov.n	a12, a4
	l16ui	a11, a3, 8
	movi.n	a10, 2
	call8	pbuf_alloc
.LVL487:
	mov.n	a4, a10
.LVL488:
.L388:
	.loc 1 1639 0
	bnez.n	a4, .L389
	.loc 1 1639 0 discriminator 1
	sext	a8, a2, 7
	addx4	a10, a8, a8
	slli	a9, a10, 3
	l32r	a10, .LC70
	add.n	a9, a10, a9
	l32i.n	a10, a9, 28
	bnez.n	a10, .L390
.L389:
	.loc 1 1652 0
	beqz.n	a4, .L391
	.loc 1 1653 0
	mov.n	a11, a3
	mov.n	a10, a4
	call8	pbuf_copy
.LVL489:
	extui	a10, a10, 0, 8
	beqz.n	a10, .L391
	.loc 1 1654 0
	mov.n	a10, a4
	call8	pbuf_free
.LVL490:
	.loc 1 1655 0
	movi.n	a4, 0
	j	.L391
.LVL491:
.L387:
	.loc 1 1661 0
	mov.n	a10, a3
	call8	pbuf_ref
.LVL492:
	.loc 1 1660 0
	mov.n	a4, a3
.LVL493:
.L391:
	.loc 1 1664 0
	beqz.n	a4, .L398
	.loc 1 1668 0
	l32r	a3, .LC71
.LVL494:
	l32i.n	a3, a3, 52
	l16ui	a10, a3, 0
	call8	malloc
.LVL495:
	.loc 1 1669 0
	bnez.n	a10, .L392
	.loc 1 1669 0 discriminator 1
	sext	a8, a2, 7
	addx4	a11, a8, a8
	slli	a9, a11, 3
	l32r	a11, .LC70
	add.n	a9, a11, a9
	l32i.n	a9, a9, 28
	beqz.n	a9, .L392
.LVL496:
	.loc 1 1672 0
	l32i.n	a11, a9, 0
	addx4	a8, a8, a8
	slli	a10, a8, 3
.LVL497:
	l32r	a8, .LC70
	add.n	a10, a8, a10
	s32i.n	a11, a10, 28
	.loc 1 1673 0
	movi.n	a8, 0
	s32i.n	a8, a9, 0
	.loc 1 1674 0
	mov.n	a10, a9
	call8	nd6_free_q
.LVL498:
	.loc 1 1675 0
	l16ui	a10, a3, 0
	call8	malloc
.LVL499:
.L392:
	.loc 1 1677 0
	beqz.n	a10, .L393
	.loc 1 1678 0
	movi.n	a3, 0
	s32i.n	a3, a10, 0
	.loc 1 1679 0
	s32i.n	a4, a10, 4
	.loc 1 1680 0
	sext	a2, a2, 7
.LVL500:
	addx4	a4, a2, a2
.LVL501:
	slli	a3, a4, 3
	l32r	a4, .LC70
	add.n	a3, a4, a3
	l32i.n	a3, a3, 28
	bnez.n	a3, .L395
	j	.L394
.LVL502:
.L399:
	.loc 1 1684 0
	mov.n	a3, a8
.LVL503:
.L395:
	.loc 1 1683 0
	l32i.n	a8, a3, 0
	bnez.n	a8, .L399
	.loc 1 1686 0
	s32i.n	a10, a3, 0
.LVL504:
	.loc 1 1692 0
	movi.n	a2, 0
	retw.n
.LVL505:
.L394:
	.loc 1 1689 0
	addx4	a2, a2, a2
	slli	a3, a2, 3
	l32r	a2, .LC70
	add.n	a3, a2, a3
	s32i.n	a10, a3, 28
.LVL506:
	.loc 1 1692 0
	movi.n	a2, 0
	retw.n
.LVL507:
.L393:
	.loc 1 1695 0
	mov.n	a10, a4
.LVL508:
	call8	pbuf_free
.LVL509:
	.loc 1 1614 0
	movi	a2, 0xff
	retw.n
.LVL510:
.L396:
	.loc 1 1622 0
	movi	a2, 0xf1
	retw.n
.LVL511:
.L398:
	.loc 1 1614 0
	movi	a2, 0xff
	.loc 1 1714 0
	retw.n
.LFE33:
	.size	nd6_queue_packet, .-nd6_queue_packet
	.section	.text.nd6_get_destination_mtu,"ax",@progbits
	.literal_position
	.literal .LC72, destination_cache
	.align	4
	.global	nd6_get_destination_mtu
	.type	nd6_get_destination_mtu, @function
nd6_get_destination_mtu:
.LFB36:
	.loc 1 1797 0
.LVL512:
	entry	sp, 32
.LCFI21:
	.loc 1 1800 0
	mov.n	a10, a2
	call8	nd6_find_destination_cache_entry
.LVL513:
	extui	a10, a10, 0, 8
.LVL514:
	.loc 1 1801 0
	sext	a2, a10, 7
.LVL515:
	bltz	a2, .L401
	.loc 1 1802 0
	addx4	a10, a2, a2
.LVL516:
	slli	a8, a10, 3
	l32r	a2, .LC72
	add.n	a8, a2, a8
	l16ui	a2, a8, 32
	bnez.n	a2, .L402
.L401:
	.loc 1 1807 0
	beqz.n	a3, .L403
	.loc 1 1808 0
	l16ui	a2, a3, 172
	retw.n
.L403:
	.loc 1 1811 0
	movi	a2, 0x500
.L402:
	.loc 1 1812 0
	retw.n
.LFE36:
	.size	nd6_get_destination_mtu, .-nd6_get_destination_mtu
	.section	.text.nd6_reachability_hint,"ax",@progbits
	.literal_position
	.literal .LC73, nd6_cached_destination_index
	.literal .LC74, destination_cache
	.literal .LC75, nd6_cached_neighbor_index
	.literal .LC76, neighbor_cache
	.literal .LC77, reachable_time
	.align	4
	.global	nd6_reachability_hint
	.type	nd6_reachability_hint, @function
nd6_reachability_hint:
.LFB37:
	.loc 1 1827 0
.LVL517:
	entry	sp, 32
.LCFI22:
	.loc 1 1831 0
	l32i.n	a11, a2, 0
	l32r	a8, .LC73
	l8ui	a8, a8, 0
	addx4	a10, a8, a8
	slli	a9, a10, 3
	l32r	a10, .LC74
	add.n	a9, a10, a9
	l32i.n	a9, a9, 0
	bne	a11, a9, .L405
	.loc 1 1831 0 is_stmt 0 discriminator 1
	l32i.n	a11, a2, 4
	addx4	a10, a8, a8
	slli	a9, a10, 3
	l32r	a10, .LC74
	add.n	a9, a10, a9
	l32i.n	a9, a9, 4
	bne	a11, a9, .L405
	.loc 1 1831 0 discriminator 2
	l32i.n	a11, a2, 8
	addx4	a10, a8, a8
	slli	a9, a10, 3
	l32r	a10, .LC74
	add.n	a9, a10, a9
	l32i.n	a9, a9, 8
	bne	a11, a9, .L405
	.loc 1 1831 0 discriminator 3
	l32i.n	a11, a2, 12
	addx4	a10, a8, a8
	slli	a9, a10, 3
	l32r	a10, .LC74
	add.n	a9, a10, a9
	l32i.n	a9, a9, 12
	bne	a11, a9, .L405
	.loc 1 1832 0 is_stmt 1
	extui	a10, a8, 0, 8
.LVL518:
	j	.L406
.LVL519:
.L405:
	.loc 1 1835 0
	mov.n	a10, a2
	call8	nd6_find_destination_cache_entry
.LVL520:
	extui	a10, a10, 0, 8
.LVL521:
.L406:
	.loc 1 1837 0
	sext	a2, a10, 7
.LVL522:
	bltz	a2, .L404
	.loc 1 1842 0
	mov.n	a10, a2
.LVL523:
	addx4	a2, a2, a2
	slli	a8, a2, 3
	l32r	a2, .LC74
	add.n	a8, a2, a8
	l32i.n	a11, a8, 16
	l32r	a2, .LC75
	l8ui	a8, a2, 0
	addx4	a2, a8, a8
	slli	a9, a2, 3
	l32r	a2, .LC76
	add.n	a9, a2, a9
	l32i.n	a2, a9, 0
	bne	a11, a2, .L408
	.loc 1 1842 0 is_stmt 0 discriminator 1
	addx4	a9, a10, a10
	slli	a2, a9, 3
	l32r	a9, .LC74
	add.n	a2, a9, a2
	l32i.n	a11, a2, 20
	addx4	a9, a8, a8
	slli	a2, a9, 3
	l32r	a9, .LC76
	add.n	a2, a9, a2
	l32i.n	a2, a2, 4
	bne	a11, a2, .L408
	.loc 1 1842 0 discriminator 2
	addx4	a9, a10, a10
	slli	a2, a9, 3
	l32r	a9, .LC74
	add.n	a2, a9, a2
	l32i.n	a11, a2, 24
	addx4	a9, a8, a8
	slli	a2, a9, 3
	l32r	a9, .LC76
	add.n	a2, a9, a2
	l32i.n	a2, a2, 8
	bne	a11, a2, .L408
	.loc 1 1842 0 discriminator 3
	addx4	a9, a10, a10
	slli	a2, a9, 3
	l32r	a9, .LC74
	add.n	a2, a9, a2
	l32i.n	a11, a2, 28
	addx4	a9, a8, a8
	slli	a2, a9, 3
	l32r	a9, .LC76
	add.n	a2, a9, a2
	l32i.n	a2, a2, 12
	bne	a11, a2, .L408
	.loc 1 1843 0 is_stmt 1
	extui	a10, a8, 0, 8
.LVL524:
	j	.L409
.LVL525:
.L408:
	.loc 1 1846 0
	addx4	a10, a10, a10
	slli	a8, a10, 3
	addi	a8, a8, 16
	l32r	a10, .LC74
	add.n	a10, a10, a8
	call8	nd6_find_neighbor_cache_entry
.LVL526:
	extui	a10, a10, 0, 8
.LVL527:
.L409:
	.loc 1 1848 0
	sext	a2, a10, 7
	bltz	a2, .L404
	.loc 1 1853 0
	mov.n	a10, a2
.LVL528:
	addx4	a8, a2, a2
	slli	a2, a8, 3
	l32r	a8, .LC76
	add.n	a2, a8, a2
	l8ui	a2, a2, 32
	bltui	a2, 2, .L404
	.loc 1 1858 0
	mov.n	a9, a8
	slli	a2, a10, 2
	add.n	a11, a2, a10
	slli	a8, a11, 3
	add.n	a8, a9, a8
	movi.n	a11, 2
	s8i	a11, a8, 32
	.loc 1 1859 0
	mov.n	a2, a8
	l32r	a8, .LC77
	l32i.n	a8, a8, 0
	s32i.n	a8, a2, 36
.L404:
	retw.n
.LFE37:
	.size	nd6_reachability_hint, .-nd6_reachability_hint
	.section	.bss.last_router$6728,"aw",@nobits
	.type	last_router$6728, @object
	.size	last_router$6728, 1
last_router$6728:
	.zero	1
	.section	.rodata.__func__$6583,"a",@progbits
	.align	4
	.type	__func__$6583, @object
	.size	__func__$6583, 11
__func__$6583:
	.string	"nd6_set_cb"
	.section	.rodata.__func__$6801,"a",@progbits
	.align	4
	.type	__func__$6801, @object
	.size	__func__$6801, 11
__func__$6801:
	.string	"nd6_free_q"
	.section	.bss.nd6_ra_buffer,"aw",@nobits
	.align	4
	.type	nd6_ra_buffer, @object
	.size	nd6_ra_buffer, 32
nd6_ra_buffer:
	.zero	32
	.section	.bss.multicast_address,"aw",@nobits
	.align	4
	.type	multicast_address, @object
	.size	multicast_address, 16
multicast_address:
	.zero	16
	.section	.bss.nd6_cached_destination_index,"aw",@nobits
	.type	nd6_cached_destination_index, @object
	.size	nd6_cached_destination_index, 1
nd6_cached_destination_index:
	.zero	1
	.section	.bss.nd6_cached_neighbor_index,"aw",@nobits
	.type	nd6_cached_neighbor_index, @object
	.size	nd6_cached_neighbor_index, 1
nd6_cached_neighbor_index:
	.zero	1
	.global	retrans_timer
	.section	.data.retrans_timer,"aw",@progbits
	.align	4
	.type	retrans_timer, @object
	.size	retrans_timer, 4
retrans_timer:
	.word	1000
	.global	reachable_time
	.section	.data.reachable_time,"aw",@progbits
	.align	4
	.type	reachable_time, @object
	.size	reachable_time, 4
reachable_time:
	.word	30000
	.comm	default_router_list,36,4
	.comm	prefix_list,140,4
	.comm	destination_cache,400,4
	.comm	neighbor_cache,400,4
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
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI0-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI1-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI2-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI3-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI4-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI5-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI6-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI7-.LFB35
	.byte	0xe
	.uleb128 0x20
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
	.uleb128 0x30
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI10-.LFB18
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI11-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI12-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI13-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI14-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI15-.LFB15
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI16-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI17-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI18-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI19-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI20-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI21-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI22-.LFB37
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE44:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/port/arch/cc.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/err.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/pbuf.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/netif.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/ip6_addr.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/ip4_addr.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/ip_addr.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/memp.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/priv/memp_priv.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/ip6.h"
	.file 14 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/nd6.h"
	.file 15 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/icmp6.h"
	.file 16 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/ip4.h"
	.file 17 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/ip.h"
	.file 18 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.file 19 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/inet_chksum.h"
	.file 20 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.file 21 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/mld6.h"
	.file 22 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/def.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x21f2
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF285
	.byte	0xc
	.4byte	.LASF286
	.4byte	.LASF287
	.4byte	.Ldebug_ranges0+0x30
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
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x15
	.4byte	0x69
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x16
	.4byte	0x2c
	.uleb128 0x4
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb1
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbf
	.uleb128 0x8
	.4byte	0xb2
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x14
	.4byte	0x3a
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x3
	.byte	0x20
	.4byte	0x5e
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x3
	.byte	0x21
	.4byte	0x70
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x3
	.byte	0x2d
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF21
	.uleb128 0x6
	.byte	0x4
	.4byte	0x108
	.uleb128 0x9
	.4byte	0x113
	.uleb128 0xa
	.4byte	0xa2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x4
	.byte	0x2e
	.4byte	0xcf
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x4
	.byte	0x2f
	.4byte	0xc4
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x4
	.byte	0x30
	.4byte	0xe5
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x4
	.byte	0x31
	.4byte	0xda
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x4
	.byte	0x32
	.4byte	0xf0
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x5
	.byte	0x2f
	.4byte	0x11e
	.uleb128 0xb
	.byte	0x4
	.4byte	0x25
	.byte	0x6
	.byte	0x3f
	.4byte	0x180
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x25
	.byte	0x6
	.byte	0x47
	.4byte	0x1a5
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x18
	.byte	0x6
	.byte	0x6c
	.4byte	0x21e
	.uleb128 0xe
	.4byte	.LASF37
	.byte	0x6
	.byte	0x6e
	.4byte	0x21e
	.byte	0
	.uleb128 0xe
	.4byte	.LASF38
	.byte	0x6
	.byte	0x71
	.4byte	0xa2
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF39
	.byte	0x6
	.byte	0x7a
	.4byte	0x129
	.byte	0x8
	.uleb128 0xf
	.string	"len"
	.byte	0x6
	.byte	0x7d
	.4byte	0x129
	.byte	0xa
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0x6
	.byte	0x80
	.4byte	0x113
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0x6
	.byte	0x83
	.4byte	0x113
	.byte	0xd
	.uleb128 0xf
	.string	"ref"
	.byte	0x6
	.byte	0x8a
	.4byte	0x129
	.byte	0xe
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0x6
	.byte	0x8d
	.4byte	0x3b4
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x6
	.byte	0x8e
	.4byte	0xa2
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1a5
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0xe8
	.byte	0x7
	.byte	0xbd
	.4byte	0x3b4
	.uleb128 0xe
	.4byte	.LASF37
	.byte	0x7
	.byte	0xbf
	.4byte	0x3b4
	.byte	0
	.uleb128 0xe
	.4byte	.LASF46
	.byte	0x7
	.byte	0xc3
	.4byte	0x49e
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF47
	.byte	0x7
	.byte	0xc4
	.4byte	0x49e
	.byte	0x18
	.uleb128 0xf
	.string	"gw"
	.byte	0x7
	.byte	0xc5
	.4byte	0x49e
	.byte	0x2c
	.uleb128 0xe
	.4byte	.LASF48
	.byte	0x7
	.byte	0xc9
	.4byte	0x654
	.byte	0x40
	.uleb128 0xe
	.4byte	.LASF49
	.byte	0x7
	.byte	0xcc
	.4byte	0x664
	.byte	0x7c
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0x7
	.byte	0xce
	.4byte	0x684
	.byte	0x80
	.uleb128 0xe
	.4byte	.LASF51
	.byte	0x7
	.byte	0xd4
	.4byte	0x541
	.byte	0x84
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0x7
	.byte	0xd9
	.4byte	0x566
	.byte	0x88
	.uleb128 0xe
	.4byte	.LASF53
	.byte	0x7
	.byte	0xde
	.4byte	0x5d0
	.byte	0x8c
	.uleb128 0xe
	.4byte	.LASF54
	.byte	0x7
	.byte	0xe3
	.4byte	0x59b
	.byte	0x90
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0x7
	.byte	0xf5
	.4byte	0xa2
	.byte	0x94
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0x7
	.byte	0xf8
	.4byte	0x68f
	.byte	0x98
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x7
	.byte	0xfb
	.4byte	0x69a
	.byte	0x9c
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x7
	.byte	0xfc
	.4byte	0x649
	.byte	0xa0
	.uleb128 0x10
	.4byte	.LASF59
	.byte	0x7
	.2byte	0x108
	.4byte	0x113
	.byte	0xa4
	.uleb128 0x10
	.4byte	.LASF60
	.byte	0x7
	.2byte	0x10d
	.4byte	0x113
	.byte	0xa5
	.uleb128 0x10
	.4byte	.LASF61
	.byte	0x7
	.2byte	0x117
	.4byte	0xb9
	.byte	0xa8
	.uleb128 0x11
	.string	"mtu"
	.byte	0x7
	.2byte	0x11f
	.4byte	0x129
	.byte	0xac
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x7
	.2byte	0x121
	.4byte	0x113
	.byte	0xae
	.uleb128 0x10
	.4byte	.LASF63
	.byte	0x7
	.2byte	0x123
	.4byte	0x6a0
	.byte	0xaf
	.uleb128 0x10
	.4byte	.LASF41
	.byte	0x7
	.2byte	0x125
	.4byte	0x113
	.byte	0xb5
	.uleb128 0x10
	.4byte	.LASF64
	.byte	0x7
	.2byte	0x127
	.4byte	0x6b0
	.byte	0xb6
	.uleb128 0x11
	.string	"num"
	.byte	0x7
	.2byte	0x129
	.4byte	0x113
	.byte	0xb8
	.uleb128 0x10
	.4byte	.LASF65
	.byte	0x7
	.2byte	0x139
	.4byte	0x5f5
	.byte	0xbc
	.uleb128 0x10
	.4byte	.LASF66
	.byte	0x7
	.2byte	0x13f
	.4byte	0x61f
	.byte	0xc0
	.uleb128 0x10
	.4byte	.LASF67
	.byte	0x7
	.2byte	0x147
	.4byte	0x21e
	.byte	0xc4
	.uleb128 0x10
	.4byte	.LASF68
	.byte	0x7
	.2byte	0x148
	.4byte	0x21e
	.byte	0xc8
	.uleb128 0x10
	.4byte	.LASF69
	.byte	0x7
	.2byte	0x14a
	.4byte	0x129
	.byte	0xcc
	.uleb128 0x10
	.4byte	.LASF70
	.byte	0x7
	.2byte	0x14f
	.4byte	0x102
	.byte	0xd0
	.uleb128 0x10
	.4byte	.LASF71
	.byte	0x7
	.2byte	0x150
	.4byte	0x49e
	.byte	0xd4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x224
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x10
	.byte	0x8
	.byte	0x39
	.4byte	0x3d3
	.uleb128 0xe
	.4byte	.LASF72
	.byte	0x8
	.byte	0x3a
	.4byte	0x3d3
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x13f
	.4byte	0x3e3
	.uleb128 0x13
	.4byte	0x9b
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.4byte	.LASF73
	.byte	0x10
	.byte	0x8
	.byte	0x43
	.4byte	0x3fc
	.uleb128 0xe
	.4byte	.LASF72
	.byte	0x8
	.byte	0x44
	.4byte	0x3d3
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF74
	.byte	0x8
	.byte	0x4b
	.4byte	0x3ba
	.uleb128 0x4
	.4byte	.LASF75
	.byte	0x8
	.byte	0x4c
	.4byte	0x3e3
	.uleb128 0xd
	.4byte	.LASF76
	.byte	0x4
	.byte	0x9
	.byte	0x2e
	.4byte	0x42b
	.uleb128 0xe
	.4byte	.LASF72
	.byte	0x9
	.byte	0x2f
	.4byte	0x13f
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF77
	.byte	0x4
	.byte	0x9
	.byte	0x38
	.4byte	0x444
	.uleb128 0xe
	.4byte	.LASF72
	.byte	0x9
	.byte	0x39
	.4byte	0x13f
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF78
	.byte	0x9
	.byte	0x42
	.4byte	0x412
	.uleb128 0x4
	.4byte	.LASF79
	.byte	0x9
	.byte	0x43
	.4byte	0x42b
	.uleb128 0x14
	.byte	0x10
	.byte	0xa
	.byte	0x39
	.4byte	0x479
	.uleb128 0x15
	.string	"ip6"
	.byte	0xa
	.byte	0x3a
	.4byte	0x3fc
	.uleb128 0x15
	.string	"ip4"
	.byte	0xa
	.byte	0x3b
	.4byte	0x444
	.byte	0
	.uleb128 0xd
	.4byte	.LASF80
	.byte	0x14
	.byte	0xa
	.byte	0x38
	.4byte	0x49e
	.uleb128 0xe
	.4byte	.LASF81
	.byte	0xa
	.byte	0x3c
	.4byte	0x45a
	.byte	0
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0xa
	.byte	0x3d
	.4byte	0x113
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.4byte	.LASF82
	.byte	0xa
	.byte	0x3e
	.4byte	0x479
	.uleb128 0xb
	.byte	0x4
	.4byte	0x25
	.byte	0xb
	.byte	0x2d
	.4byte	0x528
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF88
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0x7
	.uleb128 0xc
	.4byte	.LASF91
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF92
	.byte	0x9
	.uleb128 0xc
	.4byte	.LASF93
	.byte	0xa
	.uleb128 0xc
	.4byte	.LASF94
	.byte	0xb
	.uleb128 0xc
	.4byte	.LASF95
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF96
	.byte	0xd
	.uleb128 0xc
	.4byte	.LASF97
	.byte	0xe
	.uleb128 0xc
	.4byte	.LASF98
	.byte	0xf
	.uleb128 0xc
	.4byte	.LASF99
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF100
	.byte	0x11
	.uleb128 0xc
	.4byte	.LASF101
	.byte	0x12
	.byte	0
	.uleb128 0xd
	.4byte	.LASF102
	.byte	0x2
	.byte	0xc
	.byte	0x7a
	.4byte	0x541
	.uleb128 0xe
	.4byte	.LASF103
	.byte	0xc
	.byte	0x7c
	.4byte	0x129
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF104
	.byte	0x7
	.byte	0x83
	.4byte	0x54c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x552
	.uleb128 0x16
	.4byte	0x14a
	.4byte	0x566
	.uleb128 0xa
	.4byte	0x21e
	.uleb128 0xa
	.4byte	0x3b4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF105
	.byte	0x7
	.byte	0x8e
	.4byte	0x571
	.uleb128 0x6
	.byte	0x4
	.4byte	0x577
	.uleb128 0x16
	.4byte	0x14a
	.4byte	0x590
	.uleb128 0xa
	.4byte	0x3b4
	.uleb128 0xa
	.4byte	0x21e
	.uleb128 0xa
	.4byte	0x590
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x596
	.uleb128 0x8
	.4byte	0x444
	.uleb128 0x4
	.4byte	.LASF106
	.byte	0x7
	.byte	0x9b
	.4byte	0x5a6
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5ac
	.uleb128 0x16
	.4byte	0x14a
	.4byte	0x5c5
	.uleb128 0xa
	.4byte	0x3b4
	.uleb128 0xa
	.4byte	0x21e
	.uleb128 0xa
	.4byte	0x5c5
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5cb
	.uleb128 0x8
	.4byte	0x3fc
	.uleb128 0x4
	.4byte	.LASF107
	.byte	0x7
	.byte	0xa5
	.4byte	0x5db
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5e1
	.uleb128 0x16
	.4byte	0x14a
	.4byte	0x5f5
	.uleb128 0xa
	.4byte	0x3b4
	.uleb128 0xa
	.4byte	0x21e
	.byte	0
	.uleb128 0x4
	.4byte	.LASF108
	.byte	0x7
	.byte	0xaa
	.4byte	0x600
	.uleb128 0x6
	.byte	0x4
	.4byte	0x606
	.uleb128 0x16
	.4byte	0x14a
	.4byte	0x61f
	.uleb128 0xa
	.4byte	0x3b4
	.uleb128 0xa
	.4byte	0x590
	.uleb128 0xa
	.4byte	0x113
	.byte	0
	.uleb128 0x4
	.4byte	.LASF109
	.byte	0x7
	.byte	0xaf
	.4byte	0x62a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x630
	.uleb128 0x16
	.4byte	0x14a
	.4byte	0x649
	.uleb128 0xa
	.4byte	0x3b4
	.uleb128 0xa
	.4byte	0x5c5
	.uleb128 0xa
	.4byte	0x113
	.byte	0
	.uleb128 0x4
	.4byte	.LASF110
	.byte	0x7
	.byte	0xb6
	.4byte	0xab
	.uleb128 0x12
	.4byte	0x49e
	.4byte	0x664
	.uleb128 0x13
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0x12
	.4byte	0x113
	.4byte	0x674
	.uleb128 0x13
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x684
	.uleb128 0xa
	.4byte	0x3b4
	.uleb128 0xa
	.4byte	0x113
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x674
	.uleb128 0x17
	.4byte	.LASF56
	.uleb128 0x6
	.byte	0x4
	.4byte	0x68a
	.uleb128 0x17
	.4byte	.LASF111
	.uleb128 0x6
	.byte	0x4
	.4byte	0x695
	.uleb128 0x12
	.4byte	0x113
	.4byte	0x6b0
	.uleb128 0x13
	.4byte	0x9b
	.byte	0x5
	.byte	0
	.uleb128 0x12
	.4byte	0xb2
	.4byte	0x6c0
	.uleb128 0x13
	.4byte	0x9b
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.4byte	.LASF112
	.byte	0x28
	.byte	0xd
	.byte	0x4e
	.4byte	0x715
	.uleb128 0xe
	.4byte	.LASF113
	.byte	0xd
	.byte	0x50
	.4byte	0x13f
	.byte	0
	.uleb128 0xe
	.4byte	.LASF114
	.byte	0xd
	.byte	0x52
	.4byte	0x129
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF115
	.byte	0xd
	.byte	0x54
	.4byte	0x113
	.byte	0x6
	.uleb128 0xe
	.4byte	.LASF116
	.byte	0xd
	.byte	0x56
	.4byte	0x113
	.byte	0x7
	.uleb128 0xf
	.string	"src"
	.byte	0xd
	.byte	0x58
	.4byte	0x407
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF117
	.byte	0xd
	.byte	0x59
	.4byte	0x407
	.byte	0x18
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.byte	0xe
	.byte	0x4c
	.4byte	0x74a
	.uleb128 0x18
	.4byte	.LASF118
	.byte	0xe
	.byte	0x4d
	.4byte	0x13f
	.uleb128 0x18
	.4byte	.LASF119
	.byte	0xe
	.byte	0x4e
	.4byte	0x13f
	.uleb128 0x18
	.4byte	.LASF120
	.byte	0xe
	.byte	0x4f
	.4byte	0x13f
	.uleb128 0x18
	.4byte	.LASF121
	.byte	0xe
	.byte	0x50
	.4byte	0x13f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF122
	.byte	0x28
	.byte	0xe
	.byte	0x3e
	.4byte	0x7a9
	.uleb128 0xe
	.4byte	.LASF123
	.byte	0xe
	.byte	0x3f
	.4byte	0x3fc
	.byte	0
	.uleb128 0xe
	.4byte	.LASF45
	.byte	0xe
	.byte	0x40
	.4byte	0x3b4
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF124
	.byte	0xe
	.byte	0x41
	.4byte	0x6a0
	.byte	0x14
	.uleb128 0xf
	.string	"q"
	.byte	0xe
	.byte	0x45
	.4byte	0x7cc
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0xe
	.byte	0x4a
	.4byte	0x113
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF125
	.byte	0xe
	.byte	0x4b
	.4byte	0x113
	.byte	0x21
	.uleb128 0xe
	.4byte	.LASF126
	.byte	0xe
	.byte	0x51
	.4byte	0x715
	.byte	0x24
	.byte	0
	.uleb128 0xd
	.4byte	.LASF127
	.byte	0x8
	.byte	0xe
	.byte	0x7b
	.4byte	0x7cc
	.uleb128 0xe
	.4byte	.LASF37
	.byte	0xe
	.byte	0x7c
	.4byte	0x7cc
	.byte	0
	.uleb128 0xf
	.string	"p"
	.byte	0xe
	.byte	0x7d
	.4byte	0x21e
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7a9
	.uleb128 0xd
	.4byte	.LASF128
	.byte	0x28
	.byte	0xe
	.byte	0x54
	.4byte	0x80f
	.uleb128 0xe
	.4byte	.LASF129
	.byte	0xe
	.byte	0x55
	.4byte	0x3fc
	.byte	0
	.uleb128 0xe
	.4byte	.LASF130
	.byte	0xe
	.byte	0x56
	.4byte	0x3fc
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF131
	.byte	0xe
	.byte	0x57
	.4byte	0x129
	.byte	0x20
	.uleb128 0xf
	.string	"age"
	.byte	0xe
	.byte	0x58
	.4byte	0x13f
	.byte	0x24
	.byte	0
	.uleb128 0xd
	.4byte	.LASF132
	.byte	0x1c
	.byte	0xe
	.byte	0x5b
	.4byte	0x84c
	.uleb128 0xe
	.4byte	.LASF133
	.byte	0xe
	.byte	0x5c
	.4byte	0x3fc
	.byte	0
	.uleb128 0xe
	.4byte	.LASF45
	.byte	0xe
	.byte	0x5d
	.4byte	0x3b4
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF134
	.byte	0xe
	.byte	0x5e
	.4byte	0x13f
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0xe
	.byte	0x60
	.4byte	0x113
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.4byte	.LASF135
	.byte	0xc
	.byte	0xe
	.byte	0x67
	.4byte	0x87d
	.uleb128 0xe
	.4byte	.LASF136
	.byte	0xe
	.byte	0x68
	.4byte	0x87d
	.byte	0
	.uleb128 0xe
	.4byte	.LASF134
	.byte	0xe
	.byte	0x69
	.4byte	0x13f
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0xe
	.byte	0x6a
	.4byte	0x113
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x74a
	.uleb128 0x19
	.4byte	.LASF165
	.byte	0x4
	.4byte	0x25
	.byte	0xe
	.byte	0x6e
	.4byte	0x8b8
	.uleb128 0xc
	.4byte	.LASF137
	.byte	0
	.uleb128 0xc
	.4byte	.LASF138
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF139
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF140
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF141
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF142
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.4byte	.LASF143
	.byte	0x18
	.byte	0xe
	.byte	0x86
	.4byte	0x901
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0xe
	.byte	0x87
	.4byte	0x113
	.byte	0
	.uleb128 0xe
	.4byte	.LASF144
	.byte	0xe
	.byte	0x88
	.4byte	0x113
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF145
	.byte	0xe
	.byte	0x89
	.4byte	0x129
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF146
	.byte	0xe
	.byte	0x8a
	.4byte	0x13f
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF147
	.byte	0xe
	.byte	0x8b
	.4byte	0x407
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.4byte	.LASF148
	.byte	0x18
	.byte	0xe
	.byte	0x98
	.4byte	0x956
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0xe
	.byte	0x99
	.4byte	0x113
	.byte	0
	.uleb128 0xe
	.4byte	.LASF144
	.byte	0xe
	.byte	0x9a
	.4byte	0x113
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF145
	.byte	0xe
	.byte	0x9b
	.4byte	0x129
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0xe
	.byte	0x9c
	.4byte	0x113
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF146
	.byte	0xe
	.byte	0x9d
	.4byte	0x664
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF147
	.byte	0xe
	.byte	0x9e
	.4byte	0x407
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.4byte	.LASF149
	.byte	0x8
	.byte	0xe
	.byte	0xae
	.4byte	0x993
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0xe
	.byte	0xaf
	.4byte	0x113
	.byte	0
	.uleb128 0xe
	.4byte	.LASF144
	.byte	0xe
	.byte	0xb0
	.4byte	0x113
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF145
	.byte	0xe
	.byte	0xb1
	.4byte	0x129
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF146
	.byte	0xe
	.byte	0xb2
	.4byte	0x13f
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.4byte	.LASF150
	.byte	0x10
	.byte	0xe
	.byte	0xc7
	.4byte	0xa00
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0xe
	.byte	0xc8
	.4byte	0x113
	.byte	0
	.uleb128 0xe
	.4byte	.LASF144
	.byte	0xe
	.byte	0xc9
	.4byte	0x113
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF145
	.byte	0xe
	.byte	0xca
	.4byte	0x129
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF151
	.byte	0xe
	.byte	0xcb
	.4byte	0x113
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0xe
	.byte	0xcc
	.4byte	0x113
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF152
	.byte	0xe
	.byte	0xcd
	.4byte	0x129
	.byte	0x6
	.uleb128 0xe
	.4byte	.LASF118
	.byte	0xe
	.byte	0xce
	.4byte	0x13f
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF153
	.byte	0xe
	.byte	0xcf
	.4byte	0x13f
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.4byte	.LASF154
	.byte	0x28
	.byte	0xe
	.byte	0xdc
	.4byte	0xa55
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0xe
	.byte	0xdd
	.4byte	0x113
	.byte	0
	.uleb128 0xe
	.4byte	.LASF144
	.byte	0xe
	.byte	0xde
	.4byte	0x113
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF145
	.byte	0xe
	.byte	0xdf
	.4byte	0x129
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF146
	.byte	0xe
	.byte	0xe0
	.4byte	0x13f
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF147
	.byte	0xe
	.byte	0xe1
	.4byte	0x407
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF155
	.byte	0xe
	.byte	0xe2
	.4byte	0x407
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.4byte	.LASF156
	.byte	0x8
	.byte	0xe
	.byte	0xf1
	.4byte	0xa86
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0xe
	.byte	0xf2
	.4byte	0x113
	.byte	0
	.uleb128 0xe
	.4byte	.LASF157
	.byte	0xe
	.byte	0xf3
	.4byte	0x113
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF72
	.byte	0xe
	.byte	0xf4
	.4byte	0x6a0
	.byte	0x2
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF158
	.byte	0x20
	.byte	0xe
	.2byte	0x105
	.4byte	0xb09
	.uleb128 0x10
	.4byte	.LASF40
	.byte	0xe
	.2byte	0x106
	.4byte	0x113
	.byte	0
	.uleb128 0x10
	.4byte	.LASF157
	.byte	0xe
	.2byte	0x107
	.4byte	0x113
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF159
	.byte	0xe
	.2byte	0x108
	.4byte	0x113
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF41
	.byte	0xe
	.2byte	0x109
	.4byte	0x113
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF160
	.byte	0xe
	.2byte	0x10a
	.4byte	0x13f
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF161
	.byte	0xe
	.2byte	0x10b
	.4byte	0x13f
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF162
	.byte	0xe
	.2byte	0x10c
	.4byte	0x664
	.byte	0xc
	.uleb128 0x10
	.4byte	.LASF163
	.byte	0xe
	.2byte	0x10d
	.4byte	0x113
	.byte	0xf
	.uleb128 0x10
	.4byte	.LASF133
	.byte	0xe
	.2byte	0x10e
	.4byte	0x407
	.byte	0x10
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF164
	.byte	0x8
	.byte	0xe
	.2byte	0x12d
	.4byte	0xb4b
	.uleb128 0x10
	.4byte	.LASF40
	.byte	0xe
	.2byte	0x12e
	.4byte	0x113
	.byte	0
	.uleb128 0x10
	.4byte	.LASF157
	.byte	0xe
	.2byte	0x12f
	.4byte	0x113
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF146
	.byte	0xe
	.2byte	0x130
	.4byte	0x129
	.byte	0x2
	.uleb128 0x11
	.string	"mtu"
	.byte	0xe
	.2byte	0x131
	.4byte	0x13f
	.byte	0x4
	.byte	0
	.uleb128 0x19
	.4byte	.LASF166
	.byte	0x4
	.4byte	0x25
	.byte	0xf
	.byte	0x36
	.4byte	0xbe6
	.uleb128 0xc
	.4byte	.LASF167
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF168
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF169
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF170
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF171
	.byte	0x64
	.uleb128 0xc
	.4byte	.LASF172
	.byte	0x65
	.uleb128 0xc
	.4byte	.LASF173
	.byte	0x7f
	.uleb128 0xc
	.4byte	.LASF174
	.byte	0x80
	.uleb128 0xc
	.4byte	.LASF175
	.byte	0x81
	.uleb128 0xc
	.4byte	.LASF176
	.byte	0x82
	.uleb128 0xc
	.4byte	.LASF177
	.byte	0x83
	.uleb128 0xc
	.4byte	.LASF178
	.byte	0x84
	.uleb128 0xc
	.4byte	.LASF179
	.byte	0x85
	.uleb128 0xc
	.4byte	.LASF180
	.byte	0x86
	.uleb128 0xc
	.4byte	.LASF181
	.byte	0x87
	.uleb128 0xc
	.4byte	.LASF182
	.byte	0x88
	.uleb128 0xc
	.4byte	.LASF183
	.byte	0x89
	.uleb128 0xc
	.4byte	.LASF184
	.byte	0x97
	.uleb128 0xc
	.4byte	.LASF185
	.byte	0x98
	.uleb128 0xc
	.4byte	.LASF186
	.byte	0x99
	.uleb128 0xc
	.4byte	.LASF187
	.byte	0xc8
	.uleb128 0xc
	.4byte	.LASF188
	.byte	0xc9
	.uleb128 0xc
	.4byte	.LASF189
	.byte	0xff
	.byte	0
	.uleb128 0xd
	.4byte	.LASF190
	.byte	0x8
	.byte	0xf
	.byte	0x6b
	.4byte	0xc23
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0xf
	.byte	0x6c
	.4byte	0x113
	.byte	0
	.uleb128 0xe
	.4byte	.LASF144
	.byte	0xf
	.byte	0x6d
	.4byte	0x113
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF145
	.byte	0xf
	.byte	0x6e
	.4byte	0x129
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF191
	.byte	0xf
	.byte	0x6f
	.4byte	0x13f
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.4byte	.LASF192
	.byte	0x14
	.byte	0x10
	.byte	0x41
	.4byte	0xca8
	.uleb128 0xe
	.4byte	.LASF193
	.byte	0x10
	.byte	0x43
	.4byte	0x113
	.byte	0
	.uleb128 0xe
	.4byte	.LASF194
	.byte	0x10
	.byte	0x45
	.4byte	0x113
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF195
	.byte	0x10
	.byte	0x47
	.4byte	0x129
	.byte	0x2
	.uleb128 0xf
	.string	"_id"
	.byte	0x10
	.byte	0x49
	.4byte	0x129
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF196
	.byte	0x10
	.byte	0x4b
	.4byte	0x129
	.byte	0x6
	.uleb128 0xe
	.4byte	.LASF197
	.byte	0x10
	.byte	0x51
	.4byte	0x113
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF198
	.byte	0x10
	.byte	0x53
	.4byte	0x113
	.byte	0x9
	.uleb128 0xe
	.4byte	.LASF199
	.byte	0x10
	.byte	0x55
	.4byte	0x129
	.byte	0xa
	.uleb128 0xf
	.string	"src"
	.byte	0x10
	.byte	0x57
	.4byte	0x44f
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF117
	.byte	0x10
	.byte	0x58
	.4byte	0x44f
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.4byte	.LASF200
	.byte	0x3c
	.byte	0x11
	.byte	0x6f
	.4byte	0xd09
	.uleb128 0xe
	.4byte	.LASF201
	.byte	0x11
	.byte	0x72
	.4byte	0x3b4
	.byte	0
	.uleb128 0xe
	.4byte	.LASF202
	.byte	0x11
	.byte	0x74
	.4byte	0x3b4
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF203
	.byte	0x11
	.byte	0x77
	.4byte	0xd09
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF204
	.byte	0x11
	.byte	0x7b
	.4byte	0xd0f
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF205
	.byte	0x11
	.byte	0x7e
	.4byte	0x129
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF206
	.byte	0x11
	.byte	0x80
	.4byte	0x49e
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF207
	.byte	0x11
	.byte	0x82
	.4byte	0x49e
	.byte	0x28
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc23
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6c0
	.uleb128 0x1b
	.4byte	.LASF208
	.byte	0x1
	.2byte	0x42e
	.4byte	0x11e
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd4e
	.uleb128 0x1c
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x42e
	.4byte	0x5c5
	.4byte	.LLST0
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.2byte	0x430
	.4byte	0x11e
	.4byte	.LLST1
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF209
	.byte	0x1
	.2byte	0x4cd
	.4byte	0x11e
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd87
	.uleb128 0x1c
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x4cd
	.4byte	0x5c5
	.4byte	.LLST2
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.2byte	0x4cf
	.4byte	0x11e
	.4byte	.LLST3
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x4e0
	.4byte	0x11e
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdca
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.2byte	0x4e2
	.4byte	0x11e
	.4byte	.LLST4
	.uleb128 0x1d
	.string	"j"
	.byte	0x1
	.2byte	0x4e2
	.4byte	0x11e
	.4byte	.LLST5
	.uleb128 0x1e
	.string	"age"
	.byte	0x1
	.2byte	0x4e3
	.4byte	0x13f
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x4ff
	.4byte	0x11e
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe11
	.uleb128 0x1c
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x4ff
	.4byte	0x5c5
	.4byte	.LLST6
	.uleb128 0x1f
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x4ff
	.4byte	0x3b4
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.2byte	0x501
	.4byte	0x11e
	.4byte	.LLST7
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF213
	.byte	0x1
	.2byte	0x557
	.4byte	0x11e
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe58
	.uleb128 0x1c
	.4byte	.LASF214
	.byte	0x1
	.2byte	0x557
	.4byte	0x5c5
	.4byte	.LLST8
	.uleb128 0x1f
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x557
	.4byte	0x3b4
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.2byte	0x559
	.4byte	0x11e
	.4byte	.LLST9
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF215
	.byte	0x1
	.2byte	0x5a1
	.4byte	0x11e
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe9f
	.uleb128 0x1c
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x5a1
	.4byte	0xe9f
	.4byte	.LLST10
	.uleb128 0x1f
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x5a1
	.4byte	0x3b4
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.2byte	0x5a3
	.4byte	0x11e
	.4byte	.LLST11
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3fc
	.uleb128 0x1b
	.4byte	.LASF216
	.byte	0x1
	.2byte	0x5b9
	.4byte	0x11e
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeee
	.uleb128 0x1c
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x5b9
	.4byte	0xe9f
	.4byte	.LLST12
	.uleb128 0x1c
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x5b9
	.4byte	0x3b4
	.4byte	.LLST13
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.2byte	0x5bb
	.4byte	0x11e
	.4byte	.LLST14
	.byte	0
	.uleb128 0x20
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x6d0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf48
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.2byte	0x6d0
	.4byte	0x11e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x22
	.4byte	.LASF217
	.byte	0x1
	.2byte	0x6d2
	.4byte	0xd0f
	.4byte	.LLST15
	.uleb128 0x1d
	.string	"q"
	.byte	0x1
	.2byte	0x6d4
	.4byte	0x7cc
	.4byte	.LLST16
	.uleb128 0x23
	.4byte	.LVL75
	.4byte	0x2152
	.uleb128 0x24
	.4byte	.LVL76
	.4byte	0x215d
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x3a0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1094
	.uleb128 0x1f
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x3a0
	.4byte	0x3b4
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x3a0
	.4byte	0x5c5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x3a0
	.4byte	0x113
	.4byte	.LLST17
	.uleb128 0x22
	.4byte	.LASF221
	.byte	0x1
	.2byte	0x3a2
	.4byte	0x1094
	.4byte	.LLST18
	.uleb128 0x22
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x3a3
	.4byte	0x109a
	.4byte	.LLST19
	.uleb128 0x27
	.string	"p"
	.byte	0x1
	.2byte	0x3a4
	.4byte	0x21e
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x28
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x3a5
	.4byte	0x5c5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LASF224
	.byte	0x1
	.2byte	0x3a6
	.4byte	0x5c5
	.4byte	.LLST20
	.uleb128 0x22
	.4byte	.LASF225
	.byte	0x1
	.2byte	0x3a7
	.4byte	0x129
	.4byte	.LLST21
	.uleb128 0x29
	.4byte	.LVL80
	.4byte	0x2168
	.4byte	0x100a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xa
	.byte	0x76
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x23
	.uleb128 0x18
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x29
	.4byte	.LVL83
	.4byte	0x2173
	.4byte	0x1025
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 26
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x72
	.sleb128 175
	.byte	0
	.uleb128 0x29
	.4byte	.LVL93
	.4byte	0x217c
	.4byte	0x104b
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x3a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL94
	.4byte	0x2187
	.4byte	0x1083
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0xff
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x8
	.byte	0x3a
	.uleb128 0x25
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL95
	.4byte	0x2152
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x901
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa55
	.uleb128 0x1b
	.4byte	.LASF226
	.byte	0x1
	.2byte	0x3e7
	.4byte	0x14a
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11d0
	.uleb128 0x1c
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x3e7
	.4byte	0x3b4
	.4byte	.LLST22
	.uleb128 0x22
	.4byte	.LASF227
	.byte	0x1
	.2byte	0x3e9
	.4byte	0x11d0
	.4byte	.LLST23
	.uleb128 0x22
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x3ea
	.4byte	0x109a
	.4byte	.LLST24
	.uleb128 0x27
	.string	"p"
	.byte	0x1
	.2byte	0x3eb
	.4byte	0x21e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x22
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x3ec
	.4byte	0x5c5
	.4byte	.LLST25
	.uleb128 0x1d
	.string	"err"
	.byte	0x1
	.2byte	0x3ed
	.4byte	0x14a
	.4byte	.LLST26
	.uleb128 0x22
	.4byte	.LASF225
	.byte	0x1
	.2byte	0x3ee
	.4byte	0x129
	.4byte	.LLST27
	.uleb128 0x29
	.4byte	.LVL104
	.4byte	0x2168
	.4byte	0x114c
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xa
	.byte	0x76
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x23
	.uleb128 0x8
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x29
	.4byte	.LVL109
	.4byte	0x2173
	.4byte	0x1161
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x72
	.sleb128 175
	.byte	0
	.uleb128 0x29
	.4byte	.LVL110
	.4byte	0x217c
	.4byte	0x118a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x3a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	multicast_address
	.byte	0
	.uleb128 0x29
	.4byte	.LVL112
	.4byte	0x2187
	.4byte	0x11bf
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	multicast_address
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0xff
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x8
	.byte	0x3a
	.uleb128 0x25
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL115
	.4byte	0x2152
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x956
	.uleb128 0x26
	.4byte	.LASF228
	.byte	0x1
	.2byte	0x35f
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1310
	.uleb128 0x1f
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x35f
	.4byte	0x3b4
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1c
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x35f
	.4byte	0x5c5
	.4byte	.LLST28
	.uleb128 0x1c
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x35f
	.4byte	0x113
	.4byte	.LLST29
	.uleb128 0x22
	.4byte	.LASF229
	.byte	0x1
	.2byte	0x361
	.4byte	0x1310
	.4byte	.LLST30
	.uleb128 0x22
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x362
	.4byte	0x109a
	.4byte	.LLST31
	.uleb128 0x27
	.string	"p"
	.byte	0x1
	.2byte	0x363
	.4byte	0x21e
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x22
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x364
	.4byte	0x5c5
	.4byte	.LLST32
	.uleb128 0x22
	.4byte	.LASF225
	.byte	0x1
	.2byte	0x365
	.4byte	0x129
	.4byte	.LLST33
	.uleb128 0x29
	.4byte	.LVL124
	.4byte	0x2168
	.4byte	0x128c
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xa
	.byte	0x75
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x23
	.uleb128 0x18
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x29
	.4byte	.LVL127
	.4byte	0x2173
	.4byte	0x12a7
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 26
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x72
	.sleb128 175
	.byte	0
	.uleb128 0x29
	.4byte	.LVL132
	.4byte	0x217c
	.4byte	0x12cd
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x3a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL134
	.4byte	0x2187
	.4byte	0x12ff
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0xff
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x8
	.byte	0x3a
	.uleb128 0x25
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL135
	.4byte	0x2152
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8b8
	.uleb128 0x26
	.4byte	.LASF230
	.byte	0x1
	.2byte	0x6bb
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1401
	.uleb128 0x2a
	.string	"q"
	.byte	0x1
	.2byte	0x6bb
	.4byte	0x7cc
	.4byte	.LLST34
	.uleb128 0x1d
	.string	"r"
	.byte	0x1
	.2byte	0x6bd
	.4byte	0x7cc
	.4byte	.LLST35
	.uleb128 0x2b
	.4byte	.LASF231
	.4byte	0x1411
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6801
	.uleb128 0x29
	.4byte	.LVL137
	.4byte	0x2192
	.4byte	0x1387
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x6be
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6801
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0
	.uleb128 0x29
	.4byte	.LVL138
	.4byte	0x2192
	.4byte	0x13b7
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x6bf
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6801
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.byte	0
	.uleb128 0x29
	.4byte	.LVL140
	.4byte	0x2192
	.4byte	0x13e7
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x6c3
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6801
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.byte	0
	.uleb128 0x23
	.4byte	.LVL141
	.4byte	0x2152
	.uleb128 0x24
	.4byte	.LVL142
	.4byte	0x215d
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0xb2
	.4byte	0x1411
	.uleb128 0x13
	.4byte	0x9b
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.4byte	0x1401
	.uleb128 0x26
	.4byte	.LASF232
	.byte	0x1
	.2byte	0x4ae
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1444
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.2byte	0x4ae
	.4byte	0x11e
	.4byte	.LLST36
	.uleb128 0x23
	.4byte	.LVL146
	.4byte	0x1316
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF233
	.byte	0x1
	.2byte	0x443
	.4byte	0x11e
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1517
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.2byte	0x445
	.4byte	0x11e
	.4byte	.LLST37
	.uleb128 0x1d
	.string	"j"
	.byte	0x1
	.2byte	0x446
	.4byte	0x11e
	.4byte	.LLST38
	.uleb128 0x22
	.4byte	.LASF234
	.byte	0x1
	.2byte	0x447
	.4byte	0x13f
	.4byte	.LLST39
	.uleb128 0x29
	.4byte	.LVL153
	.4byte	0x1416
	.4byte	0x14a2
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x72
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0
	.uleb128 0x29
	.4byte	.LVL158
	.4byte	0x1416
	.4byte	0x14ba
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x72
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0
	.uleb128 0x29
	.4byte	.LVL163
	.4byte	0x1416
	.4byte	0x14d2
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x72
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0
	.uleb128 0x29
	.4byte	.LVL172
	.4byte	0x1416
	.4byte	0x14ea
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x72
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0
	.uleb128 0x29
	.4byte	.LVL181
	.4byte	0x1416
	.4byte	0x1502
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x72
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0
	.uleb128 0x24
	.4byte	.LVL192
	.4byte	0x1416
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x72
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF235
	.byte	0x1
	.2byte	0x570
	.4byte	0x11e
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x158f
	.uleb128 0x1c
	.4byte	.LASF214
	.byte	0x1
	.2byte	0x570
	.4byte	0x5c5
	.4byte	.LLST40
	.uleb128 0x1c
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x570
	.4byte	0x3b4
	.4byte	.LLST41
	.uleb128 0x22
	.4byte	.LASF236
	.byte	0x1
	.2byte	0x572
	.4byte	0x11e
	.4byte	.LLST42
	.uleb128 0x22
	.4byte	.LASF237
	.byte	0x1
	.2byte	0x573
	.4byte	0x11e
	.4byte	.LLST43
	.uleb128 0x29
	.4byte	.LVL196
	.4byte	0xd15
	.4byte	0x1585
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL198
	.4byte	0x1444
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF247
	.byte	0x1
	.byte	0x76
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b30
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.byte	0x76
	.4byte	0x21e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2e
	.string	"inp"
	.byte	0x1
	.byte	0x76
	.4byte	0x3b4
	.4byte	.LLST44
	.uleb128 0x2f
	.4byte	.LASF238
	.byte	0x1
	.byte	0x78
	.4byte	0x113
	.4byte	.LLST45
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.byte	0x79
	.4byte	0x11e
	.4byte	.LLST46
	.uleb128 0x31
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x1723
	.uleb128 0x2f
	.4byte	.LASF221
	.byte	0x1
	.byte	0x81
	.4byte	0x1094
	.4byte	.LLST47
	.uleb128 0x2f
	.4byte	.LASF222
	.byte	0x1
	.byte	0x82
	.4byte	0x109a
	.4byte	.LLST48
	.uleb128 0x29
	.4byte	.LVL215
	.4byte	0x2152
	.4byte	0x1619
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL217
	.4byte	0x2152
	.4byte	0x162d
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL219
	.4byte	0x2152
	.4byte	0x1641
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL226
	.4byte	0x219d
	.4byte	0x1663
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x7
	.byte	0x73
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	multicast_address
	.byte	0
	.uleb128 0x29
	.4byte	.LVL227
	.4byte	0xe58
	.4byte	0x1677
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL231
	.4byte	0x2152
	.4byte	0x168b
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL235
	.4byte	0xd15
	.uleb128 0x29
	.4byte	.LVL238
	.4byte	0x2173
	.4byte	0x16b3
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x7
	.byte	0x76
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 26
	.byte	0
	.uleb128 0x23
	.4byte	.LVL241
	.4byte	0xd15
	.uleb128 0x29
	.4byte	.LVL244
	.4byte	0x2152
	.4byte	0x16d0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL248
	.4byte	0x2152
	.4byte	0x16e4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL252
	.4byte	0x2152
	.4byte	0x16f8
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL256
	.4byte	0x2173
	.4byte	0x1712
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.4byte	neighbor_cache+4
	.byte	0x22
	.byte	0
	.uleb128 0x24
	.4byte	.LVL258
	.4byte	0xeee
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x1850
	.uleb128 0x22
	.4byte	.LASF229
	.byte	0x1
	.2byte	0x108
	.4byte	0x1310
	.4byte	.LLST49
	.uleb128 0x22
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x109
	.4byte	0x109a
	.4byte	.LLST50
	.uleb128 0x22
	.4byte	.LASF239
	.byte	0x1
	.2byte	0x10a
	.4byte	0x113
	.4byte	.LLST51
	.uleb128 0x29
	.4byte	.LVL260
	.4byte	0x2152
	.4byte	0x1774
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL272
	.4byte	0x2152
	.4byte	0x1788
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL276
	.4byte	0xf48
	.4byte	0x17b4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xe
	.byte	0x77
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x22
	.byte	0
	.uleb128 0x29
	.4byte	.LVL282
	.4byte	0x2152
	.4byte	0x17c8
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL284
	.4byte	0xd15
	.uleb128 0x29
	.4byte	.LVL287
	.4byte	0x2173
	.4byte	0x17f6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xd
	.byte	0x77
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.4byte	neighbor_cache+20
	.byte	0x22
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 2
	.byte	0
	.uleb128 0x23
	.4byte	.LVL290
	.4byte	0x1444
	.uleb128 0x29
	.4byte	.LVL293
	.4byte	0x2152
	.4byte	0x1813
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL296
	.4byte	0x2173
	.4byte	0x1839
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xe
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.4byte	neighbor_cache+20
	.byte	0x22
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 2
	.byte	0
	.uleb128 0x24
	.4byte	.LVL301
	.4byte	0xf48
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x60
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x19f0
	.uleb128 0x22
	.4byte	.LASF240
	.byte	0x1
	.2byte	0x178
	.4byte	0x1b30
	.4byte	.LLST52
	.uleb128 0x22
	.4byte	.LASF241
	.byte	0x1
	.2byte	0x179
	.4byte	0x1b36
	.4byte	.LLST53
	.uleb128 0x22
	.4byte	.LASF242
	.byte	0x1
	.2byte	0x17a
	.4byte	0x129
	.4byte	.LLST54
	.uleb128 0x31
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.4byte	0x18bb
	.uleb128 0x22
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x1c0
	.4byte	0x109a
	.4byte	.LLST55
	.uleb128 0x24
	.4byte	.LVL325
	.4byte	0x2173
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 2
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0x18eb
	.uleb128 0x22
	.4byte	.LASF243
	.byte	0x1
	.2byte	0x1cc
	.4byte	0x1b3c
	.4byte	.LLST56
	.uleb128 0x23
	.4byte	.LVL327
	.4byte	0x21a8
	.uleb128 0x23
	.4byte	.LVL328
	.4byte	0x21a8
	.byte	0
	.uleb128 0x31
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.4byte	0x1954
	.uleb128 0x22
	.4byte	.LASF244
	.byte	0x1
	.2byte	0x1d7
	.4byte	0x1b42
	.4byte	.LLST57
	.uleb128 0x32
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x22
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x1dc
	.4byte	0x11e
	.4byte	.LLST58
	.uleb128 0x29
	.4byte	.LVL330
	.4byte	0xe58
	.4byte	0x1935
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL333
	.4byte	0xea5
	.4byte	0x1949
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL336
	.4byte	0x21a8
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL303
	.4byte	0x2152
	.4byte	0x1968
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL305
	.4byte	0x10a0
	.4byte	0x197c
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL306
	.4byte	0xe11
	.4byte	0x1990
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL309
	.4byte	0x1517
	.4byte	0x19a4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL312
	.4byte	0x2152
	.4byte	0x19b8
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL315
	.4byte	0x21b3
	.uleb128 0x23
	.4byte	.LVL316
	.4byte	0x21a8
	.uleb128 0x23
	.4byte	.LVL317
	.4byte	0x21a8
	.uleb128 0x24
	.4byte	.LVL323
	.4byte	0x21be
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.4byte	0x1aa7
	.uleb128 0x22
	.4byte	.LASF245
	.byte	0x1
	.2byte	0x208
	.4byte	0x1b48
	.4byte	.LLST59
	.uleb128 0x22
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x209
	.4byte	0x109a
	.4byte	.LLST60
	.uleb128 0x29
	.4byte	.LVL342
	.4byte	0x2152
	.4byte	0x1a31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL349
	.4byte	0xd4e
	.uleb128 0x29
	.4byte	.LVL352
	.4byte	0x2152
	.4byte	0x1a4e
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL358
	.4byte	0xd15
	.uleb128 0x23
	.4byte	.LVL360
	.4byte	0x1444
	.uleb128 0x29
	.4byte	.LVL363
	.4byte	0x2173
	.4byte	0x1a86
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xe
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.4byte	neighbor_cache+20
	.byte	0x22
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 2
	.byte	0
	.uleb128 0x24
	.4byte	.LVL366
	.4byte	0x2173
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xc
	.byte	0x77
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x33
	.byte	0x24
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 2
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.4byte	0x1b1f
	.uleb128 0x22
	.4byte	.LASF246
	.byte	0x1
	.2byte	0x250
	.4byte	0x1b4e
	.4byte	.LLST61
	.uleb128 0x22
	.4byte	.LASF217
	.byte	0x1
	.2byte	0x251
	.4byte	0xd0f
	.4byte	.LLST62
	.uleb128 0x22
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x252
	.4byte	0x13f
	.4byte	.LLST63
	.uleb128 0x29
	.4byte	.LVL371
	.4byte	0x2152
	.4byte	0x1af8
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL374
	.4byte	0xd4e
	.uleb128 0x29
	.4byte	.LVL377
	.4byte	0x2152
	.4byte	0x1b15
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL380
	.4byte	0x21a8
	.byte	0
	.uleb128 0x24
	.4byte	.LVL386
	.4byte	0x2152
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x993
	.uleb128 0x6
	.byte	0x4
	.4byte	0x113
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb09
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa86
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa00
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbe6
	.uleb128 0x33
	.4byte	.LASF248
	.byte	0x1
	.2byte	0x282
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1bc1
	.uleb128 0x1f
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x282
	.4byte	0x3b4
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x21
	.string	"cb"
	.byte	0x1
	.2byte	0x282
	.4byte	0x684
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2b
	.4byte	.LASF231
	.4byte	0x1bc1
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6583
	.uleb128 0x24
	.4byte	.LVL388
	.4byte	0x2192
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x284
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6583
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC49
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x1401
	.uleb128 0x33
	.4byte	.LASF249
	.byte	0x1
	.2byte	0x296
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d2e
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.2byte	0x298
	.4byte	0x11e
	.4byte	.LLST64
	.uleb128 0x22
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x299
	.4byte	0x3b4
	.4byte	.LLST65
	.uleb128 0x34
	.4byte	.Ldebug_ranges0+0
	.4byte	0x1c12
	.uleb128 0x1d
	.string	"j"
	.byte	0x1
	.2byte	0x2f5
	.4byte	0x11e
	.4byte	.LLST66
	.byte	0
	.uleb128 0x34
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0x1c2a
	.uleb128 0x1d
	.string	"j"
	.byte	0x1
	.2byte	0x30e
	.4byte	0x11e
	.4byte	.LLST67
	.byte	0
	.uleb128 0x29
	.4byte	.LVL391
	.4byte	0x1416
	.4byte	0x1c3e
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL392
	.4byte	0x11d6
	.4byte	0x1c62
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xd
	.byte	0x74
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.4byte	neighbor_cache
	.byte	0x22
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x29
	.4byte	.LVL393
	.4byte	0xeee
	.4byte	0x1c76
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL394
	.4byte	0x1416
	.4byte	0x1c8a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL395
	.4byte	0x11d6
	.4byte	0x1cb0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xf
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.4byte	neighbor_cache
	.byte	0x22
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x35
	.4byte	.LVL425
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.4byte	0x1cc9
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL426
	.4byte	0x21c9
	.4byte	0x1cf2
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xe
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	multicast_address
	.byte	0
	.uleb128 0x29
	.4byte	.LVL427
	.4byte	0x11d6
	.4byte	0x1d1d
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xe
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x24
	.4byte	.LVL434
	.4byte	0x10a0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF251
	.byte	0x1
	.2byte	0x51c
	.4byte	0x11e
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d87
	.uleb128 0x1c
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x51c
	.4byte	0x5c5
	.4byte	.LLST68
	.uleb128 0x1f
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x51c
	.4byte	0x3b4
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.2byte	0x51e
	.4byte	0x11e
	.4byte	.LLST69
	.uleb128 0x28
	.4byte	.LASF250
	.byte	0x1
	.2byte	0x522
	.4byte	0x11e
	.uleb128 0x5
	.byte	0x3
	.4byte	last_router$6728
	.byte	0
	.uleb128 0x36
	.4byte	.LASF252
	.byte	0x1
	.2byte	0x5dc
	.4byte	0x11e
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e33
	.uleb128 0x1c
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x5dc
	.4byte	0x5c5
	.4byte	.LLST70
	.uleb128 0x1c
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x5dc
	.4byte	0x3b4
	.4byte	.LLST71
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.2byte	0x5de
	.4byte	0x11e
	.4byte	.LLST72
	.uleb128 0x29
	.4byte	.LVL450
	.4byte	0xd4e
	.4byte	0x1de3
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL454
	.4byte	0xd87
	.uleb128 0x29
	.4byte	.LVL457
	.4byte	0xdca
	.4byte	0x1e06
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL460
	.4byte	0x1d2e
	.4byte	0x1e20
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL466
	.4byte	0xd15
	.uleb128 0x23
	.4byte	.LVL468
	.4byte	0x1444
	.byte	0
	.uleb128 0x36
	.4byte	.LASF253
	.byte	0x1
	.2byte	0x64c
	.4byte	0x14a
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f5c
	.uleb128 0x1c
	.4byte	.LASF237
	.byte	0x1
	.2byte	0x64c
	.4byte	0x11e
	.4byte	.LLST73
	.uleb128 0x2a
	.string	"q"
	.byte	0x1
	.2byte	0x64c
	.4byte	0x21e
	.4byte	.LLST74
	.uleb128 0x37
	.4byte	.LASF254
	.byte	0x1
	.2byte	0x64e
	.4byte	0x14a
	.sleb128 -1
	.uleb128 0x1d
	.string	"p"
	.byte	0x1
	.2byte	0x64f
	.4byte	0x21e
	.4byte	.LLST75
	.uleb128 0x22
	.4byte	.LASF255
	.byte	0x1
	.2byte	0x650
	.4byte	0x33
	.4byte	.LLST76
	.uleb128 0x22
	.4byte	.LASF256
	.byte	0x1
	.2byte	0x652
	.4byte	0x7cc
	.4byte	.LLST77
	.uleb128 0x1d
	.string	"r"
	.byte	0x1
	.2byte	0x652
	.4byte	0x7cc
	.4byte	.LLST78
	.uleb128 0x29
	.4byte	.LVL482
	.4byte	0x2168
	.4byte	0x1ecc
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x23
	.4byte	.LVL486
	.4byte	0x1316
	.uleb128 0x29
	.4byte	.LVL487
	.4byte	0x2168
	.4byte	0x1eee
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL489
	.4byte	0x21d4
	.4byte	0x1f08
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL490
	.4byte	0x2152
	.4byte	0x1f1c
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL492
	.4byte	0x21df
	.4byte	0x1f30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL495
	.4byte	0x21ea
	.uleb128 0x23
	.4byte	.LVL498
	.4byte	0x1316
	.uleb128 0x23
	.4byte	.LVL499
	.4byte	0x21ea
	.uleb128 0x24
	.4byte	.LVL509
	.4byte	0x2152
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF257
	.byte	0x1
	.2byte	0x704
	.4byte	0x129
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1fb3
	.uleb128 0x1c
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x704
	.4byte	0x5c5
	.4byte	.LLST79
	.uleb128 0x1f
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x704
	.4byte	0x3b4
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.2byte	0x706
	.4byte	0x11e
	.4byte	.LLST80
	.uleb128 0x24
	.4byte	.LVL513
	.4byte	0xd4e
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	.LASF258
	.byte	0x1
	.2byte	0x722
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2005
	.uleb128 0x1c
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x722
	.4byte	0x5c5
	.4byte	.LLST81
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.2byte	0x724
	.4byte	0x11e
	.4byte	.LLST82
	.uleb128 0x29
	.4byte	.LVL520
	.4byte	0xd4e
	.4byte	0x1ffb
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL526
	.4byte	0xd15
	.byte	0
	.uleb128 0x38
	.4byte	.LASF259
	.byte	0x1
	.byte	0x4a
	.4byte	0x113
	.uleb128 0x5
	.byte	0x3
	.4byte	nd6_cached_neighbor_index
	.uleb128 0x38
	.4byte	.LASF260
	.byte	0x1
	.byte	0x4b
	.4byte	0x113
	.uleb128 0x5
	.byte	0x3
	.4byte	nd6_cached_destination_index
	.uleb128 0x38
	.4byte	.LASF261
	.byte	0x1
	.byte	0x4e
	.4byte	0x3fc
	.uleb128 0x5
	.byte	0x3
	.4byte	multicast_address
	.uleb128 0x12
	.4byte	0x113
	.4byte	0x2048
	.uleb128 0x13
	.4byte	0x9b
	.byte	0x1f
	.byte	0
	.uleb128 0x38
	.4byte	.LASF262
	.byte	0x1
	.byte	0x51
	.4byte	0x2038
	.uleb128 0x5
	.byte	0x3
	.4byte	nd6_ra_buffer
	.uleb128 0x39
	.4byte	.LASF263
	.byte	0xa
	.2byte	0x122
	.4byte	0x2065
	.uleb128 0x8
	.4byte	0x49e
	.uleb128 0x12
	.4byte	0x207a
	.4byte	0x207a
	.uleb128 0x13
	.4byte	0x9b
	.byte	0x11
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2080
	.uleb128 0x8
	.4byte	0x528
	.uleb128 0x3a
	.4byte	.LASF264
	.byte	0xb
	.byte	0x41
	.4byte	0x2090
	.uleb128 0x8
	.4byte	0x206a
	.uleb128 0x39
	.4byte	.LASF265
	.byte	0x7
	.2byte	0x15e
	.4byte	0x3b4
	.uleb128 0x12
	.4byte	0x74a
	.4byte	0x20b1
	.uleb128 0x13
	.4byte	0x9b
	.byte	0x9
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF266
	.byte	0x1
	.byte	0x40
	.4byte	0x20a1
	.uleb128 0x5
	.byte	0x3
	.4byte	neighbor_cache
	.uleb128 0x12
	.4byte	0x7d2
	.4byte	0x20d2
	.uleb128 0x13
	.4byte	0x9b
	.byte	0x9
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF267
	.byte	0x1
	.byte	0x41
	.4byte	0x20c2
	.uleb128 0x5
	.byte	0x3
	.4byte	destination_cache
	.uleb128 0x12
	.4byte	0x80f
	.4byte	0x20f3
	.uleb128 0x13
	.4byte	0x9b
	.byte	0x4
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF268
	.byte	0x1
	.byte	0x42
	.4byte	0x20e3
	.uleb128 0x5
	.byte	0x3
	.4byte	prefix_list
	.uleb128 0x12
	.4byte	0x84c
	.4byte	0x2114
	.uleb128 0x13
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF269
	.byte	0x1
	.byte	0x43
	.4byte	0x2104
	.uleb128 0x5
	.byte	0x3
	.4byte	default_router_list
	.uleb128 0x3b
	.4byte	.LASF118
	.byte	0x1
	.byte	0x46
	.4byte	0x13f
	.uleb128 0x5
	.byte	0x3
	.4byte	reachable_time
	.uleb128 0x3b
	.4byte	.LASF153
	.byte	0x1
	.byte	0x47
	.4byte	0x13f
	.uleb128 0x5
	.byte	0x3
	.4byte	retrans_timer
	.uleb128 0x3a
	.4byte	.LASF270
	.byte	0x11
	.byte	0x84
	.4byte	0xca8
	.uleb128 0x3c
	.4byte	.LASF271
	.4byte	.LASF271
	.byte	0x6
	.byte	0xcb
	.uleb128 0x3c
	.4byte	.LASF272
	.4byte	.LASF272
	.byte	0x12
	.byte	0x5a
	.uleb128 0x3c
	.4byte	.LASF273
	.4byte	.LASF273
	.byte	0x6
	.byte	0xc1
	.uleb128 0x3d
	.4byte	.LASF288
	.4byte	.LASF288
	.uleb128 0x3c
	.4byte	.LASF274
	.4byte	.LASF274
	.byte	0x13
	.byte	0x59
	.uleb128 0x3c
	.4byte	.LASF275
	.4byte	.LASF275
	.byte	0xd
	.byte	0xa9
	.uleb128 0x3c
	.4byte	.LASF276
	.4byte	.LASF276
	.byte	0x14
	.byte	0x29
	.uleb128 0x3c
	.4byte	.LASF277
	.4byte	.LASF277
	.byte	0x15
	.byte	0x6d
	.uleb128 0x3c
	.4byte	.LASF278
	.4byte	.LASF278
	.byte	0x16
	.byte	0x6e
	.uleb128 0x3c
	.4byte	.LASF279
	.4byte	.LASF279
	.byte	0x16
	.byte	0x6c
	.uleb128 0x3c
	.4byte	.LASF280
	.4byte	.LASF280
	.byte	0x6
	.byte	0xd1
	.uleb128 0x3c
	.4byte	.LASF281
	.4byte	.LASF281
	.byte	0x15
	.byte	0x6b
	.uleb128 0x3c
	.4byte	.LASF282
	.4byte	.LASF282
	.byte	0x6
	.byte	0xd0
	.uleb128 0x3c
	.4byte	.LASF283
	.4byte	.LASF283
	.byte	0x6
	.byte	0xca
	.uleb128 0x3c
	.4byte	.LASF284
	.4byte	.LASF284
	.byte	0x12
	.byte	0x65
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
	.uleb128 0xc
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x19
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x1a
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL8
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL24
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL20
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL25
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL36
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL38
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL45
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LFE28
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL46
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
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL54
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL67
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL54
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0xf
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x79
	.sleb128 0
	.byte	0x1c
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	prefix_list+16
	.byte	0x22
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0xe
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x79
	.sleb128 0
	.byte	0x1c
	.byte	0x32
	.byte	0x24
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x10
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0xf
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x79
	.sleb128 0
	.byte	0x1c
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	prefix_list+16
	.byte	0x22
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0xe
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x79
	.sleb128 0
	.byte	0x1c
	.byte	0x32
	.byte	0x24
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x10
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0xf
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x79
	.sleb128 0
	.byte	0x1c
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	prefix_list+16
	.byte	0x22
	.4byte	.LVL62
	.4byte	.LVL64
	.2byte	0xe
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x79
	.sleb128 0
	.byte	0x1c
	.byte	0x32
	.byte	0x24
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x10
	.4byte	.LVL64
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x3
	.byte	0x7e
	.sleb128 -24
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL73
	.4byte	.LVL74-1
	.2byte	0x3
	.byte	0x7e
	.sleb128 -24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL69
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL77
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL84
	.4byte	.LVL87
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL88
	.4byte	.LVL91
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL92
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL82
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL82
	.4byte	.LVL95
	.2byte	0x3
	.byte	0x75
	.sleb128 24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x6
	.byte	0x3
	.4byte	multicast_address
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x6
	.byte	0x3
	.4byte	multicast_address
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL79
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL82
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL87
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL96
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL113
	.4byte	.LVL116
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL117
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL106
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x3
	.byte	0x7a
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL108
	.4byte	.LVL109-1
	.2byte	0x3
	.byte	0x7a
	.sleb128 -2
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL100
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL114
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL97
	.4byte	.LVL101
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL118
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL129
	.4byte	.LVL130
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x6
	.byte	0x3
	.4byte	multicast_address
	.byte	0x9f
	.4byte	.LVL131
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL119
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL126
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL126
	.4byte	.LVL133
	.2byte	0x3
	.byte	0x74
	.sleb128 24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL122
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL123
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL126
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL136
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL139
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL143
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL138
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL144
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL145
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL147
	.4byte	.LVL148
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL148
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL149
	.4byte	.LVL150
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL150
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL152
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL154
	.4byte	.LVL155
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL155
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL157
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL159
	.4byte	.LVL160
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL160
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL162
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL164
	.4byte	.LVL165
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL165
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL167
	.4byte	.LVL170
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL170
	.4byte	.LVL171
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL171
	.4byte	.LVL172-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL173
	.4byte	.LVL176
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL176
	.4byte	.LVL177
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL177
	.4byte	.LVL181-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL182
	.4byte	.LVL185
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL185
	.4byte	.LVL186
	.2byte	0x3
	.byte	0x7a
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL186
	.4byte	.LVL187
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL187
	.4byte	.LVL190
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL190
	.4byte	.LVL191
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL193
	.4byte	.LVL194
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL167
	.4byte	.LVL179
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL180
	.4byte	.LVL189
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL190
	.4byte	.LVL194
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL167
	.4byte	.LVL168
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL169
	.4byte	.LVL172-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL173
	.4byte	.LVL174
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL175
	.4byte	.LVL178
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL180
	.4byte	.LVL181-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL182
	.4byte	.LVL183
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL184
	.4byte	.LVL188
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL190
	.4byte	.LVL192-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL193
	.4byte	.LVL194
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL195
	.4byte	.LVL200
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL200
	.4byte	.LVL211
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL211
	.4byte	.LVL212
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL212
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL195
	.4byte	.LVL201
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL201
	.4byte	.LVL202
	.2byte	0x2
	.byte	0x72
	.sleb128 16
	.4byte	.LVL202
	.4byte	.LVL203
	.2byte	0x7
	.byte	0x79
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x10
	.4byte	.LVL203
	.4byte	.LVL204
	.2byte	0x2
	.byte	0x72
	.sleb128 16
	.4byte	.LVL204
	.4byte	.LVL211
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL211
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL206
	.4byte	.LVL207
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL207
	.4byte	.LVL208
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL208
	.4byte	.LVL209
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL209
	.4byte	.LVL210
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL197
	.4byte	.LVL198-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL199
	.4byte	.LVL205
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL211
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL213
	.4byte	.LVL229
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL229
	.4byte	.LVL232
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL232
	.4byte	.LVL257
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL257
	.4byte	.LVL259
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL259
	.4byte	.LVL368
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL368
	.4byte	.LVL369
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL369
	.4byte	.LVL370
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL370
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL214
	.4byte	.LVL215-1
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	.LVL216
	.4byte	.LVL217-1
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	.LVL218
	.4byte	.LVL219-1
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	.LVL220
	.4byte	.LVL221
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	.LVL239
	.4byte	.LVL240
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	.LVL259
	.4byte	.LVL260-1
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	.LVL261
	.4byte	.LVL272-1
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	.LVL273
	.4byte	.LVL275
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	.LVL279
	.4byte	.LVL280
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	.LVL281
	.4byte	.LVL282-1
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	.LVL283
	.4byte	.LVL284-1
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	.LVL302
	.4byte	.LVL303-1
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	.LVL304
	.4byte	.LVL305-1
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	.LVL341
	.4byte	.LVL342-1
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	.LVL343
	.4byte	.LVL348
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	.LVL369
	.4byte	.LVL371-1
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	.LVL372
	.4byte	.LVL373
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL222
	.4byte	.LVL223
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL223
	.4byte	.LVL225
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL228
	.4byte	.LVL230
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL232
	.4byte	.LVL233
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL233
	.4byte	.LVL234
	.2byte	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL234
	.4byte	.LVL236
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL236
	.4byte	.LVL237
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL242
	.4byte	.LVL243
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL245
	.4byte	.LVL247
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL249
	.4byte	.LVL251
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL253
	.4byte	.LVL254
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL265
	.4byte	.LVL266
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL266
	.4byte	.LVL267
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL267
	.4byte	.LVL268
	.2byte	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL268
	.4byte	.LVL269
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL270
	.4byte	.LVL271
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL275
	.4byte	.LVL277
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL277
	.4byte	.LVL278
	.2byte	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL278
	.4byte	.LVL279
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL280
	.4byte	.LVL281
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL285
	.4byte	.LVL286
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL289
	.4byte	.LVL290-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL291
	.4byte	.LVL292
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL294
	.4byte	.LVL295
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL307
	.4byte	.LVL308
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL310
	.4byte	.LVL311
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL313
	.4byte	.LVL314
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL350
	.4byte	.LVL351
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL353
	.4byte	.LVL354
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL359
	.4byte	.LVL360-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL360-1
	.4byte	.LVL361
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL361
	.4byte	.LVL362
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL362
	.4byte	.LVL365
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL375
	.4byte	.LVL376
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL376
	.4byte	.LVL378
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL378
	.4byte	.LVL379
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL379
	.4byte	.LVL381
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL216
	.4byte	.LVL224
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL232
	.4byte	.LVL246
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL218
	.4byte	.LVL224
	.2byte	0x3
	.byte	0x74
	.sleb128 24
	.byte	0x9f
	.4byte	.LVL232
	.4byte	.LVL239
	.2byte	0x3
	.byte	0x74
	.sleb128 24
	.byte	0x9f
	.4byte	.LVL250
	.4byte	.LVL252-1
	.2byte	0x3
	.byte	0x7b
	.sleb128 24
	.byte	0x9f
	.4byte	.LVL253
	.4byte	.LVL255
	.2byte	0x3
	.byte	0x7b
	.sleb128 24
	.byte	0x9f
	.4byte	.LVL255
	.4byte	.LVL256-1
	.2byte	0x6
	.byte	0x72
	.sleb128 4
	.byte	0x6
	.byte	0x23
	.uleb128 0x18
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL261
	.4byte	.LVL298
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL298
	.4byte	.LVL299
	.2byte	0x3
	.byte	0x79
	.sleb128 -8
	.byte	0x9f
	.4byte	.LVL299
	.4byte	.LVL300
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL300
	.4byte	.LVL301-1
	.2byte	0x3
	.byte	0x79
	.sleb128 -8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL262
	.4byte	.LVL263
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL264
	.4byte	.LVL275
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL279
	.4byte	.LVL280
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL281
	.4byte	.LVL288
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL289
	.4byte	.LVL297
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL265
	.4byte	.LVL271
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL271
	.4byte	.LVL274
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL304
	.4byte	.LVL318
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL321
	.4byte	.LVL322
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL322
	.4byte	.LVL323
	.2byte	0x6
	.byte	0x3
	.4byte	nd6_ra_buffer
	.byte	0x9f
	.4byte	.LVL323
	.4byte	.LVL338
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL319
	.4byte	.LVL320
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	.LVL320
	.4byte	.LVL339
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL340
	.4byte	.LVL341
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL324
	.4byte	.LVL326
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL326
	.4byte	.LVL329
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL329
	.4byte	.LVL337
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL331
	.4byte	.LVL332
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL334
	.4byte	.LVL335
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL343
	.4byte	.LVL355
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL355
	.4byte	.LVL356
	.2byte	0x3
	.byte	0x7b
	.sleb128 -8
	.byte	0x9f
	.4byte	.LVL356
	.4byte	.LVL357
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL357
	.4byte	.LVL358-1
	.2byte	0x3
	.byte	0x7b
	.sleb128 -8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL344
	.4byte	.LVL345
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL346
	.4byte	.LVL367
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL372
	.4byte	.LVL382
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL372
	.4byte	.LVL382
	.2byte	0x3
	.byte	0x74
	.sleb128 8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL380
	.4byte	.LVL383
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL384
	.4byte	.LVL385
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL389
	.4byte	.LVL390
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL390
	.4byte	.LVL396
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL396
	.4byte	.LVL397
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL397
	.4byte	.LVL398
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL398
	.4byte	.LVL399
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL399
	.4byte	.LVL400
	.2byte	0x3
	.byte	0x7a
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL400
	.4byte	.LVL401
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL401
	.4byte	.LVL402
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL402
	.4byte	.LVL403
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL403
	.4byte	.LVL404
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL404
	.4byte	.LVL421
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL421
	.4byte	.LVL422
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL422
	.4byte	.LVL423
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL424
	.4byte	.LVL428
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL428
	.4byte	.LVL429
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL429
	.4byte	.LVL430
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL431
	.4byte	.LVL432
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL423
	.4byte	.LVL433
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL433
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL405
	.4byte	.LVL406
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL407
	.4byte	.LVL408
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL408
	.4byte	.LVL409
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL409
	.4byte	.LVL410
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL411
	.4byte	.LVL412
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL413
	.4byte	.LVL414
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL415
	.4byte	.LVL416
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL416
	.4byte	.LVL417
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL417
	.4byte	.LVL418
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL419
	.4byte	.LVL420
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL436
	.4byte	.LVL438
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL438
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL437
	.4byte	.LVL438
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL438
	.4byte	.LVL439
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL439
	.4byte	.LVL440
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL440
	.4byte	.LVL441
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL442
	.4byte	.LVL443
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL443
	.4byte	.LVL444
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL444
	.4byte	.LVL445
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL446
	.4byte	.LVL447
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL447
	.4byte	.LVL448
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL448
	.4byte	.LFE27
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL449
	.4byte	.LVL452
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL452
	.4byte	.LVL453
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL453
	.4byte	.LVL458
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL458
	.4byte	.LVL459
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL459
	.4byte	.LVL462
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL462
	.4byte	.LVL475
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL475
	.4byte	.LVL476
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL476
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL449
	.4byte	.LVL463
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL463
	.4byte	.LVL464
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL464
	.4byte	.LVL471
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL471
	.4byte	.LVL472
	.2byte	0x2
	.byte	0x72
	.sleb128 16
	.4byte	.LVL472
	.4byte	.LVL473
	.2byte	0x7
	.byte	0x7b
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x10
	.4byte	.LVL473
	.4byte	.LVL474
	.2byte	0x2
	.byte	0x72
	.sleb128 16
	.4byte	.LVL474
	.4byte	.LVL475
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL475
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL451
	.4byte	.LVL454-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL455
	.4byte	.LVL456
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL461
	.4byte	.LVL465
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL467
	.4byte	.LVL468-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL469
	.4byte	.LVL470
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL475
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL477
	.4byte	.LVL500
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL500
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL477
	.4byte	.LVL494
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL494
	.4byte	.LVL510
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL510
	.4byte	.LFE33
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL479
	.4byte	.LVL482-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL483
	.4byte	.LVL485
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL488
	.4byte	.LVL490
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL490
	.4byte	.LVL491
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL491
	.4byte	.LVL493
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL493
	.4byte	.LVL501
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL501
	.4byte	.LVL504
	.2byte	0x2
	.byte	0x7a
	.sleb128 4
	.4byte	.LVL505
	.4byte	.LVL506
	.2byte	0x2
	.byte	0x7a
	.sleb128 4
	.4byte	.LVL507
	.4byte	.LVL510
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL511
	.4byte	.LFE33
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL478
	.4byte	.LVL481
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL481
	.4byte	.LVL483
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL491
	.4byte	.LVL493
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL510
	.4byte	.LVL511
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL495
	.4byte	.LVL497
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL499
	.4byte	.LVL508
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL484
	.4byte	.LVL486-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL496
	.4byte	.LVL498-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL502
	.4byte	.LVL505
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LVL512
	.4byte	.LVL515
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL515
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LVL514
	.4byte	.LVL516
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL517
	.4byte	.LVL522
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL522
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST82:
	.4byte	.LVL518
	.4byte	.LVL519
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL521
	.4byte	.LVL523
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL524
	.4byte	.LVL525
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL527
	.4byte	.LVL528
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xcc
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	0
	.4byte	0
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	0
	.4byte	0
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF218:
	.string	"nd6_send_q"
.LASF16:
	.string	"int8_t"
.LASF282:
	.string	"pbuf_copy"
.LASF184:
	.string	"ICMP6_TYPE_MRA"
.LASF13:
	.string	"sizetype"
.LASF222:
	.string	"lladdr_opt"
.LASF185:
	.string	"ICMP6_TYPE_MRS"
.LASF186:
	.string	"ICMP6_TYPE_MRT"
.LASF70:
	.string	"l2_buffer_free_notify"
.LASF75:
	.string	"ip6_addr_p_t"
.LASF85:
	.string	"MEMP_TCP_PCB"
.LASF264:
	.string	"memp_pools"
.LASF65:
	.string	"igmp_mac_filter"
.LASF201:
	.string	"current_netif"
.LASF57:
	.string	"dhcps_pcb"
.LASF67:
	.string	"loop_first"
.LASF43:
	.string	"l2_buf"
.LASF265:
	.string	"netif_list"
.LASF94:
	.string	"MEMP_SYS_TIMEOUT"
.LASF231:
	.string	"__func__"
.LASF244:
	.string	"prefix_opt"
.LASF193:
	.string	"_v_hl"
.LASF55:
	.string	"state"
.LASF71:
	.string	"last_ip_addr"
.LASF260:
	.string	"nd6_cached_destination_index"
.LASF40:
	.string	"type"
.LASF213:
	.string	"nd6_get_router"
.LASF35:
	.string	"PBUF_REF"
.LASF252:
	.string	"nd6_get_next_hop_entry"
.LASF108:
	.string	"netif_igmp_mac_filter_fn"
.LASF197:
	.string	"_ttl"
.LASF4:
	.string	"__uint8_t"
.LASF194:
	.string	"_tos"
.LASF254:
	.string	"result"
.LASF137:
	.string	"ND6_NO_ENTRY"
.LASF120:
	.string	"probes_sent"
.LASF132:
	.string	"nd6_prefix_list_entry"
.LASF59:
	.string	"ip6_autoconfig_enabled"
.LASF278:
	.string	"lwip_htonl"
.LASF12:
	.string	"long int"
.LASF248:
	.string	"nd6_set_cb"
.LASF112:
	.string	"ip6_hdr"
.LASF166:
	.string	"icmp6_type"
.LASF165:
	.string	"nd6_neighbor_cache_entry_state"
.LASF76:
	.string	"ip4_addr"
.LASF216:
	.string	"nd6_new_onlink_prefix"
.LASF158:
	.string	"prefix_option"
.LASF202:
	.string	"current_input_netif"
.LASF171:
	.string	"ICMP6_TYPE_PE1"
.LASF172:
	.string	"ICMP6_TYPE_PE2"
.LASF187:
	.string	"ICMP6_TYPE_PE3"
.LASF157:
	.string	"length"
.LASF253:
	.string	"nd6_queue_packet"
.LASF195:
	.string	"_len"
.LASF261:
	.string	"multicast_address"
.LASF229:
	.string	"ns_hdr"
.LASF206:
	.string	"current_iphdr_src"
.LASF53:
	.string	"linkoutput"
.LASF119:
	.string	"delay_time"
.LASF62:
	.string	"hwaddr_len"
.LASF100:
	.string	"MEMP_PBUF_POOL"
.LASF2:
	.string	"signed char"
.LASF207:
	.string	"current_iphdr_dest"
.LASF17:
	.string	"uint8_t"
.LASF217:
	.string	"ip6hdr"
.LASF127:
	.string	"nd6_q_entry"
.LASF5:
	.string	"unsigned char"
.LASF279:
	.string	"lwip_htons"
.LASF277:
	.string	"mld6_leavegroup"
.LASF200:
	.string	"ip_globals"
.LASF88:
	.string	"MEMP_NETBUF"
.LASF267:
	.string	"destination_cache"
.LASF262:
	.string	"nd6_ra_buffer"
.LASF21:
	.string	"_Bool"
.LASF36:
	.string	"PBUF_POOL"
.LASF129:
	.string	"destination_addr"
.LASF15:
	.string	"char"
.LASF52:
	.string	"output"
.LASF250:
	.string	"last_router"
.LASF44:
	.string	"pbuf"
.LASF98:
	.string	"MEMP_MLD6_GROUP"
.LASF139:
	.string	"ND6_REACHABLE"
.LASF83:
	.string	"MEMP_RAW_PCB"
.LASF8:
	.string	"__uint16_t"
.LASF111:
	.string	"udp_pcb"
.LASF167:
	.string	"ICMP6_TYPE_DUR"
.LASF41:
	.string	"flags"
.LASF209:
	.string	"nd6_find_destination_cache_entry"
.LASF46:
	.string	"ip_addr"
.LASF211:
	.string	"nd6_new_destination_cache_entry"
.LASF198:
	.string	"_proto"
.LASF51:
	.string	"input"
.LASF135:
	.string	"nd6_router_list_entry"
.LASF230:
	.string	"nd6_free_q"
.LASF154:
	.string	"redirect_header"
.LASF269:
	.string	"default_router_list"
.LASF190:
	.string	"icmp6_hdr"
.LASF210:
	.string	"ip6addr"
.LASF182:
	.string	"ICMP6_TYPE_NA"
.LASF90:
	.string	"MEMP_TCPIP_MSG_API"
.LASF241:
	.string	"buffer"
.LASF89:
	.string	"MEMP_NETCONN"
.LASF181:
	.string	"ICMP6_TYPE_NS"
.LASF203:
	.string	"current_ip4_header"
.LASF133:
	.string	"prefix"
.LASF123:
	.string	"next_hop_address"
.LASF42:
	.string	"l2_owner"
.LASF196:
	.string	"_offset"
.LASF49:
	.string	"ip6_addr_state"
.LASF79:
	.string	"ip4_addr_p_t"
.LASF276:
	.string	"__assert_func"
.LASF97:
	.string	"MEMP_IP6_REASSDATA"
.LASF280:
	.string	"pbuf_copy_partial"
.LASF14:
	.string	"long unsigned int"
.LASF77:
	.string	"ip4_addr_packed"
.LASF45:
	.string	"netif"
.LASF150:
	.string	"ra_header"
.LASF34:
	.string	"PBUF_ROM"
.LASF63:
	.string	"hwaddr"
.LASF159:
	.string	"prefix_length"
.LASF122:
	.string	"nd6_neighbor_cache_entry"
.LASF286:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/lwip/core/ipv6/nd6.c"
.LASF199:
	.string	"_chksum"
.LASF130:
	.string	"next_hop_addr"
.LASF141:
	.string	"ND6_DELAY"
.LASF81:
	.string	"u_addr"
.LASF38:
	.string	"payload"
.LASF131:
	.string	"pmtu"
.LASF69:
	.string	"loop_cnt_current"
.LASF239:
	.string	"accepted"
.LASF109:
	.string	"netif_mld_mac_filter_fn"
.LASF247:
	.string	"nd6_input"
.LASF189:
	.string	"ICMP6_TYPE_RSV_INF"
.LASF180:
	.string	"ICMP6_TYPE_RA"
.LASF183:
	.string	"ICMP6_TYPE_RD"
.LASF9:
	.string	"__uint32_t"
.LASF110:
	.string	"dhcp_event_fn"
.LASF283:
	.string	"pbuf_ref"
.LASF268:
	.string	"prefix_list"
.LASF263:
	.string	"ip6_addr_any"
.LASF10:
	.string	"long long int"
.LASF179:
	.string	"ICMP6_TYPE_RS"
.LASF126:
	.string	"counter"
.LASF243:
	.string	"mtu_opt"
.LASF78:
	.string	"ip4_addr_t"
.LASF50:
	.string	"ipv6_addr_cb"
.LASF47:
	.string	"netmask"
.LASF106:
	.string	"netif_output_ip6_fn"
.LASF208:
	.string	"nd6_find_neighbor_cache_entry"
.LASF149:
	.string	"rs_header"
.LASF259:
	.string	"nd6_cached_neighbor_index"
.LASF134:
	.string	"invalidation_timer"
.LASF148:
	.string	"na_header"
.LASF285:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF225:
	.string	"lladdr_opt_len"
.LASF236:
	.string	"router_index"
.LASF72:
	.string	"addr"
.LASF169:
	.string	"ICMP6_TYPE_TE"
.LASF205:
	.string	"current_ip_header_tot_len"
.LASF102:
	.string	"memp_desc"
.LASF0:
	.string	"unsigned int"
.LASF114:
	.string	"_plen"
.LASF246:
	.string	"icmp6hdr"
.LASF24:
	.string	"u16_t"
.LASF237:
	.string	"neighbor_index"
.LASF29:
	.string	"PBUF_IP"
.LASF73:
	.string	"ip6_addr_packed"
.LASF60:
	.string	"rs_count"
.LASF104:
	.string	"netif_input_fn"
.LASF232:
	.string	"nd6_free_neighbor_cache_entry"
.LASF113:
	.string	"_v_tc_fl"
.LASF242:
	.string	"offset"
.LASF255:
	.string	"copy_needed"
.LASF107:
	.string	"netif_linkoutput_fn"
.LASF105:
	.string	"netif_output_fn"
.LASF175:
	.string	"ICMP6_TYPE_EREP"
.LASF174:
	.string	"ICMP6_TYPE_EREQ"
.LASF39:
	.string	"tot_len"
.LASF256:
	.string	"new_entry"
.LASF143:
	.string	"ns_header"
.LASF82:
	.string	"ip_addr_t"
.LASF170:
	.string	"ICMP6_TYPE_PP"
.LASF221:
	.string	"na_hdr"
.LASF27:
	.string	"err_t"
.LASF145:
	.string	"chksum"
.LASF54:
	.string	"output_ip6"
.LASF257:
	.string	"nd6_get_destination_mtu"
.LASF128:
	.string	"nd6_destination_cache_entry"
.LASF3:
	.string	"__int8_t"
.LASF274:
	.string	"ip6_chksum_pseudo"
.LASF103:
	.string	"size"
.LASF188:
	.string	"ICMP6_TYPE_PE4"
.LASF68:
	.string	"loop_last"
.LASF11:
	.string	"long long unsigned int"
.LASF84:
	.string	"MEMP_UDP_PCB"
.LASF96:
	.string	"MEMP_ND6_QUEUE"
.LASF87:
	.string	"MEMP_TCP_SEG"
.LASF19:
	.string	"uint16_t"
.LASF168:
	.string	"ICMP6_TYPE_PTB"
.LASF152:
	.string	"router_lifetime"
.LASF91:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF273:
	.string	"pbuf_alloc"
.LASF118:
	.string	"reachable_time"
.LASF48:
	.string	"ip6_addr"
.LASF235:
	.string	"nd6_new_router"
.LASF95:
	.string	"MEMP_NETDB"
.LASF61:
	.string	"hostname"
.LASF223:
	.string	"src_addr"
.LASF214:
	.string	"router_addr"
.LASF6:
	.string	"__int16_t"
.LASF270:
	.string	"ip_data"
.LASF258:
	.string	"nd6_reachability_hint"
.LASF249:
	.string	"nd6_tmr"
.LASF271:
	.string	"pbuf_free"
.LASF117:
	.string	"dest"
.LASF101:
	.string	"MEMP_MAX"
.LASF240:
	.string	"ra_hdr"
.LASF284:
	.string	"malloc"
.LASF234:
	.string	"time"
.LASF163:
	.string	"site_prefix_length"
.LASF144:
	.string	"code"
.LASF26:
	.string	"u32_t"
.LASF224:
	.string	"dest_addr"
.LASF121:
	.string	"stale_time"
.LASF204:
	.string	"current_ip6_header"
.LASF156:
	.string	"lladdr_option"
.LASF142:
	.string	"ND6_PROBE"
.LASF74:
	.string	"ip6_addr_t"
.LASF233:
	.string	"nd6_new_neighbor_cache_entry"
.LASF287:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\lwip"
.LASF116:
	.string	"_hoplim"
.LASF64:
	.string	"name"
.LASF99:
	.string	"MEMP_PBUF"
.LASF178:
	.string	"ICMP6_TYPE_MLD"
.LASF151:
	.string	"current_hop_limit"
.LASF173:
	.string	"ICMP6_TYPE_RSV_ERR"
.LASF7:
	.string	"short int"
.LASF138:
	.string	"ND6_INCOMPLETE"
.LASF177:
	.string	"ICMP6_TYPE_MLR"
.LASF266:
	.string	"neighbor_cache"
.LASF161:
	.string	"preferred_lifetime"
.LASF147:
	.string	"target_address"
.LASF251:
	.string	"nd6_select_router"
.LASF18:
	.string	"int16_t"
.LASF140:
	.string	"ND6_STALE"
.LASF219:
	.string	"nd6_send_na"
.LASF275:
	.string	"ip6_output_if"
.LASF56:
	.string	"dhcp"
.LASF136:
	.string	"neighbor_entry"
.LASF228:
	.string	"nd6_send_ns"
.LASF125:
	.string	"isrouter"
.LASF227:
	.string	"rs_hdr"
.LASF162:
	.string	"reserved2"
.LASF66:
	.string	"mld_mac_filter"
.LASF281:
	.string	"mld6_joingroup"
.LASF31:
	.string	"PBUF_RAW_TX"
.LASF25:
	.string	"s16_t"
.LASF288:
	.string	"memcpy"
.LASF115:
	.string	"_nexth"
.LASF153:
	.string	"retrans_timer"
.LASF93:
	.string	"MEMP_IGMP_GROUP"
.LASF80:
	.string	"_ip_addr"
.LASF20:
	.string	"uint32_t"
.LASF245:
	.string	"redir_hdr"
.LASF28:
	.string	"PBUF_TRANSPORT"
.LASF155:
	.string	"destination_address"
.LASF220:
	.string	"target_addr"
.LASF58:
	.string	"dhcp_event"
.LASF146:
	.string	"reserved"
.LASF124:
	.string	"lladdr"
.LASF272:
	.string	"free"
.LASF160:
	.string	"valid_lifetime"
.LASF1:
	.string	"short unsigned int"
.LASF23:
	.string	"s8_t"
.LASF215:
	.string	"nd6_get_onlink_prefix"
.LASF22:
	.string	"u8_t"
.LASF176:
	.string	"ICMP6_TYPE_MLQ"
.LASF33:
	.string	"PBUF_RAM"
.LASF32:
	.string	"PBUF_RAW"
.LASF226:
	.string	"nd6_send_rs"
.LASF37:
	.string	"next"
.LASF191:
	.string	"data"
.LASF192:
	.string	"ip_hdr"
.LASF86:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF238:
	.string	"msg_type"
.LASF164:
	.string	"mtu_option"
.LASF30:
	.string	"PBUF_LINK"
.LASF92:
	.string	"MEMP_ARP_QUEUE"
.LASF212:
	.string	"nd6_is_prefix_in_netif"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
