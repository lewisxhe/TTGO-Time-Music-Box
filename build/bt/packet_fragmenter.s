	.file	"packet_fragmenter.c"
	.text
.Ltext0:
	.section	.text.fragment_get_current_packet,"ax",@progbits
	.literal_position
	.literal .LC0, current_fragment_packet
	.align	4
	.type	fragment_get_current_packet, @function
fragment_get_current_packet:
.LFB28:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/hci/packet_fragmenter.c"
	.loc 1 68 0
	entry	sp, 32
.LCFI0:
	.loc 1 70 0
	l32r	a8, .LC0
	l32i.n	a2, a8, 0
	retw.n
.LFE28:
	.size	fragment_get_current_packet, .-fragment_get_current_packet
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC1:
	.string	"packet != NULL"
	.align	4
.LC4:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/hci/packet_fragmenter.c"
	.section	.text.fragment_and_dispatch,"ax",@progbits
	.literal_position
	.literal .LC2, .LC1
	.literal .LC3, __func__$5897
	.literal .LC5, .LC4
	.literal .LC6, 8448
	.literal .LC7, callbacks
	.literal .LC8, controller
	.literal .LC9, -12289
	.literal .LC10, 4096
	.literal .LC11, current_fragment_packet
	.literal .LC12, 6400
	.align	4
	.type	fragment_and_dispatch, @function
fragment_and_dispatch:
.LFB29:
	.loc 1 73 0
.LVL0:
	entry	sp, 48
.LCFI1:
	.loc 1 76 0
	l16ui	a5, a2, 0
	movi	a3, -0x100
	and	a4, a5, a3
.LVL1:
	.loc 1 77 0
	addi.n	a7, a2, 8
	l16ui	a3, a2, 4
	add.n	a3, a7, a3
.LVL2:
	.loc 1 79 0
	bnez.n	a2, .L3
	.loc 1 79 0 is_stmt 0 discriminator 1
	l32r	a13, .LC2
	l32r	a12, .LC3
	movi.n	a11, 0x4f
	l32r	a10, .LC5
	call8	__assert_func
.LVL3:
.L3:
	.loc 1 82 0 is_stmt 1
	l32r	a6, .LC6
	beq	a4, a6, .L4
	.loc 1 83 0
	l32r	a3, .LC7
.LVL4:
	l32i.n	a3, a3, 0
	l32i.n	a3, a3, 0
	movi.n	a11, 1
	mov.n	a10, a2
	callx8	a3
.LVL5:
	.loc 1 84 0
	retw.n
.LVL6:
.L4:
	.loc 1 87 0
	extui	a5, a5, 0, 8
	bnez.n	a5, .L6
	.loc 1 89 0 discriminator 1
	l32r	a4, .LC8
.LVL7:
	l32i.n	a4, a4, 0
	l32i	a10, a4, 84
	.loc 1 87 0 discriminator 1
	callx8	a10
.LVL8:
	mov.n	a6, a10
	j	.L7
.LVL9:
.L6:
	.loc 1 90 0 discriminator 2
	l32r	a4, .LC8
.LVL10:
	l32i.n	a4, a4, 0
	l32i	a10, a4, 88
	.loc 1 87 0 discriminator 2
	callx8	a10
.LVL11:
	mov.n	a6, a10
.L7:
.LVL12:
	.loc 1 92 0 discriminator 4
	addi.n	a9, a6, 4
	extui	a9, a9, 0, 16
.LVL13:
	.loc 1 93 0 discriminator 4
	l16ui	a4, a2, 2
.LVL14:
	.loc 1 94 0 discriminator 4
	l8ui	a8, a3, 0
	l8ui	a5, a3, 1
	slli	a5, a5, 8
	add.n	a5, a5, a8
	extui	a5, a5, 0, 16
.LVL15:
	.loc 1 95 0 discriminator 4
	l32r	a8, .LC9
	and	a5, a5, a8
.LVL16:
	l32r	a8, .LC10
	or	a5, a5, a8
	sext	a5, a5, 15
	extui	a8, a5, 0, 16
	s32i.n	a8, sp, 0
.LVL17:
	.loc 1 96 0 discriminator 4
	bgeu	a9, a4, .L8
	.loc 1 97 0
	l32r	a8, .LC11
	s32i.n	a2, a8, 0
.LVL18:
	.loc 1 98 0
	s8i	a6, a3, 2
.LVL19:
	extui	a8, a6, 8, 8
	s8i	a8, a3, 3
	.loc 1 99 0
	s16i	a9, a2, 2
	.loc 1 100 0
	l32r	a3, .LC7
.LVL20:
	l32i.n	a3, a3, 0
	l32i.n	a3, a3, 0
	movi.n	a11, 0
	mov.n	a10, a2
	callx8	a3
.LVL21:
	.loc 1 101 0
	l16ui	a3, a2, 4
	add.n	a3, a6, a3
	extui	a3, a3, 0, 16
	s16i	a3, a2, 4
	.loc 1 102 0
	sub	a4, a4, a6
.LVL22:
	extui	a4, a4, 0, 16
.LVL23:
	.loc 1 103 0
	s16i	a4, a2, 2
	.loc 1 106 0
	add.n	a7, a7, a3
.LVL24:
	.loc 1 107 0
	s8i	a5, a7, 0
.LVL25:
	l32i.n	a5, sp, 0
	srli	a3, a5, 8
	s8i	a3, a7, 1
.LVL26:
	.loc 1 108 0
	addi	a3, a4, -4
	s8i	a3, a7, 2
.LVL27:
	extui	a4, a3, 8, 8
.LVL28:
	s8i	a4, a7, 3
	.loc 1 110 0
	l16ui	a3, a2, 6
.LVL29:
	beqz.n	a3, .L2
	.loc 1 111 0
	addi.n	a3, a3, -1
	extui	a3, a3, 0, 16
	s16i	a3, a2, 6
	.loc 1 112 0
	bnez.n	a3, .L2
	.loc 1 113 0
	l32r	a8, .LC12
	s16i	a8, a2, 0
	.loc 1 120 0
	movi.n	a11, 0
	l32r	a3, .LC11
	s32i.n	a11, a3, 0
	.loc 1 121 0
	l32r	a3, .LC7
	l32i.n	a3, a3, 0
	l32i.n	a3, a3, 8
	mov.n	a10, a2
	callx8	a3
