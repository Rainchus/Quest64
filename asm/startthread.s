.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.8.2 */

glabel osStartThread
/* 34830 80033C30 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 34834 80033C34 AFBF001C */  sw         $ra, 0x1C($sp)
/* 34838 80033C38 AFA40028 */  sw         $a0, 0x28($sp)
/* 3483C 80033C3C AFB10018 */  sw         $s1, 0x18($sp)
/* 34840 80033C40 0C00F534 */  jal        __osDisableInt
/* 34844 80033C44 AFB00014 */   sw        $s0, 0x14($sp)
/* 34848 80033C48 8FAE0028 */  lw         $t6, 0x28($sp)
/* 3484C 80033C4C 24010001 */  addiu      $at, $zero, 0x1
/* 34850 80033C50 00408025 */  or         $s0, $v0, $zero
/* 34854 80033C54 95D10010 */  lhu        $s1, 0x10($t6)
/* 34858 80033C58 1221000C */  beq        $s1, $at, .L80033C8C
/* 3485C 80033C5C 24010008 */   addiu     $at, $zero, 0x8
/* 34860 80033C60 1621002A */  bne        $s1, $at, .L80033D0C
/* 34864 80033C64 00000000 */   nop
/* 34868 80033C68 8FB80028 */  lw         $t8, 0x28($sp)
/* 3486C 80033C6C 240F0002 */  addiu      $t7, $zero, 0x2
/* 34870 80033C70 3C048007 */  lui        $a0, %hi(D_800709F8)
/* 34874 80033C74 A70F0010 */  sh         $t7, 0x10($t8)
/* 34878 80033C78 8FA50028 */  lw         $a1, 0x28($sp)
/* 3487C 80033C7C 0C00F463 */  jal        __osEnqueueThread
/* 34880 80033C80 248409F8 */   addiu     $a0, $a0, %lo(D_800709F8)
/* 34884 80033C84 10000021 */  b          .L80033D0C
/* 34888 80033C88 00000000 */   nop
.L80033C8C:
/* 3488C 80033C8C 8FB90028 */  lw         $t9, 0x28($sp)
/* 34890 80033C90 8F280008 */  lw         $t0, 0x8($t9)
/* 34894 80033C94 11000005 */  beqz       $t0, .L80033CAC
/* 34898 80033C98 00000000 */   nop
/* 3489C 80033C9C 3C098007 */  lui        $t1, %hi(D_800709F8)
/* 348A0 80033CA0 252909F8 */  addiu      $t1, $t1, %lo(D_800709F8)
/* 348A4 80033CA4 1509000A */  bne        $t0, $t1, .L80033CD0
/* 348A8 80033CA8 00000000 */   nop
.L80033CAC:
/* 348AC 80033CAC 8FAB0028 */  lw         $t3, 0x28($sp)
/* 348B0 80033CB0 240A0002 */  addiu      $t2, $zero, 0x2
/* 348B4 80033CB4 3C048007 */  lui        $a0, %hi(D_800709F8)
/* 348B8 80033CB8 A56A0010 */  sh         $t2, 0x10($t3)
/* 348BC 80033CBC 8FA50028 */  lw         $a1, 0x28($sp)
/* 348C0 80033CC0 0C00F463 */  jal        __osEnqueueThread
/* 348C4 80033CC4 248409F8 */   addiu     $a0, $a0, %lo(D_800709F8)
/* 348C8 80033CC8 10000010 */  b          .L80033D0C
/* 348CC 80033CCC 00000000 */   nop
.L80033CD0:
/* 348D0 80033CD0 8FAD0028 */  lw         $t5, 0x28($sp)
/* 348D4 80033CD4 240C0008 */  addiu      $t4, $zero, 0x8
/* 348D8 80033CD8 A5AC0010 */  sh         $t4, 0x10($t5)
/* 348DC 80033CDC 8FAE0028 */  lw         $t6, 0x28($sp)
/* 348E0 80033CE0 8DC40008 */  lw         $a0, 0x8($t6)
/* 348E4 80033CE4 0C00F463 */  jal        __osEnqueueThread
/* 348E8 80033CE8 01C02825 */   or        $a1, $t6, $zero
/* 348EC 80033CEC 8FAF0028 */  lw         $t7, 0x28($sp)
/* 348F0 80033CF0 0C00F475 */  jal        __osPopThread
/* 348F4 80033CF4 8DE40008 */   lw        $a0, 0x8($t7)
/* 348F8 80033CF8 00408825 */  or         $s1, $v0, $zero
/* 348FC 80033CFC 3C048007 */  lui        $a0, %hi(D_800709F8)
/* 34900 80033D00 248409F8 */  addiu      $a0, $a0, %lo(D_800709F8)
/* 34904 80033D04 0C00F463 */  jal        __osEnqueueThread
/* 34908 80033D08 02202825 */   or        $a1, $s1, $zero
.L80033D0C:
/* 3490C 80033D0C 3C188007 */  lui        $t8, %hi(D_80070A00)
/* 34910 80033D10 8F180A00 */  lw         $t8, %lo(D_80070A00)($t8)
/* 34914 80033D14 17000005 */  bnez       $t8, .L80033D2C
/* 34918 80033D18 00000000 */   nop
/* 3491C 80033D1C 0C00F479 */  jal        __osDispatchThread
/* 34920 80033D20 00000000 */   nop
/* 34924 80033D24 1000000F */  b          .L80033D64
/* 34928 80033D28 00000000 */   nop
.L80033D2C:
/* 3492C 80033D2C 3C198007 */  lui        $t9, %hi(D_80070A00)
/* 34930 80033D30 3C098007 */  lui        $t1, %hi(D_800709F8)
/* 34934 80033D34 8D2909F8 */  lw         $t1, %lo(D_800709F8)($t1)
/* 34938 80033D38 8F390A00 */  lw         $t9, %lo(D_80070A00)($t9)
/* 3493C 80033D3C 8D2A0004 */  lw         $t2, 0x4($t1)
/* 34940 80033D40 8F280004 */  lw         $t0, 0x4($t9)
/* 34944 80033D44 010A082A */  slt        $at, $t0, $t2
/* 34948 80033D48 10200006 */  beqz       $at, .L80033D64
/* 3494C 80033D4C 00000000 */   nop
/* 34950 80033D50 240B0002 */  addiu      $t3, $zero, 0x2
/* 34954 80033D54 3C048007 */  lui        $a0, %hi(D_800709F8)
/* 34958 80033D58 A72B0010 */  sh         $t3, 0x10($t9)
/* 3495C 80033D5C 0C00F423 */  jal        __osEnqueueAndYield
/* 34960 80033D60 248409F8 */   addiu     $a0, $a0, %lo(D_800709F8)
.L80033D64:
/* 34964 80033D64 0C00F53C */  jal        __osRestoreInt
/* 34968 80033D68 02002025 */   or        $a0, $s0, $zero
/* 3496C 80033D6C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 34970 80033D70 8FB00014 */  lw         $s0, 0x14($sp)
/* 34974 80033D74 8FB10018 */  lw         $s1, 0x18($sp)
/* 34978 80033D78 03E00008 */  jr         $ra
/* 3497C 80033D7C 27BD0028 */   addiu     $sp, $sp, 0x28
