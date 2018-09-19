	.file	"event_default_handlers.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"event"
	.align	4
.LC2:
	.string	"\033[0;31mE (%d) %s: event is null!\033[0m\n"
	.align	4
.LC4:
	.string	"\033[0;33mW (%d) %s: unexpected system event %d!\033[0m\n"
	.section	.text.esp_system_event_debug,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC3, .LC2
	.literal .LC5, .LC4
	.align	4
	.type	esp_system_event_debug, @function
esp_system_event_debug:
.LFB31:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/event_default_handlers.c"
	.loc 1 248 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 249 0
	bnez.n	a2, .L2
	.loc 1 250 0 discriminator 2
	call8	esp_log_timestamp
.LVL1:
	l32r	a11, .LC1
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC3
	movi.n	a10, 1
	call8	esp_log_write
.LVL2:
	.loc 1 251 0 discriminator 2
	movi.n	a2, -1
.LVL3:
	retw.n
.LVL4:
.L2:
	.loc 1 254 0
	l32i.n	a8, a2, 0
	movi.n	a9, 0x18
	bgeu	a9, a8, .L6
	.loc 1 383 0 discriminator 4
	call8	esp_log_timestamp
.LVL5:
	l32r	a11, .LC1
	l32i.n	a15, a2, 0
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC5
	movi.n	a10, 2
	call8	esp_log_write
.LVL6:
	.loc 1 388 0 discriminator 4
	movi.n	a2, 0
.LVL7:
	.loc 1 384 0 discriminator 4
	retw.n
.LVL8:
.L6:
	.loc 1 388 0
	movi.n	a2, 0
.LVL9:
	.loc 1 389 0
	retw.n
.LFE31:
	.size	esp_system_event_debug, .-esp_system_event_debug
	.section	.rodata.str1.4
	.align	4
.LC7:
	.string	"\033[0;32mI (%d) %s: station ip lost\033[0m\n"
	.section	.text.system_event_sta_lost_ip_default,"ax",@progbits
	.literal_position
	.literal .LC6, .LC0
	.literal .LC8, .LC7
	.align	4
	.type	system_event_sta_lost_ip_default, @function
system_event_sta_lost_ip_default:
.LFB24:
	.loc 1 151 0
.LVL10:
	entry	sp, 32
.LCFI1:
	.loc 1 152 0
	call8	esp_log_timestamp
.LVL11:
	l32r	a11, .LC6
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC8
	movi.n	a10, 3
	call8	esp_log_write
.LVL12:
	.loc 1 154 0
	movi.n	a2, 0
.LVL13:
	retw.n
.LFE24:
	.size	system_event_sta_lost_ip_default, .-system_event_sta_lost_ip_default
	.section	.rodata.str1.4
	.align	4
.LC10:
	.string	"\033[0;32mI (%d) %s: eth ip: %d.%d.%d.%d, mask: %d.%d.%d.%d, gw: %d.%d.%d.%d\033[0m\n"
	.section	.text.system_event_eth_got_ip_default,"ax",@progbits
	.literal_position
	.literal .LC9, .LC0
	.literal .LC11, .LC10
	.align	4
	.type	system_event_eth_got_ip_default, @function
system_event_eth_got_ip_default:
.LFB22:
	.loc 1 129 0
.LVL14:
	entry	sp, 80
.LCFI2:
	.loc 1 130 0
	call8	esp_log_timestamp
.LVL15:
	l8ui	a15, a2, 4
	l8ui	a8, a2, 5
	l8ui	a9, a2, 6
	l8ui	a12, a2, 7
	l8ui	a13, a2, 8
	l8ui	a14, a2, 9
	l8ui	a3, a2, 10
	l8ui	a4, a2, 11
	l8ui	a5, a2, 12
	l8ui	a6, a2, 13
	l8ui	a7, a2, 14
	l8ui	a2, a2, 15
.LVL16:
	l32r	a11, .LC9
	s32i.n	a2, sp, 40
	s32i.n	a7, sp, 36
	s32i.n	a6, sp, 32
	s32i.n	a5, sp, 28
	s32i.n	a4, sp, 24
	s32i.n	a3, sp, 20
	s32i.n	a14, sp, 16
	s32i.n	a13, sp, 12
	s32i.n	a12, sp, 8
	s32i.n	a9, sp, 4
	s32i.n	a8, sp, 0
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC11
	movi.n	a10, 3
	call8	esp_log_write
.LVL17:
	.loc 1 136 0
	movi.n	a2, 0
	retw.n
.LFE22:
	.size	system_event_eth_got_ip_default, .-system_event_eth_got_ip_default
	.section	.rodata.str1.4
	.align	4
.LC14:
	.string	"\033[0;31mE (%d) %s: %s %d %s ret=0x%X\033[0m\n"
	.align	4
.LC16:
	.string	"esp_wifi_internal_reg_rxcb"
	.section	.text.system_event_ap_stop_handle_default,"ax",@progbits
	.literal_position
	.literal .LC12, __FUNCTION__$7469
	.literal .LC13, .LC0
	.literal .LC15, .LC14
	.literal .LC17, .LC16
	.align	4
	.type	system_event_ap_stop_handle_default, @function
system_event_ap_stop_handle_default:
.LFB26:
	.loc 1 171 0
.LVL18:
	entry	sp, 48
.LCFI3:
.LBB2:
	.loc 1 172 0
	movi.n	a11, 0
	movi.n	a10, 1
	call8	esp_wifi_internal_reg_rxcb
.LVL19:
	mov.n	a2, a10
.LVL20:
	.loc 1 172 0
	beqz.n	a10, .L10
	.loc 1 172 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL21:
	l32r	a11, .LC13
	s32i.n	a2, sp, 8
	l32r	a8, .LC17
	s32i.n	a8, sp, 4
	movi	a8, 0xac
	s32i.n	a8, sp, 0
	l32r	a15, .LC12
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC15
	movi.n	a10, 1
	call8	esp_log_write
.LVL22:
	retw.n
.L10:
.LBE2:
	.loc 1 174 0 is_stmt 1
	movi.n	a10, 1
	call8	tcpip_adapter_stop
.LVL23:
	.loc 1 176 0
	movi.n	a2, 0
.LVL24:
	.loc 1 177 0
	retw.n
.LFE26:
	.size	system_event_ap_stop_handle_default, .-system_event_ap_stop_handle_default
	.section	.text.system_event_sta_stop_handle_default,"ax",@progbits
	.align	4
	.type	system_event_sta_stop_handle_default, @function
system_event_sta_stop_handle_default:
.LFB28:
	.loc 1 192 0
.LVL25:
	entry	sp, 32
.LCFI4:
	.loc 1 193 0
	movi.n	a10, 0
	call8	tcpip_adapter_stop
.LVL26:
	.loc 1 196 0
	movi.n	a2, 0
.LVL27:
	retw.n
.LFE28:
	.size	system_event_sta_stop_handle_default, .-system_event_sta_stop_handle_default
	.section	.text.system_event_eth_stop_handle_default,"ax",@progbits
	.align	4
	.type	system_event_eth_stop_handle_default, @function
system_event_eth_stop_handle_default:
.LFB19:
	.loc 1 85 0
.LVL28:
	entry	sp, 32
.LCFI5:
	.loc 1 86 0
	movi.n	a10, 2
	call8	tcpip_adapter_stop
.LVL29:
	.loc 1 89 0
	movi.n	a2, 0
.LVL30:
	retw.n
.LFE19:
	.size	system_event_eth_stop_handle_default, .-system_event_eth_stop_handle_default
	.section	.rodata.str1.4
	.align	4
.LC23:
	.string	"esp_wifi_mac_get"
	.section	.text.system_event_ap_start_handle_default,"ax",@progbits
	.literal_position
	.literal .LC18, tcpip_adapter_ap_input
	.literal .LC19, __FUNCTION__$7463
	.literal .LC20, .LC0
	.literal .LC21, .LC14
	.literal .LC22, .LC16
	.literal .LC24, .LC23
	.align	4
	.type	system_event_ap_start_handle_default, @function
system_event_ap_start_handle_default:
.LFB25:
	.loc 1 157 0
.LVL31:
	entry	sp, 80
.LCFI6:
.LBB3:
	.loc 1 161 0
	l32r	a11, .LC18
	movi.n	a10, 1
	call8	esp_wifi_internal_reg_rxcb
.LVL32:
	mov.n	a2, a10
.LVL33:
	beqz.n	a10, .L15
	.loc 1 161 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL34:
	l32r	a11, .LC20
	s32i.n	a2, sp, 8
	l32r	a8, .LC22
	s32i.n	a8, sp, 4
	movi	a8, 0xa1
	s32i.n	a8, sp, 0
	l32r	a15, .LC19
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC21
	movi.n	a10, 1
	call8	esp_log_write
.LVL35:
	retw.n
.L15:
.LBE3:
.LBB4:
	.loc 1 162 0 is_stmt 1
	addi	a11, sp, 28
	movi.n	a10, 1
	call8	esp_wifi_get_mac
.LVL36:
	mov.n	a2, a10
.LVL37:
	beqz.n	a10, .L17
	.loc 1 162 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL38:
	l32r	a11, .LC20
	s32i.n	a2, sp, 8
	l32r	a8, .LC24
	s32i.n	a8, sp, 4
	movi	a8, 0xa2
	s32i.n	a8, sp, 0
	l32r	a15, .LC19
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC21
	movi.n	a10, 1
	call8	esp_log_write
