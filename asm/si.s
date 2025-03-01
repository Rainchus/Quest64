.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.8.2 */

glabel __osSiDeviceBusy
/* 47D80 80047180 3C0EA480 */  lui        $t6, %hi(D_A4800018)
/* 47D84 80047184 8DC40018 */  lw         $a0, %lo(D_A4800018)($t6)
/* 47D88 80047188 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 47D8C 8004718C 308F0003 */  andi       $t7, $a0, 0x3
/* 47D90 80047190 11E00003 */  beqz       $t7, .L800471A0
/* 47D94 80047194 00000000 */   nop
/* 47D98 80047198 10000002 */  b          .L800471A4
/* 47D9C 8004719C 24020001 */   addiu     $v0, $zero, 0x1
.L800471A0:
/* 47DA0 800471A0 00001025 */  or         $v0, $zero, $zero
.L800471A4:
/* 47DA4 800471A4 03E00008 */  jr         $ra
/* 47DA8 800471A8 27BD0008 */   addiu     $sp, $sp, 0x8
/* 47DAC 800471AC 00000000 */  nop
