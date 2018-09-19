	.file	"heap_trace.c"
	.text
.Ltext0:
	.section	.text.set_tracing,"ax",@progbits
	.align	4
	.type	set_tracing, @function
set_tracing:
.LFB18:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/heap_trace.c"
	.loc 1 95 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 104 0
	movi	a2, 0x106
.LVL1:
	retw.n
.LFE18:
	.size	set_tracing, .-set_tracing
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC0, trace_mux
	.align	4
	.type	record_allocation, @function
record_allocation:
.LFB24:
	.loc 1 194 0
.LVL2:
	entry	sp, 32
.LCFI1:
	.loc 1 195 0
	l32r	a2, .LC0
.LVL3:
	mov.n	a10, a2
	call8	vTaskEnterCritical
.LVL4:
	.loc 1 214 0
	mov.n	a10, a2
	call8	vTaskExitCritical
.LVL5:
	retw.n
.LFE24:
	.size	record_allocation, .-record_allocation
	.align	4
	.type	trace_malloc, @function
trace_malloc:
.LFB29:
	.loc 1 320 0
.LVL6:
	entry	sp, 32
.LCFI2:
.LBB14:
.LBB15:
	.loc 1 267 0
	call8	xthal_get_ccount
.LVL7:
.LBE15:
.LBE14:
	.loc 1 323 0
	bnez.n	a4, .L4
	.loc 1 324 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	__real_heap_caps_malloc
.LVL8:
	j	.L5
.LVL9:
.L4:
	.loc 1 326 0
	mov.n	a10, a2
	call8	__real_heap_caps_malloc_default
.LVL10:
.L5:
	.loc 1 339 0
	mov.n	a2, a10
.LVL11:
	retw.n
.LFE29:
	.size	trace_malloc, .-trace_malloc
	.literal_position
	.literal .LC1, count
	.align	4
	.type	remove_record, @function
remove_record:
.LFB26:
	.loc 1 252 0
.LVL12:
	entry	sp, 32
.LCFI3:
	.loc 1 253 0
	l32r	a3, .LC1
	l32i.n	a3, a3, 0
	addi.n	a3, a3, -1
	bgeu	a2, a3, .L7
	.loc 1 255 0
	addx2	a8, a2, a2
	slli	a10, a8, 2
	addi.n	a8, a2, 1
	addx2	a8, a8, a8
	slli	a11, a8, 2
	.loc 1 256 0
	neg	a2, a2
.LVL13:
	.loc 1 255 0
	addx2	a2, a2, a2
.LVL14:
	slli	a12, a2, 2
	addi	a12, a12, -12
	call8	memmove
.LVL15:
	j	.L8
.LVL16:
.L7:
	.loc 1 259 0
	addx2	a2, a2, a2
.LVL17:
	slli	a8, a2, 2
	movi.n	a2, 0
	s8i	a2, a8, 0
	s8i	a2, a8, 1
	s8i	a2, a8, 2
	s8i	a2, a8, 3
	s8i	a2, a8, 4
	s8i	a2, a8, 5
	s8i	a2, a8, 6
	s8i	a2, a8, 7
	s8i	a2, a8, 8
	s8i	a2, a8, 9
	s8i	a2, a8, 10
	s8i	a2, a8, 11
.L8:
	.loc 1 261 0
	l32r	a2, .LC1
	s32i.n	a3, a2, 0
	retw.n
.LFE26:
	.size	remove_record, .-remove_record
	.literal_position
	.literal .LC2, trace_mux
	.align	4
	.type	record_free, @function
record_free:
.LFB25:
	.loc 1 226 0
.LVL18:
	entry	sp, 32
.LCFI4:
	.loc 1 227 0
	l32r	a2, .LC2
.LVL19:
	mov.n	a10, a2
	call8	vTaskEnterCritical
.LVL20:
	.loc 1 247 0
	mov.n	a10, a2
	call8	vTaskExitCritical
.LVL21:
	retw.n
.LFE25:
	.size	record_free, .-record_free
	.align	4
	.type	trace_free, @function
