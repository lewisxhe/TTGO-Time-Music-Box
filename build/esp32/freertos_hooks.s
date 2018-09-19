	.file	"freertos_hooks.c"
	.text
.Ltext0:
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC0, tick_cb
	.align	4
	.global	esp_vApplicationTickHook
	.type	esp_vApplicationTickHook, @function
esp_vApplicationTickHook:
.LFB14:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/freertos_hooks.c"
	.loc 1 36 0
	entry	sp, 32
.LCFI0:
.LBB11:
.LBB12:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portable.h"
	.loc 2 208 0
#APP
# 208 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portable.h" 1
	rsr.prid a3
 extui a3,a3,13,1
# 0 "" 2
.LVL0:
#NO_APP
.LBE12:
.LBE11:
	.loc 1 39 0
	movi.n	a2, 0
	j	.L2
.LVL1:
.L4:
	.loc 1 40 0
	addx8	a8, a3, a2
	l32r	a9, .LC0
	addx4	a8, a8, a9
	l32i.n	a8, a8, 0
	beqz.n	a8, .L3
	.loc 1 41 0
	callx8	a8
.LVL2:
.L3:
	.loc 1 39 0 discriminator 2
	addi.n	a2, a2, 1
.LVL3:
.L2:
	.loc 1 39 0 is_stmt 0 discriminator 1
	blti	a2, 8, .L4
	.loc 1 44 0 is_stmt 1
	retw.n
.LFE14:
	.size	esp_vApplicationTickHook, .-esp_vApplicationTickHook
	.section	.text.esp_vApplicationIdleHook,"ax",@progbits
	.literal_position
	.literal .LC1, idle_cb
	.align	4
	.global	esp_vApplicationIdleHook
	.type	esp_vApplicationIdleHook, @function
esp_vApplicationIdleHook:
.LFB15:
	.loc 1 47 0
	entry	sp, 32
.LCFI1:
.LVL4:
.LBB13:
.LBB14:
	.loc 2 208 0
#APP
# 208 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portable.h" 1
	rsr.prid a3
 extui a3,a3,13,1
# 0 "" 2
.LVL5:
#NO_APP
.LBE14:
.LBE13:
.LBB15:
	.loc 1 50 0
	movi.n	a2, 0
	j	.L6
.LVL6:
.L8:
	.loc 1 51 0
	addx8	a8, a3, a2
	l32r	a9, .LC1
	addx4	a8, a8, a9
	l32i.n	a10, a8, 0
	beqz.n	a10, .L7
	.loc 1 51 0 discriminator 1
	callx8	a10
.LVL7:
.L7:
	.loc 1 50 0 discriminator 2
	addi.n	a2, a2, 1
.LVL8:
.L6:
	.loc 1 50 0 is_stmt 0 discriminator 1
	blti	a2, 8, .L8
.LBE15:
	.loc 1 62 0 is_stmt 1
	retw.n
.LFE15:
	.size	esp_vApplicationIdleHook, .-esp_vApplicationIdleHook
	.section	.text.esp_vApplicationWaitiHook,"ax",@progbits
	.align	4
	.global	esp_vApplicationWaitiHook
	.type	esp_vApplicationWaitiHook, @function
esp_vApplicationWaitiHook:
.LFB16:
	.loc 1 65 0
	entry	sp, 32
.LCFI2:
	.loc 1 66 0
#APP
# 66 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/freertos_hooks.c" 1
	waiti 0
# 0 "" 2
#NO_APP
	retw.n
.LFE16:
	.size	esp_vApplicationWaitiHook, .-esp_vApplicationWaitiHook
	.section	.text.esp_register_freertos_idle_hook_for_cpu,"ax",@progbits
	.literal_position
	.literal .LC2, hooks_spinlock
	.literal .LC3, idle_cb
	.align	4
	.global	esp_register_freertos_idle_hook_for_cpu
	.type	esp_register_freertos_idle_hook_for_cpu, @function
esp_register_freertos_idle_hook_for_cpu:
.LFB17:
	.loc 1 70 0
.LVL9:
	entry	sp, 32
