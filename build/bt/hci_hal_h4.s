	.file	"hci_hal_h4.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"data != NULL"
	.align	4
.LC3:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/hci/hci_hal_h4.c"
	.align	4
.LC5:
	.string	"length > 0"
	.align	4
.LC7:
	.string	"BT_HCI"
	.align	4
.LC9:
	.string	"\033[0;31mE (%d) %s: %s invalid data type: %d\033[0m\n"
	.section	.text.transmit_data,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC2, __func__$8615
	.literal .LC4, .LC3
	.literal .LC6, .LC5
	.literal .LC8, .LC7
	.literal .LC10, .LC9
	.align	4
	.type	transmit_data, @function
transmit_data:
.LFB30:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/hci/hci_hal_h4.c"
	.loc 1 138 0
.LVL0:
	entry	sp, 48
.LCFI0:
	extui	a4, a4, 0, 16
	.loc 1 141 0
	bnez.n	a3, .L2
	.loc 1 141 0 is_stmt 0 discriminator 1
	l32r	a13, .LC1
	l32r	a12, .LC2
	movi	a11, 0x8d
	l32r	a10, .LC4
	call8	__assert_func
.LVL1:
.L2:
	.loc 1 142 0 is_stmt 1
	bnez.n	a4, .L3
	.loc 1 142 0 is_stmt 0 discriminator 1
	l32r	a13, .LC6
	l32r	a12, .LC2
	movi	a11, 0x8e
	l32r	a10, .LC4
	call8	__assert_func
.LVL2:
.L3:
	.loc 1 144 0 is_stmt 1
	addi.n	a8, a2, -1
	bltui	a8, 3, .L4
	.loc 1 145 0 discriminator 1
	call8	esp_log_timestamp
.LVL3:
	l32r	a11, .LC8
	s32i.n	a2, sp, 0
	l32r	a15, .LC2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC10
	movi.n	a10, 1
	call8	esp_log_write
.LVL4:
	.loc 1 146 0 discriminator 1
	movi.n	a2, 0
.LVL5:
	retw.n
.LVL6:
.L4:
	.loc 1 150 0
	addi.n	a3, a3, -1
.LVL7:
	.loc 1 151 0
	l8ui	a5, a3, 0
.LVL8:
	.loc 1 152 0
	s8i	a2, a3, 0
.LVL9:
	.loc 1 153 0
	addi.n	a11, a4, 1
.LVL10:
	.loc 1 158 0
	extui	a11, a11, 0, 16
.LVL11:
	mov.n	a10, a3
	call8	esp_vhci_host_send_packet
.LVL12:
	.loc 1 161 0
	s8i	a5, a3, 0
	.loc 1 163 0
	mov.n	a2, a4
.LVL13:
	.loc 1 164 0
	retw.n
.LFE30:
	.size	transmit_data, .-transmit_data
	.section	.text.hci_hal_env_deinit,"ax",@progbits
	.literal_position
	.literal .LC11, hci_hal_env
	.align	4
	.type	hci_hal_env_deinit, @function
hci_hal_env_deinit:
.LFB27:
	.loc 1 99 0
	entry	sp, 32
.LCFI1:
	.loc 1 100 0
	l32r	a2, .LC11
	l32i.n	a8, a2, 0
	l32i.n	a11, a8, 4
	l32i.n	a10, a2, 8
	call8	fixed_queue_free
.LVL14:
	.loc 1 101 0
	movi.n	a8, 0
	s32i.n	a8, a2, 8
	retw.n
.LFE27:
	.size	hci_hal_env_deinit, .-hci_hal_env_deinit
	.section	.text.hal_close,"ax",@progbits
	.literal_position
	.literal .LC12, xHciH4TaskHandle
	.literal .LC13, xHciH4Queue
	.align	4
	.type	hal_close, @function
hal_close:
.LFB29:
	.loc 1 122 0
	entry	sp, 32
.LCFI2:
	.loc 1 123 0
	call8	hci_hal_env_deinit
.LVL15:
	.loc 1 126 0
	l32r	a8, .LC12
	l32i.n	a10, a8, 0
	call8	vTaskDelete
.LVL16:
	.loc 1 127 0
	l32r	a8, .LC13
	l32i.n	a10, a8, 0
	call8	vQueueDelete
.LVL17:
	retw.n
.LFE29:
	.size	hal_close, .-hal_close
	.section	.text.host_send_pkt_available_cb,"ax",@progbits
	.align	4
	.type	host_send_pkt_available_cb, @function
host_send_pkt_available_cb:
.LFB37:
	.loc 1 309 0
	entry	sp, 32
.LCFI3:
	.loc 1 312 0
	movi.n	a10, -1
	call8	hci_host_task_post
.LVL18:
	retw.n
.LFE37:
	.size	host_send_pkt_available_cb, .-host_send_pkt_available_cb
	.section	.text.hci_hal_h4_rx_handler,"ax",@progbits
	.literal_position
	.literal .LC14, xHciH4Queue
	.literal .LC15, hci_hal_env
	.align	4
	.type	hci_hal_h4_rx_handler, @function
hci_hal_h4_rx_handler:
.LFB31:
	.loc 1 168 0
.LVL19:
	entry	sp, 48
.LCFI4:
.L10:
	.loc 1 172 0
	movi.n	a13, 0
	movi.n	a12, -1
	mov.n	a11, sp
	l32r	a8, .LC14
	l32i.n	a10, a8, 0
	call8	xQueueGenericReceive
.LVL20:
	bnei	a10, 1, .L10
	.loc 1 173 0
	l32i.n	a8, sp, 0
	bnez.n	a8, .L10
	.loc 1 174 0
	l32r	a8, .LC15
	l32i.n	a10, a8, 8
	call8	fixed_queue_process
.LVL21:
	j	.L10
.LFE31:
	.size	hci_hal_h4_rx_handler, .-hci_hal_h4_rx_handler
	.section	.rodata.str1.4
	.align	4
.LC16:
	.string	"buffer_size > 0"
	.align	4
.LC20:
	.string	"max_buffer_count > 0"
	.align	4
.LC25:
	.string	"\033[0;31mE (%d) %s: %s unable to create rx queue.\n\033[0m\n"
	.section	.text.hci_hal_env_init,"ax",@progbits
	.literal_position
	.literal .LC17, .LC16
	.literal .LC18, __func__$8599
	.literal .LC19, .LC3
	.literal .LC21, .LC20
	.literal .LC22, hci_hal_env
	.literal .LC23, event_uart_has_bytes
	.literal .LC24, .LC7
	.literal .LC26, .LC25
	.align	4
	.type	hci_hal_env_init, @function
hci_hal_env_init:
.LFB26:
	.loc 1 81 0
.LVL22:
	entry	sp, 32
.LCFI5:
	.loc 1 82 0
	bnez.n	a2, .L13
	.loc 1 82 0 is_stmt 0 discriminator 1
	l32r	a13, .LC17
	l32r	a12, .LC18
	movi.n	a11, 0x52
	l32r	a10, .LC19
	call8	__assert_func
.LVL23:
.L13:
	.loc 1 83 0 is_stmt 1
	bnez.n	a3, .L14
	.loc 1 83 0 is_stmt 0 discriminator 1
	l32r	a13, .LC21
	l32r	a12, .LC18
	movi.n	a11, 0x53
	l32r	a10, .LC19
	call8	__assert_func
.LVL24:
.L14:
	.loc 1 85 0 is_stmt 1
	call8	buffer_allocator_get_interface
.LVL25:
	l32r	a4, .LC22
	s32i.n	a10, a4, 0
	.loc 1 86 0
	s32i.n	a2, a4, 4
	.loc 1 88 0
	mov.n	a10, a3
	call8	fixed_queue_new
.LVL26:
	s32i.n	a10, a4, 8
	.loc 1 89 0
	beqz.n	a10, .L15
	.loc 1 90 0
	l32r	a11, .LC23
	call8	fixed_queue_register_dequeue
.LVL27:
	retw.n
.L15:
	.loc 1 92 0 discriminator 1
	call8	esp_log_timestamp
.LVL28:
	l32r	a11, .LC24
	l32r	a15, .LC18
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC26
	movi.n	a10, 1
	call8	esp_log_write
.LVL29:
	retw.n
.LFE26:
	.size	hci_hal_env_init, .-hci_hal_env_init
	.section	.rodata.str1.4
	.align	4
.LC27:
	.string	"upper_callbacks != NULL"
	.align	4
.LC35:
	.string	"hciH4T"
	.section	.text.hal_open,"ax",@progbits
	.literal_position
	.literal .LC28, .LC27
	.literal .LC29, __func__$8606
	.literal .LC30, .LC3
	.literal .LC31, callbacks
	.literal .LC32, xHciH4Queue
	.literal .LC33, xHciH4TaskHandle
	.literal .LC34, 2560
	.literal .LC36, .LC35
	.literal .LC37, hci_hal_h4_rx_handler
	.literal .LC38, vhci_host_cb
	.align	4
	.type	hal_open, @function
hal_open:
.LFB28:
	.loc 1 105 0
.LVL30:
	entry	sp, 48
.LCFI6:
	.loc 1 106 0
	bnez.n	a2, .L18
	.loc 1 106 0 is_stmt 0 discriminator 1
	l32r	a13, .LC28
	l32r	a12, .LC29
	movi	a11, 0x6a
	l32r	a10, .LC30
	call8	__assert_func
.LVL31:
.L18:
	.loc 1 107 0 is_stmt 1
	l32r	a8, .LC31
	s32i.n	a2, a8, 0
	.loc 1 109 0
	movi	a11, 0xfe
	movi	a10, 0x402
	call8	hci_hal_env_init
.LVL32:
	.loc 1 111 0
	movi.n	a12, 0
	movi.n	a11, 0x10
	movi.n	a10, 1
	call8	xQueueGenericCreate
.LVL33:
	l32r	a2, .LC32
.LVL34:
	s32i.n	a10, a2, 0
	.loc 1 112 0
	movi.n	a13, 0
	s32i.n	a13, sp, 0
	l32r	a15, .LC33
	movi.n	a14, 0x15
	l32r	a12, .LC34
	l32r	a11, .LC36
	l32r	a10, .LC37
	call8	xTaskCreatePinnedToCore
.LVL35:
	.loc 1 115 0
	l32r	a10, .LC38
	call8	esp_vhci_host_register_callback
.LVL36:
	.loc 1 119 0
	movi.n	a2, 1
	retw.n
.LFE28:
	.size	hal_open, .-hal_open
	.section	.text.hci_packet_complete,"ax",@progbits
	.align	4
	.type	hci_packet_complete, @function
hci_packet_complete:
.LFB33:
	.loc 1 196 0
.LVL37:
	entry	sp, 64
.LCFI7:
	.loc 1 201 0
	addi.n	a9, a2, 8
	l16ui	a8, a2, 4
	add.n	a8, a9, a8
.LVL38:
	.loc 1 204 0
	l8ui	a2, a8, 0
.LVL39:
	.loc 1 205 0
	bnei	a2, 2, .L19
	.loc 1 206 0
	l8ui	a2, a8, 1
	l8ui	a10, a8, 2
	slli	a10, a10, 8
	add.n	a10, a10, a2
.LVL40:
	.loc 1 208 0
	extui	a10, a10, 0, 12
.LVL41:
	call8	l2cu_find_lcb_by_handle
.LVL42:
	.loc 1 209 0
	beqz.n	a10, .L21
	.loc 1 210 0
	l16ui	a2, a10, 42
	addi.n	a2, a2, 1
	s16i	a2, a10, 42
.L21:
	.loc 1 212 0
	call8	esp_vhci_host_check_send_available
.LVL43:
	beqz.n	a10, .L19
	.loc 1 213 0
	addi	a11, sp, 16
	mov.n	a10, sp
	call8	l2cu_find_completed_packets
.LVL44:
	.loc 1 214 0
	beqz.n	a10, .L19
	.loc 1 215 0
	addi	a12, sp, 16
	mov.n	a11, sp
	call8	btsnd_hcic_host_num_xmitted_pkts
.LVL45:
.L19:
	retw.n
.LFE33:
	.size	hci_packet_complete, .-hci_packet_complete
	.section	.rodata.str1.4
	.align	4
.LC40:
	.string	"\033[0;31mE (%d) %s: Workround stream corrupted during LE SCAN: pkt_len=%d ble_event_len=%d\n\033[0m\n"
	.align	4
.LC44:
	.string	"\033[0;31mE (%d) %s: %s Unknown HCI message type. Dropping this byte 0x%x, min %x, max %x\n\033[0m\n"
	.align	4
.LC47:
	.string	"\033[0;31mE (%d) %s: Wrong packet length type=%d pkt_len=%d hdr_len=%d\033[0m\n"
	.align	4
.LC49:
	.string	"\033[0;31mE (%d) %s: Wrong packet length type=%d hdr_len=%d pd_len=%d pkt_len=%d\033[0m\n"
	.section	.text.hci_hal_h4_hdl_rx_packet,"ax",@progbits
	.literal_position
	.literal .LC39, .LC7
	.literal .LC41, .LC40
	.literal .LC42, hci_hal_env
	.literal .LC43, __func__$8647
	.literal .LC45, .LC44
	.literal .LC46, preamble_sizes
	.literal .LC48, .LC47
	.literal .LC50, .LC49
	.literal .LC51, outbound_event_types
	.literal .LC52, callbacks
	.align	4
	.type	hci_hal_h4_hdl_rx_packet, @function
hci_hal_h4_hdl_rx_packet:
.LFB35:
	.loc 1 235 0
.LVL46:
	entry	sp, 48
.LCFI8:
	.loc 1 238 0
	addi.n	a4, a2, 8
	l16ui	a3, a2, 4
	add.n	a3, a4, a3
.LVL47:
	.loc 1 240 0
	beqz.n	a2, .L22
	.loc 1 245 0
	mov.n	a10, a2
	call8	hci_packet_complete
.LVL48:
	.loc 1 248 0
	l8ui	a4, a3, 0
.LVL49:
	addi.n	a5, a3, 1
.LVL50:
	.loc 1 249 0
	l16ui	a8, a2, 4
	addi.n	a8, a8, 1
	s16i	a8, a2, 4
.LVL51:
	.loc 1 250 0
	l16ui	a8, a2, 2
	addi.n	a8, a8, -1
	extui	a8, a8, 0, 16
	s16i	a8, a2, 2
	.loc 1 251 0
	movi.n	a9, 0x3e
	bne	a4, a9, .L24
.LVL52:
.LBB2:
	.loc 1 253 0
	l8ui	a3, a3, 1
.LVL53:
	.loc 1 254 0
	call8	esp_log_timestamp
.LVL54:
	l16ui	a15, a2, 2
	l32r	a11, .LC39
	s32i.n	a3, sp, 0
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC41
	movi.n	a10, 1
	call8	esp_log_write
