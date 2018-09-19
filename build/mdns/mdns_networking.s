	.file	"mdns_networking.c"
	.text
.Ltext0:
	.section	.text._udp_pcb_v4_init,"ax",@progbits
	.literal_position
	.literal .LC1, _mdns_server
	.literal .LC2, -83885856
	.literal .LC3, 5353
	.literal .LC4, _udp_recv
	.align	4
	.type	_udp_pcb_v4_init, @function
_udp_pcb_v4_init:
.LFB19:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/mdns/mdns_networking.c"
	.loc 1 113 0
.LVL0:
	entry	sp, 96
.LCFI0:
	.loc 1 116 0
	l32r	a3, .LC1
	l32i.n	a9, a3, 0
	beqz.n	a9, .L8
	.loc 1 116 0 is_stmt 0 discriminator 1
	addx4	a10, a2, a2
	slli	a8, a10, 3
	add.n	a8, a9, a8
	l32i.n	a3, a8, 4
	bnez.n	a3, .L9
	.loc 1 120 0 is_stmt 1
	mov.n	a11, sp
	mov.n	a10, a2
	call8	tcpip_adapter_get_ip_info
.LVL1:
	mov.n	a3, a10
	bnez.n	a10, .L10
	.loc 1 120 0 is_stmt 0 discriminator 1
	l32i.n	a4, sp, 0
	beqz.n	a4, .L11
	.loc 1 124 0 is_stmt 1
	s32i.n	a4, sp, 12
	movi.n	a4, 0
	s32i.n	a4, sp, 16
	s32i.n	a4, sp, 20
	s32i.n	a4, sp, 24
	s8i	a4, sp, 28
	.loc 1 127 0
	l32r	a8, .LC2
	s32i.n	a8, sp, 32
	s8i	a4, sp, 48
	.loc 1 129 0
	addi	a11, sp, 32
	addi.n	a10, sp, 12
	call8	igmp_joingroup
.LVL2:
	extui	a10, a10, 0, 8
	bne	a10, a4, .L12
	.loc 1 133 0
	mov.n	a10, a4
	call8	udp_new_ip_type
.LVL3:
	mov.n	a4, a10
.LVL4:
	.loc 1 134 0
	beqz.n	a10, .L13
	.loc 1 138 0
	l32r	a12, .LC3
	addi.n	a11, sp, 12
	call8	udp_bind
.LVL5:
	extui	a10, a10, 0, 8
	beqz.n	a10, .L3
	.loc 1 139 0
	mov.n	a10, a4
	call8	udp_remove
.LVL6:
	.loc 1 140 0
	movi	a3, 0x103
	j	.L2
.L3:
	.loc 1 143 0
	movi.n	a8, 1
	s8i	a8, a4, 76
	.loc 1 144 0
	l32r	a5, .LC3
	s16i	a5, a4, 52
	.loc 1 145 0
	l8ui	a8, sp, 28
	s8i	a8, a4, 72
	bnei	a8, 6, .L4
	.loc 1 145 0 is_stmt 0 discriminator 1
	l32i.n	a8, sp, 12
	s32i.n	a8, a4, 56
	l32i.n	a8, sp, 16
	s32i.n	a8, a4, 60
	l32i.n	a8, sp, 20
	s32i	a8, a4, 64
	l32i.n	a8, sp, 24
	s32i	a8, a4, 68
	j	.L5
.L4:
	.loc 1 145 0 discriminator 2
	l32i.n	a8, sp, 12
	s32i.n	a8, a4, 56
.L5:
	.loc 1 146 0 is_stmt 1
	l8ui	a8, sp, 48
	s8i	a8, a4, 36
	bnei	a8, 6, .L6
	.loc 1 146 0 is_stmt 0 discriminator 1
	l32i.n	a8, sp, 32
	s32i.n	a8, a4, 20
	l32i.n	a8, sp, 36
	s32i.n	a8, a4, 24
	l32i.n	a8, sp, 40
	s32i.n	a8, a4, 28
	l32i.n	a8, sp, 44
	s32i.n	a8, a4, 32
	j	.L7
.L6:
	.loc 1 146 0 discriminator 2
	l32i.n	a8, sp, 32
	s32i.n	a8, a4, 20
.L7:
	.loc 1 148 0 is_stmt 1
	l32r	a8, .LC1
	l32i.n	a12, a8, 0
	slli	a8, a2, 2
	add.n	a10, a8, a2
	slli	a9, a10, 3
	add.n	a9, a12, a9
	s32i.n	a4, a9, 4
	.loc 1 149 0
	movi.n	a8, 0
	s16i	a8, a9, 16
	.loc 1 150 0
	l32r	a11, .LC4
	mov.n	a10, a4
	call8	udp_recv
.LVL7:
	.loc 1 152 0
	j	.L2
.LVL8:
.L8:
	.loc 1 117 0
	movi	a3, 0x103
	j	.L2
.L9:
	movi	a3, 0x103
	j	.L2
.L10:
	.loc 1 121 0
	movi	a3, 0x102
	j	.L2
.L11:
	movi	a3, 0x102
	j	.L2
.L12:
	.loc 1 130 0
	movi	a3, 0x103
	j	.L2
.LVL9:
.L13:
	.loc 1 135 0
	movi	a3, 0x101
.LVL10:
.L2:
	.loc 1 153 0
	mov.n	a2, a3
.LVL11:
	retw.n
.LFE19:
	.size	_udp_pcb_v4_init, .-_udp_pcb_v4_init
	.section	.text._udp_recv,"ax",@progbits
	.literal_position
	.literal .LC5, _mdns_server
	.literal .LC6, ip_data
	.align	4
	.type	_udp_recv, @function
_udp_recv:
.LFB17:
	.loc 1 22 0
.LVL12:
	entry	sp, 64
.LCFI1:
	s32i.n	a5, sp, 16
	extui	a6, a6, 0, 16
	s32i.n	a6, sp, 20
	.loc 1 25 0
	j	.L15
.LVL13:
.L29:
.LBB2:
	.loc 1 27 0
	l32i.n	a7, a4, 0
.LVL14:
	.loc 1 28 0
	movi.n	a2, 0
	s32i.n	a2, a4, 0
	.loc 1 30 0
	movi.n	a10, 0x38
	call8	malloc
.LVL15:
	mov.n	a3, a10
.LVL16:
	.loc 1 31 0
	bne	a10, a2, .L16
	.loc 1 33 0
	mov.n	a10, a4
	call8	pbuf_free
.LVL17:
	j	.L17
.L16:
	.loc 1 37 0
	movi.n	a2, 3
	s32i.n	a2, a10, 0
	.loc 1 38 0
	s32i.n	a4, a10, 8
	.loc 1 39 0
	l32i.n	a2, sp, 20
	s16i	a2, a10, 52
	.loc 1 40 0
	movi.n	a12, 0x14
	l32i.n	a11, sp, 16
	addi.n	a10, a10, 12
	call8	memcpy
.LVL18:
	.loc 1 41 0
	l8ui	a2, a3, 28
	s8i	a2, a3, 48
	.loc 1 43 0
	bnez.n	a2, .L18
.LBB3:
	.loc 1 44 0
	s32i.n	a2, a3, 4
	.loc 1 45 0
	l32i.n	a9, a4, 4
.LVL19:
	.loc 1 46 0
	addi	a9, a9, -28
.LVL20:
	l8ui	a8, a9, 16
	l8ui	a5, a9, 17
	slli	a5, a5, 8
	or	a6, a5, a8
	l8ui	a2, a9, 18
	slli	a2, a2, 16
	or	a5, a2, a6
	l8ui	a2, a9, 19
	slli	a2, a2, 24
	or	a2, a2, a5
	s32i.n	a2, a3, 32
.LBE3:
	j	.L19
.LVL21:
.L18:
.LBB4:
	.loc 1 48 0
	movi.n	a2, 1
	s32i.n	a2, a3, 4
	.loc 1 49 0
	l32i.n	a11, a4, 4
.LVL22:
	.loc 1 50 0
	movi.n	a12, 0x10
	addi	a11, a11, -24
.LVL23:
	addi	a10, a3, 32
	call8	memcpy
.LVL24:
.L19:
.LBE4:
	.loc 1 52 0
	addi	a2, a3, 32
	beqz.n	a2, .L20
	.loc 1 52 0 discriminator 1
	l8ui	a2, a3, 48
	bnei	a2, 6, .L20
	.loc 1 52 0 is_stmt 0 discriminator 3
	l8ui	a5, a3, 32
	movi	a2, -0xff
	add.n	a5, a5, a2
	movi.n	a2, 0
	movi.n	a6, 1
	moveqz	a2, a6, a5
	extui	a2, a2, 0, 8
	.loc 1 52 0 is_stmt 1 discriminator 3
	j	.L21
.L20:
	.loc 1 52 0 discriminator 4
	l32i.n	a5, a3, 32
	movi	a2, 0xf0
	and	a5, a5, a2
	movi	a2, -0xe0
	add.n	a5, a5, a2
	movi.n	a2, 0
	movi.n	a6, 1
	moveqz	a2, a6, a5
	extui	a2, a2, 0, 8
.L21:
	.loc 1 52 0 discriminator 6
	s8i	a2, a3, 54
.LVL25:
	.loc 1 56 0 discriminator 6
	movi.n	a2, 0
	s32i.n	a2, sp, 0
.LVL26:
	.loc 1 58 0 discriminator 6
	j	.L22
.LVL27:
.L26:
	.loc 1 59 0
	l32r	a5, .LC5
	l32i.n	a9, a5, 0
	l32i.n	a6, a3, 4
	addx4	a6, a6, a6
	slli	a8, a6, 2
	addx4	a6, a2, a2
	slli	a5, a6, 3
	add.n	a5, a8, a5
	add.n	a5, a9, a5
	l32i.n	a5, a5, 4
.LVL28:
	.loc 1 60 0
	mov.n	a6, a2
	mov.n	a11, sp
	mov.n	a10, a2
	call8	tcpip_adapter_get_netif
.LVL29:
	.loc 1 61 0
	l32i.n	a10, sp, 0
.LVL30:
	.loc 1 62 0
	movi.n	a8, 1
	movi.n	a9, 0
	mov.n	a11, a9
	movnez	a11, a8, a5
	moveqz	a8, a9, a10
	bnone	a11, a8, .L23
	.loc 1 62 0 is_stmt 0 discriminator 1
	l32r	a8, .LC6
	l32i.n	a8, a8, 4
	bne	a10, a8, .L23
	.loc 1 63 0 is_stmt 1
	l8ui	a2, a3, 28
.LVL31:
	bne	a2, a9, .L24
	.loc 1 64 0
	l32i.n	a9, a3, 12
	l32i.n	a2, a10, 4
	l32i.n	a8, a10, 24
	xor	a2, a9, a2
	bany	a2, a8, .L30
.L24:
	.loc 1 70 0
	s32i.n	a6, a3, 0
	.loc 1 71 0
	j	.L25
.LVL32:
.L23:
	.loc 1 58 0 discriminator 2
	addi.n	a2, a2, 1
.LVL33:
	extui	a2, a2, 0, 8
.LVL34:
.L22:
	.loc 1 58 0 is_stmt 0 discriminator 1
	bltui	a2, 3, .L26
	movi.n	a5, 0
	j	.L25
.LVL35:
.L30:
	.loc 1 66 0 is_stmt 1
	movi.n	a5, 0
.LVL36:
.L25:
	.loc 1 76 0
	beqz.n	a5, .L27
	.loc 1 76 0 is_stmt 0 discriminator 1
	l32r	a2, .LC5
	l32i.n	a2, a2, 0
	beqz.n	a2, .L27
	.loc 1 76 0 discriminator 2
	l32i	a2, a2, 136
	beqz.n	a2, .L27
	.loc 1 77 0 is_stmt 1
	mov.n	a10, a3
	call8	_mdns_send_rx_action
.LVL37:
	beqz.n	a10, .L17