.LVL39:
	retw.n
.L17:
.LBE4:
	.loc 1 164 0 is_stmt 1
	addi	a11, sp, 16
	movi.n	a10, 1
	call8	tcpip_adapter_get_ip_info
.LVL40:
	.loc 1 165 0
	addi	a11, sp, 16
	addi	a10, sp, 28
	call8	tcpip_adapter_ap_start
.LVL41:
	.loc 1 167 0
	movi.n	a2, 0
.LVL42:
	.loc 1 168 0
	retw.n
.LFE25:
	.size	system_event_ap_start_handle_default, .-system_event_ap_start_handle_default
	.section	.rodata.str1.4
	.align	4
.LC28:
	.string	"esp_wifi_internal_set_sta_ip"
	.align	4
.LC30:
	.string	"\033[0;32mI (%d) %s: sta ip: %d.%d.%d.%d, mask: %d.%d.%d.%d, gw: %d.%d.%d.%d\033[0m\n"
	.section	.text.system_event_sta_got_ip_default,"ax",@progbits
	.literal_position
	.literal .LC25, __FUNCTION__$7453
	.literal .LC26, .LC0
	.literal .LC27, .LC14
	.literal .LC29, .LC28
	.literal .LC31, .LC30
	.align	4
	.type	system_event_sta_got_ip_default, @function
system_event_sta_got_ip_default:
.LFB23:
	.loc 1 139 0
.LVL43:
	entry	sp, 80
.LCFI7:
.LBB5:
	.loc 1 140 0
	call8	esp_wifi_internal_set_sta_ip
.LVL44:
	mov.n	a3, a10
.LVL45:
	beqz.n	a10, .L19
	.loc 1 140 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL46:
	l32r	a11, .LC26
	s32i.n	a3, sp, 8
	l32r	a2, .LC29
.LVL47:
	s32i.n	a2, sp, 4
	movi	a2, 0x8c
	s32i.n	a2, sp, 0
	l32r	a15, .LC25
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC27
	movi.n	a10, 1
	call8	esp_log_write
.LVL48:
	mov.n	a2, a3
	retw.n
.LVL49:
.L19:
.LBE5:
	.loc 1 142 0 is_stmt 1 discriminator 9
	call8	esp_log_timestamp
.LVL50:
	l8ui	a15, a2, 4
	l8ui	a3, a2, 5
.LVL51:
	l8ui	a8, a2, 6
	l8ui	a9, a2, 7
	l8ui	a12, a2, 8
	l8ui	a13, a2, 9
	l8ui	a14, a2, 10
	l8ui	a4, a2, 11
	l8ui	a5, a2, 12
	l8ui	a6, a2, 13
	l8ui	a7, a2, 14
	l8ui	a2, a2, 15
.LVL52:
	l32r	a11, .LC26
	s32i.n	a2, sp, 40
	s32i.n	a7, sp, 36
	s32i.n	a6, sp, 32
	s32i.n	a5, sp, 28
	s32i.n	a4, sp, 24
	s32i.n	a14, sp, 20
	s32i.n	a13, sp, 16
	s32i.n	a12, sp, 12
	s32i.n	a9, sp, 8
	s32i.n	a8, sp, 4
	s32i.n	a3, sp, 0
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC31
	movi.n	a10, 3
	call8	esp_log_write
.LVL53:
	.loc 1 147 0 discriminator 9
	movi.n	a2, 0
	.loc 1 148 0 discriminator 9
	retw.n
.LFE23:
	.size	system_event_sta_got_ip_default, .-system_event_sta_got_ip_default
	.section	.text.system_event_sta_disconnected_handle_default,"ax",@progbits
	.literal_position
	.literal .LC32, __FUNCTION__$7493
	.literal .LC33, .LC0
	.literal .LC34, .LC14
	.literal .LC35, .LC16
	.align	4
	.type	system_event_sta_disconnected_handle_default, @function
system_event_sta_disconnected_handle_default:
.LFB30:
	.loc 1 241 0
.LVL54:
	entry	sp, 48
.LCFI8:
	.loc 1 242 0
	movi.n	a10, 0
	call8	tcpip_adapter_down
.LVL55:
.LBB6:
	.loc 1 243 0
	movi.n	a11, 0
	mov.n	a10, a11
	call8	esp_wifi_internal_reg_rxcb
.LVL56:
	mov.n	a2, a10
.LVL57:
	.loc 1 243 0
	beqz.n	a10, .L23
	.loc 1 243 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL58:
	l32r	a11, .LC33
	s32i.n	a2, sp, 8
	l32r	a8, .LC35
	s32i.n	a8, sp, 4
	movi	a8, 0xf3
	s32i.n	a8, sp, 0
	l32r	a15, .LC32
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC34
	movi.n	a10, 1
	call8	esp_log_write
.LVL59:
	retw.n
.L23:
.LBE6:
	.loc 1 244 0 is_stmt 1
	movi.n	a2, 0
.LVL60:
	.loc 1 245 0
	retw.n
.LFE30:
	.size	system_event_sta_disconnected_handle_default, .-system_event_sta_disconnected_handle_default
	.section	.text.system_event_eth_disconnected_handle_default,"ax",@progbits
	.align	4
	.type	system_event_eth_disconnected_handle_default, @function
system_event_eth_disconnected_handle_default:
.LFB21:
	.loc 1 123 0
.LVL61:
	entry	sp, 32
.LCFI9:
	.loc 1 124 0
	movi.n	a10, 2
	call8	tcpip_adapter_down
.LVL62:
	.loc 1 126 0
	movi.n	a2, 0
.LVL63:
	retw.n
.LFE21:
	.size	system_event_eth_disconnected_handle_default, .-system_event_eth_disconnected_handle_default
	.section	.rodata.str1.4
	.align	4
.LC41:
	.string	"\033[0;31mE (%d) %s: invalid static ip\033[0m\n"
	.section	.text.system_event_sta_connected_handle_default,"ax",@progbits
	.literal_position
	.literal .LC36, tcpip_adapter_sta_input
	.literal .LC37, __FUNCTION__$7485
	.literal .LC38, .LC0
	.literal .LC39, .LC14
	.literal .LC40, .LC16
	.literal .LC42, .LC41
	.align	4
	.type	system_event_sta_connected_handle_default, @function
system_event_sta_connected_handle_default:
.LFB29:
	.loc 1 199 0
.LVL64:
	entry	sp, 128
.LCFI10:
.LBB7:
	.loc 1 202 0
	l32r	a11, .LC36
	movi.n	a10, 0
	call8	esp_wifi_internal_reg_rxcb
.LVL65:
	mov.n	a2, a10
.LVL66:
	beqz.n	a10, .L26
	.loc 1 202 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL67:
	l32r	a11, .LC38
	s32i.n	a2, sp, 8
	l32r	a8, .LC40
	s32i.n	a8, sp, 4
	movi	a8, 0xca
	s32i.n	a8, sp, 0
	l32r	a15, .LC37
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC39
	movi.n	a10, 1
	call8	esp_log_write
.LVL68:
	retw.n
.L26:
.LBE7:
	.loc 1 204 0 is_stmt 1
	movi.n	a10, 0
	call8	tcpip_adapter_up
.LVL69:
	.loc 1 206 0
	addi	a11, sp, 16
	movi.n	a10, 0
	call8	tcpip_adapter_dhcpc_get_status
.LVL70:
	.loc 1 208 0
	l32i.n	a2, sp, 16
.LVL71:
	bnez.n	a2, .L28
	.loc 1 209 0
	movi.n	a10, 0
	call8	tcpip_adapter_dhcpc_start
.LVL72:
	retw.n
.L28:
	.loc 1 210 0
	bnei	a2, 2, .L32
.LBB8:
	.loc 1 214 0
	addi	a11, sp, 80
	movi.n	a10, 0
	call8	tcpip_adapter_get_ip_info
.LVL73:
	.loc 1 215 0
	addi	a11, sp, 68
	movi.n	a10, 0
	call8	tcpip_adapter_get_old_ip_info
.LVL74:
	.loc 1 217 0
	l32i	a2, sp, 80
	beqz.n	a2, .L29
	.loc 1 217 0 is_stmt 0 discriminator 1
	l32i	a2, sp, 84
	beqz.n	a2, .L29
	.loc 1 217 0 discriminator 2
	l32i	a2, sp, 88
	beqz.n	a2, .L29
.LBB9:
	.loc 1 220 0 is_stmt 1
	movi.n	a2, 7
	s32i.n	a2, sp, 20
	.loc 1 221 0
	movi.n	a2, 0
	s8i	a2, sp, 36
	.loc 1 223 0
	movi.n	a12, 0xc
	addi	a11, sp, 68
	addi	a10, sp, 80
	call8	memcmp
.LVL75:
	beqz.n	a10, .L30
	.loc 1 224 0
	movi.n	a2, 1
	s8i	a2, sp, 36
.L30:
	.loc 1 227 0
	l32i	a8, sp, 84
	l32i	a2, sp, 80
	s32i.n	a2, sp, 24
	l32i	a2, sp, 88
	s32i.n	a8, sp, 28
	s32i.n	a2, sp, 32
	.loc 1 228 0
	addi	a11, sp, 80
	movi.n	a10, 0
	call8	tcpip_adapter_set_old_ip_info
.LVL76:
	.loc 1 230 0
	addi	a10, sp, 20
	call8	esp_event_send
