	.file	"hci_packet_factory.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC1:
	.string	"ret"
	.align	4
.LC4:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/hci/hci_packet_factory.c"
	.section	.text.make_packet,"ax",@progbits
	.literal_position
	.literal .LC0, buffer_allocator
	.literal .LC2, .LC1
	.literal .LC3, __func__$6011
	.literal .LC5, .LC4
	.align	4
	.type	make_packet, @function
make_packet:
.LFB50:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/hci/hci_packet_factory.c"
	.loc 1 230 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 231 0
	l32r	a8, .LC0
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 0
	addi.n	a10, a2, 8
	callx8	a8
.LVL1:
	.loc 1 232 0
	bnez.n	a10, .L2
	.loc 1 232 0 is_stmt 0 discriminator 1
	l32r	a13, .LC2
	l32r	a12, .LC3
	movi	a11, 0xe8
	l32r	a10, .LC5
.LVL2:
	call8	__assert_func
.LVL3:
.L2:
	.loc 1 233 0 is_stmt 1
	movi.n	a8, 0
	s16i	a8, a10, 0
	.loc 1 234 0
	s16i	a8, a10, 4
	.loc 1 235 0
	s16i	a8, a10, 6
	.loc 1 236 0
	s16i	a2, a10, 2
	.loc 1 238 0
	mov.n	a2, a10
.LVL4:
	retw.n
.LFE50:
	.size	make_packet, .-make_packet
	.section	.text.make_command,"ax",@progbits
	.align	4
	.type	make_command, @function
make_command:
.LFB49:
	.loc 1 215 0
.LVL5:
	entry	sp, 32
.LCFI1:
	.loc 1 216 0
	addi.n	a10, a3, 3
	call8	make_packet
.LVL6:
	.loc 1 219 0
	s8i	a2, a10, 8
.LVL7:
	srli	a2, a2, 8
.LVL8:
	s8i	a2, a10, 9
	.loc 1 220 0
	addi.n	a2, a10, 11
.LVL9:
	s8i	a3, a10, 10
	.loc 1 222 0
	beqz.n	a4, .L4
	.loc 1 223 0
	s32i.n	a2, a4, 0
.L4:
	.loc 1 227 0
	mov.n	a2, a10
.LVL10:
	retw.n
.LFE49:
	.size	make_command, .-make_command
	.section	.text.make_write_default_erroneous_data_report,"ax",@progbits
	.literal_position
	.literal .LC6, 3163
	.align	4
	.type	make_write_default_erroneous_data_report, @function
make_write_default_erroneous_data_report:
.LFB47:
	.loc 1 199 0
.LVL11:
	entry	sp, 48
.LCFI2:
	extui	a2, a2, 0, 8
.LVL12:
	.loc 1 202 0
	mov.n	a12, sp
	movi.n	a11, 1
	l32r	a10, .LC6
	call8	make_command
.LVL13:
	.loc 1 204 0
	l32i.n	a8, sp, 0
.LVL14:
	s8i	a2, a8, 0
	.loc 1 206 0
	mov.n	a2, a10
.LVL15:
	retw.n
.LFE47:
	.size	make_write_default_erroneous_data_report, .-make_write_default_erroneous_data_report
	.section	.text.make_write_sync_flow_control_enable,"ax",@progbits
	.literal_position
	.literal .LC7, 3119
	.align	4
	.type	make_write_sync_flow_control_enable, @function
make_write_sync_flow_control_enable:
.LFB46:
	.loc 1 189 0
.LVL16:
	entry	sp, 48
.LCFI3:
	extui	a2, a2, 0, 8
.LVL17:
	.loc 1 192 0
	mov.n	a12, sp
	movi.n	a11, 1
	l32r	a10, .LC7
	call8	make_command
.LVL18:
	.loc 1 194 0
	l32i.n	a8, sp, 0
.LVL19:
	s8i	a2, a8, 0
	.loc 1 196 0
	mov.n	a2, a10
.LVL20:
	retw.n
.LFE46:
	.size	make_write_sync_flow_control_enable, .-make_write_sync_flow_control_enable
	.section	.text.make_ble_set_event_mask,"ax",@progbits
	.literal_position
	.literal .LC8, 8193
	.align	4
	.type	make_ble_set_event_mask, @function
make_ble_set_event_mask:
.LFB45:
	.loc 1 179 0
.LVL21:
	entry	sp, 48
.LCFI4:
.LVL22:
	.loc 1 182 0
	mov.n	a12, sp
	movi.n	a11, 8
	l32r	a10, .LC8
	call8	make_command
.LVL23:
.LBB2:
	.loc 1 184 0
	movi.n	a9, 0
	j	.L8
.LVL24:
.L9:
	.loc 1 184 0 is_stmt 0 discriminator 3
	l32i.n	a11, sp, 0
	addi.n	a8, a11, 1
	s32i.n	a8, sp, 0
	movi.n	a8, 7
	sub	a8, a8, a9
	add.n	a8, a2, a8
	l8ui	a8, a8, 0
	s8i	a8, a11, 0
	addi.n	a9, a9, 1
.LVL25:
.L8:
	.loc 1 184 0 discriminator 1
	blti	a9, 8, .L9
.LBE2:
	.loc 1 186 0 is_stmt 1
	mov.n	a2, a10
.LVL26:
	retw.n
.LFE45:
	.size	make_ble_set_event_mask, .-make_ble_set_event_mask
	.section	.text.make_ble_write_suggested_default_data_length,"ax",@progbits
	.literal_position
	.literal .LC9, 8228
	.align	4
	.type	make_ble_write_suggested_default_data_length, @function
make_ble_write_suggested_default_data_length:
.LFB44:
	.loc 1 168 0
.LVL27:
	entry	sp, 48
.LCFI5:
	extui	a2, a2, 0, 16
	extui	a3, a3, 0, 16
.LVL28:
	.loc 1 171 0
	mov.n	a12, sp
	movi.n	a11, 4
	l32r	a10, .LC9
	call8	make_command
.LVL29:
	.loc 1 173 0
	l32i.n	a8, sp, 0
	addi.n	a9, a8, 1
	s32i.n	a9, sp, 0
	s8i	a2, a8, 0
	l32i.n	a8, sp, 0
	addi.n	a9, a8, 1
	s32i.n	a9, sp, 0
	srli	a2, a2, 8
