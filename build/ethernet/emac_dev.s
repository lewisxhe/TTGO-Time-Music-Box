	.file	"emac_dev.c"
	.text
.Ltext0:
	.section	.text.emac_enable_flowctrl,"ax",@progbits
	.literal_position
	.literal .LC0, 1073127448
	.literal .LC1, 373817344
	.align	4
	.global	emac_enable_flowctrl
	.type	emac_enable_flowctrl, @function
emac_enable_flowctrl:
.LFB18:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/ethernet/emac_dev.c"
	.loc 1 38 0
	entry	sp, 32
.LCFI0:
.LBB6:
	.loc 1 39 0
	l32r	a8, .LC0
	memw
	l32i.n	a10, a8, 0
	movi.n	a9, 2
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.LBE6:
.LBB7:
	.loc 1 40 0
	memw
	l32i.n	a10, a8, 0
	movi.n	a9, 4
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.LBE7:
.LBB8:
	.loc 1 41 0
	memw
	l32i.n	a10, a8, 0
	movi	a9, -0x81
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.LBE8:
.LBB9:
.LBB10:
	.loc 1 42 0
	memw
	l32i.n	a9, a8, 0
.LBE10:
	extui	a10, a9, 0, 16
	l32r	a9, .LC1
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.LBE9:
.LBB11:
.LBB12:
	.loc 1 43 0
	memw
	l32i.n	a10, a8, 0
.LBE12:
	movi	a9, -0x31
	and	a10, a10, a9
	movi.n	a9, 0x10
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	retw.n
.LBE11:
.LFE18:
	.size	emac_enable_flowctrl, .-emac_enable_flowctrl
	.section	.text.emac_disable_flowctrl,"ax",@progbits
	.literal_position
	.literal .LC2, 1073127448
	.align	4
	.global	emac_disable_flowctrl
	.type	emac_disable_flowctrl, @function
emac_disable_flowctrl:
.LFB19:
	.loc 1 47 0
	entry	sp, 32
.LCFI1:
.LBB13:
	.loc 1 48 0
	l32r	a8, .LC2
	memw
	l32i.n	a10, a8, 0
	movi.n	a9, -3
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.LBE13:
.LBB14:
	.loc 1 49 0
	memw
	l32i.n	a10, a8, 0
	movi.n	a9, -5
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.LBE14:
.LBB15:
	.loc 1 50 0
	memw
	l32i.n	a10, a8, 0
	movi	a9, -0x81
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.LBE15:
.LBB16:
.LBB17:
	.loc 1 51 0
	memw
	l32i.n	a9, a8, 0
.LBE17:
	extui	a9, a9, 0, 16
	memw
	s32i.n	a9, a8, 0
.LBE16:
.LBB18:
.LBB19:
	.loc 1 52 0
	memw
	l32i.n	a10, a8, 0
.LBE19:
	movi	a9, -0x31
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	retw.n
.LBE18:
.LFE19:
	.size	emac_disable_flowctrl, .-emac_disable_flowctrl
	.section	.text.emac_enable_dma_tx,"ax",@progbits
	.literal_position
	.literal .LC3, 1073123352
	.literal .LC4, 8192
	.align	4
	.global	emac_enable_dma_tx
	.type	emac_enable_dma_tx, @function
emac_enable_dma_tx:
.LFB20:
	.loc 1 56 0
	entry	sp, 32
.LCFI2:
.LBB20:
	.loc 1 57 0
	l32r	a9, .LC3
	memw
	l32i.n	a10, a9, 0
	l32r	a8, .LC4
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	retw.n
.LBE20:
.LFE20:
	.size	emac_enable_dma_tx, .-emac_enable_dma_tx
	.section	.text.emac_enable_dma_rx,"ax",@progbits
	.literal_position
	.literal .LC5, 1073123352
	.align	4
	.global	emac_enable_dma_rx
	.type	emac_enable_dma_rx, @function
