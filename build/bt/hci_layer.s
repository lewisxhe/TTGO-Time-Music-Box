	.file	"hci_layer.c"
	.text
.Ltext0:
	.section	.text.init_layer_interface,"ax",@progbits
	.literal_position
	.literal .LC0, interface_created
	.literal .LC1, interface
	.literal .LC2, transmit_command
	.literal .LC3, transmit_command_futured
	.literal .LC4, transmit_downward
	.align	4
	.type	init_layer_interface, @function
init_layer_interface:
.LFB46:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/hci/hci_layer.c"
	.loc 1 555 0
	entry	sp, 32
.LCFI0:
	.loc 1 556 0
	l32r	a8, .LC0
	l8ui	a8, a8, 0
	bnez.n	a8, .L1
	.loc 1 557 0
	l32r	a8, .LC1
	l32r	a9, .LC2
	s32i.n	a9, a8, 4
	.loc 1 558 0
	l32r	a9, .LC3
	s32i.n	a9, a8, 8
	.loc 1 559 0
	l32r	a9, .LC4
	s32i.n	a9, a8, 12
	.loc 1 560 0
	movi.n	a9, 1
	l32r	a8, .LC0
	s8i	a9, a8, 0
.L1:
	retw.n
.LFE46:
	.size	init_layer_interface, .-init_layer_interface
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC9:
	.string	"BT_HCI"
	.align	4
.LC11:
	.string	"\033[0;31mE (%d) %s: %s invalid event type, could not translate 0x%x\n\033[0m\n"
	.section	.text.event_to_data_type,"ax",@progbits
	.literal_position
	.literal .LC5, 8448
	.literal .LC6, 8704
	.literal .LC7, 8192
	.literal .LC8, __func__$6554
	.literal .LC10, .LC9
	.literal .LC12, .LC11
	.align	4
	.type	event_to_data_type, @function
event_to_data_type:
.LFB44:
	.loc 1 517 0
.LVL0:
	entry	sp, 48
.LCFI1:
	.loc 1 518 0
	l32r	a8, .LC5
	beq	a2, a8, .L5
	.loc 1 520 0
	l32r	a8, .LC6
	beq	a2, a8, .L6
	.loc 1 522 0
	l32r	a8, .LC7
	beq	a2, a8, .L7
	.loc 1 525 0 discriminator 1
	call8	esp_log_timestamp
.LVL1:
	l32r	a11, .LC10
	s32i.n	a2, sp, 0
	l32r	a15, .LC8
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC12
	movi.n	a10, 1
	call8	esp_log_write
.LVL2:
	.loc 1 528 0 discriminator 1
	movi.n	a2, 0
.LVL3:
	retw.n
.LVL4:
.L5:
	.loc 1 519 0
	movi.n	a2, 2
.LVL5:
	retw.n
.LVL6:
.L6:
	.loc 1 521 0
	movi.n	a2, 3
.LVL7:
	retw.n
.LVL8:
.L7:
	.loc 1 523 0
	movi.n	a2, 1
.LVL9:
	.loc 1 529 0
	retw.n
.LFE44:
	.size	event_to_data_type, .-event_to_data_type
	.section	.text.transmit_fragment,"ax",@progbits
	.literal_position
	.literal .LC13, hal
	.literal .LC14, buffer_allocator
	.align	4
	.type	transmit_fragment, @function
transmit_fragment:
.LFB37:
	.loc 1 350 0
.LVL10:
	entry	sp, 32
.LCFI2:
	extui	a3, a3, 0, 8
	.loc 1 351 0
	l16ui	a8, a2, 0
	movi	a4, -0x100
	and	a4, a8, a4
.LVL11:
	.loc 1 352 0
	mov.n	a10, a4
	call8	event_to_data_type
.LVL12:
	.loc 1 354 0
	l32r	a8, .LC13
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 8
	addi.n	a11, a2, 8
	l16ui	a9, a2, 4
	l16ui	a12, a2, 2
	add.n	a11, a11, a9
	callx8	a8
.LVL13:
	.loc 1 356 0
	addmi	a8, a4, -0x2000
	movi.n	a4, 0
.LVL14:
	movi.n	a9, 1
	movnez	a4, a9, a8
	bnone	a4, a3, .L8
	.loc 1 357 0
	l32r	a3, .LC14
.LVL15:
	l32i.n	a3, a3, 0
	l32i.n	a3, a3, 4
	mov.n	a10, a2
	callx8	a3
.LVL16:
.L8:
	retw.n
.LFE37:
	.size	transmit_fragment, .-transmit_fragment
	.section	.text.get_waiting_command,"ax",@progbits
	.literal_position
	.literal .LC15, hci_host_env+24
	.literal .LC16, hci_host_env
	.align	4
	.type	get_waiting_command, @function
get_waiting_command:
.LFB45:
	.loc 1 532 0
.LVL17:
	entry	sp, 32
.LCFI3:
.LVL18:
	.loc 1 534 0
	movi.n	a11, -1
	l32r	a10, .LC15
	call8	osi_mutex_lock
.LVL19:
.LBB2:
	.loc 1 536 0
	l32r	a3, .LC16
	l32i.n	a10, a3, 20
	call8	list_begin
.LVL20:
	mov.n	a3, a10
.LVL21:
	j	.L11
.L15:
.LBB3:
	.loc 1 539 0
	mov.n	a10, a3
	call8	list_node
.LVL22:
	mov.n	a4, a10
.LVL23:
	.loc 1 540 0
	beqz.n	a10, .L12
	.loc 1 540 0 is_stmt 0 discriminator 1
	l16ui	a8, a10, 0
	beq	a8, a2, .L13
.L12:
.LBE3:
	.loc 1 538 0 is_stmt 1
	mov.n	a10, a3
	call8	list_next
.LVL24:
	mov.n	a3, a10
.LVL25:
	j	.L11
.L13:
.LBB4:
	.loc 1 544 0
	mov.n	a11, a10
	l32r	a2, .LC16
.LVL26:
	l32i.n	a10, a2, 20
	call8	list_remove
.LVL27:
	.loc 1 546 0
	l32r	a10, .LC15
	call8	osi_mutex_unlock
.LVL28:
	.loc 1 547 0
	mov.n	a2, a4
	retw.n
.LVL29:
.L11:
.LBE4:
	.loc 1 537 0 discriminator 1
	l32r	a4, .LC16
	l32i.n	a10, a4, 20
	call8	list_end
.LVL30:
	.loc 1 536 0 discriminator 1
	bne	a3, a10, .L15
.LBE2:
	.loc 1 550 0
	l32r	a10, .LC15
	call8	osi_mutex_unlock
.LVL31:
	.loc 1 551 0
	movi.n	a2, 0
.LVL32:
	.loc 1 552 0
	retw.n
.LFE45:
	.size	get_waiting_command, .-get_waiting_command
	.section	.text.restart_command_waiting_response_timer,"ax",@progbits
	.literal_position
	.literal .LC17, 8000, 0
	.align	4
	.type	restart_command_waiting_response_timer, @function
restart_command_waiting_response_timer:
.LFB39:
	.loc 1 384 0
.LVL33:
	entry	sp, 32
.LCFI4:
	.loc 1 385 0
	addi.n	a3, a2, 12
	movi.n	a11, -1
	mov.n	a10, a3
	call8	osi_mutex_lock
.LVL34:
	.loc 1 386 0
	l8ui	a8, a2, 0
	beqz.n	a8, .L17
	.loc 1 387 0
	l32i.n	a10, a2, 4
	call8	osi_alarm_cancel
.LVL35:
	.loc 1 388 0
	movi.n	a8, 0
	s8i	a8, a2, 0
.L17:
	.loc 1 390 0
	l32i.n	a10, a2, 8
	call8	list_is_empty
.LVL36:
	bnez.n	a10, .L18
	.loc 1 391 0
	l32r	a12, .LC17
	l32r	a13, .LC17+4
	l32i.n	a10, a2, 4
	call8	osi_alarm_set
.LVL37:
	.loc 1 392 0
	movi.n	a8, 1
	s8i	a8, a2, 0
.L18:
	.loc 1 394 0
	mov.n	a10, a3
	call8	osi_mutex_unlock
.LVL38:
	retw.n
.LFE39:
	.size	restart_command_waiting_response_timer, .-restart_command_waiting_response_timer
	.section	.text.dispatch_reassembled,"ax",@progbits
	.literal_position
	.literal .LC18, buffer_allocator
	.align	4
	.type	dispatch_reassembled, @function
dispatch_reassembled:
.LFB43:
	.loc 1 505 0
.LVL39:
	entry	sp, 32
.LCFI5:
	.loc 1 508 0
	movi.n	a12, -1
	mov.n	a11, a2
	movi.n	a10, 1
	call8	btu_task_post
.LVL40:
	beqz.n	a10, .L19
	.loc 1 509 0
	l32r	a8, .LC18
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 4
	mov.n	a10, a2
	callx8	a8
.LVL41:
.L19:
	retw.n
.LFE43:
	.size	dispatch_reassembled, .-dispatch_reassembled
	.section	.text.fragmenter_transmit_finished,"ax",@progbits
	.literal_position
	.literal .LC19, buffer_allocator
	.align	4
	.type	fragmenter_transmit_finished, @function
fragmenter_transmit_finished:
.LFB38:
	.loc 1 362 0
.LVL42:
	entry	sp, 32
.LCFI6:
	mov.n	a10, a2
	extui	a3, a3, 0, 8
	.loc 1 363 0
	beqz.n	a3, .L22
	.loc 1 364 0
	l32r	a3, .LC19
.LVL43:
	l32i.n	a3, a3, 0
	l32i.n	a3, a3, 4
	callx8	a3
.LVL44:
	retw.n
.L22:
	.loc 1 378 0
	call8	dispatch_reassembled
.LVL45:
	retw.n
.LFE38:
	.size	fragmenter_transmit_finished, .-fragmenter_transmit_finished
	.section	.text.hci_host_thread_handler,"ax",@progbits
	.literal_position
	.literal .LC20, xHciHostQueue
	.literal .LC21, packet_fragmenter
	.literal .LC22, hci_host_env
	.align	4
	.type	hci_host_thread_handler, @function
hci_host_thread_handler:
.LFB31:
	.loc 1 214 0
.LVL46:
	entry	sp, 48
.LCFI7:
.L25:
	.loc 1 227 0
	movi.n	a13, 0
	movi.n	a12, -1
	mov.n	a11, sp
	l32r	a8, .LC20
	l32i.n	a10, a8, 0
	call8	xQueueGenericReceive
.LVL47:
	bnei	a10, 1, .L25
	.loc 1 229 0
	l32i.n	a8, sp, 0
	bnez.n	a8, .L25
	.loc 1 230 0
	call8	esp_vhci_host_check_send_available
.LVL48:
	beqz.n	a10, .L25
.LBB5:
	.loc 1 232 0
	l32r	a8, .LC21
	l32i.n	a8, a8, 0
	l32i.n	a10, a8, 8
	callx8	a10
.LVL49:
	.loc 1 233 0
	beqz.n	a10, .L27
	.loc 1 234 0
	l32r	a8, .LC21
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 12
	callx8	a8
.LVL50:
	j	.L25
.LVL51:
.L27:
	.loc 1 236 0
	l32r	a8, .LC22
	l32i.n	a10, a8, 4
.LVL52:
	call8	fixed_queue_is_empty
.LVL53:
	bnez.n	a10, .L28
	.loc 1 237 0 discriminator 1
	l32r	a8, .LC22
	l32i.n	a8, a8, 0
	.loc 1 236 0 discriminator 1
	blti	a8, 1, .L28
	.loc 1 238 0
	l32r	a8, .LC22
	l32i.n	a10, a8, 4
	call8	fixed_queue_process
.LVL54:
	j	.L25
.L28:
	.loc 1 239 0
	l32r	a8, .LC22
	l32i.n	a10, a8, 8
	call8	fixed_queue_is_empty
.LVL55:
	bnez.n	a10, .L25
	.loc 1 240 0
	l32r	a8, .LC22
	l32i.n	a10, a8, 8
	call8	fixed_queue_process
.LVL56:
	j	.L25
.LBE5:
.LFE31:
	.size	hci_host_thread_handler, .-hci_host_thread_handler
	.section	.rodata.str1.4
	.align	4
.LC27:
	.string	"\033[0;31mE (%d) %s: %s unable to create pending command queue.\033[0m\n"
	.align	4
.LC30:
	.string	"\033[0;31mE (%d) %s: %s unable to create pending packet queue.\033[0m\n"
	.align	4
.LC32:
	.string	"\033[0;31mE (%d) %s: %s unable to create list for commands pending response.\033[0m\n"
	.align	4
.LC38:
	.string	"cmd_rsp_to"
	.align	4