.LVL30:
	s8i	a2, a8, 0
	.loc 1 174 0
	l32i.n	a2, sp, 0
	addi.n	a8, a2, 1
	s32i.n	a8, sp, 0
	s8i	a3, a2, 0
.LVL31:
	srli	a3, a3, 8
.LVL32:
	l32i.n	a2, sp, 0
	s8i	a3, a2, 0
.LVL33:
	.loc 1 176 0
	mov.n	a2, a10
.LVL34:
	retw.n
.LFE44:
	.size	make_ble_write_suggested_default_data_length, .-make_ble_write_suggested_default_data_length
	.section	.text.make_command_no_params,"ax",@progbits
	.align	4
	.type	make_command_no_params, @function
make_command_no_params:
.LFB48:
	.loc 1 210 0
.LVL35:
	entry	sp, 32
.LCFI6:
	.loc 1 211 0
	movi.n	a12, 0
	mov.n	a11, a12
	mov.n	a10, a2
	call8	make_command
.LVL36:
	.loc 1 212 0
	mov.n	a2, a10
.LVL37:
	retw.n
.LFE48:
	.size	make_command_no_params, .-make_command_no_params
	.section	.text.make_ble_read_suggested_default_data_length,"ax",@progbits
	.literal_position
	.literal .LC10, 8227
	.align	4
	.type	make_ble_read_suggested_default_data_length, @function
make_ble_read_suggested_default_data_length:
.LFB43:
	.loc 1 163 0
	entry	sp, 32
.LCFI7:
	.loc 1 164 0
	l32r	a10, .LC10
	call8	make_command_no_params
.LVL38:
	.loc 1 165 0
	mov.n	a2, a10
	retw.n
.LFE43:
	.size	make_ble_read_suggested_default_data_length, .-make_ble_read_suggested_default_data_length
	.section	.text.make_ble_read_resolving_list_size,"ax",@progbits
	.literal_position
	.literal .LC11, 8234
	.align	4
	.type	make_ble_read_resolving_list_size, @function
make_ble_read_resolving_list_size:
.LFB42:
	.loc 1 158 0
	entry	sp, 32
.LCFI8:
	.loc 1 159 0
	l32r	a10, .LC11
	call8	make_command_no_params
.LVL39:
	.loc 1 160 0
	mov.n	a2, a10
	retw.n
.LFE42:
	.size	make_ble_read_resolving_list_size, .-make_ble_read_resolving_list_size
	.section	.text.make_ble_read_local_supported_features,"ax",@progbits
	.literal_position
	.literal .LC12, 8195
	.align	4
	.type	make_ble_read_local_supported_features, @function
make_ble_read_local_supported_features:
.LFB41:
	.loc 1 153 0
	entry	sp, 32
.LCFI9:
	.loc 1 154 0
	l32r	a10, .LC12
	call8	make_command_no_params
.LVL40:
	.loc 1 155 0
	mov.n	a2, a10
	retw.n
.LFE41:
	.size	make_ble_read_local_supported_features, .-make_ble_read_local_supported_features
	.section	.text.make_ble_read_supported_states,"ax",@progbits
	.literal_position
	.literal .LC13, 8220
	.align	4
	.type	make_ble_read_supported_states, @function
make_ble_read_supported_states:
.LFB40:
	.loc 1 148 0
	entry	sp, 32
.LCFI10:
	.loc 1 149 0
	l32r	a10, .LC13
	call8	make_command_no_params
.LVL41:
	.loc 1 150 0
	mov.n	a2, a10
	retw.n
.LFE40:
	.size	make_ble_read_supported_states, .-make_ble_read_supported_states
	.section	.text.make_ble_read_buffer_size,"ax",@progbits
	.literal_position
	.literal .LC14, 8194
	.align	4
	.type	make_ble_read_buffer_size, @function
make_ble_read_buffer_size:
.LFB39:
	.loc 1 143 0
	entry	sp, 32
.LCFI11:
	.loc 1 144 0
	l32r	a10, .LC14
	call8	make_command_no_params
.LVL42:
	.loc 1 145 0
	mov.n	a2, a10
	retw.n
.LFE39:
	.size	make_ble_read_buffer_size, .-make_ble_read_buffer_size
	.section	.text.make_ble_read_white_list_size,"ax",@progbits
	.literal_position
	.literal .LC15, 8207
	.align	4
	.type	make_ble_read_white_list_size, @function
make_ble_read_white_list_size:
.LFB38:
	.loc 1 138 0
	entry	sp, 32
.LCFI12:
	.loc 1 139 0
	l32r	a10, .LC15
	call8	make_command_no_params
.LVL43:
	.loc 1 140 0
	mov.n	a2, a10
	retw.n
.LFE38:
	.size	make_ble_read_white_list_size, .-make_ble_read_white_list_size
	.section	.text.make_read_local_supported_commands,"ax",@progbits
	.literal_position
	.literal .LC16, 4098
	.align	4
	.type	make_read_local_supported_commands, @function
make_read_local_supported_commands:
.LFB32:
	.loc 1 82 0
	entry	sp, 32
.LCFI13:
	.loc 1 83 0
	l32r	a10, .LC16
	call8	make_command_no_params
.LVL44:
	.loc 1 84 0
	mov.n	a2, a10
	retw.n
.LFE32:
	.size	make_read_local_supported_commands, .-make_read_local_supported_commands
	.section	.text.make_read_bd_addr,"ax",@progbits
	.literal_position
	.literal .LC17, 4105
	.align	4
	.type	make_read_bd_addr, @function
make_read_bd_addr:
.LFB31:
	.loc 1 77 0
	entry	sp, 32
.LCFI14:
	.loc 1 78 0
	l32r	a10, .LC17
	call8	make_command_no_params
.LVL45:
	.loc 1 79 0
	mov.n	a2, a10
	retw.n
.LFE31:
	.size	make_read_bd_addr, .-make_read_bd_addr
	.section	.text.make_read_local_version_info,"ax",@progbits
	.literal_position
	.literal .LC18, 4097
	.align	4
	.type	make_read_local_version_info, @function
make_read_local_version_info:
.LFB30:
	.loc 1 72 0
	entry	sp, 32
.LCFI15:
	.loc 1 73 0
	l32r	a10, .LC18
	call8	make_command_no_params
.LVL46:
	.loc 1 74 0
	mov.n	a2, a10
	retw.n
.LFE30:
	.size	make_read_local_version_info, .-make_read_local_version_info
	.section	.text.make_read_buffer_size,"ax",@progbits
	.literal_position
	.literal .LC19, 4101
	.align	4
	.type	make_read_buffer_size, @function