.LVL55:
	.loc 1 256 0
	l32r	a3, .LC42
.LVL56:
	l32i.n	a3, a3, 0
	l32i.n	a3, a3, 4
	mov.n	a10, a2
	callx8	a3
.LVL57:
	.loc 1 257 0
	retw.n
.LVL58:
.L24:
.LBE2:
	.loc 1 259 0
	addi	a3, a4, -2
	extui	a3, a3, 0, 8
	bltui	a3, 3, .L25
	.loc 1 260 0 discriminator 1
	call8	esp_log_timestamp
.LVL59:
	l32r	a11, .LC39
	movi.n	a3, 4
	s32i.n	a3, sp, 8
	movi.n	a3, 2
	s32i.n	a3, sp, 4
	s32i.n	a4, sp, 0
	l32r	a15, .LC43
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC45
	movi.n	a10, 1
	call8	esp_log_write
.LVL60:
	.loc 1 263 0 discriminator 1
	l32r	a3, .LC42
	l32i.n	a3, a3, 0
	l32i.n	a3, a3, 4
	mov.n	a10, a2
	callx8	a3
.LVL61:
	.loc 1 264 0 discriminator 1
	retw.n
.L25:
	.loc 1 266 0
	addi.n	a9, a4, -1
	l32r	a3, .LC46
	add.n	a3, a3, a9
	l8ui	a3, a3, 0
.LVL62:
	.loc 1 267 0
	extui	a10, a3, 0, 16
	bgeu	a8, a10, .L26
	.loc 1 268 0 discriminator 1
	call8	esp_log_timestamp
.LVL63:
	l16ui	a5, a2, 2
.LVL64:
	l32r	a11, .LC39
	s32i.n	a3, sp, 4
	s32i.n	a5, sp, 0
	mov.n	a15, a4
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC48
	movi.n	a10, 1
	call8	esp_log_write
.LVL65:
	.loc 1 270 0 discriminator 1
	l32r	a3, .LC42
	l32i.n	a3, a3, 0
	l32i.n	a3, a3, 4
	mov.n	a10, a2
	callx8	a3
.LVL66:
	.loc 1 271 0 discriminator 1
	retw.n
.LVL67:
.L26:
	.loc 1 273 0
	bnei	a4, 2, .L27
	.loc 1 274 0
	addi	a10, a3, -2
	add.n	a5, a5, a10
.LVL68:
	.loc 1 275 0
	l8ui	a10, a5, 0
	l8ui	a5, a5, 1
.LVL69:
	slli	a5, a5, 8
	add.n	a5, a5, a10
	extui	a5, a5, 0, 16
.LVL70:
	j	.L28
.LVL71:
.L27:
	.loc 1 277 0
	addi.n	a10, a3, -1
	add.n	a5, a5, a10
.LVL72:
	.loc 1 278 0
	l8ui	a5, a5, 0
.LVL73:
.L28:
	.loc 1 281 0
	add.n	a10, a5, a3
	beq	a10, a8, .L29
	.loc 1 282 0 discriminator 1
	call8	esp_log_timestamp
.LVL74:
	l16ui	a8, a2, 2
	l32r	a11, .LC39
	s32i.n	a8, sp, 8
	s32i.n	a5, sp, 4
	s32i.n	a3, sp, 0
	mov.n	a15, a4
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC50
	movi.n	a10, 1
	call8	esp_log_write
.LVL75:
	.loc 1 284 0 discriminator 1
	l32r	a3, .LC42
	l32i.n	a3, a3, 0
	l32i.n	a3, a3, 4
	mov.n	a10, a2
	callx8	a3
.LVL76:
	.loc 1 285 0 discriminator 1
	retw.n
.LVL77:
.L29:
	.loc 1 295 0
	l32r	a3, .LC51
	addx2	a9, a9, a3
.LVL78:
	l16ui	a3, a9, 0
	s16i	a3, a2, 0
	.loc 1 296 0
	l32r	a3, .LC52
	l32i.n	a3, a3, 0
	l32i.n	a3, a3, 0
	mov.n	a10, a2
	callx8	a3
.LVL79:
.L22:
	retw.n
.LFE35:
	.size	hci_hal_h4_hdl_rx_packet, .-hci_hal_h4_hdl_rx_packet
	.section	.text.event_uart_has_bytes,"ax",@progbits
	.align	4
	.type	event_uart_has_bytes, @function
event_uart_has_bytes:
.LFB36:
	.loc 1 300 0
.LVL80:
	entry	sp, 32
.LCFI9:
	.loc 1 302 0
	j	.L31
.L32:
	.loc 1 303 0
	mov.n	a10, a2
	call8	fixed_queue_dequeue
.LVL81:
	.loc 1 304 0
	call8	hci_hal_h4_hdl_rx_packet
.LVL82:
.L31:
	.loc 1 302 0
	mov.n	a10, a2
	call8	fixed_queue_is_empty
.LVL83:
	beqz.n	a10, .L32
	.loc 1 306 0
	retw.n
.LFE36:
	.size	event_uart_has_bytes, .-event_uart_has_bytes
	.section	.text.hci_hal_h4_task_post,"ax",@progbits
	.literal_position
	.literal .LC53, xHciH4Queue
	.align	4
	.global	hci_hal_h4_task_post
	.type	hci_hal_h4_task_post, @function
hci_hal_h4_task_post:
.LFB32:
	.loc 1 182 0
.LVL84:
	entry	sp, 48
.LCFI10:
	.loc 1 185 0
	movi.n	a13, 0
	s32i.n	a13, sp, 0
	.loc 1 186 0
	s32i.n	a13, sp, 4
	.loc 1 188 0
	mov.n	a12, a2
	mov.n	a11, sp
	l32r	a8, .LC53
	l32i.n	a10, a8, 0
	call8	xQueueGenericSend
.LVL85:
	beqi	a10, 1, .L35
	.loc 1 189 0
	movi.n	a2, 0
.LVL86:
	retw.n
.LVL87:
.L35:
	.loc 1 192 0
	movi.n	a2, 1
.LVL88:
	.loc 1 193 0
	retw.n
.LFE32:
	.size	hci_hal_h4_task_post, .-hci_hal_h4_task_post
	.section	.rodata.str1.4
	.align	4
.LC57:
	.string	"\033[0;31mE (%d) %s: %s couldn't aquire memory for inbound data buffer.\n\033[0m\n"
	.section	.text.host_recv_pkt_cb,"ax",@progbits
	.literal_position
	.literal .LC54, hci_hal_env
	.literal .LC55, __func__$8664
	.literal .LC56, .LC7
	.literal .LC58, .LC57
	.align	4
	.type	host_recv_pkt_cb, @function
host_recv_pkt_cb:
.LFB38:
	.loc 1 316 0
.LVL89:
	entry	sp, 32
.LCFI11:
	extui	a3, a3, 0, 16
	.loc 1 321 0
	l32r	a4, .LC54
	l32i.n	a4, a4, 8
	beqz.n	a4, .L39
.LVL90:
	.loc 1 326 0
	l32r	a4, .LC54
	l32i.n	a4, a4, 0
	l32i.n	a4, a4, 0
	addi.n	a10, a3, 8
.LVL91:
	callx8	a4
.LVL92:
	mov.n	a4, a10
.LVL93:
	.loc 1 327 0
	bnez.n	a10, .L38
	.loc 1 328 0 discriminator 1
	call8	esp_log_timestamp
.LVL94:
	l32r	a11, .LC56
	l32r	a15, .LC55
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC58
	movi.n	a10, 1
	call8	esp_log_write
.LVL95:
	.loc 1 329 0 discriminator 1
	movi.n	a2, -1
.LVL96:
	retw.n
.LVL97:
.L38:
	.loc 1 331 0
	movi.n	a8, 0
	s16i	a8, a10, 4
	.loc 1 332 0
	s16i	a3, a10, 2
	.loc 1 333 0
	s16i	a8, a10, 6
	.loc 1 334 0
	mov.n	a12, a3
	mov.n	a11, a2
	addi.n	a10, a10, 8
	call8	memcpy
.LVL98:
	.loc 1 335 0
	mov.n	a11, a4
	l32r	a2, .LC54
.LVL99:
	l32i.n	a10, a2, 8
	call8	fixed_queue_enqueue
.LVL100:
	.loc 1 336 0
	movi.n	a10, 0xa
	call8	hci_hal_h4_task_post
.LVL101:
	.loc 1 340 0
	movi.n	a2, 0
	retw.n
.LVL102:
.L39:
	.loc 1 322 0
	movi.n	a2, 0
.LVL103:
	.loc 1 341 0
	retw.n
.LFE38:
	.size	host_recv_pkt_cb, .-host_recv_pkt_cb
	.section	.rodata.str1.4
	.align	4
.LC59:
	.string	"packet"
	.section	.text.host_recv_adv_packet,"ax",@progbits
	.literal_position
	.literal .LC60, .LC59
	.literal .LC61, __func__$8638
	.literal .LC62, .LC3
	.literal .LC63, 15876
	.align	4
	.global	host_recv_adv_packet
	.type	host_recv_adv_packet, @function
host_recv_adv_packet:
.LFB34:
	.loc 1 226 0
.LVL104:
	entry	sp, 32
.LCFI12:
	.loc 1 227 0
	bnez.n	a2, .L41
	.loc 1 227 0 is_stmt 0 discriminator 1
	l32r	a13, .LC60
	l32r	a12, .LC61
	movi	a11, 0xe3
	l32r	a10, .LC62
	call8	__assert_func
.LVL105:
.L41:
	.loc 1 228 0 is_stmt 1
	l16ui	a9, a2, 8
	l32r	a8, .LC63
	bne	a9, a8, .L43
	.loc 1 228 0 is_stmt 0 discriminator 1
	l8ui	a2, a2, 11
.LVL106:
	beqi	a2, 2, .L44
	.loc 1 231 0 is_stmt 1
	movi.n	a2, 0
	retw.n
.LVL107:
.L43:
	movi.n	a2, 0
.LVL108:
	retw.n
.L44:
	.loc 1 229 0
	movi.n	a2, 1
	.loc 1 232 0
	retw.n
.LFE34:
	.size	host_recv_adv_packet, .-host_recv_adv_packet
	.section	.text.hci_hal_h4_get_interface,"ax",@progbits
	.literal_position
	.literal .LC64, interface
	.align	4
	.global	hci_hal_h4_get_interface
	.type	hci_hal_h4_get_interface, @function
hci_hal_h4_get_interface:
.LFB39:
	.loc 1 355 0
	entry	sp, 32
.LCFI13:
	.loc 1 357 0
	l32r	a2, .LC64
	retw.n
.LFE39:
	.size	hci_hal_h4_get_interface, .-hci_hal_h4_get_interface
	.section	.rodata.__func__$8647,"a",@progbits
	.align	4
	.type	__func__$8647, @object
	.size	__func__$8647, 25
__func__$8647:
	.string	"hci_hal_h4_hdl_rx_packet"
	.section	.rodata.__func__$8599,"a",@progbits
	.align	4
	.type	__func__$8599, @object
	.size	__func__$8599, 17
__func__$8599:
	.string	"hci_hal_env_init"
	.section	.rodata.__func__$8664,"a",@progbits
	.align	4
	.type	__func__$8664, @object
	.size	__func__$8664, 17
__func__$8664:
	.string	"host_recv_pkt_cb"
	.section	.rodata.__func__$8606,"a",@progbits
	.align	4
	.type	__func__$8606, @object
	.size	__func__$8606, 9
__func__$8606:
	.string	"hal_open"
	.section	.rodata.__func__$8615,"a",@progbits
	.align	4
	.type	__func__$8615, @object
	.size	__func__$8615, 14
__func__$8615:
	.string	"transmit_data"
	.section	.rodata.__func__$8638,"a",@progbits
	.align	4
	.type	__func__$8638, @object
	.size	__func__$8638, 21
__func__$8638:
	.string	"host_recv_adv_packet"
	.section	.bss.xHciH4Queue,"aw",@nobits
	.align	4
	.type	xHciH4Queue, @object
	.size	xHciH4Queue, 4
xHciH4Queue:
	.zero	4
	.section	.bss.xHciH4TaskHandle,"aw",@nobits
	.align	4
	.type	xHciH4TaskHandle, @object
	.size	xHciH4TaskHandle, 4
xHciH4TaskHandle:
	.zero	4
	.section	.rodata.vhci_host_cb,"a",@progbits
	.align	4
	.type	vhci_host_cb, @object
	.size	vhci_host_cb, 8
vhci_host_cb:
	.word	host_send_pkt_available_cb
	.word	host_recv_pkt_cb
	.section	.bss.callbacks,"aw",@nobits
	.align	4
	.type	callbacks, @object
	.size	callbacks, 4
callbacks:
	.zero	4
	.section	.rodata.interface,"a",@progbits
	.align	4
	.type	interface, @object
	.size	interface, 12
interface:
	.word	hal_open
	.word	hal_close
	.word	transmit_data
	.section	.bss.hci_hal_env,"aw",@nobits
	.align	4
	.type	hci_hal_env, @object
	.size	hci_hal_env, 12
hci_hal_env:
	.zero	12
	.section	.rodata.outbound_event_types,"a",@progbits
	.align	4
	.type	outbound_event_types, @object
	.size	outbound_event_types, 8
outbound_event_types:
	.short	4864
	.short	4352
	.short	4608
	.short	4096
	.section	.rodata.preamble_sizes,"a",@progbits
	.align	4
	.type	preamble_sizes, @object
	.size	preamble_sizes, 4
