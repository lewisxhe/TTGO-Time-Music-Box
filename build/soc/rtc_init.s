	.file	"rtc_init.c"
	.text
.Ltext0:
	.section	.text.rtc_init,"ax",@progbits
	.literal_position
	.literal .LC0, 1072988208
	.literal .LC1, -67108865
	.literal .LC2, 1072988188
	.literal .LC3, 16777215
	.literal .LC4, -16760833
	.literal .LC5, -16321
	.literal .LC6, 1072988280
	.literal .LC7, 50331648
	.literal .LC8, 1610612736
	.literal .LC9, 1072988284
	.literal .LC10, -234881025
	.literal .LC11, 134217728
	.literal .LC12, -29360129
	.literal .LC13, 16777216
	.literal .LC14, 1072693316
	.literal .LC15, -2049
	.literal .LC16, 1072693340
	.literal .LC17, 1072693396
	.literal .LC18, 1072693408
	.literal .LC19, 1072693412
	.literal .LC20, 1072693420
	.literal .LC22, 1072988272
	.literal .LC23, 1072988160
	.literal .LC24, -8193
	.literal .LC25, -4194305
	.literal .LC26, -524289
	.literal .LC27, -65537
	.literal .LC28, 1048576
	.literal .LC29, 131072
	.literal .LC30, 16384
	.literal .LC31, -16777217
	.literal .LC32, 8388608
	.literal .LC33, 2147483647
	.literal .LC34, -536870913
	.literal .LC36, 268435456
	.literal .LC37, -268435457
	.literal .LC38, 1072988292
	.literal .LC39, -1048577
	.literal .LC40, -262145
	.literal .LC41, -87361
	.literal .LC42, 1072988288
	.literal .LC43, -73729
	.literal .LC44, 1072988296
	.literal .LC45, -178913281
	.literal .LC46, -16385
	.literal .LC47, -4097
	.align	4
	.global	rtc_init
	.type	rtc_init, @function
rtc_init:
.LFB3:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c"
	.loc 1 26 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LBB131:
.LBB132:
	.loc 1 27 0
	l32r	a9, .LC0
	memw
	l32i.n	a3, a9, 0
.LBE132:
	l32r	a8, .LC1
	and	a8, a3, a8
	memw
	s32i.n	a8, a9, 0
.LBE131:
.LBB133:
.LBB134:
	.loc 1 29 0
	l32r	a8, .LC2
	memw
	l32i.n	a10, a8, 0
.LBE134:
	l32r	a9, .LC3
	and	a10, a10, a9
	extui	a9, a2, 16, 8
	slli	a9, a9, 24
	or	a9, a9, a10
	memw
	s32i.n	a9, a8, 0
.LBE133:
.LBB135:
.LBB136:
	.loc 1 30 0
	memw
	l32i.n	a10, a8, 0
.LBE136:
	l32r	a9, .LC4
	and	a10, a10, a9
	extui	a9, a2, 8, 8
	slli	a9, a9, 14
	or	a9, a9, a10
	memw
	s32i.n	a9, a8, 0
.LBE135:
.LBB137:
.LBB138:
	.loc 1 31 0
	memw
	l32i.n	a10, a8, 0
.LBE138:
	l32r	a9, .LC5
	and	a10, a10, a9
	extui	a9, a2, 0, 8
	slli	a9, a9, 6
	or	a9, a9, a10
	memw
	s32i.n	a9, a8, 0
.LBE137:
.LBB139:
.LBB140:
	.loc 1 33 0
	l32r	a8, .LC6
	memw
	l32i.n	a3, a8, 0
.LBE140:
	l32r	a9, .LC7
	or	a9, a3, a9
	memw
	s32i.n	a9, a8, 0
.LBE139:
.LBB141:
.LBB142:
	.loc 1 34 0
	memw
	l32i.n	a3, a8, 0
.LBE142:
	l32r	a9, .LC8
	or	a9, a3, a9
	memw
	s32i.n	a9, a8, 0