make_read_buffer_size:
.LFB27:
	.loc 1 44 0
	entry	sp, 32
.LCFI16:
	.loc 1 45 0
	l32r	a10, .LC19
	call8	make_command_no_params
.LVL47:
	.loc 1 46 0
	mov.n	a2, a10
	retw.n
.LFE27:
	.size	make_read_buffer_size, .-make_read_buffer_size
	.section	.text.make_reset,"ax",@progbits
	.literal_position
	.literal .LC20, 3075
	.align	4
	.type	make_reset, @function
make_reset:
.LFB26:
	.loc 1 39 0
	entry	sp, 32
.LCFI17:
	.loc 1 40 0
	l32r	a10, .LC20
	call8	make_command_no_params
.LVL48:
	.loc 1 41 0
	mov.n	a2, a10
	retw.n
.LFE26:
	.size	make_reset, .-make_reset
	.section	.text.make_ble_write_host_support,"ax",@progbits
	.literal_position
	.literal .LC21, 3181
	.align	4
	.type	make_ble_write_host_support, @function
make_ble_write_host_support:
.LFB37:
	.loc 1 127 0
.LVL49:
	entry	sp, 48
.LCFI18:
	extui	a2, a2, 0, 8
	extui	a3, a3, 0, 8
.LVL50:
	.loc 1 130 0
	mov.n	a12, sp
	movi.n	a11, 2
	l32r	a10, .LC21
	call8	make_command
.LVL51:
	.loc 1 132 0
	l32i.n	a8, sp, 0
	addi.n	a9, a8, 1
	s32i.n	a9, sp, 0
	s8i	a2, a8, 0
	.loc 1 133 0
	l32i.n	a8, sp, 0
.LVL52:
	s8i	a3, a8, 0
	.loc 1 135 0
	mov.n	a2, a10
.LVL53:
	retw.n
.LFE37:
	.size	make_ble_write_host_support, .-make_ble_write_host_support
	.section	.text.make_set_event_mask,"ax",@progbits
	.literal_position
	.literal .LC22, 3073
	.align	4
	.type	make_set_event_mask, @function
make_set_event_mask:
.LFB36:
	.loc 1 117 0
.LVL54:
	entry	sp, 48
.LCFI19:
.LVL55:
	.loc 1 120 0
	mov.n	a12, sp
	movi.n	a11, 8
	l32r	a10, .LC22
	call8	make_command
.LVL56:
.LBB3:
	.loc 1 122 0
	movi.n	a9, 0
	j	.L25
.LVL57:
.L26:
	.loc 1 122 0 is_stmt 0 discriminator 3
	l32i.n	a11, sp, 0
	addi.n	a8, a11, 1
	s32i.n	a8, sp, 0
	movi.n	a8, 7
	sub	a8, a8, a9
	add.n	a8, a2, a8
	l8ui	a8, a8, 0
	s8i	a8, a11, 0
	addi.n	a9, a9, 1
.LVL58:
.L25:
	.loc 1 122 0 discriminator 1
	blti	a9, 8, .L26
.LBE3:
	.loc 1 124 0 is_stmt 1
	mov.n	a2, a10
.LVL59:
	retw.n
.LFE36:
	.size	make_set_event_mask, .-make_set_event_mask
	.section	.text.make_write_secure_connections_host_support,"ax",@progbits
	.literal_position
	.literal .LC23, 3194
	.align	4
	.type	make_write_secure_connections_host_support, @function
make_write_secure_connections_host_support:
.LFB35:
	.loc 1 107 0
.LVL60:
	entry	sp, 48
.LCFI20:
	extui	a2, a2, 0, 8
.LVL61:
	.loc 1 110 0
	mov.n	a12, sp
	movi.n	a11, 1
	l32r	a10, .LC23
	call8	make_command
.LVL62:
	.loc 1 112 0
	l32i.n	a8, sp, 0
.LVL63:
	s8i	a2, a8, 0
	.loc 1 114 0
	mov.n	a2, a10
.LVL64:
	retw.n
.LFE35:
	.size	make_write_secure_connections_host_support, .-make_write_secure_connections_host_support
	.section	.text.make_write_simple_pairing_mode,"ax",@progbits
	.literal_position
	.literal .LC24, 3158
	.align	4
	.type	make_write_simple_pairing_mode, @function
make_write_simple_pairing_mode:
.LFB34:
	.loc 1 97 0
.LVL65:
	entry	sp, 48
.LCFI21:
	extui	a2, a2, 0, 8
.LVL66:
	.loc 1 100 0
	mov.n	a12, sp
	movi.n	a11, 1
	l32r	a10, .LC24
	call8	make_command
.LVL67:
	.loc 1 102 0
	l32i.n	a8, sp, 0
.LVL68:
	s8i	a2, a8, 0
	.loc 1 104 0
	mov.n	a2, a10
.LVL69:
	retw.n
.LFE34:
	.size	make_write_simple_pairing_mode, .-make_write_simple_pairing_mode
	.section	.text.make_read_local_extended_features,"ax",@progbits
	.literal_position
	.literal .LC25, 4100
	.align	4
	.type	make_read_local_extended_features, @function
make_read_local_extended_features:
.LFB33:
	.loc 1 87 0
.LVL70:
	entry	sp, 48
.LCFI22:
	extui	a2, a2, 0, 8
.LVL71:
	.loc 1 90 0
	mov.n	a12, sp
	movi.n	a11, 1
	l32r	a10, .LC25
	call8	make_command
.LVL72:
	.loc 1 92 0
	l32i.n	a8, sp, 0
.LVL73:
	s8i	a2, a8, 0
	.loc 1 94 0
	mov.n	a2, a10
.LVL74:
	retw.n
.LFE33:
	.size	make_read_local_extended_features, .-make_read_local_extended_features
	.section	.text.make_host_buffer_size,"ax",@progbits
	.literal_position
	.literal .LC26, 3123
	.align	4
	.type	make_host_buffer_size, @function
make_host_buffer_size:
.LFB29:
	.loc 1 59 0
.LVL75:
	entry	sp, 48
.LCFI23:
	extui	a2, a2, 0, 16
	extui	a3, a3, 0, 8
	extui	a4, a4, 0, 16
	extui	a5, a5, 0, 16
.LVL76:
	.loc 1 62 0
	mov.n	a12, sp
	movi.n	a11, 7
	l32r	a10, .LC26
	call8	make_command