.LVL30:
	.loc 1 122 0
	retw.n
.LVL31:
.L8:
	.loc 1 126 0
	movi.n	a4, 0
	l32r	a3, .LC11
.LVL32:
	s32i.n	a4, a3, 0
	.loc 1 127 0
	l32r	a3, .LC7
	l32i.n	a3, a3, 0
	l32i.n	a3, a3, 0
	movi.n	a11, 1
	mov.n	a10, a2
	callx8	a3
.LVL33:
.L2:
	retw.n
.LFE29:
	.size	fragment_and_dispatch, .-fragment_and_dispatch
	.section	.rodata.str1.4
	.align	4
.LC14:
	.string	"acl_length == packet->len - HCI_ACL_PREAMBLE_SIZE"
	.align	4
.LC19:
	.string	"BT_HCI"
	.align	4
.LC21:
	.string	"\033[0;33mW (%d) %s: %s found unfinished packet for handle with start packet. Dropping old.\n\033[0m\n"
	.align	4
.LC24:
	.string	"\033[0;33mW (%d) %s: %s found l2cap full length %d less than the hci length %d.\n\033[0m\n"
	.align	4
.LC27:
	.string	"\033[0;31mE (%d) %s: %s got continuation for unknown packet. Dropping it.\n\033[0m\n"
	.align	4
.LC29:
	.string	"\033[0;31mE (%d) %s: %s got packet which would exceed expected length of %d. Truncating.\n\033[0m\n"
	.section	.text.reassemble_and_dispatch,"ax",@progbits
	.literal_position
	.literal .LC13, 4352
	.literal .LC15, .LC14
	.literal .LC16, __func__$5905
	.literal .LC17, .LC4
	.literal .LC18, partial_packets
	.literal .LC20, .LC19
	.literal .LC22, .LC21
	.literal .LC23, buffer_allocator
	.literal .LC25, .LC24
	.literal .LC26, callbacks
	.literal .LC28, .LC27
	.literal .LC30, .LC29
	.align	4
	.type	reassemble_and_dispatch, @function
reassemble_and_dispatch:
.LFB30:
	.loc 1 132 0
.LVL34:
	entry	sp, 48
.LCFI2:
	.loc 1 135 0
	l16ui	a3, a2, 0
	l32r	a4, .LC13
	movi	a8, -0x100
	and	a8, a3, a8
	bne	a8, a4, .L10
.LBB2:
	.loc 1 136 0
	addi.n	a4, a2, 8
	l16ui	a8, a2, 4
	add.n	a8, a4, a8
.LVL35:
	.loc 1 141 0
	l8ui	a3, a8, 0
	l8ui	a11, a8, 1
	slli	a11, a11, 8
	add.n	a11, a11, a3
	extui	a11, a11, 0, 16
.LVL36:
	.loc 1 142 0
	l8ui	a5, a8, 2
	l8ui	a3, a8, 3
	slli	a3, a3, 8
	add.n	a3, a3, a5
	extui	a3, a3, 0, 16
.LVL37:
	.loc 1 143 0
	l8ui	a6, a8, 4
	l8ui	a5, a8, 5
	slli	a5, a5, 8
	add.n	a5, a5, a6
	extui	a5, a5, 0, 16
.LVL38:
	.loc 1 145 0
	l16ui	a6, a2, 2
	addi	a6, a6, -4
	beq	a3, a6, .L11
	.loc 1 145 0 is_stmt 0 discriminator 1
	l32r	a13, .LC15
	l32r	a12, .LC16
	movi	a11, 0x91
.LVL39:
	l32r	a10, .LC17
	call8	__assert_func
.LVL40:
.L11:
	.loc 1 147 0 is_stmt 1
	extui	a6, a11, 12, 2
.LVL41:
	.loc 1 148 0
	extui	a7, a11, 0, 12
.LVL42:
	.loc 1 150 0
	mov.n	a11, a7
	l32r	a3, .LC18
.LVL43:
	l32i.n	a10, a3, 0
	call8	hash_map_get
.LVL44:
	mov.n	a3, a10
.LVL45:
	.loc 1 152 0
	bnei	a6, 2, .L12
.LBB3:
	.loc 1 153 0
	beqz.n	a10, .L13
	.loc 1 154 0 discriminator 1
	call8	esp_log_timestamp
.LVL46:
	l32r	a11, .LC20
	l32r	a15, .LC16
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC22
	movi.n	a10, 2
	call8	esp_log_write
.LVL47:
	.loc 1 155 0 discriminator 1
	mov.n	a11, a7
	l32r	a6, .LC18
.LVL48:
	l32i.n	a10, a6, 0
	call8	hash_map_erase
.LVL49:
	.loc 1 156 0 discriminator 1
	l32r	a6, .LC23
	l32i.n	a6, a6, 0
	l32i.n	a6, a6, 4
	mov.n	a10, a3
	callx8	a6
.LVL50:
.L13:
	.loc 1 159 0
	addi.n	a3, a5, 8
.LVL51:
	extui	a3, a3, 0, 16
.LVL52:
	.loc 1 160 0
	l16ui	a6, a2, 2
	bltu	a6, a3, .L14
	.loc 1 161 0
	bgeu	a3, a6, .L15
	.loc 1 162 0 discriminator 1
	call8	esp_log_timestamp
.LVL53:
	l16ui	a3, a2, 2
.LVL54:
	l32r	a11, .LC20
	s32i.n	a3, sp, 4
	s32i.n	a5, sp, 0
	l32r	a15, .LC16
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC25
	movi.n	a10, 2
	call8	esp_log_write
.LVL55:
.L15:
	.loc 1 165 0
	l32r	a3, .LC26
	l32i.n	a3, a3, 0
	l32i.n	a3, a3, 4
	mov.n	a10, a2
	callx8	a3
.LVL56:
	.loc 1 166 0
	retw.n
.L14:
	.loc 1 169 0
	l32r	a6, .LC23
	l32i.n	a5, a6, 0
.LVL57:
	l32i.n	a5, a5, 0
	addi.n	a10, a3, 8
	callx8	a5
.LVL58:
	mov.n	a5, a10
