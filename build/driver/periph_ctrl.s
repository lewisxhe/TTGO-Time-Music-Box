	.file	"periph_ctrl.c"
	.text
.Ltext0:
	.section	.text.get_clk_en_mask,"ax",@progbits
	.literal_position
	.literal .LC0, 2048
	.literal .LC1, 8388608
	.literal .LC2, 262144
	.literal .LC3, 2097152
	.literal .LC4, 8192
	.literal .LC5, 32768
	.literal .LC6, 131072
	.literal .LC7, 1048576
	.literal .LC8, 33554432
	.literal .LC9, 67108864
	.literal .LC10, 4096
	.literal .LC11, 65536
	.literal .LC12, 4194304
	.literal .LC13, 524288
	.literal .LC14, 16384
	.literal .LC15, 198656
	.literal .LC16, 196608
	.literal .LC17, .L4
	.align	4
	.type	get_clk_en_mask, @function
get_clk_en_mask:
.LFB20:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/periph_ctrl.c"
	.loc 1 55 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 56 0
	movi.n	a8, 0x1f
	bltu	a8, a2, .L2
	l32r	a8, .LC17
	addx4	a2, a2, a8
.LVL1:
	l32i.n	a2, a2, 0
	jx	a2
	.section	.rodata.get_clk_en_mask,"a",@progbits
	.align	4
	.align	4
.L4:
	.word	.L35
	.word	.L5
	.word	.L6
	.word	.L7
	.word	.L8
	.word	.L9
	.word	.L10
	.word	.L11
	.word	.L12
	.word	.L13
	.word	.L14
	.word	.L15
	.word	.L16
	.word	.L17
	.word	.L18
	.word	.L19
	.word	.L20
	.word	.L21
	.word	.L22
	.word	.L23
	.word	.L24
	.word	.L25
	.word	.L26
	.word	.L27
	.word	.L28
	.word	.L29
	.word	.L30
	.word	.L31
	.word	.L32
	.word	.L33
	.word	.L35
	.word	.L34
	.section	.text.get_clk_en_mask
.L20:
	.loc 1 58 0
	movi	a2, 0x200
	retw.n
.L5:
	.loc 1 62 0
	movi.n	a2, 4
	retw.n
.L6:
	.loc 1 64 0
	movi.n	a2, 0x20
	retw.n
.L7:
	.loc 1 66 0
	l32r	a2, .LC1
	retw.n
.L8:
	.loc 1 68 0
	movi	a2, 0x80
	retw.n
.L9:
	.loc 1 70 0
	l32r	a2, .LC2
	retw.n
.L10:
	.loc 1 72 0
	movi.n	a2, 0x10
	retw.n
.L11:
	.loc 1 74 0
	l32r	a2, .LC3
	retw.n
.L12:
	.loc 1 76 0
	l32r	a2, .LC4
	retw.n
.L13:
	.loc 1 78 0
	l32r	a2, .LC5
	retw.n
.L14:
	.loc 1 80 0
	l32r	a2, .LC6
	retw.n
.L15:
	.loc 1 82 0
	l32r	a2, .LC7
	retw.n
.L16:
	.loc 1 84 0
	l32r	a2, .LC8
	retw.n
.L17:
	.loc 1 86 0
	l32r	a2, .LC9
	retw.n
.L18:
	.loc 1 88 0
	movi	a2, 0x100
	retw.n
.L19:
	.loc 1 90 0
	l32r	a2, .LC10
	retw.n
.L21:
	.loc 1 92 0
	movi	a2, 0x400
	retw.n
.L22:
	.loc 1 94 0
	movi.n	a2, 2
	retw.n
.L23:
	.loc 1 96 0
	movi.n	a2, 0x40
	retw.n
.L24:
	.loc 1 98 0
	l32r	a2, .LC11
	retw.n
.L25:
	.loc 1 100 0
	l32r	a2, .LC12
	retw.n
.L26:
	.loc 1 102 0
	l32r	a2, .LC4
	retw.n