.LBE141:
.LBB143:
.LBB144:
	.loc 1 38 0
	l32r	a9, .LC9
	memw
	l32i.n	a10, a9, 0
.LBE144:
	l32r	a8, .LC10
	and	a10, a10, a8
	l32r	a8, .LC11
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
.LBE143:
.LBB145:
.LBB146:
	.loc 1 39 0
	memw
	l32i.n	a3, a9, 0
.LBE146:
	l32r	a8, .LC12
	and	a8, a3, a8
	l32r	a10, .LC13
	or	a8, a8, a10
	memw
	s32i.n	a8, a9, 0
.LBE145:
	.loc 1 41 0
	bnone	a2, a10, .L2
.LVL1:
.LBB147:
.LBB148:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/dport_access.h"
	.loc 2 172 0
	l32r	a4, .LC14
	mov.n	a10, a4
	call8	esp_dport_access_reg_read
.LVL2:
.LBE148:
.LBE147:
	.loc 1 43 0
	l32r	a3, .LC15
	and	a10, a10, a3
	memw
	s32i.n	a10, a4, 0
.LVL3:
.LBB149:
.LBB150:
	.loc 2 172 0
	l32r	a4, .LC16
	mov.n	a10, a4
	call8	esp_dport_access_reg_read
.LVL4:
.LBE150:
.LBE149:
	.loc 1 44 0
	and	a10, a10, a3
	memw
	s32i.n	a10, a4, 0
.LVL5:
.LBB151:
.LBB152:
	.loc 2 172 0
	l32r	a3, .LC17
	mov.n	a10, a3
	call8	esp_dport_access_reg_read
.LVL6:
.LBE152:
.LBE151:
	.loc 1 46 0
	movi	a4, -0xfd
	and	a10, a10, a4
	memw
	s32i.n	a10, a3, 0
.LVL7:
.LBB153:
.LBB154:
	.loc 2 172 0
	mov.n	a10, a3
	call8	esp_dport_access_reg_read
.LVL8:
.LBE154:
.LBE153:
	.loc 1 47 0
	movi.n	a4, -3
	and	a10, a10, a4
	memw
	s32i.n	a10, a3, 0
.LVL9:
.LBB155:
.LBB156:
	.loc 2 172 0
	mov.n	a10, a3
	call8	esp_dport_access_reg_read
.LVL10:
.LBE156:
.LBE155:
	.loc 1 48 0
	movi.n	a4, -2
	and	a10, a10, a4
	memw
	s32i.n	a10, a3, 0
.LVL11:
.LBB157:
.LBB158:
	.loc 2 172 0
	l32r	a3, .LC18
	mov.n	a10, a3
	call8	esp_dport_access_reg_read
.LVL12:
.LBE158:
.LBE157:
	.loc 1 50 0
	movi.n	a8, 0
	memw
	s32i.n	a8, a3, 0
.LVL13:
.LBB159:
.LBB160:
	.loc 2 172 0
	l32r	a3, .LC19
	mov.n	a10, a3
	call8	esp_dport_access_reg_read
.LVL14:
.LBE160:
.LBE159:
	.loc 1 51 0
	and	a10, a10, a4
	memw
	s32i.n	a10, a3, 0
.LVL15:
.LBB161:
.LBB162:
	.loc 2 172 0
	l32r	a3, .LC20
	mov.n	a10, a3
	call8	esp_dport_access_reg_read
.LVL16:
.LBE162:
.LBE161:
	.loc 1 53 0
	movi	a8, -0x101
	and	a10, a10, a8
	memw
	s32i.n	a10, a3, 0
.LVL17:
.LBB163:
.LBB164:
	.loc 2 172 0
	mov.n	a10, a3
	call8	esp_dport_access_reg_read
.LVL18:
.LBE164:
.LBE163:
	.loc 1 54 0
	and	a10, a10, a4
	memw
	s32i.n	a10, a3, 0
.LVL19:
.L2:
	.loc 1 57 0
	bbci	a2, 25, .L1