preamble_sizes:
	.byte	3
	.byte	4
	.byte	3
	.byte	2
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
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI0-.LFB30
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI1-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI2-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI3-.LFB37
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI4-.LFB31
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI5-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI6-.LFB28
	.byte	0xe
	.uleb128 0x30
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
	.uleb128 0x40
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI8-.LFB35
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI9-.LFB36
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
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI11-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI12-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI13-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/common/include/common/bt_defs.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/allocator.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/list.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/fixed_queue.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/hci/include/hci/hci_hal.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
	.file 14 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/queue.h"
	.file 15 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/thread.h"
	.file 16 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/include/esp_bt.h"
	.file 17 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/hcidefs.h"
	.file 18 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
	.file 19 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/l2c_api.h"
	.file 20 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/l2cap/include/l2c_int.h"
	.file 21 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.file 22 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/hci/include/hci/buffer_allocator.h"
	.file 23 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/hcimsgs.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1e43
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF402
	.byte	0xc
	.4byte	.LASF403
	.4byte	.LASF404
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
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x19
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
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
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb1
	.uleb128 0x7
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x21
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x2c
	.4byte	0x70
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x2d
	.4byte	0x7b
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x5
	.byte	0x21
	.4byte	0xb9
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0x22
	.4byte	0xc4
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x5
	.byte	0x23
	.4byte	0xda
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x5
	.byte	0x28
	.4byte	0xcf
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x5
	.byte	0x29
	.4byte	0x11c
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF25
	.uleb128 0x8
	.byte	0x8
	.byte	0x5
	.byte	0xc6
	.4byte	0x168
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x5
	.byte	0xc7
	.4byte	0xc4
	.byte	0
	.uleb128 0xa
	.string	"len"
	.byte	0x5
	.byte	0xc8
	.4byte	0xc4
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x5
	.byte	0xc9
	.4byte	0xc4
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x5
	.byte	0xca
	.4byte	0xc4
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x5
	.byte	0xcb
	.4byte	0x168
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.4byte	0xb9
	.4byte	0x177
	.uleb128 0xc
	.4byte	0x9b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x5
	.byte	0xcc
	.4byte	0x123
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x5
	.2byte	0x132
	.4byte	0x18e
	.uleb128 0xb
	.4byte	0xe5
	.4byte	0x19e
	.uleb128 0xe
	.4byte	0x9b
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe5
	.uleb128 0xb
	.4byte	0xe5
	.4byte	0x1b4
	.uleb128 0xe
	.4byte	0x9b
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.byte	0x18
	.byte	0x5
	.2byte	0x16c
	.4byte	0x219
	.uleb128 0x10
	.4byte	.LASF32
	.byte	0x5
	.2byte	0x16d
	.4byte	0xe5
	.byte	0
	.uleb128 0x10
	.4byte	.LASF33
	.byte	0x5
	.2byte	0x16e
	.4byte	0xe5
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF34
	.byte	0x5
	.2byte	0x16f
	.4byte	0xfb
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF35
	.byte	0x5
	.2byte	0x170
	.4byte	0xfb
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF36
	.byte	0x5
	.2byte	0x171
	.4byte	0xfb
	.byte	0xc
	.uleb128 0x10
	.4byte	.LASF37
	.byte	0x5
	.2byte	0x172
	.4byte	0xfb
	.byte	0x10
	.uleb128 0x10
	.4byte	.LASF38
	.byte	0x5
	.2byte	0x173
	.4byte	0xfb
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x5
	.2byte	0x174
	.4byte	0x1b4
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0x5
	.2byte	0x1f8
	.4byte	0xe5
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x5
	.2byte	0x1fe
	.4byte	0xe5
	.uleb128 0x6
	.byte	0x4
	.4byte	0x243
	.uleb128 0x11
	.4byte	0x24e
	.uleb128 0x12
	.4byte	0xa2
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.4byte	0x37
	.byte	0xa
	.byte	0x1f
	.4byte	0x27f
	.uleb128 0x14
	.4byte	.LASF42
	.byte	0
	.uleb128 0x14
	.4byte	.LASF43
	.byte	0x1
	.uleb128 0x14
	.4byte	.LASF44
	.byte	0x2
	.uleb128 0x14
	.4byte	.LASF45
	.byte	0x3
	.uleb128 0x14
	.4byte	.LASF46
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF47
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0x6
	.byte	0x20
	.4byte	0x243
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x20
	.byte	0x6
	.byte	0x21
	.4byte	0x303
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x6
	.byte	0x22
	.4byte	0x303
	.byte	0
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x6
	.byte	0x23
	.4byte	0x303
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x6
	.byte	0x24
	.4byte	0x309
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x6
	.byte	0x25
	.4byte	0x106
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x6
	.byte	0x26
	.4byte	0x106
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x6
	.byte	0x27
	.4byte	0xfb
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x6
	.byte	0x28
	.4byte	0xfb
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x6
	.byte	0x29
	.4byte	0xf0
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x6
	.byte	0x2a
	.4byte	0xe5
	.byte	0x1e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x28a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x27f
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0x6
	.byte	0x2b
	.4byte	0x28a
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0x7
	.byte	0x1b
	.4byte	0x325
	.uleb128 0x6
	.byte	0x4
	.4byte	0x32b
	.uleb128 0x16
	.4byte	0xa2
	.4byte	0x33a
	.uleb128 0x12
	.4byte	0x2c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0x7
	.byte	0x1c
	.4byte	0x23d
	.uleb128 0x8
	.byte	0x8
	.byte	0x7
	.byte	0x1e
	.4byte	0x366
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x7
	.byte	0x1f
	.4byte	0x31a
	.byte	0
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0x7
	.byte	0x20
	.4byte	0x33a
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0x7
	.byte	0x21
	.4byte	0x345
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0x8
	.byte	0xa
	.4byte	0x37c
	.uleb128 0x17
	.4byte	.LASF62
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0x9
	.byte	0x1f
	.4byte	0x38c
	.uleb128 0x17
	.4byte	.LASF63
	.uleb128 0x6
	.byte	0x4
	.4byte	0x381
	.uleb128 0x13
	.byte	0x4
	.4byte	0x37
	.byte	0xb
	.byte	0x1b
	.4byte	0x3bc
	.uleb128 0x14
	.4byte	.LASF64
	.byte	0x1
	.uleb128 0x14
	.4byte	.LASF65
	.byte	0x2
	.uleb128 0x14
	.4byte	.LASF66
	.byte	0x3
	.uleb128 0x14
	.4byte	.LASF67
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0xb
	.byte	0x20
	.4byte	0x397
	.uleb128 0x3
	.4byte	.LASF69
	.byte	0xb
	.byte	0x22
	.4byte	0x3d2
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3d8
	.uleb128 0x11
	.4byte	0x3e3
	.uleb128 0x12
	.4byte	0x3e3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x177
	.uleb128 0x8
	.byte	0x4
	.byte	0xb
	.byte	0x24
	.4byte	0x3fe
	.uleb128 0x9
	.4byte	.LASF70
	.byte	0xb
	.byte	0x28
	.4byte	0x3c7
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF71
	.byte	0xb
	.byte	0x2f
	.4byte	0x3e9
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0xc
	.byte	0xb
	.byte	0x31
	.4byte	0x43a
	.uleb128 0x9
	.4byte	.LASF74
	.byte	0xb
	.byte	0x36
	.4byte	0x454
	.byte	0
	.uleb128 0x9
	.4byte	.LASF75
	.byte	0xb
	.byte	0x39
	.4byte	0xab
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF76
	.byte	0xb
	.byte	0x4e
	.4byte	0x479
	.byte	0x8
	.byte	0
	.uleb128 0x16
	.4byte	0x11c
	.4byte	0x449
	.uleb128 0x12
	.4byte	0x449
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x44f
	.uleb128 0x18
	.4byte	0x3fe
	.uleb128 0x6
	.byte	0x4
	.4byte	0x43a
	.uleb128 0x16
	.4byte	0xc4
	.4byte	0x473
	.uleb128 0x12
	.4byte	0x3bc
	.uleb128 0x12
	.4byte	0x473
	.uleb128 0x12
	.4byte	0xc4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb9
	.uleb128 0x6
	.byte	0x4
	.4byte	0x45a
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0xb
	.byte	0x4f
	.4byte	0x409
	.uleb128 0x3
	.4byte	.LASF77
	.byte	0xc
	.byte	0x6f
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0xc
	.byte	0x76
	.4byte	0xda
	.uleb128 0x3
	.4byte	.LASF79
	.byte	0xd
	.byte	0x6b
	.4byte	0xa2
	.uleb128 0x3
	.4byte	.LASF80
	.byte	0xe
	.byte	0x58
	.4byte	0xa2
	.uleb128 0x15
	.4byte	.LASF81
	.byte	0x10
	.byte	0xf
	.byte	0x1c
	.4byte	0x4f2
	.uleb128 0xa
	.string	"sig"
	.byte	0xf
	.byte	0x1d
	.4byte	0xda
	.byte	0
	.uleb128 0xa
	.string	"par"
	.byte	0xf
	.byte	0x1e
	.4byte	0xa2
	.byte	0x4
	.uleb128 0xa
	.string	"cb"
	.byte	0xf
	.byte	0x1f
	.4byte	0xa2
	.byte	0x8
	.uleb128 0xa
	.string	"arg"
	.byte	0xf
	.byte	0x20
	.4byte	0xa2
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF82
	.byte	0xf
	.byte	0x22
	.4byte	0x4b6
	.uleb128 0x13
	.byte	0x4
	.4byte	0x37
	.byte	0xf
	.byte	0x26
	.4byte	0x516
	.uleb128 0x14
	.4byte	.LASF83
	.byte	0
	.uleb128 0x14
	.4byte	.LASF84
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF85
	.byte	0xf
	.byte	0x68
	.4byte	0xda
	.uleb128 0x13
	.byte	0x4
	.4byte	0x37
	.byte	0xf
	.byte	0x6a
	.4byte	0x53a
	.uleb128 0x14
	.4byte	.LASF86
	.byte	0
	.uleb128 0x14
	.4byte	.LASF87
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF88
	.byte	0xf
	.byte	0x6d
	.4byte	0x521
	.uleb128 0x19
	.4byte	.LASF89
	.byte	0x8
	.byte	0x10
	.2byte	0x113
	.4byte	0x56d
	.uleb128 0x10
	.4byte	.LASF90
	.byte	0x10
	.2byte	0x114
	.4byte	0xab
	.byte	0
	.uleb128 0x10
	.4byte	.LASF91
	.byte	0x10
	.2byte	0x115
	.4byte	0x581
	.byte	0x4
	.byte	0
	.uleb128 0x16
	.4byte	0x25
	.4byte	0x581
	.uleb128 0x12
	.4byte	0x473
	.uleb128 0x12
	.4byte	0xc4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x56d
	.uleb128 0xd
	.4byte	.LASF92
	.byte	0x10
	.2byte	0x116
	.4byte	0x545
	.uleb128 0xf
	.byte	0x10
	.byte	0x11
	.2byte	0x53b
	.4byte	0x5ea
	.uleb128 0x1a
	.string	"id"
	.byte	0x11
	.2byte	0x53c
	.4byte	0xe5
	.byte	0
	.uleb128 0x10
	.4byte	.LASF93
	.byte	0x11
	.2byte	0x53d
	.4byte	0xe5
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF94
	.byte	0x11
	.2byte	0x53e
	.4byte	0xf0
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF95
	.byte	0x11
	.2byte	0x53f
	.4byte	0xfb
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF96
	.byte	0x11
	.2byte	0x540
	.4byte	0xfb
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF97
	.byte	0x11
	.2byte	0x541
	.4byte	0xfb
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.4byte	.LASF98
	.byte	0x11
	.2byte	0x542
	.4byte	0x593
	.uleb128 0x11
	.4byte	0x601
	.uleb128 0x12
	.4byte	0xf0
	.byte	0
	.uleb128 0x1b
	.byte	0x4
	.4byte	0x37
	.byte	0x12
	.2byte	0x1c0
	.4byte	0x729
	.uleb128 0x14
	.4byte	.LASF99
	.byte	0
	.uleb128 0x14
	.4byte	.LASF100
	.byte	0x1
	.uleb128 0x14
	.4byte	.LASF101
	.byte	0x2
	.uleb128 0x14
	.4byte	.LASF102
	.byte	0x3
	.uleb128 0x14
	.4byte	.LASF103
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF104
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF105
	.byte	0x6
	.uleb128 0x14
	.4byte	.LASF106
	.byte	0x7
	.uleb128 0x14
	.4byte	.LASF107
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF108
	.byte	0x9
	.uleb128 0x14
	.4byte	.LASF109
	.byte	0xa
	.uleb128 0x14
	.4byte	.LASF110
	.byte	0xb
	.uleb128 0x14
	.4byte	.LASF111
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF112
	.byte	0xd
	.uleb128 0x14
	.4byte	.LASF113
	.byte	0xe
	.uleb128 0x14
	.4byte	.LASF114
	.byte	0xf
	.uleb128 0x14
	.4byte	.LASF115
	.byte	0x10
	.uleb128 0x14
	.4byte	.LASF116
	.byte	0x11
	.uleb128 0x14
	.4byte	.LASF117
	.byte	0x12
	.uleb128 0x14
	.4byte	.LASF118
	.byte	0x13
	.uleb128 0x14
	.4byte	.LASF119
	.byte	0x14
	.uleb128 0x14
	.4byte	.LASF120
	.byte	0x15
	.uleb128 0x14
	.4byte	.LASF121
	.byte	0x16
	.uleb128 0x14
	.4byte	.LASF122
	.byte	0x17
	.uleb128 0x14
	.4byte	.LASF123
	.byte	0x18
	.uleb128 0x14
	.4byte	.LASF124
	.byte	0x19
	.uleb128 0x14
	.4byte	.LASF125
	.byte	0x1a
	.uleb128 0x14
	.4byte	.LASF126
	.byte	0x1b
	.uleb128 0x14
	.4byte	.LASF127
	.byte	0x1c
	.uleb128 0x14
	.4byte	.LASF128
	.byte	0x1d
	.uleb128 0x14
	.4byte	.LASF129
	.byte	0x1e
	.uleb128 0x14
	.4byte	.LASF130
	.byte	0x1f
	.uleb128 0x14
	.4byte	.LASF131
	.byte	0x20
	.uleb128 0x14
	.4byte	.LASF132
	.byte	0x21
	.uleb128 0x14
	.4byte	.LASF133
	.byte	0x22
	.uleb128 0x14
	.4byte	.LASF134
	.byte	0x23
	.uleb128 0x14
	.4byte	.LASF135
	.byte	0x24
	.uleb128 0x14
	.4byte	.LASF136
	.byte	0x25
	.uleb128 0x14
	.4byte	.LASF137
	.byte	0x26
	.uleb128 0x14
	.4byte	.LASF138
	.byte	0x27
	.uleb128 0x14
	.4byte	.LASF139
	.byte	0x28
	.uleb128 0x14
	.4byte	.LASF140
	.byte	0x29
	.uleb128 0x14
	.4byte	.LASF141
	.byte	0x2a
	.uleb128 0x14
	.4byte	.LASF142
	.byte	0x2b
	.uleb128 0x14
	.4byte	.LASF143
	.byte	0x2c
	.uleb128 0x14
	.4byte	.LASF144
	.byte	0x2d
	.uleb128 0x14
	.4byte	.LASF145
	.byte	0x2e
	.byte	0
	.uleb128 0x1b
	.byte	0x4
	.4byte	0x37
	.byte	0x12
	.2byte	0x6ea
	.4byte	0x761
	.uleb128 0x14
	.4byte	.LASF146
	.byte	0
	.uleb128 0x14
	.4byte	.LASF147
	.byte	0x1
	.uleb128 0x14
	.4byte	.LASF148
	.byte	0x2
	.uleb128 0x14
	.4byte	.LASF149
	.byte	0x3
	.uleb128 0x14
	.4byte	.LASF150
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF151
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF152
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF153
	.byte	0x13
	.byte	0x40
	.4byte	0xe5
	.uleb128 0x3
	.4byte	.LASF154
	.byte	0x13
	.byte	0x48
	.4byte	0xe5
	.uleb128 0x8
	.byte	0xa
	.byte	0x13
	.byte	0x86
	.4byte	0x7c8
	.uleb128 0x9
	.4byte	.LASF155
	.byte	0x13
	.byte	0x8b
	.4byte	0xe5
	.byte	0
	.uleb128 0x9
	.4byte	.LASF156
	.byte	0x13
	.byte	0x8d
	.4byte	0xe5
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF157
	.byte	0x13
	.byte	0x8e
	.4byte	0xe5
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF158
	.byte	0x13
	.byte	0x8f
	.4byte	0xf0
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF159
	.byte	0x13
	.byte	0x90
	.4byte	0xf0
	.byte	0x6
	.uleb128 0xa
	.string	"mps"
	.byte	0x13
	.byte	0x91
	.4byte	0xf0
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF160
	.byte	0x13
	.byte	0x92
	.4byte	0x777
	.uleb128 0x8
	.byte	0x48
	.byte	0x13
	.byte	0x98
	.4byte	0x884
	.uleb128 0x9
	.4byte	.LASF161
	.byte	0x13
	.byte	0x99
	.4byte	0xf0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF162
	.byte	0x13
	.byte	0x9a
	.4byte	0x111
	.byte	0x2
	.uleb128 0xa
	.string	"mtu"
	.byte	0x13
	.byte	0x9b
	.4byte	0xf0
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF163
	.byte	0x13
	.byte	0x9c
	.4byte	0x111
	.byte	0x6
	.uleb128 0xa
	.string	"qos"
	.byte	0x13
	.byte	0x9d
	.4byte	0x219
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF164
	.byte	0x13
	.byte	0x9e
	.4byte	0x111
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF165
	.byte	0x13
	.byte	0x9f
	.4byte	0xf0
	.byte	0x22
	.uleb128 0x9
	.4byte	.LASF166
	.byte	0x13
	.byte	0xa0
	.4byte	0x111
	.byte	0x24
	.uleb128 0xa
	.string	"fcr"
	.byte	0x13
	.byte	0xa1
	.4byte	0x7c8
	.byte	0x26
	.uleb128 0x9
	.4byte	.LASF167
	.byte	0x13
	.byte	0xa2
	.4byte	0x111
	.byte	0x30
	.uleb128 0xa
	.string	"fcs"
	.byte	0x13
	.byte	0xa3
	.4byte	0xe5
	.byte	0x31
	.uleb128 0x9
	.4byte	.LASF168
	.byte	0x13
	.byte	0xa4
	.4byte	0x111
	.byte	0x32
	.uleb128 0x9
	.4byte	.LASF169
	.byte	0x13
	.byte	0xa5
	.4byte	0x5ea
	.byte	0x34
	.uleb128 0x9
	.4byte	.LASF170
	.byte	0x13
	.byte	0xa6
	.4byte	0xf0
	.byte	0x44
	.byte	0
	.uleb128 0x3
	.4byte	.LASF171
	.byte	0x13
	.byte	0xa7
	.4byte	0x7d3
	.uleb128 0x8
	.byte	0x6
	.byte	0x13
	.byte	0xac
	.4byte	0x8bc
	.uleb128 0xa
	.string	"mtu"
	.byte	0x13
	.byte	0xae
	.4byte	0xf0
	.byte	0
	.uleb128 0xa
	.string	"mps"
	.byte	0x13
	.byte	0xaf
	.4byte	0xf0
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF172
	.byte	0x13
	.byte	0xb0
	.4byte	0xf0
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF173
	.byte	0x13
	.byte	0xb1
	.4byte	0x88f
	.uleb128 0x3
	.4byte	.LASF174
	.byte	0x13
	.byte	0xbc
	.4byte	0xf0
	.uleb128 0x3
	.4byte	.LASF175
	.byte	0x13
	.byte	0xc8
	.4byte	0x8dd
	.uleb128 0x11
	.4byte	0x8f7
	.uleb128 0x12
	.4byte	0x19e
	.uleb128 0x12
	.4byte	0xf0
	.uleb128 0x12
	.4byte	0xf0
	.uleb128 0x12
	.4byte	0xe5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF176
	.byte	0x13
	.byte	0xcf
	.4byte	0x902
	.uleb128 0x11
	.4byte	0x912
	.uleb128 0x12
	.4byte	0xf0
	.uleb128 0x12
	.4byte	0xf0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF177
	.byte	0x13
	.byte	0xd5
	.4byte	0x5f6
	.uleb128 0x3
	.4byte	.LASF178
	.byte	0x13
	.byte	0xdc
	.4byte	0x928
	.uleb128 0x11
	.4byte	0x938
	.uleb128 0x12
	.4byte	0xf0
	.uleb128 0x12
	.4byte	0x938
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x884
	.uleb128 0x3
	.4byte	.LASF179
	.byte	0x13
	.byte	0xe3
	.4byte	0x928
	.uleb128 0x3
	.4byte	.LASF180
	.byte	0x13
	.byte	0xea
	.4byte	0x954
	.uleb128 0x11
	.4byte	0x964
	.uleb128 0x12
	.4byte	0xf0
	.uleb128 0x12
	.4byte	0x111
	.byte	0
	.uleb128 0x3
	.4byte	.LASF181
	.byte	0x13
	.byte	0xf1
	.4byte	0x902
	.uleb128 0x3
	.4byte	.LASF182
	.byte	0x13
	.byte	0xf7
	.4byte	0x97a
	.uleb128 0x11
	.4byte	0x985
	.uleb128 0x12
	.4byte	0x19e
	.byte	0
	.uleb128 0x3
	.4byte	.LASF183
	.byte	0x13
	.byte	0xfe
	.4byte	0x990
	.uleb128 0x11
	.4byte	0x9a0
	.uleb128 0x12
	.4byte	0xf0
	.uleb128 0x12
	.4byte	0x3e3
	.byte	0
	.uleb128 0xd
	.4byte	.LASF184
	.byte	0x13
	.2byte	0x106
	.4byte	0x5f6
	.uleb128 0xd
	.4byte	.LASF185
	.byte	0x13
	.2byte	0x114
	.4byte	0x954
	.uleb128 0xd
	.4byte	.LASF186
	.byte	0x13
	.2byte	0x11d
	.4byte	0x97a
	.uleb128 0xd
	.4byte	.LASF187
	.byte	0x13
	.2byte	0x126
	.4byte	0x902
	.uleb128 0xf
	.byte	0x2c
	.byte	0x13
	.2byte	0x12d
	.4byte	0xa69
	.uleb128 0x10
	.4byte	.LASF188
	.byte	0x13
	.2byte	0x12e
	.4byte	0xa69
	.byte	0
	.uleb128 0x10
	.4byte	.LASF189
	.byte	0x13
	.2byte	0x12f
	.4byte	0xa6f
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF190
	.byte	0x13
	.2byte	0x130
	.4byte	0xa75
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF191
	.byte	0x13
	.2byte	0x131
	.4byte	0xa7b
	.byte	0xc
	.uleb128 0x10
	.4byte	.LASF192
	.byte	0x13
	.2byte	0x132
	.4byte	0xa81
	.byte	0x10
	.uleb128 0x10
	.4byte	.LASF193
	.byte	0x13
	.2byte	0x133
	.4byte	0xa87
	.byte	0x14
	.uleb128 0x10
	.4byte	.LASF194
	.byte	0x13
	.2byte	0x134
	.4byte	0xa8d
	.byte	0x18
	.uleb128 0x10
	.4byte	.LASF195
	.byte	0x13
	.2byte	0x135
	.4byte	0xa93
	.byte	0x1c
	.uleb128 0x10
	.4byte	.LASF196
	.byte	0x13
	.2byte	0x136
	.4byte	0xa99
	.byte	0x20
	.uleb128 0x10
	.4byte	.LASF197
	.byte	0x13
	.2byte	0x137
	.4byte	0xa9f
	.byte	0x24
	.uleb128 0x10
	.4byte	.LASF198
	.byte	0x13
	.2byte	0x138
	.4byte	0xaa5
	.byte	0x28
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8d2
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8f7
	.uleb128 0x6
	.byte	0x4
	.4byte	0x912
	.uleb128 0x6
	.byte	0x4
	.4byte	0x91d
	.uleb128 0x6
	.byte	0x4
	.4byte	0x93e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x949
	.uleb128 0x6
	.byte	0x4
	.4byte	0x964
	.uleb128 0x6
	.byte	0x4
	.4byte	0x96f
	.uleb128 0x6
	.byte	0x4
	.4byte	0x985
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9ac
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9c4
	.uleb128 0xd
	.4byte	.LASF199
	.byte	0x13
	.2byte	0x13a
	.4byte	0x9d0
	.uleb128 0xf
	.byte	0xa
	.byte	0x13
	.2byte	0x13f
	.4byte	0xb0f
	.uleb128 0x10
	.4byte	.LASF200
	.byte	0x13
	.2byte	0x140
	.4byte	0xe5
	.byte	0
	.uleb128 0x10
	.4byte	.LASF201
	.byte	0x13
	.2byte	0x141
	.4byte	0xe5
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF202
	.byte	0x13
	.2byte	0x142
	.4byte	0xf0
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF203
	.byte	0x13
	.2byte	0x143
	.4byte	0xf0
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF204
	.byte	0x13
	.2byte	0x144
	.4byte	0xf0
	.byte	0x6
	.uleb128 0x10
	.4byte	.LASF205
	.byte	0x13
	.2byte	0x145
	.4byte	0xf0
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.4byte	.LASF206
	.byte	0x13
	.2byte	0x147
	.4byte	0xab7
	.uleb128 0x13
	.byte	0x4
	.4byte	0x37
	.byte	0x14
	.byte	0x51
	.4byte	0xb5e
	.uleb128 0x14
	.4byte	.LASF207
	.byte	0
	.uleb128 0x14
	.4byte	.LASF208
	.byte	0x1
	.uleb128 0x14
	.4byte	.LASF209
	.byte	0x2
	.uleb128 0x14
	.4byte	.LASF210
	.byte	0x3
	.uleb128 0x14
	.4byte	.LASF211
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF212
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF213
	.byte	0x6
	.uleb128 0x14
	.4byte	.LASF214
	.byte	0x7
	.uleb128 0x14
	.4byte	.LASF215
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF216
	.byte	0x14
	.byte	0x5b
	.4byte	0xb1b
	.uleb128 0x13
	.byte	0x4
	.4byte	0x37
	.byte	0x14
	.byte	0x5f
	.4byte	0xb9a
	.uleb128 0x14
	.4byte	.LASF217
	.byte	0
	.uleb128 0x14
	.4byte	.LASF218
	.byte	0x1
	.uleb128 0x14
	.4byte	.LASF219
	.byte	0x2
	.uleb128 0x14
	.4byte	.LASF220
	.byte	0x3
	.uleb128 0x14
	.4byte	.LASF221
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF222
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF223
	.byte	0x14
	.byte	0x66
	.4byte	0xb69
	.uleb128 0x8
	.byte	0x60
	.byte	0x14
	.byte	0xaa
	.4byte	0xc9e
	.uleb128 0x9
	.4byte	.LASF224
	.byte	0x14
	.byte	0xab
	.4byte	0xe5
	.byte	0
	.uleb128 0x9
	.4byte	.LASF225
	.byte	0x14
	.byte	0xac
	.4byte	0xe5
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF226
	.byte	0x14
	.byte	0xad
	.4byte	0xe5
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF227
	.byte	0x14
	.byte	0xae
	.4byte	0xe5
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF228
	.byte	0x14
	.byte	0xaf
	.4byte	0xe5
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF229
	.byte	0x14
	.byte	0xb0
	.4byte	0xe5
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF230
	.byte	0x14
	.byte	0xb2
	.4byte	0x111
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF231
	.byte	0x14
	.byte	0xb3
	.4byte	0x111
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF232
	.byte	0x14
	.byte	0xb5
	.4byte	0x111
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF233
	.byte	0x14
	.byte	0xb6
	.4byte	0x111
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF234
	.byte	0x14
	.byte	0xb7
	.4byte	0x111
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF235
	.byte	0x14
	.byte	0xb8
	.4byte	0x111
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF236
	.byte	0x14
	.byte	0xba
	.4byte	0x111
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF237
	.byte	0x14
	.byte	0xbc
	.4byte	0xf0
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF238
	.byte	0x14
	.byte	0xbd
	.4byte	0x3e3
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF239
	.byte	0x14
	.byte	0xbe
	.4byte	0x391
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF240
	.byte	0x14
	.byte	0xbf
	.4byte	0x391
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF241
	.byte	0x14
	.byte	0xc0
	.4byte	0x391
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF242
	.byte	0x14
	.byte	0xc2
	.4byte	0x30f
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF243
	.byte	0x14
	.byte	0xc3
	.4byte	0x30f
	.byte	0x40
	.byte	0
	.uleb128 0x3
	.4byte	.LASF244
	.byte	0x14
	.byte	0xdf
	.4byte	0xba5
	.uleb128 0x8
	.byte	0x34
	.byte	0x14
	.byte	0xf2
	.4byte	0xce2
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x14
	.byte	0xf3
	.4byte	0x111
	.byte	0
	.uleb128 0xa
	.string	"psm"
	.byte	0x14
	.byte	0xf4
	.4byte	0xf0
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF245
	.byte	0x14
	.byte	0xf5
	.4byte	0xf0
	.byte	0x4
	.uleb128 0xa
	.string	"api"
	.byte	0x14
	.byte	0xfb
	.4byte	0xaab
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF246
	.byte	0x14
	.byte	0xfc
	.4byte	0xca9
	.uleb128 0x1c
	.4byte	.LASF247
	.2byte	0x16c
	.byte	0x14
	.2byte	0x112
	.4byte	0xed9
	.uleb128 0x10
	.4byte	.LASF55
	.byte	0x14
	.2byte	0x113
	.4byte	0x111
	.byte	0
	.uleb128 0x10
	.4byte	.LASF248
	.byte	0x14
	.2byte	0x114
	.4byte	0xb5e
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF249
	.byte	0x14
	.2byte	0x115
	.4byte	0x8bc
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF250
	.byte	0x14
	.2byte	0x116
	.4byte	0x8bc
	.byte	0xe
	.uleb128 0x10
	.4byte	.LASF251
	.byte	0x14
	.2byte	0x118
	.4byte	0xed9
	.byte	0x14
	.uleb128 0x10
	.4byte	.LASF252
	.byte	0x14
	.2byte	0x119
	.4byte	0xed9
	.byte	0x18
	.uleb128 0x10
	.4byte	.LASF253
	.byte	0x14
	.2byte	0x11a
	.4byte	0x118b
	.byte	0x1c
	.uleb128 0x10
	.4byte	.LASF254
	.byte	0x14
	.2byte	0x11c
	.4byte	0xf0
	.byte	0x20
	.uleb128 0x10
	.4byte	.LASF255
	.byte	0x14
	.2byte	0x11d
	.4byte	0xf0
	.byte	0x22
	.uleb128 0x10
	.4byte	.LASF256
	.byte	0x14
	.2byte	0x11f
	.4byte	0x30f
	.byte	0x24
	.uleb128 0x10
	.4byte	.LASF257
	.byte	0x14
	.2byte	0x121
	.4byte	0x1191
	.byte	0x44
	.uleb128 0x10
	.4byte	.LASF258
	.byte	0x14
	.2byte	0x122
	.4byte	0x11c
	.byte	0x48
	.uleb128 0x10
	.4byte	.LASF259
	.byte	0x14
	.2byte	0x129
	.4byte	0xe5
	.byte	0x49
	.uleb128 0x10
	.4byte	.LASF260
	.byte	0x14
	.2byte	0x12a
	.4byte	0xe5
	.byte	0x4a
	.uleb128 0x10
	.4byte	.LASF261
	.byte	0x14
	.2byte	0x12b
	.4byte	0xe5
	.byte	0x4b
	.uleb128 0x10
	.4byte	.LASF170
	.byte	0x14
	.2byte	0x12f
	.4byte	0xe5
	.byte	0x4c
	.uleb128 0x10
	.4byte	.LASF262
	.byte	0x14
	.2byte	0x131
	.4byte	0x884
	.byte	0x50
	.uleb128 0x10
	.4byte	.LASF263
	.byte	0x14
	.2byte	0x132
	.4byte	0x8c7
	.byte	0x98
	.uleb128 0x10
	.4byte	.LASF264
	.byte	0x14
	.2byte	0x133
	.4byte	0x884
	.byte	0x9c
	.uleb128 0x10
	.4byte	.LASF265
	.byte	0x14
	.2byte	0x135
	.4byte	0x391
	.byte	0xe4
	.uleb128 0x10
	.4byte	.LASF266
	.byte	0x14
	.2byte	0x136
	.4byte	0x111
	.byte	0xe8
	.uleb128 0x10
	.4byte	.LASF267
	.byte	0x14
	.2byte	0x137
	.4byte	0xf0
	.byte	0xea
	.uleb128 0x10
	.4byte	.LASF268
	.byte	0x14
	.2byte	0x139
	.4byte	0x761
	.byte	0xec
	.uleb128 0x10
	.4byte	.LASF269
	.byte	0x14
	.2byte	0x13a
	.4byte	0x76c
	.byte	0xed
	.uleb128 0x10
	.4byte	.LASF270
	.byte	0x14
	.2byte	0x13b
	.4byte	0x76c
	.byte	0xee
	.uleb128 0x10
	.4byte	.LASF271
	.byte	0x14
	.2byte	0x13e
	.4byte	0xb0f
	.byte	0xf0
	.uleb128 0x10
	.4byte	.LASF272
	.byte	0x14
	.2byte	0x13f
	.4byte	0xc9e
	.byte	0xfc
	.uleb128 0x1d
	.4byte	.LASF273
	.byte	0x14
	.2byte	0x140
	.4byte	0xf0
	.2byte	0x15c
	.uleb128 0x1d
	.4byte	.LASF274
	.byte	0x14
	.2byte	0x141
	.4byte	0xf0
	.2byte	0x15e
	.uleb128 0x1d
	.4byte	.LASF275
	.byte	0x14
	.2byte	0x142
	.4byte	0xe5
	.2byte	0x160
	.uleb128 0x1d
	.4byte	.LASF276
	.byte	0x14
	.2byte	0x143
	.4byte	0x111
	.2byte	0x161
	.uleb128 0x1d
	.4byte	.LASF277
	.byte	0x14
	.2byte	0x144
	.4byte	0x111
	.2byte	0x162
	.uleb128 0x1d
	.4byte	.LASF278
	.byte	0x14
	.2byte	0x149
	.4byte	0xe5
	.2byte	0x163
	.uleb128 0x1d
	.4byte	.LASF279
	.byte	0x14
	.2byte	0x14c
	.4byte	0x111
	.2byte	0x164
	.uleb128 0x1d
	.4byte	.LASF280
	.byte	0x14
	.2byte	0x150
	.4byte	0xf0
	.2byte	0x166
	.uleb128 0x1d
	.4byte	.LASF281
	.byte	0x14
	.2byte	0x152
	.4byte	0xf0
	.2byte	0x168
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xced
	.uleb128 0x1c
	.4byte	.LASF282
	.2byte	0x180
	.byte	0x14
	.2byte	0x175
	.4byte	0x118b
	.uleb128 0x10
	.4byte	.LASF55
	.byte	0x14
	.2byte	0x176
	.4byte	0x111
	.byte	0
	.uleb128 0x10
	.4byte	.LASF283
	.byte	0x14
	.2byte	0x177
	.4byte	0xb9a
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF256
	.byte	0x14
	.2byte	0x179
	.4byte	0x30f
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF284
	.byte	0x14
	.2byte	0x17a
	.4byte	0xf0
	.byte	0x28
	.uleb128 0x10
	.4byte	.LASF285
	.byte	0x14
	.2byte	0x17b
	.4byte	0xf0
	.byte	0x2a
	.uleb128 0x10
	.4byte	.LASF286
	.byte	0x14
	.2byte	0x17d
	.4byte	0x11cd
	.byte	0x2c
	.uleb128 0x10
	.4byte	.LASF287
	.byte	0x14
	.2byte	0x17f
	.4byte	0x11c7
	.byte	0x34
	.uleb128 0x10
	.4byte	.LASF288
	.byte	0x14
	.2byte	0x180
	.4byte	0x30f
	.byte	0x38
	.uleb128 0x10
	.4byte	.LASF289
	.byte	0x14
	.2byte	0x181
	.4byte	0x30f
	.byte	0x58
	.uleb128 0x10
	.4byte	.LASF290
	.byte	0x14
	.2byte	0x182
	.4byte	0x182
	.byte	0x78
	.uleb128 0x10
	.4byte	.LASF291
	.byte	0x14
	.2byte	0x184
	.4byte	0xe5
	.byte	0x7e
	.uleb128 0x1a
	.string	"id"
	.byte	0x14
	.2byte	0x185
	.4byte	0xe5
	.byte	0x7f
	.uleb128 0x10
	.4byte	.LASF292
	.byte	0x14
	.2byte	0x186
	.4byte	0xe5
	.byte	0x80
	.uleb128 0x10
	.4byte	.LASF293
	.byte	0x14
	.2byte	0x187
	.4byte	0x1223
	.byte	0x84
	.uleb128 0x10
	.4byte	.LASF294
	.byte	0x14
	.2byte	0x188
	.4byte	0xf0
	.byte	0x88
	.uleb128 0x10
	.4byte	.LASF295
	.byte	0x14
	.2byte	0x189
	.4byte	0x111
	.byte	0x8a
	.uleb128 0x10
	.4byte	.LASF296
	.byte	0x14
	.2byte	0x18b
	.4byte	0xf0
	.byte	0x8c
	.uleb128 0x10
	.4byte	.LASF297
	.byte	0x14
	.2byte	0x18d
	.4byte	0xf0
	.byte	0x8e
	.uleb128 0x10
	.4byte	.LASF298
	.byte	0x14
	.2byte	0x18e
	.4byte	0xf0
	.byte	0x90
	.uleb128 0x10
	.4byte	.LASF299
	.byte	0x14
	.2byte	0x190
	.4byte	0x111
	.byte	0x92
	.uleb128 0x10
	.4byte	.LASF300
	.byte	0x14
	.2byte	0x192
	.4byte	0x111
	.byte	0x93
	.uleb128 0x10
	.4byte	.LASF301
	.byte	0x14
	.2byte	0x193
	.4byte	0xe5
	.byte	0x94
	.uleb128 0x10
	.4byte	.LASF302
	.byte	0x14
	.2byte	0x194
	.4byte	0xfb
	.byte	0x98
	.uleb128 0x10
	.4byte	.LASF303
	.byte	0x14
	.2byte	0x195
	.4byte	0x1229
	.byte	0x9c
	.uleb128 0x10
	.4byte	.LASF304
	.byte	0x14
	.2byte	0x197
	.4byte	0x1a4
	.byte	0xa0
	.uleb128 0x10
	.4byte	.LASF305
	.byte	0x14
	.2byte	0x19e
	.4byte	0x3e3
	.byte	0xa8
	.uleb128 0x10
	.4byte	.LASF306
	.byte	0x14
	.2byte	0x19f
	.4byte	0xf0
	.byte	0xac
	.uleb128 0x10
	.4byte	.LASF307
	.byte	0x14
	.2byte	0x1a0
	.4byte	0xe5
	.byte	0xae
	.uleb128 0x10
	.4byte	.LASF308
	.byte	0x14
	.2byte	0x1a1
	.4byte	0x122f
	.byte	0xb0
	.uleb128 0x10
	.4byte	.LASF309
	.byte	0x14
	.2byte	0x1a4
	.4byte	0x1235
	.byte	0xb4
	.uleb128 0x1d
	.4byte	.LASF310
	.byte	0x14
	.2byte	0x1a5
	.4byte	0xf0
	.2byte	0x134
	.uleb128 0x1d
	.4byte	.LASF311
	.byte	0x14
	.2byte	0x1a8
	.4byte	0x231
	.2byte	0x136
	.uleb128 0x1d
	.4byte	.LASF312
	.byte	0x14
	.2byte	0x1aa
	.4byte	0x225
	.2byte	0x137
	.uleb128 0x1d
	.4byte	.LASF313
	.byte	0x14
	.2byte	0x1ab
	.4byte	0x225
	.2byte	0x138
	.uleb128 0x1d
	.4byte	.LASF281
	.byte	0x14
	.2byte	0x1ac
	.4byte	0xf0
	.2byte	0x13a
	.uleb128 0x1d
	.4byte	.LASF314
	.byte	0x14
	.2byte	0x1ad
	.4byte	0x391
	.2byte	0x13c
	.uleb128 0x1d
	.4byte	.LASF315
	.byte	0x14
	.2byte	0x1ae
	.4byte	0xe5
	.2byte	0x140
	.uleb128 0x1d
	.4byte	.LASF316
	.byte	0x14
	.2byte	0x1b4
	.4byte	0xe5
	.2byte	0x141
	.uleb128 0x1d
	.4byte	.LASF317
	.byte	0x14
	.2byte	0x1b6
	.4byte	0xf0
	.2byte	0x142
	.uleb128 0x1d
	.4byte	.LASF318
	.byte	0x14
	.2byte	0x1b7
	.4byte	0xf0
	.2byte	0x144
	.uleb128 0x1d
	.4byte	.LASF319
	.byte	0x14
	.2byte	0x1b8
	.4byte	0xf0
	.2byte	0x146
	.uleb128 0x1d
	.4byte	.LASF320
	.byte	0x14
	.2byte	0x1b9
	.4byte	0xf0
	.2byte	0x148
	.uleb128 0x1d
	.4byte	.LASF321
	.byte	0x14
	.2byte	0x1bb
	.4byte	0xf0
	.2byte	0x14a
	.uleb128 0x1d
	.4byte	.LASF322
	.byte	0x14
	.2byte	0x1bc
	.4byte	0xf0
	.2byte	0x14c
	.uleb128 0x1d
	.4byte	.LASF323
	.byte	0x14
	.2byte	0x1bd
	.4byte	0x11c
	.2byte	0x14e
	.uleb128 0x1d
	.4byte	.LASF324
	.byte	0x14
	.2byte	0x1bf
	.4byte	0xf0
	.2byte	0x150
	.uleb128 0x1d
	.4byte	.LASF325
	.byte	0x14
	.2byte	0x1c0
	.4byte	0xf0
	.2byte	0x152
	.uleb128 0x1d
	.4byte	.LASF326
	.byte	0x14
	.2byte	0x1c1
	.4byte	0xf0
	.2byte	0x154
	.uleb128 0x1d
	.4byte	.LASF327
	.byte	0x14
	.2byte	0x1ca
	.4byte	0x1245
	.2byte	0x158
	.uleb128 0x1d
	.4byte	.LASF328
	.byte	0x14
	.2byte	0x1cb
	.4byte	0xe5
	.2byte	0x17c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xedf
	.uleb128 0x6
	.byte	0x4
	.4byte	0xce2
	.uleb128 0xd
	.4byte	.LASF329
	.byte	0x14
	.2byte	0x153
	.4byte	0xced
	.uleb128 0xf
	.byte	0x8
	.byte	0x14
	.2byte	0x158
	.4byte	0x11c7
	.uleb128 0x10
	.4byte	.LASF330
	.byte	0x14
	.2byte	0x159
	.4byte	0x11c7
	.byte	0
	.uleb128 0x10
	.4byte	.LASF331
	.byte	0x14
	.2byte	0x15a
	.4byte	0x11c7
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1197
	.uleb128 0xd
	.4byte	.LASF332
	.byte	0x14
	.2byte	0x15b
	.4byte	0x11a3
	.uleb128 0xf
	.byte	0xc
	.byte	0x14
	.2byte	0x169
	.4byte	0x1217
	.uleb128 0x10
	.4byte	.LASF333
	.byte	0x14
	.2byte	0x16a
	.4byte	0x11c7
	.byte	0
	.uleb128 0x10
	.4byte	.LASF330
	.byte	0x14
	.2byte	0x16b
	.4byte	0x11c7
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF334
	.byte	0x14
	.2byte	0x16c
	.4byte	0xe5
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF335
	.byte	0x14
	.2byte	0x16d
	.4byte	0xe5
	.byte	0x9
	.byte	0
	.uleb128 0xd
	.4byte	.LASF336
	.byte	0x14
	.2byte	0x16e
	.4byte	0x11d9
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9a0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x371
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9b8
	.uleb128 0xb
	.4byte	0x11c7
	.4byte	0x1245
	.uleb128 0xe
	.4byte	0x9b
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.4byte	0x1217
	.4byte	0x1255
	.uleb128 0xe
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.4byte	.LASF337
	.byte	0x14
	.2byte	0x1ce
	.4byte	0xedf
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1255
	.uleb128 0x8
	.byte	0xc
	.byte	0x1
	.byte	0x38
	.4byte	0x1294
	.uleb128 0x9
	.4byte	.LASF338
	.byte	0x1
	.byte	0x39
	.4byte	0x1294
	.byte	0
	.uleb128 0x9
	.4byte	.LASF339
	.byte	0x1
	.byte	0x3a
	.4byte	0x2c
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF340
	.byte	0x1
	.byte	0x3b
	.4byte	0x391
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x129a
	.uleb128 0x18
	.4byte	0x366
	.uleb128 0x3
	.4byte	.LASF341
	.byte	0x1
	.byte	0x3c
	.4byte	0x1267
	.uleb128 0x1e
	.4byte	.LASF76
	.byte	0x1
	.byte	0x88
	.4byte	0xc4
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13ce
	.uleb128 0x1f
	.4byte	.LASF342
	.byte	0x1
	.byte	0x88
	.4byte	0x3bc
	.4byte	.LLST0
	.uleb128 0x1f
	.4byte	.LASF29
	.byte	0x1
	.byte	0x89
	.4byte	0x473
	.4byte	.LLST1
	.uleb128 0x1f
	.4byte	.LASF343
	.byte	0x1
	.byte	0x89
	.4byte	0xc4
	.4byte	.LLST2
	.uleb128 0x20
	.4byte	.LASF347
	.byte	0x1
	.byte	0x8b
	.4byte	0xb9
	.4byte	.LLST3
	.uleb128 0x21
	.4byte	.LASF350
	.4byte	0x13de
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8615
	.uleb128 0x22
	.4byte	.LVL1
	.4byte	0x1d29
	.4byte	0x133d
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x8d
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8615
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL2
	.4byte	0x1d29
	.4byte	0x136c
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x8e
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8615
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x24
	.4byte	.LVL3
	.4byte	0x1d34
	.uleb128 0x22
	.4byte	.LVL4
	.4byte	0x1d3f
	.4byte	0x13b3
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8615
	.uleb128 0x23
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL12
	.4byte	0x1d4a
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x74
	.sleb128 1
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xb2
	.4byte	0x13de
	.uleb128 0xe
	.4byte	0x9b
	.byte	0xd
	.byte	0
	.uleb128 0x18
	.4byte	0x13ce
	.uleb128 0x26
	.4byte	.LASF344
	.byte	0x1
	.byte	0x62
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1402
	.uleb128 0x24
	.4byte	.LVL14
	.4byte	0x1d56
	.byte	0
	.uleb128 0x27
	.4byte	.LASF405
	.byte	0x1
	.byte	0x79
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1433
	.uleb128 0x24
	.4byte	.LVL15
	.4byte	0x13e3
	.uleb128 0x24
	.4byte	.LVL16
	.4byte	0x1d61
	.uleb128 0x24
	.4byte	.LVL17
	.4byte	0x1d6d
	.byte	0
	.uleb128 0x28
	.4byte	.LASF345
	.byte	0x1
	.2byte	0x134
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x145a
	.uleb128 0x25
	.4byte	.LVL18
	.4byte	0x1d79
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LASF346
	.byte	0x1
	.byte	0xa7
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14b1
	.uleb128 0x2a
	.string	"arg"
	.byte	0x1
	.byte	0xa7
	.4byte	0xa2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2b
	.string	"e"
	.byte	0x1
	.byte	0xa9
	.4byte	0x4f2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.4byte	.LVL20
	.4byte	0x1d84
	.4byte	0x14a7
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x24
	.4byte	.LVL21
	.4byte	0x1d90
	.byte	0
	.uleb128 0x26
	.4byte	.LASF348
	.byte	0x1
	.byte	0x4e
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15be
	.uleb128 0x2c
	.4byte	.LASF339
	.byte	0x1
	.byte	0x4f
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2c
	.4byte	.LASF349
	.byte	0x1
	.byte	0x50
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.4byte	.LASF350
	.4byte	0x15ce
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8599
	.uleb128 0x22
	.4byte	.LVL23
	.4byte	0x1d29
	.4byte	0x151e
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x52
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8599
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0
	.uleb128 0x22
	.4byte	.LVL24
	.4byte	0x1d29
	.4byte	0x154d
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x53
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8599
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.byte	0
	.uleb128 0x24
	.4byte	.LVL25
	.4byte	0x1d9b
	.uleb128 0x22
	.4byte	.LVL26
	.4byte	0x1da6
	.4byte	0x156a
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL27
	.4byte	0x1db1
	.4byte	0x1581
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	event_uart_has_bytes
	.byte	0
	.uleb128 0x24
	.4byte	.LVL28
	.4byte	0x1d34
	.uleb128 0x25
	.4byte	.LVL29
	.4byte	0x1d3f
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8599
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xb2
	.4byte	0x15ce
	.uleb128 0xe
	.4byte	0x9b
	.byte	0x10
	.byte	0
	.uleb128 0x18
	.4byte	0x15be
	.uleb128 0x1e
	.4byte	.LASF351
	.byte	0x1
	.byte	0x68
	.4byte	0x11c
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16c5
	.uleb128 0x1f
	.4byte	.LASF352
	.byte	0x1
	.byte	0x68
	.4byte	0x449
	.4byte	.LLST4
	.uleb128 0x21
	.4byte	.LASF350
	.4byte	0x16d5
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8606
	.uleb128 0x22
	.4byte	.LVL31
	.4byte	0x1d29
	.4byte	0x1639
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x6a
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8606
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC27
	.byte	0
	.uleb128 0x22
	.4byte	.LVL32
	.4byte	0x14b1
	.4byte	0x1654
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x402
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xfe
	.byte	0
	.uleb128 0x22
	.4byte	.LVL33
	.4byte	0x1dbc
	.4byte	0x1671
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x22
	.4byte	.LVL35
	.4byte	0x1dc8
	.4byte	0x16b1
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	hci_hal_h4_rx_handler
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC35
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0xa00
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x45
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	xHciH4TaskHandle
	.uleb128 0x23
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x25
	.4byte	.LVL36
	.4byte	0x1dd4
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	vhci_host_cb
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xb2
	.4byte	0x16d5
	.uleb128 0xe
	.4byte	0x9b
	.byte	0x8
	.byte	0
	.uleb128 0x18
	.4byte	0x16c5
	.uleb128 0x26
	.4byte	.LASF353
	.byte	0x1
	.byte	0xc4
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17a8
	.uleb128 0x1f
	.4byte	.LASF354
	.byte	0x1
	.byte	0xc4
	.4byte	0x3e3
	.4byte	.LLST5
	.uleb128 0x20
	.4byte	.LASF342
	.byte	0x1
	.byte	0xc5
	.4byte	0xb9
	.4byte	.LLST6
	.uleb128 0x20
	.4byte	.LASF355
	.byte	0x1
	.byte	0xc5
	.4byte	0xb9
	.4byte	.LLST7
	.uleb128 0x20
	.4byte	.LASF284
	.byte	0x1
	.byte	0xc6
	.4byte	0xc4
	.4byte	.LLST8
	.uleb128 0x2d
	.4byte	.LASF356
	.byte	0x1
	.byte	0xc7
	.4byte	0x17a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.4byte	.LASF357
	.byte	0x1
	.byte	0xc8
	.4byte	0x17a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.4byte	.LASF358
	.byte	0x1
	.byte	0xc9
	.4byte	0x473
	.4byte	.LLST9
	.uleb128 0x20
	.4byte	.LASF253
	.byte	0x1
	.byte	0xca
	.4byte	0x1261
	.4byte	.LLST10
	.uleb128 0x24
	.4byte	.LVL42
	.4byte	0x1de0
	.uleb128 0x24
	.4byte	.LVL43
	.4byte	0x1dec
	.uleb128 0x22
	.4byte	.LVL44
	.4byte	0x1df8
	.4byte	0x1791
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x25
	.4byte	.LVL45
	.4byte	0x1e04
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xc4
	.4byte	0x17b8
	.uleb128 0xe
	.4byte	0x9b
	.byte	0x7
	.byte	0
	.uleb128 0x26
	.4byte	.LASF359
	.byte	0x1
	.byte	0xea
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19d6
	.uleb128 0x2c
	.4byte	.LASF354
	.byte	0x1
	.byte	0xea
	.4byte	0x3e3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x20
	.4byte	.LASF342
	.byte	0x1
	.byte	0xec
	.4byte	0xb9
	.4byte	.LLST11
	.uleb128 0x20
	.4byte	.LASF360
	.byte	0x1
	.byte	0xec
	.4byte	0xb9
	.4byte	.LLST12
	.uleb128 0x20
	.4byte	.LASF343
	.byte	0x1
	.byte	0xed
	.4byte	0xc4
	.4byte	.LLST13
	.uleb128 0x20
	.4byte	.LASF358
	.byte	0x1
	.byte	0xee
	.4byte	0x473
	.4byte	.LLST14
	.uleb128 0x21
	.4byte	.LASF350
	.4byte	0x19e6
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8647
	.uleb128 0x2e
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x188f
	.uleb128 0x2f
	.string	"len"
	.byte	0x1
	.byte	0xfc
	.4byte	0xb9
	.4byte	.LLST15
	.uleb128 0x24
	.4byte	.LVL54
	.4byte	0x1d34
	.uleb128 0x22
	.4byte	.LVL55
	.4byte	0x1d3f
	.4byte	0x187f
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC40
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x23
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL57
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL48
	.4byte	0x16da
	.4byte	0x18a3
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL59
	.4byte	0x1d34
	.uleb128 0x22
	.4byte	.LVL60
	.4byte	0x1d3f
	.4byte	0x18f7
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC44
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8647
	.uleb128 0x23
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x31
	.4byte	.LVL61
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.4byte	0x190a
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL63
	.4byte	0x1d34
	.uleb128 0x22
	.4byte	.LVL65
	.4byte	0x1d3f
	.4byte	0x1955
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC47
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL66
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.4byte	0x1968
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL74
	.4byte	0x1d34
	.uleb128 0x22
	.4byte	.LVL75
	.4byte	0x1d3f
	.4byte	0x19b3
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC49
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL76
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.4byte	0x19c6
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL79
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xb2
	.4byte	0x19e6
	.uleb128 0xe
	.4byte	0x9b
	.byte	0x18
	.byte	0
	.uleb128 0x18
	.4byte	0x19d6
	.uleb128 0x28
	.4byte	.LASF361
	.byte	0x1
	.2byte	0x12b
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a4d
	.uleb128 0x32
	.4byte	.LASF362
	.byte	0x1
	.2byte	0x12b
	.4byte	0x391
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x33
	.4byte	.LASF354
	.byte	0x1
	.2byte	0x12d
	.4byte	0x3e3
	.4byte	.LLST16
	.uleb128 0x22
	.4byte	.LVL81
	.4byte	0x1e10
	.4byte	0x1a33
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL82
	.4byte	0x17b8
	.uleb128 0x25
	.4byte	.LVL83
	.4byte	0x1e1b
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF366
	.byte	0x1
	.byte	0xb5
	.4byte	0x53a
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a9f
	.uleb128 0x1f
	.4byte	.LASF363
	.byte	0x1
	.byte	0xb5
	.4byte	0x516
	.4byte	.LLST17
	.uleb128 0x2b
	.string	"evt"
	.byte	0x1
	.byte	0xb7
	.4byte	0x4f2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.4byte	.LVL85
	.4byte	0x1e26
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	.LASF364
	.byte	0x1
	.2byte	0x13b
	.4byte	0x25
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b9d
	.uleb128 0x36
	.4byte	.LASF29
	.byte	0x1
	.2byte	0x13b
	.4byte	0x473
	.4byte	.LLST18
	.uleb128 0x37
	.string	"len"
	.byte	0x1
	.2byte	0x13b
	.4byte	0xc4
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x38
	.string	"pkt"
	.byte	0x1
	.2byte	0x13e
	.4byte	0x3e3
	.4byte	.LLST19
	.uleb128 0x33
	.4byte	.LASF365
	.byte	0x1
	.2byte	0x13f
	.4byte	0x2c
	.4byte	.LLST20
	.uleb128 0x21
	.4byte	.LASF350
	.4byte	0x1b9d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8664
	.uleb128 0x31
	.4byte	.LVL92
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.4byte	0x1b19
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 8
	.byte	0
	.uleb128 0x24
	.4byte	.LVL94
	.4byte	0x1d34
	.uleb128 0x22
	.4byte	.LVL95
	.4byte	0x1d3f
	.4byte	0x1b59
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC57
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8664
	.byte	0
	.uleb128 0x22
	.4byte	.LVL98
	.4byte	0x1e32
	.4byte	0x1b79
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 8
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL100
	.4byte	0x1e3b
	.4byte	0x1b8d
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL101
	.4byte	0x1a4d
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x15be
	.uleb128 0x34
	.4byte	.LASF367
	.byte	0x1
	.byte	0xe1
	.4byte	0x11c
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c05
	.uleb128 0x1f
	.4byte	.LASF354
	.byte	0x1
	.byte	0xe1
	.4byte	0x3e3
	.4byte	.LLST21
	.uleb128 0x21
	.4byte	.LASF350
	.4byte	0x1c15
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8638
	.uleb128 0x25
	.4byte	.LVL105
	.4byte	0x1d29
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xe3
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8638
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC59
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xb2
	.4byte	0x1c15
	.uleb128 0xe
	.4byte	0x9b
	.byte	0x14
	.byte	0
	.uleb128 0x18
	.4byte	0x1c05
	.uleb128 0x39
	.4byte	.LASF406
	.byte	0x1
	.2byte	0x162
	.4byte	0x1c30
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1c36
	.uleb128 0x18
	.4byte	0x47f
	.uleb128 0x3a
	.4byte	.LASF368
	.byte	0x5
	.2byte	0x2cc
	.4byte	0x1c4e
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x18
	.4byte	0x18e
	.uleb128 0x3a
	.4byte	.LASF369
	.byte	0x5
	.2byte	0x2cd
	.4byte	0x1c66
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x18e
	.uleb128 0xb
	.4byte	0xb9
	.4byte	0x1c7b
	.uleb128 0xe
	.4byte	0x9b
	.byte	0x3
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF370
	.byte	0x1
	.byte	0x2a
	.4byte	0x1c8c
	.uleb128 0x5
	.byte	0x3
	.4byte	preamble_sizes
	.uleb128 0x18
	.4byte	0x1c6b
	.uleb128 0xb
	.4byte	0xc4
	.4byte	0x1ca1
	.uleb128 0xe
	.4byte	0x9b
	.byte	0x3
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF371
	.byte	0x1
	.byte	0x31
	.4byte	0x1cb2
	.uleb128 0x5
	.byte	0x3
	.4byte	outbound_event_types
	.uleb128 0x18
	.4byte	0x1c91
	.uleb128 0x2d
	.4byte	.LASF372
	.byte	0x1
	.byte	0x3f
	.4byte	0x129f
	.uleb128 0x5
	.byte	0x3
	.4byte	hci_hal_env
	.uleb128 0x3b
	.4byte	.LASF373
	.byte	0x1
	.2byte	0x15c
	.4byte	0x1cda
	.uleb128 0x5
	.byte	0x3
	.4byte	interface
	.uleb128 0x18
	.4byte	0x409
	.uleb128 0x2d
	.4byte	.LASF374
	.byte	0x1
	.byte	0x41
	.4byte	0x449
	.uleb128 0x5
	.byte	0x3
	.4byte	callbacks
	.uleb128 0x3b
	.4byte	.LASF375
	.byte	0x1
	.2byte	0x157
	.4byte	0x1d02
	.uleb128 0x5
	.byte	0x3
	.4byte	vhci_host_cb
	.uleb128 0x18
	.4byte	0x587
	.uleb128 0x2d
	.4byte	.LASF376
	.byte	0x1
	.byte	0x44
	.4byte	0x4a0
	.uleb128 0x5
	.byte	0x3
	.4byte	xHciH4TaskHandle
	.uleb128 0x2d
	.4byte	.LASF377
	.byte	0x1
	.byte	0x45
	.4byte	0x4ab
	.uleb128 0x5
	.byte	0x3
	.4byte	xHciH4Queue
	.uleb128 0x3c
	.4byte	.LASF378
	.4byte	.LASF378
	.byte	0x15
	.byte	0x29
	.uleb128 0x3c
	.4byte	.LASF379
	.4byte	.LASF379
	.byte	0xa
	.byte	0x57
	.uleb128 0x3c
	.4byte	.LASF380
	.4byte	.LASF380
	.byte	0xa
	.byte	0x6b
	.uleb128 0x3d
	.4byte	.LASF381
	.4byte	.LASF381
	.byte	0x10
	.2byte	0x123
	.uleb128 0x3c
	.4byte	.LASF382
	.4byte	.LASF382
	.byte	0x9
	.byte	0x2d
	.uleb128 0x3d
	.4byte	.LASF383
	.4byte	.LASF383
	.byte	0xd
	.2byte	0x2fe
	.uleb128 0x3d
	.4byte	.LASF384
	.4byte	.LASF384
	.byte	0xe
	.2byte	0x3ac
	.uleb128 0x3c
	.4byte	.LASF385
	.4byte	.LASF385
	.byte	0xf
	.byte	0x70
	.uleb128 0x3d
	.4byte	.LASF386
	.4byte	.LASF386
	.byte	0xe
	.2byte	0x38a
	.uleb128 0x3c
	.4byte	.LASF387
	.4byte	.LASF387
	.byte	0x9
	.byte	0x83
	.uleb128 0x3c
	.4byte	.LASF388
	.4byte	.LASF388
	.byte	0x16
	.byte	0x17
	.uleb128 0x3c
	.4byte	.LASF389
	.4byte	.LASF389
	.byte	0x9
	.byte	0x29
	.uleb128 0x3c
	.4byte	.LASF390
	.4byte	.LASF390
	.byte	0x9
	.byte	0x7d
	.uleb128 0x3d
	.4byte	.LASF391
	.4byte	.LASF391
	.byte	0xe
	.2byte	0x5d0
	.uleb128 0x3d
	.4byte	.LASF392
	.4byte	.LASF392
	.byte	0xd
	.2byte	0x14d
	.uleb128 0x3d
	.4byte	.LASF393
	.4byte	.LASF393
	.byte	0x10
	.2byte	0x12a
	.uleb128 0x3d
	.4byte	.LASF394
	.4byte	.LASF394
	.byte	0x14
	.2byte	0x253
	.uleb128 0x3d
	.4byte	.LASF395
	.4byte	.LASF395
	.byte	0x10
	.2byte	0x11c
	.uleb128 0x3d
	.4byte	.LASF396
	.4byte	.LASF396
	.byte	0x14
	.2byte	0x2a0
	.uleb128 0x3d
	.4byte	.LASF397
	.4byte	.LASF397
	.byte	0x17
	.2byte	0x23e
	.uleb128 0x3c
	.4byte	.LASF398
	.4byte	.LASF398
	.byte	0x9
	.byte	0x43
	.uleb128 0x3c
	.4byte	.LASF399
	.4byte	.LASF399
	.byte	0x9
	.byte	0x31
	.uleb128 0x3d
	.4byte	.LASF400
	.4byte	.LASF400
	.byte	0xe
	.2byte	0x265
	.uleb128 0x3e
	.4byte	.LASF407
	.4byte	.LASF407
	.uleb128 0x3c
	.4byte	.LASF401
	.4byte	.LASF401
	.byte	0x9
	.byte	0x3e
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
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xb
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x87
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL7
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL11
	.4byte	.LFE30
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL9
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL30
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39
	.4byte	.LVL42-1
	.2byte	0x3
	.byte	0x79
	.sleb128 -8
	.byte	0x9f
	.4byte	.LVL42-1
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL39
	.4byte	.LVL42-1
	.2byte	0x2
	.byte	0x78
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL44
	.4byte	.LVL45-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x7
	.byte	0x7a
	.sleb128 0
	.byte	0xa
	.2byte	0xfff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL42-1
	.2byte	0x11
	.byte	0x78
	.sleb128 2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0xfff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL42-1
	.2byte	0x3
	.byte	0x78
	.sleb128 3
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL38
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL43-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL51
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL62
	.4byte	.LVL63-1
	.2byte	0x8
	.byte	0x79
	.sleb128 0
	.byte	0x3
	.4byte	preamble_sizes
	.byte	0x22
	.4byte	.LVL63-1
	.4byte	.LVL67
	.2byte	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.4byte	preamble_sizes-1
	.byte	0x22
	.4byte	.LVL67
	.4byte	.LVL74-1
	.2byte	0x8
	.byte	0x79
	.sleb128 0
	.byte	0x3
	.4byte	preamble_sizes
	.byte	0x22
	.4byte	.LVL74-1
	.4byte	.LVL77
	.2byte	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.4byte	preamble_sizes-1
	.byte	0x22
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x8
	.byte	0x79
	.sleb128 0
	.byte	0x3
	.4byte	preamble_sizes
	.byte	0x22
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.4byte	preamble_sizes-1
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL73
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL47
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL50
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL53
	.4byte	.LVL58
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL71
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54-1
	.2byte	0x2
	.byte	0x75
	.sleb128 0
	.4byte	.LVL54-1
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL81
	.4byte	.LVL82-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL84
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
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL89
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
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL93
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x3
	.byte	0x73
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL91
	.4byte	.LVL92-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL92-1
	.4byte	.LVL102
	.2byte	0x3
	.byte	0x73
	.sleb128 8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL104
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL108
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x84
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF61:
	.string	"allocator_t"
