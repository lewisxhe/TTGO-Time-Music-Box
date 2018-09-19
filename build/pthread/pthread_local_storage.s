	.file	"pthread_local_storage.c"
	.text
.Ltext0:
	.section	.text.find_value,"ax",@progbits
	.align	4
	.type	find_value, @function
find_value:
.LFB20:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/pthread/pthread_local_storage.c"
	.loc 1 189 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 191 0
	l32i.n	a2, a2, 0
.LVL2:
	j	.L2
.L4:
	.loc 1 192 0
	l32i.n	a8, a2, 0
	beq	a8, a3, .L3
	.loc 1 191 0 discriminator 2
	l32i.n	a2, a2, 8
.LVL3:
.L2:
	.loc 1 191 0 is_stmt 0 discriminator 1
	bnez.n	a2, .L4
.L3:
	.loc 1 197 0 is_stmt 1
	retw.n
.LFE20:
	.size	find_value, .-find_value
	.section	.text.find_key,"ax",@progbits
	.literal_position
	.literal .LC0, s_keys_lock
	.literal .LC1, s_keys
	.align	4
	.type	find_key, @function
find_key:
.LFB16:
	.loc 1 79 0
.LVL4:
	entry	sp, 32
.LCFI1:
	mov.n	a3, a2
	.loc 1 80 0
	l32r	a10, .LC0
	call8	vTaskEnterCritical
.LVL5:
	.loc 1 82 0
	l32r	a2, .LC1
.LVL6:
	l32i.n	a2, a2, 0
.LVL7:
	j	.L6
.L8:
	.loc 1 83 0
	l32i.n	a8, a2, 0
	beq	a8, a3, .L7
	.loc 1 82 0 discriminator 2
	l32i.n	a2, a2, 8
.LVL8:
.L6:
	.loc 1 82 0 is_stmt 0 discriminator 1
	bnez.n	a2, .L8
.L7:
	.loc 1 87 0 is_stmt 1
	l32r	a10, .LC0
	call8	vTaskExitCritical
.LVL9:
	.loc 1 89 0
	retw.n
.LFE16:
	.size	find_key, .-find_key
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC2:
	.string	"tls != NULL"
	.align	4
.LC5:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/pthread/pthread_local_storage.c"
	.section	.text.pthread_local_storage_thread_deleted_callback,"ax",@progbits
	.literal_position
	.literal .LC3, .LC2
	.literal .LC4, __func__$5717
	.literal .LC6, .LC5
	.align	4
	.type	pthread_local_storage_thread_deleted_callback, @function
pthread_local_storage_thread_deleted_callback:
.LFB18:
	.loc 1 124 0
.LVL10:
	entry	sp, 32
.LCFI2:
.LVL11:
	.loc 1 126 0
	bnez.n	a3, .L10
	.loc 1 126 0 is_stmt 0 discriminator 1
	l32r	a13, .LC3
	l32r	a12, .LC4
	movi	a11, 0x7e
	l32r	a10, .LC6
	call8	__assert_func
.LVL12:
.L10:
	.loc 1 129 0 is_stmt 1
	l32i.n	a2, a3, 0
.LVL13:
	.loc 1 130 0
	j	.L11
.L13:
.LBB2:
	.loc 1 134 0
	l32i.n	a10, a2, 0
	call8	find_key
.LVL14:
	.loc 1 135 0
	beqz.n	a10, .L12
	.loc 1 135 0 discriminator 1
	l32i.n	a8, a10, 4
	beqz.n	a8, .L12
	.loc 1 136 0
	l32i.n	a10, a2, 4
.LVL15:
	callx8	a8
.LVL16:
.L12:
	.loc 1 138 0
	l32i.n	a4, a2, 8
.LVL17:
	.loc 1 139 0
	mov.n	a10, a2
	call8	free
.LVL18:
	.loc 1 140 0
	mov.n	a2, a4
.LVL19:
.L11:
.LBE2:
	.loc 1 130 0
	bnez.n	a2, .L13
	.loc 1 142 0
	mov.n	a10, a3
	call8	free
.LVL20:
	retw.n
.LFE18:
	.size	pthread_local_storage_thread_deleted_callback, .-pthread_local_storage_thread_deleted_callback
	.section	.text.pthread_key_create,"ax",@progbits
	.literal_position
	.literal .LC7, s_keys_lock
	.literal .LC8, s_keys
	.align	4
	.global	pthread_key_create
	.type	pthread_key_create, @function
