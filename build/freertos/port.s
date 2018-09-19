	.file	"port.c"
	.text
.Ltext0:
	.section	.text.pxPortInitialiseStack,"ax",@progbits
	.literal_position
	.literal .LC0, _thread_local_end
	.literal .LC1, _thread_local_start
	.literal .LC2, _xt_user_exit
	.literal .LC3, 327728
	.literal .LC4, _rodata_start
	.align	4
	.global	pxPortInitialiseStack
	.type	pxPortInitialiseStack, @function
pxPortInitialiseStack:
.LFB20:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/port.c"
	.loc 1 144 0
.LVL0:
	entry	sp, 32
.LCFI0:
	mov.n	a5, a2
.LVL1:
	.loc 1 154 0
	l32r	a12, .LC1
	l32r	a2, .LC0
.LVL2:
	sub	a12, a2, a12
.LVL3:
	.loc 1 156 0
	addi.n	a12, a12, 15
.LVL4:
	movi.n	a7, -0x10
	and	a12, a12, a7
.LVL5:
	.loc 1 167 0
	addi.n	a2, a5, 1
	sub	a2, a2, a12
	movi	a6, -0x120
	add.n	a2, a2, a6
	and	a2, a2, a7
.LVL6:
	.loc 1 170 0
	mov.n	a8, a2
	j	.L2
.LVL7:
.L3:
	.loc 1 171 0 discriminator 3
	movi.n	a9, 0
	s8i	a9, a8, 0
	.loc 1 170 0 discriminator 3
	addi.n	a8, a8, 1
.LVL8:
.L2:
	.loc 1 170 0 is_stmt 0 discriminator 1
	bgeu	a5, a8, .L3
.LVL9:
	.loc 1 176 0 is_stmt 1
	s32i.n	a3, a2, 4
	.loc 1 177 0
	movi.n	a6, 0
	s32i.n	a6, a2, 12
	.loc 1 178 0
	movi	a3, 0xc0
.LVL10:
	add.n	a3, a2, a3
	s32i.n	a3, a2, 16
	.loc 1 179 0
	l32r	a3, .LC2
	s32i.n	a3, a2, 0
	.loc 1 188 0
	s32i.n	a4, a2, 36
	.loc 1 189 0
	l32r	a3, .LC3
	s32i.n	a3, a2, 8
	.loc 1 198 0
	sub	a3, a5, a12
	addi	a3, a3, -96
	movi.n	a4, -0x10
.LVL11:
	and	a3, a3, a4
.LVL12:
	.loc 1 199 0
	l32r	a7, .LC1
	mov.n	a11, a7
	mov.n	a10, a3
	call8	memcpy
.LVL13:
	.loc 1 203 0
	sub	a3, a3, a7
.LVL14:
	l32r	a7, .LC4
.LVL15:
	add.n	a7, a7, a4
	add.n	a3, a7, a3
	s32i	a3, a2, 112
	.loc 1 210 0
	addi	a5, a5, -96
.LVL16:
	and	a5, a5, a4
.LVL17:
	.loc 1 211 0
	s32i.n	a6, a5, 0
	.loc 1 212 0
	s32i.n	a6, a5, 4
	.loc 1 213 0
	addi.n	a4, a5, 15
.LVL18:
	movi.n	a3, -4
	and	a3, a4, a3
	s32i.n	a3, a5, 8
	.loc 1 217 0
	retw.n
.LFE20:
	.size	pxPortInitialiseStack, .-pxPortInitialiseStack
	.section	.text.vPortEndScheduler,"ax",@progbits
	.align	4
	.global	vPortEndScheduler
	.type	vPortEndScheduler, @function
vPortEndScheduler:
.LFB21:
	.loc 1 222 0
	entry	sp, 32
.LCFI1:
	retw.n
.LFE21:
	.size	vPortEndScheduler, .-vPortEndScheduler
	.section	.text.xPortStartScheduler,"ax",@progbits
	.literal_position
	.literal .LC5, port_xSchedulerRunning
	.align	4
	.global	xPortStartScheduler
	.type	xPortStartScheduler, @function
xPortStartScheduler:
.LFB22:
	.loc 1 230 0
	.loc 1 230 0
	entry	sp, 32
.LCFI2:
	.loc 1 235 0
	call8	_xt_coproc_init
.LVL19:
	.loc 1 239 0
	call8	_xt_tick_divisor_init
.LVL20:
	.loc 1 242 0
	call8	_frxt_tick_timer_init
.LVL21:
.LBB49:
.LBB50:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portable.h"
	.loc 2 208 0
#APP
# 208 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
#NO_APP
.LBE50:
.LBE49:
	.loc 1 244 0
	l32r	a2, .LC5
	addx4	a8, a8, a2
	movi.n	a2, 1
	s32i.n	a2, a8, 0
	.loc 1 247 0
#APP
# 247 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/port.c" 1
	call0    _frxt_dispatch

# 0 "" 2
	.loc 1 251 0
#NO_APP
	retw.n
.LFE22:
	.size	xPortStartScheduler, .-xPortStartScheduler
	.section	.text.xPortSysTickHandler,"ax",@progbits
	.align	4
	.global	xPortSysTickHandler
	.type	xPortSysTickHandler, @function
xPortSysTickHandler:
.LFB23:
	.loc 1 255 0
	entry	sp, 32
.LCFI3:
	.loc 1 260 0
	call8	xTaskIncrementTick
.LVL22:
	mov.n	a2, a10
.LVL23:
	.loc 1 261 0
	beqz.n	a10, .L7
	.loc 1 263 0
	call8	_frxt_setup_switch
.LVL24:
.L7:
	.loc 1 268 0
	retw.n
.LFE23:
	.size	xPortSysTickHandler, .-xPortSysTickHandler
	.section	.text.vPortYieldOtherCore,"ax",@progbits
	.align	4
	.global	vPortYieldOtherCore
	.type	vPortYieldOtherCore, @function
vPortYieldOtherCore:
.LFB24:
	.loc 1 271 0
.LVL25:
	entry	sp, 32
.LCFI4:
	.loc 1 272 0
	mov.n	a10, a2
	call8	esp_crosscore_int_send_yield
.LVL26:
	retw.n
.LFE24:
	.size	vPortYieldOtherCore, .-vPortYieldOtherCore
	.section	.text.vPortStoreTaskMPUSettings,"ax",@progbits
	.align	4
	.global	vPortStoreTaskMPUSettings
	.type	vPortStoreTaskMPUSettings, @function
vPortStoreTaskMPUSettings:
.LFB25:
	.loc 1 282 0
.LVL27:
	entry	sp, 32
.LCFI5:
	.loc 1 284 0
	addi.n	a5, a5, -1
.LVL28:
	add.n	a4, a4, a5
.LVL29:
	addi	a5, a4, -96
.LVL30:
	movi.n	a4, -0x10
	and	a5, a5, a4
	s32i.n	a5, a2, 0
	retw.n
.LFE25:
	.size	vPortStoreTaskMPUSettings, .-vPortStoreTaskMPUSettings
	.section	.text.vPortReleaseTaskMPUSettings,"ax",@progbits
	.align	4
	.global	vPortReleaseTaskMPUSettings
	.type	vPortReleaseTaskMPUSettings, @function
vPortReleaseTaskMPUSettings:
.LFB26:
	.loc 1 294 0
.LVL31:
	entry	sp, 32
.LCFI6:
	.loc 1 296 0
	l32i.n	a10, a2, 0
	call8	_xt_coproc_release
.LVL32:
	retw.n
.LFE26:
	.size	vPortReleaseTaskMPUSettings, .-vPortReleaseTaskMPUSettings
	.section	.text.xPortInIsrContext,"ax",@progbits
	.literal_position
	.literal .LC6, port_interruptNesting
	.align	4
	.global	xPortInIsrContext
	.type	xPortInIsrContext, @function
