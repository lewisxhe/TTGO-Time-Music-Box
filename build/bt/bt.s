	.file	"bt.c"
	.text
.Ltext0:
	.section	.iram1,"ax",@progbits
	.align	4
	.type	cause_sw_intr, @function
cause_sw_intr:
.LFB43:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bt.c"
	.loc 1 550 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
.LBB4:
	.loc 1 553 0
	movi.n	a8, 1
	ssl	a2
	sll	a2, a8
.LVL2:
#APP
# 553 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bt.c" 1
	wsr.intset a2
# 0 "" 2
#NO_APP
	retw.n
.LBE4:
.LFE43:
	.size	cause_sw_intr, .-cause_sw_intr
	.align	4
	.type	srand_wrapper, @function
srand_wrapper:
.LFB46:
	.loc 1 575 0
.LVL3:
	entry	sp, 32
.LCFI1:
	retw.n
.LFE46:
	.size	srand_wrapper, .-srand_wrapper
	.literal_position
	.literal .LC0, btdm_lpcycle_us
	.literal .LC1, btdm_lpcycle_us_frac
	.align	4
	.type	btdm_lpcycles_2_us, @function
btdm_lpcycles_2_us:
.LFB48:
	.loc 1 585 0
.LVL4:
	.loc 1 585 0
	entry	sp, 32
.LCFI2:
	.loc 1 588 0
	l32r	a8, .LC0
	l32i.n	a9, a8, 0
	mull	a10, a9, a2
	muluh	a2, a9, a2
.LVL5:
	.loc 1 589 0
	l32r	a8, .LC1
	l8ui	a11, a8, 0
	addi.n	a12, a11, -1
	movi.n	a8, 1
	ssl	a12
	sll	a12, a8
	srai	a13, a12, 31
	add.n	a10, a12, a10
.LVL6:
	bltu	a10, a12, .L4
	movi.n	a8, 0
.L4:
	add.n	a9, a13, a2
.LVL7:
	add.n	a8, a8, a9
	movi.n	a2, 0x20
.LVL8:
	and	a2, a11, a2
	slli	a9, a8, 1
	movi.n	a12, -1
	xor	a12, a11, a12
	ssl	a12
	sll	a12, a9
	ssr	a11
	srl	a9, a10
	or	a9, a12, a9
	ssr	a11
	srl	a8, a8
.LVL9:
	.loc 1 591 0
	moveqz	a8, a9, a2
.LVL10:
	mov.n	a2, a8
	retw.n
.LFE48:
	.size	btdm_lpcycles_2_us, .-btdm_lpcycles_2_us
	.global	__udivdi3
	.literal_position
	.literal .LC2, btdm_lpcycle_us_frac
	.literal .LC3, btdm_lpcycle_us
	.align	4
	.type	btdm_us_2_lpcycles, @function
btdm_us_2_lpcycles:
.LFB49:
	.loc 1 597 0
.LVL11:
	entry	sp, 32
.LCFI3:
	.loc 1 601 0
	movi.n	a13, 0
	l32r	a8, .LC2
	l8ui	a10, a8, 0
	movi.n	a8, 0x20
	and	a8, a10, a8
	srli	a11, a2, 1
	movi.n	a9, -1
	xor	a9, a10, a9
	ssr	a9
	srl	a9, a11
	ssl	a10
	sll	a10, a2
	mov.n	a11, a10
	moveqz	a11, a9, a8
	movnez	a10, a13, a8
	l32r	a2, .LC3
.LVL12:
	l32i.n	a12, a2, 0
	call8	__udivdi3
.LVL13:
	.loc 1 604 0
	mov.n	a2, a10
	retw.n
.LFE49:
	.size	btdm_us_2_lpcycles, .-btdm_us_2_lpcycles
	.align	4
	.type	btdm_sleep_check_duration, @function
btdm_sleep_check_duration:
.LFB50:
	.loc 1 607 0
.LVL14:
	entry	sp, 32
.LCFI4:
	.loc 1 608 0
	l32i.n	a8, a2, 0
	movi.n	a9, 0x13
	bgeu	a9, a8, .L8
	.loc 1 612 0
	addi	a8, a8, -3
	s32i.n	a8, a2, 0
	.loc 1 613 0
	movi.n	a2, 1
.LVL15:
	retw.n
.LVL16:
.L8:
	.loc 1 609 0
	movi.n	a2, 0
.LVL17:
	.loc 1 614 0
	retw.n
.LFE50:
	.size	btdm_sleep_check_duration, .-btdm_sleep_check_duration
	.section	.text.btdm_config_mask_load,"ax",@progbits
	.literal_position
	.literal .LC4, btdm_dram_available_region
	.align	4
	.type	btdm_config_mask_load, @function
btdm_config_mask_load:
.LFB56:
	.loc 1 698 0
	entry	sp, 32
.LCFI5:
.LVL18:
	.loc 1 701 0
	l32r	a8, .LC4
	l32i.n	a8, a8, 0
	beqi	a8, 1, .L11
	.loc 1 699 0
	movi.n	a2, 0
	j	.L10
.L11:
	.loc 1 702 0
	movi.n	a2, 1
.L10:
.LVL19:
	.loc 1 716 0
	movi.n	a8, 0x18
	or	a2, a2, a8
.LVL20:
	retw.n
.LFE56:
	.size	btdm_config_mask_load, .-btdm_config_mask_load
	.section	.iram1
	.align	4
	.type	btdm_sleep_exit_wrapper, @function
btdm_sleep_exit_wrapper:
.LFB52:
	.loc 1 629 0
	entry	sp, 32
.LCFI6:
	.loc 1 630 0
	call8	btdm_controller_get_sleep_mode
.LVL21:
	bnei	a10, 1, .L13
	.loc 1 631 0
	movi.n	a10, 0
	call8	esp_modem_sleep_exit
.LVL22:
	.loc 1 632 0
	movi.n	a10, 1
	call8	esp_modem_sleep_exit
.LVL23:
	retw.n
.L13:
	.loc 1 633 0
	call8	btdm_controller_get_sleep_mode
.LVL24:
	bnei	a10, 2, .L12
	.loc 1 635 0
	movi.n	a10, 0x1e
	call8	periph_module_enable
.LVL25:
	.loc 1 636 0
	movi.n	a10, 0
	call8	esp_modem_sleep_exit
.LVL26:
.L12:
	retw.n
.LFE52:
	.size	btdm_sleep_exit_wrapper, .-btdm_sleep_exit_wrapper
	.align	4
	.type	btdm_sleep_enter_wrapper, @function
btdm_sleep_enter_wrapper:
.LFB51:
	.loc 1 617 0
	entry	sp, 32
.LCFI7:
	.loc 1 618 0
	call8	btdm_controller_get_sleep_mode
.LVL27:
	bnei	a10, 1, .L16
	.loc 1 619 0
	movi.n	a10, 0
	call8	esp_modem_sleep_enter
.LVL28:
	.loc 1 620 0
	movi.n	a10, 1
	call8	esp_modem_sleep_enter
.LVL29:
	retw.n
.L16:
	.loc 1 621 0
	call8	btdm_controller_get_sleep_mode
.LVL30:
	bnei	a10, 2, .L15
	.loc 1 622 0
	movi.n	a10, 0
	call8	esp_modem_sleep_enter
.LVL31:
	.loc 1 624 0
	movi.n	a10, 0x1e
	call8	periph_module_disable
.LVL32:
.L15:
	retw.n
.LFE51:
	.size	btdm_sleep_enter_wrapper, .-btdm_sleep_enter_wrapper
	.align	4
	.type	rand_wrapper, @function
rand_wrapper:
.LFB47:
	.loc 1 580 0
	entry	sp, 32
.LCFI8:
	.loc 1 581 0
	call8	esp_random
.LVL33:
	.loc 1 582 0
	mov.n	a2, a10
	retw.n
.LFE47:
	.size	rand_wrapper, .-rand_wrapper
	.align	4
	.type	read_mac_wrapper, @function
read_mac_wrapper:
.LFB45:
	.loc 1 570 0
.LVL34:
	entry	sp, 32
.LCFI9:
	.loc 1 571 0
	movi.n	a11, 2
	mov.n	a10, a2
	call8	esp_read_mac
.LVL35:
	.loc 1 572 0
	mov.n	a2, a10
.LVL36:
	retw.n
.LFE45:
	.size	read_mac_wrapper, .-read_mac_wrapper
	.literal_position
	.literal .LC5, cause_sw_intr
	.align	4
	.type	cause_sw_intr_to_core_wrapper, @function
cause_sw_intr_to_core_wrapper:
.LFB44:
	.loc 1 557 0
.LVL37:
	entry	sp, 32
.LCFI10:
.LVL38:
.LBB5:
.LBB6:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portable.h"
	.loc 2 208 0
#APP
# 208 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
.LVL39:
#NO_APP
.LBE6:
.LBE5:
	.loc 1 560 0
	bne	a2, a8, .L21
	.loc 1 561 0
	mov.n	a10, a3
	call8	cause_sw_intr
.LVL40:
	.loc 1 558 0
	movi.n	a2, 0
.LVL41:
	retw.n
.LVL42:
.L21:
	.loc 1 563 0
	mov.n	a12, a3
	l32r	a11, .LC5
	mov.n	a10, a2
	call8	esp_ipc_call
.LVL43:
	mov.n	a2, a10
.LVL44:
	.loc 1 567 0
	retw.n
.LFE44:
	.size	cause_sw_intr_to_core_wrapper, .-cause_sw_intr_to_core_wrapper
	.align	4
	.type	is_in_isr_wrapper, @function
is_in_isr_wrapper:
.LFB42:
	.loc 1 545 0
	entry	sp, 32
.LCFI11:
	.loc 1 546 0
	call8	xPortInIsrContext
.LVL45:
	.loc 1 546 0
	movi.n	a2, 0
	movi.n	a8, 1
	movnez	a2, a8, a10
	.loc 1 547 0
	retw.n
.LFE42:
	.size	is_in_isr_wrapper, .-is_in_isr_wrapper
	.align	4
	.type	task_delete_wrapper, @function
task_delete_wrapper:
.LFB41:
	.loc 1 540 0
.LVL46:
	entry	sp, 32
.LCFI12:
	.loc 1 541 0
	mov.n	a10, a2
	call8	vTaskDelete
.LVL47:
	retw.n
.LFE41:
	.size	task_delete_wrapper, .-task_delete_wrapper
	.literal_position
	.literal .LC6, 2147483647
	.align	4
	.type	task_create_wrapper, @function
task_create_wrapper:
.LFB40:
	.loc 1 535 0
.LVL48:
	entry	sp, 48
.LCFI13:
	mov.n	a15, a7
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a14, a6
	l32i.n	a8, sp, 48
	.loc 1 536 0
	bltui	a8, 2, .L26
	l32r	a8, .LC6
.L26:
	.loc 1 536 0 is_stmt 0 discriminator 4
	s32i.n	a8, sp, 0
	call8	xTaskCreatePinnedToCore
.LVL49:
	.loc 1 537 0 is_stmt 1 discriminator 4
	mov.n	a2, a10
.LVL50:
	retw.n
.LFE40:
	.size	task_create_wrapper, .-task_create_wrapper
	.align	4
	.type	queue_recv_from_isr_wrapper, @function
queue_recv_from_isr_wrapper:
.LFB39:
	.loc 1 530 0
.LVL51:
	entry	sp, 32
.LCFI14:
	.loc 1 531 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	xQueueReceiveFromISR
.LVL52:
	.loc 1 532 0
	mov.n	a2, a10
.LVL53:
	retw.n
.LFE39:
	.size	queue_recv_from_isr_wrapper, .-queue_recv_from_isr_wrapper
	.align	4
	.type	semphr_take_from_isr_wrapper, @function
semphr_take_from_isr_wrapper:
.LFB26:
	.loc 1 340 0
.LVL54:
	entry	sp, 32
.LCFI15:
	.loc 1 341 0
	mov.n	a12, a3
	movi.n	a11, 0
	mov.n	a10, a2
	call8	xQueueReceiveFromISR
.LVL55:
	.loc 1 342 0
	mov.n	a2, a10
.LVL56:
	retw.n
.LFE26:
	.size	semphr_take_from_isr_wrapper, .-semphr_take_from_isr_wrapper
	.literal_position
	.literal .LC7, -858993459
	.align	4
	.type	queue_recv_wrapper, @function
queue_recv_wrapper:
.LFB38:
	.loc 1 521 0
.LVL57:
	entry	sp, 32
.LCFI16:
	.loc 1 522 0
	bnei	a4, -1, .L31
	.loc 1 523 0
	movi.n	a13, 0
	movi.n	a12, -1
	mov.n	a11, a3
	mov.n	a10, a2
	call8	xQueueGenericReceive
.LVL58:
	mov.n	a2, a10
.LVL59:
	retw.n
.LVL60:
.L31:
	.loc 1 525 0
	l32r	a8, .LC7
	muluh	a12, a4, a8
	movi.n	a13, 0
	srli	a12, a12, 3
	mov.n	a11, a3
	mov.n	a10, a2
	call8	xQueueGenericReceive
.LVL61:
	mov.n	a2, a10
.LVL62:
	.loc 1 527 0
	retw.n
.LFE38:
	.size	queue_recv_wrapper, .-queue_recv_wrapper
	.align	4
	.type	mutex_lock_wrapper, @function
mutex_lock_wrapper:
.LFB32:
	.loc 1 425 0
.LVL63:
	entry	sp, 32
.LCFI17:
	.loc 1 426 0
	movi.n	a13, 0
	movi.n	a12, -1
	mov.n	a11, a13
	mov.n	a10, a2
	call8	xQueueGenericReceive
.LVL64:
	.loc 1 427 0
	mov.n	a2, a10
.LVL65:
	retw.n
.LFE32:
	.size	mutex_lock_wrapper, .-mutex_lock_wrapper
	.literal_position
	.literal .LC8, -858993459
	.align	4
	.type	semphr_take_wrapper, @function
semphr_take_wrapper:
.LFB28:
	.loc 1 350 0
.LVL66:
	entry	sp, 32
.LCFI18:
	.loc 1 351 0
	bnei	a3, -1, .L35
	.loc 1 352 0
	movi.n	a13, 0
	movi.n	a12, -1
	mov.n	a11, a13
	mov.n	a10, a2
	call8	xQueueGenericReceive
.LVL67:
	mov.n	a2, a10
.LVL68:
	retw.n
.LVL69:
.L35:
	.loc 1 354 0
	l32r	a8, .LC8
	muluh	a12, a3, a8
	movi.n	a13, 0
	srli	a12, a12, 3
	mov.n	a11, a13
	mov.n	a10, a2
	call8	xQueueGenericReceive
.LVL70:
	mov.n	a2, a10
.LVL71:
	.loc 1 356 0
	retw.n
.LFE28:
	.size	semphr_take_wrapper, .-semphr_take_wrapper
	.align	4
	.type	queue_send_from_isr_wrapper, @function
queue_send_from_isr_wrapper:
.LFB37:
	.loc 1 516 0
.LVL72:
	entry	sp, 32
.LCFI19:
	.loc 1 517 0
	movi.n	a13, 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	xQueueGenericSendFromISR
.LVL73:
	.loc 1 518 0
	mov.n	a2, a10
.LVL74:
	retw.n
.LFE37:
	.size	queue_send_from_isr_wrapper, .-queue_send_from_isr_wrapper
	.literal_position
	.literal .LC9, -858993459
	.align	4
	.type	queue_send_wrapper, @function
queue_send_wrapper:
.LFB36:
	.loc 1 507 0
.LVL75:
	entry	sp, 32
.LCFI20:
	.loc 1 508 0
	bnei	a4, -1, .L39
	.loc 1 509 0
	movi.n	a13, 0
	movi.n	a12, -1
	mov.n	a11, a3
	mov.n	a10, a2
	call8	xQueueGenericSend
.LVL76:
	mov.n	a2, a10
.LVL77:
	retw.n
.LVL78:
.L39:
	.loc 1 511 0
	l32r	a8, .LC9
	muluh	a12, a4, a8
	movi.n	a13, 0
	srli	a12, a12, 3
	mov.n	a11, a3
	mov.n	a10, a2
	call8	xQueueGenericSend
.LVL79:
	mov.n	a2, a10
.LVL80:
	.loc 1 513 0
	retw.n
.LFE36:
	.size	queue_send_wrapper, .-queue_send_wrapper
	.align	4
	.type	mutex_unlock_wrapper, @function
mutex_unlock_wrapper:
.LFB33:
	.loc 1 430 0
.LVL81:
	entry	sp, 32
.LCFI21:
	.loc 1 431 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	mov.n	a10, a2
	call8	xQueueGenericSend
.LVL82:
	.loc 1 432 0
	mov.n	a2, a10
.LVL83:
	retw.n
.LFE33:
	.size	mutex_unlock_wrapper, .-mutex_unlock_wrapper
	.align	4
	.type	semphr_give_wrapper, @function
semphr_give_wrapper:
.LFB29:
	.loc 1 359 0
.LVL84:
	entry	sp, 32
.LCFI22:
	.loc 1 360 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	mov.n	a10, a2
	call8	xQueueGenericSend
.LVL85:
	.loc 1 361 0
	mov.n	a2, a10
.LVL86:
	retw.n
.LFE29:
	.size	semphr_give_wrapper, .-semphr_give_wrapper
	.align	4
	.type	queue_delete_wrapper, @function
queue_delete_wrapper:
.LFB35:
	.loc 1 486 0