pthread_key_create:
.LFB15:
	.loc 1 59 0
.LVL21:
	entry	sp, 32
.LCFI3:
	.loc 1 60 0
	movi.n	a10, 0xc
	call8	malloc
.LVL22:
	mov.n	a4, a10
.LVL23:
	.loc 1 61 0
	beqz.n	a10, .L17
	.loc 1 65 0
	l32r	a10, .LC7
	call8	vTaskEnterCritical
.LVL24:
	.loc 1 67 0
	l32r	a8, .LC8
	l32i.n	a8, a8, 0
.LVL25:
	.loc 1 68 0
	beqz.n	a8, .L18
	.loc 1 68 0 is_stmt 0 discriminator 1
	l32i.n	a8, a8, 0
.LVL26:
	addi.n	a8, a8, 1
	j	.L16
.LVL27:
.L18:
	.loc 1 68 0
	movi.n	a8, 1
.LVL28:
.L16:
	.loc 1 68 0 is_stmt 1 discriminator 4
	s32i.n	a8, a4, 0
.LVL29:
	.loc 1 69 0 discriminator 4
	s32i.n	a3, a4, 4
	.loc 1 70 0 discriminator 4
	s32i.n	a8, a2, 0
	.loc 1 72 0 discriminator 4
	l32r	a2, .LC8
.LVL30:
	l32i.n	a3, a2, 0
.LVL31:
	s32i.n	a3, a4, 8
	s32i.n	a4, a2, 0
	.loc 1 74 0 discriminator 4
	l32r	a10, .LC7
	call8	vTaskExitCritical
.LVL32:
	.loc 1 75 0 discriminator 4
	movi.n	a2, 0
	retw.n
.LVL33:
.L17:
	.loc 1 62 0
	movi.n	a2, 0xc
.LVL34:
	.loc 1 76 0
	retw.n
.LFE15:
	.size	pthread_key_create, .-pthread_key_create
	.section	.text.pthread_key_delete,"ax",@progbits
	.literal_position
	.literal .LC9, s_keys_lock
	.literal .LC10, s_keys
	.align	4
	.global	pthread_key_delete
	.type	pthread_key_delete, @function
pthread_key_delete:
.LFB17:
	.loc 1 92 0
.LVL35:
	entry	sp, 32
.LCFI4:
	.loc 1 94 0
	l32r	a10, .LC9
	call8	vTaskEnterCritical
.LVL36:
	.loc 1 100 0
	mov.n	a10, a2
	call8	find_key
.LVL37:
	.loc 1 101 0
	beqz.n	a10, .L20
	.loc 1 102 0
	l32r	a2, .LC10
.LVL38:
	l32i.n	a9, a2, 0
	bne	a10, a9, .L21
	.loc 1 102 0 is_stmt 0 discriminator 1
	l32i.n	a8, a9, 8
	s32i.n	a8, a2, 0
	j	.L22
.LVL39:
.L23:
.LBB3:
	.loc 1 102 0
	mov.n	a9, a8
.LVL40:
.L21:
	.loc 1 102 0 discriminator 3
	l32i.n	a8, a9, 8
	bne	a10, a8, .L23
	.loc 1 102 0 discriminator 6
	l32i.n	a2, a8, 8
	s32i.n	a2, a9, 8
.LVL41:
.L22:
.LBE3:
	.loc 1 103 0 is_stmt 1
	call8	free
.LVL42:
.L20:
	.loc 1 106 0
	l32r	a10, .LC9
	call8	vTaskExitCritical
.LVL43:
	.loc 1 109 0
	movi.n	a2, 0
	retw.n
.LFE17:
	.size	pthread_key_delete, .-pthread_key_delete
	.section	.text.pthread_internal_local_storage_destructor_callback,"ax",@progbits
	.align	4
	.global	pthread_internal_local_storage_destructor_callback
	.type	pthread_internal_local_storage_destructor_callback, @function
pthread_internal_local_storage_destructor_callback:
.LFB19:
	.loc 1 170 0
	entry	sp, 32
.LCFI5:
	.loc 1 171 0
	movi.n	a11, 0
	mov.n	a10, a11
	call8	pvTaskGetThreadLocalStoragePointer
.LVL44:
	.loc 1 172 0
	beqz.n	a10, .L24
	.loc 1 173 0
	mov.n	a11, a10
	movi.n	a10, 0
