	.file	"croutine.c"
	.text
.Ltext0:
	.section	.text.prvCheckPendingReadyList,"ax",@progbits
	.literal_position
	.literal .LC0, xPendingReadyCoRoutineList
	.literal .LC1, uxTopCoRoutineReadyPriority
	.literal .LC2, pxReadyCoRoutineLists
	.align	4
	.type	prvCheckPendingReadyList, @function
prvCheckPendingReadyList:
.LFB17:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/croutine.c"
	.loc 1 238 0
	entry	sp, 32
.LCFI0:
	.loc 1 242 0
	j	.L2
.L4:
.LBB2:
.LBB3:
	.loc 1 247 0
#APP
# 247 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/croutine.c" 1
	rsil	a2, 3

# 0 "" 2
.LVL0:
#NO_APP
.LBE3:
	.loc 1 249 0
	l32r	a2, .LC0
	l32i.n	a2, a2, 12
	l32i.n	a2, a2, 12
.LVL1:
	.loc 1 250 0
	addi	a10, a2, 24
	call8	uxListRemove
.LVL2:
.LBB4:
	.loc 1 252 0
#APP
# 252 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/croutine.c" 1
	rsil	a3, 0

# 0 "" 2
.LVL3:
#NO_APP
.LBE4:
	.loc 1 254 0
	addi.n	a3, a2, 4
	mov.n	a10, a3
	call8	uxListRemove
.LVL4:
	.loc 1 255 0
	l32i.n	a8, a2, 44
	l32r	a2, .LC1
.LVL5:
	l32i.n	a2, a2, 0
	bgeu	a2, a8, .L3
	.loc 1 255 0 is_stmt 0 discriminator 1
	l32r	a2, .LC1
	s32i.n	a8, a2, 0
.L3:
	.loc 1 255 0 discriminator 3
	addx4	a8, a8, a8
	slli	a2, a8, 2
	mov.n	a11, a3
	l32r	a10, .LC2
	add.n	a10, a10, a2
	call8	vListInsertEnd
.LVL6:
.L2:
.LBE2:
	.loc 1 242 0 is_stmt 1
	l32r	a2, .LC0
	l32i.n	a2, a2, 0
	bnez.n	a2, .L4
	.loc 1 257 0
	retw.n
.LFE17:
	.size	prvCheckPendingReadyList, .-prvCheckPendingReadyList
	.section	.text.prvCheckDelayedList,"ax",@progbits
	.literal_position
	.literal .LC3, xLastTickCount
	.literal .LC4, xPassedTicks
	.literal .LC5, xCoRoutineTickCount
	.literal .LC6, pxDelayedCoRoutineList
	.literal .LC7, pxOverflowDelayedCoRoutineList
	.literal .LC8, uxTopCoRoutineReadyPriority
	.literal .LC9, pxReadyCoRoutineLists
	.align	4
	.type	prvCheckDelayedList, @function
prvCheckDelayedList:
.LFB18:
	.loc 1 261 0
	entry	sp, 32
.LCFI1:
	.loc 1 264 0
	call8	xTaskGetTickCount
.LVL7:
	l32r	a2, .LC3
	l32i.n	a2, a2, 0
	sub	a10, a10, a2
	l32r	a3, .LC4
	s32i.n	a10, a3, 0
	.loc 1 265 0
	j	.L6
.L12:
	.loc 1 267 0
	l32r	a8, .LC5
	l32i.n	a3, a8, 0
	addi.n	a3, a3, 1
	s32i.n	a3, a8, 0
	.loc 1 268 0
	addi.n	a2, a2, -1
	l32r	a8, .LC4
	s32i.n	a2, a8, 0
	.loc 1 271 0
	bnez.n	a3, .L8
.LBB5:
	.loc 1 277 0
	l32r	a3, .LC6
	l32i.n	a8, a3, 0
.LVL8:
	.loc 1 278 0
	l32r	a2, .LC7
	l32i.n	a9, a2, 0
	s32i.n	a9, a3, 0
	.loc 1 279 0
	s32i.n	a8, a2, 0
	j	.L8