.LBB165:
.LBB166:
	.loc 1 58 0
	l32r	a3, .LC22
	memw
	l32i.n	a4, a3, 0
.LBE166:
	l32r	a8, .LC1
	and	a8, a4, a8
	memw
	s32i.n	a8, a3, 0
.LBE165:
.LBB167:
.LBB168:
	.loc 1 60 0
	l32r	a8, .LC23
	memw
	l32i.n	a3, a8, 0
.LBE168:
	l32r	a9, .LC24
	and	a9, a3, a9
	memw
	s32i.n	a9, a8, 0
.LBE167:
.LBB169:
.LBB170:
	.loc 1 62 0
	memw
	l32i.n	a3, a8, 0
.LBE170:
	l32r	a9, .LC25
	and	a9, a3, a9
	memw
	s32i.n	a9, a8, 0
.LBE169:
.LBB171:
.LBB172:
	.loc 1 63 0
	memw
	l32i.n	a3, a8, 0
.LBE172:
	l32r	a9, .LC26
	and	a9, a3, a9
	memw
	s32i.n	a9, a8, 0
.LBE171:
.LBB173:
.LBB174:
	.loc 1 64 0
	memw
	l32i.n	a3, a8, 0
.LBE174:
	l32r	a9, .LC27
	and	a9, a3, a9
	memw
	s32i.n	a9, a8, 0
.LBE173:
.LBB175:
.LBB176:
	.loc 1 66 0
	memw
	l32i.n	a3, a8, 0
.LBE176:
	l32r	a9, .LC28
	or	a9, a3, a9
	memw
	s32i.n	a9, a8, 0
.LBE175:
.LBB177:
.LBB178:
	.loc 1 67 0
	memw
	l32i.n	a3, a8, 0
.LBE178:
	l32r	a9, .LC29
	or	a9, a3, a9
	memw
	s32i.n	a9, a8, 0
.LBE177:
.LBB179:
.LBB180:
	.loc 1 68 0
	memw
	l32i.n	a3, a8, 0
.LBE180:
	l32r	a9, .LC30
	or	a9, a3, a9
	memw
	s32i.n	a9, a8, 0
.LBE179:
.LBB181:
.LBB182:
	.loc 1 70 0
	l32r	a9, .LC0
	memw
	l32i.n	a3, a9, 0
.LBE182:
	l32r	a10, .LC31
	and	a10, a3, a10
	memw
	s32i.n	a10, a9, 0
.LBE181:
.LBB183:
.LBB184:
	.loc 1 71 0
	memw
	l32i.n	a3, a9, 0
.LBE184:
	l32r	a10, .LC32
	or	a10, a3, a10
	memw
	s32i.n	a10, a9, 0
.LBE183:
.LBB185:
.LBB186:
	.loc 1 72 0
	memw
	l32i.n	a3, a8, 0
.LBE186:
	l32r	a9, .LC15
	and	a9, a3, a9
	memw
	s32i.n	a9, a8, 0
.LBE185:
.LBB187:
.LBB188:
	.loc 1 73 0
	memw
	l32i.n	a3, a8, 0
.LBE188:
	movi	a9, -0x201
	and	a9, a3, a9
	memw
	s32i.n	a9, a8, 0
.LBE187:
.LBB189:
.LBB190:
	.loc 1 75 0
	l32r	a8, .LC9
	memw
	l32i.n	a3, a8, 0
.LBE190:
	l32r	a9, .LC33
	and	a9, a3, a9
	memw
	s32i.n	a9, a8, 0
.LBE189:
.LBB191:
.LBB192:
	.loc 1 76 0
	memw
	l32i.n	a3, a8, 0
.LBE192:
	l32r	a9, .LC34
	and	a9, a3, a9
	memw
	s32i.n	a9, a8, 0
.LBE191:
	.loc 1 77 0
	bbci	a2, 26, .L4
.LBB193:
.LBB194:
	.loc 1 78 0
	memw
	l32i.n	a4, a8, 0
.LBE194:
	l32r	a2, .LC36