.LVL77:
.LBE9:
	.loc 1 217 0
	j	.L31
.L29:
	.loc 1 233 0 discriminator 2
	call8	esp_log_timestamp
.LVL78:
	l32r	a11, .LC38
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC42
	movi.n	a10, 1
	call8	esp_log_write
.LVL79:
.L31:
.LBE8:
	.loc 1 237 0 discriminator 1
	movi.n	a2, 0
	retw.n
.L32:
	.loc 1 237 0 is_stmt 0
	movi.n	a2, 0
	.loc 1 238 0 is_stmt 1
	retw.n
.LFE29:
	.size	system_event_sta_connected_handle_default, .-system_event_sta_connected_handle_default
	.section	.text.system_event_eth_connected_handle_default,"ax",@progbits
	.literal_position
	.literal .LC43, .LC0
	.literal .LC44, .LC41
	.align	4
	.type	system_event_eth_connected_handle_default, @function
system_event_eth_connected_handle_default:
.LFB20:
	.loc 1 92 0
.LVL80:
	entry	sp, 96
.LCFI11:
	.loc 1 95 0
	movi.n	a10, 2
	call8	tcpip_adapter_up
.LVL81:
	.loc 1 97 0
	mov.n	a11, sp
	movi.n	a10, 2
	call8	tcpip_adapter_dhcpc_get_status
.LVL82:
	.loc 1 99 0
	l32i.n	a8, sp, 0
	bnez.n	a8, .L34
	.loc 1 100 0
	movi.n	a10, 2
	call8	tcpip_adapter_dhcpc_start
.LVL83:
	j	.L35
.L34:
	.loc 1 101 0
	bnei	a8, 2, .L35
.LBB10:
	.loc 1 104 0
	addi	a11, sp, 52
	movi.n	a10, 2
	call8	tcpip_adapter_get_ip_info
.LVL84:
	.loc 1 106 0
	l32i.n	a8, sp, 52
	beqz.n	a8, .L36
	.loc 1 106 0 is_stmt 0 discriminator 1
	l32i.n	a8, sp, 56
	beqz.n	a8, .L36
	.loc 1 106 0 discriminator 2
	l32i.n	a8, sp, 60
	beqz.n	a8, .L36
.LBB11:
	.loc 1 110 0 is_stmt 1
	movi.n	a8, 0x18
	s32i.n	a8, sp, 4
	.loc 1 111 0
	l32i.n	a9, sp, 56
	l32i.n	a8, sp, 52
	s32i.n	a8, sp, 8
	l32i.n	a8, sp, 60
	s32i.n	a9, sp, 12
	s32i.n	a8, sp, 16
	.loc 1 113 0
	addi.n	a10, sp, 4
	call8	esp_event_send
.LVL85:
.LBE11:
	.loc 1 106 0
	j	.L35
.L36:
	.loc 1 115 0 discriminator 2
	call8	esp_log_timestamp
.LVL86:
	l32r	a11, .LC43
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC44
	movi.n	a10, 1
	call8	esp_log_write
.LVL87:
.L35:
.LBE10:
	.loc 1 120 0
	movi.n	a2, 0
.LVL88:
	retw.n
.LFE20:
	.size	system_event_eth_connected_handle_default, .-system_event_eth_connected_handle_default
	.section	.text.system_event_sta_start_handle_default,"ax",@progbits
	.literal_position
	.literal .LC45, __FUNCTION__$7476
	.literal .LC46, .LC0
	.literal .LC47, .LC14
	.literal .LC48, .LC23
	.align	4
	.type	system_event_sta_start_handle_default, @function
system_event_sta_start_handle_default:
.LFB27:
	.loc 1 180 0
.LVL89:
	entry	sp, 80
.LCFI12:
.LBB12:
	.loc 1 184 0
	addi	a11, sp, 28
	movi.n	a10, 0
	call8	esp_wifi_get_mac
.LVL90:
	mov.n	a2, a10
.LVL91:
	beqz.n	a10, .L39
	.loc 1 184 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL92:
	l32r	a11, .LC46
	s32i.n	a2, sp, 8
	l32r	a8, .LC48
	s32i.n	a8, sp, 4
	movi	a8, 0xb8
	s32i.n	a8, sp, 0
	l32r	a15, .LC45
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC47
	movi.n	a10, 1
	call8	esp_log_write
.LVL93:
	retw.n
.L39:
.LBE12:
	.loc 1 185 0 is_stmt 1
	addi	a11, sp, 16
	movi.n	a10, 0
	call8	tcpip_adapter_get_ip_info
.LVL94:
	.loc 1 186 0
	addi	a11, sp, 16
	addi	a10, sp, 28
	call8	tcpip_adapter_sta_start
.LVL95:
	.loc 1 188 0
	movi.n	a2, 0
.LVL96:
	.loc 1 189 0
	retw.n
.LFE27:
	.size	system_event_sta_start_handle_default, .-system_event_sta_start_handle_default
	.section	.text.system_event_eth_start_handle_default,"ax",@progbits
	.align	4
	.type	system_event_eth_start_handle_default, @function
system_event_eth_start_handle_default:
.LFB18:
	.loc 1 73 0
.LVL97:
	entry	sp, 64
.LCFI13:
	.loc 1 77 0
	addi.n	a10, sp, 12
	call8	esp_eth_get_mac
.LVL98:
	.loc 1 78 0
	mov.n	a11, sp
	movi.n	a10, 2
	call8	tcpip_adapter_get_ip_info
.LVL99:
	.loc 1 79 0
	mov.n	a11, sp
	addi.n	a10, sp, 12
	call8	tcpip_adapter_eth_start
.LVL100:
	.loc 1 82 0
	movi.n	a2, 0
.LVL101:
	retw.n
.LFE18:
	.size	system_event_eth_start_handle_default, .-system_event_eth_start_handle_default
	.section	.rodata.str1.4
	.align	4
.LC50:
	.string	"\033[0;31mE (%d) %s: Error: event is null!\033[0m\n"
	.align	4
.LC53:
	.string	"\033[0;31mE (%d) %s: mismatch or invalid event, id=%d\033[0m\n"
	.section	.text.esp_event_process_default,"ax",@progbits
	.literal_position
	.literal .LC49, .LC0
	.literal .LC51, .LC50
	.literal .LC52, default_event_handlers
	.literal .LC54, .LC53
	.align	4
	.global	esp_event_process_default
	.type	esp_event_process_default, @function
esp_event_process_default:
.LFB32:
	.loc 1 392 0
.LVL102:
	entry	sp, 32
.LCFI14:
	.loc 1 393 0
	bnez.n	a2, .L43
	.loc 1 394 0 discriminator 2
	call8	esp_log_timestamp
.LVL103:
	l32r	a11, .LC49
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC51
	movi.n	a10, 1
	call8	esp_log_write
.LVL104:
	.loc 1 395 0 discriminator 2
	movi.n	a2, -1
.LVL105:
	retw.n
.LVL106:
.L43:
	.loc 1 398 0
	mov.n	a10, a2
	call8	esp_system_event_debug
.LVL107:
	.loc 1 399 0
	l32i.n	a8, a2, 0
	movi.n	a9, 0x18
	bltu	a9, a8, .L45
	.loc 1 400 0
	l32r	a9, .LC52
	addx4	a8, a8, a9
	l32i.n	a8, a8, 0
	beqz.n	a8, .L46
	.loc 1 402 0
	mov.n	a10, a2
	callx8	a8
.LVL108:
	.loc 1 409 0
	movi.n	a2, 0
.LVL109:
	retw.n
.LVL110:
.L45:
	.loc 1 406 0 discriminator 2
	call8	esp_log_timestamp
.LVL111:
	l32r	a11, .LC49
	l32i.n	a15, a2, 0
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC54
	movi.n	a10, 1
	call8	esp_log_write
.LVL112:
	.loc 1 407 0 discriminator 2
	movi.n	a2, -1
.LVL113:
	retw.n
.LVL114:
.L46:
	.loc 1 409 0
	movi.n	a2, 0
.LVL115:
	.loc 1 410 0
	retw.n
.LFE32:
	.size	esp_event_process_default, .-esp_event_process_default
	.section	.text.esp_event_set_default_wifi_handlers,"ax",@progbits
	.literal_position
	.literal .LC55, default_event_handlers
	.literal .LC56, system_event_sta_start_handle_default
	.literal .LC57, system_event_sta_stop_handle_default
	.literal .LC58, system_event_sta_connected_handle_default
	.literal .LC59, system_event_sta_disconnected_handle_default
	.literal .LC60, system_event_sta_got_ip_default
	.literal .LC61, system_event_sta_lost_ip_default
	.literal .LC62, system_event_ap_start_handle_default
	.literal .LC63, system_event_ap_stop_handle_default
	.literal .LC64, esp_wifi_stop
	.align	4
	.global	esp_event_set_default_wifi_handlers
	.type	esp_event_set_default_wifi_handlers, @function
esp_event_set_default_wifi_handlers:
.LFB33:
	.loc 1 413 0
	entry	sp, 32