.LVL9:
.L11:
.LBE5:
	.loc 1 285 0
	l32i.n	a2, a2, 12
	l32i.n	a2, a2, 12
.LVL10:
	.loc 1 287 0
	l32i.n	a3, a2, 4
	l32r	a8, .LC5
	l32i.n	a8, a8, 0
	bltu	a8, a3, .L6
.LBB6:
	.loc 1 293 0
#APP
# 293 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/croutine.c" 1
	rsil	a3, 3

# 0 "" 2
.LVL11:
#NO_APP
.LBE6:
	.loc 1 300 0
	addi.n	a3, a2, 4
	mov.n	a10, a3
	call8	uxListRemove
.LVL12:
	.loc 1 303 0
	l32i.n	a8, a2, 40
	beqz.n	a8, .L9
	.loc 1 305 0
	addi	a10, a2, 24
	call8	uxListRemove
.LVL13:
.L9:
.LBB7:
	.loc 1 308 0
#APP
# 308 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/croutine.c" 1
	rsil	a8, 0

# 0 "" 2
.LVL14:
#NO_APP
.LBE7:
	.loc 1 310 0
	l32i.n	a8, a2, 44
	l32r	a2, .LC8
.LVL15:
	l32i.n	a2, a2, 0
	bgeu	a2, a8, .L10
	.loc 1 310 0 is_stmt 0 discriminator 1
	l32r	a2, .LC8
	s32i.n	a8, a2, 0
.L10:
	.loc 1 310 0 discriminator 3
	addx4	a8, a8, a8
	slli	a2, a8, 2
	mov.n	a11, a3
	l32r	a10, .LC9
	add.n	a10, a10, a2
	call8	vListInsertEnd
.LVL16:
.L8:
	.loc 1 283 0 is_stmt 1
	l32r	a2, .LC6
	l32i.n	a2, a2, 0
	l32i.n	a3, a2, 0
	bnez.n	a3, .L11
.L6:
	.loc 1 265 0
	l32r	a2, .LC4
	l32i.n	a2, a2, 0
	bnez.n	a2, .L12
	.loc 1 314 0
	l32r	a2, .LC5
	l32i.n	a3, a2, 0
	l32r	a2, .LC3
	s32i.n	a3, a2, 0
	retw.n
.LFE18:
	.size	prvCheckDelayedList, .-prvCheckDelayedList
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC11:
	.string	"Untested FreeRTOS function %s\r\n"
	.align	4
.LC13:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/freertos/croutine.c"
	.align	4
.LC15:
	.string	"%s:%d (%s)- assert failed!\n"
	.section	.text.xCoRoutineCreate,"ax",@progbits
	.literal_position
	.literal .LC10, __FUNCTION__$5058
	.literal .LC12, .LC11
	.literal .LC14, .LC13
	.literal .LC16, .LC15
	.align	4
	.global	xCoRoutineCreate
	.type	xCoRoutineCreate, @function
xCoRoutineCreate:
.LFB15:
	.loc 1 142 0
.LVL17:
	entry	sp, 32
.LCFI2:
	.loc 1 146 0
	l32r	a2, .LC10
.LVL18:
	mov.n	a11, a2
	l32r	a10, .LC12
	call8	ets_printf
.LVL19:
	.loc 1 146 0
	mov.n	a13, a2
	movi	a12, 0x92
	l32r	a11, .LC14
	l32r	a10, .LC16
	call8	ets_printf
.LVL20:
	call8	abort
.LVL21:
.LFE15:
	.size	xCoRoutineCreate, .-xCoRoutineCreate
	.section	.text.vCoRoutineAddToDelayedList,"ax",@progbits
	.literal_position
	.literal .LC17, xCoRoutineTickCount
	.literal .LC18, pxCurrentCoRoutine
	.literal .LC19, pxOverflowDelayedCoRoutineList
	.literal .LC20, pxDelayedCoRoutineList
	.align	4
	.global	vCoRoutineAddToDelayedList
	.type	vCoRoutineAddToDelayedList, @function
vCoRoutineAddToDelayedList:
.LFB16:
	.loc 1 200 0
.LVL22:
	entry	sp, 32