xPortInIsrContext:
.LFB27:
	.loc 1 306 0
	entry	sp, 32
.LCFI7:
.LBB51:
.LBB52:
.LBB53:
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h"
	.loc 3 249 0
#APP
# 249 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h" 1
	rsil	a10, 3

# 0 "" 2
.LVL33:
#NO_APP
.LBE53:
.LBE52:
.LBE51:
.LBB54:
.LBB55:
	.loc 2 208 0
#APP
# 208 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portable.h" 1
	rsr.prid a2
 extui a2,a2,13,1
# 0 "" 2
#NO_APP
.LBE55:
.LBE54:
	.loc 1 310 0
	l32r	a8, .LC6
	addx4	a2, a2, a8
	l32i.n	a8, a2, 0
	movi.n	a2, 0
	movi.n	a9, 1
	movnez	a2, a9, a8
	extui	a2, a2, 0, 8
.LVL34:
	.loc 1 311 0
	call8	_xtos_set_intlevel
.LVL35:
	.loc 1 313 0
	retw.n
.LFE27:
	.size	xPortInIsrContext, .-xPortInIsrContext
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC7, port_interruptNesting
	.align	4
	.global	xPortInterruptedFromISRContext
	.type	xPortInterruptedFromISRContext, @function
xPortInterruptedFromISRContext:
.LFB28:
	.loc 1 320 0
	entry	sp, 32
.LCFI8:
.LBB56:
.LBB57:
	.loc 2 208 0
#APP
# 208 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
#NO_APP
.LBE57:
.LBE56:
	.loc 1 321 0
	l32r	a2, .LC7
	addx4	a8, a8, a2
	l32i.n	a8, a8, 0
	movi.n	a2, 0
	movi.n	a9, 1
	movnez	a2, a9, a8
	.loc 1 322 0
	retw.n
.LFE28:
	.size	xPortInterruptedFromISRContext, .-xPortInterruptedFromISRContext
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC9:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/freertos/port.c"
	.align	4
.LC11:
	.string	"%s:%d (%s)- assert failed!\n"
	.section	.text.vPortAssertIfInISR,"ax",@progbits
	.literal_position
	.literal .LC8, __FUNCTION__$5276
	.literal .LC10, .LC9
	.literal .LC12, .LC11
	.align	4
	.global	vPortAssertIfInISR
	.type	vPortAssertIfInISR, @function
vPortAssertIfInISR:
.LFB29:
	.loc 1 325 0
	entry	sp, 32
.LCFI9:
	.loc 1 326 0
	call8	xPortInIsrContext
.LVL36:
	bnez.n	a10, .L13
	.loc 1 326 0 is_stmt 0 discriminator 1
	l32r	a13, .LC8
	movi	a12, 0x146
	l32r	a11, .LC10
	l32r	a10, .LC12
	call8	ets_printf
.LVL37:
	call8	abort
.LVL38:
.L13:
	retw.n
.LFE29:
	.size	vPortAssertIfInISR, .-vPortAssertIfInISR
	.section	.text.vPortCPUInitializeMutex,"ax",@progbits
	.literal_position
	.literal .LC13, -1287651329
	.align	4
	.global	vPortCPUInitializeMutex
	.type	vPortCPUInitializeMutex, @function
vPortCPUInitializeMutex:
.LFB30:
	.loc 1 332 0 is_stmt 1
.LVL39:
	entry	sp, 32
.LCFI10:
	.loc 1 339 0
	l32r	a8, .LC13
	s32i.n	a8, a2, 0
	.loc 1 340 0
	movi.n	a8, 0
	s32i.n	a8, a2, 4
	retw.n
.LFE30:
	.size	vPortCPUInitializeMutex, .-vPortCPUInitializeMutex
	.section	.rodata.str1.4
	.align	4
.LC16:
	.string	"res == coreID || res == portMUX_FREE_VAL"
	.align	4
.LC19:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/freertos/portmux_impl.inc.h"
	.align	4
.LC22:
	.string	"(res == portMUX_FREE_VAL) == (mux->count == 0)"
	.align	4
.LC24:
	.string	"mux->count < 0xFF"
	.section	.text.vPortCPUAcquireMutex,"ax",@progbits
	.literal_position
	.literal .LC14, 26214
	.literal .LC15, -1287651329
	.literal .LC17, .LC16
	.literal .LC18, __func__$5292
	.literal .LC20, .LC19
	.literal .LC21, 1287651329
	.literal .LC23, .LC22
	.literal .LC25, .LC24
	.align	4
	.global	vPortCPUAcquireMutex
	.type	vPortCPUAcquireMutex, @function
vPortCPUAcquireMutex:
.LFB35:
	.loc 1 363 0
.LVL40:
	entry	sp, 32
.LCFI11:
.LBB58:
.LBB59:
.LBB60:
	.loc 3 249 0
#APP
# 249 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h" 1
	rsil	a10, 3

# 0 "" 2
.LVL41:
#NO_APP
.LBE60:
.LBE59:
.LBE58:
.LBB61:
.LBB62:
.LBB63:
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/portmux_impl.inc.h"
	.loc 4 72 0
#APP
# 72 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/portmux_impl.inc.h" 1
	rsr a9, PRID
# 0 "" 2
.LVL42:
	.loc 4 76 0
#NO_APP
	l32r	a12, .LC14
	xor	a12, a9, a12
.LVL43:
.L17:
.LBB64:
.LBB65:
	.loc 3 282 0
	mov.n	a8, a9
	l32r	a11, .LC15
#APP
# 282 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h" 1
	WSR 	    a11,SCOMPARE1 
S32C1I     a8, a2, 0	 

# 0 "" 2
.LVL44:
#NO_APP
.LBE65:
.LBE64:
	.loc 4 88 0
	beq	a12, a8, .L17
	.loc 4 105 0
	beq	a9, a8, .L18
	beq	a8, a11, .L18
	l32r	a13, .LC17
	l32r	a12, .LC18
.LVL45:
	movi	a11, 0x69
	l32r	a10, .LC20
.LVL46:
	call8	__assert_func
.LVL47:
.L18:
	.loc 4 106 0
	l32r	a9, .LC21
.LVL48:
	add.n	a8, a8, a9
.LVL49:
	movi.n	a9, 1
	movi.n	a12, 0
.LVL50:
	mov.n	a3, a12
	movnez	a3, a9, a8
	extui	a8, a3, 0, 8
.LVL51:
	l32i.n	a11, a2, 4
	movnez	a9, a12, a11
	extui	a9, a9, 0, 8
	bne	a8, a9, .L19
	l32r	a13, .LC23
	l32r	a12, .LC18
	movi	a11, 0x6a
	l32r	a10, .LC20
.LVL52:
	call8	__assert_func
.LVL53:
.L19:
	.loc 4 107 0
	movi	a8, 0xfe
	bgeu	a8, a11, .L20
	l32r	a13, .LC25
	l32r	a12, .LC18
	movi	a11, 0x6b
	l32r	a10, .LC20
.LVL54:
	call8	__assert_func
.LVL55:
.L20:
	.loc 4 110 0
	addi.n	a11, a11, 1
	s32i.n	a11, a2, 4
.LBE63:
.LBE62:
.LBE61:
	.loc 1 366 0
	call8	_xtos_set_intlevel
.LVL56:
	retw.n