.LC40:
	.string	"\033[0;31mE (%d) %s: %s unable to create command response timer.\033[0m\n"
	.section	.text.hci_layer_init_env,"ax",@progbits
	.literal_position
	.literal .LC23, hci_host_env
	.literal .LC24, event_command_ready
	.literal .LC25, __func__$6475
	.literal .LC26, .LC9
	.literal .LC28, .LC27
	.literal .LC29, event_packet_ready
	.literal .LC31, .LC30
	.literal .LC33, .LC32
	.literal .LC34, hci_host_env+24
	.literal .LC35, 8000, 0
	.literal .LC36, hci_host_env+12
	.literal .LC37, command_timed_out
	.literal .LC39, .LC38
	.literal .LC41, .LC40
	.align	4
	.type	hci_layer_init_env, @function
hci_layer_init_env:
.LFB29:
	.loc 1 154 0
	entry	sp, 32
.LCFI8:
	.loc 1 160 0
	l32r	a2, .LC23
	movi.n	a8, 1
	s32i.n	a8, a2, 0
	.loc 1 161 0
	movi	a10, 0xfe
	call8	fixed_queue_new
.LVL57:
	s32i.n	a10, a2, 4
	.loc 1 162 0
	beqz.n	a10, .L30
	.loc 1 163 0
	l32r	a11, .LC24
	call8	fixed_queue_register_dequeue
.LVL58:
	.loc 1 169 0
	movi	a10, 0xfe
	call8	fixed_queue_new
.LVL59:
	l32r	a2, .LC23
	s32i.n	a10, a2, 8
	.loc 1 170 0
	bnez.n	a10, .L31
	j	.L37
.L30:
	.loc 1 165 0 discriminator 1
	call8	esp_log_timestamp
.LVL60:
	l32r	a11, .LC26
	l32r	a15, .LC25
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC28
	movi.n	a10, 1
	call8	esp_log_write
.LVL61:
	.loc 1 166 0 discriminator 1
	movi.n	a2, -1
	retw.n
.L31:
	.loc 1 171 0
	l32r	a11, .LC29
	call8	fixed_queue_register_dequeue
.LVL62:
	.loc 1 179 0
	l32r	a2, .LC23
	movi.n	a8, 0
	s8i	a8, a2, 12
	.loc 1 180 0
	movi.n	a10, 0
	call8	list_new
.LVL63:
	s32i.n	a10, a2, 20
	.loc 1 181 0
	bnez.n	a10, .L38
	j	.L34
.LVL64:
.L37:
	.loc 1 173 0 discriminator 1
	call8	esp_log_timestamp
.LVL65:
	l32r	a11, .LC26
	l32r	a15, .LC25
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC31
	movi.n	a10, 1
	call8	esp_log_write
.LVL66:
	.loc 1 174 0 discriminator 1
	movi.n	a2, -1
	retw.n
.LVL67:
.L34:
	.loc 1 182 0 discriminator 1
	call8	esp_log_timestamp
.LVL68:
	l32r	a11, .LC26
	l32r	a15, .LC25
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC33
	movi.n	a10, 1
	call8	esp_log_write
.LVL69:
	.loc 1 183 0 discriminator 1
	movi.n	a2, -1
	retw.n
.L38:
	.loc 1 185 0
	l32r	a10, .LC34
	call8	osi_mutex_new
.LVL70:
	.loc 1 186 0
	l32r	a14, .LC35
	l32r	a15, .LC35+4
	l32r	a12, .LC36
.LVL71:
	l32r	a11, .LC37
	l32r	a10, .LC39
	call8	osi_alarm_new
.LVL72:
	l32r	a2, .LC23
	s32i.n	a10, a2, 16
	.loc 1 187 0
	bnez.n	a10, .L36
	.loc 1 188 0 discriminator 1
	call8	esp_log_timestamp
.LVL73:
	l32r	a11, .LC26
	l32r	a15, .LC25
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC41
	movi.n	a10, 1
	call8	esp_log_write
.LVL74:
	.loc 1 189 0 discriminator 1
	movi.n	a2, -1
	retw.n
.L36:
	.loc 1 192 0
	movi.n	a2, 0
	.loc 1 193 0
	retw.n
.LFE29:
	.size	hci_layer_init_env, .-hci_layer_init_env
	.section	.rodata.str1.4
	.align	4
.LC44:
	.string	"\033[0;31mE (%d) %s: %s with no commands pending response\033[0m\n"
	.align	4
.LC46:
	.string	"\033[0;31mE (%d) %s: %s hci layer timeout waiting for response to a command. opcode: 0x%x\033[0m\n"
	.section	.text.command_timed_out,"ax",@progbits
	.literal_position
	.literal .LC42, __func__$6534
	.literal .LC43, .LC9
	.literal .LC45, .LC44
	.literal .LC47, .LC46
	.align	4
	.type	command_timed_out, @function
command_timed_out:
.LFB40:
	.loc 1 398 0
.LVL75:
	entry	sp, 48
.LCFI9:
.LVL76:
	.loc 1 402 0
	addi.n	a3, a2, 12
	movi.n	a11, -1
	mov.n	a10, a3
	call8	osi_mutex_lock
.LVL77:
	.loc 1 403 0
	l32i.n	a10, a2, 8
	call8	list_is_empty
.LVL78:
	.loc 1 404 0
	bnez.n	a10, .L43
	.loc 1 404 0 is_stmt 0 discriminator 2
	l32i.n	a10, a2, 8
	call8	list_front
.LVL79:
	mov.n	a2, a10
.LVL80:
	j	.L40
.LVL81:
.L43:
	.loc 1 404 0
	movi.n	a2, 0
.LVL82:
.L40:
	.loc 1 405 0 is_stmt 1
	mov.n	a10, a3
	call8	osi_mutex_unlock
.LVL83:
	.loc 1 407 0
	bnez.n	a2, .L41
	.loc 1 408 0 discriminator 1
	call8	esp_log_timestamp
.LVL84:
	l32r	a11, .LC43
	l32r	a15, .LC42
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC45
	movi.n	a10, 1
	call8	esp_log_write
.LVL85:
	retw.n
.L41:
	.loc 1 413 0 discriminator 1
	call8	esp_log_timestamp
.LVL86:
	l16ui	a2, a2, 0
.LVL87:
	l32r	a11, .LC43
	s32i.n	a2, sp, 0
	l32r	a15, .LC42
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC47
	movi.n	a10, 1
	call8	esp_log_write
.LVL88:
	retw.n
.LFE40:
	.size	command_timed_out, .-command_timed_out
	.section	.text.event_packet_ready,"ax",@progbits
	.literal_position
	.literal .LC48, packet_fragmenter
	.align	4
	.type	event_packet_ready, @function
event_packet_ready:
.LFB36:
	.loc 1 341 0
.LVL89:
	entry	sp, 32
.LCFI10:
	.loc 1 342 0
	mov.n	a10, a2
	call8	fixed_queue_dequeue
.LVL90:
	.loc 1 345 0
	l32r	a8, .LC48
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 12
	callx8	a8
.LVL91:
	retw.n
.LFE36:
	.size	event_packet_ready, .-event_packet_ready
	.section	.text.event_command_ready,"ax",@progbits
	.literal_position
	.literal .LC49, 3125
	.literal .LC50, packet_fragmenter
	.literal .LC51, buffer_allocator
	.literal .LC52, hci_host_env
	.literal .LC53, hci_host_env+24
	.literal .LC54, hci_host_env+12
	.align	4
	.type	event_command_ready, @function
event_command_ready:
.LFB35:
	.loc 1 316 0
.LVL92:
	entry	sp, 32
.LCFI11:
.LVL93:
	.loc 1 320 0
	mov.n	a10, a2
	call8	fixed_queue_dequeue
.LVL94:
	mov.n	a2, a10
.LVL95:
	.loc 1 322 0
	l16ui	a4, a10, 0
	l32r	a3, .LC49
	bne	a4, a3, .L46
	.loc 1 323 0
	l32r	a3, .LC50
	l32i.n	a3, a3, 0
	l32i.n	a3, a3, 12
	l32i.n	a10, a10, 20
	callx8	a3
.LVL96:
	.loc 1 324 0
	l32r	a3, .LC51
	l32i.n	a3, a3, 0
	l32i.n	a3, a3, 4
	l32i.n	a10, a2, 20
	callx8	a3
.LVL97:
	.loc 1 325 0
	mov.n	a10, a2
	call8	free
.LVL98:
	.loc 1 326 0
	retw.n
.L46:
	.loc 1 328 0
	l32r	a3, .LC52
	l32i.n	a8, a3, 0
	addi.n	a8, a8, -1
	s32i.n	a8, a3, 0
	.loc 1 330 0
	l32r	a4, .LC53
	movi.n	a11, -1
	mov.n	a10, a4
	call8	osi_mutex_lock
.LVL99:
	.loc 1 331 0
	mov.n	a11, a2
	l32i.n	a10, a3, 20
	call8	list_append
.LVL100:
	.loc 1 332 0
	mov.n	a10, a4
	call8	osi_mutex_unlock
.LVL101:
	.loc 1 335 0
	l32r	a3, .LC50
	l32i.n	a3, a3, 0
	l32i.n	a3, a3, 12
	l32i.n	a10, a2, 20
	callx8	a3
.LVL102:
	.loc 1 337 0
	l32r	a10, .LC54
.LVL103:
	call8	restart_command_waiting_response_timer
.LVL104:
	retw.n
.LFE35:
	.size	event_command_ready, .-event_command_ready
	.section	.text.hci_layer_deinit_env,"ax",@progbits
	.literal_position
	.literal .LC55, hci_host_env
	.literal .LC56, allocator_calloc
	.literal .LC57, buffer_allocator
	.literal .LC58, hci_host_env+24
	.align	4
	.type	hci_layer_deinit_env, @function
hci_layer_deinit_env:
.LFB30:
	.loc 1 196 0
	entry	sp, 32
.LCFI12:
	.loc 1 199 0
	l32r	a2, .LC55
	l32i.n	a10, a2, 4
	beqz.n	a10, .L49
	.loc 1 200 0
	l32r	a2, .LC56
	l32i.n	a11, a2, 4
	call8	fixed_queue_free
.LVL105:
.L49:
	.loc 1 202 0
	l32r	a2, .LC55
	l32i.n	a10, a2, 8
	beqz.n	a10, .L50
	.loc 1 203 0
	l32r	a2, .LC57
	l32i.n	a2, a2, 0
	l32i.n	a11, a2, 4
	call8	fixed_queue_free
.LVL106:
.L50:
	.loc 1 207 0
	l32r	a2, .LC55
	l32i.n	a10, a2, 20
	call8	list_free
.LVL107:
	.loc 1 208 0
	l32r	a10, .LC58
	call8	osi_mutex_free
.LVL108:
	.loc 1 209 0
	l32i.n	a10, a2, 16
	call8	osi_alarm_free
.LVL109:
	.loc 1 210 0
	movi.n	a8, 0
	s32i.n	a8, a2, 16
	retw.n
.LFE30:
	.size	hci_layer_deinit_env, .-hci_layer_deinit_env
	.section	.text.hci_shut_down,"ax",@progbits
	.literal_position
	.literal .LC59, hci_host_startup_flag
	.literal .LC60, packet_fragmenter
	.literal .LC61, hal
	.literal .LC62, xHciHostTaskHandle
	.literal .LC63, xHciHostQueue
	.align	4
	.global	hci_shut_down
	.type	hci_shut_down, @function
hci_shut_down:
.LFB27:
	.loc 1 121 0
	entry	sp, 32
.LCFI13:
	.loc 1 122 0
	movi.n	a9, 0
	l32r	a8, .LC59
	s8i	a9, a8, 0
	.loc 1 123 0
	call8	hci_layer_deinit_env
.LVL110:
	.loc 1 125 0
	l32r	a8, .LC60
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 4
	callx8	a8
.LVL111:
	.loc 1 128 0
	l32r	a8, .LC61
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 4
	callx8	a8
.LVL112:
	.loc 1 129 0
	l32r	a8, .LC62
	l32i.n	a10, a8, 0
	call8	vTaskDelete
.LVL113:
	.loc 1 130 0
	l32r	a8, .LC63
	l32i.n	a10, a8, 0
	call8	vQueueDelete
.LVL114:
	retw.n
.LFE27:
	.size	hci_shut_down, .-hci_shut_down
	.section	.rodata.str1.4
	.align	4
.LC67:
	.string	"hciHostT"
	.section	.text.hci_start_up,"ax",@progbits
	.literal_position
	.literal .LC64, xHciHostQueue
	.literal .LC65, xHciHostTaskHandle
	.literal .LC66, 2560
	.literal .LC68, .LC67
	.literal .LC69, hci_host_thread_handler
	.literal .LC70, packet_fragmenter
	.literal .LC71, packet_fragmenter_callbacks
	.literal .LC72, hal
	.literal .LC73, hal_callbacks
	.literal .LC74, hci_host_startup_flag
	.align	4
	.global	hci_start_up
	.type	hci_start_up, @function
hci_start_up:
.LFB26:
	.loc 1 102 0
	entry	sp, 48
.LCFI14:
	.loc 1 103 0
	call8	hci_layer_init_env