.LVL87:
	entry	sp, 32
.LCFI23:
	.loc 1 488 0
	mov.n	a10, a2
	call8	vQueueDelete
.LVL88:
	retw.n
.LFE35:
	.size	queue_delete_wrapper, .-queue_delete_wrapper
	.align	4
	.type	mutex_delete_wrapper, @function
mutex_delete_wrapper:
.LFB31:
	.loc 1 405 0
.LVL89:
	entry	sp, 32
.LCFI24:
	.loc 1 407 0
	mov.n	a10, a2
	call8	vQueueDelete
.LVL90:
	retw.n
.LFE31:
	.size	mutex_delete_wrapper, .-mutex_delete_wrapper
	.align	4
	.type	semphr_delete_wrapper, @function
semphr_delete_wrapper:
.LFB25:
	.loc 1 320 0
.LVL91:
	entry	sp, 32
.LCFI25:
	.loc 1 322 0
	mov.n	a10, a2
	call8	vQueueDelete
.LVL92:
	retw.n
.LFE25:
	.size	semphr_delete_wrapper, .-semphr_delete_wrapper
	.align	4
	.type	queue_create_wrapper, @function
queue_create_wrapper:
.LFB34:
	.loc 1 435 0
.LVL93:
	entry	sp, 32
.LCFI26:
	.loc 1 481 0
	movi.n	a12, 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	xQueueGenericCreate
.LVL94:
	.loc 1 483 0
	mov.n	a2, a10
.LVL95:
	retw.n
.LFE34:
	.size	queue_create_wrapper, .-queue_create_wrapper
	.align	4
	.type	mutex_create_wrapper, @function
mutex_create_wrapper:
.LFB30:
	.loc 1 364 0
	entry	sp, 32
.LCFI27:
	.loc 1 400 0
	movi.n	a10, 1
	call8	xQueueCreateMutex
.LVL96:
	.loc 1 402 0
	mov.n	a2, a10
	retw.n
.LFE30:
	.size	mutex_create_wrapper, .-mutex_create_wrapper
	.align	4
	.type	semphr_give_from_isr_wrapper, @function
semphr_give_from_isr_wrapper:
.LFB27:
	.loc 1 345 0
.LVL97:
	entry	sp, 32
.LCFI28:
	.loc 1 346 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	xQueueGiveFromISR
.LVL98:
	.loc 1 347 0
	mov.n	a2, a10
.LVL99:
	retw.n
.LFE27:
	.size	semphr_give_from_isr_wrapper, .-semphr_give_from_isr_wrapper
	.align	4
	.type	semphr_create_wrapper, @function
semphr_create_wrapper:
.LFB24:
	.loc 1 279 0
.LVL100:
	entry	sp, 32
.LCFI29:
	.loc 1 281 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	xQueueCreateCountingSemaphore
.LVL101:
	.loc 1 317 0
	mov.n	a2, a10
.LVL102:
	retw.n
.LFE24:
	.size	semphr_create_wrapper, .-semphr_create_wrapper
	.align	4
	.type	task_yield_from_isr, @function
task_yield_from_isr:
.LFB23:
	.loc 1 274 0
	entry	sp, 32
.LCFI30:
	.loc 1 275 0
	call8	_frxt_setup_switch
.LVL103:
	retw.n
.LFE23:
	.size	task_yield_from_isr, .-task_yield_from_isr
	.literal_position
	.literal .LC10, global_int_mux
	.align	4
	.type	interrupt_restore, @function
interrupt_restore:
.LFB22:
	.loc 1 265 0
	entry	sp, 32
.LCFI31:
	.loc 1 266 0
	call8	xPortInIsrContext
.LVL104:
	beqz.n	a10, .L52
	.loc 1 267 0
	l32r	a10, .LC10
	call8	vTaskExitCritical
.LVL105:
	retw.n
.L52:
	.loc 1 269 0
	l32r	a10, .LC10
	call8	vTaskExitCritical
.LVL106:
	retw.n
.LFE22:
	.size	interrupt_restore, .-interrupt_restore
	.literal_position
	.literal .LC11, global_int_mux
	.align	4
	.type	interrupt_disable, @function
interrupt_disable:
.LFB21:
	.loc 1 256 0
	entry	sp, 32
.LCFI32:
	.loc 1 257 0
	call8	xPortInIsrContext
.LVL107:
	beqz.n	a10, .L55
	.loc 1 258 0
	l32r	a10, .LC11
	call8	vTaskEnterCritical
.LVL108:
	retw.n
.L55:
	.loc 1 260 0
	l32r	a10, .LC11
	call8	vTaskEnterCritical
.LVL109:
	retw.n
.LFE21:
	.size	interrupt_disable, .-interrupt_disable
	.section	.text.btdm_controller_mem_init,"ax",@progbits
	.literal_position
	.literal .LC12, _data_end_btdm
	.literal .LC13, _data_start_btdm
	.literal .LC14, _data_start_btdm_rom
	.literal .LC15, btdm_dram_available_region
	.align	4
	.type	btdm_controller_mem_init, @function
btdm_controller_mem_init:
.LFB57:
	.loc 1 719 0
	entry	sp, 32
.LCFI33:
	.loc 1 721 0
	l32r	a10, .LC13
	l32r	a12, .LC12
	sub	a12, a12, a10
	l32r	a2, .LC14
	l32i.n	a11, a2, 0
	call8	memcpy
.LVL110:
.LBB7:
	.loc 1 724 0
	movi.n	a2, 1
	j	.L58
.LVL111:
.L60:
	.loc 1 725 0
	addx2	a9, a2, a2
	slli	a8, a9, 2
	l32r	a9, .LC15
	add.n	a8, a9, a8
	l32i.n	a8, a8, 0
	beqz.n	a8, .L59
	.loc 1 726 0
	slli	a9, a2, 1
	add.n	a9, a9, a2
	slli	a8, a9, 2
	l32r	a9, .LC15
	add.n	a8, a9, a8
	l32i.n	a10, a8, 4
	l32i.n	a12, a8, 8
	sub	a12, a12, a10
	movi.n	a11, 0
	call8	memset
.LVL112:
.L59:
	.loc 1 724 0 discriminator 2
	addi.n	a2, a2, 1
.LVL113:
.L58:
	.loc 1 724 0 is_stmt 0 discriminator 1
	bltui	a2, 8, .L60
.LBE7:
	.loc 1 730 0 is_stmt 1
	retw.n
.LFE57:
	.size	btdm_controller_mem_init, .-btdm_controller_mem_init
	.section	.text.esp_vhci_host_check_send_available,"ax",@progbits
	.align	4
	.global	esp_vhci_host_check_send_available
	.type	esp_vhci_host_check_send_available, @function
esp_vhci_host_check_send_available:
.LFB53:
	.loc 1 680 0
	entry	sp, 32
.LCFI34:
	.loc 1 681 0
	call8	API_vhci_host_check_send_available
.LVL114:
	.loc 1 682 0
	mov.n	a2, a10
	retw.n
.LFE53:
	.size	esp_vhci_host_check_send_available, .-esp_vhci_host_check_send_available
	.section	.text.esp_vhci_host_send_packet,"ax",@progbits
	.align	4
	.global	esp_vhci_host_send_packet
	.type	esp_vhci_host_send_packet, @function
esp_vhci_host_send_packet:
.LFB54:
	.loc 1 685 0
.LVL115:
	entry	sp, 32
.LCFI35:
	extui	a3, a3, 0, 16
	.loc 1 686 0
	call8	btdm_power_state_active
.LVL116:
	bnez.n	a10, .L63
	.loc 1 687 0
	call8	btdm_wakeup_request
.LVL117:
.L63:
	.loc 1 689 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	API_vhci_host_send_packet
.LVL118:
	retw.n
.LFE54:
	.size	esp_vhci_host_send_packet, .-esp_vhci_host_send_packet
	.section	.text.esp_vhci_host_register_callback,"ax",@progbits
	.align	4
	.global	esp_vhci_host_register_callback
	.type	esp_vhci_host_register_callback, @function
esp_vhci_host_register_callback:
.LFB55:
	.loc 1 693 0
.LVL119:
	entry	sp, 32
.LCFI36:
	.loc 1 694 0
	mov.n	a10, a2
	call8	API_vhci_host_register_callback
.LVL120:
	retw.n
.LFE55:
	.size	esp_vhci_host_register_callback, .-esp_vhci_host_register_callback
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC18:
	.string	"heap_caps_add_region(mem_start, mem_end)"
	.align	4
.LC21:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bt.c"
	.section	.text.esp_bt_controller_mem_release,"ax",@progbits
	.literal_position
	.literal .LC16, btdm_controller_status
	.literal .LC17, btdm_dram_available_region
	.literal .LC19, .LC18
	.literal .LC20, __func__$6089
	.literal .LC22, .LC21
	.align	4
	.global	esp_bt_controller_mem_release
	.type	esp_bt_controller_mem_release, @function
esp_bt_controller_mem_release:
.LFB58:
	.loc 1 733 0
.LVL121:
	entry	sp, 32
.LCFI37:
.LVL122:
	.loc 1 737 0
	l32r	a3, .LC16
	l32i.n	a3, a3, 0
	bnez.n	a3, .L75
	.loc 1 742 0
	l32r	a3, .LC17
	l32i.n	a3, a3, 0
	bnone	a3, a2, .L76
	movi.n	a3, 0
	movi.n	a12, 1
	j	.L67
.LVL123:
.L74:
.LBB8:
	.loc 1 748 0
	addx2	a9, a3, a3
	slli	a8, a9, 2
	l32r	a9, .LC17
	add.n	a8, a9, a8
	l32i.n	a10, a8, 0
	beqz.n	a10, .L68
	.loc 1 749 0
	and	a8, a2, a10
	beq	a10, a8, .L69
.L68:
	.loc 1 751 0
	movi.n	a8, -1
	xor	a8, a8, a2
	addx2	a11, a3, a3
	slli	a9, a11, 2
	l32r	a11, .LC17
	add.n	a9, a11, a9
	and	a8, a10, a8
	s32i.n	a8, a9, 0
	.loc 1 752 0
	j	.L70
.L69:
	.loc 1 755 0
	movi.n	a8, -1
	xor	a8, a8, a2
	addx2	a13, a3, a3
	slli	a9, a13, 2
	l32r	a13, .LC17
	add.n	a9, a13, a9
	and	a8, a10, a8
	s32i.n	a8, a9, 0
	.loc 1 758 0
	beqz.n	a12, .L71
	.loc 1 759 0
	l32i.n	a4, a9, 4
.LVL124:
	.loc 1 761 0
	movi.n	a12, 0
.LVL125:
.L71:
	.loc 1 764 0
	bgeui	a11, 7, .L72
	.loc 1 765 0
	l32r	a10, .LC17
	addx2	a8, a3, a3
	slli	a9, a8, 2
	add.n	a9, a10, a9
	l32i.n	a11, a9, 8
.LVL126:
	.loc 1 766 0
	addi.n	a9, a3, 1
	addx2	a13, a9, a9
	slli	a8, a13, 2
	mov.n	a13, a8
	add.n	a8, a10, a8
	l32i.n	a8, a8, 0
	beqz.n	a8, .L73
	.loc 1 767 0
	and	a10, a2, a8
	bne	a8, a10, .L73
	.loc 1 768 0
	l32r	a9, .LC17
	add.n	a8, a9, a13
	l32i.n	a8, a8, 4
	beq	a11, a8, .L70
.L73:
.LBB9:
	.loc 1 772 0
	mov.n	a10, a4
	call8	heap_caps_add_region
.LVL127:
	beqz.n	a10, .L77
	.loc 1 772 0 is_stmt 0 discriminator 1
	l32r	a14, .LC19
	l32r	a13, .LC20
	movi	a12, 0x304
	l32r	a11, .LC22
	call8	_esp_error_check_failed
.LVL128:
.L72:
.LBE9:
	.loc 1 776 0 is_stmt 1
	addx2	a9, a3, a3
	slli	a8, a9, 2
	l32r	a9, .LC17
	add.n	a8, a9, a8
.LVL129:
.LBB10:
	.loc 1 778 0
	l32i.n	a11, a8, 8
	mov.n	a10, a4
	call8	heap_caps_add_region
.LVL130:
	beqz.n	a10, .L78
	.loc 1 778 0 is_stmt 0 discriminator 1
	l32r	a14, .LC19
	l32r	a13, .LC20
	movi	a12, 0x30a
	l32r	a11, .LC22
	call8	_esp_error_check_failed
.LVL131:
.L77:
.LBE10:
	.loc 1 773 0 is_stmt 1
	movi.n	a12, 1
	j	.L70
.LVL132:
.L78:
	.loc 1 779 0
	movi.n	a12, 1
.LVL133:
.L70:
	.loc 1 746 0 discriminator 2
	addi.n	a3, a3, 1
.LVL134:
.L67:
	.loc 1 746 0 is_stmt 0 discriminator 1
	mov.n	a11, a3
	bltui	a3, 8, .L74
.LBE8:
	.loc 1 783 0 is_stmt 1
	movi.n	a2, 0
.LVL135:
.LBB11:
	retw.n
.LVL136:
.L75:
.LBE11:
	.loc 1 738 0
	movi	a2, 0x103
.LVL137:
	retw.n
.LVL138:
.L76:
	.loc 1 743 0
	movi	a2, 0x103
.LVL139:
	.loc 1 784 0
	retw.n
.LFE58:
	.size	esp_bt_controller_mem_release, .-esp_bt_controller_mem_release
	.section	.rodata.str1.4
	.align	4
.LC26:
	.string	"BTDM_INIT"
	.align	4
.LC28:
	.string	"\033[0;32mI (%d) %s: BT controller compile version [%s]\n\033[0m\n"
	.section	.text.esp_bt_controller_init,"ax",@progbits
	.literal_position
	.literal .LC23, btdm_controller_status
	.literal .LC24, btdm_dram_available_region
	.literal .LC25, 4095
	.literal .LC27, .LC26
	.literal .LC29, .LC28
	.literal .LC30, osi_funcs
	.literal .LC31, btdm_lpcycle_us_frac
	.literal .LC32, btdm_lpcycle_us
	.literal .LC33, 16777216
	.align	4
	.global	esp_bt_controller_init
	.type	esp_bt_controller_init, @function
esp_bt_controller_init:
.LFB59:
	.loc 1 787 0
.LVL140:
	entry	sp, 32
.LCFI38:
.LVL141:
	.loc 1 791 0
	l32r	a8, .LC23
	l32i.n	a8, a8, 0
	bnez.n	a8, .L81
	.loc 1 796 0
	l32r	a8, .LC24
	l32i.n	a8, a8, 0
	beqz.n	a8, .L82
	.loc 1 800 0
	beqz.n	a2, .L83
	.loc 1 804 0
	l8ui	a9, a2, 2
	movi.n	a8, 0x17
	bne	a9, a8, .L84
	.loc 1 805 0
	l16ui	a8, a2, 0
	l32r	a9, .LC25
	bgeu	a9, a8, .L85
	.loc 1 816 0 discriminator 9
	call8	esp_log_timestamp
.LVL142:
	mov.n	a3, a10
	call8	btdm_controller_get_compile_version
.LVL143:
	l32r	a11, .LC27
	mov.n	a15, a10
	mov.n	a14, a11
	mov.n	a13, a3
	l32r	a12, .LC29
	movi.n	a10, 3
	call8	esp_log_write
.LVL144:
	.loc 1 830 0 discriminator 9
	l32r	a10, .LC30
	call8	btdm_osi_funcs_register
.LVL145:
	.loc 1 832 0 discriminator 9
	call8	btdm_controller_mem_init
.LVL146:
	.loc 1 834 0 discriminator 9
	movi.n	a10, 0x1c
	call8	periph_module_enable
.LVL147:
	.loc 1 836 0 discriminator 9
	movi.n	a9, 0x13
	l32r	a8, .LC31
	s8i	a9, a8, 0
	.loc 1 837 0 discriminator 9
	l32r	a9, .LC33
	l32r	a8, .LC32
	s32i.n	a9, a8, 0
	.loc 1 859 0 discriminator 9
	movi.n	a10, 0
	call8	btdm_controller_set_sleep_mode
.LVL148:
	.loc 1 862 0 discriminator 9
	call8	btdm_config_mask_load
.LVL149:
	.loc 1 864 0 discriminator 9
	mov.n	a11, a2
	call8	btdm_controller_init
.LVL150:
	.loc 1 865 0 discriminator 9
	bnez.n	a10, .L86
	.loc 1 873 0
	movi.n	a3, 1
	l32r	a2, .LC23
.LVL151:
	s32i.n	a3, a2, 0
	.loc 1 874 0
	movi.n	a2, 0
	retw.n
.LVL152:
.L81:
	.loc 1 792 0
	movi	a2, 0x103
.LVL153:
	retw.n
.LVL154:
.L82:
	.loc 1 797 0
	movi	a2, 0x103
.LVL155:
	retw.n
.LVL156:
.L83:
	.loc 1 801 0
	movi	a2, 0x102
.LVL157:
	retw.n
.LVL158:
.L84:
	.loc 1 806 0
	movi	a2, 0x102
.LVL159:
	retw.n
.LVL160:
.L85:
	movi	a2, 0x102
.LVL161:
	retw.n
.LVL162:
.L86:
	.loc 1 870 0
	movi	a2, 0x101
.LVL163:
	.loc 1 875 0
	retw.n
