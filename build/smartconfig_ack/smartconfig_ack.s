	.file	"smartconfig_ack.c"
	.text
.Ltext0:
	.section	.text.sc_ack_send_get_errno,"ax",@progbits
	.literal_position
	.literal .LC0, 4103
	.literal .LC1, 4095
	.align	4
	.type	sc_ack_send_get_errno, @function
sc_ack_send_get_errno:
.LFB34:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/smartconfig_ack/smartconfig_ack.c"
	.loc 1 36 0
.LVL0:
	entry	sp, 48
.LCFI0:
	.loc 1 37 0
	movi.n	a8, 0
	s32i.n	a8, sp, 0
	.loc 1 38 0
	movi.n	a8, 4
	s32i.n	a8, sp, 4
.LVL1:
.LBB12:
.LBB13:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/sockets.h"
	.loc 2 573 0
	add.n	a14, sp, a8
	mov.n	a13, sp
.LVL2:
	l32r	a12, .LC0
	l32r	a11, .LC1
	mov.n	a10, a2
	call8	lwip_getsockopt_r
.LVL3:
.LBE13:
.LBE12:
	.loc 1 43 0
	l32i.n	a2, sp, 0
.LVL4:
	retw.n
.LFE34:
	.size	sc_ack_send_get_errno, .-sc_ack_send_get_errno
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC4:
	.string	"smartconfig"
	.align	4
.LC6:
	.string	"\033[0;31mE (%d) %s: Creat udp socket failed\033[0m\n"
	.align	4
.LC9:
	.string	"\033[0;31mE (%d) %s: send failed, errno %d\033[0m\n"
	.section	.text.sc_ack_send_task,"ax",@progbits
	.literal_position
	.literal .LC2, 18266
	.literal .LC3, 10000
	.literal .LC5, .LC4
	.literal .LC7, .LC6
	.literal .LC8, 4095
	.literal .LC10, .LC9
	.literal .LC11, s_sc_ack_send
	.align	4
	.type	sc_ack_send_task, @function
sc_ack_send_task:
.LFB35:
	.loc 1 46 0
.LVL5:
	entry	sp, 64
.LCFI1:
.LVL6:
	.loc 1 49 0
	addi	a6, a2, 19
.LVL7:
	.loc 1 50 0
	l32i.n	a3, a2, 0
	bnez.n	a3, .L18
	l32r	a7, .LC2
	j	.L3
.L18:
	l32r	a7, .LC3
.L3:
.LVL8:
	.loc 1 54 0 discriminator 4
	movi.n	a3, 1
	s32i.n	a3, sp, 28
	.loc 1 56 0 discriminator 4
	l32i.n	a3, a2, 0
	bnez.n	a3, .L19
	.loc 1 56 0 is_stmt 0
	movi.n	a5, 0xb
	j	.L4
.L19:
	movi.n	a5, 7
.L4:
.LVL9:
	.loc 1 61 0 is_stmt 1 discriminator 4
	movi.n	a3, 0
	s32i.n	a3, sp, 12
	s32i.n	a3, sp, 16
	s32i.n	a3, sp, 20
	s32i.n	a3, sp, 24
	.loc 1 62 0 discriminator 4
	movi.n	a4, 2
	s8i	a4, sp, 13
	.loc 1 63 0 discriminator 4
	mov.n	a10, a6
	call8	ipaddr_addr
.LVL10:
	s32i.n	a10, sp, 16
	.loc 1 64 0 discriminator 4
	extui	a10, a7, 0, 16
	call8	lwip_htons
.LVL11:
	s16i	a10, sp, 14
	.loc 1 66 0 discriminator 4
	addi.n	a11, a2, 13
	mov.n	a10, a3
	call8	esp_wifi_get_mac
.LVL12:
	.loc 1 68 0 discriminator 4
	movi.n	a10, 0x14
	call8	vTaskDelay
.LVL13:
	.loc 1 57 0 discriminator 4
	movi.n	a3, 1
	.loc 1 53 0 discriminator 4
	movi.n	a4, -1
	.loc 1 70 0 discriminator 4
	j	.L5
.LVL14:
.L16:
	.loc 1 72 0
	mov.n	a11, sp
	movi.n	a10, 0
	call8	tcpip_adapter_get_ip_info
.LVL15:
	.loc 1 73 0
	bnez.n	a10, .L6
	.loc 1 73 0 is_stmt 0 discriminator 1
	l32i.n	a8, sp, 0
	beqz.n	a8, .L6
	.loc 1 75 0 is_stmt 1
	l32i.n	a4, a2, 0
.LVL16:
	bnez.n	a4, .L7
	.loc 1 76 0
	l8ui	a4, sp, 0
	s8i	a4, a6, 0
	l8ui	a4, sp, 1
	s8i	a4, a6, 1
	l8ui	a4, sp, 2
	s8i	a4, a6, 2
	l8ui	a4, sp, 3
	s8i	a4, a6, 3
.L7:
.LVL17:
.LBB14:
.LBB15:
	.loc 2 591 0
	movi.n	a12, 0
	movi.n	a11, 2
	mov.n	a10, a11
.LVL18:
	call8	lwip_socket
.LVL19:
	mov.n	a4, a10
.LBE15:
.LBE14:
	.loc 1 81 0
	addi	a7, a10, -54
	movi.n	a8, 9
	bgeu	a8, a7, .L8
	.loc 1 82 0 discriminator 2
	call8	esp_log_timestamp
