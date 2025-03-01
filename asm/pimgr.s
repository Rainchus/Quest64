.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.8.2 */

glabel osCreatePiManager
/* 34980 80033D80 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 34984 80033D84 3C0E8007 */  lui        $t6, %hi(D_8006F420)
/* 34988 80033D88 8DCEF420 */  lw         $t6, %lo(D_8006F420)($t6)
/* 3498C 80033D8C AFBF001C */  sw         $ra, 0x1C($sp)
/* 34990 80033D90 AFA40030 */  sw         $a0, 0x30($sp)
/* 34994 80033D94 AFA50034 */  sw         $a1, 0x34($sp)
/* 34998 80033D98 AFA60038 */  sw         $a2, 0x38($sp)
/* 3499C 80033D9C 15C00056 */  bnez       $t6, .L80033EF8
/* 349A0 80033DA0 AFA7003C */   sw        $a3, 0x3C($sp)
/* 349A4 80033DA4 8FA40034 */  lw         $a0, 0x34($sp)
/* 349A8 80033DA8 8FA50038 */  lw         $a1, 0x38($sp)
/* 349AC 80033DAC 0C00CFC4 */  jal        osCreateMesgQueue
/* 349B0 80033DB0 8FA6003C */   lw        $a2, 0x3C($sp)
/* 349B4 80033DB4 3C048009 */  lui        $a0, %hi(D_80093F00)
/* 349B8 80033DB8 3C058009 */  lui        $a1, %hi(D_80093F18)
/* 349BC 80033DBC 24A53F18 */  addiu      $a1, $a1, %lo(D_80093F18)
/* 349C0 80033DC0 24843F00 */  addiu      $a0, $a0, %lo(D_80093F00)
/* 349C4 80033DC4 0C00CFC4 */  jal        osCreateMesgQueue
/* 349C8 80033DC8 24060001 */   addiu     $a2, $zero, 0x1
/* 349CC 80033DCC 3C0F8007 */  lui        $t7, %hi(D_80070A10)
/* 349D0 80033DD0 8DEF0A10 */  lw         $t7, %lo(D_80070A10)($t7)
/* 349D4 80033DD4 15E00003 */  bnez       $t7, .L80033DE4
/* 349D8 80033DD8 00000000 */   nop
/* 349DC 80033DDC 0C00F5D4 */  jal        func_8003D750
/* 349E0 80033DE0 00000000 */   nop
.L80033DE4:
/* 349E4 80033DE4 3C058009 */  lui        $a1, %hi(D_80093F00)
/* 349E8 80033DE8 3C062222 */  lui        $a2, (0x22222222 >> 16)
/* 349EC 80033DEC 34C62222 */  ori        $a2, $a2, (0x22222222 & 0xFFFF)
/* 349F0 80033DF0 24A53F00 */  addiu      $a1, $a1, %lo(D_80093F00)
/* 349F4 80033DF4 0C00CFEC */  jal        osSetEventMesg
/* 349F8 80033DF8 24040008 */   addiu     $a0, $zero, 0x8
/* 349FC 80033DFC 2418FFFF */  addiu      $t8, $zero, -0x1
/* 34A00 80033E00 AFB80028 */  sw         $t8, 0x28($sp)
/* 34A04 80033E04 0C00F604 */  jal        osGetThreadPri
/* 34A08 80033E08 00002025 */   or        $a0, $zero, $zero
/* 34A0C 80033E0C AFA20024 */  sw         $v0, 0x24($sp)
/* 34A10 80033E10 8FB90024 */  lw         $t9, 0x24($sp)
/* 34A14 80033E14 8FA80030 */  lw         $t0, 0x30($sp)
/* 34A18 80033E18 0328082A */  slt        $at, $t9, $t0
/* 34A1C 80033E1C 10200005 */  beqz       $at, .L80033E34
/* 34A20 80033E20 00000000 */   nop
/* 34A24 80033E24 AFB90028 */  sw         $t9, 0x28($sp)
/* 34A28 80033E28 00002025 */  or         $a0, $zero, $zero
/* 34A2C 80033E2C 0C00F60C */  jal        osSetThreadPri
/* 34A30 80033E30 01002825 */   or        $a1, $t0, $zero
.L80033E34:
/* 34A34 80033E34 0C00F534 */  jal        __osDisableInt
/* 34A38 80033E38 00000000 */   nop
/* 34A3C 80033E3C 3C018007 */  lui        $at, %hi(D_8006F420)
/* 34A40 80033E40 8FAB0034 */  lw         $t3, 0x34($sp)
/* 34A44 80033E44 3C0A8009 */  lui        $t2, %hi(D_80092D50)
/* 34A48 80033E48 3C0C8009 */  lui        $t4, %hi(D_80093F00)
/* 34A4C 80033E4C 24090001 */  addiu      $t1, $zero, 0x1
/* 34A50 80033E50 254A2D50 */  addiu      $t2, $t2, %lo(D_80092D50)
/* 34A54 80033E54 258C3F00 */  addiu      $t4, $t4, %lo(D_80093F00)
/* 34A58 80033E58 AC29F420 */  sw         $t1, %lo(D_8006F420)($at)
/* 34A5C 80033E5C AC2AF424 */  sw         $t2, %lo(D_8006F424)($at)
/* 34A60 80033E60 AC2CF42C */  sw         $t4, %lo(D_8006F42C)($at)
/* 34A64 80033E64 3C188009 */  lui        $t8, %hi(D_80092F00)
/* 34A68 80033E68 AC2BF428 */  sw         $t3, %lo(D_8006F428)($at)
/* 34A6C 80033E6C 8FA80030 */  lw         $t0, 0x30($sp)
/* 34A70 80033E70 3C018007 */  lui        $at, %hi(D_8006F430)
/* 34A74 80033E74 3C0D8009 */  lui        $t5, %hi(D_800955E8)
/* 34A78 80033E78 3C0E8004 */  lui        $t6, %hi(osPiRawStartDma)
/* 34A7C 80033E7C 3C0F8004 */  lui        $t7, %hi(osEPiRawStartDma)
/* 34A80 80033E80 27182F00 */  addiu      $t8, $t8, %lo(D_80092F00)
/* 34A84 80033E84 25AD55E8 */  addiu      $t5, $t5, %lo(D_800955E8)
/* 34A88 80033E88 25CED910 */  addiu      $t6, $t6, %lo(osPiRawStartDma)
/* 34A8C 80033E8C 25EFD9F0 */  addiu      $t7, $t7, %lo(osEPiRawStartDma)
/* 34A90 80033E90 27191000 */  addiu      $t9, $t8, 0x1000
/* 34A94 80033E94 3C068004 */  lui        $a2, %hi(__osDevMgrMain)
/* 34A98 80033E98 3C078007 */  lui        $a3, %hi(D_8006F420)
/* 34A9C 80033E9C AFA2002C */  sw         $v0, 0x2C($sp)
/* 34AA0 80033EA0 AC2DF430 */  sw         $t5, %lo(D_8006F430)($at)
/* 34AA4 80033EA4 AC2EF434 */  sw         $t6, %lo(D_8006F434)($at)
/* 34AA8 80033EA8 AC2FF438 */  sw         $t7, %lo(D_8006F438)($at)
/* 34AAC 80033EAC 24E7F420 */  addiu      $a3, $a3, %lo(D_8006F420)
/* 34AB0 80033EB0 24C6DC20 */  addiu      $a2, $a2, %lo(__osDevMgrMain)
/* 34AB4 80033EB4 AFB90010 */  sw         $t9, 0x10($sp)
/* 34AB8 80033EB8 01402025 */  or         $a0, $t2, $zero
/* 34ABC 80033EBC 00002825 */  or         $a1, $zero, $zero
/* 34AC0 80033EC0 0C00CEB8 */  jal        osCreateThread
/* 34AC4 80033EC4 AFA80014 */   sw        $t0, 0x14($sp)
/* 34AC8 80033EC8 3C048009 */  lui        $a0, %hi(D_80092D50)
/* 34ACC 80033ECC 0C00CF0C */  jal        osStartThread
/* 34AD0 80033ED0 24842D50 */   addiu     $a0, $a0, %lo(D_80092D50)
/* 34AD4 80033ED4 0C00F53C */  jal        __osRestoreInt
/* 34AD8 80033ED8 8FA4002C */   lw        $a0, 0x2C($sp)
/* 34ADC 80033EDC 8FA90028 */  lw         $t1, 0x28($sp)
/* 34AE0 80033EE0 2401FFFF */  addiu      $at, $zero, -0x1
/* 34AE4 80033EE4 11210004 */  beq        $t1, $at, .L80033EF8
/* 34AE8 80033EE8 00000000 */   nop
/* 34AEC 80033EEC 00002025 */  or         $a0, $zero, $zero
/* 34AF0 80033EF0 0C00F60C */  jal        osSetThreadPri
/* 34AF4 80033EF4 01202825 */   or        $a1, $t1, $zero
.L80033EF8:
/* 34AF8 80033EF8 8FBF001C */  lw         $ra, 0x1C($sp)
/* 34AFC 80033EFC 27BD0030 */  addiu      $sp, $sp, 0x30
/* 34B00 80033F00 03E00008 */  jr         $ra
/* 34B04 80033F04 00000000 */   nop
/* 34B08 80033F08 00000000 */  nop
/* 34B0C 80033F0C 00000000 */  nop
