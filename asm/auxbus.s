.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.8.2 */

glabel alAuxBusParam
/* 430D0 800424D0 24010002 */  addiu      $at, $zero, 0x2
/* 430D4 800424D4 14A10008 */  bne        $a1, $at, .L800424F8
/* 430D8 800424D8 8C82001C */   lw        $v0, 0x1C($a0)
/* 430DC 800424DC 8C8E0014 */  lw         $t6, 0x14($a0)
/* 430E0 800424E0 000E7880 */  sll        $t7, $t6, 2
/* 430E4 800424E4 004FC021 */  addu       $t8, $v0, $t7
/* 430E8 800424E8 AF060000 */  sw         $a2, 0x0($t8)
/* 430EC 800424EC 8C990014 */  lw         $t9, 0x14($a0)
/* 430F0 800424F0 27280001 */  addiu      $t0, $t9, 0x1
/* 430F4 800424F4 AC880014 */  sw         $t0, 0x14($a0)
.L800424F8:
/* 430F8 800424F8 03E00008 */  jr         $ra
/* 430FC 800424FC 00001025 */   or        $v0, $zero, $zero

glabel alAuxBusPull
/* 43100 80042500 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 43104 80042504 8FA80050 */  lw         $t0, 0x50($sp)
/* 43108 80042508 AFBF003C */  sw         $ra, 0x3C($sp)
/* 4310C 8004250C AFB60038 */  sw         $s6, 0x38($sp)
/* 43110 80042510 AFB50034 */  sw         $s5, 0x34($sp)
/* 43114 80042514 AFB40030 */  sw         $s4, 0x30($sp)
/* 43118 80042518 AFB3002C */  sw         $s3, 0x2C($sp)
/* 4311C 8004251C AFB20028 */  sw         $s2, 0x28($sp)
/* 43120 80042520 AFB10024 */  sw         $s1, 0x24($sp)
/* 43124 80042524 AFB00020 */  sw         $s0, 0x20($sp)
/* 43128 80042528 8C83001C */  lw         $v1, 0x1C($a0)
/* 4312C 8004252C 3C0E0200 */  lui        $t6, (0x20006C0 >> 16)
/* 43130 80042530 00061040 */  sll        $v0, $a2, 1
/* 43134 80042534 3C0F0200 */  lui        $t7, (0x2000800 >> 16)
/* 43138 80042538 35CE06C0 */  ori        $t6, $t6, (0x20006C0 & 0xFFFF)
/* 4313C 8004253C 35EF0800 */  ori        $t7, $t7, (0x2000800 & 0xFFFF)
/* 43140 80042540 AD0E0000 */  sw         $t6, 0x0($t0)
/* 43144 80042544 AD020004 */  sw         $v0, 0x4($t0)
/* 43148 80042548 AD0F0008 */  sw         $t7, 0x8($t0)
/* 4314C 8004254C AD02000C */  sw         $v0, 0xC($t0)
/* 43150 80042550 8C980014 */  lw         $t8, 0x14($a0)
/* 43154 80042554 00C0A025 */  or         $s4, $a2, $zero
/* 43158 80042558 00A0A825 */  or         $s5, $a1, $zero
/* 4315C 8004255C 00E0B025 */  or         $s6, $a3, $zero
/* 43160 80042560 00809825 */  or         $s3, $a0, $zero
/* 43164 80042564 00008025 */  or         $s0, $zero, $zero
/* 43168 80042568 1B000010 */  blez       $t8, .L800425AC
/* 4316C 8004256C 25120010 */   addiu     $s2, $t0, 0x10
/* 43170 80042570 00608825 */  or         $s1, $v1, $zero
.L80042574:
/* 43174 80042574 8E240000 */  lw         $a0, 0x0($s1)
/* 43178 80042578 AFB20010 */  sw         $s2, 0x10($sp)
/* 4317C 8004257C 02A02825 */  or         $a1, $s5, $zero
/* 43180 80042580 8C990004 */  lw         $t9, 0x4($a0)
/* 43184 80042584 02803025 */  or         $a2, $s4, $zero
/* 43188 80042588 02C03825 */  or         $a3, $s6, $zero
/* 4318C 8004258C 0320F809 */  jalr       $t9
/* 43190 80042590 00000000 */   nop
/* 43194 80042594 8E690014 */  lw         $t1, 0x14($s3)
/* 43198 80042598 26100001 */  addiu      $s0, $s0, 0x1
/* 4319C 8004259C 26310004 */  addiu      $s1, $s1, 0x4
/* 431A0 800425A0 0209082A */  slt        $at, $s0, $t1
/* 431A4 800425A4 1420FFF3 */  bnez       $at, .L80042574
/* 431A8 800425A8 00409025 */   or        $s2, $v0, $zero
.L800425AC:
/* 431AC 800425AC 8FBF003C */  lw         $ra, 0x3C($sp)
/* 431B0 800425B0 02401025 */  or         $v0, $s2, $zero
/* 431B4 800425B4 8FB20028 */  lw         $s2, 0x28($sp)
/* 431B8 800425B8 8FB00020 */  lw         $s0, 0x20($sp)
/* 431BC 800425BC 8FB10024 */  lw         $s1, 0x24($sp)
/* 431C0 800425C0 8FB3002C */  lw         $s3, 0x2C($sp)
/* 431C4 800425C4 8FB40030 */  lw         $s4, 0x30($sp)
/* 431C8 800425C8 8FB50034 */  lw         $s5, 0x34($sp)
/* 431CC 800425CC 8FB60038 */  lw         $s6, 0x38($sp)
/* 431D0 800425D0 03E00008 */  jr         $ra
/* 431D4 800425D4 27BD0040 */   addiu     $sp, $sp, 0x40
/* 431D8 800425D8 00000000 */  nop
/* 431DC 800425DC 00000000 */  nop