.LVL59:
	.loc 1 170 0
	l16ui	a8, a2, 0
	s16i	a8, a10, 0
	.loc 1 171 0
	s16i	a3, a10, 2
	.loc 1 172 0
	l16ui	a8, a2, 2
	s16i	a8, a10, 4
	.loc 1 174 0
	l16ui	a11, a2, 4
	l16ui	a12, a2, 2
	add.n	a11, a4, a11
	addi.n	a10, a10, 8
	call8	memcpy
.LVL60:
	.loc 1 179 0
	addi	a4, a3, -4
	s8i	a4, a5, 10
.LVL61:
	extui	a3, a4, 8, 8
.LVL62:
	s8i	a3, a5, 11
	.loc 1 181 0
	mov.n	a12, a5
	mov.n	a11, a7
	l32r	a3, .LC18
	l32i.n	a10, a3, 0
	call8	hash_map_set
.LVL63:
	.loc 1 183 0
	l32i.n	a3, a6, 0
	l32i.n	a3, a3, 4
	mov.n	a10, a2
	callx8	a3
.LVL64:
.LBE3:
	retw.n
.LVL65:
.L12:
.LBB4:
	.loc 1 185 0
	bnez.n	a10, .L17
	.loc 1 186 0 discriminator 1
	call8	esp_log_timestamp
.LVL66:
	l32r	a11, .LC20
	l32r	a15, .LC16
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC28
	movi.n	a10, 1
	call8	esp_log_write
.LVL67:
	.loc 1 187 0 discriminator 1
	l32r	a3, .LC23
.LVL68:
	l32i.n	a3, a3, 0
	l32i.n	a3, a3, 4
	mov.n	a10, a2
	callx8	a3
.LVL69:
	.loc 1 188 0 discriminator 1
	retw.n
.LVL70:
.L17:
	.loc 1 191 0
	l16ui	a5, a2, 4
.LVL71:
	addi.n	a5, a5, 4
	s16i	a5, a2, 4
	.loc 1 192 0
	l16ui	a5, a2, 2
	addi	a5, a5, -4
	extui	a5, a5, 0, 16
	s16i	a5, a2, 2
	.loc 1 193 0
	l16ui	a6, a10, 4
.LVL72:
	add.n	a5, a5, a6
	extui	a5, a5, 0, 16
.LVL73:
	.loc 1 194 0
	l16ui	a6, a10, 2
	bgeu	a6, a5, .L18
	.loc 1 195 0 discriminator 1
	call8	esp_log_timestamp
.LVL74:
	l16ui	a5, a3, 2
.LVL75:
	l32r	a11, .LC20
	s32i.n	a5, sp, 0
	l32r	a15, .LC16
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC30
	movi.n	a10, 1
	call8	esp_log_write
.LVL76:
	.loc 1 196 0 discriminator 1
	l16ui	a5, a3, 2
	l16ui	a6, a3, 4
	sub	a5, a5, a6
	s16i	a5, a2, 2
	.loc 1 197 0 discriminator 1
	l16ui	a5, a3, 2
.LVL77:
.L18:
	.loc 1 201 0
	addi.n	a10, a3, 8
	l16ui	a6, a3, 4
	.loc 1 202 0
	l16ui	a11, a2, 4
	.loc 1 200 0
	l16ui	a12, a2, 2
	add.n	a11, a4, a11
	add.n	a10, a10, a6
	call8	memcpy
.LVL78:
	.loc 1 207 0
	l32r	a4, .LC23
	l32i.n	a4, a4, 0
	l32i.n	a4, a4, 4
	mov.n	a10, a2
	callx8	a4
.LVL79:
	.loc 1 208 0
	s16i	a5, a3, 4
	.loc 1 210 0
	l16ui	a2, a3, 2
.LVL80:
	bne	a5, a2, .L9
	.loc 1 211 0
	mov.n	a11, a7
	l32r	a2, .LC18
	l32i.n	a10, a2, 0
	call8	hash_map_erase
.LVL81:
	.loc 1 212 0
	movi.n	a2, 0
	s16i	a2, a3, 4
	.loc 1 213 0
	l32r	a2, .LC26
	l32i.n	a2, a2, 0
	l32i.n	a2, a2, 4
	mov.n	a10, a3
	callx8	a2
.LVL82:
	retw.n
.LVL83:
.L10:
.LBE4:
.LBE2:
	.loc 1 217 0
	l32r	a3, .LC26
	l32i.n	a3, a3, 0
	l32i.n	a3, a3, 4
	mov.n	a10, a2
	callx8	a3
.LVL84:
.L9:
	retw.n
.LFE30:
	.size	reassemble_and_dispatch, .-reassemble_and_dispatch
	.section	.text.cleanup,"ax",@progbits
	.literal_position
	.literal .LC31, partial_packets
	.align	4
	.type	cleanup, @function
cleanup:
.LFB27:
	.loc 1 61 0
	entry	sp, 32
.LCFI3:
	.loc 1 62 0
	l32r	a8, .LC31
	l32i.n	a10, a8, 0
	beqz.n	a10, .L19
	.loc 1 63 0
	call8	hash_map_free
.LVL85:
.L19:
	retw.n
.LFE27:
	.size	cleanup, .-cleanup
	.section	.text.init,"ax",@progbits
	.literal_position
	.literal .LC32, current_fragment_packet
	.literal .LC33, callbacks
	.literal .LC34, hash_function_naive
	.literal .LC35, partial_packets
	.align	4
	.type	init, @function
init:
.LFB26:
	.loc 1 54 0
.LVL86:
	entry	sp, 32
.LCFI4:
	.loc 1 55 0
	movi.n	a12, 0
	l32r	a8, .LC32
	s32i.n	a12, a8, 0
	.loc 1 56 0
	l32r	a8, .LC33
	s32i.n	a2, a8, 0
	.loc 1 57 0
	mov.n	a14, a12
	mov.n	a13, a12
	l32r	a11, .LC34
	movi.n	a10, 0x2a
	call8	hash_map_new
.LVL87:
	l32r	a8, .LC35
	s32i.n	a10, a8, 0
	retw.n
.LFE26:
	.size	init, .-init
	.section	.text.packet_fragmenter_get_interface,"ax",@progbits
	.literal_position
	.literal .LC36, controller
	.literal .LC37, buffer_allocator
	.literal .LC38, interface
	.align	4
	.global	packet_fragmenter_get_interface
	.type	packet_fragmenter_get_interface, @function
