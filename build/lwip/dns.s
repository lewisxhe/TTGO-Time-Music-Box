	.file	"dns.c"
	.text
.Ltext0:
	.section	.text.dns_stricmp,"ax",@progbits
	.align	4
	.type	dns_stricmp, @function
dns_stricmp:
.LFB15:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/core/dns.c"
	.loc 1 338 0
.LVL0:
	entry	sp, 32
.LCFI0:
.L4:
	.loc 1 342 0
	addi.n	a12, a2, 1
.LVL1:
	l8ui	a10, a2, 0
.LVL2:
	.loc 1 343 0
	addi.n	a11, a3, 1
.LVL3:
	l8ui	a3, a3, 0
.LVL4:
	.loc 1 344 0
	beq	a10, a3, .L2
.LBB2:
	.loc 1 345 0
	movi.n	a8, 0x20
	or	a8, a10, a8
	extui	a8, a8, 0, 8
.LVL5:
	.loc 1 346 0
	addi	a2, a8, -97
.LVL6:
	extui	a2, a2, 0, 8
	movi.n	a9, 0x19
	bltu	a9, a2, .L5
.LBB3:
	.loc 1 349 0
	movi.n	a9, 0x20
	or	a9, a3, a9
	extui	a9, a9, 0, 8
.LVL7:
	.loc 1 350 0
	bne	a8, a9, .L6
.LVL8:
.L2:
.LBE3:
.LBE2:
	.loc 1 342 0
	mov.n	a2, a12
	.loc 1 343 0
	mov.n	a3, a11
	.loc 1 360 0
	bnez.n	a10, .L4
.LVL9:
	.loc 1 361 0
	movi.n	a2, 0
.LVL10:
	retw.n
.LVL11:
.L5:
.LBB5:
	.loc 1 357 0
	movi.n	a2, 1
	retw.n
.LVL12:
.L6:
.LBB4:
	.loc 1 353 0
	movi.n	a2, 1
.LBE4:
.LBE5:
	.loc 1 362 0
	retw.n
.LFE15:
	.size	dns_stricmp, .-dns_stricmp
	.section	.text.dns_lookup,"ax",@progbits
	.literal_position
	.literal .LC0, dns_table
	.align	4
	.type	dns_lookup, @function
dns_lookup:
.LFB21:
	.loc 1 623 0
.LVL13:
	entry	sp, 32
.LCFI1:
.LVL14:
	.loc 1 639 0
	movi.n	a5, 0
	j	.L8
.LVL15:
.L14:
	.loc 1 640 0
	mov.n	a6, a5
	addx8	a9, a5, a5
	addx8	a9, a9, a5
	slli	a8, a9, 2
	l32r	a9, .LC0
	add.n	a8, a9, a8
	l8ui	a8, a8, 26
	bnei	a8, 3, .L9
	.loc 1 641 0 discriminator 1
	addx8	a8, a5, a5
	addx8	a8, a8, a5
	slli	a11, a8, 2
	addi	a11, a11, 32
	add.n	a11, a9, a11
	mov.n	a10, a2
	call8	dns_stricmp
.LVL16:
	.loc 1 640 0 discriminator 1
	bnez.n	a10, .L9
	.loc 1 642 0
	addx8	a9, a5, a5
	addx8	a9, a9, a5
	slli	a8, a9, 2
	l32r	a9, .LC0
	add.n	a8, a9, a8
	l8ui	a11, a8, 20
	.loc 1 641 0
	bnei	a11, 6, .L10
	.loc 1 642 0 discriminator 1
	addi	a8, a4, -3
	movi.n	a12, 1
	movi.n	a9, 0
	mov.n	a10, a9
	moveqz	a10, a12, a8
	mov.n	a8, a10
	addi.n	a10, a4, -1
	moveqz	a9, a12, a10
	or	a8, a9, a8
	j	.L11
.L10:
	.loc 1 642 0 is_stmt 0 discriminator 2
	addi	a9, a4, -3
	movi.n	a12, 1
	movi.n	a8, 0
	mov.n	a10, a8
	movnez	a10, a12, a9
	mov.n	a9, a10
	addi.n	a10, a4, -1
	movnez	a8, a12, a10
	and	a8, a8, a9
.L11:
	.loc 1 641 0 is_stmt 1 discriminator 4
	beqz.n	a8, .L9
	.loc 1 646 0
	beqz.n	a3, .L15
	.loc 1 647 0
	s8i	a11, a3, 16
	addx8	a4, a6, a6
.LVL17:
	addx8	a4, a4, a6
	slli	a2, a4, 2
.LVL18:
	l32r	a4, .LC0
	add.n	a2, a4, a2
	l8ui	a2, a2, 20
	bnei	a2, 6, .L13
	.loc 1 647 0 is_stmt 0 discriminator 1
	mov.n	a5, a4
.LVL19:
	addx8	a2, a6, a6
	slli	a2, a2, 3
	add.n	a8, a2, a6
	slli	a4, a8, 2
	add.n	a4, a5, a4
	l32i.n	a8, a4, 4
	s32i.n	a8, a3, 0
	l32i.n	a8, a4, 8
	s32i.n	a8, a3, 4
	l32i.n	a4, a4, 12
	s32i.n	a4, a3, 8
	add.n	a6, a2, a6
.LVL20:
	slli	a2, a6, 2
	mov.n	a6, a2
	add.n	a2, a5, a2
	l32i.n	a2, a2, 16
	s32i.n	a2, a3, 12
	.loc 1 649 0 is_stmt 1 discriminator 1
	movi.n	a2, 0
	retw.n
.LVL21:
.L13:
	.loc 1 647 0 discriminator 2
	addx8	a2, a6, a6
	addx8	a6, a2, a6
	slli	a2, a6, 2
	mov.n	a6, a2
	l32r	a4, .LC0
	add.n	a2, a4, a2
	l32i.n	a2, a2, 4
	s32i.n	a2, a3, 0
	.loc 1 649 0 discriminator 2
	movi.n	a2, 0
	retw.n
.LVL22:
.L9:
	.loc 1 639 0 discriminator 2
	addi.n	a5, a5, 1
.LVL23:
	extui	a5, a5, 0, 8
.LVL24:
.L8:
	.loc 1 639 0 is_stmt 0 discriminator 1
	bltui	a5, 4, .L14
	.loc 1 653 0 is_stmt 1
	movi	a2, 0xf1
.LVL25:
	retw.n
.LVL26:
.L15:
	.loc 1 649 0
	movi.n	a2, 0
.LVL27:
	.loc 1 654 0
	retw.n
.LFE21:
	.size	dns_lookup, .-dns_lookup
	.section	.text.dns_server_is_set,"ax",@progbits
	.literal_position
	.literal .LC1, dns_servers
	.align	4
	.type	dns_server_is_set, @function
dns_server_is_set:
.LFB34:
	.loc 1 1437 0
	entry	sp, 32
.LCFI2:
.LVL28:
	.loc 1 1439 0
	movi.n	a8, 0
	j	.L17
.LVL29:
.L22:
	.loc 1 1440 0
	addx4	a9, a8, a8
	slli	a2, a9, 2
	l32r	a9, .LC1
	add.n	a2, a9, a2
	l8ui	a2, a2, 16
	bnei	a2, 6, .L18
	.loc 1 1440 0 is_stmt 0 discriminator 1
	addx4	a9, a8, a8
	slli	a2, a9, 2
	l32r	a9, .LC1
	add.n	a2, a9, a2
	l32i.n	a2, a2, 0
	bnez.n	a2, .L23
	.loc 1 1440 0 discriminator 4
	addx4	a9, a8, a8
	slli	a2, a9, 2
	l32r	a9, .LC1
	add.n	a2, a9, a2
	l32i.n	a2, a2, 4
	bnez.n	a2, .L24
	.loc 1 1440 0 discriminator 6
	addx4	a9, a8, a8
	slli	a2, a9, 2
	l32r	a9, .LC1
	add.n	a2, a9, a2
	l32i.n	a2, a2, 8
	bnez.n	a2, .L25
	.loc 1 1440 0 discriminator 8
	addx4	a9, a8, a8
	slli	a2, a9, 2
	l32r	a9, .LC1
	add.n	a2, a9, a2
	l32i.n	a2, a2, 12
	beqz.n	a2, .L26
	.loc 1 1440 0
	movi.n	a2, 1
	j	.L20
.L23:
	movi.n	a2, 1
	j	.L20
.L24:
	movi.n	a2, 1
	j	.L20
.L25:
	movi.n	a2, 1
	j	.L20
.L26:
	movi.n	a2, 0
	j	.L20
.L18:
	.loc 1 1440 0 discriminator 2
	addx4	a9, a8, a8
	slli	a2, a9, 2
	l32r	a9, .LC1
	add.n	a2, a9, a2
	l32i.n	a9, a2, 0
	movi.n	a2, 0
	movi.n	a10, 1
	movnez	a2, a10, a9
	extui	a2, a2, 0, 8
.L20:
	.loc 1 1440 0 discriminator 14
	bnez.n	a2, .L21
	.loc 1 1439 0 is_stmt 1 discriminator 2
	addi.n	a8, a8, 1
.LVL30:
.L17:
	.loc 1 1439 0 is_stmt 0 discriminator 1
	blti	a8, 3, .L22
	.loc 1 1444 0 is_stmt 1
	movi.n	a2, 0
.L21:
	.loc 1 1445 0
	retw.n
.LFE34:
	.size	dns_server_is_set, .-dns_server_is_set
	.section	.text.dns_create_txid,"ax",@progbits
	.literal_position
	.literal .LC2, dns_table
	.align	4
	.type	dns_create_txid, @function
dns_create_txid:
.LFB28:
	.loc 1 946 0
.L28:
	entry	sp, 32
.LCFI3:
.L31:
	.loc 1 951 0
	call8	esp_random
.LVL31:
	extui	a2, a10, 0, 16
.LVL32:
	.loc 1 954 0
	movi.n	a8, 0
	j	.L29
.LVL33:
.L32:
	.loc 1 955 0
	addx8	a11, a8, a8
	addx8	a11, a11, a8
	slli	a9, a11, 2
	l32r	a11, .LC2
	add.n	a9, a11, a9
	l8ui	a9, a9, 26
	bnei	a9, 2, .L30
	.loc 1 956 0 discriminator 1
	addx8	a11, a8, a8
	addx8	a11, a11, a8
	slli	a9, a11, 2
	l32r	a10, .LC2
	add.n	a9, a10, a9
	l16ui	a9, a9, 24
	.loc 1 955 0 discriminator 1
	beq	a2, a9, .L31
.L30:
	.loc 1 954 0 discriminator 2
	addi.n	a8, a8, 1
.LVL34:
	extui	a8, a8, 0, 8
.LVL35:
.L29:
	.loc 1 954 0 is_stmt 0 discriminator 1
	bltui	a8, 4, .L32
	.loc 1 963 0 is_stmt 1
	retw.n
.LFE28:
	.size	dns_create_txid, .-dns_create_txid
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC4:
	.string	"invalid response"
	.align	4
.LC7:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/lwip/core/dns.c"
	.section	.text.dns_call_found,"ax",@progbits
	.literal_position
	.literal .LC3, dns_table
	.literal .LC5, .LC4
	.literal .LC6, __func__$6466
	.literal .LC8, .LC7
	.literal .LC9, dns_requests
	.literal .LC10, dns_pcbs
	.align	4
	.type	dns_call_found, @function
dns_call_found:
.LFB27:
	.loc 1 888 0
.LVL36:
	entry	sp, 32
.LCFI4:
	.loc 1 894 0
	beqz.n	a3, .L34
	.loc 1 896 0
	l8ui	a4, a3, 16
	bnei	a4, 6, .L35
	.loc 1 897 0
	addx8	a5, a2, a2
	addx8	a5, a5, a2
	slli	a4, a5, 2
	l32r	a5, .LC3
	add.n	a4, a5, a4
	movi	a5, 0x120
	add.n	a4, a4, a5
	l8ui	a4, a4, 0
	addi	a6, a4, -3
	movi.n	a8, 1
	movi.n	a7, 0
	mov.n	a5, a7
	movnez	a5, a8, a6
	mov.n	a6, a5
	addi.n	a5, a4, -1
	mov.n	a4, a7
	movnez	a4, a8, a5
	bnone	a6, a4, .L36
	.loc 1 897 0 is_stmt 0 discriminator 1
	l32r	a13, .LC5
	l32r	a12, .LC6
	movi	a11, 0x381
	l32r	a10, .LC8
	call8	__assert_func
.LVL37:
.L36:
	.loc 1 898 0 is_stmt 1
	addx8	a5, a2, a2
	addx8	a5, a5, a2
	slli	a4, a5, 2
	l32r	a5, .LC3
	add.n	a4, a5, a4
	movi	a5, 0x120
	add.n	a4, a4, a5
	movi.n	a5, 1
	s8i	a5, a4, 0
	j	.L34
.L35:
	.loc 1 900 0
	addx8	a5, a2, a2
	addx8	a5, a5, a2
	slli	a4, a5, 2
	l32r	a5, .LC3
	add.n	a4, a5, a4
	movi	a5, 0x120
	add.n	a4, a4, a5
	l8ui	a4, a4, 0
	addi	a6, a4, -3
	movi.n	a8, 1
	movi.n	a7, 0
	mov.n	a5, a7
	moveqz	a5, a8, a6
	mov.n	a6, a5
	addi.n	a5, a4, -1
	mov.n	a4, a7
	moveqz	a4, a8, a5
	or	a4, a6, a4
	beq	a4, a7, .L37
	.loc 1 900 0 is_stmt 0 discriminator 1
	l32r	a13, .LC5
	l32r	a12, .LC6
	movi	a11, 0x384
	l32r	a10, .LC8
	call8	__assert_func
.LVL38:
.L37:
	.loc 1 901 0 is_stmt 1
	addx8	a5, a2, a2
	addx8	a5, a5, a2
	slli	a4, a5, 2
	l32r	a5, .LC3
	add.n	a4, a5, a4
	movi	a5, 0x120
	add.n	a4, a4, a5
	movi.n	a5, 0
	s8i	a5, a4, 0
.L34:
	.loc 1 888 0 discriminator 1
	movi.n	a4, 0
	j	.L38
.LVL39:
.L40:
	.loc 1 908 0
	mov.n	a5, a4
	addx2	a9, a4, a4
	slli	a8, a9, 2
	l32r	a9, .LC9
	add.n	a8, a9, a8
	l32i.n	a13, a8, 0
	beqz.n	a13, .L39
	.loc 1 908 0 is_stmt 0 discriminator 1
	addx2	a9, a4, a4
	slli	a8, a9, 2
	l32r	a6, .LC9
	add.n	a8, a6, a8
	l8ui	a6, a8, 8
	bne	a2, a6, .L39
	.loc 1 909 0 is_stmt 1
	addx8	a6, a2, a2
	addx8	a6, a6, a2
	slli	a10, a6, 2
	addi	a10, a10, 32
	l32r	a6, .LC9
	slli	a7, a4, 1
	add.n	a9, a7, a4
	slli	a8, a9, 2
	add.n	a8, a6, a8
	l32i.n	a12, a8, 4
	mov.n	a11, a3
	l32r	a8, .LC3
	add.n	a10, a8, a10
	callx8	a13
.LVL40:
	.loc 1 911 0
	add.n	a5, a7, a4
	slli	a7, a5, 2
	add.n	a6, a6, a7
	movi.n	a5, 0
	s32i.n	a5, a6, 0
.L39:
	.loc 1 907 0 discriminator 2
	addi.n	a4, a4, 1
.LVL41:
	extui	a4, a4, 0, 8
.LVL42:
.L38:
	.loc 1 907 0 is_stmt 0 discriminator 1
	bltui	a4, 4, .L40
	movi.n	a4, 0
.LVL43:
	j	.L41
.LVL44:
.L44:
	.loc 1 923 0 is_stmt 1
	beq	a4, a2, .L42
	.loc 1 926 0
	addx8	a5, a4, a4
	addx8	a5, a5, a4
	slli	a3, a5, 2
	l32r	a5, .LC3
	add.n	a3, a5, a3
	l8ui	a3, a3, 26
	bnei	a3, 2, .L42
	.loc 1 927 0
	mov.n	a7, a5
	addx8	a6, a4, a4
	addx8	a6, a6, a4
	slli	a5, a6, 2
	add.n	a5, a7, a5
	l8ui	a6, a5, 31
	addx8	a5, a2, a2
	addx8	a5, a5, a2
	slli	a3, a5, 2
	mov.n	a5, a3
	add.n	a3, a7, a3
	l8ui	a3, a3, 31
	bne	a6, a3, .L42
	.loc 1 929 0
	add.n	a3, a7, a5
	movi.n	a4, 4
.LVL45:
	s8i	a4, a3, 31
	.loc 1 930 0
	j	.L43
.LVL46:
.L42:
	.loc 1 922 0 discriminator 2
	addi.n	a4, a4, 1
.LVL47:
	extui	a4, a4, 0, 8
.LVL48:
.L41:
	.loc 1 922 0 is_stmt 0 discriminator 1
	bltui	a4, 4, .L44
.LVL49:
.L43:
	.loc 1 934 0 is_stmt 1
	addx8	a4, a2, a2
	addx8	a4, a4, a2
	slli	a3, a4, 2
	l32r	a4, .LC3
	add.n	a3, a4, a3
	l8ui	a3, a3, 31
	bgeui	a3, 4, .L33
	.loc 1 936 0
	l32r	a5, .LC10
	addx4	a3, a3, a5
	l32i.n	a10, a3, 0
	call8	udp_remove
.LVL50:
	.loc 1 937 0
	l32r	a7, .LC3
	addx8	a4, a2, a2
	slli	a4, a4, 3
	add.n	a3, a4, a2
	slli	a6, a3, 2
	add.n	a6, a7, a6
	l8ui	a6, a6, 31
	addx4	a5, a6, a5
	movi.n	a3, 0
	s32i.n	a3, a5, 0
	.loc 1 938 0
	add.n	a2, a4, a2
.LVL51:
	slli	a3, a2, 2
	add.n	a3, a7, a3
	movi.n	a2, 4
	s8i	a2, a3, 31
.L33:
	retw.n
.LFE27:
	.size	dns_call_found, .-dns_call_found
	.section	.rodata.str1.4
	.align	4
.LC12:
	.string	"dns server out of array"
	.section	.text.dns_send,"ax",@progbits
	.literal_position
	.literal .LC11, dns_table
	.literal .LC13, .LC12
	.literal .LC14, __func__$6434
	.literal .LC15, .LC7
	.literal .LC16, dns_servers
	.literal .LC17, 7168
	.literal .LC18, dns_pcbs
	.align	4
	.type	dns_send, @function