.LCFI15:
	.loc 1 414 0
	l32r	a8, .LC55
	l32r	a9, .LC56
	s32i.n	a9, a8, 8
	.loc 1 415 0
	l32r	a9, .LC57
	s32i.n	a9, a8, 12
	.loc 1 416 0
	l32r	a9, .LC58
	s32i.n	a9, a8, 16
	.loc 1 417 0
	l32r	a9, .LC59
	s32i.n	a9, a8, 20
	.loc 1 418 0
	l32r	a9, .LC60
	s32i.n	a9, a8, 28
	.loc 1 419 0
	l32r	a9, .LC61
	s32i.n	a9, a8, 32
	.loc 1 420 0
	l32r	a9, .LC62
	s32i.n	a9, a8, 52
	.loc 1 421 0
	l32r	a9, .LC63
	s32i.n	a9, a8, 56
	.loc 1 423 0
	l32r	a10, .LC64
	call8	esp_register_shutdown_handler
.LVL116:
	retw.n
.LFE33:
	.size	esp_event_set_default_wifi_handlers, .-esp_event_set_default_wifi_handlers
	.section	.text.esp_event_set_default_eth_handlers,"ax",@progbits
	.literal_position
	.literal .LC65, default_event_handlers
	.literal .LC66, system_event_eth_start_handle_default
	.literal .LC67, system_event_eth_stop_handle_default
	.literal .LC68, system_event_eth_connected_handle_default
	.literal .LC69, system_event_eth_disconnected_handle_default
	.literal .LC70, system_event_eth_got_ip_default
	.align	4
	.global	esp_event_set_default_eth_handlers
	.type	esp_event_set_default_eth_handlers, @function
esp_event_set_default_eth_handlers:
.LFB34:
	.loc 1 427 0
	entry	sp, 32
.LCFI16:
	.loc 1 428 0
	l32r	a8, .LC65
	l32r	a9, .LC66
	s32i	a9, a8, 80
	.loc 1 429 0
	l32r	a9, .LC67
	s32i	a9, a8, 84
	.loc 1 430 0
	l32r	a9, .LC68
	s32i	a9, a8, 88
	.loc 1 431 0
	l32r	a9, .LC69
	s32i	a9, a8, 92
	.loc 1 432 0
	l32r	a9, .LC70
	s32i	a9, a8, 96
	retw.n
.LFE34:
	.size	esp_event_set_default_eth_handlers, .-esp_event_set_default_eth_handlers
	.section	.rodata.__FUNCTION__$7476,"a",@progbits
	.align	4
	.type	__FUNCTION__$7476, @object
	.size	__FUNCTION__$7476, 38
__FUNCTION__$7476:
	.string	"system_event_sta_start_handle_default"
	.section	.rodata.__FUNCTION__$7485,"a",@progbits
	.align	4
	.type	__FUNCTION__$7485, @object
	.size	__FUNCTION__$7485, 42
__FUNCTION__$7485:
	.string	"system_event_sta_connected_handle_default"
	.section	.rodata.__FUNCTION__$7493,"a",@progbits
	.align	4
	.type	__FUNCTION__$7493, @object
	.size	__FUNCTION__$7493, 45
__FUNCTION__$7493:
	.string	"system_event_sta_disconnected_handle_default"
	.section	.rodata.__FUNCTION__$7453,"a",@progbits
	.align	4
	.type	__FUNCTION__$7453, @object
	.size	__FUNCTION__$7453, 32
__FUNCTION__$7453:
	.string	"system_event_sta_got_ip_default"
	.section	.rodata.__FUNCTION__$7463,"a",@progbits
	.align	4
	.type	__FUNCTION__$7463, @object
	.size	__FUNCTION__$7463, 37
__FUNCTION__$7463:
	.string	"system_event_ap_start_handle_default"
	.section	.rodata.__FUNCTION__$7469,"a",@progbits
	.align	4
	.type	__FUNCTION__$7469, @object
	.size	__FUNCTION__$7469, 36
__FUNCTION__$7469:
	.string	"system_event_ap_stop_handle_default"
	.section	.bss.default_event_handlers,"aw",@nobits
	.align	4
	.type	default_event_handlers, @object
	.size	default_event_handlers, 100