.L27:
	.loc 1 78 0
	mov.n	a10, a4
	call8	pbuf_free
.LVL38:
	.loc 1 79 0
	mov.n	a10, a3
	call8	free
.LVL39:
.L17:
	mov.n	a4, a7
.LVL40:
.L15:
.LBE2:
	.loc 1 25 0
	bnez.n	a4, .L29
	.loc 1 83 0
	retw.n
.LFE17:
	.size	_udp_recv, .-_udp_recv
	.section	.rodata
	.align	4
.LC0:
	.word	767
	.word	0
	.word	0
	.word	-83886080
	.byte	6
	.zero	3
	.section	.text._udp_pcb_v6_init,"ax",@progbits
	.literal_position
	.literal .LC7, .LC0
	.literal .LC8, _mdns_server
	.literal .LC9, 5353
	.literal .LC10, _udp_recv
	.align	4
	.type	_udp_pcb_v6_init, @function
_udp_pcb_v6_init:
.LFB20:
	.loc 1 159 0
.LVL41:
	entry	sp, 80
.LCFI2:
	.loc 1 160 0
	movi.n	a12, 0x14
	l32r	a11, .LC7
	mov.n	a10, sp
	call8	memcpy
.LVL42:
	.loc 1 162 0
	movi.n	a3, 6
	s8i	a3, sp, 36
	.loc 1 164 0
	l32r	a3, .LC8
	l32i.n	a9, a3, 0
	beqz.n	a9, .L36
	.loc 1 164 0 is_stmt 0 discriminator 1
	addx4	a10, a2, a2
	slli	a8, a10, 3
	add.n	a8, a9, a8
	l32i.n	a3, a8, 24
	bnez.n	a3, .L37
	.loc 1 168 0 is_stmt 1
	addi	a11, sp, 20
	mov.n	a10, a2
	call8	tcpip_adapter_get_ip6_linklocal
.LVL43:
	mov.n	a3, a10
	bnez.n	a10, .L38
	.loc 1 172 0
	mov.n	a11, sp
	addi	a10, sp, 20
	call8	mld6_joingroup
.LVL44:
	extui	a10, a10, 0, 8
	bnez.n	a10, .L39
	.loc 1 176 0
	movi.n	a10, 6
	call8	udp_new_ip_type
.LVL45:
	mov.n	a4, a10
.LVL46:
	.loc 1 177 0
	beqz.n	a10, .L40
	.loc 1 181 0
	l32r	a12, .LC9
	addi	a11, sp, 20
	call8	udp_bind
.LVL47:
	extui	a10, a10, 0, 8
	beqz.n	a10, .L33
	.loc 1 182 0
	mov.n	a10, a4
	call8	udp_remove
.LVL48:
	.loc 1 183 0
	movi	a3, 0x103
	j	.L32
.L33:
	.loc 1 186 0
	l32r	a5, .LC9
	s16i	a5, a4, 52
	.loc 1 187 0
	l8ui	a8, sp, 16
	s8i	a8, a4, 36
	bnei	a8, 6, .L34
	.loc 1 187 0 is_stmt 0 discriminator 1
	l32i.n	a8, sp, 0
	s32i.n	a8, a4, 20
	l32i.n	a8, sp, 4
	s32i.n	a8, a4, 24
	l32i.n	a8, sp, 8
	s32i.n	a8, a4, 28
	l32i.n	a8, sp, 12
	s32i.n	a8, a4, 32
	j	.L35
.L34:
	.loc 1 187 0 discriminator 2
	l32i.n	a8, sp, 0
	s32i.n	a8, a4, 20
.L35:
	.loc 1 189 0 is_stmt 1
	l32r	a8, .LC8
	l32i.n	a12, a8, 0
	slli	a8, a2, 2
	add.n	a10, a8, a2
	slli	a9, a10, 3
	add.n	a9, a12, a9
	s32i.n	a4, a9, 24
	.loc 1 190 0
	movi.n	a8, 0
	s16i	a8, a9, 36
	.loc 1 191 0
	l32r	a11, .LC10
	mov.n	a10, a4
	call8	udp_recv
.LVL49:
	.loc 1 193 0
	j	.L32
.LVL50:
.L36:
	.loc 1 165 0
	movi	a3, 0x103
	j	.L32
.L37:
	movi	a3, 0x103
	j	.L32
.L38:
	.loc 1 169 0
	movi	a3, 0x102
	j	.L32
.L39:
	.loc 1 173 0
	movi	a3, 0x103
	j	.L32
.LVL51:
.L40:
	.loc 1 178 0
	movi	a3, 0x101
.LVL52:
.L32:
	.loc 1 194 0
	mov.n	a2, a3
.LVL53:
	retw.n
.LFE20:
	.size	_udp_pcb_v6_init, .-_udp_pcb_v6_init
	.section	.text._udp_pcb_init,"ax",@progbits
	.align	4
	.type	_udp_pcb_init, @function
_udp_pcb_init:
.LFB21:
	.loc 1 200 0
.LVL54:
	entry	sp, 32
.LCFI3:
	.loc 1 201 0
	bnez.n	a3, .L42
	.loc 1 202 0
	mov.n	a10, a2
	call8	_udp_pcb_v4_init
.LVL55:
	mov.n	a2, a10
.LVL56:
	retw.n
.LVL57:
.L42:
	.loc 1 203 0
	bnei	a3, 1, .L44
	.loc 1 204 0
	mov.n	a10, a2
	call8	_udp_pcb_v6_init
.LVL58:
	mov.n	a2, a10
.LVL59:
	retw.n
.LVL60:
.L44:
	.loc 1 206 0
	movi	a2, 0x102
.LVL61:
	.loc 1 207 0
	retw.n
.LFE21:
	.size	_udp_pcb_init, .-_udp_pcb_init
	.section	.text._mdns_pcb_init_api,"ax",@progbits
	.align	4
	.type	_mdns_pcb_init_api, @function
_mdns_pcb_init_api:
.LFB22:
	.loc 1 220 0
.LVL62:
	entry	sp, 32
.LCFI4:
.LVL63:
	.loc 1 222 0
	l32i.n	a11, a2, 16
	l32i.n	a10, a2, 12
	call8	_udp_pcb_init
.LVL64:
	s32i.n	a10, a2, 20
	.loc 1 224 0
	extui	a2, a10, 0, 8
.LVL65:
	retw.n
.LFE22:
	.size	_mdns_pcb_init_api, .-_mdns_pcb_init_api
	.section	.text._udp_pcb_deinit,"ax",@progbits
	.literal_position
	.literal .LC11, _mdns_server
	.align	4
	.type	_udp_pcb_deinit, @function
_udp_pcb_deinit:
.LFB18:
	.loc 1 89 0
.LVL66:
	entry	sp, 48
.LCFI5:
	.loc 1 90 0
	l32r	a4, .LC11
	l32i.n	a6, a4, 0
	beqz.n	a6, .L46
.LVL67:
	.loc 1 94 0
	addx4	a4, a3, a3
	slli	a5, a4, 2
	addx4	a7, a2, a2
	slli	a4, a7, 3
	mov.n	a7, a4
	add.n	a4, a5, a4
	add.n	a4, a6, a4
	l32i.n	a4, a4, 4
	beqz.n	a4, .L46
	.loc 1 95 0
	slli	a7, a3, 2
	add.n	a4, a7, a3
	slli	a5, a4, 2
	slli	a4, a2, 2
	s32i.n	a4, sp, 0
	add.n	a8, a4, a2
	slli	a4, a8, 3
	add.n	a4, a5, a4
	add.n	a4, a6, a4
	movi.n	a5, 0
	s32i.n	a5, a4, 0
	.loc 1 96 0
	mov.n	a12, a5
	mov.n	a11, a5
	l32i.n	a10, a4, 4
	call8	udp_recv
.LVL68:
	.loc 1 97 0
	l32i.n	a10, a4, 4
	call8	udp_disconnect
.LVL69:
	.loc 1 98 0
	l32i.n	a10, a4, 4
	call8	udp_remove
.LVL70:
	.loc 1 99 0
	l32i.n	a10, a4, 8
	call8	free
.LVL71:
	.loc 1 100 0
	s32i.n	a5, a4, 4
	.loc 1 101 0
	s8i	a5, a4, 13
	.loc 1 102 0
	s32i.n	a5, a4, 8
	.loc 1 103 0
	s8i	a5, a4, 12
	.loc 1 104 0
	s8i	a5, a4, 14
	.loc 1 105 0
	add.n	a3, a7, a3
.LVL72:
	slli	a4, a3, 2
	l32i.n	a3, sp, 0
	add.n	a2, a3, a2
.LVL73:
	slli	a3, a2, 3
	mov.n	a2, a3
	add.n	a3, a4, a3
	add.n	a6, a6, a3
.LVL74:
	s16i	a5, a6, 16
.L46:
	retw.n
.LFE18:
	.size	_udp_pcb_deinit, .-_udp_pcb_deinit
	.section	.text._mdns_pcb_deinit_api,"ax",@progbits
	.align	4
	.type	_mdns_pcb_deinit_api, @function
_mdns_pcb_deinit_api:
.LFB23:
	.loc 1 230 0
.LVL75:
	entry	sp, 32
.LCFI6:
.LVL76:
	.loc 1 232 0
	l32i.n	a11, a2, 16
	l32i.n	a10, a2, 12
	call8	_udp_pcb_deinit
.LVL77:
	.loc 1 233 0
	movi.n	a8, 0
	s32i.n	a8, a2, 20
	.loc 1 235 0
	mov.n	a2, a8
.LVL78:
	retw.n
.LFE23:
	.size	_mdns_pcb_deinit_api, .-_mdns_pcb_deinit_api
	.section	.text._mdns_pcb_init,"ax",@progbits
	.literal_position
	.literal .LC12, _mdns_pcb_init_api
	.align	4
	.global	_mdns_pcb_init
	.type	_mdns_pcb_init, @function
_mdns_pcb_init:
.LFB24:
	.loc 1 243 0
.LVL79:
	entry	sp, 64
.LCFI7:
	.loc 1 244 0
	movi.n	a8, 0
	s32i.n	a8, sp, 0
	s32i.n	a8, sp, 4
	s32i.n	a8, sp, 8
	s32i.n	a8, sp, 20
	s32i.n	a2, sp, 12
	s32i.n	a3, sp, 16
	.loc 1 248 0
	mov.n	a11, sp
	l32r	a10, .LC12
	call8	tcpip_api_call
.LVL80:
	.loc 1 250 0
	l32i.n	a2, sp, 20
.LVL81:
	retw.n
.LFE24:
	.size	_mdns_pcb_init, .-_mdns_pcb_init
	.section	.text._mdns_pcb_deinit,"ax",@progbits
	.literal_position
	.literal .LC13, _mdns_pcb_deinit_api
	.align	4
	.global	_mdns_pcb_deinit
	.type	_mdns_pcb_deinit, @function
_mdns_pcb_deinit:
.LFB25:
	.loc 1 253 0
.LVL82:
	entry	sp, 64
.LCFI8:
	.loc 1 254 0
	movi.n	a8, 0
	s32i.n	a8, sp, 0
	s32i.n	a8, sp, 4
	s32i.n	a8, sp, 8
	s32i.n	a8, sp, 20
	s32i.n	a2, sp, 12
	s32i.n	a3, sp, 16
	.loc 1 258 0
	mov.n	a11, sp
	l32r	a10, .LC13
	call8	tcpip_api_call
.LVL83:
	.loc 1 260 0
	l32i.n	a2, sp, 20
.LVL84:
	retw.n
.LFE25:
	.size	_mdns_pcb_deinit, .-_mdns_pcb_deinit
	.section	.text._mdns_udp_pcb_write,"ax",@progbits
	.literal_position
	.literal .LC14, _mdns_server
	.align	4
	.global	_mdns_udp_pcb_write
	.type	_mdns_udp_pcb_write, @function
_mdns_udp_pcb_write:
.LFB26:
	.loc 1 263 0