.LCFI3:
	.loc 1 205 0
	l32r	a4, .LC17
	l32i.n	a5, a4, 0
	add.n	a2, a5, a2
.LVL23:
	.loc 1 210 0
	l32r	a5, .LC18
	l32i.n	a10, a5, 0
	addi.n	a10, a10, 4
	call8	uxListRemove
.LVL24:
	.loc 1 213 0
	l32i.n	a11, a5, 0
	s32i.n	a2, a11, 4
	.loc 1 215 0
	l32i.n	a4, a4, 0
	bgeu	a2, a4, .L15
	.loc 1 219 0
	addi.n	a11, a11, 4
	l32r	a2, .LC19
.LVL25:
	l32i.n	a10, a2, 0
	call8	vListInsert
.LVL26:
	j	.L16
.LVL27:
.L15:
	.loc 1 225 0
	addi.n	a11, a11, 4
	l32r	a2, .LC20
.LVL28:
	l32i.n	a10, a2, 0
	call8	vListInsert
.LVL29:
.L16:
	.loc 1 228 0
	beqz.n	a3, .L14
	.loc 1 232 0
	l32r	a2, .LC18
	l32i.n	a11, a2, 0
	addi	a11, a11, 24
	mov.n	a10, a3
	call8	vListInsert
.LVL30:
.L14:
	retw.n
.LFE16:
	.size	vCoRoutineAddToDelayedList, .-vCoRoutineAddToDelayedList
	.section	.text.vCoRoutineSchedule,"ax",@progbits
	.literal_position
	.literal .LC21, uxTopCoRoutineReadyPriority
	.literal .LC22, pxReadyCoRoutineLists
	.literal .LC23, pxCurrentCoRoutine
	.align	4
	.global	vCoRoutineSchedule
	.type	vCoRoutineSchedule, @function
vCoRoutineSchedule:
.LFB19:
	.loc 1 319 0
	entry	sp, 32
.LCFI4:
	.loc 1 321 0
	call8	prvCheckPendingReadyList
.LVL31:
	.loc 1 324 0
	call8	prvCheckDelayedList
.LVL32:
	.loc 1 327 0
	j	.L19
.L21:
	.loc 1 329 0
	beqz.n	a8, .L18
	.loc 1 334 0
	addi.n	a8, a8, -1
	l32r	a9, .LC21
	s32i.n	a8, a9, 0
.L19:
	.loc 1 327 0
	l32r	a8, .LC21
	l32i.n	a8, a8, 0
	addx4	a10, a8, a8
	slli	a9, a10, 2
	l32r	a10, .LC22
	add.n	a9, a10, a9
	l32i.n	a9, a9, 0
	beqz.n	a9, .L21
.LVL33:
.LBB8:
	.loc 1 339 0
	slli	a10, a8, 2
	add.n	a10, a10, a8
	slli	a9, a10, 2
	l32r	a10, .LC22
	add.n	a9, a10, a9
	l32i.n	a10, a9, 4
	l32i.n	a10, a10, 4
	s32i.n	a10, a9, 4
	addi.n	a9, a9, 8
	bne	a10, a9, .L22
	.loc 1 339 0 is_stmt 0 discriminator 1
	l32i.n	a11, a10, 4
	addx4	a10, a8, a8
	slli	a9, a10, 2
	l32r	a10, .LC22
	add.n	a9, a10, a9
	s32i.n	a11, a9, 4
.L22:
	.loc 1 339 0 discriminator 3
	addx4	a8, a8, a8
.LVL34:
	slli	a9, a8, 2
	l32r	a8, .LC22
	add.n	a9, a8, a9
	l32i.n	a8, a9, 4
	l32i.n	a10, a8, 12
	l32r	a8, .LC23
	s32i.n	a10, a8, 0
.LBE8:
	.loc 1 342 0 is_stmt 1 discriminator 3
	l32i.n	a8, a10, 0
	l32i.n	a11, a10, 48
	callx8	a8
.LVL35:
.L18:
	retw.n
