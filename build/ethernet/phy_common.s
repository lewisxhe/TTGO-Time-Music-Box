	.file	"phy_common.c"
	.text
.Ltext0:
	.section	.text.phy_rmii_configure_data_interface_pins,"ax",@progbits
	.literal_position
	.literal .LC0, 1072992300
	.literal .LC1, -28673
	.literal .LC2, 20480
	.literal .LC3, 1072992372
	.literal .LC4, 1072992380
	.literal .LC5, 1072992384
	.align	4
	.global	phy_rmii_configure_data_interface_pins
	.type	phy_rmii_configure_data_interface_pins, @function
phy_rmii_configure_data_interface_pins:
.LFB5:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/ethernet/eth_phy/phy_common.c"
	.loc 1 23 0
	entry	sp, 32
.LCFI0:
.LBB2:
.LBB3:
	.loc 1 25 0
	l32r	a11, .LC0
	memw
	l32i.n	a10, a11, 0
.LBE3:
	l32r	a9, .LC1
	and	a10, a10, a9
	l32r	a8, .LC2
	or	a10, a10, a8
	memw
	s32i.n	a10, a11, 0
.LBE2:
.LBB4:
.LBB5:
	.loc 1 28 0
	l32r	a11, .LC3
	memw
	l32i.n	a10, a11, 0
.LBE5:
	and	a10, a10, a9
	or	a10, a10, a8
	memw
	s32i.n	a10, a11, 0
.LBE4:
.LBB6:
.LBB7:
	.loc 1 30 0
	l32r	a11, .LC4
	memw
	l32i.n	a10, a11, 0
.LBE7:
	and	a10, a10, a9
	or	a10, a10, a8
	memw
	s32i.n	a10, a11, 0
.LBE6:
.LBB8:
.LBB9:
	.loc 1 32 0
	l32r	a10, .LC5
	memw
	l32i.n	a11, a10, 0
.LBE9:
	and	a9, a11, a9
	or	a8, a9, a8
	memw
	s32i.n	a8, a10, 0
.LBE8:
	.loc 1 34 0
	movi.n	a11, 1
	movi.n	a10, 0x19
	call8	gpio_set_direction
.LVL0:
	.loc 1 36 0
	movi.n	a11, 1
	movi.n	a10, 0x1a
	call8	gpio_set_direction
.LVL1:
	.loc 1 38 0
	movi.n	a11, 1
	movi.n	a10, 0
	call8	gpio_set_direction
.LVL2:
	retw.n
.LFE5:
	.size	phy_rmii_configure_data_interface_pins, .-phy_rmii_configure_data_interface_pins
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC9:
	.string	"\"(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)\" && (!((((GPIO_PIN_MUX_REG[mdc_gpio])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[mdc_gpio])) <= 0x3ff13FFC))"
	.align	4
.LC12:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/ethernet/eth_phy/phy_common.c"
	.align	4
.LC14:
	.string	"\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!(((((GPIO_PIN_MUX_REG[mdc_gpio]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[mdc_gpio]))) <= 0x3ff13FFC))"
	.align	4
.LC16:
	.string	"\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!((((GPIO_PIN_MUX_REG[mdc_gpio])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[mdc_gpio])) <= 0x3ff13FFC))"
	.align	4
.LC20:
	.string	"\"(Cannot use REG_SET_FIELD for DPORT registers use DPORT_REG_SET_FIELD)\" && (!((((GPIO_PIN_MUX_REG[mdio_gpio])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[mdio_gpio])) <= 0x3ff13FFC))"
	.align	4
.LC22:
	.string	"\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!(((((GPIO_PIN_MUX_REG[mdio_gpio]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[mdio_gpio]))) <= 0x3ff13FFC))"
	.align	4
