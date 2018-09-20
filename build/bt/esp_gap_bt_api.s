	.file	"esp_gap_bt_api.c"
	.text
.Ltext0:
	.section	.text.esp_bt_gap_register_callback,"ax",@progbits
	.align	4
	.global	esp_bt_gap_register_callback
	.type	esp_bt_gap_register_callback, @function
esp_bt_gap_register_callback:
.LFB31:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/api/esp_gap_bt_api.c"
	.loc 1 27 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 28 0
	call8	esp_bluedroid_get_status
.LVL1:
	bnei	a10, 2, .L3
	.loc 1 32 0
	beqz.n	a2, .L4
	.loc 1 36 0
	mov.n	a11, a2
	movi.n	a10, 0xa
	call8	btc_profile_cb_set
.LVL2:
	.loc 1 37 0
	movi.n	a2, 0
.LVL3:
	retw.n
.LVL4:
.L3:
	.loc 1 29 0
	movi	a2, 0x103
.LVL5:
	retw.n
.LVL6:
.L4:
	.loc 1 33 0
	movi.n	a2, -1
.LVL7:
	.loc 1 38 0
	retw.n
.LFE31:
	.size	esp_bt_gap_register_callback, .-esp_bt_gap_register_callback
	.section	.text.esp_bt_gap_set_scan_mode,"ax",@progbits
	.align	4
	.global	esp_bt_gap_set_scan_mode
	.type	esp_bt_gap_set_scan_mode, @function
esp_bt_gap_set_scan_mode:
.LFB32:
	.loc 1 41 0
.LVL8:
	entry	sp, 64
.LCFI1:
	.loc 1 45 0
	call8	esp_bluedroid_get_status
.LVL9:
	bnei	a10, 2, .L7
	.loc 1 49 0
	movi.n	a8, 0
	s8i	a8, sp, 0
	.loc 1 50 0
	movi.n	a9, 0xa
	s8i	a9, sp, 2
	.loc 1 51 0
	s8i	a8, sp, 3
	.loc 1 52 0
	s32i.n	a2, sp, 8
	.loc 1 54 0
	movi.n	a13, 0
	movi.n	a12, 0x18
	addi.n	a11, sp, 8
	mov.n	a10, sp
	call8	btc_transfer_context
.LVL10:
	.loc 1 54 0
	bnez.n	a10, .L8
	movi.n	a2, 0
.LVL11:
	retw.n
.LVL12:
.L7:
	.loc 1 46 0
	movi	a2, 0x103
.LVL13:
	retw.n
.LVL14:
.L8:
	.loc 1 54 0
	movi.n	a2, -1
.LVL15:
	.loc 1 55 0
	retw.n
.LFE32:
	.size	esp_bt_gap_set_scan_mode, .-esp_bt_gap_set_scan_mode
	.section	.text.esp_bt_gap_start_discovery,"ax",@progbits
	.align	4
	.global	esp_bt_gap_start_discovery
	.type	esp_bt_gap_start_discovery, @function
esp_bt_gap_start_discovery:
.LFB33:
	.loc 1 58 0
.LVL16:
	entry	sp, 64
.LCFI2:
	extui	a3, a3, 0, 8
	extui	a4, a4, 0, 8
	.loc 1 62 0
	call8	esp_bluedroid_get_status
.LVL17:
	bnei	a10, 2, .L11
	.loc 1 66 0
	bgeui	a2, 2, .L12
	.loc 1 71 0
	addi.n	a8, a3, -1
	extui	a8, a8, 0, 8
	movi.n	a9, 0x2f
	bltu	a9, a8, .L13
	.loc 1 76 0
	movi.n	a8, 0
	s8i	a8, sp, 0
	.loc 1 77 0
	movi.n	a8, 0xa
	s8i	a8, sp, 2
	.loc 1 78 0
	movi.n	a8, 1
	s8i	a8, sp, 3
	.loc 1 80 0
	s32i.n	a2, sp, 8
	.loc 1 81 0
	s8i	a3, sp, 12
	.loc 1 82 0
	s8i	a4, sp, 13
	.loc 1 84 0
	movi.n	a13, 0
	movi.n	a12, 0x18
	addi.n	a11, sp, 8
	mov.n	a10, sp
	call8	btc_transfer_context
.LVL18:
	.loc 1 84 0
	bnez.n	a10, .L14
	movi.n	a2, 0
.LVL19:
	retw.n
.LVL20:
.L11:
	.loc 1 63 0
	movi	a2, 0x103
.LVL21:
	retw.n
.LVL22:
.L12:
	.loc 1 68 0
	movi	a2, 0x102
.LVL23:
	retw.n
.LVL24:
.L13:
	.loc 1 73 0
	movi	a2, 0x102
.LVL25:
	retw.n
.LVL26:
.L14:
	.loc 1 84 0
	movi.n	a2, -1
.LVL27:
	.loc 1 85 0
	retw.n
.LFE33:
	.size	esp_bt_gap_start_discovery, .-esp_bt_gap_start_discovery
	.section	.text.esp_bt_gap_cancel_discovery,"ax",@progbits
	.align	4
	.global	esp_bt_gap_cancel_discovery
	.type	esp_bt_gap_cancel_discovery, @function
esp_bt_gap_cancel_discovery:
.LFB34:
	.loc 1 88 0
	entry	sp, 48
.LCFI3:
	.loc 1 91 0
	call8	esp_bluedroid_get_status
.LVL28:
	bnei	a10, 2, .L17
	.loc 1 95 0
	movi.n	a2, 0
	s8i	a2, sp, 0
	.loc 1 96 0
	movi.n	a2, 0xa
	s8i	a2, sp, 2
	.loc 1 97 0
	movi.n	a2, 2
	s8i	a2, sp, 3
	.loc 1 99 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	mov.n	a10, sp
	call8	btc_transfer_context
.LVL29:
	.loc 1 99 0
	bnez.n	a10, .L18
	movi.n	a2, 0
	retw.n
.L17:
	.loc 1 92 0
	movi	a2, 0x103
	retw.n
.L18:
	.loc 1 99 0
	movi.n	a2, -1
	.loc 1 100 0
	retw.n
.LFE34:
	.size	esp_bt_gap_cancel_discovery, .-esp_bt_gap_cancel_discovery
	.section	.text.esp_bt_gap_get_remote_services,"ax",@progbits
	.align	4
	.global	esp_bt_gap_get_remote_services
	.type	esp_bt_gap_get_remote_services, @function
esp_bt_gap_get_remote_services:
.LFB35:
	.loc 1 103 0
.LVL30:
	entry	sp, 64
.LCFI4:
	.loc 1 107 0
	call8	esp_bluedroid_get_status
.LVL31:
	bnei	a10, 2, .L21
	.loc 1 111 0
	movi.n	a8, 0
	s8i	a8, sp, 0
	.loc 1 112 0
	movi.n	a8, 0xa
	s8i	a8, sp, 2
	.loc 1 113 0
	movi.n	a8, 3
	s8i	a8, sp, 3
	.loc 1 115 0
	movi.n	a12, 6
	mov.n	a11, a2
	addi.n	a10, sp, 8
	call8	memcpy
.LVL32:
	.loc 1 116 0
	movi.n	a13, 0
	movi.n	a12, 0x18
	addi.n	a11, sp, 8
	mov.n	a10, sp
	call8	btc_transfer_context
.LVL33:
	.loc 1 116 0
	bnez.n	a10, .L22
	movi.n	a2, 0
.LVL34:
	retw.n
.LVL35:
.L21:
	.loc 1 108 0
	movi	a2, 0x103
.LVL36:
	retw.n
.LVL37:
.L22:
	.loc 1 116 0
	movi.n	a2, -1
.LVL38:
	.loc 1 117 0
	retw.n