trace_free:
.LFB30:
	.loc 1 345 0
.LVL22:
	entry	sp, 32
.LCFI5:
	.loc 1 351 0
	mov.n	a10, a2
	call8	__real_heap_caps_free
.LVL23:
	retw.n
.LFE30:
	.size	trace_free, .-trace_free
	.align	4
	.type	trace_realloc, @function
trace_realloc:
.LFB31:
	.loc 1 358 0
.LVL24:
	entry	sp, 32
.LCFI6:
.LBB16:
.LBB17:
	.loc 1 267 0
	call8	xthal_get_ccount
.LVL25:
.LBE17:
.LBE16:
	.loc 1 366 0
	bnez.n	a5, .L12
	.loc 1 367 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	__real_heap_caps_realloc
.LVL26:
	j	.L13
.LVL27:
.L12:
	.loc 1 369 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	__real_heap_caps_realloc_default
.LVL28:
.L13:
	.loc 1 386 0
	mov.n	a2, a10
.LVL29:
	retw.n
.LFE31:
	.size	trace_realloc, .-trace_realloc
	.section	.text.heap_trace_init_standalone,"ax",@progbits
	.align	4
	.global	heap_trace_init_standalone
	.type	heap_trace_init_standalone, @function
heap_trace_init_standalone:
.LFB16:
	.loc 1 57 0
.LVL30:
	entry	sp, 32
.LCFI7:
	.loc 1 69 0
	movi	a2, 0x106
.LVL31:
	retw.n
.LFE16:
	.size	heap_trace_init_standalone, .-heap_trace_init_standalone
	.section	.text.heap_trace_start,"ax",@progbits
	.align	4
	.global	heap_trace_start
	.type	heap_trace_start, @function
heap_trace_start:
.LFB17:
	.loc 1 72 0
.LVL32:
	entry	sp, 32
.LCFI8:
	.loc 1 92 0
	movi	a2, 0x106
.LVL33:
	retw.n
.LFE17:
	.size	heap_trace_start, .-heap_trace_start
	.section	.text.heap_trace_stop,"ax",@progbits
	.align	4
	.global	heap_trace_stop
	.type	heap_trace_stop, @function
heap_trace_stop:
.LFB19:
	.loc 1 107 0
	entry	sp, 32
.LCFI9:
	.loc 1 108 0
	movi.n	a10, 0
	call8	set_tracing
.LVL34:
	.loc 1 109 0
	mov.n	a2, a10
	retw.n
.LFE19:
	.size	heap_trace_stop, .-heap_trace_stop
	.section	.text.heap_trace_resume,"ax",@progbits
	.align	4
	.global	heap_trace_resume
	.type	heap_trace_resume, @function
heap_trace_resume:
.LFB20:
	.loc 1 112 0
	entry	sp, 32
.LCFI10:
	.loc 1 113 0
	movi.n	a10, 1
	call8	set_tracing
.LVL35:
	.loc 1 114 0
	mov.n	a2, a10
	retw.n
.LFE20:
	.size	heap_trace_resume, .-heap_trace_resume
	.section	.text.heap_trace_get_count,"ax",@progbits
	.literal_position
	.literal .LC3, count
	.align	4
	.global	heap_trace_get_count
	.type	heap_trace_get_count, @function
heap_trace_get_count:
.LFB21:
	.loc 1 117 0
	entry	sp, 32
.LCFI11:
	.loc 1 119 0
	l32r	a8, .LC3
	l32i.n	a2, a8, 0
	retw.n
.LFE21:
	.size	heap_trace_get_count, .-heap_trace_get_count
	.section	.text.heap_trace_get,"ax",@progbits
	.align	4
	.global	heap_trace_get
	.type	heap_trace_get, @function
heap_trace_get:
.LFB22:
	.loc 1 122 0
.LVL36:
	entry	sp, 32
.LCFI12:
	.loc 1 139 0
	movi	a2, 0x106
.LVL37:
	retw.n