.LVL20:
	or	a2, a4, a2
	memw
	s32i.n	a2, a8, 0
.LBE193:
	j	.L5
.LVL21:
.L4:
.LBB195:
.LBB196:
	.loc 1 80 0
	l32r	a3, .LC9
	memw
	l32i.n	a4, a3, 0
.LBE196:
	l32r	a2, .LC37
.LVL22:
	and	a2, a4, a2
	memw
	s32i.n	a2, a3, 0
.L5:
.LBE195:
.LBB197:
.LBB198:
	.loc 1 83 0
	l32r	a2, .LC38
	memw
	l32i.n	a3, a2, 0
.LBE198:
	movi.n	a8, -0x11
	and	a8, a3, a8
	memw
	s32i.n	a8, a2, 0
.LBE197:
.LBB199:
.LBB200:
	.loc 1 84 0
	memw
	l32i.n	a3, a2, 0
.LBE200:
	l32r	a8, .LC39
	and	a8, a3, a8
	memw
	s32i.n	a8, a2, 0
.LBE199:
.LBB201:
.LBB202:
	.loc 1 85 0
	memw
	l32i.n	a3, a2, 0
.LBE202:
	l32r	a8, .LC40
	and	a8, a3, a8
	memw
	s32i.n	a8, a2, 0
.LBE201:
.LBB203:
.LBB204:
	.loc 1 86 0
	memw
	l32i.n	a3, a2, 0
.LBE204:
	l32r	a8, .LC41
	and	a8, a3, a8
	memw
	s32i.n	a8, a2, 0
.LBE203:
.LBB205:
.LBB206:
	.loc 1 87 0
	l32r	a2, .LC42
	memw
	l32i.n	a3, a2, 0
.LBE206:
	l32r	a8, .LC43
	and	a8, a3, a8
	memw
	s32i.n	a8, a2, 0
.LBE205:
.LBB207:
.LBB208:
	.loc 1 88 0
	memw
	l32i.n	a3, a2, 0
.LBE208:
	l32r	a8, .LC26
	and	a8, a3, a8
	memw
	s32i.n	a8, a2, 0
.LBE207:
.LBB209:
.LBB210:
	.loc 1 89 0
	l32r	a8, .LC44
	memw
	l32i.n	a3, a8, 0
.LBE210:
	l32r	a9, .LC33
	and	a9, a3, a9
	memw
	s32i.n	a9, a8, 0
.LBE209:
.LBB211:
.LBB212:
	.loc 1 90 0
	memw
	l32i.n	a3, a8, 0
.LBE212:
	l32r	a9, .LC34
	and	a9, a3, a9
	memw
	s32i.n	a9, a8, 0
.LBE211:
.LBB213:
.LBB214:
	.loc 1 91 0
	memw
	l32i.n	a3, a8, 0
.LBE214:
	l32r	a9, .LC45
	and	a9, a3, a9
	memw
	s32i.n	a9, a8, 0
.LBE213:
.LBB215:
.LBB216:
	.loc 1 92 0
	memw
	l32i.n	a3, a2, 0
.LBE216:
	movi.n	a9, -6
	and	a9, a3, a9
	memw
	s32i.n	a9, a2, 0
.LBE215:
.LBB217:
.LBB218:
	.loc 1 93 0
	memw
	l32i.n	a3, a2, 0
.LBE218:
	movi	a9, -0x21
	and	a9, a3, a9
	memw
	s32i.n	a9, a2, 0
.LBE217:
.LBB219:
.LBB220:
	.loc 1 95 0
	memw
	l32i.n	a3, a8, 0
.LBE220:
	l32r	a2, .LC46
	and	a2, a3, a2
	memw
	s32i.n	a2, a8, 0
.LBE219:
.LBB221:
.LBB222:
	.loc 1 96 0
	memw
	l32i.n	a3, a8, 0
.LBE222:
	l32r	a2, .LC47
	and	a2, a3, a2
	memw
	s32i.n	a2, a8, 0
.LVL23:
.L1:
	retw.n