.LCFI3:
	.loc 1 71 0
	bgeui	a3, 2, .L15
	.loc 1 74 0
	l32r	a10, .LC2
	call8	vTaskEnterCritical
.LVL10:
.LBB16:
	.loc 1 75 0
	movi.n	a9, 0
	j	.L12
.LVL11:
.L14:
	.loc 1 76 0
	addx8	a8, a3, a9
	l32r	a10, .LC3
	addx4	a8, a8, a10
	l32i.n	a8, a8, 0
	bnez.n	a8, .L13
	.loc 1 77 0
	addx8	a3, a3, a9
.LVL12:
	addx4	a3, a3, a10
	s32i.n	a2, a3, 0
	.loc 1 78 0
	l32r	a10, .LC2
	call8	vTaskExitCritical
.LVL13:
	.loc 1 79 0
	movi.n	a2, 0
.LVL14:
	retw.n
.LVL15:
.L13:
	.loc 1 75 0 discriminator 2
	addi.n	a9, a9, 1
.LVL16:
.L12:
	.loc 1 75 0 is_stmt 0 discriminator 1
	blti	a9, 8, .L14
.LBE16:
	.loc 1 82 0 is_stmt 1
	l32r	a10, .LC2
	call8	vTaskExitCritical
.LVL17:
	.loc 1 83 0
	movi	a2, 0x101
.LVL18:
	retw.n
.LVL19:
.L15:
	.loc 1 72 0
	movi	a2, 0x102
.LVL20:
	.loc 1 84 0
	retw.n
.LFE17:
	.size	esp_register_freertos_idle_hook_for_cpu, .-esp_register_freertos_idle_hook_for_cpu
	.section	.text.esp_register_freertos_idle_hook,"ax",@progbits
	.align	4
	.global	esp_register_freertos_idle_hook
	.type	esp_register_freertos_idle_hook, @function
esp_register_freertos_idle_hook:
.LFB18:
	.loc 1 87 0
.LVL21:
	entry	sp, 32
.LCFI4:
.LBB17:
.LBB18:
	.loc 2 208 0
#APP
# 208 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portable.h" 1
	rsr.prid a11
 extui a11,a11,13,1
# 0 "" 2
.LVL22:
#NO_APP
.LBE18:
.LBE17:
	.loc 1 88 0
	mov.n	a10, a2
	call8	esp_register_freertos_idle_hook_for_cpu
.LVL23:
	.loc 1 89 0
	mov.n	a2, a10
.LVL24:
	retw.n
.LFE18:
	.size	esp_register_freertos_idle_hook, .-esp_register_freertos_idle_hook
	.section	.text.esp_register_freertos_tick_hook_for_cpu,"ax",@progbits
	.literal_position
	.literal .LC4, hooks_spinlock
	.literal .LC5, tick_cb
	.align	4
	.global	esp_register_freertos_tick_hook_for_cpu
	.type	esp_register_freertos_tick_hook_for_cpu, @function
esp_register_freertos_tick_hook_for_cpu:
.LFB19:
	.loc 1 92 0
.LVL25:
	entry	sp, 32
.LCFI5:
	.loc 1 93 0
	bgeui	a3, 2, .L22
	.loc 1 96 0
	l32r	a10, .LC4
	call8	vTaskEnterCritical
.LVL26:
.LBB19:
	.loc 1 97 0
	movi.n	a9, 0
	j	.L19
.LVL27:
.L21:
	.loc 1 98 0
	addx8	a8, a3, a9
	l32r	a10, .LC5
	addx4	a8, a8, a10
	l32i.n	a8, a8, 0
	bnez.n	a8, .L20
	.loc 1 99 0
	addx8	a3, a3, a9
.LVL28:
	addx4	a3, a3, a10
	s32i.n	a2, a3, 0
	.loc 1 100 0
	l32r	a10, .LC4
	call8	vTaskExitCritical
.LVL29:
	.loc 1 101 0
	movi.n	a2, 0
.LVL30:
	retw.n
.LVL31:
.L20:
	.loc 1 97 0 discriminator 2
	addi.n	a9, a9, 1
.LVL32:
.L19:
	.loc 1 97 0 is_stmt 0 discriminator 1
	blti	a9, 8, .L21
