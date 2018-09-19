	.file	"core_hchacha20.c"
	.text
.Ltext0:
	.section	.text.crypto_core_hchacha20,"ax",@progbits
	.literal_position
	.literal .LC0, 1797285236
	.literal .LC1, 2036477234
	.literal .LC2, 857760878
	.literal .LC3, 1634760805
	.align	4
	.global	crypto_core_hchacha20
	.type	crypto_core_hchacha20, @function
crypto_core_hchacha20:
.LFB12:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_core/hchacha20/core_hchacha20.c"
	.loc 1 19 0
.LVL0:
	entry	sp, 112
.LCFI0:
	s32i.n	a2, sp, 52
	mov.n	a2, a5
.LVL1:
	.loc 1 24 0
	beqz.n	a5, .L5
.LVL2:
.LBB114:
.LBB115:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/private/common.h"
	.loc 2 83 0
	l8ui	a6, a5, 0
	l8ui	a5, a5, 1
.LVL3:
	s8i	a6, sp, 0
	l8ui	a6, a2, 2
	s8i	a5, sp, 1
	l8ui	a5, a2, 3
	s8i	a6, sp, 2
	s8i	a5, sp, 3
	.loc 2 84 0
	l32i.n	a7, sp, 0
.LVL4:
.LBE115:
.LBE114:
.LBB116:
.LBB117:
	.loc 2 83 0
	l8ui	a6, a2, 4
	l8ui	a8, a2, 5
	s8i	a6, sp, 0
	l8ui	a6, a2, 6
	s8i	a8, sp, 1
	l8ui	a5, a2, 7
	s8i	a6, sp, 2
	s8i	a5, sp, 3
	.loc 2 84 0
	l32i.n	a5, sp, 0
.LVL5:
.LBE117:
.LBE116:
.LBB118:
.LBB119:
	.loc 2 83 0
	l8ui	a8, a2, 8
	l8ui	a9, a2, 9
	s8i	a8, sp, 0
	l8ui	a8, a2, 10
	s8i	a9, sp, 1
	l8ui	a6, a2, 11
	s8i	a8, sp, 2
	s8i	a6, sp, 3
	.loc 2 84 0
	l32i.n	a6, sp, 0
.LBE119:
.LBE118:
	.loc 1 33 0
	addi.n	a8, a2, 12
.LVL6:
.LBB120:
.LBB121:
	.loc 2 83 0
	l8ui	a9, a2, 12
	l8ui	a2, a2, 13
.LVL7:
	s8i	a9, sp, 0
	l8ui	a9, a8, 2
	s8i	a2, sp, 1
	l8ui	a2, a8, 3
	s8i	a9, sp, 2
	s8i	a2, sp, 3
	.loc 2 84 0
	l32i.n	a2, sp, 0
	j	.L2
.LVL8:
.L5:
.LBE121:
.LBE120:
	.loc 1 28 0
	l32r	a2, .LC0
.LVL9:
	.loc 1 27 0
	l32r	a6, .LC1
	.loc 1 26 0
	l32r	a5, .LC2
.LVL10:
	.loc 1 25 0
	l32r	a7, .LC3
.L2:
.LVL11:
.LBB122:
.LBB123:
	.loc 2 83 0
	l8ui	a9, a4, 0
	l8ui	a8, a4, 1
	s8i	a9, sp, 0
	l8ui	a9, a4, 2
	s8i	a8, sp, 1
	l8ui	a8, a4, 3
	s8i	a9, sp, 2
	s8i	a8, sp, 3
	.loc 2 84 0
	l32i.n	a12, sp, 0
.LVL12:
.LBE123:
.LBE122:
.LBB124:
.LBB125:
	.loc 2 83 0
	l8ui	a9, a4, 4
	l8ui	a10, a4, 5
	s8i	a9, sp, 0
	l8ui	a9, a4, 6
	s8i	a10, sp, 1
	l8ui	a8, a4, 7
	s8i	a9, sp, 2
	s8i	a8, sp, 3
	.loc 2 84 0
	l32i.n	a13, sp, 0
.LVL13:
.LBE125:
.LBE124:
.LBB126:
.LBB127:
	.loc 2 83 0
	l8ui	a9, a4, 8
	l8ui	a10, a4, 9
	s8i	a9, sp, 0
	l8ui	a9, a4, 10
	s8i	a10, sp, 1
	l8ui	a8, a4, 11
	s8i	a9, sp, 2
	s8i	a8, sp, 3
	.loc 2 84 0
	l32i.n	a8, sp, 0
	s32i.n	a8, sp, 36
.LVL14:
.LBE127:
.LBE126:
.LBB128:
.LBB129:
	.loc 2 83 0
	l8ui	a9, a4, 12
	l8ui	a10, a4, 13
	s8i	a9, sp, 0
	l8ui	a9, a4, 14
	s8i	a10, sp, 1
	l8ui	a8, a4, 15
	s8i	a9, sp, 2
	s8i	a8, sp, 3
	.loc 2 84 0
	l32i.n	a11, sp, 0
	s32i.n	a11, sp, 40
.LVL15:
.LBE129:
.LBE128:
.LBB130:
.LBB131:
	.loc 2 83 0
	l8ui	a9, a4, 16
	l8ui	a10, a4, 17
	s8i	a9, sp, 0
	l8ui	a9, a4, 18
	s8i	a10, sp, 1
	l8ui	a8, a4, 19
	s8i	a9, sp, 2
	s8i	a8, sp, 3
	.loc 2 84 0
	l32i.n	a15, sp, 0
.LVL16:
.LBE131:
.LBE130:
.LBB132:
.LBB133:
	.loc 2 83 0
	l8ui	a9, a4, 20
	l8ui	a10, a4, 21
	s8i	a9, sp, 0
	l8ui	a9, a4, 22
	s8i	a10, sp, 1
	l8ui	a8, a4, 23
	s8i	a9, sp, 2
	s8i	a8, sp, 3
	.loc 2 84 0
	l32i.n	a11, sp, 0
.LVL17:
.LBE133:
.LBE132:
.LBB134:
.LBB135:
	.loc 2 83 0
	l8ui	a9, a4, 24
	l8ui	a10, a4, 25
	s8i	a9, sp, 0
	l8ui	a9, a4, 26
	s8i	a10, sp, 1
	l8ui	a8, a4, 27
	s8i	a9, sp, 2
	s8i	a8, sp, 3
	.loc 2 84 0
	l32i.n	a14, sp, 0
	s32i.n	a14, sp, 48
.LBE135:
.LBE134:
	.loc 1 42 0
	addi	a8, a4, 28
.LVL18:
.LBB136:
.LBB137:
	.loc 2 83 0
	l8ui	a4, a4, 28
.LVL19:
	l8ui	a9, a8, 1
	s8i	a4, sp, 0
	l8ui	a10, a8, 2
	s8i	a9, sp, 1
	l8ui	a4, a8, 3
	s8i	a10, sp, 2
	s8i	a4, sp, 3
	.loc 2 84 0
	l32i.n	a4, sp, 0
.LVL20:
.LBE137:
.LBE136:
.LBB138:
.LBB139:
	.loc 2 83 0
	l8ui	a8, a3, 0
.LVL21:
	l8ui	a9, a3, 1
	s8i	a8, sp, 0
	l8ui	a10, a3, 2
	s8i	a9, sp, 1
	l8ui	a8, a3, 3
	s8i	a10, sp, 2
	s8i	a8, sp, 3
	.loc 2 84 0
	l32i.n	a10, sp, 0