.LVL85:
	entry	sp, 64
.LCFI9:
	extui	a5, a5, 0, 16
	s32i.n	a5, sp, 20
.LVL86:
	.loc 1 265 0
	movi.n	a5, 0
.LVL87:
	s32i.n	a5, sp, 0
	.loc 1 266 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	tcpip_adapter_get_netif
.LVL88:
	.loc 1 267 0
	l32i.n	a5, sp, 0
	s32i.n	a5, sp, 16
.LVL89:
	.loc 1 268 0
	bnez.n	a10, .L53
	.loc 1 272 0
	movi.n	a12, 0
	extui	a11, a7, 0, 16
	mov.n	a10, a12
.LVL90:
	call8	pbuf_alloc
.LVL91:
	mov.n	a5, a10
.LVL92:
	.loc 1 273 0
	beqz.n	a10, .L54
	.loc 1 276 0
	mov.n	a12, a7
	mov.n	a11, a6
	l32i.n	a10, a10, 4
	call8	memcpy
.LVL93:
	.loc 1 278 0
	l32r	a6, .LC14
.LVL94:
	l32i.n	a8, a6, 0
	addx4	a3, a3, a3
.LVL95:
	slli	a6, a3, 2
	addx4	a2, a2, a2
.LVL96:
	slli	a3, a2, 3
	add.n	a3, a6, a3
	add.n	a3, a8, a3
	l32i.n	a14, sp, 16
	l32i.n	a13, sp, 20
	mov.n	a12, a4
	mov.n	a11, a5
	l32i.n	a10, a3, 4
	call8	udp_sendto_if
.LVL97:
	extui	a2, a10, 0, 8
.LVL98:
	.loc 1 279 0
	mov.n	a10, a5
	call8	pbuf_free
.LVL99:
	.loc 1 280 0
	beqz.n	a2, .L55
	.loc 1 281 0
	movi.n	a2, 0
.LVL100:
	retw.n
.LVL101:
.L53:
	.loc 1 269 0
	movi.n	a2, 0
.LVL102:
	retw.n
.LVL103:
.L54:
	.loc 1 274 0
	movi.n	a2, 0
.LVL104:
	retw.n
.LVL105:
.L55:
	.loc 1 283 0
	mov.n	a2, a7
.LVL106:
	.loc 1 284 0
	retw.n
.LFE26:
	.size	_mdns_udp_pcb_write, .-_mdns_udp_pcb_write
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
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI0-.LFB19
	.byte	0xe
	.uleb128 0x60
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
	.uleb128 0x40
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI2-.LFB20
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI3-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI4-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI5-.LFB18
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI6-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI7-.LFB24
	.byte	0xe
	.uleb128 0x40
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
	.uleb128 0x40
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
	.uleb128 0x40
	.align	4