.LBE19:
	.loc 1 104 0 is_stmt 1
	l32r	a10, .LC4
	call8	vTaskExitCritical
.LVL33:
	.loc 1 105 0
	movi	a2, 0x101
.LVL34:
	retw.n
.LVL35:
.L22:
	.loc 1 94 0
	movi	a2, 0x102
.LVL36:
	.loc 1 106 0
	retw.n
.LFE19:
	.size	esp_register_freertos_tick_hook_for_cpu, .-esp_register_freertos_tick_hook_for_cpu
	.section	.text.esp_register_freertos_tick_hook,"ax",@progbits
	.align	4
	.global	esp_register_freertos_tick_hook
	.type	esp_register_freertos_tick_hook, @function
esp_register_freertos_tick_hook:
.LFB20:
	.loc 1 109 0
.LVL37:
	entry	sp, 32
.LCFI6:
.LBB20:
.LBB21:
	.loc 2 208 0
#APP
# 208 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portable.h" 1
	rsr.prid a11
 extui a11,a11,13,1
# 0 "" 2
.LVL38:
#NO_APP
.LBE21:
.LBE20:
	.loc 1 110 0
	mov.n	a10, a2
	call8	esp_register_freertos_tick_hook_for_cpu
.LVL39:
	.loc 1 111 0
	mov.n	a2, a10
.LVL40:
	retw.n
.LFE20:
	.size	esp_register_freertos_tick_hook, .-esp_register_freertos_tick_hook
	.section	.text.esp_deregister_freertos_idle_hook_for_cpu,"ax",@progbits
	.literal_position
	.literal .LC6, hooks_spinlock
	.literal .LC7, idle_cb
	.align	4
	.global	esp_deregister_freertos_idle_hook_for_cpu
	.type	esp_deregister_freertos_idle_hook_for_cpu, @function
esp_deregister_freertos_idle_hook_for_cpu:
.LFB21:
	.loc 1 114 0
.LVL41:
	entry	sp, 32
.LCFI7:
	.loc 1 115 0
	l32r	a10, .LC6
	call8	vTaskEnterCritical
.LVL42:
	.loc 1 116 0
	bgeui	a3, 2, .L24
	movi.n	a9, 0
	j	.L26
.LVL43:
.L28:
.LBB22:
	.loc 1 120 0
	addx8	a8, a3, a9
	l32r	a10, .LC7
	addx4	a8, a8, a10
	l32i.n	a8, a8, 0
	bne	a8, a2, .L27
	.loc 1 120 0 is_stmt 0 discriminator 1
	addx8	a8, a3, a9
	addx4	a8, a8, a10
	movi.n	a10, 0
	s32i.n	a10, a8, 0
.L27:
	.loc 1 119 0 is_stmt 1 discriminator 2
	addi.n	a9, a9, 1
.LVL44:
.L26:
	.loc 1 119 0 is_stmt 0 discriminator 1
	blti	a9, 8, .L28
.LBE22:
	.loc 1 122 0 is_stmt 1
	l32r	a10, .LC6
	call8	vTaskExitCritical
.LVL45:
.L24:
	retw.n
.LFE21:
	.size	esp_deregister_freertos_idle_hook_for_cpu, .-esp_deregister_freertos_idle_hook_for_cpu
	.section	.text.esp_deregister_freertos_idle_hook,"ax",@progbits
	.literal_position
	.literal .LC8, hooks_spinlock
	.align	4
	.global	esp_deregister_freertos_idle_hook
	.type	esp_deregister_freertos_idle_hook, @function
esp_deregister_freertos_idle_hook:
.LFB22:
	.loc 1 126 0
.LVL46:
	entry	sp, 32
.LCFI8:
	.loc 1 127 0
	l32r	a10, .LC8
	call8	vTaskEnterCritical
.LVL47:
.LBB23:
	.loc 1 128 0
	movi.n	a3, 0
	j	.L30
.LVL48:
.L31:
	.loc 1 129 0 discriminator 3
	mov.n	a11, a3
	mov.n	a10, a2
	call8	esp_deregister_freertos_idle_hook_for_cpu
