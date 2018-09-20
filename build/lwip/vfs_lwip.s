	.file	"vfs_lwip.c"
	.text
.Ltext0:
	.section	.text.lwip_stop_socket_select_isr,"ax",@progbits
	.align	4
	.type	lwip_stop_socket_select_isr, @function
lwip_stop_socket_select_isr:
.LFB33:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/port/vfs_lwip.c"
	.loc 1 37 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 38 0
	call8	sys_thread_sem_get
.LVL1:
	call8	sys_sem_signal_isr
.LVL2:
	beqz.n	a10, .L1
	.loc 1 38 0 is_stmt 0 discriminator 1
	beqz.n	a2, .L1
	.loc 1 39 0 is_stmt 1
	movi.n	a8, 1
	s32i.n	a8, a2, 0
.L1:
	retw.n
.LFE33:
	.size	lwip_stop_socket_select_isr, .-lwip_stop_socket_select_isr
	.section	.text.lwip_stop_socket_select,"ax",@progbits
	.align	4
	.type	lwip_stop_socket_select, @function
lwip_stop_socket_select:
.LFB32:
	.loc 1 32 0
	entry	sp, 32
.LCFI1:
	.loc 1 33 0
	call8	sys_thread_sem_get
.LVL3:
	call8	sys_sem_signal
.LVL4:
	retw.n
.LFE32:
	.size	lwip_stop_socket_select, .-lwip_stop_socket_select
	.section	.text.lwip_ioctl_r_wrapper,"ax",@progbits
	.align	4
	.type	lwip_ioctl_r_wrapper, @function
lwip_ioctl_r_wrapper:
.LFB35:
	.loc 1 49 0
.LVL5:
	entry	sp, 48
.LCFI2:
	mov.n	a10, a2
	mov.n	a11, a3
	s32i.n	a4, sp, 0
	s32i.n	a5, sp, 4
	.loc 1 50 0
	addi.n	a8, a6, 4
	s32i.n	a8, sp, 8
	movi.n	a9, 0x18
	blt	a9, a8, .L5
	.loc 1 50 0 is_stmt 0 discriminator 2
	mov.n	a6, a5
	j	.L6
.L5:
	.loc 1 50 0 discriminator 1
	movi.n	a8, 0x18
	blt	a8, a6, .L7
	.loc 1 50 0 discriminator 5
	movi.n	a6, 0x24
	s32i.n	a6, sp, 8
.L7:
	.loc 1 50 0 discriminator 6
	l32i.n	a6, sp, 0
.L6:
	.loc 1 50 0 discriminator 7
	l32i.n	a8, sp, 8
	add.n	a8, a6, a8
	addi	a8, a8, -4
	l32i.n	a12, a8, 0
	call8	lwip_ioctl_r
.LVL6:
	.loc 1 51 0 is_stmt 1 discriminator 7
	mov.n	a2, a10
.LVL7:
	retw.n
.LFE35:
	.size	lwip_ioctl_r_wrapper, .-lwip_ioctl_r_wrapper
	.section	.text.lwip_fcntl_r_wrapper,"ax",@progbits
	.align	4
	.type	lwip_fcntl_r_wrapper, @function
lwip_fcntl_r_wrapper:
.LFB34:
	.loc 1 44 0
.LVL8:
	entry	sp, 48
.LCFI3:
	mov.n	a10, a2
	mov.n	a11, a3
	s32i.n	a4, sp, 0
	s32i.n	a5, sp, 4
	.loc 1 45 0
	addi.n	a8, a6, 4
	s32i.n	a8, sp, 8
	movi.n	a9, 0x18
	blt	a9, a8, .L9
	.loc 1 45 0 is_stmt 0 discriminator 2
	mov.n	a6, a5
	j	.L10
.L9:
	.loc 1 45 0 discriminator 1
	movi.n	a8, 0x18
	blt	a8, a6, .L11
	.loc 1 45 0 discriminator 5
	movi.n	a6, 0x24
	s32i.n	a6, sp, 8
.L11:
	.loc 1 45 0 discriminator 6
	l32i.n	a6, sp, 0
.L10:
	.loc 1 45 0 discriminator 7
	l32i.n	a8, sp, 8
	add.n	a8, a6, a8
	addi	a8, a8, -4
	l32i.n	a12, a8, 0
	call8	lwip_fcntl_r
.LVL9:
	.loc 1 46 0 is_stmt 1 discriminator 7
	mov.n	a2, a10
.LVL10:
	retw.n
.LFE34:
	.size	lwip_fcntl_r_wrapper, .-lwip_fcntl_r_wrapper
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC8:
	.string	"esp_vfs_register_fd_range(&vfs, NULL, LWIP_SOCKET_OFFSET, MAX_FDS)"
	.align	4
.LC11:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/lwip/port/vfs_lwip.c"
	.section	.text.esp_vfs_lwip_sockets_register,"ax",@progbits
	.literal_position
	.literal .LC0, lwip_write_r
	.literal .LC1, lwip_read_r
	.literal .LC2, lwip_close_r
	.literal .LC3, lwip_fcntl_r_wrapper
	.literal .LC4, lwip_ioctl_r_wrapper
	.literal .LC5, lwip_select
	.literal .LC6, lwip_stop_socket_select
	.literal .LC7, lwip_stop_socket_select_isr
	.literal .LC9, .LC8
	.literal .LC10, __func__$6973
	.literal .LC12, .LC11
	.align	4
	.global	esp_vfs_lwip_sockets_register
	.type	esp_vfs_lwip_sockets_register, @function