.L27:
	.loc 1 104 0
	movi.n	a2, 0x10
	retw.n
.L28:
	.loc 1 106 0
	l32r	a2, .LC13
	retw.n
.L29:
	.loc 1 108 0
	l32r	a2, .LC14
	retw.n
.L30:
	.loc 1 110 0
	l32r	a2, .LC5
	retw.n
.L31:
	.loc 1 112 0
	movi	a2, 0x406
	retw.n
.L32:
	.loc 1 114 0
	l32r	a2, .LC15
	retw.n
.L33:
	.loc 1 116 0
	movi	a2, 0x3c9
	retw.n
.L34:
	.loc 1 120 0
	l32r	a2, .LC16
	retw.n
.LVL2:
.L2:
	.loc 1 122 0
	movi.n	a2, 0
.LVL3:
	retw.n
.L35:
	.loc 1 60 0
	l32r	a2, .LC0
	.loc 1 124 0
	retw.n
.LFE20:
	.size	get_clk_en_mask, .-get_clk_en_mask
	.section	.text.get_rst_en_mask,"ax",@progbits
	.literal_position
	.literal .LC18, 2048
	.literal .LC19, 8388608
	.literal .LC20, 262144
	.literal .LC21, 2097152
	.literal .LC22, 8192
	.literal .LC23, 32768
	.literal .LC24, 131072
	.literal .LC25, 1048576
	.literal .LC26, 33554432
	.literal .LC27, 67108864
	.literal .LC28, 4096
	.literal .LC29, 65536
	.literal .LC30, 4194304
	.literal .LC31, 524288
	.literal .LC32, .L39
	.align	4
	.type	get_rst_en_mask, @function
get_rst_en_mask:
.LFB21:
	.loc 1 127 0
.LVL4:
	entry	sp, 32
.LCFI1:
	.loc 1 128 0
	movi.n	a8, 0x1f
	bltu	a8, a2, .L37
	l32r	a8, .LC32
	addx4	a2, a2, a8
.LVL5:
	l32i.n	a2, a2, 0
	jx	a2
	.section	.rodata.get_rst_en_mask,"a",@progbits
	.align	4
	.align	4
.L39:
	.word	.L66
	.word	.L40
	.word	.L41
	.word	.L42
	.word	.L43
	.word	.L44
	.word	.L45
	.word	.L46
	.word	.L47
	.word	.L48
	.word	.L49
	.word	.L50
	.word	.L51
	.word	.L52
	.word	.L53
	.word	.L54
	.word	.L55
	.word	.L56
	.word	.L57
	.word	.L58
	.word	.L59
	.word	.L60
	.word	.L61
	.word	.L62
	.word	.L63
	.word	.L64
	.word	.L37
	.word	.L65
	.word	.L65
	.word	.L65
	.word	.L65
	.word	.L65
	.section	.text.get_rst_en_mask
.L55:
	.loc 1 130 0
	movi	a2, 0x200
	retw.n
.L40:
	.loc 1 134 0
	movi.n	a2, 4
	retw.n
.L41:
	.loc 1 136 0
	movi.n	a2, 0x20
	retw.n
.L42:
	.loc 1 138 0
	l32r	a2, .LC19
	retw.n
.L43:
	.loc 1 140 0
	movi	a2, 0x80
	retw.n
.L44:
	.loc 1 142 0
	l32r	a2, .LC20
	retw.n
.L45:
	.loc 1 144 0
	movi.n	a2, 0x10
	retw.n
.L46:
	.loc 1 146 0
	l32r	a2, .LC21
	retw.n
.L47:
	.loc 1 148 0
	l32r	a2, .LC22
	retw.n
.L48:
	.loc 1 150 0
	l32r	a2, .LC23
	retw.n
.L49:
	.loc 1 152 0
	l32r	a2, .LC24
	retw.n
.L50:
	.loc 1 154 0
	l32r	a2, .LC25
	retw.n
.L51:
	.loc 1 156 0
	l32r	a2, .LC26
	retw.n