.LVL49:
	.loc 1 128 0 discriminator 3
	addi.n	a3, a3, 1
.LVL50:
.L30:
	.loc 1 128 0 is_stmt 0 discriminator 1
	blti	a3, 2, .L31
.LBE23:
	.loc 1 131 0 is_stmt 1
	l32r	a10, .LC8
	call8	vTaskExitCritical
.LVL51:
	retw.n
.LFE22:
	.size	esp_deregister_freertos_idle_hook, .-esp_deregister_freertos_idle_hook
	.section	.text.esp_deregister_freertos_tick_hook_for_cpu,"ax",@progbits
	.literal_position
	.literal .LC9, hooks_spinlock
	.literal .LC10, tick_cb
	.align	4
	.global	esp_deregister_freertos_tick_hook_for_cpu
	.type	esp_deregister_freertos_tick_hook_for_cpu, @function
esp_deregister_freertos_tick_hook_for_cpu:
.LFB23:
	.loc 1 135 0
.LVL52:
	entry	sp, 32
.LCFI9:
	.loc 1 136 0
	l32r	a10, .LC9
	call8	vTaskEnterCritical
.LVL53:
	.loc 1 137 0
	bgeui	a3, 2, .L32
	movi.n	a9, 0
	j	.L34
.LVL54:
.L36:
.LBB24:
	.loc 1 141 0
	addx8	a8, a3, a9
	l32r	a10, .LC10
	addx4	a8, a8, a10
	l32i.n	a8, a8, 0
	bne	a8, a2, .L35
	.loc 1 141 0 is_stmt 0 discriminator 1
	addx8	a8, a3, a9
	addx4	a8, a8, a10
	movi.n	a10, 0
	s32i.n	a10, a8, 0
.L35:
	.loc 1 140 0 is_stmt 1 discriminator 2
	addi.n	a9, a9, 1
.LVL55:
.L34:
	.loc 1 140 0 is_stmt 0 discriminator 1
	blti	a9, 8, .L36
.LBE24:
	.loc 1 143 0 is_stmt 1
	l32r	a10, .LC9
	call8	vTaskExitCritical
.LVL56:
.L32:
	retw.n
.LFE23:
	.size	esp_deregister_freertos_tick_hook_for_cpu, .-esp_deregister_freertos_tick_hook_for_cpu
	.section	.text.esp_deregister_freertos_tick_hook,"ax",@progbits
	.literal_position
	.literal .LC11, hooks_spinlock
	.align	4
	.global	esp_deregister_freertos_tick_hook
	.type	esp_deregister_freertos_tick_hook, @function
esp_deregister_freertos_tick_hook:
.LFB24:
	.loc 1 147 0
.LVL57:
	entry	sp, 32
.LCFI10:
	.loc 1 148 0
	l32r	a10, .LC11
	call8	vTaskEnterCritical
.LVL58:
.LBB25:
	.loc 1 149 0
	movi.n	a3, 0
	j	.L38
.LVL59:
.L39:
	.loc 1 150 0 discriminator 3
	mov.n	a11, a3
	mov.n	a10, a2
	call8	esp_deregister_freertos_tick_hook_for_cpu
.LVL60:
	.loc 1 149 0 discriminator 3
	addi.n	a3, a3, 1
.LVL61:
.L38:
	.loc 1 149 0 is_stmt 0 discriminator 1
	blti	a3, 2, .L39
.LBE25:
	.loc 1 152 0 is_stmt 1
	l32r	a10, .LC11
	call8	vTaskExitCritical
.LVL62:
	retw.n
.LFE24:
	.size	esp_deregister_freertos_tick_hook, .-esp_deregister_freertos_tick_hook
	.section	.bss.tick_cb,"aw",@nobits
	.align	4
	.type	tick_cb, @object
	.size	tick_cb, 64
tick_cb:
	.zero	64
	.section	.bss.idle_cb,"aw",@nobits
	.align	4
	.type	idle_cb, @object
	.size	idle_cb, 64
idle_cb:
	.zero	64
	.section	.data.hooks_spinlock,"aw",@progbits
	.align	4
	.type	hooks_spinlock, @object
	.size	hooks_spinlock, 8