.LVL20:
	l32r	a11, .LC5
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC7
	movi.n	a10, 1
	call8	esp_log_write
.LVL21:
	.loc 1 83 0 discriminator 2
	j	.L9
.L8:
.LVL22:
.LBB16:
.LBB17:
	.loc 2 571 0
	movi.n	a14, 4
	addi	a13, sp, 28
.LVL23:
	movi.n	a12, 0x24
	l32r	a11, .LC8
	call8	lwip_setsockopt_r
.LVL24:
	j	.L10
.L14:
.LBE17:
.LBE16:
	.loc 1 90 0
	movi.n	a10, 0xa
	call8	vTaskDelay
.LVL25:
.LBB18:
.LBB19:
	.loc 2 589 0
	movi.n	a15, 0x10
	addi.n	a14, sp, 12
.LVL26:
	movi.n	a13, 0
	mov.n	a12, a5
	addi.n	a11, a2, 12
.LVL27:
	mov.n	a10, a4
	call8	lwip_sendto_r
.LVL28:
.LBE19:
.LBE18:
	.loc 1 93 0
	blti	a10, 1, .L11
	.loc 1 95 0
	addi.n	a8, a3, 1
	extui	a8, a8, 0, 8
.LVL29:
	movi.n	a9, 0x1d
	bgeu	a9, a3, .L12
	.loc 1 96 0
	l32i.n	a3, a2, 4
	beqz.n	a3, .L13
	.loc 1 97 0
	movi.n	a5, 1
.LVL30:
	s8i	a5, a3, 0
.L13:
	.loc 1 99 0
	l32i.n	a3, a2, 8
	beqz.n	a3, .L9
	.loc 1 100 0
	mov.n	a11, a6
	movi.n	a10, 4
	callx8	a3
.LVL31:
	j	.L9
.LVL32:
.L11:
	.loc 1 106 0
	mov.n	a10, a4
	call8	sc_ack_send_get_errno
.LVL33:
	mov.n	a7, a10
.LVL34:
	.loc 1 107 0
	addi	a8, a10, -11
	bltui	a8, 2, .L20
	.loc 1 111 0 discriminator 2
	call8	esp_log_timestamp
.LVL35:
	l32r	a11, .LC5
	mov.n	a15, a7
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC10
	movi.n	a10, 1
	call8	esp_log_write
.LVL36:
	.loc 1 112 0 discriminator 2
	j	.L9
.L20:
	mov.n	a8, a3
.LVL37:
.L12:
	mov.n	a3, a8
.LVL38:
.L10:
	.loc 1 88 0
	l32r	a8, .LC11
	l8ui	a8, a8, 0
	bnez.n	a8, .L14
	j	.L5
.LVL39:
.L6:
	.loc 1 117 0
	movi.n	a10, 0xa
.LVL40:
	call8	vTaskDelay
.LVL41:
.L5:
	.loc 1 70 0
	l32r	a8, .LC11
	l8ui	a8, a8, 0
	bnez.n	a8, .L16
.LVL42:
.L9:
	.loc 1 122 0
	addi	a3, a4, -54
	movi.n	a5, 9
	bltu	a5, a3, .L17
	.loc 1 123 0
	mov.n	a10, a4
	call8	close
.LVL43:
.L17:
	.loc 1 125 0
	mov.n	a10, a2
	call8	free
.LVL44:
	.loc 1 126 0
	movi.n	a10, 0
	call8	vTaskDelete
.LVL45:
	retw.n
.LFE35:
	.size	sc_ack_send_task, .-sc_ack_send_task
	.section	.rodata.str1.4
	.align	4
.LC13:
	.string	"\033[0;31mE (%d) %s: Smart config ack parameter error\033[0m\n"
	.align	4
.LC15:
	.string	"\033[0;31mE (%d) %s: Smart config ack parameter malloc fail\033[0m\n"
	.align	4
.LC19:
	.string	"sc_ack_send_task"
	.align	4
.LC23:
	.string	"\033[0;31mE (%d) %s: Create sending smartconfig ACK task fail\033[0m\n"
	.section	.text.sc_ack_send,"ax",@progbits
	.literal_position
	.literal .LC12, .LC4
	.literal .LC14, .LC13
	.literal .LC16, .LC15
	.literal .LC17, s_sc_ack_send
	.literal .LC18, 2048
	.literal .LC20, .LC19
	.literal .LC21, sc_ack_send_task
	.literal .LC22, 2147483647
	.literal .LC24, .LC23
	.align	4
	.global	sc_ack_send
	.type	sc_ack_send, @function
sc_ack_send:
.LFB36:
	.loc 1 130 0
.LVL46:
	entry	sp, 48
.LCFI2:
.LVL47:
	.loc 1 133 0
	bnez.n	a2, .L22
	.loc 1 134 0 discriminator 2
	call8	esp_log_timestamp
.LVL48:
	l32r	a11, .LC12
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC14
	movi.n	a10, 1
	call8	esp_log_write
.LVL49:
	.loc 1 135 0 discriminator 2
	retw.n
.L22:
	.loc 1 138 0
	movi.n	a10, 0x18
	call8	malloc
.LVL50:
	mov.n	a3, a10
.LVL51:
	.loc 1 139 0
	bnez.n	a10, .L24
	.loc 1 140 0 discriminator 2
	call8	esp_log_timestamp
.LVL52:
	l32r	a11, .LC12
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC16
	movi.n	a10, 1
	call8	esp_log_write