.LFE22:
	.size	heap_trace_get, .-heap_trace_get
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC4:
	.string	"no data, heap tracing is disabled."
	.section	.text.heap_trace_dump,"ax",@progbits
	.literal_position
	.literal .LC5, .LC4
	.align	4
	.global	heap_trace_dump
	.type	heap_trace_dump, @function
heap_trace_dump:
.LFB23:
	.loc 1 143 0
	entry	sp, 32
.LCFI13:
	.loc 1 145 0
	l32r	a10, .LC5
	call8	puts
.LVL38:
	retw.n
.LFE23:
	.size	heap_trace_dump, .-heap_trace_dump
	.section	.iram1
	.align	4
	.global	__wrap_malloc
	.type	__wrap_malloc, @function
__wrap_malloc:
.LFB32:
	.loc 1 393 0
.LVL39:
	entry	sp, 32
.LCFI14:
	.loc 1 394 0
	movi.n	a12, 1
	movi.n	a11, 0
	mov.n	a10, a2
	call8	trace_malloc
.LVL40:
	.loc 1 395 0
	mov.n	a2, a10
.LVL41:
	retw.n
.LFE32:
	.size	__wrap_malloc, .-__wrap_malloc
	.align	4
	.global	__wrap_free
	.type	__wrap_free, @function
__wrap_free:
.LFB33:
	.loc 1 398 0
.LVL42:
	entry	sp, 32
.LCFI15:
	.loc 1 399 0
	mov.n	a10, a2
	call8	trace_free
.LVL43:
	retw.n
.LFE33:
	.size	__wrap_free, .-__wrap_free
	.global	__wrap_heap_caps_free
	.set	__wrap_heap_caps_free,__wrap_free
	.align	4
	.global	__wrap_realloc
	.type	__wrap_realloc, @function
__wrap_realloc:
.LFB34:
	.loc 1 403 0
.LVL44:
	entry	sp, 32
.LCFI16:
	.loc 1 404 0
	movi.n	a13, 1
	movi.n	a12, 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	trace_realloc
.LVL45:
	.loc 1 405 0
	mov.n	a2, a10
.LVL46:
	retw.n
.LFE34:
	.size	__wrap_realloc, .-__wrap_realloc
	.align	4
	.global	__wrap_calloc
	.type	__wrap_calloc, @function
__wrap_calloc:
.LFB35:
	.loc 1 408 0
.LVL47:
	entry	sp, 32
.LCFI17:
	.loc 1 409 0
	mull	a3, a3, a2
.LVL48:
	.loc 1 410 0
	movi.n	a12, 1
	movi.n	a11, 0
	mov.n	a10, a3
	call8	trace_malloc
.LVL49:
	mov.n	a2, a10
.LVL50:
	.loc 1 411 0
	beqz.n	a10, .L25
	.loc 1 412 0
	mov.n	a12, a3
	movi.n	a11, 0
	call8	memset
.LVL51:
.L25:
	.loc 1 415 0
	retw.n
.LFE35:
	.size	__wrap_calloc, .-__wrap_calloc
	.align	4
	.global	__wrap_heap_caps_malloc
	.type	__wrap_heap_caps_malloc, @function
__wrap_heap_caps_malloc:
.LFB36:
	.loc 1 418 0
.LVL52:
	entry	sp, 32
.LCFI18:
	.loc 1 419 0
	movi.n	a12, 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	trace_malloc
.LVL53:
	.loc 1 420 0
	mov.n	a2, a10
.LVL54:
	retw.n
.LFE36:
	.size	__wrap_heap_caps_malloc, .-__wrap_heap_caps_malloc
	.align	4
	.global	__wrap_heap_caps_realloc
	.type	__wrap_heap_caps_realloc, @function
__wrap_heap_caps_realloc:
.LFB37:
	.loc 1 425 0
.LVL55:
	entry	sp, 32
.LCFI19:
	.loc 1 426 0
	movi.n	a13, 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	trace_realloc
.LVL56:
	.loc 1 427 0
	mov.n	a2, a10