.LFE35:
	.size	esp_bt_gap_get_remote_services, .-esp_bt_gap_get_remote_services
	.section	.text.esp_bt_gap_get_remote_service_record,"ax",@progbits
	.align	4
	.global	esp_bt_gap_get_remote_service_record
	.type	esp_bt_gap_get_remote_service_record, @function
esp_bt_gap_get_remote_service_record:
.LFB36:
	.loc 1 120 0
.LVL39:
	entry	sp, 64
.LCFI5:
	.loc 1 124 0
	call8	esp_bluedroid_get_status
.LVL40:
	bnei	a10, 2, .L25
	.loc 1 128 0
	movi.n	a8, 0
	s8i	a8, sp, 0
	.loc 1 129 0
	movi.n	a8, 0xa
	s8i	a8, sp, 2
	.loc 1 130 0
	movi.n	a8, 4
	s8i	a8, sp, 3
	.loc 1 132 0
	movi.n	a12, 6
	mov.n	a11, a2
	addi.n	a10, sp, 8
	call8	memcpy
.LVL41:
	.loc 1 133 0
	movi.n	a12, 0x12
	mov.n	a11, a3
	addi.n	a10, sp, 14
	call8	memcpy
.LVL42:
	.loc 1 134 0
	movi.n	a13, 0
	movi.n	a12, 0x18
	addi.n	a11, sp, 8
	mov.n	a10, sp
	call8	btc_transfer_context
.LVL43:
	.loc 1 134 0
	bnez.n	a10, .L26
	movi.n	a2, 0
.LVL44:
	retw.n
.LVL45:
.L25:
	.loc 1 125 0
	movi	a2, 0x103
.LVL46:
	retw.n
.LVL47:
.L26:
	.loc 1 134 0
	movi.n	a2, -1
.LVL48:
	.loc 1 135 0
	retw.n
.LFE36:
	.size	esp_bt_gap_get_remote_service_record, .-esp_bt_gap_get_remote_service_record
	.section	.text.esp_bt_gap_resolve_eir_data,"ax",@progbits
	.align	4
	.global	esp_bt_gap_resolve_eir_data
	.type	esp_bt_gap_resolve_eir_data, @function
esp_bt_gap_resolve_eir_data:
.LFB37:
	.loc 1 138 0
.LVL49:
	entry	sp, 32
.LCFI6:
	.loc 1 139 0
	beqz.n	a2, .L29
	.loc 1 143 0
	mov.n	a12, a4
	extui	a11, a3, 0, 8
	mov.n	a10, a2
	call8	BTM_CheckEirData
.LVL50:
	mov.n	a2, a10
.LVL51:
	retw.n
.LVL52:
.L29:
	.loc 1 140 0
	movi.n	a2, 0
.LVL53:
	.loc 1 144 0
	retw.n
.LFE37:
	.size	esp_bt_gap_resolve_eir_data, .-esp_bt_gap_resolve_eir_data
	.section	.text.esp_bt_gap_set_cod,"ax",@progbits
	.literal_position
	.literal .LC0, .L33
	.align	4
	.global	esp_bt_gap_set_cod
	.type	esp_bt_gap_set_cod, @function
esp_bt_gap_set_cod:
.LFB38:
	.loc 1 147 0
.LVL54:
	entry	sp, 64
.LCFI7:
	.loc 1 151 0
	call8	esp_bluedroid_get_status
.LVL55:
	bnei	a10, 2, .L34
	.loc 1 155 0
	movi.n	a8, 0xa
	bltu	a8, a3, .L35
	l32r	a8, .LC0
	addx4	a8, a3, a8
	l32i.n	a8, a8, 0
	jx	a8
	.section	.rodata.esp_bt_gap_set_cod,"a",@progbits
	.align	4
	.align	4
.L33:
	.word	.L35
	.word	.L32
	.word	.L32
	.word	.L35
	.word	.L32
	.word	.L35
	.word	.L35
	.word	.L35
	.word	.L32
	.word	.L35
	.word	.L32
	.section	.text.esp_bt_gap_set_cod
.L32:
	.loc 1 167 0
	movi.n	a8, 0
	s8i	a8, sp, 0
	.loc 1 168 0
	movi.n	a8, 0xa
	s8i	a8, sp, 2
	.loc 1 169 0
	movi.n	a8, 5
	s8i	a8, sp, 3
	.loc 1 171 0
	s32i.n	a3, sp, 12
	.loc 1 172 0
	s32i.n	a2, sp, 8
	.loc 1 173 0
	movi.n	a13, 0
	movi.n	a12, 0x18
	addi.n	a11, sp, 8
	mov.n	a10, sp
	call8	btc_transfer_context
.LVL56:
	.loc 1 173 0
	bnez.n	a10, .L36
	movi.n	a2, 0
.LVL57:
	retw.n
.LVL58:
.L34:
	.loc 1 152 0
	movi	a2, 0x103
.LVL59:
	retw.n
.LVL60:
.L35:
	.loc 1 163 0
	movi	a2, 0x102
.LVL61:
	retw.n
.LVL62:
.L36:
	.loc 1 173 0
	movi.n	a2, -1
.LVL63:
	.loc 1 174 0
	retw.n
.LFE38:
	.size	esp_bt_gap_set_cod, .-esp_bt_gap_set_cod
	.section	.text.esp_bt_gap_get_cod,"ax",@progbits
	.align	4
	.global	esp_bt_gap_get_cod
	.type	esp_bt_gap_get_cod, @function
esp_bt_gap_get_cod:
.LFB39:
	.loc 1 178 0
.LVL64:
	entry	sp, 32
.LCFI8:
	.loc 1 179 0
	mov.n	a10, a2
	call8	btc_gap_bt_get_cod
.LVL65:
	.loc 1 180 0
	mov.n	a2, a10
.LVL66:
	retw.n
.LFE39:
	.size	esp_bt_gap_get_cod, .-esp_bt_gap_get_cod
	.section	.text.esp_bt_gap_read_rssi_delta,"ax",@progbits
	.align	4
	.global	esp_bt_gap_read_rssi_delta
	.type	esp_bt_gap_read_rssi_delta, @function
esp_bt_gap_read_rssi_delta:
.LFB40:
	.loc 1 184 0
.LVL67:
	entry	sp, 64
.LCFI9:
	.loc 1 187 0
	movi.n	a8, 0
	s8i	a8, sp, 0
	.loc 1 188 0
	movi.n	a8, 0xa
	s8i	a8, sp, 2
	.loc 1 189 0
	movi.n	a8, 6
	s8i	a8, sp, 3
	.loc 1 190 0
	movi.n	a12, 6
	mov.n	a11, a2
	addi.n	a10, sp, 8
	call8	memcpy
.LVL68:
	.loc 1 192 0
	movi.n	a13, 0
	movi.n	a12, 0x18
	addi.n	a11, sp, 8
	mov.n	a10, sp
	call8	btc_transfer_context
.LVL69:
	.loc 1 192 0
	bnez.n	a10, .L40
	movi.n	a2, 0
.LVL70:
	retw.n
.LVL71:
.L40:
	movi.n	a2, -1
.LVL72:
	.loc 1 193 0
	retw.n
.LFE40:
	.size	esp_bt_gap_read_rssi_delta, .-esp_bt_gap_read_rssi_delta
	.section	.text.esp_bt_gap_remove_bond_device,"ax",@progbits
	.align	4
	.global	esp_bt_gap_remove_bond_device
	.type	esp_bt_gap_remove_bond_device, @function
esp_bt_gap_remove_bond_device:
.LFB41:
	.loc 1 196 0
.LVL73:
	entry	sp, 64
.LCFI10:
	.loc 1 200 0
	call8	esp_bluedroid_get_status