.LASF385:
	.string	"hci_host_task_post"
.LASF76:
	.string	"transmit_data"
.LASF149:
	.string	"BTM_PM_STS_PARK"
.LASF376:
	.string	"xHciH4TaskHandle"
.LASF142:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_NOTIFICATION"
.LASF111:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REM_CTRL_TARGET"
.LASF402:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF48:
	.string	"TIMER_CBACK"
.LASF90:
	.string	"notify_host_send_available"
.LASF146:
	.string	"BTM_PM_STS_ACTIVE"
.LASF205:
	.string	"fcr_tx_buf_size"
.LASF271:
	.string	"ertm_info"
.LASF15:
	.string	"char"
.LASF195:
	.string	"pL2CA_QoSViolationInd_Cb"
.LASF366:
	.string	"hci_hal_h4_task_post"
.LASF163:
	.string	"qos_present"
.LASF300:
	.string	"w4_info_rsp"
.LASF36:
	.string	"peak_bandwidth"
.LASF208:
	.string	"CST_ORIG_W4_SEC_COMP"
.LASF295:
	.string	"is_bonding"
.LASF297:
	.string	"link_xmit_quota"
.LASF219:
	.string	"LST_CONNECTING_WAIT_SWITCH"
.LASF214:
	.string	"CST_W4_L2CAP_DISCONNECT_RSP"