.LVL57:
	retw.n
.LFE37:
	.size	__wrap_heap_caps_realloc, .-__wrap_heap_caps_realloc
	.align	4
	.global	__wrap_heap_caps_malloc_default
	.type	__wrap_heap_caps_malloc_default, @function
__wrap_heap_caps_malloc_default:
.LFB38:
	.loc 1 430 0
.LVL58:
	entry	sp, 32
.LCFI20:
	.loc 1 431 0
	movi.n	a12, 1
	movi.n	a11, 0
	mov.n	a10, a2
	call8	trace_malloc
.LVL59:
	.loc 1 432 0
	mov.n	a2, a10
.LVL60:
	retw.n
.LFE38:
	.size	__wrap_heap_caps_malloc_default, .-__wrap_heap_caps_malloc_default
	.align	4
	.global	__wrap_heap_caps_realloc_default
	.type	__wrap_heap_caps_realloc_default, @function
__wrap_heap_caps_realloc_default:
.LFB39:
	.loc 1 435 0
.LVL61:
	entry	sp, 32
.LCFI21:
	.loc 1 436 0
	movi.n	a13, 1
	movi.n	a12, 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	trace_realloc
.LVL62:
	.loc 1 437 0
	mov.n	a2, a10
.LVL63:
	retw.n
.LFE39:
	.size	__wrap_heap_caps_realloc_default, .-__wrap_heap_caps_realloc_default
	.section	.bss.count,"aw",@nobits
	.align	4
	.type	count, @object
	.size	count, 4
count:
	.zero	4
	.section	.data.trace_mux,"aw",@progbits
	.align	4
	.type	trace_mux, @object
	.size	trace_mux, 8