.LBE221:
.LFE3:
	.size	rtc_init, .-rtc_init
	.section	.text.rtc_vddsdio_get_config,"ax",@progbits
	.literal_position
	.literal .LC48, 1072988276
	.literal .LC49, 1610612736
	.literal .LC50, 402653184
	.literal .LC51, 100663296
	.literal .LC53, 8388608
	.literal .LC54, 1073061904
	.literal .LC56, 16384
	.literal .LC57, 32768
	.literal .LC58, 1073061900
	.literal .LC59, 3072
	.literal .LC60, 12288
	.literal .LC61, 1072971832
	.align	4
	.global	rtc_vddsdio_get_config
	.type	rtc_vddsdio_get_config, @function
rtc_vddsdio_get_config:
.LFB4:
	.loc 1 101 0
	entry	sp, 32
.LCFI1:
.LBB223:
	.loc 1 103 0
	l32r	a2, .LC48
	memw
	l32i.n	a10, a2, 0
.LVL24:
.LBE223:
	.loc 1 104 0
	l32r	a2, .LC49
	and	a2, a10, a2
	extui	a9, a2, 29, 2
	.loc 1 105 0
	l32r	a8, .LC50
	and	a8, a10, a8
	extui	a2, a8, 27, 2
	slli	a8, a2, 5
	slli	a2, a9, 3
	.loc 1 106 0
	l32r	a9, .LC51
	and	a9, a10, a9
	extui	a9, a9, 25, 2
	slli	a9, a9, 7
	or	a2, a2, a8
	or	a2, a2, a9
.LVL25:
	.loc 1 107 0
	bbci	a10, 22, .L7
	.loc 1 110 0
	extui	a8, a10, 31, 1
	slli	a8, a8, 1
	movi.n	a9, 1
.LVL26:
	or	a2, a2, a9
.LVL27:
	or	a2, a2, a8
	.loc 1 111 0
	l32r	a8, .LC53
	and	a10, a10, a8
.LVL28:
	extui	a10, a10, 23, 1
	slli	a10, a10, 2
	movi.n	a8, -5
.LVL29:
	and	a2, a2, a8
.LVL30:
	.loc 1 112 0
	or	a2, a2, a10
	retw.n
.LVL31:
.L7:
.LBB224:
	.loc 1 114 0
	l32r	a8, .LC54
	memw
	l32i.n	a9, a8, 0
.LVL32:
.LBE224:
	.loc 1 115 0
	bbci	a9, 16, .L9
	.loc 1 117 0
	movi.n	a8, -2
.LVL33:
	and	a2, a2, a8
.LVL34:
	.loc 1 118 0
	l32r	a8, .LC56
	and	a8, a9, a8
	extui	a8, a8, 14, 1
	slli	a8, a8, 1
	movi.n	a10, -3
.LVL35:
	and	a2, a2, a10
.LVL36:
	or	a2, a2, a8
	.loc 1 119 0
	l32r	a8, .LC57
	and	a8, a9, a8
	extui	a8, a8, 15, 1
	slli	a8, a8, 2
	movi.n	a10, -5
.LVL37:
	and	a2, a2, a10
.LVL38:
	or	a2, a2, a8
.LBB225:
.LBB226:
	.loc 1 122 0
	l32r	a8, .LC58
	memw
	l32i.n	a8, a8, 0
.LBE226:
.LBE225:
	bbsi	a8, 14, .L8
	.loc 1 125 0
	extui	a8, a9, 8, 2
	slli	a8, a8, 3
	movi.n	a10, -0x19
.LVL39:
	and	a2, a2, a10
.LVL40:
	or	a2, a2, a8
	.loc 1 126 0
	l32r	a8, .LC59
	and	a8, a9, a8
	extui	a8, a8, 10, 2
	slli	a8, a8, 5
	movi	a10, -0x61
.LVL41:
	and	a2, a2, a10
.LVL42:
	or	a2, a2, a8
	.loc 1 127 0
	l32r	a8, .LC60
	and	a9, a9, a8