emac_enable_dma_rx:
.LFB21:
	.loc 1 61 0
	entry	sp, 32
.LCFI3:
.LBB21:
	.loc 1 62 0
	l32r	a9, .LC5
	memw
	l32i.n	a10, a9, 0
	movi.n	a8, 2
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	retw.n
.LBE21:
.LFE21:
	.size	emac_enable_dma_rx, .-emac_enable_dma_rx
	.section	.text.emac_disable_dma_tx,"ax",@progbits
	.literal_position
	.literal .LC6, 1073123352
	.literal .LC7, -8193
	.align	4
	.global	emac_disable_dma_tx
	.type	emac_disable_dma_tx, @function
emac_disable_dma_tx:
.LFB22:
	.loc 1 66 0
	entry	sp, 32
.LCFI4:
.LBB22:
	.loc 1 67 0
	l32r	a9, .LC6
	memw
	l32i.n	a10, a9, 0
	l32r	a8, .LC7
	and	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	retw.n
.LBE22:
.LFE22:
	.size	emac_disable_dma_tx, .-emac_disable_dma_tx
	.section	.text.emac_disable_dma_rx,"ax",@progbits
	.literal_position
	.literal .LC8, 1073123352
	.align	4
	.global	emac_disable_dma_rx
	.type	emac_disable_dma_rx, @function
emac_disable_dma_rx:
.LFB23:
	.loc 1 71 0
	entry	sp, 32
.LCFI5:
.LBB23:
	.loc 1 72 0
	l32r	a9, .LC8
	memw
	l32i.n	a10, a9, 0
	movi.n	a8, -3
	and	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	retw.n
.LBE23:
.LFE23:
	.size	emac_disable_dma_rx, .-emac_disable_dma_rx
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC10:
	.string	"emac"
	.align	4
.LC12:
	.string	"\033[0;32mI (%d) %s: emac resetting ....\033[0m\n"
	.align	4
.LC14:
	.string	"\033[0;32mI (%d) %s: emac reset done\033[0m\n"
	.section	.text.emac_reset,"ax",@progbits
	.literal_position
	.literal .LC9, 1073123328
	.literal .LC11, .LC10
	.literal .LC13, .LC12
	.literal .LC15, .LC14
	.align	4
	.global	emac_reset
	.type	emac_reset, @function
emac_reset:
.LFB24:
	.loc 1 76 0
	entry	sp, 32
.LCFI6:
.LBB24:
	.loc 1 77 0
	l32r	a9, .LC9
	memw
	l32i.n	a10, a9, 0
	movi.n	a8, 1
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
.LBE24:
	.loc 1 79 0
	j	.L8
.L9:
	.loc 1 81 0 discriminator 9
	call8	esp_log_timestamp
.LVL0:
	l32r	a11, .LC11
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC13
	movi.n	a10, 3
	call8	esp_log_write
.LVL1:
.L8:
.LBB25:
	.loc 1 79 0
	l32r	a8, .LC9
	memw
	l32i.n	a8, a8, 0
.LBE25:
	bbsi	a8, 0, .L9
	.loc 1 84 0 discriminator 9
	call8	esp_log_timestamp
.LVL2:
	l32r	a11, .LC11
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC15
	movi.n	a10, 3
	call8	esp_log_write
.LVL3:
	retw.n
.LFE24:
	.size	emac_reset, .-emac_reset
	.section	.text.emac_enable_clk,"ax",@progbits
	.literal_position
	.literal .LC16, 1072693452
	.literal .LC17, 16384
	.literal .LC18, -16385
	.align	4
	.global	emac_enable_clk
	.type	emac_enable_clk, @function
emac_enable_clk:
.LFB25:
	.loc 1 88 0
.LVL4:
	entry	sp, 32
.LCFI7:
	extui	a2, a2, 0, 8
	.loc 1 89 0
	beqz.n	a2, .L11