.LEFDE18:
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_timer.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/queue.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/semphr.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/port/arch/sys_arch.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/port/arch/cc.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/ip4_addr.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/ip6_addr.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/ip_addr.h"
	.file 14 "D:/ESP32/esp-idf-v3.1-rc1/components/tcpip_adapter/include/tcpip_adapter.h"
	.file 15 "D:/ESP32/esp-idf-v3.1-rc1/components/mdns/include/mdns.h"
	.file 16 "D:/ESP32/esp-idf-v3.1-rc1/components/mdns/private_include/mdns_private.h"
	.file 17 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/pbuf.h"
	.file 18 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/udp.h"
	.file 19 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/err.h"
	.file 20 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/netif.h"
	.file 21 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/ip4.h"
	.file 22 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/ip6.h"
	.file 23 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/ip.h"
	.file 24 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/priv/tcpip_priv.h"
	.file 25 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/igmp.h"
	.file 26 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.file 27 "D:/ESP32/esp-idf-v3.1-rc1/components/mdns/private_include/mdns_networking.h"
	.file 28 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/mld6.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x187e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF268
	.byte	0xc
	.4byte	.LASF269
	.4byte	.LASF270
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x2
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
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x3
	.byte	0x11
	.4byte	0x50
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x3
	.byte	0x12
	.4byte	0x62
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x16
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0x19
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
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
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd0
	.uleb128 0x8
	.4byte	0xc3
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x14
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x15
	.4byte	0x57
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x21
	.4byte	0x70
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x2c
	.4byte	0x7b
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0x2d
	.4byte	0x86
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x5
	.byte	0x18
	.4byte	0xf6
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe0
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF23
	.uleb128 0x6
	.byte	0x4
	.4byte	0x12a
	.uleb128 0x9
	.4byte	0x135
	.uleb128 0xa
	.4byte	0xad
	.byte	0
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x6
	.byte	0x35
	.4byte	0x140
	.uleb128 0x6
	.byte	0x4
	.4byte	0x146
	.uleb128 0xb
	.4byte	.LASF199
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x7
	.byte	0x58
	.4byte	0xad
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x8
	.byte	0x4f
	.4byte	0x14b
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x9
	.byte	0x2f
	.4byte	0x156
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0xa
	.byte	0x2e
	.4byte	0xe0
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0xa
	.byte	0x2f
	.4byte	0xd5
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0xa
	.byte	0x30
	.4byte	0xeb
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0xa
	.byte	0x32
	.4byte	0x101
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x4
	.byte	0xb
	.byte	0x2e
	.4byte	0x1b1
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0xb
	.byte	0x2f
	.4byte	0x18d
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x4
	.byte	0xb
	.byte	0x38
	.4byte	0x1ca
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0xb
	.byte	0x39
	.4byte	0x18d
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0xb
	.byte	0x42
	.4byte	0x198
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0xb
	.byte	0x43
	.4byte	0x1b1
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x10
	.byte	0xc
	.byte	0x39
	.4byte	0x1f9
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0xc
	.byte	0x3a
	.4byte	0x1f9
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0x18d
	.4byte	0x209
	.uleb128 0xf
	.4byte	0xa6
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x10
	.byte	0xc
	.byte	0x43
	.4byte	0x222
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0xc
	.byte	0x44
	.4byte	0x1f9
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0xc
	.byte	0x4b
	.4byte	0x1e0
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0xc
	.byte	0x4c
	.4byte	0x209
	.uleb128 0x10
	.byte	0x10
	.byte	0xd
	.byte	0x39
	.4byte	0x257
	.uleb128 0x11
	.string	"ip6"
	.byte	0xd
	.byte	0x3a
	.4byte	0x222
	.uleb128 0x11
	.string	"ip4"
	.byte	0xd
	.byte	0x3b
	.4byte	0x1ca
	.byte	0
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x14
	.byte	0xd
	.byte	0x38
	.4byte	0x27c
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0xd
	.byte	0x3c
	.4byte	0x238
	.byte	0
	.uleb128 0xd
	.4byte	.LASF43
	.byte	0xd
	.byte	0x3d
	.4byte	0x16c
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0xd
	.byte	0x3e
	.4byte	0x257
	.uleb128 0xe
	.4byte	0x16c
	.4byte	0x297
	.uleb128 0xf
	.4byte	0xa6
	.byte	0x5
	.byte	0
	.uleb128 0x12
	.byte	0xc
	.byte	0xe
	.byte	0x48
	.4byte	0x2c2
	.uleb128 0x13
	.string	"ip"
	.byte	0xe
	.byte	0x49
	.4byte	0x1ca
	.byte	0
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0xe
	.byte	0x4a
	.4byte	0x1ca
	.byte	0x4
	.uleb128 0x13
	.string	"gw"
	.byte	0xe
	.byte	0x4b
	.4byte	0x1ca
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0xe
	.byte	0x4c
	.4byte	0x297
	.uleb128 0x14
	.byte	0x4
	.4byte	0x37
	.byte	0xe
	.byte	0x6d
	.4byte	0x2f2
	.uleb128 0x15
	.4byte	.LASF47
	.byte	0
	.uleb128 0x15
	.4byte	.LASF48
	.byte	0x1
	.uleb128 0x15
	.4byte	.LASF49
	.byte	0x2
	.uleb128 0x15
	.4byte	.LASF50
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF51
	.byte	0xe
	.byte	0x72
	.4byte	0x2cd
	.uleb128 0x14
	.byte	0x4
	.4byte	0x37
	.byte	0xf
	.byte	0x24
	.4byte	0x31c
	.uleb128 0x15
	.4byte	.LASF52
	.byte	0
	.uleb128 0x15
	.4byte	.LASF53
	.byte	0x1
	.uleb128 0x15
	.4byte	.LASF54
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0xf
	.byte	0x28
	.4byte	0x2fd
	.uleb128 0x12
	.byte	0x8
	.byte	0xf
	.byte	0x2e
	.4byte	0x348
	.uleb128 0x13
	.string	"key"
	.byte	0xf
	.byte	0x2f
	.4byte	0xbd
	.byte	0
	.uleb128 0xd
	.4byte	.LASF56
	.byte	0xf
	.byte	0x30
	.4byte	0xbd
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0xf
	.byte	0x31
	.4byte	0x327
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x18
	.byte	0xf
	.byte	0x36
	.4byte	0x378
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0xf
	.byte	0x37
	.4byte	0x27c
	.byte	0
	.uleb128 0xd
	.4byte	.LASF59
	.byte	0xf
	.byte	0x38
	.4byte	0x378
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x353
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0xf
	.byte	0x39
	.4byte	0x353
	.uleb128 0xc
	.4byte	.LASF61
	.byte	0x24
	.byte	0xf
	.byte	0x3e
	.4byte	0x402
	.uleb128 0xd
	.4byte	.LASF59
	.byte	0xf
	.byte	0x3f
	.4byte	0x402
	.byte	0
	.uleb128 0xd
	.4byte	.LASF62
	.byte	0xf
	.byte	0x41
	.4byte	0x2f2
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF63
	.byte	0xf
	.byte	0x42
	.4byte	0x31c
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF64
	.byte	0xf
	.byte	0x44
	.4byte	0xbd
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF65
	.byte	0xf
	.byte	0x46
	.4byte	0xbd
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF66
	.byte	0xf
	.byte	0x47
	.4byte	0xeb
	.byte	0x14
	.uleb128 0x13
	.string	"txt"
	.byte	0xf
	.byte	0x49
	.4byte	0x408
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF67
	.byte	0xf
	.byte	0x4a
	.4byte	0x2c
	.byte	0x1c
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0xf
	.byte	0x4c
	.4byte	0x40e
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x389
	.uleb128 0x6
	.byte	0x4
	.4byte	0x348
	.uleb128 0x6
	.byte	0x4
	.4byte	0x37e
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0xf
	.byte	0x4d
	.4byte	0x389
	.uleb128 0x14
	.byte	0x4
	.4byte	0x37
	.byte	0x10
	.byte	0x77
	.4byte	0x468
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x1
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x2
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x3
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x7
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x9
	.byte	0
	.uleb128 0x3
	.4byte	.LASF79
	.byte	0x10
	.byte	0x7c
	.4byte	0x41f
	.uleb128 0x12
	.byte	0x38
	.byte	0x10
	.byte	0xe0
	.4byte	0x4cf
	.uleb128 0xd
	.4byte	.LASF62
	.byte	0x10
	.byte	0xe1
	.4byte	0x2f2
	.byte	0
	.uleb128 0xd
	.4byte	.LASF63
	.byte	0x10
	.byte	0xe2
	.4byte	0x31c
	.byte	0x4
	.uleb128 0x13
	.string	"pb"
	.byte	0x10
	.byte	0xe3
	.4byte	0x548
	.byte	0x8
	.uleb128 0x13
	.string	"src"
	.byte	0x10
	.byte	0xe4
	.4byte	0x27c
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF80
	.byte	0x10
	.byte	0xe5
	.4byte	0x27c
	.byte	0x20
	.uleb128 0xd
	.4byte	.LASF81
	.byte	0x10
	.byte	0xe6
	.4byte	0xeb
	.byte	0x34
	.uleb128 0xd
	.4byte	.LASF82
	.byte	0x10
	.byte	0xe7
	.4byte	0xe0
	.byte	0x36
	.byte	0
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0x18
	.byte	0x11
	.byte	0x6c
	.4byte	0x548
	.uleb128 0xd
	.4byte	.LASF59
	.byte	0x11
	.byte	0x6e
	.4byte	0x548
	.byte	0
	.uleb128 0xd
	.4byte	.LASF84
	.byte	0x11
	.byte	0x71
	.4byte	0xad
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF85
	.byte	0x11
	.byte	0x7a
	.4byte	0x182
	.byte	0x8
	.uleb128 0x13
	.string	"len"
	.byte	0x11
	.byte	0x7d
	.4byte	0x182
	.byte	0xa
	.uleb128 0xd
	.4byte	.LASF43
	.byte	0x11
	.byte	0x80
	.4byte	0x16c
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF86
	.byte	0x11
	.byte	0x83
	.4byte	0x16c
	.byte	0xd
	.uleb128 0x13
	.string	"ref"
	.byte	0x11
	.byte	0x8a
	.4byte	0x182
	.byte	0xe
	.uleb128 0xd
	.4byte	.LASF87
	.byte	0x11
	.byte	0x8d
	.4byte	0xcff
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF88
	.byte	0x11
	.byte	0x8e
	.4byte	0xad
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4cf
	.uleb128 0x3
	.4byte	.LASF89
	.byte	0x10
	.byte	0xe8
	.4byte	0x473
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0xc
	.byte	0x10
	.byte	0xea
	.4byte	0x58a
	.uleb128 0x13
	.string	"key"
	.byte	0x10
	.byte	0xeb
	.4byte	0xca
	.byte	0
	.uleb128 0xd
	.4byte	.LASF56
	.byte	0x10
	.byte	0xec
	.4byte	0xca
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF59
	.byte	0x10
	.byte	0xed
	.4byte	0x58a
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x559
	.uleb128 0x3
	.4byte	.LASF91
	.byte	0x10
	.byte	0xee
	.4byte	0x559
	.uleb128 0x12
	.byte	0x18
	.byte	0x10
	.byte	0xf0
	.4byte	0x5f8
	.uleb128 0xd
	.4byte	.LASF92
	.byte	0x10
	.byte	0xf1
	.4byte	0xca
	.byte	0
	.uleb128 0xd
	.4byte	.LASF93
	.byte	0x10
	.byte	0xf2
	.4byte	0xca
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF94
	.byte	0x10
	.byte	0xf3
	.4byte	0xca
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF95
	.byte	0x10
	.byte	0xf4
	.4byte	0xeb
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF96
	.byte	0x10
	.byte	0xf5
	.4byte	0xeb
	.byte	0xe
	.uleb128 0xd
	.4byte	.LASF66
	.byte	0x10
	.byte	0xf6
	.4byte	0xeb
	.byte	0x10
	.uleb128 0x13
	.string	"txt"
	.byte	0x10
	.byte	0xf7
	.4byte	0x5f8
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x590
	.uleb128 0x3
	.4byte	.LASF97
	.byte	0x10
	.byte	0xf8
	.4byte	0x59b
	.uleb128 0xc
	.4byte	.LASF98
	.byte	0x8
	.byte	0x10
	.byte	0xfa
	.4byte	0x62e
	.uleb128 0xd
	.4byte	.LASF59
	.byte	0x10
	.byte	0xfb
	.4byte	0x62e
	.byte	0
	.uleb128 0xd
	.4byte	.LASF93
	.byte	0x10
	.byte	0xfc
	.4byte	0x634
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x609
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5fe
	.uleb128 0x3
	.4byte	.LASF99
	.byte	0x10
	.byte	0xfd
	.4byte	0x609
	.uleb128 0xc
	.4byte	.LASF100
	.byte	0x18
	.byte	0x10
	.byte	0xff
	.4byte	0x6ad
	.uleb128 0x16
	.4byte	.LASF59
	.byte	0x10
	.2byte	0x100
	.4byte	0x6ad
	.byte	0
	.uleb128 0x16
	.4byte	.LASF43
	.byte	0x10
	.2byte	0x101
	.4byte	0xeb
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF101
	.byte	0x10
	.2byte	0x102
	.4byte	0xe0
	.byte	0x6
	.uleb128 0x16
	.4byte	.LASF102
	.byte	0x10
	.2byte	0x103
	.4byte	0xca
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF93
	.byte	0x10
	.2byte	0x104
	.4byte	0xca
	.byte	0xc
	.uleb128 0x16
	.4byte	.LASF94
	.byte	0x10
	.2byte	0x105
	.4byte	0xca
	.byte	0x10
	.uleb128 0x16
	.4byte	.LASF103
	.byte	0x10
	.2byte	0x106
	.4byte	0xca
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x645
	.uleb128 0x17
	.4byte	.LASF104
	.byte	0x10
	.2byte	0x107
	.4byte	0x645
	.uleb128 0x18
	.4byte	.LASF105
	.byte	0x18
	.byte	0x10
	.2byte	0x109
	.4byte	0x735
	.uleb128 0x16
	.4byte	.LASF59
	.byte	0x10
	.2byte	0x10a
	.4byte	0x735
	.byte	0
	.uleb128 0x16
	.4byte	.LASF43
	.byte	0x10
	.2byte	0x10b
	.4byte	0xeb
	.byte	0x4
	.uleb128 0x19
	.string	"bye"
	.byte	0x10
	.2byte	0x10c
	.4byte	0xe0
	.byte	0x6
	.uleb128 0x16
	.4byte	.LASF106
	.byte	0x10
	.2byte	0x10d
	.4byte	0xe0
	.byte	0x7
	.uleb128 0x16
	.4byte	.LASF93
	.byte	0x10
	.2byte	0x10e
	.4byte	0x634
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF107
	.byte	0x10
	.2byte	0x10f
	.4byte	0xca
	.byte	0xc
	.uleb128 0x16
	.4byte	.LASF108
	.byte	0x10
	.2byte	0x110
	.4byte	0xca
	.byte	0x10
	.uleb128 0x16
	.4byte	.LASF109
	.byte	0x10
	.2byte	0x111
	.4byte	0xca
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6bf
	.uleb128 0x17
	.4byte	.LASF110
	.byte	0x10
	.2byte	0x112
	.4byte	0x6bf
	.uleb128 0x18
	.4byte	.LASF111
	.byte	0x3c
	.byte	0x10
	.2byte	0x114
	.4byte	0x7f1
	.uleb128 0x16
	.4byte	.LASF59
	.byte	0x10
	.2byte	0x115
	.4byte	0x7f1
	.byte	0
	.uleb128 0x16
	.4byte	.LASF112
	.byte	0x10
	.2byte	0x116
	.4byte	0x101
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF62
	.byte	0x10
	.2byte	0x117
	.4byte	0x2f2
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF63
	.byte	0x10
	.2byte	0x118
	.4byte	0x31c
	.byte	0xc
	.uleb128 0x19
	.string	"dst"
	.byte	0x10
	.2byte	0x119
	.4byte	0x27c
	.byte	0x10
	.uleb128 0x16
	.4byte	.LASF66
	.byte	0x10
	.2byte	0x11a
	.4byte	0xeb
	.byte	0x24
	.uleb128 0x16
	.4byte	.LASF86
	.byte	0x10
	.2byte	0x11b
	.4byte	0xeb
	.byte	0x26
	.uleb128 0x16
	.4byte	.LASF113
	.byte	0x10
	.2byte	0x11c
	.4byte	0xe0
	.byte	0x28
	.uleb128 0x16
	.4byte	.LASF114
	.byte	0x10
	.2byte	0x11d
	.4byte	0x7f7
	.byte	0x2c
	.uleb128 0x16
	.4byte	.LASF115
	.byte	0x10
	.2byte	0x11e
	.4byte	0x7fd
	.byte	0x30
	.uleb128 0x16
	.4byte	.LASF116
	.byte	0x10
	.2byte	0x11f
	.4byte	0x7fd
	.byte	0x34
	.uleb128 0x16
	.4byte	.LASF117
	.byte	0x10
	.2byte	0x120
	.4byte	0x7fd
	.byte	0x38
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x747
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6b3
	.uleb128 0x6
	.byte	0x4
	.4byte	0x73b
	.uleb128 0x17
	.4byte	.LASF118
	.byte	0x10
	.2byte	0x121
	.4byte	0x747
	.uleb128 0x1a
	.byte	0x14
	.byte	0x10
	.2byte	0x123
	.4byte	0x874
	.uleb128 0x16
	.4byte	.LASF119
	.byte	0x10
	.2byte	0x124
	.4byte	0x468
	.byte	0
	.uleb128 0x19
	.string	"pcb"
	.byte	0x10
	.2byte	0x125
	.4byte	0x91d
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF120
	.byte	0x10
	.2byte	0x126
	.4byte	0x923
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF121
	.byte	0x10
	.2byte	0x127
	.4byte	0xe0
	.byte	0xc
	.uleb128 0x16
	.4byte	.LASF122
	.byte	0x10
	.2byte	0x128
	.4byte	0xe0
	.byte	0xd
	.uleb128 0x16
	.4byte	.LASF123
	.byte	0x10
	.2byte	0x129
	.4byte	0xe0
	.byte	0xe
	.uleb128 0x16
	.4byte	.LASF124
	.byte	0x10
	.2byte	0x12a
	.4byte	0xeb
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.4byte	.LASF125
	.byte	0x58
	.byte	0x12
	.byte	0x5b
	.4byte	0x91d
	.uleb128 0xd
	.4byte	.LASF126
	.byte	0x12
	.byte	0x5d
	.4byte	0x27c
	.byte	0
	.uleb128 0xd
	.4byte	.LASF127
	.byte	0x12
	.byte	0x5d
	.4byte	0x27c
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF128
	.byte	0x12
	.byte	0x5d
	.4byte	0x16c
	.byte	0x28
	.uleb128 0x13
	.string	"tos"
	.byte	0x12
	.byte	0x5d
	.4byte	0x16c
	.byte	0x29
	.uleb128 0x13
	.string	"ttl"
	.byte	0x12
	.byte	0x5d
	.4byte	0x16c
	.byte	0x2a
	.uleb128 0xd
	.4byte	.LASF59
	.byte	0x12
	.byte	0x61
	.4byte	0x91d
	.byte	0x2c
	.uleb128 0xd
	.4byte	.LASF86
	.byte	0x12
	.byte	0x63
	.4byte	0x16c
	.byte	0x30
	.uleb128 0xd
	.4byte	.LASF129
	.byte	0x12
	.byte	0x65
	.4byte	0x182
	.byte	0x32
	.uleb128 0xd
	.4byte	.LASF130
	.byte	0x12
	.byte	0x65
	.4byte	0x182
	.byte	0x34
	.uleb128 0xd
	.4byte	.LASF131
	.byte	0x12
	.byte	0x69
	.4byte	0x27c
	.byte	0x38
	.uleb128 0xd
	.4byte	.LASF132
	.byte	0x12
	.byte	0x6b
	.4byte	0x16c
	.byte	0x4c
	.uleb128 0xd
	.4byte	.LASF133
	.byte	0x12
	.byte	0x74
	.4byte	0xfb0
	.byte	0x50
	.uleb128 0xd
	.4byte	.LASF134
	.byte	0x12
	.byte	0x76
	.4byte	0xad
	.byte	0x54
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x874
	.uleb128 0x6
	.byte	0x4
	.4byte	0x929
	.uleb128 0x6
	.byte	0x4
	.4byte	0x63a
	.uleb128 0x17
	.4byte	.LASF135
	.byte	0x10
	.2byte	0x12b
	.4byte	0x80f
	.uleb128 0x1b
	.byte	0x4
	.4byte	0x37
	.byte	0x10
	.2byte	0x12d
	.4byte	0x961
	.uleb128 0x15
	.4byte	.LASF136
	.byte	0
	.uleb128 0x15
	.4byte	.LASF137
	.byte	0x1
	.uleb128 0x15
	.4byte	.LASF138
	.byte	0x2
	.uleb128 0x15
	.4byte	.LASF139
	.byte	0x3
	.byte	0
	.uleb128 0x17
	.4byte	.LASF140
	.byte	0x10
	.2byte	0x132
	.4byte	0x93b
	.uleb128 0x18
	.4byte	.LASF141
	.byte	0x2c
	.byte	0x10
	.2byte	0x134
	.4byte	0xa24
	.uleb128 0x16
	.4byte	.LASF59
	.byte	0x10
	.2byte	0x135
	.4byte	0xa24
	.byte	0
	.uleb128 0x16
	.4byte	.LASF119
	.byte	0x10
	.2byte	0x137
	.4byte	0x961
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF142
	.byte	0x10
	.2byte	0x138
	.4byte	0x101
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF143
	.byte	0x10
	.2byte	0x139
	.4byte	0x101
	.byte	0xc
	.uleb128 0x16
	.4byte	.LASF144
	.byte	0x10
	.2byte	0x13a
	.4byte	0x101
	.byte	0x10
	.uleb128 0x16
	.4byte	.LASF145
	.byte	0x10
	.2byte	0x13b
	.4byte	0x156
	.byte	0x14
	.uleb128 0x16
	.4byte	.LASF43
	.byte	0x10
	.2byte	0x13c
	.4byte	0xeb
	.byte	0x18
	.uleb128 0x16
	.4byte	.LASF146
	.byte	0x10
	.2byte	0x13d
	.4byte	0xe0
	.byte	0x1a
	.uleb128 0x16
	.4byte	.LASF147
	.byte	0x10
	.2byte	0x13e
	.4byte	0xe0
	.byte	0x1b
	.uleb128 0x16
	.4byte	.LASF92
	.byte	0x10
	.2byte	0x13f
	.4byte	0xbd
	.byte	0x1c
	.uleb128 0x16
	.4byte	.LASF93
	.byte	0x10
	.2byte	0x140
	.4byte	0xbd
	.byte	0x20
	.uleb128 0x16
	.4byte	.LASF94
	.byte	0x10
	.2byte	0x141
	.4byte	0xbd
	.byte	0x24
	.uleb128 0x16
	.4byte	.LASF148
	.byte	0x10
	.2byte	0x142
	.4byte	0xa2a
	.byte	0x28
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x96d
	.uleb128 0x6
	.byte	0x4
	.4byte	0x414
	.uleb128 0x17
	.4byte	.LASF149
	.byte	0x10
	.2byte	0x143
	.4byte	0x96d
	.uleb128 0x1a
	.byte	0x28
	.byte	0x10
	.2byte	0x146
	.4byte	0xa53
	.uleb128 0x16
	.4byte	.LASF150
	.byte	0x10
	.2byte	0x147
	.4byte	0xa53
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0x92f
	.4byte	0xa63
	.uleb128 0xf
	.4byte	0xa6
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.4byte	.LASF151
	.byte	0x98
	.byte	0x10
	.2byte	0x145
	.4byte	0xae6
	.uleb128 0x16
	.4byte	.LASF152
	.byte	0x10
	.2byte	0x148
	.4byte	0xae6
	.byte	0
	.uleb128 0x16
	.4byte	.LASF65
	.byte	0x10
	.2byte	0x149
	.4byte	0xca
	.byte	0x78
	.uleb128 0x16
	.4byte	.LASF92
	.byte	0x10
	.2byte	0x14a
	.4byte	0xca
	.byte	0x7c
	.uleb128 0x16
	.4byte	.LASF153
	.byte	0x10
	.2byte	0x14b
	.4byte	0x929
	.byte	0x80
	.uleb128 0x16
	.4byte	.LASF145
	.byte	0x10
	.2byte	0x14c
	.4byte	0x156
	.byte	0x84
	.uleb128 0x16
	.4byte	.LASF154
	.byte	0x10
	.2byte	0x14d
	.4byte	0x14b
	.byte	0x88
	.uleb128 0x16
	.4byte	.LASF155
	.byte	0x10
	.2byte	0x14e
	.4byte	0xaf6
	.byte	0x8c
	.uleb128 0x16
	.4byte	.LASF156
	.byte	0x10
	.2byte	0x14f
	.4byte	0xafc
	.byte	0x90
	.uleb128 0x16
	.4byte	.LASF157
	.byte	0x10
	.2byte	0x150
	.4byte	0x135
	.byte	0x94
	.byte	0
	.uleb128 0xe
	.4byte	0xa3c
	.4byte	0xaf6
	.uleb128 0xf
	.4byte	0xa6
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x803
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa30
	.uleb128 0x17
	.4byte	.LASF158
	.byte	0x10
	.2byte	0x151
	.4byte	0xa63
	.uleb128 0x6
	.byte	0x4
	.4byte	0x54e
	.uleb128 0x3
	.4byte	.LASF159
	.byte	0x13
	.byte	0x2f
	.4byte	0x177
	.uleb128 0x14
	.byte	0x4
	.4byte	0x37
	.byte	0x11
	.byte	0x3f
	.4byte	0xb4a
	.uleb128 0x15
	.4byte	.LASF160
	.byte	0
	.uleb128 0x15
	.4byte	.LASF161
	.byte	0x1
	.uleb128 0x15
	.4byte	.LASF162
	.byte	0x2
	.uleb128 0x15
	.4byte	.LASF163
	.byte	0x3
	.uleb128 0x15
	.4byte	.LASF164
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.4byte	0x37
	.byte	0x11
	.byte	0x47
	.4byte	0xb6f
	.uleb128 0x15
	.4byte	.LASF165
	.byte	0
	.uleb128 0x15
	.4byte	.LASF166
	.byte	0x1
	.uleb128 0x15
	.4byte	.LASF167
	.byte	0x2
	.uleb128 0x15
	.4byte	.LASF168
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.4byte	.LASF169
	.byte	0xe8
	.byte	0x14
	.byte	0xbd
	.4byte	0xcff
	.uleb128 0xd
	.4byte	.LASF59
	.byte	0x14
	.byte	0xbf
	.4byte	0xcff
	.byte	0
	.uleb128 0xd
	.4byte	.LASF170
	.byte	0x14
	.byte	0xc3
	.4byte	0x27c
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0x14
	.byte	0xc4
	.4byte	0x27c
	.byte	0x18
	.uleb128 0x13
	.string	"gw"
	.byte	0x14
	.byte	0xc5
	.4byte	0x27c
	.byte	0x2c
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x14
	.byte	0xc9
	.4byte	0xe18
	.byte	0x40
	.uleb128 0xd
	.4byte	.LASF171
	.byte	0x14
	.byte	0xcc
	.4byte	0xe28
	.byte	0x7c
	.uleb128 0xd
	.4byte	.LASF172
	.byte	0x14
	.byte	0xce
	.4byte	0xe48
	.byte	0x80
	.uleb128 0xd
	.4byte	.LASF173
	.byte	0x14
	.byte	0xd4
	.4byte	0xd05
	.byte	0x84
	.uleb128 0xd
	.4byte	.LASF174
	.byte	0x14
	.byte	0xd9
	.4byte	0xd2a
	.byte	0x88
	.uleb128 0xd
	.4byte	.LASF175
	.byte	0x14
	.byte	0xde
	.4byte	0xd94
	.byte	0x8c
	.uleb128 0xd
	.4byte	.LASF176
	.byte	0x14
	.byte	0xe3
	.4byte	0xd5f
	.byte	0x90
	.uleb128 0xd
	.4byte	.LASF119
	.byte	0x14
	.byte	0xf5
	.4byte	0xad
	.byte	0x94
	.uleb128 0xd
	.4byte	.LASF177
	.byte	0x14
	.byte	0xf8
	.4byte	0xe53
	.byte	0x98
	.uleb128 0xd
	.4byte	.LASF178
	.byte	0x14
	.byte	0xfb
	.4byte	0x91d
	.byte	0x9c
	.uleb128 0xd
	.4byte	.LASF179
	.byte	0x14
	.byte	0xfc
	.4byte	0xe0d
	.byte	0xa0
	.uleb128 0x16
	.4byte	.LASF180
	.byte	0x14
	.2byte	0x108
	.4byte	0x16c
	.byte	0xa4
	.uleb128 0x16
	.4byte	.LASF181
	.byte	0x14
	.2byte	0x10d
	.4byte	0x16c
	.byte	0xa5
	.uleb128 0x16
	.4byte	.LASF65
	.byte	0x14
	.2byte	0x117
	.4byte	0xca
	.byte	0xa8
	.uleb128 0x19
	.string	"mtu"
	.byte	0x14
	.2byte	0x11f
	.4byte	0x182
	.byte	0xac
	.uleb128 0x16
	.4byte	.LASF182
	.byte	0x14
	.2byte	0x121
	.4byte	0x16c
	.byte	0xae
	.uleb128 0x16
	.4byte	.LASF183
	.byte	0x14
	.2byte	0x123
	.4byte	0x287
	.byte	0xaf
	.uleb128 0x16
	.4byte	.LASF86
	.byte	0x14
	.2byte	0x125
	.4byte	0x16c
	.byte	0xb5
	.uleb128 0x16
	.4byte	.LASF184
	.byte	0x14
	.2byte	0x127
	.4byte	0xe59
	.byte	0xb6
	.uleb128 0x19
	.string	"num"
	.byte	0x14
	.2byte	0x129
	.4byte	0x16c
	.byte	0xb8
	.uleb128 0x16
	.4byte	.LASF185
	.byte	0x14
	.2byte	0x139
	.4byte	0xdb9
	.byte	0xbc
	.uleb128 0x16
	.4byte	.LASF186
	.byte	0x14
	.2byte	0x13f
	.4byte	0xde3
	.byte	0xc0
	.uleb128 0x16
	.4byte	.LASF187
	.byte	0x14
	.2byte	0x147
	.4byte	0x548
	.byte	0xc4
	.uleb128 0x16
	.4byte	.LASF188
	.byte	0x14
	.2byte	0x148
	.4byte	0x548
	.byte	0xc8
	.uleb128 0x16
	.4byte	.LASF189
	.byte	0x14
	.2byte	0x14a
	.4byte	0x182
	.byte	0xcc
	.uleb128 0x16
	.4byte	.LASF190
	.byte	0x14
	.2byte	0x14f
	.4byte	0x124
	.byte	0xd0
	.uleb128 0x16
	.4byte	.LASF191
	.byte	0x14
	.2byte	0x150
	.4byte	0x27c
	.byte	0xd4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb6f
	.uleb128 0x3
	.4byte	.LASF192
	.byte	0x14
	.byte	0x83
	.4byte	0xd10
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd16
	.uleb128 0x1c
	.4byte	0xb14
	.4byte	0xd2a
	.uleb128 0xa
	.4byte	0x548
	.uleb128 0xa
	.4byte	0xcff
	.byte	0
	.uleb128 0x3
	.4byte	.LASF193
	.byte	0x14
	.byte	0x8e
	.4byte	0xd35
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd3b
	.uleb128 0x1c
	.4byte	0xb14
	.4byte	0xd54
	.uleb128 0xa
	.4byte	0xcff
	.uleb128 0xa
	.4byte	0x548
	.uleb128 0xa
	.4byte	0xd54
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd5a
	.uleb128 0x8
	.4byte	0x1ca
	.uleb128 0x3
	.4byte	.LASF194
	.byte	0x14
	.byte	0x9b
	.4byte	0xd6a
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd70
	.uleb128 0x1c
	.4byte	0xb14
	.4byte	0xd89
	.uleb128 0xa
	.4byte	0xcff
	.uleb128 0xa
	.4byte	0x548
	.uleb128 0xa
	.4byte	0xd89
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd8f
	.uleb128 0x8
	.4byte	0x222
	.uleb128 0x3
	.4byte	.LASF195
	.byte	0x14
	.byte	0xa5
	.4byte	0xd9f
	.uleb128 0x6
	.byte	0x4
	.4byte	0xda5
	.uleb128 0x1c
	.4byte	0xb14
	.4byte	0xdb9
	.uleb128 0xa
	.4byte	0xcff
	.uleb128 0xa
	.4byte	0x548
	.byte	0
	.uleb128 0x3
	.4byte	.LASF196
	.byte	0x14
	.byte	0xaa
	.4byte	0xdc4
	.uleb128 0x6
	.byte	0x4
	.4byte	0xdca
	.uleb128 0x1c
	.4byte	0xb14
	.4byte	0xde3
	.uleb128 0xa
	.4byte	0xcff
	.uleb128 0xa
	.4byte	0xd54
	.uleb128 0xa
	.4byte	0x16c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF197
	.byte	0x14
	.byte	0xaf
	.4byte	0xdee
	.uleb128 0x6
	.byte	0x4
	.4byte	0xdf4
	.uleb128 0x1c
	.4byte	0xb14
	.4byte	0xe0d
	.uleb128 0xa
	.4byte	0xcff
	.uleb128 0xa
	.4byte	0xd89
	.uleb128 0xa
	.4byte	0x16c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF198
	.byte	0x14
	.byte	0xb6
	.4byte	0xb6
	.uleb128 0xe
	.4byte	0x27c
	.4byte	0xe28
	.uleb128 0xf
	.4byte	0xa6
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.4byte	0x16c
	.4byte	0xe38
	.uleb128 0xf
	.4byte	0xa6
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0xe48
	.uleb128 0xa
	.4byte	0xcff
	.uleb128 0xa
	.4byte	0x16c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe38
	.uleb128 0xb
	.4byte	.LASF177
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe4e
	.uleb128 0xe
	.4byte	0xc3
	.4byte	0xe69
	.uleb128 0xf
	.4byte	0xa6
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.4byte	.LASF200
	.byte	0x14
	.byte	0x15
	.byte	0x41
	.4byte	0xeee
	.uleb128 0xd
	.4byte	.LASF201
	.byte	0x15
	.byte	0x43
	.4byte	0x16c
	.byte	0
	.uleb128 0xd
	.4byte	.LASF202
	.byte	0x15
	.byte	0x45
	.4byte	0x16c
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF203
	.byte	0x15
	.byte	0x47
	.4byte	0x182
	.byte	0x2
	.uleb128 0x13
	.string	"_id"
	.byte	0x15
	.byte	0x49
	.4byte	0x182
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF204
	.byte	0x15
	.byte	0x4b
	.4byte	0x182
	.byte	0x6
	.uleb128 0xd
	.4byte	.LASF205
	.byte	0x15
	.byte	0x51
	.4byte	0x16c
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF206
	.byte	0x15
	.byte	0x53
	.4byte	0x16c
	.byte	0x9
	.uleb128 0xd
	.4byte	.LASF207
	.byte	0x15
	.byte	0x55
	.4byte	0x182
	.byte	0xa
	.uleb128 0x13
	.string	"src"
	.byte	0x15
	.byte	0x57
	.4byte	0x1d5
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF80
	.byte	0x15
	.byte	0x58
	.4byte	0x1d5
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.4byte	.LASF208
	.byte	0x28
	.byte	0x16
	.byte	0x4e
	.4byte	0xf43
	.uleb128 0xd
	.4byte	.LASF209
	.byte	0x16
	.byte	0x50
	.4byte	0x18d
	.byte	0
	.uleb128 0xd
	.4byte	.LASF210
	.byte	0x16
	.byte	0x52
	.4byte	0x182
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF211
	.byte	0x16
	.byte	0x54
	.4byte	0x16c
	.byte	0x6
	.uleb128 0xd
	.4byte	.LASF212
	.byte	0x16
	.byte	0x56
	.4byte	0x16c
	.byte	0x7
	.uleb128 0x13
	.string	"src"
	.byte	0x16
	.byte	0x58
	.4byte	0x22d
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF80
	.byte	0x16
	.byte	0x59
	.4byte	0x22d
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.4byte	.LASF213
	.byte	0x3c
	.byte	0x17
	.byte	0x6f
	.4byte	0xfa4
	.uleb128 0xd
	.4byte	.LASF214
	.byte	0x17
	.byte	0x72
	.4byte	0xcff
	.byte	0
	.uleb128 0xd
	.4byte	.LASF215
	.byte	0x17
	.byte	0x74
	.4byte	0xcff
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF216
	.byte	0x17
	.byte	0x77
	.4byte	0xfa4
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF217
	.byte	0x17
	.byte	0x7b
	.4byte	0xfaa
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF218
	.byte	0x17
	.byte	0x7e
	.4byte	0x182
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF219
	.byte	0x17
	.byte	0x80
	.4byte	0x27c
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF220
	.byte	0x17
	.byte	0x82
	.4byte	0x27c
	.byte	0x28
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe69
	.uleb128 0x6
	.byte	0x4
	.4byte	0xeee
	.uleb128 0x3
	.4byte	.LASF221
	.byte	0x12
	.byte	0x58
	.4byte	0xfbb
	.uleb128 0x6
	.byte	0x4
	.4byte	0xfc1
	.uleb128 0x9
	.4byte	0xfe0
	.uleb128 0xa
	.4byte	0xad
	.uleb128 0xa
	.4byte	0x91d
	.uleb128 0xa
	.4byte	0x548
	.uleb128 0xa
	.4byte	0xfe0
	.uleb128 0xa
	.4byte	0x182
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xfe6
	.uleb128 0x8
	.4byte	0x27c
	.uleb128 0x3
	.4byte	.LASF222
	.byte	0x18
	.byte	0x67
	.4byte	0xff6
	.uleb128 0x6
	.byte	0x4
	.4byte	0xffc
	.uleb128 0x1c
	.4byte	0xb14
	.4byte	0x100b
	.uleb128 0xa
	.4byte	0x100b
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1011
	.uleb128 0xc
	.4byte	.LASF223
	.byte	0xc
	.byte	0x18
	.byte	0x68
	.4byte	0x1042
	.uleb128 0xd
	.4byte	.LASF224
	.byte	0x18
	.byte	0x6a
	.4byte	0xfeb
	.byte	0
	.uleb128 0x13
	.string	"sem"
	.byte	0x18
	.byte	0x6d
	.4byte	0x1042
	.byte	0x4
	.uleb128 0x13
	.string	"err"
	.byte	0x18
	.byte	0x71
	.4byte	0xb14
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x161
	.uleb128 0x12
	.byte	0x18
	.byte	0x1
	.byte	0xd1
	.4byte	0x1081
	.uleb128 0xd
	.4byte	.LASF225
	.byte	0x1
	.byte	0xd2
	.4byte	0x1011
	.byte	0
	.uleb128 0xd
	.4byte	.LASF62
	.byte	0x1
	.byte	0xd3
	.4byte	0x2f2
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF63
	.byte	0x1
	.byte	0xd4
	.4byte	0x31c
	.byte	0x10
	.uleb128 0x13
	.string	"err"
	.byte	0x1
	.byte	0xd5
	.4byte	0x10c
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.4byte	.LASF226
	.byte	0x1
	.byte	0xd6
	.4byte	0x1048
	.uleb128 0x1d
	.4byte	.LASF237
	.byte	0x1
	.byte	0x70
	.4byte	0x10c
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1189
	.uleb128 0x1e
	.4byte	.LASF62
	.byte	0x1
	.byte	0x70
	.4byte	0x2f2
	.4byte	.LLST0
	.uleb128 0x1f
	.4byte	.LASF227
	.byte	0x1
	.byte	0x72
	.4byte	0x2c2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1f
	.4byte	.LASF228
	.byte	0x1
	.byte	0x7c
	.4byte	0x27c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1f
	.4byte	.LASF229
	.byte	0x1
	.byte	0x7e
	.4byte	0x27c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.string	"pcb"
	.byte	0x1
	.byte	0x85
	.4byte	0x91d
	.4byte	.LLST1
	.uleb128 0x21
	.4byte	.LVL1
	.4byte	0x17ba
	.4byte	0x110a
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x21
	.4byte	.LVL2
	.4byte	0x17c6
	.4byte	0x1125
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x21
	.4byte	.LVL3
	.4byte	0x17d1
	.4byte	0x1139
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL5
	.4byte	0x17dc
	.4byte	0x115b
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
	.sleb128 -84
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x14e9
	.byte	0
	.uleb128 0x21
	.4byte	.LVL6
	.4byte	0x17e7
	.4byte	0x116f
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL7
	.4byte	0x17f2
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	_udp_recv
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF242
	.byte	0x1
	.byte	0x15
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1333
	.uleb128 0x25
	.string	"arg"
	.byte	0x1
	.byte	0x15
	.4byte	0xad
	.4byte	.LLST2
	.uleb128 0x1e
	.4byte	.LASF230
	.byte	0x1
	.byte	0x15
	.4byte	0x91d
	.4byte	.LLST3
	.uleb128 0x25
	.string	"pb"
	.byte	0x1
	.byte	0x15
	.4byte	0x548
	.4byte	.LLST4
	.uleb128 0x1e
	.4byte	.LASF231
	.byte	0x1
	.byte	0x15
	.4byte	0xfe0
	.4byte	.LLST5
	.uleb128 0x1e
	.4byte	.LASF232
	.byte	0x1
	.byte	0x15
	.4byte	0xeb
	.4byte	.LLST6
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.byte	0x18
	.4byte	0xe0
	.4byte	.LLST7
	.uleb128 0x26
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x27
	.4byte	.LASF233
	.byte	0x1
	.byte	0x1a
	.4byte	0x548
	.4byte	.LLST8
	.uleb128 0x27
	.4byte	.LASF234
	.byte	0x1
	.byte	0x1e
	.4byte	0xb0e
	.4byte	.LLST9
	.uleb128 0x27
	.4byte	.LASF169
	.byte	0x1
	.byte	0x37
	.4byte	0xcff
	.4byte	.LLST10
	.uleb128 0x28
	.string	"nif"
	.byte	0x1
	.byte	0x38
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.string	"pcb"
	.byte	0x1
	.byte	0x39
	.4byte	0x91d
	.4byte	.LLST11
	.uleb128 0x29
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x1265
	.uleb128 0x27
	.4byte	.LASF235
	.byte	0x1
	.byte	0x2d
	.4byte	0xfa4
	.4byte	.LLST12
	.byte	0
	.uleb128 0x29
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x1297
	.uleb128 0x27
	.4byte	.LASF236
	.byte	0x1
	.byte	0x31
	.4byte	0xfaa
	.4byte	.LLST13
	.uleb128 0x23
	.4byte	.LVL24
	.4byte	0x17fd
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 32
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL15
	.4byte	0x1806
	.4byte	0x12ab
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x38
	.byte	0
	.uleb128 0x21
	.4byte	.LVL17
	.4byte	0x1811
	.4byte	0x12bf
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL18
	.4byte	0x17fd
	.4byte	0x12df
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 12
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x21
	.4byte	.LVL29
	.4byte	0x181c
	.4byte	0x12f9
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
	.byte	0
	.uleb128 0x21
	.4byte	.LVL37
	.4byte	0x1828
	.4byte	0x130d
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL38
	.4byte	0x1811
	.4byte	0x1321
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL39
	.4byte	0x1833
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF238
	.byte	0x1
	.byte	0x9e
	.4byte	0x10c
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1441
	.uleb128 0x1e
	.4byte	.LASF62
	.byte	0x1
	.byte	0x9e
	.4byte	0x2f2
	.4byte	.LLST14
	.uleb128 0x1f
	.4byte	.LASF229
	.byte	0x1
	.byte	0xa0
	.4byte	0x27c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1f
	.4byte	.LASF228
	.byte	0x1
	.byte	0xa1
	.4byte	0x27c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x20
	.string	"pcb"
	.byte	0x1
	.byte	0xb0
	.4byte	0x91d
	.4byte	.LLST15
	.uleb128 0x21
	.4byte	.LVL42
	.4byte	0x17fd
	.4byte	0x13aa
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x21
	.4byte	.LVL43
	.4byte	0x183e
	.4byte	0x13c4
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
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x21
	.4byte	.LVL44
	.4byte	0x184a
	.4byte	0x13df
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x21
	.4byte	.LVL45
	.4byte	0x17d1
	.4byte	0x13f2
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x21
	.4byte	.LVL47
	.4byte	0x17dc
	.4byte	0x1413
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
	.sleb128 -60
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x14e9
	.byte	0
	.uleb128 0x21
	.4byte	.LVL48
	.4byte	0x17e7
	.4byte	0x1427
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL49
	.4byte	0x17f2
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	_udp_recv
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF239
	.byte	0x1
	.byte	0xc7
	.4byte	0x10c
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x149b
	.uleb128 0x1e
	.4byte	.LASF62
	.byte	0x1
	.byte	0xc7
	.4byte	0x2f2
	.4byte	.LLST16
	.uleb128 0x2a
	.4byte	.LASF63
	.byte	0x1
	.byte	0xc7
	.4byte	0x31c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.4byte	.LVL55
	.4byte	0x108c
	.4byte	0x148a
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL58
	.4byte	0x1333
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF240
	.byte	0x1
	.byte	0xdb
	.4byte	0xb14
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14dc
	.uleb128 0x1e
	.4byte	.LASF241
	.byte	0x1
	.byte	0xdb
	.4byte	0x100b
	.4byte	.LLST17
	.uleb128 0x20
	.string	"msg"
	.byte	0x1
	.byte	0xdd
	.4byte	0x14dc
	.4byte	.LLST18
	.uleb128 0x2b
	.4byte	.LVL64
	.4byte	0x1441
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1081
	.uleb128 0x24
	.4byte	.LASF243
	.byte	0x1
	.byte	0x58
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x155a
	.uleb128 0x1e
	.4byte	.LASF62
	.byte	0x1
	.byte	0x58
	.4byte	0x2f2
	.4byte	.LLST19
	.uleb128 0x1e
	.4byte	.LASF63
	.byte	0x1
	.byte	0x58
	.4byte	0x31c
	.4byte	.LLST20
	.uleb128 0x27
	.4byte	.LASF244
	.byte	0x1
	.byte	0x5d
	.4byte	0x155a
	.4byte	.LLST21
	.uleb128 0x21
	.4byte	.LVL68
	.4byte	0x17f2
	.4byte	0x153e
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL69
	.4byte	0x1855
	.uleb128 0x2b
	.4byte	.LVL70
	.4byte	0x17e7
	.uleb128 0x2b
	.4byte	.LVL71
	.4byte	0x1833
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x92f
	.uleb128 0x1d
	.4byte	.LASF245
	.byte	0x1
	.byte	0xe5
	.4byte	0xb14
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15a1
	.uleb128 0x1e
	.4byte	.LASF241
	.byte	0x1
	.byte	0xe5
	.4byte	0x100b
	.4byte	.LLST22
	.uleb128 0x20
	.string	"msg"
	.byte	0x1
	.byte	0xe7
	.4byte	0x14dc
	.4byte	.LLST23
	.uleb128 0x2b
	.4byte	.LVL77
	.4byte	0x14e2
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF246
	.byte	0x1
	.byte	0xf2
	.4byte	0x10c
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15fe
	.uleb128 0x1e
	.4byte	.LASF62
	.byte	0x1
	.byte	0xf2
	.4byte	0x2f2
	.4byte	.LLST24
	.uleb128 0x2a
	.4byte	.LASF63
	.byte	0x1
	.byte	0xf2
	.4byte	0x31c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.string	"msg"
	.byte	0x1
	.byte	0xf4
	.4byte	0x1081
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.4byte	.LVL80
	.4byte	0x1860
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	_mdns_pcb_init_api
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF247
	.byte	0x1
	.byte	0xfc
	.4byte	0x10c
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x165b
	.uleb128 0x1e
	.4byte	.LASF62
	.byte	0x1
	.byte	0xfc
	.4byte	0x2f2
	.4byte	.LLST25
	.uleb128 0x2a
	.4byte	.LASF63
	.byte	0x1
	.byte	0xfc
	.4byte	0x31c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.string	"msg"
	.byte	0x1
	.byte	0xfe
	.4byte	0x1081
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.4byte	.LVL83
	.4byte	0x1860
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	_mdns_pcb_deinit_api
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF248
	.byte	0x1
	.2byte	0x106
	.4byte	0x2c
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x179e
	.uleb128 0x2e
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x106
	.4byte	0x2f2
	.4byte	.LLST26
	.uleb128 0x2e
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x106
	.4byte	0x31c
	.4byte	.LLST27
	.uleb128 0x2f
	.string	"ip"
	.byte	0x1
	.2byte	0x106
	.4byte	0xfe0
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2e
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x106
	.4byte	0xeb
	.4byte	.LLST28
	.uleb128 0x2e
	.4byte	.LASF249
	.byte	0x1
	.2byte	0x106
	.4byte	0x117
	.4byte	.LLST29
	.uleb128 0x2f
	.string	"len"
	.byte	0x1
	.2byte	0x106
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x30
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x108
	.4byte	0xcff
	.4byte	.LLST30
	.uleb128 0x31
	.string	"nif"
	.byte	0x1
	.2byte	0x109
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x32
	.string	"err"
	.byte	0x1
	.2byte	0x10a
	.4byte	0x10c
	.4byte	.LLST31
	.uleb128 0x32
	.string	"pbt"
	.byte	0x1
	.2byte	0x110
	.4byte	0x548
	.4byte	.LLST32
	.uleb128 0x21
	.4byte	.LVL88
	.4byte	0x181c
	.4byte	0x1729
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
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x21
	.4byte	.LVL91
	.4byte	0x186b
	.4byte	0x174b
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x77
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x21
	.4byte	.LVL93
	.4byte	0x17fd
	.4byte	0x1765
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL97
	.4byte	0x1876
	.4byte	0x178d
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
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
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0
	.uleb128 0x23
	.4byte	.LVL99
	.4byte	0x1811
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	.LASF250
	.byte	0x17
	.byte	0x84
	.4byte	0xf43
	.uleb128 0x33
	.4byte	.LASF251
	.byte	0x1
	.byte	0xa
	.4byte	0x17b4
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb02
	.uleb128 0x34
	.4byte	.LASF252
	.4byte	.LASF252
	.byte	0xe
	.2byte	0x128
	.uleb128 0x35
	.4byte	.LASF253
	.4byte	.LASF253
	.byte	0x19
	.byte	0x60
	.uleb128 0x35
	.4byte	.LASF254
	.4byte	.LASF254
	.byte	0x12
	.byte	0x7e
	.uleb128 0x35
	.4byte	.LASF255
	.4byte	.LASF255
	.byte	0x12
	.byte	0x80
	.uleb128 0x35
	.4byte	.LASF256
	.4byte	.LASF256
	.byte	0x12
	.byte	0x7f
	.uleb128 0x35
	.4byte	.LASF257
	.4byte	.LASF257
	.byte	0x12
	.byte	0x85
	.uleb128 0x36
	.4byte	.LASF271
	.4byte	.LASF271
	.uleb128 0x35
	.4byte	.LASF258
	.4byte	.LASF258
	.byte	0x1a
	.byte	0x65
	.uleb128 0x35
	.4byte	.LASF259
	.4byte	.LASF259
	.byte	0x11
	.byte	0xcb
	.uleb128 0x34
	.4byte	.LASF260
	.4byte	.LASF260
	.byte	0xe
	.2byte	0x268
	.uleb128 0x35
	.4byte	.LASF261
	.4byte	.LASF261
	.byte	0x1b
	.byte	0x1d
	.uleb128 0x35
	.4byte	.LASF262
	.4byte	.LASF262
	.byte	0x1a
	.byte	0x5a
	.uleb128 0x34
	.4byte	.LASF263
	.4byte	.LASF263
	.byte	0xe
	.2byte	0x19d
	.uleb128 0x35
	.4byte	.LASF264
	.4byte	.LASF264
	.byte	0x1c
	.byte	0x6b
	.uleb128 0x35
	.4byte	.LASF265
	.4byte	.LASF265
	.byte	0x12
	.byte	0x84
	.uleb128 0x35
	.4byte	.LASF223
	.4byte	.LASF223
	.byte	0x18
	.byte	0x74
	.uleb128 0x35
	.4byte	.LASF266
	.4byte	.LASF266
	.byte	0x11
	.byte	0xc1
	.uleb128 0x35
	.4byte	.LASF267
	.4byte	.LASF267
	.byte	0x12
	.byte	0x87
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
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x18
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL13
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL14
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL40
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL13
	.4byte	.LFE17
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL13
	.4byte	.LFE17
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL13
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL16
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL32
	.4byte	.LVL35
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x3
	.byte	0x79
	.sleb128 -28
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x3
	.byte	0x7b
	.sleb128 -48
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24-1
	.2byte	0x7
	.byte	0x74
	.sleb128 4
	.byte	0x6
	.byte	0x8
	.byte	0x30
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL41
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL46
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL61
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL62
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL65
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL63
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL65
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL66
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL73
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL66
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL72
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL67
	.4byte	.LVL72
	.2byte	0xe
	.byte	0x73
	.sleb128 0
	.byte	0x44
	.byte	0x1e
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0x28
	.byte	0x1e
	.byte	0x22
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0xf
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x44
	.byte	0x1e
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0x28
	.byte	0x1e
	.byte	0x22
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x10
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x44
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x8
	.byte	0x28
	.byte	0x1e
	.byte	0x22
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL75
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL78
	.4byte	.LFE23
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
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL78
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL79
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL81
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL82
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL84
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL85
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL96
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
	.4byte	.LVL103
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL104
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL85
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL95
	.4byte	.LVL101
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL101
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL105
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL85
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL87
	.4byte	.LFE26
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL85
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL94
	.4byte	.LVL101
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL101
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL105
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL86
	.4byte	.LVL89
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL92
	.4byte	.LVL101
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL101
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL103
	.4byte	.LFE26
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL88
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL98
	.4byte	.LVL100
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL101
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL92
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL103
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x55
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
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF13:
	.string	"long int"