.LVL22:
.LBE139:
.LBE138:
.LBB140:
.LBB141:
	.loc 2 83 0
	l8ui	a9, a3, 4
	l8ui	a14, a3, 5
	s8i	a9, sp, 0
	l8ui	a9, a3, 6
	s8i	a14, sp, 1
	l8ui	a8, a3, 7
	s8i	a9, sp, 2
	s8i	a8, sp, 3
	.loc 2 84 0
	l32i.n	a9, sp, 0
.LVL23:
.LBE141:
.LBE140:
.LBB142:
.LBB143:
	.loc 2 83 0
	l8ui	a14, a3, 8
	s8i	a14, sp, 0
	l8ui	a14, a3, 10
	s8i	a14, sp, 2
	l8ui	a14, a3, 9
	s8i	a14, sp, 1
	l8ui	a8, a3, 11
	s8i	a8, sp, 3
	.loc 2 84 0
	l32i.n	a8, sp, 0
.LBE143:
.LBE142:
	.loc 1 46 0
	addi.n	a14, a3, 12
.LVL24:
.LBB144:
.LBB145:
	.loc 2 83 0
	l8ui	a3, a3, 12
.LVL25:
	s8i	a3, sp, 0
	l8ui	a3, a14, 2
	s8i	a3, sp, 2
	l8ui	a3, a14, 1
	s8i	a3, sp, 1
	l8ui	a3, a14, 3
	s8i	a3, sp, 3
	.loc 2 84 0
	l32i.n	a14, sp, 0
.LVL26:
.LBE145:
.LBE144:
	.loc 1 48 0
	movi.n	a3, 0
	s32i.n	a3, sp, 32
	s32i.n	a13, sp, 60
	l32i.n	a3, sp, 36
	s32i.n	a4, sp, 36
	l32i.n	a4, sp, 40
	s32i	a4, sp, 64
	j	.L3
.LVL27:
.L4:
	.loc 1 49 0 discriminator 3
	add.n	a7, a7, a12
.LVL28:
	xor	a10, a10, a7
.LVL29:
.LBB146:
.LBB147:
	.loc 2 14 0 discriminator 3
	ssai	16
	src	a10, a10, a10
.LVL30:
.LBE147:
.LBE146:
	.loc 1 49 0 discriminator 3
	add.n	a15, a15, a10
.LVL31:
	xor	a12, a12, a15
.LVL32:
.LBB148:
.LBB149:
	.loc 2 14 0 discriminator 3
	ssai	20
	src	a12, a12, a12
.LVL33:
.LBE149:
.LBE148:
	.loc 1 49 0 discriminator 3
	add.n	a7, a7, a12
.LVL34:
	xor	a10, a10, a7
.LVL35:
.LBB150:
.LBB151:
	.loc 2 14 0 discriminator 3
	ssai	24
	src	a10, a10, a10
.LVL36:
.LBE151:
.LBE150:
	.loc 1 49 0 discriminator 3
	add.n	a15, a15, a10
.LVL37:
	s32i.n	a15, sp, 56
.LVL38:
	xor	a12, a12, a15
.LVL39:
.LBB152:
.LBB153:
	.loc 2 14 0 discriminator 3
	ssai	25
	src	a12, a12, a12
.LVL40:
	s32i.n	a12, sp, 40
.LBE153:
.LBE152:
	.loc 1 50 0 discriminator 3
	l32i.n	a12, sp, 60
	add.n	a5, a5, a12
.LVL41:
	xor	a9, a9, a5
.LVL42:
.LBB154:
.LBB155:
	.loc 2 14 0 discriminator 3
	ssai	16
	src	a9, a9, a9
.LVL43:
.LBE155:
.LBE154:
	.loc 1 50 0 discriminator 3
	add.n	a11, a11, a9
.LVL44:
	xor	a13, a12, a11
.LVL45:
.LBB156:
.LBB157:
	.loc 2 14 0 discriminator 3
	ssai	20
	src	a13, a13, a13
.LVL46:
.LBE157:
.LBE156:
	.loc 1 50 0 discriminator 3
	add.n	a5, a5, a13
.LVL47:
	xor	a9, a9, a5
.LVL48:
.LBB158:
.LBB159:
	.loc 2 14 0 discriminator 3
	ssai	24
	src	a9, a9, a9
.LVL49:
.LBE159:
.LBE158:
	.loc 1 50 0 discriminator 3
	add.n	a11, a11, a9
.LVL50:
	s32i.n	a11, sp, 44
.LVL51:
	xor	a13, a13, a11
.LVL52:
.LBB160:
.LBB161:
	.loc 2 14 0 discriminator 3
	ssai	25
	src	a13, a13, a13
.LVL53:
.LBE161:
.LBE160:
	.loc 1 51 0 discriminator 3
	add.n	a6, a6, a3
.LVL54:
	xor	a8, a8, a6
.LVL55:
.LBB162:
.LBB163:
	.loc 2 14 0 discriminator 3
	ssai	16
	src	a8, a8, a8
.LVL56:
.LBE163:
.LBE162:
	.loc 1 51 0 discriminator 3
	l32i.n	a15, sp, 48
.LVL57:
	add.n	a12, a15, a8
.LVL58:
	xor	a3, a3, a12
.LVL59:
.LBB164:
.LBB165:
	.loc 2 14 0 discriminator 3
	ssai	20
	src	a3, a3, a3
.LVL60:
.LBE165:
.LBE164:
	.loc 1 51 0 discriminator 3
	add.n	a6, a6, a3
.LVL61:
	xor	a8, a8, a6
.LVL62:
.LBB166:
.LBB167:
	.loc 2 14 0 discriminator 3
	ssai	24
	src	a8, a8, a8
.LVL63:
.LBE167:
.LBE166:
	.loc 1 51 0 discriminator 3
	add.n	a12, a12, a8
.LVL64:
	xor	a3, a3, a12
.LVL65:
.LBB168:
.LBB169:
	.loc 2 14 0 discriminator 3
	ssai	25
	src	a3, a3, a3
.LVL66:
.LBE169:
.LBE168:
	.loc 1 52 0 discriminator 3
	l32i	a4, sp, 64
.LVL67:
	add.n	a2, a2, a4
.LVL68:
	xor	a14, a14, a2
.LVL69:
.LBB170:
.LBB171:
	.loc 2 14 0 discriminator 3
	ssai	16
	src	a14, a14, a14
.LVL70:
.LBE171:
.LBE170:
	.loc 1 52 0 discriminator 3
	l32i.n	a15, sp, 36
	add.n	a11, a15, a14
.LVL71:
	xor	a4, a4, a11
.LVL72:
.LBB172:
.LBB173:
	.loc 2 14 0 discriminator 3
	ssai	20
	src	a4, a4, a4
.LVL73:
.LBE173:
.LBE172:
	.loc 1 52 0 discriminator 3
	add.n	a2, a2, a4
.LVL74:
	xor	a14, a14, a2
.LVL75:
.LBB174:
.LBB175:
	.loc 2 14 0 discriminator 3
	ssai	24
	src	a14, a14, a14
.LVL76:
.LBE175:
.LBE174:
	.loc 1 52 0 discriminator 3
	add.n	a11, a11, a14
.LVL77:
	xor	a4, a4, a11
.LVL78:
.LBB176:
.LBB177:
	.loc 2 14 0 discriminator 3
	ssai	25
	src	a4, a4, a4
.LVL79:
.LBE177:
.LBE176:
	.loc 1 53 0 discriminator 3
	add.n	a7, a7, a13
.LVL80:
	xor	a14, a14, a7
.LVL81:
.LBB178:
.LBB179:
	.loc 2 14 0 discriminator 3
	ssai	16
	src	a14, a14, a14
.LVL82:
.LBE179:
.LBE178:
	.loc 1 53 0 discriminator 3
	add.n	a12, a12, a14
.LVL83:
	xor	a13, a13, a12