.LVL5:
.LBB26:
.LBB27:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/dport_access.h"
	.loc 2 79 0
	l32r	a3, .LC16
	mov.n	a10, a3
	call8	esp_dport_access_reg_read
.LVL6:
.LBE27:
.LBE26:
	.loc 1 90 0
	l32r	a2, .LC17
.LVL7:
	or	a10, a10, a2
	memw
	s32i.n	a10, a3, 0
	retw.n
.LVL8:
.L11:
.LBB28:
.LBB29:
	.loc 2 79 0
	l32r	a2, .LC16
	mov.n	a10, a2
	call8	esp_dport_access_reg_read
.LVL9:
.LBE29:
.LBE28:
	.loc 1 92 0
	l32r	a8, .LC18
	and	a10, a10, a8
	memw
	s32i.n	a10, a2, 0
	retw.n
.LFE25:
	.size	emac_enable_clk, .-emac_enable_clk
	.section	.text.emac_dma_init,"ax",@progbits
	.literal_position
	.literal .LC19, 1073123352
	.literal .LC20, 1073123328
	.literal .LC21, -16129
	.align	4
	.global	emac_dma_init
	.type	emac_dma_init, @function
emac_dma_init:
.LFB26:
	.loc 1 97 0
	entry	sp, 32
.LCFI8:
.LBB30:
	.loc 1 98 0
	l32r	a8, .LC19
	memw
	l32i.n	a10, a8, 0
	movi.n	a9, 0x40
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.LBE30:
.LBB31:
	.loc 1 99 0
	memw
	l32i.n	a10, a8, 0
	movi.n	a9, 4
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.LBE31:
.LBB32:
.LBB33:
	.loc 1 100 0
	l32r	a11, .LC20
	memw
	l32i.n	a10, a11, 0
.LBE33:
	l32r	a9, .LC21
	and	a10, a10, a9
	movi	a9, 0x400
	or	a9, a10, a9
	memw
	s32i.n	a9, a11, 0
.LBE32:
.LBB34:
	.loc 1 101 0
	memw
	l32i.n	a9, a8, 0
	or	a9, a9, a8
	memw
	s32i.n	a9, a8, 0
	retw.n
.LBE34:
.LFE26:
	.size	emac_dma_init, .-emac_dma_init
	.section	.text.emac_mac_enable_txrx,"ax",@progbits
	.literal_position
	.literal .LC22, 1073127424
	.align	4
	.global	emac_mac_enable_txrx
	.type	emac_mac_enable_txrx, @function
emac_mac_enable_txrx:
.LFB27:
	.loc 1 105 0
	entry	sp, 32
.LCFI9:
.LBB35:
	.loc 1 106 0
	l32r	a8, .LC22
	memw
	l32i.n	a10, a8, 0
	movi.n	a9, 4
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.LBE35:
.LBB36:
	.loc 1 107 0
	memw
	l32i.n	a10, a8, 0
	movi.n	a9, 8
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	retw.n
.LBE36:
.LFE27:
	.size	emac_mac_enable_txrx, .-emac_mac_enable_txrx
	.section	.text.emac_mac_init,"ax",@progbits
	.literal_position
	.literal .LC23, 1073127424
	.literal .LC24, 2048
	.literal .LC25, 32768
	.literal .LC26, -16385
	.literal .LC27, 1073127428
	.align	4
	.global	emac_mac_init
	.type	emac_mac_init, @function
emac_mac_init:
.LFB28:
	.loc 1 111 0
	entry	sp, 32
.LCFI10:
.LBB37:
	.loc 1 112 0
	l32r	a8, .LC23
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC24
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.LBE37:
.LBB38:
	.loc 1 113 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC25
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.LBE38:
.LBB39:
	.loc 1 114 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC26
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.LBE39:
.LBB40:
	.loc 1 115 0
	l32r	a9, .LC27
	memw
	l32i.n	a10, a9, 0
	movi.n	a8, 1
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	retw.n
.LBE40:
.LFE28:
	.size	emac_mac_init, .-emac_mac_init
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
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI1-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI2-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI3-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI4-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI5-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI6-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI7-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI8-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI9-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI10-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
	.text
