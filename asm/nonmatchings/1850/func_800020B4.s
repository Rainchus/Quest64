glabel func_800020B4
/* 2CB4 800020B4 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 2CB8 800020B8 AFB60030 */  sw         $s6, 0x30($sp)
/* 2CBC 800020BC 3C168008 */  lui        $s6, %hi(D_8007B348)
/* 2CC0 800020C0 AFB30024 */  sw         $s3, 0x24($sp)
/* 2CC4 800020C4 24130002 */  addiu      $s3, $zero, 0x2
/* 2CC8 800020C8 26D6B348 */  addiu      $s6, $s6, %lo(D_8007B348)
/* 2CCC 800020CC AFBF003C */  sw         $ra, 0x3C($sp)
/* 2CD0 800020D0 AFBE0038 */  sw         $fp, 0x38($sp)
/* 2CD4 800020D4 AFB70034 */  sw         $s7, 0x34($sp)
/* 2CD8 800020D8 AFB5002C */  sw         $s5, 0x2C($sp)
/* 2CDC 800020DC AFB40028 */  sw         $s4, 0x28($sp)
/* 2CE0 800020E0 AFB20020 */  sw         $s2, 0x20($sp)
/* 2CE4 800020E4 AFB1001C */  sw         $s1, 0x1C($sp)
/* 2CE8 800020E8 AFB00018 */  sw         $s0, 0x18($sp)
/* 2CEC 800020EC AEC00000 */  sw         $zero, 0x0($s6)
/* 2CF0 800020F0 3C0E8008 */  lui        $t6, %hi(gameMode)
/* 2CF4 800020F4 95CEB2E0 */  lhu        $t6, %lo(gameMode)($t6)
/* 2CF8 800020F8 3C018009 */  lui        $at, %hi(D_8008FD0E)
/* 2CFC 800020FC AFA0004C */  sw         $zero, 0x4C($sp)
/* 2D00 80002100 166E003D */  bne        $s3, $t6, .L800021F8
/* 2D04 80002104 A020FD0E */   sb        $zero, %lo(D_8008FD0E)($at)
/* 2D08 80002108 3C178030 */  lui        $s7, %hi(D_80301000)
/* 2D0C 8000210C 3C148008 */  lui        $s4, %hi(D_8007B2F4)
/* 2D10 80002110 3C108008 */  lui        $s0, %hi(D_8007B9E8)
/* 2D14 80002114 2610B9E8 */  addiu      $s0, $s0, %lo(D_8007B9E8)
/* 2D18 80002118 2694B2F4 */  addiu      $s4, $s4, %lo(D_8007B2F4)
/* 2D1C 8000211C 26F71000 */  addiu      $s7, $s7, %lo(D_80301000)
/* 2D20 80002120 341ED150 */  ori        $fp, $zero, 0xD150
/* 2D24 80002124 24120001 */  addiu      $s2, $zero, 0x1
/* 2D28 80002128 27B1004C */  addiu      $s1, $sp, 0x4C
.L8000212C:
/* 2D2C 8000212C 3C048009 */  lui        $a0, %hi(D_80092870)
/* 2D30 80002130 0C00C530 */  jal        func_800314C0
/* 2D34 80002134 80842870 */   lb        $a0, %lo(D_80092870)($a0)
/* 2D38 80002138 3C018008 */  lui        $at, %hi(D_8007B2F8)
/* 2D3C 8000213C AC20B2F8 */  sw         $zero, %lo(D_8007B2F8)($at)
/* 2D40 80002140 8E8F0000 */  lw         $t7, 0x0($s4)
/* 2D44 80002144 01FE0019 */  multu      $t7, $fp
/* 2D48 80002148 0000C012 */  mflo       $t8
/* 2D4C 8000214C 02F82021 */  addu       $a0, $s7, $t8
/* 2D50 80002150 0C000477 */  jal        func_800011DC
/* 2D54 80002154 00000000 */   nop
/* 2D58 80002158 8E990000 */  lw         $t9, 0x0($s4)
/* 2D5C 8000215C 033E0019 */  multu      $t9, $fp
/* 2D60 80002160 00004012 */  mflo       $t0
/* 2D64 80002164 02E8A821 */  addu       $s5, $s7, $t0
/* 2D68 80002168 0C009996 */  jal        func_80026658
/* 2D6C 8000216C 00000000 */   nop
/* 2D70 80002170 8EC20000 */  lw         $v0, 0x0($s6)
/* 2D74 80002174 1440000C */  bnez       $v0, .L800021A8
/* 2D78 80002178 24490001 */   addiu     $t1, $v0, 0x1
/* 2D7C 8000217C AEC90000 */  sw         $t1, 0x0($s6)
/* 2D80 80002180 02002025 */  or         $a0, $s0, $zero
.L80002184:
/* 2D84 80002184 02202825 */  or         $a1, $s1, $zero
/* 2D88 80002188 0C00D008 */  jal        osRecvMesg
/* 2D8C 8000218C 02403025 */   or        $a2, $s2, $zero
/* 2D90 80002190 8FAA004C */  lw         $t2, 0x4C($sp)
/* 2D94 80002194 854B0000 */  lh         $t3, 0x0($t2)
/* 2D98 80002198 564BFFFA */  bnel       $s2, $t3, .L80002184
/* 2D9C 8000219C 02002025 */   or        $a0, $s0, $zero
/* 2DA0 800021A0 10000009 */  b          .L800021C8
/* 2DA4 800021A4 00000000 */   nop
.L800021A8:
/* 2DA8 800021A8 02002025 */  or         $a0, $s0, $zero
.L800021AC:
/* 2DAC 800021AC 02202825 */  or         $a1, $s1, $zero
/* 2DB0 800021B0 0C00D008 */  jal        osRecvMesg
/* 2DB4 800021B4 02403025 */   or        $a2, $s2, $zero
/* 2DB8 800021B8 8FAC004C */  lw         $t4, 0x4C($sp)
/* 2DBC 800021BC 858D0000 */  lh         $t5, 0x0($t4)
/* 2DC0 800021C0 566DFFFA */  bnel       $s3, $t5, .L800021AC
/* 2DC4 800021C4 02002025 */   or        $a0, $s0, $zero
.L800021C8:
/* 2DC8 800021C8 3C048008 */  lui        $a0, %hi(D_8007B9D8)
/* 2DCC 800021CC 8C84B9D8 */  lw         $a0, %lo(D_8007B9D8)($a0)
/* 2DD0 800021D0 02A02825 */  or         $a1, $s5, $zero
/* 2DD4 800021D4 0C00D080 */  jal        osSendMesg
/* 2DD8 800021D8 02403025 */   or        $a2, $s2, $zero
/* 2DDC 800021DC 8E8E0000 */  lw         $t6, 0x0($s4)
/* 2DE0 800021E0 3C188008 */  lui        $t8, %hi(gameMode)
/* 2DE4 800021E4 39CF0001 */  xori       $t7, $t6, 0x1
/* 2DE8 800021E8 AE8F0000 */  sw         $t7, 0x0($s4)
/* 2DEC 800021EC 9718B2E0 */  lhu        $t8, %lo(gameMode)($t8)
/* 2DF0 800021F0 1278FFCE */  beq        $s3, $t8, .L8000212C
/* 2DF4 800021F4 00000000 */   nop
.L800021F8:
/* 2DF8 800021F8 3C198009 */  lui        $t9, %hi(D_8008FD0E)
/* 2DFC 800021FC 8339FD0E */  lb         $t9, %lo(D_8008FD0E)($t9)
/* 2E00 80002200 3C108008 */  lui        $s0, %hi(D_8007B9E8)
/* 2E04 80002204 2610B9E8 */  addiu      $s0, $s0, %lo(D_8007B9E8)
/* 2E08 80002208 13200006 */  beqz       $t9, .L80002224
/* 2E0C 8000220C 27B1004C */   addiu     $s1, $sp, 0x4C
/* 2E10 80002210 0C000BA8 */  jal        func_80002EA0
/* 2E14 80002214 00000000 */   nop
/* 2E18 80002218 24080002 */  addiu      $t0, $zero, 0x2
/* 2E1C 8000221C 3C018008 */  lui        $at, %hi(D_8007B2E8)
/* 2E20 80002220 A428B2E8 */  sh         $t0, %lo(D_8007B2E8)($at)
.L80002224:
/* 2E24 80002224 0C009A81 */  jal        func_80026A04
/* 2E28 80002228 00000000 */   nop
/* 2E2C 8000222C 02002025 */  or         $a0, $s0, $zero
.L80002230:
/* 2E30 80002230 02202825 */  or         $a1, $s1, $zero
/* 2E34 80002234 0C00D008 */  jal        osRecvMesg
/* 2E38 80002238 24060001 */   addiu     $a2, $zero, 0x1
/* 2E3C 8000223C 8FA9004C */  lw         $t1, 0x4C($sp)
/* 2E40 80002240 852A0000 */  lh         $t2, 0x0($t1)
/* 2E44 80002244 566AFFFA */  bnel       $s3, $t2, .L80002230
/* 2E48 80002248 02002025 */   or        $a0, $s0, $zero
/* 2E4C 8000224C 8FBF003C */  lw         $ra, 0x3C($sp)
/* 2E50 80002250 8FB00018 */  lw         $s0, 0x18($sp)
/* 2E54 80002254 8FB1001C */  lw         $s1, 0x1C($sp)
/* 2E58 80002258 8FB20020 */  lw         $s2, 0x20($sp)
/* 2E5C 8000225C 8FB30024 */  lw         $s3, 0x24($sp)
/* 2E60 80002260 8FB40028 */  lw         $s4, 0x28($sp)
/* 2E64 80002264 8FB5002C */  lw         $s5, 0x2C($sp)
/* 2E68 80002268 8FB60030 */  lw         $s6, 0x30($sp)
/* 2E6C 8000226C 8FB70034 */  lw         $s7, 0x34($sp)
/* 2E70 80002270 8FBE0038 */  lw         $fp, 0x38($sp)
/* 2E74 80002274 03E00008 */  jr         $ra
/* 2E78 80002278 27BD0050 */   addiu     $sp, $sp, 0x50