.LVL53:
	.loc 1 141 0 discriminator 2
	retw.n
.L24:
	.loc 1 143 0
	movi.n	a12, 0x18
	mov.n	a11, a2
	call8	memcpy
.LVL54:
	.loc 1 145 0
	movi.n	a8, 1
	l32r	a2, .LC17
.LVL55:
	s8i	a8, a2, 0
.LVL56:
.LBB20:
.LBB21:
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
	.loc 3 438 0
	l32r	a2, .LC22
	s32i.n	a2, sp, 0
	movi.n	a15, 0
	movi.n	a14, 2
	mov.n	a13, a3
	l32r	a12, .LC18
	l32r	a11, .LC20
	l32r	a10, .LC21
	call8	xTaskCreatePinnedToCore
.LVL57:
.LBE21:
.LBE20:
	.loc 1 147 0
	beqi	a10, 1, .L21
	.loc 1 148 0 discriminator 2
	call8	esp_log_timestamp
.LVL58:
	l32r	a11, .LC12
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC24
	movi.n	a10, 1
	call8	esp_log_write
.LVL59:
	.loc 1 149 0 discriminator 2
	mov.n	a10, a3
	call8	free
.LVL60:
.L21:
	retw.n
.LFE36:
	.size	sc_ack_send, .-sc_ack_send
	.section	.text.sc_ack_send_stop,"ax",@progbits
	.literal_position
	.literal .LC25, s_sc_ack_send
	.align	4
	.global	sc_ack_send_stop
	.type	sc_ack_send_stop, @function
sc_ack_send_stop:
.LFB37:
	.loc 1 154 0
	entry	sp, 32
.LCFI3:
	.loc 1 155 0
	movi.n	a9, 0
	l32r	a8, .LC25
	s8i	a9, a8, 0
	retw.n
.LFE37:
	.size	sc_ack_send_stop, .-sc_ack_send_stop
	.section	.bss.s_sc_ack_send,"aw",@nobits
	.type	s_sc_ack_send, @object
	.size	s_sc_ack_send, 1
s_sc_ack_send:
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
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI0-.LFB34
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI1-.LFB35
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI2-.LFB36
	.byte	0xe
	.uleb128 0x30
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
	.text