.LVL77:
	.loc 1 64 0
	l32i.n	a8, sp, 0
	addi.n	a9, a8, 1
	s32i.n	a9, sp, 0
	s8i	a2, a8, 0
	l32i.n	a8, sp, 0
	addi.n	a9, a8, 1
	s32i.n	a9, sp, 0
	srli	a2, a2, 8
.LVL78:
	s8i	a2, a8, 0
	.loc 1 65 0
	l32i.n	a2, sp, 0
	addi.n	a8, a2, 1
	s32i.n	a8, sp, 0
	s8i	a3, a2, 0
	.loc 1 66 0
	l32i.n	a2, sp, 0
	addi.n	a3, a2, 1
.LVL79:
	s32i.n	a3, sp, 0
	s8i	a4, a2, 0
	l32i.n	a2, sp, 0
	addi.n	a3, a2, 1
	s32i.n	a3, sp, 0
	srli	a4, a4, 8
.LVL80:
	s8i	a4, a2, 0
	.loc 1 67 0
	l32i.n	a2, sp, 0
	addi.n	a3, a2, 1
	s32i.n	a3, sp, 0
	s8i	a5, a2, 0
.LVL81:
	srli	a5, a5, 8
.LVL82:
	l32i.n	a2, sp, 0
	s8i	a5, a2, 0
.LVL83:
	.loc 1 69 0
	mov.n	a2, a10
.LVL84:
	retw.n
.LFE29:
	.size	make_host_buffer_size, .-make_host_buffer_size
	.section	.text.make_set_c2h_flow_control,"ax",@progbits
	.literal_position
	.literal .LC27, 3121
	.align	4
	.type	make_set_c2h_flow_control, @function
make_set_c2h_flow_control:
.LFB28:
	.loc 1 49 0
.LVL85:
	entry	sp, 48
.LCFI24:
	extui	a2, a2, 0, 8
.LVL86:
	.loc 1 52 0
	mov.n	a12, sp
	movi.n	a11, 1
	l32r	a10, .LC27
	call8	make_command
.LVL87:
	.loc 1 54 0
	l32i.n	a8, sp, 0
.LVL88:
	s8i	a2, a8, 0
	.loc 1 56 0
	mov.n	a2, a10
.LVL89:
	retw.n
.LFE28:
	.size	make_set_c2h_flow_control, .-make_set_c2h_flow_control
	.section	.text.hci_packet_factory_get_interface,"ax",@progbits
	.literal_position
	.literal .LC28, buffer_allocator
	.literal .LC29, interface
	.align	4
	.global	hci_packet_factory_get_interface
	.type	hci_packet_factory_get_interface, @function
hci_packet_factory_get_interface:
.LFB51:
	.loc 1 266 0
	entry	sp, 32
.LCFI25:
	.loc 1 267 0
	call8	buffer_allocator_get_interface
.LVL90:
	l32r	a8, .LC28
	s32i.n	a10, a8, 0
	.loc 1 269 0
	l32r	a2, .LC29
	retw.n
.LFE51:
	.size	hci_packet_factory_get_interface, .-hci_packet_factory_get_interface
	.section	.rodata.__func__$6011,"a",@progbits
	.align	4
	.type	__func__$6011, @object
	.size	__func__$6011, 12
__func__$6011:
	.string	"make_packet"
	.section	.rodata.interface,"a",@progbits
	.align	4
	.type	interface, @object
	.size	interface, 88
interface:
	.word	make_reset
	.word	make_read_buffer_size
	.word	make_set_c2h_flow_control
	.word	make_host_buffer_size
	.word	make_read_local_version_info
	.word	make_read_bd_addr
	.word	make_read_local_supported_commands
	.word	make_read_local_extended_features
	.word	make_write_simple_pairing_mode
	.word	make_write_secure_connections_host_support
	.word	make_set_event_mask
	.word	make_ble_write_host_support
	.word	make_ble_read_white_list_size
	.word	make_ble_read_buffer_size
	.word	make_ble_read_supported_states
	.word	make_ble_read_local_supported_features
	.word	make_ble_read_resolving_list_size
	.word	make_ble_read_suggested_default_data_length
	.word	make_ble_write_suggested_default_data_length
	.word	make_ble_set_event_mask
	.word	make_write_sync_flow_control_enable
	.word	make_write_default_erroneous_data_report
	.section	.bss.buffer_allocator,"aw",@nobits
	.align	4
	.type	buffer_allocator, @object
	.size	buffer_allocator, 4