dns_send:
.LFB24:
	.loc 1 734 0
.LVL52:
	entry	sp, 64
.LCFI5:
	s32i.n	a2, sp, 16
.LVL53:
	.loc 1 747 0
	addx8	a3, a2, a2
	addx8	a3, a3, a2
	slli	a2, a3, 2
.LVL54:
	l32r	a3, .LC11
	add.n	a2, a3, a2
	l8ui	a2, a2, 27
	bltui	a2, 3, .L47
	.loc 1 747 0 is_stmt 0 discriminator 1
	l32r	a13, .LC13
	l32r	a12, .LC14
	movi	a11, 0x2eb
	l32r	a10, .LC15
	call8	__assert_func
.LVL55:
.L47:
	.loc 1 748 0 is_stmt 1
	addx4	a4, a2, a2
	slli	a3, a4, 2
	l32r	a4, .LC16
	add.n	a3, a4, a3
	l8ui	a3, a3, 16
	bnei	a3, 6, .L48
	.loc 1 748 0 is_stmt 0 discriminator 1
	addx4	a4, a2, a2
	slli	a3, a4, 2
	l32r	a4, .LC16
	add.n	a3, a4, a3
	l32i.n	a3, a3, 0
	bnez.n	a3, .L57
	.loc 1 748 0 discriminator 3
	addx4	a4, a2, a2
	slli	a3, a4, 2
	l32r	a4, .LC16
	add.n	a3, a4, a3
	l32i.n	a3, a3, 4
	bnez.n	a3, .L58
	.loc 1 748 0 discriminator 5
	addx4	a4, a2, a2
	slli	a3, a4, 2
	l32r	a4, .LC16
	add.n	a3, a4, a3
	l32i.n	a3, a3, 8
	bnez.n	a3, .L59
	.loc 1 748 0 discriminator 7
	addx4	a2, a2, a2
	slli	a3, a2, 2
	add.n	a3, a4, a3
	l32i.n	a2, a3, 12
	beqz.n	a2, .L60
	.loc 1 748 0
	movi.n	a2, 0
	j	.L50
.L57:
	movi.n	a2, 0
	j	.L50
.L58:
	movi.n	a2, 0
	j	.L50
.L59:
	movi.n	a2, 0
	j	.L50
.L60:
	movi.n	a2, 1
	j	.L50
.L48:
	.loc 1 748 0 discriminator 2
	addx4	a2, a2, a2
	slli	a3, a2, 2
	l32r	a2, .LC16
	add.n	a3, a2, a3
	l32i.n	a3, a3, 0
	movi.n	a2, 0
	movi.n	a4, 1
	moveqz	a2, a4, a3
	extui	a2, a2, 0, 8
.L50:
	.loc 1 748 0 discriminator 14
	bnez.n	a2, .L61
	.loc 1 753 0 is_stmt 1
	l32i.n	a2, sp, 16
	addx8	a3, a2, a2
	addx8	a3, a3, a2
	slli	a2, a3, 2
	addi	a2, a2, 32
	l32r	a3, .LC11
	add.n	a3, a2, a3
	mov.n	a10, a3
	call8	strlen
.LVL56:
	addi	a10, a10, 18
	movi.n	a12, 0
	extui	a11, a10, 0, 16
	mov.n	a10, a12
	call8	pbuf_alloc
.LVL57:
	mov.n	a6, a10
.LVL58:
	.loc 1 755 0
	beqz.n	a10, .L62
	.loc 1 757 0
	movi.n	a2, 0
	s32i.n	a2, sp, 0
	s32i.n	a2, sp, 4
	s32i.n	a2, sp, 8
	.loc 1 758 0
	l32i.n	a2, sp, 16
	addx8	a4, a2, a2
	addx8	a4, a4, a2
	slli	a2, a4, 2
	l32r	a4, .LC11
	add.n	a2, a4, a2
	l16ui	a10, a2, 24
	call8	lwip_htons
.LVL59:
	s16i	a10, sp, 0
	.loc 1 759 0
	movi.n	a2, 1
	s8i	a2, sp, 2
	.loc 1 760 0
	movi	a2, 0x100
	s16i	a2, sp, 4
	.loc 1 761 0
	movi.n	a12, 0xc
	mov.n	a11, sp
	mov.n	a10, a6
	call8	pbuf_take
.LVL60:
	.loc 1 763 0
	addi.n	a3, a3, -1
.LVL61:
	.loc 1 766 0
	movi.n	a4, 0xc
.LVL62:
.L54:
	.loc 1 768 0
	addi.n	a3, a3, 1
.LVL63:
	mov.n	a5, a3
	.loc 1 770 0
	movi.n	a2, 0
	j	.L52
.LVL64:
.L53:
	.loc 1 771 0 discriminator 3
	addi.n	a2, a2, 1
.LVL65:
	extui	a2, a2, 0, 8
.LVL66:
	.loc 1 770 0 discriminator 3
	addi.n	a3, a3, 1
.LVL67:
.L52:
	.loc 1 770 0 is_stmt 0 discriminator 1
	l8ui	a7, a3, 0
	addi	a8, a7, -46
	movi.n	a10, 1
	movi.n	a9, 0
	mov.n	a11, a9
	movnez	a11, a10, a8
	movnez	a9, a10, a7
	bany	a11, a9, .L53
	.loc 1 773 0 is_stmt 1
	sub	a7, a3, a5
.LVL68:
	.loc 1 774 0
	mov.n	a12, a2
	mov.n	a11, a4
	mov.n	a10, a6
	call8	pbuf_put_at
.LVL69:
	.loc 1 775 0
	addi.n	a13, a4, 1
	extui	a13, a13, 0, 16
	extui	a12, a7, 0, 16
	mov.n	a11, a5
	mov.n	a10, a6
	call8	pbuf_take_at
.LVL70:
	.loc 1 776 0
	add.n	a2, a4, a2
.LVL71:
	extui	a2, a2, 0, 16
	addi.n	a4, a2, 1
.LVL72:
	extui	a4, a4, 0, 16
.LVL73:
	.loc 1 777 0
	l8ui	a5, a3, 0
	bnez.n	a5, .L54
	.loc 1 778 0
	movi.n	a12, 0
	mov.n	a11, a4
	mov.n	a10, a6
	call8	pbuf_put_at
.LVL74:
	.loc 1 779 0
	addi.n	a2, a2, 2
	extui	a13, a2, 0, 16
.LVL75:
	.loc 1 782 0
	l32i.n	a2, sp, 16
.LVL76:
	addx8	a3, a2, a2
.LVL77:
	addx8	a3, a3, a2
	slli	a2, a3, 2
	l32r	a3, .LC11
	add.n	a2, a3, a2
	movi	a3, 0x120
	add.n	a2, a2, a3
	l8ui	a2, a2, 0
	addi	a4, a2, -3
	movi.n	a7, 1
.LVL78:
	mov.n	a3, a5
	moveqz	a3, a7, a4
	mov.n	a4, a3
	addi.n	a3, a2, -1
	mov.n	a2, a5
	moveqz	a2, a7, a3
	or	a2, a4, a2
	beq	a2, a5, .L55
	.loc 1 783 0
	l32r	a4, .LC17
	s16i	a4, sp, 12
	j	.L56
.L55:
	.loc 1 785 0
	movi	a2, 0x100
	s16i	a2, sp, 12
.L56:
	.loc 1 787 0
	movi	a2, 0x100
	s16i	a2, sp, 14
	.loc 1 788 0
	movi.n	a12, 4
	addi.n	a11, sp, 12
	mov.n	a10, a6
	call8	pbuf_take_at
.LVL79:
	.loc 1 791 0
	l32r	a5, .LC11
	l32i.n	a3, sp, 16
	addx8	a2, a3, a3
	slli	a2, a2, 3
	add.n	a3, a2, a3
	slli	a4, a3, 2
	add.n	a4, a5, a4
	l8ui	a4, a4, 31
.LVL80:
	.loc 1 798 0
	l32r	a3, .LC18
.LVL81:
	addx4	a4, a4, a3
	l32i.n	a3, sp, 16
	add.n	a2, a2, a3
.LVL82:
	slli	a3, a2, 2
.LVL83:
	add.n	a3, a5, a3
.LVL84:
	l8ui	a2, a3, 27
	addx4	a2, a2, a2
	slli	a3, a2, 2
.LVL85:
	movi.n	a13, 0x35
	l32r	a12, .LC16
	add.n	a12, a12, a3
	mov.n	a11, a6
	l32i.n	a10, a4, 0
	call8	udp_sendto
.LVL86:
	extui	a2, a10, 0, 8
.LVL87:
	.loc 1 801 0
	mov.n	a10, a6
.LVL88:
	call8	pbuf_free
.LVL89:
	retw.n
.LVL90:
.L61:
	.loc 1 749 0
	movi.n	a2, 0
	retw.n
.LVL91:
.L62:
	.loc 1 803 0
	movi	a2, 0xff
	.loc 1 807 0
	retw.n
.LFE24:
	.size	dns_send, .-dns_send
	.section	.rodata.str1.4
	.align	4
.LC19:
	.string	"array index out of bounds"
	.align	4
.LC25:
	.string	"unknown dns_table entry state:"
	.section	.text.dns_check_entry,"ax",@progbits
	.literal_position
	.literal .LC20, .LC19
	.literal .LC21, __func__$6488
	.literal .LC22, .LC7
	.literal .LC23, dns_table
	.literal .LC24, dns_servers
	.literal .LC26, .LC25
	.align	4
	.type	dns_check_entry, @function
dns_check_entry:
.LFB29:
	.loc 1 976 0
.LVL92:
	entry	sp, 32
.LCFI6:
.LVL93:
	.loc 1 980 0
	bltui	a2, 4, .L64
	.loc 1 980 0 is_stmt 0 discriminator 1
	l32r	a13, .LC20
	l32r	a12, .LC21
	movi	a11, 0x3d4
	l32r	a10, .LC22
	call8	__assert_func
.LVL94:
.L64:
	.loc 1 982 0 is_stmt 1
	addx8	a9, a2, a2
	addx8	a9, a9, a2
	slli	a8, a9, 2
	l32r	a9, .LC23
	add.n	a8, a9, a8
	l8ui	a8, a8, 26
	beqi	a8, 1, .L66
	beqz.n	a8, .L63
	beqi	a8, 2, .L68
	beqi	a8, 3, .L69
	j	.L90
.L66:
.LBB6:
	.loc 1 987 0
	call8	dns_create_txid
.LVL95:
	.loc 1 988 0
	addx8	a9, a2, a2
	slli	a9, a9, 3
	add.n	a9, a9, a2
	slli	a8, a9, 2
	l32r	a9, .LC23
	add.n	a8, a9, a8
	s16i	a10, a8, 24
	.loc 1 989 0
	movi.n	a9, 2
	s8i	a9, a8, 26
	.loc 1 990 0
	movi.n	a9, 0
	s8i	a9, a8, 27
	.loc 1 991 0
	movi.n	a10, 1
.LVL96:
	s8i	a10, a8, 28
	.loc 1 992 0
	s8i	a9, a8, 29
	.loc 1 995 0
	mov.n	a10, a2
	call8	dns_send
.LVL97:
	retw.n
.L68:
.LBE6:
	.loc 1 1004 0
	addx8	a8, a2, a2
	slli	a8, a8, 3
	add.n	a8, a8, a2
	slli	a9, a8, 2
	l32r	a8, .LC23
	add.n	a9, a8, a9
	l8ui	a8, a9, 28
	addi.n	a8, a8, -1
	extui	a8, a8, 0, 8
	s8i	a8, a9, 28
	bnez.n	a8, .L63
	.loc 1 1005 0
	addx8	a8, a2, a2
	slli	a8, a8, 3
	add.n	a8, a8, a2
	slli	a9, a8, 2
	l32r	a8, .LC23
	add.n	a9, a8, a9
	l8ui	a8, a9, 29
	addi.n	a8, a8, 1
	extui	a8, a8, 0, 8
	s8i	a8, a9, 29
	bnei	a8, 4, .L91
	j	.L70
.L75:
	.loc 1 1008 0
	addx8	a10, a2, a2
	addx8	a10, a10, a2
	slli	a8, a10, 2
	l32r	a10, .LC23
	add.n	a8, a10, a8
	addi.n	a9, a9, 1
	s8i	a9, a8, 27
.L70:
	.loc 1 1007 0
	addx8	a9, a2, a2
	addx8	a9, a9, a2
	slli	a8, a9, 2
	l32r	a9, .LC23
	add.n	a8, a9, a8
	l8ui	a9, a8, 27
	addi.n	a8, a9, 1
	bgei	a8, 3, .L72
	.loc 1 1007 0 is_stmt 0 discriminator 1
	addx4	a11, a8, a8
	slli	a10, a11, 2
	l32r	a11, .LC24
	add.n	a10, a11, a10
	l8ui	a10, a10, 16
	bnei	a10, 6, .L73
	.loc 1 1007 0 discriminator 2
	addx4	a11, a8, a8
	slli	a10, a11, 2
	l32r	a11, .LC24
	add.n	a10, a11, a10
	l32i.n	a10, a10, 0
	bnez.n	a10, .L82
	.loc 1 1007 0 discriminator 4
	addx4	a11, a8, a8
	slli	a10, a11, 2
	l32r	a11, .LC24
	add.n	a10, a11, a10
	l32i.n	a10, a10, 4
	bnez.n	a10, .L83
	.loc 1 1007 0 discriminator 6
	addx4	a11, a8, a8
	slli	a10, a11, 2
	l32r	a11, .LC24
	add.n	a10, a11, a10
	l32i.n	a10, a10, 8
	bnez.n	a10, .L84
	.loc 1 1007 0 discriminator 8
	addx4	a11, a8, a8
	slli	a10, a11, 2
	l32r	a11, .LC24
	add.n	a10, a11, a10
	l32i.n	a10, a10, 12
	beqz.n	a10, .L85
	.loc 1 1007 0
	movi.n	a10, 0
	j	.L74
.L82:
	movi.n	a10, 0
	j	.L74
.L83:
	movi.n	a10, 0
	j	.L74
.L84:
	movi.n	a10, 0
	j	.L74
.L85:
	movi.n	a10, 1
.L74:
	.loc 1 1007 0 discriminator 13
	bnez.n	a10, .L75
	j	.L72
.L73:
	.loc 1 1007 0 discriminator 3
	addx4	a11, a8, a8
	slli	a10, a11, 2
	l32r	a11, .LC24
	add.n	a10, a11, a10
	l32i.n	a10, a10, 0
	beqz.n	a10, .L75
.L72:
	.loc 1 1011 0 is_stmt 1
	bgei	a8, 3, .L76
	.loc 1 1011 0 is_stmt 0 discriminator 1
	addx4	a11, a8, a8
	slli	a10, a11, 2
	l32r	a11, .LC24
	add.n	a10, a11, a10
	l8ui	a10, a10, 16
	bnei	a10, 6, .L77
	.loc 1 1011 0 discriminator 2
	addx4	a11, a8, a8
	slli	a10, a11, 2
	l32r	a11, .LC24
	add.n	a10, a11, a10
	l32i.n	a10, a10, 0
	bnez.n	a10, .L86
	.loc 1 1011 0 discriminator 5
	addx4	a11, a8, a8
	slli	a10, a11, 2
	l32r	a11, .LC24
	add.n	a10, a11, a10
	l32i.n	a10, a10, 4
	bnez.n	a10, .L87
	.loc 1 1011 0 discriminator 7
	addx4	a11, a8, a8
	slli	a10, a11, 2
	l32r	a11, .LC24
	add.n	a10, a11, a10
	l32i.n	a10, a10, 8
	bnez.n	a10, .L88
	.loc 1 1011 0 discriminator 9
	addx4	a8, a8, a8
	slli	a10, a8, 2
	add.n	a10, a11, a10
	l32i.n	a8, a10, 12
	beqz.n	a8, .L89
	.loc 1 1011 0
	movi.n	a8, 1
	j	.L78
.L86:
	movi.n	a8, 1
	j	.L78
.L87:
	movi.n	a8, 1
	j	.L78
.L88:
	movi.n	a8, 1
	j	.L78
.L89:
	movi.n	a8, 0
.L78:
	.loc 1 1011 0 discriminator 13
	bnez.n	a8, .L79
	j	.L76
.L77:
	.loc 1 1011 0 discriminator 3
	addx4	a8, a8, a8
	slli	a10, a8, 2
	l32r	a8, .LC24
	add.n	a10, a8, a10
	l32i.n	a8, a10, 0
	beqz.n	a8, .L76
.L79:
	.loc 1 1013 0 is_stmt 1
	addx8	a10, a2, a2
	slli	a10, a10, 3
	add.n	a10, a10, a2
	slli	a8, a10, 2
	l32r	a10, .LC23
	add.n	a8, a10, a8
	addi.n	a9, a9, 1
	s8i	a9, a8, 27
	.loc 1 1014 0
	movi.n	a9, 1
	s8i	a9, a8, 28
	.loc 1 1015 0
	movi.n	a9, 0
	s8i	a9, a8, 29
	j	.L80
.L76:
	.loc 1 1019 0
	movi.n	a11, 0
	mov.n	a10, a2
	call8	dns_call_found
.LVL98:
	.loc 1 1021 0
	addx8	a8, a2, a2
	addx8	a2, a8, a2
.LVL99:
	slli	a8, a2, 2
	l32r	a2, .LC23
	add.n	a8, a2, a8
	movi.n	a2, 0
	s8i	a2, a8, 26
	.loc 1 1022 0
	retw.n
.LVL100:
.L91:
	.loc 1 1026 0
	addx8	a10, a2, a2
	addx8	a10, a10, a2
	slli	a9, a10, 2
	l32r	a10, .LC23
	add.n	a9, a10, a9
	s8i	a8, a9, 28
.L80:
	.loc 1 1030 0
	mov.n	a10, a2
	call8	dns_send
.LVL101:
	retw.n
.L69:
	.loc 1 1039 0
	addx8	a9, a2, a2
	addx8	a9, a9, a2
	slli	a8, a9, 2
	l32r	a9, .LC23
	add.n	a8, a9, a8
	l32i.n	a8, a8, 0
	beqz.n	a8, .L81
	.loc 1 1039 0 is_stmt 0 discriminator 1
	addi.n	a8, a8, -1
	addx8	a10, a2, a2
	addx8	a10, a10, a2
	slli	a9, a10, 2
	l32r	a10, .LC23
	add.n	a9, a10, a9
	s32i.n	a8, a9, 0
	bnez.n	a8, .L63