.L52:
	.loc 1 158 0
	l32r	a2, .LC27
	retw.n
.L53:
	.loc 1 160 0
	movi	a2, 0x100
	retw.n
.L54:
	.loc 1 162 0
	l32r	a2, .LC28
	retw.n
.L56:
	.loc 1 164 0
	movi	a2, 0x400
	retw.n
.L57:
	.loc 1 166 0
	movi.n	a2, 2
	retw.n
.L58:
	.loc 1 168 0
	movi.n	a2, 0x40
	retw.n
.L59:
	.loc 1 170 0
	l32r	a2, .LC29
	retw.n
.L60:
	.loc 1 172 0
	l32r	a2, .LC30
	retw.n
.L61:
	.loc 1 174 0
	movi.n	a2, 0x40
	retw.n
.L62:
	.loc 1 176 0
	movi.n	a2, 0x20
	retw.n
.L63:
	.loc 1 178 0
	l32r	a2, .LC31
	retw.n
.L64:
	.loc 1 180 0
	movi	a2, 0x80
	retw.n
.L65:
	.loc 1 186 0
	movi.n	a2, 0
	retw.n
.L37:
	.loc 1 188 0
	movi.n	a2, 0
	retw.n
.L66:
	.loc 1 132 0
	l32r	a2, .LC18
	.loc 1 190 0
	retw.n
.LFE21:
	.size	get_rst_en_mask, .-get_rst_en_mask
	.section	.text.is_wifi_clk_peripheral,"ax",@progbits
	.align	4
	.type	is_wifi_clk_peripheral, @function
is_wifi_clk_peripheral:
.LFB22:
	.loc 1 193 0
.LVL6:
	entry	sp, 32
.LCFI2:
	.loc 1 196 0
	movi.n	a8, 0x16
	bltu	a2, a8, .L70
	movi.n	a8, 0x17
	bgeu	a8, a2, .L69
	addi	a2, a2, -25
.LVL7:
	bgeui	a2, 7, .L70
.LVL8:
.L69:
	.loc 1 206 0
	movi.n	a2, 1
	retw.n
.L70:
	.loc 1 208 0
	movi.n	a2, 0
	.loc 1 210 0
	retw.n
.LFE22:
	.size	is_wifi_clk_peripheral, .-is_wifi_clk_peripheral
	.section	.text.get_clk_en_reg,"ax",@progbits
	.literal_position
	.literal .LC33, 1072693452
	.literal .LC34, 1072693440
	.align	4
	.type	get_clk_en_reg, @function
get_clk_en_reg:
.LFB23:
	.loc 1 213 0
.LVL9:
	entry	sp, 32
.LCFI3:
	.loc 1 214 0
	mov.n	a10, a2
	call8	is_wifi_clk_peripheral
.LVL10:
	beqz.n	a10, .L73
	l32r	a2, .LC33
.LVL11:
	retw.n
.LVL12:
.L73:
	l32r	a2, .LC34
.LVL13:
	.loc 1 215 0
	retw.n
.LFE23:
	.size	get_clk_en_reg, .-get_clk_en_reg
	.section	.text.get_rst_en_reg,"ax",@progbits
	.literal_position
	.literal .LC35, 1072693456
	.literal .LC36, 1072693444
	.align	4
	.type	get_rst_en_reg, @function
get_rst_en_reg:
.LFB24:
	.loc 1 218 0
.LVL14:
	entry	sp, 32
.LCFI4:
	.loc 1 219 0
	mov.n	a10, a2
	call8	is_wifi_clk_peripheral
.LVL15:
	beqz.n	a10, .L76
	l32r	a2, .LC35
.LVL16:
	retw.n
.LVL17:
.L76:
	l32r	a2, .LC36
.LVL18:
	.loc 1 220 0
	retw.n
.LFE24:
	.size	get_rst_en_reg, .-get_rst_en_reg
	.section	.text.periph_module_enable,"ax",@progbits
	.literal_position
	.literal .LC37, periph_spinlock
	.align	4
	.global	periph_module_enable
	.type	periph_module_enable, @function