.LVL115:
	mov.n	a2, a10
	bnez.n	a10, .L53
	.loc 1 107 0
	movi.n	a12, 0
	movi.n	a11, 0x10
	movi.n	a10, 0x28
	call8	xQueueGenericCreate
.LVL116:
	l32r	a8, .LC64
	s32i.n	a10, a8, 0
	.loc 1 108 0
	movi.n	a13, 0
	s32i.n	a13, sp, 0
	l32r	a15, .LC65
	movi.n	a14, 0x16
	l32r	a12, .LC66
	l32r	a11, .LC68
	l32r	a10, .LC69
	call8	xTaskCreatePinnedToCore
.LVL117:
	.loc 1 110 0
	l32r	a8, .LC70
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 0
	l32r	a10, .LC71
	callx8	a8
.LVL118:
	.loc 1 111 0
	l32r	a8, .LC72
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 0
	l32r	a10, .LC73
	callx8	a8
.LVL119:
	.loc 1 113 0
	movi.n	a9, 1
	l32r	a8, .LC74
	s8i	a9, a8, 0
	.loc 1 114 0
	retw.n
.L53:
	.loc 1 116 0
	call8	hci_shut_down
.LVL120:
	.loc 1 117 0
	movi.n	a2, -1
	.loc 1 118 0
	retw.n
.LFE26:
	.size	hci_start_up, .-hci_start_up
	.section	.rodata.str1.4
	.align	4
.LC78:
	.string	"\033[0;31mE (%d) %s: xHciHostQueue failed\n\033[0m\n"
	.section	.text.hci_host_task_post,"ax",@progbits
	.literal_position
	.literal .LC75, hci_host_startup_flag
	.literal .LC76, xHciHostQueue
	.literal .LC77, .LC9
	.literal .LC79, .LC78
	.align	4
	.global	hci_host_task_post
	.type	hci_host_task_post, @function
hci_host_task_post:
.LFB28:
	.loc 1 135 0
.LVL121:
	entry	sp, 48
.LCFI15:
	.loc 1 138 0
	l32r	a8, .LC75
	l8ui	a8, a8, 0
	beqz.n	a8, .L57
	.loc 1 142 0
	movi.n	a13, 0
	s32i.n	a13, sp, 0
	.loc 1 143 0
	s32i.n	a13, sp, 4
	.loc 1 145 0
	mov.n	a12, a2
	mov.n	a11, sp
	l32r	a2, .LC76
.LVL122:
	l32i.n	a10, a2, 0
	call8	xQueueGenericSend
.LVL123:
	beqi	a10, 1, .L58
	.loc 1 146 0 discriminator 1
	call8	esp_log_timestamp
.LVL124:
	l32r	a11, .LC77
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC79
	movi.n	a10, 1
	call8	esp_log_write
.LVL125:
	.loc 1 147 0 discriminator 1
	movi.n	a2, 1
	retw.n
.LVL126:
.L57:
	.loc 1 139 0
	movi.n	a2, 1
.LVL127:
	retw.n
.L58:
	.loc 1 150 0
	movi.n	a2, 0
	.loc 1 151 0
	retw.n
.LFE28:
	.size	hci_host_task_post, .-hci_host_task_post
	.section	.rodata.str1.4
	.align	4
.LC83:
	.string	"\033[0;33mW (%d) %s: %s command complete event with no matching command. opcode: 0x%x.\033[0m\n"
	.align	4
.LC85:
	.string	"\033[0;33mW (%d) %s: %s command status event with no matching command. opcode: 0x%x\033[0m\n"
	.section	.text.filter_incoming_event,"ax",@progbits
	.literal_position
	.literal .LC80, hci_host_env
	.literal .LC81, __func__$6545
	.literal .LC82, .LC9
	.literal .LC84, .LC83
	.literal .LC86, .LC85
	.literal .LC87, hci_host_env+12
	.literal .LC88, buffer_allocator
	.align	4
	.type	filter_incoming_event, @function
filter_incoming_event:
.LFB42:
	.loc 1 431 0
.LVL128:
	entry	sp, 48
.LCFI16:
.LVL129:
	.loc 1 433 0
	addi.n	a3, a2, 8
	l16ui	a8, a2, 4
	add.n	a8, a3, a8
.LVL130:
	.loc 1 437 0
	l8ui	a3, a8, 0
.LVL131:
	.loc 1 442 0
	movi.n	a4, 0xe
	bne	a3, a4, .L60
	.loc 1 443 0
	l8ui	a5, a8, 2
	l32r	a4, .LC80
	s32i.n	a5, a4, 0
.LVL132:
	.loc 1 444 0
	l8ui	a4, a8, 3
	l8ui	a5, a8, 4
	slli	a5, a5, 8
	add.n	a5, a5, a4
	extui	a5, a5, 0, 16
.LVL133:
	.loc 1 445 0
	mov.n	a10, a5
	call8	get_waiting_command
.LVL134:
	mov.n	a4, a10
.LVL135:
	.loc 1 446 0
	bnez.n	a10, .L61
	.loc 1 447 0 discriminator 1
	call8	esp_log_timestamp
.LVL136:
	l32r	a11, .LC82
	s32i.n	a5, sp, 0
	l32r	a15, .LC81
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC84
	movi.n	a10, 2
	call8	esp_log_write
.LVL137:
	j	.L62
.L61:
	.loc 1 448 0
	l32i.n	a5, a10, 8
	beqz.n	a5, .L63
	.loc 1 449 0
	l32i.n	a11, a10, 16
	mov.n	a10, a2
	callx8	a5
.LVL138:
	j	.L62
.L63:
	.loc 1 450 0
	l32i.n	a10, a10, 4
	beqz.n	a10, .L62
	.loc 1 451 0
	mov.n	a11, a2
	call8	future_ready
.LVL139:
	j	.L62
.LVL140:
.L60:
	.loc 1 455 0
	movi.n	a4, 0xf
	bne	a3, a4, .L72
.LBB6:
	.loc 1 457 0
	l8ui	a6, a8, 2
.LVL141:
	.loc 1 458 0
	l8ui	a5, a8, 3
	l32r	a4, .LC80
	s32i.n	a5, a4, 0
.LVL142:
	.loc 1 459 0
	l8ui	a4, a8, 4
	l8ui	a5, a8, 5
	slli	a5, a5, 8
	add.n	a5, a5, a4
	extui	a5, a5, 0, 16
.LVL143:
	.loc 1 463 0
	mov.n	a10, a5
	call8	get_waiting_command
.LVL144:
	mov.n	a4, a10
.LVL145:
	.loc 1 464 0
	bnez.n	a10, .L65
	.loc 1 465 0 discriminator 1
	call8	esp_log_timestamp
.LVL146:
	l32r	a11, .LC82
	s32i.n	a5, sp, 0
	l32r	a15, .LC81
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC86
	movi.n	a10, 2
	call8	esp_log_write
.LVL147:
	j	.L62
.L65:
	.loc 1 466 0
	l32i.n	a5, a10, 12
	beqz.n	a5, .L62
	.loc 1 467 0
	l32i.n	a12, a10, 16
	l32i.n	a11, a10, 20
	mov.n	a10, a6
	callx8	a5
.LVL148:
.L62:
.LBE6:
	.loc 1 475 0
	l32r	a10, .LC87
	call8	restart_command_waiting_response_timer
.LVL149:
	.loc 1 478 0
	l32r	a5, .LC80
	l32i.n	a5, a5, 0
	beqz.n	a5, .L66
	.loc 1 479 0 discriminator 1
	l32r	a5, .LC80
	l32i.n	a10, a5, 4
	call8	fixed_queue_is_empty
.LVL150:
	.loc 1 478 0 discriminator 1
	bnez.n	a10, .L66
	.loc 1 480 0
	movi.n	a10, -1
	call8	hci_host_task_post
.LVL151:
.L66:
	.loc 1 483 0
	beqz.n	a4, .L67
	.loc 1 485 0
	movi.n	a5, 0xf
	beq	a3, a5, .L68
	.loc 1 486 0 discriminator 1
	l32i.n	a5, a4, 8
	.loc 1 485 0 discriminator 1
	bnez.n	a5, .L69
	.loc 1 486 0
	l32i.n	a5, a4, 4
	bnez.n	a5, .L69
.L68:
	.loc 1 487 0
	l32r	a5, .LC88
	l32i.n	a5, a5, 0
	l32i.n	a5, a5, 4
	mov.n	a10, a2
	callx8	a5
.LVL152:
.L69:
	.loc 1 491 0
	movi.n	a2, 0xe
.LVL153:
	beq	a3, a2, .L70
	.loc 1 491 0 is_stmt 0 discriminator 1
	l32i.n	a2, a4, 12
	bnez.n	a2, .L71
.L70:
	.loc 1 492 0 is_stmt 1
	l32r	a2, .LC88
	l32i.n	a2, a2, 0
	l32i.n	a2, a2, 4
	l32i.n	a10, a4, 20
	callx8	a2
.LVL154:
.L71:
	.loc 1 495 0
	mov.n	a10, a4
	call8	free
.LVL155:
	.loc 1 500 0
	movi.n	a2, 1
	retw.n
.LVL156:
.L67:
	.loc 1 497 0
	l32r	a3, .LC88
.LVL157:
	l32i.n	a3, a3, 0
	l32i.n	a3, a3, 4
	mov.n	a10, a2
	callx8	a3
.LVL158:
	.loc 1 500 0
	movi.n	a2, 1
.LVL159:
	retw.n
.LVL160:
.L72:
	.loc 1 473 0
	movi.n	a2, 0
.LVL161:
	.loc 1 501 0
	retw.n
.LFE42:
	.size	filter_incoming_event, .-filter_incoming_event
	.section	.text.hal_says_packet_ready,"ax",@progbits
	.literal_position
	.literal .LC89, 4096
	.literal .LC90, packet_fragmenter
	.align	4
	.type	hal_says_packet_ready, @function
hal_says_packet_ready:
.LFB41:
	.loc 1 419 0
.LVL162:
	entry	sp, 32
.LCFI17:
	.loc 1 420 0
	l16ui	a9, a2, 0
	l32r	a8, .LC89
	beq	a9, a8, .L74
	.loc 1 421 0
	l32r	a8, .LC90
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 16
	mov.n	a10, a2
	callx8	a8
.LVL163:
	retw.n
.L74:
	.loc 1 422 0
	mov.n	a10, a2
	call8	filter_incoming_event
.LVL164:
	bnez.n	a10, .L73
	.loc 1 423 0
	mov.n	a10, a2
	call8	dispatch_reassembled
.LVL165:
.L73:
	retw.n
.LFE41:
	.size	hal_says_packet_ready, .-hal_says_packet_ready
	.section	.rodata.str1.4
	.align	4
.LC91:
	.string	"wait_entry != NULL"
	.align	4
.LC94:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/hci/hci_layer.c"
	.section	.text.transmit_command_futured,"ax",@progbits
	.literal_position
	.literal .LC92, .LC91
	.literal .LC93, __func__$6499
	.literal .LC95, .LC94
	.literal .LC96, 8192
	.literal .LC97, hci_host_env
	.align	4
	.type	transmit_command_futured, @function
transmit_command_futured:
.LFB33:
	.loc 1 281 0
.LVL166:
	entry	sp, 32
.LCFI18:
	.loc 1 282 0
	movi.n	a11, 0x18
	movi.n	a10, 1
	call8	calloc
.LVL167:
	mov.n	a3, a10
.LVL168:
	.loc 1 283 0
	bnez.n	a10, .L77
	.loc 1 283 0 is_stmt 0 discriminator 1
	l32r	a13, .LC92
	l32r	a12, .LC93
	movi	a11, 0x11b
	l32r	a10, .LC95
	call8	__assert_func
.LVL169:
.L77:
	.loc 1 285 0 is_stmt 1
	call8	future_new
.LVL170:
	mov.n	a4, a10
.LVL171:
	.loc 1 287 0
	addi.n	a9, a2, 8
	l16ui	a8, a2, 4
	add.n	a8, a9, a8
.LVL172:
	.loc 1 288 0
	l8ui	a9, a8, 0
	l8ui	a8, a8, 1
.LVL173:
	slli	a8, a8, 8
	add.n	a8, a8, a9
	s16i	a8, a3, 0
.LVL174:
	.loc 1 289 0
	s32i.n	a10, a3, 4
	.loc 1 290 0
	s32i.n	a2, a3, 20
	.loc 1 294 0
	l32r	a5, .LC96
	s16i	a5, a2, 0
	.loc 1 296 0
	mov.n	a11, a3
	l32r	a2, .LC97
.LVL175:
	l32i.n	a10, a2, 4
	call8	fixed_queue_enqueue
.LVL176:
	.loc 1 297 0
	movi.n	a10, -1
	call8	hci_host_task_post
.LVL177:
	.loc 1 299 0
	mov.n	a2, a4
	retw.n
.LFE33:
	.size	transmit_command_futured, .-transmit_command_futured
	.section	.rodata.str1.4
	.align	4
