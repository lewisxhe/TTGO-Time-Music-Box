	.file	"btu_init.c"
	.text
.Ltext0:
	.section	.text.btu_init_core,"ax",@progbits
	.align	4
	.global	btu_init_core
	.type	btu_init_core, @function
btu_init_core:
.LFB26:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/btu/btu_init.c"
	.loc 1 85 0
	entry	sp, 32
.LCFI0:
	.loc 1 87 0
	call8	btm_init
.LVL0:
	.loc 1 89 0
	call8	l2c_init
.LVL1:
	.loc 1 92 0
	call8	sdp_init
.LVL2:
	.loc 1 97 0
	call8	gatt_init
.LVL3:
	.loc 1 100 0
	call8	SMP_Init
.LVL4:
	.loc 1 102 0
	call8	btm_ble_init
.LVL5:
	retw.n
.LFE26:
	.size	btu_init_core, .-btu_init_core
	.section	.text.btu_free_core,"ax",@progbits
	.align	4
	.global	btu_free_core
	.type	btu_free_core, @function
btu_free_core:
.LFB27:
	.loc 1 117 0
	entry	sp, 32
.LCFI1:
	.loc 1 119 0
	call8	l2c_free
.LVL6:
	.loc 1 122 0
	call8	sdp_deinit
.LVL7:
	.loc 1 127 0
	call8	gatt_free
.LVL8:
	.loc 1 129 0
	call8	btm_ble_free
.LVL9:
	.loc 1 131 0
	call8	btm_free
.LVL10:
	.loc 1 133 0
	call8	SMP_Free
.LVL11:
	retw.n
.LFE27:
	.size	btu_free_core, .-btu_free_core
	.section	.text.BTU_ShutDown,"ax",@progbits
	.literal_position
	.literal .LC0, btu_general_alarm_hash_map
	.literal .LC1, btu_general_alarm_lock
	.literal .LC2, btu_oneshot_alarm_hash_map
	.literal .LC3, btu_oneshot_alarm_lock
	.literal .LC4, btu_l2cap_alarm_hash_map
	.literal .LC5, btu_l2cap_alarm_lock
	.literal .LC6, xBtuTaskHandle
	.literal .LC7, xBtuQueue
	.align	4
	.global	BTU_ShutDown
	.type	BTU_ShutDown, @function
BTU_ShutDown:
.LFB29:
	.loc 1 194 0
	entry	sp, 32
.LCFI2:
	.loc 1 198 0
	call8	btu_task_shut_down
.LVL12:
	.loc 1 200 0
	l32r	a6, .LC0
	l32i.n	a10, a6, 0
	call8	hash_map_free
.LVL13:
	.loc 1 201 0
	l32r	a10, .LC1
	call8	osi_mutex_free
.LVL14:
	.loc 1 203 0
	l32r	a5, .LC2
	l32i.n	a10, a5, 0
	call8	hash_map_free
.LVL15:
	.loc 1 204 0
	l32r	a10, .LC3
	call8	osi_mutex_free
.LVL16:
	.loc 1 206 0
	l32r	a4, .LC4
	l32i.n	a10, a4, 0
	call8	hash_map_free
.LVL17:
	.loc 1 207 0
	l32r	a10, .LC5
	call8	osi_mutex_free
.LVL18:
	.loc 1 209 0
	l32r	a3, .LC6
	l32i.n	a10, a3, 0
	call8	vTaskDelete
.LVL19:
	.loc 1 210 0
	l32r	a2, .LC7
	l32i.n	a10, a2, 0
	call8	vQueueDelete
.LVL20:
	.loc 1 212 0
	movi.n	a8, 0
	s32i.n	a8, a6, 0
	.loc 1 214 0
	s32i.n	a8, a5, 0
	.loc 1 216 0
	s32i.n	a8, a4, 0
	.loc 1 218 0
	s32i.n	a8, a3, 0
	.loc 1 219 0
	s32i.n	a8, a2, 0
	retw.n
.LFE29:
	.size	BTU_ShutDown, .-BTU_ShutDown
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC20:
	.string	"btuT"
	.align	4
.LC24:
	.string	"BT_LOG"
	.align	4
.LC26:
	.string	"\033[0;31mE (%d) %s: %s Unable to allocate resources for bt_workqueue\033[0m\n"
	.section	.text.BTU_StartUp,"ax",@progbits
	.literal_position
	.literal .LC8, btu_cb
	.literal .LC9, osi_alarm_free
	.literal .LC10, hash_function_pointer
	.literal .LC11, btu_general_alarm_hash_map
	.literal .LC12, btu_general_alarm_lock
	.literal .LC13, btu_oneshot_alarm_hash_map
	.literal .LC14, btu_oneshot_alarm_lock
	.literal .LC15, btu_l2cap_alarm_hash_map
	.literal .LC16, btu_l2cap_alarm_lock
	.literal .LC17, xBtuQueue
	.literal .LC18, xBtuTaskHandle
	.literal .LC19, 4608
	.literal .LC21, .LC20
	.literal .LC22, btu_task_thread_handler
	.literal .LC23, __func__$12142
	.literal .LC25, .LC24
	.literal .LC27, .LC26
	.align	4
	.global	BTU_StartUp
	.type	BTU_StartUp, @function
BTU_StartUp:
.LFB28:
	.loc 1 150 0
	entry	sp, 48
.LCFI3:
	.loc 1 154 0
	l32r	a2, .LC8
	movi.n	a12, 0x44
	movi.n	a11, 0
	mov.n	a10, a2
	call8	memset
.LVL21:
	.loc 1 155 0
	movi.n	a8, 2
	s8i	a8, a2, 65
	.loc 1 157 0
	movi.n	a14, 0
	l32r	a13, .LC9
	mov.n	a12, a14
	l32r	a11, .LC10
	movi.n	a10, 0x22
	call8	hash_map_new
