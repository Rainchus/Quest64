glabel func_80011E78
/* 12A78 80011E78 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 12A7C 80011E7C AFB2004C */  sw         $s2, 0x4C($sp)
/* 12A80 80011E80 00809025 */  or         $s2, $a0, $zero
/* 12A84 80011E84 AFBF0054 */  sw         $ra, 0x54($sp)
/* 12A88 80011E88 AFB30050 */  sw         $s3, 0x50($sp)
/* 12A8C 80011E8C AFB10048 */  sw         $s1, 0x48($sp)
/* 12A90 80011E90 AFB00044 */  sw         $s0, 0x44($sp)
/* 12A94 80011E94 F7BE0038 */  sdc1       $f30, 0x38($sp)
/* 12A98 80011E98 F7BC0030 */  sdc1       $f28, 0x30($sp)
/* 12A9C 80011E9C F7BA0028 */  sdc1       $f26, 0x28($sp)
/* 12AA0 80011EA0 F7B80020 */  sdc1       $f24, 0x20($sp)
/* 12AA4 80011EA4 F7B60018 */  sdc1       $f22, 0x18($sp)
/* 12AA8 80011EA8 F7B40010 */  sdc1       $f20, 0x10($sp)
/* 12AAC 80011EAC 3C138008 */  lui        $s3, %hi(D_800869A0)
/* 12AB0 80011EB0 8E7369A0 */  lw         $s3, %lo(D_800869A0)($s3)
/* 12AB4 80011EB4 3C108008 */  lui        $s0, %hi(D_800862E0)
/* 12AB8 80011EB8 261062E0 */  addiu      $s0, $s0, %lo(D_800862E0)
/* 12ABC 80011EBC 12600057 */  beqz       $s3, .L8001201C
/* 12AC0 80011EC0 3C018007 */   lui       $at, %hi(D_800712C8)
/* 12AC4 80011EC4 D43C12C8 */  ldc1       $f28, %lo(D_800712C8)($at)
/* 12AC8 80011EC8 3C018007 */  lui        $at, %hi(D_800712D0)
/* 12ACC 80011ECC D43A12D0 */  ldc1       $f26, %lo(D_800712D0)($at)
/* 12AD0 80011ED0 3C018007 */  lui        $at, %hi(D_800712D8)
/* 12AD4 80011ED4 3C118008 */  lui        $s1, %hi(D_800869A8)
/* 12AD8 80011ED8 4480F000 */  mtc1       $zero, $f30
/* 12ADC 80011EDC 263169A8 */  addiu      $s1, $s1, %lo(D_800869A8)
/* 12AE0 80011EE0 D43812D8 */  ldc1       $f24, %lo(D_800712D8)($at)
.L80011EE4:
/* 12AE4 80011EE4 0C00485C */  jal        func_80012170
/* 12AE8 80011EE8 96040062 */   lhu       $a0, 0x62($s0)
/* 12AEC 80011EEC 54400049 */  bnel       $v0, $zero, .L80012014
/* 12AF0 80011EF0 2673FFFF */   addiu     $s3, $s3, -0x1
/* 12AF4 80011EF4 C6440010 */  lwc1       $f4, 0x10($s2)
/* 12AF8 80011EF8 C606001C */  lwc1       $f6, 0x1C($s0)
/* 12AFC 80011EFC 3C018007 */  lui        $at, %hi(D_800712E0)
/* 12B00 80011F00 46062081 */  sub.s      $f2, $f4, $f6
/* 12B04 80011F04 46001021 */  cvt.d.s    $f0, $f2
/* 12B08 80011F08 4620C03C */  c.lt.d     $f24, $f0
/* 12B0C 80011F0C 00000000 */  nop
/* 12B10 80011F10 45000005 */  bc1f       .L80011F28
/* 12B14 80011F14 00000000 */   nop
/* 12B18 80011F18 46380201 */  sub.d      $f8, $f0, $f24
/* 12B1C 80011F1C 462040A0 */  cvt.s.d    $f2, $f8
/* 12B20 80011F20 10000009 */  b          .L80011F48
/* 12B24 80011F24 46001021 */   cvt.d.s   $f0, $f2
.L80011F28:
/* 12B28 80011F28 D42A12E0 */  ldc1       $f10, %lo(D_800712E0)($at)
/* 12B2C 80011F2C 462A003C */  c.lt.d     $f0, $f10
/* 12B30 80011F30 00000000 */  nop
/* 12B34 80011F34 45020005 */  bc1fl      .L80011F4C
/* 12B38 80011F38 463A003C */   c.lt.d    $f0, $f26
/* 12B3C 80011F3C 46380400 */  add.d      $f16, $f0, $f24
/* 12B40 80011F40 462080A0 */  cvt.s.d    $f2, $f16
/* 12B44 80011F44 46001021 */  cvt.d.s    $f0, $f2
.L80011F48:
/* 12B48 80011F48 463A003C */  c.lt.d     $f0, $f26
.L80011F4C:
/* 12B4C 80011F4C 00000000 */  nop
/* 12B50 80011F50 45020030 */  bc1fl      .L80012014
/* 12B54 80011F54 2673FFFF */   addiu     $s3, $s3, -0x1
/* 12B58 80011F58 4620E03C */  c.lt.d     $f28, $f0
/* 12B5C 80011F5C 00000000 */  nop
/* 12B60 80011F60 4502002C */  bc1fl      .L80012014
/* 12B64 80011F64 2673FFFF */   addiu     $s3, $s3, -0x1
/* 12B68 80011F68 C6520000 */  lwc1       $f18, 0x0($s2)
/* 12B6C 80011F6C C6040044 */  lwc1       $f4, 0x44($s0)
/* 12B70 80011F70 C6460008 */  lwc1       $f6, 0x8($s2)
/* 12B74 80011F74 C608004C */  lwc1       $f8, 0x4C($s0)
/* 12B78 80011F78 46049501 */  sub.s      $f20, $f18, $f4
/* 12B7C 80011F7C 3C014396 */  lui        $at, (0x43960000 >> 16)
/* 12B80 80011F80 44812000 */  mtc1       $at, $f4
/* 12B84 80011F84 46083581 */  sub.s      $f22, $f6, $f8
/* 12B88 80011F88 4614A282 */  mul.s      $f10, $f20, $f20
/* 12B8C 80011F8C 02202825 */  or         $a1, $s1, $zero
/* 12B90 80011F90 4616B402 */  mul.s      $f16, $f22, $f22
/* 12B94 80011F94 46105480 */  add.s      $f18, $f10, $f16
/* 12B98 80011F98 4604903C */  c.lt.s     $f18, $f4
/* 12B9C 80011F9C 00000000 */  nop
/* 12BA0 80011FA0 4502001C */  bc1fl      .L80012014
/* 12BA4 80011FA4 2673FFFF */   addiu     $s3, $s3, -0x1
/* 12BA8 80011FA8 E6340000 */  swc1       $f20, 0x0($s1)
/* 12BAC 80011FAC E6360004 */  swc1       $f22, 0x4($s1)
/* 12BB0 80011FB0 0C008CBD */  jal        func_800232F4
/* 12BB4 80011FB4 C60C001C */   lwc1      $f12, 0x1C($s0)
/* 12BB8 80011FB8 C6340000 */  lwc1       $f20, 0x0($s1)
/* 12BBC 80011FBC C6360004 */  lwc1       $f22, 0x4($s1)
/* 12BC0 80011FC0 461EA03C */  c.lt.s     $f20, $f30
/* 12BC4 80011FC4 00000000 */  nop
/* 12BC8 80011FC8 45020003 */  bc1fl      .L80011FD8
/* 12BCC 80011FCC 461EB03C */   c.lt.s    $f22, $f30
/* 12BD0 80011FD0 4600A507 */  neg.s      $f20, $f20
/* 12BD4 80011FD4 461EB03C */  c.lt.s     $f22, $f30
.L80011FD8:
/* 12BD8 80011FD8 00000000 */  nop
/* 12BDC 80011FDC 45020003 */  bc1fl      .L80011FEC
/* 12BE0 80011FE0 C6060018 */   lwc1      $f6, 0x18($s0)
/* 12BE4 80011FE4 4600B587 */  neg.s      $f22, $f22
/* 12BE8 80011FE8 C6060018 */  lwc1       $f6, 0x18($s0)
.L80011FEC:
/* 12BEC 80011FEC 4606A03C */  c.lt.s     $f20, $f6
/* 12BF0 80011FF0 00000000 */  nop
/* 12BF4 80011FF4 45020007 */  bc1fl      .L80012014
/* 12BF8 80011FF8 2673FFFF */   addiu     $s3, $s3, -0x1
/* 12BFC 80011FFC C6080020 */  lwc1       $f8, 0x20($s0)
/* 12C00 80012000 4608B03C */  c.lt.s     $f22, $f8
/* 12C04 80012004 00000000 */  nop
/* 12C08 80012008 45010004 */  bc1t       .L8001201C
/* 12C0C 8001200C 00000000 */   nop
/* 12C10 80012010 2673FFFF */  addiu      $s3, $s3, -0x1
.L80012014:
/* 12C14 80012014 1660FFB3 */  bnez       $s3, .L80011EE4
/* 12C18 80012018 2610006C */   addiu     $s0, $s0, 0x6C
.L8001201C:
/* 12C1C 8001201C 16600002 */  bnez       $s3, .L80012028
/* 12C20 80012020 D7B40010 */   ldc1      $f20, 0x10($sp)
/* 12C24 80012024 00008025 */  or         $s0, $zero, $zero
.L80012028:
/* 12C28 80012028 02001025 */  or         $v0, $s0, $zero
/* 12C2C 8001202C 8FBF0054 */  lw         $ra, 0x54($sp)
/* 12C30 80012030 D7B60018 */  ldc1       $f22, 0x18($sp)
/* 12C34 80012034 D7B80020 */  ldc1       $f24, 0x20($sp)
/* 12C38 80012038 D7BA0028 */  ldc1       $f26, 0x28($sp)
/* 12C3C 8001203C D7BC0030 */  ldc1       $f28, 0x30($sp)
/* 12C40 80012040 D7BE0038 */  ldc1       $f30, 0x38($sp)
/* 12C44 80012044 8FB00044 */  lw         $s0, 0x44($sp)
/* 12C48 80012048 8FB10048 */  lw         $s1, 0x48($sp)
/* 12C4C 8001204C 8FB2004C */  lw         $s2, 0x4C($sp)
/* 12C50 80012050 8FB30050 */  lw         $s3, 0x50($sp)
/* 12C54 80012054 03E00008 */  jr         $ra
/* 12C58 80012058 27BD0058 */   addiu     $sp, $sp, 0x58