.LVL45:
	call8	pthread_local_storage_thread_deleted_callback
.LVL46:
	.loc 1 180 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	mov.n	a10, a13
	call8	vTaskSetThreadLocalStoragePointerAndDelCallback
.LVL47:
.L24:
	retw.n
.LFE19:
	.size	pthread_internal_local_storage_destructor_callback, .-pthread_internal_local_storage_destructor_callback
	.section	.text.pthread_getspecific,"ax",@progbits
	.align	4
	.global	pthread_getspecific
	.type	pthread_getspecific, @function
pthread_getspecific:
.LFB21:
	.loc 1 200 0
.LVL48:
	entry	sp, 32
.LCFI6:
	.loc 1 201 0
	movi.n	a11, 0
	mov.n	a10, a11
	call8	pvTaskGetThreadLocalStoragePointer
.LVL49:
	.loc 1 202 0
	beqz.n	a10, .L28
	.loc 1 206 0
	mov.n	a11, a2
	call8	find_value
.LVL50:
	.loc 1 207 0
	beqz.n	a10, .L29
	.loc 1 208 0
	l32i.n	a2, a10, 4
.LVL51:
	retw.n
.LVL52:
.L28:
	.loc 1 203 0
	movi.n	a2, 0
.LVL53:
	retw.n
.LVL54:
.L29:
	.loc 1 210 0
	movi.n	a2, 0
.LVL55:
	.loc 1 211 0
	retw.n
.LFE21:
	.size	pthread_getspecific, .-pthread_getspecific
	.section	.text.pthread_setspecific,"ax",@progbits
	.literal_position
	.literal .LC11, pthread_local_storage_thread_deleted_callback
	.align	4
	.global	pthread_setspecific
	.type	pthread_setspecific, @function
pthread_setspecific:
.LFB22:
	.loc 1 214 0
.LVL56:
	entry	sp, 32
.LCFI7:
	.loc 1 215 0
	mov.n	a10, a2
	call8	find_key
.LVL57:
	.loc 1 216 0
	beqz.n	a10, .L37
	.loc 1 220 0
	movi.n	a11, 0
	mov.n	a10, a11
.LVL58:
	call8	pvTaskGetThreadLocalStoragePointer
.LVL59:
	mov.n	a4, a10
.LVL60:
	.loc 1 221 0
	bnez.n	a10, .L32
	.loc 1 222 0
	movi.n	a11, 4
	movi.n	a10, 1
	call8	calloc
.LVL61:
	mov.n	a4, a10
.LVL62:
	.loc 1 223 0
	beqz.n	a10, .L38
	.loc 1 229 0
	l32r	a13, .LC11
	mov.n	a12, a10
	movi.n	a11, 0
	mov.n	a10, a11
	call8	vTaskSetThreadLocalStoragePointerAndDelCallback
.LVL63:
.L32:
	.loc 1 236 0
	mov.n	a11, a2
	mov.n	a10, a4
	call8	find_value
.LVL64:
	.loc 1 237 0
	beqz.n	a10, .L33
	.loc 1 238 0
	beqz.n	a3, .L34
	.loc 1 241 0
	s32i.n	a3, a10, 4
	.loc 1 256 0
	movi.n	a2, 0
.LVL65:
	retw.n
.LVL66:
.L34:
	.loc 1 243 0
	l32i.n	a2, a4, 0
.LVL67:
	bne	a10, a2, .L35
	.loc 1 243 0 is_stmt 0 discriminator 1
	l32i.n	a2, a2, 8
	s32i.n	a2, a4, 0
	j	.L36
.LVL68:
.L39:
.LBB4:
	.loc 1 243 0
	mov.n	a2, a8
.LVL69:
.L35:
	.loc 1 243 0 discriminator 3
	l32i.n	a8, a2, 8
	bne	a10, a8, .L39
	.loc 1 243 0 discriminator 6
	l32i.n	a3, a8, 8
.LVL70:
	s32i.n	a3, a2, 8
.LVL71:
.L36:
.LBE4:
	.loc 1 244 0 is_stmt 1
	call8	free
.LVL72:
	.loc 1 256 0
	movi.n	a2, 0
	retw.n
.LVL73:
.L33:
	.loc 1 246 0
	beqz.n	a3, .L40
	.loc 1 247 0
	movi.n	a10, 0xc