.LC100:
	.string	"\033[0;31mE (%d) %s: %s couldn't allocate space for wait entry.\033[0m\n"
	.section	.text.transmit_command,"ax",@progbits
	.literal_position
	.literal .LC98, __func__$6494
	.literal .LC99, .LC9
	.literal .LC101, .LC100
	.literal .LC102, 8192
	.literal .LC103, hci_host_env
	.align	4
	.type	transmit_command, @function
transmit_command:
.LFB32:
	.loc 1 254 0
.LVL178:
	entry	sp, 32
.LCFI19:
	.loc 1 256 0
	movi.n	a11, 0x18
	movi.n	a10, 1
	call8	calloc
.LVL179:
	.loc 1 257 0
	bnez.n	a10, .L79
	.loc 1 258 0 discriminator 1
	call8	esp_log_timestamp
.LVL180:
	l32r	a11, .LC99
	l32r	a15, .LC98
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC101
	movi.n	a10, 1
	call8	esp_log_write
.LVL181:
	.loc 1 259 0 discriminator 1
	retw.n
.LVL182:
.L79:
	.loc 1 262 0
	addi.n	a9, a2, 8
	l16ui	a8, a2, 4
	add.n	a8, a9, a8
.LVL183:
	.loc 1 263 0
	l8ui	a9, a8, 0
	l8ui	a8, a8, 1
.LVL184:
	slli	a8, a8, 8
	add.n	a8, a8, a9
	s16i	a8, a10, 0
.LVL185:
	.loc 1 264 0
	s32i.n	a3, a10, 8
	.loc 1 265 0
	s32i.n	a4, a10, 12
	.loc 1 266 0
	s32i.n	a2, a10, 20
	.loc 1 267 0
	s32i.n	a5, a10, 16
	.loc 1 271 0
	l32r	a3, .LC102
.LVL186:
	s16i	a3, a2, 0
.LVL187:
	.loc 1 275 0
	mov.n	a11, a10
	l32r	a2, .LC103
.LVL188:
	l32i.n	a10, a2, 4
.LVL189:
	call8	fixed_queue_enqueue
.LVL190:
	.loc 1 276 0
	movi.n	a10, -1
	call8	hci_host_task_post
.LVL191:
	retw.n
.LFE32:
	.size	transmit_command, .-transmit_command
	.section	.rodata.str1.4
	.align	4
.LC107:
	.string	"\033[0;33mW (%d) %s: %s legacy transmit of command. Use transmit_command instead.\n\033[0m\n"
	.section	.text.transmit_downward,"ax",@progbits
	.literal_position
	.literal .LC104, 8192
	.literal .LC105, __func__$6506
	.literal .LC106, .LC9
	.literal .LC108, .LC107
	.literal .LC109, hci_host_env
	.align	4
	.type	transmit_downward, @function
transmit_downward:
.LFB34:
	.loc 1 302 0
.LVL192:
	entry	sp, 32
.LCFI20:
	extui	a2, a2, 0, 16
	.loc 1 303 0
	l32r	a8, .LC104
	bne	a2, a8, .L82
	.loc 1 304 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	mov.n	a10, a3
	call8	transmit_command
.LVL193:
	.loc 1 305 0
	call8	esp_log_timestamp
.LVL194:
	l32r	a11, .LC106
	l32r	a15, .LC105
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC108
	movi.n	a10, 2
	call8	esp_log_write
.LVL195:
	j	.L83
.L82:
	.loc 1 307 0
	mov.n	a11, a3
	l32r	a2, .LC109
.LVL196:
	l32i.n	a10, a2, 8
	call8	fixed_queue_enqueue
.LVL197:
.L83:
	.loc 1 310 0
	movi.n	a10, -1
	call8	hci_host_task_post
.LVL198:
	retw.n
.LFE34:
	.size	transmit_downward, .-transmit_downward
	.section	.text.hci_layer_get_interface,"ax",@progbits
	.literal_position
	.literal .LC110, buffer_allocator
	.literal .LC111, hal
	.literal .LC112, packet_fragmenter
	.literal .LC113, interface
	.align	4
	.global	hci_layer_get_interface
	.type	hci_layer_get_interface, @function
hci_layer_get_interface:
.LFB47:
	.loc 1 575 0
	entry	sp, 32
.LCFI21:
	.loc 1 576 0
	call8	buffer_allocator_get_interface
.LVL199:
	l32r	a8, .LC110
	s32i.n	a10, a8, 0
	.loc 1 577 0
	call8	hci_hal_h4_get_interface
.LVL200:
	l32r	a8, .LC111
	s32i.n	a10, a8, 0
	.loc 1 578 0
	call8	packet_fragmenter_get_interface
.LVL201:
	l32r	a8, .LC112
	s32i.n	a10, a8, 0
	.loc 1 580 0
	call8	init_layer_interface
.LVL202:
	.loc 1 582 0
	l32r	a2, .LC113
	retw.n
.LFE47:
	.size	hci_layer_get_interface, .-hci_layer_get_interface
	.section	.rodata.__func__$6494,"a",@progbits
	.align	4
	.type	__func__$6494, @object
	.size	__func__$6494, 17
__func__$6494:
	.string	"transmit_command"
	.section	.rodata.__func__$6499,"a",@progbits
	.align	4
	.type	__func__$6499, @object
	.size	__func__$6499, 25
__func__$6499:
	.string	"transmit_command_futured"
	.section	.rodata.__func__$6506,"a",@progbits
	.align	4
	.type	__func__$6506, @object
	.size	__func__$6506, 18
__func__$6506:
	.string	"transmit_downward"
	.section	.rodata.__func__$6534,"a",@progbits
	.align	4
	.type	__func__$6534, @object
	.size	__func__$6534, 18
__func__$6534:
	.string	"command_timed_out"
	.section	.rodata.__func__$6475,"a",@progbits
	.align	4
	.type	__func__$6475, @object
	.size	__func__$6475, 19
__func__$6475:
	.string	"hci_layer_init_env"
	.section	.rodata.__func__$6554,"a",@progbits
	.align	4
	.type	__func__$6554, @object
	.size	__func__$6554, 19
__func__$6554:
	.string	"event_to_data_type"
	.section	.rodata.__func__$6545,"a",@progbits
	.align	4
	.type	__func__$6545, @object
	.size	__func__$6545, 22
__func__$6545:
	.string	"filter_incoming_event"
	.section	.rodata.packet_fragmenter_callbacks,"a",@progbits
	.align	4
	.type	packet_fragmenter_callbacks, @object
	.size	packet_fragmenter_callbacks, 12
packet_fragmenter_callbacks:
	.word	transmit_fragment
	.word	dispatch_reassembled
	.word	fragmenter_transmit_finished
	.section	.bss.packet_fragmenter,"aw",@nobits
	.align	4
	.type	packet_fragmenter, @object
	.size	packet_fragmenter, 4
packet_fragmenter:
	.zero	4
	.section	.rodata.hal_callbacks,"a",@progbits
	.align	4
	.type	hal_callbacks, @object
	.size	hal_callbacks, 4
hal_callbacks:
	.word	hal_says_packet_ready
	.section	.bss.hal,"aw",@nobits
	.align	4
	.type	hal, @object
	.size	hal, 4
hal:
	.zero	4
	.section	.bss.buffer_allocator,"aw",@nobits
	.align	4
	.type	buffer_allocator, @object
	.size	buffer_allocator, 4
buffer_allocator:
	.zero	4
	.section	.bss.hci_host_startup_flag,"aw",@nobits
	.type	hci_host_startup_flag, @object
	.size	hci_host_startup_flag, 1
hci_host_startup_flag:
	.zero	1
	.section	.bss.xHciHostQueue,"aw",@nobits
	.align	4
	.type	xHciHostQueue, @object
	.size	xHciHostQueue, 4
xHciHostQueue:
	.zero	4
	.section	.bss.xHciHostTaskHandle,"aw",@nobits
	.align	4
	.type	xHciHostTaskHandle, @object
	.size	xHciHostTaskHandle, 4
xHciHostTaskHandle:
	.zero	4
	.section	.bss.hci_host_env,"aw",@nobits
	.align	4
	.type	hci_host_env, @object
	.size	hci_host_env, 28
hci_host_env:
	.zero	28
	.section	.bss.interface,"aw",@nobits
	.align	4
	.type	interface, @object
	.size	interface, 16
interface:
	.zero	16
	.section	.bss.interface_created,"aw",@nobits
	.type	interface_created, @object
	.size	interface_created, 1