.LVL74:
	bnei	a10, 2, .L43
	.loc 1 204 0
	movi.n	a8, 0
	s8i	a8, sp, 0
	.loc 1 205 0
	movi.n	a8, 0xa
	s8i	a8, sp, 2
	.loc 1 206 0
	movi.n	a8, 7
	s8i	a8, sp, 3
	.loc 1 208 0
	movi.n	a12, 6
	mov.n	a11, a2
	addi.n	a10, sp, 8
	call8	memcpy
.LVL75:
	.loc 1 209 0
	movi.n	a13, 0
	movi.n	a12, 0x18
	addi.n	a11, sp, 8
	mov.n	a10, sp
	call8	btc_transfer_context
.LVL76:
	.loc 1 209 0
	bnez.n	a10, .L44
	movi.n	a2, 0
.LVL77:
	retw.n
.LVL78:
.L43:
	.loc 1 201 0
	movi	a2, 0x103
.LVL79:
	retw.n
.LVL80:
.L44:
	.loc 1 209 0
	movi.n	a2, -1
.LVL81:
	.loc 1 210 0
	retw.n
.LFE41:
	.size	esp_bt_gap_remove_bond_device, .-esp_bt_gap_remove_bond_device
	.section	.text.esp_bt_gap_get_bond_device_num,"ax",@progbits
	.align	4
	.global	esp_bt_gap_get_bond_device_num
	.type	esp_bt_gap_get_bond_device_num, @function
esp_bt_gap_get_bond_device_num:
.LFB42:
	.loc 1 213 0
	entry	sp, 32
.LCFI11:
	.loc 1 214 0
	call8	esp_bluedroid_get_status
.LVL82:
	bnei	a10, 2, .L47
	.loc 1 217 0
	call8	btc_storage_get_num_bt_bond_devices
.LVL83:
	mov.n	a2, a10
	retw.n
.L47:
	.loc 1 215 0
	movi.n	a2, -1
	.loc 1 218 0
	retw.n
.LFE42:
	.size	esp_bt_gap_get_bond_device_num, .-esp_bt_gap_get_bond_device_num
	.section	.text.esp_bt_gap_get_bond_device_list,"ax",@progbits
	.align	4
	.global	esp_bt_gap_get_bond_device_list
	.type	esp_bt_gap_get_bond_device_list, @function
esp_bt_gap_get_bond_device_list:
.LFB43:
	.loc 1 221 0
.LVL84:
	entry	sp, 32
.LCFI12:
	.loc 1 225 0
	movi.n	a8, 1
	movi.n	a10, 0
	mov.n	a9, a10
	moveqz	a9, a8, a2
	.loc 1 225 0
	movnez	a8, a10, a3
	or	a8, a8, a9
	.loc 1 225 0
	bne	a8, a10, .L51
	.loc 1 229 0
	call8	esp_bluedroid_get_status
.LVL85:
	bnei	a10, 2, .L52
	.loc 1 233 0
	call8	btc_storage_get_num_bt_bond_devices
.LVL86:
	.loc 1 234 0
	l32i.n	a8, a2, 0
	bge	a10, a8, .L50
	.loc 1 235 0
	s32i.n	a10, a2, 0
.L50:
	.loc 1 238 0
	l32i.n	a11, a2, 0
	mov.n	a10, a3
.LVL87:
	call8	btc_storage_get_bonded_bt_devices_list
.LVL88:
	.loc 1 240 0
	bnez.n	a10, .L53
	movi.n	a2, 0
.LVL89:
	retw.n
.LVL90:
.L51:
	.loc 1 226 0
	movi	a2, 0x102
.LVL91:
	retw.n
.LVL92:
.L52:
	.loc 1 230 0
	movi	a2, 0x103
.LVL93:
	retw.n
.LVL94:
.L53:
	.loc 1 240 0
	movi.n	a2, -1
.LVL95:
	.loc 1 241 0
	retw.n
