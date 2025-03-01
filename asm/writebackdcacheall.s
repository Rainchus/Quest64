.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.8.2 */

# Handwritten function
glabel osWritebackDCacheAll
/* 34F50 80034350 3C088000 */  lui        $t0, 0x8000
/* 34F54 80034354 240A2000 */  addiu      $t2, $zero, 0x2000
/* 34F58 80034358 010A4821 */  addu       $t1, $t0, $t2
/* 34F5C 8003435C 2529FFF0 */  addiu      $t1, $t1, -0x10
.L80034360:
/* 34F60 80034360 BD010000 */  cache      0x01, 0x0($t0)
/* 34F64 80034364 0109082B */  sltu       $at, $t0, $t1
/* 34F68 80034368 1420FFFD */  bnez       $at, .L80034360
/* 34F6C 8003436C 25080010 */   addiu     $t0, $t0, 0x10
/* 34F70 80034370 03E00008 */  jr         $ra
/* 34F74 80034374 00000000 */   nop
/* 34F78 80034378 00000000 */  nop
/* 34F7C 8003437C 00000000 */  nop