default_event_handlers:
	.zero	100
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
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI2-.LFB22
	.byte	0xe
	.uleb128 0x50
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
	.uleb128 0x30
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
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI5-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI6-.LFB25
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI7-.LFB23
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI8-.LFB30
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI9-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI10-.LFB29
	.byte	0xe
	.uleb128 0x80
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI11-.LFB20
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI12-.LFB27
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI13-.LFB18
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI14-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI15-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI16-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_system.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_interface.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_types.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/port/arch/cc.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/ip4_addr.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/ip6_addr.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/tcpip_adapter/include/tcpip_adapter.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_event.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi_internal.h"
	.file 14 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.file 15 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi.h"
	.file 16 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h"
	.file 17 "D:/ESP32/esp-idf-v3.1-rc1/components/ethernet/include/esp_eth.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1444
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF180
	.byte	0xc
	.4byte	.LASF181
	.4byte	.LASF182
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x16
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x19
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa6
	.uleb128 0x7
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb4
	.uleb128 0x8
	.4byte	0xa7
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x21
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0x2c
	.4byte	0x65
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x3
	.byte	0x2d
	.4byte	0x70
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x4
	.byte	0x18
	.4byte	0xcf
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF20
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x5
	.byte	0x34
	.4byte	0xa0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2c
	.byte	0x6
	.byte	0x19
	.4byte	0x127
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2c
	.byte	0x7
	.byte	0x38
	.4byte	0x15e
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x7
	.byte	0x40
	.4byte	0x127
	.uleb128 0xb
	.4byte	0xb9
	.4byte	0x179
	.uleb128 0xc
	.4byte	0x90
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.4byte	0xb9
	.4byte	0x189
	.uleb128 0xc
	.4byte	0x90
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.4byte	0xae
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x8
	.byte	0x2e
	.4byte	0xb9
	.uleb128 0x4
	.4byte	.LASF35
	.byte	0x8
	.byte	0x30
	.4byte	0xc4
	.uleb128 0x4
	.4byte	.LASF36
	.byte	0x8
	.byte	0x32
	.4byte	0xda
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x4
	.byte	0x9
	.byte	0x2e
	.4byte	0x1c8
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0x9
	.byte	0x2f
	.4byte	0x1a4
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF37
	.byte	0x9
	.byte	0x42
	.4byte	0x1af
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x10
	.byte	0xa
	.byte	0x39
	.4byte	0x1ec
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0xa
	.byte	0x3a
	.4byte	0x1ec
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0x1a4
	.4byte	0x1fc
	.uleb128 0xc
	.4byte	0x90
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF41
	.byte	0xa
	.byte	0x4b
	.4byte	0x1d3
	.uleb128 0xf
	.byte	0xc
	.byte	0xb
	.byte	0x48
	.4byte	0x232
	.uleb128 0x10
	.string	"ip"
	.byte	0xb
	.byte	0x49
	.4byte	0x1c8
	.byte	0
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0xb
	.byte	0x4a
	.4byte	0x1c8
	.byte	0x4
	.uleb128 0x10
	.string	"gw"
	.byte	0xb
	.byte	0x4b
	.4byte	0x1c8
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF43
	.byte	0xb
	.byte	0x4c
	.4byte	0x207
	.uleb128 0xf
	.byte	0x10
	.byte	0xb
	.byte	0x4e
	.4byte	0x251
	.uleb128 0x10
	.string	"ip"
	.byte	0xb
	.byte	0x4f
	.4byte	0x1fc
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF44
	.byte	0xb
	.byte	0x50
	.4byte	0x23d
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2c
	.byte	0xb
	.byte	0x6d
	.4byte	0x281
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF49
	.byte	0xb
	.byte	0x72
	.4byte	0x25c
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2c
	.byte	0xb
	.byte	0x82
	.4byte	0x2b1
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF54
	.byte	0xb
	.byte	0x87
	.4byte	0x28c
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2c
	.byte	0xc
	.byte	0x1d
	.4byte	0x365
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0x7
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF64
	.byte	0x9
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0xa
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0xb
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF68
	.byte	0xd
	.uleb128 0xa
	.4byte	.LASF69
	.byte	0xe
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0xf
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF72
	.byte	0x11
	.uleb128 0xa
	.4byte	.LASF73
	.byte	0x12
	.uleb128 0xa
	.4byte	.LASF74
	.byte	0x13
	.uleb128 0xa
	.4byte	.LASF75
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF76
	.byte	0x15
	.uleb128 0xa
	.4byte	.LASF77
	.byte	0x16
	.uleb128 0xa
	.4byte	.LASF78
	.byte	0x17
	.uleb128 0xa
	.4byte	.LASF79
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF80
	.byte	0x19
	.byte	0
	.uleb128 0x4
	.4byte	.LASF81
	.byte	0xc
	.byte	0x38
	.4byte	0x2bc
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2c
	.byte	0xc
	.byte	0x3f
	.4byte	0x38f
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0
	.uleb128 0xa
	.4byte	.LASF83
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF84
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF85
	.byte	0xc
	.byte	0x43
	.4byte	0x370
	.uleb128 0xf
	.byte	0x8
	.byte	0xc
	.byte	0x44
	.4byte	0x3c7
	.uleb128 0xe
	.4byte	.LASF86
	.byte	0xc
	.byte	0x45
	.4byte	0xda
	.byte	0
	.uleb128 0xe
	.4byte	.LASF87
	.byte	0xc
	.byte	0x46
	.4byte	0xb9
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF88
	.byte	0xc
	.byte	0x47
	.4byte	0xb9
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF89
	.byte	0xc
	.byte	0x48
	.4byte	0x39a
	.uleb128 0xf
	.byte	0x2c
	.byte	0xc
	.byte	0x4a
	.4byte	0x417
	.uleb128 0xe
	.4byte	.LASF90
	.byte	0xc
	.byte	0x4b
	.4byte	0x179
	.byte	0
	.uleb128 0xe
	.4byte	.LASF91
	.byte	0xc
	.byte	0x4c
	.4byte	0xb9
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF92
	.byte	0xc
	.byte	0x4d
	.4byte	0x169
	.byte	0x21
	.uleb128 0xe
	.4byte	.LASF93
	.byte	0xc
	.byte	0x4e
	.4byte	0xb9
	.byte	0x27
	.uleb128 0xe
	.4byte	.LASF94
	.byte	0xc
	.byte	0x4f
	.4byte	0x15e
	.byte	0x28
	.byte	0
	.uleb128 0x4
	.4byte	.LASF95
	.byte	0xc
	.byte	0x50
	.4byte	0x3d2
	.uleb128 0xf
	.byte	0x28
	.byte	0xc
	.byte	0x52
	.4byte	0x45b
	.uleb128 0xe
	.4byte	.LASF90
	.byte	0xc
	.byte	0x53
	.4byte	0x179
	.byte	0
	.uleb128 0xe
	.4byte	.LASF91
	.byte	0xc
	.byte	0x54
	.4byte	0xb9
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF92
	.byte	0xc
	.byte	0x55
	.4byte	0x169
	.byte	0x21
	.uleb128 0xe
	.4byte	.LASF96
	.byte	0xc
	.byte	0x56
	.4byte	0xb9
	.byte	0x27
	.byte	0
	.uleb128 0x4
	.4byte	.LASF97
	.byte	0xc
	.byte	0x57
	.4byte	0x422
	.uleb128 0xf
	.byte	0x8
	.byte	0xc
	.byte	0x59
	.4byte	0x487
	.uleb128 0xe
	.4byte	.LASF98
	.byte	0xc
	.byte	0x5a
	.4byte	0x15e
	.byte	0
	.uleb128 0xe
	.4byte	.LASF99
	.byte	0xc
	.byte	0x5b
	.4byte	0x15e
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF100
	.byte	0xc
	.byte	0x5c
	.4byte	0x466
	.uleb128 0xf
	.byte	0x10
	.byte	0xc
	.byte	0x5e
	.4byte	0x4b3
	.uleb128 0xe
	.4byte	.LASF101
	.byte	0xc
	.byte	0x5f
	.4byte	0x232
	.byte	0
	.uleb128 0xe
	.4byte	.LASF102
	.byte	0xc
	.byte	0x60
	.4byte	0xf0
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.4byte	.LASF103
	.byte	0xc
	.byte	0x61
	.4byte	0x492
	.uleb128 0xf
	.byte	0x8
	.byte	0xc
	.byte	0x63
	.4byte	0x4d3
	.uleb128 0xe
	.4byte	.LASF104
	.byte	0xc
	.byte	0x64
	.4byte	0x4d3
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xb9
	.4byte	0x4e3
	.uleb128 0xc
	.4byte	0x90
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.4byte	.LASF105
	.byte	0xc
	.byte	0x65
	.4byte	0x4be
	.uleb128 0xf
	.byte	0x14
	.byte	0xc
	.byte	0x67
	.4byte	0x50f
	.uleb128 0xe
	.4byte	.LASF106
	.byte	0xc
	.byte	0x68
	.4byte	0x281
	.byte	0
	.uleb128 0xe
	.4byte	.LASF107
	.byte	0xc
	.byte	0x69
	.4byte	0x251
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF108
	.byte	0xc
	.byte	0x6a
	.4byte	0x4ee
	.uleb128 0xf
	.byte	0x7
	.byte	0xc
	.byte	0x6c
	.4byte	0x53b
	.uleb128 0x10
	.string	"mac"
	.byte	0xc
	.byte	0x6d
	.4byte	0x169
	.byte	0
	.uleb128 0x10
	.string	"aid"
	.byte	0xc
	.byte	0x6e
	.4byte	0xb9
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.4byte	.LASF109
	.byte	0xc
	.byte	0x6f
	.4byte	0x51a
	.uleb128 0xf
	.byte	0x7
	.byte	0xc
	.byte	0x71
	.4byte	0x567
	.uleb128 0x10
	.string	"mac"
	.byte	0xc
	.byte	0x72
	.4byte	0x169
	.byte	0
	.uleb128 0x10
	.string	"aid"
	.byte	0xc
	.byte	0x73
	.4byte	0xb9
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.4byte	.LASF110
	.byte	0xc
	.byte	0x74
	.4byte	0x546
	.uleb128 0xf
	.byte	0xc
	.byte	0xc
	.byte	0x76
	.4byte	0x593
	.uleb128 0xe
	.4byte	.LASF111
	.byte	0xc
	.byte	0x77
	.4byte	0x25
	.byte	0
	.uleb128 0x10
	.string	"mac"
	.byte	0xc
	.byte	0x78
	.4byte	0x169
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF112
	.byte	0xc
	.byte	0x79
	.4byte	0x572
	.uleb128 0x11
	.byte	0x2c
	.byte	0xc
	.byte	0x7b
	.4byte	0x620
	.uleb128 0x12
	.4byte	.LASF113
	.byte	0xc
	.byte	0x7c
	.4byte	0x417
	.uleb128 0x12
	.4byte	.LASF114
	.byte	0xc
	.byte	0x7d
	.4byte	0x45b
	.uleb128 0x12
	.4byte	.LASF115
	.byte	0xc
	.byte	0x7e
	.4byte	0x3c7
	.uleb128 0x12
	.4byte	.LASF116
	.byte	0xc
	.byte	0x7f
	.4byte	0x487
	.uleb128 0x12
	.4byte	.LASF117
	.byte	0xc
	.byte	0x80
	.4byte	0x4b3
	.uleb128 0x12
	.4byte	.LASF118
	.byte	0xc
	.byte	0x81
	.4byte	0x4e3
	.uleb128 0x12
	.4byte	.LASF119
	.byte	0xc
	.byte	0x82
	.4byte	0x38f
	.uleb128 0x12
	.4byte	.LASF120
	.byte	0xc
	.byte	0x83
	.4byte	0x53b
	.uleb128 0x12
	.4byte	.LASF121
	.byte	0xc
	.byte	0x84
	.4byte	0x567
	.uleb128 0x12
	.4byte	.LASF122
	.byte	0xc
	.byte	0x85
	.4byte	0x593
	.uleb128 0x12
	.4byte	.LASF123
	.byte	0xc
	.byte	0x86
	.4byte	0x50f
	.byte	0
	.uleb128 0x4
	.4byte	.LASF124
	.byte	0xc
	.byte	0x87
	.4byte	0x59e
	.uleb128 0xf
	.byte	0x30
	.byte	0xc
	.byte	0x89
	.4byte	0x64c
	.uleb128 0xe
	.4byte	.LASF125
	.byte	0xc
	.byte	0x8a
	.4byte	0x365
	.byte	0
	.uleb128 0xe
	.4byte	.LASF126
	.byte	0xc
	.byte	0x8b
	.4byte	0x620
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF127
	.byte	0xc
	.byte	0x8c
	.4byte	0x62b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x65d
	.uleb128 0x13
	.4byte	0xe5
	.4byte	0x66c
	.uleb128 0x14
	.4byte	0x66c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x64c
	.uleb128 0x4
	.4byte	.LASF128
	.byte	0xd
	.byte	0x69
	.4byte	0x67d
	.uleb128 0x6
	.byte	0x4
	.4byte	0x683
	.uleb128 0x13
	.4byte	0xe5
	.4byte	0x69c
	.uleb128 0x14
	.4byte	0x97
	.uleb128 0x14
	.4byte	0xc4
	.uleb128 0x14
	.4byte	0x97
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2c
	.byte	0xe
	.byte	0x1f
	.4byte	0x6cd
	.uleb128 0xa
	.4byte	.LASF129
	.byte	0
	.uleb128 0xa
	.4byte	.LASF130
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF131
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF132
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF133
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF134
	.byte	0x5
	.byte	0
	.uleb128 0x15
	.4byte	.LASF135
	.byte	0x1
	.byte	0xf7
	.4byte	0xe5
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x760
	.uleb128 0x16
	.4byte	.LASF137
	.byte	0x1
	.byte	0xf7
	.4byte	0x66c
	.4byte	.LLST0
	.uleb128 0x17
	.4byte	.LVL1
	.4byte	0x1361
	.uleb128 0x18
	.4byte	.LVL2
	.4byte	0x136c
	.4byte	0x72c
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL5
	.4byte	0x1361
	.uleb128 0x1a
	.4byte	.LVL6
	.4byte	0x136c
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF136
	.byte	0x1
	.byte	0x96
	.4byte	0xe5
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7bc
	.uleb128 0x16
	.4byte	.LASF137
	.byte	0x1
	.byte	0x96
	.4byte	0x66c
	.4byte	.LLST1
	.uleb128 0x17
	.4byte	.LVL11
	.4byte	0x1361
	.uleb128 0x1a
	.4byte	.LVL12
	.4byte	0x136c
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF138
	.byte	0x1
	.byte	0x80
	.4byte	0xe5
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x842
	.uleb128 0x16
	.4byte	.LASF137
	.byte	0x1
	.byte	0x80
	.4byte	0x66c
	.4byte	.LLST2
	.uleb128 0x17
	.4byte	.LVL15
	.4byte	0x1361
	.uleb128 0x1a
	.4byte	.LVL17
	.4byte	0x136c
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 20
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 24
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 28
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 32
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 36
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 40
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF139
	.byte	0x1
	.byte	0xaa
	.4byte	0xe5
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x912
	.uleb128 0x16
	.4byte	.LASF137
	.byte	0x1
	.byte	0xaa
	.4byte	0x66c
	.4byte	.LLST3
	.uleb128 0x1b
	.4byte	.LASF146
	.4byte	0x922
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$7469
	.uleb128 0x1c
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x902
	.uleb128 0x1d
	.4byte	.LASF143
	.byte	0x1
	.byte	0xac
	.4byte	0xe5
	.4byte	.LLST4
	.uleb128 0x18
	.4byte	.LVL19
	.4byte	0x1377
	.4byte	0x8ad
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x17
	.4byte	.LVL21
	.4byte	0x1361
	.uleb128 0x1a
	.4byte	.LVL22
	.4byte	0x136c
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$7469
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x8
	.byte	0xac
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL23
	.4byte	0x1382
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xa7
	.4byte	0x922
	.uleb128 0xc
	.4byte	0x90
	.byte	0x23
	.byte	0
	.uleb128 0x8
	.4byte	0x912
	.uleb128 0x15
	.4byte	.LASF140
	.byte	0x1
	.byte	0xbf
	.4byte	0xe5
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x95f
	.uleb128 0x16
	.4byte	.LASF137
	.byte	0x1
	.byte	0xbf
	.4byte	0x66c
	.4byte	.LLST5
	.uleb128 0x1a
	.4byte	.LVL26
	.4byte	0x1382
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF141
	.byte	0x1
	.byte	0x54
	.4byte	0xe5
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x997
	.uleb128 0x16
	.4byte	.LASF137
	.byte	0x1
	.byte	0x54
	.4byte	0x66c
	.4byte	.LLST6
	.uleb128 0x1a
	.4byte	.LVL29
	.4byte	0x1382
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF142
	.byte	0x1
	.byte	0x9c
	.4byte	0xe5
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb28
	.uleb128 0x16
	.4byte	.LASF137
	.byte	0x1
	.byte	0x9c
	.4byte	0x66c
	.4byte	.LLST7
	.uleb128 0x1e
	.4byte	.LASF144
	.byte	0x1
	.byte	0x9e
	.4byte	0x232
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.4byte	.LASF145
	.byte	0x1
	.byte	0x9f
	.4byte	0x169
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1b
	.4byte	.LASF146
	.4byte	0xb38
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$7463
	.uleb128 0x1c
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0xa6e
	.uleb128 0x1d
	.4byte	.LASF143
	.byte	0x1
	.byte	0xa1
	.4byte	0xe5
	.4byte	.LLST8
	.uleb128 0x18
	.4byte	.LVL32
	.4byte	0x1377
	.4byte	0xa19
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x17
	.4byte	.LVL34
	.4byte	0x1361
	.uleb128 0x1a
	.4byte	.LVL35
	.4byte	0x136c
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$7463
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x8
	.byte	0xa1
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0xaf8
	.uleb128 0x1d
	.4byte	.LASF143
	.byte	0x1
	.byte	0xa2
	.4byte	0xe5
	.4byte	.LLST9
	.uleb128 0x18
	.4byte	.LVL36
	.4byte	0x138e
	.4byte	0xaa3
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x17
	.4byte	.LVL38
	.4byte	0x1361
	.uleb128 0x1a
	.4byte	.LVL39
	.4byte	0x136c
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$7463
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x8
	.byte	0xa2
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL40
	.4byte	0x139a
	.4byte	0xb11
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL41
	.4byte	0x13a6
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xa7
	.4byte	0xb38
	.uleb128 0xc
	.4byte	0x90
	.byte	0x24
	.byte	0
	.uleb128 0x8
	.4byte	0xb28
	.uleb128 0x15
	.4byte	.LASF147
	.byte	0x1
	.byte	0x8a
	.4byte	0xe5
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc4c
	.uleb128 0x16
	.4byte	.LASF137
	.byte	0x1
	.byte	0x8a
	.4byte	0x66c
	.4byte	.LLST10
	.uleb128 0x1b
	.4byte	.LASF146
	.4byte	0xc5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$7453
	.uleb128 0x1c
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.4byte	0xbee
	.uleb128 0x1d
	.4byte	.LASF143
	.byte	0x1
	.byte	0x8c
	.4byte	0xe5
	.4byte	.LLST11
	.uleb128 0x17
	.4byte	.LVL44
	.4byte	0x13b1
	.uleb128 0x17
	.4byte	.LVL46
	.4byte	0x1361
	.uleb128 0x1a
	.4byte	.LVL48
	.4byte	0x136c
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$7453
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC28
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL50
	.4byte	0x1361
	.uleb128 0x1a
	.4byte	.LVL53
	.4byte	0x136c
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 24
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 28
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 32
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 36
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 40
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xa7
	.4byte	0xc5c
	.uleb128 0xc
	.4byte	0x90
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.4byte	0xc4c
	.uleb128 0x15
	.4byte	.LASF148
	.byte	0x1
	.byte	0xf0
	.4byte	0xe5
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd31
	.uleb128 0x16
	.4byte	.LASF137
	.byte	0x1
	.byte	0xf0
	.4byte	0x66c
	.4byte	.LLST12
	.uleb128 0x1b
	.4byte	.LASF146
	.4byte	0xd41
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$7493
	.uleb128 0x1c
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0xd21
	.uleb128 0x1d
	.4byte	.LASF143
	.byte	0x1
	.byte	0xf3
	.4byte	0xe5
	.4byte	.LLST13
	.uleb128 0x18
	.4byte	.LVL56
	.4byte	0x1377
	.4byte	0xccc
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x17
	.4byte	.LVL58
	.4byte	0x1361
	.uleb128 0x1a
	.4byte	.LVL59
	.4byte	0x136c
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$7493
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x8
	.byte	0xf3
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL55
	.4byte	0x13bc
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xa7
	.4byte	0xd41
	.uleb128 0xc
	.4byte	0x90
	.byte	0x2c
	.byte	0
	.uleb128 0x8
	.4byte	0xd31
	.uleb128 0x15
	.4byte	.LASF149
	.byte	0x1
	.byte	0x7a
	.4byte	0xe5
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd7e
	.uleb128 0x16
	.4byte	.LASF137
	.byte	0x1
	.byte	0x7a
	.4byte	0x66c
	.4byte	.LLST14
	.uleb128 0x1a
	.4byte	.LVL62
	.4byte	0x13bc
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF150
	.byte	0x1
	.byte	0xc6
	.4byte	0xe5
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf7a
	.uleb128 0x16
	.4byte	.LASF137
	.byte	0x1
	.byte	0xc6
	.4byte	0x66c
	.4byte	.LLST15
	.uleb128 0x1e
	.4byte	.LASF86
	.byte	0x1
	.byte	0xc8
	.4byte	0x2b1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1b
	.4byte	.LASF146
	.4byte	0xf8a
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$7485
	.uleb128 0x1c
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.4byte	0xe48
	.uleb128 0x1d
	.4byte	.LASF143
	.byte	0x1
	.byte	0xca
	.4byte	0xe5
	.4byte	.LLST16
	.uleb128 0x18
	.4byte	.LVL65
	.4byte	0x1377
	.4byte	0xdf3
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x17
	.4byte	.LVL67
	.4byte	0x1361
	.uleb128 0x1a
	.4byte	.LVL68
	.4byte	0x136c
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$7485
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x8
	.byte	0xca
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.4byte	0xf3d
	.uleb128 0x1e
	.4byte	.LASF151
	.byte	0x1
	.byte	0xd3
	.4byte	0x232
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.4byte	.LASF152
	.byte	0x1
	.byte	0xd4
	.4byte	0x232
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1c
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.4byte	0xed7
	.uleb128 0x1f
	.string	"evt"
	.byte	0x1
	.byte	0xda
	.4byte	0x64c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x18
	.4byte	.LVL75
	.4byte	0x13c8
	.4byte	0xeac
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x18
	.4byte	.LVL76
	.4byte	0x13d3
	.4byte	0xec5
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL77
	.4byte	0x13df
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL73
	.4byte	0x139a
	.4byte	0xef0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x18
	.4byte	.LVL74
	.4byte	0x13ea
	.4byte	0xf09
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x17
	.4byte	.LVL78
	.4byte	0x1361
	.uleb128 0x1a
	.4byte	.LVL79
	.4byte	0x136c
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC41
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL69
	.4byte	0x13f6
	.4byte	0xf50
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x18
	.4byte	.LVL70
	.4byte	0x1402
	.4byte	0xf6a
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL72
	.4byte	0x140e
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xa7
	.4byte	0xf8a
	.uleb128 0xc
	.4byte	0x90
	.byte	0x29
	.byte	0
	.uleb128 0x8
	.4byte	0xf7a
	.uleb128 0x15
	.4byte	.LASF153
	.byte	0x1
	.byte	0x5b
	.4byte	0xe5
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1099
	.uleb128 0x16
	.4byte	.LASF137
	.byte	0x1
	.byte	0x5b
	.4byte	0x66c
	.4byte	.LLST17
	.uleb128 0x1e
	.4byte	.LASF86
	.byte	0x1
	.byte	0x5d
	.4byte	0x2b1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1c
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.4byte	0x105c
	.uleb128 0x1e
	.4byte	.LASF154
	.byte	0x1
	.byte	0x66
	.4byte	0x232
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1c
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.4byte	0x100f
	.uleb128 0x1f
	.string	"evt"
	.byte	0x1
	.byte	0x6b
	.4byte	0x64c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x1a
	.4byte	.LVL85
	.4byte	0x13df
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL84
	.4byte	0x139a
	.4byte	0x1028
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x17
	.4byte	.LVL86
	.4byte	0x1361
	.uleb128 0x1a
	.4byte	.LVL87
	.4byte	0x136c
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC41
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL81
	.4byte	0x13f6
	.4byte	0x106f
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x18
	.4byte	.LVL82
	.4byte	0x1402
	.4byte	0x1089
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL83
	.4byte	0x140e
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF155
	.byte	0x1
	.byte	0xb3
	.4byte	0xe5
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11a6
	.uleb128 0x16
	.4byte	.LASF137
	.byte	0x1
	.byte	0xb3
	.4byte	0x66c
	.4byte	.LLST18
	.uleb128 0x1e
	.4byte	.LASF151
	.byte	0x1
	.byte	0xb5
	.4byte	0x232
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.4byte	.LASF156
	.byte	0x1
	.byte	0xb6
	.4byte	0x169
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1b
	.4byte	.LASF146
	.4byte	0x11b6
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$7476
	.uleb128 0x1c
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.4byte	0x1176
	.uleb128 0x1d
	.4byte	.LASF143
	.byte	0x1
	.byte	0xb8
	.4byte	0xe5
	.4byte	.LLST19
	.uleb128 0x18
	.4byte	.LVL90
	.4byte	0x138e
	.4byte	0x1121
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x17
	.4byte	.LVL92
	.4byte	0x1361
	.uleb128 0x1a
	.4byte	.LVL93
	.4byte	0x136c
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$7476
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x8
	.byte	0xb8
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL94
	.4byte	0x139a
	.4byte	0x118f
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL95
	.4byte	0x141a
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xa7
	.4byte	0x11b6
	.uleb128 0xc
	.4byte	0x90
	.byte	0x25
	.byte	0
	.uleb128 0x8
	.4byte	0x11a6
	.uleb128 0x15
	.4byte	.LASF157
	.byte	0x1
	.byte	0x48
	.4byte	0xe5
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1243
	.uleb128 0x16
	.4byte	.LASF137
	.byte	0x1
	.byte	0x48
	.4byte	0x66c
	.4byte	.LLST20
	.uleb128 0x1e
	.4byte	.LASF154
	.byte	0x1
	.byte	0x4a
	.4byte	0x232
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.4byte	.LASF158
	.byte	0x1
	.byte	0x4b
	.4byte	0x169
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x18
	.4byte	.LVL98
	.4byte	0x1425
	.4byte	0x1213
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x18
	.4byte	.LVL99
	.4byte	0x139a
	.4byte	0x122c
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL100
	.4byte	0x1431
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x187
	.4byte	0xe5
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12fc
	.uleb128 0x21
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x187
	.4byte	0x66c
	.4byte	.LLST21
	.uleb128 0x17
	.4byte	.LVL103
	.4byte	0x1361
	.uleb128 0x18
	.4byte	.LVL104
	.4byte	0x136c
	.4byte	0x12a4
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC50
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL107
	.4byte	0x6cd
	.4byte	0x12b8
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL108
	.4byte	0x12c8
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL111
	.4byte	0x1361
	.uleb128 0x1a
	.4byte	.LVL112
	.4byte	0x136c
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC53
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF184
	.byte	0x1
	.2byte	0x19c
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x131c
	.uleb128 0x17
	.4byte	.LVL116
	.4byte	0x143c
	.byte	0
	.uleb128 0x24
	.4byte	.LASF185
	.byte	0x1
	.2byte	0x1aa
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1f
	.string	"TAG"
	.byte	0x1
	.byte	0x26
	.4byte	0x189
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.uleb128 0xb
	.4byte	0x657
	.4byte	0x1350
	.uleb128 0xc
	.4byte	0x90
	.byte	0x18
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF159
	.byte	0x1
	.byte	0x46
	.4byte	0x1340
	.uleb128 0x5
	.byte	0x3
	.4byte	default_event_handlers
	.uleb128 0x25
	.4byte	.LASF160
	.4byte	.LASF160
	.byte	0xe
	.byte	0x57
	.uleb128 0x25
	.4byte	.LASF161
	.4byte	.LASF161
	.byte	0xe
	.byte	0x6b
	.uleb128 0x25
	.4byte	.LASF162
	.4byte	.LASF162
	.byte	0xd
	.byte	0x77
	.uleb128 0x26
	.4byte	.LASF163
	.4byte	.LASF163
	.byte	0xb
	.2byte	0x102
	.uleb128 0x26
	.4byte	.LASF164
	.4byte	.LASF164
	.byte	0xf
	.2byte	0x26f
	.uleb128 0x26
	.4byte	.LASF165
	.4byte	.LASF165
	.byte	0xb
	.2byte	0x128
	.uleb128 0x25
	.4byte	.LASF166
	.4byte	.LASF166
	.byte	0xb
	.byte	0xf5
	.uleb128 0x25
	.4byte	.LASF167
	.4byte	.LASF167
	.byte	0xd
	.byte	0x80
	.uleb128 0x26
	.4byte	.LASF168
	.4byte	.LASF168
	.byte	0xb
	.2byte	0x11a
	.uleb128 0x25
	.4byte	.LASF169
	.4byte	.LASF169
	.byte	0x10
	.byte	0x16
	.uleb128 0x26
	.4byte	.LASF170
	.4byte	.LASF170
	.byte	0xb
	.2byte	0x17f
	.uleb128 0x25
	.4byte	.LASF171
	.4byte	.LASF171
	.byte	0xc
	.byte	0x9a
	.uleb128 0x26
	.4byte	.LASF172
	.4byte	.LASF172
	.byte	0xb
	.2byte	0x170
	.uleb128 0x26
	.4byte	.LASF173
	.4byte	.LASF173
	.byte	0xb
	.2byte	0x10e
	.uleb128 0x26
	.4byte	.LASF174
	.4byte	.LASF174
	.byte	0xb
	.2byte	0x1e1
	.uleb128 0x26
	.4byte	.LASF175
	.4byte	.LASF175
	.byte	0xb
	.2byte	0x1fd
	.uleb128 0x25
	.4byte	.LASF176
	.4byte	.LASF176
	.byte	0xb
	.byte	0xe5
	.uleb128 0x26
	.4byte	.LASF177
	.4byte	.LASF177
	.byte	0x11
	.2byte	0x103
	.uleb128 0x25
	.4byte	.LASF178
	.4byte	.LASF178
	.byte	0xb
	.byte	0xd7
	.uleb128 0x25
	.4byte	.LASF179
	.4byte	.LASF179
	.byte	0x5
	.byte	0x3b
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
	.uleb128 0x2f
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL20
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL33
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL37
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL43
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL52
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL45
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL54
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL57
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL57
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL63
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL64
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL66
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL66
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL80
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL88
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL89
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL91
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL91
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL97
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL101
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL102
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL105
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
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL115
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x9c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF142:
	.string	"system_event_ap_start_handle_default"