hooks_spinlock:
	.word	-1287651329
	.word	0
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
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI0-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI1-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI2-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI3-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI4-.LFB18
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
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI6-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI7-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI8-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI9-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI10-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
	.text
.Letext0:
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_freertos_hooks.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x645
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0xc
	.4byte	.LASF45
	.4byte	.LASF46
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x3
	.byte	0x19
	.4byte	0x4c
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x3
	.byte	0x1a
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0x2c
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0x2d
	.4byte	0x53
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x5
	.4byte	0xac
	.uleb128 0x6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x5
	.byte	0x18
	.4byte	0x73
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF16
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x6
	.byte	0x70
	.4byte	0x5e
	.uleb128 0x7
	.byte	0x8
	.byte	0x6
	.byte	0x82
	.4byte	0xea
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x6
	.byte	0x8a
	.4byte	0x7e
	.byte	0
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x6
	.byte	0x8f
	.4byte	0x7e
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x6
	.byte	0x94
	.4byte	0xc9
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x7
	.byte	0x1d
	.4byte	0x100
	.uleb128 0x9
	.byte	0x4
	.4byte	0x106
	.uleb128 0xa
	.4byte	0xb7
	.4byte	0x111
	.uleb128 0x6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x7
	.byte	0x1e
	.4byte	0x11c
	.uleb128 0x9
	.byte	0x4
	.4byte	0xa5
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x2
	.byte	0xce
	.4byte	0x7e
	.byte	0x3
	.4byte	0x13d
	.uleb128 0xc
	.string	"id"
	.byte	0x2
	.byte	0xcf
	.4byte	0x4c
	.byte	0
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x1
	.byte	0x23
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18e
	.uleb128 0xe
	.string	"n"
	.byte	0x1
	.byte	0x25
	.4byte	0x4c
	.4byte	.LLST0
	.uleb128 0xf
	.4byte	.LASF23
	.byte	0x1
	.byte	0x26
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x10
	.4byte	0x122
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.byte	0x1
	.byte	0x26
	.uleb128 0x11
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.uleb128 0x12
	.4byte	0x132
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF32
	.byte	0x1
	.byte	0x2e
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1fc
	.uleb128 0x14
	.4byte	.LASF24
	.byte	0x1
	.byte	0x30
	.4byte	0xb7
	.4byte	.LLST1
	.uleb128 0xf
	.4byte	.LASF23
	.byte	0x1
	.byte	0x31
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x15
	.4byte	0x122
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.byte	0x1
	.byte	0x31
	.4byte	0x1e4
	.uleb128 0x11
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.uleb128 0x12
	.4byte	0x132
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.uleb128 0xe
	.string	"n"
	.byte	0x1
	.byte	0x32
	.4byte	0x4c
	.4byte	.LLST2
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF49
	.byte	0x1
	.byte	0x40
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x17
	.4byte	.LASF27
	.byte	0x1
	.byte	0x45
	.4byte	0xac
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x29d
	.uleb128 0x18
	.4byte	.LASF25
	.byte	0x1
	.byte	0x45
	.4byte	0xf5
	.4byte	.LLST3
	.uleb128 0x18
	.4byte	.LASF26
	.byte	0x1
	.byte	0x45
	.4byte	0xbe
	.4byte	.LLST4
	.uleb128 0x19
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.4byte	0x272
	.uleb128 0xe
	.string	"n"
	.byte	0x1
	.byte	0x4b
	.4byte	0x4c
	.4byte	.LLST5
	.uleb128 0x1a
	.4byte	.LVL13
	.4byte	0x632
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	hooks_spinlock
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL10
	.4byte	0x63d
	.4byte	0x289
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	hooks_spinlock
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL17
	.4byte	0x632
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	hooks_spinlock
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF28
	.byte	0x1
	.byte	0x56
	.4byte	0xac
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2fd
	.uleb128 0x18
	.4byte	.LASF25
	.byte	0x1
	.byte	0x56
	.4byte	0xf5
	.4byte	.LLST6
	.uleb128 0x15
	.4byte	0x122
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.byte	0x1
	.byte	0x58
	.4byte	0x2ec
	.uleb128 0x11
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.uleb128 0x1d
	.4byte	0x132
	.4byte	.LLST7
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL23
	.4byte	0x20d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF29
	.byte	0x1
	.byte	0x5b
	.4byte	0xac
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x38d
	.uleb128 0x18
	.4byte	.LASF30
	.byte	0x1
	.byte	0x5b
	.4byte	0x111
	.4byte	.LLST8
	.uleb128 0x18
	.4byte	.LASF26
	.byte	0x1
	.byte	0x5b
	.4byte	0xbe
	.4byte	.LLST9
	.uleb128 0x19
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.4byte	0x362
	.uleb128 0xe
	.string	"n"
	.byte	0x1
	.byte	0x61
	.4byte	0x4c
	.4byte	.LLST10
	.uleb128 0x1a
	.4byte	.LVL29
	.4byte	0x632
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	hooks_spinlock
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL26
	.4byte	0x63d
	.4byte	0x379
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	hooks_spinlock
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL33
	.4byte	0x632
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	hooks_spinlock
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF31
	.byte	0x1
	.byte	0x6c
	.4byte	0xac
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3ed
	.uleb128 0x18
	.4byte	.LASF30
	.byte	0x1
	.byte	0x6c
	.4byte	0x111
	.4byte	.LLST11
	.uleb128 0x15
	.4byte	0x122
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.byte	0x1
	.byte	0x6e
	.4byte	0x3dc
	.uleb128 0x11
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.uleb128 0x1d
	.4byte	0x132
	.4byte	.LLST12
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL39
	.4byte	0x2fd
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF33
	.byte	0x1
	.byte	0x71
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x462
	.uleb128 0x1f
	.4byte	.LASF34
	.byte	0x1
	.byte	0x71
	.4byte	0xf5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.4byte	.LASF26
	.byte	0x1
	.byte	0x71
	.4byte	0xbe
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.4byte	0x437
	.uleb128 0xe
	.string	"n"
	.byte	0x1
	.byte	0x77
	.4byte	0x4c
	.4byte	.LLST13
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL42
	.4byte	0x63d
	.4byte	0x44e
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	hooks_spinlock
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL45
	.4byte	0x632
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	hooks_spinlock
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF35
	.byte	0x1
	.byte	0x7d
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4e0
	.uleb128 0x1f
	.4byte	.LASF34
	.byte	0x1
	.byte	0x7d
	.4byte	0xf5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x19
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.4byte	0x4b5
	.uleb128 0xe
	.string	"m"
	.byte	0x1
	.byte	0x80
	.4byte	0x4c
	.4byte	.LLST14
	.uleb128 0x1a
	.4byte	.LVL49
	.4byte	0x3ed
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL47
	.4byte	0x63d
	.4byte	0x4cc
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	hooks_spinlock
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL51
	.4byte	0x632
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	hooks_spinlock
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF36
	.byte	0x1
	.byte	0x86
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x555
	.uleb128 0x1f
	.4byte	.LASF37
	.byte	0x1
	.byte	0x86
	.4byte	0x111
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.4byte	.LASF26
	.byte	0x1
	.byte	0x86
	.4byte	0xbe
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.4byte	0x52a
	.uleb128 0xe
	.string	"n"
	.byte	0x1
	.byte	0x8c
	.4byte	0x4c
	.4byte	.LLST15
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL53
	.4byte	0x63d
	.4byte	0x541
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	hooks_spinlock
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL56
	.4byte	0x632
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	hooks_spinlock
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF38
	.byte	0x1
	.byte	0x92
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5d3
	.uleb128 0x1f
	.4byte	.LASF37
	.byte	0x1
	.byte	0x92
	.4byte	0x111
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x19
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.4byte	0x5a8
	.uleb128 0xe
	.string	"m"
	.byte	0x1
	.byte	0x95
	.4byte	0x4c
	.4byte	.LLST16
	.uleb128 0x1a
	.4byte	.LVL60
	.4byte	0x4e0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL58
	.4byte	0x63d
	.4byte	0x5bf
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	hooks_spinlock
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL62
	.4byte	0x632
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	hooks_spinlock
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF39
	.byte	0x1
	.byte	0x1f
	.4byte	0xea
	.uleb128 0x5
	.byte	0x3
	.4byte	hooks_spinlock
	.uleb128 0x20
	.4byte	0xf5
	.4byte	0x5fa
	.uleb128 0x21
	.4byte	0x90
	.byte	0x1
	.uleb128 0x21
	.4byte	0x90
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.4byte	.LASF40
	.byte	0x1
	.byte	0x20
	.4byte	0x5e4
	.uleb128 0x5
	.byte	0x3
	.4byte	idle_cb
	.uleb128 0x20
	.4byte	0x111
	.4byte	0x621
	.uleb128 0x21
	.4byte	0x90
	.byte	0x1
	.uleb128 0x21
	.4byte	0x90
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.4byte	.LASF41
	.byte	0x1
	.byte	0x21
	.4byte	0x60b
	.uleb128 0x5
	.byte	0x3
	.4byte	tick_cb
	.uleb128 0x22
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x6
	.byte	0xd9
	.uleb128 0x22
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x6
	.byte	0xda
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
	.uleb128 0xe
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
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.4byte	.LVL1
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL9
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL15
	.4byte	.LVL17-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL21
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL22
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL25
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL31
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
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL25
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL29-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL31
	.4byte	.LVL33-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL37
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL38
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL43
	.4byte	.LVL45-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL54
	.4byte	.LVL56-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x6c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
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
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
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
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF24:
	.string	"can_go_idle"