.LFE43:
	.size	esp_bt_gap_get_bond_device_list, .-esp_bt_gap_get_bond_device_list
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
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI0-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI1-.LFB32
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI2-.LFB33
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI3-.LFB34
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI4-.LFB35
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI5-.LFB36
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI6-.LFB37
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI7-.LFB38
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI8-.LFB39
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
	.uleb128 0x40
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI10-.LFB41
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI11-.LFB42
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI12-.LFB43
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/api/include/api/esp_bt_main.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/api/include/api/esp_bt_defs.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/api/include/api/esp_gap_bt_api.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/common/include/common/bt_defs.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/include/btc/btc_task.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/profile/std/include/btc_gap_bt.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/include/btc/btc_manage.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
	.file 14 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/include/btc/btc_storage.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xf15
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF220
	.byte	0xc
	.4byte	.LASF221
	.4byte	.LASF222
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x2
	.byte	0x11
	.4byte	0x30
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x2
	.byte	0x12
	.4byte	0x42
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0x2
	.byte	0x16
	.4byte	0x5b
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x2
	.byte	0x19
	.4byte	0x6d
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x2
	.byte	0x1a
	.4byte	0x7f
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x3
	.byte	0x14
	.4byte	0x25
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x3
	.byte	0x15
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x3
	.byte	0x21
	.4byte	0x50
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x3
	.byte	0x2c
	.4byte	0x62
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x3
	.byte	0x2d
	.4byte	0x74
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x4
	.byte	0x21
	.4byte	0x9f
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF18
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF19
	.uleb128 0x5
	.4byte	0xcb
	.4byte	0xf4
	.uleb128 0x6
	.4byte	0xdd
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF20
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF21
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF22
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x5
	.byte	0x18
	.4byte	0xb5
	.uleb128 0x8
	.byte	0x4
	.4byte	0x7f
	.byte	0x6
	.byte	0x1b
	.4byte	0x135
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x7f
	.byte	0x7
	.byte	0x21
	.4byte	0x1c0
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0xf
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x11
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x12
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x13
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x14
	.byte	0
	.uleb128 0x2
	.4byte	.LASF48
	.byte	0x7
	.byte	0x37
	.4byte	0x135
	.uleb128 0x5
	.4byte	0x9f
	.4byte	0x1db
	.uleb128 0x6
	.4byte	0xdd
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.byte	0x10
	.byte	0x7
	.byte	0x57
	.4byte	0x205
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x7
	.byte	0x58
	.4byte	0xaa
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x7
	.byte	0x59
	.4byte	0xc0
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x7
	.byte	0x5a
	.4byte	0x1cb
	.byte	0
	.uleb128 0xc
	.byte	0x12
	.byte	0x7
	.byte	0x52
	.4byte	0x226
	.uleb128 0xd
	.string	"len"
	.byte	0x7
	.byte	0x56
	.4byte	0xaa
	.byte	0
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0x7
	.byte	0x5b
	.4byte	0x1db
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF53
	.byte	0x7
	.byte	0x5c
	.4byte	0x205
	.uleb128 0x2
	.4byte	.LASF54
	.byte	0x7
	.byte	0x69
	.4byte	0x23c
	.uleb128 0x5
	.4byte	0x9f
	.4byte	0x24c
	.uleb128 0x6
	.4byte	0xdd
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.byte	0x8
	.byte	0x1f
	.4byte	0x2a0
	.uleb128 0xf
	.4byte	.LASF55
	.byte	0x8
	.byte	0x20
	.4byte	0xc0
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.4byte	.LASF56
	.byte	0x8
	.byte	0x21
	.4byte	0xc0
	.byte	0x4
	.byte	0x6
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.4byte	.LASF57
	.byte	0x8
	.byte	0x22
	.4byte	0xc0
	.byte	0x4
	.byte	0x5
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.4byte	.LASF58
	.byte	0x8
	.byte	0x23
	.4byte	0xc0
	.byte	0x4
	.byte	0xb
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.4byte	.LASF59
	.byte	0x8
	.byte	0x24
	.4byte	0xc0
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF60
	.byte	0x8
	.byte	0x25
	.4byte	0x24c
	.uleb128 0x8
	.byte	0x4
	.4byte	0x7f
	.byte	0x8
	.byte	0x28
	.4byte	0x2d6
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF65
	.byte	0xa
	.byte	0
	.uleb128 0x2
	.4byte	.LASF66
	.byte	0x8
	.byte	0x2e
	.4byte	0x2ab
	.uleb128 0x8
	.byte	0x4
	.4byte	0x7f
	.byte	0x8
	.byte	0x31
	.4byte	0x300
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF70
	.byte	0x8
	.byte	0x35
	.4byte	0x2e1
	.uleb128 0x8
	.byte	0x4
	.4byte	0x7f
	.byte	0x8
	.byte	0x38
	.4byte	0x330
	.uleb128 0x9
	.4byte	.LASF71
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF72
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF73
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF74
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF75
	.byte	0x8
	.byte	0x3d
	.4byte	0x30b
	.uleb128 0xc
	.byte	0xc
	.byte	0x8
	.byte	0x46
	.4byte	0x368
	.uleb128 0xe
	.4byte	.LASF76
	.byte	0x8
	.byte	0x47
	.4byte	0x330
	.byte	0
	.uleb128 0xd
	.string	"len"
	.byte	0x8
	.byte	0x48
	.4byte	0x6d
	.byte	0x4
	.uleb128 0xd
	.string	"val"
	.byte	0x8
	.byte	0x49
	.4byte	0xfb
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF77
	.byte	0x8
	.byte	0x4a
	.4byte	0x33b
	.uleb128 0x8
	.byte	0x4
	.4byte	0x7f
	.byte	0x8
	.byte	0x4d
	.4byte	0x3c2
	.uleb128 0x9
	.4byte	.LASF78
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF80
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF81
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF82
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF83
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF84
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF85
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF87
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF88
	.byte	0xff
	.byte	0
	.uleb128 0x2
	.4byte	.LASF89
	.byte	0x8
	.byte	0x59
	.4byte	0x373
	.uleb128 0x8
	.byte	0x4
	.4byte	0x7f
	.byte	0x8
	.byte	0x8c
	.4byte	0x3e6
	.uleb128 0x9
	.4byte	.LASF90
	.byte	0
	.uleb128 0x9
	.4byte	.LASF91
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF92
	.byte	0x8
	.byte	0x8f
	.4byte	0x3cd
	.uleb128 0x8
	.byte	0x4
	.4byte	0x7f
	.byte	0x8
	.byte	0x92
	.4byte	0x428
	.uleb128 0x9
	.4byte	.LASF93
	.byte	0
	.uleb128 0x9
	.4byte	.LASF94
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF95
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF96
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF97
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF98
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF99
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.4byte	.LASF100
	.byte	0x8
	.byte	0x9a
	.4byte	0x3f1
	.uleb128 0x8
	.byte	0x4
	.4byte	0x7f
	.byte	0x8
	.byte	0x9d
	.4byte	0x44c
	.uleb128 0x9
	.4byte	.LASF101
	.byte	0
	.uleb128 0x9
	.4byte	.LASF102
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF103
	.byte	0x8
	.byte	0xa0
	.4byte	0x433
	.uleb128 0x10
	.4byte	.LASF106
	.byte	0x10
	.byte	0x8
	.byte	0xab
	.4byte	0x488
	.uleb128 0xd
	.string	"bda"
	.byte	0x8
	.byte	0xac
	.4byte	0x231
	.byte	0
	.uleb128 0xe
	.4byte	.LASF104
	.byte	0x8
	.byte	0xad
	.4byte	0x6d
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF105
	.byte	0x8
	.byte	0xae
	.4byte	0x488
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x368
	.uleb128 0x10
	.4byte	.LASF107
	.byte	0x4
	.byte	0x8
	.byte	0xb4
	.4byte	0x4a7
	.uleb128 0xe
	.4byte	.LASF108
	.byte	0x8
	.byte	0xb5
	.4byte	0x3e6
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF109
	.byte	0x14
	.byte	0x8
	.byte	0xbb
	.4byte	0x4e4
	.uleb128 0xd
	.string	"bda"
	.byte	0x8
	.byte	0xbc
	.4byte	0x231
	.byte	0
	.uleb128 0xe
	.4byte	.LASF110
	.byte	0x8
	.byte	0xbd
	.4byte	0x1c0
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF111
	.byte	0x8
	.byte	0xbe
	.4byte	0x6d
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF112
	.byte	0x8
	.byte	0xbf
	.4byte	0x4e4
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x226
	.uleb128 0x10
	.4byte	.LASF113
	.byte	0xc
	.byte	0x8
	.byte	0xc5
	.4byte	0x50f
	.uleb128 0xd
	.string	"bda"
	.byte	0x8
	.byte	0xc6
	.4byte	0x231
	.byte	0
	.uleb128 0xe
	.4byte	.LASF110
	.byte	0x8
	.byte	0xc7
	.4byte	0x1c0
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.4byte	.LASF114
	.byte	0x10
	.byte	0x8
	.byte	0xcd
	.4byte	0x540
	.uleb128 0xd
	.string	"bda"
	.byte	0x8
	.byte	0xce
	.4byte	0x231
	.byte	0
	.uleb128 0xe
	.4byte	.LASF110
	.byte	0x8
	.byte	0xcf
	.4byte	0x1c0
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF115
	.byte	0x8
	.byte	0xd0
	.4byte	0x94
	.byte	0xc
	.byte	0
	.uleb128 0x12
	.4byte	.LASF116
	.2byte	0x108
	.byte	0x8
	.byte	0xd6
	.4byte	0x572
	.uleb128 0xd
	.string	"bda"
	.byte	0x8
	.byte	0xd7
	.4byte	0x231
	.byte	0
	.uleb128 0xe
	.4byte	.LASF110
	.byte	0x8
	.byte	0xd8
	.4byte	0x1c0
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF117
	.byte	0x8
	.byte	0xd9
	.4byte	0x572
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.4byte	0x9f
	.4byte	0x582
	.uleb128 0x6
	.4byte	0xdd
	.byte	0xf8
	.byte	0
	.uleb128 0x13
	.2byte	0x108
	.byte	0x8
	.byte	0xa7
	.4byte	0x5ce
	.uleb128 0xb
	.4byte	.LASF118
	.byte	0x8
	.byte	0xaf
	.4byte	0x457
	.uleb128 0xb
	.4byte	.LASF119
	.byte	0x8
	.byte	0xb6
	.4byte	0x48e
	.uleb128 0xb
	.4byte	.LASF120
	.byte	0x8
	.byte	0xc0
	.4byte	0x4a7
	.uleb128 0xb
	.4byte	.LASF121
	.byte	0x8
	.byte	0xc8
	.4byte	0x4ea
	.uleb128 0xb
	.4byte	.LASF122
	.byte	0x8
	.byte	0xd1
	.4byte	0x50f
	.uleb128 0xb
	.4byte	.LASF123
	.byte	0x8
	.byte	0xda
	.4byte	0x540
	.byte	0
	.uleb128 0x2
	.4byte	.LASF124
	.byte	0x8
	.byte	0xdb
	.4byte	0x582
	.uleb128 0x2
	.4byte	.LASF125
	.byte	0x8
	.byte	0xe2
	.4byte	0x5e4
	.uleb128 0x11
	.byte	0x4
	.4byte	0x5ea
	.uleb128 0x14
	.4byte	0x5fa
	.uleb128 0x15
	.4byte	0x428
	.uleb128 0x15
	.4byte	0x5fa
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x5ce
	.uleb128 0xc
	.byte	0x6
	.byte	0x9
	.byte	0x3b
	.4byte	0x615
	.uleb128 0xe
	.4byte	.LASF126
	.byte	0x9
	.byte	0x3c
	.4byte	0x23c
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF127
	.byte	0x9
	.byte	0x3d
	.4byte	0x600
	.uleb128 0x8
	.byte	0x4
	.4byte	0x7f
	.byte	0x9
	.byte	0x48
	.4byte	0x699
	.uleb128 0x9
	.4byte	.LASF128
	.byte	0
	.uleb128 0x9
	.4byte	.LASF129
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF130
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF131
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF132
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF133
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF134
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF135
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF136
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF137
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF138
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF139
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF140
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF141
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF142
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF143
	.byte	0xf
	.uleb128 0x9
	.4byte	.LASF144
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF145
	.byte	0x11
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x9f
	.uleb128 0x10
	.4byte	.LASF146
	.byte	0x8
	.byte	0xa
	.byte	0x17
	.4byte	0x6e8
	.uleb128 0xd
	.string	"sig"
	.byte	0xa
	.byte	0x18
	.4byte	0x9f
	.byte	0
	.uleb128 0xd
	.string	"aid"
	.byte	0xa
	.byte	0x19
	.4byte	0x9f
	.byte	0x1
	.uleb128 0xd
	.string	"pid"
	.byte	0xa
	.byte	0x1a
	.4byte	0x9f
	.byte	0x2
	.uleb128 0xd
	.string	"act"
	.byte	0xa
	.byte	0x1b
	.4byte	0x9f
	.byte	0x3
	.uleb128 0xd
	.string	"arg"
	.byte	0xa
	.byte	0x1c
	.4byte	0xfb
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF147
	.byte	0xa
	.byte	0x1d
	.4byte	0x69f
	.uleb128 0x8
	.byte	0x4
	.4byte	0x7f
	.byte	0xa
	.byte	0x24
	.4byte	0x712
	.uleb128 0x9
	.4byte	.LASF148
	.byte	0
	.uleb128 0x9
	.4byte	.LASF149
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF150
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x7f
	.byte	0xa
	.byte	0x2a
	.4byte	0x77f
	.uleb128 0x9
	.4byte	.LASF151
	.byte	0
	.uleb128 0x9
	.4byte	.LASF152
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF153
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF154
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF155
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF156
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF157
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF158
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF159
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF160
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF161
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF162
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF163
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF164
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF165
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF166
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x7f
	.byte	0xb
	.byte	0x21
	.4byte	0x7bc
	.uleb128 0x9
	.4byte	.LASF167
	.byte	0
	.uleb128 0x9
	.4byte	.LASF168
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF169
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF170
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF171
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF172
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF173
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF174
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.4byte	.LASF175
	.byte	0x4
	.byte	0xb
	.byte	0x2f
	.4byte	0x7d5
	.uleb128 0xe
	.4byte	.LASF176
	.byte	0xb
	.byte	0x30
	.4byte	0x300
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF177
	.byte	0x8
	.byte	0xb
	.byte	0x34
	.4byte	0x806
	.uleb128 0xe
	.4byte	.LASF176
	.byte	0xb
	.byte	0x35
	.4byte	0x44c
	.byte	0
	.uleb128 0xe
	.4byte	.LASF178
	.byte	0xb
	.byte	0x36
	.4byte	0x9f
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF179
	.byte	0xb
	.byte	0x37
	.4byte	0x9f
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.4byte	.LASF180
	.byte	0x18
	.byte	0xb
	.byte	0x3e
	.4byte	0x82b
	.uleb128 0xd
	.string	"bda"
	.byte	0xb
	.byte	0x3f
	.4byte	0x615
	.byte	0
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0xb
	.byte	0x40
	.4byte	0x226
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.4byte	.LASF181
	.byte	0x8
	.byte	0xb
	.byte	0x44
	.4byte	0x850
	.uleb128 0xd
	.string	"cod"
	.byte	0xb
	.byte	0x45
	.4byte	0x2a0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF176
	.byte	0xb
	.byte	0x46
	.4byte	0x2d6
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.4byte	.LASF182
	.byte	0x6
	.byte	0xb
	.byte	0x4a
	.4byte	0x869
	.uleb128 0xd
	.string	"bda"
	.byte	0xb
	.byte	0x4b
	.4byte	0x615
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF183
	.byte	0x6
	.byte	0xb
	.byte	0x4f
	.4byte	0x882
	.uleb128 0xd
	.string	"bda"
	.byte	0xb
	.byte	0x50
	.4byte	0x615
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x18
	.byte	0xb
	.byte	0x2d
	.4byte	0x8d8
	.uleb128 0xb
	.4byte	.LASF184
	.byte	0xb
	.byte	0x31
	.4byte	0x7bc
	.uleb128 0xb
	.4byte	.LASF185
	.byte	0xb
	.byte	0x38
	.4byte	0x7d5
	.uleb128 0x16
	.string	"bda"
	.byte	0xb
	.byte	0x3b
	.4byte	0x615
	.uleb128 0xb
	.4byte	.LASF186
	.byte	0xb
	.byte	0x41
	.4byte	0x806
	.uleb128 0xb
	.4byte	.LASF187
	.byte	0xb
	.byte	0x47
	.4byte	0x82b
	.uleb128 0xb
	.4byte	.LASF122
	.byte	0xb
	.byte	0x4c
	.4byte	0x850
	.uleb128 0xb
	.4byte	.LASF188
	.byte	0xb
	.byte	0x51
	.4byte	0x869
	.byte	0
	.uleb128 0x2
	.4byte	.LASF189
	.byte	0xb
	.byte	0x52
	.4byte	0x882
	.uleb128 0x17
	.4byte	.LASF190
	.byte	0x1
	.byte	0x1a
	.4byte	0x10b
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x92a
	.uleb128 0x18
	.4byte	.LASF192
	.byte	0x1
	.byte	0x1a
	.4byte	0x5d9
	.4byte	.LLST0
	.uleb128 0x19
	.4byte	.LVL1
	.4byte	0xec1
	.uleb128 0x1a
	.4byte	.LVL2
	.4byte	0xecc
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF191
	.byte	0x1
	.byte	0x28
	.4byte	0x10b
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x998
	.uleb128 0x18
	.4byte	.LASF176
	.byte	0x1
	.byte	0x28
	.4byte	0x300
	.4byte	.LLST1
	.uleb128 0x1c
	.string	"msg"
	.byte	0x1
	.byte	0x2a
	.4byte	0x6e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1c
	.string	"arg"
	.byte	0x1
	.byte	0x2b
	.4byte	0x8d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x19
	.4byte	.LVL9
	.4byte	0xec1
	.uleb128 0x1a
	.4byte	.LVL10
	.4byte	0xed7
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x48
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF193
	.byte	0x1
	.byte	0x39
	.4byte	0x10b
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa20
	.uleb128 0x18
	.4byte	.LASF176
	.byte	0x1
	.byte	0x39
	.4byte	0x44c
	.4byte	.LLST2
	.uleb128 0x1d
	.4byte	.LASF178
	.byte	0x1
	.byte	0x39
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.4byte	.LASF179
	.byte	0x1
	.byte	0x39
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1c
	.string	"msg"
	.byte	0x1
	.byte	0x3b
	.4byte	0x6e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1c
	.string	"arg"
	.byte	0x1
	.byte	0x3c
	.4byte	0x8d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x19
	.4byte	.LVL17
	.4byte	0xec1
	.uleb128 0x1a
	.4byte	.LVL18
	.4byte	0xed7
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x48
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF194
	.byte	0x1
	.byte	0x57
	.4byte	0x10b
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa70
	.uleb128 0x1c
	.string	"msg"
	.byte	0x1
	.byte	0x59
	.4byte	0x6e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.4byte	.LVL28
	.4byte	0xec1
	.uleb128 0x1a
	.4byte	.LVL29
	.4byte	0xed7
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF195
	.byte	0x1
	.byte	0x66
	.4byte	0x10b
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xafd
	.uleb128 0x18
	.4byte	.LASF196
	.byte	0x1
	.byte	0x66
	.4byte	0x699
	.4byte	.LLST3
	.uleb128 0x1c
	.string	"msg"
	.byte	0x1
	.byte	0x68
	.4byte	0x6e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1c
	.string	"arg"
	.byte	0x1
	.byte	0x69
	.4byte	0x8d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x19
	.4byte	.LVL31
	.4byte	0xec1
	.uleb128 0x1e
	.4byte	.LVL32
	.4byte	0xee2
	.4byte	0xadc
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL33
	.4byte	0xed7
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x48
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF197
	.byte	0x1
	.byte	0x77
	.4byte	0x10b
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbb6
	.uleb128 0x18
	.4byte	.LASF196
	.byte	0x1
	.byte	0x77
	.4byte	0x699
	.4byte	.LLST4
	.uleb128 0x1d
	.4byte	.LASF52
	.byte	0x1
	.byte	0x77
	.4byte	0x4e4
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.string	"msg"
	.byte	0x1
	.byte	0x79
	.4byte	0x6e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1c
	.string	"arg"
	.byte	0x1
	.byte	0x7a
	.4byte	0x8d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x19
	.4byte	.LVL40
	.4byte	0xec1
	.uleb128 0x1e
	.4byte	.LVL41
	.4byte	0xee2
	.4byte	0xb76
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL42
	.4byte	0xee2
	.4byte	0xb95
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -50
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x42
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL43
	.4byte	0xed7
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x48
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF198
	.byte	0x1
	.byte	0x89
	.4byte	0x699
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc18
	.uleb128 0x1f
	.string	"eir"
	.byte	0x1
	.byte	0x89
	.4byte	0x699
	.4byte	.LLST5
	.uleb128 0x1d
	.4byte	.LASF76
	.byte	0x1
	.byte	0x89
	.4byte	0x3c2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.4byte	.LASF199
	.byte	0x1
	.byte	0x89
	.4byte	0x699
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1a
	.4byte	.LVL50
	.4byte	0xeeb
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF200
	.byte	0x1
	.byte	0x92
	.4byte	0x10b
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc93
	.uleb128 0x1f
	.string	"cod"
	.byte	0x1
	.byte	0x92
	.4byte	0x2a0
	.4byte	.LLST6
	.uleb128 0x1d
	.4byte	.LASF176
	.byte	0x1
	.byte	0x92
	.4byte	0x2d6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.string	"msg"
	.byte	0x1
	.byte	0x94
	.4byte	0x6e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1c
	.string	"arg"
	.byte	0x1
	.byte	0x95
	.4byte	0x8d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x19
	.4byte	.LVL55
	.4byte	0xec1
	.uleb128 0x1a
	.4byte	.LVL56
	.4byte	0xed7
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x48
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF201
	.byte	0x1
	.byte	0xb1
	.4byte	0x10b
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xccc
	.uleb128 0x1f
	.string	"cod"
	.byte	0x1
	.byte	0xb1
	.4byte	0xccc
	.4byte	.LLST7
	.uleb128 0x1a
	.4byte	.LVL65
	.4byte	0xef7
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x2a0
	.uleb128 0x17
	.4byte	.LASF202
	.byte	0x1
	.byte	0xb7
	.4byte	0x10b
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd56
	.uleb128 0x18
	.4byte	.LASF203
	.byte	0x1
	.byte	0xb7
	.4byte	0x699
	.4byte	.LLST8
	.uleb128 0x1c
	.string	"msg"
	.byte	0x1
	.byte	0xb9
	.4byte	0x6e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1c
	.string	"arg"
	.byte	0x1
	.byte	0xba
	.4byte	0x8d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1e
	.4byte	.LVL68
	.4byte	0xee2
	.4byte	0xd35
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL69
	.4byte	0xed7
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x48
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF204
	.byte	0x1
	.byte	0xc3
	.4byte	0x10b
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xde3
	.uleb128 0x18
	.4byte	.LASF205
	.byte	0x1
	.byte	0xc3
	.4byte	0x699
	.4byte	.LLST9
	.uleb128 0x1c
	.string	"msg"
	.byte	0x1
	.byte	0xc5
	.4byte	0x6e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1c
	.string	"arg"
	.byte	0x1
	.byte	0xc6
	.4byte	0x8d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x19
	.4byte	.LVL74
	.4byte	0xec1
	.uleb128 0x1e
	.4byte	.LVL75
	.4byte	0xee2
	.4byte	0xdc2
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL76
	.4byte	0xed7
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x48
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF206
	.byte	0x1
	.byte	0xd4
	.4byte	0x6d
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe0f
	.uleb128 0x19
	.4byte	.LVL82
	.4byte	0xec1
	.uleb128 0x19
	.4byte	.LVL83
	.4byte	0xf02
	.byte	0
	.uleb128 0x17
	.4byte	.LASF207
	.byte	0x1
	.byte	0xdc
	.4byte	0x10b
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe85
	.uleb128 0x18
	.4byte	.LASF208
	.byte	0x1
	.byte	0xdc
	.4byte	0xe85
	.4byte	.LLST10
	.uleb128 0x1d
	.4byte	.LASF209
	.byte	0x1
	.byte	0xdc
	.4byte	0xe8b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.string	"ret"
	.byte	0x1
	.byte	0xde
	.4byte	0x6d
	.4byte	.LLST11
	.uleb128 0x21
	.4byte	.LASF210
	.byte	0x1
	.byte	0xdf
	.4byte	0x6d
	.4byte	.LLST12
	.uleb128 0x19
	.4byte	.LVL85
	.4byte	0xec1
	.uleb128 0x19
	.4byte	.LVL86
	.4byte	0xf02
	.uleb128 0x1a
	.4byte	.LVL88
	.4byte	0xf0d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x6d
	.uleb128 0x11
	.byte	0x4
	.4byte	0x231
	.uleb128 0x22
	.4byte	.LASF211
	.byte	0x4
	.2byte	0x2cc
	.4byte	0xea4
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x23
	.4byte	0xe4
	.uleb128 0x22
	.4byte	.LASF212
	.byte	0x4
	.2byte	0x2cd
	.4byte	0xebc
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	0xe4
	.uleb128 0x24
	.4byte	.LASF213
	.4byte	.LASF213
	.byte	0x6
	.byte	0x27
	.uleb128 0x24
	.4byte	.LASF214
	.4byte	.LASF214
	.byte	0xc
	.byte	0x19
	.uleb128 0x24
	.4byte	.LASF215
	.4byte	.LASF215
	.byte	0xa
	.byte	0x4c
	.uleb128 0x25
	.4byte	.LASF223
	.4byte	.LASF223
	.uleb128 0x26
	.4byte	.LASF216
	.4byte	.LASF216
	.byte	0xd
	.2byte	0xf33
	.uleb128 0x24
	.4byte	.LASF217
	.4byte	.LASF217
	.byte	0xb
	.byte	0x59
	.uleb128 0x24
	.4byte	.LASF218
	.4byte	.LASF218
	.byte	0xe
	.byte	0x4e
	.uleb128 0x24
	.4byte	.LASF219
	.4byte	.LASF219
	.byte	0xe
	.byte	0x5a
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x17
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL8
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
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL24
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
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL30
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL39
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL49
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
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL54
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL64
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL66
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL67
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL72
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL73
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL81
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL84
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL89
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
	.4byte	.LVL92
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL93
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
	.4byte	.LFE43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL88
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL94
	.4byte	.LFE43
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x7c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF51:
	.string	"uuid128"