.LFE35:
	.size	vPortCPUAcquireMutex, .-vPortCPUAcquireMutex
	.section	.text.vPortCPUAcquireMutexTimeout,"ax",@progbits
	.literal_position
	.literal .LC26, 26214
	.literal .LC27, -1287651329
	.literal .LC28, .LC16
	.literal .LC29, __func__$5292
	.literal .LC30, .LC19
	.literal .LC31, 1287651329
	.literal .LC32, .LC22
	.literal .LC33, .LC24
	.align	4
	.global	vPortCPUAcquireMutexTimeout
	.type	vPortCPUAcquireMutexTimeout, @function
vPortCPUAcquireMutexTimeout:
.LFB36:
	.loc 1 369 0
.LVL57:
	entry	sp, 32
.LCFI12:
.LBB66:
.LBB67:
.LBB68:
	.loc 3 249 0
#APP
# 249 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h" 1
	rsil	a10, 3

# 0 "" 2
.LVL58:
#NO_APP
.LBE68:
.LBE67:
.LBE66:
.LBB69:
.LBB70:
.LBB71:
	.loc 4 58 0
	bltz	a3, .L22
	.loc 4 59 0
#APP
# 59 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/portmux_impl.inc.h" 1
	rsr a14, CCOUNT
# 0 "" 2
.LVL59:
#NO_APP
.L22:
	.loc 4 72 0
#APP
# 72 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/portmux_impl.inc.h" 1
	rsr a9, PRID
# 0 "" 2
.LVL60:
	.loc 4 76 0
#NO_APP
	l32r	a12, .LC26
	xor	a12, a9, a12
.LVL61:
.L24:
.LBB72:
.LBB73:
	.loc 3 282 0
	mov.n	a8, a9
	l32r	a11, .LC27
#APP
# 282 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h" 1
	WSR 	    a11,SCOMPARE1 
S32C1I     a8, a2, 0	 

# 0 "" 2
.LVL62:
#NO_APP
.LBE73:
.LBE72:
	.loc 4 88 0
	bne	a12, a8, .L23
	.loc 4 92 0
	bltz	a3, .L24
.LBB74:
	.loc 4 94 0
#APP
# 94 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/portmux_impl.inc.h" 1
	rsr a8, CCOUNT
# 0 "" 2
.LVL63:
	.loc 4 95 0
#NO_APP
	sub	a8, a8, a14
.LVL64:
	bgeu	a3, a8, .L24
	j	.L30
.LVL65:
.L23:
.LBE74:
	.loc 4 105 0
	beq	a9, a8, .L27
	l32r	a3, .LC27
.LVL66:
	beq	a8, a3, .L27
	l32r	a13, .LC28
	l32r	a12, .LC29
.LVL67:
	movi	a11, 0x69
	l32r	a10, .LC30
.LVL68:
	call8	__assert_func
.LVL69:
.L27:
	.loc 4 106 0
	l32r	a3, .LC31
	add.n	a3, a8, a3
	movi.n	a8, 1
.LVL70:
	movi.n	a11, 0
	mov.n	a4, a11
	movnez	a4, a8, a3
	extui	a3, a4, 0, 8
.LVL71:
	l32i.n	a9, a2, 4
.LVL72:
	movnez	a8, a11, a9
	extui	a8, a8, 0, 8
	bne	a3, a8, .L28
	l32r	a13, .LC32
	l32r	a12, .LC29
.LVL73:
	movi	a11, 0x6a
	l32r	a10, .LC30
.LVL74:
	call8	__assert_func
.LVL75:
.L28:
	.loc 4 107 0
	movi	a3, 0xfe
	bgeu	a3, a9, .L29
	l32r	a13, .LC33
	l32r	a12, .LC29
.LVL76:
	movi	a11, 0x6b
	l32r	a10, .LC30
.LVL77:
	call8	__assert_func
.LVL78:
.L29:
	.loc 4 110 0
	addi.n	a9, a9, 1
	s32i.n	a9, a2, 4
	.loc 4 123 0
	movi.n	a2, 1
.LVL79:
	j	.L25
.LVL80:
.L30:
.LBB75:
	.loc 4 100 0
	movi.n	a2, 0
.LVL81:
.L25:
.LBE75:
.LBE71:
.LBE70:
.LBE69:
	.loc 1 372 0
	call8	_xtos_set_intlevel
.LVL82:
	.loc 1 374 0
	retw.n
.LFE36:
	.size	vPortCPUAcquireMutexTimeout, .-vPortCPUAcquireMutexTimeout
	.section	.rodata.str1.4
	.align	4
.LC34:
	.string	"coreID == mux->owner"
	.align	4
.LC39:
	.string	"mux->count < 0x100"
	.section	.text.vPortCPUReleaseMutex,"ax",@progbits
	.literal_position
	.literal .LC35, .LC34
	.literal .LC36, __func__$5297
	.literal .LC37, .LC19
	.literal .LC38, -1287651329
	.literal .LC40, .LC39
	.align	4
	.global	vPortCPUReleaseMutex
	.type	vPortCPUReleaseMutex, @function
vPortCPUReleaseMutex:
.LFB37:
	.loc 1 390 0
.LVL83:
	entry	sp, 32
.LCFI13:
.LBB83:
.LBB84:
.LBB85:
	.loc 3 249 0
#APP
# 249 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h" 1
	rsil	a10, 3

# 0 "" 2
.LVL84:
#NO_APP
.LBE85:
.LBE84:
.LBE83:
.LBB86:
.LBB87:
.LBB88:
	.loc 4 147 0
#APP
# 147 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/portmux_impl.inc.h" 1
	rsr a8, PRID
# 0 "" 2
	.loc 4 157 0
#NO_APP
	l32i.n	a9, a2, 0
	beq	a9, a8, .L32
	l32r	a13, .LC35
	l32r	a12, .LC36
	movi	a11, 0x9d
	l32r	a10, .LC37
.LVL85:
	call8	__assert_func
.LVL86:
.L32:
	.loc 4 159 0
	l32i.n	a8, a2, 4
	addi.n	a8, a8, -1
	s32i.n	a8, a2, 4
	.loc 4 160 0
	bnez.n	a8, .L33
	.loc 4 161 0
	l32r	a8, .LC38
	s32i.n	a8, a2, 0
	j	.L34
.L33:
	.loc 4 163 0
	movi	a2, 0xff
.LVL87:
	bgeu	a2, a8, .L34
	l32r	a13, .LC40
	l32r	a12, .LC36
	movi	a11, 0xa3
	l32r	a10, .LC37
.LVL88:
	call8	__assert_func
.LVL89:
.L34:
.LBE88:
.LBE87:
.LBE86:
	.loc 1 393 0
	call8	_xtos_set_intlevel
.LVL90:
	retw.n
.LFE37:
	.size	vPortCPUReleaseMutex, .-vPortCPUReleaseMutex
	.section	.text.vPortSetStackWatchpoint,"ax",@progbits
	.literal_position
	.literal .LC41, -2147483648
	.align	4
	.global	vPortSetStackWatchpoint
	.type	vPortSetStackWatchpoint, @function
vPortSetStackWatchpoint:
.LFB38:
	.loc 1 397 0
.LVL91:
	entry	sp, 32
.LCFI14:
.LVL92:
	.loc 1 405 0
	addi	a11, a2, 31
.LVL93:
	.loc 1 406 0
	l32r	a13, .LC41
	movi.n	a12, 0x20
	movi.n	a8, -0x20
	and	a11, a11, a8
.LVL94:
	movi.n	a10, 1
	call8	esp_set_watchpoint
.LVL95:
	retw.n
.LFE38:
	.size	vPortSetStackWatchpoint, .-vPortSetStackWatchpoint
	.section	.text.xPortGetTickRateHz,"ax",@progbits
	.align	4
	.global	xPortGetTickRateHz
	.type	xPortGetTickRateHz, @function
xPortGetTickRateHz:
.LFB39:
	.loc 1 437 0
	entry	sp, 32