.LVL43:
	extui	a9, a9, 12, 2
	slli	a9, a9, 7
	movi	a8, -0x181
.LVL44:
	and	a2, a2, a8
.LVL45:
	or	a2, a2, a9
	.loc 1 129 0
	retw.n
.LVL46:
.L9:
.LBB227:
	.loc 1 133 0
	l32r	a8, .LC61
	memw
	l32i.n	a9, a8, 0
.LVL47:
.LBE227:
	.loc 1 134 0
	movi.n	a8, -2
.LVL48:
	and	a2, a2, a8
.LVL49:
	.loc 1 135 0
	movi.n	a8, 0x20
	and	a9, a9, a8
.LVL50:
	movi.n	a8, 0
	movi.n	a10, 1
.LVL51:
	moveqz	a8, a10, a9
	slli	a8, a8, 2
	movi.n	a9, -5
.LVL52:
	and	a2, a2, a9
.LVL53:
	or	a2, a2, a8
	.loc 1 137 0
	movi.n	a8, 2
.LVL54:
	or	a2, a2, a8
.LVL55:
.L8:
	.loc 1 138 0
	retw.n
.LFE4:
	.size	rtc_vddsdio_get_config, .-rtc_vddsdio_get_config
	.section	.text.rtc_vddsdio_set_config,"ax",@progbits
	.literal_position
	.literal .LC62, 2097152
	.literal .LC63, 1072988276
	.align	4
	.global	rtc_vddsdio_set_config
	.type	rtc_vddsdio_set_config, @function
rtc_vddsdio_set_config:
.LFB5:
	.loc 1 141 0
.LVL56:
	entry	sp, 32
.LCFI2:
.LVL57:
	.loc 1 143 0
	extui	a12, a2, 0, 1
	slli	a13, a12, 22
.LVL58:
	.loc 1 144 0
	extui	a11, a2, 1, 1
	slli	a11, a11, 31
	or	a12, a11, a13
.LVL59:
	.loc 1 145 0
	extui	a10, a2, 3, 2
	slli	a10, a10, 29
	or	a11, a10, a12
.LVL60:
	.loc 1 146 0
	extui	a9, a2, 5, 2
	slli	a9, a9, 27
	or	a10, a9, a11
.LVL61:
	.loc 1 147 0
	extui	a8, a2, 7, 2
	slli	a8, a8, 25
	or	a9, a8, a10
.LVL62:
	.loc 1 148 0
	extui	a8, a2, 2, 1
	slli	a8, a8, 23
	or	a8, a8, a9
.LVL63:
	.loc 1 149 0
	l32r	a2, .LC62
.LVL64:
	or	a8, a8, a2
.LVL65:
.LBB228:
	.loc 1 150 0
	l32r	a2, .LC63
	memw
	s32i.n	a8, a2, 0
	retw.n