.L81:
	.loc 1 1042 0 is_stmt 1
	addx8	a8, a2, a2
	addx8	a2, a8, a2
.LVL102:
	slli	a8, a2, 2
	l32r	a2, .LC23
	add.n	a8, a2, a8
	movi.n	a2, 0
	s8i	a2, a8, 26
	retw.n
.LVL103:
.L90:
	.loc 1 1049 0 discriminator 1
	l32r	a13, .LC26
	l32r	a12, .LC21
	movi	a11, 0x419
	l32r	a10, .LC22
	call8	__assert_func
.LVL104:
.L63:
	retw.n
.LFE29:
	.size	dns_check_entry, .-dns_check_entry
	.section	.text.dns_check_entries,"ax",@progbits
	.align	4
	.type	dns_check_entries, @function
dns_check_entries:
.LFB30:
	.loc 1 1059 0
	entry	sp, 32
.LCFI7:
.LVL105:
	.loc 1 1062 0
	movi.n	a2, 0
	j	.L93
.LVL106:
.L94:
	.loc 1 1063 0 discriminator 3
	mov.n	a10, a2
	call8	dns_check_entry
.LVL107:
	.loc 1 1062 0 discriminator 3
	addi.n	a2, a2, 1
.LVL108:
	extui	a2, a2, 0, 8
.LVL109:
.L93:
	.loc 1 1062 0 is_stmt 0 discriminator 1
	bltui	a2, 4, .L94
	.loc 1 1065 0 is_stmt 1
	retw.n
.LFE30:
	.size	dns_check_entries, .-dns_check_entries
	.section	.text.dns_alloc_random_port,"ax",@progbits
	.literal_position
	.literal .LC27, ip_addr_any_type
	.literal .LC28, dns_recv
	.align	4
	.type	dns_alloc_random_port, @function
dns_alloc_random_port:
.LFB25:
	.loc 1 812 0
	entry	sp, 32
.LCFI8:
	.loc 1 816 0
	movi.n	a10, 0x2e
	call8	udp_new_ip_type
.LVL110:
	mov.n	a2, a10
.LVL111:
	.loc 1 817 0
	beqz.n	a10, .L100
.L98:
.LBB7:
	.loc 1 822 0
	call8	esp_random
.LVL112:
	extui	a8, a10, 0, 16
.LVL113:
	.loc 1 823 0
	movi	a9, 0x3ff
	bgeu	a9, a8, .L101
	.loc 1 828 0
	mov.n	a12, a8
	l32r	a11, .LC27
	mov.n	a10, a2
.LVL114:
	call8	udp_bind
.LVL115:
	extui	a10, a10, 0, 8
.LVL116:
	j	.L97
.LVL117:
.L101:
	.loc 1 825 0
	movi	a10, 0xf8
.LVL118:
.L97:
.LBE7:
	.loc 1 829 0
	sext	a8, a10, 7
	movi.n	a9, -8
	beq	a8, a9, .L98
	.loc 1 830 0
	beqz.n	a10, .L99
	.loc 1 831 0
	mov.n	a10, a2
.LVL119:
	call8	udp_remove
.LVL120:
	.loc 1 832 0
	movi.n	a2, 0
.LVL121:
	retw.n
.LVL122:
.L99:
	.loc 1 834 0
	movi.n	a12, 0
	l32r	a11, .LC28
	mov.n	a10, a2
.LVL123:
	call8	udp_recv
.LVL124:
	.loc 1 835 0
	retw.n
.L100:
	.loc 1 819 0
	movi.n	a2, 0
.LVL125:
	.loc 1 836 0
	retw.n
.LFE25:
	.size	dns_alloc_random_port, .-dns_alloc_random_port
	.section	.text.dns_alloc_pcb,"ax",@progbits
	.literal_position
	.literal .LC29, dns_pcbs
	.literal .LC30, dns_last_pcb_idx
	.align	4
	.type	dns_alloc_pcb, @function
dns_alloc_pcb:
.LFB26:
	.loc 1 846 0
	entry	sp, 32
.LCFI9:
.LVL126:
	.loc 1 850 0
	movi.n	a2, 0
	j	.L103
.LVL127:
.L105:
	.loc 1 851 0
	l32r	a8, .LC29
	addx4	a8, a2, a8
	l32i.n	a8, a8, 0
	beqz.n	a8, .L104
	.loc 1 850 0 discriminator 2
	addi.n	a2, a2, 1
.LVL128:
	extui	a2, a2, 0, 8
.LVL129:
.L103:
	.loc 1 850 0 is_stmt 0 discriminator 1
	bltui	a2, 4, .L105
.L104:
	.loc 1 855 0 is_stmt 1
	bgeui	a2, 4, .L106
	.loc 1 856 0
	call8	dns_alloc_random_port
.LVL130:
	l32r	a8, .LC29
	addx4	a8, a2, a8
	s32i.n	a10, a8, 0
	.loc 1 857 0
	beqz.n	a10, .L106
	.loc 1 859 0
	l32r	a8, .LC30
	s8i	a2, a8, 0
	.loc 1 860 0
	retw.n
.L106:
.LVL131:
	.loc 1 865 0
	l32r	a2, .LC30
	l8ui	a2, a2, 0
	addi.n	a2, a2, 1
	extui	a2, a2, 0, 8
.LVL132:
	movi.n	a8, 0
	j	.L108
.LVL133:
.L111:
	.loc 1 866 0
	bltui	a2, 4, .L109
	.loc 1 867 0
	movi.n	a2, 0
.LVL134:
.L109:
	.loc 1 869 0
	l32r	a9, .LC29
	addx4	a9, a2, a9
	l32i.n	a9, a9, 0
	beqz.n	a9, .L110
	.loc 1 870 0
	l32r	a8, .LC30
.LVL135:
	s8i	a2, a8, 0
	.loc 1 871 0
	retw.n
.LVL136:
.L110:
	.loc 1 865 0 discriminator 2
	addi.n	a8, a8, 1
.LVL137:
	extui	a8, a8, 0, 8
.LVL138:
	addi.n	a2, a2, 1
.LVL139:
	extui	a2, a2, 0, 8
.LVL140:
.L108:
	.loc 1 865 0 is_stmt 0 discriminator 1
	bltui	a8, 4, .L111
	.loc 1 874 0 is_stmt 1
	movi.n	a2, 4
.LVL141:
	.loc 1 875 0
	retw.n
.LFE26:
	.size	dns_alloc_pcb, .-dns_alloc_pcb
	.section	.text.dns_enqueue,"ax",@progbits
	.literal_position
	.literal .LC31, dns_table
	.literal .LC32, dns_requests
	.literal .LC33, dns_seqno
	.align	4
	.type	dns_enqueue, @function
dns_enqueue:
.LFB32:
	.loc 1 1287 0
.LVL142:
	entry	sp, 48
.LCFI10:
	s32i.n	a3, sp, 4
	s32i.n	a5, sp, 0
.LVL143:
	.loc 1 1297 0
	movi.n	a3, 0
.LVL144:
	j	.L114
.LVL145:
.L120:
	.loc 1 1298 0
	addx8	a8, a3, a3
	addx8	a8, a8, a3
	slli	a7, a8, 2
	l32r	a8, .LC31
	add.n	a7, a8, a7
	l8ui	a7, a7, 26
	bnei	a7, 2, .L115
	.loc 1 1299 0 discriminator 1
	addx8	a7, a3, a3
	addx8	a7, a7, a3
	slli	a11, a7, 2
	addi	a11, a11, 32
	add.n	a11, a8, a11
	mov.n	a10, a2
	call8	dns_stricmp
.LVL146:
	.loc 1 1298 0 discriminator 1
	bnez.n	a10, .L115
	.loc 1 1301 0
	addx8	a7, a3, a3
	addx8	a5, a7, a3
	slli	a7, a5, 2
	l32r	a5, .LC31
	add.n	a7, a5, a7
	movi	a5, 0x120
	add.n	a7, a7, a5
	l8ui	a5, a7, 0
	bne	a5, a6, .L115
	movi.n	a5, 0
	j	.L116
.LVL147:
.L119:
	.loc 1 1310 0
	mov.n	a9, a5
	addx2	a8, a5, a5
	slli	a7, a8, 2
	l32r	a8, .LC32
	add.n	a7, a8, a7
	l32i.n	a7, a7, 0
	bnez.n	a7, .L117
	.loc 1 1311 0
	mov.n	a5, a8
.LVL148:
	slli	a7, a9, 1
	add.n	a8, a7, a9
	slli	a2, a8, 2
.LVL149:
	mov.n	a8, a2
	add.n	a2, a5, a2
	s32i.n	a4, a2, 0
	.loc 1 1312 0
	l32i.n	a4, sp, 0
.LVL150:
	s32i.n	a4, a2, 4
	.loc 1 1313 0
	s8i	a3, a2, 8
	.loc 1 1314 0
	add.n	a2, a5, a8
	s8i	a6, a2, 9
	.loc 1 1316 0
	movi	a2, 0xfb
.LVL151:
	retw.n
.LVL152:
.L117:
	.loc 1 1309 0 discriminator 2
	addi.n	a5, a5, 1
.LVL153:
	extui	a5, a5, 0, 8
.LVL154:
.L116:
	.loc 1 1309 0 is_stmt 0 discriminator 1
	bltui	a5, 4, .L119
.LVL155:
.L115:
	.loc 1 1297 0 is_stmt 1 discriminator 2
	addi.n	a3, a3, 1
.LVL156:
	extui	a3, a3, 0, 8
.LVL157:
.L114:
	.loc 1 1297 0 is_stmt 0 discriminator 1
	bltui	a3, 4, .L120
	movi.n	a7, 0
	movi.n	a9, 4
	mov.n	a10, a7
	mov.n	a5, a7
	j	.L121
.LVL158:
.L124:
	.loc 1 1328 0 is_stmt 1
	addx8	a3, a5, a5
	slli	a3, a3, 3
	add.n	a3, a3, a5
	slli	a7, a3, 2
.LVL159:
	l32r	a3, .LC31
	add.n	a7, a7, a3
.LVL160:
	.loc 1 1330 0
	l8ui	a3, a7, 26
	beqz.n	a3, .L122
	.loc 1 1334 0
	bnei	a3, 3, .L123
	.loc 1 1335 0
	addx8	a3, a5, a5
	addx8	a8, a3, a5
	slli	a3, a8, 2
	l32r	a8, .LC31
	add.n	a3, a8, a3
	l8ui	a8, a3, 30
	l32r	a3, .LC33
	l8ui	a3, a3, 0
	sub	a3, a3, a8
	extui	a3, a3, 0, 8
	bgeu	a10, a3, .L123
	.loc 1 1337 0
	mov.n	a9, a5
.LVL161:
	.loc 1 1336 0
	mov.n	a10, a3
.LVL162:
.L123:
	.loc 1 1327 0 discriminator 2
	addi.n	a5, a5, 1
.LVL163:
	extui	a5, a5, 0, 8
.LVL164:
.L121:
	.loc 1 1327 0 is_stmt 0 discriminator 1
	bltui	a5, 4, .L124
.L122:
	.loc 1 1343 0 is_stmt 1
	bnei	a5, 4, .L125
	.loc 1 1344 0
	bgeui	a9, 4, .L132
	.loc 1 1344 0 is_stmt 0 discriminator 1
	addx8	a5, a9, a9
.LVL165:
	addx8	a5, a5, a9
	slli	a3, a5, 2
	l32r	a5, .LC31
	add.n	a3, a5, a3
	l8ui	a3, a3, 26
	bnei	a3, 3, .L133
.LVL166:
	.loc 1 1351 0 is_stmt 1
	addx8	a3, a9, a9
	addx8	a3, a3, a9
	slli	a5, a3, 2
	l32r	a7, .LC31
.LVL167:
	add.n	a7, a5, a7
.LVL168:
	.loc 1 1350 0
	mov.n	a5, a9
.LVL169:
.L125:
	.loc 1 1358 0
	movi.n	a3, 0
	j	.L126
.LVL170:
.L129:
	.loc 1 1359 0
	addx2	a9, a3, a3
	slli	a8, a9, 2
	l32r	a9, .LC32
	add.n	a8, a9, a8
	l32i.n	a8, a8, 0
	bnez.n	a8, .L127
	.loc 1 1360 0
	addx2	a10, a3, a3
.LVL171:
	slli	a3, a10, 2
.LVL172:
	add.n	a3, a3, a9
.LVL173:
	.loc 1 1361 0
	j	.L128
.LVL174:
.L127:
	.loc 1 1358 0 discriminator 2
	addi.n	a3, a3, 1
.LVL175:
	extui	a3, a3, 0, 8
.LVL176:
.L126:
	.loc 1 1358 0 is_stmt 0 discriminator 1
	bltui	a3, 4, .L129
	.loc 1 1357 0 is_stmt 1
	movi.n	a3, 0
.LVL177:
.L128:
	.loc 1 1364 0
	beqz.n	a3, .L134
	.loc 1 1369 0
	s8i	a5, a3, 8
	.loc 1 1379 0
	movi.n	a8, 1
	s8i	a8, a7, 26
	.loc 1 1380 0
	l32r	a8, .LC33
	l8ui	a8, a8, 0
	s8i	a8, a7, 30
	.loc 1 1381 0
	addmi	a8, a7, 0x100
	s8i	a6, a8, 32
	.loc 1 1382 0
	s8i	a6, a3, 9
	.loc 1 1383 0
	s32i.n	a4, a3, 0
	.loc 1 1384 0
	l32i.n	a4, sp, 0
.LVL178:
	s32i.n	a4, a3, 4
	.loc 1 1385 0
	movi	a4, 0xff
	l32i.n	a6, sp, 4
.LVL179:
	minu	a4, a6, a4
.LVL180:
	.loc 1 1386 0
	mov.n	a12, a4
	mov.n	a11, a2
	addi	a10, a7, 32
	call8	memcpy
.LVL181:
	.loc 1 1387 0
	add.n	a4, a7, a4
.LVL182:
	movi.n	a2, 0
.LVL183:
	s8i	a2, a4, 32
	.loc 1 1390 0
	call8	dns_alloc_pcb
.LVL184:
	s8i	a10, a7, 31
	.loc 1 1391 0
	bltui	a10, 4, .L130
	.loc 1 1394 0
	s8i	a2, a7, 26
	.loc 1 1395 0
	movi.n	a2, 0
	s32i.n	a2, a3, 0
	.loc 1 1396 0
	movi	a2, 0xff
.LVL185:
	retw.n
.LVL186:
.L130:
	.loc 1 1401 0
	l32r	a3, .LC33
.LVL187:
	l8ui	a2, a3, 0
	addi.n	a2, a2, 1
	s8i	a2, a3, 0
	.loc 1 1404 0
	mov.n	a10, a5
	call8	dns_check_entry
.LVL188:
	.loc 1 1407 0
	movi	a2, 0xfb
	retw.n
.LVL189:
.L132:
	.loc 1 1347 0
	movi	a2, 0xff
.LVL190:
	retw.n
.LVL191:
.L133:
	movi	a2, 0xff
.LVL192:
	retw.n
.LVL193:
.L134:
	.loc 1 1367 0
	movi	a2, 0xff
.LVL194:
	.loc 1 1408 0
	retw.n
.LFE32:
	.size	dns_enqueue, .-dns_enqueue
	.section	.text.dns_compare_name,"ax",@progbits
	.literal_position
	.literal .LC34, 65535
	.align	4
	.type	dns_compare_name, @function
dns_compare_name:
.LFB22:
	.loc 1 669 0
.LVL195:
	entry	sp, 32
.LCFI11:
.LVL196:
.L139:
	.loc 1 674 0
	addi.n	a6, a4, 1
	extui	a6, a6, 0, 16
.LVL197:
	mov.n	a11, a4
	mov.n	a10, a3
	call8	pbuf_get_at
.LVL198:
	mov.n	a5, a10
.LVL199:
	.loc 1 676 0
	movi	a4, -0x40
	and	a4, a10, a4
	extui	a4, a4, 0, 8
	movi	a8, 0xc0
	beq	a4, a8, .L140
	mov.n	a4, a6
	j	.L137
.LVL200:
.L138:
	.loc 1 682 0
	l8ui	a6, a2, 0
	mov.n	a11, a4
	mov.n	a10, a3
	call8	pbuf_get_at
.LVL201:
	bne	a6, a10, .L141
	.loc 1 685 0
	addi.n	a4, a4, 1
.LVL202:
	extui	a4, a4, 0, 16
.LVL203:
	.loc 1 686 0
	addi.n	a2, a2, 1
.LVL204:
	.loc 1 687 0
	addi.n	a5, a5, -1
.LVL205:
	extui	a5, a5, 0, 8
.LVL206:
.L137:
	.loc 1 681 0
	bnez.n	a5, .L138
	.loc 1 689 0
	addi.n	a2, a2, 1
.LVL207:
	.loc 1 691 0
	mov.n	a11, a4
	mov.n	a10, a3
	call8	pbuf_get_at
.LVL208:
	bnez.n	a10, .L139
	.loc 1 693 0
	addi.n	a4, a4, 1
.LVL209:
	extui	a2, a4, 0, 16
.LVL210:
	retw.n
.LVL211:
.L140:
	.loc 1 678 0
	l32r	a2, .LC34
.LVL212:
	retw.n
.LVL213:
.L141:
	.loc 1 683 0
	l32r	a2, .LC34
.LVL214:
	.loc 1 694 0
	retw.n
.LFE22:
	.size	dns_compare_name, .-dns_compare_name
	.section	.text.dns_parse_name,"ax",@progbits
	.align	4
	.type	dns_parse_name, @function
dns_parse_name:
.LFB23:
	.loc 1 705 0
.LVL215:
	entry	sp, 32
.LCFI12:
.LVL216:
.L146:
	.loc 1 709 0
	addi.n	a4, a3, 1
	extui	a4, a4, 0, 16
.LVL217:
	mov.n	a11, a3
	mov.n	a10, a2
	call8	pbuf_get_at
.LVL218:
	.loc 1 711 0
	movi	a3, -0x40
	and	a3, a10, a3
	extui	a3, a3, 0, 8
	movi	a8, 0xc0
	beq	a3, a8, .L147
	mov.n	a3, a4
	j	.L144
.LVL219:
.L145:
	.loc 1 717 0
	addi.n	a3, a3, 1
.LVL220:
	extui	a3, a3, 0, 16
.LVL221:
	.loc 1 718 0
	addi.n	a10, a10, -1
.LVL222:
	extui	a10, a10, 0, 8