.LVL22:
	l32r	a2, .LC11
	s32i.n	a10, a2, 0
	.loc 1 159 0
	beqz.n	a10, .L5
	.loc 1 163 0
	l32r	a10, .LC12
	call8	osi_mutex_new
.LVL23:
	.loc 1 165 0
	movi.n	a14, 0
	l32r	a13, .LC9
	mov.n	a12, a14
	l32r	a11, .LC10
	movi.n	a10, 0x22
	call8	hash_map_new
.LVL24:
	l32r	a2, .LC13
	s32i.n	a10, a2, 0
	.loc 1 167 0
	beqz.n	a10, .L5
	.loc 1 171 0
	l32r	a10, .LC14
	call8	osi_mutex_new
.LVL25:
	.loc 1 173 0
	movi.n	a14, 0
	l32r	a13, .LC9
	mov.n	a12, a14
	l32r	a11, .LC10
	movi.n	a10, 0x22
	call8	hash_map_new
.LVL26:
	l32r	a2, .LC15
	s32i.n	a10, a2, 0
	.loc 1 175 0
	beqz.n	a10, .L5
	.loc 1 179 0
	l32r	a10, .LC16
	call8	osi_mutex_new
.LVL27:
	.loc 1 181 0
	movi.n	a12, 0
	movi.n	a11, 0x10
	movi.n	a10, 0x32
	call8	xQueueGenericCreate
.LVL28:
	l32r	a2, .LC17
	s32i.n	a10, a2, 0
	.loc 1 182 0
	movi.n	a2, 0
	s32i.n	a2, sp, 0
	l32r	a15, .LC18
	movi.n	a14, 0x14
	mov.n	a13, a2
	l32r	a12, .LC19
	l32r	a11, .LC21
	l32r	a10, .LC22
	call8	xTaskCreatePinnedToCore
.LVL29:
	.loc 1 184 0
	movi.n	a12, -1
	mov.n	a11, a2
	mov.n	a10, a2
	call8	btu_task_post
.LVL30:
	.loc 1 186 0
	retw.n
.L5:
	.loc 1 189 0 discriminator 1
	call8	esp_log_timestamp
.LVL31:
	l32r	a11, .LC25
	l32r	a15, .LC23
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC27
	movi.n	a10, 1
	call8	esp_log_write
.LVL32:
	.loc 1 190 0 discriminator 1
	call8	BTU_ShutDown
.LVL33:
	retw.n
.LFE28:
	.size	BTU_StartUp, .-BTU_StartUp
	.section	.text.BTU_BleAclPktSize,"ax",@progbits
	.align	4
	.global	BTU_BleAclPktSize
	.type	BTU_BleAclPktSize, @function
BTU_BleAclPktSize:
.LFB30:
	.loc 1 232 0
	entry	sp, 32
.LCFI4:
	.loc 1 234 0
	call8	controller_get_interface
.LVL34:
	l32i	a10, a10, 96
	callx8	a10
.LVL35:
	.loc 1 238 0
	mov.n	a2, a10
	retw.n
.LFE30:
	.size	BTU_BleAclPktSize, .-BTU_BleAclPktSize
	.section	.rodata.__func__$12142,"a",@progbits
	.align	4
	.type	__func__$12142, @object
	.size	__func__$12142, 12
__func__$12142:
	.string	"BTU_StartUp"
	.global	BT_BD_ANY
	.section	.rodata.BT_BD_ANY,"a",@progbits
	.align	4
	.type	BT_BD_ANY, @object
	.size	BT_BD_ANY, 6
BT_BD_ANY:
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.global	xBtuQueue
	.section	.bss.xBtuQueue,"aw",@nobits
	.align	4
	.type	xBtuQueue, @object
	.size	xBtuQueue, 4
xBtuQueue:
	.zero	4
	.global	xBtuTaskHandle
	.section	.bss.xBtuTaskHandle,"aw",@nobits
	.align	4
	.type	xBtuTaskHandle, @object
	.size	xBtuTaskHandle, 4