.LASF147:
	.string	"num_results"
.LASF179:
	.string	"dhcp_event"
.LASF52:
	.string	"MDNS_IP_PROTOCOL_V4"
.LASF53:
	.string	"MDNS_IP_PROTOCOL_V6"
.LASF125:
	.string	"udp_pcb"
.LASF51:
	.string	"tcpip_adapter_if_t"
.LASF39:
	.string	"ip6_addr_t"
.LASF57:
	.string	"mdns_txt_item_t"
.LASF153:
	.string	"services"
.LASF128:
	.string	"so_options"
.LASF210:
	.string	"_plen"
.LASF174:
	.string	"output"
.LASF197:
	.string	"netif_mld_mac_filter_fn"
.LASF165:
	.string	"PBUF_RAM"
.LASF215:
	.string	"current_input_netif"
.LASF164:
	.string	"PBUF_RAW"
.LASF86:
	.string	"flags"
.LASF0:
	.string	"unsigned int"
.LASF59:
	.string	"next"
.LASF159:
	.string	"err_t"
.LASF70:
	.string	"PCB_DUP"
.LASF175:
	.string	"linkoutput"
.LASF100:
	.string	"mdns_out_question_s"
.LASF104:
	.string	"mdns_out_question_t"
.LASF223:
	.string	"tcpip_api_call"