esp_vfs_lwip_sockets_register:
.LFB36:
	.loc 1 54 0
	entry	sp, 160
.LCFI4:
	.loc 1 55 0
	movi	a12, 0x74
	movi.n	a11, 0
	mov.n	a10, sp
	call8	memset
.LVL11:
	l32r	a8, .LC0
	s32i.n	a8, sp, 4
	l32r	a8, .LC1
	s32i.n	a8, sp, 12
	l32r	a8, .LC2
	s32i.n	a8, sp, 20
	l32r	a8, .LC3
	s32i	a8, sp, 76
	l32r	a8, .LC4
	s32i	a8, sp, 80
	l32r	a8, .LC5
	s32i	a8, sp, 100
	l32r	a8, .LC6
	s32i	a8, sp, 104
	l32r	a8, .LC7
	s32i	a8, sp, 108
.LBB2:
	.loc 1 73 0
	movi.n	a13, 0x40
	movi.n	a12, 0x36
	movi.n	a11, 0
	mov.n	a10, sp
	call8	esp_vfs_register_fd_range
.LVL12:
	.loc 1 73 0
	beqz.n	a10, .L12
	.loc 1 73 0 is_stmt 0 discriminator 1
	l32r	a14, .LC9
	l32r	a13, .LC10
	movi.n	a12, 0x49
	l32r	a11, .LC12
	call8	_esp_error_check_failed
.LVL13:
.L12:
	retw.n
.LBE2:
.LFE36:
	.size	esp_vfs_lwip_sockets_register, .-esp_vfs_lwip_sockets_register
	.section	.rodata.__func__$6973,"a",@progbits
	.align	4
	.type	__func__$6973, @object
	.size	__func__$6973, 30
__func__$6973:
	.string	"esp_vfs_lwip_sockets_register"
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
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI0-.LFB33
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
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI2-.LFB35
	.byte	0xe
	.uleb128 0x30
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
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI4-.LFB36
	.byte	0xe
	.uleb128 0xa0
	.align	4