.LFE19:
	.size	vCoRoutineSchedule, .-vCoRoutineSchedule
	.section	.text.xCoRoutineRemoveFromEventList,"ax",@progbits
	.literal_position
	.literal .LC24, xPendingReadyCoRoutineList
	.literal .LC25, pxCurrentCoRoutine
	.align	4
	.global	xCoRoutineRemoveFromEventList
	.type	xCoRoutineRemoveFromEventList, @function
xCoRoutineRemoveFromEventList:
.LFB21:
	.loc 1 369 0
.LVL36:
	entry	sp, 32
.LCFI5:
	.loc 1 376 0
	l32i.n	a2, a2, 12
.LVL37:
	l32i.n	a2, a2, 12
.LVL38:
	.loc 1 377 0
	addi	a3, a2, 24
	mov.n	a10, a3
	call8	uxListRemove
.LVL39:
	.loc 1 378 0
	mov.n	a11, a3
	l32r	a10, .LC24
	call8	vListInsertEnd
.LVL40:
	.loc 1 380 0
	l32i.n	a3, a2, 44
	l32r	a2, .LC25
.LVL41:
	l32i.n	a2, a2, 0
	l32i.n	a2, a2, 44
	bltu	a3, a2, .L25
	.loc 1 382 0
	movi.n	a2, 1
	retw.n
.L25:
	.loc 1 386 0
	movi.n	a2, 0
.LVL42:
	.loc 1 390 0
	retw.n
.LFE21:
	.size	xCoRoutineRemoveFromEventList, .-xCoRoutineRemoveFromEventList
	.section	.rodata.__FUNCTION__$5058,"a",@progbits
	.align	4
	.type	__FUNCTION__$5058, @object
	.size	__FUNCTION__$5058, 17
__FUNCTION__$5058:
	.string	"xCoRoutineCreate"
	.section	.bss.xPassedTicks,"aw",@nobits
	.align	4
	.type	xPassedTicks, @object
	.size	xPassedTicks, 4
xPassedTicks:
	.zero	4
	.section	.bss.xLastTickCount,"aw",@nobits
	.align	4
	.type	xLastTickCount, @object
	.size	xLastTickCount, 4
xLastTickCount:
	.zero	4
	.section	.bss.xCoRoutineTickCount,"aw",@nobits
	.align	4
	.type	xCoRoutineTickCount, @object
	.size	xCoRoutineTickCount, 4
xCoRoutineTickCount:
	.zero	4
	.section	.bss.uxTopCoRoutineReadyPriority,"aw",@nobits
	.align	4
	.type	uxTopCoRoutineReadyPriority, @object
	.size	uxTopCoRoutineReadyPriority, 4
uxTopCoRoutineReadyPriority:
	.zero	4
	.global	pxCurrentCoRoutine
	.section	.bss.pxCurrentCoRoutine,"aw",@nobits
	.align	4
	.type	pxCurrentCoRoutine, @object
	.size	pxCurrentCoRoutine, 4
pxCurrentCoRoutine:
	.zero	4
	.section	.bss.xPendingReadyCoRoutineList,"aw",@nobits
	.align	4
	.type	xPendingReadyCoRoutineList, @object
	.size	xPendingReadyCoRoutineList, 20
xPendingReadyCoRoutineList:
	.zero	20
	.section	.bss.pxOverflowDelayedCoRoutineList,"aw",@nobits
	.align	4
	.type	pxOverflowDelayedCoRoutineList, @object
	.size	pxOverflowDelayedCoRoutineList, 4
pxOverflowDelayedCoRoutineList:
	.zero	4
	.section	.bss.pxDelayedCoRoutineList,"aw",@nobits
	.align	4
	.type	pxDelayedCoRoutineList, @object
	.size	pxDelayedCoRoutineList, 4
pxDelayedCoRoutineList:
	.zero	4
	.section	.bss.pxReadyCoRoutineLists,"aw",@nobits
	.align	4
	.type	pxReadyCoRoutineLists, @object
	.size	pxReadyCoRoutineLists, 40