.LVL223:
.L144:
	.loc 1 716 0
	bnez.n	a10, .L145
	.loc 1 721 0
	mov.n	a11, a3
	mov.n	a10, a2
.LVL224:
	call8	pbuf_get_at
.LVL225:
	bnez.n	a10, .L146
	j	.L143
.LVL226:
.L147:
	.loc 1 709 0
	mov.n	a3, a4
.LVL227:
.L143:
	.loc 1 723 0
	addi.n	a2, a3, 1
.LVL228:
	.loc 1 724 0
	extui	a2, a2, 0, 16
	retw.n
.LFE23:
	.size	dns_parse_name, .-dns_parse_name
	.section	.text.dns_recv,"ax",@progbits
	.literal_position
	.literal .LC35, dns_table
	.literal .LC36, dns_servers
	.literal .LC37, 65535
	.literal .LC38, 7168
	.literal .LC39, 604800
	.literal .LC40, 4096
	.align	4
	.type	dns_recv, @function
dns_recv:
.LFB31:
	.loc 1 1074 0
.LVL229:
	entry	sp, 80
.LCFI13:
.LVL230:
	.loc 1 1088 0
	l16ui	a8, a4, 8
	movi.n	a9, 0xf
	bgeu	a9, a8, .L149
	.loc 1 1095 0
	movi.n	a13, 0
	movi.n	a12, 0xc
	mov.n	a11, sp
	mov.n	a10, a4
	call8	pbuf_copy_partial
.LVL231:
	bnei	a10, 12, .L149
	.loc 1 1097 0
	l16ui	a10, sp, 0
	call8	lwip_htons
.LVL232:
	.loc 1 1098 0
	movi.n	a8, 0
	j	.L150
.LVL233:
.L171:
.LBB8:
	.loc 1 1099 0
	mov.n	a2, a8
.LVL234:
	.loc 1 1101 0
	addx8	a11, a8, a8
	addx8	a11, a11, a8
	slli	a9, a11, 2
	l32r	a11, .LC35
	add.n	a9, a11, a9
	l8ui	a9, a9, 26
	bnei	a9, 2, .L151
.LVL235:
	.loc 1 1102 0 discriminator 1
	addx8	a11, a8, a8
	addx8	a11, a11, a8
	slli	a9, a11, 2
	l32r	a11, .LC35
	add.n	a9, a11, a9
	l16ui	a9, a9, 24
	.loc 1 1101 0 discriminator 1
	bne	a10, a9, .L151
.LBB9:
	.loc 1 1109 0
	l8ui	a6, sp, 3
.LVL236:
	extui	a6, a6, 0, 4
.LVL237:
	.loc 1 1113 0
	l16ui	a10, sp, 4
.LVL238:
	call8	lwip_htons
.LVL239:
	mov.n	a7, a10
.LVL240:
	.loc 1 1114 0
	l16ui	a10, sp, 6
	call8	lwip_htons
.LVL241:
	mov.n	a3, a10
.LVL242:
	.loc 1 1117 0
	l8ui	a8, sp, 2
	sext	a8, a8, 7
	bgez	a8, .L149
	.loc 1 1117 0 is_stmt 0 discriminator 1
	movi.n	a10, 1
	movi.n	a9, 0
	mov.n	a8, a9
	movnez	a8, a10, a6
	extui	a8, a8, 0, 8
	addi.n	a7, a7, -1
.LVL243:
	mov.n	a6, a9
.LVL244:
	movnez	a6, a10, a7
	extui	a6, a6, 0, 8
	bne	a8, a9, .L149
	bne	a6, a9, .L149
	.loc 1 1126 0 is_stmt 1
	addx8	a6, a2, a2
	slli	a6, a6, 3
	add.n	a6, a6, a2
	slli	a7, a6, 2
.LVL245:
	l32r	a6, .LC35
	add.n	a6, a6, a7
	movi.n	a7, 3
	s8i	a7, a6, 26
	.loc 1 1132 0
	l8ui	a7, a5, 16
	l8ui	a8, a6, 27
	addx4	a9, a8, a8
	slli	a6, a9, 2
	l32r	a9, .LC36
	add.n	a6, a9, a6
	l8ui	a6, a6, 16
	bne	a7, a6, .L172
	.loc 1 1132 0 is_stmt 0 discriminator 1
	bnei	a7, 6, .L153
	.loc 1 1132 0 discriminator 3
	l32i.n	a9, a5, 0
	addx4	a7, a8, a8
	slli	a6, a7, 2
	l32r	a7, .LC36
	add.n	a6, a7, a6
	l32i.n	a6, a6, 0
	bne	a9, a6, .L173
	.loc 1 1132 0 discriminator 6
	l32i.n	a9, a5, 4
	addx4	a7, a8, a8
	slli	a6, a7, 2
	l32r	a7, .LC36
	add.n	a6, a7, a6
	l32i.n	a6, a6, 4
	bne	a9, a6, .L174
	.loc 1 1132 0 discriminator 8
	l32i.n	a9, a5, 8
	addx4	a7, a8, a8
	slli	a6, a7, 2
	l32r	a7, .LC36
	add.n	a6, a7, a6
	l32i.n	a6, a6, 8
	bne	a9, a6, .L175
	.loc 1 1132 0 discriminator 10
	l32i.n	a6, a5, 12
	addx4	a8, a8, a8
	slli	a5, a8, 2
.LVL246:
	add.n	a5, a7, a5
	l32i.n	a5, a5, 12
	beq	a6, a5, .L176
	.loc 1 1132 0
	mov.n	a5, a10
	j	.L152
.LVL247:
.L173:
	movi.n	a5, 1
.LVL248:
	j	.L152
.LVL249:
.L174:
	movi.n	a5, 1
.LVL250:
	j	.L152
.LVL251:
.L175:
	movi.n	a5, 1
.LVL252:
	j	.L152
.L176:
	movi.n	a5, 0
	j	.L152
.LVL253:
.L153:
	.loc 1 1132 0 discriminator 4
	l32i.n	a5, a5, 0
.LVL254:
	addx4	a8, a8, a8
	slli	a6, a8, 2
	l32r	a7, .LC36
	add.n	a6, a7, a6
	l32i.n	a8, a6, 0
	sub	a8, a5, a8
	movi.n	a5, 0
	movi.n	a6, 1
	movnez	a5, a6, a8
	extui	a5, a5, 0, 8
	j	.L152
.LVL255:
.L172:
	.loc 1 1132 0
	movi.n	a5, 1
.LVL256:
.L152:
	.loc 1 1132 0 discriminator 18
	bnez.n	a5, .L155
	.loc 1 1139 0 is_stmt 1
	addx8	a6, a2, a2
	addx8	a6, a6, a2
	slli	a5, a6, 2
	addi	a5, a5, 32
	movi.n	a12, 0xc
	mov.n	a11, a4
	l32r	a10, .LC35
	add.n	a10, a10, a5
	call8	dns_compare_name
.LVL257:
	mov.n	a5, a10
.LVL258:
	.loc 1 1140 0
	l32r	a6, .LC37
	beq	a10, a6, .L155
	.loc 1 1147 0
	mov.n	a13, a10
	movi.n	a12, 4
	addi	a11, sp, 24
	mov.n	a10, a4
	call8	pbuf_copy_partial
.LVL259:
	.loc 1 1148 0
	l16ui	a6, sp, 26
	bnei	a6, 256, .L155
	.loc 1 1149 0 discriminator 1
	addx8	a7, a2, a2
	addx8	a7, a7, a2
	slli	a6, a7, 2
	l32r	a7, .LC35
	add.n	a6, a7, a6
	movi	a7, 0x120
	add.n	a6, a6, a7
	l8ui	a7, a6, 0
	addi	a10, a7, -3
	movi.n	a8, 1
	movi.n	a6, 0
	mov.n	a9, a6
	moveqz	a9, a8, a10
	mov.n	a10, a9
	addi.n	a9, a7, -1
	movnez	a8, a6, a9
	or	a8, a10, a8
	.loc 1 1148 0 discriminator 1
	beq	a8, a6, .L156
	.loc 1 1149 0
	l16ui	a8, sp, 24
	l32r	a6, .LC38
	bne	a8, a6, .L155
.L156:
	.loc 1 1150 0 discriminator 1
	addi	a8, a7, -3
	movi.n	a9, 1
	movi.n	a6, 0
	mov.n	a10, a6
	movnez	a10, a9, a8
	addi.n	a7, a7, -1
	movnez	a6, a9, a7
	.loc 1 1149 0 discriminator 1
	bnone	a10, a6, .L157
	.loc 1 1150 0
	l16ui	a6, sp, 24
	bnei	a6, 256, .L155
.L157:
	.loc 1 1156 0
	addi.n	a5, a5, 4
.LVL260:
	extui	a11, a5, 0, 16
.LVL261:
	.loc 1 1158 0
	j	.L158
.LVL262:
.L167:
	.loc 1 1160 0
	mov.n	a10, a4
	call8	dns_parse_name
.LVL263:
	mov.n	a5, a10
.LVL264:
	.loc 1 1163 0
	mov.n	a13, a10
	movi.n	a12, 0xa
	addi.n	a11, sp, 12
	mov.n	a10, a4
	call8	pbuf_copy_partial
.LVL265:
	.loc 1 1164 0
	l16ui	a6, sp, 14
	bnei	a6, 256, .L159
	.loc 1 1166 0
	l16ui	a8, sp, 12
	bnei	a8, 256, .L160
	.loc 1 1166 0 is_stmt 0 discriminator 1
	l16ui	a7, sp, 20
	movi	a6, 0x400
	bne	a7, a6, .L160
	.loc 1 1168 0 is_stmt 1
	addx8	a7, a2, a2
	addx8	a7, a7, a2
	slli	a6, a7, 2
	l32r	a7, .LC35
	add.n	a6, a7, a6
	movi	a7, 0x120
	add.n	a6, a6, a7
	l8ui	a6, a6, 0
	addi	a7, a6, -3
	movi.n	a10, 1
	movi.n	a9, 0
	mov.n	a11, a9
	movnez	a11, a10, a7
	mov.n	a7, a11
	addi.n	a6, a6, -1
	movnez	a9, a10, a6
	bnone	a11, a9, .L160
.LBB10:
	.loc 1 1172 0
	addi.n	a5, a5, 10
.LVL266:
	extui	a6, a5, 0, 16
.LVL267:
	.loc 1 1174 0
	l32i.n	a10, sp, 16
	call8	lwip_ntohl
.LVL268:
	addx8	a5, a2, a2
.LVL269:
	addx8	a5, a5, a2
	slli	a3, a5, 2
.LVL270:
	l32r	a5, .LC35
	add.n	a3, a5, a3
	s32i.n	a10, a3, 0
	.loc 1 1175 0
	l32r	a3, .LC39
	bgeu	a3, a10, .L161
	.loc 1 1176 0
	addx8	a5, a2, a2
	addx8	a5, a5, a2
	slli	a3, a5, 2
	l32r	a5, .LC35
	add.n	a3, a5, a3
	l32r	a5, .LC39
	s32i.n	a5, a3, 0
.L161:
	.loc 1 1179 0
	mov.n	a13, a6
	movi.n	a12, 4
	addi	a11, sp, 28
	mov.n	a10, a4
	call8	pbuf_copy_partial
.LVL271:
	.loc 1 1180 0
	addx8	a5, a2, a2
	slli	a5, a5, 3
	add.n	a5, a5, a2
	slli	a3, a5, 2
	l32r	a5, .LC35
	add.n	a3, a5, a3
	l32i.n	a5, sp, 28
	s32i.n	a5, a3, 4
	movi.n	a5, 0
	s8i	a5, a3, 20
	.loc 1 1185 0
	addi.n	a11, a3, 4
	mov.n	a10, a2
	call8	dns_call_found
.LVL272:
	.loc 1 1186 0
	l32i.n	a3, a3, 0
	bnez.n	a3, .L149
	j	.L163
.LVL273:
.L160:
.LBE10:
	.loc 1 1199 0
	l32r	a6, .LC38
	bne	a8, a6, .L159
	.loc 1 1199 0 is_stmt 0 discriminator 1
	l16ui	a7, sp, 20
	l32r	a6, .LC40
	bne	a7, a6, .L159
	.loc 1 1201 0 is_stmt 1
	addx8	a7, a2, a2
	addx8	a7, a7, a2
	slli	a6, a7, 2
	l32r	a7, .LC35
	add.n	a6, a7, a6
	movi	a7, 0x120
	add.n	a6, a6, a7
	l8ui	a6, a6, 0
	addi	a8, a6, -3
	movi.n	a10, 1
	movi.n	a9, 0
	mov.n	a11, a9
	moveqz	a11, a10, a8
	addi.n	a7, a6, -1
	mov.n	a6, a9
	moveqz	a6, a10, a7
	or	a6, a11, a6
	beq	a6, a9, .L159
.LBB11:
	.loc 1 1205 0
	addi.n	a3, a5, 10
.LVL274:
	extui	a3, a3, 0, 16
.LVL275:
	.loc 1 1207 0
	l32i.n	a10, sp, 16
	call8	lwip_ntohl
.LVL276:
	addx8	a6, a2, a2
	addx8	a6, a6, a2
	slli	a5, a6, 2
	l32r	a6, .LC35
	add.n	a5, a6, a5
	s32i.n	a10, a5, 0
	.loc 1 1208 0
	l32r	a5, .LC39
	bgeu	a5, a10, .L164
	.loc 1 1209 0
	addx8	a6, a2, a2
	addx8	a6, a6, a2
	slli	a5, a6, 2
	l32r	a6, .LC35
	add.n	a5, a6, a5
	l32r	a6, .LC39
	s32i.n	a6, a5, 0
.L164:
	.loc 1 1212 0
	mov.n	a13, a3
	movi.n	a12, 0x10
	addi	a11, sp, 28
	mov.n	a10, a4
	call8	pbuf_copy_partial
.LVL277:
	.loc 1 1213 0
	addx8	a5, a2, a2
	slli	a5, a5, 3
	add.n	a5, a5, a2
	slli	a3, a5, 2
.LVL278:
	l32r	a5, .LC35
	add.n	a3, a5, a3
	l32i.n	a5, sp, 28
	s32i.n	a5, a3, 4
	l32i.n	a5, sp, 32
	s32i.n	a5, a3, 8
	l32i.n	a5, sp, 36
	s32i.n	a5, a3, 12
	l32i.n	a5, sp, 40
	s32i.n	a5, a3, 16
	movi.n	a5, 6
	s8i	a5, a3, 20
	.loc 1 1218 0
	addi.n	a11, a3, 4
	mov.n	a10, a2
	call8	dns_call_found
.LVL279:
	.loc 1 1219 0
	l32i.n	a3, a3, 0
	bnez.n	a3, .L149
	j	.L163
.LVL280:
.L159:
.LBE11:
	.loc 1 1233 0
	l16ui	a10, sp, 20
	call8	lwip_htons
.LVL281:
	addi.n	a10, a10, 10
	add.n	a11, a5, a10
	extui	a11, a11, 0, 16
.LVL282:
	.loc 1 1234 0
	addi.n	a3, a3, -1
.LVL283:
	extui	a3, a3, 0, 16
.LVL284:
.L158:
	.loc 1 1158 0
	beqz.n	a3, .L166
	.loc 1 1158 0 is_stmt 0 discriminator 1
	l16ui	a5, a4, 8
	bltu	a11, a5, .L167
.L166:
	.loc 1 1237 0 is_stmt 1
	addx8	a5, a2, a2
	addx8	a5, a5, a2
	slli	a3, a5, 2
.LVL285:
	l32r	a5, .LC35
	add.n	a3, a5, a3
	movi	a5, 0x120
	add.n	a3, a3, a5
	l8ui	a5, a3, 0
	addi	a3, a5, -2
	extui	a3, a3, 0, 8
	bgeui	a3, 2, .L155
	.loc 1 1239 0
	bnei	a5, 2, .L168
	.loc 1 1241 0
	addx8	a5, a2, a2
	addx8	a5, a5, a2
	slli	a3, a5, 2
	l32r	a5, .LC35
	add.n	a3, a5, a3
	movi	a5, 0x120
	add.n	a3, a3, a5
	movi.n	a5, 1
	s8i	a5, a3, 0
	j	.L169
.L168:
	.loc 1 1244 0
	addx8	a5, a2, a2
	addx8	a5, a5, a2
	slli	a3, a5, 2
	l32r	a5, .LC35
	add.n	a3, a5, a3
	movi	a5, 0x120
	add.n	a3, a3, a5
	movi.n	a5, 0
	s8i	a5, a3, 0
.L169:
	.loc 1 1246 0
	mov.n	a10, a4
	call8	pbuf_free
.LVL286:
	.loc 1 1247 0
	addx8	a4, a2, a2
.LVL287:
	addx8	a4, a4, a2
	slli	a3, a4, 2
	l32r	a4, .LC35
	add.n	a3, a4, a3
	movi.n	a4, 1
	s8i	a4, a3, 26
	.loc 1 1248 0
	mov.n	a10, a2
	call8	dns_check_entry
.LVL288:
	.loc 1 1249 0
	retw.n
.LVL289:
.L151:
.LBE9:
.LBE8:
	.loc 1 1098 0 discriminator 2
	addi.n	a8, a8, 1
	extui	a8, a8, 0, 8
.LVL290:
.L150:
	.loc 1 1098 0 is_stmt 0 discriminator 1
	bltui	a8, 4, .L171
	j	.L149
.LVL291:
.L155:
	.loc 1 1264 0 is_stmt 1
	movi.n	a11, 0
	mov.n	a10, a2
	call8	dns_call_found
.LVL292:
.L163:
	.loc 1 1267 0
	addx8	a3, a2, a2
	addx8	a2, a3, a2
.LVL293:
	slli	a3, a2, 2
	l32r	a2, .LC35
	add.n	a3, a2, a3
	movi.n	a2, 0
	s8i	a2, a3, 26
.L149:
	.loc 1 1271 0
	mov.n	a10, a4
	call8	pbuf_free
.LVL294:
	retw.n
.LFE31:
	.size	dns_recv, .-dns_recv
	.section	.text.dns_init,"ax",@progbits
	.align	4
	.global	dns_init
	.type	dns_init, @function
dns_init:
.LFB16:
	.loc 1 371 0
	entry	sp, 32
.LCFI14:
	retw.n
.LFE16:
	.size	dns_init, .-dns_init
	.section	.text.dns_setserver,"ax",@progbits
	.literal_position
	.literal .LC41, dns_servers
	.literal .LC42, ip_addr_any
	.align	4
	.global	dns_setserver
	.type	dns_setserver, @function