.LVL84:
.LBB180:
.LBB181:
	.loc 2 14 0 discriminator 3
	ssai	20
	src	a13, a13, a13
.LVL85:
.LBE181:
.LBE180:
	.loc 1 53 0 discriminator 3
	add.n	a7, a7, a13
.LVL86:
	xor	a14, a14, a7
.LVL87:
.LBB182:
.LBB183:
	.loc 2 14 0 discriminator 3
	ssai	24
	src	a14, a14, a14
.LVL88:
.LBE183:
.LBE182:
	.loc 1 53 0 discriminator 3
	add.n	a12, a12, a14
.LVL89:
	s32i.n	a12, sp, 48
.LVL90:
	xor	a13, a13, a12
.LVL91:
.LBB184:
.LBB185:
	.loc 2 14 0 discriminator 3
	ssai	25
	src	a13, a13, a13
.LVL92:
	s32i.n	a13, sp, 60
.LBE185:
.LBE184:
	.loc 1 54 0 discriminator 3
	add.n	a5, a5, a3
.LVL93:
	xor	a10, a10, a5
.LVL94:
.LBB186:
.LBB187:
	.loc 2 14 0 discriminator 3
	ssai	16
	src	a10, a10, a10
.LVL95:
.LBE187:
.LBE186:
	.loc 1 54 0 discriminator 3
	add.n	a11, a11, a10
.LVL96:
	xor	a3, a3, a11
.LVL97:
.LBB188:
.LBB189:
	.loc 2 14 0 discriminator 3
	ssai	20
	src	a3, a3, a3
.LVL98:
.LBE189:
.LBE188:
	.loc 1 54 0 discriminator 3
	add.n	a5, a5, a3
.LVL99:
	xor	a10, a10, a5
.LVL100:
.LBB190:
.LBB191:
	.loc 2 14 0 discriminator 3
	ssai	24
	src	a10, a10, a10
.LVL101:
.LBE191:
.LBE190:
	.loc 1 54 0 discriminator 3
	add.n	a11, a11, a10
.LVL102:
	s32i.n	a11, sp, 36
.LVL103:
	xor	a3, a3, a11
.LVL104:
.LBB192:
.LBB193:
	.loc 2 14 0 discriminator 3
	ssai	25
	src	a3, a3, a3
.LVL105:
.LBE193:
.LBE192:
	.loc 1 55 0 discriminator 3
	add.n	a6, a6, a4
.LVL106:
	xor	a9, a9, a6
.LVL107:
.LBB194:
.LBB195:
	.loc 2 14 0 discriminator 3
	ssai	16
	src	a9, a9, a9
.LVL108:
.LBE195:
.LBE194:
	.loc 1 55 0 discriminator 3
	l32i.n	a11, sp, 56
.LVL109:
	add.n	a15, a11, a9
.LVL110:
	xor	a4, a4, a15
.LVL111:
.LBB196:
.LBB197:
	.loc 2 14 0 discriminator 3
	ssai	20
	src	a4, a4, a4
.LVL112:
.LBE197:
.LBE196:
	.loc 1 55 0 discriminator 3
	add.n	a6, a6, a4
.LVL113:
	xor	a9, a9, a6
.LVL114:
.LBB198:
.LBB199:
	.loc 2 14 0 discriminator 3
	ssai	24
	src	a9, a9, a9
.LVL115:
.LBE199:
.LBE198:
	.loc 1 55 0 discriminator 3
	add.n	a15, a15, a9
.LVL116:
	xor	a4, a4, a15
.LVL117:
.LBB200:
.LBB201:
	.loc 2 14 0 discriminator 3
	ssai	25
	src	a4, a4, a4
.LVL118:
	s32i	a4, sp, 64
.LBE201:
.LBE200:
	.loc 1 56 0 discriminator 3
	l32i.n	a12, sp, 40
.LVL119:
	add.n	a2, a12, a2
.LVL120:
	xor	a8, a8, a2
.LVL121:
.LBB202:
.LBB203:
	.loc 2 14 0 discriminator 3
	ssai	16
	src	a8, a8, a8
.LVL122:
.LBE203:
.LBE202:
	.loc 1 56 0 discriminator 3
	l32i.n	a13, sp, 44
	add.n	a11, a13, a8
.LVL123:
	xor	a4, a12, a11
.LVL124:
.LBB204:
.LBB205:
	.loc 2 14 0 discriminator 3
	ssai	20
	src	a12, a4, a4
.LBE205:
.LBE204:
	.loc 1 56 0 discriminator 3
	add.n	a2, a2, a12
.LVL125:
	xor	a8, a8, a2
.LVL126:
.LBB206:
.LBB207:
	.loc 2 14 0 discriminator 3
	ssai	24
	src	a8, a8, a8
.LVL127:
.LBE207:
.LBE206:
	.loc 1 56 0 discriminator 3
	add.n	a11, a11, a8
.LVL128:
	xor	a12, a12, a11
.LVL129:
.LBB208:
.LBB209:
	.loc 2 14 0 discriminator 3
	ssai	25
	src	a12, a12, a12
.LVL130:
.LBE209:
.LBE208:
	.loc 1 48 0 discriminator 3
	l32i.n	a4, sp, 32
.LVL131:
	addi.n	a4, a4, 1
	s32i.n	a4, sp, 32
.LVL132:
.L3:
	.loc 1 48 0 is_stmt 0 discriminator 1
	movi.n	a13, 9
	l32i.n	a4, sp, 32
	bge	a13, a4, .L4
.LVL133:
.LBB210:
.LBB211:
	.loc 2 99 0 is_stmt 1
	srli	a4, a7, 8
	l32i.n	a11, sp, 52
.LVL134:
	s8i	a7, a11, 0
.LVL135:
	extui	a3, a7, 16, 16
.LVL136:
	s8i	a4, a11, 1
	extui	a7, a7, 24, 8
.LVL137:
	s8i	a3, a11, 2
	s8i	a7, a11, 3
.LVL138:
.LBE211:
.LBE210:
.LBB212:
.LBB213:
	srli	a7, a5, 8
	s8i	a5, a11, 4
.LVL139:
	extui	a4, a5, 16, 16
	s8i	a7, a11, 5
	extui	a5, a5, 24, 8
.LVL140:
	s8i	a4, a11, 6
	s8i	a5, a11, 7
.LVL141:
.LBE213:
.LBE212:
.LBB214:
.LBB215:
	srli	a5, a6, 8
	s8i	a6, a11, 8
.LVL142:
	extui	a4, a6, 16, 16
	s8i	a5, a11, 9
	extui	a6, a6, 24, 8
.LVL143:
	s8i	a4, a11, 10
	s8i	a6, a11, 11
.LVL144:
.LBE215:
.LBE214:
.LBB216:
.LBB217:
	srli	a5, a2, 8
	s8i	a2, a11, 12
.LVL145:
	extui	a4, a2, 16, 16
	s8i	a5, a11, 13
	extui	a2, a2, 24, 8
.LVL146:
	s8i	a4, a11, 14
	s8i	a2, a11, 15
.LVL147:
.LBE217:
.LBE216:
.LBB218:
.LBB219:
	srli	a4, a10, 8
	s8i	a10, a11, 16
.LVL148:
	extui	a3, a10, 16, 16
	s8i	a4, a11, 17
	extui	a10, a10, 24, 8
.LVL149:
	s8i	a3, a11, 18
	s8i	a10, a11, 19
.LVL150:
.LBE219:
.LBE218:
.LBB220:
.LBB221:
	srli	a4, a9, 8
	s8i	a9, a11, 20
.LVL151:
	extui	a3, a9, 16, 16
	s8i	a4, a11, 21
	extui	a9, a9, 24, 8