trace_mux:
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
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI0-.LFB18
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
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI3-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI4-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI5-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI6-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI7-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI8-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI9-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI10-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI11-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI12-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI13-.LFB23
	.byte	0xe
	.uleb128 0x20
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
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI17-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI18-.LFB36
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
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI20-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI21-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE42:
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/esp_heap_trace.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/hal.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portable.h"
	.file 11 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x9ea
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0xc
	.4byte	.LASF85
	.4byte	.LASF86
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
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
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0x19
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x3
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x2c
	.4byte	0x5a
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x2d
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0x18
	.4byte	0x9c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x37
	.byte	0x6
	.byte	0x20
	.4byte	0xd6
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x6
	.byte	0x23
	.4byte	0xbd
	.uleb128 0x8
	.byte	0xc
	.byte	0x6
	.byte	0x28
	.4byte	0x126
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x6
	.byte	0x29
	.4byte	0xa7
	.byte	0
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x6
	.byte	0x2a
	.4byte	0x8c
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x6
	.byte	0x2b
	.4byte	0x2c
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x6
	.byte	0x2c
	.4byte	0x126
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x6
	.byte	0x2d
	.4byte	0x135
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.4byte	0x8c
	.4byte	0x135
	.uleb128 0xb
	.4byte	0x85
	.byte	0
	.uleb128 0xa
	.4byte	0x8c
	.4byte	0x144
	.uleb128 0xb
	.4byte	0x85
	.byte	0
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x6
	.byte	0x2e
	.4byte	0xe1
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF26
	.uleb128 0x8
	.byte	0x8
	.byte	0x7
	.byte	0x82
	.4byte	0x177
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x7
	.byte	0x8a
	.4byte	0xa7
	.byte	0
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x7
	.byte	0x8f
	.4byte	0xa7
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x7
	.byte	0x94
	.4byte	0x156
	.uleb128 0xc
	.byte	0x4
	.4byte	0x37
	.byte	0x1
	.2byte	0x134
	.4byte	0x19c
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x137
	.4byte	0x182
	.uleb128 0xe
	.4byte	.LASF87
	.byte	0xa
	.byte	0xce
	.4byte	0xa7
	.byte	0x3
	.4byte	0x1c3
	.uleb128 0xf
	.string	"id"
	.byte	0xa
	.byte	0xcf
	.4byte	0x25
	.byte	0
	.uleb128 0x10
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x109
	.4byte	0xa7
	.byte	0x3
	.4byte	0x1e1
	.uleb128 0x11
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x10b
	.4byte	0xa7
	.byte	0
	.uleb128 0x12
	.4byte	.LASF35
	.byte	0x1
	.byte	0x5e
	.4byte	0xb2
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x20a
	.uleb128 0x13
	.4byte	.LASF33
	.byte	0x1
	.byte	0x5e
	.4byte	0x14f
	.4byte	.LLST0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF39
	.byte	0x1
	.byte	0xc1
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x253
	.uleb128 0x13
	.4byte	.LASF34
	.byte	0x1
	.byte	0xc1
	.4byte	0x253
	.4byte	.LLST1
	.uleb128 0x15
	.4byte	.LVL4
	.4byte	0x96c
	.4byte	0x242
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL5
	.4byte	0x977
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.4byte	0x259
	.uleb128 0x19
	.4byte	0x144
	.uleb128 0x1a
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x13f
	.4byte	0x8c
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x316
	.uleb128 0x1b
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x13f
	.4byte	0x2c
	.4byte	.LLST2
	.uleb128 0x1c
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x13f
	.4byte	0xa7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x13f
	.4byte	0x19c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x11
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x141
	.4byte	0xa7
	.uleb128 0x1d
	.string	"p"
	.byte	0x1
	.2byte	0x142
	.4byte	0x8c
	.4byte	.LLST3
	.uleb128 0x1e
	.4byte	0x1c3
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.byte	0x1
	.2byte	0x141
	.4byte	0x2eb
	.uleb128 0x1f
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.uleb128 0x20
	.4byte	0x1d4
	.uleb128 0x21
	.4byte	.LVL7
	.4byte	0x982
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL8
	.4byte	0x98e
	.4byte	0x305
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL10
	.4byte	0x99a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF40
	.byte	0x1
	.byte	0xfb
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x371
	.uleb128 0x13
	.4byte	.LASF41
	.byte	0x1
	.byte	0xfb
	.4byte	0x25
	.4byte	.LLST4
	.uleb128 0x17
	.4byte	.LVL15
	.4byte	0x9a6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x31
	.byte	0x24
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xf
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x1
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x1
	.byte	0x31
	.byte	0x24
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x6
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3c
	.byte	0x1c
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF42
	.byte	0x1
	.byte	0xe1
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3c5
	.uleb128 0x22
	.string	"p"
	.byte	0x1
	.byte	0xe1
	.4byte	0x8c
	.4byte	.LLST5
	.uleb128 0x23
	.4byte	.LASF43
	.byte	0x1
	.byte	0xe1
	.4byte	0x3c5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x15
	.4byte	.LVL20
	.4byte	0x96c
	.4byte	0x3b4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL21
	.4byte	0x977
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.4byte	0x8c
	.uleb128 0x24
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x158
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3fe
	.uleb128 0x25
	.string	"p"
	.byte	0x1
	.2byte	0x158
	.4byte	0x8c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x17
	.4byte	.LVL23
	.4byte	0x9b1
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x165
	.4byte	0x8c
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4da
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.2byte	0x165
	.4byte	0x8c
	.4byte	.LLST6
	.uleb128 0x1c
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x165
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x165
	.4byte	0xa7
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1c
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x165
	.4byte	0x19c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x11
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x167
	.4byte	0x4da
	.uleb128 0x11
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x168
	.4byte	0xa7
	.uleb128 0x1d
	.string	"r"
	.byte	0x1
	.2byte	0x16d
	.4byte	0x8c
	.4byte	.LLST7
	.uleb128 0x1e
	.4byte	0x1c3
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.byte	0x1
	.2byte	0x168
	.4byte	0x4a3
	.uleb128 0x1f
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.uleb128 0x20
	.4byte	0x1d4
	.uleb128 0x21
	.4byte	.LVL25
	.4byte	0x982
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL26
	.4byte	0x9bd
	.4byte	0x4c3
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL28
	.4byte	0x9c9
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0x8c
	.4byte	0x4e9
	.uleb128 0xb
	.4byte	0x85
	.byte	0
	.uleb128 0x27
	.4byte	.LASF48
	.byte	0x1
	.byte	0x38
	.4byte	0xb2
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x51f
	.uleb128 0x13
	.4byte	.LASF46
	.byte	0x1
	.byte	0x38
	.4byte	0x51f
	.4byte	.LLST8
	.uleb128 0x23
	.4byte	.LASF47
	.byte	0x1
	.byte	0x38
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.4byte	0x144
	.uleb128 0x27
	.4byte	.LASF49
	.byte	0x1
	.byte	0x47
	.4byte	0xb2
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x54e
	.uleb128 0x13
	.4byte	.LASF50
	.byte	0x1
	.byte	0x47
	.4byte	0xd6
	.4byte	.LLST9
	.byte	0
	.uleb128 0x27
	.4byte	.LASF51
	.byte	0x1
	.byte	0x6a
	.4byte	0xb2
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x577
	.uleb128 0x17
	.4byte	.LVL34
	.4byte	0x1e1
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF52
	.byte	0x1
	.byte	0x6f
	.4byte	0xb2
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5a0
	.uleb128 0x17
	.4byte	.LVL35
	.4byte	0x1e1
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LASF89
	.byte	0x1
	.byte	0x74
	.4byte	0x2c
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x27
	.4byte	.LASF53
	.byte	0x1
	.byte	0x79
	.4byte	0xb2
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5f6
	.uleb128 0x13
	.4byte	.LASF41
	.byte	0x1
	.byte	0x79
	.4byte	0x2c
	.4byte	.LLST10
	.uleb128 0x23
	.4byte	.LASF34
	.byte	0x1
	.byte	0x79
	.4byte	0x51f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.4byte	.LASF54
	.byte	0x1
	.byte	0x81
	.4byte	0xb2
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF59
	.byte	0x1
	.byte	0x8e
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x640
	.uleb128 0x29
	.4byte	.LASF55
	.byte	0x1
	.byte	0x94
	.4byte	0x2c
	.uleb128 0x29
	.4byte	.LASF56
	.byte	0x1
	.byte	0x95
	.4byte	0x2c
	.uleb128 0x29
	.4byte	.LASF57
	.byte	0x1
	.byte	0x98
	.4byte	0x2c
	.uleb128 0x17
	.4byte	.LVL38
	.4byte	0x9d5
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x188
	.4byte	0x8c
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x685
	.uleb128 0x1b
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x188
	.4byte	0x2c
	.4byte	.LLST11
	.uleb128 0x17
	.4byte	.LVL40
	.4byte	0x25e
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x18d
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6b8
	.uleb128 0x25
	.string	"p"
	.byte	0x1
	.2byte	0x18d
	.4byte	0x8c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x17
	.4byte	.LVL43
	.4byte	0x3cb
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x192
	.4byte	0x8c
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x70f
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.2byte	0x192
	.4byte	0x8c
	.4byte	.LLST12
	.uleb128 0x1c
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x192
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x17
	.4byte	.LVL45
	.4byte	0x3fe
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x197
	.4byte	0x8c
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x791
	.uleb128 0x1b
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x197
	.4byte	0x2c
	.4byte	.LLST13
	.uleb128 0x1b
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x197
	.4byte	0x2c
	.4byte	.LLST14
	.uleb128 0x2d
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x19a
	.4byte	0x8c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x15
	.4byte	.LVL49
	.4byte	0x25e
	.4byte	0x775
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x17
	.4byte	.LVL51
	.4byte	0x9e4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x1a1
	.4byte	0x8c
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7e5
	.uleb128 0x1b
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x1a1
	.4byte	0x2c
	.4byte	.LLST15
	.uleb128 0x1c
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x1a1
	.4byte	0xa7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x17
	.4byte	.LVL53
	.4byte	0x25e
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x1a8
	.4byte	0x8c
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x84b
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.2byte	0x1a8
	.4byte	0x8c
	.4byte	.LLST16
	.uleb128 0x1c
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x1a8
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x1a8
	.4byte	0xa7
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x17
	.4byte	.LVL56
	.4byte	0x3fe
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x1ad
	.4byte	0x8c
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x890
	.uleb128 0x1b
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x1ad
	.4byte	0x2c
	.4byte	.LLST17
	.uleb128 0x17
	.4byte	.LVL59
	.4byte	0x25e
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x1b2
	.4byte	0x8c
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8e9
	.uleb128 0x26
	.string	"ptr"
	.byte	0x1
	.2byte	0x1b2
	.4byte	0x8c
	.4byte	.LLST18
	.uleb128 0x1c
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x1b2
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x17
	.4byte	.LVL62
	.4byte	0x3fe
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF68
	.byte	0x1
	.byte	0x20
	.4byte	0x177
	.uleb128 0x5
	.byte	0x3
	.4byte	trace_mux
	.uleb128 0x29
	.4byte	.LASF69
	.byte	0x1
	.byte	0x21
	.4byte	0x905
	.uleb128 0x19
	.4byte	0x14f
	.uleb128 0x29
	.4byte	.LASF38
	.byte	0x1
	.byte	0x22
	.4byte	0x915
	.uleb128 0x19
	.4byte	0xd6
	.uleb128 0x29
	.4byte	.LASF70
	.byte	0x1
	.byte	0x26
	.4byte	0x925
	.uleb128 0x19
	.4byte	0x51f
	.uleb128 0x29
	.4byte	.LASF71
	.byte	0x1
	.byte	0x27
	.4byte	0x935
	.uleb128 0x19
	.4byte	0x2c
	.uleb128 0x2e
	.4byte	.LASF28
	.byte	0x1
	.byte	0x2d
	.4byte	0x2c
	.uleb128 0x5
	.byte	0x3
	.4byte	count
	.uleb128 0x29
	.4byte	.LASF72
	.byte	0x1
	.byte	0x30
	.4byte	0x2c
	.uleb128 0x29
	.4byte	.LASF73
	.byte	0x1
	.byte	0x33
	.4byte	0x2c
	.uleb128 0x29
	.4byte	.LASF74
	.byte	0x1
	.byte	0x36
	.4byte	0x14f
	.uleb128 0x2f
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0x7
	.byte	0xda
	.uleb128 0x2f
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0x7
	.byte	0xd9
	.uleb128 0x30
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0x8
	.2byte	0x2d4
	.uleb128 0x30
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x13a
	.uleb128 0x30
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x13b
	.uleb128 0x2f
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x9
	.byte	0x18
	.uleb128 0x30
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x155
	.uleb128 0x30
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x162
	.uleb128 0x30
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x13c
	.uleb128 0x31
	.4byte	.LASF90
	.4byte	.LASF91
	.byte	0xb
	.byte	0
	.4byte	.LASF90
	.uleb128 0x32
	.4byte	.LASF92
	.4byte	.LASF92
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
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x18
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
	.uleb128 0xb
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
	.uleb128 0x5
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
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x4
	.byte	0x72
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.4byte	.LVL14
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
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL24
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL41
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL46
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL47
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL50
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL48
	.4byte	.LFE35
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL54
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL57
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL58
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL63
	.4byte	.LFE39
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
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF54:
	.string	"result"