dns_setserver:
.LFB17:
	.loc 1 417 0
.LVL295:
	.loc 1 417 0
	entry	sp, 32
.LCFI15:
	extui	a2, a2, 0, 8
	.loc 1 418 0
	bgeui	a2, 3, .L178
	.loc 1 419 0
	beqz.n	a3, .L180
	.loc 1 420 0
	addx4	a2, a2, a2
.LVL296:
	slli	a8, a2, 2
	mov.n	a2, a8
	movi.n	a12, 0x14
	mov.n	a11, a3
	l32r	a10, .LC41
	add.n	a10, a10, a8
	call8	memcpy
.LVL297:
	retw.n
.L180:
	.loc 1 422 0
	addx4	a2, a2, a2
	slli	a3, a2, 2
.LVL298:
	mov.n	a2, a3
	movi.n	a12, 0x14
	l32r	a11, .LC42
	l32r	a10, .LC41
	add.n	a10, a10, a3
	call8	memcpy
.LVL299:
.L178:
	retw.n
.LFE17:
	.size	dns_setserver, .-dns_setserver
	.section	.text.dns_clear_servers,"ax",@progbits
	.align	4
	.global	dns_clear_servers
	.type	dns_clear_servers, @function
dns_clear_servers:
.LFB18:
	.loc 1 429 0
.LVL300:
	entry	sp, 32
.LCFI16:
	extui	a2, a2, 0, 8
.LVL301:
	.loc 1 432 0
	movi.n	a3, 0
	j	.L182
.LVL302:
.L184:
	.loc 1 433 0
	addi	a9, a3, -2
	movi.n	a8, 0
	movi.n	a10, 1
	moveqz	a8, a10, a9
	bany	a8, a2, .L183
	.loc 1 437 0
	movi.n	a11, 0
	mov.n	a10, a3
	call8	dns_setserver
.LVL303:
.L183:
	.loc 1 432 0 discriminator 2
	addi.n	a3, a3, 1
.LVL304:
	extui	a3, a3, 0, 8
.LVL305:
.L182:
	.loc 1 432 0 is_stmt 0 discriminator 1
	bltui	a3, 3, .L184
	.loc 1 439 0 is_stmt 1
	retw.n
.LFE18:
	.size	dns_clear_servers, .-dns_clear_servers
	.section	.text.dns_getserver,"ax",@progbits
	.literal_position
	.literal .LC43, dns_servers
	.literal .LC44, ip_addr_any
	.align	4
	.global	dns_getserver
	.type	dns_getserver, @function
dns_getserver:
.LFB19:
	.loc 1 451 0
.LVL306:
	entry	sp, 32
.LCFI17:
	extui	a3, a3, 0, 8
	.loc 1 452 0
	bgeui	a3, 3, .L186
	.loc 1 453 0
	addx4	a3, a3, a3
.LVL307:
	slli	a8, a3, 2
	mov.n	a3, a8
	movi.n	a12, 0x14
	l32r	a11, .LC43
	add.n	a11, a11, a8
	mov.n	a10, a2
	call8	memcpy
.LVL308:
	retw.n
.L186:
	.loc 1 455 0
	movi.n	a12, 0x14
	l32r	a11, .LC44
	mov.n	a10, a2
	call8	memcpy
.LVL309:
	.loc 1 457 0
	retw.n
.LFE19:
	.size	dns_getserver, .-dns_getserver
	.section	.text.dns_tmr,"ax",@progbits
	.align	4
	.global	dns_tmr
	.type	dns_tmr, @function
dns_tmr:
.LFB20:
	.loc 1 465 0
	entry	sp, 32
.LCFI18:
	.loc 1 467 0
	call8	dns_check_entries
.LVL310:
	retw.n
.LFE20:
	.size	dns_tmr, .-dns_tmr
	.section	.rodata.str1.4
	.align	4
.LC45:
	.string	"localhost"
	.section	.text.dns_gethostbyname_addrtype,"ax",@progbits
	.literal_position
	.literal .LC46, .LC45
	.literal .LC47, 16777216
	.literal .LC48, 16777343
	.align	4
	.global	dns_gethostbyname_addrtype
	.type	dns_gethostbyname_addrtype, @function
dns_gethostbyname_addrtype:
.LFB35:
	.loc 1 1456 0
.LVL311:
	entry	sp, 32
.LCFI19:
	extui	a6, a6, 0, 8
	.loc 1 1460 0
	movi.n	a8, 1
	movi.n	a10, 0
	mov.n	a9, a10
	moveqz	a9, a8, a3
	.loc 1 1461 0
	movnez	a8, a10, a2
	.loc 1 1460 0
	or	a8, a8, a9
	.loc 1 1460 0
	bne	a8, a10, .L198
	.loc 1 1461 0
	l8ui	a7, a2, 0
	beq	a7, a10, .L199
	.loc 1 1469 0
	mov.n	a10, a2
	call8	strlen
.LVL312:
	mov.n	a7, a10
.LVL313:
	.loc 1 1470 0
	movi	a8, 0xff
	bltu	a8, a10, .L200
	.loc 1 1477 0
	l32r	a11, .LC46
	mov.n	a10, a2
	call8	strcmp
.LVL314:
	bnez.n	a10, .L191
	.loc 1 1478 0
	addi	a2, a6, -3
.LVL315:
	movi.n	a7, 1
.LVL316:
	movi.n	a5, 0
.LVL317:
	mov.n	a4, a5
.LVL318:
	moveqz	a4, a7, a2
	mov.n	a2, a4
	addi.n	a4, a6, -1
	mov.n	a6, a5
.LVL319:
	moveqz	a6, a7, a4
	or	a6, a6, a2
	beq	a6, a5, .L192
	.loc 1 1478 0 is_stmt 0 discriminator 1
	s32i.n	a5, a3, 0
	s32i.n	a5, a3, 4
	s32i.n	a5, a3, 8
	l32r	a2, .LC47
	s32i.n	a2, a3, 12
	beq	a3, a5, .L201
	.loc 1 1478 0 is_stmt 1 discriminator 3
	movi.n	a2, 6
	s8i	a2, a3, 16
	.loc 1 1479 0 discriminator 3
	mov.n	a10, a5
	j	.L190
.L192:
	.loc 1 1478 0 discriminator 2
	l32r	a2, .LC48
	s32i.n	a2, a3, 0
	beqz.n	a3, .L202
	.loc 1 1478 0 discriminator 4
	movi.n	a2, 0
	s8i	a2, a3, 16
	.loc 1 1479 0 discriminator 4
	movi.n	a10, 0
	j	.L190
.LVL320:
.L191:
	.loc 1 1484 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	ipaddr_aton
.LVL321:
	beqz.n	a10, .L193
	.loc 1 1486 0
	beqz.n	a3, .L194
	.loc 1 1486 0 discriminator 1
	l8ui	a8, a3, 16
	bnei	a8, 6, .L194
	.loc 1 1486 0 is_stmt 0 discriminator 3
	bnez.n	a6, .L203
.L194:
	.loc 1 1486 0 discriminator 5
	beqz.n	a3, .L195
	.loc 1 1487 0 is_stmt 1
	l8ui	a8, a3, 16
	.loc 1 1487 0
	beqi	a8, 6, .L193
.L195:
	.loc 1 1487 0 discriminator 1
	bnei	a6, 1, .L204
.L193:
	.loc 1 1494 0
	mov.n	a12, a6
	mov.n	a11, a3
	mov.n	a10, a2
	call8	dns_lookup
.LVL322:
	extui	a10, a10, 0, 8
	beqz.n	a10, .L190
	.loc 1 1498 0
	addi	a8, a6, -2
	extui	a8, a8, 0, 8
	bgeui	a8, 2, .L196
.LBB12:
	.loc 1 1501 0
	bnei	a6, 2, .L205
	.loc 1 1502 0
	movi.n	a12, 1
	j	.L197
.L205:
	.loc 1 1504 0
	movi.n	a12, 0
.L197:
.LVL323:
	.loc 1 1506 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	dns_lookup
.LVL324:
	extui	a10, a10, 0, 8
	beqz.n	a10, .L190
.L196:
.LBE12:
	.loc 1 1516 0
	call8	dns_server_is_set
.LVL325:
	beqz.n	a10, .L206
	.loc 1 1521 0
	mov.n	a14, a6
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a7
	mov.n	a10, a2
	call8	dns_enqueue
.LVL326:
	extui	a10, a10, 0, 8
	j	.L190
.LVL327:
.L198:
	.loc 1 1462 0
	movi	a10, 0xf1
	j	.L190
.L199:
	movi	a10, 0xf1
	j	.L190
.LVL328:
.L200:
	.loc 1 1472 0
	movi	a10, 0xf1
	j	.L190
.LVL329:
.L201:
	.loc 1 1479 0
	movi.n	a10, 0
	j	.L190
.L202:
	movi.n	a10, 0
	j	.L190
.LVL330:
.L203:
	.loc 1 1490 0
	movi.n	a10, 0
	j	.L190
.L204:
	movi.n	a10, 0
	j	.L190
.L206:
	.loc 1 1517 0
	movi	a10, 0xfa
.LVL331:
.L190:
	.loc 1 1522 0
	mov.n	a2, a10
	retw.n
.LFE35:
	.size	dns_gethostbyname_addrtype, .-dns_gethostbyname_addrtype
	.section	.text.dns_gethostbyname,"ax",@progbits
	.align	4
	.global	dns_gethostbyname
	.type	dns_gethostbyname, @function
dns_gethostbyname:
.LFB33:
	.loc 1 1432 0
.LVL332:
	entry	sp, 32
.LCFI20:
	.loc 1 1433 0
	movi.n	a14, 2
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	dns_gethostbyname_addrtype
.LVL333:
	.loc 1 1434 0
	extui	a2, a10, 0, 8
.LVL334:
	retw.n
.LFE33:
	.size	dns_gethostbyname, .-dns_gethostbyname
	.section	.rodata.__func__$6434,"a",@progbits
	.align	4
	.type	__func__$6434, @object
	.size	__func__$6434, 9
__func__$6434:
	.string	"dns_send"
	.section	.rodata.__func__$6466,"a",@progbits
	.align	4
	.type	__func__$6466, @object
	.size	__func__$6466, 15
__func__$6466:
	.string	"dns_call_found"
	.section	.rodata.__func__$6488,"a",@progbits
	.align	4
	.type	__func__$6488, @object
	.size	__func__$6488, 16
__func__$6488:
	.string	"dns_check_entry"
	.section	.bss.dns_servers,"aw",@nobits
	.align	4
	.type	dns_servers, @object
	.size	dns_servers, 60
dns_servers:
	.zero	60
	.section	.bss.dns_requests,"aw",@nobits
	.align	4
	.type	dns_requests, @object
	.size	dns_requests, 48
dns_requests:
	.zero	48
	.section	.bss.dns_table,"aw",@nobits
	.align	4
	.type	dns_table, @object
	.size	dns_table, 1168
dns_table:
	.zero	1168
	.section	.bss.dns_seqno,"aw",@nobits
	.type	dns_seqno, @object
	.size	dns_seqno, 1
dns_seqno:
	.zero	1
	.section	.bss.dns_last_pcb_idx,"aw",@nobits
	.type	dns_last_pcb_idx, @object
	.size	dns_last_pcb_idx, 1
dns_last_pcb_idx:
	.zero	1
	.section	.bss.dns_pcbs,"aw",@nobits
	.align	4
	.type	dns_pcbs, @object
	.size	dns_pcbs, 16