pxReadyCoRoutineLists:
	.zero	40
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
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI0-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI1-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI2-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI3-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI4-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI5-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/list.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/croutine.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x6b4
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0xc
	.4byte	.LASF76
	.4byte	.LASF77
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
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x16
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x3
	.byte	0x21
	.4byte	0x4f
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x2d
	.4byte	0x5a
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF15
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x4
	.byte	0x6f
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x4
	.byte	0x70
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x4
	.byte	0x76
	.4byte	0x9c
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x14
	.byte	0x5
	.byte	0xb5
	.4byte	0x118
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x5
	.byte	0xb8
	.4byte	0xc4
	.byte	0
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x5
	.byte	0xb9
	.4byte	0x118
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x5
	.byte	0xba
	.4byte	0x118
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x5
	.byte	0xbb
	.4byte	0x81
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x5
	.byte	0xbc
	.4byte	0x81
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xcf
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x5
	.byte	0xbf
	.4byte	0xcf
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0xc
	.byte	0x5
	.byte	0xc5
	.4byte	0x15a
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x5
	.byte	0xc8
	.4byte	0xc4
	.byte	0
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x5
	.byte	0xc9
	.4byte	0x118
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x5
	.byte	0xca
	.4byte	0x118
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x5
	.byte	0xcc
	.4byte	0x129
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0x14
	.byte	0x5
	.byte	0xd6
	.4byte	0x196
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x5
	.byte	0xd9
	.4byte	0xb9
	.byte	0
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x5
	.byte	0xda
	.4byte	0x196
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x5
	.byte	0xdb
	.4byte	0x15a
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x11e
	.uleb128 0x4
	.4byte	.LASF32
	.byte	0x5
	.byte	0xdd
	.4byte	0x165
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x6
	.byte	0x56
	.4byte	0x81
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x6
	.byte	0x59
	.4byte	0x1bd
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1c3
	.uleb128 0x9
	.4byte	0x1d3
	.uleb128 0xa
	.4byte	0x1a7
	.uleb128 0xa
	.4byte	0xb9
	.byte	0
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0x38
	.byte	0x6
	.byte	0x5b
	.4byte	0x228
	.uleb128 0x7
	.4byte	.LASF36
	.byte	0x6
	.byte	0x5d
	.4byte	0x1b2
	.byte	0
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0x6
	.byte	0x5e
	.4byte	0x11e
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF38
	.byte	0x6
	.byte	0x5f
	.4byte	0x11e
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF39
	.byte	0x6
	.byte	0x60
	.4byte	0xb9
	.byte	0x2c
	.uleb128 0x7
	.4byte	.LASF40
	.byte	0x6
	.byte	0x61
	.4byte	0xb9
	.byte	0x30
	.uleb128 0x7
	.4byte	.LASF41
	.byte	0x6
	.byte	0x62
	.4byte	0x91
	.byte	0x34
	.byte	0
	.uleb128 0x4
	.4byte	.LASF42
	.byte	0x6
	.byte	0x63
	.4byte	0x1d3
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x1
	.byte	0xed
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2d8
	.uleb128 0xc
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0xd
	.4byte	.LASF46
	.byte	0x1
	.byte	0xf4
	.4byte	0x2d8
	.4byte	.LLST0
	.uleb128 0xe
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x279
	.uleb128 0xf
	.4byte	.LASF43
	.byte	0x1
	.byte	0xf7
	.4byte	0x2c
	.byte	0
	.uleb128 0xe
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x292
	.uleb128 0xf
	.4byte	.LASF43
	.byte	0x1
	.byte	0xfc
	.4byte	0x2c
	.byte	0
	.uleb128 0x10
	.4byte	.LVL2
	.4byte	0x671
	.4byte	0x2a6
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 24
	.byte	0
	.uleb128 0x10
	.4byte	.LVL4
	.4byte	0x671
	.4byte	0x2ba
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL6
	.4byte	0x67d
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x72
	.sleb128 0
	.byte	0x3
	.4byte	pxReadyCoRoutineLists
	.byte	0x22
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x228
	.uleb128 0x13
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x104
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3a4
	.uleb128 0x14
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x106
	.4byte	0x2d8
	.4byte	.LLST1
	.uleb128 0xe
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.4byte	0x322
	.uleb128 0x14
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x111
	.4byte	0x3a4
	.4byte	.LLST2
	.byte	0
	.uleb128 0xe
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0x33c
	.uleb128 0x15
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x125
	.4byte	0x2c
	.byte	0
	.uleb128 0xe
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.4byte	0x356
	.uleb128 0x15
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x134
	.4byte	0x2c
	.byte	0
	.uleb128 0x16
	.4byte	.LVL7
	.4byte	0x689
	.uleb128 0x10
	.4byte	.LVL12
	.4byte	0x671
	.4byte	0x373
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL13
	.4byte	0x671
	.4byte	0x387
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 24
	.byte	0
	.uleb128 0x12
	.4byte	.LVL16
	.4byte	0x67d
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x72
	.sleb128 0
	.byte	0x3
	.4byte	pxReadyCoRoutineLists
	.byte	0x22
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x19c
	.uleb128 0x17
	.4byte	.LASF78
	.byte	0x1
	.byte	0x8d
	.4byte	0xae
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x464
	.uleb128 0x18
	.4byte	.LASF49
	.byte	0x1
	.byte	0x8d
	.4byte	0x1b2
	.4byte	.LLST3
	.uleb128 0x19
	.4byte	.LASF39
	.byte	0x1
	.byte	0x8d
	.4byte	0xb9
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.4byte	.LASF40
	.byte	0x1
	.byte	0x8d
	.4byte	0xb9
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xf
	.4byte	.LASF50
	.byte	0x1
	.byte	0x8f
	.4byte	0xae
	.uleb128 0xf
	.4byte	.LASF51
	.byte	0x1
	.byte	0x90
	.4byte	0x2d8
	.uleb128 0x1a
	.4byte	.LASF52
	.4byte	0x474
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5058
	.uleb128 0x10
	.4byte	.LVL19
	.4byte	0x695
	.4byte	0x42e
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL20
	.4byte	0x695
	.4byte	0x45a
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x92
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL21
	.4byte	0x6a0
	.byte	0
	.uleb128 0x1b
	.4byte	0x8a
	.4byte	0x474
	.uleb128 0x1c
	.4byte	0x7a
	.byte	0x10
	.byte	0
	.uleb128 0x1d
	.4byte	0x464
	.uleb128 0x1e
	.4byte	.LASF56
	.byte	0x1
	.byte	0xc7
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4e5
	.uleb128 0x18
	.4byte	.LASF53
	.byte	0x1
	.byte	0xc7
	.4byte	0xc4
	.4byte	.LLST4
	.uleb128 0x19
	.4byte	.LASF54
	.byte	0x1
	.byte	0xc7
	.4byte	0x3a4
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0x1
	.byte	0xc9
	.4byte	0xc4
	.4byte	.LLST5
	.uleb128 0x16
	.4byte	.LVL24
	.4byte	0x671
	.uleb128 0x16
	.4byte	.LVL26
	.4byte	0x6ab
	.uleb128 0x16
	.4byte	.LVL29
	.4byte	0x6ab
	.uleb128 0x12
	.4byte	.LVL30
	.4byte	0x6ab
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x13e
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x52c
	.uleb128 0xe
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.4byte	0x519
	.uleb128 0x14
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x153
	.4byte	0x52c
	.4byte	.LLST6
	.byte	0
	.uleb128 0x16
	.4byte	.LVL31
	.4byte	0x233
	.uleb128 0x16
	.4byte	.LVL32
	.4byte	0x2de
	.byte	0
	.uleb128 0x1d
	.4byte	0x3a4
	.uleb128 0x20
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x170
	.4byte	0xae
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5a7
	.uleb128 0x21
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x170
	.4byte	0x5a7
	.4byte	.LLST7
	.uleb128 0x14
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x172
	.4byte	0x2d8
	.4byte	.LLST8
	.uleb128 0x22
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x173
	.4byte	0xae
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x10
	.4byte	.LVL39
	.4byte	0x671
	.4byte	0x58d
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL40
	.4byte	0x67d
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xPendingReadyCoRoutineList
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x5ad
	.uleb128 0x1d
	.4byte	0x19c
	.uleb128 0x1b
	.4byte	0x19c
	.4byte	0x5c2
	.uleb128 0x1c
	.4byte	0x7a
	.byte	0x1
	.byte	0
	.uleb128 0x23
	.4byte	.LASF59
	.byte	0x1
	.byte	0x54
	.4byte	0x5b2
	.uleb128 0x5
	.byte	0x3
	.4byte	pxReadyCoRoutineLists
	.uleb128 0xf
	.4byte	.LASF60
	.byte	0x1
	.byte	0x55
	.4byte	0x19c
	.uleb128 0xf
	.4byte	.LASF61
	.byte	0x1
	.byte	0x56
	.4byte	0x19c
	.uleb128 0x23
	.4byte	.LASF62
	.byte	0x1
	.byte	0x57
	.4byte	0x3a4
	.uleb128 0x5
	.byte	0x3
	.4byte	pxDelayedCoRoutineList
	.uleb128 0x23
	.4byte	.LASF63
	.byte	0x1
	.byte	0x58
	.4byte	0x3a4
	.uleb128 0x5
	.byte	0x3
	.4byte	pxOverflowDelayedCoRoutineList
	.uleb128 0x23
	.4byte	.LASF64
	.byte	0x1
	.byte	0x59
	.4byte	0x19c
	.uleb128 0x5
	.byte	0x3
	.4byte	xPendingReadyCoRoutineList
	.uleb128 0x23
	.4byte	.LASF65
	.byte	0x1
	.byte	0x5d
	.4byte	0xb9
	.uleb128 0x5
	.byte	0x3
	.4byte	uxTopCoRoutineReadyPriority
	.uleb128 0x23
	.4byte	.LASF66
	.byte	0x1
	.byte	0x5e
	.4byte	0xc4
	.uleb128 0x5
	.byte	0x3
	.4byte	xCoRoutineTickCount
	.uleb128 0x23
	.4byte	.LASF67
	.byte	0x1
	.byte	0x5e
	.4byte	0xc4
	.uleb128 0x5
	.byte	0x3
	.4byte	xLastTickCount
	.uleb128 0x23
	.4byte	.LASF68
	.byte	0x1
	.byte	0x5e
	.4byte	0xc4
	.uleb128 0x5
	.byte	0x3
	.4byte	xPassedTicks
	.uleb128 0x24
	.4byte	.LASF80
	.byte	0x1
	.byte	0x5c
	.4byte	0x2d8
	.uleb128 0x5
	.byte	0x3
	.4byte	pxCurrentCoRoutine
	.uleb128 0x25
	.4byte	.LASF69
	.4byte	.LASF69
	.byte	0x5
	.2byte	0x1cb
	.uleb128 0x25
	.4byte	.LASF70
	.4byte	.LASF70
	.byte	0x5
	.2byte	0x1bc
	.uleb128 0x25
	.4byte	.LASF71
	.4byte	.LASF71
	.byte	0x7
	.2byte	0x50d
	.uleb128 0x26
	.4byte	.LASF72
	.4byte	.LASF72
	.byte	0x8
	.byte	0xde
	.uleb128 0x26
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0x9
	.byte	0x47
	.uleb128 0x25
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0x5
	.2byte	0x1a7
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x2116
	.uleb128 0x19
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x5
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL1
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x3
	.byte	0x73
	.sleb128 -4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL10
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x3
	.byte	0x73
	.sleb128 -4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LVL26-1
	.2byte	0x2
	.byte	0x7b
	.sleb128 0
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LVL29-1
	.2byte	0x8
	.byte	0x3
	.4byte	pxCurrentCoRoutine
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0xb
	.byte	0x78
	.sleb128 0
	.byte	0x44
	.byte	0x1e
	.byte	0x3
	.4byte	pxReadyCoRoutineLists
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35-1
	.2byte	0xf
	.byte	0x3
	.4byte	uxTopCoRoutineReadyPriority
	.byte	0x6
	.byte	0x44
	.byte	0x1e
	.byte	0x3
	.4byte	pxReadyCoRoutineLists
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL38
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x44
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF54:
	.string	"pxEventList"