.LCFI15:
	.loc 1 439 0
	movi	a2, 0x64
	retw.n
.LFE39:
	.size	xPortGetTickRateHz, .-xPortGetTickRateHz
	.section	.rodata.__func__$5297,"a",@progbits
	.align	4
	.type	__func__$5297, @object
	.size	__func__$5297, 41
__func__$5297:
	.string	"vPortCPUReleaseMutexIntsDisabledInternal"
	.section	.rodata.__func__$5292,"a",@progbits
	.align	4
	.type	__func__$5292, @object
	.size	__func__$5292, 41
__func__$5292:
	.string	"vPortCPUAcquireMutexIntsDisabledInternal"
	.section	.rodata.__FUNCTION__$5276,"a",@progbits
	.align	4
	.type	__FUNCTION__$5276, @object
	.size	__FUNCTION__$5276, 19
__FUNCTION__$5276:
	.string	"vPortAssertIfInISR"
	.global	port_interruptNesting
	.section	.bss.port_interruptNesting,"aw",@nobits
	.align	4
	.type	port_interruptNesting, @object
	.size	port_interruptNesting, 8
port_interruptNesting:
	.zero	8
	.global	port_xSchedulerRunning
	.section	.bss.port_xSchedulerRunning,"aw",@nobits
	.align	4
	.type	port_xSchedulerRunning, @object
	.size	port_xSchedulerRunning, 8
port_xSchedulerRunning:
	.zero	8
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
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI0-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI1-.LFB21
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
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI3-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI4-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI5-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI6-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI7-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI8-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI9-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI10-.LFB30
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
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI12-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI13-.LFB37
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI14-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI15-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
	.text