.LASF116:
	.string	"auth_cmpl_param"
.LASF209:
	.string	"dev_list"
.LASF58:
	.string	"service"
.LASF218:
	.string	"btc_storage_get_num_bt_bond_devices"
.LASF162:
	.string	"BTC_PID_PRF_QUE"
.LASF138:
	.string	"BT_STATUS_RMT_DEV_DOWN"
.LASF55:
	.string	"reserved_2"
.LASF119:
	.string	"disc_st_chg"
.LASF171:
	.string	"BTC_GAP_BT_ACT_GET_REMOTE_SERVICE_RECORD"
.LASF23:
	.string	"esp_err_t"
.LASF1:
	.string	"__uint8_t"
.LASF180:
	.string	"get_rmt_srv_rcd_args"
.LASF151:
	.string	"BTC_PID_MAIN_INIT"
.LASF146:
	.string	"btc_msg"
.LASF76:
	.string	"type"
.LASF167:
	.string	"BTC_GAP_BT_ACT_SET_SCAN_MODE"
.LASF219:
	.string	"btc_storage_get_bonded_bt_devices_list"
.LASF124:
	.string	"esp_bt_gap_cb_param_t"
.LASF11:
	.string	"long long unsigned int"
.LASF168:
	.string	"BTC_GAP_BT_ACT_START_DISCOVERY"