.LASF69:
	.string	"packet_ready_cb"
.LASF364:
	.string	"host_recv_pkt_cb"
.LASF106:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC_COMMAND"
.LASF30:
	.string	"BT_HDR"
.LASF389:
	.string	"fixed_queue_new"
.LASF170:
	.string	"flags"
.LASF71:
	.string	"hci_hal_callbacks_t"
.LASF112:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REMOTE_CONTROL"
.LASF373:
	.string	"interface"
.LASF378:
	.string	"__assert_func"
.LASF105:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_FILE_TRANSFER"
.LASF392:
	.string	"xTaskCreatePinnedToCore"
.LASF21:
	.string	"UINT16"
.LASF310:
	.string	"disc_reason"
.LASF171:
	.string	"tL2CAP_CFG_INFO"
.LASF0:
	.string	"unsigned int"
.LASF341:
	.string	"hci_hal_env_t"
.LASF249:
	.string	"local_conn_cfg"
.LASF333:
	.string	"p_serve_ccb"
.LASF242:
	.string	"ack_timer"
.LASF175:
	.string	"tL2CA_CONNECT_IND_CB"
.LASF186:
	.string	"tL2CA_NOCP_CB"
.LASF384:
	.string	"vQueueDelete"
.LASF228:
	.string	"num_tries"