.LASF236:
	.string	"ip6hdr"
.LASF30:
	.string	"u16_t"
.LASF205:
	.string	"_ttl"
.LASF137:
	.string	"SEARCH_INIT"
.LASF239:
	.string	"_udp_pcb_init"
.LASF177:
	.string	"dhcp"
.LASF132:
	.string	"mcast_ttl"
.LASF229:
	.string	"multicast_addr"
.LASF167:
	.string	"PBUF_REF"
.LASF212:
	.string	"_hoplim"
.LASF216:
	.string	"current_ip4_header"
.LASF193:
	.string	"netif_output_fn"
.LASF134:
	.string	"recv_arg"
.LASF268:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF189:
	.string	"loop_cnt_current"
.LASF160:
	.string	"PBUF_TRANSPORT"
.LASF24:
	.string	"esp_timer_handle_t"
.LASF55:
	.string	"mdns_ip_protocol_t"
.LASF38:
	.string	"ip6_addr_packed"
.LASF63:
	.string	"ip_protocol"
.LASF227:
	.string	"if_ip_info"
.LASF192:
	.string	"netif_input_fn"
.LASF186:
	.string	"mld_mac_filter"
.LASF21:
	.string	"uint32_t"
.LASF17:
	.string	"int8_t"
.LASF267:
	.string	"udp_sendto_if"