.LFE59:
	.size	esp_bt_controller_init, .-esp_bt_controller_init
	.section	.text.esp_bt_controller_deinit,"ax",@progbits
	.literal_position
	.literal .LC34, btdm_controller_status
	.literal .LC35, btdm_lpcycle_us
	.align	4
	.global	esp_bt_controller_deinit
	.type	esp_bt_controller_deinit, @function
esp_bt_controller_deinit:
.LFB60:
	.loc 1 878 0
	entry	sp, 32
.LCFI39:
	.loc 1 879 0
	l32r	a2, .LC34
	l32i.n	a2, a2, 0
	bnei	a2, 1, .L89
	.loc 1 883 0
	call8	btdm_controller_deinit
.LVL164:
	.loc 1 885 0
	movi.n	a10, 0x1c
	call8	periph_module_disable
.LVL165:
	.loc 1 893 0
	movi.n	a2, 0
	l32r	a8, .LC34
	s32i.n	a2, a8, 0
	.loc 1 895 0
	l32r	a8, .LC35
	s32i.n	a2, a8, 0
	.loc 1 896 0
	mov.n	a10, a2
	call8	btdm_controller_set_sleep_mode
.LVL166:
	.loc 1 902 0
	retw.n
.L89:
	.loc 1 880 0
	movi	a2, 0x103
	.loc 1 903 0
	retw.n
.LFE60:
	.size	esp_bt_controller_deinit, .-esp_bt_controller_deinit
	.section	.text.esp_bt_controller_enable,"ax",@progbits
	.literal_position
	.literal .LC36, btdm_controller_status
	.literal .LC37, btdm_dram_available_region
	.literal .LC38, btdm_bb_init_flag
	.align	4
	.global	esp_bt_controller_enable
	.type	esp_bt_controller_enable, @function
esp_bt_controller_enable:
.LFB61:
	.loc 1 906 0
.LVL167:
	entry	sp, 32
.LCFI40:
	.loc 1 909 0
	l32r	a8, .LC36
	l32i.n	a8, a8, 0
	bnei	a8, 1, .L101
	.loc 1 914 0
	l32r	a8, .LC37
	l32i.n	a8, a8, 0
	movi.n	a9, -1
	xor	a8, a9, a8
	bany	a8, a2, .L102
	.loc 1 922 0
	movi.n	a10, 0
	call8	esp_phy_load_cal_and_init
.LVL168:
	.loc 1 924 0
	call8	btdm_controller_get_sleep_mode
.LVL169:
	bnez.n	a10, .L92
	.loc 1 927 0
	call8	esp_modem_sleep_register
.LVL170:
	.loc 1 928 0
	movi.n	a10, 1
	call8	esp_modem_sleep_register
.LVL171:
	.loc 1 929 0
	movi.n	a10, 0
	call8	esp_modem_sleep_exit
.LVL172:
	.loc 1 930 0
	movi.n	a10, 1
	call8	esp_modem_sleep_exit
.LVL173:
	j	.L93
.L92:
	.loc 1 931 0
	call8	btdm_controller_get_sleep_mode
.LVL174:
	bnei	a10, 1, .L94
	.loc 1 932 0
	movi.n	a10, 0
	call8	esp_modem_sleep_register
.LVL175:
	.loc 1 933 0
	movi.n	a10, 1
	call8	esp_modem_sleep_register
.LVL176:
	j	.L93
.L94:
	.loc 1 934 0
	call8	btdm_controller_get_sleep_mode
.LVL177:
	bnei	a10, 2, .L93
	.loc 1 935 0
	movi.n	a10, 0
	call8	esp_modem_sleep_register
.LVL178:
.L93:
	.loc 1 938 0
	call8	btdm_controller_get_sleep_mode
.LVL179:
	bnei	a10, 1, .L95
	.loc 1 939 0
	call8	btdm_controller_enable_sleep
.LVL180:
.L95:
	.loc 1 942 0
	l32r	a8, .LC38
	l8ui	a8, a8, 0
	bnez.n	a8, .L96
	.loc 1 943 0
	movi.n	a9, 1
	l32r	a8, .LC38
	s8i	a9, a8, 0
	.loc 1 944 0
	call8	btdm_rf_bb_init
.LVL181:
.L96:
	.loc 1 947 0
	mov.n	a10, a2
	call8	btdm_controller_enable
.LVL182:
	.loc 1 948 0
	beqz.n	a10, .L97
	.loc 1 949 0
	call8	btdm_controller_get_sleep_mode
.LVL183:
	beqz.n	a10, .L98
	.loc 1 950 0
	call8	btdm_controller_get_sleep_mode
.LVL184:
	bnei	a10, 1, .L99
.L98:
	.loc 1 951 0
	movi.n	a10, 0
	call8	esp_modem_sleep_deregister
.LVL185:
	.loc 1 952 0
	movi.n	a10, 1
	call8	esp_modem_sleep_deregister
.LVL186:
	j	.L100
.L99:
	.loc 1 953 0
	call8	btdm_controller_get_sleep_mode
.LVL187:
	bnei	a10, 2, .L100
	.loc 1 954 0
	movi.n	a10, 0
	call8	esp_modem_sleep_deregister
.LVL188:
.L100:
	.loc 1 956 0
	movi.n	a10, 0
	call8	esp_phy_rf_deinit
.LVL189:
	.loc 1 960 0
	movi	a2, 0x103
.LVL190:
	retw.n
.LVL191:
.L97:
	.loc 1 963 0
	movi.n	a8, 2
	l32r	a2, .LC36
.LVL192:
	s32i.n	a8, a2, 0
	.loc 1 965 0
	movi.n	a2, 0
	retw.n
.LVL193:
.L101:
	.loc 1 910 0
	movi	a2, 0x103
.LVL194:
	retw.n
.LVL195:
.L102:
	.loc 1 915 0
	movi	a2, 0x102
.LVL196:
	.loc 1 966 0
	retw.n
.LFE61:
	.size	esp_bt_controller_enable, .-esp_bt_controller_enable
	.section	.text.esp_bt_controller_disable,"ax",@progbits
	.literal_position
	.literal .LC39, btdm_controller_status
	.align	4
	.global	esp_bt_controller_disable
	.type	esp_bt_controller_disable, @function
esp_bt_controller_disable:
.LFB62:
	.loc 1 969 0
	entry	sp, 32
.LCFI41:
	.loc 1 970 0
	l32r	a8, .LC39
	l32i.n	a8, a8, 0
	bnei	a8, 2, .L112
	.loc 1 975 0
	call8	btdm_controller_get_sleep_mode
.LVL197:
	bnei	a10, 1, .L105
	.loc 1 976 0
	movi.n	a10, 0
	call8	btdm_controller_enable_sleep
.LVL198:
	.loc 1 977 0
	call8	btdm_power_state_active
.LVL199:
	bnez.n	a10, .L107
	.loc 1 978 0
	call8	btdm_wakeup_request
.LVL200:
	j	.L107
.L108:
	.loc 1 981 0
	movi	a10, 0x3e8
	call8	ets_delay_us
.LVL201:
.L107:
	.loc 1 980 0
	call8	btdm_power_state_active
.LVL202:
	beqz.n	a10, .L108
.L105:
	.loc 1 985 0
	call8	btdm_controller_disable
.LVL203:
	.loc 1 987 0
	call8	btdm_controller_get_sleep_mode
.LVL204:
	beqz.n	a10, .L109
	.loc 1 988 0
	call8	btdm_controller_get_sleep_mode
.LVL205:
	bnei	a10, 1, .L110
.L109:
	.loc 1 989 0
	movi.n	a10, 0
	call8	esp_modem_sleep_deregister
.LVL206:
	.loc 1 990 0
	movi.n	a10, 1
	call8	esp_modem_sleep_deregister
.LVL207:
	j	.L111
.L110:
	.loc 1 991 0
	call8	btdm_controller_get_sleep_mode
.LVL208:
	bnei	a10, 2, .L111
	.loc 1 992 0
	movi.n	a10, 0
	call8	esp_modem_sleep_deregister
.LVL209:
.L111:
	.loc 1 994 0
	movi.n	a10, 0
	call8	esp_phy_rf_deinit
.LVL210:
	.loc 1 995 0
	movi.n	a8, 1
	l32r	a2, .LC39
	s32i.n	a8, a2, 0
	.loc 1 1001 0
	movi.n	a2, 0
	retw.n
.L112:
	.loc 1 971 0
	movi	a2, 0x103
	.loc 1 1002 0
	retw.n
.LFE62:
	.size	esp_bt_controller_disable, .-esp_bt_controller_disable
	.section	.text.esp_bt_controller_get_status,"ax",@progbits
	.literal_position
	.literal .LC40, btdm_controller_status
	.align	4
	.global	esp_bt_controller_get_status
	.type	esp_bt_controller_get_status, @function
esp_bt_controller_get_status:
.LFB63:
	.loc 1 1005 0
	entry	sp, 32
.LCFI42:
	.loc 1 1007 0
	l32r	a8, .LC40
	l32i.n	a2, a8, 0
	retw.n
.LFE63:
	.size	esp_bt_controller_get_status, .-esp_bt_controller_get_status
	.section	.text.esp_ble_tx_power_set,"ax",@progbits
	.align	4
	.global	esp_ble_tx_power_set
	.type	esp_ble_tx_power_set, @function
esp_ble_tx_power_set:
.LFB64:
	.loc 1 1012 0
.LVL211:
	entry	sp, 32
.LCFI43:
	.loc 1 1013 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	ble_txpwr_set
.LVL212:
	beqz.n	a10, .L115
	.loc 1 1014 0
	movi	a10, 0x102
.L115:
	.loc 1 1018 0
	mov.n	a2, a10
.LVL213:
	retw.n
.LFE64:
	.size	esp_ble_tx_power_set, .-esp_ble_tx_power_set
	.section	.text.esp_ble_tx_power_get,"ax",@progbits
	.align	4
	.global	esp_ble_tx_power_get
	.type	esp_ble_tx_power_get, @function
esp_ble_tx_power_get:
.LFB65:
	.loc 1 1021 0
.LVL214:
	entry	sp, 32
.LCFI44:
	.loc 1 1022 0
	mov.n	a10, a2
	call8	ble_txpwr_get
.LVL215:
	.loc 1 1023 0
	mov.n	a2, a10
.LVL216:
	retw.n
.LFE65:
	.size	esp_ble_tx_power_get, .-esp_ble_tx_power_get
	.section	.text.esp_bredr_tx_power_set,"ax",@progbits
	.align	4
	.global	esp_bredr_tx_power_set
	.type	esp_bredr_tx_power_set, @function
esp_bredr_tx_power_set:
.LFB66:
	.loc 1 1026 0
.LVL217:
	entry	sp, 32
.LCFI45:
	.loc 1 1030 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	bredr_txpwr_set
.LVL218:
	.loc 1 1032 0
	beqz.n	a10, .L119
	.loc 1 1034 0
	bnei	a10, -1, .L120
	.loc 1 1035 0
	movi	a2, 0x102
.LVL219:
	retw.n
.LVL220:
.L119:
	.loc 1 1033 0
	movi.n	a2, 0
.LVL221:
	retw.n
.LVL222:
.L120:
	.loc 1 1037 0
	movi	a2, 0x103
.LVL223:
	.loc 1 1041 0
	retw.n
.LFE66:
	.size	esp_bredr_tx_power_set, .-esp_bredr_tx_power_set
	.section	.text.esp_bredr_tx_power_get,"ax",@progbits
	.align	4
	.global	esp_bredr_tx_power_get
	.type	esp_bredr_tx_power_get, @function
esp_bredr_tx_power_get:
.LFB67:
	.loc 1 1044 0
.LVL224:
	entry	sp, 32
.LCFI46:
	.loc 1 1045 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	bredr_txpwr_get
.LVL225:
	beqz.n	a10, .L122
	.loc 1 1046 0
	movi	a10, 0x102
.L122:
	.loc 1 1050 0
	mov.n	a2, a10
.LVL226:
	retw.n
.LFE67:
	.size	esp_bredr_tx_power_get, .-esp_bredr_tx_power_get
	.section	.text.esp_bt_sleep_enable,"ax",@progbits
	.literal_position
	.literal .LC41, btdm_controller_status
	.align	4
	.global	esp_bt_sleep_enable
	.type	esp_bt_sleep_enable, @function
esp_bt_sleep_enable:
.LFB68:
	.loc 1 1053 0
	entry	sp, 32
.LCFI47:
	.loc 1 1055 0
	l32r	a8, .LC41
	l32i.n	a8, a8, 0
	bnei	a8, 2, .L126
	.loc 1 1058 0
	call8	btdm_controller_get_sleep_mode
.LVL227:
	bnei	a10, 1, .L125
	.loc 1 1059 0
	movi.n	a10, 0
	call8	esp_modem_sleep_register
.LVL228:
	.loc 1 1060 0
	movi.n	a10, 1
	call8	esp_modem_sleep_register
.LVL229:
	.loc 1 1061 0
	movi.n	a10, 1
	call8	btdm_controller_enable_sleep
.LVL230:
	.loc 1 1062 0
	movi.n	a2, 0
	retw.n
.LVL231:
.L125:
	.loc 1 1063 0
	call8	btdm_controller_get_sleep_mode
.LVL232:
	bnei	a10, 2, .L127
	.loc 1 1064 0
	movi.n	a10, 0
	call8	esp_modem_sleep_register
.LVL233:
	.loc 1 1065 0
	movi.n	a10, 1
	call8	btdm_controller_enable_sleep
.LVL234:
	.loc 1 1066 0
	movi.n	a2, 0
	retw.n
.LVL235:
.L126:
	.loc 1 1056 0
	movi	a2, 0x103
	retw.n
.L127:
	.loc 1 1068 0
	movi	a2, 0x106
	.loc 1 1072 0
	retw.n
.LFE68:
	.size	esp_bt_sleep_enable, .-esp_bt_sleep_enable
	.section	.text.esp_bt_sleep_disable,"ax",@progbits
	.literal_position
	.literal .LC42, btdm_controller_status
	.align	4
	.global	esp_bt_sleep_disable
	.type	esp_bt_sleep_disable, @function
esp_bt_sleep_disable:
.LFB69:
	.loc 1 1075 0
	entry	sp, 32
.LCFI48:
	.loc 1 1077 0
	l32r	a8, .LC42
	l32i.n	a8, a8, 0
	bnei	a8, 2, .L131
	.loc 1 1080 0
	call8	btdm_controller_get_sleep_mode
.LVL236:
	bnei	a10, 1, .L130
	.loc 1 1081 0
	movi.n	a10, 0
	call8	esp_modem_sleep_deregister
.LVL237:
	.loc 1 1082 0
	movi.n	a10, 1
	call8	esp_modem_sleep_deregister
.LVL238:
	.loc 1 1083 0
	movi.n	a10, 0
	call8	btdm_controller_enable_sleep
.LVL239:
	.loc 1 1084 0
	movi.n	a2, 0
	retw.n
.LVL240:
.L130:
	.loc 1 1085 0
	call8	btdm_controller_get_sleep_mode
.LVL241:
	bnei	a10, 2, .L132
	.loc 1 1086 0
	movi.n	a10, 0
	call8	esp_modem_sleep_deregister
.LVL242:
	.loc 1 1087 0
	movi.n	a10, 0
	call8	btdm_controller_enable_sleep
.LVL243:
	.loc 1 1088 0
	movi.n	a2, 0
	retw.n
.LVL244:
.L131:
	.loc 1 1078 0
	movi	a2, 0x103
	retw.n
.L132:
	.loc 1 1090 0
	movi	a2, 0x106
	.loc 1 1094 0
	retw.n
.LFE69:
	.size	esp_bt_sleep_disable, .-esp_bt_sleep_disable
	.section	.text.esp_bt_controller_is_sleeping,"ax",@progbits
	.literal_position
	.literal .LC43, btdm_controller_status
	.align	4
	.global	esp_bt_controller_is_sleeping
	.type	esp_bt_controller_is_sleeping, @function
esp_bt_controller_is_sleeping:
.LFB70:
	.loc 1 1097 0
	entry	sp, 32
.LCFI49:
	.loc 1 1098 0
	l32r	a2, .LC43
	l32i.n	a2, a2, 0
	bnei	a2, 2, .L135
	.loc 1 1099 0 discriminator 1
	call8	btdm_controller_get_sleep_mode
.LVL245:
	.loc 1 1098 0 discriminator 1
	bnei	a10, 1, .L136
	.loc 1 1103 0
	call8	btdm_power_state_active
.LVL246:
	movi.n	a2, 1
	xor	a10, a10, a2
	extui	a2, a10, 0, 8
	retw.n
.L135:
	.loc 1 1100 0
	movi.n	a2, 0
	retw.n
.L136:
	movi.n	a2, 0
	.loc 1 1104 0
	retw.n
.LFE70:
	.size	esp_bt_controller_is_sleeping, .-esp_bt_controller_is_sleeping
	.section	.text.esp_bt_controller_wakeup_request,"ax",@progbits
	.literal_position
	.literal .LC44, btdm_controller_status
	.align	4
	.global	esp_bt_controller_wakeup_request
	.type	esp_bt_controller_wakeup_request, @function
esp_bt_controller_wakeup_request:
.LFB71:
	.loc 1 1107 0
	entry	sp, 32
.LCFI50:
	.loc 1 1108 0
	l32r	a8, .LC44
	l32i.n	a8, a8, 0
	bnei	a8, 2, .L137
	.loc 1 1109 0 discriminator 1
	call8	btdm_controller_get_sleep_mode