.LASF299:
	.string	"partial_segment_being_sent"
.LASF158:
	.string	"rtrans_tout"
.LASF128:
	.string	"BTM_EIR_UUID_SERVCLASS_PRINTING_STATUS"
.LASF270:
	.string	"rx_data_rate"
.LASF222:
	.string	"LST_DISCONNECTING"
.LASF226:
	.string	"next_seq_expected"
.LASF245:
	.string	"real_psm"
.LASF379:
	.string	"esp_log_timestamp"
.LASF144:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SINK"
.LASF156:
	.string	"tx_win_sz"
.LASF356:
	.string	"handles"
.LASF174:
	.string	"tL2CAP_CH_CFG_BITS"
.LASF315:
	.string	"sec_act"
.LASF24:
	.string	"BOOLEAN"
.LASF93:
	.string	"stype"
.LASF124:
	.string	"BTM_EIR_UUID_SERVCLASS_HF_HANDSFREE"
.LASF40:
	.string	"tBLE_ADDR_TYPE"
.LASF102:
	.string	"BTM_EIR_UUID_SERVCLASS_DIALUP_NETWORKING"
.LASF60:
	.string	"free"
.LASF155:
	.string	"mode"
.LASF211:
	.string	"CST_W4_L2CA_CONNECT_RSP"
