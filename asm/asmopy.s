.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.8.2 */

glabel alCopy
/* 49640 80048A40 00801025 */  or         $v0, $a0, $zero
/* 49644 80048A44 00A01825 */  or         $v1, $a1, $zero
/* 49648 80048A48 18C00018 */  blez       $a2, .L80048AAC
/* 4964C 80048A4C 00003825 */   or        $a3, $zero, $zero
/* 49650 80048A50 30C50003 */  andi       $a1, $a2, 0x3
/* 49654 80048A54 10A00009 */  beqz       $a1, .L80048A7C
/* 49658 80048A58 00A02025 */   or        $a0, $a1, $zero
.L80048A5C:
/* 4965C 80048A5C 904E0000 */  lbu        $t6, 0x0($v0)
/* 49660 80048A60 24E70001 */  addiu      $a3, $a3, 0x1
/* 49664 80048A64 24630001 */  addiu      $v1, $v1, 0x1
/* 49668 80048A68 24420001 */  addiu      $v0, $v0, 0x1
/* 4966C 80048A6C 1487FFFB */  bne        $a0, $a3, .L80048A5C
/* 49670 80048A70 A06EFFFF */   sb        $t6, -0x1($v1)
/* 49674 80048A74 10E6000D */  beq        $a3, $a2, .L80048AAC
/* 49678 80048A78 00000000 */   nop
.L80048A7C:
/* 4967C 80048A7C 904F0000 */  lbu        $t7, 0x0($v0)
/* 49680 80048A80 24E70004 */  addiu      $a3, $a3, 0x4
/* 49684 80048A84 24630004 */  addiu      $v1, $v1, 0x4
/* 49688 80048A88 A06FFFFC */  sb         $t7, -0x4($v1)
/* 4968C 80048A8C 90580001 */  lbu        $t8, 0x1($v0)
/* 49690 80048A90 24420004 */  addiu      $v0, $v0, 0x4
/* 49694 80048A94 A078FFFD */  sb         $t8, -0x3($v1)
/* 49698 80048A98 9059FFFE */  lbu        $t9, -0x2($v0)
/* 4969C 80048A9C A079FFFE */  sb         $t9, -0x2($v1)
/* 496A0 80048AA0 9048FFFF */  lbu        $t0, -0x1($v0)
/* 496A4 80048AA4 14E6FFF5 */  bne        $a3, $a2, .L80048A7C
/* 496A8 80048AA8 A068FFFF */   sb        $t0, -0x1($v1)
.L80048AAC:
/* 496AC 80048AAC 03E00008 */  jr         $ra
/* 496B0 80048AB0 00000000 */   nop
/* 496B4 80048AB4 00000000 */  nop
/* 496B8 80048AB8 00000000 */  nop
/* 496BC 80048ABC 00000000 */  nop