.LASF186:
	.string	"get_rmt_srv_rcd"
.LASF145:
	.string	"BT_STATUS_MEMORY_FULL"
.LASF65:
	.string	"ESP_BT_INIT_COD"
.LASF198:
	.string	"esp_bt_gap_resolve_eir_data"
.LASF87:
	.string	"ESP_BT_EIR_TYPE_TX_POWER_LEVEL"
.LASF0:
	.string	"__int8_t"
.LASF62:
	.string	"ESP_BT_SET_COD_SERVICE_CLASS"
.LASF27:
	.string	"ESP_BT_STATUS_SUCCESS"
.LASF85:
	.string	"ESP_BT_EIR_TYPE_SHORT_LOCAL_NAME"
.LASF193:
	.string	"esp_bt_gap_start_discovery"
.LASF160:
	.string	"BTC_PID_ALARM"
.LASF110:
	.string	"stat"
.LASF72:
	.string	"ESP_BT_GAP_DEV_PROP_COD"
.LASF10:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF24:
	.string	"ESP_BLUEDROID_STATUS_UNINITIALIZED"
.LASF60:
	.string	"esp_bt_cod_t"
.LASF75:
	.string	"esp_bt_gap_dev_prop_type_t"
.LASF108:
	.string	"state"
.LASF196:
	.string	"remote_bda"