.LC24:
	.string	"\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!((((GPIO_PIN_MUX_REG[mdio_gpio])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[mdio_gpio])) <= 0x3ff13FFC))"
	.section	.text.phy_rmii_smi_configure_pins,"ax",@progbits
	.literal_position
	.literal .LC6, GPIO_PIN_MUX_REG
	.literal .LC7, -1072693248
	.literal .LC8, 81916
	.literal .LC10, .LC9
	.literal .LC11, __func__$3747
	.literal .LC13, .LC12
	.literal .LC15, .LC14
	.literal .LC17, .LC16
	.literal .LC18, -28673
	.literal .LC19, 8192
	.literal .LC21, .LC20
	.literal .LC23, .LC22
	.literal .LC25, .LC24
	.align	4
	.global	phy_rmii_smi_configure_pins
	.type	phy_rmii_smi_configure_pins, @function
phy_rmii_smi_configure_pins:
.LFB6:
	.loc 1 42 0
.LVL3:
	entry	sp, 32
.LCFI1:
	extui	a2, a2, 0, 8
	extui	a3, a3, 0, 8
	.loc 1 44 0
	movi.n	a11, 2
	mov.n	a10, a2
	call8	gpio_set_direction
.LVL4:
	.loc 1 45 0
	movi.n	a13, 0
	mov.n	a12, a13
	movi	a11, 0xc8
	mov.n	a10, a2
	call8	gpio_matrix_out
.LVL5:
.LBB10:
	.loc 1 46 0
	l32r	a8, .LC6
	addx4	a2, a2, a8
.LVL6:
	l32i.n	a8, a2, 0
	l32r	a2, .LC7
	add.n	a2, a8, a2
	l32r	a9, .LC8
	bltu	a9, a2, .L3
	.loc 1 46 0 is_stmt 0 discriminator 1
	l32r	a13, .LC10
	l32r	a12, .LC11
	movi.n	a11, 0x2e
	l32r	a10, .LC13
	call8	__assert_func
.LVL7:
.L3:
.LBB11:
	.loc 1 46 0 discriminator 2
	l32r	a9, .LC8
	bltu	a9, a2, .L4
	.loc 1 46 0 discriminator 3
	l32r	a13, .LC15
	l32r	a12, .LC11
	movi.n	a11, 0x2e
	l32r	a10, .LC13
	call8	__assert_func
.LVL8:
.L4:
.LBB12:
	.loc 1 46 0 discriminator 4
	l32r	a9, .LC8
	bltu	a9, a2, .L5
	.loc 1 46 0 discriminator 5
	l32r	a13, .LC17
	l32r	a12, .LC11
	movi.n	a11, 0x2e
	l32r	a10, .LC13
	call8	__assert_func
.LVL9:
.L5:
	.loc 1 46 0 discriminator 6
	memw
	l32i.n	a9, a8, 0
.LBE12:
	l32r	a2, .LC18
	and	a9, a9, a2
	l32r	a2, .LC19
	or	a2, a9, a2
	memw
	s32i.n	a2, a8, 0
.LBE11:
.LBE10:
	.loc 1 48 0 is_stmt 1 discriminator 6
	movi.n	a11, 3
	mov.n	a10, a3
	call8	gpio_set_direction
.LVL10:
	.loc 1 49 0 discriminator 6
	movi.n	a13, 0
	mov.n	a12, a13
	movi	a11, 0xc9
	mov.n	a10, a3
	call8	gpio_matrix_out
.LVL11:
	.loc 1 50 0 discriminator 6
	movi.n	a12, 0
	movi	a11, 0xc9
	mov.n	a10, a3
	call8	gpio_matrix_in
.LVL12:
.LBB13:
	.loc 1 51 0 discriminator 6
	l32r	a2, .LC6
	addx4	a3, a3, a2
.LVL13:
	l32i.n	a3, a3, 0
	l32r	a2, .LC7
	add.n	a2, a3, a2
	l32r	a8, .LC8
	bltu	a8, a2, .L6
	.loc 1 51 0 is_stmt 0 discriminator 1
	l32r	a13, .LC21
	l32r	a12, .LC11
	movi.n	a11, 0x33
	l32r	a10, .LC13
	call8	__assert_func
