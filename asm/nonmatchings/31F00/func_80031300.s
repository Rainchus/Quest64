glabel func_80031300
/* 31F00 80031300 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 31F04 80031304 AFBF001C */  sw         $ra, 0x1C($sp)
/* 31F08 80031308 AFB00018 */  sw         $s0, 0x18($sp)
/* 31F0C 8003130C 3C018009 */  lui        $at, %hi(D_80092878)
/* 31F10 80031310 3C028009 */  lui        $v0, %hi(D_80092A38)
/* 31F14 80031314 3C048009 */  lui        $a0, %hi(D_80092A88)
/* 31F18 80031318 00006025 */  or         $t4, $zero, $zero
/* 31F1C 8003131C A4202878 */  sh         $zero, %lo(D_80092878)($at)
/* 31F20 80031320 24842A88 */  addiu      $a0, $a0, %lo(D_80092A88)
/* 31F24 80031324 24422A38 */  addiu      $v0, $v0, %lo(D_80092A38)
/* 31F28 80031328 2403FF80 */  addiu      $v1, $zero, -0x80
.L8003132C:
/* 31F2C 8003132C 24420014 */  addiu      $v0, $v0, 0x14
/* 31F30 80031330 0044082B */  sltu       $at, $v0, $a0
/* 31F34 80031334 1420FFFD */  bnez       $at, .L8003132C
/* 31F38 80031338 A043FFFE */   sb        $v1, -0x2($v0)
/* 31F3C 8003133C 3C028009 */  lui        $v0, %hi(D_80092AA8)
/* 31F40 80031340 3C038009 */  lui        $v1, %hi(D_80092AC0)
/* 31F44 80031344 24632AC0 */  addiu      $v1, $v1, %lo(D_80092AC0)
/* 31F48 80031348 24422AA8 */  addiu      $v0, $v0, %lo(D_80092AA8)
.L8003134C:
/* 31F4C 8003134C 24420006 */  addiu      $v0, $v0, 0x6
/* 31F50 80031350 0043082B */  sltu       $at, $v0, $v1
/* 31F54 80031354 A440FFFA */  sh         $zero, -0x6($v0)
/* 31F58 80031358 A040FFFC */  sb         $zero, -0x4($v0)
/* 31F5C 8003135C 1420FFFB */  bnez       $at, .L8003134C
/* 31F60 80031360 A040FFFD */   sb        $zero, -0x3($v0)
/* 31F64 80031364 3C108009 */  lui        $s0, %hi(D_80092AA0)
/* 31F68 80031368 26102AA0 */  addiu      $s0, $s0, %lo(D_80092AA0)
/* 31F6C 8003136C 3C048009 */  lui        $a0, %hi(D_80092880)
/* 31F70 80031370 24842880 */  addiu      $a0, $a0, %lo(D_80092880)
/* 31F74 80031374 02002825 */  or         $a1, $s0, $zero
/* 31F78 80031378 24060001 */  addiu      $a2, $zero, 0x1
/* 31F7C 8003137C 0C00CFC4 */  jal        osCreateMesgQueue
/* 31F80 80031380 AFAC0024 */   sw        $t4, 0x24($sp)
/* 31F84 80031384 3C058009 */  lui        $a1, %hi(D_80092880)
/* 31F88 80031388 24A52880 */  addiu      $a1, $a1, %lo(D_80092880)
/* 31F8C 8003138C 24040005 */  addiu      $a0, $zero, 0x5
/* 31F90 80031390 0C00CFEC */  jal        osSetEventMesg
/* 31F94 80031394 02003025 */   or        $a2, $s0, $zero
/* 31F98 80031398 3C108009 */  lui        $s0, %hi(D_80092A90)
/* 31F9C 8003139C 26102A90 */  addiu      $s0, $s0, %lo(D_80092A90)
/* 31FA0 800313A0 3C048009 */  lui        $a0, %hi(D_80092880)
/* 31FA4 800313A4 3C058009 */  lui        $a1, %hi(D_80092A88)
/* 31FA8 800313A8 24A52A88 */  addiu      $a1, $a1, %lo(D_80092A88)
/* 31FAC 800313AC 24842880 */  addiu      $a0, $a0, %lo(D_80092880)
/* 31FB0 800313B0 0C00E9F8 */  jal        osContInit
/* 31FB4 800313B4 02003025 */   or        $a2, $s0, $zero
/* 31FB8 800313B8 0C00EAE8 */  jal        osContSetCh
/* 31FBC 800313BC 24040004 */   addiu     $a0, $zero, 0x4
/* 31FC0 800313C0 3C058009 */  lui        $a1, %hi(D_80092870)
/* 31FC4 800313C4 24A52870 */  addiu      $a1, $a1, %lo(D_80092870)
/* 31FC8 800313C8 2407FFFF */  addiu      $a3, $zero, -0x1
/* 31FCC 800313CC A0A70000 */  sb         $a3, 0x0($a1)
/* 31FD0 800313D0 3C028009 */  lui        $v0, %hi(D_80092A38)
/* 31FD4 800313D4 3C088009 */  lui        $t0, %hi(D_80092A88)
/* 31FD8 800313D8 8FAC0024 */  lw         $t4, 0x24($sp)
/* 31FDC 800313DC 00003025 */  or         $a2, $zero, $zero
/* 31FE0 800313E0 91082A88 */  lbu        $t0, %lo(D_80092A88)($t0)
/* 31FE4 800313E4 24422A38 */  addiu      $v0, $v0, %lo(D_80092A38)
/* 31FE8 800313E8 00002025 */  or         $a0, $zero, $zero
/* 31FEC 800313EC 240BFFFD */  addiu      $t3, $zero, -0x3
/* 31FF0 800313F0 240AFFFE */  addiu      $t2, $zero, -0x2
/* 31FF4 800313F4 24090004 */  addiu      $t1, $zero, 0x4
.L800313F8:
/* 31FF8 800313F8 240E0001 */  addiu      $t6, $zero, 0x1
/* 31FFC 800313FC 008E7804 */  sllv       $t7, $t6, $a0
/* 32000 80031400 010FC024 */  and        $t8, $t0, $t7
/* 32004 80031404 13000022 */  beqz       $t8, .L80031490
/* 32008 80031408 0004C880 */   sll       $t9, $a0, 2
/* 3200C 8003140C 02191821 */  addu       $v1, $s0, $t9
/* 32010 80031410 906D0003 */  lbu        $t5, 0x3($v1)
/* 32014 80031414 31AE0004 */  andi       $t6, $t5, 0x4
/* 32018 80031418 51C00004 */  beql       $t6, $zero, .L8003142C
/* 3201C 8003141C 946F0000 */   lhu       $t7, 0x0($v1)
/* 32020 80031420 1000001C */  b          .L80031494
/* 32024 80031424 A0470012 */   sb        $a3, 0x12($v0)
/* 32028 80031428 946F0000 */  lhu        $t7, 0x0($v1)
.L8003142C:
/* 3202C 8003142C 31F80002 */  andi       $t8, $t7, 0x2
/* 32030 80031430 53000004 */  beql       $t8, $zero, .L80031444
/* 32034 80031434 80B90000 */   lb        $t9, 0x0($a1)
/* 32038 80031438 10000016 */  b          .L80031494
/* 3203C 8003143C A04A0012 */   sb        $t2, 0x12($v0)
/* 32040 80031440 80B90000 */  lb         $t9, 0x0($a1)
.L80031444:
/* 32044 80031444 A0400012 */  sb         $zero, 0x12($v0)
/* 32048 80031448 24C60001 */  addiu      $a2, $a2, 0x1
/* 3204C 8003144C 54F90003 */  bnel       $a3, $t9, .L8003145C
/* 32050 80031450 906D0002 */   lbu       $t5, 0x2($v1)
/* 32054 80031454 A0A40000 */  sb         $a0, 0x0($a1)
/* 32058 80031458 906D0002 */  lbu        $t5, 0x2($v1)
.L8003145C:
/* 3205C 8003145C 31AE0001 */  andi       $t6, $t5, 0x1
/* 32060 80031460 51C00006 */  beql       $t6, $zero, .L8003147C
/* 32064 80031464 80B90000 */   lb        $t9, 0x0($a1)
/* 32068 80031468 844F0000 */  lh         $t7, 0x0($v0)
/* 3206C 8003146C 35F88000 */  ori        $t8, $t7, 0x8000
/* 32070 80031470 10000008 */  b          .L80031494
/* 32074 80031474 A4580000 */   sh        $t8, 0x0($v0)
/* 32078 80031478 80B90000 */  lb         $t9, 0x0($a1)
.L8003147C:
/* 3207C 8003147C A4400000 */  sh         $zero, 0x0($v0)
/* 32080 80031480 54990005 */  bnel       $a0, $t9, .L80031498
/* 32084 80031484 24840001 */   addiu     $a0, $a0, 0x1
/* 32088 80031488 10000002 */  b          .L80031494
/* 3208C 8003148C 240C0001 */   addiu     $t4, $zero, 0x1
.L80031490:
/* 32090 80031490 A04B0012 */  sb         $t3, 0x12($v0)
.L80031494:
/* 32094 80031494 24840001 */  addiu      $a0, $a0, 0x1
.L80031498:
/* 32098 80031498 1489FFD7 */  bne        $a0, $t1, .L800313F8
/* 3209C 8003149C 24420014 */   addiu     $v0, $v0, 0x14
/* 320A0 800314A0 14C00003 */  bnez       $a2, .L800314B0
/* 320A4 800314A4 8FBF001C */   lw        $ra, 0x1C($sp)
/* 320A8 800314A8 10000002 */  b          .L800314B4
/* 320AC 800314AC 2402FFFF */   addiu     $v0, $zero, -0x1
.L800314B0:
/* 320B0 800314B0 01801025 */  or         $v0, $t4, $zero
.L800314B4:
/* 320B4 800314B4 8FB00018 */  lw         $s0, 0x18($sp)
/* 320B8 800314B8 03E00008 */  jr         $ra
/* 320BC 800314BC 27BD0030 */   addiu     $sp, $sp, 0x30