.LASF49:
	.string	"heap_trace_start"
.LASF91:
	.string	"__builtin_puts"
.LASF33:
	.string	"enable"
.LASF75:
	.string	"vTaskEnterCritical"
.LASF5:
	.string	"size_t"
.LASF34:
	.string	"record"
.LASF11:
	.string	"sizetype"
.LASF87:
	.string	"xPortGetCoreID"
.LASF43:
	.string	"callers"
.LASF18:
	.string	"HEAP_TRACE_LEAKS"
.LASF32:
	.string	"trace_malloc_mode_t"
.LASF7:
	.string	"__uint32_t"
.LASF38:
	.string	"mode"
.LASF42:
	.string	"record_free"
.LASF47:
	.string	"num_records"
.LASF46:
	.string	"record_buffer"
.LASF86:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\heap"
.LASF4:
	.string	"short int"
.LASF44:
	.string	"trace_free"
.LASF78:
	.string	"__real_heap_caps_malloc"
.LASF23:
	.string	"alloced_by"
.LASF41:
	.string	"index"
.LASF77:
	.string	"xthal_get_ccount"
.LASF90:
	.string	"puts"
.LASF35:
	.string	"set_tracing"
.LASF40:
	.string	"remove_record"
.LASF67:
	.string	"__wrap_heap_caps_realloc_default"