buffer_allocator:
	.zero	4
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
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.byte	0x4
	.4byte	.LCFI0-.LFB50
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.byte	0x4
	.4byte	.LCFI1-.LFB49
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x4
	.4byte	.LCFI2-.LFB47
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI3-.LFB46
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI4-.LFB45
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI5-.LFB44
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x4
	.4byte	.LCFI6-.LFB48
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI7-.LFB43
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI8-.LFB42
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI9-.LFB41
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI10-.LFB40
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI11-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI12-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI13-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI14-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI15-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI16-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI17-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI18-.LFB37
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI19-.LFB36
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI20-.LFB35
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI21-.LFB34
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI22-.LFB33
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI23-.LFB29
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI24-.LFB28
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.byte	0x4
	.4byte	.LCFI25-.LFB51
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE50:
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/allocator.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/device/include/device/event_mask.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/hci/include/hci/hci_packet_factory.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/hci/include/hci/buffer_allocator.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xc87
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0xc
	.4byte	.LASF81
	.4byte	.LASF82
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF3
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
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x3
	.byte	0x12
	.4byte	0x57
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x3
	.byte	0x16
	.4byte	0x37
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x4
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x4
	.byte	0x21
	.4byte	0x65
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x5
	.byte	0x21
	.4byte	0x9c
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF17
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.byte	0xc6
	.4byte	0x109
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x5
	.byte	0xc7
	.4byte	0xa7
	.byte	0
	.uleb128 0x8
	.string	"len"
	.byte	0x5
	.byte	0xc8
	.4byte	0xa7
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x5
	.byte	0xc9
	.4byte	0xa7
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x5
	.byte	0xca
	.4byte	0xa7
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x5
	.byte	0xcb
	.4byte	0x109
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	0x9c
	.4byte	0x118
	.uleb128 0xa
	.4byte	0x85
	.byte	0
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x5
	.byte	0xcc
	.4byte	0xc4
	.uleb128 0x9
	.4byte	0xb2
	.4byte	0x133
	.uleb128 0xb
	.4byte	0x85
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x139
	.uleb128 0xd
	.4byte	0x144
	.uleb128 0xe
	.4byte	0x8c
	.byte	0
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x6
	.byte	0x1b
	.4byte	0x14f
	.uleb128 0xc
	.byte	0x4
	.4byte	0x155
	.uleb128 0xf
	.4byte	0x8c
	.4byte	0x164
	.uleb128 0xe
	.4byte	0x25
	.byte	0
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0x6
	.byte	0x1c
	.4byte	0x133
	.uleb128 0x6
	.byte	0x8
	.byte	0x6
	.byte	0x1e
	.4byte	0x190
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x6
	.byte	0x1f
	.4byte	0x144
	.byte	0
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x6
	.byte	0x20
	.4byte	0x164
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0x6
	.byte	0x21
	.4byte	0x16f
	.uleb128 0xc
	.byte	0x4
	.4byte	0x118
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.byte	0x1a
	.4byte	0x1b6
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x7
	.byte	0x1b
	.4byte	0x1b6
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x9c
	.4byte	0x1c6
	.uleb128 0xb
	.4byte	0x85
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.4byte	.LASF29
	.byte	0x7
	.byte	0x1c
	.4byte	0x1a1
	.uleb128 0x6
	.byte	0x58
	.byte	0x8
	.byte	0x19
	.4byte	0x2e2
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x8
	.byte	0x1a
	.4byte	0x2e7
	.byte	0
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x8
	.byte	0x1b
	.4byte	0x2e7
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x8
	.byte	0x1c
	.4byte	0x2fc
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF33
	.byte	0x8
	.byte	0x1d
	.4byte	0x320
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0x8
	.byte	0x1e
	.4byte	0x2e7
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF35
	.byte	0x8
	.byte	0x1f
	.4byte	0x2e7
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF36
	.byte	0x8
	.byte	0x20
	.4byte	0x2e7
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0x8
	.byte	0x21
	.4byte	0x2fc
	.byte	0x1c
	.uleb128 0x7
	.4byte	.LASF38
	.byte	0x8
	.byte	0x22
	.4byte	0x2fc
	.byte	0x20
	.uleb128 0x7
	.4byte	.LASF39
	.byte	0x8
	.byte	0x23
	.4byte	0x2fc
	.byte	0x24
	.uleb128 0x7
	.4byte	.LASF40
	.byte	0x8
	.byte	0x24
	.4byte	0x340
	.byte	0x28
	.uleb128 0x7
	.4byte	.LASF41
	.byte	0x8
	.byte	0x25
	.4byte	0x35a
	.byte	0x2c
	.uleb128 0x7
	.4byte	.LASF42
	.byte	0x8
	.byte	0x26
	.4byte	0x2e7
	.byte	0x30
	.uleb128 0x7
	.4byte	.LASF43
	.byte	0x8
	.byte	0x27
	.4byte	0x2e7
	.byte	0x34
	.uleb128 0x7
	.4byte	.LASF44
	.byte	0x8
	.byte	0x28
	.4byte	0x2e7
	.byte	0x38
	.uleb128 0x7
	.4byte	.LASF45
	.byte	0x8
	.byte	0x29
	.4byte	0x2e7
	.byte	0x3c
	.uleb128 0x7
	.4byte	.LASF46
	.byte	0x8
	.byte	0x2a
	.4byte	0x2e7
	.byte	0x40
	.uleb128 0x7
	.4byte	.LASF47
	.byte	0x8
	.byte	0x2b
	.4byte	0x2e7
	.byte	0x44
	.uleb128 0x7
	.4byte	.LASF48
	.byte	0x8
	.byte	0x2c
	.4byte	0x374
	.byte	0x48
	.uleb128 0x7
	.4byte	.LASF49
	.byte	0x8
	.byte	0x2d
	.4byte	0x340
	.byte	0x4c
	.uleb128 0x7
	.4byte	.LASF50
	.byte	0x8
	.byte	0x2e
	.4byte	0x2fc
	.byte	0x50
	.uleb128 0x7
	.4byte	.LASF51
	.byte	0x8
	.byte	0x2f
	.4byte	0x2fc
	.byte	0x54
	.byte	0
	.uleb128 0x10
	.4byte	0x19b
	.uleb128 0xc
	.byte	0x4
	.4byte	0x2e2
	.uleb128 0xf
	.4byte	0x19b
	.4byte	0x2fc
	.uleb128 0xe
	.4byte	0x9c
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x2ed
	.uleb128 0xf
	.4byte	0x19b
	.4byte	0x320
	.uleb128 0xe
	.4byte	0xa7
	.uleb128 0xe
	.4byte	0x9c
	.uleb128 0xe
	.4byte	0xa7
	.uleb128 0xe
	.4byte	0xa7
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x302
	.uleb128 0xf
	.4byte	0x19b
	.4byte	0x335
	.uleb128 0xe
	.4byte	0x335
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x33b
	.uleb128 0x11
	.4byte	0x1c6
	.uleb128 0xc
	.byte	0x4
	.4byte	0x326
	.uleb128 0xf
	.4byte	0x19b
	.4byte	0x35a
	.uleb128 0xe
	.4byte	0x9c
	.uleb128 0xe
	.4byte	0x9c
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x346
	.uleb128 0xf
	.4byte	0x19b
	.4byte	0x374
	.uleb128 0xe
	.4byte	0xa7
	.uleb128 0xe
	.4byte	0xa7
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x360
	.uleb128 0x2
	.4byte	.LASF52
	.byte	0x8
	.byte	0x30
	.4byte	0x1d1
	.uleb128 0x12
	.4byte	.LASF53
	.byte	0x1
	.byte	0xe5
	.4byte	0x19b
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x407
	.uleb128 0x13
	.4byte	.LASF55
	.byte	0x1
	.byte	0xe5
	.4byte	0x25
	.4byte	.LLST0
	.uleb128 0x14
	.string	"ret"
	.byte	0x1
	.byte	0xe7
	.4byte	0x19b
	.4byte	.LLST1
	.uleb128 0x15
	.4byte	.LASF83
	.4byte	0x417
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6011
	.uleb128 0x16
	.4byte	.LVL1
	.4byte	0x3db
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 8
	.byte	0
	.uleb128 0x18
	.4byte	.LVL3
	.4byte	0xc74
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xe8
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6011
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x95
	.4byte	0x417
	.uleb128 0xb
	.4byte	0x85
	.byte	0xb
	.byte	0
	.uleb128 0x11
	.4byte	0x407
	.uleb128 0x12
	.4byte	.LASF54
	.byte	0x1
	.byte	0xd6
	.4byte	0x19b
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x48b
	.uleb128 0x13
	.4byte	.LASF56
	.byte	0x1
	.byte	0xd6
	.4byte	0xa7
	.4byte	.LLST2
	.uleb128 0x19
	.4byte	.LASF57
	.byte	0x1
	.byte	0xd6
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.4byte	.LASF58
	.byte	0x1
	.byte	0xd6
	.4byte	0x48b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1a
	.4byte	.LASF59
	.byte	0x1
	.byte	0xd8
	.4byte	0x19b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1b
	.4byte	.LASF60
	.byte	0x1
	.byte	0xda
	.4byte	0x491
	.4byte	.LLST3
	.uleb128 0x18
	.4byte	.LVL6
	.4byte	0x385
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 3
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x491
	.uleb128 0xc
	.byte	0x4
	.4byte	0x9c
	.uleb128 0x12
	.4byte	.LASF51
	.byte	0x1
	.byte	0xc6
	.4byte	0x19b
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x504
	.uleb128 0x13
	.4byte	.LASF61
	.byte	0x1
	.byte	0xc6
	.4byte	0x9c
	.4byte	.LLST4
	.uleb128 0x1a
	.4byte	.LASF60
	.byte	0x1
	.byte	0xc8
	.4byte	0x491
	.uleb128 0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.uleb128 0x1c
	.4byte	.LASF57
	.byte	0x1
	.byte	0xc9
	.4byte	0x504
	.byte	0x1
	.uleb128 0x1a
	.4byte	.LASF59
	.byte	0x1
	.byte	0xca
	.4byte	0x19b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x18
	.4byte	.LVL13
	.4byte	0x41c
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0xc5b
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0x9c
	.uleb128 0x12
	.4byte	.LASF50
	.byte	0x1
	.byte	0xbc
	.4byte	0x19b
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x576
	.uleb128 0x13
	.4byte	.LASF61
	.byte	0x1
	.byte	0xbc
	.4byte	0x9c
	.4byte	.LLST5
	.uleb128 0x1a
	.4byte	.LASF60
	.byte	0x1
	.byte	0xbe
	.4byte	0x491
	.uleb128 0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.uleb128 0x1c
	.4byte	.LASF57
	.byte	0x1
	.byte	0xbf
	.4byte	0x504
	.byte	0x1
	.uleb128 0x1a
	.4byte	.LASF59
	.byte	0x1
	.byte	0xc0
	.4byte	0x19b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x18
	.4byte	.LVL18
	.4byte	0x41c
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0xc2f
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF49
	.byte	0x1
	.byte	0xb2
	.4byte	0x19b
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5ff
	.uleb128 0x13
	.4byte	.LASF62
	.byte	0x1
	.byte	0xb2
	.4byte	0x335
	.4byte	.LLST6
	.uleb128 0x1a
	.4byte	.LASF60
	.byte	0x1
	.byte	0xb4
	.4byte	0x491
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.4byte	.LASF57
	.byte	0x1
	.byte	0xb5
	.4byte	0x9c
	.byte	0x8
	.uleb128 0x1a
	.4byte	.LASF59
	.byte	0x1
	.byte	0xb6
	.4byte	0x19b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1d
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x5e2
	.uleb128 0x14
	.string	"ijk"
	.byte	0x1
	.byte	0xb8
	.4byte	0x3e
	.4byte	.LLST7
	.byte	0
	.uleb128 0x18
	.4byte	.LVL23
	.4byte	0x41c
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2001
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF48
	.byte	0x1
	.byte	0xa7
	.4byte	0x19b
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x67b
	.uleb128 0x13
	.4byte	.LASF63
	.byte	0x1
	.byte	0xa7
	.4byte	0xa7
	.4byte	.LLST8
	.uleb128 0x13
	.4byte	.LASF64
	.byte	0x1
	.byte	0xa7
	.4byte	0xa7
	.4byte	.LLST9
	.uleb128 0x1b
	.4byte	.LASF60
	.byte	0x1
	.byte	0xa9
	.4byte	0x491
	.4byte	.LLST10
	.uleb128 0x1c
	.4byte	.LASF57
	.byte	0x1
	.byte	0xaa
	.4byte	0x9c
	.byte	0x4
	.uleb128 0x1a
	.4byte	.LASF59
	.byte	0x1
	.byte	0xab
	.4byte	0x19b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x18
	.4byte	.LVL29
	.4byte	0x41c
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2024
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF65
	.byte	0x1
	.byte	0xd1
	.4byte	0x19b
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6be
	.uleb128 0x13
	.4byte	.LASF56
	.byte	0x1
	.byte	0xd1
	.4byte	0xa7
	.4byte	.LLST11
	.uleb128 0x18
	.4byte	.LVL36
	.4byte	0x41c
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF47
	.byte	0x1
	.byte	0xa2
	.4byte	0x19b
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6e9
	.uleb128 0x18
	.4byte	.LVL38
	.4byte	0x67b
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2023
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF46
	.byte	0x1
	.byte	0x9d
	.4byte	0x19b
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x714
	.uleb128 0x18
	.4byte	.LVL39
	.4byte	0x67b
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x202a
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF45
	.byte	0x1
	.byte	0x98
	.4byte	0x19b
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x73f
	.uleb128 0x18
	.4byte	.LVL40
	.4byte	0x67b
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2003
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF44
	.byte	0x1
	.byte	0x93
	.4byte	0x19b
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x76a
	.uleb128 0x18
	.4byte	.LVL41
	.4byte	0x67b
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x201c
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF43
	.byte	0x1
	.byte	0x8e
	.4byte	0x19b
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x795
	.uleb128 0x18
	.4byte	.LVL42
	.4byte	0x67b
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2002
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF42
	.byte	0x1
	.byte	0x89
	.4byte	0x19b
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7c0
	.uleb128 0x18
	.4byte	.LVL43
	.4byte	0x67b
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x200f
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF36
	.byte	0x1
	.byte	0x51
	.4byte	0x19b
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7eb
	.uleb128 0x18
	.4byte	.LVL44
	.4byte	0x67b
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1002
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF35
	.byte	0x1
	.byte	0x4c
	.4byte	0x19b
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x816
	.uleb128 0x18
	.4byte	.LVL45
	.4byte	0x67b
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1009
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF34
	.byte	0x1
	.byte	0x47
	.4byte	0x19b
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x841
	.uleb128 0x18
	.4byte	.LVL46
	.4byte	0x67b
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1001
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF31
	.byte	0x1
	.byte	0x2b
	.4byte	0x19b
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x86c
	.uleb128 0x18
	.4byte	.LVL47
	.4byte	0x67b
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1005
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF30
	.byte	0x1
	.byte	0x26
	.4byte	0x19b
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x897
	.uleb128 0x18
	.4byte	.LVL48
	.4byte	0x67b
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0xc03
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF41
	.byte	0x1
	.byte	0x7e
	.4byte	0x19b
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x911
	.uleb128 0x13
	.4byte	.LASF66
	.byte	0x1
	.byte	0x7e
	.4byte	0x9c
	.4byte	.LLST12
	.uleb128 0x19
	.4byte	.LASF67
	.byte	0x1
	.byte	0x7e
	.4byte	0x9c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.4byte	.LASF60
	.byte	0x1
	.byte	0x80
	.4byte	0x491
	.uleb128 0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.uleb128 0x1c
	.4byte	.LASF57
	.byte	0x1
	.byte	0x81
	.4byte	0x504
	.byte	0x2
	.uleb128 0x1a
	.4byte	.LASF59
	.byte	0x1
	.byte	0x82
	.4byte	0x19b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x18
	.4byte	.LVL51
	.4byte	0x41c
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0xc6d
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF40
	.byte	0x1
	.byte	0x74
	.4byte	0x19b
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x99a
	.uleb128 0x13
	.4byte	.LASF62
	.byte	0x1
	.byte	0x74
	.4byte	0x335
	.4byte	.LLST13
	.uleb128 0x1a
	.4byte	.LASF60
	.byte	0x1
	.byte	0x76
	.4byte	0x491
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.4byte	.LASF57
	.byte	0x1
	.byte	0x77
	.4byte	0x9c
	.byte	0x8
	.uleb128 0x1a
	.4byte	.LASF59
	.byte	0x1
	.byte	0x78
	.4byte	0x19b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1d
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x97d
	.uleb128 0x14
	.string	"ijk"
	.byte	0x1
	.byte	0x7a
	.4byte	0x3e
	.4byte	.LLST14
	.byte	0
	.uleb128 0x18
	.4byte	.LVL56
	.4byte	0x41c
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0xc01
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF39
	.byte	0x1
	.byte	0x6a
	.4byte	0x19b
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa07
	.uleb128 0x13
	.4byte	.LASF68
	.byte	0x1
	.byte	0x6a
	.4byte	0x9c
	.4byte	.LLST15
	.uleb128 0x1a
	.4byte	.LASF60
	.byte	0x1
	.byte	0x6c
	.4byte	0x491
	.uleb128 0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.uleb128 0x1c
	.4byte	.LASF57
	.byte	0x1
	.byte	0x6d
	.4byte	0x504
	.byte	0x1
	.uleb128 0x1a
	.4byte	.LASF59
	.byte	0x1
	.byte	0x6e
	.4byte	0x19b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x18
	.4byte	.LVL62
	.4byte	0x41c
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0xc7a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF38
	.byte	0x1
	.byte	0x60
	.4byte	0x19b
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa74
	.uleb128 0x13
	.4byte	.LASF68
	.byte	0x1
	.byte	0x60
	.4byte	0x9c
	.4byte	.LLST16
	.uleb128 0x1a
	.4byte	.LASF60
	.byte	0x1
	.byte	0x62
	.4byte	0x491
	.uleb128 0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.uleb128 0x1c
	.4byte	.LASF57
	.byte	0x1
	.byte	0x63
	.4byte	0x504
	.byte	0x1
	.uleb128 0x1a
	.4byte	.LASF59
	.byte	0x1
	.byte	0x64
	.4byte	0x19b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x18
	.4byte	.LVL67
	.4byte	0x41c
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0xc56
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x1
	.byte	0x56
	.4byte	0x19b
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xae1
	.uleb128 0x13
	.4byte	.LASF69
	.byte	0x1
	.byte	0x56
	.4byte	0x9c
	.4byte	.LLST17
	.uleb128 0x1a
	.4byte	.LASF60
	.byte	0x1
	.byte	0x58
	.4byte	0x491
	.uleb128 0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.uleb128 0x1c
	.4byte	.LASF57
	.byte	0x1
	.byte	0x59
	.4byte	0x504
	.byte	0x1
	.uleb128 0x1a
	.4byte	.LASF59
	.byte	0x1
	.byte	0x5a
	.4byte	0x19b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x18
	.4byte	.LVL72
	.4byte	0x41c
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1004
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF33
	.byte	0x1
	.byte	0x3a
	.4byte	0x19b
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb7b
	.uleb128 0x13
	.4byte	.LASF70
	.byte	0x1
	.byte	0x3a
	.4byte	0xa7
	.4byte	.LLST18
	.uleb128 0x13
	.4byte	.LASF71
	.byte	0x1
	.byte	0x3a
	.4byte	0x9c
	.4byte	.LLST19
	.uleb128 0x13
	.4byte	.LASF72
	.byte	0x1
	.byte	0x3a
	.4byte	0xa7
	.4byte	.LLST20
	.uleb128 0x13
	.4byte	.LASF73
	.byte	0x1
	.byte	0x3a
	.4byte	0xa7
	.4byte	.LLST21
	.uleb128 0x1b
	.4byte	.LASF60
	.byte	0x1
	.byte	0x3c
	.4byte	0x491
	.4byte	.LLST22
	.uleb128 0x1c
	.4byte	.LASF57
	.byte	0x1
	.byte	0x3d
	.4byte	0x504
	.byte	0x7
	.uleb128 0x1a
	.4byte	.LASF59
	.byte	0x1
	.byte	0x3e
	.4byte	0x19b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x18
	.4byte	.LVL77
	.4byte	0x41c
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0xc33
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF32
	.byte	0x1
	.byte	0x30
	.4byte	0x19b
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbe8
	.uleb128 0x13
	.4byte	.LASF61
	.byte	0x1
	.byte	0x30
	.4byte	0x9c
	.4byte	.LLST23
	.uleb128 0x1a
	.4byte	.LASF60
	.byte	0x1
	.byte	0x32
	.4byte	0x491
	.uleb128 0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.uleb128 0x1c
	.4byte	.LASF57
	.byte	0x1
	.byte	0x33
	.4byte	0x504
	.byte	0x1
	.uleb128 0x1a
	.4byte	.LASF59
	.byte	0x1
	.byte	0x34
	.4byte	0x19b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x18
	.4byte	.LVL87
	.4byte	0x41c
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0xc31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x109
	.4byte	0xc0c
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc0c
	.uleb128 0x1f
	.4byte	.LVL90
	.4byte	0xc7f
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0xc12
	.uleb128 0x11
	.4byte	0x37a
	.uleb128 0x20
	.4byte	.LASF74
	.byte	0x5
	.2byte	0x2cc
	.4byte	0xc2a
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x11
	.4byte	0x123
	.uleb128 0x20
	.4byte	.LASF75
	.byte	0x5
	.2byte	0x2cd
	.4byte	0xc42
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0x123
	.uleb128 0x1a
	.4byte	.LASF76
	.byte	0x1
	.byte	0x1e
	.4byte	0xc58
	.uleb128 0x5
	.byte	0x3
	.4byte	buffer_allocator
	.uleb128 0xc
	.byte	0x4
	.4byte	0xc5e
	.uleb128 0x11
	.4byte	0x190
	.uleb128 0x1a
	.4byte	.LASF77
	.byte	0x1
	.byte	0xf0
	.4byte	0xc12
	.uleb128 0x5
	.byte	0x3
	.4byte	interface
	.uleb128 0x21
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0x9
	.byte	0x29
	.uleb128 0x21
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0xa
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x18
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LFE50
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
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LFE50
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LFE49
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x3
	.byte	0x7a
	.sleb128 9
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x3
	.byte	0x7a
	.sleb128 10
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LFE49
	.2byte	0x3
	.byte	0x7a
	.sleb128 11
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL11
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LFE47
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL16
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LFE46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL21
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LFE45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LFE45
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL27
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL27
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL32
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x6
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LFE48
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL49
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL54
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL59
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LFE36
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL60
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL64
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL65
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL69
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL70
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL74
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL75
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL78
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL75
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL79
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL75
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL80
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL75
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL82
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL81
	.4byte	.LVL83
	.2byte	0x6
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL85
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL89
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xe4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB51
	.4byte	.LFE51
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF75:
	.string	"bd_addr_null"