.LVL247:
	.loc 1 1108 0 discriminator 1
	bnei	a10, 1, .L137
	.loc 1 1113 0
	call8	btdm_wakeup_request
.LVL248:
.L137:
	retw.n
.LFE71:
	.size	esp_bt_controller_wakeup_request, .-esp_bt_controller_wakeup_request
	.section	.text.esp_bredr_sco_datapath_set,"ax",@progbits
	.literal_position
	.literal .LC45, btdm_controller_status
	.align	4
	.global	esp_bredr_sco_datapath_set
	.type	esp_bredr_sco_datapath_set, @function
esp_bredr_sco_datapath_set:
.LFB72:
	.loc 1 1117 0
.LVL249:
	entry	sp, 32
.LCFI51:
	.loc 1 1118 0
	l32r	a8, .LC45
	l32i.n	a8, a8, 0
	bnei	a8, 2, .L141
	.loc 1 1121 0
	extui	a10, a2, 0, 8
	call8	bredr_sco_datapath_set
.LVL250:
	.loc 1 1122 0
	movi.n	a2, 0
.LVL251:
	retw.n
.LVL252:
.L141:
	.loc 1 1119 0
	movi	a2, 0x103
.LVL253:
	.loc 1 1123 0
	retw.n
.LFE72:
	.size	esp_bredr_sco_datapath_set, .-esp_bredr_sco_datapath_set
	.section	.rodata.__func__$6089,"a",@progbits
	.align	4
	.type	__func__$6089, @object
	.size	__func__$6089, 30
__func__$6089:
	.string	"esp_bt_controller_mem_release"
	.section	.data.osi_funcs,"aw",@progbits
	.align	4
	.type	osi_funcs, @object
	.size	osi_funcs, 144
osi_funcs:
	.word	xt_set_interrupt_handler
	.word	xt_ints_on
	.word	interrupt_disable
	.word	interrupt_restore
	.word	vPortYield
	.word	task_yield_from_isr
	.word	semphr_create_wrapper
	.word	semphr_delete_wrapper
	.word	semphr_take_from_isr_wrapper
	.word	semphr_give_from_isr_wrapper
	.word	semphr_take_wrapper
	.word	semphr_give_wrapper
	.word	mutex_create_wrapper
	.word	mutex_delete_wrapper
	.word	mutex_lock_wrapper
	.word	mutex_unlock_wrapper
	.word	queue_create_wrapper
	.word	queue_delete_wrapper
	.word	queue_send_wrapper
	.word	queue_send_from_isr_wrapper
	.word	queue_recv_wrapper
	.word	queue_recv_from_isr_wrapper
	.word	task_create_wrapper
	.word	task_delete_wrapper
	.word	is_in_isr_wrapper
	.word	cause_sw_intr_to_core_wrapper
	.word	malloc
	.word	free
	.word	read_mac_wrapper
	.word	srand_wrapper
	.word	rand_wrapper
	.word	btdm_lpcycles_2_us
	.word	btdm_us_2_lpcycles
	.word	btdm_sleep_check_duration
	.word	btdm_sleep_enter_wrapper
	.word	btdm_sleep_exit_wrapper
	.section	.bss.btdm_lpcycle_us_frac,"aw",@nobits
	.type	btdm_lpcycle_us_frac, @object
	.size	btdm_lpcycle_us_frac, 1
btdm_lpcycle_us_frac:
	.zero	1
	.section	.bss.btdm_lpcycle_us,"aw",@nobits
	.align	4
	.type	btdm_lpcycle_us, @object
	.size	btdm_lpcycle_us, 4
btdm_lpcycle_us:
	.zero	4
	.section	.data.global_int_mux,"aw",@progbits
	.align	4
	.type	global_int_mux, @object
	.size	global_int_mux, 8
global_int_mux:
	.word	-1287651329
	.word	0
	.section	.bss.btdm_controller_status,"aw",@nobits
	.align	4
	.type	btdm_controller_status, @object
	.size	btdm_controller_status, 4
btdm_controller_status:
	.zero	4
	.section	.bss.btdm_bb_init_flag,"aw",@nobits
	.type	btdm_bb_init_flag, @object
	.size	btdm_bb_init_flag, 1
btdm_bb_init_flag:
	.zero	1
	.section	.data.btdm_dram_available_region,"aw",@progbits
	.align	4
	.type	btdm_dram_available_region, @object
	.size	btdm_dram_available_region, 96
btdm_dram_available_region:
	.word	3
	.word	1073407712
	.word	1073413904
	.word	3
	.word	1073414144
	.word	1073416616
	.word	1
	.word	1073416616
	.word	1073421788
	.word	3
	.word	1073421788
	.word	1073424176
	.word	2
	.word	1073424176
	.word	1073446912
	.word	3
	.word	1073446912
	.word	1073462056
	.word	2
	.word	1073462056
	.word	1073470248
	.word	3
	.word	1073470248
	.word	1073479680
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
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI0-.LFB43
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI1-.LFB46
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x4
	.4byte	.LCFI2-.LFB48
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.byte	0x4
	.4byte	.LCFI3-.LFB49
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.byte	0x4
	.4byte	.LCFI4-.LFB50
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.byte	0x4
	.4byte	.LCFI5-.LFB56
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.byte	0x4
	.4byte	.LCFI6-.LFB52
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.byte	0x4
	.4byte	.LCFI7-.LFB51
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x4
	.4byte	.LCFI8-.LFB47
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI9-.LFB45
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI10-.LFB44
	.byte	0xe
	.uleb128 0x20
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
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI12-.LFB41
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI13-.LFB40
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI14-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI15-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI16-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI17-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI18-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI19-.LFB37
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI20-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI21-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI22-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI23-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI24-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI25-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI26-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE52:
.LSFDE54:
	.4byte	.LEFDE54-.LASFDE54
.LASFDE54:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI27-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE54:
.LSFDE56:
	.4byte	.LEFDE56-.LASFDE56
.LASFDE56:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI28-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE56:
.LSFDE58:
	.4byte	.LEFDE58-.LASFDE58
.LASFDE58:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI29-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE58:
.LSFDE60:
	.4byte	.LEFDE60-.LASFDE60
.LASFDE60:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI30-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE60:
.LSFDE62:
	.4byte	.LEFDE62-.LASFDE62
.LASFDE62:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI31-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE62:
.LSFDE64:
	.4byte	.LEFDE64-.LASFDE64
.LASFDE64:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI32-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE64:
.LSFDE66:
	.4byte	.LEFDE66-.LASFDE66
.LASFDE66:
	.4byte	.Lframe0
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.byte	0x4
	.4byte	.LCFI33-.LFB57
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE66:
.LSFDE68:
	.4byte	.LEFDE68-.LASFDE68
.LASFDE68:
	.4byte	.Lframe0
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.byte	0x4
	.4byte	.LCFI34-.LFB53
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE68:
.LSFDE70:
	.4byte	.LEFDE70-.LASFDE70
.LASFDE70:
	.4byte	.Lframe0
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.byte	0x4
	.4byte	.LCFI35-.LFB54
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE70:
.LSFDE72:
	.4byte	.LEFDE72-.LASFDE72
.LASFDE72:
	.4byte	.Lframe0
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.byte	0x4
	.4byte	.LCFI36-.LFB55
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE72:
.LSFDE74:
	.4byte	.LEFDE74-.LASFDE74
.LASFDE74:
	.4byte	.Lframe0
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.byte	0x4
	.4byte	.LCFI37-.LFB58
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE74:
.LSFDE76:
	.4byte	.LEFDE76-.LASFDE76
.LASFDE76:
	.4byte	.Lframe0
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.byte	0x4
	.4byte	.LCFI38-.LFB59
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE76:
.LSFDE78:
	.4byte	.LEFDE78-.LASFDE78
.LASFDE78:
	.4byte	.Lframe0
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.byte	0x4
	.4byte	.LCFI39-.LFB60
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE78:
.LSFDE80:
	.4byte	.LEFDE80-.LASFDE80
.LASFDE80:
	.4byte	.Lframe0
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.byte	0x4
	.4byte	.LCFI40-.LFB61
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE80:
.LSFDE82:
	.4byte	.LEFDE82-.LASFDE82
.LASFDE82:
	.4byte	.Lframe0
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.byte	0x4
	.4byte	.LCFI41-.LFB62
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE82:
.LSFDE84:
	.4byte	.LEFDE84-.LASFDE84
.LASFDE84:
	.4byte	.Lframe0
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.byte	0x4
	.4byte	.LCFI42-.LFB63
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE84:
.LSFDE86:
	.4byte	.LEFDE86-.LASFDE86
.LASFDE86:
	.4byte	.Lframe0
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.byte	0x4
	.4byte	.LCFI43-.LFB64
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE86:
.LSFDE88:
	.4byte	.LEFDE88-.LASFDE88
.LASFDE88:
	.4byte	.Lframe0
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.byte	0x4
	.4byte	.LCFI44-.LFB65
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE88:
.LSFDE90:
	.4byte	.LEFDE90-.LASFDE90
.LASFDE90:
	.4byte	.Lframe0
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.byte	0x4
	.4byte	.LCFI45-.LFB66
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE90:
.LSFDE92:
	.4byte	.LEFDE92-.LASFDE92
.LASFDE92:
	.4byte	.Lframe0
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.byte	0x4
	.4byte	.LCFI46-.LFB67
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE92:
.LSFDE94:
	.4byte	.LEFDE94-.LASFDE94
.LASFDE94:
	.4byte	.Lframe0
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.byte	0x4
	.4byte	.LCFI47-.LFB68
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE94:
.LSFDE96:
	.4byte	.LEFDE96-.LASFDE96
.LASFDE96:
	.4byte	.Lframe0
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.byte	0x4
	.4byte	.LCFI48-.LFB69
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE96:
.LSFDE98:
	.4byte	.LEFDE98-.LASFDE98
.LASFDE98:
	.4byte	.Lframe0
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.byte	0x4
	.4byte	.LCFI49-.LFB70
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE98:
.LSFDE100:
	.4byte	.LEFDE100-.LASFDE100
.LASFDE100:
	.4byte	.Lframe0
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.byte	0x4
	.4byte	.LCFI50-.LFB71
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE100:
.LSFDE102:
	.4byte	.LEFDE102-.LASFDE102
.LASFDE102:
	.4byte	.Lframe0
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.byte	0x4
	.4byte	.LCFI51-.LFB72
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE102:
	.text