dns_pcbs:
	.zero	16
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
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI1-.LFB21
	.byte	0xe
	.uleb128 0x20
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
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI3-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI4-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI5-.LFB24
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI6-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI7-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI8-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI9-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI10-.LFB32
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI11-.LFB22
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
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI13-.LFB31
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI14-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI15-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI16-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI17-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI18-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI19-.LFB35
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
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/port/arch/cc.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/err.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/pbuf.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/netif.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/ip4_addr.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/ip6_addr.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/ip_addr.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/memp.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/udp.h"
	.file 14 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/dns.h"
	.file 15 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_system.h"
	.file 16 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.file 17 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h"
	.file 18 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/def.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1a76
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF220
	.byte	0xc
	.4byte	.LASF221
	.4byte	.LASF222
	.4byte	.Ldebug_ranges0+0x30
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
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbc
	.uleb128 0x7
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc3
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd0
	.uleb128 0x8
	.4byte	0xc3
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
	.uleb128 0x6
	.byte	0x4
	.4byte	0x119
	.uleb128 0x9
	.4byte	0x124
	.uleb128 0xa
	.4byte	0xad
	.byte	0
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x5
	.byte	0x2e
	.4byte	0xe0
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0x5
	.byte	0x2f
	.4byte	0xd5
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x5
	.byte	0x30
	.4byte	0xf6
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0x5
	.byte	0x31
	.4byte	0xeb
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0x5
	.byte	0x32
	.4byte	0x101
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0x6
	.byte	0x2f
	.4byte	0x12f
	.uleb128 0xb
	.byte	0x4
	.4byte	0x30
	.byte	0x7
	.byte	0x3f
	.4byte	0x191
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x30
	.byte	0x7
	.byte	0x47
	.4byte	0x1b6
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0x18
	.byte	0x7
	.byte	0x6c
	.4byte	0x22f
	.uleb128 0xe
	.4byte	.LASF38
	.byte	0x7
	.byte	0x6e
	.4byte	0x22f
	.byte	0
	.uleb128 0xe
	.4byte	.LASF39
	.byte	0x7
	.byte	0x71
	.4byte	0xad
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0x7
	.byte	0x7a
	.4byte	0x13a
	.byte	0x8
	.uleb128 0xf
	.string	"len"
	.byte	0x7
	.byte	0x7d
	.4byte	0x13a
	.byte	0xa
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0x7
	.byte	0x80
	.4byte	0x124
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0x7
	.byte	0x83
	.4byte	0x124
	.byte	0xd
	.uleb128 0xf
	.string	"ref"
	.byte	0x7
	.byte	0x8a
	.4byte	0x13a
	.byte	0xe
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x7
	.byte	0x8d
	.4byte	0x3c5
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x7
	.byte	0x8e
	.4byte	0xad
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1b6
	.uleb128 0xd
	.4byte	.LASF46
	.byte	0xe8
	.byte	0x8
	.byte	0xbd
	.4byte	0x3c5
	.uleb128 0xe
	.4byte	.LASF38
	.byte	0x8
	.byte	0xbf
	.4byte	0x3c5
	.byte	0
	.uleb128 0xe
	.4byte	.LASF47
	.byte	0x8
	.byte	0xc3
	.4byte	0x467
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF48
	.byte	0x8
	.byte	0xc4
	.4byte	0x467
	.byte	0x18
	.uleb128 0xf
	.string	"gw"
	.byte	0x8
	.byte	0xc5
	.4byte	0x467
	.byte	0x2c
	.uleb128 0xe
	.4byte	.LASF49
	.byte	0x8
	.byte	0xc9
	.4byte	0x604
	.byte	0x40
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0x8
	.byte	0xcc
	.4byte	0x614
	.byte	0x7c
	.uleb128 0xe
	.4byte	.LASF51
	.byte	0x8
	.byte	0xce
	.4byte	0x634
	.byte	0x80
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0x8
	.byte	0xd4
	.4byte	0x4f1
	.byte	0x84
	.uleb128 0xe
	.4byte	.LASF53
	.byte	0x8
	.byte	0xd9
	.4byte	0x516
	.byte	0x88
	.uleb128 0xe
	.4byte	.LASF54
	.byte	0x8
	.byte	0xde
	.4byte	0x580
	.byte	0x8c
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0x8
	.byte	0xe3
	.4byte	0x54b
	.byte	0x90
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0x8
	.byte	0xf5
	.4byte	0xad
	.byte	0x94
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x8
	.byte	0xf8
	.4byte	0x63f
	.byte	0x98
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x8
	.byte	0xfb
	.4byte	0x6ee
	.byte	0x9c
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0x8
	.byte	0xfc
	.4byte	0x5f9
	.byte	0xa0
	.uleb128 0x10
	.4byte	.LASF60
	.byte	0x8
	.2byte	0x108
	.4byte	0x124
	.byte	0xa4
	.uleb128 0x10
	.4byte	.LASF61
	.byte	0x8
	.2byte	0x10d
	.4byte	0x124
	.byte	0xa5
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x8
	.2byte	0x117
	.4byte	0xca
	.byte	0xa8
	.uleb128 0x11
	.string	"mtu"
	.byte	0x8
	.2byte	0x11f
	.4byte	0x13a
	.byte	0xac
	.uleb128 0x10
	.4byte	.LASF63
	.byte	0x8
	.2byte	0x121
	.4byte	0x124
	.byte	0xae
	.uleb128 0x10
	.4byte	.LASF64
	.byte	0x8
	.2byte	0x123
	.4byte	0x6f4
	.byte	0xaf
	.uleb128 0x10
	.4byte	.LASF42
	.byte	0x8
	.2byte	0x125
	.4byte	0x124
	.byte	0xb5
	.uleb128 0x10
	.4byte	.LASF65
	.byte	0x8
	.2byte	0x127
	.4byte	0x704
	.byte	0xb6
	.uleb128 0x11
	.string	"num"
	.byte	0x8
	.2byte	0x129
	.4byte	0x124
	.byte	0xb8
	.uleb128 0x10
	.4byte	.LASF66
	.byte	0x8
	.2byte	0x139
	.4byte	0x5a5
	.byte	0xbc
	.uleb128 0x10
	.4byte	.LASF67
	.byte	0x8
	.2byte	0x13f
	.4byte	0x5cf
	.byte	0xc0
	.uleb128 0x10
	.4byte	.LASF68
	.byte	0x8
	.2byte	0x147
	.4byte	0x22f
	.byte	0xc4
	.uleb128 0x10
	.4byte	.LASF69
	.byte	0x8
	.2byte	0x148
	.4byte	0x22f
	.byte	0xc8
	.uleb128 0x10
	.4byte	.LASF70
	.byte	0x8
	.2byte	0x14a
	.4byte	0x13a
	.byte	0xcc
	.uleb128 0x10
	.4byte	.LASF71
	.byte	0x8
	.2byte	0x14f
	.4byte	0x113
	.byte	0xd0
	.uleb128 0x10
	.4byte	.LASF72
	.byte	0x8
	.2byte	0x150
	.4byte	0x467
	.byte	0xd4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x235
	.uleb128 0xd
	.4byte	.LASF73
	.byte	0x4
	.byte	0x9
	.byte	0x2e
	.4byte	0x3e4
	.uleb128 0xe
	.4byte	.LASF74
	.byte	0x9
	.byte	0x2f
	.4byte	0x150
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF75
	.byte	0x9
	.byte	0x42
	.4byte	0x3cb
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0x10
	.byte	0xa
	.byte	0x39
	.4byte	0x408
	.uleb128 0xe
	.4byte	.LASF74
	.byte	0xa
	.byte	0x3a
	.4byte	0x408
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x150
	.4byte	0x418
	.uleb128 0x13
	.4byte	0xa6
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF76
	.byte	0xa
	.byte	0x4b
	.4byte	0x3ef
	.uleb128 0x14
	.byte	0x10
	.byte	0xb
	.byte	0x39
	.4byte	0x442
	.uleb128 0x15
	.string	"ip6"
	.byte	0xb
	.byte	0x3a
	.4byte	0x418
	.uleb128 0x15
	.string	"ip4"
	.byte	0xb
	.byte	0x3b
	.4byte	0x3e4
	.byte	0
	.uleb128 0xd
	.4byte	.LASF77
	.byte	0x14
	.byte	0xb
	.byte	0x38
	.4byte	0x467
	.uleb128 0xe
	.4byte	.LASF78
	.byte	0xb
	.byte	0x3c
	.4byte	0x423
	.byte	0
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0xb
	.byte	0x3d
	.4byte	0x124
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.4byte	.LASF79
	.byte	0xb
	.byte	0x3e
	.4byte	0x442
	.uleb128 0xb
	.byte	0x4
	.4byte	0x30
	.byte	0xc
	.byte	0x2d
	.4byte	0x4f1
	.uleb128 0xc
	.4byte	.LASF80
	.byte	0
	.uleb128 0xc
	.4byte	.LASF81
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF82
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0x7
	.uleb128 0xc
	.4byte	.LASF88
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0x9
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0xa
	.uleb128 0xc
	.4byte	.LASF91
	.byte	0xb
	.uleb128 0xc
	.4byte	.LASF92
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF93
	.byte	0xd
	.uleb128 0xc
	.4byte	.LASF94
	.byte	0xe
	.uleb128 0xc
	.4byte	.LASF95
	.byte	0xf
	.uleb128 0xc
	.4byte	.LASF96
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF97
	.byte	0x11
	.uleb128 0xc
	.4byte	.LASF98
	.byte	0x12
	.byte	0
	.uleb128 0x2
	.4byte	.LASF99
	.byte	0x8
	.byte	0x83
	.4byte	0x4fc
	.uleb128 0x6
	.byte	0x4
	.4byte	0x502
	.uleb128 0x16
	.4byte	0x15b
	.4byte	0x516
	.uleb128 0xa
	.4byte	0x22f
	.uleb128 0xa
	.4byte	0x3c5
	.byte	0
	.uleb128 0x2
	.4byte	.LASF100
	.byte	0x8
	.byte	0x8e
	.4byte	0x521
	.uleb128 0x6
	.byte	0x4
	.4byte	0x527
	.uleb128 0x16
	.4byte	0x15b
	.4byte	0x540
	.uleb128 0xa
	.4byte	0x3c5
	.uleb128 0xa
	.4byte	0x22f
	.uleb128 0xa
	.4byte	0x540
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x546
	.uleb128 0x8
	.4byte	0x3e4
	.uleb128 0x2
	.4byte	.LASF101
	.byte	0x8
	.byte	0x9b
	.4byte	0x556
	.uleb128 0x6
	.byte	0x4
	.4byte	0x55c
	.uleb128 0x16
	.4byte	0x15b
	.4byte	0x575
	.uleb128 0xa
	.4byte	0x3c5
	.uleb128 0xa
	.4byte	0x22f
	.uleb128 0xa
	.4byte	0x575
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x57b
	.uleb128 0x8
	.4byte	0x418
	.uleb128 0x2
	.4byte	.LASF102
	.byte	0x8
	.byte	0xa5
	.4byte	0x58b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x591
	.uleb128 0x16
	.4byte	0x15b
	.4byte	0x5a5
	.uleb128 0xa
	.4byte	0x3c5
	.uleb128 0xa
	.4byte	0x22f
	.byte	0
	.uleb128 0x2
	.4byte	.LASF103
	.byte	0x8
	.byte	0xaa
	.4byte	0x5b0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5b6
	.uleb128 0x16
	.4byte	0x15b
	.4byte	0x5cf
	.uleb128 0xa
	.4byte	0x3c5
	.uleb128 0xa
	.4byte	0x540
	.uleb128 0xa
	.4byte	0x124
	.byte	0
	.uleb128 0x2
	.4byte	.LASF104
	.byte	0x8
	.byte	0xaf
	.4byte	0x5da
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5e0
	.uleb128 0x16
	.4byte	0x15b
	.4byte	0x5f9
	.uleb128 0xa
	.4byte	0x3c5
	.uleb128 0xa
	.4byte	0x575
	.uleb128 0xa
	.4byte	0x124
	.byte	0
	.uleb128 0x2
	.4byte	.LASF105
	.byte	0x8
	.byte	0xb6
	.4byte	0xb6
	.uleb128 0x12
	.4byte	0x467
	.4byte	0x614
	.uleb128 0x13
	.4byte	0xa6
	.byte	0x2
	.byte	0
	.uleb128 0x12
	.4byte	0x124
	.4byte	0x624
	.uleb128 0x13
	.4byte	0xa6
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x634
	.uleb128 0xa
	.4byte	0x3c5
	.uleb128 0xa
	.4byte	0x124
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x624
	.uleb128 0x17
	.4byte	.LASF57
	.uleb128 0x6
	.byte	0x4
	.4byte	0x63a
	.uleb128 0xd
	.4byte	.LASF106
	.byte	0x58
	.byte	0xd
	.byte	0x5b
	.4byte	0x6ee
	.uleb128 0xe
	.4byte	.LASF107
	.byte	0xd
	.byte	0x5d
	.4byte	0x467
	.byte	0
	.uleb128 0xe
	.4byte	.LASF108
	.byte	0xd
	.byte	0x5d
	.4byte	0x467
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF109
	.byte	0xd
	.byte	0x5d
	.4byte	0x124
	.byte	0x28
	.uleb128 0xf
	.string	"tos"
	.byte	0xd
	.byte	0x5d
	.4byte	0x124
	.byte	0x29
	.uleb128 0xf
	.string	"ttl"
	.byte	0xd
	.byte	0x5d
	.4byte	0x124
	.byte	0x2a
	.uleb128 0xe
	.4byte	.LASF38
	.byte	0xd
	.byte	0x61
	.4byte	0x6ee
	.byte	0x2c
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0xd
	.byte	0x63
	.4byte	0x124
	.byte	0x30
	.uleb128 0xe
	.4byte	.LASF110
	.byte	0xd
	.byte	0x65
	.4byte	0x13a
	.byte	0x32
	.uleb128 0xe
	.4byte	.LASF111
	.byte	0xd
	.byte	0x65
	.4byte	0x13a
	.byte	0x34
	.uleb128 0xe
	.4byte	.LASF112
	.byte	0xd
	.byte	0x69
	.4byte	0x467
	.byte	0x38
	.uleb128 0xe
	.4byte	.LASF113
	.byte	0xd
	.byte	0x6b
	.4byte	0x124
	.byte	0x4c
	.uleb128 0xe
	.4byte	.LASF114
	.byte	0xd
	.byte	0x74
	.4byte	0x714
	.byte	0x50
	.uleb128 0xe
	.4byte	.LASF115
	.byte	0xd
	.byte	0x76
	.4byte	0xad
	.byte	0x54
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x645
	.uleb128 0x12
	.4byte	0x124
	.4byte	0x704
	.uleb128 0x13
	.4byte	0xa6
	.byte	0x5
	.byte	0
	.uleb128 0x12
	.4byte	0xc3
	.4byte	0x714
	.uleb128 0x13
	.4byte	0xa6
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF116
	.byte	0xd
	.byte	0x58
	.4byte	0x71f
	.uleb128 0x6
	.byte	0x4
	.4byte	0x725
	.uleb128 0x9
	.4byte	0x744
	.uleb128 0xa
	.4byte	0xad
	.uleb128 0xa
	.4byte	0x6ee
	.uleb128 0xa
	.4byte	0x22f
	.uleb128 0xa
	.4byte	0x744
	.uleb128 0xa
	.4byte	0x13a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x74a
	.uleb128 0x8
	.4byte	0x467
	.uleb128 0x2
	.4byte	.LASF117
	.byte	0xe
	.byte	0x5e
	.4byte	0x75a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x760
	.uleb128 0x9
	.4byte	0x775
	.uleb128 0xa
	.4byte	0xca
	.uleb128 0xa
	.4byte	0x744
	.uleb128 0xa
	.4byte	0xad
	.byte	0
	.uleb128 0xd
	.4byte	.LASF118
	.byte	0xc
	.byte	0x1
	.byte	0xd4
	.4byte	0x7d5
	.uleb128 0xf
	.string	"id"
	.byte	0x1
	.byte	0xd5
	.4byte	0x13a
	.byte	0
	.uleb128 0xe
	.4byte	.LASF119
	.byte	0x1
	.byte	0xd6
	.4byte	0x124
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF120
	.byte	0x1
	.byte	0xd7
	.4byte	0x124
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF121
	.byte	0x1
	.byte	0xd8
	.4byte	0x13a
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF122
	.byte	0x1
	.byte	0xd9
	.4byte	0x13a
	.byte	0x6
	.uleb128 0xe
	.4byte	.LASF123
	.byte	0x1
	.byte	0xda
	.4byte	0x13a
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF124
	.byte	0x1
	.byte	0xdb
	.4byte	0x13a
	.byte	0xa
	.byte	0
	.uleb128 0xd
	.4byte	.LASF125
	.byte	0x4
	.byte	0x1
	.byte	0xe5
	.4byte	0x7fa
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0x1
	.byte	0xe8
	.4byte	0x13a
	.byte	0
	.uleb128 0xf
	.string	"cls"
	.byte	0x1
	.byte	0xe9
	.4byte	0x13a
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.4byte	.LASF126
	.byte	0xc
	.byte	0x1
	.byte	0xef
	.4byte	0x837
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0x1
	.byte	0xf2
	.4byte	0x13a
	.byte	0
	.uleb128 0xf
	.string	"cls"
	.byte	0x1
	.byte	0xf3
	.4byte	0x13a
	.byte	0x2
	.uleb128 0xf
	.string	"ttl"
	.byte	0x1
	.byte	0xf4
	.4byte	0x150
	.byte	0x4
	.uleb128 0xf
	.string	"len"
	.byte	0x1
	.byte	0xf5
	.4byte	0x13a
	.byte	0x8
	.byte	0
	.uleb128 0x18
	.4byte	.LASF127
	.2byte	0x124
	.byte	0x1
	.byte	0xfc
	.4byte	0x8d2
	.uleb128 0xf
	.string	"ttl"
	.byte	0x1
	.byte	0xfd
	.4byte	0x150
	.byte	0
	.uleb128 0xe
	.4byte	.LASF128
	.byte	0x1
	.byte	0xfe
	.4byte	0x467
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF129
	.byte	0x1
	.byte	0xff
	.4byte	0x13a
	.byte	0x18
	.uleb128 0x10
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x100
	.4byte	0x124
	.byte	0x1a
	.uleb128 0x10
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x101
	.4byte	0x124
	.byte	0x1b
	.uleb128 0x11
	.string	"tmr"
	.byte	0x1
	.2byte	0x102
	.4byte	0x124
	.byte	0x1c
	.uleb128 0x10
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x103
	.4byte	0x124
	.byte	0x1d
	.uleb128 0x10
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x104
	.4byte	0x124
	.byte	0x1e
	.uleb128 0x10
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x106
	.4byte	0x124
	.byte	0x1f
	.uleb128 0x10
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x108
	.4byte	0x8d2
	.byte	0x20
	.uleb128 0x19
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x10a
	.4byte	0x124
	.2byte	0x120
	.byte	0
	.uleb128 0x12
	.4byte	0xc3
	.4byte	0x8e2
	.uleb128 0x13
	.4byte	0xa6
	.byte	0xff
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF135
	.byte	0xc
	.byte	0x1
	.2byte	0x110
	.4byte	0x924
	.uleb128 0x10
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x112
	.4byte	0x74f
	.byte	0
	.uleb128 0x11
	.string	"arg"
	.byte	0x1
	.2byte	0x114
	.4byte	0xad
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x116
	.4byte	0x124
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x119
	.4byte	0x124
	.byte	0x9
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x151
	.4byte	0x3e
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9a9
	.uleb128 0x1c
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x151
	.4byte	0xca
	.4byte	.LLST0
	.uleb128 0x1c
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x151
	.4byte	0xca
	.4byte	.LLST1
	.uleb128 0x1d
	.string	"c1"
	.byte	0x1
	.2byte	0x153
	.4byte	0xc3
	.4byte	.LLST2
	.uleb128 0x1d
	.string	"c2"
	.byte	0x1
	.2byte	0x153
	.4byte	0xc3
	.4byte	.LLST3
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x1f
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x159
	.4byte	0xc3
	.4byte	.LLST4
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x1f
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x15d
	.4byte	0xc3
	.4byte	.LLST5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x26e
	.4byte	0x15b
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa28
	.uleb128 0x1c
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x26e
	.4byte	0xca
	.4byte	.LLST6
	.uleb128 0x20
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x26e
	.4byte	0xa28
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x26e
	.4byte	0x124
	.4byte	.LLST7
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.2byte	0x270
	.4byte	0x124
	.4byte	.LLST8
	.uleb128 0x21
	.4byte	.LVL16
	.4byte	0x924
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x14
	.byte	0x75
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x33
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	dns_table+32
	.byte	0x22
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x467
	.uleb128 0x1b
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x59c
	.4byte	0x10c
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa57
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.2byte	0x59e
	.4byte	0x3e
	.4byte	.LLST9
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x3b1
	.4byte	0x13a
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaa5
	.uleb128 0x1f
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x3b3
	.4byte	0x13a
	.4byte	.LLST10
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.2byte	0x3b4
	.4byte	0x124
	.4byte	.LLST11
	.uleb128 0x23
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x3b6
	.4byte	.L28
	.uleb128 0x24
	.4byte	.LVL31
	.4byte	0x199f
	.byte	0
	.uleb128 0x25
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x377
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb8a
	.uleb128 0x26
	.string	"idx"
	.byte	0x1
	.2byte	0x377
	.4byte	0x124
	.4byte	.LLST12
	.uleb128 0x1c
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x377
	.4byte	0xa28
	.4byte	.LLST13
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.2byte	0x37a
	.4byte	0x124
	.4byte	.LLST14
	.uleb128 0x27
	.4byte	.LASF150
	.4byte	0xb9a
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6466
	.uleb128 0x28
	.4byte	.LVL37
	.4byte	0x19aa
	.4byte	0xb28
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x381
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6466
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x28
	.4byte	.LVL38
	.4byte	0x19aa
	.4byte	0xb58
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x384
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6466
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x29
	.4byte	.LVL40
	.4byte	0xb80
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x14
	.byte	0x72
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x33
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	dns_table+32
	.byte	0x22
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL50
	.4byte	0x19b5
	.byte	0
	.uleb128 0x12
	.4byte	0xc3
	.4byte	0xb9a
	.uleb128 0x13
	.4byte	0xa6
	.byte	0xe
	.byte	0
	.uleb128 0x8
	.4byte	0xb8a
	.uleb128 0x1b
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x2dd
	.4byte	0x15b
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdc5
	.uleb128 0x26
	.string	"idx"
	.byte	0x1
	.2byte	0x2dd
	.4byte	0x124
	.4byte	.LLST15
	.uleb128 0x1d
	.string	"err"
	.byte	0x1
	.2byte	0x2df
	.4byte	0x15b
	.4byte	.LLST16
	.uleb128 0x2a
	.string	"hdr"
	.byte	0x1
	.2byte	0x2e0
	.4byte	0x775
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.string	"qry"
	.byte	0x1
	.2byte	0x2e1
	.4byte	0x7d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1d
	.string	"p"
	.byte	0x1
	.2byte	0x2e2
	.4byte	0x22f
	.4byte	.LLST17
	.uleb128 0x1f
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x2e3
	.4byte	0x13a
	.4byte	.LLST18
	.uleb128 0x1f
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x2e3
	.4byte	0x13a
	.4byte	.LLST19
	.uleb128 0x1f
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x2e4
	.4byte	0xca
	.4byte	.LLST20
	.uleb128 0x2b
	.4byte	.LASF151
	.byte	0x1
	.2byte	0x2e4
	.4byte	0xca
	.uleb128 0x1d
	.string	"n"
	.byte	0x1
	.2byte	0x2e5
	.4byte	0x124
	.4byte	.LLST21
	.uleb128 0x1f
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x2e6
	.4byte	0x124
	.4byte	.LLST22
	.uleb128 0x1f
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x2e7
	.4byte	0xdc5
	.4byte	.LLST23
	.uleb128 0x27
	.4byte	.LASF150
	.4byte	0xddb
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6434
	.uleb128 0x28
	.4byte	.LVL55
	.4byte	0x19aa
	.4byte	0xcae
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2eb
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6434
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.uleb128 0x28
	.4byte	.LVL56
	.4byte	0x19c0
	.4byte	0xcc2
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL57
	.4byte	0x19cb
	.4byte	0xcda
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x24
	.4byte	.LVL59
	.4byte	0x19d6
	.uleb128 0x28
	.4byte	.LVL60
	.4byte	0x19e1
	.4byte	0xd02
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x28
	.4byte	.LVL69
	.4byte	0x19ec
	.4byte	0xd22
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL70
	.4byte	0x19f7
	.4byte	0xd50
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x6
	.byte	0x77
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x6
	.byte	0x74
	.sleb128 1
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.uleb128 0x28
	.4byte	.LVL74
	.4byte	0x19ec
	.4byte	0xd6f
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x28
	.4byte	.LVL79
	.4byte	0x19f7
	.4byte	0xd8e
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x28
	.4byte	.LVL86
	.4byte	0x1a02
	.4byte	0xdb4
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x8
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	dns_servers
	.byte	0x22
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x35
	.byte	0
	.uleb128 0x21
	.4byte	.LVL89
	.4byte	0x1a0d
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x837
	.uleb128 0x12
	.4byte	0xc3
	.4byte	0xddb
	.uleb128 0x13
	.4byte	0xa6
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.4byte	0xdcb
	.uleb128 0x25
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x3cf
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xef0
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.2byte	0x3cf
	.4byte	0x124
	.4byte	.LLST24
	.uleb128 0x2c
	.string	"err"
	.byte	0x1
	.2byte	0x3d1
	.4byte	0x15b
	.uleb128 0x1f
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x3d2
	.4byte	0xdc5
	.4byte	.LLST25
	.uleb128 0x27
	.4byte	.LASF150
	.4byte	0xf00
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6488
	.uleb128 0x2d
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0xe66
	.uleb128 0x1f
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x3d9
	.4byte	0x13a
	.4byte	.LLST26
	.uleb128 0x24
	.4byte	.LVL95
	.4byte	0xa57
	.uleb128 0x21
	.4byte	.LVL97
	.4byte	0xb9f
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL94
	.4byte	0x19aa
	.4byte	0xe96
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3d4
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6488
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0
	.uleb128 0x28
	.4byte	.LVL98
	.4byte	0xaa5
	.4byte	0xeaf
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x28
	.4byte	.LVL101
	.4byte	0xb9f
	.4byte	0xec3
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL104
	.4byte	0x19aa
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x419
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6488
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0xc3
	.4byte	0xf00
	.uleb128 0x13
	.4byte	0xa6
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.4byte	0xef0
	.uleb128 0x25
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x422
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf3a
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.2byte	0x424
	.4byte	0x124
	.4byte	.LLST27
	.uleb128 0x21
	.4byte	.LVL107
	.4byte	0xde0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x32b
	.4byte	0x6ee
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xff2
	.uleb128 0x1d
	.string	"err"
	.byte	0x1
	.2byte	0x32d
	.4byte	0x15b
	.4byte	.LLST28
	.uleb128 0x1d
	.string	"ret"
	.byte	0x1
	.2byte	0x32e
	.4byte	0x6ee
	.4byte	.LLST29
	.uleb128 0x2d
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.4byte	0xfab
	.uleb128 0x1f
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x336
	.4byte	0x13a
	.4byte	.LLST30
	.uleb128 0x24
	.4byte	.LVL112
	.4byte	0x199f
	.uleb128 0x21
	.4byte	.LVL115
	.4byte	0x1a18
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL110
	.4byte	0x1a23
	.4byte	0xfbf
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x2e
	.byte	0
	.uleb128 0x28
	.4byte	.LVL120
	.4byte	0x19b5
	.4byte	0xfd3
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL124
	.4byte	0x1a2e
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	dns_recv
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF158
	.byte	0x1
	.2byte	0x34d
	.4byte	0x124
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1034
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.2byte	0x34f
	.4byte	0x124
	.4byte	.LLST31
	.uleb128 0x1d
	.string	"idx"
	.byte	0x1
	.2byte	0x350
	.4byte	0x124
	.4byte	.LLST32
	.uleb128 0x24
	.4byte	.LVL130
	.4byte	0xf3a
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x505
	.4byte	0x15b
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1166
	.uleb128 0x1c
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x505
	.4byte	0xca
	.4byte	.LLST33
	.uleb128 0x1c
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x505
	.4byte	0x25
	.4byte	.LLST34
	.uleb128 0x1c
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x505
	.4byte	0x74f
	.4byte	.LLST35
	.uleb128 0x1c
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x506
	.4byte	0xad
	.4byte	.LLST36
	.uleb128 0x1c
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x506
	.4byte	0x124
	.4byte	.LLST37
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.2byte	0x508
	.4byte	0x124
	.4byte	.LLST38
	.uleb128 0x1f
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x509
	.4byte	0x124
	.4byte	.LLST39
	.uleb128 0x1f
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x509
	.4byte	0x124
	.4byte	.LLST40
	.uleb128 0x1f
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x50a
	.4byte	0xdc5
	.4byte	.LLST41
	.uleb128 0x1f
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x50b
	.4byte	0x25
	.4byte	.LLST42
	.uleb128 0x1d
	.string	"req"
	.byte	0x1
	.2byte	0x50c
	.4byte	0x1166
	.4byte	.LLST43
	.uleb128 0x1d
	.string	"r"
	.byte	0x1
	.2byte	0x50f
	.4byte	0x124
	.4byte	.LLST44
	.uleb128 0x28
	.4byte	.LVL146
	.4byte	0x924
	.4byte	0x112c
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xa
	.byte	0x77
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	dns_table+32
	.byte	0x22
	.byte	0
	.uleb128 0x28
	.4byte	.LVL181
	.4byte	0x1a39
	.4byte	0x114c
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 32
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL184
	.4byte	0xff2
	.uleb128 0x21
	.4byte	.LVL188
	.4byte	0xde0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8e2
	.uleb128 0x1b
	.4byte	.LASF165
	.byte	0x1
	.2byte	0x29c
	.4byte	0x13a
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x121b
	.uleb128 0x1c
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x29c
	.4byte	0xbd
	.4byte	.LLST45
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.2byte	0x29c
	.4byte	0x22f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x29c
	.4byte	0x13a
	.4byte	.LLST46
	.uleb128 0x1d
	.string	"n"
	.byte	0x1
	.2byte	0x29e
	.4byte	0x62
	.4byte	.LLST47
	.uleb128 0x1f
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x29f
	.4byte	0x13a
	.4byte	.LLST48
	.uleb128 0x28
	.4byte	.LVL198
	.4byte	0x1a42
	.4byte	0x11ea
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL201
	.4byte	0x1a42
	.4byte	0x1204
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL208
	.4byte	0x1a42
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x2c0
	.4byte	0x13a
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1292
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.2byte	0x2c0
	.4byte	0x22f
	.4byte	.LLST49
	.uleb128 0x1c
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x2c0
	.4byte	0x13a
	.4byte	.LLST50
	.uleb128 0x1d
	.string	"n"
	.byte	0x1
	.2byte	0x2c2
	.4byte	0x62
	.4byte	.LLST51
	.uleb128 0x28
	.4byte	.LVL218
	.4byte	0x1a42
	.4byte	0x127b
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL225
	.4byte	0x1a42
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x431
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15bc
	.uleb128 0x26
	.string	"arg"
	.byte	0x1
	.2byte	0x431
	.4byte	0xad
	.4byte	.LLST52
	.uleb128 0x26
	.string	"pcb"
	.byte	0x1
	.2byte	0x431
	.4byte	0x6ee
	.4byte	.LLST53
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.2byte	0x431
	.4byte	0x22f
	.4byte	.LLST54
	.uleb128 0x1c
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x431
	.4byte	0x744
	.4byte	.LLST55
	.uleb128 0x1c
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x431
	.4byte	0x13a
	.4byte	.LLST56
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.2byte	0x433
	.4byte	0x124
	.4byte	.LLST57
	.uleb128 0x1f
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x433
	.4byte	0x124
	.4byte	.LLST58
	.uleb128 0x1f
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x434
	.4byte	0x13a
	.4byte	.LLST59
	.uleb128 0x1f
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x435
	.4byte	0x13a
	.4byte	.LLST60
	.uleb128 0x2a
	.string	"hdr"
	.byte	0x1
	.2byte	0x436
	.4byte	0x775
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.string	"ans"
	.byte	0x1
	.2byte	0x437
	.4byte	0x7fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2a
	.string	"qry"
	.byte	0x1
	.2byte	0x438
	.4byte	0x7d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1f
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x439
	.4byte	0x13a
	.4byte	.LLST61
	.uleb128 0x1f
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x439
	.4byte	0x13a
	.4byte	.LLST62
	.uleb128 0x23
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x4f5
	.4byte	.L149
	.uleb128 0x23
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x4ee
	.4byte	.L155
	.uleb128 0x23
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x4f1
	.4byte	.L163
	.uleb128 0x2d
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.4byte	0x1564
	.uleb128 0x1f
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x44b
	.4byte	0xdc5
	.4byte	.LLST63
	.uleb128 0x2f
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x1f
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x44f
	.4byte	0x124
	.4byte	.LLST64
	.uleb128 0x2d
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.4byte	0x143e
	.uleb128 0x30
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x493
	.4byte	0x3e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x24
	.4byte	.LVL268
	.4byte	0x1a4d
	.uleb128 0x28
	.4byte	.LVL271
	.4byte	0x1a58
	.4byte	0x1427
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL272
	.4byte	0xaa5
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 4
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.4byte	0x149f
	.uleb128 0x30
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x4b4
	.4byte	0x418
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x24
	.4byte	.LVL276
	.4byte	0x1a4d
	.uleb128 0x28
	.4byte	.LVL277
	.4byte	0x1a58
	.4byte	0x1488
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL279
	.4byte	0xaa5
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 4
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL239
	.4byte	0x19d6
	.uleb128 0x24
	.4byte	.LVL241
	.4byte	0x19d6
	.uleb128 0x28
	.4byte	.LVL257
	.4byte	0x116c
	.4byte	0x14d6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x75
	.sleb128 0
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x28
	.4byte	.LVL259
	.4byte	0x1a58
	.4byte	0x14fb
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL263
	.4byte	0x121b
	.4byte	0x150f
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL265
	.4byte	0x1a58
	.4byte	0x1535
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3a
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL281
	.4byte	0x19d6
	.uleb128 0x28
	.4byte	.LVL286
	.4byte	0x1a0d
	.4byte	0x1552
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL288
	.4byte	0xde0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL231
	.4byte	0x1a58
	.4byte	0x1589
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x24
	.4byte	.LVL232
	.4byte	0x19d6
	.uleb128 0x28
	.4byte	.LVL292
	.4byte	0xaa5
	.4byte	0x15ab
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x21
	.4byte	.LVL294
	.4byte	0x1a0d
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x172
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15dc
	.uleb128 0x32
	.4byte	.LASF150
	.4byte	0x15dc
	.byte	0
	.uleb128 0x8
	.4byte	0xdcb
	.uleb128 0x31
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x1a0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1658
	.uleb128 0x1c
	.4byte	.LASF184
	.byte	0x1
	.2byte	0x1a0
	.4byte	0x124
	.4byte	.LLST65
	.uleb128 0x1c
	.4byte	.LASF185
	.byte	0x1
	.2byte	0x1a0
	.4byte	0x744
	.4byte	.LLST66
	.uleb128 0x28
	.4byte	.LVL297
	.4byte	0x1a39
	.4byte	0x163c
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x72
	.sleb128 0
	.byte	0x3
	.4byte	dns_servers
	.byte	0x22
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x21
	.4byte	.LVL299
	.4byte	0x1a39
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x72
	.sleb128 0
	.byte	0x3
	.4byte	dns_servers
	.byte	0x22
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x1ac
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16a2
	.uleb128 0x20
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x1ac
	.4byte	0x10c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.4byte	.LASF184
	.byte	0x1
	.2byte	0x1ae
	.4byte	0x124
	.4byte	.LLST67
	.uleb128 0x21
	.4byte	.LVL303
	.4byte	0x15e1
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x1c2
	.4byte	0x467
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1707
	.uleb128 0x1c
	.4byte	.LASF184
	.byte	0x1
	.2byte	0x1c2
	.4byte	0x124
	.4byte	.LLST68
	.uleb128 0x28
	.4byte	.LVL308
	.4byte	0x1a39
	.4byte	0x16f1
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x8
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	dns_servers
	.byte	0x22
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x21
	.4byte	.LVL309
	.4byte	0x1a39
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x1d0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1727
	.uleb128 0x24
	.4byte	.LVL310
	.4byte	0xf05
	.byte	0
	.uleb128 0x33
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x5ae
	.4byte	0x15b
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1870
	.uleb128 0x1c
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x5ae
	.4byte	0xca
	.4byte	.LLST69
	.uleb128 0x20
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x5ae
	.4byte	0xa28
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x5ae
	.4byte	0x74f
	.4byte	.LLST70
	.uleb128 0x1c
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x5af
	.4byte	0xad
	.4byte	.LLST71
	.uleb128 0x1c
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x5af
	.4byte	0x124
	.4byte	.LLST72
	.uleb128 0x1f
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x5b1
	.4byte	0x25
	.4byte	.LLST73
	.uleb128 0x2d
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.4byte	0x17d3
	.uleb128 0x1f
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x5dc
	.4byte	0x124
	.4byte	.LLST74
	.uleb128 0x21
	.4byte	.LVL324
	.4byte	0x9a9
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL312
	.4byte	0x19c0
	.4byte	0x17e7
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL314
	.4byte	0x1a63
	.4byte	0x1804
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC45
	.byte	0
	.uleb128 0x28
	.4byte	.LVL321
	.4byte	0x1a6e
	.4byte	0x181e
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL322
	.4byte	0x9a9
	.4byte	0x183e
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL325
	.4byte	0xa2e
	.uleb128 0x21
	.4byte	.LVL326
	.4byte	0x1034
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x596
	.4byte	0x15b
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18ec
	.uleb128 0x1c
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x596
	.4byte	0xca
	.4byte	.LLST75
	.uleb128 0x20
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x596
	.4byte	0xa28
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x596
	.4byte	0x74f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x20
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x597
	.4byte	0xad
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x21
	.4byte	.LVL333
	.4byte	0x1727
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x6ee
	.4byte	0x18fc
	.uleb128 0x13
	.4byte	0xa6
	.byte	0x3
	.byte	0
	.uleb128 0x30
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x142
	.4byte	0x18ec
	.uleb128 0x5
	.byte	0x3
	.4byte	dns_pcbs
	.uleb128 0x30
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x144
	.4byte	0x124
	.uleb128 0x5
	.byte	0x3
	.4byte	dns_last_pcb_idx
	.uleb128 0x30
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x146
	.4byte	0x124
	.uleb128 0x5
	.byte	0x3
	.4byte	dns_seqno
	.uleb128 0x12
	.4byte	0x837
	.4byte	0x1942
	.uleb128 0x13
	.4byte	0xa6
	.byte	0x3
	.byte	0
	.uleb128 0x30
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x147
	.4byte	0x1932
	.uleb128 0x5
	.byte	0x3
	.4byte	dns_table
	.uleb128 0x12
	.4byte	0x8e2
	.4byte	0x1964
	.uleb128 0x13
	.4byte	0xa6
	.byte	0x3
	.byte	0
	.uleb128 0x30
	.4byte	.LASF197
	.byte	0x1
	.2byte	0x148
	.4byte	0x1954
	.uleb128 0x5
	.byte	0x3
	.4byte	dns_requests
	.uleb128 0x30
	.4byte	.LASF198
	.byte	0x1
	.2byte	0x149
	.4byte	0x604
	.uleb128 0x5
	.byte	0x3
	.4byte	dns_servers
	.uleb128 0x34
	.4byte	.LASF199
	.byte	0xb
	.byte	0x40
	.4byte	0x74a
	.uleb128 0x35
	.4byte	.LASF200
	.byte	0xb
	.2byte	0x110
	.4byte	0x74a
	.uleb128 0x36
	.4byte	.LASF201
	.4byte	.LASF201
	.byte	0xf
	.byte	0x8a
	.uleb128 0x36
	.4byte	.LASF202
	.4byte	.LASF202
	.byte	0x10
	.byte	0x29
	.uleb128 0x36
	.4byte	.LASF203
	.4byte	.LASF203
	.byte	0xd
	.byte	0x7f
	.uleb128 0x36
	.4byte	.LASF204
	.4byte	.LASF204
	.byte	0x11
	.byte	0x21
	.uleb128 0x36
	.4byte	.LASF205
	.4byte	.LASF205
	.byte	0x7
	.byte	0xc1
	.uleb128 0x36
	.4byte	.LASF206
	.4byte	.LASF206
	.byte	0x12
	.byte	0x6c
	.uleb128 0x36
	.4byte	.LASF207
	.4byte	.LASF207
	.byte	0x7
	.byte	0xd2
	.uleb128 0x36
	.4byte	.LASF208
	.4byte	.LASF208
	.byte	0x7
	.byte	0xdf
	.uleb128 0x36
	.4byte	.LASF209
	.4byte	.LASF209
	.byte	0x7
	.byte	0xd3
	.uleb128 0x36
	.4byte	.LASF210
	.4byte	.LASF210
	.byte	0xd
	.byte	0x8d
	.uleb128 0x36
	.4byte	.LASF211
	.4byte	.LASF211
	.byte	0x7
	.byte	0xcb
	.uleb128 0x36
	.4byte	.LASF212
	.4byte	.LASF212
	.byte	0xd
	.byte	0x80
	.uleb128 0x36
	.4byte	.LASF213
	.4byte	.LASF213
	.byte	0xd
	.byte	0x7e
	.uleb128 0x36
	.4byte	.LASF214
	.4byte	.LASF214
	.byte	0xd
	.byte	0x85
	.uleb128 0x37
	.4byte	.LASF223
	.4byte	.LASF223
	.uleb128 0x36
	.4byte	.LASF215
	.4byte	.LASF215
	.byte	0x7
	.byte	0xde
	.uleb128 0x36
	.4byte	.LASF216
	.4byte	.LASF216
	.byte	0x12
	.byte	0x6f
	.uleb128 0x36
	.4byte	.LASF217
	.4byte	.LASF217
	.byte	0x7
	.byte	0xd1
	.uleb128 0x36
	.4byte	.LASF218
	.4byte	.LASF218
	.byte	0x11
	.byte	0x1c
	.uleb128 0x36
	.4byte	.LASF219
	.4byte	.LASF219
	.byte	0xb
	.byte	0xa3
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x19
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL11
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x7c
	.sleb128 -1
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x72
	.sleb128 -1
	.4byte	.LVL10
	.4byte	.LFE15
	.2byte	0x2
	.byte	0x7c
	.sleb128 -1
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x7b
	.sleb128 -1
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x73
	.sleb128 -1
	.4byte	.LVL11
	.4byte	.LFE15
	.2byte	0x2
	.byte	0x7b
	.sleb128 -1
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL11
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL12
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL13
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL13
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL17
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL24
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL33
	.4byte	.LFE28
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LFE28
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL36
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL51
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL36
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL44
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL54
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL88
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL58
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL91
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL76
	.4byte	.LVL79-1
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL68
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL60
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL64
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1f
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0xd
	.byte	0x72
	.sleb128 0
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1f
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x9
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1f
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x7
	.byte	0x75
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1f
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x2
	.byte	0x73
	.sleb128 31
	.4byte	.LVL85
	.4byte	.LVL86-1
	.2byte	0x16
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x33
	.byte	0x24
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x22
	.byte	0x33
	.byte	0x24
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0xd
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x124
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LFE24
	.2byte	0xe
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0xa
	.2byte	0x124
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL92
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL100
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL93
	.4byte	.LVL99
	.2byte	0xd
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x124
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL100
	.4byte	.LVL102
	.2byte	0xd
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x124
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LFE29
	.2byte	0xd
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x124
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL96
	.4byte	.LVL97-1
	.2byte	0x2
	.byte	0x78
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL106
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL111
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL122
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL125
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL114
	.4byte	.LVL115-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL126
	.4byte	.LVL127
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL127
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL129
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL131
	.4byte	.LVL133
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL133
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL136
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL138
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL132
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL139
	.4byte	.LVL140
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL140
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL142
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL149
	.4byte	.LVL152
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL152
	.4byte	.LVL183
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL183
	.4byte	.LVL189
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL189
	.4byte	.LVL190
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL190
	.4byte	.LVL191
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL191
	.4byte	.LVL192
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL192
	.4byte	.LVL193
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL193
	.4byte	.LVL194
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL194
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL142
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL144
	.4byte	.LFE32
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL142
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL150
	.4byte	.LVL151
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	.LVL151
	.4byte	.LVL152
	.2byte	0x5
	.byte	0x75
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.4byte	.LVL152
	.4byte	.LVL178
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL178
	.4byte	.LVL181-1
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL181-1
	.4byte	.LVL189
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL189
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL142
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL145
	.4byte	.LFE32
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL142
	.4byte	.LVL179
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL179
	.4byte	.LVL181-1
	.2byte	0x2
	.byte	0x73
	.sleb128 9
	.4byte	.LVL181-1
	.4byte	.LVL189
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL189
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL143
	.4byte	.LVL145
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL145
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL156
	.4byte	.LVL157
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL157
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL158
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL163
	.4byte	.LVL164
	.2byte	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL164
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL166
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL169
	.4byte	.LVL191
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL193
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL158
	.4byte	.LVL171
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL174
	.4byte	.LVL177
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL189
	.4byte	.LVL193
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL158
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL162
	.4byte	.LVL170
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL189
	.4byte	.LVL193
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL143
	.4byte	.LVL158
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL158
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL160
	.4byte	.LVL167
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL168
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL180
	.4byte	.LVL182
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL182
	.4byte	.LVL185
	.2byte	0x16
	.byte	0x76
	.sleb128 0
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x8
	.byte	0xff
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL185
	.4byte	.LVL186
	.2byte	0x16
	.byte	0x76
	.sleb128 0
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x72
	.sleb128 0
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL186
	.4byte	.LVL189
	.2byte	0x16
	.byte	0x76
	.sleb128 0
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x8
	.byte	0xff
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL169
	.4byte	.LVL173
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL173
	.4byte	.LVL174
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL174
	.4byte	.LVL177
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL177
	.4byte	.LVL187
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL193
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL147
	.4byte	.LVL148
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL148
	.4byte	.LVL152
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL152
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL153
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL154
	.4byte	.LVL155
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL169
	.4byte	.LVL170
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL170
	.4byte	.LVL172
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL174
	.4byte	.LVL175
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL175
	.4byte	.LVL176
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL176
	.4byte	.LVL177
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL195
	.4byte	.LVL204
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL204
	.4byte	.LVL210
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL211
	.4byte	.LVL212
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL213
	.4byte	.LVL214
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL195
	.4byte	.LVL196
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL196
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL199
	.4byte	.LVL205
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL205
	.4byte	.LVL206
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL206
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL196
	.4byte	.LVL197
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL197
	.4byte	.LVL200
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL200
	.4byte	.LVL202
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL202
	.4byte	.LVL203
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL203
	.4byte	.LVL209
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL209
	.4byte	.LVL211
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL211
	.4byte	.LVL213
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL213
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL215
	.4byte	.LVL228
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL228
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL215
	.4byte	.LVL216
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL216
	.4byte	.LVL217
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL217
	.4byte	.LVL219
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL219
	.4byte	.LVL220
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL220
	.4byte	.LVL221
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL221
	.4byte	.LVL226
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL226
	.4byte	.LVL227
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL227
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL218
	.4byte	.LVL222
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL222
	.4byte	.LVL223
	.2byte	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL223
	.4byte	.LVL224
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL226
	.4byte	.LVL227
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL229
	.4byte	.LVL233
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL233
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL229
	.4byte	.LVL242
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL242
	.4byte	.LVL289
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL289
	.4byte	.LVL291
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL291
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL229
	.4byte	.LVL287
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL287
	.4byte	.LVL289
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL289
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL229
	.4byte	.LVL246
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL246
	.4byte	.LVL247
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL247
	.4byte	.LVL248
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL248
	.4byte	.LVL249
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL249
	.4byte	.LVL250
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL250
	.4byte	.LVL251
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL251
	.4byte	.LVL252
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL252
	.4byte	.LVL253
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL253
	.4byte	.LVL254
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL254
	.4byte	.LVL255
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL255
	.4byte	.LVL256
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL256
	.4byte	.LVL289
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL289
	.4byte	.LVL291
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL291
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL229
	.4byte	.LVL236
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL236
	.4byte	.LVL289
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL289
	.4byte	.LVL291
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL291
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL232
	.4byte	.LVL233
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL233
	.4byte	.LVL235
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL235
	.4byte	.LVL290
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL290
	.4byte	.LVL291
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL291
	.4byte	.LVL293
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL230
	.4byte	.LVL233
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL234
	.4byte	.LVL290
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL291
	.4byte	.LVL293
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL232
	.4byte	.LVL238
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL289
	.4byte	.LVL291
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL258
	.4byte	.LVL260
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL260
	.4byte	.LVL261
	.2byte	0x3
	.byte	0x75
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL261
	.4byte	.LVL262
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL262
	.4byte	.LVL263-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL264
	.4byte	.LVL266
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL266
	.4byte	.LVL267
	.2byte	0x3
	.byte	0x75
	.sleb128 -10
	.byte	0x9f
	.4byte	.LVL267
	.4byte	.LVL269
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL269
	.4byte	.LVL273
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL273
	.4byte	.LVL275
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL275
	.4byte	.LVL278
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL280
	.4byte	.LVL282
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL282
	.4byte	.LVL286-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL240
	.4byte	.LVL243
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL243
	.4byte	.LVL245
	.2byte	0x3
	.byte	0x77
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL242
	.4byte	.LVL270
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL273
	.4byte	.LVL274
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL280
	.4byte	.LVL283
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL283
	.4byte	.LVL284
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL284
	.4byte	.LVL285
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL234
	.4byte	.LVL290
	.2byte	0xd
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x124
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL291
	.4byte	.LVL293
	.2byte	0xd
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x124
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL237
	.4byte	.LVL244
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL295
	.4byte	.LVL296
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL296
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL295
	.4byte	.LVL298
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL298
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL301
	.4byte	.LVL302
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL302
	.4byte	.LVL304
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL304
	.4byte	.LVL305
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL305
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL306
	.4byte	.LVL307
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL307
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL311
	.4byte	.LVL315
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL315
	.4byte	.LVL320
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL320
	.4byte	.LVL329
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL329
	.4byte	.LVL330
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL330
	.4byte	.LVL331
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL331
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL311
	.4byte	.LVL318
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL318
	.4byte	.LVL320
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL320
	.4byte	.LVL329
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL329
	.4byte	.LVL330
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL330
	.4byte	.LVL331
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL331
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL311
	.4byte	.LVL317
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL317
	.4byte	.LVL320
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL320
	.4byte	.LVL329
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL329
	.4byte	.LVL330
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL330
	.4byte	.LVL331
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL331
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL311
	.4byte	.LVL319
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL319
	.4byte	.LVL320
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL320
	.4byte	.LVL329
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL329
	.4byte	.LVL330
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL330
	.4byte	.LVL331
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL331
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL313
	.4byte	.LVL316
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL320
	.4byte	.LVL327
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL328
	.4byte	.LVL329
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL330
	.4byte	.LVL331
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL323
	.4byte	.LVL324-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL332
	.4byte	.LVL334
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL334
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xbc
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	0
	.4byte	0
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	0
	.4byte	0
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF119:
	.string	"flags1"