.LASF78:
	.string	"ESP_BT_EIR_TYPE_FLAGS"
.LASF155:
	.string	"BTC_PID_GAP_BLE"
.LASF165:
	.string	"BTC_PID_SPP"
.LASF137:
	.string	"BT_STATUS_AUTH_FAILURE"
.LASF21:
	.string	"long int"
.LASF147:
	.string	"btc_msg_t"
.LASF197:
	.string	"esp_bt_gap_get_remote_service_record"
.LASF161:
	.string	"BTC_PID_GAP_BT"
.LASF215:
	.string	"btc_transfer_context"
.LASF63:
	.string	"ESP_BT_CLR_COD_SERVICE_CLASS"
.LASF223:
	.string	"memcpy"
.LASF133:
	.string	"BT_STATUS_DONE"
.LASF104:
	.string	"num_prop"
.LASF143:
	.string	"BT_STATUS_PARAM_OUT_OF_RANGE"
.LASF14:
	.string	"uint16_t"
.LASF73:
	.string	"ESP_BT_GAP_DEV_PROP_RSSI"
.LASF70:
	.string	"esp_bt_scan_mode_t"
.LASF111:
	.string	"num_uuids"
.LASF50:
	.string	"uuid32"
.LASF102:
	.string	"ESP_BT_INQ_MODE_LIMITED_INQUIRY"
.LASF90:
	.string	"ESP_BT_GAP_DISCOVERY_STOPPED"
.LASF194:
	.string	"esp_bt_gap_cancel_discovery"
.LASF117:
	.string	"device_name"
.LASF139:
	.string	"BT_STATUS_AUTH_REJECTED"
.LASF74:
	.string	"ESP_BT_GAP_DEV_PROP_EIR"
.LASF159:
	.string	"BTC_PID_DM_SEC"
.LASF140:
	.string	"BT_STATUS_INVALID_STATIC_RAND_ADDR"
.LASF39:
	.string	"ESP_BT_STATUS_INVALID_STATIC_RAND_ADDR"
.LASF103:
	.string	"esp_bt_inq_mode_t"
.LASF127:
	.string	"bt_bdaddr_t"
.LASF163:
	.string	"BTC_PID_A2DP"
.LASF29:
	.string	"ESP_BT_STATUS_NOT_READY"
.LASF120:
	.string	"rmt_srvcs"
.LASF208:
	.string	"dev_num"
.LASF9:
	.string	"unsigned int"
.LASF179:
	.string	"num_rsps"
.LASF195:
	.string	"esp_bt_gap_get_remote_services"
.LASF42:
	.string	"ESP_BT_STATUS_PARAM_OUT_OF_RANGE"
.LASF56:
	.string	"minor"
.LASF22:
	.string	"long unsigned int"
.LASF202:
	.string	"esp_bt_gap_read_rssi_delta"
.LASF154:
	.string	"BTC_PID_GATT_COMMON"
.LASF105:
	.string	"prop"
.LASF185:
	.string	"start_disc"
.LASF184:
	.string	"set_scan_mode"
.LASF44:
	.string	"ESP_BT_STATUS_PEER_LE_DATA_LEN_UNSUPPORTED"
.LASF157:
	.string	"BTC_PID_SPPLIKE"
.LASF183:
	.string	"rm_bond_device_args"
.LASF77:
	.string	"esp_bt_gap_dev_prop_t"
.LASF79:
	.string	"ESP_BT_EIR_TYPE_INCMPL_16BITS_UUID"
.LASF130:
	.string	"BT_STATUS_NOT_READY"
.LASF164:
	.string	"BTC_PID_AVRC"
.LASF156:
	.string	"BTC_PID_BLE_HID"
.LASF61:
	.string	"ESP_BT_SET_COD_MAJOR_MINOR"
.LASF86:
	.string	"ESP_BT_EIR_TYPE_CMPL_LOCAL_NAME"
.LASF190:
	.string	"esp_bt_gap_register_callback"
.LASF94:
	.string	"ESP_BT_GAP_DISC_STATE_CHANGED_EVT"
.LASF192:
	.string	"callback"
.LASF131:
	.string	"BT_STATUS_NOMEM"
.LASF173:
	.string	"BTC_GAP_BT_ACT_READ_RSSI_DELTA"
.LASF129:
	.string	"BT_STATUS_FAIL"
.LASF4:
	.string	"short int"
.LASF172:
	.string	"BTC_GAP_BT_ACT_SET_COD"
.LASF101:
	.string	"ESP_BT_INQ_MODE_GENERAL_INQUIRY"
.LASF152:
	.string	"BTC_PID_DEV"
.LASF189:
	.string	"btc_gap_bt_args_t"
.LASF93:
	.string	"ESP_BT_GAP_DISC_RES_EVT"
.LASF187:
	.string	"set_cod"
.LASF150:
	.string	"BTC_SIG_NUM"
.LASF148:
	.string	"BTC_SIG_API_CALL"
.LASF35:
	.string	"ESP_BT_STATUS_UNHANDLED"