.Letext0:
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_dport_access.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x3d0
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0xc
	.4byte	.LASF36
	.4byte	.LASF37
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
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x1a
	.4byte	0x53
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x5
	.byte	0x4
	.4byte	0x8a
	.uleb128 0x6
	.4byte	0x7d
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x4
	.byte	0x2d
	.4byte	0x48
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF13
	.uleb128 0x7
	.byte	0x4
	.4byte	0x53
	.byte	0x5
	.byte	0x1f
	.4byte	0xd2
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x2
	.byte	0x4a
	.4byte	0x8f
	.byte	0x3
	.4byte	0xee
	.uleb128 0xa
	.string	"reg"
	.byte	0x2
	.byte	0x4a
	.4byte	0x8f
	.byte	0
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x1
	.byte	0x25
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10d
	.uleb128 0xc
	.4byte	.LASF22
	.4byte	0x11d
	.byte	0
	.uleb128 0xd
	.4byte	0x7d
	.4byte	0x11d
	.uleb128 0xe
	.4byte	0x6f
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.4byte	0x10d
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x1
	.byte	0x2e
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x141
	.uleb128 0xc
	.4byte	.LASF22
	.4byte	0x151
	.byte	0
	.uleb128 0xd
	.4byte	0x7d
	.4byte	0x151
	.uleb128 0xe
	.4byte	0x6f
	.byte	0x15
	.byte	0
	.uleb128 0x6
	.4byte	0x141
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x1
	.byte	0x37
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x175
	.uleb128 0xc
	.4byte	.LASF22
	.4byte	0x185
	.byte	0
	.uleb128 0xd
	.4byte	0x7d
	.4byte	0x185
	.uleb128 0xe
	.4byte	0x6f
	.byte	0x12
	.byte	0
	.uleb128 0x6
	.4byte	0x175
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x1
	.byte	0x3c
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a9
	.uleb128 0xc
	.4byte	.LASF22
	.4byte	0x1a9
	.byte	0
	.uleb128 0x6
	.4byte	0x175
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x1
	.byte	0x41
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1cd
	.uleb128 0xc
	.4byte	.LASF22
	.4byte	0x1dd
	.byte	0
	.uleb128 0xd
	.4byte	0x7d
	.4byte	0x1dd
	.uleb128 0xe
	.4byte	0x6f
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.4byte	0x1cd
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x1
	.byte	0x46
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x201
	.uleb128 0xc
	.4byte	.LASF22
	.4byte	0x201
	.byte	0
	.uleb128 0x6
	.4byte	0x1cd
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x1
	.byte	0x4b
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x28f
	.uleb128 0xc
	.4byte	.LASF22
	.4byte	0x29f
	.uleb128 0xf
	.4byte	.LVL0
	.4byte	0x3b2
	.uleb128 0x10
	.4byte	.LVL1
	.4byte	0x3bd
	.4byte	0x25b
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0xf
	.4byte	.LVL2
	.4byte	0x3b2
	.uleb128 0x12
	.4byte	.LVL3
	.4byte	0x3bd
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0x7d
	.4byte	0x29f
	.uleb128 0xe
	.4byte	0x6f
	.byte	0xa
	.byte	0
	.uleb128 0x6
	.4byte	0x28f
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x1
	.byte	0x57
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x31f
	.uleb128 0x13
	.4byte	.LASF39
	.byte	0x1
	.byte	0x57
	.4byte	0x9a
	.4byte	.LLST0
	.uleb128 0x14
	.4byte	0xd2
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.byte	0x1
	.byte	0x5a
	.4byte	0x2f5
	.uleb128 0x15
	.4byte	0xe2
	.4byte	.LLST1
	.uleb128 0x12
	.4byte	.LVL6
	.4byte	0x3c8
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0xd2
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.byte	0x1
	.byte	0x5c
	.uleb128 0x17
	.4byte	0xe2
	.4byte	0x3ff000cc
	.uleb128 0x12
	.4byte	.LVL9
	.4byte	0x3c8
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x1
	.byte	0x60
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x33e
	.uleb128 0xc
	.4byte	.LASF22
	.4byte	0x34e
	.byte	0
	.uleb128 0xd
	.4byte	0x7d
	.4byte	0x34e
	.uleb128 0xe
	.4byte	0x6f
	.byte	0xd
	.byte	0
	.uleb128 0x6
	.4byte	0x33e
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x1
	.byte	0x68
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x372
	.uleb128 0xc
	.4byte	.LASF22
	.4byte	0x372
	.byte	0
	.uleb128 0x6
	.4byte	0x10d
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x1
	.byte	0x6e
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x396
	.uleb128 0xc
	.4byte	.LASF22
	.4byte	0x396
	.byte	0
	.uleb128 0x6
	.4byte	0x33e
	.uleb128 0x18
	.string	"TAG"
	.byte	0x1
	.byte	0x23
	.4byte	0x3ad
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC10
	.byte	0x9f
	.uleb128 0x6
	.4byte	0x84
	.uleb128 0x19
	.4byte	.LASF32
	.4byte	.LASF32
	.byte	0x5
	.byte	0x57
	.uleb128 0x19
	.4byte	.LASF33
	.4byte	.LASF33
	.byte	0x5
	.byte	0x6b
	.uleb128 0x19
	.4byte	.LASF34
	.4byte	.LASF34
	.byte	0x6
	.byte	0x1e
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL5
	.4byte	.LVL8
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff000cc
	.byte	0x9f
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
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF15:
	.string	"ESP_LOG_ERROR"