.Letext0:
	.file 4 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/projdefs.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/port/arch/cc.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/ip4_addr.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/inet.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/tcpip_adapter/include/tcpip_adapter.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_interface.h"
	.file 14 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.file 15 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_smartconfig.h"
	.file 16 "D:/ESP32/esp-idf-v3.1-rc1/components/smartconfig_ack/include/smartconfig_ack.h"
	.file 17 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/def.h"
	.file 18 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_wifi.h"
	.file 19 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/unistd.h"
	.file 20 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xc6a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF126
	.byte	0xc
	.4byte	.LASF127
	.4byte	.LASF128
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x4
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
	.byte	0x5
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
	.byte	0x5
	.byte	0x16
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x5
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
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x6
	.byte	0x4
	.4byte	0xad
	.uleb128 0x7
	.4byte	0xa0
	.uleb128 0x8
	.4byte	0xa0
	.4byte	0xc2
	.uleb128 0x9
	.4byte	0x90
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x6
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x6
	.byte	0x21
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x6
	.byte	0x2d
	.4byte	0x70
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe9
	.uleb128 0xa
	.uleb128 0x6
	.byte	0x4
	.4byte	0xf0
	.uleb128 0xb
	.4byte	0xfb
	.uleb128 0xc
	.4byte	0x97
	.byte	0
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x7
	.byte	0x4d
	.4byte	0xea
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF19
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x8
	.byte	0x6f
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x8
	.byte	0x70
	.4byte	0x37
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x8
	.byte	0x76
	.4byte	0xd8
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x3
	.byte	0x6b
	.4byte	0x97
	.uleb128 0x7
	.4byte	0xa7
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x9
	.byte	0x2e
	.4byte	0xc2
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x9
	.byte	0x30
	.4byte	0xcd
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x9
	.byte	0x32
	.4byte	0xd8
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x4
	.byte	0xa
	.byte	0x2e
	.4byte	0x178
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0xa
	.byte	0x2f
	.4byte	0x154
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0xa
	.byte	0x42
	.4byte	0x15f
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0xb
	.byte	0x37
	.4byte	0x154
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x4
	.byte	0xb
	.byte	0x3a
	.4byte	0x1a7
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0xb
	.byte	0x3b
	.4byte	0x183
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x2
	.byte	0x37
	.4byte	0x13e
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x2
	.byte	0x3c
	.4byte	0x149
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x10
	.byte	0x2
	.byte	0x41
	.4byte	0x206
	.uleb128 0xe
	.4byte	.LASF36
	.byte	0x2
	.byte	0x42
	.4byte	0x13e
	.byte	0
	.uleb128 0xe
	.4byte	.LASF37
	.byte	0x2
	.byte	0x43
	.4byte	0x1a7
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF38
	.byte	0x2
	.byte	0x44
	.4byte	0x1b2
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF39
	.byte	0x2
	.byte	0x45
	.4byte	0x18e
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0x2
	.byte	0x47
	.4byte	0xb2
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x10
	.byte	0x2
	.byte	0x56
	.4byte	0x237
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0x2
	.byte	0x57
	.4byte	0x13e
	.byte	0
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x2
	.byte	0x58
	.4byte	0x1a7
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x2
	.byte	0x59
	.4byte	0x237
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0xa0
	.4byte	0x247
	.uleb128 0x9
	.4byte	0x90
	.byte	0xd
	.byte	0
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0x2
	.byte	0x69
	.4byte	0x154
	.uleb128 0xf
	.byte	0x4
	.4byte	0x37
	.byte	0xd
	.byte	0x19
	.4byte	0x277
	.uleb128 0x10
	.4byte	.LASF46
	.byte	0
	.uleb128 0x10
	.4byte	.LASF47
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF48
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF49
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc2
	.uleb128 0x8
	.4byte	0xc2
	.4byte	0x28d
	.uleb128 0x9
	.4byte	0x90
	.byte	0x5
	.byte	0
	.uleb128 0x11
	.byte	0xc
	.byte	0xc
	.byte	0x48
	.4byte	0x2b8
	.uleb128 0x12
	.string	"ip"
	.byte	0xc
	.byte	0x49
	.4byte	0x178
	.byte	0
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0xc
	.byte	0x4a
	.4byte	0x178
	.byte	0x4
	.uleb128 0x12
	.string	"gw"
	.byte	0xc
	.byte	0x4b
	.4byte	0x178
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF51
	.byte	0xc
	.byte	0x4c
	.4byte	0x28d
	.uleb128 0xf
	.byte	0x4
	.4byte	0x37
	.byte	0xc
	.byte	0x6d
	.4byte	0x2e8
	.uleb128 0x10
	.4byte	.LASF52
	.byte	0
	.uleb128 0x10
	.4byte	.LASF53
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF54
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF55
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x37
	.byte	0xe
	.byte	0x1f
	.4byte	0x319
	.uleb128 0x10
	.4byte	.LASF56
	.byte	0
	.uleb128 0x10
	.4byte	.LASF57
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF58
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF59
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF60
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF61
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.4byte	0x97
	.uleb128 0xf
	.byte	0x4
	.4byte	0x37
	.byte	0xf
	.byte	0x1a
	.4byte	0x349
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0
	.uleb128 0x10
	.4byte	.LASF63
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF64
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF65
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF66
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0xf
	.byte	0x20
	.4byte	0x31e
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0xf
	.byte	0x33
	.4byte	0x35f
	.uleb128 0x6
	.byte	0x4
	.4byte	0x365
	.uleb128 0xb
	.4byte	0x375
	.uleb128 0xc
	.4byte	0x349
	.uleb128 0xc
	.4byte	0x97
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x37
	.byte	0x10
	.byte	0x24
	.4byte	0x38e
	.uleb128 0x10
	.4byte	.LASF69
	.byte	0
	.uleb128 0x10
	.4byte	.LASF70
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF71
	.byte	0x10
	.byte	0x27
	.4byte	0x375
	.uleb128 0x11
	.byte	0xb
	.byte	0x10
	.byte	0x30
	.4byte	0x3c5
	.uleb128 0xe
	.4byte	.LASF72
	.byte	0x10
	.byte	0x31
	.4byte	0xc2
	.byte	0
	.uleb128 0x12
	.string	"mac"
	.byte	0x10
	.byte	0x32
	.4byte	0x27d
	.byte	0x1
	.uleb128 0x12
	.string	"ip"
	.byte	0x10
	.byte	0x33
	.4byte	0x3c5
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.4byte	0xc2
	.4byte	0x3d5
	.uleb128 0x9
	.4byte	0x90
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.4byte	.LASF73
	.byte	0x18
	.byte	0x10
	.byte	0x2c
	.4byte	0x411
	.uleb128 0xe
	.4byte	.LASF74
	.byte	0x10
	.byte	0x2d
	.4byte	0x38e
	.byte	0
	.uleb128 0xe
	.4byte	.LASF75
	.byte	0x10
	.byte	0x2e
	.4byte	0x277
	.byte	0x4
	.uleb128 0x12
	.string	"cb"
	.byte	0x10
	.byte	0x2f
	.4byte	0x354
	.byte	0x8
	.uleb128 0x12
	.string	"ctx"
	.byte	0x10
	.byte	0x34
	.4byte	0x399
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF76
	.byte	0x10
	.byte	0x35
	.4byte	0x3d5
	.uleb128 0x13
	.4byte	.LASF81
	.byte	0x2
	.2byte	0x23c
	.4byte	0x25
	.byte	0x3
	.4byte	0x468
	.uleb128 0x14
	.string	"s"
	.byte	0x2
	.2byte	0x23c
	.4byte	0x25
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x2
	.2byte	0x23c
	.4byte	0x25
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x2
	.2byte	0x23c
	.4byte	0x25
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x2
	.2byte	0x23c
	.4byte	0x97
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x2
	.2byte	0x23c
	.4byte	0x468
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x247
	.uleb128 0x13
	.4byte	.LASF82
	.byte	0x2
	.2byte	0x24e
	.4byte	0x25
	.byte	0x3
	.4byte	0x4a4
	.uleb128 0x15
	.4byte	.LASF83
	.byte	0x2
	.2byte	0x24e
	.4byte	0x25
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x2
	.2byte	0x24e
	.4byte	0x25
	.uleb128 0x15
	.4byte	.LASF84
	.byte	0x2
	.2byte	0x24e
	.4byte	0x25
	.byte	0
	.uleb128 0x13
	.4byte	.LASF85
	.byte	0x2
	.2byte	0x23a
	.4byte	0x25
	.byte	0x3
	.4byte	0x4f0
	.uleb128 0x14
	.string	"s"
	.byte	0x2
	.2byte	0x23a
	.4byte	0x25
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x2
	.2byte	0x23a
	.4byte	0x25
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x2
	.2byte	0x23a
	.4byte	0x25
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x2
	.2byte	0x23a
	.4byte	0xe3
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x2
	.2byte	0x23a
	.4byte	0x247
	.byte	0
	.uleb128 0x13
	.4byte	.LASF86
	.byte	0x2
	.2byte	0x24c
	.4byte	0x25
	.byte	0x3
	.4byte	0x547
	.uleb128 0x14
	.string	"s"
	.byte	0x2
	.2byte	0x24c
	.4byte	0x25
	.uleb128 0x15
	.4byte	.LASF87
	.byte	0x2
	.2byte	0x24c
	.4byte	0xe3
	.uleb128 0x15
	.4byte	.LASF88
	.byte	0x2
	.2byte	0x24c
	.4byte	0x2c
	.uleb128 0x15
	.4byte	.LASF89
	.byte	0x2
	.2byte	0x24c
	.4byte	0x25
	.uleb128 0x14
	.string	"to"
	.byte	0x2
	.2byte	0x24c
	.4byte	0x547
	.uleb128 0x15
	.4byte	.LASF90
	.byte	0x2
	.2byte	0x24c
	.4byte	0x247
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x54d
	.uleb128 0x7
	.4byte	0x206
	.uleb128 0x13
	.4byte	.LASF91
	.byte	0x3
	.2byte	0x1ae
	.4byte	0x10d
	.byte	0x3
	.4byte	0x5ac
	.uleb128 0x15
	.4byte	.LASF92
	.byte	0x3
	.2byte	0x1af
	.4byte	0xfb
	.uleb128 0x15
	.4byte	.LASF93
	.byte	0x3
	.2byte	0x1b0
	.4byte	0x139
	.uleb128 0x15
	.4byte	.LASF94
	.byte	0x3
	.2byte	0x1b1
	.4byte	0x5ac
	.uleb128 0x15
	.4byte	.LASF95
	.byte	0x3
	.2byte	0x1b2
	.4byte	0x319
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x3
	.2byte	0x1b3
	.4byte	0x118
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0x3
	.2byte	0x1b4
	.4byte	0x5b7
	.byte	0
	.uleb128 0x7
	.4byte	0xd8
	.uleb128 0x6
	.byte	0x4
	.4byte	0x12e
	.uleb128 0x7
	.4byte	0x5b1
	.uleb128 0x16
	.4byte	.LASF129
	.byte	0x1
	.byte	0x23
	.4byte	0x25
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x663
	.uleb128 0x17
	.string	"fd"
	.byte	0x1
	.byte	0x23
	.4byte	0x25
	.4byte	.LLST0
	.uleb128 0x18
	.4byte	.LASF98
	.byte	0x1
	.byte	0x25
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.4byte	.LASF80
	.byte	0x1
	.byte	0x26
	.4byte	0x154
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x19
	.4byte	0x41c
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.byte	0x1
	.byte	0x28
	.uleb128 0x1a
	.4byte	0x45b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x9f
	.uleb128 0x1b
	.4byte	0x44f
	.4byte	.LLST1
	.uleb128 0x1c
	.4byte	0x443
	.2byte	0x1007
	.uleb128 0x1c
	.4byte	0x437
	.2byte	0xfff
	.uleb128 0x1b
	.4byte	0x42d
	.4byte	.LLST2
	.uleb128 0x1d
	.4byte	.LVL3
	.4byte	0xbab
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0xfff
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1007
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF130
	.byte	0x1
	.byte	0x2d
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9dc
	.uleb128 0x20
	.4byte	.LASF95
	.byte	0x1
	.byte	0x2d
	.4byte	0x97
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x21
	.string	"ack"
	.byte	0x1
	.byte	0x2f
	.4byte	0x9dc
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x18
	.4byte	.LASF99
	.byte	0x1
	.byte	0x30
	.4byte	0x2b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.4byte	.LASF100
	.byte	0x1
	.byte	0x31
	.4byte	0x277
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x22
	.4byte	.LASF101
	.byte	0x1
	.byte	0x32
	.4byte	0x25
	.4byte	.LLST3
	.uleb128 0x18
	.4byte	.LASF102
	.byte	0x1
	.byte	0x33
	.4byte	0x1bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x23
	.4byte	.LASF103
	.byte	0x1
	.byte	0x34
	.4byte	0x247
	.byte	0x10
	.uleb128 0x22
	.4byte	.LASF104
	.byte	0x1
	.byte	0x35
	.4byte	0x25
	.4byte	.LLST4
	.uleb128 0x18
	.4byte	.LASF105
	.byte	0x1
	.byte	0x36
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x24
	.4byte	.LASF131
	.byte	0x1
	.byte	0x37
	.4byte	0x25
	.uleb128 0x22
	.4byte	.LASF106
	.byte	0x1
	.byte	0x38
	.4byte	0x25
	.4byte	.LLST5
	.uleb128 0x22
	.4byte	.LASF107
	.byte	0x1
	.byte	0x39
	.4byte	0xc2
	.4byte	.LLST6
	.uleb128 0x25
	.string	"err"
	.byte	0x1
	.byte	0x3a
	.4byte	0x25
	.4byte	.LLST7
	.uleb128 0x25
	.string	"ret"
	.byte	0x1
	.byte	0x3b
	.4byte	0x25
	.4byte	.LLST8
	.uleb128 0x26
	.4byte	.LASF132
	.byte	0x1
	.byte	0x79
	.4byte	.L9
	.uleb128 0x27
	.4byte	0x46e
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.byte	0x1
	.byte	0x50
	.4byte	0x78d
	.uleb128 0x1b
	.4byte	0x497
	.4byte	.LLST9
	.uleb128 0x1b
	.4byte	0x48b
	.4byte	.LLST10
	.uleb128 0x1b
	.4byte	0x47f
	.4byte	.LLST10
	.uleb128 0x1d
	.4byte	.LVL19
	.4byte	0xbb7
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	0x4a4
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.byte	0x1
	.byte	0x56
	.4byte	0x7f6
	.uleb128 0x1b
	.4byte	0x4e3
	.4byte	.LLST12
	.uleb128 0x1b
	.4byte	0x4d7
	.4byte	.LLST13
	.uleb128 0x1b
	.4byte	0x4cb
	.4byte	.LLST14
	.uleb128 0x1b
	.4byte	0x4bf
	.4byte	.LLST15
	.uleb128 0x1b
	.4byte	0x4b5
	.4byte	.LLST16
	.uleb128 0x1d
	.4byte	.LVL24
	.4byte	0xbc3
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0xfff
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x24
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	0x4f0
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.byte	0x1
	.byte	0x5c
	.4byte	0x86c
	.uleb128 0x1b
	.4byte	0x53a
	.4byte	.LLST17
	.uleb128 0x1b
	.4byte	0x52f
	.4byte	.LLST18
	.uleb128 0x1b
	.4byte	0x523
	.4byte	.LLST19
	.uleb128 0x1b
	.4byte	0x517
	.4byte	.LLST20
	.uleb128 0x1b
	.4byte	0x50b
	.4byte	.LLST21
	.uleb128 0x1b
	.4byte	0x501
	.4byte	.LLST22
	.uleb128 0x1d
	.4byte	.LVL28
	.4byte	0xbcf
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 12
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL10
	.4byte	0xbdb
	.4byte	0x880
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL11
	.4byte	0xbe6
	.4byte	0x898
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x77
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.uleb128 0x28
	.4byte	.LVL12
	.4byte	0xbf1
	.4byte	0x8b2
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 13
	.byte	0
	.uleb128 0x28
	.4byte	.LVL13
	.4byte	0xbfd
	.4byte	0x8c5
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x28
	.4byte	.LVL15
	.4byte	0xc09
	.4byte	0x8de
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x29
	.4byte	.LVL20
	.4byte	0xc15
	.uleb128 0x28
	.4byte	.LVL21
	.4byte	0xc20
	.4byte	0x915
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
	.4byte	.LC4
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x28
	.4byte	.LVL25
	.4byte	0xbfd
	.4byte	0x928
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL31
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.4byte	0x940
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL33
	.4byte	0x5bc
	.4byte	0x954
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL35
	.4byte	0xc15
	.uleb128 0x28
	.4byte	.LVL36
	.4byte	0xc20
	.4byte	0x991
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
	.4byte	.LC4
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL41
	.4byte	0xbfd
	.4byte	0x9a4
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x28
	.4byte	.LVL43
	.4byte	0xc2b
	.4byte	0x9b8
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL44
	.4byte	0xc36
	.4byte	0x9cc
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL45
	.4byte	0xc41
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x411
	.uleb128 0x2b
	.4byte	.LASF133
	.byte	0x1
	.byte	0x81
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb77
	.uleb128 0x2c
	.4byte	.LASF108
	.byte	0x1
	.byte	0x81
	.4byte	0x9dc
	.4byte	.LLST23
	.uleb128 0x25
	.string	"ack"
	.byte	0x1
	.byte	0x83
	.4byte	0x9dc
	.4byte	.LLST24
	.uleb128 0x27
	.4byte	0x552
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.byte	0x1
	.byte	0x93
	.4byte	0xa95
	.uleb128 0x2d
	.4byte	0x59f
	.byte	0
	.uleb128 0x2d
	.4byte	0x593
	.byte	0x2
	.uleb128 0x1a
	.4byte	0x587
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	0x57b
	.2byte	0x800
	.uleb128 0x1a
	.4byte	0x56f
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC19
	.byte	0x9f
	.uleb128 0x1a
	.4byte	0x563
	.uleb128 0x6
	.byte	0x3
	.4byte	sc_ack_send_task
	.byte	0x9f
	.uleb128 0x1d
	.4byte	.LVL57
	.4byte	0xc4d
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	sc_ack_send_task
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x800
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL48
	.4byte	0xc15
	.uleb128 0x28
	.4byte	.LVL49
	.4byte	0xc20
	.4byte	0xacc
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
	.4byte	.LC4
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x28
	.4byte	.LVL50
	.4byte	0xc59
	.4byte	0xadf
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x29
	.4byte	.LVL52
	.4byte	0xc15
	.uleb128 0x28
	.4byte	.LVL53
	.4byte	0xc20
	.4byte	0xb16
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
	.4byte	.LC4
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x28
	.4byte	.LVL54
	.4byte	0xc64
	.4byte	0xb2f
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x29
	.4byte	.LVL58
	.4byte	0xc15
	.uleb128 0x28
	.4byte	.LVL59
	.4byte	0xc20
	.4byte	0xb66
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
	.4byte	.LC4
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL60
	.4byte	0xc36
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF134
	.byte	0x1
	.byte	0x99
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x21
	.string	"TAG"
	.byte	0x1
	.byte	0x1e
	.4byte	0x139
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.uleb128 0x18
	.4byte	.LASF109
	.byte	0x1
	.byte	0x21
	.4byte	0x106
	.uleb128 0x5
	.byte	0x3
	.4byte	s_sc_ack_send
	.uleb128 0x2f
	.4byte	.LASF110
	.4byte	.LASF110
	.byte	0x2
	.2byte	0x21b
	.uleb128 0x2f
	.4byte	.LASF111
	.4byte	.LASF111
	.byte	0x2
	.2byte	0x228
	.uleb128 0x2f
	.4byte	.LASF112
	.4byte	.LASF112
	.byte	0x2
	.2byte	0x21c
	.uleb128 0x2f
	.4byte	.LASF113
	.4byte	.LASF113
	.byte	0x2
	.2byte	0x226
	.uleb128 0x30
	.4byte	.LASF114
	.4byte	.LASF114
	.byte	0xa
	.byte	0xf1
	.uleb128 0x30
	.4byte	.LASF115
	.4byte	.LASF115
	.byte	0x11
	.byte	0x6c
	.uleb128 0x2f
	.4byte	.LASF116
	.4byte	.LASF116
	.byte	0x12
	.2byte	0x26f
	.uleb128 0x2f
	.4byte	.LASF117
	.4byte	.LASF117
	.byte	0x3
	.2byte	0x32e
	.uleb128 0x2f
	.4byte	.LASF118
	.4byte	.LASF118
	.byte	0xc
	.2byte	0x128
	.uleb128 0x30
	.4byte	.LASF119
	.4byte	.LASF119
	.byte	0xe
	.byte	0x57
	.uleb128 0x30
	.4byte	.LASF120
	.4byte	.LASF120
	.byte	0xe
	.byte	0x6b
	.uleb128 0x30
	.4byte	.LASF121
	.4byte	.LASF121
	.byte	0x13
	.byte	0x1e
	.uleb128 0x30
	.4byte	.LASF122
	.4byte	.LASF122
	.byte	0x14
	.byte	0x5a
	.uleb128 0x2f
	.4byte	.LASF123
	.4byte	.LASF123
	.byte	0x3
	.2byte	0x2fe
	.uleb128 0x2f
	.4byte	.LASF124
	.4byte	.LASF124
	.byte	0x3
	.2byte	0x14d
	.uleb128 0x30
	.4byte	.LASF125
	.4byte	.LASF125
	.byte	0x14
	.byte	0x65
	.uleb128 0x31
	.4byte	.LASF135
	.4byte	.LASF135
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x10
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LFE34
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
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL3-1
	.4byte	.LFE34
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL14
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL39
	.4byte	.LFE35
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL9
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL32
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL9
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL29
	.4byte	.LVL31-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL32
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL38
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL34
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL15
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL17
	.4byte	.LVL39
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL17
	.4byte	.LVL39
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL22
	.4byte	.LVL39
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x3
	.byte	0x91
	.sleb128 -36
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL24-1
	.4byte	.LVL39
	.2byte	0x3
	.byte	0x91
	.sleb128 -36
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL22
	.4byte	.LVL39
	.2byte	0x3
	.byte	0x8
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL22
	.4byte	.LVL39
	.2byte	0x4
	.byte	0xa
	.2byte	0xfff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL22
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL25
	.4byte	.LVL38
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL28-1
	.4byte	.LVL38
	.2byte	0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL25
	.4byte	.LVL38
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL25
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL32
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x3
	.byte	0x72
	.sleb128 12
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL28-1
	.4byte	.LVL38
	.2byte	0x3
	.byte	0x72
	.sleb128 12
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL25
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL46
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL55
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL47
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LFE36
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF98:
	.string	"sock_errno"