periph_module_enable:
.LFB17:
	.loc 1 31 0
.LVL19:
	entry	sp, 32
.LCFI5:
	.loc 1 32 0
	l32r	a4, .LC37
	mov.n	a10, a4
	call8	vTaskEnterCritical
.LVL20:
	.loc 1 33 0
	mov.n	a10, a2
	call8	get_clk_en_reg
.LVL21:
	mov.n	a5, a10
.LVL22:
.LBB14:
.LBB15:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/dport_access.h"
	.loc 2 172 0
	call8	esp_dport_access_reg_read
.LVL23:
	mov.n	a3, a10
.LBE15:
.LBE14:
	.loc 1 33 0
	mov.n	a10, a2
	call8	get_clk_en_mask
.LVL24:
	or	a10, a10, a3
	memw
	s32i.n	a10, a5, 0
	.loc 1 34 0
	mov.n	a10, a2
	call8	get_rst_en_reg
.LVL25:
	mov.n	a3, a10
.LVL26:
.LBB16:
.LBB17:
	.loc 2 172 0
	call8	esp_dport_access_reg_read
.LVL27:
	mov.n	a5, a10
.LVL28:
.LBE17:
.LBE16:
	.loc 1 34 0
	mov.n	a10, a2
	call8	get_rst_en_mask
.LVL29:
	movi.n	a8, -1
	xor	a10, a8, a10
	and	a10, a5, a10
	memw
	s32i.n	a10, a3, 0
	.loc 1 35 0
	mov.n	a10, a4
	call8	vTaskExitCritical
.LVL30:
	retw.n
.LFE17:
	.size	periph_module_enable, .-periph_module_enable
	.section	.text.periph_module_disable,"ax",@progbits
	.literal_position
	.literal .LC38, periph_spinlock
	.align	4
	.global	periph_module_disable
	.type	periph_module_disable, @function
periph_module_disable:
.LFB18:
	.loc 1 39 0
.LVL31:
	entry	sp, 32
.LCFI6:
	.loc 1 40 0
	l32r	a4, .LC38
	mov.n	a10, a4
	call8	vTaskEnterCritical
.LVL32:
	.loc 1 41 0
	mov.n	a10, a2
	call8	get_clk_en_reg
.LVL33:
	mov.n	a5, a10
.LVL34:
.LBB18:
.LBB19:
	.loc 2 172 0
	call8	esp_dport_access_reg_read
.LVL35:
	mov.n	a3, a10
.LBE19:
.LBE18:
	.loc 1 41 0
	mov.n	a10, a2
	call8	get_clk_en_mask
.LVL36:
	movi.n	a8, -1
	xor	a10, a8, a10
	and	a3, a10, a3
	memw
	s32i.n	a3, a5, 0
	.loc 1 42 0
	mov.n	a10, a2
	call8	get_rst_en_reg
.LVL37:
	mov.n	a5, a10
.LVL38:
.LBB20:
.LBB21:
	.loc 2 172 0
	call8	esp_dport_access_reg_read
.LVL39:
	mov.n	a3, a10
.LBE21:
.LBE20:
	.loc 1 42 0
	mov.n	a10, a2
	call8	get_rst_en_mask
.LVL40:
	or	a10, a3, a10
	memw
	s32i.n	a10, a5, 0
	.loc 1 43 0
	mov.n	a10, a4
	call8	vTaskExitCritical
.LVL41:
	retw.n
.LFE18:
	.size	periph_module_disable, .-periph_module_disable
	.section	.text.periph_module_reset,"ax",@progbits
	.literal_position
	.literal .LC39, periph_spinlock
	.align	4
	.global	periph_module_reset
	.type	periph_module_reset, @function
periph_module_reset:
.LFB19:
	.loc 1 47 0
.LVL42:
	entry	sp, 32
.LCFI7:
	.loc 1 48 0
	l32r	a5, .LC39
	mov.n	a10, a5
	call8	vTaskEnterCritical