xBtuTaskHandle:
	.zero	4
	.comm	btu_l2cap_alarm_lock,4,4
	.comm	btu_l2cap_alarm_hash_map,4,4
	.comm	btu_oneshot_alarm_lock,4,4
	.comm	btu_oneshot_alarm_hash_map,4,4
	.comm	btu_general_alarm_lock,4,4
	.comm	btu_general_alarm_hash_map,4,4
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
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI0-.LFB26
	.byte	0xe
	.uleb128 0x20
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
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI3-.LFB28
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI4-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/common/include/common/bt_defs.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/hash_map.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/queue.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/semphr.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/thread.h"
	.file 14 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/mutex.h"
	.file 15 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
	.file 16 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btu.h"
	.file 17 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/smp/include/smp_int.h"
	.file 18 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/btm/include/btm_int.h"
	.file 19 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/l2cap/include/l2c_int.h"
	.file 20 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/sdp/include/sdpint.h"
	.file 21 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/gatt/include/gatt_int.h"
	.file 22 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/smp_api.h"
	.file 23 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/btm/include/btm_ble_int.h"
	.file 24 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/device/include/device/controller.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xb0e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF190
	.byte	0xc
	.4byte	.LASF191
	.4byte	.LASF192
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
	.4byte	0xb2
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0x22
	.4byte	0xbd
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x5
	.byte	0x23
	.4byte	0xd3
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x5
	.byte	0x28
	.4byte	0xc8
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x5
	.byte	0x29
	.4byte	0x115
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF25
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.byte	0xc6
	.4byte	0x161
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x5
	.byte	0xc7
	.4byte	0xbd
	.byte	0
	.uleb128 0x8
	.string	"len"
	.byte	0x5
	.byte	0xc8
	.4byte	0xbd
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x5
	.byte	0xc9
	.4byte	0xbd
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x5
	.byte	0xca
	.4byte	0xbd
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x5
	.byte	0xcb
	.4byte	0x161
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	0xb2
	.4byte	0x170
	.uleb128 0xa
	.4byte	0x9b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x5
	.byte	0xcc
	.4byte	0x11c
	.uleb128 0x9
	.4byte	0xde
	.4byte	0x18b
	.uleb128 0xb
	.4byte	0x9b
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x191
	.uleb128 0xd
	.4byte	0x19c
	.uleb128 0xe
	.4byte	0xa2
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x37
	.byte	0xc
	.byte	0x1f
	.4byte	0x1cd
	.uleb128 0x10
	.4byte	.LASF31
	.byte	0
	.uleb128 0x10
	.4byte	.LASF32
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF33
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF34
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF35
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF36
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x6
	.byte	0x20
	.4byte	0x191
	.uleb128 0x11
	.4byte	.LASF193
	.byte	0x20
	.byte	0x6
	.byte	0x21
	.4byte	0x251
	.uleb128 0x7
	.4byte	.LASF38
	.byte	0x6
	.byte	0x22
	.4byte	0x251
	.byte	0
	.uleb128 0x7
	.4byte	.LASF39
	.byte	0x6
	.byte	0x23
	.4byte	0x251
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF40
	.byte	0x6
	.byte	0x24
	.4byte	0x257
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF41
	.byte	0x6
	.byte	0x25
	.4byte	0xff
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF42
	.byte	0x6
	.byte	0x26
	.4byte	0xff
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF43
	.byte	0x6
	.byte	0x27
	.4byte	0xf4
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x6
	.byte	0x28
	.4byte	0xf4
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x6
	.byte	0x29
	.4byte	0xe9
	.byte	0x1c
	.uleb128 0x7
	.4byte	.LASF44
	.byte	0x6
	.byte	0x2a
	.4byte	0xde
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x1d8
	.uleb128 0xc
	.byte	0x4
	.4byte	0x1cd
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0x6
	.byte	0x2b
	.4byte	0x1d8
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0x7
	.byte	0x1a
	.4byte	0x273
	.uleb128 0x12
	.4byte	.LASF46
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0x7
	.byte	0x2b
	.4byte	0x18b
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0x8
	.byte	0x76
	.4byte	0xd3
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0x9
	.byte	0x6b
	.4byte	0xa2
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0xa
	.byte	0x58
	.4byte	0xa2
	.uleb128 0x3
	.4byte	.LASF51
	.byte	0xb
	.byte	0x4f
	.4byte	0x299
	.uleb128 0xc
	.byte	0x4
	.4byte	0x170
	.uleb128 0xd
	.4byte	0x2c0
	.uleb128 0xe
	.4byte	0x2af
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x2b5
	.uleb128 0xf
	.byte	0x4
	.4byte	0x37
	.byte	0xd
	.byte	0x31
	.4byte	0x303
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
	.uleb128 0x10
	.4byte	.LASF56
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF57
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF58
	.byte	0x6
	.uleb128 0x10
	.4byte	.LASF59
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0xe
	.byte	0x21
	.4byte	0x2a4
	.uleb128 0x13
	.byte	0x4
	.4byte	0x37
	.byte	0xf
	.2byte	0x1c0
	.4byte	0x436
	.uleb128 0x10
	.4byte	.LASF61
	.byte	0
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF63
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF64
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF65
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF66
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF67
	.byte	0x6
	.uleb128 0x10
	.4byte	.LASF68
	.byte	0x7
	.uleb128 0x10
	.4byte	.LASF69
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF70
	.byte	0x9
	.uleb128 0x10
	.4byte	.LASF71
	.byte	0xa
	.uleb128 0x10
	.4byte	.LASF72
	.byte	0xb
	.uleb128 0x10
	.4byte	.LASF73
	.byte	0xc
	.uleb128 0x10
	.4byte	.LASF74
	.byte	0xd
	.uleb128 0x10
	.4byte	.LASF75
	.byte	0xe
	.uleb128 0x10
	.4byte	.LASF76
	.byte	0xf
	.uleb128 0x10
	.4byte	.LASF77
	.byte	0x10
	.uleb128 0x10
	.4byte	.LASF78
	.byte	0x11
	.uleb128 0x10
	.4byte	.LASF79
	.byte	0x12
	.uleb128 0x10
	.4byte	.LASF80
	.byte	0x13
	.uleb128 0x10
	.4byte	.LASF81
	.byte	0x14
	.uleb128 0x10
	.4byte	.LASF82
	.byte	0x15
	.uleb128 0x10
	.4byte	.LASF83
	.byte	0x16
	.uleb128 0x10
	.4byte	.LASF84
	.byte	0x17
	.uleb128 0x10
	.4byte	.LASF85
	.byte	0x18
	.uleb128 0x10
	.4byte	.LASF86
	.byte	0x19
	.uleb128 0x10
	.4byte	.LASF87
	.byte	0x1a
	.uleb128 0x10
	.4byte	.LASF88
	.byte	0x1b
	.uleb128 0x10
	.4byte	.LASF89
	.byte	0x1c
	.uleb128 0x10
	.4byte	.LASF90
	.byte	0x1d
	.uleb128 0x10
	.4byte	.LASF91
	.byte	0x1e
	.uleb128 0x10
	.4byte	.LASF92
	.byte	0x1f
	.uleb128 0x10
	.4byte	.LASF93
	.byte	0x20
	.uleb128 0x10
	.4byte	.LASF94
	.byte	0x21
	.uleb128 0x10
	.4byte	.LASF95
	.byte	0x22
	.uleb128 0x10
	.4byte	.LASF96
	.byte	0x23
	.uleb128 0x10
	.4byte	.LASF97
	.byte	0x24
	.uleb128 0x10
	.4byte	.LASF98
	.byte	0x25
	.uleb128 0x10
	.4byte	.LASF99
	.byte	0x26
	.uleb128 0x10
	.4byte	.LASF100
	.byte	0x27
	.uleb128 0x10
	.4byte	.LASF101
	.byte	0x28
	.uleb128 0x10
	.4byte	.LASF102
	.byte	0x29
	.uleb128 0x10
	.4byte	.LASF103
	.byte	0x2a
	.uleb128 0x10
	.4byte	.LASF104
	.byte	0x2b
	.uleb128 0x10
	.4byte	.LASF105
	.byte	0x2c
	.uleb128 0x10
	.4byte	.LASF106
	.byte	0x2d
	.uleb128 0x10
	.4byte	.LASF107
	.byte	0x2e
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.4byte	0x37
	.byte	0xf
	.2byte	0x6ea
	.4byte	0x46e
	.uleb128 0x10
	.4byte	.LASF108
	.byte	0
	.uleb128 0x10
	.4byte	.LASF109
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF110
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF111
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF112
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF113
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF114
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF115
	.byte	0x10
	.byte	0x36
	.4byte	0x479
	.uleb128 0xc
	.byte	0x4
	.4byte	0x47f
	.uleb128 0xd
	.4byte	0x48a
	.uleb128 0xe
	.4byte	0x48a
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x25d
	.uleb128 0x3
	.4byte	.LASF116
	.byte	0x10
	.byte	0x37
	.4byte	0x2c0
	.uleb128 0x6
	.byte	0x8
	.byte	0x10
	.byte	0xbe
	.4byte	0x4bc
	.uleb128 0x7
	.4byte	.LASF117
	.byte	0x10
	.byte	0xbf
	.4byte	0x48a
	.byte	0
	.uleb128 0x7
	.4byte	.LASF118
	.byte	0x10
	.byte	0xc0
	.4byte	0x46e
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF119
	.byte	0x10
	.byte	0xc1
	.4byte	0x49b
	.uleb128 0x6
	.byte	0x8
	.byte	0x10
	.byte	0xc4
	.4byte	0x4e8
	.uleb128 0x7
	.4byte	.LASF120
	.byte	0x10
	.byte	0xc5
	.4byte	0xe9
	.byte	0
	.uleb128 0x7
	.4byte	.LASF121
	.byte	0x10
	.byte	0xc6
	.4byte	0x490
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF122
	.byte	0x10
	.byte	0xc7
	.4byte	0x4c7
	.uleb128 0x6
	.byte	0x44
	.byte	0x10
	.byte	0xd1
	.4byte	0x52c
	.uleb128 0x7
	.4byte	.LASF123
	.byte	0x10
	.byte	0xd2
	.4byte	0x52c
	.byte	0
	.uleb128 0x7
	.4byte	.LASF124
	.byte	0x10
	.byte	0xd3
	.4byte	0x53c
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF125
	.byte	0x10
	.byte	0xd5
	.4byte	0x10a
	.byte	0x40
	.uleb128 0x7
	.4byte	.LASF126
	.byte	0x10
	.byte	0xd6
	.4byte	0xde
	.byte	0x41
	.byte	0
	.uleb128 0x9
	.4byte	0x4bc
	.4byte	0x53c
	.uleb128 0xb
	.4byte	0x9b
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.4byte	0x4e8
	.4byte	0x54c
	.uleb128 0xb
	.4byte	0x9b
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF127
	.byte	0x10
	.byte	0xd7
	.4byte	0x4f3
	.uleb128 0xf
	.byte	0x4
	.4byte	0x37
	.byte	0x11
	.byte	0x88
	.4byte	0x5d0
	.uleb128 0x10
	.4byte	.LASF128
	.byte	0
	.uleb128 0x10
	.4byte	.LASF129
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF130
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF131
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF132
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF133
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF134
	.byte	0x6
	.uleb128 0x10
	.4byte	.LASF135
	.byte	0x7
	.uleb128 0x10
	.4byte	.LASF136
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF137
	.byte	0x9
	.uleb128 0x10
	.4byte	.LASF138
	.byte	0xa
	.uleb128 0x10
	.4byte	.LASF139
	.byte	0xb
	.uleb128 0x10
	.4byte	.LASF140
	.byte	0xc
	.uleb128 0x10
	.4byte	.LASF141
	.byte	0xd
	.uleb128 0x10
	.4byte	.LASF142
	.byte	0xe
	.uleb128 0x10
	.4byte	.LASF143
	.byte	0xf
	.uleb128 0x10
	.4byte	.LASF144
	.byte	0x10
	.uleb128 0x10
	.4byte	.LASF145
	.byte	0x11
	.byte	0
	.uleb128 0x14
	.4byte	.LASF146
	.byte	0x1
	.byte	0x54
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x61c
	.uleb128 0x15
	.4byte	.LVL0
	.4byte	0x9e7
	.uleb128 0x15
	.4byte	.LVL1
	.4byte	0x9f3
	.uleb128 0x15
	.4byte	.LVL2
	.4byte	0x9ff
	.uleb128 0x15
	.4byte	.LVL3
	.4byte	0xa0a
	.uleb128 0x15
	.4byte	.LVL4
	.4byte	0xa16
	.uleb128 0x15
	.4byte	.LVL5
	.4byte	0xa22
	.byte	0
	.uleb128 0x14
	.4byte	.LASF147
	.byte	0x1
	.byte	0x74
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x668
	.uleb128 0x15
	.4byte	.LVL6
	.4byte	0xa2e
	.uleb128 0x15
	.4byte	.LVL7
	.4byte	0xa3a
	.uleb128 0x15
	.4byte	.LVL8
	.4byte	0xa45
	.uleb128 0x15
	.4byte	.LVL9
	.4byte	0xa51
	.uleb128 0x15
	.4byte	.LVL10
	.4byte	0xa5d
	.uleb128 0x15
	.4byte	.LVL11
	.4byte	0xa69
	.byte	0
	.uleb128 0x14
	.4byte	.LASF148
	.byte	0x1
	.byte	0xc1
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6f9
	.uleb128 0x15
	.4byte	.LVL12
	.4byte	0xa75
	.uleb128 0x15
	.4byte	.LVL13
	.4byte	0xa80
	.uleb128 0x16
	.4byte	.LVL14
	.4byte	0xa8b
	.4byte	0x6a6
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	btu_general_alarm_lock
	.byte	0
	.uleb128 0x15
	.4byte	.LVL15
	.4byte	0xa80
	.uleb128 0x16
	.4byte	.LVL16
	.4byte	0xa8b
	.4byte	0x6c6
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	btu_oneshot_alarm_lock
	.byte	0
	.uleb128 0x15
	.4byte	.LVL17
	.4byte	0xa80
	.uleb128 0x16
	.4byte	.LVL18
	.4byte	0xa8b
	.4byte	0x6e6
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	btu_l2cap_alarm_lock
	.byte	0
	.uleb128 0x15
	.4byte	.LVL19
	.4byte	0xa96
	.uleb128 0x15
	.4byte	.LVL20
	.4byte	0xaa2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF149
	.byte	0x1
	.byte	0x95
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8a7
	.uleb128 0x18
	.4byte	.LASF194
	.byte	0x1
	.byte	0xbc
	.4byte	.L5
	.uleb128 0x19
	.4byte	.LASF195
	.4byte	0x8b7
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$12142
	.uleb128 0x16
	.4byte	.LVL21
	.4byte	0xaae
	.4byte	0x747
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
	.uleb128 0x2
	.byte	0x8
	.byte	0x44
	.byte	0
	.uleb128 0x16
	.4byte	.LVL22
	.4byte	0xab7
	.4byte	0x765
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x22
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x16
	.4byte	.LVL23
	.4byte	0xac2
	.4byte	0x77c
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	btu_general_alarm_lock
	.byte	0
	.uleb128 0x16
	.4byte	.LVL24
	.4byte	0xab7
	.4byte	0x79a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x22
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x16
	.4byte	.LVL25
	.4byte	0xac2
	.4byte	0x7b1
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	btu_oneshot_alarm_lock
	.byte	0
	.uleb128 0x16
	.4byte	.LVL26
	.4byte	0xab7
	.4byte	0x7cf
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x22
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x16
	.4byte	.LVL27
	.4byte	0xac2
	.4byte	0x7e6
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	btu_l2cap_alarm_lock
	.byte	0
	.uleb128 0x16
	.4byte	.LVL28
	.4byte	0xacd
	.4byte	0x804
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x32
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x16
	.4byte	.LVL29
	.4byte	0xad9
	.4byte	0x83d
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1200
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x44
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	xBtuTaskHandle
	.uleb128 0x17
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL30
	.4byte	0xae5
	.4byte	0x85d
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x15
	.4byte	.LVL31
	.4byte	0xaf0
	.uleb128 0x16
	.4byte	.LVL32
	.4byte	0xafb
	.4byte	0x89d
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$12142
	.byte	0
	.uleb128 0x15
	.4byte	.LVL33
	.4byte	0x668
	.byte	0
	.uleb128 0x9
	.4byte	0xab
	.4byte	0x8b7
	.uleb128 0xb
	.4byte	0x9b
	.byte	0xb
	.byte	0
	.uleb128 0x1a
	.4byte	0x8a7
	.uleb128 0x1b
	.4byte	.LASF196
	.byte	0x1
	.byte	0xe7
	.4byte	0xe9
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8df
	.uleb128 0x15
	.4byte	.LVL34
	.4byte	0xb06
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF150
	.byte	0x5
	.2byte	0x2cc
	.4byte	0x8f2
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x1a
	.4byte	0x17b
	.uleb128 0x1c
	.4byte	.LASF151
	.byte	0x5
	.2byte	0x2cd
	.4byte	0x90a
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	0x17b
	.uleb128 0x1d
	.4byte	.LASF152
	.byte	0x1
	.byte	0x31
	.4byte	0x91b
	.byte	0x22
	.uleb128 0x1a
	.4byte	0x2c
	.uleb128 0x1d
	.4byte	.LASF153
	.byte	0x1
	.byte	0x35
	.4byte	0x91b
	.byte	0x22
	.uleb128 0x1d
	.4byte	.LASF154
	.byte	0x1
	.byte	0x39
	.4byte	0x91b
	.byte	0x22
	.uleb128 0x1e
	.4byte	.LASF155
	.byte	0x10
	.byte	0xe0
	.4byte	0x54c
	.uleb128 0x1f
	.4byte	.LASF156
	.byte	0x1
	.byte	0x49
	.4byte	0x954
	.uleb128 0x5
	.byte	0x3
	.4byte	BT_BD_ANY
	.uleb128 0x1a
	.4byte	0x17b
	.uleb128 0x1f
	.4byte	.LASF157
	.byte	0x1
	.byte	0x2f
	.4byte	0x96a
	.uleb128 0x5
	.byte	0x3
	.4byte	btu_general_alarm_hash_map
	.uleb128 0xc
	.byte	0x4
	.4byte	0x268
	.uleb128 0x1f
	.4byte	.LASF158
	.byte	0x1
	.byte	0x30
	.4byte	0x303
	.uleb128 0x5
	.byte	0x3
	.4byte	btu_general_alarm_lock
	.uleb128 0x1f
	.4byte	.LASF159
	.byte	0x1
	.byte	0x33
	.4byte	0x96a
	.uleb128 0x5
	.byte	0x3
	.4byte	btu_oneshot_alarm_hash_map
	.uleb128 0x1f
	.4byte	.LASF160
	.byte	0x1
	.byte	0x34
	.4byte	0x303
	.uleb128 0x5
	.byte	0x3
	.4byte	btu_oneshot_alarm_lock
	.uleb128 0x1f
	.4byte	.LASF161
	.byte	0x1
	.byte	0x37
	.4byte	0x96a
	.uleb128 0x5
	.byte	0x3
	.4byte	btu_l2cap_alarm_hash_map
	.uleb128 0x1f
	.4byte	.LASF162
	.byte	0x1
	.byte	0x38
	.4byte	0x303
	.uleb128 0x5
	.byte	0x3
	.4byte	btu_l2cap_alarm_lock
	.uleb128 0x1f
	.4byte	.LASF163
	.byte	0x1
	.byte	0x3d
	.4byte	0x28e
	.uleb128 0x5
	.byte	0x3
	.4byte	xBtuTaskHandle
	.uleb128 0x1f
	.4byte	.LASF164
	.byte	0x1
	.byte	0x3e
	.4byte	0x299
	.uleb128 0x5
	.byte	0x3
	.4byte	xBtuQueue
	.uleb128 0x20
	.4byte	.LASF165
	.4byte	.LASF165
	.byte	0x12
	.2byte	0x39d
	.uleb128 0x20
	.4byte	.LASF166
	.4byte	.LASF166
	.byte	0x13
	.2byte	0x244
	.uleb128 0x21
	.4byte	.LASF167
	.4byte	.LASF167
	.byte	0x14
	.byte	0xef
	.uleb128 0x20
	.4byte	.LASF168
	.4byte	.LASF168
	.byte	0x15
	.2byte	0x23a
	.uleb128 0x20
	.4byte	.LASF169
	.4byte	.LASF169
	.byte	0x16
	.2byte	0x130
	.uleb128 0x20
	.4byte	.LASF170
	.4byte	.LASF170
	.byte	0x17
	.2byte	0x178
	.uleb128 0x20
	.4byte	.LASF171
	.4byte	.LASF171
	.byte	0x13
	.2byte	0x245
	.uleb128 0x21
	.4byte	.LASF172
	.4byte	.LASF172
	.byte	0x14
	.byte	0xf0
	.uleb128 0x20
	.4byte	.LASF173
	.4byte	.LASF173
	.byte	0x15
	.2byte	0x23b
	.uleb128 0x20
	.4byte	.LASF174
	.4byte	.LASF174
	.byte	0x17
	.2byte	0x179
	.uleb128 0x20
	.4byte	.LASF175
	.4byte	.LASF175
	.byte	0x12
	.2byte	0x39e
	.uleb128 0x20
	.4byte	.LASF176
	.4byte	.LASF176
	.byte	0x16
	.2byte	0x13b
	.uleb128 0x21
	.4byte	.LASF177
	.4byte	.LASF177
	.byte	0x1
	.byte	0x44
	.uleb128 0x21
	.4byte	.LASF178
	.4byte	.LASF178
	.byte	0x7
	.byte	0x3f
	.uleb128 0x21
	.4byte	.LASF179
	.4byte	.LASF179
	.byte	0xe
	.byte	0x29
	.uleb128 0x20
	.4byte	.LASF180
	.4byte	.LASF180
	.byte	0x9
	.2byte	0x2fe
	.uleb128 0x20
	.4byte	.LASF181
	.4byte	.LASF181
	.byte	0xa
	.2byte	0x3ac
	.uleb128 0x22
	.4byte	.LASF197
	.4byte	.LASF197
	.uleb128 0x21
	.4byte	.LASF182
	.4byte	.LASF182
	.byte	0x7
	.byte	0x36
	.uleb128 0x21
	.4byte	.LASF183
	.4byte	.LASF183
	.byte	0xe
	.byte	0x23
	.uleb128 0x20
	.4byte	.LASF184
	.4byte	.LASF184
	.byte	0xa
	.2byte	0x5d0
	.uleb128 0x20
	.4byte	.LASF185
	.4byte	.LASF185
	.byte	0x9
	.2byte	0x14d
	.uleb128 0x21
	.4byte	.LASF186
	.4byte	.LASF186
	.byte	0xd
	.byte	0x6f
	.uleb128 0x21
	.4byte	.LASF187
	.4byte	.LASF187
	.byte	0xc
	.byte	0x57
	.uleb128 0x21
	.4byte	.LASF188
	.4byte	.LASF188
	.byte	0xc
	.byte	0x6b
	.uleb128 0x21
	.4byte	.LASF189
	.4byte	.LASF189
	.byte	0x18
	.byte	0x59
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
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
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x22
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
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF116:
	.string	"tBTU_EVENT_CALLBACK"