.LEFDE8:
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/_types.h"
	.file 5 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdarg.h"
	.file 6 "<built-in>"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/types.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/stat.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/queue.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/semphr.h"
	.file 14 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/time.h"
	.file 15 "D:/ESP32/esp-idf-v3.1-rc1/components/vfs/include/sys/dirent.h"
	.file 16 "D:/ESP32/esp-idf-v3.1-rc1/components/vfs/include/esp_vfs.h"
	.file 17 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/port/arch/sys_arch.h"
	.file 18 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/sys.h"
	.file 19 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/sockets.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xe54
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF138
	.byte	0xc
	.4byte	.LASF139
	.4byte	.LASF140
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
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0x10
	.4byte	0x94
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x14
	.4byte	0x5e
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x18
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x1b
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x37
	.4byte	0x25
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF19
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe4
	.uleb128 0x7
	.4byte	0xd7
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x5
	.byte	0x28
	.4byte	0xf4
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0xc
	.byte	0x6
	.byte	0
	.4byte	0x125
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x6
	.byte	0
	.4byte	0xce
	.byte	0
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x6
	.byte	0
	.4byte	0xce
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x6
	.byte	0
	.4byte	0x25
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x5
	.byte	0x62
	.4byte	0xe9
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x7
	.byte	0x7a
	.4byte	0x94
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x7
	.byte	0x9b
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x7
	.byte	0xb8
	.4byte	0x89
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x7
	.byte	0xb9
	.4byte	0x9b
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x7
	.byte	0xba
	.4byte	0xa6
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x7
	.byte	0xbb
	.4byte	0xb1
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x7
	.byte	0xcb
	.4byte	0xbc
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x7
	.byte	0xd9
	.4byte	0x37
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x7
	.byte	0xde
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x7
	.byte	0xf4
	.4byte	0x94
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x8
	.byte	0x7
	.byte	0xfc
	.4byte	0x1b7
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x7
	.byte	0xfd
	.4byte	0x1b7
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0x193
	.4byte	0x1c7
	.uleb128 0xb
	.4byte	0xc7
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x7
	.byte	0xfe
	.4byte	0x19e
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x7
	.2byte	0x11d
	.4byte	0x94
	.uleb128 0x8
	.4byte	.LASF39
	.byte	0x3c
	.byte	0x8
	.byte	0x1a
	.4byte	0x2b7
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x8
	.byte	0x1c
	.4byte	0x151
	.byte	0
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x8
	.byte	0x1d
	.4byte	0x13b
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x8
	.byte	0x1e
	.4byte	0x17d
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x8
	.byte	0x1f
	.4byte	0x188
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x8
	.byte	0x20
	.4byte	0x15c
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x8
	.byte	0x21
	.4byte	0x167
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x8
	.byte	0x22
	.4byte	0x151
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x8
	.byte	0x23
	.4byte	0x146
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x8
	.byte	0x31
	.4byte	0x130
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x8
	.byte	0x32
	.4byte	0x94
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x8
	.byte	0x33
	.4byte	0x130
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x8
	.byte	0x34
	.4byte	0x94
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x8
	.byte	0x35
	.4byte	0x130
	.byte	0x24
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x8
	.byte	0x36
	.4byte	0x94
	.byte	0x28
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x8
	.byte	0x37
	.4byte	0x94
	.byte	0x2c
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x8
	.byte	0x38
	.4byte	0x94
	.byte	0x30
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x8
	.byte	0x39
	.4byte	0x2b7
	.byte	0x34
	.byte	0
	.uleb128 0xa
	.4byte	0x94
	.4byte	0x2c7
	.uleb128 0xb
	.4byte	0xc7
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0x9
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0x9
	.byte	0x21
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0x9
	.byte	0x2c
	.4byte	0x70
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2ee
	.uleb128 0xd
	.uleb128 0xe
	.4byte	0x2f6
	.uleb128 0xf
	.byte	0
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0xa
	.byte	0x18
	.4byte	0x2dd
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF61
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0xb
	.byte	0x6f
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0xc
	.byte	0x58
	.4byte	0xce
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0xd
	.byte	0x4f
	.4byte	0x313
	.uleb128 0x8
	.4byte	.LASF65
	.byte	0x8
	.byte	0xe
	.byte	0x11
	.4byte	0x34e
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0xe
	.byte	0x12
	.4byte	0x130
	.byte	0
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0xe
	.byte	0x13
	.4byte	0x1d2
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0xf
	.byte	0x1e
	.4byte	0x36f
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0xf
	.byte	0x1f
	.4byte	0x2d2
	.byte	0
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0xf
	.byte	0x20
	.4byte	0x2d2
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.string	"DIR"
	.byte	0xf
	.byte	0x22
	.4byte	0x34e
	.uleb128 0x12
	.4byte	.LASF70
	.2byte	0x108
	.byte	0xf
	.byte	0x27
	.4byte	0x3ac
	.uleb128 0x9
	.4byte	.LASF71
	.byte	0xf
	.byte	0x28
	.4byte	0x25
	.byte	0
	.uleb128 0x9
	.4byte	.LASF72
	.byte	0xf
	.byte	0x29
	.4byte	0x2c7
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF73
	.byte	0xf
	.byte	0x2d
	.4byte	0x3ac
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.4byte	0xd7
	.4byte	0x3bc
	.uleb128 0xb
	.4byte	0xc7
	.byte	0xff
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0x10
	.byte	0x59
	.4byte	0x3db
	.uleb128 0x14
	.4byte	.LASF74
	.byte	0x10
	.byte	0x5a
	.4byte	0x3f9
	.uleb128 0x14
	.4byte	.LASF75
	.byte	0x10
	.byte	0x5b
	.4byte	0x418
	.byte	0
	.uleb128 0x15
	.4byte	0x172
	.4byte	0x3f9
	.uleb128 0x16
	.4byte	0xce
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0x2e8
	.uleb128 0x16
	.4byte	0x2c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3db
	.uleb128 0x15
	.4byte	0x172
	.4byte	0x418
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0x2e8
	.uleb128 0x16
	.4byte	0x2c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3ff
	.uleb128 0x13
	.byte	0x4
	.byte	0x10
	.byte	0x5d
	.4byte	0x43d
	.uleb128 0x14
	.4byte	.LASF76
	.byte	0x10
	.byte	0x5e
	.4byte	0x45b
	.uleb128 0x14
	.4byte	.LASF77
	.byte	0x10
	.byte	0x5f
	.4byte	0x47a
	.byte	0
	.uleb128 0x15
	.4byte	0x146
	.4byte	0x45b
	.uleb128 0x16
	.4byte	0xce
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0x146
	.uleb128 0x16
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x43d
	.uleb128 0x15
	.4byte	0x146
	.4byte	0x47a
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0x146
	.uleb128 0x16
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x461
	.uleb128 0x13
	.byte	0x4
	.byte	0x10
	.byte	0x61
	.4byte	0x49f
	.uleb128 0x14
	.4byte	.LASF78
	.byte	0x10
	.byte	0x62
	.4byte	0x4bd
	.uleb128 0x14
	.4byte	.LASF79
	.byte	0x10
	.byte	0x63
	.4byte	0x4dc
	.byte	0
	.uleb128 0x15
	.4byte	0x172
	.4byte	0x4bd
	.uleb128 0x16
	.4byte	0xce
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0xce
	.uleb128 0x16
	.4byte	0x2c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x49f
	.uleb128 0x15
	.4byte	0x172
	.4byte	0x4dc
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0xce
	.uleb128 0x16
	.4byte	0x2c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4c3
	.uleb128 0x13
	.byte	0x4
	.byte	0x10
	.byte	0x65
	.4byte	0x501
	.uleb128 0x14
	.4byte	.LASF80
	.byte	0x10
	.byte	0x66
	.4byte	0x51f
	.uleb128 0x14
	.4byte	.LASF81
	.byte	0x10
	.byte	0x67
	.4byte	0x53e
	.byte	0
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x51f
	.uleb128 0x16
	.4byte	0xce
	.uleb128 0x16
	.4byte	0xde
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x501
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x53e
	.uleb128 0x16
	.4byte	0xde
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x525
	.uleb128 0x13
	.byte	0x4
	.byte	0x10
	.byte	0x69
	.4byte	0x563
	.uleb128 0x14
	.4byte	.LASF82
	.byte	0x10
	.byte	0x6a
	.4byte	0x577
	.uleb128 0x14
	.4byte	.LASF83
	.byte	0x10
	.byte	0x6b
	.4byte	0x58c
	.byte	0
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x577
	.uleb128 0x16
	.4byte	0xce
	.uleb128 0x16
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x563
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x58c
	.uleb128 0x16
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x57d
	.uleb128 0x13
	.byte	0x4
	.byte	0x10
	.byte	0x6d
	.4byte	0x5b1
	.uleb128 0x14
	.4byte	.LASF84
	.byte	0x10
	.byte	0x6e
	.4byte	0x5d0
	.uleb128 0x14
	.4byte	.LASF85
	.byte	0x10
	.byte	0x6f
	.4byte	0x5ea
	.byte	0
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x5ca
	.uleb128 0x16
	.4byte	0xce
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0x5ca
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1de
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5b1
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x5ea
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0x5ca
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5d6
	.uleb128 0x13
	.byte	0x4
	.byte	0x10
	.byte	0x71
	.4byte	0x60f
	.uleb128 0x14
	.4byte	.LASF86
	.byte	0x10
	.byte	0x72
	.4byte	0x628
	.uleb128 0x14
	.4byte	.LASF39
	.byte	0x10
	.byte	0x73
	.4byte	0x642
	.byte	0
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x628
	.uleb128 0x16
	.4byte	0xce
	.uleb128 0x16
	.4byte	0xde
	.uleb128 0x16
	.4byte	0x5ca
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x60f
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x642
	.uleb128 0x16
	.4byte	0xde
	.uleb128 0x16
	.4byte	0x5ca
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x62e
	.uleb128 0x13
	.byte	0x4
	.byte	0x10
	.byte	0x75
	.4byte	0x667
	.uleb128 0x14
	.4byte	.LASF87
	.byte	0x10
	.byte	0x76
	.4byte	0x680
	.uleb128 0x14
	.4byte	.LASF88
	.byte	0x10
	.byte	0x77
	.4byte	0x69a
	.byte	0
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x680
	.uleb128 0x16
	.4byte	0xce
	.uleb128 0x16
	.4byte	0xde
	.uleb128 0x16
	.4byte	0xde
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x667
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x69a
	.uleb128 0x16
	.4byte	0xde
	.uleb128 0x16
	.4byte	0xde
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x686
	.uleb128 0x13
	.byte	0x4
	.byte	0x10
	.byte	0x79
	.4byte	0x6bf
	.uleb128 0x14
	.4byte	.LASF89
	.byte	0x10
	.byte	0x7a
	.4byte	0x6d3
	.uleb128 0x14
	.4byte	.LASF90
	.byte	0x10
	.byte	0x7b
	.4byte	0x6e8
	.byte	0
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x6d3
	.uleb128 0x16
	.4byte	0xce
	.uleb128 0x16
	.4byte	0xde
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6bf
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x6e8
	.uleb128 0x16
	.4byte	0xde
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6d9
	.uleb128 0x13
	.byte	0x4
	.byte	0x10
	.byte	0x7d
	.4byte	0x70d
	.uleb128 0x14
	.4byte	.LASF91
	.byte	0x10
	.byte	0x7e
	.4byte	0x680
	.uleb128 0x14
	.4byte	.LASF92
	.byte	0x10
	.byte	0x7f
	.4byte	0x69a
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0x10
	.byte	0x81
	.4byte	0x72c
	.uleb128 0x14
	.4byte	.LASF93
	.byte	0x10
	.byte	0x82
	.4byte	0x746
	.uleb128 0x14
	.4byte	.LASF94
	.byte	0x10
	.byte	0x83
	.4byte	0x75b
	.byte	0
	.uleb128 0x15
	.4byte	0x740
	.4byte	0x740
	.uleb128 0x16
	.4byte	0xce
	.uleb128 0x16
	.4byte	0xde
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x36f
	.uleb128 0x6
	.byte	0x4
	.4byte	0x72c
	.uleb128 0x15
	.4byte	0x740
	.4byte	0x75b
	.uleb128 0x16
	.4byte	0xde
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x74c
	.uleb128 0x13
	.byte	0x4
	.byte	0x10
	.byte	0x85
	.4byte	0x780
	.uleb128 0x14
	.4byte	.LASF95
	.byte	0x10
	.byte	0x86
	.4byte	0x79a
	.uleb128 0x14
	.4byte	.LASF96
	.byte	0x10
	.byte	0x87
	.4byte	0x7af
	.byte	0
	.uleb128 0x15
	.4byte	0x794
	.4byte	0x794
	.uleb128 0x16
	.4byte	0xce
	.uleb128 0x16
	.4byte	0x740
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x37a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x780
	.uleb128 0x15
	.4byte	0x794
	.4byte	0x7af
	.uleb128 0x16
	.4byte	0x740
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7a0
	.uleb128 0x13
	.byte	0x4
	.byte	0x10
	.byte	0x89
	.4byte	0x7d4
	.uleb128 0x14
	.4byte	.LASF97
	.byte	0x10
	.byte	0x8a
	.4byte	0x7f8
	.uleb128 0x14
	.4byte	.LASF98
	.byte	0x10
	.byte	0x8b
	.4byte	0x817
	.byte	0
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x7f2
	.uleb128 0x16
	.4byte	0xce
	.uleb128 0x16
	.4byte	0x740
	.uleb128 0x16
	.4byte	0x794
	.uleb128 0x16
	.4byte	0x7f2
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x794
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7d4
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x817
	.uleb128 0x16
	.4byte	0x740
	.uleb128 0x16
	.4byte	0x794
	.uleb128 0x16
	.4byte	0x7f2
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7fe
	.uleb128 0x13
	.byte	0x4
	.byte	0x10
	.byte	0x8d
	.4byte	0x83c
	.uleb128 0x14
	.4byte	.LASF99
	.byte	0x10
	.byte	0x8e
	.4byte	0x850
	.uleb128 0x14
	.4byte	.LASF100
	.byte	0x10
	.byte	0x8f
	.4byte	0x865
	.byte	0
	.uleb128 0x15
	.4byte	0x94
	.4byte	0x850
	.uleb128 0x16
	.4byte	0xce
	.uleb128 0x16
	.4byte	0x740
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x83c
	.uleb128 0x15
	.4byte	0x94
	.4byte	0x865
	.uleb128 0x16
	.4byte	0x740
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x856
	.uleb128 0x13
	.byte	0x4
	.byte	0x10
	.byte	0x91
	.4byte	0x88a
	.uleb128 0x14
	.4byte	.LASF101
	.byte	0x10
	.byte	0x92
	.4byte	0x89f
	.uleb128 0x14
	.4byte	.LASF102
	.byte	0x10
	.byte	0x93
	.4byte	0x8b5
	.byte	0
	.uleb128 0x17
	.4byte	0x89f
	.uleb128 0x16
	.4byte	0xce
	.uleb128 0x16
	.4byte	0x740
	.uleb128 0x16
	.4byte	0x94
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x88a
	.uleb128 0x17
	.4byte	0x8b5
	.uleb128 0x16
	.4byte	0x740
	.uleb128 0x16
	.4byte	0x94
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8a5
	.uleb128 0x13
	.byte	0x4
	.byte	0x10
	.byte	0x95
	.4byte	0x8da
	.uleb128 0x14
	.4byte	.LASF103
	.byte	0x10
	.byte	0x96
	.4byte	0x8ee
	.uleb128 0x14
	.4byte	.LASF104
	.byte	0x10
	.byte	0x97
	.4byte	0x903
	.byte	0
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x8ee
	.uleb128 0x16
	.4byte	0xce
	.uleb128 0x16
	.4byte	0x740
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8da
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x903
	.uleb128 0x16
	.4byte	0x740
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8f4
	.uleb128 0x13
	.byte	0x4
	.byte	0x10
	.byte	0x99
	.4byte	0x928
	.uleb128 0x14
	.4byte	.LASF105
	.byte	0x10
	.byte	0x9a
	.4byte	0x941
	.uleb128 0x14
	.4byte	.LASF106
	.byte	0x10
	.byte	0x9b
	.4byte	0x95b
	.byte	0
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x941
	.uleb128 0x16
	.4byte	0xce
	.uleb128 0x16
	.4byte	0xde
	.uleb128 0x16
	.4byte	0x17d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x928
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x95b
	.uleb128 0x16
	.4byte	0xde
	.uleb128 0x16
	.4byte	0x17d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x947
	.uleb128 0x13
	.byte	0x4
	.byte	0x10
	.byte	0x9d
	.4byte	0x980
	.uleb128 0x14
	.4byte	.LASF107
	.byte	0x10
	.byte	0x9e
	.4byte	0x6d3
	.uleb128 0x14
	.4byte	.LASF108
	.byte	0x10
	.byte	0x9f
	.4byte	0x6e8
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0x10
	.byte	0xa1
	.4byte	0x99f
	.uleb128 0x14
	.4byte	.LASF109
	.byte	0x10
	.byte	0xa2
	.4byte	0x9bd
	.uleb128 0x14
	.4byte	.LASF110
	.byte	0x10
	.byte	0xa3
	.4byte	0x9dc
	.byte	0
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x9bd
	.uleb128 0x16
	.4byte	0xce
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0x125
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x99f
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x9dc
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0x125
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9c3
	.uleb128 0x13
	.byte	0x4
	.byte	0x10
	.byte	0xa5
	.4byte	0xa01
	.uleb128 0x14
	.4byte	.LASF111
	.byte	0x10
	.byte	0xa6
	.4byte	0x9bd
	.uleb128 0x14
	.4byte	.LASF112
	.byte	0x10
	.byte	0xa7
	.4byte	0x9dc
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0x10
	.byte	0xa9
	.4byte	0xa20
	.uleb128 0x14
	.4byte	.LASF113
	.byte	0x10
	.byte	0xaa
	.4byte	0x577
	.uleb128 0x14
	.4byte	.LASF114
	.byte	0x10
	.byte	0xab
	.4byte	0x58c
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0x10
	.byte	0xad
	.4byte	0xa3f
	.uleb128 0x14
	.4byte	.LASF115
	.byte	0x10
	.byte	0xae
	.4byte	0xa58
	.uleb128 0x14
	.4byte	.LASF116
	.byte	0x10
	.byte	0xaf
	.4byte	0xa72
	.byte	0
	.uleb128 0x15
	.4byte	0x25
	.4byte	0xa58
	.uleb128 0x16
	.4byte	0xce
	.uleb128 0x16
	.4byte	0xde
	.uleb128 0x16
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa3f
	.uleb128 0x15
	.4byte	0x25
	.4byte	0xa72
	.uleb128 0x16
	.4byte	0xde
	.uleb128 0x16
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa5e
	.uleb128 0x13
	.byte	0x4
	.byte	0x10
	.byte	0xb1
	.4byte	0xa97
	.uleb128 0x14
	.4byte	.LASF117
	.byte	0x10
	.byte	0xb2
	.4byte	0xab0
	.uleb128 0x14
	.4byte	.LASF118
	.byte	0x10
	.byte	0xb3
	.4byte	0xaca
	.byte	0
	.uleb128 0x15
	.4byte	0x25
	.4byte	0xab0
	.uleb128 0x16
	.4byte	0xce
	.uleb128 0x16
	.4byte	0xde
	.uleb128 0x16
	.4byte	0x146
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa97
	.uleb128 0x15
	.4byte	0x25
	.4byte	0xaca
	.uleb128 0x16
	.4byte	0xde
	.uleb128 0x16
	.4byte	0x146
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xab6
	.uleb128 0x10
	.byte	0x74
	.byte	0x10
	.byte	0x56
	.4byte	0xbab
	.uleb128 0x9
	.4byte	.LASF119
	.byte	0x10
	.byte	0x58
	.4byte	0x25
	.byte	0
	.uleb128 0x18
	.4byte	0x3bc
	.byte	0x4
	.uleb128 0x18
	.4byte	0x41e
	.byte	0x8
	.uleb128 0x18
	.4byte	0x480
	.byte	0xc
	.uleb128 0x18
	.4byte	0x4e2
	.byte	0x10
	.uleb128 0x18
	.4byte	0x544
	.byte	0x14
	.uleb128 0x18
	.4byte	0x592
	.byte	0x18
	.uleb128 0x18
	.4byte	0x5f0
	.byte	0x1c
	.uleb128 0x18
	.4byte	0x648
	.byte	0x20
	.uleb128 0x18
	.4byte	0x6a0
	.byte	0x24
	.uleb128 0x18
	.4byte	0x6ee
	.byte	0x28
	.uleb128 0x18
	.4byte	0x70d
	.byte	0x2c
	.uleb128 0x18
	.4byte	0x761
	.byte	0x30
	.uleb128 0x18
	.4byte	0x7b5
	.byte	0x34
	.uleb128 0x18
	.4byte	0x81d
	.byte	0x38
	.uleb128 0x18
	.4byte	0x86b
	.byte	0x3c
	.uleb128 0x18
	.4byte	0x8bb
	.byte	0x40
	.uleb128 0x18
	.4byte	0x909
	.byte	0x44
	.uleb128 0x18
	.4byte	0x961
	.byte	0x48
	.uleb128 0x18
	.4byte	0x980
	.byte	0x4c
	.uleb128 0x18
	.4byte	0x9e2
	.byte	0x50
	.uleb128 0x18
	.4byte	0xa01
	.byte	0x54
	.uleb128 0x18
	.4byte	0xa20
	.byte	0x58
	.uleb128 0x18
	.4byte	0xa78
	.byte	0x5c
	.uleb128 0x9
	.4byte	.LASF120
	.byte	0x10
	.byte	0xb6
	.4byte	0xbda
	.byte	0x60
	.uleb128 0x9
	.4byte	.LASF121
	.byte	0x10
	.byte	0xb8
	.4byte	0xc09
	.byte	0x64
	.uleb128 0x9
	.4byte	.LASF122
	.byte	0x10
	.byte	0xba
	.4byte	0xc0f
	.byte	0x68
	.uleb128 0x9
	.4byte	.LASF123
	.byte	0x10
	.byte	0xbc
	.4byte	0xc26
	.byte	0x6c
	.uleb128 0x9
	.4byte	.LASF124
	.byte	0x10
	.byte	0xbe
	.4byte	0xc0f
	.byte	0x70
	.byte	0
	.uleb128 0x15
	.4byte	0x2f6
	.4byte	0xbce
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0xbce
	.uleb128 0x16
	.4byte	0xbce
	.uleb128 0x16
	.4byte	0xbce
	.uleb128 0x16
	.4byte	0xbd4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1c7
	.uleb128 0x6
	.byte	0x4
	.4byte	0x31e
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbab
	.uleb128 0x15
	.4byte	0x25
	.4byte	0xc03
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0xbce
	.uleb128 0x16
	.4byte	0xbce
	.uleb128 0x16
	.4byte	0xbce
	.uleb128 0x16
	.4byte	0xc03
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x329
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbe0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2ef
	.uleb128 0x17
	.4byte	0xc20
	.uleb128 0x16
	.4byte	0xc20
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x308
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc15
	.uleb128 0x3
	.4byte	.LASF125
	.byte	0x10
	.byte	0xbf
	.4byte	0xad0
	.uleb128 0x19
	.4byte	.LASF141
	.byte	0x1
	.byte	0x24
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc6c
	.uleb128 0x1a
	.4byte	.LASF126
	.byte	0x1
	.byte	0x24
	.4byte	0xc20
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1b
	.4byte	.LVL1
	.4byte	0xdff
	.uleb128 0x1b
	.4byte	.LVL2
	.4byte	0xe0a
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF142
	.byte	0x1
	.byte	0x1f
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc94
	.uleb128 0x1b
	.4byte	.LVL3
	.4byte	0xdff
	.uleb128 0x1b
	.4byte	.LVL4
	.4byte	0xe15
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF128
	.byte	0x1
	.byte	0x30
	.4byte	0x25
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xce0
	.uleb128 0x1e
	.string	"fd"
	.byte	0x1
	.byte	0x30
	.4byte	0x25
	.4byte	.LLST0
	.uleb128 0x1f
	.string	"cmd"
	.byte	0x1
	.byte	0x30
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.4byte	.LASF127
	.byte	0x1
	.byte	0x30
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.4byte	.LVL6
	.4byte	0xe20
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF129
	.byte	0x1
	.byte	0x2b
	.4byte	0x25
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd2c
	.uleb128 0x1e
	.string	"fd"
	.byte	0x1
	.byte	0x2b
	.4byte	0x25
	.4byte	.LLST1
	.uleb128 0x1f
	.string	"cmd"
	.byte	0x1
	.byte	0x2b
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.4byte	.LASF127
	.byte	0x1
	.byte	0x2b
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.4byte	.LVL9
	.4byte	0xe2c
	.byte	0
	.uleb128 0x20
	.4byte	.LASF143
	.byte	0x1
	.byte	0x35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdea
	.uleb128 0x21
	.string	"vfs"
	.byte	0x1
	.byte	0x37
	.4byte	0xc2c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x22
	.4byte	.LASF144
	.4byte	0xdfa
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6973
	.uleb128 0x23
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0xdcd
	.uleb128 0x24
	.4byte	.LASF130
	.byte	0x1
	.byte	0x49
	.4byte	0x2f6
	.4byte	.LLST2
	.uleb128 0x25
	.4byte	.LVL12
	.4byte	0xe38
	.4byte	0xda1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x36
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x27
	.4byte	.LVL13
	.4byte	0xe43
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x49
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6973
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL11
	.4byte	0xe4e
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x74
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0xd7
	.4byte	0xdfa
	.uleb128 0xb
	.4byte	0xc7
	.byte	0x1d
	.byte	0
	.uleb128 0x7
	.4byte	0xdea
	.uleb128 0x28
	.4byte	.LASF131
	.4byte	.LASF131
	.byte	0x11
	.byte	0x4a
	.uleb128 0x28
	.4byte	.LASF132
	.4byte	.LASF132
	.byte	0x12
	.byte	0x9a
	.uleb128 0x28
	.4byte	.LASF133
	.4byte	.LASF133
	.byte	0x12
	.byte	0x96
	.uleb128 0x29
	.4byte	.LASF134
	.4byte	.LASF134
	.byte	0x13
	.2byte	0x22d
	.uleb128 0x29
	.4byte	.LASF135
	.4byte	.LASF135
	.byte	0x13
	.2byte	0x22e
	.uleb128 0x28
	.4byte	.LASF136
	.4byte	.LASF136
	.byte	0x10
	.byte	0xe7
	.uleb128 0x28
	.4byte	.LASF137
	.4byte	.LASF137
	.byte	0xa
	.byte	0x4f
	.uleb128 0x2a
	.4byte	.LASF145
	.4byte	.LASF145
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
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x16
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL12
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LFE36
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF98:
	.string	"readdir_r"