.LASF174:
	.string	"tcpip_adapter_dhcpc_get_status"
.LASF162:
	.string	"esp_wifi_internal_reg_rxcb"
.LASF107:
	.string	"ip6_info"
.LASF72:
	.string	"SYSTEM_EVENT_AP_STAIPASSIGNED"
.LASF48:
	.string	"TCPIP_ADAPTER_IF_MAX"
.LASF71:
	.string	"SYSTEM_EVENT_AP_STADISCONNECTED"
.LASF70:
	.string	"SYSTEM_EVENT_AP_STACONNECTED"
.LASF163:
	.string	"tcpip_adapter_stop"
.LASF5:
	.string	"__uint8_t"
.LASF152:
	.string	"sta_old_ip"
.LASF104:
	.string	"pin_code"
.LASF126:
	.string	"event_info"
.LASF123:
	.string	"got_ip6"
.LASF173:
	.string	"tcpip_adapter_up"
.LASF52:
	.string	"TCPIP_ADAPTER_DHCP_STOPPED"
.LASF97:
	.string	"system_event_sta_disconnected_t"
.LASF151:
	.string	"sta_ip"
.LASF10:
	.string	"long long unsigned int"
.LASF149:
	.string	"system_event_eth_disconnected_handle_default"
.LASF158:
	.string	"eth_mac"