.Letext0:
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/xtensa_context.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/projdefs.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/portmux_impl.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/xtensa_timer.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_crosscore_int.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/xtruntime.h"
	.file 14 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
	.file 15 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.file 16 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.file 17 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_panic.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xe4b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF103
	.byte	0xc
	.4byte	.LASF104
	.4byte	.LASF105
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x5
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x5
	.byte	0x1a
	.4byte	0x25
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x6
	.byte	0x70
	.byte	0x6
	.byte	0x67
	.4byte	0x1de
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x6
	.byte	0x68
	.4byte	0x73
	.byte	0
	.uleb128 0x8
	.string	"pc"
	.byte	0x6
	.byte	0x69
	.4byte	0x73
	.byte	0x4
	.uleb128 0x8
	.string	"ps"
	.byte	0x6
	.byte	0x6a
	.4byte	0x73
	.byte	0x8
	.uleb128 0x8
	.string	"a0"
	.byte	0x6
	.byte	0x6b
	.4byte	0x73
	.byte	0xc
	.uleb128 0x8
	.string	"a1"
	.byte	0x6
	.byte	0x6c
	.4byte	0x73
	.byte	0x10
	.uleb128 0x8
	.string	"a2"
	.byte	0x6
	.byte	0x6d
	.4byte	0x73
	.byte	0x14
	.uleb128 0x8
	.string	"a3"
	.byte	0x6
	.byte	0x6e
	.4byte	0x73
	.byte	0x18
	.uleb128 0x8
	.string	"a4"
	.byte	0x6
	.byte	0x6f
	.4byte	0x73
	.byte	0x1c
	.uleb128 0x8
	.string	"a5"
	.byte	0x6
	.byte	0x70
	.4byte	0x73
	.byte	0x20
	.uleb128 0x8
	.string	"a6"
	.byte	0x6
	.byte	0x71
	.4byte	0x73
	.byte	0x24
	.uleb128 0x8
	.string	"a7"
	.byte	0x6
	.byte	0x72
	.4byte	0x73
	.byte	0x28
	.uleb128 0x8
	.string	"a8"
	.byte	0x6
	.byte	0x73
	.4byte	0x73
	.byte	0x2c
	.uleb128 0x8
	.string	"a9"
	.byte	0x6
	.byte	0x74
	.4byte	0x73
	.byte	0x30
	.uleb128 0x8
	.string	"a10"
	.byte	0x6
	.byte	0x75
	.4byte	0x73
	.byte	0x34
	.uleb128 0x8
	.string	"a11"
	.byte	0x6
	.byte	0x76
	.4byte	0x73
	.byte	0x38
	.uleb128 0x8
	.string	"a12"
	.byte	0x6
	.byte	0x77
	.4byte	0x73
	.byte	0x3c
	.uleb128 0x8
	.string	"a13"
	.byte	0x6
	.byte	0x78
	.4byte	0x73
	.byte	0x40
	.uleb128 0x8
	.string	"a14"
	.byte	0x6
	.byte	0x79
	.4byte	0x73
	.byte	0x44
	.uleb128 0x8
	.string	"a15"
	.byte	0x6
	.byte	0x7a
	.4byte	0x73
	.byte	0x48
	.uleb128 0x8
	.string	"sar"
	.byte	0x6
	.byte	0x7b
	.4byte	0x73
	.byte	0x4c
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x6
	.byte	0x7c
	.4byte	0x73
	.byte	0x50
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x6
	.byte	0x7d
	.4byte	0x73
	.byte	0x54
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x6
	.byte	0x7f
	.4byte	0x73
	.byte	0x58
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x6
	.byte	0x80
	.4byte	0x73
	.byte	0x5c
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x6
	.byte	0x81
	.4byte	0x73
	.byte	0x60
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x6
	.byte	0x85
	.4byte	0x73
	.byte	0x64
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x6
	.byte	0x86
	.4byte	0x73
	.byte	0x68
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x6
	.byte	0x87
	.4byte	0x73
	.byte	0x6c
	.byte	0
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x6
	.byte	0x91
	.4byte	0x91
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x7
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x7
	.byte	0x2d
	.4byte	0x5a
	.uleb128 0x9
	.byte	0x4
	.4byte	0x205
	.uleb128 0xa
	.4byte	0x210
	.uleb128 0xb
	.4byte	0x81
	.byte	0
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x8
	.byte	0x4d
	.4byte	0x1ff
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF26
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x3
	.byte	0x6e
	.4byte	0x1e9
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x3
	.byte	0x6f
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x3
	.byte	0x70
	.4byte	0x25
	.uleb128 0x6
	.byte	0x8
	.byte	0x3
	.byte	0x82
	.4byte	0x264
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x3
	.byte	0x8a
	.4byte	0x1f4
	.byte	0
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x3
	.byte	0x8f
	.4byte	0x1f4
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF32
	.byte	0x3
	.byte	0x94
	.4byte	0x243
	.uleb128 0xc
	.byte	0x4
	.byte	0x3
	.2byte	0x153
	.4byte	0x286
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x3
	.2byte	0x155
	.4byte	0x286
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x28c
	.uleb128 0xe
	.4byte	0x222
	.uleb128 0xf
	.4byte	.LASF34
	.byte	0x3
	.2byte	0x164
	.4byte	0x26f
	.uleb128 0x9
	.byte	0x4
	.4byte	0x1de
	.uleb128 0x10
	.4byte	.LASF106
	.byte	0xc
	.byte	0x9
	.byte	0x94
	.4byte	0x2d4
	.uleb128 0x7
	.4byte	.LASF35
	.byte	0x9
	.byte	0x96
	.4byte	0x81
	.byte	0
	.uleb128 0x7
	.4byte	.LASF36
	.byte	0x9
	.byte	0x97
	.4byte	0x1f4
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0x9
	.byte	0x98
	.4byte	0x1f4
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x222
	.uleb128 0x11
	.4byte	.LASF49
	.byte	0x4
	.byte	0x2b
	.4byte	0x21b
	.byte	0x3
	.4byte	0x352
	.uleb128 0x12
	.string	"mux"
	.byte	0x4
	.byte	0x2b
	.4byte	0x352
	.uleb128 0x13
	.4byte	.LASF38
	.byte	0x4
	.byte	0x2b
	.4byte	0x33
	.uleb128 0x14
	.string	"res"
	.byte	0x4
	.byte	0x30
	.4byte	0x1f4
	.uleb128 0x15
	.4byte	.LASF39
	.byte	0x4
	.byte	0x31
	.4byte	0x33
	.uleb128 0x15
	.4byte	.LASF40
	.byte	0x4
	.byte	0x31
	.4byte	0x33
	.uleb128 0x15
	.4byte	.LASF41
	.byte	0x4
	.byte	0x32
	.4byte	0x1f4
	.uleb128 0x15
	.4byte	.LASF42
	.byte	0x4
	.byte	0x33
	.4byte	0x21b
	.uleb128 0x16
	.4byte	.LASF43
	.4byte	0x368
	.4byte	.LASF49
	.uleb128 0x17
	.uleb128 0x15
	.4byte	.LASF44
	.byte	0x4
	.byte	0x5d
	.4byte	0x1f4
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x264
	.uleb128 0x18
	.4byte	0x8a
	.4byte	0x368
	.uleb128 0x19
	.4byte	0x7a
	.byte	0x28
	.byte	0
	.uleb128 0x1a
	.4byte	0x358
	.uleb128 0x1b
	.4byte	.LASF45
	.byte	0x2
	.byte	0xce
	.4byte	0x1f4
	.byte	0x3
	.4byte	0x388
	.uleb128 0x14
	.string	"id"
	.byte	0x2
	.byte	0xcf
	.4byte	0x33
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF46
	.byte	0x3
	.byte	0xf8
	.4byte	0x25
	.byte	0x3
	.4byte	0x3b1
	.uleb128 0x15
	.4byte	.LASF47
	.byte	0x3
	.byte	0xf9
	.4byte	0x25
	.uleb128 0x17
	.uleb128 0x15
	.4byte	.LASF48
	.byte	0x3
	.byte	0xf9
	.4byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF50
	.byte	0xa
	.byte	0x5c
	.4byte	0x21b
	.byte	0x3
	.4byte	0x3d8
	.uleb128 0x12
	.string	"mux"
	.byte	0xa
	.byte	0x5c
	.4byte	0x352
	.uleb128 0x13
	.4byte	.LASF38
	.byte	0xa
	.byte	0x5c
	.4byte	0x33
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF51
	.byte	0x3
	.2byte	0x119
	.byte	0x3
	.4byte	0x40a
	.uleb128 0x1d
	.4byte	.LASF52
	.byte	0x3
	.2byte	0x119
	.4byte	0x40a
	.uleb128 0x1d
	.4byte	.LASF53
	.byte	0x3
	.2byte	0x119
	.4byte	0x1f4
	.uleb128 0x1e
	.string	"set"
	.byte	0x3
	.2byte	0x119
	.4byte	0x415
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x410
	.uleb128 0xe
	.4byte	0x1f4
	.uleb128 0x9
	.byte	0x4
	.4byte	0x1f4
	.uleb128 0x1f
	.4byte	.LASF54
	.byte	0xa
	.byte	0x66
	.byte	0x3
	.4byte	0x433
	.uleb128 0x12
	.string	"mux"
	.byte	0xa
	.byte	0x66
	.4byte	0x352
	.byte	0
	.uleb128 0x20
	.4byte	.LASF66
	.byte	0x1
	.byte	0x8c
	.4byte	0x2d4
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x520
	.uleb128 0x21
	.4byte	.LASF55
	.byte	0x1
	.byte	0x8c
	.4byte	0x2d4
	.4byte	.LLST0
	.uleb128 0x21
	.4byte	.LASF56
	.byte	0x1
	.byte	0x8c
	.4byte	0x210
	.4byte	.LLST1
	.uleb128 0x21
	.4byte	.LASF57
	.byte	0x1
	.byte	0x8c
	.4byte	0x81
	.4byte	.LLST2
	.uleb128 0x21
	.4byte	.LASF58
	.byte	0x1
	.byte	0x8c
	.4byte	0x22d
	.4byte	.LLST3
	.uleb128 0x22
	.string	"sp"
	.byte	0x1
	.byte	0x91
	.4byte	0x2d4
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x23
	.string	"tp"
	.byte	0x1
	.byte	0x91
	.4byte	0x2d4
	.4byte	.LLST4
	.uleb128 0x24
	.4byte	.LASF59
	.byte	0x1
	.byte	0x92
	.4byte	0x29d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x22
	.string	"p"
	.byte	0x1
	.byte	0x94
	.4byte	0x415
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x24
	.4byte	.LASF60
	.byte	0x1
	.byte	0x96
	.4byte	0x415
	.uleb128 0x4
	.byte	0x72
	.sleb128 112
	.byte	0x9f
	.uleb128 0x25
	.4byte	.LASF61
	.byte	0x1
	.byte	0x97
	.4byte	0x81
	.4byte	.LLST5
	.uleb128 0x26
	.4byte	.LASF62
	.byte	0x1
	.byte	0x98
	.4byte	0x33
	.uleb128 0x26
	.4byte	.LASF63
	.byte	0x1
	.byte	0x98
	.4byte	0x33
	.uleb128 0x26
	.4byte	.LASF64
	.byte	0x1
	.byte	0x98
	.4byte	0x33
	.uleb128 0x25
	.4byte	.LASF65
	.byte	0x1
	.byte	0x9a
	.4byte	0x1f4
	.4byte	.LLST6
	.uleb128 0x27
	.4byte	.LVL13
	.4byte	0xdbe
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LASF107
	.byte	0x1
	.byte	0xdd
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x20
	.4byte	.LASF67
	.byte	0x1
	.byte	0xe5
	.4byte	0x22d
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x589
	.uleb128 0x2a
	.4byte	0x36d
	.4byte	.LBB49
	.4byte	.LBE49-.LBB49
	.byte	0x1
	.byte	0xf4
	.4byte	0x56d
	.uleb128 0x2b
	.4byte	.LBB50
	.4byte	.LBE50-.LBB50
	.uleb128 0x2c
	.4byte	0x37d
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL19
	.4byte	0xdc7
	.uleb128 0x2d
	.4byte	.LVL20
	.4byte	0xdd2
	.uleb128 0x2d
	.4byte	.LVL21
	.4byte	0xddd
	.byte	0
	.uleb128 0x20
	.4byte	.LASF68
	.byte	0x1
	.byte	0xfe
	.4byte	0x22d
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5c3
	.uleb128 0x2e
	.string	"ret"
	.byte	0x1
	.2byte	0x100
	.4byte	0x22d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2d
	.4byte	.LVL22
	.4byte	0xde8
	.uleb128 0x2d
	.4byte	.LVL24
	.4byte	0xdf4
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x10f
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5f8
	.uleb128 0x30
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x10f
	.4byte	0x22d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x27
	.4byte	.LVL26
	.4byte	0xe00
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x119
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x64b
	.uleb128 0x30
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x119
	.4byte	0x64b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x30
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x119
	.4byte	0x65c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x31
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x119
	.4byte	0x2d4
	.4byte	.LLST7
	.uleb128 0x31
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x119
	.4byte	0x1f4
	.4byte	.LLST8
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x291
	.uleb128 0x9
	.byte	0x4
	.4byte	0x657
	.uleb128 0x1a
	.4byte	0x2a3
	.uleb128 0x1a
	.4byte	0x651
	.uleb128 0x2f
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x125
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x68f
	.uleb128 0x30
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x125
	.4byte	0x64b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2d
	.4byte	.LVL32
	.4byte	0xe0b
	.byte	0
	.uleb128 0x32
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x131
	.4byte	0x22d
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x72c
	.uleb128 0x33
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x133
	.4byte	0x25
	.uleb128 0x2e
	.string	"ret"
	.byte	0x1
	.2byte	0x134
	.4byte	0x22d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x34
	.4byte	0x388
	.4byte	.LBB51
	.4byte	.LBE51-.LBB51
	.byte	0x1
	.2byte	0x135
	.4byte	0x6fe
	.uleb128 0x2b
	.4byte	.LBB52
	.4byte	.LBE52-.LBB52
	.uleb128 0x35
	.4byte	0x398
	.4byte	.LLST9
	.uleb128 0x2b
	.4byte	.LBB53
	.4byte	.LBE53-.LBB53
	.uleb128 0x35
	.4byte	0x3a4
	.4byte	.LLST9
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	0x36d
	.4byte	.LBB54
	.4byte	.LBE54-.LBB54
	.byte	0x1
	.2byte	0x136
	.4byte	0x722
	.uleb128 0x2b
	.4byte	.LBB55
	.4byte	.LBE55-.LBB55
	.uleb128 0x2c
	.4byte	0x37d
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL35
	.4byte	0xe17
	.byte	0
	.uleb128 0x32
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x13f
	.4byte	0x22d
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x767
	.uleb128 0x36
	.4byte	0x36d
	.4byte	.LBB56
	.4byte	.LBE56-.LBB56
	.byte	0x1
	.2byte	0x141
	.uleb128 0x2b
	.4byte	.LBB57
	.4byte	.LBE57-.LBB57
	.uleb128 0x2c
	.4byte	0x37d
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x144
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7cf
	.uleb128 0x38
	.4byte	.LASF80
	.4byte	0x7df
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5276
	.uleb128 0x2d
	.4byte	.LVL36
	.4byte	0x68f
	.uleb128 0x39
	.4byte	.LVL37
	.4byte	0xe22
	.4byte	0x7c5
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x146
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5276
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL38
	.4byte	0xe2d
	.byte	0
	.uleb128 0x18
	.4byte	0x8a
	.4byte	0x7df
	.uleb128 0x19
	.4byte	0x7a
	.byte	0x12
	.byte	0
	.uleb128 0x1a
	.4byte	0x7cf
	.uleb128 0x2f
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x14c
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x809
	.uleb128 0x3a
	.string	"mux"
	.byte	0x1
	.2byte	0x14c
	.4byte	0x352
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x16b
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9b2
	.uleb128 0x3a
	.string	"mux"
	.byte	0x1
	.2byte	0x16b
	.4byte	0x352
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x33
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x16c
	.4byte	0x25
	.uleb128 0x34
	.4byte	0x388
	.4byte	.LBB58
	.4byte	.LBE58-.LBB58
	.byte	0x1
	.2byte	0x16c
	.4byte	0x874
	.uleb128 0x2b
	.4byte	.LBB59
	.4byte	.LBE59-.LBB59
	.uleb128 0x35
	.4byte	0x398
	.4byte	.LLST11
	.uleb128 0x2b
	.4byte	.LBB60
	.4byte	.LBE60-.LBB60
	.uleb128 0x35
	.4byte	0x3a4
	.4byte	.LLST11
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	0x3b1
	.4byte	.LBB61
	.4byte	.LBE61-.LBB61
	.byte	0x1
	.2byte	0x16d
	.4byte	0x9a8
	.uleb128 0x3b
	.4byte	0x3cc
	.sleb128 -1
	.uleb128 0x3c
	.4byte	0x3c1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3d
	.4byte	0x2da
	.4byte	.LBB62
	.4byte	.LBE62-.LBB62
	.byte	0xa
	.byte	0x62
	.uleb128 0x3b
	.4byte	0x2f5
	.sleb128 -1
	.uleb128 0x3c
	.4byte	0x2ea
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2b
	.4byte	.LBB63
	.4byte	.LBE63-.LBB63
	.uleb128 0x35
	.4byte	0x300
	.4byte	.LLST13
	.uleb128 0x35
	.4byte	0x30b
	.4byte	.LLST14
	.uleb128 0x35
	.4byte	0x316
	.4byte	.LLST15
	.uleb128 0x2c
	.4byte	0x321
	.uleb128 0x3e
	.4byte	0x32c
	.byte	0
	.uleb128 0x3f
	.4byte	0x337
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5292
	.uleb128 0x2a
	.4byte	0x3d8
	.4byte	.LBB64
	.4byte	.LBE64-.LBB64
	.byte	0x4
	.byte	0x56
	.4byte	0x91c
	.uleb128 0x3c
	.4byte	0x3fd
	.uleb128 0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+2234
	.sleb128 0
	.uleb128 0x3b
	.4byte	0x3f1
	.sleb128 -1287651329
	.uleb128 0x3c
	.4byte	0x3e5
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x39
	.4byte	.LVL47
	.4byte	0xe38
	.4byte	0x94b
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x69
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5292
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0
	.uleb128 0x39
	.4byte	.LVL53
	.4byte	0xe38
	.4byte	0x97a
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x6a
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5292
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.byte	0
	.uleb128 0x27
	.4byte	.LVL55
	.4byte	0xe38
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x6b
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5292
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL56
	.4byte	0xe17
	.byte	0
	.uleb128 0x40
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x171
	.4byte	0x21b
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xba3
	.uleb128 0x41
	.string	"mux"
	.byte	0x1
	.2byte	0x171
	.4byte	0x352
	.4byte	.LLST16
	.uleb128 0x31
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x171
	.4byte	0x33
	.4byte	.LLST17
	.uleb128 0x33
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x172
	.4byte	0x25
	.uleb128 0x33
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x173
	.4byte	0x21b
	.uleb128 0x34
	.4byte	0x388
	.4byte	.LBB66
	.4byte	.LBE66-.LBB66
	.byte	0x1
	.2byte	0x172
	.4byte	0xa3f
	.uleb128 0x2b
	.4byte	.LBB67
	.4byte	.LBE67-.LBB67
	.uleb128 0x35
	.4byte	0x398
	.4byte	.LLST18
	.uleb128 0x2b
	.4byte	.LBB68
	.4byte	.LBE68-.LBB68
	.uleb128 0x35
	.4byte	0x3a4
	.4byte	.LLST18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	0x3b1
	.4byte	.LBB69
	.4byte	.LBE69-.LBB69
	.byte	0x1
	.2byte	0x173
	.4byte	0xb99
	.uleb128 0x42
	.4byte	0x3cc
	.4byte	.LLST20
	.uleb128 0x42
	.4byte	0x3c1
	.4byte	.LLST21
	.uleb128 0x3d
	.4byte	0x2da
	.4byte	.LBB70
	.4byte	.LBE70-.LBB70
	.byte	0xa
	.byte	0x62
	.uleb128 0x42
	.4byte	0x2f5
	.4byte	.LLST22
	.uleb128 0x42
	.4byte	0x2ea
	.4byte	.LLST23
	.uleb128 0x2b
	.4byte	.LBB71
	.4byte	.LBE71-.LBB71
	.uleb128 0x35
	.4byte	0x300
	.4byte	.LLST24
	.uleb128 0x35
	.4byte	0x30b
	.4byte	.LLST25
	.uleb128 0x35
	.4byte	0x316
	.4byte	.LLST26
	.uleb128 0x35
	.4byte	0x321
	.4byte	.LLST27
	.uleb128 0x35
	.4byte	0x32c
	.4byte	.LLST28
	.uleb128 0x3f
	.4byte	0x337
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5292
	.uleb128 0x2a
	.4byte	0x3d8
	.4byte	.LBB72
	.4byte	.LBE72-.LBB72
	.byte	0x4
	.byte	0x56
	.4byte	0xafa
	.uleb128 0x3c
	.4byte	0x3fd
	.uleb128 0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+2703
	.sleb128 0
	.uleb128 0x3b
	.4byte	0x3f1
	.sleb128 -1287651329
	.uleb128 0x42
	.4byte	0x3e5
	.4byte	.LLST29
	.byte	0
	.uleb128 0x43
	.4byte	.Ldebug_ranges0+0
	.4byte	0xb0d
	.uleb128 0x35
	.4byte	0x345
	.4byte	.LLST30
	.byte	0
	.uleb128 0x39
	.4byte	.LVL69
	.4byte	0xe38
	.4byte	0xb3c
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x69
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5292
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0
	.uleb128 0x39
	.4byte	.LVL75
	.4byte	0xe38
	.4byte	0xb6b
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x6a
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5292
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.byte	0
	.uleb128 0x27
	.4byte	.LVL78
	.4byte	0xe38
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x6b
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5292
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL82
	.4byte	0xe17
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF85
	.byte	0x4
	.byte	0x81
	.byte	0x3
	.4byte	0xbd3
	.uleb128 0x12
	.string	"mux"
	.byte	0x4
	.byte	0x81
	.4byte	0x352
	.uleb128 0x15
	.4byte	.LASF39
	.byte	0x4
	.byte	0x86
	.4byte	0x33
	.uleb128 0x16
	.4byte	.LASF43
	.4byte	0xbd3
	.4byte	.LASF85
	.byte	0
	.uleb128 0x1a
	.4byte	0x358
	.uleb128 0x2f
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x186
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcfa
	.uleb128 0x41
	.string	"mux"
	.byte	0x1
	.2byte	0x186
	.4byte	0x352
	.4byte	.LLST31
	.uleb128 0x33
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x187
	.4byte	0x25
	.uleb128 0x34
	.4byte	0x388
	.4byte	.LBB83
	.4byte	.LBE83-.LBB83
	.byte	0x1
	.2byte	0x187
	.4byte	0xc45
	.uleb128 0x2b
	.4byte	.LBB84
	.4byte	.LBE84-.LBB84
	.uleb128 0x35
	.4byte	0x398
	.4byte	.LLST32
	.uleb128 0x2b
	.4byte	.LBB85
	.4byte	.LBE85-.LBB85
	.uleb128 0x35
	.4byte	0x3a4
	.4byte	.LLST32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	0x41b
	.4byte	.LBB86
	.4byte	.LBE86-.LBB86
	.byte	0x1
	.2byte	0x188
	.4byte	0xcf0
	.uleb128 0x42
	.4byte	0x427
	.4byte	.LLST34
	.uleb128 0x3d
	.4byte	0xba3
	.4byte	.LBB87
	.4byte	.LBE87-.LBB87
	.byte	0xa
	.byte	0x6d
	.uleb128 0x42
	.4byte	0xbaf
	.4byte	.LLST35
	.uleb128 0x2b
	.4byte	.LBB88
	.4byte	.LBE88-.LBB88
	.uleb128 0x2c
	.4byte	0xbba
	.uleb128 0x3f
	.4byte	0xbc5
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5297
	.uleb128 0x39
	.4byte	.LVL86
	.4byte	0xe38
	.4byte	0xcc2
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x9d
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5297
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.byte	0
	.uleb128 0x27
	.4byte	.LVL89
	.4byte	0xe38
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xa3
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5297
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC39
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL90
	.4byte	0xe17
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x18d
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd55
	.uleb128 0x30
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x18d
	.4byte	0x81
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x44
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x194
	.4byte	0x33
	.4byte	.LLST36
	.uleb128 0x27
	.4byte	.LVL95
	.4byte	0xe43
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x72
	.sleb128 31
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x4
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x1f
	.byte	0
	.byte	0
	.uleb128 0x45
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x1b5
	.4byte	0x1f4
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x18
	.4byte	0x25
	.4byte	0xd7b
	.uleb128 0x19
	.4byte	0x7a
	.byte	0x1
	.byte	0
	.uleb128 0x46
	.4byte	.LASF89
	.byte	0x1
	.byte	0x80
	.4byte	0xd6b
	.uleb128 0x5
	.byte	0x3
	.4byte	port_xSchedulerRunning
	.uleb128 0x46
	.4byte	.LASF90
	.byte	0x1
	.byte	0x81
	.4byte	0xd6b
	.uleb128 0x5
	.byte	0x3
	.4byte	port_interruptNesting
	.uleb128 0x26
	.4byte	.LASF62
	.byte	0x1
	.byte	0x98
	.4byte	0x33
	.uleb128 0x26
	.4byte	.LASF63
	.byte	0x1
	.byte	0x98
	.4byte	0x33
	.uleb128 0x26
	.4byte	.LASF64
	.byte	0x1
	.byte	0x98
	.4byte	0x33
	.uleb128 0x47
	.4byte	.LASF110
	.4byte	.LASF110
	.uleb128 0x48
	.4byte	.LASF91
	.4byte	.LASF91
	.byte	0x1
	.byte	0x74
	.uleb128 0x48
	.4byte	.LASF92
	.4byte	.LASF92
	.byte	0xb
	.byte	0x9b
	.uleb128 0x48
	.4byte	.LASF93
	.4byte	.LASF93
	.byte	0x1
	.byte	0x71
	.uleb128 0x49
	.4byte	.LASF94
	.4byte	.LASF94
	.byte	0x9
	.2byte	0x83d
	.uleb128 0x49
	.4byte	.LASF95
	.4byte	.LASF95
	.byte	0x3
	.2byte	0x13a
	.uleb128 0x48
	.4byte	.LASF96
	.4byte	.LASF96
	.byte	0xc
	.byte	0x28
	.uleb128 0x49
	.4byte	.LASF97
	.4byte	.LASF97
	.byte	0x3
	.2byte	0x172
	.uleb128 0x48
	.4byte	.LASF98
	.4byte	.LASF98
	.byte	0xd
	.byte	0x99
	.uleb128 0x48
	.4byte	.LASF99
	.4byte	.LASF99
	.byte	0xe
	.byte	0xde
	.uleb128 0x48
	.4byte	.LASF100
	.4byte	.LASF100
	.byte	0xf
	.byte	0x47
	.uleb128 0x48
	.4byte	.LASF101
	.4byte	.LASF101
	.byte	0x10
	.byte	0x29
	.uleb128 0x48
	.4byte	.LASF102
	.4byte	.LASF102
	.byte	0x11
	.byte	0x35
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
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x1c
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x3e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x49
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
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL16
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10
	.4byte	.LVL13-1
	.2byte	0x2
	.byte	0x72
	.sleb128 4
	.4byte	.LVL13-1
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL11
	.4byte	.LVL13-1
	.2byte	0x2
	.byte	0x72
	.sleb128 36
	.4byte	.LVL13-1
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL1
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x3
	.byte	0x7c
	.sleb128 -15
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL29
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL33
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL41
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL47
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL55
	.4byte	.LVL56-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL44
	.4byte	.LVL47-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x7
	.byte	0x78
	.sleb128 -1287651329
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL42
	.4byte	.LVL47-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x7
	.byte	0x7c
	.sleb128 0
	.byte	0xa
	.2byte	0x6666
	.byte	0x27
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL45
	.4byte	.LVL47-1
	.2byte	0x7
	.byte	0x79
	.sleb128 0
	.byte	0xa
	.2byte	0x6666
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL57
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
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL57
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL66
	.4byte	.LVL80
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL81
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL58
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL69
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL78
	.4byte	.LVL82-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL58
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL66
	.4byte	.LVL80
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL81
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL58
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
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL58
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL66
	.4byte	.LVL80
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL81
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL58
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
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL65
	.4byte	.LVL69-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x7
	.byte	0x73
	.sleb128 -1287651329
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL60
	.4byte	.LVL69-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL69
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x7
	.byte	0x7c
	.sleb128 0
	.byte	0xa
	.2byte	0x6666
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x7
	.byte	0x7c
	.sleb128 0
	.byte	0xa
	.2byte	0x6666
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LVL80
	.2byte	0x7
	.byte	0x7c
	.sleb128 0
	.byte	0xa
	.2byte	0x6666
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL81
	.4byte	.LVL82-1
	.2byte	0x7
	.byte	0x7c
	.sleb128 0
	.byte	0xa
	.2byte	0x6666
	.byte	0x27
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL61
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL67
	.4byte	.LVL69-1
	.2byte	0x7
	.byte	0x79
	.sleb128 0
	.byte	0xa
	.2byte	0x6666
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL78
	.4byte	.LVL82-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL59
	.4byte	.LVL69-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL69
	.4byte	.LVL75-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL75
	.4byte	.LVL78-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL78
	.4byte	.LVL82-1
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL58
	.4byte	.LVL66
	.2byte	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x30
	.byte	0x2a
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL80
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x30
	.byte	0x2a
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x30
	.byte	0x2a
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LFE36
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x30
	.byte	0x2a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL61
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
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL83
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL87
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL86
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL89
	.4byte	.LVL90-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL84
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL87
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL84
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL87
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x6
	.byte	0x7b
	.sleb128 0
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL94
	.4byte	.LVL95-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL95-1
	.4byte	.LFE38
	.2byte	0x6
	.byte	0x72
	.sleb128 31
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x94
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB74
	.4byte	.LBE74
	.4byte	.LBB75
	.4byte	.LBE75
	.4byte	0
	.4byte	0
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
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF31:
	.string	"count"