.LASF107:
	.string	"disc_state_changed_param"
.LASF201:
	.string	"esp_bt_gap_get_cod"
.LASF98:
	.string	"ESP_BT_GAP_READ_RSSI_DELTA_EVT"
.LASF174:
	.string	"BTC_GAP_BT_ACT_REMOVE_BOND_DEVICE"
.LASF142:
	.string	"BT_STATUS_UNACCEPT_CONN_INTERVAL"
.LASF19:
	.string	"sizetype"
.LASF112:
	.string	"uuid_list"
.LASF91:
	.string	"ESP_BT_GAP_DISCOVERY_STARTED"
.LASF126:
	.string	"address"
.LASF221:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/api/esp_gap_bt_api.c"
.LASF28:
	.string	"ESP_BT_STATUS_FAIL"
.LASF109:
	.string	"rmt_srvcs_param"
.LASF71:
	.string	"ESP_BT_GAP_DEV_PROP_BDNAME"
.LASF214:
	.string	"btc_profile_cb_set"
.LASF134:
	.string	"BT_STATUS_UNSUPPORTED"
.LASF170:
	.string	"BTC_GAP_BT_ACT_GET_REMOTE_SERVICES"
.LASF136:
	.string	"BT_STATUS_UNHANDLED"
.LASF82:
	.string	"ESP_BT_EIR_TYPE_CMPL_32BITS_UUID"
.LASF113:
	.string	"rmt_srvc_rec_param"
.LASF182:
	.string	"bt_read_rssi_delta_args"
.LASF158:
	.string	"BTC_PID_BLUFI"
.LASF30:
	.string	"ESP_BT_STATUS_NOMEM"
.LASF149:
	.string	"BTC_SIG_API_CB"
.LASF81:
	.string	"ESP_BT_EIR_TYPE_INCMPL_32BITS_UUID"
.LASF59:
	.string	"reserved_8"
.LASF84:
	.string	"ESP_BT_EIR_TYPE_CMPL_128BITS_UUID"
.LASF48:
	.string	"esp_bt_status_t"
.LASF210:
	.string	"dev_num_total"
.LASF33:
	.string	"ESP_BT_STATUS_UNSUPPORTED"
.LASF128:
	.string	"BT_STATUS_SUCCESS"
.LASF67:
	.string	"ESP_BT_SCAN_MODE_NONE"
.LASF132:
	.string	"BT_STATUS_BUSY"
.LASF212:
	.string	"bd_addr_null"
.LASF80:
	.string	"ESP_BT_EIR_TYPE_CMPL_16BITS_UUID"
.LASF100:
	.string	"esp_bt_gap_cb_event_t"
.LASF18:
	.string	"_Bool"
.LASF15:
	.string	"int32_t"
.LASF3:
	.string	"unsigned char"
.LASF188:
	.string	"rm_bond_device"
.LASF68:
	.string	"ESP_BT_SCAN_MODE_CONNECTABLE"
.LASF220:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF203:
	.string	"remote_addr"
.LASF206:
	.string	"esp_bt_gap_get_bond_device_num"
.LASF41:
	.string	"ESP_BT_STATUS_UNACCEPT_CONN_INTERVAL"
.LASF115:
	.string	"rssi_delta"
.LASF31:
	.string	"ESP_BT_STATUS_BUSY"
.LASF178:
	.string	"inq_len"
.LASF216:
	.string	"BTM_CheckEirData"
.LASF125:
	.string	"esp_bt_gap_cb_t"
.LASF122:
	.string	"read_rssi_delta"
.LASF166:
	.string	"BTC_PID_NUM"
.LASF97:
	.string	"ESP_BT_GAP_AUTH_CMPL_EVT"
.LASF36:
	.string	"ESP_BT_STATUS_AUTH_FAILURE"
.LASF34:
	.string	"ESP_BT_STATUS_PARM_INVALID"
.LASF123:
	.string	"auth_cmpl"
.LASF141:
	.string	"BT_STATUS_PENDING"
.LASF199:
	.string	"length"
.LASF52:
	.string	"uuid"
.LASF20:
	.string	"char"
.LASF176:
	.string	"mode"
.LASF207:
	.string	"esp_bt_gap_get_bond_device_list"
.LASF40:
	.string	"ESP_BT_STATUS_PENDING"
.LASF191:
	.string	"esp_bt_gap_set_scan_mode"
.LASF88:
	.string	"ESP_BT_EIR_TYPE_MANU_SPECIFIC"
.LASF89:
	.string	"esp_bt_eir_type_t"
.LASF5:
	.string	"__uint16_t"
.LASF92:
	.string	"esp_bt_gap_discovery_state_t"
.LASF177:
	.string	"start_disc_args"
.LASF53:
	.string	"esp_bt_uuid_t"
.LASF43:
	.string	"ESP_BT_STATUS_TIMEOUT"
.LASF7:
	.string	"__int32_t"
.LASF8:
	.string	"__uint32_t"
.LASF213:
	.string	"esp_bluedroid_get_status"
.LASF54:
	.string	"esp_bd_addr_t"
.LASF121:
	.string	"rmt_srvc_rec"
.LASF6:
	.string	"short unsigned int"
.LASF26:
	.string	"ESP_BLUEDROID_STATUS_ENABLED"
.LASF12:
	.string	"int8_t"
.LASF69:
	.string	"ESP_BT_SCAN_MODE_CONNECTABLE_DISCOVERABLE"
.LASF181:
	.string	"set_cod_args"
.LASF32:
	.string	"ESP_BT_STATUS_DONE"
.LASF95:
	.string	"ESP_BT_GAP_RMT_SRVCS_EVT"
.LASF66:
	.string	"esp_bt_cod_mode_t"
.LASF118:
	.string	"disc_res"
.LASF37:
	.string	"ESP_BT_STATUS_RMT_DEV_DOWN"
.LASF96:
	.string	"ESP_BT_GAP_RMT_SRVC_REC_EVT"
.LASF114:
	.string	"read_rssi_delta_param"
.LASF135:
	.string	"BT_STATUS_PARM_INVALID"
.LASF17:
	.string	"UINT8"
.LASF64:
	.string	"ESP_BT_SET_COD_ALL"
.LASF13:
	.string	"uint8_t"
.LASF211:
	.string	"bd_addr_any"
.LASF204:
	.string	"esp_bt_gap_remove_bond_device"
.LASF106:
	.string	"disc_res_param"
.LASF222:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF175:
	.string	"set_bt_scan_mode_args"
.LASF47:
	.string	"ESP_BT_STATUS_MEMORY_FULL"
.LASF45:
	.string	"ESP_BT_STATUS_CONTROL_LE_DATA_LEN_UNSUPPORTED"
.LASF38:
	.string	"ESP_BT_STATUS_AUTH_REJECTED"
.LASF57:
	.string	"major"
.LASF25:
	.string	"ESP_BLUEDROID_STATUS_INITIALIZED"
.LASF99:
	.string	"ESP_BT_GAP_EVT_MAX"
.LASF46:
	.string	"ESP_BT_STATUS_ERR_ILLEGAL_PARAMETER_FMT"
.LASF217:
	.string	"btc_gap_bt_get_cod"
.LASF153:
	.string	"BTC_PID_GATTS"
.LASF205:
	.string	"bd_addr"
.LASF144:
	.string	"BT_STATUS_TIMEOUT"
.LASF200:
	.string	"esp_bt_gap_set_cod"
.LASF83:
	.string	"ESP_BT_EIR_TYPE_INCMPL_128BITS_UUID"
.LASF16:
	.string	"uint32_t"
.LASF49:
	.string	"uuid16"
.LASF169:
	.string	"BTC_GAP_BT_ACT_CANCEL_DISCOVERY"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