.Letext0:
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/xtensa_api.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/queue.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_system.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_phy_init.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/include/esp_bt.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/periph_defs.h"
	.file 14 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/periph_ctrl.h"
	.file 15 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_ipc.h"
	.file 16 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
	.file 17 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/esp_heap_caps_init.h"
	.file 18 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1f69
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF336
	.byte	0xc
	.4byte	.LASF337
	.4byte	.LASF338
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x3
	.byte	0x12
	.4byte	0x53
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x3
	.byte	0x16
	.4byte	0x3a
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x3
	.byte	0x19
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x3
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x1e
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0x31
	.4byte	0x33
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbc
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x6
	.byte	0x4
	.4byte	0xca
	.uleb128 0x8
	.4byte	0xbd
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x4
	.byte	0x15
	.4byte	0x48
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x4
	.byte	0x21
	.4byte	0x61
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x4
	.byte	0x2c
	.4byte	0x6c
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x4
	.byte	0x2d
	.4byte	0x77
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x4
	.byte	0x39
	.4byte	0x89
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x4
	.byte	0xa9
	.4byte	0x94
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x5
	.byte	0x18
	.4byte	0xe5
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF24
	.uleb128 0x6
	.byte	0x4
	.4byte	0x129
	.uleb128 0x9
	.4byte	0x134
	.uleb128 0xa
	.4byte	0xad
	.byte	0
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x6
	.byte	0x6f
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x6
	.byte	0x76
	.4byte	0xf0
	.uleb128 0xb
	.byte	0x8
	.byte	0x6
	.byte	0x82
	.4byte	0x16b
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x6
	.byte	0x8a
	.4byte	0xf0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x6
	.byte	0x8f
	.4byte	0xf0
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x6
	.byte	0x94
	.4byte	0x14a
	.uleb128 0x4
	.4byte	.LASF30
	.byte	0x7
	.byte	0x25
	.4byte	0x123
	.uleb128 0xd
	.byte	0x4
	.4byte	0x2c
	.byte	0x9
	.byte	0x1b
	.4byte	0x1a6
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF34
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF35
	.byte	0x8
	.byte	0x58
	.4byte	0xad
	.uleb128 0xd
	.byte	0x4
	.4byte	0x2c
	.byte	0xa
	.byte	0x37
	.4byte	0x1ee
	.uleb128 0xe
	.4byte	.LASF36
	.byte	0
	.uleb128 0xe
	.4byte	.LASF37
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF38
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF39
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0x6
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x2c
	.byte	0xa
	.byte	0x53
	.4byte	0x213
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0
	.uleb128 0xe
	.4byte	.LASF45
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF46
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF47
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x14
	.byte	0xb
	.byte	0x21
	.4byte	0x288
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0xb
	.byte	0x22
	.4byte	0xda
	.byte	0
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0xb
	.byte	0x23
	.4byte	0xcf
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0xb
	.byte	0x24
	.4byte	0xcf
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0xb
	.byte	0x25
	.4byte	0xf0
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0xb
	.byte	0x26
	.4byte	0xcf
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0xb
	.byte	0x27
	.4byte	0xda
	.byte	0xa
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0xb
	.byte	0x28
	.4byte	0xda
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0xb
	.byte	0x29
	.4byte	0xda
	.byte	0xe
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0xb
	.byte	0x2a
	.4byte	0xf0
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.4byte	.LASF57
	.byte	0xb
	.byte	0x2b
	.4byte	0x213
	.uleb128 0xd
	.byte	0x4
	.4byte	0x2c
	.byte	0xb
	.byte	0x6d
	.4byte	0x2b8
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF60
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF61
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF62
	.byte	0xb
	.byte	0x72
	.4byte	0x293
	.uleb128 0xd
	.byte	0x4
	.4byte	0x2c
	.byte	0xb
	.byte	0x77
	.4byte	0x2e8
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF67
	.byte	0xb
	.byte	0x7c
	.4byte	0x2c3
	.uleb128 0xd
	.byte	0x4
	.4byte	0x2c
	.byte	0xb
	.byte	0x89
	.4byte	0x34e
	.uleb128 0xe
	.4byte	.LASF68
	.byte	0
	.uleb128 0xe
	.4byte	.LASF69
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF70
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF71
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF72
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF73
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF74
	.byte	0x6
	.uleb128 0xe
	.4byte	.LASF75
	.byte	0x7
	.uleb128 0xe
	.4byte	.LASF76
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF77
	.byte	0x9
	.uleb128 0xe
	.4byte	.LASF78
	.byte	0xa
	.uleb128 0xe
	.4byte	.LASF79
	.byte	0xb
	.uleb128 0xe
	.4byte	.LASF80
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.4byte	.LASF81
	.byte	0xb
	.byte	0x97
	.4byte	0x2f3
	.uleb128 0xd
	.byte	0x4
	.4byte	0x2c
	.byte	0xb
	.byte	0x9c
	.4byte	0x3c6
	.uleb128 0xe
	.4byte	.LASF82
	.byte	0
	.uleb128 0xe
	.4byte	.LASF83
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF84
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF85
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF86
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF87
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF88
	.byte	0x6
	.uleb128 0xe
	.4byte	.LASF89
	.byte	0x7
	.uleb128 0xe
	.4byte	.LASF90
	.byte	0
	.uleb128 0xe
	.4byte	.LASF91
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF92
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF93
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF94
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF95
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF96
	.byte	0x6
	.uleb128 0xe
	.4byte	.LASF97
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.4byte	.LASF98
	.byte	0xb
	.byte	0xad
	.4byte	0x359
	.uleb128 0xd
	.byte	0x4
	.4byte	0x2c
	.byte	0xb
	.byte	0xb2
	.4byte	0x3ea
	.uleb128 0xe
	.4byte	.LASF99
	.byte	0
	.uleb128 0xe
	.4byte	.LASF100
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF101
	.byte	0xb
	.byte	0xb5
	.4byte	0x3d1
	.uleb128 0xf
	.4byte	.LASF143
	.byte	0x8
	.byte	0xb
	.2byte	0x113
	.4byte	0x41d
	.uleb128 0x10
	.4byte	.LASF102
	.byte	0xb
	.2byte	0x114
	.4byte	0xb6
	.byte	0
	.uleb128 0x10
	.4byte	.LASF103
	.byte	0xb
	.2byte	0x115
	.4byte	0x437
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.4byte	0x33
	.4byte	0x431
	.uleb128 0xa
	.4byte	0x431
	.uleb128 0xa
	.4byte	0xda
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xcf
	.uleb128 0x6
	.byte	0x4
	.4byte	0x41d
	.uleb128 0x12
	.4byte	.LASF104
	.byte	0xb
	.2byte	0x116
	.4byte	0x3f5
	.uleb128 0xd
	.byte	0x4
	.4byte	0x2c
	.byte	0xc
	.byte	0x1f
	.4byte	0x47a
	.uleb128 0xe
	.4byte	.LASF105
	.byte	0
	.uleb128 0xe
	.4byte	.LASF106
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF107
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF108
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF109
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF110
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x2c
	.byte	0xd
	.byte	0x16
	.4byte	0x547
	.uleb128 0xe
	.4byte	.LASF111
	.byte	0
	.uleb128 0xe
	.4byte	.LASF112
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF113
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF114
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF115
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF116
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF117
	.byte	0x6
	.uleb128 0xe
	.4byte	.LASF118
	.byte	0x7
	.uleb128 0xe
	.4byte	.LASF119
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF120
	.byte	0x9
	.uleb128 0xe
	.4byte	.LASF121
	.byte	0xa
	.uleb128 0xe
	.4byte	.LASF122
	.byte	0xb
	.uleb128 0xe
	.4byte	.LASF123
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF124
	.byte	0xd
	.uleb128 0xe
	.4byte	.LASF125
	.byte	0xe
	.uleb128 0xe
	.4byte	.LASF126
	.byte	0xf
	.uleb128 0xe
	.4byte	.LASF127
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF128
	.byte	0x11
	.uleb128 0xe
	.4byte	.LASF129
	.byte	0x12
	.uleb128 0xe
	.4byte	.LASF130
	.byte	0x13
	.uleb128 0xe
	.4byte	.LASF131
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF132
	.byte	0x15
	.uleb128 0xe
	.4byte	.LASF133
	.byte	0x16
	.uleb128 0xe
	.4byte	.LASF134
	.byte	0x17
	.uleb128 0xe
	.4byte	.LASF135
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF136
	.byte	0x19
	.uleb128 0xe
	.4byte	.LASF137
	.byte	0x1a
	.uleb128 0xe
	.4byte	.LASF138
	.byte	0x1b
	.uleb128 0xe
	.4byte	.LASF139
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF140
	.byte	0x1d
	.uleb128 0xe
	.4byte	.LASF141
	.byte	0x1e
	.uleb128 0xe
	.4byte	.LASF142
	.byte	0x1f
	.byte	0
	.uleb128 0x13
	.4byte	.LASF144
	.byte	0x8
	.byte	0x1
	.byte	0x59
	.4byte	0x56c
	.uleb128 0xc
	.4byte	.LASF102
	.byte	0x1
	.byte	0x5a
	.4byte	0xb6
	.byte	0
	.uleb128 0xc
	.4byte	.LASF103
	.byte	0x1
	.byte	0x5b
	.4byte	0x437
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF145
	.byte	0x1
	.byte	0x5c
	.4byte	0x547
	.uleb128 0xb
	.byte	0xc
	.byte	0x1
	.byte	0x7b
	.4byte	0x5a4
	.uleb128 0xc
	.4byte	.LASF146
	.byte	0x1
	.byte	0x7c
	.4byte	0x2b8
	.byte	0
	.uleb128 0xc
	.4byte	.LASF147
	.byte	0x1
	.byte	0x7d
	.4byte	0x106
	.byte	0x4
	.uleb128 0x14
	.string	"end"
	.byte	0x1
	.byte	0x7e
	.4byte	0x106
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF148
	.byte	0x1
	.byte	0x7f
	.4byte	0x577
	.uleb128 0x13
	.4byte	.LASF149
	.byte	0x90
	.byte	0x1
	.byte	0x9b
	.4byte	0x76c
	.uleb128 0xc
	.4byte	.LASF150
	.byte	0x1
	.byte	0x9c
	.4byte	0x785
	.byte	0
	.uleb128 0xc
	.4byte	.LASF151
	.byte	0x1
	.byte	0x9d
	.4byte	0x796
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF152
	.byte	0x1
	.byte	0x9e
	.4byte	0xb6
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF153
	.byte	0x1
	.byte	0x9f
	.4byte	0xb6
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF154
	.byte	0x1
	.byte	0xa0
	.4byte	0xb6
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF155
	.byte	0x1
	.byte	0xa1
	.4byte	0xb6
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF156
	.byte	0x1
	.byte	0xa2
	.4byte	0x7b0
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF157
	.byte	0x1
	.byte	0xa3
	.4byte	0x123
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF158
	.byte	0x1
	.byte	0xa4
	.4byte	0x7ca
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF159
	.byte	0x1
	.byte	0xa5
	.4byte	0x7ca
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF160
	.byte	0x1
	.byte	0xa6
	.4byte	0x7e4
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF161
	.byte	0x1
	.byte	0xa7
	.4byte	0x7f9
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF162
	.byte	0x1
	.byte	0xa8
	.4byte	0x804
	.byte	0x30
	.uleb128 0xc
	.4byte	.LASF163
	.byte	0x1
	.byte	0xa9
	.4byte	0x123
	.byte	0x34
	.uleb128 0xc
	.4byte	.LASF164
	.byte	0x1
	.byte	0xaa
	.4byte	0x7f9
	.byte	0x38
	.uleb128 0xc
	.4byte	.LASF165
	.byte	0x1
	.byte	0xab
	.4byte	0x7f9
	.byte	0x3c
	.uleb128 0xc
	.4byte	.LASF166
	.byte	0x1
	.byte	0xac
	.4byte	0x7b0
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF167
	.byte	0x1
	.byte	0xad
	.4byte	0x123
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF168
	.byte	0x1
	.byte	0xae
	.4byte	0x823
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF169
	.byte	0x1
	.byte	0xaf
	.4byte	0x842
	.byte	0x4c
	.uleb128 0xc
	.4byte	.LASF170
	.byte	0x1
	.byte	0xb0
	.4byte	0x823
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF171
	.byte	0x1
	.byte	0xb1
	.4byte	0x842
	.byte	0x54
	.uleb128 0xc
	.4byte	.LASF172
	.byte	0x1
	.byte	0xb2
	.4byte	0x875
	.byte	0x58
	.uleb128 0xc
	.4byte	.LASF173
	.byte	0x1
	.byte	0xb3
	.4byte	0x123
	.byte	0x5c
	.uleb128 0xc
	.4byte	.LASF174
	.byte	0x1
	.byte	0xb4
	.4byte	0x880
	.byte	0x60
	.uleb128 0xc
	.4byte	.LASF175
	.byte	0x1
	.byte	0xb5
	.4byte	0x89a
	.byte	0x64
	.uleb128 0xc
	.4byte	.LASF176
	.byte	0x1
	.byte	0xb6
	.4byte	0x8af
	.byte	0x68
	.uleb128 0xc
	.4byte	.LASF177
	.byte	0x1
	.byte	0xb7
	.4byte	0x123
	.byte	0x6c
	.uleb128 0xc
	.4byte	.LASF178
	.byte	0x1
	.byte	0xb8
	.4byte	0x8c4
	.byte	0x70
	.uleb128 0xc
	.4byte	.LASF179
	.byte	0x1
	.byte	0xb9
	.4byte	0x796
	.byte	0x74
	.uleb128 0xc
	.4byte	.LASF180
	.byte	0x1
	.byte	0xba
	.4byte	0x8cf
	.byte	0x78
	.uleb128 0xc
	.4byte	.LASF181
	.byte	0x1
	.byte	0xbb
	.4byte	0x8e4
	.byte	0x7c
	.uleb128 0xc
	.4byte	.LASF182
	.byte	0x1
	.byte	0xbc
	.4byte	0x8e4
	.byte	0x80
	.uleb128 0xc
	.4byte	.LASF183
	.byte	0x1
	.byte	0xbd
	.4byte	0x8ff
	.byte	0x84
	.uleb128 0xc
	.4byte	.LASF184
	.byte	0x1
	.byte	0xbe
	.4byte	0xb6
	.byte	0x88
	.uleb128 0xc
	.4byte	.LASF185
	.byte	0x1
	.byte	0xbf
	.4byte	0xb6
	.byte	0x8c
	.byte	0
	.uleb128 0x11
	.4byte	0x176
	.4byte	0x785
	.uleb128 0xa
	.4byte	0x33
	.uleb128 0xa
	.4byte	0x176
	.uleb128 0xa
	.4byte	0xad
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x76c
	.uleb128 0x9
	.4byte	0x796
	.uleb128 0xa
	.4byte	0x2c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x78b
	.uleb128 0x11
	.4byte	0xad
	.4byte	0x7b0
	.uleb128 0xa
	.4byte	0xf0
	.uleb128 0xa
	.4byte	0xf0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x79c
	.uleb128 0x11
	.4byte	0xe5
	.4byte	0x7ca
	.uleb128 0xa
	.4byte	0xad
	.uleb128 0xa
	.4byte	0xad
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7b6
	.uleb128 0x11
	.4byte	0xe5
	.4byte	0x7e4
	.uleb128 0xa
	.4byte	0xad
	.uleb128 0xa
	.4byte	0xf0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7d0
	.uleb128 0x11
	.4byte	0xe5
	.4byte	0x7f9
	.uleb128 0xa
	.4byte	0xad
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7ea
	.uleb128 0x15
	.4byte	0xad
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7ff
	.uleb128 0x11
	.4byte	0xe5
	.4byte	0x823
	.uleb128 0xa
	.4byte	0xad
	.uleb128 0xa
	.4byte	0xad
	.uleb128 0xa
	.4byte	0xf0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x80a
	.uleb128 0x11
	.4byte	0xe5
	.4byte	0x842
	.uleb128 0xa
	.4byte	0xad
	.uleb128 0xa
	.4byte	0xad
	.uleb128 0xa
	.4byte	0xad
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x829
	.uleb128 0x11
	.4byte	0xe5
	.4byte	0x875
	.uleb128 0xa
	.4byte	0xad
	.uleb128 0xa
	.4byte	0xc4
	.uleb128 0xa
	.4byte	0xf0
	.uleb128 0xa
	.4byte	0xad
	.uleb128 0xa
	.4byte	0xf0
	.uleb128 0xa
	.4byte	0xad
	.uleb128 0xa
	.4byte	0xf0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x848
	.uleb128 0x15
	.4byte	0x11c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x87b
	.uleb128 0x11
	.4byte	0x33
	.4byte	0x89a
	.uleb128 0xa
	.4byte	0x33
	.uleb128 0xa
	.4byte	0x33
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x886
	.uleb128 0x11
	.4byte	0xad
	.4byte	0x8af
	.uleb128 0xa
	.4byte	0xf0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8a0
	.uleb128 0x11
	.4byte	0xe5
	.4byte	0x8c4
	.uleb128 0xa
	.4byte	0x431
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8b5
	.uleb128 0x15
	.4byte	0x33
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8ca
	.uleb128 0x11
	.4byte	0xf0
	.4byte	0x8e4
	.uleb128 0xa
	.4byte	0xf0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8d5
	.uleb128 0x11
	.4byte	0x11c
	.4byte	0x8f9
	.uleb128 0xa
	.4byte	0x8f9
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xf0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8ea
	.uleb128 0x16
	.4byte	.LASF339
	.byte	0x2
	.byte	0xce
	.4byte	0xf0
	.byte	0x3
	.4byte	0x920
	.uleb128 0x17
	.string	"id"
	.byte	0x2
	.byte	0xcf
	.4byte	0x33
	.byte	0
	.uleb128 0x18
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x225
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x96f
	.uleb128 0x19
	.string	"arg"
	.byte	0x1
	.2byte	0x225
	.4byte	0xad
	.4byte	.LLST0
	.uleb128 0x1a
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x228
	.4byte	0xf0
	.4byte	.LLST1
	.uleb128 0x1b
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x1c
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x229
	.4byte	0x33
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x23e
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x994
	.uleb128 0x1d
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x23e
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x248
	.4byte	0xf0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9ce
	.uleb128 0x1f
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x248
	.4byte	0xf0
	.4byte	.LLST2
	.uleb128 0x20
	.string	"us"
	.byte	0x1
	.2byte	0x24c
	.4byte	0xfb
	.4byte	.LLST3
	.byte	0
	.uleb128 0x21
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x254
	.4byte	0xf0
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa04
	.uleb128 0x19
	.string	"us"
	.byte	0x1
	.2byte	0x254
	.4byte	0xf0
	.4byte	.LLST4
	.uleb128 0x22
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x259
	.4byte	0xfb
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x25e
	.4byte	0x11c
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa2f
	.uleb128 0x1f
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x25e
	.4byte	0x8f9
	.4byte	.LLST5
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x2b9
	.4byte	0xf0
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa5a
	.uleb128 0x1a
	.4byte	.LASF197
	.byte	0x1
	.2byte	0x2bb
	.4byte	0xf0
	.4byte	.LLST6
	.byte	0
	.uleb128 0x18
	.4byte	.LASF198
	.byte	0x1
	.2byte	0x274
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xacb
	.uleb128 0x23
	.4byte	.LVL21
	.4byte	0x1d1c
	.uleb128 0x24
	.4byte	.LVL22
	.4byte	0x1d27
	.4byte	0xa8c
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x24
	.4byte	.LVL23
	.4byte	0x1d27
	.4byte	0xa9f
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x23
	.4byte	.LVL24
	.4byte	0x1d1c
	.uleb128 0x24
	.4byte	.LVL25
	.4byte	0x1d32
	.4byte	0xabb
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x4e
	.byte	0
	.uleb128 0x26
	.4byte	.LVL26
	.4byte	0x1d27
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x268
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb3c
	.uleb128 0x23
	.4byte	.LVL27
	.4byte	0x1d1c
	.uleb128 0x24
	.4byte	.LVL28
	.4byte	0x1d3d
	.4byte	0xafd
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x24
	.4byte	.LVL29
	.4byte	0x1d3d
	.4byte	0xb10
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x23
	.4byte	.LVL30
	.4byte	0x1d1c
	.uleb128 0x24
	.4byte	.LVL31
	.4byte	0x1d3d
	.4byte	0xb2c
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.4byte	.LVL32
	.4byte	0x1d48
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x4e
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x243
	.4byte	0x33
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb60
	.uleb128 0x23
	.4byte	.LVL33
	.4byte	0x1d53
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x239
	.4byte	0xe5
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xba0
	.uleb128 0x19
	.string	"mac"
	.byte	0x1
	.2byte	0x239
	.4byte	0x431
	.4byte	.LLST7
	.uleb128 0x26
	.4byte	.LVL35
	.4byte	0x1d5e
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF202
	.byte	0x1
	.2byte	0x22c
	.4byte	0x33
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc44
	.uleb128 0x1f
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x22c
	.4byte	0x33
	.4byte	.LLST8
	.uleb128 0x1d
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x22c
	.4byte	0x33
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.string	"err"
	.byte	0x1
	.2byte	0x22e
	.4byte	0x111
	.4byte	.LLST9
	.uleb128 0x27
	.4byte	0x905
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.byte	0x1
	.2byte	0x230
	.4byte	0xc10
	.uleb128 0x1b
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x28
	.4byte	0x915
	.4byte	.LLST10
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL40
	.4byte	0x920
	.4byte	0xc24
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL43
	.4byte	0x1d69
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	cause_sw_intr
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x220
	.4byte	0x11c
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc68
	.uleb128 0x23
	.4byte	.LVL45
	.4byte	0x1d74
	.byte	0
	.uleb128 0x18
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x21b
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc9d
	.uleb128 0x1d
	.4byte	.LASF206
	.byte	0x1
	.2byte	0x21b
	.4byte	0xad
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x26
	.4byte	.LVL47
	.4byte	0x1d7f
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF207
	.byte	0x1
	.2byte	0x216
	.4byte	0xe5
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd26
	.uleb128 0x1f
	.4byte	.LASF208
	.byte	0x1
	.2byte	0x216
	.4byte	0xad
	.4byte	.LLST11
	.uleb128 0x1d
	.4byte	.LASF209
	.byte	0x1
	.2byte	0x216
	.4byte	0xc4
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x216
	.4byte	0xf0
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1d
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x216
	.4byte	0xad
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1d
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x216
	.4byte	0xf0
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1d
	.4byte	.LASF206
	.byte	0x1
	.2byte	0x216
	.4byte	0xad
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x1d
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x216
	.4byte	0xf0
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.4byte	.LVL49
	.4byte	0x1d8b
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF213
	.byte	0x1
	.2byte	0x211
	.4byte	0xe5
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd89
	.uleb128 0x1f
	.4byte	.LASF214
	.byte	0x1
	.2byte	0x211
	.4byte	0xad
	.4byte	.LLST12
	.uleb128 0x1d
	.4byte	.LASF215
	.byte	0x1
	.2byte	0x211
	.4byte	0xad
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.4byte	.LASF216
	.byte	0x1
	.2byte	0x211
	.4byte	0xad
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x26
	.4byte	.LVL52
	.4byte	0x1d97
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF217
	.byte	0x1
	.2byte	0x153
	.4byte	0xe5
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xddd
	.uleb128 0x1f
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x153
	.4byte	0xad
	.4byte	.LLST13
	.uleb128 0x1d
	.4byte	.LASF216
	.byte	0x1
	.2byte	0x153
	.4byte	0xad
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.4byte	.LVL55
	.4byte	0x1d97
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x208
	.4byte	0xe5
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe83
	.uleb128 0x1f
	.4byte	.LASF214
	.byte	0x1
	.2byte	0x208
	.4byte	0xad
	.4byte	.LLST14
	.uleb128 0x1d
	.4byte	.LASF215
	.byte	0x1
	.2byte	0x208
	.4byte	0xad
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x208
	.4byte	0xf0
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x24
	.4byte	.LVL58
	.4byte	0x1da3
	.4byte	0xe48
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.4byte	.LVL61
	.4byte	0x1da3
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1b
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x8
	.8byte	0xcccccccd
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x33
	.byte	0x25
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF221
	.byte	0x1
	.2byte	0x1a8
	.4byte	0xe5
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xece
	.uleb128 0x1f
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x1a8
	.4byte	0xad
	.4byte	.LLST15
	.uleb128 0x26
	.4byte	.LVL64
	.4byte	0x1da3
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x15d
	.4byte	0xe5
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf64
	.uleb128 0x1f
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x15d
	.4byte	0xad
	.4byte	.LLST16
	.uleb128 0x1d
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x15d
	.4byte	0xf0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.4byte	.LVL67
	.4byte	0x1da3
	.4byte	0xf2a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.4byte	.LVL70
	.4byte	0x1da3
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1b
	.byte	0x73
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x8
	.8byte	0xcccccccd
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x33
	.byte	0x25
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF224
	.byte	0x1
	.2byte	0x203
	.4byte	0xe5
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfcc
	.uleb128 0x1f
	.4byte	.LASF214
	.byte	0x1
	.2byte	0x203
	.4byte	0xad
	.4byte	.LLST17
	.uleb128 0x1d
	.4byte	.LASF215
	.byte	0x1
	.2byte	0x203
	.4byte	0xad
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.4byte	.LASF216
	.byte	0x1
	.2byte	0x203
	.4byte	0xad
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x26
	.4byte	.LVL73
	.4byte	0x1daf
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF225
	.byte	0x1
	.2byte	0x1fa
	.4byte	0xe5
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1072
	.uleb128 0x1f
	.4byte	.LASF214
	.byte	0x1
	.2byte	0x1fa
	.4byte	0xad
	.4byte	.LLST18
	.uleb128 0x1d
	.4byte	.LASF215
	.byte	0x1
	.2byte	0x1fa
	.4byte	0xad
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x1fa
	.4byte	0xf0
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x24
	.4byte	.LVL76
	.4byte	0x1dbb
	.4byte	0x1037
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.4byte	.LVL79
	.4byte	0x1dbb
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1b
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x8
	.8byte	0xcccccccd
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x33
	.byte	0x25
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF226
	.byte	0x1
	.2byte	0x1ad
	.4byte	0xe5
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10bc
	.uleb128 0x1f
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x1ad
	.4byte	0xad
	.4byte	.LLST19
	.uleb128 0x26
	.4byte	.LVL82
	.4byte	0x1dbb
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF227
	.byte	0x1
	.2byte	0x166
	.4byte	0xe5
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1106
	.uleb128 0x1f
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x166
	.4byte	0xad
	.4byte	.LLST20
	.uleb128 0x26
	.4byte	.LVL85
	.4byte	0x1dbb
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF228
	.byte	0x1
	.2byte	0x1e5
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x113b
	.uleb128 0x1d
	.4byte	.LASF214
	.byte	0x1
	.2byte	0x1e5
	.4byte	0xad
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x26
	.4byte	.LVL88
	.4byte	0x1dc7
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF229
	.byte	0x1
	.2byte	0x194
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1170
	.uleb128 0x1d
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x194
	.4byte	0xad
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x26
	.4byte	.LVL90
	.4byte	0x1dc7
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF230
	.byte	0x1
	.2byte	0x13f
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11a5
	.uleb128 0x1d
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x13f
	.4byte	0xad
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x26
	.4byte	.LVL92
	.4byte	0x1dc7
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF231
	.byte	0x1
	.2byte	0x1b2
	.4byte	0xad
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11f9
	.uleb128 0x1f
	.4byte	.LASF232
	.byte	0x1
	.2byte	0x1b2
	.4byte	0xf0
	.4byte	.LLST21
	.uleb128 0x1d
	.4byte	.LASF233
	.byte	0x1
	.2byte	0x1b2
	.4byte	0xf0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.4byte	.LVL94
	.4byte	0x1dd3
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF234
	.byte	0x1
	.2byte	0x16b
	.4byte	0xad
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1223
	.uleb128 0x26
	.4byte	.LVL96
	.4byte	0x1ddf
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF235
	.byte	0x1
	.2byte	0x158
	.4byte	0xe5
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1272
	.uleb128 0x1f
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x158
	.4byte	0xad
	.4byte	.LLST22
	.uleb128 0x1d
	.4byte	.LASF216
	.byte	0x1
	.2byte	0x158
	.4byte	0xad
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.4byte	.LVL98
	.4byte	0x1deb
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF236
	.byte	0x1
	.2byte	0x116
	.4byte	0xad
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12c1
	.uleb128 0x19
	.string	"max"
	.byte	0x1
	.2byte	0x116
	.4byte	0xf0
	.4byte	.LLST23
	.uleb128 0x1d
	.4byte	.LASF237
	.byte	0x1
	.2byte	0x116
	.4byte	0xf0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.4byte	.LVL101
	.4byte	0x1df7
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF238
	.byte	0x1
	.2byte	0x111
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12e1
	.uleb128 0x23
	.4byte	.LVL103
	.4byte	0x1e03
	.byte	0
	.uleb128 0x18
	.4byte	.LASF239
	.byte	0x1
	.2byte	0x108
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x132b
	.uleb128 0x23
	.4byte	.LVL104
	.4byte	0x1d74
	.uleb128 0x24
	.4byte	.LVL105
	.4byte	0x1e0f
	.4byte	0x1317
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	global_int_mux
	.byte	0
	.uleb128 0x26
	.4byte	.LVL106
	.4byte	0x1e0f
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	global_int_mux
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LASF240
	.byte	0x1
	.byte	0xff
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1374
	.uleb128 0x23
	.4byte	.LVL107
	.4byte	0x1d74
	.uleb128 0x24
	.4byte	.LVL108
	.4byte	0x1e1a
	.4byte	0x1360
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	global_int_mux
	.byte	0
	.uleb128 0x26
	.4byte	.LVL109
	.4byte	0x1e1a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	global_int_mux
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF241
	.byte	0x1
	.2byte	0x2ce
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13bf
	.uleb128 0x2a
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.4byte	0x13b5
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.2byte	0x2d4
	.4byte	0x33
	.4byte	.LLST24
	.uleb128 0x26
	.4byte	.LVL112
	.4byte	0x1e25
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL110
	.4byte	0x1e2e
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF246
	.byte	0x1
	.2byte	0x2a7
	.4byte	0x11c
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13e3
	.uleb128 0x23
	.4byte	.LVL114
	.4byte	0x1e37
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF243
	.byte	0x1
	.2byte	0x2ac
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x143e
	.uleb128 0x1d
	.4byte	.LASF242
	.byte	0x1
	.2byte	0x2ac
	.4byte	0x431
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2d
	.string	"len"
	.byte	0x1
	.2byte	0x2ac
	.4byte	0xda
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.4byte	.LVL116
	.4byte	0x1e42
	.uleb128 0x23
	.4byte	.LVL117
	.4byte	0x1e4d
	.uleb128 0x26
	.4byte	.LVL118
	.4byte	0x1e58
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF244
	.byte	0x1
	.2byte	0x2b4
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1473
	.uleb128 0x1d
	.4byte	.LASF245
	.byte	0x1
	.2byte	0x2b4
	.4byte	0x1473
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x26
	.4byte	.LVL120
	.4byte	0x1e63
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1479
	.uleb128 0x8
	.4byte	0x43d
	.uleb128 0x2b
	.4byte	.LASF247
	.byte	0x1
	.2byte	0x2dc
	.4byte	0x111
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15b4
	.uleb128 0x1f
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x2dc
	.4byte	0x2b8
	.4byte	.LLST25
	.uleb128 0x1a
	.4byte	.LASF248
	.byte	0x1
	.2byte	0x2de
	.4byte	0x11c
	.4byte	.LLST26
	.uleb128 0x1a
	.4byte	.LASF249
	.byte	0x1
	.2byte	0x2df
	.4byte	0x106
	.4byte	.LLST27
	.uleb128 0x1a
	.4byte	.LASF250
	.byte	0x1
	.2byte	0x2df
	.4byte	0x106
	.4byte	.LLST28
	.uleb128 0x2e
	.4byte	.LASF251
	.4byte	0x15c4
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6089
	.uleb128 0x2f
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.2byte	0x2ea
	.4byte	0x33
	.4byte	.LLST29
	.uleb128 0x2a
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.4byte	0x1558
	.uleb128 0x1a
	.4byte	.LASF252
	.byte	0x1
	.2byte	0x304
	.4byte	0x111
	.4byte	.LLST30
	.uleb128 0x24
	.4byte	.LVL127
	.4byte	0x1e6e
	.4byte	0x152b
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL128
	.4byte	0x1e79
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x304
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6089
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.uleb128 0x1a
	.4byte	.LASF252
	.byte	0x1
	.2byte	0x30a
	.4byte	0x111
	.4byte	.LLST31
	.uleb128 0x24
	.4byte	.LVL130
	.4byte	0x1e6e
	.4byte	0x1585
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL131
	.4byte	0x1e79
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x30a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6089
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	0xbd
	.4byte	0x15c4
	.uleb128 0x31
	.4byte	0xa6
	.byte	0x1d
	.byte	0
	.uleb128 0x8
	.4byte	0x15b4
	.uleb128 0x2b
	.4byte	.LASF253
	.byte	0x1
	.2byte	0x312
	.4byte	0x111
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16b9
	.uleb128 0x19
	.string	"cfg"
	.byte	0x1
	.2byte	0x312
	.4byte	0x16b9
	.4byte	.LLST32
	.uleb128 0x20
	.string	"ret"
	.byte	0x1
	.2byte	0x314
	.4byte	0x134
	.4byte	.LLST33
	.uleb128 0x1a
	.4byte	.LASF254
	.byte	0x1
	.2byte	0x315
	.4byte	0xf0
	.4byte	.LLST34
	.uleb128 0x23
	.4byte	.LVL142
	.4byte	0x1e84
	.uleb128 0x23
	.4byte	.LVL143
	.4byte	0x1e8f
	.uleb128 0x24
	.4byte	.LVL144
	.4byte	0x1e9a
	.4byte	0x1659
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC28
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.byte	0
	.uleb128 0x24
	.4byte	.LVL145
	.4byte	0x1ea5
	.4byte	0x1670
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	osi_funcs
	.byte	0
	.uleb128 0x23
	.4byte	.LVL146
	.4byte	0x1374
	.uleb128 0x24
	.4byte	.LVL147
	.4byte	0x1d32
	.4byte	0x168c
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x4c
	.byte	0
	.uleb128 0x24
	.4byte	.LVL148
	.4byte	0x1eb0
	.4byte	0x169f
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x23
	.4byte	.LVL149
	.4byte	0xa2f
	.uleb128 0x26
	.4byte	.LVL150
	.4byte	0x1ebb
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x288
	.uleb128 0x2b
	.4byte	.LASF255
	.byte	0x1
	.2byte	0x36d
	.4byte	0x111
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1706
	.uleb128 0x23
	.4byte	.LVL164
	.4byte	0x1ec6
	.uleb128 0x24
	.4byte	.LVL165
	.4byte	0x1d48
	.4byte	0x16f5
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x4c
	.byte	0
	.uleb128 0x26
	.4byte	.LVL166
	.4byte	0x1eb0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF256
	.byte	0x1
	.2byte	0x389
	.4byte	0x111
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x187c
	.uleb128 0x1f
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x389
	.4byte	0x2b8
	.4byte	.LLST35
	.uleb128 0x20
	.string	"ret"
	.byte	0x1
	.2byte	0x38b
	.4byte	0x33
	.4byte	.LLST36
	.uleb128 0x24
	.4byte	.LVL168
	.4byte	0x1ed1
	.4byte	0x1753
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x23
	.4byte	.LVL169
	.4byte	0x1d1c
	.uleb128 0x23
	.4byte	.LVL170
	.4byte	0x1edc
	.uleb128 0x24
	.4byte	.LVL171
	.4byte	0x1edc
	.4byte	0x1778
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x24
	.4byte	.LVL172
	.4byte	0x1d27
	.4byte	0x178b
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x24
	.4byte	.LVL173
	.4byte	0x1d27
	.4byte	0x179e
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x23
	.4byte	.LVL174
	.4byte	0x1d1c
	.uleb128 0x24
	.4byte	.LVL175
	.4byte	0x1edc
	.4byte	0x17ba
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x24
	.4byte	.LVL176
	.4byte	0x1edc
	.4byte	0x17cd
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x23
	.4byte	.LVL177
	.4byte	0x1d1c
	.uleb128 0x24
	.4byte	.LVL178
	.4byte	0x1edc
	.4byte	0x17e9
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x23
	.4byte	.LVL179
	.4byte	0x1d1c
	.uleb128 0x23
	.4byte	.LVL180
	.4byte	0x1ee7
	.uleb128 0x23
	.4byte	.LVL181
	.4byte	0x1ef2
	.uleb128 0x24
	.4byte	.LVL182
	.4byte	0x1efd
	.4byte	0x1818
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL183
	.4byte	0x1d1c
	.uleb128 0x23
	.4byte	.LVL184
	.4byte	0x1d1c
	.uleb128 0x24
	.4byte	.LVL185
	.4byte	0x1f08
	.4byte	0x183d
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x24
	.4byte	.LVL186
	.4byte	0x1f08
	.4byte	0x1850
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x23
	.4byte	.LVL187
	.4byte	0x1d1c
	.uleb128 0x24
	.4byte	.LVL188
	.4byte	0x1f08
	.4byte	0x186c
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.4byte	.LVL189
	.4byte	0x1f13
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF257
	.byte	0x1
	.2byte	0x3c8
	.4byte	0x111
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x194f
	.uleb128 0x23
	.4byte	.LVL197
	.4byte	0x1d1c
	.uleb128 0x24
	.4byte	.LVL198
	.4byte	0x1ee7
	.4byte	0x18b2
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x23
	.4byte	.LVL199
	.4byte	0x1e42
	.uleb128 0x23
	.4byte	.LVL200
	.4byte	0x1e4d
	.uleb128 0x24
	.4byte	.LVL201
	.4byte	0x1f1e
	.4byte	0x18d9
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.uleb128 0x23
	.4byte	.LVL202
	.4byte	0x1e42
	.uleb128 0x23
	.4byte	.LVL203
	.4byte	0x1f2a
	.uleb128 0x23
	.4byte	.LVL204
	.4byte	0x1d1c
	.uleb128 0x23
	.4byte	.LVL205
	.4byte	0x1d1c
	.uleb128 0x24
	.4byte	.LVL206
	.4byte	0x1f08
	.4byte	0x1910
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x24
	.4byte	.LVL207
	.4byte	0x1f08
	.4byte	0x1923
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x23
	.4byte	.LVL208
	.4byte	0x1d1c
	.uleb128 0x24
	.4byte	.LVL209
	.4byte	0x1f08
	.4byte	0x193f
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.4byte	.LVL210
	.4byte	0x1f13
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LASF340
	.byte	0x1
	.2byte	0x3ec
	.4byte	0x2e8
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2b
	.4byte	.LASF258
	.byte	0x1
	.2byte	0x3f3
	.4byte	0x111
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19b4
	.uleb128 0x1f
	.4byte	.LASF259
	.byte	0x1
	.2byte	0x3f3
	.4byte	0x34e
	.4byte	.LLST37
	.uleb128 0x1d
	.4byte	.LASF260
	.byte	0x1
	.2byte	0x3f3
	.4byte	0x3c6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.4byte	.LVL212
	.4byte	0x1f35
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF261
	.byte	0x1
	.2byte	0x3fc
	.4byte	0x3c6
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19ef
	.uleb128 0x1f
	.4byte	.LASF259
	.byte	0x1
	.2byte	0x3fc
	.4byte	0x34e
	.4byte	.LLST38
	.uleb128 0x26
	.4byte	.LVL215
	.4byte	0x1f40
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF262
	.byte	0x1
	.2byte	0x401
	.4byte	0x111
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a5a
	.uleb128 0x1f
	.4byte	.LASF263
	.byte	0x1
	.2byte	0x401
	.4byte	0x3c6
	.4byte	.LLST39
	.uleb128 0x1d
	.4byte	.LASF264
	.byte	0x1
	.2byte	0x401
	.4byte	0x3c6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x33
	.string	"err"
	.byte	0x1
	.2byte	0x403
	.4byte	0x111
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x33
	.string	"ret"
	.byte	0x1
	.2byte	0x404
	.4byte	0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x26
	.4byte	.LVL218
	.4byte	0x1f4b
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF265
	.byte	0x1
	.2byte	0x413
	.4byte	0x111
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1aa9
	.uleb128 0x1f
	.4byte	.LASF263
	.byte	0x1
	.2byte	0x413
	.4byte	0x1aa9
	.4byte	.LLST40
	.uleb128 0x1d
	.4byte	.LASF264
	.byte	0x1
	.2byte	0x413
	.4byte	0x1aa9
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.4byte	.LVL225
	.4byte	0x1f56
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3c6
	.uleb128 0x2b
	.4byte	.LASF266
	.byte	0x1
	.2byte	0x41c
	.4byte	0x111
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b47
	.uleb128 0x1a
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x41e
	.4byte	0x111
	.4byte	.LLST41
	.uleb128 0x23
	.4byte	.LVL227
	.4byte	0x1d1c
	.uleb128 0x24
	.4byte	.LVL228
	.4byte	0x1edc
	.4byte	0x1af5
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x24
	.4byte	.LVL229
	.4byte	0x1edc
	.4byte	0x1b08
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x24
	.4byte	.LVL230
	.4byte	0x1ee7
	.4byte	0x1b1b
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x23
	.4byte	.LVL232
	.4byte	0x1d1c
	.uleb128 0x24
	.4byte	.LVL233
	.4byte	0x1edc
	.4byte	0x1b37
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.4byte	.LVL234
	.4byte	0x1ee7
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF268
	.byte	0x1
	.2byte	0x432
	.4byte	0x111
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1bdf
	.uleb128 0x1a
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x434
	.4byte	0x111
	.4byte	.LLST42
	.uleb128 0x23
	.4byte	.LVL236
	.4byte	0x1d1c
	.uleb128 0x24
	.4byte	.LVL237
	.4byte	0x1f08
	.4byte	0x1b8d
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x24
	.4byte	.LVL238
	.4byte	0x1f08
	.4byte	0x1ba0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x24
	.4byte	.LVL239
	.4byte	0x1ee7
	.4byte	0x1bb3
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x23
	.4byte	.LVL241
	.4byte	0x1d1c
	.uleb128 0x24
	.4byte	.LVL242
	.4byte	0x1f08
	.4byte	0x1bcf
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.4byte	.LVL243
	.4byte	0x1ee7
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF269
	.byte	0x1
	.2byte	0x448
	.4byte	0x11c
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c0c
	.uleb128 0x23
	.4byte	.LVL245
	.4byte	0x1d1c
	.uleb128 0x23
	.4byte	.LVL246
	.4byte	0x1e42
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF270
	.byte	0x1
	.2byte	0x452
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c35
	.uleb128 0x23
	.4byte	.LVL247
	.4byte	0x1d1c
	.uleb128 0x23
	.4byte	.LVL248
	.4byte	0x1e4d
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF271
	.byte	0x1
	.2byte	0x45c
	.4byte	0x111
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c73
	.uleb128 0x1f
	.4byte	.LASF272
	.byte	0x1
	.2byte	0x45c
	.4byte	0x3ea
	.4byte	.LLST43
	.uleb128 0x26
	.4byte	.LVL250
	.4byte	0x1f61
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	0x5a4
	.4byte	0x1c83
	.uleb128 0x31
	.4byte	0xa6
	.byte	0x7
	.byte	0
	.uleb128 0x34
	.4byte	.LASF273
	.byte	0x1
	.byte	0x82
	.4byte	0x1c73
	.uleb128 0x5
	.byte	0x3
	.4byte	btdm_dram_available_region
	.uleb128 0x34
	.4byte	.LASF274
	.byte	0x1
	.byte	0xc4
	.4byte	0x11c
	.uleb128 0x5
	.byte	0x3
	.4byte	btdm_bb_init_flag
	.uleb128 0x34
	.4byte	.LASF275
	.byte	0x1
	.byte	0xc5
	.4byte	0x2e8
	.uleb128 0x5
	.byte	0x3
	.4byte	btdm_controller_status
	.uleb128 0x34
	.4byte	.LASF276
	.byte	0x1
	.byte	0xc7
	.4byte	0x16b
	.uleb128 0x5
	.byte	0x3
	.4byte	global_int_mux
	.uleb128 0x34
	.4byte	.LASF277
	.byte	0x1
	.byte	0xca
	.4byte	0xf0
	.uleb128 0x5
	.byte	0x3
	.4byte	btdm_lpcycle_us
	.uleb128 0x34
	.4byte	.LASF278
	.byte	0x1
	.byte	0xcb
	.4byte	0xcf
	.uleb128 0x5
	.byte	0x3
	.4byte	btdm_lpcycle_us_frac
	.uleb128 0x1c
	.4byte	.LASF279
	.byte	0x1
	.2byte	0x280
	.4byte	0x5af
	.uleb128 0x5
	.byte	0x3
	.4byte	osi_funcs
	.uleb128 0x35
	.4byte	.LASF280
	.byte	0x1
	.byte	0x6a
	.4byte	0xbd
	.uleb128 0x35
	.4byte	.LASF281
	.byte	0x1
	.byte	0x6b
	.4byte	0xbd
	.uleb128 0x35
	.4byte	.LASF282
	.byte	0x1
	.byte	0x6c
	.4byte	0xf0
	.uleb128 0x36
	.4byte	.LASF283
	.4byte	.LASF283
	.byte	0x1
	.byte	0x4c
	.uleb128 0x36
	.4byte	.LASF284
	.4byte	.LASF284
	.byte	0xa
	.byte	0xc9
	.uleb128 0x36
	.4byte	.LASF285
	.4byte	.LASF285
	.byte	0xe
	.byte	0x25
	.uleb128 0x36
	.4byte	.LASF286
	.4byte	.LASF286
	.byte	0xa
	.byte	0xc4
	.uleb128 0x36
	.4byte	.LASF287
	.4byte	.LASF287
	.byte	0xe
	.byte	0x31
	.uleb128 0x36
	.4byte	.LASF288
	.4byte	.LASF288
	.byte	0x9
	.byte	0x8a
	.uleb128 0x36
	.4byte	.LASF289
	.4byte	.LASF289
	.byte	0x9
	.byte	0xe1
	.uleb128 0x36
	.4byte	.LASF290
	.4byte	.LASF290
	.byte	0xf
	.byte	0x4a
	.uleb128 0x36
	.4byte	.LASF291
	.4byte	.LASF291
	.byte	0x2
	.byte	0xb8
	.uleb128 0x37
	.4byte	.LASF292
	.4byte	.LASF292
	.byte	0x10
	.2byte	0x2fe
	.uleb128 0x37
	.4byte	.LASF293
	.4byte	.LASF293
	.byte	0x10
	.2byte	0x14d
	.uleb128 0x37
	.4byte	.LASF294
	.4byte	.LASF294
	.byte	0x8
	.2byte	0x543
	.uleb128 0x37
	.4byte	.LASF295
	.4byte	.LASF295
	.byte	0x8
	.2byte	0x38a
	.uleb128 0x37
	.4byte	.LASF296
	.4byte	.LASF296
	.byte	0x8
	.2byte	0x4f3
	.uleb128 0x37
	.4byte	.LASF297
	.4byte	.LASF297
	.byte	0x8
	.2byte	0x265
	.uleb128 0x37
	.4byte	.LASF298
	.4byte	.LASF298
	.byte	0x8
	.2byte	0x3ac
	.uleb128 0x37
	.4byte	.LASF299
	.4byte	.LASF299
	.byte	0x8
	.2byte	0x5d0
	.uleb128 0x37
	.4byte	.LASF300
	.4byte	.LASF300
	.byte	0x8
	.2byte	0x578
	.uleb128 0x37
	.4byte	.LASF301
	.4byte	.LASF301
	.byte	0x8
	.2byte	0x4f4
	.uleb128 0x37
	.4byte	.LASF302
	.4byte	.LASF302
	.byte	0x8
	.2byte	0x57a
	.uleb128 0x37
	.4byte	.LASF303
	.4byte	.LASF303
	.byte	0x6
	.2byte	0x13a
	.uleb128 0x36
	.4byte	.LASF304
	.4byte	.LASF304
	.byte	0x6
	.byte	0xd9
	.uleb128 0x36
	.4byte	.LASF305
	.4byte	.LASF305
	.byte	0x6
	.byte	0xda
	.uleb128 0x38
	.4byte	.LASF306
	.4byte	.LASF306
	.uleb128 0x38
	.4byte	.LASF307
	.4byte	.LASF307
	.uleb128 0x36
	.4byte	.LASF308
	.4byte	.LASF308
	.byte	0x1
	.byte	0x5e
	.uleb128 0x36
	.4byte	.LASF309
	.4byte	.LASF309
	.byte	0x1
	.byte	0x4d
	.uleb128 0x36
	.4byte	.LASF310
	.4byte	.LASF310
	.byte	0x1
	.byte	0x4e
	.uleb128 0x36
	.4byte	.LASF311
	.4byte	.LASF311
	.byte	0x1
	.byte	0x5f
	.uleb128 0x36
	.4byte	.LASF312
	.4byte	.LASF312
	.byte	0x1
	.byte	0x60
	.uleb128 0x36
	.4byte	.LASF313
	.4byte	.LASF313
	.byte	0x11
	.byte	0x43
	.uleb128 0x36
	.4byte	.LASF314
	.4byte	.LASF314
	.byte	0x5
	.byte	0x4f
	.uleb128 0x36
	.4byte	.LASF315
	.4byte	.LASF315
	.byte	0xc
	.byte	0x57
	.uleb128 0x36
	.4byte	.LASF316
	.4byte	.LASF316
	.byte	0x1
	.byte	0x44
	.uleb128 0x36
	.4byte	.LASF317
	.4byte	.LASF317
	.byte	0xc
	.byte	0x6b
	.uleb128 0x36
	.4byte	.LASF318
	.4byte	.LASF318
	.byte	0x1
	.byte	0x3e
	.uleb128 0x36
	.4byte	.LASF319
	.4byte	.LASF319
	.byte	0x1
	.byte	0x4b
	.uleb128 0x36
	.4byte	.LASF320
	.4byte	.LASF320
	.byte	0x1
	.byte	0x3f
	.uleb128 0x36
	.4byte	.LASF321
	.4byte	.LASF321
	.byte	0x1
	.byte	0x40
	.uleb128 0x36
	.4byte	.LASF322
	.4byte	.LASF322
	.byte	0xa
	.byte	0xbf
	.uleb128 0x36
	.4byte	.LASF323
	.4byte	.LASF323
	.byte	0xa
	.byte	0xd2
	.uleb128 0x36
	.4byte	.LASF324
	.4byte	.LASF324
	.byte	0x1
	.byte	0x46
	.uleb128 0x36
	.4byte	.LASF325
	.4byte	.LASF325
	.byte	0x1
	.byte	0x45
	.uleb128 0x36
	.4byte	.LASF326
	.4byte	.LASF326
	.byte	0x1
	.byte	0x41
	.uleb128 0x36
	.4byte	.LASF327
	.4byte	.LASF327
	.byte	0xa
	.byte	0xd7
	.uleb128 0x36
	.4byte	.LASF328
	.4byte	.LASF328
	.byte	0xa
	.byte	0xba
	.uleb128 0x37
	.4byte	.LASF329
	.4byte	.LASF329
	.byte	0x12
	.2byte	0x17f
	.uleb128 0x36
	.4byte	.LASF330
	.4byte	.LASF330
	.byte	0x1
	.byte	0x42
	.uleb128 0x36
	.4byte	.LASF331
	.4byte	.LASF331
	.byte	0x1
	.byte	0x62
	.uleb128 0x36
	.4byte	.LASF332
	.4byte	.LASF332
	.byte	0x1
	.byte	0x63
	.uleb128 0x36
	.4byte	.LASF333
	.4byte	.LASF333
	.byte	0x1
	.byte	0x64
	.uleb128 0x36
	.4byte	.LASF334
	.4byte	.LASF334
	.byte	0x1
	.byte	0x65
	.uleb128 0x36
	.4byte	.LASF335
	.4byte	.LASF335
	.byte	0x1
	.byte	0x66
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x17
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LFE43
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
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LFE43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LFE48
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LFE49
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
	.4byte	.LFE50
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x48
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LFE56
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL36
	.4byte	.LFE45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL37
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL38
	.4byte	.LVL44
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LFE44
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL39
	.4byte	.LVL40-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL42
	.4byte	.LVL43-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL50
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL56
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL57
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL62
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL63
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL65
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL66
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL71
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL74
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL75
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
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL80
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL81
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL83
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL84
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL86
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL93
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL95
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL97
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL99
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL100
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL102
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL111
	.4byte	.LFE57
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL121
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL135
	.4byte	.LVL136
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL136
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL139
	.4byte	.LFE58
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL125
	.4byte	.LVL127-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL128
	.4byte	.LVL130-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL133
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL136
	.4byte	.LFE58
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL123
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0xa
	.byte	0x73
	.sleb128 0
	.byte	0x3c
	.byte	0x1e
	.byte	0x3
	.4byte	btdm_dram_available_region+8
	.byte	0x22
	.4byte	.LVL126
	.4byte	.LVL127-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL129
	.4byte	.LVL130-1
	.2byte	0x2
	.byte	0x78
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL123
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL127
	.4byte	.LVL128-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL131
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL130
	.4byte	.LVL131-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL132
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL140
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL151
	.4byte	.LVL152
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL152
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL153
	.4byte	.LVL154
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL154
	.4byte	.LVL155
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL155
	.4byte	.LVL156
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL156
	.4byte	.LVL157
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL157
	.4byte	.LVL158
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL158
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
	.4byte	.LVL162
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL162
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL163
	.4byte	.LFE59
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL150
	.4byte	.LVL152
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL162
	.4byte	.LFE59
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL141
	.4byte	.LVL149
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL149
	.4byte	.LVL150-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL152
	.4byte	.LVL162
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL167
	.4byte	.LVL190
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL190
	.4byte	.LVL191
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL191
	.4byte	.LVL192
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL192
	.4byte	.LVL193
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL193
	.4byte	.LVL194
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL194
	.4byte	.LVL195
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL195
	.4byte	.LVL196
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL196
	.4byte	.LFE61
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL182
	.4byte	.LVL183-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL191
	.4byte	.LVL193
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL211
	.4byte	.LVL213
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL213
	.4byte	.LFE64
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL214
	.4byte	.LVL216
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL216
	.4byte	.LFE65
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL217
	.4byte	.LVL219
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL219
	.4byte	.LVL220
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL220
	.4byte	.LVL221
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL221
	.4byte	.LVL222
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL222
	.4byte	.LVL223
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL223
	.4byte	.LFE66
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL224
	.4byte	.LVL226
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL226
	.4byte	.LFE67
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL230
	.4byte	.LVL231
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL234
	.4byte	.LVL235
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL239
	.4byte	.LVL240
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL243
	.4byte	.LVL244
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL249
	.4byte	.LVL251
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL251
	.4byte	.LVL252
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL252
	.4byte	.LVL253
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL253
	.4byte	.LFE72
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1b4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	0
	.4byte	0
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LFB56
	.4byte	.LFE56
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	.LFB51
	.4byte	.LFE51
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB57
	.4byte	.LFE57
	.4byte	.LFB53
	.4byte	.LFE53
	.4byte	.LFB54
	.4byte	.LFE54
	.4byte	.LFB55
	.4byte	.LFE55
	.4byte	.LFB58
	.4byte	.LFE58
	.4byte	.LFB59
	.4byte	.LFE59
	.4byte	.LFB60
	.4byte	.LFE60
	.4byte	.LFB61
	.4byte	.LFE61
	.4byte	.LFB62
	.4byte	.LFE62
	.4byte	.LFB63
	.4byte	.LFE63
	.4byte	.LFB64
	.4byte	.LFE64
	.4byte	.LFB65
	.4byte	.LFE65
	.4byte	.LFB66
	.4byte	.LFE66
	.4byte	.LFB67
	.4byte	.LFE67
	.4byte	.LFB68
	.4byte	.LFE68
	.4byte	.LFB69
	.4byte	.LFE69
	.4byte	.LFB70
	.4byte	.LFE70
	.4byte	.LFB71
	.4byte	.LFE71
	.4byte	.LFB72
	.4byte	.LFE72
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF200:
	.string	"rand_wrapper"