packet_fragmenter_get_interface:
.LFB31:
	.loc 1 231 0
	entry	sp, 32
.LCFI5:
	.loc 1 232 0
	call8	controller_get_interface
.LVL88:
	l32r	a8, .LC36
	s32i.n	a10, a8, 0
	.loc 1 233 0
	call8	buffer_allocator_get_interface
.LVL89:
	l32r	a8, .LC37
	s32i.n	a10, a8, 0
	.loc 1 235 0
	l32r	a2, .LC38
	retw.n
.LFE31:
	.size	packet_fragmenter_get_interface, .-packet_fragmenter_get_interface
	.section	.rodata.__func__$5897,"a",@progbits
	.align	4
	.type	__func__$5897, @object
	.size	__func__$5897, 22
__func__$5897:
	.string	"fragment_and_dispatch"
	.section	.rodata.__func__$5905,"a",@progbits
	.align	4
	.type	__func__$5905, @object
	.size	__func__$5905, 24
__func__$5905:
	.string	"reassemble_and_dispatch"
	.section	.bss.current_fragment_packet,"aw",@nobits
	.align	4
	.type	current_fragment_packet, @object
	.size	current_fragment_packet, 4
current_fragment_packet:
	.zero	4
	.section	.bss.partial_packets,"aw",@nobits
	.align	4
	.type	partial_packets, @object
	.size	partial_packets, 4
partial_packets:
	.zero	4
	.section	.bss.callbacks,"aw",@nobits
	.align	4
	.type	callbacks, @object
	.size	callbacks, 4
callbacks:
	.zero	4
	.section	.bss.controller,"aw",@nobits
	.align	4
	.type	controller, @object
	.size	controller, 4
controller:
	.zero	4
	.section	.bss.buffer_allocator,"aw",@nobits
	.align	4
	.type	buffer_allocator, @object
	.size	buffer_allocator, 4
buffer_allocator:
	.zero	4
	.section	.rodata.interface,"a",@progbits
	.align	4
	.type	interface, @object
	.size	interface, 20
interface:
	.word	init
	.word	cleanup
	.word	fragment_get_current_packet
	.word	fragment_and_dispatch
	.word	reassemble_and_dispatch
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
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI0-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI1-.LFB29
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI2-.LFB30
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI3-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI4-.LFB26
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
	.uleb128 0x20
	.align	4