.LASF49:
	.string	"vPortCPUAcquireMutexIntsDisabledInternal"
.LASF5:
	.string	"__uint8_t"
.LASF35:
	.string	"pvBaseAddress"
.LASF74:
	.string	"pxBottomOfStack"
.LASF63:
	.string	"_thread_local_end"
.LASF8:
	.string	"long long unsigned int"
.LASF18:
	.string	"lcount"
.LASF46:
	.string	"portENTER_CRITICAL_NESTED"
.LASF68:
	.string	"xPortSysTickHandler"
.LASF59:
	.string	"frame"
.LASF42:
	.string	"set_timeout"
.LASF51:
	.string	"uxPortCompareSet"
.LASF57:
	.string	"pvParameters"
.LASF79:
	.string	"xPortInterruptedFromISRContext"
.LASF19:
	.string	"tmp0"
.LASF20:
	.string	"tmp1"
.LASF21:
	.string	"tmp2"
.LASF7:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF72:
	.string	"xMPUSettings"
.LASF50:
	.string	"vPortCPUAcquireMutexIntsDisabled"
.LASF89:
	.string	"port_xSchedulerRunning"
.LASF97:
	.string	"_xt_coproc_release"
.LASF99:
	.string	"ets_printf"
.LASF14:
	.string	"exccause"