.LASF78:
	.string	"xCoRoutineCreate"
.LASF45:
	.string	"prvCheckDelayedList"
.LASF51:
	.string	"pxCoRoutine"
.LASF49:
	.string	"pxCoRoutineCode"
.LASF21:
	.string	"pxPrevious"
.LASF74:
	.string	"vListInsert"
.LASF4:
	.string	"short int"
.LASF31:
	.string	"xListEnd"
.LASF10:
	.string	"sizetype"
.LASF79:
	.string	"xCoRoutineRemoveFromEventList"
.LASF62:
	.string	"pxDelayedCoRoutineList"
.LASF6:
	.string	"__uint32_t"
.LASF36:
	.string	"pxCoRoutineFunction"
.LASF5:
	.string	"__uint16_t"
.LASF46:
	.string	"pxUnblockedCRCB"
.LASF37:
	.string	"xGenericListItem"
.LASF22:
	.string	"pvOwner"
.LASF53:
	.string	"xTicksToDelay"
.LASF24:
	.string	"ListItem_t"
.LASF48:
	.string	"pxTemp"
.LASF14:
	.string	"uint32_t"
.LASF43:
	.string	"__tmp"
.LASF32:
	.string	"List_t"
.LASF27:
	.string	"MiniListItem_t"
.LASF7:
	.string	"long long int"