.LVL14:
.L6:
.LBB14:
	.loc 1 51 0 discriminator 2
	l32r	a8, .LC8
	bltu	a8, a2, .L7
	.loc 1 51 0 discriminator 3
	l32r	a13, .LC23
	l32r	a12, .LC11
	movi.n	a11, 0x33
	l32r	a10, .LC13
	call8	__assert_func
.LVL15:
.L7:
.LBB15:
	.loc 1 51 0 discriminator 4
	l32r	a8, .LC8
	bltu	a8, a2, .L8
	.loc 1 51 0 discriminator 5
	l32r	a13, .LC25
	l32r	a12, .LC11
	movi.n	a11, 0x33
	l32r	a10, .LC13
	call8	__assert_func
.LVL16:
.L8:
	.loc 1 51 0 discriminator 6
	memw
	l32i.n	a8, a3, 0
.LBE15:
	l32r	a2, .LC18
	and	a8, a8, a2
	l32r	a2, .LC19
	or	a2, a8, a2
	memw
	s32i.n	a2, a3, 0
	retw.n
.LBE14:
.LBE13:
.LFE6:
	.size	phy_rmii_smi_configure_pins, .-phy_rmii_smi_configure_pins
	.section	.text.phy_mii_enable_flow_ctrl,"ax",@progbits
	.literal_position
	.literal .LC26, 3072
	.align	4
	.global	phy_mii_enable_flow_ctrl
	.type	phy_mii_enable_flow_ctrl, @function
phy_mii_enable_flow_ctrl:
.LFB7:
	.loc 1 55 0 is_stmt 1
	entry	sp, 32
.LCFI2:
	.loc 1 56 0
	movi.n	a10, 4
	call8	esp_eth_smi_read
.LVL17:
	.loc 1 58 0
	l32r	a11, .LC26
	or	a11, a10, a11
	extui	a11, a11, 0, 16
	movi.n	a10, 4
.LVL18:
	call8	esp_eth_smi_write
.LVL19:
	retw.n
.LFE7:
	.size	phy_mii_enable_flow_ctrl, .-phy_mii_enable_flow_ctrl
	.section	.text.phy_mii_check_link_status,"ax",@progbits
	.align	4
	.global	phy_mii_check_link_status
	.type	phy_mii_check_link_status, @function
phy_mii_check_link_status:
.LFB8:
	.loc 1 62 0
	entry	sp, 32
.LCFI3:
	.loc 1 63 0
	movi.n	a10, 1
	call8	esp_eth_smi_read
.LVL20:
	movi.n	a8, 4
	and	a10, a10, a8
	extui	a10, a10, 0, 16
	beqz.n	a10, .L12
	.loc 1 65 0
	movi.n	a2, 1
	retw.n
.L12:
	.loc 1 68 0
	movi.n	a2, 0
	.loc 1 70 0
	retw.n
.LFE8:
	.size	phy_mii_check_link_status, .-phy_mii_check_link_status
	.section	.text.phy_mii_get_partner_pause_enable,"ax",@progbits
	.align	4
	.global	phy_mii_get_partner_pause_enable
	.type	phy_mii_get_partner_pause_enable, @function
phy_mii_get_partner_pause_enable:
.LFB9:
	.loc 1 73 0
	entry	sp, 32
.LCFI4:
	.loc 1 74 0
	movi.n	a10, 5
	call8	esp_eth_smi_read
.LVL21:
	movi	a8, 0x400
	and	a10, a10, a8
	extui	a10, a10, 0, 16
	beqz.n	a10, .L15
	.loc 1 76 0
	movi.n	a2, 1
	retw.n
.L15:
	.loc 1 79 0
	movi.n	a2, 0
	.loc 1 81 0
	retw.n
.LFE9:
	.size	phy_mii_get_partner_pause_enable, .-phy_mii_get_partner_pause_enable
	.section	.rodata.__func__$3747,"a",@progbits
	.align	4
	.type	__func__$3747, @object
	.size	__func__$3747, 28