.LASF201:
	.string	"read_mac_wrapper"
.LASF313:
	.string	"heap_caps_add_region"
.LASF55:
	.string	"send_adv_reserved_size"
.LASF286:
	.string	"esp_modem_sleep_enter"
.LASF119:
	.string	"PERIPH_TIMG0_MODULE"
.LASF14:
	.string	"sizetype"
.LASF147:
	.string	"start"
.LASF122:
	.string	"PERIPH_PWM1_MODULE"
.LASF27:
	.string	"owner"
.LASF217:
	.string	"semphr_take_from_isr_wrapper"
.LASF304:
	.string	"vTaskExitCritical"
.LASF125:
	.string	"PERIPH_UHCI0_MODULE"
.LASF216:
	.string	"hptw"
.LASF19:
	.string	"int32_t"
.LASF33:
	.string	"ESP_MAC_BT"
.LASF140:
	.string	"PERIPH_WIFI_BT_COMMON_MODULE"
.LASF191:
	.string	"cycles"
.LASF241:
	.string	"btdm_controller_mem_init"
.LASF251:
	.string	"__func__"
.LASF25:
	.string	"BaseType_t"
.LASF321:
	.string	"btdm_controller_deinit"
.LASF128:
	.string	"PERIPH_PCNT_MODULE"