.LASF15:
	.string	"__gid_t"
.LASF93:
	.string	"opendir_p"
.LASF120:
	.string	"start_select"
.LASF3:
	.string	"size_t"
.LASF89:
	.string	"unlink_p"
.LASF83:
	.string	"close"
.LASF4:
	.string	"__uint8_t"
.LASF31:
	.string	"ssize_t"
.LASF24:
	.string	"va_list"
.LASF10:
	.string	"long long unsigned int"
.LASF107:
	.string	"rmdir_p"
.LASF63:
	.string	"QueueHandle_t"
.LASF139:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/lwip/port/vfs_lwip.c"
.LASF97:
	.string	"readdir_r_p"
.LASF117:
	.string	"truncate_p"
.LASF109:
	.string	"fcntl_p"
.LASF39:
	.string	"stat"
.LASF106:
	.string	"mkdir"
.LASF9:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF124:
	.string	"end_select"
.LASF41:
	.string	"st_ino"
.LASF76:
	.string	"lseek_p"
.LASF68:
	.string	"dd_vfs_idx"
.LASF134:
	.string	"lwip_ioctl_r"
.LASF130:
	.string	"__err_rc"
.LASF121:
	.string	"socket_select"
.LASF12:
	.string	"long int"
.LASF69:
	.string	"dd_rsv"