.LVL43:
	.loc 1 49 0
	mov.n	a10, a2
	call8	get_rst_en_reg
.LVL44:
	mov.n	a3, a10
.LVL45:
.LBB22:
.LBB23:
	.loc 2 172 0
	call8	esp_dport_access_reg_read
.LVL46:
	mov.n	a4, a10
.LBE23:
.LBE22:
	.loc 1 49 0
	mov.n	a10, a2
	call8	get_rst_en_mask
.LVL47:
	mov.n	a2, a10
.LVL48:
	or	a4, a10, a4
	memw
	s32i.n	a4, a3, 0
.LVL49:
.LBB24:
.LBB25:
	.loc 2 172 0
	mov.n	a10, a3
	call8	esp_dport_access_reg_read
.LVL50:
.LBE25:
.LBE24:
	.loc 1 50 0
	movi.n	a4, -1
	xor	a2, a4, a2
	and	a10, a10, a2
	memw
	s32i.n	a10, a3, 0
	.loc 1 51 0
	mov.n	a10, a5
	call8	vTaskExitCritical
.LVL51:
	retw.n
.LFE19:
	.size	periph_module_reset, .-periph_module_reset
	.section	.data.periph_spinlock,"aw",@progbits
	.align	4
	.type	periph_spinlock, @object
	.size	periph_spinlock, 8
periph_spinlock:
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
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI5-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI6-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI7-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
	.text