.LASF93:
	.string	"service"
.LASF129:
	.string	"local_port"
.LASF89:
	.string	"mdns_rx_packet_t"
.LASF258:
	.string	"malloc"
.LASF33:
	.string	"ip4_addr_packed"
.LASF211:
	.string	"_nexth"
.LASF62:
	.string	"tcpip_if"
.LASF135:
	.string	"mdns_pcb_t"
.LASF148:
	.string	"result"
.LASF183:
	.string	"hwaddr"
.LASF12:
	.string	"long long unsigned int"
.LASF112:
	.string	"send_at"
.LASF47:
	.string	"TCPIP_ADAPTER_IF_STA"
.LASF102:
	.string	"host"
.LASF105:
	.string	"mdns_out_answer_s"
.LASF110:
	.string	"mdns_out_answer_t"
.LASF139:
	.string	"SEARCH_MAX"
.LASF178:
	.string	"dhcps_pcb"
.LASF219:
	.string	"current_iphdr_src"
.LASF8:
	.string	"__uint16_t"
.LASF207:
	.string	"_chksum"
.LASF182:
	.string	"hwaddr_len"
.LASF204:
	.string	"_offset"
.LASF109:
	.string	"custom_proto"
.LASF253:
	.string	"igmp_joingroup"
.LASF163:
	.string	"PBUF_RAW_TX"