.LASF100:
	.string	"telldir"
.LASF64:
	.string	"SemaphoreHandle_t"
.LASF58:
	.string	"uint16_t"
.LASF62:
	.string	"BaseType_t"
.LASF92:
	.string	"rename"
.LASF73:
	.string	"d_name"
.LASF33:
	.string	"nlink_t"
.LASF27:
	.string	"off_t"
.LASF30:
	.string	"gid_t"
.LASF88:
	.string	"link"
.LASF123:
	.string	"stop_socket_select_isr"
.LASF38:
	.string	"suseconds_t"
.LASF55:
	.string	"st_blocks"
.LASF44:
	.string	"st_uid"
.LASF49:
	.string	"st_spare1"
.LASF118:
	.string	"truncate"
.LASF78:
	.string	"read_p"
.LASF56:
	.string	"st_spare4"
.LASF137:
	.string	"_esp_error_check_failed"
.LASF22:
	.string	"__va_reg"
.LASF122:
	.string	"stop_socket_select"
.LASF18:
	.string	"long unsigned int"
.LASF36:
	.string	"_types_fd_set"
.LASF29:
	.string	"uid_t"
.LASF104:
	.string	"closedir"
.LASF1:
	.string	"short unsigned int"
.LASF140:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\lwip"
.LASF77:
	.string	"lseek"