.LBE228:
.LFE5:
	.size	rtc_vddsdio_set_config, .-rtc_vddsdio_set_config
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI0-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI1-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI2-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_dport_access.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x425
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0xc
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
	.4byte	.LASF7
	.byte	0x3
	.byte	0x1a
	.4byte	0x4f
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
	.4byte	0x44
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
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.2byte	0x227
	.4byte	0xf5
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x5
	.2byte	0x228
	.4byte	0x64
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x5
	.2byte	0x229
	.4byte	0x64
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x5
	.2byte	0x22a
	.4byte	0x64
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x5
	.2byte	0x22b
	.4byte	0x64
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x5
	.2byte	0x22c
	.4byte	0x64
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x5
	.2byte	0x22d
	.4byte	0x64
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x5
	.2byte	0x22e
	.4byte	0x8b
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.2byte	0x24b
	.4byte	0x16b
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x5
	.2byte	0x24c
	.4byte	0x64
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x5
	.2byte	0x24d
	.4byte	0x64
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x5
	.2byte	0x24e
	.4byte	0x64
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x5
	.2byte	0x24f
	.4byte	0x64
	.byte	0x4
	.byte	0x2
	.byte	0x1b
	.byte	0
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x5
	.2byte	0x250
	.4byte	0x64
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x5
	.2byte	0x251
	.4byte	0x64
	.byte	0x4
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x5
	.2byte	0x252
	.4byte	0x101
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0x2
	.byte	0xa7
	.4byte	0x64
	.byte	0x3
	.4byte	0x193
	.uleb128 0x9
	.string	"reg"
	.byte	0x2
	.byte	0xa7
	.4byte	0x64
	.byte	0
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x1
	.byte	0x19
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x352
	.uleb128 0xb
	.string	"cfg"
	.byte	0x1
	.byte	0x19
	.4byte	0xf5
	.4byte	.LLST0
	.uleb128 0xc
	.4byte	.LASF31
	.4byte	0x362
	.uleb128 0xd
	.4byte	0x177
	.4byte	.LBB147
	.4byte	.LBE147-.LBB147
	.byte	0x1
	.byte	0x2b
	.4byte	0x1ed
	.uleb128 0xe
	.4byte	0x187
	.4byte	.LLST1
	.uleb128 0xf
	.4byte	.LVL2
	.4byte	0x41d
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0x177
	.4byte	.LBB149
	.4byte	.LBE149-.LBB149
	.byte	0x1
	.byte	0x2c
	.4byte	0x21a
	.uleb128 0xe
	.4byte	0x187
	.4byte	.LLST2
	.uleb128 0xf
	.4byte	.LVL4
	.4byte	0x41d
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0x177
	.4byte	.LBB151
	.4byte	.LBE151-.LBB151
	.byte	0x1
	.byte	0x2e
	.4byte	0x247
	.uleb128 0xe
	.4byte	0x187
	.4byte	.LLST3
	.uleb128 0xf
	.4byte	.LVL6
	.4byte	0x41d
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0x177
	.4byte	.LBB153
	.4byte	.LBE153-.LBB153
	.byte	0x1
	.byte	0x2f
	.4byte	0x274
	.uleb128 0xe
	.4byte	0x187
	.4byte	.LLST4
	.uleb128 0xf
	.4byte	.LVL8
	.4byte	0x41d
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0x177
	.4byte	.LBB155
	.4byte	.LBE155-.LBB155
	.byte	0x1
	.byte	0x30
	.4byte	0x2a1
	.uleb128 0xe
	.4byte	0x187
	.4byte	.LLST5
	.uleb128 0xf
	.4byte	.LVL10
	.4byte	0x41d
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0x177
	.4byte	.LBB157
	.4byte	.LBE157-.LBB157
	.byte	0x1
	.byte	0x32
	.4byte	0x2ce
	.uleb128 0xe
	.4byte	0x187
	.4byte	.LLST6
	.uleb128 0xf
	.4byte	.LVL12
	.4byte	0x41d
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0x177
	.4byte	.LBB159
	.4byte	.LBE159-.LBB159
	.byte	0x1
	.byte	0x33
	.4byte	0x2fb
	.uleb128 0xe
	.4byte	0x187
	.4byte	.LLST7
	.uleb128 0xf
	.4byte	.LVL14
	.4byte	0x41d
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0x177
	.4byte	.LBB161
	.4byte	.LBE161-.LBB161
	.byte	0x1
	.byte	0x35
	.4byte	0x328
	.uleb128 0xe
	.4byte	0x187
	.4byte	.LLST8
	.uleb128 0xf
	.4byte	.LVL16
	.4byte	0x41d
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0x177
	.4byte	.LBB163
	.4byte	.LBE163-.LBB163
	.byte	0x1
	.byte	0x36
	.uleb128 0xe
	.4byte	0x187
	.4byte	.LLST9
	.uleb128 0xf
	.4byte	.LVL18
	.4byte	0x41d
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x84
	.4byte	0x362
	.uleb128 0x13
	.4byte	0x76
	.byte	0x8
	.byte	0
	.uleb128 0x14
	.4byte	0x352
	.uleb128 0x15
	.4byte	.LASF28
	.byte	0x1
	.byte	0x64
	.4byte	0x16b
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3c6
	.uleb128 0x16
	.4byte	.LASF29
	.byte	0x1
	.byte	0x66
	.4byte	0x16b
	.4byte	.LLST10
	.uleb128 0x16
	.4byte	.LASF30
	.byte	0x1
	.byte	0x67
	.4byte	0x64
	.4byte	.LLST11
	.uleb128 0xc
	.4byte	.LASF31
	.4byte	0x3d6
	.uleb128 0x16
	.4byte	.LASF32
	.byte	0x1
	.byte	0x72
	.4byte	0x64
	.4byte	.LLST12
	.uleb128 0x16
	.4byte	.LASF33
	.byte	0x1
	.byte	0x85
	.4byte	0x64
	.4byte	.LLST13
	.byte	0
	.uleb128 0x12
	.4byte	0x84
	.4byte	0x3d6
	.uleb128 0x13
	.4byte	0x76
	.byte	0x16
	.byte	0
	.uleb128 0x14
	.4byte	0x3c6
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x1
	.byte	0x8c
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x418
	.uleb128 0x17
	.4byte	.LASF35
	.byte	0x1
	.byte	0x8c
	.4byte	0x16b
	.4byte	.LLST14
	.uleb128 0x18
	.string	"val"
	.byte	0x1
	.byte	0x8e
	.4byte	0x64
	.4byte	.LLST15
	.uleb128 0xc
	.4byte	.LASF31
	.4byte	0x418
	.byte	0
	.uleb128 0x14
	.4byte	0x3c6
	.uleb128 0x19
	.4byte	.LASF39
	.4byte	.LASF39
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
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
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x17
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
	.4byte	.LVL0
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL19
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff00044
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL19
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff0005c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL19
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff00094
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL7
	.4byte	.LVL19
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff00094
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL9
	.4byte	.LVL19
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff00094
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL11
	.4byte	.LVL19
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff000a0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL13
	.4byte	.LVL19
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff000a4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL15
	.4byte	.LVL19
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff000ac
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff000ac
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL24
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL31
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL46
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL32
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL47
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL56
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL63
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF38:
	.string	"DPORT_READ_PERI_REG"