.LASF37:
	.string	"old_tick_cb"
.LASF25:
	.string	"new_idle_cb"
.LASF33:
	.string	"esp_deregister_freertos_idle_hook_for_cpu"
.LASF34:
	.string	"old_idle_cb"
.LASF42:
	.string	"vTaskExitCritical"
.LASF20:
	.string	"portMUX_TYPE"
.LASF48:
	.string	"esp_vApplicationTickHook"
.LASF4:
	.string	"__int32_t"
.LASF49:
	.string	"esp_vApplicationWaitiHook"
.LASF22:
	.string	"esp_freertos_tick_cb_t"
.LASF32:
	.string	"esp_vApplicationIdleHook"
.LASF28:
	.string	"esp_register_freertos_idle_hook"
.LASF44:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF46:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\esp32"
.LASF38:
	.string	"esp_deregister_freertos_tick_hook"
.LASF1:
	.string	"unsigned char"
.LASF13:
	.string	"long unsigned int"
.LASF36:
	.string	"esp_deregister_freertos_tick_hook_for_cpu"
.LASF3:
	.string	"short unsigned int"
.LASF41:
	.string	"tick_cb"
.LASF29:
	.string	"esp_register_freertos_tick_hook_for_cpu"
.LASF15:
	.string	"esp_err_t"