.LASF116:
	.string	"access"
.LASF111:
	.string	"ioctl_p"
.LASF48:
	.string	"st_atime"
.LASF65:
	.string	"timeval"
.LASF8:
	.string	"__int32_t"
.LASF96:
	.string	"readdir"
.LASF142:
	.string	"lwip_stop_socket_select"
.LASF105:
	.string	"mkdir_p"
.LASF47:
	.string	"st_size"
.LASF75:
	.string	"write"
.LASF126:
	.string	"woken"
.LASF90:
	.string	"unlink"
.LASF17:
	.string	"sizetype"
.LASF80:
	.string	"open_p"
.LASF34:
	.string	"fd_mask"
.LASF81:
	.string	"open"
.LASF13:
	.string	"__dev_t"
.LASF66:
	.string	"tv_sec"
.LASF20:
	.string	"__gnuc_va_list"
.LASF70:
	.string	"dirent"
.LASF71:
	.string	"d_ino"
.LASF11:
	.string	"_off_t"
.LASF28:
	.string	"dev_t"
.LASF25:
	.string	"time_t"
.LASF84:
	.string	"fstat_p"
.LASF82:
	.string	"close_p"
.LASF143:
	.string	"esp_vfs_lwip_sockets_register"
.LASF132:
	.string	"sys_sem_signal_isr"