.LASF31:
	.string	"__func__"
.LASF23:
	.string	"drefh"
.LASF25:
	.string	"drefl"
.LASF33:
	.string	"strap_reg"
.LASF21:
	.string	"enable"
.LASF24:
	.string	"drefm"
.LASF36:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF34:
	.string	"rtc_vddsdio_set_config"
.LASF27:
	.string	"rtc_init"
.LASF18:
	.string	"rtc_dboost_fpd"
.LASF1:
	.string	"unsigned char"
.LASF39:
	.string	"esp_dport_access_reg_read"
.LASF11:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF14:
	.string	"xtal_wait"
.LASF35:
	.string	"config"
.LASF30:
	.string	"sdio_conf_reg"
.LASF15:
	.string	"pll_wait"
.LASF22:
	.string	"tieh"
.LASF7:
	.string	"__uint32_t"
.LASF4:
	.string	"unsigned int"
.LASF6:
	.string	"long long unsigned int"
.LASF29:
	.string	"result"
.LASF32:
	.string	"efuse_reg"
.LASF10:
	.string	"sizetype"
.LASF5:
	.string	"long long int"
.LASF13:
	.string	"ck8m_wait"
.LASF12:
	.string	"char"
.LASF16:
	.string	"clkctl_init"
.LASF2:
	.string	"short int"
.LASF19:
	.string	"rtc_config_t"
.LASF8:
	.string	"uint32_t"
.LASF9:
	.string	"long int"
.LASF20:
	.string	"force"
.LASF28:
	.string	"rtc_vddsdio_get_config"
.LASF0:
	.string	"signed char"
.LASF17:
	.string	"pwrctl_init"
.LASF26:
	.string	"rtc_vddsdio_config_t"
.LASF37:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_init.c"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