.LASF125:
	.string	"malloc"
.LASF3:
	.string	"size_t"
.LASF39:
	.string	"sin_addr"
.LASF55:
	.string	"TCPIP_ADAPTER_IF_MAX"
.LASF134:
	.string	"sc_ack_send_stop"
.LASF112:
	.string	"lwip_setsockopt_r"
.LASF67:
	.string	"smartconfig_status_t"
.LASF121:
	.string	"close"
.LASF4:
	.string	"__uint8_t"
.LASF74:
	.string	"type"
.LASF76:
	.string	"sc_ack_t"
.LASF10:
	.string	"long long unsigned int"
.LASF28:
	.string	"in_addr_t"
.LASF31:
	.string	"addr"
.LASF78:
	.string	"optname"
.LASF118:
	.string	"tcpip_adapter_get_ip_info"
.LASF122:
	.string	"free"
.LASF81:
	.string	"getsockopt"
.LASF9:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF65:
	.string	"SC_STATUS_LINK"
.LASF45:
	.string	"socklen_t"
.LASF117:
	.string	"vTaskDelay"
.LASF25:
	.string	"u16_t"
.LASF124:
	.string	"xTaskCreatePinnedToCore"
.LASF11:
	.string	"long int"
.LASF29:
	.string	"ip4_addr"
