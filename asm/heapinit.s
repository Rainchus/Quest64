.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.8.2 */

glabel alHeapInit
/* 37220 80036620 24030010 */  addiu      $v1, $zero, 0x10
/* 37224 80036624 30AE000F */  andi       $t6, $a1, 0xF
/* 37228 80036628 006E1023 */  subu       $v0, $v1, $t6
/* 3722C 8003662C 10620003 */  beq        $v1, $v0, .L8003663C
/* 37230 80036630 00A27821 */   addu      $t7, $a1, $v0
/* 37234 80036634 10000002 */  b          .L80036640
/* 37238 80036638 AC8F0000 */   sw        $t7, 0x0($a0)
.L8003663C:
/* 3723C 8003663C AC850000 */  sw         $a1, 0x0($a0)
.L80036640:
/* 37240 80036640 8C980000 */  lw         $t8, 0x0($a0)
/* 37244 80036644 AC860008 */  sw         $a2, 0x8($a0)
/* 37248 80036648 AC80000C */  sw         $zero, 0xC($a0)
/* 3724C 8003664C 03E00008 */  jr         $ra
/* 37250 80036650 AC980004 */   sw        $t8, 0x4($a0)
/* 37254 80036654 00000000 */  nop
/* 37258 80036658 00000000 */  nop
/* 3725C 8003665C 00000000 */  nop