interface_created:
	.zero	1
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
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI0-.LFB46
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI1-.LFB44
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI2-.LFB37
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI3-.LFB45
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI4-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI5-.LFB43
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI6-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI7-.LFB31
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI8-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI9-.LFB40
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI10-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI11-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI12-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI13-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI14-.LFB26
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI15-.LFB28
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI16-.LFB42
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI17-.LFB41
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI18-.LFB33
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
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI20-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x4
	.4byte	.LCFI21-.LFB47
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE42:
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/hci/include/hci/hci_hal.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/allocator.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/queue.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/semphr.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/semaphore.h"
	.file 14 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/future.h"
	.file 15 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/hci/include/hci/packet_fragmenter.h"
	.file 16 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/hci/include/hci/hci_layer.h"
	.file 17 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/list.h"
	.file 18 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/alarm.h"
	.file 19 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/thread.h"
	.file 20 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/mutex.h"
	.file 21 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/fixed_queue.h"
	.file 22 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/include/esp_bt.h"
	.file 23 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.file 24 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.file 25 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/hci/include/hci/buffer_allocator.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x19a2
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF208
	.byte	0xc
	.4byte	.LASF209
	.4byte	.LASF210
	.4byte	.Ldebug_ranges0+0x18
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
	.byte	0x2d
	.4byte	0x70
	.uleb128 0x6
	.byte	0x4
	.4byte	0xae
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x21
	.4byte	0xae
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0x22
	.4byte	0xb9
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF20
	.uleb128 0x8
	.byte	0x8
	.byte	0x5
	.byte	0xc6
	.4byte	0x137
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x5
	.byte	0xc7
	.4byte	0xb9
	.byte	0
	.uleb128 0xa
	.string	"len"
	.byte	0x5
	.byte	0xc8
	.4byte	0xb9
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x5
	.byte	0xc9
	.4byte	0xb9
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x5
	.byte	0xca
	.4byte	0xb9
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x5
	.byte	0xcb
	.4byte	0x137
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.4byte	0xae
	.4byte	0x146
	.uleb128 0xc
	.4byte	0x90
	.byte	0
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x5
	.byte	0xcc
	.4byte	0xf2
	.uleb128 0xb
	.4byte	0xd5
	.4byte	0x161
	.uleb128 0xd
	.4byte	0x90
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x167
	.uleb128 0xe
	.4byte	0x172
	.uleb128 0xf
	.4byte	0x97
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x37
	.byte	0x6
	.byte	0x1f
	.4byte	0x1a3
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
	.uleb128 0x10
	.byte	0x4
	.4byte	0x37
	.byte	0x7
	.byte	0x1b
	.4byte	0x1c8
	.uleb128 0x11
	.4byte	.LASF32
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF33
	.byte	0x2
	.uleb128 0x11
	.4byte	.LASF34
	.byte	0x3
	.uleb128 0x11
	.4byte	.LASF35
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x7
	.byte	0x20
	.4byte	0x1a3
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x7
	.byte	0x22
	.4byte	0x1de
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1e4
	.uleb128 0xe
	.4byte	0x1ef
	.uleb128 0xf
	.4byte	0x1ef
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x146
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.byte	0x24
	.4byte	0x20a
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x7
	.byte	0x28
	.4byte	0x1d3
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x7
	.byte	0x2f
	.4byte	0x1f5
	.uleb128 0x12
	.4byte	.LASF54
	.byte	0xc
	.byte	0x7
	.byte	0x31
	.4byte	0x246
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x7
	.byte	0x36
	.4byte	0x260
	.byte	0
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x7
	.byte	0x39
	.4byte	0xa0
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x7
	.byte	0x4e
	.4byte	0x27f
	.byte	0x8
	.byte	0
	.uleb128 0x13
	.4byte	0xeb
	.4byte	0x255
	.uleb128 0xf
	.4byte	0x255
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x25b
	.uleb128 0x14
	.4byte	0x20a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x246
	.uleb128 0x13
	.4byte	0xb9
	.4byte	0x27f
	.uleb128 0xf
	.4byte	0x1c8
	.uleb128 0xf
	.4byte	0xcf
	.uleb128 0xf
	.4byte	0xb9
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x266
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0x8
	.byte	0x1b
	.4byte	0x290
	.uleb128 0x6
	.byte	0x4
	.4byte	0x296
	.uleb128 0x13
	.4byte	0x97
	.4byte	0x2a5
	.uleb128 0xf
	.4byte	0x2c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x8
	.byte	0x1c
	.4byte	0x161
	.uleb128 0x8
	.byte	0x8
	.byte	0x8
	.byte	0x1e
	.4byte	0x2d1
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x8
	.byte	0x1f
	.4byte	0x285
	.byte	0
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x8
	.byte	0x20
	.4byte	0x2a5
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0x8
	.byte	0x21
	.4byte	0x2b0
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0x9
	.byte	0x6f
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0x9
	.byte	0x76
	.4byte	0xc4
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0xa
	.byte	0x6b
	.4byte	0x97
	.uleb128 0x3
	.4byte	.LASF51
	.byte	0xb
	.byte	0x58
	.4byte	0x97
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0xc
	.byte	0x4f
	.4byte	0x2fd
	.uleb128 0x3
	.4byte	.LASF53
	.byte	0xd
	.byte	0x1d
	.4byte	0x308
	.uleb128 0x12
	.4byte	.LASF55
	.byte	0xc
	.byte	0xe
	.byte	0x18
	.4byte	0x34f
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0xe
	.byte	0x19
	.4byte	0xeb
	.byte	0
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0xe
	.byte	0x1a
	.4byte	0x313
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0xe
	.byte	0x1b
	.4byte	0x97
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0xe
	.byte	0x1d
	.4byte	0x31e
	.uleb128 0x12
	.4byte	.LASF60
	.byte	0x14
	.byte	0xf
	.byte	0x2a
	.4byte	0x3a3
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0xf
	.byte	0x2c
	.4byte	0x513
	.byte	0
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0xf
	.byte	0x2f
	.4byte	0xa0
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0xf
	.byte	0x32
	.4byte	0x51e
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0xf
	.byte	0x35
	.4byte	0x1de
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF65
	.byte	0xf
	.byte	0x39
	.4byte	0x1de
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0x10
	.byte	0x3a
	.4byte	0xb9
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0x10
	.byte	0x45
	.4byte	0x3b9
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3bf
	.uleb128 0xe
	.4byte	0x3cf
	.uleb128 0xf
	.4byte	0x1ef
	.uleb128 0xf
	.4byte	0x97
	.byte	0
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0x10
	.byte	0x46
	.4byte	0x3da
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3e0
	.uleb128 0xe
	.4byte	0x3f5
	.uleb128 0xf
	.4byte	0xae
	.uleb128 0xf
	.4byte	0x1ef
	.uleb128 0xf
	.4byte	0x97
	.byte	0
	.uleb128 0x12
	.4byte	.LASF69
	.byte	0x10
	.byte	0x10
	.byte	0x48
	.4byte	0x432
	.uleb128 0x9
	.4byte	.LASF70
	.byte	0x10
	.byte	0x4d
	.4byte	0xa0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF71
	.byte	0x10
	.byte	0x50
	.4byte	0x44c
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF72
	.byte	0x10
	.byte	0x57
	.4byte	0x467
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF73
	.byte	0x10
	.byte	0x5a
	.4byte	0x47d
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.4byte	0x44c
	.uleb128 0xf
	.4byte	0x1ef
	.uleb128 0xf
	.4byte	0x3ae
	.uleb128 0xf
	.4byte	0x3cf
	.uleb128 0xf
	.4byte	0x97
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x432
	.uleb128 0x13
	.4byte	0x461
	.4byte	0x461
	.uleb128 0xf
	.4byte	0x1ef
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x34f
	.uleb128 0x6
	.byte	0x4
	.4byte	0x452
	.uleb128 0xe
	.4byte	0x47d
	.uleb128 0xf
	.4byte	0xb9
	.uleb128 0xf
	.4byte	0x97
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x46d
	.uleb128 0x3
	.4byte	.LASF69
	.byte	0x10
	.byte	0x5b
	.4byte	0x3f5
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0xf
	.byte	0x1a
	.4byte	0x499
	.uleb128 0x6
	.byte	0x4
	.4byte	0x49f
	.uleb128 0xe
	.4byte	0x4af
	.uleb128 0xf
	.4byte	0x1ef
	.uleb128 0xf
	.4byte	0xeb
	.byte	0
	.uleb128 0x3
	.4byte	.LASF75
	.byte	0xf
	.byte	0x1b
	.4byte	0x1de
	.uleb128 0x3
	.4byte	.LASF76
	.byte	0xf
	.byte	0x1c
	.4byte	0x499
	.uleb128 0x8
	.byte	0xc
	.byte	0xf
	.byte	0x1e
	.4byte	0x4f2
	.uleb128 0x9
	.4byte	.LASF77
	.byte	0xf
	.byte	0x20
	.4byte	0x4ba
	.byte	0
	.uleb128 0x9
	.4byte	.LASF78
	.byte	0xf
	.byte	0x23
	.4byte	0x4af
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0xf
	.byte	0x27
	.4byte	0x48e
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF80
	.byte	0xf
	.byte	0x28
	.4byte	0x4c5
	.uleb128 0xe
	.4byte	0x508
	.uleb128 0xf
	.4byte	0x508
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x50e
	.uleb128 0x14
	.4byte	0x4f2
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4fd
	.uleb128 0x15
	.4byte	0x1ef
	.uleb128 0x6
	.byte	0x4
	.4byte	0x519
	.uleb128 0x3
	.4byte	.LASF81
	.byte	0x11
	.byte	0x7
	.4byte	0x52f
	.uleb128 0x16
	.4byte	.LASF81
	.uleb128 0x3
	.4byte	.LASF82
	.byte	0x11
	.byte	0xa
	.4byte	0x53f
	.uleb128 0x16
	.4byte	.LASF82
	.uleb128 0x3
	.4byte	.LASF83
	.byte	0x12
	.byte	0x19
	.4byte	0x54f
	.uleb128 0x16
	.4byte	.LASF84
	.uleb128 0x12
	.4byte	.LASF85
	.byte	0x10
	.byte	0x13
	.byte	0x1c
	.4byte	0x590
	.uleb128 0xa
	.string	"sig"
	.byte	0x13
	.byte	0x1d
	.4byte	0xc4
	.byte	0
	.uleb128 0xa
	.string	"par"
	.byte	0x13
	.byte	0x1e
	.4byte	0x97
	.byte	0x4
	.uleb128 0xa
	.string	"cb"
	.byte	0x13
	.byte	0x1f
	.4byte	0x97
	.byte	0x8
	.uleb128 0xa
	.string	"arg"
	.byte	0x13
	.byte	0x20
	.4byte	0x97
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF86
	.byte	0x13
	.byte	0x22
	.4byte	0x554
	.uleb128 0x10
	.byte	0x4
	.4byte	0x37
	.byte	0x13
	.byte	0x2c
	.4byte	0x5b4
	.uleb128 0x11
	.4byte	.LASF87
	.byte	0
	.uleb128 0x11
	.4byte	.LASF88
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x37
	.byte	0x13
	.byte	0x31
	.4byte	0x5f1
	.uleb128 0x11
	.4byte	.LASF89
	.byte	0
	.uleb128 0x11
	.4byte	.LASF90
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF91
	.byte	0x2
	.uleb128 0x11
	.4byte	.LASF92
	.byte	0x3
	.uleb128 0x11
	.4byte	.LASF93
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF94
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF95
	.byte	0x6
	.uleb128 0x11
	.4byte	.LASF96
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF97
	.byte	0x13
	.byte	0x68
	.4byte	0xc4
	.uleb128 0x10
	.byte	0x4
	.4byte	0x37
	.byte	0x13
	.byte	0x6a
	.4byte	0x615
	.uleb128 0x11
	.4byte	.LASF98
	.byte	0
	.uleb128 0x11
	.4byte	.LASF99
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF100
	.byte	0x13
	.byte	0x6d
	.4byte	0x5fc
	.uleb128 0x3
	.4byte	.LASF101
	.byte	0x14
	.byte	0x21
	.4byte	0x308
	.uleb128 0x3
	.4byte	.LASF102
	.byte	0x15
	.byte	0x1f
	.4byte	0x636
	.uleb128 0x16
	.4byte	.LASF102
	.uleb128 0x6
	.byte	0x4
	.4byte	0x62b
	.uleb128 0x8
	.byte	0x18
	.byte	0x1
	.byte	0x25
	.4byte	0x692
	.uleb128 0x9
	.4byte	.LASF103
	.byte	0x1
	.byte	0x26
	.4byte	0xb9
	.byte	0
	.uleb128 0x9
	.4byte	.LASF104
	.byte	0x1
	.byte	0x27
	.4byte	0x461
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF105
	.byte	0x1
	.byte	0x28
	.4byte	0x3ae
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF106
	.byte	0x1
	.byte	0x29
	.4byte	0x3cf
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF107
	.byte	0x1
	.byte	0x2a
	.4byte	0x97
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF108
	.byte	0x1
	.byte	0x2b
	.4byte	0x1ef
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.4byte	.LASF109
	.byte	0x1
	.byte	0x2c
	.4byte	0x641
	.uleb128 0x8
	.byte	0x10
	.byte	0x1
	.byte	0x2e
	.4byte	0x6d6
	.uleb128 0x9
	.4byte	.LASF110
	.byte	0x1
	.byte	0x2f
	.4byte	0xeb
	.byte	0
	.uleb128 0x9
	.4byte	.LASF111
	.byte	0x1
	.byte	0x30
	.4byte	0x6d6
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF112
	.byte	0x1
	.byte	0x31
	.4byte	0x6dc
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF113
	.byte	0x1
	.byte	0x32
	.4byte	0x620
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x544
	.uleb128 0x6
	.byte	0x4
	.4byte	0x534
	.uleb128 0x3
	.4byte	.LASF114
	.byte	0x1
	.byte	0x33
	.4byte	0x69d
	.uleb128 0x8
	.byte	0x1c
	.byte	0x1
	.byte	0x35
	.4byte	0x726
	.uleb128 0x9
	.4byte	.LASF115
	.byte	0x1
	.byte	0x36
	.4byte	0x25
	.byte	0
	.uleb128 0x9
	.4byte	.LASF116
	.byte	0x1
	.byte	0x37
	.4byte	0x63b
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF117
	.byte	0x1
	.byte	0x38
	.4byte	0x63b
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF118
	.byte	0x1
	.byte	0x3a
	.4byte	0x6e2
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF119
	.byte	0x1
	.byte	0x41
	.4byte	0x6ed
	.uleb128 0x17
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x22a
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x18
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x204
	.4byte	0x1c8
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7c0
	.uleb128 0x19
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x204
	.4byte	0xb9
	.4byte	.LLST0
	.uleb128 0x1a
	.4byte	.LASF135
	.4byte	0x7d0
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6554
	.uleb128 0x1b
	.4byte	.LVL1
	.4byte	0x17c5
	.uleb128 0x1c
	.4byte	.LVL2
	.4byte	0x17d0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6554
	.uleb128 0x1d
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xa7
	.4byte	0x7d0
	.uleb128 0xd
	.4byte	0x90
	.byte	0x12
	.byte	0
	.uleb128 0x14
	.4byte	0x7c0
	.uleb128 0x1e
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x15d
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x84d
	.uleb128 0x1f
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x15d
	.4byte	0x1ef
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x19
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x15d
	.4byte	0xeb
	.4byte	.LLST1
	.uleb128 0x20
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x15f
	.4byte	0xb9
	.4byte	.LLST2
	.uleb128 0x20
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x160
	.4byte	0x1c8
	.4byte	.LLST3
	.uleb128 0x21
	.4byte	.LVL12
	.4byte	0x743
	.4byte	0x83d
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL16
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x213
	.4byte	0x952
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x952
	.uleb128 0x19
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x213
	.4byte	0x3a3
	.4byte	.LLST4
	.uleb128 0x23
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x215
	.4byte	0x958
	.uleb128 0x6
	.byte	0x3
	.4byte	hci_host_env+12
	.byte	0x9f
	.uleb128 0x24
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x921
	.uleb128 0x23
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x218
	.4byte	0x95e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x25
	.4byte	.Ldebug_ranges0+0
	.4byte	0x8fa
	.uleb128 0x20
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x21b
	.4byte	0x952
	.4byte	.LLST5
	.uleb128 0x21
	.4byte	.LVL22
	.4byte	0x17db
	.4byte	0x8d2
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL27
	.4byte	0x17e6
	.4byte	0x8e6
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL28
	.4byte	0x17f1
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	hci_host_env+24
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL20
	.4byte	0x17fc
	.uleb128 0x21
	.4byte	.LVL24
	.4byte	0x1807
	.4byte	0x917
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL30
	.4byte	0x1812
	.byte	0
	.uleb128 0x21
	.4byte	.LVL19
	.4byte	0x181d
	.4byte	0x93e
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	hci_host_env+24
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL31
	.4byte	0x17f1
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	hci_host_env+24
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x692
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6e2
	.uleb128 0x6
	.byte	0x4
	.4byte	0x964
	.uleb128 0x14
	.4byte	0x524
	.uleb128 0x26
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x17f
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9d3
	.uleb128 0x1f
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x17f
	.4byte	0x958
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x21
	.4byte	.LVL34
	.4byte	0x181d
	.4byte	0x9a7
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL35
	.4byte	0x1828
	.uleb128 0x1b
	.4byte	.LVL36
	.4byte	0x1833
	.uleb128 0x1b
	.4byte	.LVL37
	.4byte	0x183e
	.uleb128 0x1c
	.4byte	.LVL38
	.4byte	0x17f1
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x1f8
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa23
	.uleb128 0x1f
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x1f8
	.4byte	0x1ef
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x21
	.4byte	.LVL40
	.4byte	0x1849
	.4byte	0xa16
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x27
	.4byte	.LVL41
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x169
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa74
	.uleb128 0x1f
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x169
	.4byte	0x1ef
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x19
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x169
	.4byte	0xeb
	.4byte	.LLST6
	.uleb128 0x28
	.4byte	.LVL44
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.4byte	0xa6a
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL45
	.4byte	0x9d3
	.byte	0
	.uleb128 0x29
	.4byte	.LASF133
	.byte	0x1
	.byte	0xd5
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb0c
	.uleb128 0x2a
	.string	"arg"
	.byte	0x1
	.byte	0xd5
	.4byte	0x97
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2b
	.string	"e"
	.byte	0x1
	.byte	0xe0
	.4byte	0x590
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.4byte	0xae3
	.uleb128 0x2c
	.string	"pkt"
	.byte	0x1
	.byte	0xe8
	.4byte	0x1ef
	.4byte	.LLST7
	.uleb128 0x1b
	.4byte	.LVL53
	.4byte	0x1854
	.uleb128 0x1b
	.4byte	.LVL54
	.4byte	0x185f
	.uleb128 0x1b
	.4byte	.LVL55
	.4byte	0x1854
	.uleb128 0x1b
	.4byte	.LVL56
	.4byte	0x185f
	.byte	0
	.uleb128 0x21
	.4byte	.LVL47
	.4byte	0x186a
	.4byte	0xb02
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL48
	.4byte	0x1876
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF134
	.byte	0x1
	.byte	0x99
	.4byte	0x25
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xce9
	.uleb128 0x2e
	.4byte	.LASF125
	.byte	0x1
	.byte	0x9b
	.4byte	0x958
	.4byte	.LLST8
	.uleb128 0x1a
	.4byte	.LASF135
	.4byte	0xce9
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6475
	.uleb128 0x21
	.4byte	.LVL57
	.4byte	0x1882
	.4byte	0xb57
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0xfe
	.byte	0
	.uleb128 0x21
	.4byte	.LVL58
	.4byte	0x188d
	.4byte	0xb6e
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	event_command_ready
	.byte	0
	.uleb128 0x21
	.4byte	.LVL59
	.4byte	0x1882
	.4byte	0xb82
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0xfe
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL60
	.4byte	0x17c5
	.uleb128 0x21
	.4byte	.LVL61
	.4byte	0x17d0
	.4byte	0xbc2
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC27
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6475
	.byte	0
	.uleb128 0x21
	.4byte	.LVL62
	.4byte	0x188d
	.4byte	0xbd9
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	event_packet_ready
	.byte	0
	.uleb128 0x21
	.4byte	.LVL63
	.4byte	0x1898
	.4byte	0xbec
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL65
	.4byte	0x17c5
	.uleb128 0x21
	.4byte	.LVL66
	.4byte	0x17d0
	.4byte	0xc2c
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6475
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL68
	.4byte	0x17c5
	.uleb128 0x21
	.4byte	.LVL69
	.4byte	0x17d0
	.4byte	0xc6c
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC32
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6475
	.byte	0
	.uleb128 0x21
	.4byte	.LVL70
	.4byte	0x18a3
	.4byte	0xc83
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	hci_host_env+24
	.byte	0
	.uleb128 0x21
	.4byte	.LVL72
	.4byte	0x18ae
	.4byte	0xcac
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC38
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	command_timed_out
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	hci_host_env+12
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL73
	.4byte	0x17c5
	.uleb128 0x1c
	.4byte	.LVL74
	.4byte	0x17d0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC40
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6475
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0x7c0
	.uleb128 0x26
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x18d
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe07
	.uleb128 0x19
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x18d
	.4byte	0x97
	.4byte	.LLST9
	.uleb128 0x20
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x18f
	.4byte	0x958
	.4byte	.LLST10
	.uleb128 0x20
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x190
	.4byte	0x952
	.4byte	.LLST11
	.uleb128 0x1a
	.4byte	.LASF135
	.4byte	0xe17
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6534
	.uleb128 0x21
	.4byte	.LVL77
	.4byte	0x181d
	.4byte	0xd5d
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL78
	.4byte	0x1833
	.uleb128 0x1b
	.4byte	.LVL79
	.4byte	0x18b9
	.uleb128 0x21
	.4byte	.LVL83
	.4byte	0x17f1
	.4byte	0xd83
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL84
	.4byte	0x17c5
	.uleb128 0x21
	.4byte	.LVL85
	.4byte	0x17d0
	.4byte	0xdc3
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC44
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6534
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL86
	.4byte	0x17c5
	.uleb128 0x1c
	.4byte	.LVL88
	.4byte	0x17d0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC46
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6534
	.uleb128 0x1d
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xa7
	.4byte	0xe17
	.uleb128 0xd
	.4byte	0x90
	.byte	0x11
	.byte	0
	.uleb128 0x14
	.4byte	0xe07
	.uleb128 0x1e
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x154
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe61
	.uleb128 0x1f
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x154
	.4byte	0x63b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x20
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x156
	.4byte	0x1ef
	.4byte	.LLST12
	.uleb128 0x1c
	.4byte	.LVL90
	.4byte	0x18c4
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x13b
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf3d
	.uleb128 0x19
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x13b
	.4byte	0x63b
	.4byte	.LLST13
	.uleb128 0x20
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x13d
	.4byte	0x952
	.4byte	.LLST14
	.uleb128 0x20
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x13e
	.4byte	0x958
	.4byte	.LLST15
	.uleb128 0x21
	.4byte	.LVL94
	.4byte	0x18c4
	.4byte	0xebb
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL96
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2f
	.4byte	.LVL97
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x21
	.4byte	.LVL98
	.4byte	0x18cf
	.4byte	0xedf
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL99
	.4byte	0x181d
	.4byte	0xef9
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x21
	.4byte	.LVL100
	.4byte	0x18da
	.4byte	0xf0d
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL101
	.4byte	0x17f1
	.4byte	0xf21
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL102
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.4byte	.LVL104
	.4byte	0x969
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	hci_host_env+12
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LASF140
	.byte	0x1
	.byte	0xc3
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfac
	.uleb128 0x31
	.4byte	.LASF125
	.byte	0x1
	.byte	0xc5
	.4byte	0x958
	.uleb128 0x6
	.byte	0x3
	.4byte	hci_host_env+12
	.byte	0x9f
	.uleb128 0x21
	.4byte	.LVL105
	.4byte	0x18e5
	.4byte	0xf79
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x72
	.sleb128 4
	.byte	0x6
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL106
	.4byte	0x18e5
	.uleb128 0x1b
	.4byte	.LVL107
	.4byte	0x18f0
	.uleb128 0x21
	.4byte	.LVL108
	.4byte	0x18fb
	.4byte	0xfa2
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	hci_host_env+24
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL109
	.4byte	0x1906
	.byte	0
	.uleb128 0x32
	.4byte	.LASF151
	.byte	0x1
	.byte	0x78
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfdd
	.uleb128 0x1b
	.4byte	.LVL110
	.4byte	0xf3d
	.uleb128 0x1b
	.4byte	.LVL113
	.4byte	0x1911
	.uleb128 0x1b
	.4byte	.LVL114
	.4byte	0x191d
	.byte	0
	.uleb128 0x33
	.4byte	.LASF141
	.byte	0x1
	.byte	0x65
	.4byte	0x25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1098
	.uleb128 0x34
	.4byte	.LASF147
	.byte	0x1
	.byte	0x73
	.4byte	.L53
	.uleb128 0x1b
	.4byte	.LVL115
	.4byte	0xb0c
	.uleb128 0x21
	.4byte	.LVL116
	.4byte	0x1929
	.4byte	0x1028
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x28
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x21
	.4byte	.LVL117
	.4byte	0x1935
	.4byte	0x1068
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	hci_host_thread_handler
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC67
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0xa00
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x46
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	xHciHostTaskHandle
	.uleb128 0x1d
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x35
	.4byte	.LVL118
	.4byte	0x107b
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	packet_fragmenter_callbacks
	.byte	0
	.uleb128 0x35
	.4byte	.LVL119
	.4byte	0x108e
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	hal_callbacks
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL120
	.4byte	0xfac
	.byte	0
	.uleb128 0x33
	.4byte	.LASF142
	.byte	0x1
	.byte	0x86
	.4byte	0x615
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1122
	.uleb128 0x36
	.4byte	.LASF143
	.byte	0x1
	.byte	0x86
	.4byte	0x5f1
	.4byte	.LLST16
	.uleb128 0x2b
	.string	"evt"
	.byte	0x1
	.byte	0x88
	.4byte	0x590
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.4byte	.LVL123
	.4byte	0x1941
	.4byte	0x10ee
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL124
	.4byte	0x17c5
	.uleb128 0x1c
	.4byte	.LVL125
	.4byte	0x17d0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC78
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x1ae
	.4byte	0xeb
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1320
	.uleb128 0x19
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x1ae
	.4byte	0x1ef
	.4byte	.LLST17
	.uleb128 0x20
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x1b0
	.4byte	0x952
	.4byte	.LLST18
	.uleb128 0x20
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x1b1
	.4byte	0xcf
	.4byte	.LLST19
	.uleb128 0x20
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x1b2
	.4byte	0xae
	.4byte	.LLST20
	.uleb128 0x37
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x1b3
	.4byte	0x3a3
	.uleb128 0x1a
	.4byte	.LASF135
	.4byte	0x1330
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6545
	.uleb128 0x38
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x1da
	.4byte	.L62
	.uleb128 0x24
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0x122b
	.uleb128 0x20
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x1c8
	.4byte	0xae
	.4byte	.LLST21
	.uleb128 0x21
	.4byte	.LVL144
	.4byte	0x84d
	.4byte	0x11d4
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL146
	.4byte	0x17c5
	.uleb128 0x21
	.4byte	.LVL147
	.4byte	0x17d0
	.4byte	0x121b
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC85
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6545
	.uleb128 0x1d
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL148
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL134
	.4byte	0x84d
	.4byte	0x123f
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL136
	.4byte	0x17c5
	.uleb128 0x21
	.4byte	.LVL137
	.4byte	0x17d0
	.4byte	0x1286
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC83
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6545
	.uleb128 0x1d
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL138
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.4byte	0x1299
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL139
	.4byte	0x194d
	.4byte	0x12ad
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL149
	.4byte	0x969
	.4byte	0x12c4
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	hci_host_env+12
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL150
	.4byte	0x1854
	.uleb128 0x21
	.4byte	.LVL151
	.4byte	0x1098
	.4byte	0x12e1
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x28
	.4byte	.LVL152
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.4byte	0x12f4
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL154
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.4byte	.LVL155
	.4byte	0x18cf
	.4byte	0x1310
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL158
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xa7
	.4byte	0x1330
	.uleb128 0xd
	.4byte	0x90
	.byte	0x15
	.byte	0
	.uleb128 0x14
	.4byte	0x1320
	.uleb128 0x26
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x1a2
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x138e
	.uleb128 0x1f
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x1a2
	.4byte	0x1ef
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x35
	.4byte	.LVL163
	.4byte	0x1369
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL164
	.4byte	0x1122
	.4byte	0x137d
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL165
	.4byte	0x9d3
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x118
	.4byte	0x461
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1469
	.uleb128 0x19
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x118
	.4byte	0x1ef
	.4byte	.LLST22
	.uleb128 0x23
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x11a
	.4byte	0x952
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.4byte	.LASF135
	.4byte	0x1479
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6499
	.uleb128 0x23
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x11d
	.4byte	0x461
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x20
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x11f
	.4byte	0xcf
	.4byte	.LLST23
	.uleb128 0x21
	.4byte	.LVL167
	.4byte	0x1958
	.4byte	0x140b
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x21
	.4byte	.LVL169
	.4byte	0x1963
	.4byte	0x143b
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC94
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x11b
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6499
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC91
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL170
	.4byte	0x196e
	.uleb128 0x21
	.4byte	.LVL176
	.4byte	0x1979
	.4byte	0x1458
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL177
	.4byte	0x1098
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xa7
	.4byte	0x1479
	.uleb128 0xd
	.4byte	0x90
	.byte	0x18
	.byte	0
	.uleb128 0x14
	.4byte	0x1469
	.uleb128 0x30
	.4byte	.LASF71
	.byte	0x1
	.byte	0xf9
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x156b
	.uleb128 0x36
	.4byte	.LASF108
	.byte	0x1
	.byte	0xfa
	.4byte	0x1ef
	.4byte	.LLST24
	.uleb128 0x36
	.4byte	.LASF105
	.byte	0x1
	.byte	0xfb
	.4byte	0x3ae
	.4byte	.LLST25
	.uleb128 0x39
	.4byte	.LASF106
	.byte	0x1
	.byte	0xfc
	.4byte	0x3cf
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x39
	.4byte	.LASF107
	.byte	0x1
	.byte	0xfd
	.4byte	0x97
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2e
	.4byte	.LASF145
	.byte	0x1
	.byte	0xff
	.4byte	0xcf
	.4byte	.LLST26
	.uleb128 0x20
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x100
	.4byte	0x952
	.4byte	.LLST27
	.uleb128 0x1a
	.4byte	.LASF135
	.4byte	0x157b
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6494
	.uleb128 0x21
	.4byte	.LVL179
	.4byte	0x1958
	.4byte	0x1511
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL180
	.4byte	0x17c5
	.uleb128 0x21
	.4byte	.LVL181
	.4byte	0x17d0
	.4byte	0x1551
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC100
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6494
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL190
	.4byte	0x1979
	.uleb128 0x1c
	.4byte	.LVL191
	.4byte	0x1098
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xa7
	.4byte	0x157b
	.uleb128 0xd
	.4byte	0x90
	.byte	0x10
	.byte	0
	.uleb128 0x14
	.4byte	0x156b
	.uleb128 0x26
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x12d
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x164b
	.uleb128 0x19
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x12d
	.4byte	0xb9
	.4byte	.LLST28
	.uleb128 0x1f
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x12d
	.4byte	0x97
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.4byte	.LASF135
	.4byte	0x164b
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6506
	.uleb128 0x21
	.4byte	.LVL193
	.4byte	0x147e
	.4byte	0x15e6
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL194
	.4byte	0x17c5
	.uleb128 0x21
	.4byte	.LVL195
	.4byte	0x17d0
	.4byte	0x1626
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC107
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6506
	.byte	0
	.uleb128 0x21
	.4byte	.LVL197
	.4byte	0x1979
	.4byte	0x163a
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL198
	.4byte	0x1098
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0xe07
	.uleb128 0x3a
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x23e
	.4byte	0x168f
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x168f
	.uleb128 0x1b
	.4byte	.LVL199
	.4byte	0x1984
	.uleb128 0x1b
	.4byte	.LVL200
	.4byte	0x198f
	.uleb128 0x1b
	.4byte	.LVL201
	.4byte	0x199a
	.uleb128 0x1b
	.4byte	.LVL202
	.4byte	0x731
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1695
	.uleb128 0x14
	.4byte	0x483
	.uleb128 0x3b
	.4byte	.LASF153
	.byte	0x5
	.2byte	0x2cc
	.4byte	0x16ad
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x14
	.4byte	0x151
	.uleb128 0x3b
	.4byte	.LASF154
	.byte	0x5
	.2byte	0x2cd
	.4byte	0x16c5
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0x151
	.uleb128 0x3c
	.4byte	.LASF155
	.byte	0x1
	.byte	0x44
	.4byte	0x16d7
	.2byte	0x1f40
	.uleb128 0x14
	.4byte	0xc4
	.uleb128 0x31
	.4byte	.LASF156
	.byte	0x1
	.byte	0x47
	.4byte	0xeb
	.uleb128 0x5
	.byte	0x3
	.4byte	interface_created
	.uleb128 0x31
	.4byte	.LASF157
	.byte	0x1
	.byte	0x48
	.4byte	0x483
	.uleb128 0x5
	.byte	0x3
	.4byte	interface
	.uleb128 0x31
	.4byte	.LASF158
	.byte	0x1
	.byte	0x49
	.4byte	0x726
	.uleb128 0x5
	.byte	0x3
	.4byte	hci_host_env
	.uleb128 0x31
	.4byte	.LASF159
	.byte	0x1
	.byte	0x4b
	.4byte	0x2f2
	.uleb128 0x5
	.byte	0x3
	.4byte	xHciHostTaskHandle
	.uleb128 0x31
	.4byte	.LASF160
	.byte	0x1
	.byte	0x4c
	.4byte	0x2fd
	.uleb128 0x5
	.byte	0x3
	.4byte	xHciHostQueue
	.uleb128 0x31
	.4byte	.LASF161
	.byte	0x1
	.byte	0x4e
	.4byte	0xeb
	.uleb128 0x5
	.byte	0x3
	.4byte	hci_host_startup_flag
	.uleb128 0x31
	.4byte	.LASF162
	.byte	0x1
	.byte	0x51
	.4byte	0x1753
	.uleb128 0x5
	.byte	0x3
	.4byte	buffer_allocator
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1759
	.uleb128 0x14
	.4byte	0x2d1
	.uleb128 0x2b
	.string	"hal"
	.byte	0x1
	.byte	0x52
	.4byte	0x176f
	.uleb128 0x5
	.byte	0x3
	.4byte	hal
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1775
	.uleb128 0x14
	.4byte	0x215
	.uleb128 0x23
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x234
	.4byte	0x25b
	.uleb128 0x5
	.byte	0x3
	.4byte	hal_callbacks
	.uleb128 0x31
	.4byte	.LASF164
	.byte	0x1
	.byte	0x54
	.4byte	0x179d
	.uleb128 0x5
	.byte	0x3
	.4byte	packet_fragmenter
	.uleb128 0x6
	.byte	0x4
	.4byte	0x17a3
	.uleb128 0x14
	.4byte	0x35a
	.uleb128 0x23
	.4byte	.LASF165
	.byte	0x1
	.2byte	0x238
	.4byte	0x50e
	.uleb128 0x5
	.byte	0x3
	.4byte	packet_fragmenter_callbacks
	.uleb128 0x3d
	.4byte	.LASF212
	.byte	0x8
	.byte	0x25
	.4byte	0x1759
	.uleb128 0x3e
	.4byte	.LASF166
	.4byte	.LASF166
	.byte	0x6
	.byte	0x57
	.uleb128 0x3e
	.4byte	.LASF167
	.4byte	.LASF167
	.byte	0x6
	.byte	0x6b
	.uleb128 0x3e
	.4byte	.LASF168
	.4byte	.LASF168
	.byte	0x11
	.byte	0x6c
	.uleb128 0x3e
	.4byte	.LASF169
	.4byte	.LASF169
	.byte	0x11
	.byte	0x4c
	.uleb128 0x3e
	.4byte	.LASF170
	.4byte	.LASF170
	.byte	0x14
	.byte	0x27
	.uleb128 0x3e
	.4byte	.LASF171
	.4byte	.LASF171
	.byte	0x11
	.byte	0x5c
	.uleb128 0x3e
	.4byte	.LASF172
	.4byte	.LASF172
	.byte	0x11
	.byte	0x68
	.uleb128 0x3e
	.4byte	.LASF173
	.4byte	.LASF173
	.byte	0x11
	.byte	0x62
	.uleb128 0x3e
	.4byte	.LASF174
	.4byte	.LASF174
	.byte	0x14
	.byte	0x25
	.uleb128 0x3e
	.4byte	.LASF175
	.4byte	.LASF175
	.byte	0x12
	.byte	0x43
	.uleb128 0x3e
	.4byte	.LASF176
	.4byte	.LASF176
	.byte	0x11
	.byte	0x1f
	.uleb128 0x3e
	.4byte	.LASF177
	.4byte	.LASF177
	.byte	0x12
	.byte	0x3a
	.uleb128 0x3e
	.4byte	.LASF178
	.4byte	.LASF178
	.byte	0x13
	.byte	0x6f
	.uleb128 0x3e
	.4byte	.LASF179
	.4byte	.LASF179
	.byte	0x15
	.byte	0x31
	.uleb128 0x3e
	.4byte	.LASF180
	.4byte	.LASF180
	.byte	0x15
	.byte	0x83
	.uleb128 0x3f
	.4byte	.LASF181
	.4byte	.LASF181
	.byte	0xb
	.2byte	0x38a
	.uleb128 0x3f
	.4byte	.LASF182
	.4byte	.LASF182
	.byte	0x16
	.2byte	0x11c
	.uleb128 0x3e
	.4byte	.LASF183
	.4byte	.LASF183
	.byte	0x15
	.byte	0x29
	.uleb128 0x3e
	.4byte	.LASF184
	.4byte	.LASF184
	.byte	0x15
	.byte	0x7d
	.uleb128 0x3e
	.4byte	.LASF185
	.4byte	.LASF185
	.byte	0x11
	.byte	0x15
	.uleb128 0x3e
	.4byte	.LASF186
	.4byte	.LASF186
	.byte	0x14
	.byte	0x23
	.uleb128 0x3e
	.4byte	.LASF187
	.4byte	.LASF187
	.byte	0x12
	.byte	0x2e
	.uleb128 0x3e
	.4byte	.LASF188
	.4byte	.LASF188
	.byte	0x11
	.byte	0x2a
	.uleb128 0x3e
	.4byte	.LASF189
	.4byte	.LASF189
	.byte	0x15
	.byte	0x43
	.uleb128 0x3e
	.4byte	.LASF46
	.4byte	.LASF46
	.byte	0x17
	.byte	0x5a
	.uleb128 0x3e
	.4byte	.LASF190
	.4byte	.LASF190
	.byte	0x11
	.byte	0x42
	.uleb128 0x3e
	.4byte	.LASF191
	.4byte	.LASF191
	.byte	0x15
	.byte	0x2d
	.uleb128 0x3e
	.4byte	.LASF192
	.4byte	.LASF192
	.byte	0x11
	.byte	0x1b
	.uleb128 0x3e
	.4byte	.LASF193
	.4byte	.LASF193
	.byte	0x14
	.byte	0x29
	.uleb128 0x3e
	.4byte	.LASF194
	.4byte	.LASF194
	.byte	0x12
	.byte	0x33
	.uleb128 0x3f
	.4byte	.LASF195
	.4byte	.LASF195
	.byte	0xa
	.2byte	0x2fe
	.uleb128 0x3f
	.4byte	.LASF196
	.4byte	.LASF196
	.byte	0xb
	.2byte	0x3ac
	.uleb128 0x3f
	.4byte	.LASF197
	.4byte	.LASF197
	.byte	0xb
	.2byte	0x5d0
	.uleb128 0x3f
	.4byte	.LASF198
	.4byte	.LASF198
	.byte	0xa
	.2byte	0x14d
	.uleb128 0x3f
	.4byte	.LASF199
	.4byte	.LASF199
	.byte	0xb
	.2byte	0x265
	.uleb128 0x3e
	.4byte	.LASF200
	.4byte	.LASF200
	.byte	0xe
	.byte	0x2d
	.uleb128 0x3e
	.4byte	.LASF201
	.4byte	.LASF201
	.byte	0x17
	.byte	0x57
	.uleb128 0x3e
	.4byte	.LASF202
	.4byte	.LASF202
	.byte	0x18
	.byte	0x29
	.uleb128 0x3e
	.4byte	.LASF203
	.4byte	.LASF203
	.byte	0xe
	.byte	0x23
	.uleb128 0x3e
	.4byte	.LASF204
	.4byte	.LASF204
	.byte	0x15
	.byte	0x3e
	.uleb128 0x3e
	.4byte	.LASF205
	.4byte	.LASF205
	.byte	0x19
	.byte	0x17
	.uleb128 0x3e
	.4byte	.LASF206
	.4byte	.LASF206
	.byte	0x7
	.byte	0x53
	.uleb128 0x3e
	.4byte	.LASF207
	.4byte	.LASF207
	.byte	0xf
	.byte	0x3c
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x5
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x2116
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x34
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x17
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
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL4
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
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL10
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL15
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL14
	.4byte	.LVL16-1
	.2byte	0x5
	.byte	0x78
	.sleb128 8192
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL12
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL17
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LVL29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32
	.4byte	.LFE45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL23
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL43
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL49
	.4byte	.LVL50-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL62
	.4byte	.LVL64
	.2byte	0x6
	.byte	0x3
	.4byte	hci_host_env+12
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL71
	.2byte	0x6
	.byte	0x3
	.4byte	hci_host_env+12
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL72-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL72-1
	.4byte	.LFE29
	.2byte	0x6
	.byte	0x3
	.4byte	hci_host_env+12
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL75
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x3
	.byte	0x73
	.sleb128 -12
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL82
	.4byte	.LFE40
	.2byte	0x3
	.byte	0x73
	.sleb128 -12
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL76
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x3
	.byte	0x73
	.sleb128 -12
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL82
	.4byte	.LFE40
	.2byte	0x3
	.byte	0x73
	.sleb128 -12
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL82
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL90
	.4byte	.LVL91-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL92
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL95
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL93
	.4byte	.LVL95
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL95
	.4byte	.LFE35
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL93
	.4byte	.LVL103
	.2byte	0x6
	.byte	0x3
	.4byte	hci_host_env+12
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LVL104-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL104-1
	.4byte	.LFE35
	.2byte	0x6
	.byte	0x3
	.4byte	hci_host_env+12
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL122
	.4byte	.LVL123-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL123-1
	.4byte	.LVL126
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL126
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL127
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL128
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL153
	.4byte	.LVL156
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL156
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL159
	.4byte	.LVL160
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL160
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL161
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL129
	.4byte	.LVL135
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL135
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL140
	.4byte	.LVL145
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL145
	.4byte	.LVL160
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL160
	.4byte	.LFE42
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL131
	.4byte	.LVL132
	.2byte	0x3
	.byte	0x78
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL132
	.4byte	.LVL133
	.2byte	0x3
	.byte	0x78
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL133
	.4byte	.LVL134-1
	.2byte	0x3
	.byte	0x78
	.sleb128 5
	.byte	0x9f
	.4byte	.LVL140
	.4byte	.LVL141
	.2byte	0x3
	.byte	0x78
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL141
	.4byte	.LVL142
	.2byte	0x3
	.byte	0x78
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x3
	.byte	0x78
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL143
	.4byte	.LVL144-1
	.2byte	0x3
	.byte	0x78
	.sleb128 6
	.byte	0x9f
	.4byte	.LVL160
	.4byte	.LFE42
	.2byte	0x3
	.byte	0x78
	.sleb128 2
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL131
	.4byte	.LVL132
	.2byte	0x2
	.byte	0x78
	.sleb128 0
	.4byte	.LVL132
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL140
	.4byte	.LVL142
	.2byte	0x2
	.byte	0x78
	.sleb128 0
	.4byte	.LVL142
	.4byte	.LVL157
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL160
	.4byte	.LFE42
	.2byte	0x2
	.byte	0x78
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL141
	.4byte	.LVL142
	.2byte	0x2
	.byte	0x78
	.sleb128 2
	.4byte	.LVL142
	.4byte	.LVL148
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL166
	.4byte	.LVL175
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL175
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL172
	.4byte	.LVL173
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL173
	.4byte	.LVL174
	.2byte	0xe
	.byte	0x72
	.sleb128 4
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL178
	.4byte	.LVL188
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL188
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL178
	.4byte	.LVL186
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL186
	.4byte	.LVL187
	.2byte	0x2
	.byte	0x7a
	.sleb128 8
	.4byte	.LVL187
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL183
	.4byte	.LVL184
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL184
	.4byte	.LVL185
	.2byte	0xe
	.byte	0x72
	.sleb128 4
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL179
	.4byte	.LVL180-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL182
	.4byte	.LVL189
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL189
	.4byte	.LVL190-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL192
	.4byte	.LVL196
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL196
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xc4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	0
	.4byte	0
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF146:
	.string	"event_code"