.LVL152:
	s8i	a3, a11, 22
	s8i	a9, a11, 23
.LVL153:
.LBE221:
.LBE220:
.LBB222:
.LBB223:
	srli	a4, a8, 8
	s8i	a8, a11, 24
.LVL154:
	extui	a3, a8, 16, 16
	s8i	a4, a11, 25
	extui	a8, a8, 24, 8
.LVL155:
	s8i	a3, a11, 26
	s8i	a8, a11, 27
.LVL156:
.LBE223:
.LBE222:
.LBB224:
.LBB225:
	srli	a4, a14, 8
	s8i	a14, a11, 28
.LVL157:
	extui	a3, a14, 16, 16
	s8i	a4, a11, 29
	extui	a14, a14, 24, 8
.LVL158:
	s8i	a3, a11, 30
	s8i	a14, a11, 31
.LBE225:
.LBE224:
	.loc 1 69 0
	movi.n	a2, 0
	retw.n
.LFE12:
	.size	crypto_core_hchacha20, .-crypto_core_hchacha20
	.section	.text.crypto_core_hchacha20_outputbytes,"ax",@progbits
	.align	4
	.global	crypto_core_hchacha20_outputbytes
	.type	crypto_core_hchacha20_outputbytes, @function
crypto_core_hchacha20_outputbytes:
.LFB13:
	.loc 1 73 0
	entry	sp, 32
.LCFI1:
	.loc 1 75 0
	movi.n	a2, 0x20
	retw.n
.LFE13:
	.size	crypto_core_hchacha20_outputbytes, .-crypto_core_hchacha20_outputbytes
	.section	.text.crypto_core_hchacha20_inputbytes,"ax",@progbits
	.align	4
	.global	crypto_core_hchacha20_inputbytes
	.type	crypto_core_hchacha20_inputbytes, @function
crypto_core_hchacha20_inputbytes:
.LFB14:
	.loc 1 79 0
	entry	sp, 32
.LCFI2:
	.loc 1 81 0
	movi.n	a2, 0x10
	retw.n
.LFE14:
	.size	crypto_core_hchacha20_inputbytes, .-crypto_core_hchacha20_inputbytes
	.section	.text.crypto_core_hchacha20_keybytes,"ax",@progbits
	.align	4
	.global	crypto_core_hchacha20_keybytes
	.type	crypto_core_hchacha20_keybytes, @function
crypto_core_hchacha20_keybytes:
.LFB15:
	.loc 1 85 0
	entry	sp, 32
.LCFI3:
	.loc 1 87 0
	movi.n	a2, 0x20
	retw.n
.LFE15:
	.size	crypto_core_hchacha20_keybytes, .-crypto_core_hchacha20_keybytes
	.section	.text.crypto_core_hchacha20_constbytes,"ax",@progbits
	.align	4
	.global	crypto_core_hchacha20_constbytes
	.type	crypto_core_hchacha20_constbytes, @function
crypto_core_hchacha20_constbytes:
.LFB16:
	.loc 1 91 0
	entry	sp, 32
.LCFI4:
	.loc 1 93 0
	movi.n	a2, 0x10
	retw.n
.LFE16:
	.size	crypto_core_hchacha20_constbytes, .-crypto_core_hchacha20_constbytes
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
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI0-.LFB12
	.byte	0xe
	.uleb128 0x70
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI1-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI2-.LFB14
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
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI4-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
	.text
