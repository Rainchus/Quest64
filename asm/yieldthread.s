.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.8.2 */

glabel osYieldThread
/* 48880 80047C80 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 48884 80047C84 AFBF001C */  sw         $ra, 0x1C($sp)
/* 48888 80047C88 0C00F534 */  jal        __osDisableInt
/* 4888C 80047C8C AFB00018 */   sw        $s0, 0x18($sp)
/* 48890 80047C90 3C0F8007 */  lui        $t7, %hi(D_80070A00)
/* 48894 80047C94 8DEF0A00 */  lw         $t7, %lo(D_80070A00)($t7)
/* 48898 80047C98 240E0002 */  addiu      $t6, $zero, 0x2
/* 4889C 80047C9C 3C048007 */  lui        $a0, %hi(D_800709F8)
/* 488A0 80047CA0 00408025 */  or         $s0, $v0, $zero
/* 488A4 80047CA4 248409F8 */  addiu      $a0, $a0, %lo(D_800709F8)
/* 488A8 80047CA8 0C00F423 */  jal        __osEnqueueAndYield
/* 488AC 80047CAC A5EE0010 */   sh        $t6, 0x10($t7)
/* 488B0 80047CB0 0C00F53C */  jal        __osRestoreInt
/* 488B4 80047CB4 02002025 */   or        $a0, $s0, $zero
/* 488B8 80047CB8 8FBF001C */  lw         $ra, 0x1C($sp)
/* 488BC 80047CBC 8FB00018 */  lw         $s0, 0x18($sp)
/* 488C0 80047CC0 27BD0028 */  addiu      $sp, $sp, 0x28
/* 488C4 80047CC4 03E00008 */  jr         $ra
/* 488C8 80047CC8 00000000 */   nop
/* 488CC 80047CCC 00000000 */  nop