__func__$3747:
	.string	"phy_rmii_smi_configure_pins"
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI0-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI1-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI2-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI3-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI4-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/gpio.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/gpio.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/ethernet/include/esp_eth.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/include/soc/gpio_periph.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x4b2
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0xc
	.4byte	.LASF43
	.4byte	.LASF44
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x12
	.4byte	0x37
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
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
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
	.byte	0x3
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
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
	.byte	0x4
	.4byte	0xab
	.uleb128 0x6
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF15
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5e
	.byte	0x4
	.byte	0xbb
	.4byte	0xe8
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x6
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x7
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5e
	.byte	0x5
	.byte	0x1f
	.4byte	0x119
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x1
	.byte	0x16
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17c
	.uleb128 0xa
	.4byte	.LASF45
	.4byte	0x18c
	.uleb128 0xb
	.4byte	.LVL0
	.4byte	0x463
	.4byte	0x14f
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x49
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0xb
	.4byte	.LVL1
	.4byte	0x463
	.4byte	0x167
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x4a
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0xd
	.4byte	.LVL2
	.4byte	0x463
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0x9e
	.4byte	0x18c
	.uleb128 0xf
	.4byte	0x90
	.byte	0x26
	.byte	0
	.uleb128 0x6
	.4byte	0x17c
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x1
	.byte	0x29
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x383
	.uleb128 0x10
	.4byte	.LASF30
	.byte	0x1
	.byte	0x29
	.4byte	0x73
	.4byte	.LLST0
	.uleb128 0x10
	.4byte	.LASF31
	.byte	0x1
	.byte	0x29
	.4byte	0x73
	.4byte	.LLST1
	.uleb128 0x11
	.4byte	.LASF45
	.4byte	0x393
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3747
	.uleb128 0xb
	.4byte	.LVL4
	.4byte	0x463
	.4byte	0x1ec
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0xb
	.4byte	.LVL5
	.4byte	0x46f
	.4byte	0x210
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xc8
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0xb
	.4byte	.LVL7
	.4byte	0x47a
	.4byte	0x23f
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x2e
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3747
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.uleb128 0xb
	.4byte	.LVL8
	.4byte	0x47a
	.4byte	0x26e
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x2e
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3747
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.uleb128 0xb
	.4byte	.LVL9
	.4byte	0x47a
	.4byte	0x29d
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x2e
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3747
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0
	.uleb128 0xb
	.4byte	.LVL10
	.4byte	0x463
	.4byte	0x2b6
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0xb
	.4byte	.LVL11
	.4byte	0x46f
	.4byte	0x2da
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xc9
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0xb
	.4byte	.LVL12
	.4byte	0x485
	.4byte	0x2f9
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xc9
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0xb
	.4byte	.LVL14
	.4byte	0x47a
	.4byte	0x328
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x33
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3747
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.byte	0
	.uleb128 0xb
	.4byte	.LVL15
	.4byte	0x47a
	.4byte	0x357
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x33
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3747
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.byte	0
	.uleb128 0xd
	.4byte	.LVL16
	.4byte	0x47a
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x33
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3747
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0x9e
	.4byte	0x393
	.uleb128 0xf
	.4byte	0x90
	.byte	0x1b
	.byte	0
	.uleb128 0x6
	.4byte	0x383
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x1
	.byte	0x36
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3df
	.uleb128 0x12
	.4byte	.LASF35
	.byte	0x1
	.byte	0x38
	.4byte	0x7e
	.4byte	.LLST2
	.uleb128 0xb
	.4byte	.LVL17
	.4byte	0x490
	.4byte	0x3cf
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0xd
	.4byte	.LVL19
	.4byte	0x49b
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF33
	.byte	0x1
	.byte	0x3d
	.4byte	0xb0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x408
	.uleb128 0xd
	.4byte	.LVL20
	.4byte	0x490
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF34
	.byte	0x1
	.byte	0x48
	.4byte	0xb0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x431
	.uleb128 0xd
	.4byte	.LVL21
	.4byte	0x490
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.byte	0
	.uleb128 0x14
	.string	"TAG"
	.byte	0x1
	.byte	0x14
	.4byte	0xa5
	.uleb128 0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+1190
	.sleb128 0
	.uleb128 0xe
	.4byte	0x7e
	.4byte	0x453
	.uleb128 0xf
	.4byte	0x90
	.byte	0x27
	.byte	0
	.uleb128 0x15
	.4byte	.LASF46
	.byte	0x9
	.byte	0x19
	.4byte	0x45e
	.uleb128 0x6
	.4byte	0x443
	.uleb128 0x16
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x4
	.2byte	0x158
	.uleb128 0x17
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x6
	.byte	0xed
	.uleb128 0x17
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x7
	.byte	0x29
	.uleb128 0x17
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x6
	.byte	0xdd
	.uleb128 0x17
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x8
	.byte	0xd4
	.uleb128 0x17
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x8
	.byte	0xc9
	.uleb128 0x18
	.uleb128 0xd
	.byte	0x9e
	.uleb128 0xb
	.byte	0x70
	.byte	0x68
	.byte	0x79
	.byte	0x5f
	.byte	0x63
	.byte	0x6f
	.byte	0x6d
	.byte	0x6d
	.byte	0x6f
	.byte	0x6e
	.byte	0
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL13
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0xb
	.byte	0x7a
	.sleb128 0
	.byte	0xa
	.2byte	0xc00
	.byte	0x21
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF36:
	.string	"gpio_set_direction"