.LEFDE10:
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/common/include/common/bt_defs.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/hash_map.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/device/include/device/device_features.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/allocator.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/device/include/device/controller.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/hci/include/hci/packet_fragmenter.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/device/include/device/version.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.file 14 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.file 15 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/hci/include/hci/buffer_allocator.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xc13
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF127
	.byte	0xc
	.4byte	.LASF128
	.4byte	.LASF129
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF3
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
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x3
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
	.byte	0x3
	.byte	0x16
	.4byte	0x3e
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x32
	.4byte	0x37
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa6
	.uleb128 0x7
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x8
	.4byte	0xb9
	.uleb128 0x9
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xae
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x21
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0xaa
	.4byte	0x7e
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x21
	.4byte	0xbf
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0x22
	.4byte	0xca
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF20
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.byte	0xc6
	.4byte	0x142
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x5
	.byte	0xc7
	.4byte	0xca
	.byte	0
	.uleb128 0xc
	.string	"len"
	.byte	0x5
	.byte	0xc8
	.4byte	0xca
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x5
	.byte	0xc9
	.4byte	0xca
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x5
	.byte	0xca
	.4byte	0xca
	.byte	0x6
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x5
	.byte	0xcb
	.4byte	0x142
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.4byte	0xbf
	.4byte	0x151
	.uleb128 0xe
	.4byte	0x90
	.byte	0
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x5
	.byte	0xcc
	.4byte	0xfd
	.uleb128 0xd
	.4byte	0xe0
	.4byte	0x16c
	.uleb128 0xf
	.4byte	0x90
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x172
	.uleb128 0x8
	.4byte	0x17d
	.uleb128 0x9
	.4byte	0x97
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x37
	.byte	0xe
	.byte	0x1f
	.4byte	0x1ae
	.uleb128 0x11
	.4byte	.LASF26
	.byte	0
	.uleb128 0x11
	.4byte	.LASF27
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF28
	.byte	0x2
	.uleb128 0x11
	.4byte	.LASF29
	.byte	0x3
	.uleb128 0x11
	.4byte	.LASF30
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF31
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.byte	0x6
	.byte	0x6
	.byte	0x3b
	.4byte	0x1c3
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x6
	.byte	0x3c
	.4byte	0x1c3
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0xbf
	.4byte	0x1d3
	.uleb128 0xf
	.4byte	0x90
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x6
	.byte	0x3d
	.4byte	0x1ae
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x7
	.byte	0x1a
	.4byte	0x1e9
	.uleb128 0x12
	.4byte	.LASF34
	.uleb128 0xa
	.byte	0x8
	.byte	0x8
	.byte	0x19
	.4byte	0x203
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x8
	.byte	0x1a
	.4byte	0x203
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0xbf
	.4byte	0x213
	.uleb128 0xf
	.4byte	0x90
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x8
	.byte	0x1b
	.4byte	0x1ee
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x9
	.byte	0x1b
	.4byte	0x229
	.uleb128 0x6
	.byte	0x4
	.4byte	0x22f
	.uleb128 0x13
	.4byte	0x97
	.4byte	0x23e
	.uleb128 0x9
	.4byte	0x2c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x9
	.byte	0x1c
	.4byte	0x16c
	.uleb128 0xa
	.byte	0x8
	.byte	0x9
	.byte	0x1e
	.4byte	0x26a
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x9
	.byte	0x1f
	.4byte	0x21e
	.byte	0
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x9
	.byte	0x20
	.4byte	0x23e
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x9
	.byte	0x21
	.4byte	0x249
	.uleb128 0x14
	.4byte	.LASF74
	.byte	0x80
	.byte	0xa
	.byte	0x20
	.4byte	0x402
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0xa
	.byte	0x21
	.4byte	0xa0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0xa
	.byte	0x22
	.4byte	0xa0
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0xa
	.byte	0x23
	.4byte	0x4c8
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0xa
	.byte	0x25
	.4byte	0x4de
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0xa
	.byte	0x26
	.4byte	0x4f4
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0xa
	.byte	0x28
	.4byte	0x514
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0xa
	.byte	0x2a
	.4byte	0x51f
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0xa
	.byte	0x2c
	.4byte	0x52a
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0xa
	.byte	0x2d
	.4byte	0x540
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0xa
	.byte	0x2f
	.4byte	0x4c8
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0xa
	.byte	0x30
	.4byte	0x4c8
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0xa
	.byte	0x31
	.4byte	0x4c8
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0xa
	.byte	0x32
	.4byte	0x4c8
	.byte	0x30
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0xa
	.byte	0x33
	.4byte	0x4c8
	.byte	0x34
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0xa
	.byte	0x34
	.4byte	0x4c8
	.byte	0x38
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0xa
	.byte	0x35
	.4byte	0x4c8
	.byte	0x3c
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0xa
	.byte	0x36
	.4byte	0x4c8
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0xa
	.byte	0x38
	.4byte	0x4c8
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF60
	.byte	0xa
	.byte	0x39
	.4byte	0x4c8
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0xa
	.byte	0x3a
	.4byte	0x4c8
	.byte	0x4c
	.uleb128 0xb
	.4byte	.LASF62
	.byte	0xa
	.byte	0x3b
	.4byte	0x4c8
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF63
	.byte	0xa
	.byte	0x3e
	.4byte	0x54b
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF64
	.byte	0xa
	.byte	0x3f
	.4byte	0x54b
	.byte	0x58
	.uleb128 0xb
	.4byte	.LASF65
	.byte	0xa
	.byte	0x44
	.4byte	0x54b
	.byte	0x5c
	.uleb128 0xb
	.4byte	.LASF66
	.byte	0xa
	.byte	0x45
	.4byte	0x54b
	.byte	0x60
	.uleb128 0xb
	.4byte	.LASF67
	.byte	0xa
	.byte	0x47
	.4byte	0x54b
	.byte	0x64
	.uleb128 0xb
	.4byte	.LASF68
	.byte	0xa
	.byte	0x48
	.4byte	0x54b
	.byte	0x68
	.uleb128 0xb
	.4byte	.LASF69
	.byte	0xa
	.byte	0x4b
	.4byte	0x54b
	.byte	0x6c
	.uleb128 0xb
	.4byte	.LASF70
	.byte	0xa
	.byte	0x4c
	.4byte	0x51f
	.byte	0x70
	.uleb128 0xb
	.4byte	.LASF71
	.byte	0xa
	.byte	0x4e
	.4byte	0x51f
	.byte	0x74
	.uleb128 0xb
	.4byte	.LASF72
	.byte	0xa
	.byte	0x50
	.4byte	0x51f
	.byte	0x78
	.uleb128 0xb
	.4byte	.LASF73
	.byte	0xa
	.byte	0x51
	.4byte	0xb9
	.byte	0x7c
	.byte	0
	.uleb128 0x14
	.4byte	.LASF75
	.byte	0x14
	.byte	0xb
	.byte	0x2a
	.4byte	0x44b
	.uleb128 0xb
	.4byte	.LASF76
	.byte	0xb
	.byte	0x2c
	.4byte	0x5d6
	.byte	0
	.uleb128 0xb
	.4byte	.LASF77
	.byte	0xb
	.byte	0x2f
	.4byte	0xa0
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF78
	.byte	0xb
	.byte	0x32
	.4byte	0x456
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF79
	.byte	0xb
	.byte	0x35
	.4byte	0x4b7
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF80
	.byte	0xb
	.byte	0x39
	.4byte	0x4b7
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x151
	.uleb128 0x15
	.4byte	0x44b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x451
	.uleb128 0xa
	.byte	0xa
	.byte	0xc
	.byte	0x17
	.4byte	0x4a1
	.uleb128 0xb
	.4byte	.LASF81
	.byte	0xc
	.byte	0x18
	.4byte	0xbf
	.byte	0
	.uleb128 0xb
	.4byte	.LASF82
	.byte	0xc
	.byte	0x19
	.4byte	0xca
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF83
	.byte	0xc
	.byte	0x1a
	.4byte	0xbf
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF84
	.byte	0xc
	.byte	0x1b
	.4byte	0xca
	.byte	0x6
	.uleb128 0xb
	.4byte	.LASF85
	.byte	0xc
	.byte	0x1c
	.4byte	0xca
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF86
	.byte	0xc
	.byte	0x1d
	.4byte	0x45c
	.uleb128 0x8
	.4byte	0x4b7
	.uleb128 0x9
	.4byte	0x44b
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4ac
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbf
	.uleb128 0x15
	.4byte	0xf6
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4c3
	.uleb128 0x15
	.4byte	0x4d3
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4d9
	.uleb128 0x16
	.4byte	0x1d3
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4ce
	.uleb128 0x15
	.4byte	0x4e9
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4ef
	.uleb128 0x16
	.4byte	0x4a1
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4e4
	.uleb128 0x13
	.4byte	0x509
	.4byte	0x509
	.uleb128 0x9
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x50f
	.uleb128 0x16
	.4byte	0x213
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4fa
	.uleb128 0x15
	.4byte	0xbf
	.uleb128 0x6
	.byte	0x4
	.4byte	0x51a
	.uleb128 0x15
	.4byte	0x509
	.uleb128 0x6
	.byte	0x4
	.4byte	0x525
	.uleb128 0x15
	.4byte	0x535
	.uleb128 0x6
	.byte	0x4
	.4byte	0x53b
	.uleb128 0x16
	.4byte	0xbf
	.uleb128 0x6
	.byte	0x4
	.4byte	0x530
	.uleb128 0x15
	.4byte	0xca
	.uleb128 0x6
	.byte	0x4
	.4byte	0x546
	.uleb128 0x3
	.4byte	.LASF87
	.byte	0xb
	.byte	0x1a
	.4byte	0x55c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x562
	.uleb128 0x8
	.4byte	0x572
	.uleb128 0x9
	.4byte	0x44b
	.uleb128 0x9
	.4byte	0xf6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF88
	.byte	0xb
	.byte	0x1b
	.4byte	0x4b7
	.uleb128 0x3
	.4byte	.LASF89
	.byte	0xb
	.byte	0x1c
	.4byte	0x55c
	.uleb128 0xa
	.byte	0xc
	.byte	0xb
	.byte	0x1e
	.4byte	0x5b5
	.uleb128 0xb
	.4byte	.LASF90
	.byte	0xb
	.byte	0x20
	.4byte	0x57d
	.byte	0
	.uleb128 0xb
	.4byte	.LASF91
	.byte	0xb
	.byte	0x23
	.4byte	0x572
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF92
	.byte	0xb
	.byte	0x27
	.4byte	0x551
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF93
	.byte	0xb
	.byte	0x28
	.4byte	0x588
	.uleb128 0x8
	.4byte	0x5cb
	.uleb128 0x9
	.4byte	0x5cb
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5d1
	.uleb128 0x16
	.4byte	0x5b5
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5c0
	.uleb128 0x17
	.4byte	.LASF130
	.byte	0x1
	.byte	0x43
	.4byte	0x44b
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x18
	.4byte	.LASF79
	.byte	0x1
	.byte	0x48
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x706
	.uleb128 0x19
	.4byte	.LASF99
	.byte	0x1
	.byte	0x48
	.4byte	0x44b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1a
	.4byte	.LASF94
	.byte	0x1
	.byte	0x4a
	.4byte	0xca
	.4byte	.LLST0
	.uleb128 0x1b
	.4byte	.LASF95
	.byte	0x1
	.byte	0x4b
	.4byte	0xca
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1a
	.4byte	.LASF96
	.byte	0x1
	.byte	0x4b
	.4byte	0xca
	.4byte	.LLST1
	.uleb128 0x1a
	.4byte	.LASF97
	.byte	0x1
	.byte	0x4b
	.4byte	0xca
	.4byte	.LLST2
	.uleb128 0x1a
	.4byte	.LASF21
	.byte	0x1
	.byte	0x4c
	.4byte	0xca
	.4byte	.LLST3
	.uleb128 0x1a
	.4byte	.LASF98
	.byte	0x1
	.byte	0x4d
	.4byte	0x4bd
	.4byte	.LLST4
	.uleb128 0x1c
	.4byte	.LASF100
	.4byte	0x716
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5897
	.uleb128 0x1d
	.4byte	.LVL3
	.4byte	0xb9f
	.4byte	0x6a9
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x4f
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5897
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL5
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.4byte	0x6c1
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL21
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.4byte	0x6d9
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL30
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.4byte	0x6f1
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x20
	.4byte	.LVL33
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0xa7
	.4byte	0x716
	.uleb128 0xf
	.4byte	0x90
	.byte	0x15
	.byte	0
	.uleb128 0x16
	.4byte	0x706
	.uleb128 0x21
	.4byte	.LASF80
	.byte	0x1
	.byte	0x83
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa40
	.uleb128 0x22
	.4byte	.LASF99
	.byte	0x1
	.byte	0x83
	.4byte	0x44b
	.4byte	.LLST5
	.uleb128 0x1c
	.4byte	.LASF100
	.4byte	0xa50
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5905
	.uleb128 0x23
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0xa30
	.uleb128 0x1a
	.4byte	.LASF98
	.byte	0x1
	.byte	0x88
	.4byte	0x4bd
	.4byte	.LLST6
	.uleb128 0x1a
	.4byte	.LASF101
	.byte	0x1
	.byte	0x89
	.4byte	0xca
	.4byte	.LLST7
	.uleb128 0x1a
	.4byte	.LASF102
	.byte	0x1
	.byte	0x8a
	.4byte	0xca
	.4byte	.LLST8
	.uleb128 0x1a
	.4byte	.LASF103
	.byte	0x1
	.byte	0x8b
	.4byte	0xca
	.4byte	.LLST9
	.uleb128 0x1a
	.4byte	.LASF104
	.byte	0x1
	.byte	0x93
	.4byte	0xbf
	.4byte	.LLST10
	.uleb128 0x1a
	.4byte	.LASF105
	.byte	0x1
	.byte	0x96
	.4byte	0x44b
	.4byte	.LLST11
	.uleb128 0x23
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x8ea
	.uleb128 0x1a
	.4byte	.LASF106
	.byte	0x1
	.byte	0x9f
	.4byte	0xca
	.4byte	.LLST12
	.uleb128 0x24
	.4byte	.LVL46
	.4byte	0xbaa
	.uleb128 0x1d
	.4byte	.LVL47
	.4byte	0xbb5
	.4byte	0x811
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
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
	.4byte	.LC19
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5905
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL49
	.4byte	0xbc0
	.4byte	0x825
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.4byte	0x838
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL53
	.4byte	0xbaa
	.uleb128 0x1d
	.4byte	.LVL55
	.4byte	0xbb5
	.4byte	0x886
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5905
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL56
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.4byte	0x899
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL58
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.4byte	0x8ac
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 8
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL60
	.4byte	0xbcb
	.4byte	0x8c0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 8
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL63
	.4byte	0xbd4
	.4byte	0x8da
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL64
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x9f0
	.uleb128 0x1a
	.4byte	.LASF107
	.byte	0x1
	.byte	0xc1
	.4byte	0xca
	.4byte	.LLST13
	.uleb128 0x24
	.4byte	.LVL66
	.4byte	0xbaa
	.uleb128 0x1d
	.4byte	.LVL67
	.4byte	0xbb5
	.4byte	0x946
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
	.4byte	.LC19
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC27
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5905
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL69
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.4byte	0x959
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL74
	.4byte	0xbaa
	.uleb128 0x1d
	.4byte	.LVL76
	.4byte	0xbb5
	.4byte	0x9a0
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
	.4byte	.LC19
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC29
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5905
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL78
	.4byte	0xbcb
	.4byte	0x9b9
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x7
	.byte	0x73
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL79
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.4byte	0x9cc
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL81
	.4byte	0xbc0
	.4byte	0x9e0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL82
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL40
	.4byte	0xb9f
	.4byte	0xa1f
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x91
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5905
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.uleb128 0x25
	.4byte	.LVL44
	.4byte	0xbdf
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL84
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0xa7
	.4byte	0xa50
	.uleb128 0xf
	.4byte	0x90
	.byte	0x17
	.byte	0
	.uleb128 0x16
	.4byte	0xa40
	.uleb128 0x26
	.4byte	.LASF77
	.byte	0x1
	.byte	0x3c
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa74
	.uleb128 0x24
	.4byte	.LVL85
	.4byte	0xbea
	.byte	0
	.uleb128 0x21
	.4byte	.LASF76
	.byte	0x1
	.byte	0x35
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xab6
	.uleb128 0x19
	.4byte	.LASF108
	.byte	0x1
	.byte	0x35
	.4byte	0x5cb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x25
	.4byte	.LVL87
	.4byte	0xbf5
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x2a
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
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF131
	.byte	0x1
	.byte	0xe6
	.4byte	0xae2
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xae2
	.uleb128 0x24
	.4byte	.LVL88
	.4byte	0xc00
	.uleb128 0x24
	.4byte	.LVL89
	.4byte	0xc0b
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xae8
	.uleb128 0x16
	.4byte	0x402
	.uleb128 0x28
	.4byte	.LASF109
	.byte	0x5
	.2byte	0x2cc
	.4byte	0xb00
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x16
	.4byte	0x15c
	.uleb128 0x28
	.4byte	.LASF110
	.byte	0x5
	.2byte	0x2cd
	.4byte	0xb18
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0x15c
	.uleb128 0x1b
	.4byte	.LASF111
	.byte	0x1
	.byte	0xdd
	.4byte	0xae8
	.uleb128 0x5
	.byte	0x3
	.4byte	interface
	.uleb128 0x1b
	.4byte	.LASF112
	.byte	0x1
	.byte	0x2f
	.4byte	0xb3f
	.uleb128 0x5
	.byte	0x3
	.4byte	buffer_allocator
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb45
	.uleb128 0x16
	.4byte	0x26a
	.uleb128 0x1b
	.4byte	.LASF113
	.byte	0x1
	.byte	0x30
	.4byte	0xb5b
	.uleb128 0x5
	.byte	0x3
	.4byte	controller
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb61
	.uleb128 0x16
	.4byte	0x275
	.uleb128 0x1b
	.4byte	.LASF114
	.byte	0x1
	.byte	0x31
	.4byte	0x5cb
	.uleb128 0x5
	.byte	0x3
	.4byte	callbacks
	.uleb128 0x1b
	.4byte	.LASF115
	.byte	0x1
	.byte	0x32
	.4byte	0xb88
	.uleb128 0x5
	.byte	0x3
	.4byte	partial_packets
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1de
	.uleb128 0x1b
	.4byte	.LASF116
	.byte	0x1
	.byte	0x33
	.4byte	0x44b
	.uleb128 0x5
	.byte	0x3
	.4byte	current_fragment_packet
	.uleb128 0x29
	.4byte	.LASF117
	.4byte	.LASF117
	.byte	0xd
	.byte	0x29
	.uleb128 0x29
	.4byte	.LASF118
	.4byte	.LASF118
	.byte	0xe
	.byte	0x57
	.uleb128 0x29
	.4byte	.LASF119
	.4byte	.LASF119
	.byte	0xe
	.byte	0x6b
	.uleb128 0x29
	.4byte	.LASF120
	.4byte	.LASF120
	.byte	0x7
	.byte	0x61
	.uleb128 0x2a
	.4byte	.LASF132
	.4byte	.LASF132
	.uleb128 0x29
	.4byte	.LASF121
	.4byte	.LASF121
	.byte	0x7
	.byte	0x5b
	.uleb128 0x29
	.4byte	.LASF122
	.4byte	.LASF122
	.byte	0x7
	.byte	0x54
	.uleb128 0x29
	.4byte	.LASF123
	.4byte	.LASF123
	.byte	0x7
	.byte	0x3f
	.uleb128 0x29
	.4byte	.LASF124
	.4byte	.LASF124
	.byte	0x7
	.byte	0x36
	.uleb128 0x29
	.4byte	.LASF125
	.4byte	.LASF125
	.byte	0xa
	.byte	0x59
	.uleb128 0x29
	.4byte	.LASF126
	.4byte	.LASF126
	.byte	0xf
	.byte	0x17
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x11
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x2116
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x2113
	.uleb128 0x18
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x12
	.byte	0x73
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LFE29
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL13
	.4byte	.LVL21-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL21-1
	.4byte	.LFE29
	.2byte	0x3
	.byte	0x76
	.sleb128 4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL14
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x72
	.sleb128 2
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL23
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x3
	.byte	0x73
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL33-1
	.2byte	0x2
	.byte	0x72
	.sleb128 2
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0xc
	.byte	0x72
	.sleb128 4
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL15
	.4byte	.LVL18
	.2byte	0x3
	.byte	0x73
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x3
	.byte	0x73
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x3
	.byte	0x73
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x9
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x3
	.byte	0x77
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x3
	.byte	0x77
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL31
	.2byte	0x3
	.byte	0x77
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x3
	.byte	0x73
	.sleb128 2
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL34
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL80
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
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x3
	.byte	0x78
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x3
	.byte	0x78
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL40-1
	.2byte	0x3
	.byte	0x78
	.sleb128 6
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL44-1
	.2byte	0x3
	.byte	0x78
	.sleb128 6
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x3
	.byte	0x75
	.sleb128 11
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL65
	.2byte	0x3
	.byte	0x75
	.sleb128 12
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL36
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL39
	.4byte	.LVL40-1
	.2byte	0x12
	.byte	0x78
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL42
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL38
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL65
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL37
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL43
	.4byte	.LVL44-1
	.2byte	0x12
	.byte	0x78
	.sleb128 3
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x78
	.sleb128 2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL41
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL65
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL45
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL59
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL65
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL70
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL54
	.4byte	.LVL57
	.2byte	0x3
	.byte	0x75
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL62
	.4byte	.LVL65
	.2byte	0x3
	.byte	0x74
	.sleb128 4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL77
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x55
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
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF3:
	.string	"size_t"