.LASF62:
	.string	"BTM_EIR_UUID_SERVCLASS_SERIAL_PORT"
.LASF176:
	.string	"SMP_Free"
.LASF3:
	.string	"size_t"
.LASF168:
	.string	"gatt_init"
.LASF57:
	.string	"SIG_BTU_ONESHOT_ALARM"
.LASF92:
	.string	"BTM_EIR_UUID_SERVCLASS_CABLE_REPLACEMENT"
.LASF128:
	.string	"SMP_STATE_IDLE"
.LASF4:
	.string	"__uint8_t"
.LASF58:
	.string	"SIG_BTU_L2CAP_ALARM"
.LASF173:
	.string	"gatt_free"
.LASF45:
	.string	"TIMER_LIST_ENT"
.LASF126:
	.string	"trace_level"
.LASF97:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PSE"
.LASF29:
	.string	"data"
.LASF125:
	.string	"reset_complete"
.LASF50:
	.string	"QueueHandle_t"
.LASF170:
	.string	"btm_ble_init"
.LASF137:
	.string	"SMP_STATE_WAIT_COMMITMENT"
.LASF100:
	.string	"BTM_EIR_UUID_SERVCLASS_PNP_INFORMATION"
.LASF191:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/btu/btu_init.c"
.LASF154:
	.string	"BTU_L2CAP_ALARM_HASH_MAP_SIZE"