.LASF18:
	.string	"TickType_t"
.LASF58:
	.string	"pxConstList"
.LASF9:
	.string	"long int"
.LASF28:
	.string	"xLIST"
.LASF52:
	.string	"__FUNCTION__"
.LASF19:
	.string	"xItemValue"
.LASF47:
	.string	"pxCRCB"
.LASF71:
	.string	"xTaskGetTickCount"
.LASF25:
	.string	"xLIST_ITEM"
.LASF44:
	.string	"prvCheckPendingReadyList"
.LASF33:
	.string	"CoRoutineHandle_t"
.LASF57:
	.string	"vCoRoutineSchedule"
.LASF41:
	.string	"uxState"
.LASF3:
	.string	"unsigned char"
.LASF73:
	.string	"abort"
.LASF75:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF68:
	.string	"xPassedTicks"
.LASF2:
	.string	"signed char"
.LASF8:
	.string	"long long unsigned int"
.LASF38:
	.string	"xEventListItem"
.LASF0:
	.string	"unsigned int"
.LASF80:
	.string	"pxCurrentCoRoutine"
.LASF13:
	.string	"uint16_t"
.LASF16:
	.string	"BaseType_t"
.LASF23:
	.string	"pvContainer"
.LASF64:
	.string	"xPendingReadyCoRoutineList"