.LASF47:
	.string	"state"
.LASF9:
	.string	"long int"
.LASF110:
	.string	"memcpy"
.LASF94:
	.string	"xTaskIncrementTick"
.LASF98:
	.string	"_xtos_set_intlevel"
.LASF28:
	.string	"BaseType_t"
.LASF58:
	.string	"xRunPrivileged"
.LASF15:
	.string	"excvaddr"
.LASF75:
	.string	"usStackDepth"
.LASF82:
	.string	"vPortCPUAcquireMutex"
.LASF6:
	.string	"__uint32_t"
.LASF70:
	.string	"vPortYieldOtherCore"
.LASF48:
	.string	"__tmp"
.LASF90:
	.string	"port_interruptNesting"
.LASF0:
	.string	"unsigned int"
.LASF83:
	.string	"vPortCPUAcquireMutexTimeout"
.LASF77:
	.string	"xPortInIsrContext"
.LASF11:
	.string	"long unsigned int"
.LASF16:
	.string	"lbeg"
.LASF55:
	.string	"pxTopOfStack"
.LASF80:
	.string	"__FUNCTION__"
.LASF108:
	.string	"vPortAssertIfInISR"
.LASF33:
	.string	"coproc_area"
.LASF1:
	.string	"short unsigned int"
.LASF109:
	.string	"xPortGetTickRateHz"