.LASF35:
	.string	"ESP_LOG_DEBUG"
.LASF10:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF163:
	.string	"xBtuTaskHandle"
.LASF74:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REMOTE_CONTROL"
.LASF11:
	.string	"long long unsigned int"
.LASF174:
	.string	"btm_ble_free"
.LASF141:
	.string	"SMP_STATE_DHK_CHECK"
.LASF90:
	.string	"BTM_EIR_UUID_SERVCLASS_PRINTING_STATUS"
.LASF63:
	.string	"BTM_EIR_UUID_SERVCLASS_LAN_ACCESS_USING_PPP"
.LASF54:
	.string	"SIG_BTU_BTA_MSG"
.LASF185:
	.string	"xTaskCreatePinnedToCore"
.LASF12:
	.string	"long int"
.LASF159:
	.string	"btu_oneshot_alarm_hash_map"
.LASF188:
	.string	"esp_log_write"
.LASF49:
	.string	"TaskHandle_t"
.LASF73:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REM_CTRL_TARGET"
.LASF110:
	.string	"BTM_PM_STS_SNIFF"
.LASF17:
	.string	"uint16_t"
.LASF127:
	.string	"tBTU_CB"
.LASF109:
	.string	"BTM_PM_STS_HOLD"
.LASF161:
	.string	"btu_l2cap_alarm_hash_map"