.LASF88:
	.string	"SIG_HCI_HOST_NUM"
.LASF190:
	.string	"list_append"
.LASF55:
	.string	"future"
.LASF3:
	.string	"size_t"
.LASF94:
	.string	"SIG_BTU_ONESHOT_ALARM"
.LASF132:
	.string	"all_fragments_sent"
.LASF77:
	.string	"fragmented"
.LASF41:
	.string	"close"
.LASF4:
	.string	"__uint8_t"
.LASF123:
	.string	"event_to_data_type"
.LASF63:
	.string	"fragment_current_packet"
.LASF27:
	.string	"ESP_LOG_ERROR"
.LASF71:
	.string	"transmit_command"
.LASF122:
	.string	"type"
.LASF61:
	.string	"init"
.LASF145:
	.string	"stream"
.LASF10:
	.string	"long long unsigned int"
.LASF167:
	.string	"esp_log_write"
.LASF156:
	.string	"interface_created"
.LASF24:
	.string	"data"
.LASF151:
	.string	"hci_shut_down"
.LASF124:
	.string	"get_waiting_command"
.LASF82:
	.string	"list_t"
.LASF51:
	.string	"QueueHandle_t"
.LASF64:
	.string	"fragment_and_dispatch"
.LASF46:
	.string	"free"