.LVL74:
	call8	malloc
.LVL75:
	.loc 1 248 0
	beqz.n	a10, .L41
	.loc 1 251 0
	s32i.n	a2, a10, 0
	.loc 1 252 0
	s32i.n	a3, a10, 4
	.loc 1 253 0
	l32i.n	a2, a4, 0
.LVL76:
	s32i.n	a2, a10, 8
	s32i.n	a10, a4, 0
.LVL77:
	.loc 1 256 0
	movi.n	a2, 0
	retw.n
.LVL78:
.L37:
	.loc 1 217 0
	movi.n	a2, 2
.LVL79:
	retw.n
.LVL80:
.L38:
	.loc 1 224 0
	movi.n	a2, 0xc
.LVL81:
	retw.n
.LVL82:
.L40:
	.loc 1 256 0
	movi.n	a2, 0
.LVL83:
	retw.n
.LVL84:
.L41:
	.loc 1 249 0
	movi.n	a2, 0xc
.LVL85:
	.loc 1 257 0
	retw.n
.LFE22:
	.size	pthread_setspecific, .-pthread_setspecific
	.section	.rodata.__func__$5717,"a",@progbits
	.align	4
	.type	__func__$5717, @object
	.size	__func__$5717, 46
__func__$5717:
	.string	"pthread_local_storage_thread_deleted_callback"
	.section	.data.s_keys_lock,"aw",@progbits
	.align	4
	.type	s_keys_lock, @object
	.size	s_keys_lock, 8
s_keys_lock:
	.word	-1287651329
	.word	0
	.global	s_keys
	.section	.bss.s_keys,"aw",@nobits
	.align	4
	.type	s_keys, @object
	.size	s_keys, 4