.LASF122:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_AUTO_ARCHIVE"
.LASF345:
	.string	"host_send_pkt_available_cb"
.LASF253:
	.string	"p_lcb"
.LASF88:
	.string	"task_post_status_t"
.LASF396:
	.string	"l2cu_find_completed_packets"
.LASF162:
	.string	"mtu_present"
.LASF191:
	.string	"pL2CA_ConfigInd_Cb"
.LASF251:
	.string	"p_next_ccb"
.LASF223:
	.string	"tL2C_LINK_STATE"
.LASF348:
	.string	"hci_hal_env_init"
.LASF359:
	.string	"hci_hal_h4_hdl_rx_packet"
.LASF331:
	.string	"p_last_ccb"
.LASF289:
	.string	"upda_con_timer"
.LASF279:
	.string	"is_flushable"
.LASF395:
	.string	"esp_vhci_host_check_send_available"
.LASF34:
	.string	"token_rate"
.LASF291:
	.string	"link_role"
.LASF339:
	.string	"buffer_size"
.LASF352:
	.string	"upper_callbacks"
.LASF22:
	.string	"UINT32"
.LASF19:
	.string	"uint32_t"
.LASF194:
	.string	"pL2CA_DisconnectCfm_Cb"
.LASF41:
	.string	"tBT_TRANSPORT"
.LASF188:
	.string	"pL2CA_ConnectInd_Cb"
.LASF108:
	.string	"BTM_EIR_UUID_SERVCLASS_CORDLESS_TELEPHONY"
.LASF212:
	.string	"CST_CONFIG"
.LASF307:
	.string	"acl_priority"
.LASF26:
	.string	"event"
.LASF221:
	.string	"LST_CONNECTED"
.LASF23:
	.string	"INT32"
.LASF148:
	.string	"BTM_PM_STS_SNIFF"
.LASF386:
	.string	"xQueueGenericReceive"
.LASF406:
	.string	"hci_hal_h4_get_interface"
.LASF161:
	.string	"result"
.LASF319:
	.string	"waiting_update_conn_latency"
.LASF138:
	.string	"BTM_EIR_UUID_SERVCLASS_PNP_INFORMATION"
.LASF101:
	.string	"BTM_EIR_UUID_SERVCLASS_LAN_ACCESS_USING_PPP"
.LASF11:
	.string	"long long unsigned int"
.LASF130:
	.string	"BTM_EIR_UUID_SERVCLASS_CABLE_REPLACEMENT"
.LASF184:
	.string	"tL2CA_ECHO_RSP_CB"
.LASF367:
	.string	"host_recv_adv_packet"
.LASF368:
	.string	"bd_addr_any"
.LASF120:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING"
.LASF337:
	.string	"tL2C_LCB"
.LASF225:
	.string	"last_rx_ack"
.LASF381:
	.string	"esp_vhci_host_send_packet"
.LASF7:
	.string	"__uint16_t"
.LASF99:
	.string	"BTM_EIR_UUID_SERVCLASS_SERVICE_DISCOVERY_SERVER"
.LASF137:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_HS"
.LASF44:
	.string	"ESP_LOG_WARN"
.LASF334:
	.string	"num_ccb"
.LASF150:
	.string	"BTM_PM_STS_SSR"
.LASF83:
	.string	"SIG_HCI_HAL_RECV_PACKET"
.LASF201:
	.string	"allowed_modes"
.LASF97:
	.string	"flush_timeout"
.LASF248:
	.string	"chnl_state"
.LASF262:
	.string	"our_cfg"
.LASF210:
	.string	"CST_W4_L2CAP_CONNECT_RSP"
.LASF204:
	.string	"fcr_rx_buf_size"
.LASF326:
	.string	"current_used_conn_timeout"
.LASF361:
	.string	"event_uart_has_bytes"
.LASF39:
	.string	"FLOW_SPEC"
.LASF3:
	.string	"size_t"
.LASF344:
	.string	"hci_hal_env_deinit"
.LASF1:
	.string	"short unsigned int"
.LASF27:
	.string	"offset"
.LASF159:
	.string	"mon_tout"
.LASF357:
	.string	"num_packets"
.LASF180:
	.string	"tL2CA_DISCONNECT_IND_CB"
.LASF238:
	.string	"p_rx_sdu"
.LASF239:
	.string	"waiting_for_ack_q"
.LASF25:
	.string	"_Bool"
.LASF267:
	.string	"buff_quota"
.LASF405:
	.string	"hal_close"