.LASF87:
	.string	"BTM_EIR_UUID_SERVCLASS_AG_HANDSFREE"
.LASF89:
	.string	"BTM_EIR_UUID_SERVCLASS_BASIC_PRINTING"
.LASF139:
	.string	"SMP_STATE_SEC_CONN_PHS2_START"
.LASF102:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SINK"
.LASF21:
	.string	"UINT16"
.LASF157:
	.string	"btu_general_alarm_hash_map"
.LASF112:
	.string	"BTM_PM_STS_SSR"
.LASF88:
	.string	"BTM_EIR_UUID_SERVCLASS_DIR_PRT_REF_OBJ_SERVICE"
.LASF184:
	.string	"xQueueGenericCreate"
.LASF181:
	.string	"vQueueDelete"
.LASF178:
	.string	"hash_map_free"
.LASF107:
	.string	"BTM_EIR_MAX_SERVICES"
.LASF151:
	.string	"bd_addr_null"
.LASF9:
	.string	"__uint32_t"
.LASF144:
	.string	"SMP_STATE_CREATE_LOCAL_SEC_CONN_OOB_DATA"
.LASF0:
	.string	"unsigned int"
.LASF67:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_FILE_TRANSFER"
.LASF167:
	.string	"sdp_init"
.LASF131:
	.string	"SMP_STATE_PAIR_REQ_RSP"