.LASF166:
	.string	"_queue_create"
.LASF323:
	.string	"esp_modem_sleep_register"
.LASF77:
	.string	"ESP_BLE_PWR_TYPE_ADV"
.LASF121:
	.string	"PERIPH_PWM0_MODULE"
.LASF138:
	.string	"PERIPH_WIFI_MODULE"
.LASF279:
	.string	"osi_funcs"
.LASF88:
	.string	"ESP_PWR_LVL_P6"
.LASF223:
	.string	"semphr_take_wrapper"
.LASF103:
	.string	"notify_host_recv"
.LASF240:
	.string	"interrupt_disable"
.LASF36:
	.string	"MODEM_BLE_MODULE"
.LASF229:
	.string	"mutex_delete_wrapper"
.LASF174:
	.string	"_is_in_isr"
.LASF205:
	.string	"task_delete_wrapper"
.LASF245:
	.string	"callback"
.LASF335:
	.string	"bredr_sco_datapath_set"
.LASF212:
	.string	"prio"
.LASF187:
	.string	"__interrupt"
.LASF163:
	.string	"_mutex_delete"
.LASF6:
	.string	"__uint8_t"
.LASF272:
	.string	"data_path"
.LASF58:
	.string	"ESP_BT_MODE_IDLE"
.LASF62:
	.string	"esp_bt_mode_t"
.LASF246:
	.string	"esp_vhci_host_check_send_available"
.LASF168:
	.string	"_queue_send"
.LASF13:
	.string	"long int"