.LASF120:
	.string	"esp_log_write"
.LASF23:
	.string	"TaskHandle_t"
.LASF135:
	.string	"memcpy"
.LASF131:
	.string	"sendlen"
.LASF92:
	.string	"pvTaskCode"
.LASF16:
	.string	"uint16_t"
.LASF20:
	.string	"BaseType_t"
.LASF50:
	.string	"netmask"
.LASF64:
	.string	"SC_STATUS_GETTING_SSID_PSWD"
.LASF94:
	.string	"usStackDepth"
.LASF8:
	.string	"__uint32_t"
.LASF40:
	.string	"sin_zero"
.LASF128:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\smartconfig_ack"
.LASF0:
	.string	"unsigned int"
.LASF32:
	.string	"s_addr"
.LASF116:
	.string	"esp_wifi_get_mac"
.LASF106:
	.string	"ack_len"
.LASF13:
	.string	"long unsigned int"
.LASF26:
	.string	"u32_t"
.LASF133:
	.string	"sc_ack_send"
.LASF95:
	.string	"pvParameters"
.LASF103:
	.string	"sin_size"
.LASF77:
	.string	"level"
.LASF88:
	.string	"size"
.LASF1:
	.string	"short unsigned int"
.LASF52:
	.string	"TCPIP_ADAPTER_IF_STA"