s_keys:
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
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI1-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI2-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI3-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI4-.LFB17
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
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI6-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI7-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x74b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0xc
	.4byte	.LASF57
	.4byte	.LASF58
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
	.4byte	.LASF11
	.byte	0x2
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x3
	.2byte	0x1d9
	.4byte	0x4f
	.uleb128 0x7
	.4byte	0x9d
	.uleb128 0x8
	.4byte	0x76
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x92
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x4
	.byte	0x2d
	.4byte	0x4f
	.uleb128 0x9
	.byte	0x4
	.4byte	0xb4
	.uleb128 0xa
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF14
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.byte	0x82
	.4byte	0xdd
	.uleb128 0xc
	.4byte	.LASF15
	.byte	0x5
	.byte	0x8a
	.4byte	0xa3
	.byte	0
	.uleb128 0xc
	.4byte	.LASF16
	.byte	0x5
	.byte	0x8f
	.4byte	0xa3
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x5
	.byte	0x94
	.4byte	0xbc
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x1
	.byte	0x1c
	.4byte	0x9d
	.uleb128 0xb
	.byte	0x4
	.byte	0x1
	.byte	0x27
	.4byte	0x108
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0x1
	.byte	0x27
	.4byte	0x139
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF23
	.byte	0xc
	.byte	0x1
	.byte	0x24
	.4byte	0x139
	.uleb128 0xe
	.string	"key"
	.byte	0x1
	.byte	0x25
	.4byte	0x86
	.byte	0
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x1
	.byte	0x26
	.4byte	0xe8
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x1
	.byte	0x27
	.4byte	0xf3
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x108
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x1
	.byte	0x28
	.4byte	0x108
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x4
	.byte	0x1
	.byte	0x2b
	.4byte	0x163
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x1
	.byte	0x2b
	.4byte	0x139
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x1
	.byte	0x33
	.4byte	0x178
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0x1
	.byte	0x33
	.4byte	0x1a9
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0xc
	.byte	0x1
	.byte	0x30
	.4byte	0x1a9
	.uleb128 0xe
	.string	"key"
	.byte	0x1
	.byte	0x31
	.4byte	0x86
	.byte	0
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x1
	.byte	0x32
	.4byte	0x76
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x1
	.byte	0x33
	.4byte	0x163
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x178
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x1
	.byte	0x34
	.4byte	0x178
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x4
	.byte	0x1
	.byte	0x37
	.4byte	0x1d3
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x1
	.byte	0x37
	.4byte	0x1a9
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF30
	.byte	0x1
	.byte	0x38
	.4byte	0x1ba
	.uleb128 0xf
	.4byte	.LASF32
	.byte	0x1
	.byte	0xbc
	.4byte	0x223
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x223
	.uleb128 0x10
	.4byte	.LASF31
	.byte	0x1
	.byte	0xbc
	.4byte	0x229
	.4byte	.LLST0
	.uleb128 0x11
	.string	"key"
	.byte	0x1
	.byte	0xbc
	.4byte	0x86
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x12
	.4byte	.LASF34
	.byte	0x1
	.byte	0xbe
	.4byte	0x223
	.4byte	.LLST1
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x1af
	.uleb128 0x9
	.byte	0x4
	.4byte	0x22f
	.uleb128 0x13
	.4byte	0x1d3
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x1
	.byte	0x4e
	.4byte	0x296
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x296
	.uleb128 0x14
	.string	"key"
	.byte	0x1
	.byte	0x4e
	.4byte	0x86
	.4byte	.LLST2
	.uleb128 0x12
	.4byte	.LASF34
	.byte	0x1
	.byte	0x51
	.4byte	0x296
	.4byte	.LLST3
	.uleb128 0x15
	.4byte	.LVL5
	.4byte	0x6f4
	.4byte	0x282
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_keys_lock
	.byte	0
	.uleb128 0x17
	.4byte	.LVL9
	.4byte	0x6ff
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_keys_lock
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x13f
	.uleb128 0x18
	.4byte	.LASF59
	.byte	0x1
	.byte	0x7b
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x37d
	.uleb128 0x10
	.4byte	.LASF35
	.byte	0x1
	.byte	0x7b
	.4byte	0x25
	.4byte	.LLST4
	.uleb128 0x19
	.4byte	.LASF36
	.byte	0x1
	.byte	0x7b
	.4byte	0x76
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.string	"tls"
	.byte	0x1
	.byte	0x7d
	.4byte	0x37d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.4byte	.LASF60
	.4byte	0x393
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5717
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x1
	.byte	0x81
	.4byte	0x223
	.4byte	.LLST5
	.uleb128 0x1c
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x33d
	.uleb128 0x1d
	.string	"key"
	.byte	0x1
	.byte	0x86
	.4byte	0x296
	.4byte	.LLST6
	.uleb128 0x12
	.4byte	.LASF38
	.byte	0x1
	.byte	0x8a
	.4byte	0x223
	.4byte	.LLST7
	.uleb128 0x1e
	.4byte	.LVL14
	.4byte	0x234
	.uleb128 0x17
	.4byte	.LVL18
	.4byte	0x70a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL12
	.4byte	0x715
	.4byte	0x36c
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x7e
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5717
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x17
	.4byte	.LVL20
	.4byte	0x70a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x1d3
	.uleb128 0x1f
	.4byte	0x7f
	.4byte	0x393
	.uleb128 0x20
	.4byte	0x6f
	.byte	0x2d
	.byte	0
	.uleb128 0x13
	.4byte	0x383
	.uleb128 0x21
	.4byte	.LASF41
	.byte	0x1
	.byte	0x3a
	.4byte	0x25
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x429
	.uleb128 0x14
	.string	"key"
	.byte	0x1
	.byte	0x3a
	.4byte	0x429
	.4byte	.LLST8
	.uleb128 0x10
	.4byte	.LASF20
	.byte	0x1
	.byte	0x3a
	.4byte	0xe8
	.4byte	.LLST9
	.uleb128 0x22
	.4byte	.LASF39
	.byte	0x1
	.byte	0x3c
	.4byte	0x296
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x12
	.4byte	.LASF40
	.byte	0x1
	.byte	0x43
	.4byte	0x42f
	.4byte	.LLST10
	.uleb128 0x15
	.4byte	.LVL22
	.4byte	0x720
	.4byte	0x3fe
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x15
	.4byte	.LVL24
	.4byte	0x6f4
	.4byte	0x415
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_keys_lock
	.byte	0
	.uleb128 0x17
	.4byte	.LVL32
	.4byte	0x6ff
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_keys_lock
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x86
	.uleb128 0x9
	.byte	0x4
	.4byte	0x435
	.uleb128 0x13
	.4byte	0x13f
	.uleb128 0x21
	.4byte	.LASF42
	.byte	0x1
	.byte	0x5b
	.4byte	0x25
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4d6
	.uleb128 0x14
	.string	"key"
	.byte	0x1
	.byte	0x5b
	.4byte	0x86
	.4byte	.LLST11
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x1
	.byte	0x64
	.4byte	0x296
	.4byte	.LLST12
	.uleb128 0x1c
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x48e
	.uleb128 0x12
	.4byte	.LASF43
	.byte	0x1
	.byte	0x66
	.4byte	0x139
	.4byte	.LLST13
	.byte	0
	.uleb128 0x15
	.4byte	.LVL36
	.4byte	0x6f4
	.4byte	0x4a5
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_keys_lock
	.byte	0
	.uleb128 0x15
	.4byte	.LVL37
	.4byte	0x234
	.4byte	0x4b9
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL42
	.4byte	0x70a
	.uleb128 0x17
	.4byte	.LVL43
	.4byte	0x6ff
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_keys_lock
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF61
	.byte	0x1
	.byte	0xa9
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x544
	.uleb128 0x1d
	.string	"tls"
	.byte	0x1
	.byte	0xab
	.4byte	0x76
	.4byte	.LLST14
	.uleb128 0x15
	.4byte	.LVL44
	.4byte	0x72b
	.4byte	0x512
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.4byte	.LVL46
	.4byte	0x29c
	.4byte	0x525
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x17
	.4byte	.LVL47
	.4byte	0x737
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF44
	.byte	0x1
	.byte	0xc7
	.4byte	0x76
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5b3
	.uleb128 0x14
	.string	"key"
	.byte	0x1
	.byte	0xc7
	.4byte	0x86
	.4byte	.LLST15
	.uleb128 0x1d
	.string	"tls"
	.byte	0x1
	.byte	0xc9
	.4byte	0x37d
	.4byte	.LLST16
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x1
	.byte	0xce
	.4byte	0x223
	.4byte	.LLST17
	.uleb128 0x15
	.4byte	.LVL49
	.4byte	0x72b
	.4byte	0x5a2
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x17
	.4byte	.LVL50
	.4byte	0x1de
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF45
	.byte	0x1
	.byte	0xd5
	.4byte	0x25
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6d2
	.uleb128 0x14
	.string	"key"
	.byte	0x1
	.byte	0xd5
	.4byte	0x86
	.4byte	.LLST18
	.uleb128 0x10
	.4byte	.LASF27
	.byte	0x1
	.byte	0xd5
	.4byte	0xae
	.4byte	.LLST19
	.uleb128 0x12
	.4byte	.LASF46
	.byte	0x1
	.byte	0xd7
	.4byte	0x296
	.4byte	.LLST20
	.uleb128 0x1d
	.string	"tls"
	.byte	0x1
	.byte	0xdc
	.4byte	0x37d
	.4byte	.LLST21
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x1
	.byte	0xec
	.4byte	0x223
	.4byte	.LLST22
	.uleb128 0x1c
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x634
	.uleb128 0x12
	.4byte	.LASF43
	.byte	0x1
	.byte	0xf3
	.4byte	0x1a9
	.4byte	.LLST23
	.byte	0
	.uleb128 0x15
	.4byte	.LVL57
	.4byte	0x234
	.4byte	0x648
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL59
	.4byte	0x72b
	.4byte	0x660
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.4byte	.LVL61
	.4byte	0x743
	.4byte	0x678
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x15
	.4byte	.LVL63
	.4byte	0x737
	.4byte	0x69f
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	pthread_local_storage_thread_deleted_callback
	.byte	0
	.uleb128 0x15
	.4byte	.LVL64
	.4byte	0x1de
	.4byte	0x6b9
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL72
	.4byte	0x70a
	.uleb128 0x17
	.4byte	.LVL75
	.4byte	0x720
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF47
	.byte	0x1
	.byte	0x2d
	.4byte	0xdd
	.uleb128 0x5
	.byte	0x3
	.4byte	s_keys_lock
	.uleb128 0x24
	.4byte	.LASF62
	.byte	0x1
	.byte	0x2b
	.4byte	0x14a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_keys
	.uleb128 0x25
	.4byte	.LASF48
	.4byte	.LASF48
	.byte	0x5
	.byte	0xda
	.uleb128 0x25
	.4byte	.LASF49
	.4byte	.LASF49
	.byte	0x5
	.byte	0xd9
	.uleb128 0x25
	.4byte	.LASF50
	.4byte	.LASF50
	.byte	0x6
	.byte	0x5a
	.uleb128 0x25
	.4byte	.LASF51
	.4byte	.LASF51
	.byte	0x7
	.byte	0x29
	.uleb128 0x25
	.4byte	.LASF52
	.4byte	.LASF52
	.byte	0x6
	.byte	0x65
	.uleb128 0x26
	.4byte	.LASF53
	.4byte	.LASF53
	.byte	0x8
	.2byte	0x593
	.uleb128 0x26
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0x8
	.2byte	0x5b3
	.uleb128 0x25
	.4byte	.LASF55
	.4byte	.LASF55
	.byte	0x6
	.byte	0x57
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
	.uleb128 0x7
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
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
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x18
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
	.uleb128 0xb
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
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LFE20
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
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL13
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL19
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL21
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL21
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x5
	.byte	0x3
	.4byte	s_keys
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x5
	.byte	0x3
	.4byte	s_keys
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL35
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL37
	.4byte	.LVL42-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL45
	.4byte	.LVL46-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL48
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
	.4byte	.LVL54
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL55
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL49
	.4byte	.LVL50-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL54
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL56
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL67
	.4byte	.LVL73
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x2
	.byte	0x7a
	.sleb128 0
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
	.4byte	.LVL82
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL85
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL56
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL70
	.4byte	.LVL73
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL78
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL60
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL80
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL64
	.4byte	.LVL72-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL75
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL82
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL68
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x54
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF13:
	.string	"uint32_t"