.LASF154:
	.string	"tL2CAP_CHNL_DATA_RATE"
.LASF133:
	.string	"BTM_EIR_UUID_SERVCLASS_SAP"
.LASF276:
	.string	"peer_cfg_already_rejected"
.LASF85:
	.string	"task_post_t"
.LASF338:
	.string	"allocator"
.LASF46:
	.string	"ESP_LOG_DEBUG"
.LASF388:
	.string	"buffer_allocator_get_interface"
.LASF275:
	.string	"fcr_cfg_tries"
.LASF42:
	.string	"ESP_LOG_NONE"
.LASF178:
	.string	"tL2CA_CONFIG_IND_CB"
.LASF136:
	.string	"BTM_EIR_UUID_SERVCLASS_PHONE_ACCESS"
.LASF103:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC"
.LASF400:
	.string	"xQueueGenericSend"
.LASF227:
	.string	"last_ack_sent"
.LASF160:
	.string	"tL2CAP_FCR_OPTS"
.LASF292:
	.string	"cur_echo_id"
.LASF86:
	.string	"TASK_POST_SUCCESS"
.LASF52:
	.string	"ticks"
.LASF216:
	.string	"tL2C_CHNL_STATE"
.LASF274:
	.string	"max_rx_mtu"
.LASF278:
	.string	"bypass_fcs"
.LASF393:
	.string	"esp_vhci_host_register_callback"
.LASF261:
	.string	"remote_id"
.LASF287:
	.string	"p_pending_ccb"
.LASF256:
	.string	"timer_entry"
.LASF8:
	.string	"__int32_t"
.LASF70:
	.string	"packet_ready"
.LASF87:
	.string	"TASK_POST_FAIL"
.LASF66:
	.string	"DATA_TYPE_SCO"
.LASF302:
	.string	"peer_ext_fea"
.LASF75:
	.string	"close"
.LASF332:
	.string	"tL2C_CCB_Q"
.LASF328:
	.string	"rr_pri"
.LASF98:
	.string	"tHCI_EXT_FLOW_SPEC"
.LASF45:
	.string	"ESP_LOG_INFO"
.LASF404:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF273:
	.string	"tx_mps"
.LASF203:
	.string	"user_tx_buf_size"
.LASF314:
	.string	"le_sec_pending_q"
.LASF80:
	.string	"QueueHandle_t"
.LASF181:
	.string	"tL2CA_DISCONNECT_CFM_CB"
.LASF56:
	.string	"TIMER_LIST_ENT"
.LASF277:
	.string	"out_cfg_fcr_present"
.LASF176:
	.string	"tL2CA_CONNECT_CFM_CB"
.LASF16:
	.string	"uint8_t"
.LASF394:
	.string	"l2cu_find_lcb_by_handle"
.LASF190:
	.string	"pL2CA_ConnectPnd_Cb"
.LASF28:
	.string	"layer_specific"
.LASF374:
	.string	"callbacks"
.LASF259:
	.string	"config_done"
.LASF32:
	.string	"qos_flags"
.LASF391:
	.string	"xQueueGenericCreate"
.LASF20:
	.string	"UINT8"
.LASF321:
	.string	"updating_conn_min_interval"
.LASF218:
	.string	"LST_CONNECT_HOLDING"
.LASF125:
	.string	"BTM_EIR_UUID_SERVCLASS_AG_HANDSFREE"
.LASF177:
	.string	"tL2CA_CONNECT_PND_CB"
.LASF113:
	.string	"BTM_EIR_UUID_SERVCLASS_INTERCOM"
.LASF241:
	.string	"retrans_q"
.LASF67:
	.string	"DATA_TYPE_EVENT"
.LASF198:
	.string	"pL2CA_TxComplete_Cb"
.LASF10:
	.string	"long long int"
.LASF343:
	.string	"length"
.LASF268:
	.string	"ccb_priority"
.LASF237:
	.string	"rx_sdu_len"
.LASF247:
	.string	"t_l2c_ccb"
.LASF233:
	.string	"srej_sent"
.LASF311:
	.string	"transport"
.LASF109:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SOURCE"
.LASF220:
	.string	"LST_CONNECTING"
.LASF77:
	.string	"BaseType_t"
.LASF129:
	.string	"BTM_EIR_UUID_SERVCLASS_HUMAN_INTERFACE"
.LASF387:
	.string	"fixed_queue_process"
.LASF286:
	.string	"ccb_queue"
.LASF37:
	.string	"latency"
.LASF84:
	.string	"SIG_HCI_HAL_NUM"
.LASF82:
	.string	"BtTaskEvt_t"
.LASF51:
	.string	"p_cback"
.LASF257:
	.string	"p_rcb"
.LASF206:
	.string	"tL2CAP_ERTM_INFO"
.LASF229:
	.string	"max_held_acks"
.LASF94:
	.string	"max_sdu_size"
.LASF301:
	.string	"info_rx_bits"
.LASF306:
	.string	"idle_timeout_sv"
.LASF290:
	.string	"remote_bd_addr"
.LASF303:
	.string	"link_xmit_data_q"
.LASF243:
	.string	"mon_retrans_timer"
.LASF131:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_PRINT"
.LASF63:
	.string	"fixed_queue_t"
.LASF172:
	.string	"credits"
.LASF320:
	.string	"waiting_update_conn_timeout"
.LASF346:
	.string	"hci_hal_h4_rx_handler"
.LASF107:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET"
.LASF322:
	.string	"updating_conn_max_interval"
.LASF123:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_REF_OBJECTS"
.LASF54:
	.string	"param"
.LASF72:
	.string	"_tle"
.LASF217:
	.string	"LST_DISCONNECTED"
.LASF79:
	.string	"TaskHandle_t"
.LASF147:
	.string	"BTM_PM_STS_HOLD"
.LASF55:
	.string	"in_use"
.LASF38:
	.string	"delay_variation"
.LASF280:
	.string	"fixed_chnl_idle_tout"
.LASF272:
	.string	"fcrb"
.LASF380:
	.string	"esp_log_write"
.LASF309:
	.string	"p_fixed_ccbs"
.LASF140:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SINK"
.LASF231:
	.string	"local_busy"
.LASF152:
	.string	"BTM_PM_STS_ERROR"
.LASF96:
	.string	"access_latency"
.LASF202:
	.string	"user_rx_buf_size"
.LASF65:
	.string	"DATA_TYPE_ACL"
.LASF78:
	.string	"TickType_t"
.LASF296:
	.string	"link_flush_tout"
.LASF33:
	.string	"service_type"
.LASF29:
	.string	"data"
.LASF285:
	.string	"completed_packets"
.LASF141:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_ACCESS"
.LASF282:
	.string	"t_l2c_linkcb"
.LASF89:
	.string	"esp_vhci_host_callback"
.LASF58:
	.string	"free_fn"
.LASF347:
	.string	"previous_byte"
.LASF17:
	.string	"uint16_t"
.LASF383:
	.string	"vTaskDelete"
.LASF153:
	.string	"tL2CAP_CHNL_PRIORITY"
.LASF382:
	.string	"fixed_queue_free"
.LASF244:
	.string	"tL2C_FCRB"
.LASF246:
	.string	"tL2C_RCB"
.LASF308:
	.string	"p_nocp_cb"
.LASF164:
	.string	"flush_to_present"
.LASF281:
	.string	"tx_data_len"
.LASF196:
	.string	"pL2CA_DataInd_Cb"
.LASF169:
	.string	"ext_flow_spec"
.LASF369:
	.string	"bd_addr_null"
.LASF304:
	.string	"peer_chnl_mask"
.LASF397:
	.string	"btsnd_hcic_host_num_xmitted_pkts"
.LASF187:
	.string	"tL2CA_TX_COMPLETE_CB"
.LASF288:
	.string	"info_timer_entry"
.LASF118:
	.string	"BTM_EIR_UUID_SERVCLASS_GN"
.LASF143:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SOURCE"
.LASF59:
	.string	"alloc"
.LASF6:
	.string	"short int"
.LASF127:
	.string	"BTM_EIR_UUID_SERVCLASS_BASIC_PRINTING"
.LASF207:
	.string	"CST_CLOSED"
.LASF114:
	.string	"BTM_EIR_UUID_SERVCLASS_FAX"
.LASF12:
	.string	"long int"
.LASF377:
	.string	"xHciH4Queue"
.LASF329:
	.string	"tL2C_CCB"
.LASF132:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_SCAN"
.LASF335:
	.string	"quota"
.LASF179:
	.string	"tL2CA_CONFIG_CFM_CB"
.LASF100:
	.string	"BTM_EIR_UUID_SERVCLASS_SERIAL_PORT"
.LASF264:
	.string	"peer_cfg"
.LASF260:
	.string	"local_id"
.LASF254:
	.string	"local_cid"
.LASF182:
	.string	"tL2CA_QOS_VIOLATION_IND_CB"
.LASF49:
	.string	"p_next"
.LASF209:
	.string	"CST_TERM_W4_SEC_COMP"
.LASF265:
	.string	"xmit_hold_q"
.LASF258:
	.string	"should_free_rcb"
.LASF197:
	.string	"pL2CA_CongestionStatus_Cb"
.LASF349:
	.string	"max_buffer_count"
.LASF183:
	.string	"tL2CA_DATA_IND_CB"
.LASF234:
	.string	"wait_ack"
.LASF240:
	.string	"srej_rcv_hold_q"
.LASF199:
	.string	"tL2CAP_APPL_INFO"
.LASF64:
	.string	"DATA_TYPE_COMMAND"
.LASF372:
	.string	"hci_hal_env"
.LASF4:
	.string	"__uint8_t"
.LASF91:
	.string	"notify_host_recv"
.LASF213:
	.string	"CST_OPEN"
.LASF73:
	.string	"hci_hal_t"
.LASF316:
	.string	"conn_update_mask"
.LASF31:
	.string	"BD_ADDR"
.LASF351:
	.string	"hal_open"
.LASF139:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SOURCE"
.LASF74:
	.string	"open"
.LASF269:
	.string	"tx_data_rate"
.LASF323:
	.string	"updating_param_flag"
.LASF224:
	.string	"next_tx_seq"
.LASF92:
	.string	"esp_vhci_host_callback_t"
.LASF401:
	.string	"fixed_queue_enqueue"
.LASF255:
	.string	"remote_cid"
.LASF50:
	.string	"p_prev"
.LASF53:
	.string	"ticks_initial"
.LASF104:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_OBJECT_PUSH"
.LASF13:
	.string	"sizetype"
.LASF398:
	.string	"fixed_queue_dequeue"
.LASF14:
	.string	"long unsigned int"
.LASF116:
	.string	"BTM_EIR_UUID_SERVCLASS_PANU"
.LASF47:
	.string	"ESP_LOG_VERBOSE"
.LASF192:
	.string	"pL2CA_ConfigCfm_Cb"
.LASF362:
	.string	"queue"
.LASF18:
	.string	"int32_t"
.LASF68:
	.string	"serial_data_type_t"
.LASF354:
	.string	"packet"
.LASF189:
	.string	"pL2CA_ConnectCfm_Cb"
.LASF81:
	.string	"bt_task_evt"
.LASF330:
	.string	"p_first_ccb"
.LASF126:
	.string	"BTM_EIR_UUID_SERVCLASS_DIR_PRT_REF_OBJ_SERVICE"
.LASF298:
	.string	"sent_not_acked"
.LASF342:
	.string	"type"
.LASF215:
	.string	"CST_W4_L2CA_DISCONNECT_RSP"
.LASF5:
	.string	"unsigned char"
.LASF9:
	.string	"__uint32_t"
.LASF193:
	.string	"pL2CA_DisconnectInd_Cb"
.LASF336:
	.string	"tL2C_RR_SERV"
.LASF318:
	.string	"waiting_update_conn_max_interval"
.LASF121:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_RESPONDER"
.LASF363:
	.string	"timeout"
.LASF117:
	.string	"BTM_EIR_UUID_SERVCLASS_NAP"
.LASF390:
	.string	"fixed_queue_register_dequeue"
.LASF115:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_AUDIO_GATEWAY"
.LASF317:
	.string	"waiting_update_conn_min_interval"
.LASF294:
	.string	"idle_timeout"
.LASF305:
	.string	"p_hcit_rcv_acl"
.LASF134:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PCE"
.LASF312:
	.string	"open_addr_type"
.LASF200:
	.string	"preferred_mode"
.LASF283:
	.string	"link_state"
.LASF165:
	.string	"flush_to"
.LASF167:
	.string	"fcs_present"
.LASF236:
	.string	"send_f_rsp"
.LASF35:
	.string	"token_bucket_size"
.LASF250:
	.string	"peer_conn_cfg"
.LASF110:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SINK"
.LASF166:
	.string	"fcr_present"
.LASF119:
	.string	"BTM_EIR_UUID_SERVCLASS_DIRECT_PRINTING"
.LASF324:
	.string	"current_used_conn_interval"
.LASF313:
	.string	"ble_addr_type"
.LASF2:
	.string	"signed char"
.LASF135:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PSE"
.LASF353:
	.string	"hci_packet_complete"
.LASF168:
	.string	"ext_flow_spec_present"
.LASF235:
	.string	"rej_after_srej"
.LASF284:
	.string	"handle"
.LASF407:
	.string	"memcpy"
.LASF371:
	.string	"outbound_event_types"
.LASF375:
	.string	"vhci_host_cb"
.LASF263:
	.string	"peer_cfg_bits"
.LASF232:
	.string	"rej_sent"
.LASF230:
	.string	"remote_busy"
.LASF95:
	.string	"sdu_inter_time"
.LASF350:
	.string	"__func__"
.LASF403:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/hci/hci_hal_h4.c"
.LASF252:
	.string	"p_prev_ccb"
.LASF327:
	.string	"rr_serv"
.LASF355:
	.string	"num_handle"
.LASF370:
	.string	"preamble_sizes"
.LASF173:
	.string	"tL2CAP_LE_CFG_INFO"
.LASF293:
	.string	"p_echo_rsp_cb"
.LASF266:
	.string	"cong_sent"
.LASF399:
	.string	"fixed_queue_is_empty"
.LASF62:
	.string	"list_t"
.LASF360:
	.string	"hdr_size"
.LASF340:
	.string	"rx_q"
.LASF57:
	.string	"alloc_fn"
.LASF185:
	.string	"tL2CA_CONGESTION_STATUS_CB"
.LASF157:
	.string	"max_transmit"
.LASF151:
	.string	"BTM_PM_STS_PENDING"
.LASF365:
	.string	"pkt_size"
.LASF325:
	.string	"current_used_conn_latency"
.LASF358:
	.string	"stream"
.LASF43:
	.string	"ESP_LOG_ERROR"
.LASF145:
	.string	"BTM_EIR_MAX_SERVICES"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