.LASF68:
	.string	"command_status_cb"
.LASF209:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/hci/hci_layer.c"
.LASF30:
	.string	"ESP_LOG_DEBUG"
.LASF9:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF36:
	.string	"serial_data_type_t"
.LASF136:
	.string	"command_timed_out"
.LASF185:
	.string	"list_new"
.LASF118:
	.string	"cmd_waiting_q"
.LASF204:
	.string	"fixed_queue_enqueue"
.LASF91:
	.string	"SIG_BTU_BTA_MSG"
.LASF198:
	.string	"xTaskCreatePinnedToCore"
.LASF11:
	.string	"long int"
.LASF184:
	.string	"fixed_queue_register_dequeue"
.LASF112:
	.string	"commands_pending_response"
.LASF50:
	.string	"TaskHandle_t"
.LASF140:
	.string	"hci_layer_deinit_env"
.LASF25:
	.string	"BT_HDR"
.LASF49:
	.string	"TickType_t"
.LASF119:
	.string	"hci_host_env_t"
.LASF133:
	.string	"hci_host_thread_handler"
.LASF16:
	.string	"uint16_t"
.LASF85:
	.string	"bt_task_evt"
.LASF48:
	.string	"BaseType_t"
.LASF191:
	.string	"fixed_queue_free"