.LASF17:
	.string	"uintptr_t"
.LASF56:
	.string	"supports_rssi_with_inquiry_results"
.LASF90:
	.string	"fragmented"
.LASF4:
	.string	"__uint8_t"
.LASF78:
	.string	"fragment_current_packet"
.LASF108:
	.string	"result_callbacks"
.LASF76:
	.string	"init"
.LASF98:
	.string	"stream"
.LASF9:
	.string	"long long unsigned int"
.LASF94:
	.string	"continuation_handle"
.LASF126:
	.string	"buffer_allocator_get_interface"
.LASF36:
	.string	"bt_device_features_t"
.LASF24:
	.string	"data"
.LASF66:
	.string	"get_acl_packet_size_ble"
.LASF74:
	.string	"controller_t"
.LASF79:
	.string	"fragment_and_dispatch"
.LASF58:
	.string	"supports_master_slave_role_switch"
.LASF40:
	.string	"free"
.LASF113:
	.string	"controller"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF71:
	.string	"get_ble_white_list_size"
.LASF95:
	.string	"max_data_size"
.LASF11:
	.string	"long int"
.LASF48:
	.string	"get_last_features_classic_index"
.LASF116:
	.string	"current_fragment_packet"
.LASF69:
	.string	"get_acl_buffer_count_classic"
