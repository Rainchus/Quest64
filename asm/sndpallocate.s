.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.8.2 */

glabel alSndpAllocate
/* 3A410 80039810 8C860044 */  lw         $a2, 0x44($a0)
/* 3A414 80039814 8C820040 */  lw         $v0, 0x40($a0)
/* 3A418 80039818 00001825 */  or         $v1, $zero, $zero
/* 3A41C 8003981C 18C00020 */  blez       $a2, .L800398A0
/* 3A420 80039820 24070030 */   addiu     $a3, $zero, 0x30
.L80039824:
/* 3A424 80039824 00670019 */  multu      $v1, $a3
/* 3A428 80039828 00007012 */  mflo       $t6
/* 3A42C 8003982C 004E2021 */  addu       $a0, $v0, $t6
/* 3A430 80039830 8C8F001C */  lw         $t7, 0x1C($a0)
/* 3A434 80039834 15E00014 */  bnez       $t7, .L80039888
/* 3A438 80039838 3C013F80 */   lui       $at, (0x3F800000 >> 16)
/* 3A43C 8003983C 44812000 */  mtc1       $at, $f4
/* 3A440 80039840 24180005 */  addiu      $t8, $zero, 0x5
/* 3A444 80039844 24190040 */  addiu      $t9, $zero, 0x40
/* 3A448 80039848 AC85001C */  sw         $a1, 0x1C($a0)
/* 3A44C 8003984C A4980020 */  sh         $t8, 0x20($a0)
/* 3A450 80039850 AC800028 */  sw         $zero, 0x28($a0)
/* 3A454 80039854 A099002E */  sb         $t9, 0x2E($a0)
/* 3A458 80039858 A080002F */  sb         $zero, 0x2F($a0)
/* 3A45C 8003985C E4840024 */  swc1       $f4, 0x24($a0)
/* 3A460 80039860 90A8000D */  lbu        $t0, 0xD($a1)
/* 3A464 80039864 2401007F */  addiu      $at, $zero, 0x7F
/* 3A468 80039868 00601025 */  or         $v0, $v1, $zero
/* 3A46C 8003986C 00084BC0 */  sll        $t1, $t0, 15
/* 3A470 80039870 01284823 */  subu       $t1, $t1, $t0
/* 3A474 80039874 0121001A */  div        $zero, $t1, $at
/* 3A478 80039878 00005012 */  mflo       $t2
/* 3A47C 8003987C A48A002C */  sh         $t2, 0x2C($a0)
/* 3A480 80039880 03E00008 */  jr         $ra
/* 3A484 80039884 00000000 */   nop
.L80039888:
/* 3A488 80039888 24630001 */  addiu      $v1, $v1, 0x1
/* 3A48C 8003988C 00035C00 */  sll        $t3, $v1, 16
/* 3A490 80039890 000B1C03 */  sra        $v1, $t3, 16
/* 3A494 80039894 0066082A */  slt        $at, $v1, $a2
/* 3A498 80039898 1420FFE2 */  bnez       $at, .L80039824
/* 3A49C 8003989C 00000000 */   nop
.L800398A0:
/* 3A4A0 800398A0 2402FFFF */  addiu      $v0, $zero, -0x1
/* 3A4A4 800398A4 03E00008 */  jr         $ra
/* 3A4A8 800398A8 00000000 */   nop
/* 3A4AC 800398AC 00000000 */  nop