.LASF34:
	.string	"result"
.LASF54:
	.string	"vTaskSetThreadLocalStoragePointerAndDelCallback"
.LASF48:
	.string	"vTaskEnterCritical"
.LASF52:
	.string	"malloc"
.LASF8:
	.string	"sizetype"
.LASF59:
	.string	"pthread_local_storage_thread_deleted_callback"
.LASF11:
	.string	"__uint32_t"
.LASF18:
	.string	"pthread_destructor_t"
.LASF33:
	.string	"find_key"
.LASF44:
	.string	"pthread_getspecific"
.LASF27:
	.string	"value"
.LASF58:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\pthread"
.LASF40:
	.string	"head"
.LASF35:
	.string	"index"
.LASF36:
	.string	"v_tls"
.LASF24:
	.string	"key_list_t"
.LASF42:
	.string	"pthread_key_delete"
.LASF50:
	.string	"free"
.LASF43:
	.string	"curelm"
.LASF4:
	.string	"short int"
.LASF5:
	.string	"long long int"
.LASF20:
	.string	"destructor"
.LASF28:
	.string	"value_entry_t"
.LASF7:
	.string	"long int"
.LASF39:
	.string	"new_key"
.LASF26:
	.string	"value_entry_t_"
.LASF49:
	.string	"vTaskExitCritical"