.LASF46:
	.string	"GPIO_PIN_MUX_REG"
.LASF20:
	.string	"GPIO_MODE_INPUT_OUTPUT_OD"
.LASF4:
	.string	"__uint8_t"
.LASF24:
	.string	"ESP_LOG_WARN"
.LASF18:
	.string	"GPIO_MODE_OUTPUT"
.LASF39:
	.string	"gpio_matrix_in"
.LASF30:
	.string	"mdc_gpio"
.LASF34:
	.string	"phy_mii_get_partner_pause_enable"
.LASF45:
	.string	"__func__"
.LASF25:
	.string	"ESP_LOG_INFO"
.LASF35:
	.string	"data"
.LASF1:
	.string	"unsigned char"
.LASF13:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF37:
	.string	"gpio_matrix_out"
.LASF19:
	.string	"GPIO_MODE_OUTPUT_OD"
.LASF29:
	.string	"phy_rmii_smi_configure_pins"
.LASF40:
	.string	"esp_eth_smi_read"
.LASF5:
	.string	"__uint32_t"
.LASF23:
	.string	"ESP_LOG_ERROR"
.LASF31:
	.string	"mdio_gpio"
.LASF44:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\ethernet"
.LASF38:
	.string	"__assert_func"
.LASF6:
	.string	"unsigned int"
.LASF26:
	.string	"ESP_LOG_DEBUG"
.LASF8:
	.string	"long long unsigned int"
.LASF9:
	.string	"uint8_t"
.LASF33:
	.string	"phy_mii_check_link_status"
.LASF43:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/ethernet/eth_phy/phy_common.c"
.LASF42:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF28:
	.string	"phy_rmii_configure_data_interface_pins"
.LASF12:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF14:
	.string	"char"
.LASF17:
	.string	"GPIO_MODE_INPUT"
.LASF2:
	.string	"short int"
.LASF22:
	.string	"ESP_LOG_NONE"
.LASF16:
	.string	"GPIO_MODE_DISABLE"
.LASF10:
	.string	"uint32_t"
.LASF11:
	.string	"long int"
.LASF32:
	.string	"phy_mii_enable_flow_ctrl"
.LASF21:
	.string	"GPIO_MODE_INPUT_OUTPUT"
.LASF0:
	.string	"signed char"
.LASF15:
	.string	"_Bool"
.LASF41:
	.string	"esp_eth_smi_write"
.LASF27:
	.string	"ESP_LOG_VERBOSE"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