.LASF251:
	.string	"_mdns_server"
.LASF92:
	.string	"instance"
.LASF56:
	.string	"value"
.LASF265:
	.string	"udp_disconnect"
.LASF107:
	.string	"custom_instance"
.LASF2:
	.string	"size_t"
.LASF84:
	.string	"payload"
.LASF149:
	.string	"mdns_search_once_t"
.LASF161:
	.string	"PBUF_IP"
.LASF157:
	.string	"timer_handle"
.LASF188:
	.string	"loop_last"
.LASF67:
	.string	"txt_count"
.LASF23:
	.string	"_Bool"
.LASF115:
	.string	"answers"
.LASF156:
	.string	"search_once"
.LASF225:
	.string	"call"
.LASF27:
	.string	"sys_sem_t"
.LASF262:
	.string	"free"
.LASF114:
	.string	"questions"
.LASF136:
	.string	"SEARCH_OFF"
.LASF29:
	.string	"s8_t"
.LASF269:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/mdns/mdns_networking.c"
.LASF120:
	.string	"probe_services"
.LASF244:
	.string	"_pcb"
.LASF40:
	.string	"ip6_addr_p_t"
.LASF228:
	.string	"interface_addr"
.LASF140:
	.string	"mdns_search_once_state_t"
.LASF213:
	.string	"ip_globals"
.LASF124:
	.string	"failed_probes"
.LASF172:
	.string	"ipv6_addr_cb"
.LASF16:
	.string	"char"
.LASF231:
	.string	"raddr"
.LASF9:
	.string	"__int32_t"
.LASF241:
	.string	"api_call_msg"
.LASF185:
	.string	"igmp_mac_filter"
.LASF209:
	.string	"_v_tc_fl"
.LASF94:
	.string	"proto"
.LASF87:
	.string	"l2_owner"
.LASF249:
	.string	"data"
.LASF25:
	.string	"QueueHandle_t"
.LASF73:
	.string	"PCB_PROBE_2"
.LASF18:
	.string	"uint8_t"
.LASF69:
	.string	"PCB_OFF"
.LASF206:
	.string	"_proto"
.LASF266:
	.string	"pbuf_alloc"
.LASF246:
	.string	"_mdns_pcb_init"
.LASF143:
	.string	"sent_at"
.LASF259:
	.string	"pbuf_free"
.LASF171:
	.string	"ip6_addr_state"
.LASF42:
	.string	"u_addr"
.LASF45:
	.string	"netmask"
.LASF11:
	.string	"long long int"
.LASF142:
	.string	"started_at"
.LASF145:
	.string	"lock"
.LASF90:
	.string	"mdns_txt_linked_item_s"
.LASF91:
	.string	"mdns_txt_linked_item_t"
.LASF190:
	.string	"l2_buffer_free_notify"
.LASF78:
	.string	"PCB_RUNNING"
.LASF28:
	.string	"u8_t"
.LASF108:
	.string	"custom_service"
.LASF201:
	.string	"_v_hl"
.LASF146:
	.string	"max_results"
.LASF117:
	.string	"additional"
.LASF75:
	.string	"PCB_ANNOUNCE_1"
.LASF76:
	.string	"PCB_ANNOUNCE_2"
.LASF77:
	.string	"PCB_ANNOUNCE_3"
.LASF130:
	.string	"remote_port"
.LASF41:
	.string	"_ip_addr"
.LASF64:
	.string	"instance_name"
.LASF250:
	.string	"ip_data"
.LASF263:
	.string	"tcpip_adapter_get_ip6_linklocal"
.LASF198:
	.string	"dhcp_event_fn"
.LASF248:
	.string	"_mdns_udp_pcb_write"
.LASF152:
	.string	"interfaces"
.LASF151:
	.string	"mdns_server_s"
.LASF158:
	.string	"mdns_server_t"
.LASF218:
	.string	"current_ip_header_tot_len"
.LASF264:
	.string	"mld6_joingroup"
.LASF162:
	.string	"PBUF_LINK"
.LASF88:
	.string	"l2_buf"
.LASF3:
	.string	"__int8_t"
.LASF97:
	.string	"mdns_service_t"
.LASF131:
	.string	"multicast_ip"
.LASF252:
	.string	"tcpip_adapter_get_ip_info"
.LASF19:
	.string	"uint16_t"
.LASF141:
	.string	"mdns_search_once_s"
.LASF123:
	.string	"probe_running"
.LASF144:
	.string	"timeout"
.LASF36:
	.string	"ip4_addr_p_t"
.LASF242:
	.string	"_udp_recv"
.LASF50:
	.string	"TCPIP_ADAPTER_IF_MAX"
.LASF122:
	.string	"probe_ip"
.LASF214:
	.string	"current_netif"
.LASF221:
	.string	"udp_recv_fn"
.LASF31:
	.string	"u32_t"
.LASF7:
	.string	"short int"
.LASF168:
	.string	"PBUF_POOL"
.LASF243:
	.string	"_udp_pcb_deinit"
.LASF35:
	.string	"ip4_addr_t"
.LASF237:
	.string	"_udp_pcb_v4_init"
.LASF26:
	.string	"SemaphoreHandle_t"
.LASF270:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\mdns"
.LASF95:
	.string	"priority"
.LASF49:
	.string	"TCPIP_ADAPTER_IF_ETH"
.LASF65:
	.string	"hostname"
.LASF187:
	.string	"loop_first"
.LASF126:
	.string	"local_ip"
.LASF254:
	.string	"udp_new_ip_type"
.LASF180:
	.string	"ip6_autoconfig_enabled"
.LASF116:
	.string	"servers"
.LASF113:
	.string	"distributed"
.LASF32:
	.string	"ip4_addr"
.LASF96:
	.string	"weight"
.LASF103:
	.string	"domain"
.LASF5:
	.string	"__uint8_t"
.LASF200:
	.string	"ip_hdr"
.LASF34:
	.string	"addr"
.LASF184:
	.string	"name"
.LASF195:
	.string	"netif_linkoutput_fn"
.LASF247:
	.string	"_mdns_pcb_deinit"
.LASF181:
	.string	"rs_count"
.LASF106:
	.string	"flush"
.LASF202:
	.string	"_tos"
.LASF14:
	.string	"sizetype"
.LASF15:
	.string	"long unsigned int"
.LASF245:
	.string	"_mdns_pcb_deinit_api"
.LASF121:
	.string	"probe_services_len"
.LASF20:
	.string	"int32_t"
.LASF154:
	.string	"action_queue"
.LASF66:
	.string	"port"
.LASF234:
	.string	"packet"
.LASF173:
	.string	"input"
.LASF257:
	.string	"udp_recv"
.LASF72:
	.string	"PCB_PROBE_1"
.LASF74:
	.string	"PCB_PROBE_3"
.LASF98:
	.string	"mdns_srv_item_s"
.LASF99:
	.string	"mdns_srv_item_t"
.LASF208:
	.string	"ip6_hdr"
.LASF43:
	.string	"type"
.LASF240:
	.string	"_mdns_pcb_init_api"
.LASF6:
	.string	"unsigned char"
.LASF10:
	.string	"__uint32_t"
.LASF54:
	.string	"MDNS_IP_PROTOCOL_MAX"
.LASF224:
	.string	"function"
.LASF232:
	.string	"rport"
.LASF82:
	.string	"multicast"
.LASF83:
	.string	"pbuf"
.LASF199:
	.string	"esp_timer"
.LASF138:
	.string	"SEARCH_RUNNING"
.LASF22:
	.string	"esp_err_t"
.LASF71:
	.string	"PCB_INIT"
.LASF194:
	.string	"netif_output_ip6_fn"
.LASF46:
	.string	"tcpip_adapter_ip_info_t"
.LASF119:
	.string	"state"
.LASF85:
	.string	"tot_len"
.LASF255:
	.string	"udp_bind"
.LASF81:
	.string	"src_port"
.LASF169:
	.string	"netif"
.LASF79:
	.string	"mdns_pcb_state_t"
.LASF217:
	.string	"current_ip6_header"
.LASF235:
	.string	"iphdr"
.LASF256:
	.string	"udp_remove"
.LASF196:
	.string	"netif_igmp_mac_filter_fn"
.LASF133:
	.string	"recv"
.LASF191:
	.string	"last_ip_addr"
.LASF4:
	.string	"signed char"
.LASF37:
	.string	"ip6_addr"
.LASF155:
	.string	"tx_queue_head"
.LASF1:
	.string	"short unsigned int"
.LASF271:
	.string	"memcpy"
.LASF226:
	.string	"mdns_api_call_t"
.LASF61:
	.string	"mdns_result_s"
.LASF68:
	.string	"mdns_result_t"
.LASF220:
	.string	"current_iphdr_dest"
.LASF127:
	.string	"remote_ip"
.LASF111:
	.string	"mdns_tx_packet_s"
.LASF118:
	.string	"mdns_tx_packet_t"
.LASF48:
	.string	"TCPIP_ADAPTER_IF_AP"
.LASF101:
	.string	"unicast"
.LASF203:
	.string	"_len"
.LASF44:
	.string	"ip_addr_t"
.LASF58:
	.string	"mdns_ip_addr_s"
.LASF60:
	.string	"mdns_ip_addr_t"
.LASF238:
	.string	"_udp_pcb_v6_init"
.LASF166:
	.string	"PBUF_ROM"
.LASF222:
	.string	"tcpip_api_call_fn"
.LASF176:
	.string	"output_ip6"
.LASF230:
	.string	"upcb"
.LASF80:
	.string	"dest"
.LASF233:
	.string	"this_pb"
.LASF170:
	.string	"ip_addr"
.LASF150:
	.string	"pcbs"
.LASF260:
	.string	"tcpip_adapter_get_netif"
.LASF261:
	.string	"_mdns_send_rx_action"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
