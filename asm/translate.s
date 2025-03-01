.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.8.2 */

glabel guTranslateF
/* 36D50 80036150 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 36D54 80036154 AFBF0014 */  sw         $ra, 0x14($sp)
/* 36D58 80036158 AFA5001C */  sw         $a1, 0x1C($sp)
/* 36D5C 8003615C AFA60020 */  sw         $a2, 0x20($sp)
/* 36D60 80036160 AFA70024 */  sw         $a3, 0x24($sp)
/* 36D64 80036164 0C00D4C0 */  jal        guMtxIdentF
/* 36D68 80036168 AFA40018 */   sw        $a0, 0x18($sp)
/* 36D6C 8003616C 8FA40018 */  lw         $a0, 0x18($sp)
/* 36D70 80036170 C7A4001C */  lwc1       $f4, 0x1C($sp)
/* 36D74 80036174 E4840030 */  swc1       $f4, 0x30($a0)
/* 36D78 80036178 C7A60020 */  lwc1       $f6, 0x20($sp)
/* 36D7C 8003617C E4860034 */  swc1       $f6, 0x34($a0)
/* 36D80 80036180 C7A80024 */  lwc1       $f8, 0x24($sp)
/* 36D84 80036184 E4880038 */  swc1       $f8, 0x38($a0)
/* 36D88 80036188 8FBF0014 */  lw         $ra, 0x14($sp)
/* 36D8C 8003618C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 36D90 80036190 03E00008 */  jr         $ra
/* 36D94 80036194 00000000 */   nop

glabel guTranslate
/* 36D98 80036198 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 36D9C 8003619C AFBF0014 */  sw         $ra, 0x14($sp)
/* 36DA0 800361A0 AFA40068 */  sw         $a0, 0x68($sp)
/* 36DA4 800361A4 AFA5006C */  sw         $a1, 0x6C($sp)
/* 36DA8 800361A8 AFA60070 */  sw         $a2, 0x70($sp)
/* 36DAC 800361AC AFA70074 */  sw         $a3, 0x74($sp)
/* 36DB0 800361B0 0C00D4C0 */  jal        guMtxIdentF
/* 36DB4 800361B4 27A40028 */   addiu     $a0, $sp, 0x28
/* 36DB8 800361B8 C7A4006C */  lwc1       $f4, 0x6C($sp)
/* 36DBC 800361BC C7A60070 */  lwc1       $f6, 0x70($sp)
/* 36DC0 800361C0 C7A80074 */  lwc1       $f8, 0x74($sp)
/* 36DC4 800361C4 27A40028 */  addiu      $a0, $sp, 0x28
/* 36DC8 800361C8 8FA50068 */  lw         $a1, 0x68($sp)
/* 36DCC 800361CC E7A40058 */  swc1       $f4, 0x58($sp)
/* 36DD0 800361D0 E7A6005C */  swc1       $f6, 0x5C($sp)
/* 36DD4 800361D4 0C00D480 */  jal        guMtxF2L
/* 36DD8 800361D8 E7A80060 */   swc1      $f8, 0x60($sp)
/* 36DDC 800361DC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 36DE0 800361E0 27BD0068 */  addiu      $sp, $sp, 0x68
/* 36DE4 800361E4 03E00008 */  jr         $ra
/* 36DE8 800361E8 00000000 */   nop
/* 36DEC 800361EC 00000000 */  nop