.LASF72:
	.string	"ets_printf"
.LASF40:
	.string	"uxIndex"
.LASF1:
	.string	"short unsigned int"
.LASF56:
	.string	"vCoRoutineAddToDelayedList"
.LASF12:
	.string	"char"
.LASF34:
	.string	"crCOROUTINE_CODE"
.LASF69:
	.string	"uxListRemove"
.LASF20:
	.string	"pxNext"
.LASF42:
	.string	"CRCB_t"
.LASF63:
	.string	"pxOverflowDelayedCoRoutineList"
.LASF15:
	.string	"_Bool"
.LASF70:
	.string	"vListInsertEnd"
.LASF35:
	.string	"corCoRoutineControlBlock"
.LASF11:
	.string	"long unsigned int"
.LASF17:
	.string	"UBaseType_t"
.LASF60:
	.string	"xDelayedCoRoutineList1"
.LASF61:
	.string	"xDelayedCoRoutineList2"
.LASF29:
	.string	"uxNumberOfItems"
.LASF59:
	.string	"pxReadyCoRoutineLists"
.LASF67:
	.string	"xLastTickCount"
.LASF50:
	.string	"xReturn"
.LASF66:
	.string	"xCoRoutineTickCount"
.LASF65:
	.string	"uxTopCoRoutineReadyPriority"
.LASF39:
	.string	"uxPriority"
.LASF30:
	.string	"pxIndex"
.LASF77:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\freertos"
.LASF26:
	.string	"xMINI_LIST_ITEM"
.LASF76:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/freertos/croutine.c"
.LASF55:
	.string	"xTimeToWake"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