.LASF103:
	.string	"netif_igmp_mac_filter_fn"
.LASF91:
	.string	"MEMP_SYS_TIMEOUT"
.LASF218:
	.string	"strcmp"
.LASF45:
	.string	"pbuf"
.LASF61:
	.string	"rs_count"
.LASF2:
	.string	"size_t"
.LASF156:
	.string	"dns_alloc_random_port"
.LASF212:
	.string	"udp_bind"
.LASF161:
	.string	"callback_arg"
.LASF194:
	.string	"dns_last_pcb_idx"
.LASF5:
	.string	"__uint8_t"
.LASF41:
	.string	"type"
.LASF180:
	.string	"ip4addr"
.LASF77:
	.string	"_ip_addr"
.LASF182:
	.string	"dns_init"
.LASF152:
	.string	"entry"
.LASF12:
	.string	"long long unsigned int"
.LASF58:
	.string	"dhcps_pcb"
.LASF158:
	.string	"dns_alloc_pcb"
.LASF74:
	.string	"addr"
.LASF50:
	.string	"ip6_addr_state"
.LASF185:
	.string	"dnsserver"
.LASF176:
	.string	"memerr"
.LASF84:
	.string	"MEMP_TCP_SEG"
.LASF92:
	.string	"MEMP_NETDB"