.LASF5:
	.string	"__uint32_t"
.LASF43:
	.string	"vTaskEnterCritical"
.LASF21:
	.string	"esp_freertos_idle_cb_t"
.LASF18:
	.string	"owner"
.LASF26:
	.string	"cpuid"
.LASF6:
	.string	"unsigned int"
.LASF31:
	.string	"esp_register_freertos_tick_hook"
.LASF14:
	.string	"char"
.LASF45:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/esp32/freertos_hooks.c"
.LASF39:
	.string	"hooks_spinlock"
.LASF17:
	.string	"UBaseType_t"
.LASF30:
	.string	"new_tick_cb"
.LASF9:
	.string	"int32_t"
.LASF12:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF27:
	.string	"esp_register_freertos_idle_hook_for_cpu"
.LASF47:
	.string	"xPortGetCoreID"
.LASF40:
	.string	"idle_cb"
.LASF19:
	.string	"count"
.LASF2:
	.string	"short int"
.LASF10:
	.string	"uint32_t"
.LASF11:
	.string	"long int"
.LASF35:
	.string	"esp_deregister_freertos_idle_hook"
.LASF23:
	.string	"core"
.LASF0:
	.string	"signed char"
.LASF16:
	.string	"_Bool"
.LASF8:
	.string	"long long unsigned int"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
