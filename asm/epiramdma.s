.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.8.2 */

glabel osEPiRawStartDma
/* 3E5F0 8003D9F0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 3E5F4 8003D9F4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 3E5F8 8003D9F8 AFA40030 */  sw         $a0, 0x30($sp)
/* 3E5FC 8003D9FC AFA50034 */  sw         $a1, 0x34($sp)
/* 3E600 8003DA00 AFA60038 */  sw         $a2, 0x38($sp)
/* 3E604 8003DA04 AFA7003C */  sw         $a3, 0x3C($sp)
/* 3E608 8003DA08 AFB00018 */  sw         $s0, 0x18($sp)
/* 3E60C 8003DA0C 3C0EA460 */  lui        $t6, %hi(D_A4600010)
/* 3E610 8003DA10 8DCF0010 */  lw         $t7, %lo(D_A4600010)($t6)
/* 3E614 8003DA14 31F80003 */  andi       $t8, $t7, 0x3
/* 3E618 8003DA18 13000008 */  beqz       $t8, .L8003DA3C
/* 3E61C 8003DA1C AFAF002C */   sw        $t7, 0x2C($sp)
.L8003DA20:
/* 3E620 8003DA20 3C19A460 */  lui        $t9, %hi(D_A4600010)
/* 3E624 8003DA24 8F280010 */  lw         $t0, %lo(D_A4600010)($t9)
/* 3E628 8003DA28 AFA8002C */  sw         $t0, 0x2C($sp)
/* 3E62C 8003DA2C 8FA9002C */  lw         $t1, 0x2C($sp)
/* 3E630 8003DA30 312A0003 */  andi       $t2, $t1, 0x3
/* 3E634 8003DA34 1540FFFA */  bnez       $t2, .L8003DA20
/* 3E638 8003DA38 00000000 */   nop
.L8003DA3C:
/* 3E63C 8003DA3C 8FAB0030 */  lw         $t3, 0x30($sp)
/* 3E640 8003DA40 3C0E8007 */  lui        $t6, %hi(D_8006F440)
/* 3E644 8003DA44 916C0009 */  lbu        $t4, 0x9($t3)
/* 3E648 8003DA48 000C6880 */  sll        $t5, $t4, 2
/* 3E64C 8003DA4C 01CD7021 */  addu       $t6, $t6, $t5
/* 3E650 8003DA50 8DCEF440 */  lw         $t6, %lo(D_8006F440)($t6)
/* 3E654 8003DA54 AFAC0028 */  sw         $t4, 0x28($sp)
/* 3E658 8003DA58 11CB0048 */  beq        $t6, $t3, .L8003DB7C
/* 3E65C 8003DA5C 00000000 */   nop
/* 3E660 8003DA60 15800020 */  bnez       $t4, .L8003DAE4
/* 3E664 8003DA64 AFAE0024 */   sw        $t6, 0x24($sp)
/* 3E668 8003DA68 91CF0005 */  lbu        $t7, 0x5($t6)
/* 3E66C 8003DA6C 91780005 */  lbu        $t8, 0x5($t3)
/* 3E670 8003DA70 11F80003 */  beq        $t7, $t8, .L8003DA80
/* 3E674 8003DA74 00000000 */   nop
/* 3E678 8003DA78 3C19A460 */  lui        $t9, %hi(D_A4600014)
/* 3E67C 8003DA7C AF380014 */  sw         $t8, %lo(D_A4600014)($t9)
.L8003DA80:
/* 3E680 8003DA80 8FA80024 */  lw         $t0, 0x24($sp)
/* 3E684 8003DA84 8FAA0030 */  lw         $t2, 0x30($sp)
/* 3E688 8003DA88 91090006 */  lbu        $t1, 0x6($t0)
/* 3E68C 8003DA8C 914D0006 */  lbu        $t5, 0x6($t2)
/* 3E690 8003DA90 112D0003 */  beq        $t1, $t5, .L8003DAA0
/* 3E694 8003DA94 00000000 */   nop
/* 3E698 8003DA98 3C0CA460 */  lui        $t4, %hi(D_A460001C)
/* 3E69C 8003DA9C AD8D001C */  sw         $t5, %lo(D_A460001C)($t4)
.L8003DAA0:
/* 3E6A0 8003DAA0 8FAE0024 */  lw         $t6, 0x24($sp)
/* 3E6A4 8003DAA4 8FAF0030 */  lw         $t7, 0x30($sp)
/* 3E6A8 8003DAA8 91CB0007 */  lbu        $t3, 0x7($t6)
/* 3E6AC 8003DAAC 91F80007 */  lbu        $t8, 0x7($t7)
/* 3E6B0 8003DAB0 11780003 */  beq        $t3, $t8, .L8003DAC0
/* 3E6B4 8003DAB4 00000000 */   nop
/* 3E6B8 8003DAB8 3C19A460 */  lui        $t9, %hi(D_A4600020)
/* 3E6BC 8003DABC AF380020 */  sw         $t8, %lo(D_A4600020)($t9)
.L8003DAC0:
/* 3E6C0 8003DAC0 8FA80024 */  lw         $t0, 0x24($sp)
/* 3E6C4 8003DAC4 8FA90030 */  lw         $t1, 0x30($sp)
/* 3E6C8 8003DAC8 910A0008 */  lbu        $t2, 0x8($t0)
/* 3E6CC 8003DACC 912D0008 */  lbu        $t5, 0x8($t1)
/* 3E6D0 8003DAD0 114D0024 */  beq        $t2, $t5, .L8003DB64
/* 3E6D4 8003DAD4 00000000 */   nop
/* 3E6D8 8003DAD8 3C0CA460 */  lui        $t4, %hi(D_A4600018)
/* 3E6DC 8003DADC 10000021 */  b          .L8003DB64
/* 3E6E0 8003DAE0 AD8D0018 */   sw        $t5, %lo(D_A4600018)($t4)
.L8003DAE4:
/* 3E6E4 8003DAE4 8FAE0024 */  lw         $t6, 0x24($sp)
/* 3E6E8 8003DAE8 8FAB0030 */  lw         $t3, 0x30($sp)
/* 3E6EC 8003DAEC 91CF0005 */  lbu        $t7, 0x5($t6)
/* 3E6F0 8003DAF0 91780005 */  lbu        $t8, 0x5($t3)
/* 3E6F4 8003DAF4 11F80003 */  beq        $t7, $t8, .L8003DB04
/* 3E6F8 8003DAF8 00000000 */   nop
/* 3E6FC 8003DAFC 3C19A460 */  lui        $t9, %hi(D_A4600024)
/* 3E700 8003DB00 AF380024 */  sw         $t8, %lo(D_A4600024)($t9)
.L8003DB04:
/* 3E704 8003DB04 8FA80024 */  lw         $t0, 0x24($sp)
/* 3E708 8003DB08 8FAA0030 */  lw         $t2, 0x30($sp)
/* 3E70C 8003DB0C 91090006 */  lbu        $t1, 0x6($t0)
/* 3E710 8003DB10 914D0006 */  lbu        $t5, 0x6($t2)
/* 3E714 8003DB14 112D0003 */  beq        $t1, $t5, .L8003DB24
/* 3E718 8003DB18 00000000 */   nop
/* 3E71C 8003DB1C 3C0CA460 */  lui        $t4, %hi(D_A460002C)
/* 3E720 8003DB20 AD8D002C */  sw         $t5, %lo(D_A460002C)($t4)
.L8003DB24:
/* 3E724 8003DB24 8FAE0024 */  lw         $t6, 0x24($sp)
/* 3E728 8003DB28 8FAF0030 */  lw         $t7, 0x30($sp)
/* 3E72C 8003DB2C 91CB0007 */  lbu        $t3, 0x7($t6)
/* 3E730 8003DB30 91F80007 */  lbu        $t8, 0x7($t7)
/* 3E734 8003DB34 11780003 */  beq        $t3, $t8, .L8003DB44
/* 3E738 8003DB38 00000000 */   nop
/* 3E73C 8003DB3C 3C19A460 */  lui        $t9, %hi(D_A4600030)
/* 3E740 8003DB40 AF380030 */  sw         $t8, %lo(D_A4600030)($t9)
.L8003DB44:
/* 3E744 8003DB44 8FA80024 */  lw         $t0, 0x24($sp)
/* 3E748 8003DB48 8FA90030 */  lw         $t1, 0x30($sp)
/* 3E74C 8003DB4C 910A0008 */  lbu        $t2, 0x8($t0)
/* 3E750 8003DB50 912D0008 */  lbu        $t5, 0x8($t1)
/* 3E754 8003DB54 114D0003 */  beq        $t2, $t5, .L8003DB64
/* 3E758 8003DB58 00000000 */   nop
/* 3E75C 8003DB5C 3C0CA460 */  lui        $t4, %hi(D_A4600028)
/* 3E760 8003DB60 AD8D0028 */  sw         $t5, %lo(D_A4600028)($t4)
.L8003DB64:
/* 3E764 8003DB64 8FAF0028 */  lw         $t7, 0x28($sp)
/* 3E768 8003DB68 8FAE0030 */  lw         $t6, 0x30($sp)
/* 3E76C 8003DB6C 3C018007 */  lui        $at, %hi(D_8006F440)
/* 3E770 8003DB70 000F5880 */  sll        $t3, $t7, 2
/* 3E774 8003DB74 002B0821 */  addu       $at, $at, $t3
/* 3E778 8003DB78 AC2EF440 */  sw         $t6, %lo(D_8006F440)($at)
.L8003DB7C:
/* 3E77C 8003DB7C 0C00D374 */  jal        osVirtualToPhysical
/* 3E780 8003DB80 8FA4003C */   lw        $a0, 0x3C($sp)
/* 3E784 8003DB84 3C18A460 */  lui        $t8, %hi(D_A4600000)
/* 3E788 8003DB88 AF020000 */  sw         $v0, %lo(D_A4600000)($t8)
/* 3E78C 8003DB8C 8FB90030 */  lw         $t9, 0x30($sp)
/* 3E790 8003DB90 8FA90038 */  lw         $t1, 0x38($sp)
/* 3E794 8003DB94 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
/* 3E798 8003DB98 8F28000C */  lw         $t0, 0xC($t9)
/* 3E79C 8003DB9C 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
/* 3E7A0 8003DBA0 3C0CA460 */  lui        $t4, %hi(D_A4600004)
/* 3E7A4 8003DBA4 01095025 */  or         $t2, $t0, $t1
/* 3E7A8 8003DBA8 01416824 */  and        $t5, $t2, $at
/* 3E7AC 8003DBAC AD8D0004 */  sw         $t5, %lo(D_A4600004)($t4)
/* 3E7B0 8003DBB0 8FB00034 */  lw         $s0, 0x34($sp)
/* 3E7B4 8003DBB4 12000005 */  beqz       $s0, .L8003DBCC
/* 3E7B8 8003DBB8 24010001 */   addiu     $at, $zero, 0x1
/* 3E7BC 8003DBBC 12010008 */  beq        $s0, $at, .L8003DBE0
/* 3E7C0 8003DBC0 00000000 */   nop
/* 3E7C4 8003DBC4 1000000B */  b          .L8003DBF4
/* 3E7C8 8003DBC8 00000000 */   nop
.L8003DBCC:
/* 3E7CC 8003DBCC 8FAF0040 */  lw         $t7, 0x40($sp)
/* 3E7D0 8003DBD0 3C0BA460 */  lui        $t3, %hi(D_A460000C)
/* 3E7D4 8003DBD4 25EEFFFF */  addiu      $t6, $t7, -0x1
/* 3E7D8 8003DBD8 10000008 */  b          .L8003DBFC
/* 3E7DC 8003DBDC AD6E000C */   sw        $t6, %lo(D_A460000C)($t3)
.L8003DBE0:
/* 3E7E0 8003DBE0 8FB80040 */  lw         $t8, 0x40($sp)
/* 3E7E4 8003DBE4 3C08A460 */  lui        $t0, %hi(D_A4600008)
/* 3E7E8 8003DBE8 2719FFFF */  addiu      $t9, $t8, -0x1
/* 3E7EC 8003DBEC 10000003 */  b          .L8003DBFC
/* 3E7F0 8003DBF0 AD190008 */   sw        $t9, %lo(D_A4600008)($t0)
.L8003DBF4:
/* 3E7F4 8003DBF4 10000002 */  b          .L8003DC00
/* 3E7F8 8003DBF8 2402FFFF */   addiu     $v0, $zero, -0x1
.L8003DBFC:
/* 3E7FC 8003DBFC 00001025 */  or         $v0, $zero, $zero
.L8003DC00:
/* 3E800 8003DC00 8FBF001C */  lw         $ra, 0x1C($sp)
/* 3E804 8003DC04 8FB00018 */  lw         $s0, 0x18($sp)
/* 3E808 8003DC08 27BD0030 */  addiu      $sp, $sp, 0x30
/* 3E80C 8003DC0C 03E00008 */  jr         $ra
/* 3E810 8003DC10 00000000 */   nop
/* 3E814 8003DC14 00000000 */  nop
/* 3E818 8003DC18 00000000 */  nop
/* 3E81C 8003DC1C 00000000 */  nop