.LASF64:
	.string	"__wrap_heap_caps_malloc"
.LASF8:
	.string	"long long int"
.LASF9:
	.string	"long long unsigned int"
.LASF45:
	.string	"trace_realloc"
.LASF55:
	.string	"delta_size"
.LASF72:
	.string	"total_allocations"
.LASF60:
	.string	"__wrap_free"
.LASF10:
	.string	"long int"
.LASF89:
	.string	"heap_trace_get_count"
.LASF53:
	.string	"heap_trace_get"
.LASF30:
	.string	"TRACE_MALLOC_CAPS"
.LASF62:
	.string	"__wrap_calloc"
.LASF48:
	.string	"heap_trace_init_standalone"
.LASF51:
	.string	"heap_trace_stop"
.LASF82:
	.string	"__real_heap_caps_realloc"
.LASF76:
	.string	"vTaskExitCritical"
.LASF85:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/heap/heap_trace.c"
.LASF37:
	.string	"caps"
.LASF39:
	.string	"record_allocation"
.LASF61:
	.string	"__wrap_realloc"
.LASF80:
	.string	"memmove"
.LASF3:
	.string	"unsigned char"
.LASF27:
	.string	"owner"
.LASF74:
	.string	"has_overflowed"
.LASF2:
	.string	"signed char"