.LASF62:
	.string	"event_mask"
.LASF67:
	.string	"simultaneous_host"
.LASF61:
	.string	"enable"
.LASF79:
	.string	"buffer_allocator_get_interface"
.LASF22:
	.string	"BT_HDR"
.LASF6:
	.string	"short int"
.LASF3:
	.string	"size_t"
.LASF65:
	.string	"make_command_no_params"
.LASF11:
	.string	"sizetype"
.LASF23:
	.string	"alloc_fn"
.LASF53:
	.string	"make_packet"
.LASF31:
	.string	"make_read_buffer_size"
.LASF8:
	.string	"long long int"
.LASF16:
	.string	"UINT8"
.LASF68:
	.string	"mode"
.LASF18:
	.string	"event"
.LASF7:
	.string	"__uint16_t"
.LASF14:
	.string	"uint8_t"
.LASF56:
	.string	"opcode"
.LASF59:
	.string	"packet"
.LASF26:
	.string	"free"
.LASF27:
	.string	"allocator_t"
.LASF66:
	.string	"supported_host"
.LASF44:
	.string	"make_ble_read_supported_states"
.LASF32:
	.string	"make_set_c2h_flow_control"
.LASF69:
	.string	"page_number"
.LASF72:
	.string	"acl_count"
.LASF49:
	.string	"make_ble_set_event_mask"