.LASF37:
	.string	"entry"
.LASF3:
	.string	"unsigned char"
.LASF30:
	.string	"values_list_t"
.LASF23:
	.string	"key_entry_t_"
.LASF60:
	.string	"__func__"
.LASF15:
	.string	"owner"
.LASF56:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF2:
	.string	"signed char"
.LASF6:
	.string	"long long unsigned int"
.LASF45:
	.string	"pthread_setspecific"
.LASF17:
	.string	"portMUX_TYPE"
.LASF0:
	.string	"unsigned int"
.LASF46:
	.string	"key_entry"
.LASF25:
	.string	"slh_first"
.LASF1:
	.string	"short unsigned int"
.LASF10:
	.string	"char"
.LASF29:
	.string	"values_list_t_"
.LASF62:
	.string	"s_keys"
.LASF31:
	.string	"list"
.LASF55:
	.string	"calloc"
.LASF32:
	.string	"find_value"
.LASF14:
	.string	"_Bool"
.LASF9:
	.string	"long unsigned int"
.LASF61:
	.string	"pthread_internal_local_storage_destructor_callback"
.LASF57:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/pthread/pthread_local_storage.c"
.LASF19:
	.string	"sle_next"
.LASF12:
	.string	"pthread_key_t"
.LASF16:
	.string	"count"
.LASF47:
	.string	"s_keys_lock"
.LASF51:
	.string	"__assert_func"
.LASF53:
	.string	"pvTaskGetThreadLocalStoragePointer"
.LASF22:
	.string	"key_entry_t"
.LASF21:
	.string	"next"
.LASF38:
	.string	"next_entry"
.LASF41:
	.string	"pthread_key_create"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