.LASF19:
	.string	"heap_trace_mode_t"
.LASF21:
	.string	"address"
.LASF15:
	.string	"uint32_t"
.LASF29:
	.string	"portMUX_TYPE"
.LASF68:
	.string	"trace_mux"
.LASF50:
	.string	"mode_param"
.LASF17:
	.string	"HEAP_TRACE_ALL"
.LASF73:
	.string	"total_frees"
.LASF25:
	.string	"heap_trace_record_t"
.LASF1:
	.string	"short unsigned int"
.LASF56:
	.string	"delta_allocs"
.LASF13:
	.string	"char"
.LASF24:
	.string	"freed_by"
.LASF14:
	.string	"int32_t"
.LASF63:
	.string	"nmemb"
.LASF6:
	.string	"__int32_t"
.LASF26:
	.string	"_Bool"
.LASF52:
	.string	"heap_trace_resume"
.LASF70:
	.string	"buffer"
.LASF88:
	.string	"get_ccount"
.LASF12:
	.string	"long unsigned int"
.LASF71:
	.string	"total_records"
.LASF79:
	.string	"__real_heap_caps_malloc_default"
.LASF22:
	.string	"size"
.LASF66:
	.string	"__wrap_heap_caps_malloc_default"
.LASF28:
	.string	"count"
.LASF65:
	.string	"__wrap_heap_caps_realloc"
.LASF92:
	.string	"memset"
.LASF83:
	.string	"__real_heap_caps_realloc_default"
.LASF58:
	.string	"__wrap_malloc"
.LASF57:
	.string	"start_count"
.LASF31:
	.string	"TRACE_MALLOC_DEFAULT"
.LASF36:
	.string	"trace_malloc"
.LASF59:
	.string	"heap_trace_dump"
.LASF20:
	.string	"ccount"
.LASF0:
	.string	"unsigned int"
.LASF84:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF81:
	.string	"__real_heap_caps_free"
.LASF69:
	.string	"tracing"
.LASF16:
	.string	"esp_err_t"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