.LASF103:
	.string	"closedir_p"
.LASF114:
	.string	"fsync"
.LASF94:
	.string	"opendir"
.LASF43:
	.string	"st_nlink"
.LASF61:
	.string	"_Bool"
.LASF59:
	.string	"int32_t"
.LASF5:
	.string	"unsigned char"
.LASF74:
	.string	"write_p"
.LASF72:
	.string	"d_type"
.LASF138:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF37:
	.string	"fds_bits"
.LASF101:
	.string	"seekdir_p"
.LASF6:
	.string	"short int"
.LASF145:
	.string	"memset"
.LASF54:
	.string	"st_blksize"
.LASF115:
	.string	"access_p"
.LASF21:
	.string	"__va_stk"
.LASF144:
	.string	"__func__"
.LASF52:
	.string	"st_ctime"
.LASF125:
	.string	"esp_vfs_t"
.LASF91:
	.string	"rename_p"
.LASF133:
	.string	"sys_sem_signal"
.LASF131:
	.string	"sys_thread_sem_get"
.LASF46:
	.string	"st_rdev"
.LASF51:
	.string	"st_spare2"
.LASF53:
	.string	"st_spare3"
.LASF19:
	.string	"char"
.LASF141:
	.string	"lwip_stop_socket_select_isr"