.LASF119:
	.string	"esp_log_write"
.LASF132:
	.string	"memcpy"
.LASF16:
	.string	"uint16_t"
.LASF128:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/hci/packet_fragmenter.c"
.LASF97:
	.string	"remaining_length"
.LASF46:
	.string	"get_bt_version"
.LASF75:
	.string	"packet_fragmenter_t"
.LASF19:
	.string	"UINT16"
.LASF33:
	.string	"bt_bdaddr_t"
.LASF72:
	.string	"get_ble_resolving_list_max_size"
.LASF130:
	.string	"fragment_get_current_packet"
.LASF123:
	.string	"hash_map_free"
.LASF42:
	.string	"start_up"
.LASF61:
	.string	"supports_ble_connection_parameters_request"
.LASF0:
	.string	"unsigned int"
.LASF67:
	.string	"get_ble_default_data_packet_length"
.LASF13:
	.string	"long unsigned int"
.LASF62:
	.string	"supports_ble_privacy"
.LASF37:
	.string	"alloc_fn"
.LASF54:
	.string	"supports_reading_remote_extended_features"
.LASF21:
	.string	"event"
.LASF1:
	.string	"short unsigned int"
.LASF34:
	.string	"hash_map_t"
.LASF51:
	.string	"supports_simple_pairing"