.LASF64:
	.string	"BTM_EIR_UUID_SERVCLASS_DIALUP_NETWORKING"
.LASF30:
	.string	"BT_HDR"
.LASF132:
	.string	"SMP_STATE_WAIT_CONFIRM"
.LASF56:
	.string	"SIG_BTU_GENERAL_ALARM"
.LASF23:
	.string	"INT32"
.LASF40:
	.string	"p_cback"
.LASF160:
	.string	"btu_oneshot_alarm_lock"
.LASF47:
	.string	"data_free_fn"
.LASF108:
	.string	"BTM_PM_STS_ACTIVE"
.LASF98:
	.string	"BTM_EIR_UUID_SERVCLASS_PHONE_ACCESS"
.LASF26:
	.string	"event"
.LASF162:
	.string	"btu_l2cap_alarm_lock"
.LASF1:
	.string	"short unsigned int"
.LASF80:
	.string	"BTM_EIR_UUID_SERVCLASS_GN"
.LASF46:
	.string	"hash_map_t"
.LASF121:
	.string	"event_cb"
.LASF183:
	.string	"osi_mutex_new"
.LASF41:
	.string	"ticks"
.LASF94:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_SCAN"
.LASF156:
	.string	"BT_BD_ANY"
.LASF104:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_NOTIFICATION"
.LASF152:
	.string	"BTU_GENERAL_ALARM_HASH_MAP_SIZE"
.LASF59:
	.string	"SIG_BTU_NUM"
.LASF135:
	.string	"SMP_STATE_PUBLIC_KEY_EXCH"
.LASF193:
	.string	"_tle"
.LASF129:
	.string	"SMP_STATE_WAIT_APP_RSP"
.LASF34:
	.string	"ESP_LOG_INFO"
.LASF114:
	.string	"BTM_PM_STS_ERROR"
.LASF155:
	.string	"btu_cb"
.LASF13:
	.string	"sizetype"
.LASF79:
	.string	"BTM_EIR_UUID_SERVCLASS_NAP"
.LASF187:
	.string	"esp_log_timestamp"
.LASF33:
	.string	"ESP_LOG_WARN"
.LASF22:
	.string	"UINT32"