.LASF61:
	.string	"task_thread_local_start"
.LASF65:
	.string	"thread_local_sz"
.LASF85:
	.string	"vPortCPUReleaseMutexIntsDisabledInternal"
.LASF64:
	.string	"_rodata_start"
.LASF78:
	.string	"irqStatus"
.LASF45:
	.string	"xPortGetCoreID"
.LASF86:
	.string	"vPortCPUReleaseMutex"
.LASF92:
	.string	"_xt_tick_divisor_init"
.LASF10:
	.string	"sizetype"
.LASF69:
	.string	"coreid"
.LASF73:
	.string	"xRegions"
.LASF102:
	.string	"esp_set_watchpoint"
.LASF67:
	.string	"xPortStartScheduler"
.LASF39:
	.string	"coreID"
.LASF53:
	.string	"compare"
.LASF107:
	.string	"vPortEndScheduler"
.LASF36:
	.string	"ulLengthInBytes"
.LASF34:
	.string	"xMPU_SETTINGS"
.LASF22:
	.string	"XtExcFrame"
.LASF40:
	.string	"otherCoreID"
.LASF106:
	.string	"xMEMORY_REGION"
.LASF52:
	.string	"addr"
.LASF26:
	.string	"_Bool"
.LASF101:
	.string	"__assert_func"
.LASF3:
	.string	"unsigned char"
.LASF103:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF56:
	.string	"pxCode"
.LASF4:
	.string	"short int"
.LASF96:
	.string	"esp_crosscore_int_send_yield"
.LASF44:
	.string	"ccount_now"
.LASF43:
	.string	"__func__"
.LASF38:
	.string	"timeout_cycles"
.LASF71:
	.string	"vPortStoreTaskMPUSettings"
.LASF13:
	.string	"exit"
.LASF76:
	.string	"vPortReleaseTaskMPUSettings"
.LASF24:
	.string	"uint32_t"
.LASF37:
	.string	"ulParameters"
.LASF30:
	.string	"owner"
.LASF105:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\freertos"
.LASF95:
	.string	"_frxt_setup_switch"
.LASF12:
	.string	"char"
.LASF62:
	.string	"_thread_local_start"
.LASF100:
	.string	"abort"
.LASF60:
	.string	"threadptr"
.LASF91:
	.string	"_xt_coproc_init"
.LASF27:
	.string	"StackType_t"
.LASF25:
	.string	"TaskFunction_t"
.LASF88:
	.string	"pxStackStart"
.LASF87:
	.string	"vPortSetStackWatchpoint"
.LASF81:
	.string	"vPortCPUInitializeMutex"
.LASF32:
	.string	"portMUX_TYPE"
.LASF66:
	.string	"pxPortInitialiseStack"
.LASF23:
	.string	"uint8_t"
.LASF54:
	.string	"vPortCPUReleaseMutexIntsDisabled"
.LASF104:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/freertos/port.c"
.LASF29:
	.string	"UBaseType_t"
.LASF84:
	.string	"result"
.LASF93:
	.string	"_frxt_tick_timer_init"
.LASF17:
	.string	"lend"
.LASF41:
	.string	"ccount_start"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