.LASF16:
	.string	"ESP_LOG_WARN"
.LASF21:
	.string	"emac_disable_flowctrl"
.LASF3:
	.string	"short unsigned int"
.LASF39:
	.string	"enable"
.LASF32:
	.string	"esp_log_timestamp"
.LASF22:
	.string	"__func__"
.LASF17:
	.string	"ESP_LOG_INFO"
.LASF1:
	.string	"unsigned char"
.LASF34:
	.string	"esp_dport_access_reg_read"
.LASF9:
	.string	"long unsigned int"
.LASF30:
	.string	"emac_mac_enable_txrx"
.LASF27:
	.string	"emac_reset"
.LASF11:
	.string	"__uint32_t"
.LASF36:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/ethernet/emac_dev.c"
.LASF37:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\ethernet"
.LASF4:
	.string	"unsigned int"
.LASF18:
	.string	"ESP_LOG_DEBUG"
.LASF6:
	.string	"long long unsigned int"
.LASF28:
	.string	"emac_enable_clk"
.LASF35:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF26:
	.string	"emac_disable_dma_rx"
.LASF8:
	.string	"sizetype"
.LASF5:
	.string	"long long int"
.LASF31:
	.string	"emac_mac_init"
.LASF10:
	.string	"char"
.LASF25:
	.string	"emac_disable_dma_tx"
.LASF2:
	.string	"short int"
.LASF14:
	.string	"ESP_LOG_NONE"
.LASF20:
	.string	"emac_enable_flowctrl"
.LASF29:
	.string	"emac_dma_init"
.LASF24:
	.string	"emac_enable_dma_rx"
.LASF33:
	.string	"esp_log_write"
.LASF12:
	.string	"uint32_t"
.LASF7:
	.string	"long int"
.LASF38:
	.string	"DPORT_REG_READ"
.LASF23:
	.string	"emac_enable_dma_tx"
.LASF0:
	.string	"signed char"
.LASF13:
	.string	"_Bool"
.LASF19:
	.string	"ESP_LOG_VERBOSE"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