.LASF71:
	.string	"sc_ack_type_t"
.LASF90:
	.string	"tolen"
.LASF132:
	.string	"_end"
.LASF51:
	.string	"tcpip_adapter_ip_info_t"
.LASF69:
	.string	"SC_ACK_TYPE_ESPTOUCH"
.LASF34:
	.string	"in_port_t"
.LASF115:
	.string	"lwip_htons"
.LASF73:
	.string	"sc_ack"
.LASF105:
	.string	"optval"
.LASF107:
	.string	"packet_count"
.LASF59:
	.string	"ESP_LOG_INFO"
.LASF42:
	.string	"sa_len"
.LASF37:
	.string	"sin_family"
.LASF109:
	.string	"s_sc_ack_send"
.LASF24:
	.string	"u8_t"
.LASF12:
	.string	"sizetype"
.LASF129:
	.string	"sc_ack_send_get_errno"
.LASF91:
	.string	"xTaskCreate"
.LASF22:
	.string	"TickType_t"
.LASF79:
	.string	"opval"
.LASF108:
	.string	"param"
.LASF104:
	.string	"send_sock"
.LASF36:
	.string	"sin_len"
.LASF110:
	.string	"lwip_getsockopt_r"
.LASF60:
	.string	"ESP_LOG_DEBUG"