.LASF169:
	.string	"list_remove"
.LASF99:
	.string	"TASK_POST_FAIL"
.LASF60:
	.string	"packet_fragmenter_t"
.LASF114:
	.string	"command_waiting_response_t"
.LASF19:
	.string	"UINT16"
.LASF95:
	.string	"SIG_BTU_L2CAP_ALARM"
.LASF179:
	.string	"fixed_queue_is_empty"
.LASF87:
	.string	"SIG_HCI_HOST_SEND_AVAILABLE"
.LASF211:
	.string	"init_layer_interface"
.LASF104:
	.string	"complete_future"
.LASF111:
	.string	"command_response_timer"
.LASF81:
	.string	"list_node_t"
.LASF197:
	.string	"xQueueGenericCreate"
.LASF181:
	.string	"xQueueGenericReceive"
.LASF34:
	.string	"DATA_TYPE_SCO"
.LASF38:
	.string	"packet_ready"
.LASF0:
	.string	"unsigned int"
.LASF73:
	.string	"transmit_downward"
.LASF165:
	.string	"packet_fragmenter_callbacks"
.LASF108:
	.string	"command"
.LASF110:
	.string	"timer_is_set"
.LASF13:
	.string	"long unsigned int"
.LASF212:
	.string	"allocator_calloc"
.LASF143:
	.string	"timeout"
.LASF138:
	.string	"queue"
.LASF43:
	.string	"alloc_fn"
.LASF199:
	.string	"xQueueGenericSend"
.LASF21:
	.string	"event"
.LASF107:
	.string	"context"
.LASF1:
	.string	"short unsigned int"
.LASF109:
	.string	"waiting_command_t"
.LASF186:
	.string	"osi_mutex_new"
.LASF158:
	.string	"hci_host_env"
.LASF117:
	.string	"packet_queue"
.LASF113:
	.string	"commands_pending_response_lock"
.LASF67:
	.string	"command_complete_cb"
.LASF75:
	.string	"packet_reassembled_cb"
.LASF180:
	.string	"fixed_queue_process"
.LASF98:
	.string	"TASK_POST_SUCCESS"
.LASF66:
	.string	"command_opcode_t"
.LASF84:
	.string	"alarm_t"
.LASF139:
	.string	"event_command_ready"
.LASF96:
	.string	"SIG_BTU_NUM"
.LASF157:
	.string	"interface"
.LASF130:
	.string	"dispatch_reassembled"
.LASF29:
	.string	"ESP_LOG_INFO"
.LASF80:
	.string	"packet_fragmenter_callbacks_t"
.LASF144:
	.string	"filter_incoming_event"
.LASF194:
	.string	"osi_alarm_free"
.LASF159:
	.string	"xHciHostTaskHandle"
.LASF56:
	.string	"ready_can_be_called"
.LASF200:
	.string	"future_ready"
.LASF78:
	.string	"reassembled"
.LASF12:
	.string	"sizetype"
.LASF40:
	.string	"open"
.LASF196:
	.string	"vQueueDelete"
.LASF137:
	.string	"event_packet_ready"
.LASF203:
	.string	"future_new"
.LASF192:
	.string	"list_free"
.LASF33:
	.string	"DATA_TYPE_ACL"
.LASF160:
	.string	"xHciHostQueue"
.LASF62:
	.string	"cleanup"
.LASF120:
	.string	"packet"
.LASF59:
	.string	"future_t"
.LASF89:
	.string	"SIG_BTU_START_UP"
.LASF32:
	.string	"DATA_TYPE_COMMAND"
.LASF147:
	.string	"error"
.LASF174:
	.string	"osi_mutex_lock"
.LASF154:
	.string	"bd_addr_null"
.LASF205:
	.string	"buffer_allocator_get_interface"
.LASF97:
	.string	"task_post_t"
.LASF150:
	.string	"hal_says_packet_ready"
.LASF115:
	.string	"command_credits"
.LASF57:
	.string	"semaphore"
.LASF35:
	.string	"DATA_TYPE_EVENT"
.LASF20:
	.string	"_Bool"
.LASF202:
	.string	"__assert_func"
.LASF5:
	.string	"unsigned char"
.LASF126:
	.string	"node"
.LASF125:
	.string	"cmd_wait_q"
.LASF171:
	.string	"list_begin"
.LASF208:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF69:
	.string	"hci_t"
.LASF189:
	.string	"fixed_queue_dequeue"
.LASF6:
	.string	"short int"
.LASF141:
	.string	"hci_start_up"
.LASF166:
	.string	"esp_log_timestamp"
.LASF127:
	.string	"wait_entry"
.LASF102:
	.string	"fixed_queue_t"
.LASF176:
	.string	"list_is_empty"
.LASF106:
	.string	"status_callback"
.LASF135:
	.string	"__func__"
.LASF168:
	.string	"list_node"
.LASF183:
	.string	"fixed_queue_new"
.LASF90:
	.string	"SIG_BTU_HCI_MSG"
.LASF44:
	.string	"free_fn"
.LASF17:
	.string	"uint32_t"
.LASF170:
	.string	"osi_mutex_unlock"
.LASF155:
	.string	"COMMAND_PENDING_TIMEOUT"
.LASF182:
	.string	"esp_vhci_host_check_send_available"
.LASF206:
	.string	"hci_hal_h4_get_interface"
.LASF47:
	.string	"allocator_t"
.LASF79:
	.string	"transmit_finished"
.LASF172:
	.string	"list_next"
.LASF52:
	.string	"SemaphoreHandle_t"
.LASF14:
	.string	"char"
.LASF31:
	.string	"ESP_LOG_VERBOSE"
.LASF101:
	.string	"osi_mutex_t"
.LASF100:
	.string	"task_post_status_t"
.LASF70:
	.string	"do_postload"
.LASF7:
	.string	"__uint16_t"
.LASF195:
	.string	"vTaskDelete"
.LASF93:
	.string	"SIG_BTU_GENERAL_ALARM"
.LASF26:
	.string	"ESP_LOG_NONE"
.LASF153:
	.string	"bd_addr_any"
.LASF65:
	.string	"reassemble_and_dispatch"
.LASF8:
	.string	"__uint32_t"
.LASF45:
	.string	"alloc"
.LASF54:
	.string	"hci_hal_t"
.LASF39:
	.string	"hci_hal_callbacks_t"
.LASF22:
	.string	"offset"
.LASF152:
	.string	"hci_layer_get_interface"
.LASF37:
	.string	"packet_ready_cb"
.LASF162:
	.string	"buffer_allocator"
.LASF187:
	.string	"osi_alarm_new"
.LASF207:
	.string	"packet_fragmenter_get_interface"
.LASF142:
	.string	"hci_host_task_post"
.LASF23:
	.string	"layer_specific"
.LASF42:
	.string	"transmit_data"
.LASF175:
	.string	"osi_alarm_cancel"
.LASF105:
	.string	"complete_callback"
.LASF28:
	.string	"ESP_LOG_WARN"
.LASF72:
	.string	"transmit_command_futured"
.LASF149:
	.string	"status"
.LASF131:
	.string	"fragmenter_transmit_finished"
.LASF201:
	.string	"calloc"
.LASF18:
	.string	"UINT8"
.LASF83:
	.string	"osi_alarm_t"
.LASF121:
	.string	"send_transmit_finished"
.LASF15:
	.string	"uint8_t"
.LASF86:
	.string	"BtTaskEvt_t"
.LASF92:
	.string	"SIG_BTU_BTA_ALARM"
.LASF53:
	.string	"osi_sem_t"
.LASF161:
	.string	"hci_host_startup_flag"
.LASF177:
	.string	"osi_alarm_set"
.LASF134:
	.string	"hci_layer_init_env"
.LASF164:
	.string	"packet_fragmenter"
.LASF210:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF116:
	.string	"command_queue"
.LASF76:
	.string	"packet_fragmented_cb"
.LASF74:
	.string	"transmit_finished_cb"
.LASF163:
	.string	"hal_callbacks"
.LASF173:
	.string	"list_end"
.LASF128:
	.string	"transmit_fragment"
.LASF129:
	.string	"restart_command_waiting_response_timer"
.LASF188:
	.string	"list_front"
.LASF193:
	.string	"osi_mutex_free"
.LASF58:
	.string	"result"
.LASF148:
	.string	"intercepted"
.LASF103:
	.string	"opcode"
.LASF178:
	.string	"btu_task_post"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