.LASF55:
	.string	"supports_interlaced_inquiry_scan"
.LASF88:
	.string	"packet_reassembled_cb"
.LASF59:
	.string	"supports_ble"
.LASF114:
	.string	"callbacks"
.LASF47:
	.string	"get_features_classic"
.LASF111:
	.string	"interface"
.LASF49:
	.string	"get_features_ble"
.LASF29:
	.string	"ESP_LOG_INFO"
.LASF93:
	.string	"packet_fragmenter_callbacks_t"
.LASF82:
	.string	"hci_revision"
.LASF105:
	.string	"partial_packet"
.LASF104:
	.string	"boundary_flag"
.LASF115:
	.string	"partial_packets"
.LASF91:
	.string	"reassembled"
.LASF12:
	.string	"sizetype"
.LASF86:
	.string	"bt_version_t"
.LASF96:
	.string	"max_packet_size"
.LASF32:
	.string	"address"
.LASF107:
	.string	"projected_offset"
.LASF106:
	.string	"full_length"
.LASF81:
	.string	"hci_version"
.LASF57:
	.string	"supports_extended_inquiry_response"
.LASF102:
	.string	"l2cap_length"
.LASF85:
	.string	"lmp_subversion"
.LASF77:
	.string	"cleanup"
.LASF99:
	.string	"packet"
.LASF73:
	.string	"set_ble_resolving_list_max_size"
.LASF110:
	.string	"bd_addr_null"
.LASF83:
	.string	"lmp_version"
.LASF20:
	.string	"_Bool"
.LASF117:
	.string	"__assert_func"
.LASF124:
	.string	"hash_map_new"
.LASF127:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF6:
	.string	"short int"
.LASF45:
	.string	"get_address"
.LASF118:
	.string	"esp_log_timestamp"
.LASF27:
	.string	"ESP_LOG_ERROR"
.LASF10:
	.string	"__uintptr_t"
.LASF100:
	.string	"__func__"
.LASF84:
	.string	"manufacturer"
.LASF43:
	.string	"shut_down"
.LASF60:
	.string	"supports_ble_packet_extension"
.LASF38:
	.string	"free_fn"
.LASF121:
	.string	"hash_map_set"
.LASF41:
	.string	"allocator_t"
.LASF52:
	.string	"supports_secure_connections"
.LASF53:
	.string	"supports_simultaneous_le_bredr"
.LASF14:
	.string	"char"
.LASF31:
	.string	"ESP_LOG_VERBOSE"
.LASF125:
	.string	"controller_get_interface"
.LASF7:
	.string	"__uint16_t"
.LASF26:
	.string	"ESP_LOG_NONE"
.LASF80:
	.string	"reassemble_and_dispatch"
.LASF39:
	.string	"alloc"
.LASF22:
	.string	"offset"
.LASF35:
	.string	"as_array"
.LASF112:
	.string	"buffer_allocator"
.LASF131:
	.string	"packet_fragmenter_get_interface"
.LASF120:
	.string	"hash_map_erase"
.LASF5:
	.string	"unsigned char"
.LASF70:
	.string	"get_acl_buffer_count_ble"
.LASF23:
	.string	"layer_specific"
.LASF63:
	.string	"get_acl_data_size_classic"
.LASF50:
	.string	"get_ble_supported_states"
.LASF28:
	.string	"ESP_LOG_WARN"
.LASF18:
	.string	"UINT8"
.LASF15:
	.string	"uint8_t"
.LASF109:
	.string	"bd_addr_any"
.LASF122:
	.string	"hash_map_get"
.LASF25:
	.string	"BT_HDR"
.LASF68:
	.string	"get_ble_default_data_packet_txtime"
.LASF129:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF89:
	.string	"packet_fragmented_cb"
.LASF101:
	.string	"handle"
.LASF87:
	.string	"transmit_finished_cb"
.LASF92:
	.string	"transmit_finished"
.LASF30:
	.string	"ESP_LOG_DEBUG"
.LASF44:
	.string	"get_is_ready"
.LASF103:
	.string	"acl_length"
.LASF65:
	.string	"get_acl_packet_size_classic"
.LASF64:
	.string	"get_acl_data_size_ble"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