.LASF54:
	.string	"make_command"
.LASF50:
	.string	"make_write_sync_flow_control_enable"
.LASF10:
	.string	"long int"
.LASF19:
	.string	"offset"
.LASF60:
	.string	"stream"
.LASF4:
	.string	"__uint8_t"
.LASF52:
	.string	"hci_packet_factory_t"
.LASF41:
	.string	"make_ble_write_host_support"
.LASF57:
	.string	"parameter_size"
.LASF45:
	.string	"make_ble_read_local_supported_features"
.LASF55:
	.string	"data_size"
.LASF33:
	.string	"make_host_buffer_size"
.LASF5:
	.string	"unsigned char"
.LASF84:
	.string	"hci_packet_factory_get_interface"
.LASF83:
	.string	"__func__"
.LASF82:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF47:
	.string	"make_ble_read_suggested_default_data_length"
.LASF64:
	.string	"SuggestedMaxTxTime"
.LASF35:
	.string	"make_read_bd_addr"
.LASF2:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF63:
	.string	"SuggestedMaxTxOctets"
.LASF0:
	.string	"unsigned int"
.LASF15:
	.string	"uint16_t"
.LASF36:
	.string	"make_read_local_supported_commands"
.LASF25:
	.string	"alloc"
.LASF71:
	.string	"sco_size"