.LASF275:
	.string	"btdm_controller_status"
.LASF43:
	.string	"MODEM_MODULE_COUNT"
.LASF189:
	.string	"srand_wrapper"
.LASF130:
	.string	"PERIPH_HSPI_MODULE"
.LASF98:
	.string	"esp_power_level_t"
.LASF329:
	.string	"ets_delay_us"
.LASF52:
	.string	"scan_duplicate_mode"
.LASF64:
	.string	"ESP_BT_CONTROLLER_STATUS_INITED"
.LASF274:
	.string	"btdm_bb_init_flag"
.LASF135:
	.string	"PERIPH_CAN_MODULE"
.LASF265:
	.string	"esp_bredr_tx_power_get"
.LASF104:
	.string	"esp_vhci_host_callback_t"
.LASF190:
	.string	"seed"
.LASF296:
	.string	"xQueueGenericSendFromISR"
.LASF194:
	.string	"btdm_sleep_check_duration"
.LASF40:
	.string	"MODEM_WIFI_SNIFFER_MODULE"
.LASF48:
	.string	"controller_task_stack_size"
.LASF35:
	.string	"QueueHandle_t"
.LASF3:
	.string	"signed char"
.LASF17:
	.string	"uint8_t"
.LASF150:
	.string	"_set_isr"
.LASF206:
	.string	"task_handle"
.LASF276:
	.string	"global_int_mux"
.LASF141:
	.string	"PERIPH_BT_BASEBAND_MODULE"
.LASF4:
	.string	"unsigned char"
.LASF86:
	.string	"ESP_PWR_LVL_N0"
.LASF94:
	.string	"ESP_PWR_LVL_N2"
.LASF85:
	.string	"ESP_PWR_LVL_N3"
.LASF93:
	.string	"ESP_PWR_LVL_N5"
.LASF84:
	.string	"ESP_PWR_LVL_N6"
.LASF92:
	.string	"ESP_PWR_LVL_N8"
.LASF83:
	.string	"ESP_PWR_LVL_N9"
.LASF30:
	.string	"xt_handler"
.LASF80:
	.string	"ESP_BLE_PWR_TYPE_NUM"
.LASF248:
	.string	"update"
.LASF299:
	.string	"xQueueGenericCreate"
.LASF113:
	.string	"PERIPH_UART1_MODULE"
.LASF56:
	.string	"controller_debug_flag"
.LASF59:
	.string	"ESP_BT_MODE_BLE"
.LASF24:
	.string	"_Bool"
.LASF213:
	.string	"queue_recv_from_isr_wrapper"
.LASF300:
	.string	"xQueueCreateMutex"
.LASF16:
	.string	"char"
.LASF178:
	.string	"_read_efuse_mac"
.LASF298:
	.string	"vQueueDelete"
.LASF165:
	.string	"_mutex_unlock"
.LASF293:
	.string	"xTaskCreatePinnedToCore"
.LASF271:
	.string	"esp_bredr_sco_datapath_set"
.LASF66:
	.string	"ESP_BT_CONTROLLER_STATUS_NUM"
.LASF281:
	.string	"_data_end_btdm"
.LASF143:
	.string	"esp_vhci_host_callback"
.LASF170:
	.string	"_queue_recv"
.LASF7:
	.string	"__uint16_t"
.LASF169:
	.string	"_queue_send_from_isr"
.LASF303:
	.string	"_frxt_setup_switch"
.LASF331:
	.string	"ble_txpwr_set"
.LASF124:
	.string	"PERIPH_PWM3_MODULE"
.LASF95:
	.string	"ESP_PWR_LVL_P1"
.LASF87:
	.string	"ESP_PWR_LVL_P3"
.LASF96:
	.string	"ESP_PWR_LVL_P4"
.LASF46:
	.string	"PHY_MODEM_MODULE"
.LASF97:
	.string	"ESP_PWR_LVL_P7"
.LASF89:
	.string	"ESP_PWR_LVL_P9"
.LASF292:
	.string	"vTaskDelete"
.LASF115:
	.string	"PERIPH_I2C0_MODULE"
.LASF203:
	.string	"core_id"
.LASF145:
	.string	"vhci_host_callback_t"
.LASF106:
	.string	"ESP_LOG_ERROR"
.LASF184:
	.string	"_btdm_sleep_enter"
.LASF325:
	.string	"btdm_rf_bb_init"
.LASF230:
	.string	"semphr_delete_wrapper"
.LASF277:
	.string	"btdm_lpcycle_us"
.LASF42:
	.string	"MODEM_USER_MODULE"
.LASF334:
	.string	"bredr_txpwr_get"
.LASF39:
	.string	"MODEM_WIFI_SOFTAP_MODULE"
.LASF269:
	.string	"esp_bt_controller_is_sleeping"
.LASF57:
	.string	"esp_bt_controller_config_t"
.LASF167:
	.string	"_queue_delete"
.LASF183:
	.string	"_btdm_sleep_check_duration"
.LASF34:
	.string	"ESP_MAC_ETH"
.LASF247:
	.string	"esp_bt_controller_mem_release"
.LASF63:
	.string	"ESP_BT_CONTROLLER_STATUS_IDLE"
.LASF100:
	.string	"ESP_SCO_DATA_PATH_PCM"
.LASF91:
	.string	"ESP_PWR_LVL_N11"
.LASF82:
	.string	"ESP_PWR_LVL_N12"
.LASF90:
	.string	"ESP_PWR_LVL_N14"
.LASF239:
	.string	"interrupt_restore"
.LASF320:
	.string	"btdm_controller_init"
.LASF270:
	.string	"esp_bt_controller_wakeup_request"
.LASF297:
	.string	"xQueueGenericSend"
.LASF207:
	.string	"task_create_wrapper"
.LASF188:
	.string	"cause_sw_intr"
.LASF310:
	.string	"btdm_wakeup_request"
.LASF253:
	.string	"esp_bt_controller_init"
.LASF264:
	.string	"max_power_level"
.LASF324:
	.string	"btdm_controller_enable_sleep"
.LASF11:
	.string	"__uint64_t"
.LASF15:
	.string	"long unsigned int"
.LASF196:
	.string	"btdm_config_mask_load"
.LASF340:
	.string	"esp_bt_controller_get_status"
.LASF243:
	.string	"esp_vhci_host_send_packet"
.LASF186:
	.string	"intr_no"
.LASF252:
	.string	"__err_rc"
.LASF133:
	.string	"PERIPH_SDMMC_MODULE"
.LASF267:
	.string	"status"
.LASF154:
	.string	"_task_yield"
.LASF211:
	.string	"param"
.LASF78:
	.string	"ESP_BLE_PWR_TYPE_SCAN"
.LASF317:
	.string	"esp_log_write"
.LASF102:
	.string	"notify_host_send_available"
.LASF234:
	.string	"mutex_create_wrapper"
.LASF144:
	.string	"vhci_host_callback"
.LASF67:
	.string	"esp_bt_controller_status_t"
.LASF31:
	.string	"ESP_MAC_WIFI_STA"
.LASF259:
	.string	"power_type"
.LASF173:
	.string	"_task_delete"
.LASF111:
	.string	"PERIPH_LEDC_MODULE"
.LASF175:
	.string	"_cause_sw_intr_to_core"
.LASF226:
	.string	"mutex_unlock_wrapper"
.LASF220:
	.string	"block_time_ms"
.LASF319:
	.string	"btdm_controller_set_sleep_mode"
.LASF261:
	.string	"esp_ble_tx_power_get"
.LASF244:
	.string	"esp_vhci_host_register_callback"
.LASF266:
	.string	"esp_bt_sleep_enable"
.LASF312:
	.string	"API_vhci_host_register_callback"
.LASF12:
	.string	"__intptr_t"
.LASF172:
	.string	"_task_create"
.LASF118:
	.string	"PERIPH_I2S1_MODULE"
.LASF9:
	.string	"__uint32_t"
.LASF37:
	.string	"MODEM_CLASSIC_BT_MODULE"
.LASF10:
	.string	"long long int"
.LASF291:
	.string	"xPortInIsrContext"
.LASF280:
	.string	"_data_start_btdm"
.LASF193:
	.string	"btdm_us_2_lpcycles"
.LASF134:
	.string	"PERIPH_SDIO_SLAVE_MODULE"
.LASF23:
	.string	"esp_err_t"
.LASF160:
	.string	"_semphr_take"
.LASF294:
	.string	"xQueueReceiveFromISR"
.LASF318:
	.string	"btdm_osi_funcs_register"
.LASF197:
	.string	"mask"
.LASF208:
	.string	"task_func"
.LASF204:
	.string	"is_in_isr_wrapper"
.LASF222:
	.string	"mutex"
.LASF41:
	.string	"MODEM_WIFI_NULL_MODULE"
.LASF336:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF68:
	.string	"ESP_BLE_PWR_TYPE_CONN_HDL0"
.LASF69:
	.string	"ESP_BLE_PWR_TYPE_CONN_HDL1"
.LASF70:
	.string	"ESP_BLE_PWR_TYPE_CONN_HDL2"
.LASF32:
	.string	"ESP_MAC_WIFI_SOFTAP"
.LASF72:
	.string	"ESP_BLE_PWR_TYPE_CONN_HDL4"
.LASF73:
	.string	"ESP_BLE_PWR_TYPE_CONN_HDL5"
.LASF74:
	.string	"ESP_BLE_PWR_TYPE_CONN_HDL6"
.LASF75:
	.string	"ESP_BLE_PWR_TYPE_CONN_HDL7"
.LASF76:
	.string	"ESP_BLE_PWR_TYPE_CONN_HDL8"
.LASF28:
	.string	"count"
.LASF142:
	.string	"PERIPH_BT_LC_MODULE"
.LASF50:
	.string	"hci_uart_no"
.LASF44:
	.string	"PHY_BT_MODULE"
.LASF1:
	.string	"unsigned int"
.LASF61:
	.string	"ESP_BT_MODE_BTDM"
.LASF22:
	.string	"intptr_t"
.LASF290:
	.string	"esp_ipc_call"
.LASF161:
	.string	"_semphr_give"
.LASF338:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF218:
	.string	"semphr"
.LASF314:
	.string	"_esp_error_check_failed"
.LASF268:
	.string	"esp_bt_sleep_disable"
.LASF107:
	.string	"ESP_LOG_WARN"
.LASF153:
	.string	"_interrupt_restore"
.LASF185:
	.string	"_btdm_sleep_exit"
.LASF101:
	.string	"esp_sco_data_path_t"
.LASF255:
	.string	"esp_bt_controller_deinit"
.LASF227:
	.string	"semphr_give_wrapper"
.LASF262:
	.string	"esp_bredr_tx_power_set"
.LASF139:
	.string	"PERIPH_BT_MODULE"
.LASF149:
	.string	"osi_funcs_t"
.LASF112:
	.string	"PERIPH_UART0_MODULE"
.LASF53:
	.string	"normal_adv_size"
.LASF249:
	.string	"mem_start"
.LASF278:
	.string	"btdm_lpcycle_us_frac"
.LASF127:
	.string	"PERIPH_RMT_MODULE"
.LASF110:
	.string	"ESP_LOG_VERBOSE"
.LASF148:
	.string	"btdm_dram_available_region_t"
.LASF180:
	.string	"_rand"
.LASF221:
	.string	"mutex_lock_wrapper"
.LASF120:
	.string	"PERIPH_TIMG1_MODULE"
.LASF123:
	.string	"PERIPH_PWM2_MODULE"
.LASF308:
	.string	"API_vhci_host_check_send_available"
.LASF219:
	.string	"queue_recv_wrapper"
.LASF199:
	.string	"btdm_sleep_enter_wrapper"
.LASF236:
	.string	"semphr_create_wrapper"
.LASF328:
	.string	"esp_phy_rf_deinit"
.LASF126:
	.string	"PERIPH_UHCI1_MODULE"
.LASF38:
	.string	"MODEM_WIFI_STATION_MODULE"
.LASF159:
	.string	"_semphr_give_from_isr"
.LASF315:
	.string	"esp_log_timestamp"
.LASF287:
	.string	"periph_module_disable"
.LASF311:
	.string	"API_vhci_host_send_packet"
.LASF0:
	.string	"long long unsigned int"
.LASF81:
	.string	"esp_ble_power_type_t"
.LASF164:
	.string	"_mutex_lock"
.LASF18:
	.string	"uint16_t"
.LASF177:
	.string	"_free"
.LASF309:
	.string	"btdm_power_state_active"
.LASF231:
	.string	"queue_create_wrapper"
.LASF214:
	.string	"queue"
.LASF105:
	.string	"ESP_LOG_NONE"
.LASF26:
	.string	"TickType_t"
.LASF327:
	.string	"esp_modem_sleep_deregister"
.LASF29:
	.string	"portMUX_TYPE"
.LASF306:
	.string	"memset"
.LASF108:
	.string	"ESP_LOG_INFO"
.LASF322:
	.string	"esp_phy_load_cal_and_init"
.LASF132:
	.string	"PERIPH_SPI_DMA_MODULE"
.LASF333:
	.string	"bredr_txpwr_set"
.LASF339:
	.string	"xPortGetCoreID"
.LASF155:
	.string	"_task_yield_from_isr"
.LASF99:
	.string	"ESP_SCO_DATA_PATH_HCI"
.LASF171:
	.string	"_queue_recv_from_isr"
.LASF256:
	.string	"esp_bt_controller_enable"
.LASF47:
	.string	"PHY_MODULE_COUNT"
.LASF157:
	.string	"_semphr_delete"
.LASF237:
	.string	"init"
.LASF289:
	.string	"esp_read_mac"
.LASF131:
	.string	"PERIPH_VSPI_MODULE"
.LASF232:
	.string	"queue_len"
.LASF260:
	.string	"power_level"
.LASF284:
	.string	"esp_modem_sleep_exit"
.LASF263:
	.string	"min_power_level"
.LASF250:
	.string	"mem_end"
.LASF129:
	.string	"PERIPH_SPI_MODULE"
.LASF54:
	.string	"mesh_adv_size"
.LASF156:
	.string	"_semphr_create"
.LASF181:
	.string	"_btdm_lpcycles_2_us"
.LASF209:
	.string	"name"
.LASF305:
	.string	"vTaskEnterCritical"
.LASF225:
	.string	"queue_send_wrapper"
.LASF5:
	.string	"short int"
.LASF21:
	.string	"uint64_t"
.LASF146:
	.string	"mode"
.LASF162:
	.string	"_mutex_create"
.LASF60:
	.string	"ESP_BT_MODE_CLASSIC_BT"
.LASF65:
	.string	"ESP_BT_CONTROLLER_STATUS_ENABLED"
.LASF224:
	.string	"queue_send_from_isr_wrapper"
.LASF198:
	.string	"btdm_sleep_exit_wrapper"
.LASF228:
	.string	"queue_delete_wrapper"
.LASF179:
	.string	"_srand"
.LASF136:
	.string	"PERIPH_EMAC_MODULE"
.LASF215:
	.string	"item"
.LASF117:
	.string	"PERIPH_I2S0_MODULE"
.LASF210:
	.string	"stack_depth"
.LASF254:
	.string	"btdm_cfg_mask"
.LASF158:
	.string	"_semphr_take_from_isr"
.LASF283:
	.string	"btdm_controller_get_sleep_mode"
.LASF151:
	.string	"_ints_on"
.LASF51:
	.string	"hci_uart_baudrate"
.LASF109:
	.string	"ESP_LOG_DEBUG"
.LASF332:
	.string	"ble_txpwr_get"
.LASF202:
	.string	"cause_sw_intr_to_core_wrapper"
.LASF71:
	.string	"ESP_BLE_PWR_TYPE_CONN_HDL3"
.LASF301:
	.string	"xQueueGiveFromISR"
.LASF307:
	.string	"memcpy"
.LASF114:
	.string	"PERIPH_UART2_MODULE"
.LASF273:
	.string	"btdm_dram_available_region"
.LASF258:
	.string	"esp_ble_tx_power_set"
.LASF282:
	.string	"_data_start_btdm_rom"
.LASF20:
	.string	"uint32_t"
.LASF233:
	.string	"item_size"
.LASF79:
	.string	"ESP_BLE_PWR_TYPE_DEFAULT"
.LASF326:
	.string	"btdm_controller_enable"
.LASF176:
	.string	"_malloc"
.LASF2:
	.string	"short unsigned int"
.LASF137:
	.string	"PERIPH_RNG_MODULE"
.LASF238:
	.string	"task_yield_from_isr"
.LASF152:
	.string	"_interrupt_disable"
.LASF337:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bt.c"
.LASF116:
	.string	"PERIPH_I2C1_MODULE"
.LASF295:
	.string	"xQueueGenericReceive"
.LASF182:
	.string	"_btdm_us_2_lpcycles"
.LASF257:
	.string	"esp_bt_controller_disable"
.LASF8:
	.string	"__int32_t"
.LASF49:
	.string	"controller_task_prio"
.LASF316:
	.string	"btdm_controller_get_compile_version"
.LASF288:
	.string	"esp_random"
.LASF235:
	.string	"semphr_give_from_isr_wrapper"
.LASF302:
	.string	"xQueueCreateCountingSemaphore"
.LASF330:
	.string	"btdm_controller_disable"
.LASF192:
	.string	"btdm_lpcycles_2_us"
.LASF242:
	.string	"data"
.LASF285:
	.string	"periph_module_enable"
.LASF45:
	.string	"PHY_WIFI_MODULE"
.LASF195:
	.string	"slot_cnt"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