.LASF48:
	.string	"TickType_t"
.LASF43:
	.string	"param"
.LASF172:
	.string	"sdp_deinit"
.LASF143:
	.string	"SMP_STATE_BOND_PENDING"
.LASF138:
	.string	"SMP_STATE_WAIT_NONCE"
.LASF103:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_ACCESS"
.LASF182:
	.string	"hash_map_new"
.LASF153:
	.string	"BTU_ONESHOT_ALARM_HASH_MAP_SIZE"
.LASF52:
	.string	"SIG_BTU_START_UP"
.LASF85:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_REF_OBJECTS"
.LASF69:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET"
.LASF70:
	.string	"BTM_EIR_UUID_SERVCLASS_CORDLESS_TELEPHONY"
.LASF130:
	.string	"SMP_STATE_SEC_REQ_PENDING"
.LASF83:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_RESPONDER"
.LASF95:
	.string	"BTM_EIR_UUID_SERVCLASS_SAP"
.LASF145:
	.string	"SMP_STATE_MAX"
.LASF118:
	.string	"timer_cb"
.LASF82:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING"
.LASF39:
	.string	"p_prev"
.LASF81:
	.string	"BTM_EIR_UUID_SERVCLASS_DIRECT_PRINTING"
.LASF84:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_AUTO_ARCHIVE"
.LASF124:
	.string	"event_reg"
.LASF177:
	.string	"btu_task_shut_down"
.LASF25:
	.string	"_Bool"
.LASF18:
	.string	"int32_t"
.LASF5:
	.string	"unsigned char"
.LASF190:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF65:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC"
.LASF158:
	.string	"btu_general_alarm_lock"
.LASF6:
	.string	"short int"
.LASF197:
	.string	"memset"
.LASF120:
	.string	"event_range"
.LASF32:
	.string	"ESP_LOG_ERROR"
.LASF123:
	.string	"timer_reg"
.LASF38:
	.string	"p_next"
.LASF37:
	.string	"TIMER_CBACK"
.LASF24:
	.string	"BOOLEAN"
.LASF195:
	.string	"__func__"
.LASF119:
	.string	"tBTU_TIMER_REG"
.LASF111:
	.string	"BTM_PM_STS_PARK"
.LASF42:
	.string	"ticks_initial"
.LASF71:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SOURCE"
.LASF166:
	.string	"l2c_init"
.LASF196:
	.string	"BTU_BleAclPktSize"
.LASF53:
	.string	"SIG_BTU_HCI_MSG"
.LASF44:
	.string	"in_use"
.LASF66:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_OBJECT_PUSH"
.LASF19:
	.string	"uint32_t"
.LASF115:
	.string	"tBTU_TIMER_CALLBACK"
.LASF165:
	.string	"btm_init"
.LASF136:
	.string	"SMP_STATE_SEC_CONN_PHS1_START"
.LASF14:
	.string	"long unsigned int"
.LASF51:
	.string	"SemaphoreHandle_t"
.LASF15:
	.string	"char"
.LASF36:
	.string	"ESP_LOG_VERBOSE"
.LASF60:
	.string	"osi_mutex_t"
.LASF171:
	.string	"l2c_free"
.LASF142:
	.string	"SMP_STATE_ENCRYPTION_PENDING"
.LASF7:
	.string	"__uint16_t"
.LASF180:
	.string	"vTaskDelete"
.LASF149:
	.string	"BTU_StartUp"
.LASF31:
	.string	"ESP_LOG_NONE"
.LASF77:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_AUDIO_GATEWAY"
.LASF147:
	.string	"btu_free_core"
.LASF8:
	.string	"__int32_t"
.LASF175:
	.string	"btm_free"
.LASF93:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_PRINT"
.LASF27:
	.string	"offset"
.LASF117:
	.string	"p_tle"
.LASF28:
	.string	"layer_specific"
.LASF68:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC_COMMAND"
.LASF105:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SOURCE"
.LASF134:
	.string	"SMP_STATE_RAND"
.LASF78:
	.string	"BTM_EIR_UUID_SERVCLASS_PANU"
.LASF75:
	.string	"BTM_EIR_UUID_SERVCLASS_INTERCOM"
.LASF194:
	.string	"error_exit"
.LASF20:
	.string	"UINT8"
.LASF99:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_HS"
.LASF164:
	.string	"xBtuQueue"
.LASF16:
	.string	"uint8_t"
.LASF150:
	.string	"bd_addr_any"
.LASF55:
	.string	"SIG_BTU_BTA_ALARM"
.LASF113:
	.string	"BTM_PM_STS_PENDING"
.LASF72:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SINK"
.LASF86:
	.string	"BTM_EIR_UUID_SERVCLASS_HF_HANDSFREE"
.LASF61:
	.string	"BTM_EIR_UUID_SERVCLASS_SERVICE_DISCOVERY_SERVER"
.LASF192:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF140:
	.string	"SMP_STATE_WAIT_DHK_CHECK"
.LASF106:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SINK"
.LASF148:
	.string	"BTU_ShutDown"
.LASF146:
	.string	"btu_init_core"
.LASF91:
	.string	"BTM_EIR_UUID_SERVCLASS_HUMAN_INTERFACE"
.LASF169:
	.string	"SMP_Init"
.LASF133:
	.string	"SMP_STATE_CONFIRM"
.LASF76:
	.string	"BTM_EIR_UUID_SERVCLASS_FAX"
.LASF179:
	.string	"osi_mutex_free"
.LASF122:
	.string	"tBTU_EVENT_REG"
.LASF189:
	.string	"controller_get_interface"
.LASF96:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PCE"
.LASF101:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SOURCE"
.LASF186:
	.string	"btu_task_post"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