.Letext0:
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xbd6
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0xc
	.4byte	.LASF23
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x3
	.byte	0x12
	.4byte	0x33
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
	.byte	0x3
	.byte	0x1a
	.4byte	0x5a
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
	.byte	0x4
	.byte	0x15
	.4byte	0x28
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0x2d
	.4byte	0x4f
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x5
	.byte	0xd8
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x4
	.4byte	0x33
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x2
	.byte	0x4f
	.4byte	0x7a
	.byte	0x3
	.4byte	0xd7
	.uleb128 0x7
	.string	"src"
	.byte	0x2
	.byte	0x4f
	.4byte	0xd7
	.uleb128 0x8
	.string	"w"
	.byte	0x2
	.byte	0x52
	.4byte	0x7a
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xdd
	.uleb128 0x9
	.4byte	0x6f
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x2
	.byte	0xc
	.4byte	0x7a
	.byte	0x3
	.4byte	0x105
	.uleb128 0x7
	.string	"x"
	.byte	0x2
	.byte	0xc
	.4byte	0x105
	.uleb128 0x7
	.string	"b"
	.byte	0x2
	.byte	0xc
	.4byte	0x10a
	.byte	0
	.uleb128 0x9
	.4byte	0x7a
	.uleb128 0x9
	.4byte	0x48
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x2
	.byte	0x60
	.byte	0x3
	.4byte	0x130
	.uleb128 0x7
	.string	"dst"
	.byte	0x2
	.byte	0x60
	.4byte	0x130
	.uleb128 0x7
	.string	"w"
	.byte	0x2
	.byte	0x60
	.4byte	0x7a
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x6f
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x1
	.byte	0x11
	.4byte	0x48
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb7a
	.uleb128 0xc
	.string	"out"
	.byte	0x1
	.byte	0x11
	.4byte	0xa5
	.4byte	.LLST0
	.uleb128 0xc
	.string	"in"
	.byte	0x1
	.byte	0x11
	.4byte	0xb7a
	.4byte	.LLST1
	.uleb128 0xc
	.string	"k"
	.byte	0x1
	.byte	0x12
	.4byte	0xb7a
	.4byte	.LLST2
	.uleb128 0xc
	.string	"c"
	.byte	0x1
	.byte	0x12
	.4byte	0xb7a
	.4byte	.LLST3
	.uleb128 0xd
	.string	"i"
	.byte	0x1
	.byte	0x14
	.4byte	0x48
	.4byte	.LLST4
	.uleb128 0xd
	.string	"x0"
	.byte	0x1
	.byte	0x15
	.4byte	0x7a
	.4byte	.LLST5
	.uleb128 0xd
	.string	"x1"
	.byte	0x1
	.byte	0x15
	.4byte	0x7a
	.4byte	.LLST6
	.uleb128 0xd
	.string	"x2"
	.byte	0x1
	.byte	0x15
	.4byte	0x7a
	.4byte	.LLST7
	.uleb128 0xd
	.string	"x3"
	.byte	0x1
	.byte	0x15
	.4byte	0x7a
	.4byte	.LLST8
	.uleb128 0xd
	.string	"x4"
	.byte	0x1
	.byte	0x15
	.4byte	0x7a
	.4byte	.LLST9
	.uleb128 0xd
	.string	"x5"
	.byte	0x1
	.byte	0x15
	.4byte	0x7a
	.4byte	.LLST10
	.uleb128 0xd
	.string	"x6"
	.byte	0x1
	.byte	0x15
	.4byte	0x7a
	.4byte	.LLST11
	.uleb128 0xd
	.string	"x7"
	.byte	0x1
	.byte	0x15
	.4byte	0x7a
	.4byte	.LLST12
	.uleb128 0xd
	.string	"x8"
	.byte	0x1
	.byte	0x16
	.4byte	0x7a
	.4byte	.LLST13
	.uleb128 0xd
	.string	"x9"
	.byte	0x1
	.byte	0x16
	.4byte	0x7a
	.4byte	.LLST14
	.uleb128 0xd
	.string	"x10"
	.byte	0x1
	.byte	0x16
	.4byte	0x7a
	.4byte	.LLST15
	.uleb128 0xd
	.string	"x11"
	.byte	0x1
	.byte	0x16
	.4byte	0x7a
	.4byte	.LLST16
	.uleb128 0xd
	.string	"x12"
	.byte	0x1
	.byte	0x16
	.4byte	0x7a
	.4byte	.LLST17
	.uleb128 0xd
	.string	"x13"
	.byte	0x1
	.byte	0x16
	.4byte	0x7a
	.4byte	.LLST18
	.uleb128 0xd
	.string	"x14"
	.byte	0x1
	.byte	0x16
	.4byte	0x7a
	.4byte	.LLST19
	.uleb128 0xd
	.string	"x15"
	.byte	0x1
	.byte	0x16
	.4byte	0x7a
	.4byte	.LLST20
	.uleb128 0xe
	.4byte	0xb2
	.4byte	.LBB114
	.4byte	.LBE114-.LBB114
	.byte	0x1
	.byte	0x1e
	.4byte	0x2a9
	.uleb128 0xf
	.4byte	0xc2
	.4byte	.LLST21
	.uleb128 0x10
	.4byte	.LBB115
	.4byte	.LBE115-.LBB115
	.uleb128 0x11
	.4byte	0xcd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0xb2
	.4byte	.LBB116
	.4byte	.LBE116-.LBB116
	.byte	0x1
	.byte	0x1f
	.4byte	0x2d9
	.uleb128 0xf
	.4byte	0xc2
	.4byte	.LLST22
	.uleb128 0x10
	.4byte	.LBB117
	.4byte	.LBE117-.LBB117
	.uleb128 0x11
	.4byte	0xcd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0xb2
	.4byte	.LBB118
	.4byte	.LBE118-.LBB118
	.byte	0x1
	.byte	0x20
	.4byte	0x309
	.uleb128 0xf
	.4byte	0xc2
	.4byte	.LLST23
	.uleb128 0x10
	.4byte	.LBB119
	.4byte	.LBE119-.LBB119
	.uleb128 0x11
	.4byte	0xcd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0xb2
	.4byte	.LBB120
	.4byte	.LBE120-.LBB120
	.byte	0x1
	.byte	0x21
	.4byte	0x339
	.uleb128 0xf
	.4byte	0xc2
	.4byte	.LLST24
	.uleb128 0x10
	.4byte	.LBB121
	.4byte	.LBE121-.LBB121
	.uleb128 0x11
	.4byte	0xcd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0xb2
	.4byte	.LBB122
	.4byte	.LBE122-.LBB122
	.byte	0x1
	.byte	0x23
	.4byte	0x369
	.uleb128 0xf
	.4byte	0xc2
	.4byte	.LLST25
	.uleb128 0x10
	.4byte	.LBB123
	.4byte	.LBE123-.LBB123
	.uleb128 0x11
	.4byte	0xcd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0xb2
	.4byte	.LBB124
	.4byte	.LBE124-.LBB124
	.byte	0x1
	.byte	0x24
	.4byte	0x399
	.uleb128 0xf
	.4byte	0xc2
	.4byte	.LLST26
	.uleb128 0x10
	.4byte	.LBB125
	.4byte	.LBE125-.LBB125
	.uleb128 0x11
	.4byte	0xcd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0xb2
	.4byte	.LBB126
	.4byte	.LBE126-.LBB126
	.byte	0x1
	.byte	0x25
	.4byte	0x3c9
	.uleb128 0xf
	.4byte	0xc2
	.4byte	.LLST27
	.uleb128 0x10
	.4byte	.LBB127
	.4byte	.LBE127-.LBB127
	.uleb128 0x11
	.4byte	0xcd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0xb2
	.4byte	.LBB128
	.4byte	.LBE128-.LBB128
	.byte	0x1
	.byte	0x26
	.4byte	0x3f9
	.uleb128 0xf
	.4byte	0xc2
	.4byte	.LLST28
	.uleb128 0x10
	.4byte	.LBB129
	.4byte	.LBE129-.LBB129
	.uleb128 0x11
	.4byte	0xcd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0xb2
	.4byte	.LBB130
	.4byte	.LBE130-.LBB130
	.byte	0x1
	.byte	0x27
	.4byte	0x429
	.uleb128 0xf
	.4byte	0xc2
	.4byte	.LLST29
	.uleb128 0x10
	.4byte	.LBB131
	.4byte	.LBE131-.LBB131
	.uleb128 0x11
	.4byte	0xcd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0xb2
	.4byte	.LBB132
	.4byte	.LBE132-.LBB132
	.byte	0x1
	.byte	0x28
	.4byte	0x459
	.uleb128 0xf
	.4byte	0xc2
	.4byte	.LLST30
	.uleb128 0x10
	.4byte	.LBB133
	.4byte	.LBE133-.LBB133
	.uleb128 0x11
	.4byte	0xcd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0xb2
	.4byte	.LBB134
	.4byte	.LBE134-.LBB134
	.byte	0x1
	.byte	0x29
	.4byte	0x489
	.uleb128 0xf
	.4byte	0xc2
	.4byte	.LLST31
	.uleb128 0x10
	.4byte	.LBB135
	.4byte	.LBE135-.LBB135
	.uleb128 0x11
	.4byte	0xcd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0xb2
	.4byte	.LBB136
	.4byte	.LBE136-.LBB136
	.byte	0x1
	.byte	0x2a
	.4byte	0x4b9
	.uleb128 0xf
	.4byte	0xc2
	.4byte	.LLST32
	.uleb128 0x10
	.4byte	.LBB137
	.4byte	.LBE137-.LBB137
	.uleb128 0x11
	.4byte	0xcd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0xb2
	.4byte	.LBB138
	.4byte	.LBE138-.LBB138
	.byte	0x1
	.byte	0x2b
	.4byte	0x4e9
	.uleb128 0xf
	.4byte	0xc2
	.4byte	.LLST33
	.uleb128 0x10
	.4byte	.LBB139
	.4byte	.LBE139-.LBB139
	.uleb128 0x11
	.4byte	0xcd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0xb2
	.4byte	.LBB140
	.4byte	.LBE140-.LBB140
	.byte	0x1
	.byte	0x2c
	.4byte	0x519
	.uleb128 0xf
	.4byte	0xc2
	.4byte	.LLST34
	.uleb128 0x10
	.4byte	.LBB141
	.4byte	.LBE141-.LBB141
	.uleb128 0x11
	.4byte	0xcd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0xb2
	.4byte	.LBB142
	.4byte	.LBE142-.LBB142
	.byte	0x1
	.byte	0x2d
	.4byte	0x549
	.uleb128 0xf
	.4byte	0xc2
	.4byte	.LLST35
	.uleb128 0x10
	.4byte	.LBB143
	.4byte	.LBE143-.LBB143
	.uleb128 0x11
	.4byte	0xcd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0xb2
	.4byte	.LBB144
	.4byte	.LBE144-.LBB144
	.byte	0x1
	.byte	0x2e
	.4byte	0x579
	.uleb128 0xf
	.4byte	0xc2
	.4byte	.LLST36
	.uleb128 0x10
	.4byte	.LBB145
	.4byte	.LBE145-.LBB145
	.uleb128 0x11
	.4byte	0xcd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0xe2
	.4byte	.LBB146
	.4byte	.LBE146-.LBB146
	.byte	0x1
	.byte	0x31
	.4byte	0x59f
	.uleb128 0xf
	.4byte	0xfb
	.4byte	.LLST37
	.uleb128 0xf
	.4byte	0xf2
	.4byte	.LLST38
	.byte	0
	.uleb128 0xe
	.4byte	0xe2
	.4byte	.LBB148
	.4byte	.LBE148-.LBB148
	.byte	0x1
	.byte	0x31
	.4byte	0x5c5
	.uleb128 0xf
	.4byte	0xfb
	.4byte	.LLST39
	.uleb128 0xf
	.4byte	0xf2
	.4byte	.LLST40
	.byte	0
	.uleb128 0xe
	.4byte	0xe2
	.4byte	.LBB150
	.4byte	.LBE150-.LBB150
	.byte	0x1
	.byte	0x31
	.4byte	0x5eb
	.uleb128 0xf
	.4byte	0xfb
	.4byte	.LLST41
	.uleb128 0xf
	.4byte	0xf2
	.4byte	.LLST42
	.byte	0
	.uleb128 0xe
	.4byte	0xe2
	.4byte	.LBB152
	.4byte	.LBE152-.LBB152
	.byte	0x1
	.byte	0x31
	.4byte	0x611
	.uleb128 0xf
	.4byte	0xfb
	.4byte	.LLST43
	.uleb128 0xf
	.4byte	0xf2
	.4byte	.LLST44
	.byte	0
	.uleb128 0xe
	.4byte	0xe2
	.4byte	.LBB154
	.4byte	.LBE154-.LBB154
	.byte	0x1
	.byte	0x32
	.4byte	0x637
	.uleb128 0xf
	.4byte	0xfb
	.4byte	.LLST45
	.uleb128 0xf
	.4byte	0xf2
	.4byte	.LLST46
	.byte	0
	.uleb128 0xe
	.4byte	0xe2
	.4byte	.LBB156
	.4byte	.LBE156-.LBB156
	.byte	0x1
	.byte	0x32
	.4byte	0x65d
	.uleb128 0xf
	.4byte	0xfb
	.4byte	.LLST47
	.uleb128 0xf
	.4byte	0xf2
	.4byte	.LLST48
	.byte	0
	.uleb128 0xe
	.4byte	0xe2
	.4byte	.LBB158
	.4byte	.LBE158-.LBB158
	.byte	0x1
	.byte	0x32
	.4byte	0x683
	.uleb128 0xf
	.4byte	0xfb
	.4byte	.LLST49
	.uleb128 0xf
	.4byte	0xf2
	.4byte	.LLST50
	.byte	0
	.uleb128 0xe
	.4byte	0xe2
	.4byte	.LBB160
	.4byte	.LBE160-.LBB160
	.byte	0x1
	.byte	0x32
	.4byte	0x6a9
	.uleb128 0xf
	.4byte	0xfb
	.4byte	.LLST51
	.uleb128 0xf
	.4byte	0xf2
	.4byte	.LLST52
	.byte	0
	.uleb128 0xe
	.4byte	0xe2
	.4byte	.LBB162
	.4byte	.LBE162-.LBB162
	.byte	0x1
	.byte	0x33
	.4byte	0x6cf
	.uleb128 0xf
	.4byte	0xfb
	.4byte	.LLST53
	.uleb128 0xf
	.4byte	0xf2
	.4byte	.LLST54
	.byte	0
	.uleb128 0xe
	.4byte	0xe2
	.4byte	.LBB164
	.4byte	.LBE164-.LBB164
	.byte	0x1
	.byte	0x33
	.4byte	0x6f5
	.uleb128 0xf
	.4byte	0xfb
	.4byte	.LLST55
	.uleb128 0xf
	.4byte	0xf2
	.4byte	.LLST56
	.byte	0
	.uleb128 0xe
	.4byte	0xe2
	.4byte	.LBB166
	.4byte	.LBE166-.LBB166
	.byte	0x1
	.byte	0x33
	.4byte	0x71b
	.uleb128 0xf
	.4byte	0xfb
	.4byte	.LLST57
	.uleb128 0xf
	.4byte	0xf2
	.4byte	.LLST58
	.byte	0
	.uleb128 0xe
	.4byte	0xe2
	.4byte	.LBB168
	.4byte	.LBE168-.LBB168
	.byte	0x1
	.byte	0x33
	.4byte	0x741
	.uleb128 0xf
	.4byte	0xfb
	.4byte	.LLST59
	.uleb128 0xf
	.4byte	0xf2
	.4byte	.LLST60
	.byte	0
	.uleb128 0xe
	.4byte	0xe2
	.4byte	.LBB170
	.4byte	.LBE170-.LBB170
	.byte	0x1
	.byte	0x34
	.4byte	0x767
	.uleb128 0xf
	.4byte	0xfb
	.4byte	.LLST61
	.uleb128 0xf
	.4byte	0xf2
	.4byte	.LLST62
	.byte	0
	.uleb128 0xe
	.4byte	0xe2
	.4byte	.LBB172
	.4byte	.LBE172-.LBB172
	.byte	0x1
	.byte	0x34
	.4byte	0x78d
	.uleb128 0xf
	.4byte	0xfb
	.4byte	.LLST63
	.uleb128 0xf
	.4byte	0xf2
	.4byte	.LLST64
	.byte	0
	.uleb128 0xe
	.4byte	0xe2
	.4byte	.LBB174
	.4byte	.LBE174-.LBB174
	.byte	0x1
	.byte	0x34
	.4byte	0x7b3
	.uleb128 0xf
	.4byte	0xfb
	.4byte	.LLST65
	.uleb128 0xf
	.4byte	0xf2
	.4byte	.LLST66
	.byte	0
	.uleb128 0xe
	.4byte	0xe2
	.4byte	.LBB176
	.4byte	.LBE176-.LBB176
	.byte	0x1
	.byte	0x34
	.4byte	0x7d9
	.uleb128 0xf
	.4byte	0xfb
	.4byte	.LLST67
	.uleb128 0xf
	.4byte	0xf2
	.4byte	.LLST68
	.byte	0
	.uleb128 0xe
	.4byte	0xe2
	.4byte	.LBB178
	.4byte	.LBE178-.LBB178
	.byte	0x1
	.byte	0x35
	.4byte	0x7ff
	.uleb128 0xf
	.4byte	0xfb
	.4byte	.LLST69
	.uleb128 0xf
	.4byte	0xf2
	.4byte	.LLST70
	.byte	0
	.uleb128 0xe
	.4byte	0xe2
	.4byte	.LBB180
	.4byte	.LBE180-.LBB180
	.byte	0x1
	.byte	0x35
	.4byte	0x825
	.uleb128 0xf
	.4byte	0xfb
	.4byte	.LLST71
	.uleb128 0xf
	.4byte	0xf2
	.4byte	.LLST72
	.byte	0
	.uleb128 0xe
	.4byte	0xe2
	.4byte	.LBB182
	.4byte	.LBE182-.LBB182
	.byte	0x1
	.byte	0x35
	.4byte	0x84b
	.uleb128 0xf
	.4byte	0xfb
	.4byte	.LLST73
	.uleb128 0xf
	.4byte	0xf2
	.4byte	.LLST74
	.byte	0
	.uleb128 0xe
	.4byte	0xe2
	.4byte	.LBB184
	.4byte	.LBE184-.LBB184
	.byte	0x1
	.byte	0x35
	.4byte	0x871
	.uleb128 0xf
	.4byte	0xfb
	.4byte	.LLST75
	.uleb128 0xf
	.4byte	0xf2
	.4byte	.LLST76
	.byte	0
	.uleb128 0xe
	.4byte	0xe2
	.4byte	.LBB186
	.4byte	.LBE186-.LBB186
	.byte	0x1
	.byte	0x36
	.4byte	0x897
	.uleb128 0xf
	.4byte	0xfb
	.4byte	.LLST77
	.uleb128 0xf
	.4byte	0xf2
	.4byte	.LLST78
	.byte	0
	.uleb128 0xe
	.4byte	0xe2
	.4byte	.LBB188
	.4byte	.LBE188-.LBB188
	.byte	0x1
	.byte	0x36
	.4byte	0x8bd
	.uleb128 0xf
	.4byte	0xfb
	.4byte	.LLST79
	.uleb128 0xf
	.4byte	0xf2
	.4byte	.LLST80
	.byte	0
	.uleb128 0xe
	.4byte	0xe2
	.4byte	.LBB190
	.4byte	.LBE190-.LBB190
	.byte	0x1
	.byte	0x36
	.4byte	0x8e3
	.uleb128 0xf
	.4byte	0xfb
	.4byte	.LLST81
	.uleb128 0xf
	.4byte	0xf2
	.4byte	.LLST82
	.byte	0
	.uleb128 0xe
	.4byte	0xe2
	.4byte	.LBB192
	.4byte	.LBE192-.LBB192
	.byte	0x1
	.byte	0x36
	.4byte	0x909
	.uleb128 0xf
	.4byte	0xfb
	.4byte	.LLST83
	.uleb128 0xf
	.4byte	0xf2
	.4byte	.LLST84
	.byte	0
	.uleb128 0xe
	.4byte	0xe2
	.4byte	.LBB194
	.4byte	.LBE194-.LBB194
	.byte	0x1
	.byte	0x37
	.4byte	0x92f
	.uleb128 0xf
	.4byte	0xfb
	.4byte	.LLST85
	.uleb128 0xf
	.4byte	0xf2
	.4byte	.LLST86
	.byte	0
	.uleb128 0xe
	.4byte	0xe2
	.4byte	.LBB196
	.4byte	.LBE196-.LBB196
	.byte	0x1
	.byte	0x37
	.4byte	0x955
	.uleb128 0xf
	.4byte	0xfb
	.4byte	.LLST87
	.uleb128 0xf
	.4byte	0xf2
	.4byte	.LLST88
	.byte	0
	.uleb128 0xe
	.4byte	0xe2
	.4byte	.LBB198
	.4byte	.LBE198-.LBB198
	.byte	0x1
	.byte	0x37
	.4byte	0x97b
	.uleb128 0xf
	.4byte	0xfb
	.4byte	.LLST89
	.uleb128 0xf
	.4byte	0xf2
	.4byte	.LLST90
	.byte	0
	.uleb128 0xe
	.4byte	0xe2
	.4byte	.LBB200
	.4byte	.LBE200-.LBB200
	.byte	0x1
	.byte	0x37
	.4byte	0x9a1
	.uleb128 0xf
	.4byte	0xfb
	.4byte	.LLST91
	.uleb128 0xf
	.4byte	0xf2
	.4byte	.LLST92
	.byte	0
	.uleb128 0xe
	.4byte	0xe2
	.4byte	.LBB202
	.4byte	.LBE202-.LBB202
	.byte	0x1
	.byte	0x38
	.4byte	0x9c7
	.uleb128 0xf
	.4byte	0xfb
	.4byte	.LLST93
	.uleb128 0xf
	.4byte	0xf2
	.4byte	.LLST94
	.byte	0
	.uleb128 0xe
	.4byte	0xe2
	.4byte	.LBB204
	.4byte	.LBE204-.LBB204
	.byte	0x1
	.byte	0x38
	.4byte	0x9ed
	.uleb128 0xf
	.4byte	0xfb
	.4byte	.LLST95
	.uleb128 0xf
	.4byte	0xf2
	.4byte	.LLST96
	.byte	0
	.uleb128 0xe
	.4byte	0xe2
	.4byte	.LBB206
	.4byte	.LBE206-.LBB206
	.byte	0x1
	.byte	0x38
	.4byte	0xa13
	.uleb128 0xf
	.4byte	0xfb
	.4byte	.LLST97
	.uleb128 0xf
	.4byte	0xf2
	.4byte	.LLST98
	.byte	0
	.uleb128 0xe
	.4byte	0xe2
	.4byte	.LBB208
	.4byte	.LBE208-.LBB208
	.byte	0x1
	.byte	0x38
	.4byte	0xa39
	.uleb128 0xf
	.4byte	0xfb
	.4byte	.LLST99
	.uleb128 0xf
	.4byte	0xf2
	.4byte	.LLST100
	.byte	0
	.uleb128 0xe
	.4byte	0x10f
	.4byte	.LBB210
	.4byte	.LBE210-.LBB210
	.byte	0x1
	.byte	0x3b
	.4byte	0xa5e
	.uleb128 0xf
	.4byte	0x126
	.4byte	.LLST101
	.uleb128 0x12
	.4byte	0x11b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0xe
	.4byte	0x10f
	.4byte	.LBB212
	.4byte	.LBE212-.LBB212
	.byte	0x1
	.byte	0x3c
	.4byte	0xa87
	.uleb128 0xf
	.4byte	0x126
	.4byte	.LLST102
	.uleb128 0x12
	.4byte	0x11b
	.uleb128 0x6
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.byte	0x9f
	.byte	0
	.uleb128 0xe
	.4byte	0x10f
	.4byte	.LBB214
	.4byte	.LBE214-.LBB214
	.byte	0x1
	.byte	0x3d
	.4byte	0xab0
	.uleb128 0xf
	.4byte	0x126
	.4byte	.LLST103
	.uleb128 0x12
	.4byte	0x11b
	.uleb128 0x6
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.byte	0
	.uleb128 0xe
	.4byte	0x10f
	.4byte	.LBB216
	.4byte	.LBE216-.LBB216
	.byte	0x1
	.byte	0x3e
	.4byte	0xad9
	.uleb128 0xf
	.4byte	0x126
	.4byte	.LLST104
	.uleb128 0x12
	.4byte	0x11b
	.uleb128 0x6
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0x23
	.uleb128 0xc
	.byte	0x9f
	.byte	0
	.uleb128 0xe
	.4byte	0x10f
	.4byte	.LBB218
	.4byte	.LBE218-.LBB218
	.byte	0x1
	.byte	0x3f
	.4byte	0xb02
	.uleb128 0xf
	.4byte	0x126
	.4byte	.LLST105
	.uleb128 0x12
	.4byte	0x11b
	.uleb128 0x6
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0x23
	.uleb128 0x10
	.byte	0x9f
	.byte	0
	.uleb128 0xe
	.4byte	0x10f
	.4byte	.LBB220
	.4byte	.LBE220-.LBB220
	.byte	0x1
	.byte	0x40
	.4byte	0xb2b
	.uleb128 0xf
	.4byte	0x126
	.4byte	.LLST106
	.uleb128 0x12
	.4byte	0x11b
	.uleb128 0x6
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0x23
	.uleb128 0x14
	.byte	0x9f
	.byte	0
	.uleb128 0xe
	.4byte	0x10f
	.4byte	.LBB222
	.4byte	.LBE222-.LBB222
	.byte	0x1
	.byte	0x41
	.4byte	0xb54
	.uleb128 0xf
	.4byte	0x126
	.4byte	.LLST107
	.uleb128 0x12
	.4byte	0x11b
	.uleb128 0x6
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0x23
	.uleb128 0x18
	.byte	0x9f
	.byte	0
	.uleb128 0x13
	.4byte	0x10f
	.4byte	.LBB224
	.4byte	.LBE224-.LBB224
	.byte	0x1
	.byte	0x42
	.uleb128 0xf
	.4byte	0x126
	.4byte	.LLST108
	.uleb128 0x12
	.4byte	0x11b
	.uleb128 0x6
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0x23
	.uleb128 0x1c
	.byte	0x9f
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb80
	.uleb128 0x9
	.4byte	0x33
	.uleb128 0x14
	.4byte	.LASF18
	.byte	0x1
	.byte	0x48
	.4byte	0x85
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.4byte	.LASF19
	.byte	0x1
	.byte	0x4e
	.4byte	0x85
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.4byte	.LASF20
	.byte	0x1
	.byte	0x54
	.4byte	0x85
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.4byte	.LASF21
	.byte	0x1
	.byte	0x5a
	.4byte	0x85
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LFE12
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x3
	.byte	0x7e
	.sleb128 -12
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x3
	.byte	0x78
	.sleb128 -28
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL3
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x3
	.byte	0x78
	.sleb128 -12
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL10
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL67
	.4byte	.LFE12
	.2byte	0x3
	.byte	0x91
	.sleb128 -80
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL11
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL11
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL11
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL11
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL27
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL132
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL27
	.4byte	.LVL46
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	.LVL132
	.4byte	.LFE12
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL27
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL132
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL27
	.4byte	.LVL73
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL132
	.4byte	.LFE12
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL27
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL38
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL57
	.4byte	.LVL110
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	.LVL110
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL27
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL51
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL71
	.4byte	.LVL123
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	.LVL123
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL27
	.4byte	.LVL58
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL58
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL90
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL119
	.4byte	.LFE12
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL27
	.4byte	.LVL71
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	.LVL71
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL103
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL109
	.4byte	.LFE12
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL132
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL27
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL132
	.4byte	.LVL152
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL27
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL132
	.4byte	.LVL155
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL27
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL132
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL3
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x3
	.byte	0x78
	.sleb128 -12
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x3
	.byte	0x72
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x3
	.byte	0x78
	.sleb128 -8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x3
	.byte	0x72
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x3
	.byte	0x78
	.sleb128 -4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL11
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x3
	.byte	0x78
	.sleb128 -28
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL12
	.4byte	.LVL19
	.2byte	0x3
	.byte	0x74
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x3
	.byte	0x78
	.sleb128 -24
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LFE12
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x23
	.uleb128 0x4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL13
	.4byte	.LVL19
	.2byte	0x3
	.byte	0x74
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x3
	.byte	0x78
	.sleb128 -20
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LFE12
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL14
	.4byte	.LVL19
	.2byte	0x3
	.byte	0x74
	.sleb128 12
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x3
	.byte	0x78
	.sleb128 -16
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LFE12
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x23
	.uleb128 0xc
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL15
	.4byte	.LVL19
	.2byte	0x3
	.byte	0x74
	.sleb128 16
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x3
	.byte	0x78
	.sleb128 -12
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LFE12
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x23
	.uleb128 0x10
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x3
	.byte	0x74
	.sleb128 20
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x3
	.byte	0x78
	.sleb128 -8
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LFE12
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x23
	.uleb128 0x14
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x3
	.byte	0x74
	.sleb128 24
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x3
	.byte	0x78
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LFE12
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x23
	.uleb128 0x18
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL21
	.4byte	.LFE12
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x23
	.uleb128 0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL20
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x3
	.byte	0x7e
	.sleb128 -12
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0x3
	.byte	0x73
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x3
	.byte	0x7e
	.sleb128 -8
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LFE12
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x23
	.uleb128 0x4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x3
	.byte	0x73
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x3
	.byte	0x7e
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LFE12
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL26
	.4byte	.LFE12
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x23
	.uleb128 0xc
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL29
	.4byte	.LVL132
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL32
	.4byte	.LVL132
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL35
	.4byte	.LVL132
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL39
	.4byte	.LVL132
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL42
	.4byte	.LVL132
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL45
	.4byte	.LVL132
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL46
	.4byte	.LVL50
	.2byte	0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL48
	.4byte	.LVL132
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL52
	.4byte	.LVL132
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL55
	.4byte	.LVL132
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL59
	.4byte	.LVL132
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL62
	.4byte	.LVL132
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL65
	.4byte	.LVL132
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL69
	.4byte	.LVL132
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL72
	.4byte	.LVL132
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL73
	.4byte	.LVL77
	.2byte	0x7
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x7b
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL75
	.4byte	.LVL132
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL78
	.4byte	.LVL132
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL81
	.4byte	.LVL132
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL84
	.4byte	.LVL132
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL87
	.4byte	.LVL132
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL91
	.4byte	.LVL132
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL94
	.4byte	.LVL132
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LVL97
	.4byte	.LVL132
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL100
	.4byte	.LVL132
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST82:
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST83:
	.4byte	.LVL104
	.4byte	.LVL132
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST84:
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST85:
	.4byte	.LVL107
	.4byte	.LVL132
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST86:
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST87:
	.4byte	.LVL111
	.4byte	.LVL132
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST88:
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST89:
	.4byte	.LVL114
	.4byte	.LVL132
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST90:
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST91:
	.4byte	.LVL117
	.4byte	.LVL132
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST92:
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST93:
	.4byte	.LVL121
	.4byte	.LVL132
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST94:
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST95:
	.4byte	.LVL124
	.4byte	.LVL132
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST96:
	.4byte	.LVL124
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST97:
	.4byte	.LVL126
	.4byte	.LVL132
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST98:
	.4byte	.LVL126
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST99:
	.4byte	.LVL129
	.4byte	.LVL132
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST100:
	.4byte	.LVL129
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x10
	.byte	0x74
	.sleb128 0
	.byte	0x3c
	.byte	0x14
	.byte	0x14
	.byte	0x24
	.byte	0x17
	.byte	0x1f
	.byte	0x23
	.uleb128 0x20
	.byte	0x25
	.byte	0x21
	.byte	0x7b
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST101:
	.4byte	.LVL133
	.4byte	.LVL135
	.2byte	0x3
	.byte	0x91
	.sleb128 -112
	.4byte	0
	.4byte	0