.Letext0:
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/periph_defs.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_dport_access.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x577
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0xc
	.4byte	.LASF63
	.4byte	.LASF64
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
	.4byte	.LASF7
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
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x4
	.byte	0x2d
	.4byte	0x48
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.byte	0x82
	.4byte	0xb7
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x5
	.byte	0x8a
	.4byte	0x68
	.byte	0
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x5
	.byte	0x8f
	.4byte	0x68
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x5
	.byte	0x94
	.4byte	0x96
	.uleb128 0x7
	.byte	0x4
	.4byte	0x53
	.byte	0x6
	.byte	0x16
	.4byte	0x18f
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x6
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x7
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x9
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0xa
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0xb
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0xd
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0xe
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0xf
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x11
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x12
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x13
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0x15
	.uleb128 0x8
	.4byte	.LASF39
	.byte	0x16
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0x17
	.uleb128 0x8
	.4byte	.LASF41
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF42
	.byte	0x19
	.uleb128 0x8
	.4byte	.LASF43
	.byte	0x1a
	.uleb128 0x8
	.4byte	.LASF44
	.byte	0x1b
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0x1c
	.uleb128 0x8
	.4byte	.LASF46
	.byte	0x1d
	.uleb128 0x8
	.4byte	.LASF47
	.byte	0x1e
	.uleb128 0x8
	.4byte	.LASF48
	.byte	0x1f
	.byte	0
	.uleb128 0x4
	.4byte	.LASF49
	.byte	0x6
	.byte	0x37
	.4byte	0xc2
	.uleb128 0x9
	.4byte	.LASF65
	.byte	0x2
	.byte	0xa7
	.4byte	0x68
	.byte	0x3
	.4byte	0x1b6
	.uleb128 0xa
	.string	"reg"
	.byte	0x2
	.byte	0xa7
	.4byte	0x68
	.byte	0
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x1
	.byte	0x36
	.4byte	0x68
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1df
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x1
	.byte	0x36
	.4byte	0x18f
	.4byte	.LLST0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x1
	.byte	0x7e
	.4byte	0x68
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x208
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x1
	.byte	0x7e
	.4byte	0x18f
	.4byte	.LLST1
	.byte	0
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x1
	.byte	0xc0
	.4byte	0x8f
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x231
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x1
	.byte	0xc0
	.4byte	0x18f
	.4byte	.LLST2
	.byte	0
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x1
	.byte	0xd4
	.4byte	0x68
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x26a
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x1
	.byte	0xd4
	.4byte	0x18f
	.4byte	.LLST3
	.uleb128 0xd
	.4byte	.LVL10
	.4byte	0x208
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x1
	.byte	0xd9
	.4byte	0x68
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2a3
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x1
	.byte	0xd9
	.4byte	0x18f
	.4byte	.LLST4
	.uleb128 0xd
	.4byte	.LVL15
	.4byte	0x208
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF56
	.byte	0x1
	.byte	0x1e
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x392
	.uleb128 0x10
	.4byte	.LASF52
	.byte	0x1
	.byte	0x1e
	.4byte	0x18f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x11
	.4byte	0x19a
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.byte	0x1
	.byte	0x21
	.4byte	0x2f2
	.uleb128 0x12
	.4byte	0x1aa
	.4byte	.LLST5
	.uleb128 0xd
	.4byte	.LVL23
	.4byte	0x559
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0x19a
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.byte	0x1
	.byte	0x22
	.4byte	0x31d
	.uleb128 0x13
	.4byte	0x1aa
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xd
	.4byte	.LVL27
	.4byte	0x559
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL20
	.4byte	0x564
	.4byte	0x331
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL21
	.4byte	0x231
	.4byte	0x345
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL24
	.4byte	0x1b6
	.4byte	0x359
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL25
	.4byte	0x26a
	.4byte	0x36d
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL29
	.4byte	0x1df
	.4byte	0x381
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.4byte	.LVL30
	.4byte	0x56f
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF57
	.byte	0x1
	.byte	0x26
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x481
	.uleb128 0x10
	.4byte	.LASF52
	.byte	0x1
	.byte	0x26
	.4byte	0x18f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x11
	.4byte	0x19a
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.byte	0x1
	.byte	0x29
	.4byte	0x3e1
	.uleb128 0x12
	.4byte	0x1aa
	.4byte	.LLST6
	.uleb128 0xd
	.4byte	.LVL35
	.4byte	0x559
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0x19a
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.byte	0x1
	.byte	0x2a
	.4byte	0x40c
	.uleb128 0x13
	.4byte	0x1aa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xd
	.4byte	.LVL39
	.4byte	0x559
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL32
	.4byte	0x564
	.4byte	0x420
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL33
	.4byte	0x231
	.4byte	0x434
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL36
	.4byte	0x1b6
	.4byte	0x448
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL37
	.4byte	0x26a
	.4byte	0x45c
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL40
	.4byte	0x1df
	.4byte	0x470
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.4byte	.LVL41
	.4byte	0x56f
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF58
	.byte	0x1
	.byte	0x2e
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x548
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x1
	.byte	0x2e
	.4byte	0x18f
	.4byte	.LLST7
	.uleb128 0x11
	.4byte	0x19a
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.byte	0x1
	.byte	0x31
	.4byte	0x4d0
	.uleb128 0x13
	.4byte	0x1aa
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xd
	.4byte	.LVL46
	.4byte	0x559
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0x19a
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.byte	0x1
	.byte	0x32
	.4byte	0x4fb
	.uleb128 0x13
	.4byte	0x1aa
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xd
	.4byte	.LVL50
	.4byte	0x559
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL43
	.4byte	0x564
	.4byte	0x50f
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL44
	.4byte	0x26a
	.4byte	0x523
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL47
	.4byte	0x1df
	.4byte	0x537
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.4byte	.LVL51
	.4byte	0x56f
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x1
	.byte	0x16
	.4byte	0xb7
	.uleb128 0x5
	.byte	0x3
	.4byte	periph_spinlock
	.uleb128 0x16
	.4byte	.LASF59
	.4byte	.LASF59
	.byte	0x7
	.byte	0x1e
	.uleb128 0x16
	.4byte	.LASF60
	.4byte	.LASF60
	.byte	0x5
	.byte	0xda
	.uleb128 0x16
	.4byte	.LASF61
	.4byte	.LASF61
	.byte	0x5
	.byte	0xd9
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
	.uleb128 0x6
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x3
	.byte	0x72
	.sleb128 25
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL22
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL34
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL42
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
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
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF57:
	.string	"periph_module_disable"
.LASF28:
	.string	"PERIPH_PWM1_MODULE"