.LASF3:
	.string	"__int8_t"
.LASF207:
	.string	"pbuf_take"
.LASF69:
	.string	"loop_last"
.LASF38:
	.string	"next"
.LASF89:
	.string	"MEMP_ARP_QUEUE"
.LASF19:
	.string	"int16_t"
.LASF11:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF183:
	.string	"dns_setserver"
.LASF110:
	.string	"local_port"
.LASF15:
	.string	"long unsigned int"
.LASF201:
	.string	"esp_random"
.LASF67:
	.string	"mld_mac_filter"
.LASF195:
	.string	"dns_seqno"
.LASF64:
	.string	"hwaddr"
.LASF130:
	.string	"server_idx"
.LASF159:
	.string	"dns_enqueue"
.LASF40:
	.string	"tot_len"
.LASF94:
	.string	"MEMP_IP6_REASSDATA"
.LASF122:
	.string	"numanswers"
.LASF56:
	.string	"state"
.LASF62:
	.string	"hostname"
.LASF13:
	.string	"long int"
.LASF30:
	.string	"PBUF_IP"
.LASF37:
	.string	"PBUF_POOL"
.LASF80:
	.string	"MEMP_RAW_PCB"
.LASF73:
	.string	"ip4_addr"
.LASF36:
	.string	"PBUF_REF"
.LASF167:
	.string	"start_offset"
.LASF105:
	.string	"dhcp_event_fn"
.LASF20:
	.string	"uint16_t"
.LASF63:
	.string	"hwaddr_len"
.LASF147:
	.string	"dns_send"
.LASF165:
	.string	"dns_compare_name"
.LASF184:
	.string	"numdns"
.LASF81:
	.string	"MEMP_UDP_PCB"
.LASF197:
	.string	"dns_requests"
.LASF48:
	.string	"netmask"
.LASF138:
	.string	"str1"
.LASF102:
	.string	"netif_linkoutput_fn"
.LASF139:
	.string	"str2"
.LASF90:
	.string	"MEMP_IGMP_GROUP"
.LASF141:
	.string	"c2_upc"
.LASF10:
	.string	"__uint32_t"
.LASF7:
	.string	"__int16_t"
.LASF174:
	.string	"nanswers"
.LASF142:
	.string	"dns_stricmp"
.LASF162:
	.string	"lseq"
.LASF172:
	.string	"res_idx"
.LASF0:
	.string	"unsigned int"
.LASF116:
	.string	"udp_recv_fn"
.LASF72:
	.string	"last_ip_addr"
.LASF168:
	.string	"response_offset"
.LASF101:
	.string	"netif_output_ip6_fn"
.LASF96:
	.string	"MEMP_PBUF"
.LASF53:
	.string	"output"
.LASF153:
	.string	"dns_call_found"
.LASF114:
	.string	"recv"
.LASF217:
	.string	"pbuf_copy_partial"
.LASF191:
	.string	"fallback"
.LASF65:
	.string	"name"
.LASF44:
	.string	"l2_buf"
.LASF82:
	.string	"MEMP_TCP_PCB"
.LASF193:
	.string	"dns_pcbs"
.LASF145:
	.string	"dns_server_is_set"
.LASF200:
	.string	"ip_addr_any"
.LASF1:
	.string	"short unsigned int"
.LASF222:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\lwip"
.LASF189:
	.string	"dns_getserver"
.LASF75:
	.string	"ip4_addr_t"
.LASF93:
	.string	"MEMP_ND6_QUEUE"
.LASF209:
	.string	"pbuf_take_at"
.LASF211:
	.string	"pbuf_free"
.LASF157:
	.string	"port"
.LASF216:
	.string	"lwip_ntohl"
.LASF149:
	.string	"copy_len"
.LASF29:
	.string	"PBUF_TRANSPORT"
.LASF115:
	.string	"recv_arg"
.LASF126:
	.string	"dns_answer"
.LASF51:
	.string	"ipv6_addr_cb"
.LASF113:
	.string	"mcast_ttl"
.LASF120:
	.string	"flags2"
.LASF206:
	.string	"lwip_htons"
.LASF121:
	.string	"numquestions"
.LASF146:
	.string	"dns_create_txid"
.LASF181:
	.string	"ip6addr"
.LASF204:
	.string	"strlen"
.LASF98:
	.string	"MEMP_MAX"
.LASF163:
	.string	"lseqi"
.LASF131:
	.string	"retries"
.LASF148:
	.string	"query_idx"
.LASF24:
	.string	"s8_t"
.LASF28:
	.string	"err_t"
.LASF14:
	.string	"sizetype"
.LASF70:
	.string	"loop_cnt_current"
.LASF219:
	.string	"ipaddr_aton"
.LASF46:
	.string	"netif"
.LASF203:
	.string	"udp_remove"
.LASF95:
	.string	"MEMP_MLD6_GROUP"
.LASF66:
	.string	"igmp_mac_filter"
.LASF39:
	.string	"payload"
.LASF154:
	.string	"dns_check_entry"
.LASF137:
	.string	"dns_table_idx"
.LASF171:
	.string	"entry_idx"
.LASF47:
	.string	"ip_addr"
.LASF35:
	.string	"PBUF_ROM"
.LASF170:
	.string	"dns_recv"
.LASF213:
	.string	"udp_new_ip_type"
.LASF160:
	.string	"hostnamelen"
.LASF133:
	.string	"pcb_idx"
.LASF175:
	.string	"again"
.LASF124:
	.string	"numextrarr"
.LASF210:
	.string	"udp_sendto"
.LASF173:
	.string	"nquestions"
.LASF214:
	.string	"udp_recv"
.LASF155:
	.string	"dns_check_entries"
.LASF221:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/lwip/core/dns.c"
.LASF99:
	.string	"netif_input_fn"
.LASF31:
	.string	"PBUF_LINK"
.LASF59:
	.string	"dhcp_event"
.LASF135:
	.string	"dns_req_entry"
.LASF177:
	.string	"responseerr"
.LASF190:
	.string	"dns_gethostbyname_addrtype"
.LASF43:
	.string	"l2_owner"
.LASF112:
	.string	"multicast_ip"
.LASF22:
	.string	"_Bool"
.LASF202:
	.string	"__assert_func"
.LASF6:
	.string	"unsigned char"
.LASF107:
	.string	"local_ip"
.LASF220:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF196:
	.string	"dns_table"
.LASF8:
	.string	"short int"
.LASF187:
	.string	"keep_fallback"
.LASF100:
	.string	"netif_output_fn"
.LASF144:
	.string	"dns_addrtype"
.LASF127:
	.string	"dns_table_entry"
.LASF117:
	.string	"dns_found_callback"
.LASF27:
	.string	"u32_t"
.LASF150:
	.string	"__func__"
.LASF215:
	.string	"pbuf_get_at"
.LASF26:
	.string	"s16_t"
.LASF52:
	.string	"input"
.LASF34:
	.string	"PBUF_RAM"
.LASF104:
	.string	"netif_mld_mac_filter_fn"
.LASF178:
	.string	"flushentry"
.LASF33:
	.string	"PBUF_RAW"
.LASF32:
	.string	"PBUF_RAW_TX"
.LASF169:
	.string	"dns_parse_name"
.LASF21:
	.string	"uint32_t"
.LASF111:
	.string	"remote_port"
.LASF118:
	.string	"dns_hdr"
.LASF49:
	.string	"ip6_addr"
.LASF87:
	.string	"MEMP_TCPIP_MSG_API"
.LASF16:
	.string	"char"
.LASF208:
	.string	"pbuf_put_at"
.LASF123:
	.string	"numauthrr"
.LASF55:
	.string	"output_ip6"
.LASF85:
	.string	"MEMP_NETBUF"
.LASF9:
	.string	"__uint16_t"
.LASF83:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF86:
	.string	"MEMP_NETCONN"
.LASF97:
	.string	"MEMP_PBUF_POOL"
.LASF79:
	.string	"ip_addr_t"
.LASF164:
	.string	"namelen"
.LASF68:
	.string	"loop_first"
.LASF223:
	.string	"memcpy"
.LASF78:
	.string	"u_addr"
.LASF132:
	.string	"seqno"
.LASF109:
	.string	"so_options"
.LASF198:
	.string	"dns_servers"
.LASF17:
	.string	"int8_t"
.LASF134:
	.string	"reqaddrtype"
.LASF25:
	.string	"u16_t"
.LASF136:
	.string	"found"
.LASF125:
	.string	"dns_query"
.LASF76:
	.string	"ip6_addr_t"
.LASF199:
	.string	"ip_addr_any_type"
.LASF166:
	.string	"query"
.LASF179:
	.string	"dns_err"
.LASF188:
	.string	"dns_tmr"
.LASF129:
	.string	"txid"
.LASF128:
	.string	"ipaddr"
.LASF192:
	.string	"dns_gethostbyname"
.LASF18:
	.string	"uint8_t"
.LASF57:
	.string	"dhcp"
.LASF42:
	.string	"flags"
.LASF151:
	.string	"hostname_part"
.LASF106:
	.string	"udp_pcb"
.LASF71:
	.string	"l2_buffer_free_notify"
.LASF186:
	.string	"dns_clear_servers"
.LASF60:
	.string	"ip6_autoconfig_enabled"
.LASF54:
	.string	"linkoutput"
.LASF108:
	.string	"remote_ip"
.LASF205:
	.string	"pbuf_alloc"
.LASF140:
	.string	"c1_upc"
.LASF23:
	.string	"u8_t"
.LASF143:
	.string	"dns_lookup"
.LASF88:
	.string	"MEMP_TCPIP_MSG_INPKT"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