.LASF33:
	.string	"wifi_auth_mode_t"
.LASF165:
	.string	"tcpip_adapter_get_ip_info"
.LASF155:
	.string	"system_event_sta_start_handle_default"
.LASF111:
	.string	"rssi"
.LASF135:
	.string	"esp_system_event_debug"
.LASF57:
	.string	"SYSTEM_EVENT_STA_START"
.LASF133:
	.string	"ESP_LOG_DEBUG"
.LASF9:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF29:
	.string	"WIFI_AUTH_WPA2_PSK"
.LASF47:
	.string	"TCPIP_ADAPTER_IF_ETH"
.LASF66:
	.string	"SYSTEM_EVENT_STA_WPS_ER_TIMEOUT"
.LASF145:
	.string	"ap_mac"
.LASF95:
	.string	"system_event_sta_connected_t"
.LASF117:
	.string	"got_ip"
.LASF125:
	.string	"event_id"
.LASF11:
	.string	"long int"
.LASF147:
	.string	"system_event_sta_got_ip_default"
.LASF101:
	.string	"ip_info"
.LASF38:
	.string	"ip4_addr"
.LASF99:
	.string	"new_mode"
.LASF161:
	.string	"esp_log_write"
.LASF26:
	.string	"WIFI_AUTH_OPEN"