.LASF1:
	.string	"short unsigned int"
.LASF73:
	.string	"sco_count"
.LASF51:
	.string	"make_write_default_erroneous_data_report"
.LASF46:
	.string	"make_ble_read_resolving_list_size"
.LASF13:
	.string	"char"
.LASF48:
	.string	"make_ble_write_suggested_default_data_length"
.LASF38:
	.string	"make_write_simple_pairing_mode"
.LASF76:
	.string	"buffer_allocator"
.LASF17:
	.string	"_Bool"
.LASF30:
	.string	"make_reset"
.LASF39:
	.string	"make_write_secure_connections_host_support"
.LASF21:
	.string	"data"
.LASF29:
	.string	"bt_event_mask_t"
.LASF34:
	.string	"make_read_local_version_info"
.LASF12:
	.string	"long unsigned int"
.LASF43:
	.string	"make_ble_read_buffer_size"
.LASF37:
	.string	"make_read_local_extended_features"
.LASF58:
	.string	"stream_out"
.LASF42:
	.string	"make_ble_read_white_list_size"
.LASF24:
	.string	"free_fn"
.LASF40:
	.string	"make_set_event_mask"
.LASF74:
	.string	"bd_addr_any"
.LASF78:
	.string	"__assert_func"
.LASF80:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF77:
	.string	"interface"
.LASF70:
	.string	"acl_size"
.LASF20:
	.string	"layer_specific"
.LASF81:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/hci/hci_packet_factory.c"
.LASF28:
	.string	"as_array"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