.LASF17:
	.string	"PERIPH_LEDC_MODULE"
.LASF47:
	.string	"PERIPH_BT_BASEBAND_MODULE"
.LASF36:
	.string	"PERIPH_HSPI_MODULE"
.LASF34:
	.string	"PERIPH_PCNT_MODULE"
.LASF60:
	.string	"vTaskEnterCritical"
.LASF42:
	.string	"PERIPH_EMAC_MODULE"
.LASF10:
	.string	"sizetype"
.LASF46:
	.string	"PERIPH_WIFI_BT_COMMON_MODULE"
.LASF7:
	.string	"__uint32_t"
.LASF64:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\driver"
.LASF31:
	.string	"PERIPH_UHCI0_MODULE"
.LASF39:
	.string	"PERIPH_SDMMC_MODULE"
.LASF51:
	.string	"get_rst_en_mask"
.LASF23:
	.string	"PERIPH_I2S0_MODULE"
.LASF16:
	.string	"portMUX_TYPE"
.LASF58:
	.string	"periph_module_reset"
.LASF18:
	.string	"PERIPH_UART0_MODULE"
.LASF2:
	.string	"short int"
.LASF5:
	.string	"long long int"
.LASF38:
	.string	"PERIPH_SPI_DMA_MODULE"
.LASF9:
	.string	"long int"
.LASF29:
	.string	"PERIPH_PWM2_MODULE"
.LASF61:
	.string	"vTaskExitCritical"
.LASF63:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/driver/periph_ctrl.c"
.LASF45:
	.string	"PERIPH_BT_MODULE"
.LASF43:
	.string	"PERIPH_RNG_MODULE"
.LASF1:
	.string	"unsigned char"
.LASF14:
	.string	"owner"
.LASF25:
	.string	"PERIPH_TIMG0_MODULE"
.LASF0:
	.string	"signed char"
.LASF6:
	.string	"long long unsigned int"
.LASF32:
	.string	"PERIPH_UHCI1_MODULE"
.LASF8:
	.string	"uint32_t"
.LASF4:
	.string	"unsigned int"
.LASF24:
	.string	"PERIPH_I2S1_MODULE"
.LASF3:
	.string	"short unsigned int"
.LASF19:
	.string	"PERIPH_UART1_MODULE"
.LASF12:
	.string	"char"
.LASF49:
	.string	"periph_module_t"
.LASF21:
	.string	"PERIPH_I2C0_MODULE"
.LASF52:
	.string	"periph"
.LASF40:
	.string	"PERIPH_SDIO_SLAVE_MODULE"
.LASF13:
	.string	"_Bool"
.LASF27:
	.string	"PERIPH_PWM0_MODULE"
.LASF37:
	.string	"PERIPH_VSPI_MODULE"
.LASF30:
	.string	"PERIPH_PWM3_MODULE"
.LASF59:
	.string	"esp_dport_access_reg_read"
.LASF44:
	.string	"PERIPH_WIFI_MODULE"
.LASF65:
	.string	"DPORT_READ_PERI_REG"
.LASF11:
	.string	"long unsigned int"
.LASF48:
	.string	"PERIPH_BT_LC_MODULE"
.LASF15:
	.string	"count"
.LASF55:
	.string	"get_rst_en_reg"
.LASF26:
	.string	"PERIPH_TIMG1_MODULE"
.LASF50:
	.string	"get_clk_en_mask"
.LASF66:
	.string	"periph_spinlock"
.LASF41:
	.string	"PERIPH_CAN_MODULE"
.LASF33:
	.string	"PERIPH_RMT_MODULE"
.LASF53:
	.string	"is_wifi_clk_peripheral"
.LASF62:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF20:
	.string	"PERIPH_UART2_MODULE"
.LASF56:
	.string	"periph_module_enable"
.LASF54:
	.string	"get_clk_en_reg"
.LASF35:
	.string	"PERIPH_SPI_MODULE"
.LASF22:
	.string	"PERIPH_I2C1_MODULE"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