.LLST102:
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x3
	.byte	0x91
	.sleb128 -108
	.4byte	0
	.4byte	0
.LLST103:
	.4byte	.LVL141
	.4byte	.LVL142
	.2byte	0x3
	.byte	0x91
	.sleb128 -104
	.4byte	0
	.4byte	0
.LLST104:
	.4byte	.LVL144
	.4byte	.LVL145
	.2byte	0x3
	.byte	0x91
	.sleb128 -100
	.4byte	0
	.4byte	0
.LLST105:
	.4byte	.LVL147
	.4byte	.LVL148
	.2byte	0x3
	.byte	0x91
	.sleb128 -96
	.4byte	0
	.4byte	0
.LLST106:
	.4byte	.LVL150
	.4byte	.LVL151
	.2byte	0x3
	.byte	0x91
	.sleb128 -92
	.4byte	0
	.4byte	0
.LLST107:
	.4byte	.LVL153
	.4byte	.LVL154
	.2byte	0x3
	.byte	0x91
	.sleb128 -88
	.4byte	0
	.4byte	0
.LLST108:
	.4byte	.LVL156
	.4byte	.LVL157
	.2byte	0x3
	.byte	0x91
	.sleb128 -84
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
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF4:
	.string	"__uint8_t"
.LASF11:
	.string	"size_t"
.LASF20:
	.string	"crypto_core_hchacha20_keybytes"
.LASF18:
	.string	"crypto_core_hchacha20_outputbytes"
.LASF24:
	.string	"store32_le"
.LASF22:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF1:
	.string	"unsigned char"
.LASF14:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF21:
	.string	"crypto_core_hchacha20_constbytes"
.LASF5:
	.string	"__uint32_t"
.LASF16:
	.string	"load32_le"
.LASF17:
	.string	"rotl32"
.LASF8:
	.string	"long long unsigned int"
.LASF9:
	.string	"uint8_t"
.LASF13:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF15:
	.string	"char"
.LASF6:
	.string	"unsigned int"
.LASF2:
	.string	"short int"
.LASF23:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_core/hchacha20/core_hchacha20.c"
.LASF10:
	.string	"uint32_t"
.LASF12:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF25:
	.string	"crypto_core_hchacha20"
.LASF19:
	.string	"crypto_core_hchacha20_inputbytes"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