.LASF0:
	.string	"unsigned int"
.LASF102:
	.string	"seekdir"
.LASF7:
	.string	"__uint16_t"
.LASF57:
	.string	"uint8_t"
.LASF113:
	.string	"fsync_p"
.LASF87:
	.string	"link_p"
.LASF112:
	.string	"ioctl"
.LASF14:
	.string	"__uid_t"
.LASF42:
	.string	"st_mode"
.LASF129:
	.string	"lwip_fcntl_r_wrapper"
.LASF45:
	.string	"st_gid"
.LASF99:
	.string	"telldir_p"
.LASF67:
	.string	"tv_usec"
.LASF135:
	.string	"lwip_fcntl_r"
.LASF110:
	.string	"fcntl"
.LASF60:
	.string	"esp_err_t"
.LASF108:
	.string	"rmdir"
.LASF32:
	.string	"mode_t"
.LASF40:
	.string	"st_dev"
.LASF128:
	.string	"lwip_ioctl_r_wrapper"
.LASF16:
	.string	"_ssize_t"
.LASF119:
	.string	"flags"
.LASF85:
	.string	"fstat"
.LASF79:
	.string	"read"
.LASF136:
	.string	"esp_vfs_register_fd_range"
.LASF23:
	.string	"__va_ndx"
.LASF127:
	.string	"args"
.LASF86:
	.string	"stat_p"
.LASF50:
	.string	"st_mtime"
.LASF35:
	.string	"__va_list_tag"
.LASF26:
	.string	"ino_t"
.LASF95:
	.string	"readdir_p"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