.LASF38:
	.string	"sin_port"
.LASF43:
	.string	"sa_family"
.LASF72:
	.string	"token"
.LASF97:
	.string	"pvCreatedTask"
.LASF84:
	.string	"protocol"
.LASF19:
	.string	"_Bool"
.LASF5:
	.string	"unsigned char"
.LASF99:
	.string	"local_ip"
.LASF48:
	.string	"ESP_IF_ETH"
.LASF126:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF6:
	.string	"short int"
.LASF119:
	.string	"esp_log_timestamp"
.LASF57:
	.string	"ESP_LOG_ERROR"
.LASF18:
	.string	"TaskFunction_t"
.LASF53:
	.string	"TCPIP_ADAPTER_IF_AP"
.LASF17:
	.string	"uint32_t"
.LASF49:
	.string	"ESP_IF_MAX"
.LASF62:
	.string	"SC_STATUS_WAIT"
.LASF111:
	.string	"lwip_socket"
.LASF14:
	.string	"char"
.LASF61:
	.string	"ESP_LOG_VERBOSE"
.LASF46:
	.string	"ESP_IF_WIFI_STA"
.LASF63:
	.string	"SC_STATUS_FIND_CHANNEL"
.LASF87:
	.string	"dataptr"
.LASF86:
	.string	"sendto"
.LASF7:
	.string	"__uint16_t"
.LASF123:
	.string	"vTaskDelete"
.LASF56:
	.string	"ESP_LOG_NONE"
.LASF70:
	.string	"SC_ACK_TYPE_AIRKISS"
.LASF47:
	.string	"ESP_IF_WIFI_AP"
.LASF80:
	.string	"optlen"
.LASF102:
	.string	"server_addr"
.LASF27:
	.string	"ip4_addr_t"
.LASF33:
	.string	"sa_family_t"
.LASF75:
	.string	"link_flag"
.LASF66:
	.string	"SC_STATUS_LINK_OVER"
.LASF58:
	.string	"ESP_LOG_WARN"
.LASF101:
	.string	"remote_port"
.LASF130:
	.string	"sc_ack_send_task"
.LASF41:
	.string	"sockaddr"
.LASF85:
	.string	"setsockopt"
.LASF35:
	.string	"sockaddr_in"
.LASF15:
	.string	"uint8_t"
.LASF113:
	.string	"lwip_sendto_r"
.LASF68:
	.string	"sc_callback_t"
.LASF89:
	.string	"flags"
.LASF83:
	.string	"domain"
.LASF127:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/smartconfig_ack/smartconfig_ack.c"
.LASF44:
	.string	"sa_data"
.LASF82:
	.string	"socket"
.LASF54:
	.string	"TCPIP_ADAPTER_IF_ETH"
.LASF96:
	.string	"uxPriority"
.LASF114:
	.string	"ipaddr_addr"
.LASF93:
	.string	"pcName"
.LASF100:
	.string	"remote_ip"
.LASF21:
	.string	"UBaseType_t"
.LASF30:
	.string	"in_addr"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
