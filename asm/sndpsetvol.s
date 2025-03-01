.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.8.2 */

glabel alSndpSetVol
/* 3A610 80039A10 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 3A614 80039A14 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3A618 80039A18 AFA50034 */  sw         $a1, 0x34($sp)
/* 3A61C 80039A1C 8C820040 */  lw         $v0, 0x40($a0)
/* 3A620 80039A20 240F0003 */  addiu      $t7, $zero, 0x3
/* 3A624 80039A24 A7AF0020 */  sh         $t7, 0x20($sp)
/* 3A628 80039A28 8C98003C */  lw         $t8, 0x3C($a0)
/* 3A62C 80039A2C 00A07025 */  or         $t6, $a1, $zero
/* 3A630 80039A30 A7AE0028 */  sh         $t6, 0x28($sp)
/* 3A634 80039A34 0018C880 */  sll        $t9, $t8, 2
/* 3A638 80039A38 0338C823 */  subu       $t9, $t9, $t8
/* 3A63C 80039A3C 0019C900 */  sll        $t9, $t9, 4
/* 3A640 80039A40 03224821 */  addu       $t1, $t9, $v0
/* 3A644 80039A44 AFA90024 */  sw         $t1, 0x24($sp)
/* 3A648 80039A48 27A50020 */  addiu      $a1, $sp, 0x20
/* 3A64C 80039A4C 24840014 */  addiu      $a0, $a0, 0x14
/* 3A650 80039A50 0C00FF9B */  jal        alEvtqPostEvent
/* 3A654 80039A54 00003025 */   or        $a2, $zero, $zero
/* 3A658 80039A58 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3A65C 80039A5C 27BD0030 */  addiu      $sp, $sp, 0x30
/* 3A660 80039A60 03E00008 */  jr         $ra
/* 3A664 80039A64 00000000 */   nop
/* 3A668 80039A68 00000000 */  nop
/* 3A66C 80039A6C 00000000 */  nop