.LASF172:
	.string	"tcpip_adapter_get_old_ip_info"
.LASF58:
	.string	"SYSTEM_EVENT_STA_STOP"
.LASF53:
	.string	"TCPIP_ADAPTER_DHCP_STATUS_MAX"
.LASF106:
	.string	"if_index"
.LASF16:
	.string	"uint16_t"
.LASF182:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\esp32"
.LASF54:
	.string	"tcpip_adapter_dhcp_status_t"
.LASF42:
	.string	"netmask"
.LASF88:
	.string	"scan_id"
.LASF85:
	.string	"system_event_sta_wps_fail_reason_t"
.LASF8:
	.string	"__uint32_t"
.LASF140:
	.string	"system_event_sta_stop_handle_default"
.LASF32:
	.string	"WIFI_AUTH_MAX"
.LASF64:
	.string	"SYSTEM_EVENT_STA_WPS_ER_SUCCESS"
.LASF120:
	.string	"sta_connected"
.LASF138:
	.string	"system_event_eth_got_ip_default"
.LASF63:
	.string	"SYSTEM_EVENT_STA_LOST_IP"
.LASF139:
	.string	"system_event_ap_stop_handle_default"
.LASF0:
	.string	"unsigned int"
.LASF51:
	.string	"TCPIP_ADAPTER_DHCP_STARTED"
.LASF90:
	.string	"ssid"
.LASF77:
	.string	"SYSTEM_EVENT_ETH_CONNECTED"
.LASF164:
	.string	"esp_wifi_get_mac"
.LASF124:
	.string	"system_event_info_t"
.LASF13:
	.string	"long unsigned int"
.LASF28:
	.string	"WIFI_AUTH_WPA_PSK"
.LASF36:
	.string	"u32_t"
.LASF118:
	.string	"sta_er_pin"
.LASF146:
	.string	"__FUNCTION__"
.LASF94:
	.string	"authmode"
.LASF109:
	.string	"system_event_ap_staconnected_t"
.LASF137:
	.string	"event"
.LASF119:
	.string	"sta_er_fail_reason"
.LASF1:
	.string	"short unsigned int"
.LASF170:
	.string	"tcpip_adapter_set_old_ip_info"
.LASF136:
	.string	"system_event_sta_lost_ip_default"
.LASF154:
	.string	"eth_ip"
.LASF45:
	.string	"TCPIP_ADAPTER_IF_STA"
.LASF79:
	.string	"SYSTEM_EVENT_ETH_GOT_IP"
.LASF141:
	.string	"system_event_eth_stop_handle_default"
.LASF87:
	.string	"number"
.LASF78:
	.string	"SYSTEM_EVENT_ETH_DISCONNECTED"
.LASF43:
	.string	"tcpip_adapter_ip_info_t"
.LASF184:
	.string	"esp_event_set_default_wifi_handlers"
.LASF127:
	.string	"system_event_t"
.LASF30:
	.string	"WIFI_AUTH_WPA_WPA2_PSK"
.LASF132:
	.string	"ESP_LOG_INFO"
.LASF31:
	.string	"WIFI_AUTH_WPA2_ENTERPRISE"
.LASF82:
	.string	"WPS_FAIL_REASON_NORMAL"
.LASF34:
	.string	"u8_t"
.LASF12:
	.string	"sizetype"
.LASF105:
	.string	"system_event_sta_wps_er_pin_t"
.LASF148:
	.string	"system_event_sta_disconnected_handle_default"
.LASF114:
	.string	"disconnected"
.LASF176:
	.string	"tcpip_adapter_sta_start"
.LASF122:
	.string	"ap_probereqrecved"
.LASF61:
	.string	"SYSTEM_EVENT_STA_AUTHMODE_CHANGE"
.LASF83:
	.string	"WPS_FAIL_REASON_RECV_M2D"
.LASF100:
	.string	"system_event_sta_authmode_change_t"
.LASF56:
	.string	"SYSTEM_EVENT_SCAN_DONE"
.LASF110:
	.string	"system_event_ap_stadisconnected_t"
.LASF153:
	.string	"system_event_eth_connected_handle_default"
.LASF74:
	.string	"SYSTEM_EVENT_GOT_IP6"
.LASF49:
	.string	"tcpip_adapter_if_t"
.LASF128:
	.string	"wifi_rxcb_t"
.LASF112:
	.string	"system_event_ap_probe_req_rx_t"
.LASF181:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/esp32/event_default_handlers.c"
.LASF92:
	.string	"bssid"
.LASF102:
	.string	"ip_changed"
.LASF40:
	.string	"addr"
.LASF81:
	.string	"system_event_id_t"
.LASF20:
	.string	"_Bool"
.LASF17:
	.string	"int32_t"
.LASF3:
	.string	"unsigned char"
.LASF168:
	.string	"tcpip_adapter_down"
.LASF121:
	.string	"sta_disconnected"
.LASF24:
	.string	"ESP_IF_ETH"
.LASF180:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF143:
	.string	"__err"
.LASF4:
	.string	"short int"
.LASF91:
	.string	"ssid_len"
.LASF50:
	.string	"TCPIP_ADAPTER_DHCP_INIT"
.LASF160:
	.string	"esp_log_timestamp"
.LASF130:
	.string	"ESP_LOG_ERROR"
.LASF98:
	.string	"old_mode"
.LASF67:
	.string	"SYSTEM_EVENT_STA_WPS_ER_PIN"
.LASF108:
	.string	"system_event_got_ip6_t"
.LASF46:
	.string	"TCPIP_ADAPTER_IF_AP"
.LASF96:
	.string	"reason"
.LASF93:
	.string	"channel"
.LASF116:
	.string	"auth_change"
.LASF80:
	.string	"SYSTEM_EVENT_MAX"
.LASF185:
	.string	"esp_event_set_default_eth_handlers"
.LASF18:
	.string	"uint32_t"
.LASF76:
	.string	"SYSTEM_EVENT_ETH_STOP"
.LASF25:
	.string	"ESP_IF_MAX"
.LASF183:
	.string	"esp_event_process_default"
.LASF39:
	.string	"ip6_addr"
.LASF14:
	.string	"char"
.LASF134:
	.string	"ESP_LOG_VERBOSE"
.LASF22:
	.string	"ESP_IF_WIFI_STA"
.LASF59:
	.string	"SYSTEM_EVENT_STA_CONNECTED"
.LASF69:
	.string	"SYSTEM_EVENT_AP_STOP"
.LASF6:
	.string	"__uint16_t"
.LASF115:
	.string	"scan_done"
.LASF129:
	.string	"ESP_LOG_NONE"
.LASF7:
	.string	"__int32_t"
.LASF157:
	.string	"system_event_eth_start_handle_default"
.LASF65:
	.string	"SYSTEM_EVENT_STA_WPS_ER_FAILED"
.LASF169:
	.string	"memcmp"
.LASF103:
	.string	"system_event_sta_got_ip_t"
.LASF23:
	.string	"ESP_IF_WIFI_AP"
.LASF166:
	.string	"tcpip_adapter_ap_start"
.LASF178:
	.string	"tcpip_adapter_eth_start"
.LASF37:
	.string	"ip4_addr_t"
.LASF21:
	.string	"shutdown_handler_t"
.LASF159:
	.string	"default_event_handlers"
.LASF113:
	.string	"connected"
.LASF35:
	.string	"u16_t"
.LASF41:
	.string	"ip6_addr_t"
.LASF131:
	.string	"ESP_LOG_WARN"
.LASF55:
	.string	"SYSTEM_EVENT_WIFI_READY"
.LASF171:
	.string	"esp_event_send"
.LASF86:
	.string	"status"
.LASF19:
	.string	"esp_err_t"
.LASF60:
	.string	"SYSTEM_EVENT_STA_DISCONNECTED"
.LASF75:
	.string	"SYSTEM_EVENT_ETH_START"
.LASF15:
	.string	"uint8_t"
.LASF156:
	.string	"sta_mac"
.LASF84:
	.string	"WPS_FAIL_REASON_MAX"
.LASF144:
	.string	"ap_ip"
.LASF167:
	.string	"esp_wifi_internal_set_sta_ip"
.LASF44:
	.string	"tcpip_adapter_ip6_info_t"
.LASF175:
	.string	"tcpip_adapter_dhcpc_start"
.LASF150:
	.string	"system_event_sta_connected_handle_default"
.LASF89:
	.string	"system_event_sta_scan_done_t"
.LASF177:
	.string	"esp_eth_get_mac"
.LASF62:
	.string	"SYSTEM_EVENT_STA_GOT_IP"
.LASF73:
	.string	"SYSTEM_EVENT_AP_PROBEREQRECVED"
.LASF179:
	.string	"esp_register_shutdown_handler"
.LASF68:
	.string	"SYSTEM_EVENT_AP_START"
.LASF27:
	.string	"WIFI_AUTH_WEP"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
