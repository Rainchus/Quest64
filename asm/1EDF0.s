.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8001E1F0
/* 1EDF0 8001E1F0 3C028009 */  lui        $v0, %hi(D_8008C64C)
/* 1EDF4 8001E1F4 3C038009 */  lui        $v1, %hi(D_8008C654)
/* 1EDF8 8001E1F8 2463C654 */  addiu      $v1, $v1, %lo(D_8008C654)
/* 1EDFC 8001E1FC 2442C64C */  addiu      $v0, $v0, %lo(D_8008C64C)
/* 1EE00 8001E200 3C018009 */  lui        $at, %hi(D_8008C638)
/* 1EE04 8001E204 AC20C638 */  sw         $zero, %lo(D_8008C638)($at)
/* 1EE08 8001E208 3C018009 */  lui        $at, %hi(D_8008C63C)
/* 1EE0C 8001E20C AC20C63C */  sw         $zero, %lo(D_8008C63C)($at)
/* 1EE10 8001E210 3C018009 */  lui        $at, %hi(D_8008C640)
/* 1EE14 8001E214 240EFFFF */  addiu      $t6, $zero, -0x1
/* 1EE18 8001E218 AC2EC640 */  sw         $t6, %lo(D_8008C640)($at)
/* 1EE1C 8001E21C AC400000 */  sw         $zero, 0x0($v0)
/* 1EE20 8001E220 3C018009 */  lui        $at, %hi(D_8008C648)
/* 1EE24 8001E224 AC20C648 */  sw         $zero, %lo(D_8008C648)($at)
/* 1EE28 8001E228 AC600000 */  sw         $zero, 0x0($v1)
/* 1EE2C 8001E22C 3C018009 */  lui        $at, %hi(D_8008C650)
/* 1EE30 8001E230 AC20C650 */  sw         $zero, %lo(D_8008C650)($at)
/* 1EE34 8001E234 3C018009 */  lui        $at, %hi(D_8008C658)
/* 1EE38 8001E238 24190140 */  addiu      $t9, $zero, 0x140
/* 1EE3C 8001E23C AC39C658 */  sw         $t9, %lo(D_8008C658)($at)
/* 1EE40 8001E240 3C018009 */  lui        $at, %hi(D_8008C65C)
/* 1EE44 8001E244 240800F0 */  addiu      $t0, $zero, 0xF0
/* 1EE48 8001E248 AC28C65C */  sw         $t0, %lo(D_8008C65C)($at)
/* 1EE4C 8001E24C 3C018009 */  lui        $at, %hi(D_8008C630)
/* 1EE50 8001E250 A420C630 */  sh         $zero, %lo(D_8008C630)($at)
/* 1EE54 8001E254 03E00008 */  jr         $ra
/* 1EE58 8001E258 00000000 */   nop

glabel func_8001E25C
/* 1EE5C 8001E25C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1EE60 8001E260 3C088008 */  lui        $t0, %hi(gMasterGfxPos)
/* 1EE64 8001E264 3C098008 */  lui        $t1, %hi(D_8007B2F8)
/* 1EE68 8001E268 44800000 */  mtc1       $zero, $f0
/* 1EE6C 8001E26C 2529B2F8 */  addiu      $t1, $t1, %lo(D_8007B2F8)
/* 1EE70 8001E270 2508B2FC */  addiu      $t0, $t0, %lo(gMasterGfxPos)
/* 1EE74 8001E274 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1EE78 8001E278 AFA40028 */  sw         $a0, 0x28($sp)
/* 1EE7C 8001E27C 8D020000 */  lw         $v0, 0x0($t0)
/* 1EE80 8001E280 3C0F0103 */  lui        $t7, (0x1030040 >> 16)
/* 1EE84 8001E284 3C180200 */  lui        $t8, %hi(D_2000040)
/* 1EE88 8001E288 244E0008 */  addiu      $t6, $v0, 0x8
/* 1EE8C 8001E28C AD0E0000 */  sw         $t6, 0x0($t0)
/* 1EE90 8001E290 27180040 */  addiu      $t8, $t8, %lo(D_2000040)
/* 1EE94 8001E294 35EF0040 */  ori        $t7, $t7, (0x1030040 & 0xFFFF)
/* 1EE98 8001E298 AC4F0000 */  sw         $t7, 0x0($v0)
/* 1EE9C 8001E29C AC580004 */  sw         $t8, 0x4($v0)
/* 1EEA0 8001E2A0 8D2A0000 */  lw         $t2, 0x0($t1)
/* 1EEA4 8001E2A4 8FB90028 */  lw         $t9, 0x28($sp)
/* 1EEA8 8001E2A8 44070000 */  mfc1       $a3, $f0
/* 1EEAC 8001E2AC 000A5980 */  sll        $t3, $t2, 6
/* 1EEB0 8001E2B0 032B2021 */  addu       $a0, $t9, $t3
/* 1EEB4 8001E2B4 248400C0 */  addiu      $a0, $a0, 0xC0
/* 1EEB8 8001E2B8 3C05C320 */  lui        $a1, (0xC3200000 >> 16)
/* 1EEBC 8001E2BC 0C00D866 */  jal        guTranslate
/* 1EEC0 8001E2C0 3C06C2F0 */   lui       $a2, (0xC2F00000 >> 16)
/* 1EEC4 8001E2C4 3C068005 */  lui        $a2, %hi(D_8004D2B4)
/* 1EEC8 8001E2C8 3C088008 */  lui        $t0, %hi(gMasterGfxPos)
/* 1EECC 8001E2CC 3C098008 */  lui        $t1, %hi(D_8007B2F8)
/* 1EED0 8001E2D0 44800000 */  mtc1       $zero, $f0
/* 1EED4 8001E2D4 2529B2F8 */  addiu      $t1, $t1, %lo(D_8007B2F8)
/* 1EED8 8001E2D8 2508B2FC */  addiu      $t0, $t0, %lo(gMasterGfxPos)
/* 1EEDC 8001E2DC 24C6D2B4 */  addiu      $a2, $a2, %lo(D_8004D2B4)
/* 1EEE0 8001E2E0 8D020000 */  lw         $v0, 0x0($t0)
/* 1EEE4 8001E2E4 3C0D0101 */  lui        $t5, (0x1010040 >> 16)
/* 1EEE8 8001E2E8 35AD0040 */  ori        $t5, $t5, (0x1010040 & 0xFFFF)
/* 1EEEC 8001E2EC 244C0008 */  addiu      $t4, $v0, 0x8
/* 1EEF0 8001E2F0 AD0C0000 */  sw         $t4, 0x0($t0)
/* 1EEF4 8001E2F4 AC4D0000 */  sw         $t5, 0x0($v0)
/* 1EEF8 8001E2F8 8D2E0000 */  lw         $t6, 0x0($t1)
/* 1EEFC 8001E2FC 3C0A0200 */  lui        $t2, %hi(D_2000000)
/* 1EF00 8001E300 254A0000 */  addiu      $t2, $t2, %lo(D_2000000)
/* 1EF04 8001E304 000E7980 */  sll        $t7, $t6, 6
/* 1EF08 8001E308 25F800C0 */  addiu      $t8, $t7, 0xC0
/* 1EF0C 8001E30C 030AC821 */  addu       $t9, $t8, $t2
/* 1EF10 8001E310 AC590004 */  sw         $t9, 0x4($v0)
/* 1EF14 8001E314 8D2B0000 */  lw         $t3, 0x0($t1)
/* 1EF18 8001E318 3C0E0600 */  lui        $t6, (0x6000000 >> 16)
/* 1EF1C 8001E31C 3C048005 */  lui        $a0, %hi(D_8004D2BC)
/* 1EF20 8001E320 256C0001 */  addiu      $t4, $t3, 0x1
/* 1EF24 8001E324 AD2C0000 */  sw         $t4, 0x0($t1)
/* 1EF28 8001E328 8D020000 */  lw         $v0, 0x0($t0)
/* 1EF2C 8001E32C 3C0F803A */  lui        $t7, %hi(D_803A6FC0)
/* 1EF30 8001E330 25EF6FC0 */  addiu      $t7, $t7, %lo(D_803A6FC0)
/* 1EF34 8001E334 244D0008 */  addiu      $t5, $v0, 0x8
/* 1EF38 8001E338 AD0D0000 */  sw         $t5, 0x0($t0)
/* 1EF3C 8001E33C AC4F0004 */  sw         $t7, 0x4($v0)
/* 1EF40 8001E340 AC4E0000 */  sw         $t6, 0x0($v0)
/* 1EF44 8001E344 90C50000 */  lbu        $a1, 0x0($a2)
/* 1EF48 8001E348 2484D2BC */  addiu      $a0, $a0, %lo(D_8004D2BC)
/* 1EF4C 8001E34C 2407000F */  addiu      $a3, $zero, 0xF
/* 1EF50 8001E350 10A0002E */  beqz       $a1, .L8001E40C
/* 1EF54 8001E354 00000000 */   nop
/* 1EF58 8001E358 8C830000 */  lw         $v1, 0x0($a0)
/* 1EF5C 8001E35C 10600003 */  beqz       $v1, .L8001E36C
/* 1EF60 8001E360 2478FFFF */   addiu     $t8, $v1, -0x1
/* 1EF64 8001E364 AC980000 */  sw         $t8, 0x0($a0)
/* 1EF68 8001E368 03001825 */  or         $v1, $t8, $zero
.L8001E36C:
/* 1EF6C 8001E36C 00E31023 */  subu       $v0, $a3, $v1
/* 1EF70 8001E370 00420019 */  multu      $v0, $v0
/* 1EF74 8001E374 3C088009 */  lui        $t0, %hi(D_8008C660)
/* 1EF78 8001E378 2508C660 */  addiu      $t0, $t0, %lo(D_8008C660)
/* 1EF7C 8001E37C 3C198008 */  lui        $t9, %hi(D_8007B2E4)
/* 1EF80 8001E380 3C018009 */  lui        $at, %hi(D_8008C664)
/* 1EF84 8001E384 00001012 */  mflo       $v0
/* 1EF88 8001E388 00025043 */  sra        $t2, $v0, 1
/* 1EF8C 8001E38C AD0A0000 */  sw         $t2, 0x0($t0)
/* 1EF90 8001E390 8F39B2E4 */  lw         $t9, %lo(D_8007B2E4)($t9)
/* 1EF94 8001E394 AC22C664 */  sw         $v0, %lo(D_8008C664)($at)
/* 1EF98 8001E398 3C018008 */  lui        $at, %hi(D_8007BAE4)
/* 1EF9C 8001E39C 332B0480 */  andi       $t3, $t9, 0x480
/* 1EFA0 8001E3A0 5560004E */  bnel       $t3, $zero, .L8001E4DC
/* 1EFA4 8001E3A4 8D0A0000 */   lw        $t2, 0x0($t0)
/* 1EFA8 8001E3A8 C424BAE4 */  lwc1       $f4, %lo(D_8007BAE4)($at)
/* 1EFAC 8001E3AC 3C028005 */  lui        $v0, %hi(D_8004D2B8)
/* 1EFB0 8001E3B0 3C018008 */  lui        $at, %hi(D_8007BAEC)
/* 1EFB4 8001E3B4 46040032 */  c.eq.s     $f0, $f4
/* 1EFB8 8001E3B8 2442D2B8 */  addiu      $v0, $v0, %lo(D_8004D2B8)
/* 1EFBC 8001E3BC 45000011 */  bc1f       .L8001E404
/* 1EFC0 8001E3C0 00000000 */   nop
/* 1EFC4 8001E3C4 C426BAEC */  lwc1       $f6, %lo(D_8007BAEC)($at)
/* 1EFC8 8001E3C8 46060032 */  c.eq.s     $f0, $f6
/* 1EFCC 8001E3CC 00000000 */  nop
/* 1EFD0 8001E3D0 4500000C */  bc1f       .L8001E404
/* 1EFD4 8001E3D4 00000000 */   nop
/* 1EFD8 8001E3D8 3C028005 */  lui        $v0, %hi(D_8004D2B8)
/* 1EFDC 8001E3DC 2442D2B8 */  addiu      $v0, $v0, %lo(D_8004D2B8)
/* 1EFE0 8001E3E0 8C4C0000 */  lw         $t4, 0x0($v0)
/* 1EFE4 8001E3E4 258D0001 */  addiu      $t5, $t4, 0x1
/* 1EFE8 8001E3E8 29A1001F */  slti       $at, $t5, 0x1F
/* 1EFEC 8001E3EC 1420003A */  bnez       $at, .L8001E4D8
/* 1EFF0 8001E3F0 AC4D0000 */   sw        $t5, 0x0($v0)
/* 1EFF4 8001E3F4 AC870000 */  sw         $a3, 0x0($a0)
/* 1EFF8 8001E3F8 A0C00000 */  sb         $zero, 0x0($a2)
/* 1EFFC 8001E3FC 10000036 */  b          .L8001E4D8
/* 1F000 8001E400 AC400000 */   sw        $zero, 0x0($v0)
.L8001E404:
/* 1F004 8001E404 10000034 */  b          .L8001E4D8
/* 1F008 8001E408 AC400000 */   sw        $zero, 0x0($v0)
.L8001E40C:
/* 1F00C 8001E40C 3C048005 */  lui        $a0, %hi(D_8004D2BC)
/* 1F010 8001E410 2484D2BC */  addiu      $a0, $a0, %lo(D_8004D2BC)
/* 1F014 8001E414 8C830000 */  lw         $v1, 0x0($a0)
/* 1F018 8001E418 10600003 */  beqz       $v1, .L8001E428
/* 1F01C 8001E41C 246FFFFF */   addiu     $t7, $v1, -0x1
/* 1F020 8001E420 AC8F0000 */  sw         $t7, 0x0($a0)
/* 1F024 8001E424 01E01825 */  or         $v1, $t7, $zero
.L8001E428:
/* 1F028 8001E428 00630019 */  multu      $v1, $v1
/* 1F02C 8001E42C 3C088009 */  lui        $t0, %hi(D_8008C660)
/* 1F030 8001E430 2508C660 */  addiu      $t0, $t0, %lo(D_8008C660)
/* 1F034 8001E434 3C0A8009 */  lui        $t2, %hi(D_8008C592)
/* 1F038 8001E438 3C018009 */  lui        $at, %hi(D_8008C664)
/* 1F03C 8001E43C 00001012 */  mflo       $v0
/* 1F040 8001E440 0002C043 */  sra        $t8, $v0, 1
/* 1F044 8001E444 AD180000 */  sw         $t8, 0x0($t0)
/* 1F048 8001E448 954AC592 */  lhu        $t2, %lo(D_8008C592)($t2)
/* 1F04C 8001E44C AC22C664 */  sw         $v0, %lo(D_8008C664)($at)
/* 1F050 8001E450 31590001 */  andi       $t9, $t2, 0x1
/* 1F054 8001E454 17200020 */  bnez       $t9, .L8001E4D8
/* 1F058 8001E458 3C0B8008 */   lui       $t3, %hi(D_8007B2E4)
/* 1F05C 8001E45C 8D6BB2E4 */  lw         $t3, %lo(D_8007B2E4)($t3)
/* 1F060 8001E460 3C018008 */  lui        $at, %hi(D_8007BAE4)
/* 1F064 8001E464 316C0480 */  andi       $t4, $t3, 0x480
/* 1F068 8001E468 5580001C */  bnel       $t4, $zero, .L8001E4DC
/* 1F06C 8001E46C 8D0A0000 */   lw        $t2, 0x0($t0)
/* 1F070 8001E470 C428BAE4 */  lwc1       $f8, %lo(D_8007BAE4)($at)
/* 1F074 8001E474 3C028005 */  lui        $v0, %hi(D_8004D2B8)
/* 1F078 8001E478 2442D2B8 */  addiu      $v0, $v0, %lo(D_8004D2B8)
/* 1F07C 8001E47C 46080032 */  c.eq.s     $f0, $f8
/* 1F080 8001E480 3C018008 */  lui        $at, %hi(D_8007BAEC)
/* 1F084 8001E484 45020007 */  bc1fl      .L8001E4A4
/* 1F088 8001E488 8C4D0000 */   lw        $t5, 0x0($v0)
/* 1F08C 8001E48C C42ABAEC */  lwc1       $f10, %lo(D_8007BAEC)($at)
/* 1F090 8001E490 460A0032 */  c.eq.s     $f0, $f10
/* 1F094 8001E494 00000000 */  nop
/* 1F098 8001E498 4501000C */  bc1t       .L8001E4CC
/* 1F09C 8001E49C 00000000 */   nop
/* 1F0A0 8001E4A0 8C4D0000 */  lw         $t5, 0x0($v0)
.L8001E4A4:
/* 1F0A4 8001E4A4 2407000F */  addiu      $a3, $zero, 0xF
/* 1F0A8 8001E4A8 24B80001 */  addiu      $t8, $a1, 0x1
/* 1F0AC 8001E4AC 25AE0001 */  addiu      $t6, $t5, 0x1
/* 1F0B0 8001E4B0 29C1001F */  slti       $at, $t6, 0x1F
/* 1F0B4 8001E4B4 14200008 */  bnez       $at, .L8001E4D8
/* 1F0B8 8001E4B8 AC4E0000 */   sw        $t6, 0x0($v0)
/* 1F0BC 8001E4BC AC870000 */  sw         $a3, 0x0($a0)
/* 1F0C0 8001E4C0 A0D80000 */  sb         $t8, 0x0($a2)
/* 1F0C4 8001E4C4 10000004 */  b          .L8001E4D8
/* 1F0C8 8001E4C8 AC400000 */   sw        $zero, 0x0($v0)
.L8001E4CC:
/* 1F0CC 8001E4CC 3C028005 */  lui        $v0, %hi(D_8004D2B8)
/* 1F0D0 8001E4D0 2442D2B8 */  addiu      $v0, $v0, %lo(D_8004D2B8)
/* 1F0D4 8001E4D4 AC400000 */  sw         $zero, 0x0($v0)
.L8001E4D8:
/* 1F0D8 8001E4D8 8D0A0000 */  lw         $t2, 0x0($t0)
.L8001E4DC:
/* 1F0DC 8001E4DC 3C028008 */  lui        $v0, %hi(D_8007B2E4)
/* 1F0E0 8001E4E0 8C42B2E4 */  lw         $v0, %lo(D_8007B2E4)($v0)
/* 1F0E4 8001E4E4 2419001C */  addiu      $t9, $zero, 0x1C
/* 1F0E8 8001E4E8 3C018009 */  lui        $at, %hi(D_8008C648)
/* 1F0EC 8001E4EC 032A5823 */  subu       $t3, $t9, $t2
/* 1F0F0 8001E4F0 AC2BC648 */  sw         $t3, %lo(D_8008C648)($at)
/* 1F0F4 8001E4F4 3C018009 */  lui        $at, %hi(D_8008C64C)
/* 1F0F8 8001E4F8 240C0018 */  addiu      $t4, $zero, 0x18
/* 1F0FC 8001E4FC 304D0C00 */  andi       $t5, $v0, 0xC00
/* 1F100 8001E500 AC2CC64C */  sw         $t4, %lo(D_8008C64C)($at)
/* 1F104 8001E504 15A00008 */  bnez       $t5, .L8001E528
/* 1F108 8001E508 01A01025 */   or        $v0, $t5, $zero
/* 1F10C 8001E50C 3C048008 */  lui        $a0, %hi(D_8007BACC)
/* 1F110 8001E510 0C0079FF */  jal        func_8001E7FC
/* 1F114 8001E514 2484BACC */   addiu     $a0, $a0, %lo(D_8007BACC)
/* 1F118 8001E518 3C028008 */  lui        $v0, %hi(D_8007B2E4)
/* 1F11C 8001E51C 8C42B2E4 */  lw         $v0, %lo(D_8007B2E4)($v0)
/* 1F120 8001E520 304E0C00 */  andi       $t6, $v0, 0xC00
/* 1F124 8001E524 01C01025 */  or         $v0, $t6, $zero
.L8001E528:
/* 1F128 8001E528 3C0F8009 */  lui        $t7, %hi(D_8008C664)
/* 1F12C 8001E52C 8DEFC664 */  lw         $t7, %lo(D_8008C664)($t7)
/* 1F130 8001E530 2418001C */  addiu      $t8, $zero, 0x1C
/* 1F134 8001E534 3C018009 */  lui        $at, %hi(D_8008C648)
/* 1F138 8001E538 030FC823 */  subu       $t9, $t8, $t7
/* 1F13C 8001E53C AC39C648 */  sw         $t9, %lo(D_8008C648)($at)
/* 1F140 8001E540 3C018009 */  lui        $at, %hi(D_8008C64C)
/* 1F144 8001E544 240A00C5 */  addiu      $t2, $zero, 0xC5
/* 1F148 8001E548 14400004 */  bnez       $v0, .L8001E55C
/* 1F14C 8001E54C AC2AC64C */   sw        $t2, %lo(D_8008C64C)($at)
/* 1F150 8001E550 3C048008 */  lui        $a0, %hi(D_8007BAC8)
/* 1F154 8001E554 0C007AF7 */  jal        func_8001EBDC
/* 1F158 8001E558 8C84BAC8 */   lw        $a0, %lo(D_8007BAC8)($a0)
.L8001E55C:
/* 1F15C 8001E55C 3C028009 */  lui        $v0, %hi(D_8008C592)
/* 1F160 8001E560 3C0C8008 */  lui        $t4, %hi(D_80084EE0)
/* 1F164 8001E564 958C4EE0 */  lhu        $t4, %lo(D_80084EE0)($t4)
/* 1F168 8001E568 9442C592 */  lhu        $v0, %lo(D_8008C592)($v0)
/* 1F16C 8001E56C 318D000D */  andi       $t5, $t4, 0xD
/* 1F170 8001E570 304B0001 */  andi       $t3, $v0, 0x1
/* 1F174 8001E574 11A0000E */  beqz       $t5, .L8001E5B0
/* 1F178 8001E578 01601025 */   or        $v0, $t3, $zero
/* 1F17C 8001E57C 1560000C */  bnez       $t3, .L8001E5B0
/* 1F180 8001E580 3C0E8008 */   lui       $t6, %hi(D_80084F1C)
/* 1F184 8001E584 8DCE4F1C */  lw         $t6, %lo(D_80084F1C)($t6)
/* 1F188 8001E588 95D80014 */  lhu        $t8, 0x14($t6)
/* 1F18C 8001E58C 330F0008 */  andi       $t7, $t8, 0x8
/* 1F190 8001E590 15E00007 */  bnez       $t7, .L8001E5B0
/* 1F194 8001E594 00000000 */   nop
/* 1F198 8001E598 0C007AA1 */  jal        func_8001EA84
/* 1F19C 8001E59C 8FA40028 */   lw        $a0, 0x28($sp)
/* 1F1A0 8001E5A0 3C028009 */  lui        $v0, %hi(D_8008C592)
/* 1F1A4 8001E5A4 9442C592 */  lhu        $v0, %lo(D_8008C592)($v0)
/* 1F1A8 8001E5A8 30590001 */  andi       $t9, $v0, 0x1
/* 1F1AC 8001E5AC 03201025 */  or         $v0, $t9, $zero
.L8001E5B0:
/* 1F1B0 8001E5B0 3C018009 */  lui        $at, %hi(D_8008C64C)
/* 1F1B4 8001E5B4 AC20C64C */  sw         $zero, %lo(D_8008C64C)($at)
/* 1F1B8 8001E5B8 3C018009 */  lui        $at, %hi(D_8008C648)
/* 1F1BC 8001E5BC 1040000D */  beqz       $v0, .L8001E5F4
/* 1F1C0 8001E5C0 AC20C648 */   sw        $zero, %lo(D_8008C648)($at)
/* 1F1C4 8001E5C4 3C028009 */  lui        $v0, %hi(D_8008C630)
/* 1F1C8 8001E5C8 2442C630 */  addiu      $v0, $v0, %lo(D_8008C630)
/* 1F1CC 8001E5CC 944A0000 */  lhu        $t2, 0x0($v0)
/* 1F1D0 8001E5D0 11400008 */  beqz       $t2, .L8001E5F4
/* 1F1D4 8001E5D4 00000000 */   nop
/* 1F1D8 8001E5D8 0C0080F4 */  jal        func_800203D0
/* 1F1DC 8001E5DC 00000000 */   nop
/* 1F1E0 8001E5E0 3C028009 */  lui        $v0, %hi(D_8008C630)
/* 1F1E4 8001E5E4 2442C630 */  addiu      $v0, $v0, %lo(D_8008C630)
/* 1F1E8 8001E5E8 944B0000 */  lhu        $t3, 0x0($v0)
/* 1F1EC 8001E5EC 256CFFFF */  addiu      $t4, $t3, -0x1
/* 1F1F0 8001E5F0 A44C0000 */  sh         $t4, 0x0($v0)
.L8001E5F4:
/* 1F1F4 8001E5F4 3C028008 */  lui        $v0, %hi(D_8007B2E4)
/* 1F1F8 8001E5F8 8C42B2E4 */  lw         $v0, %lo(D_8007B2E4)($v0)
/* 1F1FC 8001E5FC 304D0004 */  andi       $t5, $v0, 0x4
/* 1F200 8001E600 11A00005 */  beqz       $t5, .L8001E618
/* 1F204 8001E604 3C048008 */   lui       $a0, %hi(D_8007BAB8)
/* 1F208 8001E608 0C007B57 */  jal        func_8001ED5C
/* 1F20C 8001E60C 2484BAB8 */   addiu     $a0, $a0, %lo(D_8007BAB8)
/* 1F210 8001E610 10000006 */  b          .L8001E62C
/* 1F214 8001E614 00000000 */   nop
.L8001E618:
/* 1F218 8001E618 304E0008 */  andi       $t6, $v0, 0x8
/* 1F21C 8001E61C 11C00003 */  beqz       $t6, .L8001E62C
/* 1F220 8001E620 3C048008 */   lui       $a0, %hi(D_8007BAB8)
/* 1F224 8001E624 0C007CF7 */  jal        func_8001F3DC
/* 1F228 8001E628 2484BAB8 */   addiu     $a0, $a0, %lo(D_8007BAB8)
.L8001E62C:
/* 1F22C 8001E62C 3C018009 */  lui        $at, %hi(D_8008C64C)
/* 1F230 8001E630 AC20C64C */  sw         $zero, %lo(D_8008C64C)($at)
/* 1F234 8001E634 3C018009 */  lui        $at, %hi(D_8008C648)
/* 1F238 8001E638 3C198009 */  lui        $t9, %hi(D_8008C592)
/* 1F23C 8001E63C 9739C592 */  lhu        $t9, %lo(D_8008C592)($t9)
/* 1F240 8001E640 AC20C648 */  sw         $zero, %lo(D_8008C648)($at)
/* 1F244 8001E644 3C018009 */  lui        $at, %hi(D_8008C658)
/* 1F248 8001E648 24180140 */  addiu      $t8, $zero, 0x140
/* 1F24C 8001E64C AC38C658 */  sw         $t8, %lo(D_8008C658)($at)
/* 1F250 8001E650 3C018009 */  lui        $at, %hi(D_8008C65C)
/* 1F254 8001E654 240F00F0 */  addiu      $t7, $zero, 0xF0
/* 1F258 8001E658 332A0001 */  andi       $t2, $t9, 0x1
/* 1F25C 8001E65C 1140003E */  beqz       $t2, .L8001E758
/* 1F260 8001E660 AC2FC65C */   sw        $t7, %lo(D_8008C65C)($at)
/* 1F264 8001E664 0C008262 */  jal        func_80020988
/* 1F268 8001E668 00000000 */   nop
/* 1F26C 8001E66C 3C0B8009 */  lui        $t3, %hi(D_8008C592)
/* 1F270 8001E670 956BC592 */  lhu        $t3, %lo(D_8008C592)($t3)
/* 1F274 8001E674 3C028008 */  lui        $v0, %hi(D_8007BABA)
/* 1F278 8001E678 316C0002 */  andi       $t4, $t3, 0x2
/* 1F27C 8001E67C 15800012 */  bnez       $t4, .L8001E6C8
/* 1F280 8001E680 00000000 */   nop
/* 1F284 8001E684 9442BABA */  lhu        $v0, %lo(D_8007BABA)($v0)
/* 1F288 8001E688 3C0D8008 */  lui        $t5, %hi(D_8007BB2C)
/* 1F28C 8001E68C 1040000E */  beqz       $v0, .L8001E6C8
/* 1F290 8001E690 00000000 */   nop
/* 1F294 8001E694 95ADBB2C */  lhu        $t5, %lo(D_8007BB2C)($t5)
/* 1F298 8001E698 3C188008 */  lui        $t8, %hi(D_80086F10)
/* 1F29C 8001E69C 31AE0001 */  andi       $t6, $t5, 0x1
/* 1F2A0 8001E6A0 15C00009 */  bnez       $t6, .L8001E6C8
/* 1F2A4 8001E6A4 00000000 */   nop
/* 1F2A8 8001E6A8 8F186F10 */  lw         $t8, %lo(D_80086F10)($t8)
/* 1F2AC 8001E6AC 2444FFFF */  addiu      $a0, $v0, -0x1
/* 1F2B0 8001E6B0 3099FFFF */  andi       $t9, $a0, 0xFFFF
/* 1F2B4 8001E6B4 330F0001 */  andi       $t7, $t8, 0x1
/* 1F2B8 8001E6B8 15E00003 */  bnez       $t7, .L8001E6C8
/* 1F2BC 8001E6BC 00000000 */   nop
/* 1F2C0 8001E6C0 0C007E98 */  jal        func_8001FA60
/* 1F2C4 8001E6C4 03202025 */   or        $a0, $t9, $zero
.L8001E6C8:
/* 1F2C8 8001E6C8 3C0A8008 */  lui        $t2, %hi(D_8007BAC0)
/* 1F2CC 8001E6CC 954ABAC0 */  lhu        $t2, %lo(D_8007BAC0)($t2)
/* 1F2D0 8001E6D0 3C0C8008 */  lui        $t4, %hi(D_8007B2E4)
/* 1F2D4 8001E6D4 314B0020 */  andi       $t3, $t2, 0x20
/* 1F2D8 8001E6D8 11600007 */  beqz       $t3, .L8001E6F8
/* 1F2DC 8001E6DC 00000000 */   nop
/* 1F2E0 8001E6E0 8D8CB2E4 */  lw         $t4, %lo(D_8007B2E4)($t4)
/* 1F2E4 8001E6E4 318D0800 */  andi       $t5, $t4, 0x800
/* 1F2E8 8001E6E8 15A00003 */  bnez       $t5, .L8001E6F8
/* 1F2EC 8001E6EC 00000000 */   nop
/* 1F2F0 8001E6F0 0C007EE5 */  jal        func_8001FB94
/* 1F2F4 8001E6F4 00000000 */   nop
.L8001E6F8:
/* 1F2F8 8001E6F8 3C048008 */  lui        $a0, %hi(D_8007BACC)
/* 1F2FC 8001E6FC 0C007FBB */  jal        func_8001FEEC
/* 1F300 8001E700 2484BACC */   addiu     $a0, $a0, %lo(D_8007BACC)
/* 1F304 8001E704 3C028008 */  lui        $v0, %hi(D_8007C990)
/* 1F308 8001E708 8C42C990 */  lw         $v0, %lo(D_8007C990)($v0)
/* 1F30C 8001E70C 3C038008 */  lui        $v1, %hi(D_8007C998)
/* 1F310 8001E710 2463C998 */  addiu      $v1, $v1, %lo(D_8007C998)
/* 1F314 8001E714 50400036 */  beql       $v0, $zero, .L8001E7F0
/* 1F318 8001E718 8FBF0014 */   lw        $ra, 0x14($sp)
.L8001E71C:
/* 1F31C 8001E71C 846E0074 */  lh         $t6, 0x74($v1)
/* 1F320 8001E720 2401FFFF */  addiu      $at, $zero, -0x1
/* 1F324 8001E724 24640024 */  addiu      $a0, $v1, 0x24
/* 1F328 8001E728 11C10007 */  beq        $t6, $at, .L8001E748
/* 1F32C 8001E72C 00000000 */   nop
/* 1F330 8001E730 AFA20024 */  sw         $v0, 0x24($sp)
/* 1F334 8001E734 0C007FBB */  jal        func_8001FEEC
/* 1F338 8001E738 AFA3001C */   sw        $v1, 0x1C($sp)
/* 1F33C 8001E73C 8FA20024 */  lw         $v0, 0x24($sp)
/* 1F340 8001E740 8FA3001C */  lw         $v1, 0x1C($sp)
/* 1F344 8001E744 2442FFFF */  addiu      $v0, $v0, -0x1
.L8001E748:
/* 1F348 8001E748 1440FFF4 */  bnez       $v0, .L8001E71C
/* 1F34C 8001E74C 24630128 */   addiu     $v1, $v1, 0x128
/* 1F350 8001E750 10000027 */  b          .L8001E7F0
/* 1F354 8001E754 8FBF0014 */   lw        $ra, 0x14($sp)
.L8001E758:
/* 1F358 8001E758 3C188008 */  lui        $t8, %hi(D_8007BA74)
/* 1F35C 8001E75C 8F18BA74 */  lw         $t8, %lo(D_8007BA74)($t8)
/* 1F360 8001E760 3C0F8008 */  lui        $t7, %hi(D_8007B2E4)
/* 1F364 8001E764 3C0A8008 */  lui        $t2, %hi(D_8007BA78)
/* 1F368 8001E768 13000009 */  beqz       $t8, .L8001E790
/* 1F36C 8001E76C 00000000 */   nop
/* 1F370 8001E770 8DEFB2E4 */  lw         $t7, %lo(D_8007B2E4)($t7)
/* 1F374 8001E774 31F90007 */  andi       $t9, $t7, 0x7
/* 1F378 8001E778 17200005 */  bnez       $t9, .L8001E790
/* 1F37C 8001E77C 00000000 */   nop
/* 1F380 8001E780 0C007E06 */  jal        func_8001F818
/* 1F384 8001E784 00000000 */   nop
/* 1F388 8001E788 10000019 */  b          .L8001E7F0
/* 1F38C 8001E78C 8FBF0014 */   lw        $ra, 0x14($sp)
.L8001E790:
/* 1F390 8001E790 8D4ABA78 */  lw         $t2, %lo(D_8007BA78)($t2)
/* 1F394 8001E794 3C0B8008 */  lui        $t3, %hi(D_8007B2E4)
/* 1F398 8001E798 3C0D8008 */  lui        $t5, %hi(D_8007BA7C)
/* 1F39C 8001E79C 11400009 */  beqz       $t2, .L8001E7C4
/* 1F3A0 8001E7A0 00000000 */   nop
/* 1F3A4 8001E7A4 8D6BB2E4 */  lw         $t3, %lo(D_8007B2E4)($t3)
/* 1F3A8 8001E7A8 316C000B */  andi       $t4, $t3, 0xB
/* 1F3AC 8001E7AC 15800005 */  bnez       $t4, .L8001E7C4
/* 1F3B0 8001E7B0 00000000 */   nop
/* 1F3B4 8001E7B4 0C007E40 */  jal        func_8001F900
/* 1F3B8 8001E7B8 00000000 */   nop
/* 1F3BC 8001E7BC 1000000C */  b          .L8001E7F0
/* 1F3C0 8001E7C0 8FBF0014 */   lw        $ra, 0x14($sp)
.L8001E7C4:
/* 1F3C4 8001E7C4 8DADBA7C */  lw         $t5, %lo(D_8007BA7C)($t5)
/* 1F3C8 8001E7C8 3C0E8008 */  lui        $t6, %hi(D_8007B2E4)
/* 1F3CC 8001E7CC 51A00008 */  beql       $t5, $zero, .L8001E7F0
/* 1F3D0 8001E7D0 8FBF0014 */   lw        $ra, 0x14($sp)
/* 1F3D4 8001E7D4 8DCEB2E4 */  lw         $t6, %lo(D_8007B2E4)($t6)
/* 1F3D8 8001E7D8 31D80007 */  andi       $t8, $t6, 0x7
/* 1F3DC 8001E7DC 57000004 */  bnel       $t8, $zero, .L8001E7F0
/* 1F3E0 8001E7E0 8FBF0014 */   lw        $ra, 0x14($sp)
/* 1F3E4 8001E7E4 0C007E6C */  jal        func_8001F9B0
/* 1F3E8 8001E7E8 00000000 */   nop
/* 1F3EC 8001E7EC 8FBF0014 */  lw         $ra, 0x14($sp)
.L8001E7F0:
/* 1F3F0 8001E7F0 27BD0028 */  addiu      $sp, $sp, 0x28
/* 1F3F4 8001E7F4 03E00008 */  jr         $ra
/* 1F3F8 8001E7F8 00000000 */   nop

glabel func_8001E7FC
/* 1F3FC 8001E7FC 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 1F400 8001E800 AFBF0034 */  sw         $ra, 0x34($sp)
/* 1F404 8001E804 AFB00030 */  sw         $s0, 0x30($sp)
/* 1F408 8001E808 AFA40038 */  sw         $a0, 0x38($sp)
/* 1F40C 8001E80C 8FAE0038 */  lw         $t6, 0x38($sp)
/* 1F410 8001E810 3C04803A */  lui        $a0, %hi(D_803A6F40)
/* 1F414 8001E814 240F0011 */  addiu      $t7, $zero, 0x11
/* 1F418 8001E818 8DD00064 */  lw         $s0, 0x64($t6)
/* 1F41C 8001E81C 24180020 */  addiu      $t8, $zero, 0x20
/* 1F420 8001E820 24190027 */  addiu      $t9, $zero, 0x27
/* 1F424 8001E824 24080400 */  addiu      $t0, $zero, 0x400
/* 1F428 8001E828 24090400 */  addiu      $t1, $zero, 0x400
/* 1F42C 8001E82C AFA90020 */  sw         $t1, 0x20($sp)
/* 1F430 8001E830 AFA8001C */  sw         $t0, 0x1C($sp)
/* 1F434 8001E834 AFB90018 */  sw         $t9, 0x18($sp)
/* 1F438 8001E838 AFB80014 */  sw         $t8, 0x14($sp)
/* 1F43C 8001E83C AFAF0010 */  sw         $t7, 0x10($sp)
/* 1F440 8001E840 24846F40 */  addiu      $a0, $a0, %lo(D_803A6F40)
/* 1F444 8001E844 00002825 */  or         $a1, $zero, $zero
/* 1F448 8001E848 24060001 */  addiu      $a2, $zero, 0x1
/* 1F44C 8001E84C 0C00843F */  jal        func_800210FC
/* 1F450 8001E850 2407003E */   addiu     $a3, $zero, 0x3E
/* 1F454 8001E854 3C04803A */  lui        $a0, %hi(D_803A6F40)
/* 1F458 8001E858 240A0012 */  addiu      $t2, $zero, 0x12
/* 1F45C 8001E85C 240B0020 */  addiu      $t3, $zero, 0x20
/* 1F460 8001E860 240C0038 */  addiu      $t4, $zero, 0x38
/* 1F464 8001E864 240D0400 */  addiu      $t5, $zero, 0x400
/* 1F468 8001E868 240E0400 */  addiu      $t6, $zero, 0x400
/* 1F46C 8001E86C AFAE0020 */  sw         $t6, 0x20($sp)
/* 1F470 8001E870 AFAD001C */  sw         $t5, 0x1C($sp)
/* 1F474 8001E874 AFAC0018 */  sw         $t4, 0x18($sp)
/* 1F478 8001E878 AFAB0014 */  sw         $t3, 0x14($sp)
/* 1F47C 8001E87C AFAA0010 */  sw         $t2, 0x10($sp)
/* 1F480 8001E880 24846F40 */  addiu      $a0, $a0, %lo(D_803A6F40)
/* 1F484 8001E884 00002825 */  or         $a1, $zero, $zero
/* 1F488 8001E888 24060012 */  addiu      $a2, $zero, 0x12
/* 1F48C 8001E88C 0C00843F */  jal        func_800210FC
/* 1F490 8001E890 2407003E */   addiu     $a3, $zero, 0x3E
/* 1F494 8001E894 960F0004 */  lhu        $t7, 0x4($s0)
/* 1F498 8001E898 96190006 */  lhu        $t9, 0x6($s0)
/* 1F49C 8001E89C 000FC0C0 */  sll        $t8, $t7, 3
/* 1F4A0 8001E8A0 030FC023 */  subu       $t8, $t8, $t7
/* 1F4A4 8001E8A4 0018C0C0 */  sll        $t8, $t8, 3
/* 1F4A8 8001E8A8 0319001A */  div        $zero, $t8, $t9
/* 1F4AC 8001E8AC 00003812 */  mflo       $a3
/* 1F4B0 8001E8B0 17200002 */  bnez       $t9, .L8001E8BC
/* 1F4B4 8001E8B4 00000000 */   nop
/* 1F4B8 8001E8B8 0007000D */  break      7
.L8001E8BC:
/* 1F4BC 8001E8BC 2401FFFF */  addiu      $at, $zero, -0x1
/* 1F4C0 8001E8C0 17210004 */  bne        $t9, $at, .L8001E8D4
/* 1F4C4 8001E8C4 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 1F4C8 8001E8C8 17010002 */  bne        $t8, $at, .L8001E8D4
/* 1F4CC 8001E8CC 00000000 */   nop
/* 1F4D0 8001E8D0 0006000D */  break      6
.L8001E8D4:
/* 1F4D4 8001E8D4 50E00011 */  beql       $a3, $zero, .L8001E91C
/* 1F4D8 8001E8D8 960D0008 */   lhu       $t5, 0x8($s0)
/* 1F4DC 8001E8DC 3C04803A */  lui        $a0, %hi(D_803A6F40)
/* 1F4E0 8001E8E0 24080005 */  addiu      $t0, $zero, 0x5
/* 1F4E4 8001E8E4 2409005E */  addiu      $t1, $zero, 0x5E
/* 1F4E8 8001E8E8 240A0027 */  addiu      $t2, $zero, 0x27
/* 1F4EC 8001E8EC 240B0400 */  addiu      $t3, $zero, 0x400
/* 1F4F0 8001E8F0 240C0400 */  addiu      $t4, $zero, 0x400
/* 1F4F4 8001E8F4 AFAC0020 */  sw         $t4, 0x20($sp)
/* 1F4F8 8001E8F8 AFAB001C */  sw         $t3, 0x1C($sp)
/* 1F4FC 8001E8FC AFAA0018 */  sw         $t2, 0x18($sp)
/* 1F500 8001E900 AFA90014 */  sw         $t1, 0x14($sp)
/* 1F504 8001E904 AFA80010 */  sw         $t0, 0x10($sp)
/* 1F508 8001E908 24846F40 */  addiu      $a0, $a0, %lo(D_803A6F40)
/* 1F50C 8001E90C 24050003 */  addiu      $a1, $zero, 0x3
/* 1F510 8001E910 0C00843F */  jal        func_800210FC
/* 1F514 8001E914 2406000B */   addiu     $a2, $zero, 0xB
/* 1F518 8001E918 960D0008 */  lhu        $t5, 0x8($s0)
.L8001E91C:
/* 1F51C 8001E91C 960F000A */  lhu        $t7, 0xA($s0)
/* 1F520 8001E920 3C04803A */  lui        $a0, %hi(D_803A6F40)
/* 1F524 8001E924 000D70C0 */  sll        $t6, $t5, 3
/* 1F528 8001E928 01CD7023 */  subu       $t6, $t6, $t5
/* 1F52C 8001E92C 000E70C0 */  sll        $t6, $t6, 3
/* 1F530 8001E930 01CF001A */  div        $zero, $t6, $t7
/* 1F534 8001E934 00003812 */  mflo       $a3
/* 1F538 8001E938 24846F40 */  addiu      $a0, $a0, %lo(D_803A6F40)
/* 1F53C 8001E93C 15E00002 */  bnez       $t7, .L8001E948
/* 1F540 8001E940 00000000 */   nop
/* 1F544 8001E944 0007000D */  break      7
.L8001E948:
/* 1F548 8001E948 2401FFFF */  addiu      $at, $zero, -0x1
/* 1F54C 8001E94C 15E10004 */  bne        $t7, $at, .L8001E960
/* 1F550 8001E950 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 1F554 8001E954 15C10002 */  bne        $t6, $at, .L8001E960
/* 1F558 8001E958 00000000 */   nop
/* 1F55C 8001E95C 0006000D */  break      6
.L8001E960:
/* 1F560 8001E960 24050003 */  addiu      $a1, $zero, 0x3
/* 1F564 8001E964 10E0000C */  beqz       $a3, .L8001E998
/* 1F568 8001E968 24060015 */   addiu     $a2, $zero, 0x15
/* 1F56C 8001E96C 24180005 */  addiu      $t8, $zero, 0x5
/* 1F570 8001E970 2419005E */  addiu      $t9, $zero, 0x5E
/* 1F574 8001E974 2408002C */  addiu      $t0, $zero, 0x2C
/* 1F578 8001E978 24090400 */  addiu      $t1, $zero, 0x400
/* 1F57C 8001E97C 240A0400 */  addiu      $t2, $zero, 0x400
/* 1F580 8001E980 AFAA0020 */  sw         $t2, 0x20($sp)
/* 1F584 8001E984 AFA9001C */  sw         $t1, 0x1C($sp)
/* 1F588 8001E988 AFA80018 */  sw         $t0, 0x18($sp)
/* 1F58C 8001E98C AFB90014 */  sw         $t9, 0x14($sp)
/* 1F590 8001E990 0C00843F */  jal        func_800210FC
/* 1F594 8001E994 AFB80010 */   sw        $t8, 0x10($sp)
.L8001E998:
/* 1F598 8001E998 3C04803A */  lui        $a0, %hi(D_803A6F40)
/* 1F59C 8001E99C 240B000A */  addiu      $t3, $zero, 0xA
/* 1F5A0 8001E9A0 AFAB0010 */  sw         $t3, 0x10($sp)
/* 1F5A4 8001E9A4 24846F40 */  addiu      $a0, $a0, %lo(D_803A6F40)
/* 1F5A8 8001E9A8 24050020 */  addiu      $a1, $zero, 0x20
/* 1F5AC 8001E9AC 2406001D */  addiu      $a2, $zero, 0x1D
/* 1F5B0 8001E9B0 0C00838B */  jal        func_80020E2C
/* 1F5B4 8001E9B4 24070080 */   addiu     $a3, $zero, 0x80
/* 1F5B8 8001E9B8 24040003 */  addiu      $a0, $zero, 0x3
/* 1F5BC 8001E9BC 2405000C */  addiu      $a1, $zero, 0xC
/* 1F5C0 8001E9C0 00003025 */  or         $a2, $zero, $zero
/* 1F5C4 8001E9C4 0C008353 */  jal        func_80020D4C
/* 1F5C8 8001E9C8 96070004 */   lhu       $a3, 0x4($s0)
/* 1F5CC 8001E9CC 24040001 */  addiu      $a0, $zero, 0x1
/* 1F5D0 8001E9D0 24050036 */  addiu      $a1, $zero, 0x36
/* 1F5D4 8001E9D4 00003025 */  or         $a2, $zero, $zero
/* 1F5D8 8001E9D8 0C008353 */  jal        func_80020D4C
/* 1F5DC 8001E9DC 96070006 */   lhu       $a3, 0x6($s0)
/* 1F5E0 8001E9E0 24040003 */  addiu      $a0, $zero, 0x3
/* 1F5E4 8001E9E4 2405000C */  addiu      $a1, $zero, 0xC
/* 1F5E8 8001E9E8 2406001B */  addiu      $a2, $zero, 0x1B
/* 1F5EC 8001E9EC 0C008353 */  jal        func_80020D4C
/* 1F5F0 8001E9F0 96070008 */   lhu       $a3, 0x8($s0)
/* 1F5F4 8001E9F4 24040001 */  addiu      $a0, $zero, 0x1
/* 1F5F8 8001E9F8 24050036 */  addiu      $a1, $zero, 0x36
/* 1F5FC 8001E9FC 2406001B */  addiu      $a2, $zero, 0x1B
/* 1F600 8001EA00 0C008353 */  jal        func_80020D4C
/* 1F604 8001EA04 9607000A */   lhu       $a3, 0xA($s0)
/* 1F608 8001EA08 240C0070 */  addiu      $t4, $zero, 0x70
/* 1F60C 8001EA0C 240D001D */  addiu      $t5, $zero, 0x1D
/* 1F610 8001EA10 240E0400 */  addiu      $t6, $zero, 0x400
/* 1F614 8001EA14 240F0400 */  addiu      $t7, $zero, 0x400
/* 1F618 8001EA18 AFAF001C */  sw         $t7, 0x1C($sp)
/* 1F61C 8001EA1C AFAE0018 */  sw         $t6, 0x18($sp)
/* 1F620 8001EA20 AFAD0014 */  sw         $t5, 0x14($sp)
/* 1F624 8001EA24 AFAC0010 */  sw         $t4, 0x10($sp)
/* 1F628 8001EA28 2404002F */  addiu      $a0, $zero, 0x2F
/* 1F62C 8001EA2C 00002825 */  or         $a1, $zero, $zero
/* 1F630 8001EA30 24060008 */  addiu      $a2, $zero, 0x8
/* 1F634 8001EA34 0C0083E3 */  jal        func_80020F8C
/* 1F638 8001EA38 2407000A */   addiu     $a3, $zero, 0xA
/* 1F63C 8001EA3C 24180070 */  addiu      $t8, $zero, 0x70
/* 1F640 8001EA40 2419001D */  addiu      $t9, $zero, 0x1D
/* 1F644 8001EA44 24080400 */  addiu      $t0, $zero, 0x400
/* 1F648 8001EA48 24090400 */  addiu      $t1, $zero, 0x400
/* 1F64C 8001EA4C AFA9001C */  sw         $t1, 0x1C($sp)
/* 1F650 8001EA50 AFA80018 */  sw         $t0, 0x18($sp)
/* 1F654 8001EA54 AFB90014 */  sw         $t9, 0x14($sp)
/* 1F658 8001EA58 AFB80010 */  sw         $t8, 0x10($sp)
/* 1F65C 8001EA5C 2404002F */  addiu      $a0, $zero, 0x2F
/* 1F660 8001EA60 2405001B */  addiu      $a1, $zero, 0x1B
/* 1F664 8001EA64 24060008 */  addiu      $a2, $zero, 0x8
/* 1F668 8001EA68 0C0083E3 */  jal        func_80020F8C
/* 1F66C 8001EA6C 2407000A */   addiu     $a3, $zero, 0xA
/* 1F670 8001EA70 8FBF0034 */  lw         $ra, 0x34($sp)
/* 1F674 8001EA74 8FB00030 */  lw         $s0, 0x30($sp)
/* 1F678 8001EA78 27BD0038 */  addiu      $sp, $sp, 0x38
/* 1F67C 8001EA7C 03E00008 */  jr         $ra
/* 1F680 8001EA80 00000000 */   nop

glabel func_8001EA84
/* 1F684 8001EA84 27BDFF88 */  addiu      $sp, $sp, -0x78
/* 1F688 8001EA88 44800000 */  mtc1       $zero, $f0
/* 1F68C 8001EA8C AFBF002C */  sw         $ra, 0x2C($sp)
/* 1F690 8001EA90 AFA40078 */  sw         $a0, 0x78($sp)
/* 1F694 8001EA94 240E0104 */  addiu      $t6, $zero, 0x104
/* 1F698 8001EA98 3C018009 */  lui        $at, %hi(D_8008C648)
/* 1F69C 8001EA9C AC2EC648 */  sw         $t6, %lo(D_8008C648)($at)
/* 1F6A0 8001EAA0 3C018009 */  lui        $at, %hi(D_8008C64C)
/* 1F6A4 8001EAA4 240F0018 */  addiu      $t7, $zero, 0x18
/* 1F6A8 8001EAA8 44050000 */  mfc1       $a1, $f0
/* 1F6AC 8001EAAC 44060000 */  mfc1       $a2, $f0
/* 1F6B0 8001EAB0 3C078008 */  lui        $a3, %hi(D_80086DEC)
/* 1F6B4 8001EAB4 AC2FC64C */  sw         $t7, %lo(D_8008C64C)($at)
/* 1F6B8 8001EAB8 8CE76DEC */  lw         $a3, %lo(D_80086DEC)($a3)
/* 1F6BC 8001EABC 0C008D5C */  jal        func_80023570
/* 1F6C0 8001EAC0 27A40038 */   addiu     $a0, $sp, 0x38
/* 1F6C4 8001EAC4 3C188009 */  lui        $t8, %hi(D_8008C648)
/* 1F6C8 8001EAC8 3C0B8009 */  lui        $t3, %hi(D_8008C64C)
/* 1F6CC 8001EACC 8F18C648 */  lw         $t8, %lo(D_8008C648)($t8)
/* 1F6D0 8001EAD0 8D6BC64C */  lw         $t3, %lo(D_8008C64C)($t3)
/* 1F6D4 8001EAD4 3C0A8008 */  lui        $t2, %hi(D_8007B2F8)
/* 1F6D8 8001EAD8 27190011 */  addiu      $t9, $t8, 0x11
/* 1F6DC 8001EADC 256C0011 */  addiu      $t4, $t3, 0x11
/* 1F6E0 8001EAE0 44992000 */  mtc1       $t9, $f4
/* 1F6E4 8001EAE4 448C4000 */  mtc1       $t4, $f8
/* 1F6E8 8001EAE8 254AB2F8 */  addiu      $t2, $t2, %lo(D_8007B2F8)
/* 1F6EC 8001EAEC 468021A0 */  cvt.s.w    $f6, $f4
/* 1F6F0 8001EAF0 8D4E0000 */  lw         $t6, 0x0($t2)
/* 1F6F4 8001EAF4 8FAD0078 */  lw         $t5, 0x78($sp)
/* 1F6F8 8001EAF8 44808000 */  mtc1       $zero, $f16
/* 1F6FC 8001EAFC 000E7980 */  sll        $t7, $t6, 6
/* 1F700 8001EB00 468042A0 */  cvt.s.w    $f10, $f8
/* 1F704 8001EB04 01AF2821 */  addu       $a1, $t5, $t7
/* 1F708 8001EB08 E7A60068 */  swc1       $f6, 0x68($sp)
/* 1F70C 8001EB0C 24A500C0 */  addiu      $a1, $a1, 0xC0
/* 1F710 8001EB10 27A40038 */  addiu      $a0, $sp, 0x38
/* 1F714 8001EB14 E7B00070 */  swc1       $f16, 0x70($sp)
/* 1F718 8001EB18 0C00D480 */  jal        guMtxF2L
/* 1F71C 8001EB1C E7AA006C */   swc1      $f10, 0x6C($sp)
/* 1F720 8001EB20 3C098008 */  lui        $t1, %hi(gMasterGfxPos)
/* 1F724 8001EB24 3C0A8008 */  lui        $t2, %hi(D_8007B2F8)
/* 1F728 8001EB28 254AB2F8 */  addiu      $t2, $t2, %lo(D_8007B2F8)
/* 1F72C 8001EB2C 2529B2FC */  addiu      $t1, $t1, %lo(gMasterGfxPos)
/* 1F730 8001EB30 8D220000 */  lw         $v0, 0x0($t1)
/* 1F734 8001EB34 3C190102 */  lui        $t9, (0x1020040 >> 16)
/* 1F738 8001EB38 37390040 */  ori        $t9, $t9, (0x1020040 & 0xFFFF)
/* 1F73C 8001EB3C 24580008 */  addiu      $t8, $v0, 0x8
/* 1F740 8001EB40 AD380000 */  sw         $t8, 0x0($t1)
/* 1F744 8001EB44 AC590000 */  sw         $t9, 0x0($v0)
/* 1F748 8001EB48 8D4B0000 */  lw         $t3, 0x0($t2)
/* 1F74C 8001EB4C 3C0D0200 */  lui        $t5, %hi(D_2000000)
/* 1F750 8001EB50 25AD0000 */  addiu      $t5, $t5, %lo(D_2000000)
/* 1F754 8001EB54 000B6180 */  sll        $t4, $t3, 6
/* 1F758 8001EB58 258E00C0 */  addiu      $t6, $t4, 0xC0
/* 1F75C 8001EB5C 01CD7821 */  addu       $t7, $t6, $t5
/* 1F760 8001EB60 AC4F0004 */  sw         $t7, 0x4($v0)
/* 1F764 8001EB64 8D580000 */  lw         $t8, 0x0($t2)
/* 1F768 8001EB68 3C0C0600 */  lui        $t4, (0x6000000 >> 16)
/* 1F76C 8001EB6C 3C04803A */  lui        $a0, %hi(D_803A6F40)
/* 1F770 8001EB70 27190001 */  addiu      $t9, $t8, 0x1
/* 1F774 8001EB74 AD590000 */  sw         $t9, 0x0($t2)
/* 1F778 8001EB78 8D220000 */  lw         $v0, 0x0($t1)
/* 1F77C 8001EB7C 3C0E803B */  lui        $t6, %hi(D_803A8EA0)
/* 1F780 8001EB80 25CE8EA0 */  addiu      $t6, $t6, %lo(D_803A8EA0)
/* 1F784 8001EB84 244B0008 */  addiu      $t3, $v0, 0x8
/* 1F788 8001EB88 AD2B0000 */  sw         $t3, 0x0($t1)
/* 1F78C 8001EB8C AC4E0004 */  sw         $t6, 0x4($v0)
/* 1F790 8001EB90 AC4C0000 */  sw         $t4, 0x0($v0)
/* 1F794 8001EB94 240D000E */  addiu      $t5, $zero, 0xE
/* 1F798 8001EB98 240F0093 */  addiu      $t7, $zero, 0x93
/* 1F79C 8001EB9C 24180400 */  addiu      $t8, $zero, 0x400
/* 1F7A0 8001EBA0 24190400 */  addiu      $t9, $zero, 0x400
/* 1F7A4 8001EBA4 AFB90020 */  sw         $t9, 0x20($sp)
/* 1F7A8 8001EBA8 AFB8001C */  sw         $t8, 0x1C($sp)
/* 1F7AC 8001EBAC AFAF0014 */  sw         $t7, 0x14($sp)
/* 1F7B0 8001EBB0 AFAD0010 */  sw         $t5, 0x10($sp)
/* 1F7B4 8001EBB4 24846F40 */  addiu      $a0, $a0, %lo(D_803A6F40)
/* 1F7B8 8001EBB8 2405000D */  addiu      $a1, $zero, 0xD
/* 1F7BC 8001EBBC 2406000A */  addiu      $a2, $zero, 0xA
/* 1F7C0 8001EBC0 2407000B */  addiu      $a3, $zero, 0xB
/* 1F7C4 8001EBC4 0C00843F */  jal        func_800210FC
/* 1F7C8 8001EBC8 AFA00018 */   sw        $zero, 0x18($sp)
/* 1F7CC 8001EBCC 8FBF002C */  lw         $ra, 0x2C($sp)
/* 1F7D0 8001EBD0 27BD0078 */  addiu      $sp, $sp, 0x78
/* 1F7D4 8001EBD4 03E00008 */  jr         $ra
/* 1F7D8 8001EBD8 00000000 */   nop

glabel func_8001EBDC
/* 1F7DC 8001EBDC 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 1F7E0 8001EBE0 AFB0002C */  sw         $s0, 0x2C($sp)
/* 1F7E4 8001EBE4 3C10803A */  lui        $s0, %hi(D_803A6F40)
/* 1F7E8 8001EBE8 AFB30038 */  sw         $s3, 0x38($sp)
/* 1F7EC 8001EBEC 00809825 */  or         $s3, $a0, $zero
/* 1F7F0 8001EBF0 26106F40 */  addiu      $s0, $s0, %lo(D_803A6F40)
/* 1F7F4 8001EBF4 AFBF003C */  sw         $ra, 0x3C($sp)
/* 1F7F8 8001EBF8 AFB20034 */  sw         $s2, 0x34($sp)
/* 1F7FC 8001EBFC AFB10030 */  sw         $s1, 0x30($sp)
/* 1F800 8001EC00 240E000C */  addiu      $t6, $zero, 0xC
/* 1F804 8001EC04 240F0020 */  addiu      $t7, $zero, 0x20
/* 1F808 8001EC08 24180010 */  addiu      $t8, $zero, 0x10
/* 1F80C 8001EC0C 24190400 */  addiu      $t9, $zero, 0x400
/* 1F810 8001EC10 24080400 */  addiu      $t0, $zero, 0x400
/* 1F814 8001EC14 AFA80020 */  sw         $t0, 0x20($sp)
/* 1F818 8001EC18 AFB9001C */  sw         $t9, 0x1C($sp)
/* 1F81C 8001EC1C AFB80018 */  sw         $t8, 0x18($sp)
/* 1F820 8001EC20 AFAF0014 */  sw         $t7, 0x14($sp)
/* 1F824 8001EC24 AFAE0010 */  sw         $t6, 0x10($sp)
/* 1F828 8001EC28 02002025 */  or         $a0, $s0, $zero
/* 1F82C 8001EC2C 00002825 */  or         $a1, $zero, $zero
/* 1F830 8001EC30 00003025 */  or         $a2, $zero, $zero
/* 1F834 8001EC34 0C00843F */  jal        func_800210FC
/* 1F838 8001EC38 2407000C */   addiu     $a3, $zero, 0xC
/* 1F83C 8001EC3C 2409000C */  addiu      $t1, $zero, 0xC
/* 1F840 8001EC40 240A002C */  addiu      $t2, $zero, 0x2C
/* 1F844 8001EC44 240B0010 */  addiu      $t3, $zero, 0x10
/* 1F848 8001EC48 240C0400 */  addiu      $t4, $zero, 0x400
/* 1F84C 8001EC4C 240D0400 */  addiu      $t5, $zero, 0x400
/* 1F850 8001EC50 AFAD0020 */  sw         $t5, 0x20($sp)
/* 1F854 8001EC54 AFAC001C */  sw         $t4, 0x1C($sp)
/* 1F858 8001EC58 AFAB0018 */  sw         $t3, 0x18($sp)
/* 1F85C 8001EC5C AFAA0014 */  sw         $t2, 0x14($sp)
/* 1F860 8001EC60 AFA90010 */  sw         $t1, 0x10($sp)
/* 1F864 8001EC64 02002025 */  or         $a0, $s0, $zero
/* 1F868 8001EC68 24050016 */  addiu      $a1, $zero, 0x16
/* 1F86C 8001EC6C 00003025 */  or         $a2, $zero, $zero
/* 1F870 8001EC70 0C00843F */  jal        func_800210FC
/* 1F874 8001EC74 2407000C */   addiu     $a3, $zero, 0xC
/* 1F878 8001EC78 240E000C */  addiu      $t6, $zero, 0xC
/* 1F87C 8001EC7C 240F0038 */  addiu      $t7, $zero, 0x38
/* 1F880 8001EC80 24180010 */  addiu      $t8, $zero, 0x10
/* 1F884 8001EC84 24190400 */  addiu      $t9, $zero, 0x400
/* 1F888 8001EC88 24080400 */  addiu      $t0, $zero, 0x400
/* 1F88C 8001EC8C AFA80020 */  sw         $t0, 0x20($sp)
/* 1F890 8001EC90 AFB9001C */  sw         $t9, 0x1C($sp)
/* 1F894 8001EC94 AFB80018 */  sw         $t8, 0x18($sp)
/* 1F898 8001EC98 AFAF0014 */  sw         $t7, 0x14($sp)
/* 1F89C 8001EC9C AFAE0010 */  sw         $t6, 0x10($sp)
/* 1F8A0 8001ECA0 02002025 */  or         $a0, $s0, $zero
/* 1F8A4 8001ECA4 2405002C */  addiu      $a1, $zero, 0x2C
/* 1F8A8 8001ECA8 00003025 */  or         $a2, $zero, $zero
/* 1F8AC 8001ECAC 0C00843F */  jal        func_800210FC
/* 1F8B0 8001ECB0 2407000C */   addiu     $a3, $zero, 0xC
/* 1F8B4 8001ECB4 2409000C */  addiu      $t1, $zero, 0xC
/* 1F8B8 8001ECB8 240A0044 */  addiu      $t2, $zero, 0x44
/* 1F8BC 8001ECBC 240B0010 */  addiu      $t3, $zero, 0x10
/* 1F8C0 8001ECC0 240C0400 */  addiu      $t4, $zero, 0x400
/* 1F8C4 8001ECC4 240D0400 */  addiu      $t5, $zero, 0x400
/* 1F8C8 8001ECC8 AFAD0020 */  sw         $t5, 0x20($sp)
/* 1F8CC 8001ECCC AFAC001C */  sw         $t4, 0x1C($sp)
/* 1F8D0 8001ECD0 AFAB0018 */  sw         $t3, 0x18($sp)
/* 1F8D4 8001ECD4 AFAA0014 */  sw         $t2, 0x14($sp)
/* 1F8D8 8001ECD8 AFA90010 */  sw         $t1, 0x10($sp)
/* 1F8DC 8001ECDC 02002025 */  or         $a0, $s0, $zero
/* 1F8E0 8001ECE0 24050042 */  addiu      $a1, $zero, 0x42
/* 1F8E4 8001ECE4 00003025 */  or         $a2, $zero, $zero
/* 1F8E8 8001ECE8 0C00843F */  jal        func_800210FC
/* 1F8EC 8001ECEC 2407000C */   addiu     $a3, $zero, 0xC
/* 1F8F0 8001ECF0 240E000A */  addiu      $t6, $zero, 0xA
/* 1F8F4 8001ECF4 AFAE0010 */  sw         $t6, 0x10($sp)
/* 1F8F8 8001ECF8 02002025 */  or         $a0, $s0, $zero
/* 1F8FC 8001ECFC 24050020 */  addiu      $a1, $zero, 0x20
/* 1F900 8001ED00 2406001D */  addiu      $a2, $zero, 0x1D
/* 1F904 8001ED04 0C00838B */  jal        func_80020E2C
/* 1F908 8001ED08 24070080 */   addiu     $a3, $zero, 0x80
/* 1F90C 8001ED0C 02609025 */  or         $s2, $s3, $zero
/* 1F910 8001ED10 24100006 */  addiu      $s0, $zero, 0x6
/* 1F914 8001ED14 24130004 */  addiu      $s3, $zero, 0x4
/* 1F918 8001ED18 00008825 */  or         $s1, $zero, $zero
.L8001ED1C:
/* 1F91C 8001ED1C 24040001 */  addiu      $a0, $zero, 0x1
/* 1F920 8001ED20 02002825 */  or         $a1, $s0, $zero
/* 1F924 8001ED24 24060006 */  addiu      $a2, $zero, 0x6
/* 1F928 8001ED28 0C008353 */  jal        func_80020D4C
/* 1F92C 8001ED2C 92470024 */   lbu       $a3, 0x24($s2)
/* 1F930 8001ED30 26310001 */  addiu      $s1, $s1, 0x1
/* 1F934 8001ED34 26520001 */  addiu      $s2, $s2, 0x1
/* 1F938 8001ED38 1633FFF8 */  bne        $s1, $s3, .L8001ED1C
/* 1F93C 8001ED3C 26100016 */   addiu     $s0, $s0, 0x16
/* 1F940 8001ED40 8FBF003C */  lw         $ra, 0x3C($sp)
/* 1F944 8001ED44 8FB0002C */  lw         $s0, 0x2C($sp)
/* 1F948 8001ED48 8FB10030 */  lw         $s1, 0x30($sp)
/* 1F94C 8001ED4C 8FB20034 */  lw         $s2, 0x34($sp)
/* 1F950 8001ED50 8FB30038 */  lw         $s3, 0x38($sp)
/* 1F954 8001ED54 03E00008 */  jr         $ra
/* 1F958 8001ED58 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_8001ED5C
/* 1F95C 8001ED5C 27BDFF80 */  addiu      $sp, $sp, -0x80
/* 1F960 8001ED60 AFB10030 */  sw         $s1, 0x30($sp)
/* 1F964 8001ED64 3C038008 */  lui        $v1, %hi(gMasterGfxPos)
/* 1F968 8001ED68 2463B2FC */  addiu      $v1, $v1, %lo(gMasterGfxPos)
/* 1F96C 8001ED6C 00808825 */  or         $s1, $a0, $zero
/* 1F970 8001ED70 AFBF0034 */  sw         $ra, 0x34($sp)
/* 1F974 8001ED74 AFB0002C */  sw         $s0, 0x2C($sp)
/* 1F978 8001ED78 3C0F8005 */  lui        $t7, %hi(D_8004D300)
/* 1F97C 8001ED7C 25EFD300 */  addiu      $t7, $t7, %lo(D_8004D300)
/* 1F980 8001ED80 8DE10000 */  lw         $at, 0x0($t7)
/* 1F984 8001ED84 8DF90004 */  lw         $t9, 0x4($t7)
/* 1F988 8001ED88 27AE0060 */  addiu      $t6, $sp, 0x60
/* 1F98C 8001ED8C ADC10000 */  sw         $at, 0x0($t6)
/* 1F990 8001ED90 ADD90004 */  sw         $t9, 0x4($t6)
/* 1F994 8001ED94 8C620000 */  lw         $v0, 0x0($v1)
/* 1F998 8001ED98 3C0EE700 */  lui        $t6, (0xE7000000 >> 16)
/* 1F99C 8001ED9C 3C018009 */  lui        $at, %hi(D_8008C648)
/* 1F9A0 8001EDA0 24580008 */  addiu      $t8, $v0, 0x8
/* 1F9A4 8001EDA4 AC780000 */  sw         $t8, 0x0($v1)
/* 1F9A8 8001EDA8 AC400004 */  sw         $zero, 0x4($v0)
/* 1F9AC 8001EDAC AC4E0000 */  sw         $t6, 0x0($v0)
/* 1F9B0 8001EDB0 8C620000 */  lw         $v0, 0x0($v1)
/* 1F9B4 8001EDB4 3C19BA00 */  lui        $t9, (0xBA000C02 >> 16)
/* 1F9B8 8001EDB8 37390C02 */  ori        $t9, $t9, (0xBA000C02 & 0xFFFF)
/* 1F9BC 8001EDBC 244F0008 */  addiu      $t7, $v0, 0x8
/* 1F9C0 8001EDC0 AC6F0000 */  sw         $t7, 0x0($v1)
/* 1F9C4 8001EDC4 AC400004 */  sw         $zero, 0x4($v0)
/* 1F9C8 8001EDC8 AC590000 */  sw         $t9, 0x0($v0)
/* 1F9CC 8001EDCC 8C620000 */  lw         $v0, 0x0($v1)
/* 1F9D0 8001EDD0 3C0F803A */  lui        $t7, %hi(D_8039D990)
/* 1F9D4 8001EDD4 25EFD990 */  addiu      $t7, $t7, %lo(D_8039D990)
/* 1F9D8 8001EDD8 24580008 */  addiu      $t8, $v0, 0x8
/* 1F9DC 8001EDDC AC780000 */  sw         $t8, 0x0($v1)
/* 1F9E0 8001EDE0 3C0EFD10 */  lui        $t6, (0xFD100000 >> 16)
/* 1F9E4 8001EDE4 AC4E0000 */  sw         $t6, 0x0($v0)
/* 1F9E8 8001EDE8 AC4F0004 */  sw         $t7, 0x4($v0)
/* 1F9EC 8001EDEC 8C620000 */  lw         $v0, 0x0($v1)
/* 1F9F0 8001EDF0 3C18E800 */  lui        $t8, (0xE8000000 >> 16)
/* 1F9F4 8001EDF4 3C0FF500 */  lui        $t7, (0xF5000100 >> 16)
/* 1F9F8 8001EDF8 24590008 */  addiu      $t9, $v0, 0x8
/* 1F9FC 8001EDFC AC790000 */  sw         $t9, 0x0($v1)
/* 1FA00 8001EE00 AC400004 */  sw         $zero, 0x4($v0)
/* 1FA04 8001EE04 AC580000 */  sw         $t8, 0x0($v0)
/* 1FA08 8001EE08 8C620000 */  lw         $v0, 0x0($v1)
/* 1FA0C 8001EE0C 35EF0100 */  ori        $t7, $t7, (0xF5000100 & 0xFFFF)
/* 1FA10 8001EE10 3C190700 */  lui        $t9, (0x7000000 >> 16)
/* 1FA14 8001EE14 244E0008 */  addiu      $t6, $v0, 0x8
/* 1FA18 8001EE18 AC6E0000 */  sw         $t6, 0x0($v1)
/* 1FA1C 8001EE1C AC590004 */  sw         $t9, 0x4($v0)
/* 1FA20 8001EE20 AC4F0000 */  sw         $t7, 0x0($v0)
/* 1FA24 8001EE24 8C620000 */  lw         $v0, 0x0($v1)
/* 1FA28 8001EE28 3C0EE600 */  lui        $t6, (0xE6000000 >> 16)
/* 1FA2C 8001EE2C 3C19F000 */  lui        $t9, (0xF0000000 >> 16)
/* 1FA30 8001EE30 24580008 */  addiu      $t8, $v0, 0x8
/* 1FA34 8001EE34 AC780000 */  sw         $t8, 0x0($v1)
/* 1FA38 8001EE38 AC400004 */  sw         $zero, 0x4($v0)
/* 1FA3C 8001EE3C AC4E0000 */  sw         $t6, 0x0($v0)
/* 1FA40 8001EE40 8C620000 */  lw         $v0, 0x0($v1)
/* 1FA44 8001EE44 3C18073F */  lui        $t8, (0x73FC000 >> 16)
/* 1FA48 8001EE48 3718C000 */  ori        $t8, $t8, (0x73FC000 & 0xFFFF)
/* 1FA4C 8001EE4C 244F0008 */  addiu      $t7, $v0, 0x8
/* 1FA50 8001EE50 AC6F0000 */  sw         $t7, 0x0($v1)
/* 1FA54 8001EE54 AC580004 */  sw         $t8, 0x4($v0)
/* 1FA58 8001EE58 AC590000 */  sw         $t9, 0x0($v0)
/* 1FA5C 8001EE5C 8C620000 */  lw         $v0, 0x0($v1)
/* 1FA60 8001EE60 3C0FE700 */  lui        $t7, (0xE7000000 >> 16)
/* 1FA64 8001EE64 24190018 */  addiu      $t9, $zero, 0x18
/* 1FA68 8001EE68 244E0008 */  addiu      $t6, $v0, 0x8
/* 1FA6C 8001EE6C AC6E0000 */  sw         $t6, 0x0($v1)
/* 1FA70 8001EE70 AC400004 */  sw         $zero, 0x4($v0)
/* 1FA74 8001EE74 AC4F0000 */  sw         $t7, 0x0($v0)
/* 1FA78 8001EE78 AC39C648 */  sw         $t9, %lo(D_8008C648)($at)
/* 1FA7C 8001EE7C 3C018009 */  lui        $at, %hi(D_8008C64C)
/* 1FA80 8001EE80 2418003E */  addiu      $t8, $zero, 0x3E
/* 1FA84 8001EE84 240E000E */  addiu      $t6, $zero, 0xE
/* 1FA88 8001EE88 AC38C64C */  sw         $t8, %lo(D_8008C64C)($at)
/* 1FA8C 8001EE8C AFAE0010 */  sw         $t6, 0x10($sp)
/* 1FA90 8001EE90 240E0400 */  addiu      $t6, $zero, 0x400
/* 1FA94 8001EE94 24180400 */  addiu      $t8, $zero, 0x400
/* 1FA98 8001EE98 2419000E */  addiu      $t9, $zero, 0xE
/* 1FA9C 8001EE9C 3C04803A */  lui        $a0, %hi(D_803A6F60)
/* 1FAA0 8001EEA0 240F0064 */  addiu      $t7, $zero, 0x64
/* 1FAA4 8001EEA4 AFAF0014 */  sw         $t7, 0x14($sp)
/* 1FAA8 8001EEA8 24846F60 */  addiu      $a0, $a0, %lo(D_803A6F60)
/* 1FAAC 8001EEAC AFB90018 */  sw         $t9, 0x18($sp)
/* 1FAB0 8001EEB0 AFB8001C */  sw         $t8, 0x1C($sp)
/* 1FAB4 8001EEB4 AFAE0020 */  sw         $t6, 0x20($sp)
/* 1FAB8 8001EEB8 00002825 */  or         $a1, $zero, $zero
/* 1FABC 8001EEBC 00003025 */  or         $a2, $zero, $zero
/* 1FAC0 8001EEC0 0C00843F */  jal        func_800210FC
/* 1FAC4 8001EEC4 2407006E */   addiu     $a3, $zero, 0x6E
/* 1FAC8 8001EEC8 240F0024 */  addiu      $t7, $zero, 0x24
/* 1FACC 8001EECC 3C018009 */  lui        $at, %hi(D_8008C648)
/* 1FAD0 8001EED0 AC2FC648 */  sw         $t7, %lo(D_8008C648)($at)
/* 1FAD4 8001EED4 3C018009 */  lui        $at, %hi(D_8008C64C)
/* 1FAD8 8001EED8 24190094 */  addiu      $t9, $zero, 0x94
/* 1FADC 8001EEDC 3C10803A */  lui        $s0, %hi(D_803A6F60)
/* 1FAE0 8001EEE0 AC39C64C */  sw         $t9, %lo(D_8008C64C)($at)
/* 1FAE4 8001EEE4 26106F60 */  addiu      $s0, $s0, %lo(D_803A6F60)
/* 1FAE8 8001EEE8 24190400 */  addiu      $t9, $zero, 0x400
/* 1FAEC 8001EEEC 240F0400 */  addiu      $t7, $zero, 0x400
/* 1FAF0 8001EEF0 2418000E */  addiu      $t8, $zero, 0xE
/* 1FAF4 8001EEF4 240E0064 */  addiu      $t6, $zero, 0x64
/* 1FAF8 8001EEF8 AFAE0014 */  sw         $t6, 0x14($sp)
/* 1FAFC 8001EEFC AFB80010 */  sw         $t8, 0x10($sp)
/* 1FB00 8001EF00 AFAF001C */  sw         $t7, 0x1C($sp)
/* 1FB04 8001EF04 AFB90020 */  sw         $t9, 0x20($sp)
/* 1FB08 8001EF08 02002025 */  or         $a0, $s0, $zero
/* 1FB0C 8001EF0C 24050045 */  addiu      $a1, $zero, 0x45
/* 1FB10 8001EF10 00003025 */  or         $a2, $zero, $zero
/* 1FB14 8001EF14 2407006E */  addiu      $a3, $zero, 0x6E
/* 1FB18 8001EF18 0C00843F */  jal        func_800210FC
/* 1FB1C 8001EF1C AFA00018 */   sw        $zero, 0x18($sp)
/* 1FB20 8001EF20 2418000E */  addiu      $t8, $zero, 0xE
/* 1FB24 8001EF24 240E0064 */  addiu      $t6, $zero, 0x64
/* 1FB28 8001EF28 240F0400 */  addiu      $t7, $zero, 0x400
/* 1FB2C 8001EF2C 24190400 */  addiu      $t9, $zero, 0x400
/* 1FB30 8001EF30 AFB90020 */  sw         $t9, 0x20($sp)
/* 1FB34 8001EF34 AFAF001C */  sw         $t7, 0x1C($sp)
/* 1FB38 8001EF38 AFAE0014 */  sw         $t6, 0x14($sp)
/* 1FB3C 8001EF3C AFB80010 */  sw         $t8, 0x10($sp)
/* 1FB40 8001EF40 02002025 */  or         $a0, $s0, $zero
/* 1FB44 8001EF44 00002825 */  or         $a1, $zero, $zero
/* 1FB48 8001EF48 24060018 */  addiu      $a2, $zero, 0x18
/* 1FB4C 8001EF4C 2407006E */  addiu      $a3, $zero, 0x6E
/* 1FB50 8001EF50 0C00843F */  jal        func_800210FC
/* 1FB54 8001EF54 AFA00018 */   sw        $zero, 0x18($sp)
/* 1FB58 8001EF58 2418000E */  addiu      $t8, $zero, 0xE
/* 1FB5C 8001EF5C 240E0064 */  addiu      $t6, $zero, 0x64
/* 1FB60 8001EF60 240F0400 */  addiu      $t7, $zero, 0x400
/* 1FB64 8001EF64 24190400 */  addiu      $t9, $zero, 0x400
/* 1FB68 8001EF68 AFB90020 */  sw         $t9, 0x20($sp)
/* 1FB6C 8001EF6C AFAF001C */  sw         $t7, 0x1C($sp)
/* 1FB70 8001EF70 AFAE0014 */  sw         $t6, 0x14($sp)
/* 1FB74 8001EF74 AFB80010 */  sw         $t8, 0x10($sp)
/* 1FB78 8001EF78 02002025 */  or         $a0, $s0, $zero
/* 1FB7C 8001EF7C 2405008C */  addiu      $a1, $zero, 0x8C
/* 1FB80 8001EF80 24060018 */  addiu      $a2, $zero, 0x18
/* 1FB84 8001EF84 2407006E */  addiu      $a3, $zero, 0x6E
/* 1FB88 8001EF88 0C00843F */  jal        func_800210FC
/* 1FB8C 8001EF8C AFA00018 */   sw        $zero, 0x18($sp)
/* 1FB90 8001EF90 2418000E */  addiu      $t8, $zero, 0xE
/* 1FB94 8001EF94 240E0064 */  addiu      $t6, $zero, 0x64
/* 1FB98 8001EF98 240F0400 */  addiu      $t7, $zero, 0x400
/* 1FB9C 8001EF9C 24190400 */  addiu      $t9, $zero, 0x400
/* 1FBA0 8001EFA0 AFB90020 */  sw         $t9, 0x20($sp)
/* 1FBA4 8001EFA4 AFAF001C */  sw         $t7, 0x1C($sp)
/* 1FBA8 8001EFA8 AFAE0014 */  sw         $t6, 0x14($sp)
/* 1FBAC 8001EFAC AFB80010 */  sw         $t8, 0x10($sp)
/* 1FBB0 8001EFB0 02002025 */  or         $a0, $s0, $zero
/* 1FBB4 8001EFB4 24050045 */  addiu      $a1, $zero, 0x45
/* 1FBB8 8001EFB8 24060032 */  addiu      $a2, $zero, 0x32
/* 1FBBC 8001EFBC 2407006E */  addiu      $a3, $zero, 0x6E
/* 1FBC0 8001EFC0 0C00843F */  jal        func_800210FC
/* 1FBC4 8001EFC4 AFA00018 */   sw        $zero, 0x18($sp)
/* 1FBC8 8001EFC8 24180024 */  addiu      $t8, $zero, 0x24
/* 1FBCC 8001EFCC 240E0040 */  addiu      $t6, $zero, 0x40
/* 1FBD0 8001EFD0 240F0400 */  addiu      $t7, $zero, 0x400
/* 1FBD4 8001EFD4 24190400 */  addiu      $t9, $zero, 0x400
/* 1FBD8 8001EFD8 AFB90020 */  sw         $t9, 0x20($sp)
/* 1FBDC 8001EFDC AFAF001C */  sw         $t7, 0x1C($sp)
/* 1FBE0 8001EFE0 AFAE0014 */  sw         $t6, 0x14($sp)
/* 1FBE4 8001EFE4 AFB80010 */  sw         $t8, 0x10($sp)
/* 1FBE8 8001EFE8 02002025 */  or         $a0, $s0, $zero
/* 1FBEC 8001EFEC 2405006A */  addiu      $a1, $zero, 0x6A
/* 1FBF0 8001EFF0 2406000E */  addiu      $a2, $zero, 0xE
/* 1FBF4 8001EFF4 24070024 */  addiu      $a3, $zero, 0x24
/* 1FBF8 8001EFF8 0C00843F */  jal        func_800210FC
/* 1FBFC 8001EFFC AFA00018 */   sw        $zero, 0x18($sp)
/* 1FC00 8001F000 9638011C */  lhu        $t8, 0x11C($s1)
/* 1FC04 8001F004 240E0018 */  addiu      $t6, $zero, 0x18
/* 1FC08 8001F008 3C018009 */  lui        $at, %hi(D_8008C648)
/* 1FC0C 8001F00C 13000028 */  beqz       $t8, .L8001F0B0
/* 1FC10 8001F010 240F003E */   addiu     $t7, $zero, 0x3E
/* 1FC14 8001F014 AC2EC648 */  sw         $t6, %lo(D_8008C648)($at)
/* 1FC18 8001F018 3C018009 */  lui        $at, %hi(D_8008C64C)
/* 1FC1C 8001F01C AC2FC64C */  sw         $t7, %lo(D_8008C64C)($at)
/* 1FC20 8001F020 9624011C */  lhu        $a0, 0x11C($s1)
/* 1FC24 8001F024 0C005224 */  jal        func_80014890
/* 1FC28 8001F028 26250119 */   addiu     $a1, $s1, 0x119
/* 1FC2C 8001F02C 8E390010 */  lw         $t9, 0x10($s1)
/* 1FC30 8001F030 00402025 */  or         $a0, $v0, $zero
/* 1FC34 8001F034 97250008 */  lhu        $a1, 0x8($t9)
/* 1FC38 8001F038 0C005274 */  jal        func_800149D0
/* 1FC3C 8001F03C AFA20074 */   sw        $v0, 0x74($sp)
/* 1FC40 8001F040 8FA30074 */  lw         $v1, 0x74($sp)
/* 1FC44 8001F044 3C19800C */  lui        $t9, %hi(D_800C0690)
/* 1FC48 8001F048 304800FF */  andi       $t0, $v0, 0xFF
/* 1FC4C 8001F04C 00032202 */  srl        $a0, $v1, 8
/* 1FC50 8001F050 3098000F */  andi       $t8, $a0, 0xF
/* 1FC54 8001F054 00187880 */  sll        $t7, $t8, 2
/* 1FC58 8001F058 032FC821 */  addu       $t9, $t9, $t7
/* 1FC5C 8001F05C 8F390690 */  lw         $t9, %lo(D_800C0690)($t9)
/* 1FC60 8001F060 306E00FF */  andi       $t6, $v1, 0xFF
/* 1FC64 8001F064 000EC080 */  sll        $t8, $t6, 2
/* 1FC68 8001F068 03387021 */  addu       $t6, $t9, $t8
/* 1FC6C 8001F06C 30590004 */  andi       $t9, $v0, 0x4
/* 1FC70 8001F070 1720000F */  bnez       $t9, .L8001F0B0
/* 1FC74 8001F074 8DC70000 */   lw        $a3, 0x0($t6)
/* 1FC78 8001F078 00E02025 */  or         $a0, $a3, $zero
/* 1FC7C 8001F07C AFA7006C */  sw         $a3, 0x6C($sp)
/* 1FC80 8001F080 0C008346 */  jal        func_80020D18
/* 1FC84 8001F084 A3A8006B */   sb        $t0, 0x6B($sp)
/* 1FC88 8001F088 93A8006B */  lbu        $t0, 0x6B($sp)
/* 1FC8C 8001F08C 0002C080 */  sll        $t8, $v0, 2
/* 1FC90 8001F090 0302C023 */  subu       $t8, $t8, $v0
/* 1FC94 8001F094 240E0037 */  addiu      $t6, $zero, 0x37
/* 1FC98 8001F098 03A83021 */  addu       $a2, $sp, $t0
/* 1FC9C 8001F09C 8FA7006C */  lw         $a3, 0x6C($sp)
/* 1FCA0 8001F0A0 90C60060 */  lbu        $a2, 0x60($a2)
/* 1FCA4 8001F0A4 01D82023 */  subu       $a0, $t6, $t8
/* 1FCA8 8001F0A8 0C0082D3 */  jal        func_80020B4C
/* 1FCAC 8001F0AC 24050003 */   addiu     $a1, $zero, 0x3
.L8001F0B0:
/* 1FCB0 8001F0B0 962F011C */  lhu        $t7, 0x11C($s1)
/* 1FCB4 8001F0B4 24190024 */  addiu      $t9, $zero, 0x24
/* 1FCB8 8001F0B8 240E0094 */  addiu      $t6, $zero, 0x94
/* 1FCBC 8001F0BC 29E10003 */  slti       $at, $t7, 0x3
/* 1FCC0 8001F0C0 102000C1 */  beqz       $at, .L8001F3C8
/* 1FCC4 8001F0C4 27A50068 */   addiu     $a1, $sp, 0x68
/* 1FCC8 8001F0C8 3C018009 */  lui        $at, %hi(D_8008C648)
/* 1FCCC 8001F0CC AC39C648 */  sw         $t9, %lo(D_8008C648)($at)
/* 1FCD0 8001F0D0 3C018009 */  lui        $at, %hi(D_8008C64C)
/* 1FCD4 8001F0D4 AC2EC64C */  sw         $t6, %lo(D_8008C64C)($at)
/* 1FCD8 8001F0D8 9638011C */  lhu        $t8, 0x11C($s1)
/* 1FCDC 8001F0DC 00001025 */  or         $v0, $zero, $zero
/* 1FCE0 8001F0E0 1300000B */  beqz       $t8, .L8001F110
/* 1FCE4 8001F0E4 27B00068 */   addiu     $s0, $sp, 0x68
/* 1FCE8 8001F0E8 02201825 */  or         $v1, $s1, $zero
/* 1FCEC 8001F0EC 906F0119 */  lbu        $t7, 0x119($v1)
.L8001F0F0:
/* 1FCF0 8001F0F0 24420001 */  addiu      $v0, $v0, 0x1
/* 1FCF4 8001F0F4 26100001 */  addiu      $s0, $s0, 0x1
/* 1FCF8 8001F0F8 A20FFFFF */  sb         $t7, -0x1($s0)
/* 1FCFC 8001F0FC 9639011C */  lhu        $t9, 0x11C($s1)
/* 1FD00 8001F100 24630001 */  addiu      $v1, $v1, 0x1
/* 1FD04 8001F104 0059082B */  sltu       $at, $v0, $t9
/* 1FD08 8001F108 5420FFF9 */  bnel       $at, $zero, .L8001F0F0
/* 1FD0C 8001F10C 906F0119 */   lbu       $t7, 0x119($v1)
.L8001F110:
/* 1FD10 8001F110 00A28021 */  addu       $s0, $a1, $v0
/* 1FD14 8001F114 24440001 */  addiu      $a0, $v0, 0x1
/* 1FD18 8001F118 A2000000 */  sb         $zero, 0x0($s0)
/* 1FD1C 8001F11C 308EFFFF */  andi       $t6, $a0, 0xFFFF
/* 1FD20 8001F120 01C02025 */  or         $a0, $t6, $zero
/* 1FD24 8001F124 0C005224 */  jal        func_80014890
/* 1FD28 8001F128 AFAE0038 */   sw        $t6, 0x38($sp)
/* 1FD2C 8001F12C 8E380010 */  lw         $t8, 0x10($s1)
/* 1FD30 8001F130 00402025 */  or         $a0, $v0, $zero
/* 1FD34 8001F134 97050008 */  lhu        $a1, 0x8($t8)
/* 1FD38 8001F138 0C005274 */  jal        func_800149D0
/* 1FD3C 8001F13C AFA20074 */   sw        $v0, 0x74($sp)
/* 1FD40 8001F140 8FA30074 */  lw         $v1, 0x74($sp)
/* 1FD44 8001F144 3C18800C */  lui        $t8, %hi(D_800C0690)
/* 1FD48 8001F148 304800FF */  andi       $t0, $v0, 0xFF
/* 1FD4C 8001F14C 00032202 */  srl        $a0, $v1, 8
/* 1FD50 8001F150 308F000F */  andi       $t7, $a0, 0xF
/* 1FD54 8001F154 000F7080 */  sll        $t6, $t7, 2
/* 1FD58 8001F158 030EC021 */  addu       $t8, $t8, $t6
/* 1FD5C 8001F15C 8F180690 */  lw         $t8, %lo(D_800C0690)($t8)
/* 1FD60 8001F160 307900FF */  andi       $t9, $v1, 0xFF
/* 1FD64 8001F164 00197880 */  sll        $t7, $t9, 2
/* 1FD68 8001F168 030FC821 */  addu       $t9, $t8, $t7
/* 1FD6C 8001F16C 30580004 */  andi       $t8, $v0, 0x4
/* 1FD70 8001F170 13000006 */  beqz       $t8, .L8001F18C
/* 1FD74 8001F174 8F270000 */   lw        $a3, 0x0($t9)
/* 1FD78 8001F178 962F011C */  lhu        $t7, 0x11C($s1)
/* 1FD7C 8001F17C 3C078005 */  lui        $a3, %hi(D_8004D2C0)
/* 1FD80 8001F180 000FC880 */  sll        $t9, $t7, 2
/* 1FD84 8001F184 00F93821 */  addu       $a3, $a3, $t9
/* 1FD88 8001F188 8CE7D2C0 */  lw         $a3, %lo(D_8004D2C0)($a3)
.L8001F18C:
/* 1FD8C 8001F18C 00E02025 */  or         $a0, $a3, $zero
/* 1FD90 8001F190 AFA7006C */  sw         $a3, 0x6C($sp)
/* 1FD94 8001F194 0C008346 */  jal        func_80020D18
/* 1FD98 8001F198 A3A8006B */   sb        $t0, 0x6B($sp)
/* 1FD9C 8001F19C 93A8006B */  lbu        $t0, 0x6B($sp)
/* 1FDA0 8001F1A0 00027080 */  sll        $t6, $v0, 2
/* 1FDA4 8001F1A4 01C27023 */  subu       $t6, $t6, $v0
/* 1FDA8 8001F1A8 2418007C */  addiu      $t8, $zero, 0x7C
/* 1FDAC 8001F1AC 03A83021 */  addu       $a2, $sp, $t0
/* 1FDB0 8001F1B0 8FA7006C */  lw         $a3, 0x6C($sp)
/* 1FDB4 8001F1B4 90C60060 */  lbu        $a2, 0x60($a2)
/* 1FDB8 8001F1B8 030E2023 */  subu       $a0, $t8, $t6
/* 1FDBC 8001F1BC 0C0082D3 */  jal        func_80020B4C
/* 1FDC0 8001F1C0 24050003 */   addiu     $a1, $zero, 0x3
/* 1FDC4 8001F1C4 240F0001 */  addiu      $t7, $zero, 0x1
/* 1FDC8 8001F1C8 A20F0000 */  sb         $t7, 0x0($s0)
/* 1FDCC 8001F1CC 97A4003A */  lhu        $a0, 0x3A($sp)
/* 1FDD0 8001F1D0 0C005224 */  jal        func_80014890
/* 1FDD4 8001F1D4 27A50068 */   addiu     $a1, $sp, 0x68
/* 1FDD8 8001F1D8 8E390010 */  lw         $t9, 0x10($s1)
/* 1FDDC 8001F1DC 00402025 */  or         $a0, $v0, $zero
/* 1FDE0 8001F1E0 97250008 */  lhu        $a1, 0x8($t9)
/* 1FDE4 8001F1E4 0C005274 */  jal        func_800149D0
/* 1FDE8 8001F1E8 AFA20074 */   sw        $v0, 0x74($sp)
/* 1FDEC 8001F1EC 8FA30074 */  lw         $v1, 0x74($sp)
/* 1FDF0 8001F1F0 3C19800C */  lui        $t9, %hi(D_800C0690)
/* 1FDF4 8001F1F4 304800FF */  andi       $t0, $v0, 0xFF
/* 1FDF8 8001F1F8 00032202 */  srl        $a0, $v1, 8
/* 1FDFC 8001F1FC 3098000F */  andi       $t8, $a0, 0xF
/* 1FE00 8001F200 00187880 */  sll        $t7, $t8, 2
/* 1FE04 8001F204 032FC821 */  addu       $t9, $t9, $t7
/* 1FE08 8001F208 8F390690 */  lw         $t9, %lo(D_800C0690)($t9)
/* 1FE0C 8001F20C 306E00FF */  andi       $t6, $v1, 0xFF
/* 1FE10 8001F210 000EC080 */  sll        $t8, $t6, 2
/* 1FE14 8001F214 03387021 */  addu       $t6, $t9, $t8
/* 1FE18 8001F218 30590004 */  andi       $t9, $v0, 0x4
/* 1FE1C 8001F21C 13200006 */  beqz       $t9, .L8001F238
/* 1FE20 8001F220 8DC70000 */   lw        $a3, 0x0($t6)
/* 1FE24 8001F224 9638011C */  lhu        $t8, 0x11C($s1)
/* 1FE28 8001F228 3C078005 */  lui        $a3, %hi(D_8004D2C0)
/* 1FE2C 8001F22C 00187080 */  sll        $t6, $t8, 2
/* 1FE30 8001F230 00EE3821 */  addu       $a3, $a3, $t6
/* 1FE34 8001F234 8CE7D2C0 */  lw         $a3, %lo(D_8004D2C0)($a3)
.L8001F238:
/* 1FE38 8001F238 00E02025 */  or         $a0, $a3, $zero
/* 1FE3C 8001F23C AFA7006C */  sw         $a3, 0x6C($sp)
/* 1FE40 8001F240 0C008346 */  jal        func_80020D18
/* 1FE44 8001F244 A3A8006B */   sb        $t0, 0x6B($sp)
/* 1FE48 8001F248 93A8006B */  lbu        $t0, 0x6B($sp)
/* 1FE4C 8001F24C 00027880 */  sll        $t7, $v0, 2
/* 1FE50 8001F250 01E27823 */  subu       $t7, $t7, $v0
/* 1FE54 8001F254 24190037 */  addiu      $t9, $zero, 0x37
/* 1FE58 8001F258 03A83021 */  addu       $a2, $sp, $t0
/* 1FE5C 8001F25C 8FA7006C */  lw         $a3, 0x6C($sp)
/* 1FE60 8001F260 90C60060 */  lbu        $a2, 0x60($a2)
/* 1FE64 8001F264 032F2023 */  subu       $a0, $t9, $t7
/* 1FE68 8001F268 0C0082D3 */  jal        func_80020B4C
/* 1FE6C 8001F26C 2405001B */   addiu     $a1, $zero, 0x1B
/* 1FE70 8001F270 24180002 */  addiu      $t8, $zero, 0x2
/* 1FE74 8001F274 A2180000 */  sb         $t8, 0x0($s0)
/* 1FE78 8001F278 97A4003A */  lhu        $a0, 0x3A($sp)
/* 1FE7C 8001F27C 0C005224 */  jal        func_80014890
/* 1FE80 8001F280 27A50068 */   addiu     $a1, $sp, 0x68
/* 1FE84 8001F284 8E2E0010 */  lw         $t6, 0x10($s1)
/* 1FE88 8001F288 00402025 */  or         $a0, $v0, $zero
/* 1FE8C 8001F28C 95C50008 */  lhu        $a1, 0x8($t6)
/* 1FE90 8001F290 0C005274 */  jal        func_800149D0
/* 1FE94 8001F294 AFA20074 */   sw        $v0, 0x74($sp)
/* 1FE98 8001F298 8FA30074 */  lw         $v1, 0x74($sp)
/* 1FE9C 8001F29C 3C0E800C */  lui        $t6, %hi(D_800C0690)
/* 1FEA0 8001F2A0 304800FF */  andi       $t0, $v0, 0xFF
/* 1FEA4 8001F2A4 00032202 */  srl        $a0, $v1, 8
/* 1FEA8 8001F2A8 3099000F */  andi       $t9, $a0, 0xF
/* 1FEAC 8001F2AC 0019C080 */  sll        $t8, $t9, 2
/* 1FEB0 8001F2B0 01D87021 */  addu       $t6, $t6, $t8
/* 1FEB4 8001F2B4 8DCE0690 */  lw         $t6, %lo(D_800C0690)($t6)
/* 1FEB8 8001F2B8 306F00FF */  andi       $t7, $v1, 0xFF
/* 1FEBC 8001F2BC 000FC880 */  sll        $t9, $t7, 2
/* 1FEC0 8001F2C0 01D97821 */  addu       $t7, $t6, $t9
/* 1FEC4 8001F2C4 304E0004 */  andi       $t6, $v0, 0x4
/* 1FEC8 8001F2C8 11C00006 */  beqz       $t6, .L8001F2E4
/* 1FECC 8001F2CC 8DE70000 */   lw        $a3, 0x0($t7)
/* 1FED0 8001F2D0 9639011C */  lhu        $t9, 0x11C($s1)
/* 1FED4 8001F2D4 3C078005 */  lui        $a3, %hi(D_8004D2C0)
/* 1FED8 8001F2D8 00197880 */  sll        $t7, $t9, 2
/* 1FEDC 8001F2DC 00EF3821 */  addu       $a3, $a3, $t7
/* 1FEE0 8001F2E0 8CE7D2C0 */  lw         $a3, %lo(D_8004D2C0)($a3)
.L8001F2E4:
/* 1FEE4 8001F2E4 00E02025 */  or         $a0, $a3, $zero
/* 1FEE8 8001F2E8 AFA7006C */  sw         $a3, 0x6C($sp)
/* 1FEEC 8001F2EC 0C008346 */  jal        func_80020D18
/* 1FEF0 8001F2F0 A3A8006B */   sb        $t0, 0x6B($sp)
/* 1FEF4 8001F2F4 93A8006B */  lbu        $t0, 0x6B($sp)
/* 1FEF8 8001F2F8 0002C080 */  sll        $t8, $v0, 2
/* 1FEFC 8001F2FC 0302C023 */  subu       $t8, $t8, $v0
/* 1FF00 8001F300 240E007C */  addiu      $t6, $zero, 0x7C
/* 1FF04 8001F304 03A83021 */  addu       $a2, $sp, $t0
/* 1FF08 8001F308 8FA7006C */  lw         $a3, 0x6C($sp)
/* 1FF0C 8001F30C 90C60060 */  lbu        $a2, 0x60($a2)
/* 1FF10 8001F310 01D82023 */  subu       $a0, $t6, $t8
/* 1FF14 8001F314 0C0082D3 */  jal        func_80020B4C
/* 1FF18 8001F318 24050035 */   addiu     $a1, $zero, 0x35
/* 1FF1C 8001F31C 24190003 */  addiu      $t9, $zero, 0x3
/* 1FF20 8001F320 A2190000 */  sb         $t9, 0x0($s0)
/* 1FF24 8001F324 97A4003A */  lhu        $a0, 0x3A($sp)
/* 1FF28 8001F328 0C005224 */  jal        func_80014890
/* 1FF2C 8001F32C 27A50068 */   addiu     $a1, $sp, 0x68
/* 1FF30 8001F330 8E2F0010 */  lw         $t7, 0x10($s1)
/* 1FF34 8001F334 00402025 */  or         $a0, $v0, $zero
/* 1FF38 8001F338 95E50008 */  lhu        $a1, 0x8($t7)
/* 1FF3C 8001F33C 0C005274 */  jal        func_800149D0
/* 1FF40 8001F340 AFA20074 */   sw        $v0, 0x74($sp)
/* 1FF44 8001F344 8FA30074 */  lw         $v1, 0x74($sp)
/* 1FF48 8001F348 3C0F800C */  lui        $t7, %hi(D_800C0690)
/* 1FF4C 8001F34C 304800FF */  andi       $t0, $v0, 0xFF
/* 1FF50 8001F350 00032202 */  srl        $a0, $v1, 8
/* 1FF54 8001F354 308E000F */  andi       $t6, $a0, 0xF
/* 1FF58 8001F358 000EC880 */  sll        $t9, $t6, 2
/* 1FF5C 8001F35C 01F97821 */  addu       $t7, $t7, $t9
/* 1FF60 8001F360 8DEF0690 */  lw         $t7, %lo(D_800C0690)($t7)
/* 1FF64 8001F364 307800FF */  andi       $t8, $v1, 0xFF
/* 1FF68 8001F368 00187080 */  sll        $t6, $t8, 2
/* 1FF6C 8001F36C 01EEC021 */  addu       $t8, $t7, $t6
/* 1FF70 8001F370 304F0004 */  andi       $t7, $v0, 0x4
/* 1FF74 8001F374 11E00006 */  beqz       $t7, .L8001F390
/* 1FF78 8001F378 8F070000 */   lw        $a3, 0x0($t8)
/* 1FF7C 8001F37C 962E011C */  lhu        $t6, 0x11C($s1)
/* 1FF80 8001F380 3C078005 */  lui        $a3, %hi(D_8004D2C0)
/* 1FF84 8001F384 000EC080 */  sll        $t8, $t6, 2
/* 1FF88 8001F388 00F83821 */  addu       $a3, $a3, $t8
/* 1FF8C 8001F38C 8CE7D2C0 */  lw         $a3, %lo(D_8004D2C0)($a3)
.L8001F390:
/* 1FF90 8001F390 00E02025 */  or         $a0, $a3, $zero
/* 1FF94 8001F394 AFA7006C */  sw         $a3, 0x6C($sp)
/* 1FF98 8001F398 0C008346 */  jal        func_80020D18
/* 1FF9C 8001F39C A3A8006B */   sb        $t0, 0x6B($sp)
/* 1FFA0 8001F3A0 93A8006B */  lbu        $t0, 0x6B($sp)
/* 1FFA4 8001F3A4 0002C880 */  sll        $t9, $v0, 2
/* 1FFA8 8001F3A8 0322C823 */  subu       $t9, $t9, $v0
/* 1FFAC 8001F3AC 240F00C3 */  addiu      $t7, $zero, 0xC3
/* 1FFB0 8001F3B0 03A83021 */  addu       $a2, $sp, $t0
/* 1FFB4 8001F3B4 8FA7006C */  lw         $a3, 0x6C($sp)
/* 1FFB8 8001F3B8 90C60060 */  lbu        $a2, 0x60($a2)
/* 1FFBC 8001F3BC 01F92023 */  subu       $a0, $t7, $t9
/* 1FFC0 8001F3C0 0C0082D3 */  jal        func_80020B4C
/* 1FFC4 8001F3C4 2405001B */   addiu     $a1, $zero, 0x1B
.L8001F3C8:
/* 1FFC8 8001F3C8 8FBF0034 */  lw         $ra, 0x34($sp)
/* 1FFCC 8001F3CC 8FB0002C */  lw         $s0, 0x2C($sp)
/* 1FFD0 8001F3D0 8FB10030 */  lw         $s1, 0x30($sp)
/* 1FFD4 8001F3D4 03E00008 */  jr         $ra
/* 1FFD8 8001F3D8 27BD0080 */   addiu     $sp, $sp, 0x80

glabel func_8001F3DC
/* 1FFDC 8001F3DC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1FFE0 8001F3E0 3C038008 */  lui        $v1, %hi(gMasterGfxPos)
/* 1FFE4 8001F3E4 2463B2FC */  addiu      $v1, $v1, %lo(gMasterGfxPos)
/* 1FFE8 8001F3E8 AFBF002C */  sw         $ra, 0x2C($sp)
/* 1FFEC 8001F3EC AFA40030 */  sw         $a0, 0x30($sp)
/* 1FFF0 8001F3F0 3C018009 */  lui        $at, %hi(D_8008C648)
/* 1FFF4 8001F3F4 AC20C648 */  sw         $zero, %lo(D_8008C648)($at)
/* 1FFF8 8001F3F8 3C018009 */  lui        $at, %hi(D_8008C64C)
/* 1FFFC 8001F3FC AC20C64C */  sw         $zero, %lo(D_8008C64C)($at)
/* 20000 8001F400 8C620000 */  lw         $v0, 0x0($v1)
/* 20004 8001F404 3C0FE700 */  lui        $t7, (0xE7000000 >> 16)
/* 20008 8001F408 3C19FD10 */  lui        $t9, (0xFD100000 >> 16)
/* 2000C 8001F40C 244E0008 */  addiu      $t6, $v0, 0x8
/* 20010 8001F410 AC6E0000 */  sw         $t6, 0x0($v1)
/* 20014 8001F414 AC400004 */  sw         $zero, 0x4($v0)
/* 20018 8001F418 AC4F0000 */  sw         $t7, 0x0($v0)
/* 2001C 8001F41C 8C620000 */  lw         $v0, 0x0($v1)
/* 20020 8001F420 3C0E803A */  lui        $t6, %hi(D_8039D990)
/* 20024 8001F424 25CED990 */  addiu      $t6, $t6, %lo(D_8039D990)
/* 20028 8001F428 24580008 */  addiu      $t8, $v0, 0x8
/* 2002C 8001F42C AC780000 */  sw         $t8, 0x0($v1)
/* 20030 8001F430 AC4E0004 */  sw         $t6, 0x4($v0)
/* 20034 8001F434 AC590000 */  sw         $t9, 0x0($v0)
/* 20038 8001F438 8C620000 */  lw         $v0, 0x0($v1)
/* 2003C 8001F43C 3C18E800 */  lui        $t8, (0xE8000000 >> 16)
/* 20040 8001F440 3C0EF500 */  lui        $t6, (0xF5000100 >> 16)
/* 20044 8001F444 244F0008 */  addiu      $t7, $v0, 0x8
/* 20048 8001F448 AC6F0000 */  sw         $t7, 0x0($v1)
/* 2004C 8001F44C AC400004 */  sw         $zero, 0x4($v0)
/* 20050 8001F450 AC580000 */  sw         $t8, 0x0($v0)
/* 20054 8001F454 8C620000 */  lw         $v0, 0x0($v1)
/* 20058 8001F458 35CE0100 */  ori        $t6, $t6, (0xF5000100 & 0xFFFF)
/* 2005C 8001F45C 3C0F0700 */  lui        $t7, (0x7000000 >> 16)
/* 20060 8001F460 24590008 */  addiu      $t9, $v0, 0x8
/* 20064 8001F464 AC790000 */  sw         $t9, 0x0($v1)
/* 20068 8001F468 AC4F0004 */  sw         $t7, 0x4($v0)
/* 2006C 8001F46C AC4E0000 */  sw         $t6, 0x0($v0)
/* 20070 8001F470 8C620000 */  lw         $v0, 0x0($v1)
/* 20074 8001F474 3C19E600 */  lui        $t9, (0xE6000000 >> 16)
/* 20078 8001F478 3C0FF000 */  lui        $t7, (0xF0000000 >> 16)
/* 2007C 8001F47C 24580008 */  addiu      $t8, $v0, 0x8
/* 20080 8001F480 AC780000 */  sw         $t8, 0x0($v1)
/* 20084 8001F484 AC400004 */  sw         $zero, 0x4($v0)
/* 20088 8001F488 AC590000 */  sw         $t9, 0x0($v0)
/* 2008C 8001F48C 8C620000 */  lw         $v0, 0x0($v1)
/* 20090 8001F490 3C18073F */  lui        $t8, (0x73FC000 >> 16)
/* 20094 8001F494 3718C000 */  ori        $t8, $t8, (0x73FC000 & 0xFFFF)
/* 20098 8001F498 244E0008 */  addiu      $t6, $v0, 0x8
/* 2009C 8001F49C AC6E0000 */  sw         $t6, 0x0($v1)
/* 200A0 8001F4A0 AC580004 */  sw         $t8, 0x4($v0)
/* 200A4 8001F4A4 AC4F0000 */  sw         $t7, 0x0($v0)
/* 200A8 8001F4A8 8C620000 */  lw         $v0, 0x0($v1)
/* 200AC 8001F4AC 3C0EE700 */  lui        $t6, (0xE7000000 >> 16)
/* 200B0 8001F4B0 3C04803A */  lui        $a0, %hi(D_803A6F60)
/* 200B4 8001F4B4 24590008 */  addiu      $t9, $v0, 0x8
/* 200B8 8001F4B8 AC790000 */  sw         $t9, 0x0($v1)
/* 200BC 8001F4BC AC400004 */  sw         $zero, 0x4($v0)
/* 200C0 8001F4C0 AC4E0000 */  sw         $t6, 0x0($v0)
/* 200C4 8001F4C4 240F0014 */  addiu      $t7, $zero, 0x14
/* 200C8 8001F4C8 24180400 */  addiu      $t8, $zero, 0x400
/* 200CC 8001F4CC 24190400 */  addiu      $t9, $zero, 0x400
/* 200D0 8001F4D0 AFB90020 */  sw         $t9, 0x20($sp)
/* 200D4 8001F4D4 AFB8001C */  sw         $t8, 0x1C($sp)
/* 200D8 8001F4D8 AFAF0010 */  sw         $t7, 0x10($sp)
/* 200DC 8001F4DC 24846F60 */  addiu      $a0, $a0, %lo(D_803A6F60)
/* 200E0 8001F4E0 24050081 */  addiu      $a1, $zero, 0x81
/* 200E4 8001F4E4 24060048 */  addiu      $a2, $zero, 0x48
/* 200E8 8001F4E8 24070040 */  addiu      $a3, $zero, 0x40
/* 200EC 8001F4EC AFA00014 */  sw         $zero, 0x14($sp)
/* 200F0 8001F4F0 0C00843F */  jal        func_800210FC
/* 200F4 8001F4F4 AFA00018 */   sw        $zero, 0x18($sp)
/* 200F8 8001F4F8 3C04803A */  lui        $a0, %hi(D_803A6F60)
/* 200FC 8001F4FC 240E0014 */  addiu      $t6, $zero, 0x14
/* 20100 8001F500 240F0014 */  addiu      $t7, $zero, 0x14
/* 20104 8001F504 24180400 */  addiu      $t8, $zero, 0x400
/* 20108 8001F508 24190400 */  addiu      $t9, $zero, 0x400
/* 2010C 8001F50C AFB90020 */  sw         $t9, 0x20($sp)
/* 20110 8001F510 AFB8001C */  sw         $t8, 0x1C($sp)
/* 20114 8001F514 AFAF0018 */  sw         $t7, 0x18($sp)
/* 20118 8001F518 AFAE0010 */  sw         $t6, 0x10($sp)
/* 2011C 8001F51C 24846F60 */  addiu      $a0, $a0, %lo(D_803A6F60)
/* 20120 8001F520 24050081 */  addiu      $a1, $zero, 0x81
/* 20124 8001F524 2406005C */  addiu      $a2, $zero, 0x5C
/* 20128 8001F528 24070040 */  addiu      $a3, $zero, 0x40
/* 2012C 8001F52C 0C00843F */  jal        func_800210FC
/* 20130 8001F530 AFA00014 */   sw        $zero, 0x14($sp)
/* 20134 8001F534 3C04803A */  lui        $a0, %hi(D_803A6F60)
/* 20138 8001F538 240E0014 */  addiu      $t6, $zero, 0x14
/* 2013C 8001F53C 240F0028 */  addiu      $t7, $zero, 0x28
/* 20140 8001F540 24180400 */  addiu      $t8, $zero, 0x400
/* 20144 8001F544 24190400 */  addiu      $t9, $zero, 0x400
/* 20148 8001F548 AFB90020 */  sw         $t9, 0x20($sp)
/* 2014C 8001F54C AFB8001C */  sw         $t8, 0x1C($sp)
/* 20150 8001F550 AFAF0018 */  sw         $t7, 0x18($sp)
/* 20154 8001F554 AFAE0010 */  sw         $t6, 0x10($sp)
/* 20158 8001F558 24846F60 */  addiu      $a0, $a0, %lo(D_803A6F60)
/* 2015C 8001F55C 24050081 */  addiu      $a1, $zero, 0x81
/* 20160 8001F560 24060070 */  addiu      $a2, $zero, 0x70
/* 20164 8001F564 24070040 */  addiu      $a3, $zero, 0x40
/* 20168 8001F568 0C00843F */  jal        func_800210FC
/* 2016C 8001F56C AFA00014 */   sw        $zero, 0x14($sp)
/* 20170 8001F570 3C04803A */  lui        $a0, %hi(D_803A6F60)
/* 20174 8001F574 240E0014 */  addiu      $t6, $zero, 0x14
/* 20178 8001F578 240F003C */  addiu      $t7, $zero, 0x3C
/* 2017C 8001F57C 24180400 */  addiu      $t8, $zero, 0x400
/* 20180 8001F580 24190400 */  addiu      $t9, $zero, 0x400
/* 20184 8001F584 AFB90020 */  sw         $t9, 0x20($sp)
/* 20188 8001F588 AFB8001C */  sw         $t8, 0x1C($sp)
/* 2018C 8001F58C AFAF0018 */  sw         $t7, 0x18($sp)
/* 20190 8001F590 AFAE0010 */  sw         $t6, 0x10($sp)
/* 20194 8001F594 24846F60 */  addiu      $a0, $a0, %lo(D_803A6F60)
/* 20198 8001F598 24050081 */  addiu      $a1, $zero, 0x81
/* 2019C 8001F59C 24060084 */  addiu      $a2, $zero, 0x84
/* 201A0 8001F5A0 24070040 */  addiu      $a3, $zero, 0x40
/* 201A4 8001F5A4 0C00843F */  jal        func_800210FC
/* 201A8 8001F5A8 AFA00014 */   sw        $zero, 0x14($sp)
/* 201AC 8001F5AC 3C04803A */  lui        $a0, %hi(D_803A6F40)
/* 201B0 8001F5B0 240E000A */  addiu      $t6, $zero, 0xA
/* 201B4 8001F5B4 AFAE0010 */  sw         $t6, 0x10($sp)
/* 201B8 8001F5B8 24846F40 */  addiu      $a0, $a0, %lo(D_803A6F40)
/* 201BC 8001F5BC 24050020 */  addiu      $a1, $zero, 0x20
/* 201C0 8001F5C0 2406001D */  addiu      $a2, $zero, 0x1D
/* 201C4 8001F5C4 0C00838B */  jal        func_80020E2C
/* 201C8 8001F5C8 24070080 */   addiu     $a3, $zero, 0x80
/* 201CC 8001F5CC 3C038008 */  lui        $v1, %hi(gMasterGfxPos)
/* 201D0 8001F5D0 2463B2FC */  addiu      $v1, $v1, %lo(gMasterGfxPos)
/* 201D4 8001F5D4 8C620000 */  lw         $v0, 0x0($v1)
/* 201D8 8001F5D8 3C19803A */  lui        $t9, %hi(D_80399AB0)
/* 201DC 8001F5DC 27399AB0 */  addiu      $t9, $t9, %lo(D_80399AB0)
/* 201E0 8001F5E0 244F0008 */  addiu      $t7, $v0, 0x8
/* 201E4 8001F5E4 AC6F0000 */  sw         $t7, 0x0($v1)
/* 201E8 8001F5E8 3C18FD10 */  lui        $t8, (0xFD100000 >> 16)
/* 201EC 8001F5EC AC580000 */  sw         $t8, 0x0($v0)
/* 201F0 8001F5F0 AC590004 */  sw         $t9, 0x4($v0)
/* 201F4 8001F5F4 8C620000 */  lw         $v0, 0x0($v1)
/* 201F8 8001F5F8 3C0FE800 */  lui        $t7, (0xE8000000 >> 16)
/* 201FC 8001F5FC 3C19F500 */  lui        $t9, (0xF5000100 >> 16)
/* 20200 8001F600 244E0008 */  addiu      $t6, $v0, 0x8
/* 20204 8001F604 AC6E0000 */  sw         $t6, 0x0($v1)
/* 20208 8001F608 AC400004 */  sw         $zero, 0x4($v0)
/* 2020C 8001F60C AC4F0000 */  sw         $t7, 0x0($v0)
/* 20210 8001F610 8C620000 */  lw         $v0, 0x0($v1)
/* 20214 8001F614 37390100 */  ori        $t9, $t9, (0xF5000100 & 0xFFFF)
/* 20218 8001F618 3C0E0700 */  lui        $t6, (0x7000000 >> 16)
/* 2021C 8001F61C 24580008 */  addiu      $t8, $v0, 0x8
/* 20220 8001F620 AC780000 */  sw         $t8, 0x0($v1)
/* 20224 8001F624 AC4E0004 */  sw         $t6, 0x4($v0)
/* 20228 8001F628 AC590000 */  sw         $t9, 0x0($v0)
/* 2022C 8001F62C 8C620000 */  lw         $v0, 0x0($v1)
/* 20230 8001F630 3C18E600 */  lui        $t8, (0xE6000000 >> 16)
/* 20234 8001F634 3C0EF000 */  lui        $t6, (0xF0000000 >> 16)
/* 20238 8001F638 244F0008 */  addiu      $t7, $v0, 0x8
/* 2023C 8001F63C AC6F0000 */  sw         $t7, 0x0($v1)
/* 20240 8001F640 AC400004 */  sw         $zero, 0x4($v0)
/* 20244 8001F644 AC580000 */  sw         $t8, 0x0($v0)
/* 20248 8001F648 8C620000 */  lw         $v0, 0x0($v1)
/* 2024C 8001F64C 3C0F073F */  lui        $t7, (0x73FC000 >> 16)
/* 20250 8001F650 35EFC000 */  ori        $t7, $t7, (0x73FC000 & 0xFFFF)
/* 20254 8001F654 24590008 */  addiu      $t9, $v0, 0x8
/* 20258 8001F658 AC790000 */  sw         $t9, 0x0($v1)
/* 2025C 8001F65C AC4F0004 */  sw         $t7, 0x4($v0)
/* 20260 8001F660 AC4E0000 */  sw         $t6, 0x0($v0)
/* 20264 8001F664 8C620000 */  lw         $v0, 0x0($v1)
/* 20268 8001F668 3C19E700 */  lui        $t9, (0xE7000000 >> 16)
/* 2026C 8001F66C 24040005 */  addiu      $a0, $zero, 0x5
/* 20270 8001F670 24580008 */  addiu      $t8, $v0, 0x8
/* 20274 8001F674 AC780000 */  sw         $t8, 0x0($v1)
/* 20278 8001F678 AC400004 */  sw         $zero, 0x4($v0)
/* 2027C 8001F67C AC590000 */  sw         $t9, 0x0($v0)
/* 20280 8001F680 3C078008 */  lui        $a3, %hi(D_8007BAA4)
/* 20284 8001F684 90E7BAA4 */  lbu        $a3, %lo(D_8007BAA4)($a3)
/* 20288 8001F688 2405009D */  addiu      $a1, $zero, 0x9D
/* 2028C 8001F68C 0C008353 */  jal        func_80020D4C
/* 20290 8001F690 2406006C */   addiu     $a2, $zero, 0x6C
/* 20294 8001F694 3C078008 */  lui        $a3, %hi(D_8007BAA5)
/* 20298 8001F698 90E7BAA5 */  lbu        $a3, %lo(D_8007BAA5)($a3)
/* 2029C 8001F69C 24040005 */  addiu      $a0, $zero, 0x5
/* 202A0 8001F6A0 2405008B */  addiu      $a1, $zero, 0x8B
/* 202A4 8001F6A4 0C008353 */  jal        func_80020D4C
/* 202A8 8001F6A8 2406007C */   addiu     $a2, $zero, 0x7C
/* 202AC 8001F6AC 3C078008 */  lui        $a3, %hi(D_8007BAA6)
/* 202B0 8001F6B0 90E7BAA6 */  lbu        $a3, %lo(D_8007BAA6)($a3)
/* 202B4 8001F6B4 24040005 */  addiu      $a0, $zero, 0x5
/* 202B8 8001F6B8 2405009D */  addiu      $a1, $zero, 0x9D
/* 202BC 8001F6BC 0C008353 */  jal        func_80020D4C
/* 202C0 8001F6C0 2406008B */   addiu     $a2, $zero, 0x8B
/* 202C4 8001F6C4 3C078008 */  lui        $a3, %hi(D_8007BAA7)
/* 202C8 8001F6C8 90E7BAA7 */  lbu        $a3, %lo(D_8007BAA7)($a3)
/* 202CC 8001F6CC 24040005 */  addiu      $a0, $zero, 0x5
/* 202D0 8001F6D0 240500AF */  addiu      $a1, $zero, 0xAF
/* 202D4 8001F6D4 0C008353 */  jal        func_80020D4C
/* 202D8 8001F6D8 2406007C */   addiu     $a2, $zero, 0x7C
/* 202DC 8001F6DC 3C038009 */  lui        $v1, %hi(D_80092876)
/* 202E0 8001F6E0 94632876 */  lhu        $v1, %lo(D_80092876)($v1)
/* 202E4 8001F6E4 8FA50030 */  lw         $a1, 0x30($sp)
/* 202E8 8001F6E8 306E0008 */  andi       $t6, $v1, 0x8
/* 202EC 8001F6EC 51C0000F */  beql       $t6, $zero, .L8001F72C
/* 202F0 8001F6F0 306E0004 */   andi      $t6, $v1, 0x4
/* 202F4 8001F6F4 8CA20010 */  lw         $v0, 0x10($a1)
/* 202F8 8001F6F8 90440024 */  lbu        $a0, 0x24($v0)
/* 202FC 8001F6FC 28810032 */  slti       $at, $a0, 0x32
/* 20300 8001F700 10200009 */  beqz       $at, .L8001F728
/* 20304 8001F704 248F0001 */   addiu     $t7, $a0, 0x1
/* 20308 8001F708 3C038008 */  lui        $v1, %hi(D_8007B2E4)
/* 2030C 8001F70C 2463B2E4 */  addiu      $v1, $v1, %lo(D_8007B2E4)
/* 20310 8001F710 A04F0024 */  sb         $t7, 0x24($v0)
/* 20314 8001F714 8C780000 */  lw         $t8, 0x0($v1)
/* 20318 8001F718 2401FFF7 */  addiu      $at, $zero, -0x9
/* 2031C 8001F71C 0301C824 */  and        $t9, $t8, $at
/* 20320 8001F720 10000030 */  b          .L8001F7E4
/* 20324 8001F724 AC790000 */   sw        $t9, 0x0($v1)
.L8001F728:
/* 20328 8001F728 306E0004 */  andi       $t6, $v1, 0x4
.L8001F72C:
/* 2032C 8001F72C 11C0000E */  beqz       $t6, .L8001F768
/* 20330 8001F730 8FA50030 */   lw        $a1, 0x30($sp)
/* 20334 8001F734 8CA20010 */  lw         $v0, 0x10($a1)
/* 20338 8001F738 90440026 */  lbu        $a0, 0x26($v0)
/* 2033C 8001F73C 28810032 */  slti       $at, $a0, 0x32
/* 20340 8001F740 10200009 */  beqz       $at, .L8001F768
/* 20344 8001F744 248F0001 */   addiu     $t7, $a0, 0x1
/* 20348 8001F748 3C038008 */  lui        $v1, %hi(D_8007B2E4)
/* 2034C 8001F74C 2463B2E4 */  addiu      $v1, $v1, %lo(D_8007B2E4)
/* 20350 8001F750 A04F0026 */  sb         $t7, 0x26($v0)
/* 20354 8001F754 8C780000 */  lw         $t8, 0x0($v1)
/* 20358 8001F758 2401FFF7 */  addiu      $at, $zero, -0x9
/* 2035C 8001F75C 0301C824 */  and        $t9, $t8, $at
/* 20360 8001F760 10000020 */  b          .L8001F7E4
/* 20364 8001F764 AC790000 */   sw        $t9, 0x0($v1)
.L8001F768:
/* 20368 8001F768 306E0001 */  andi       $t6, $v1, 0x1
/* 2036C 8001F76C 51C0000F */  beql       $t6, $zero, .L8001F7AC
/* 20370 8001F770 306E0002 */   andi      $t6, $v1, 0x2
/* 20374 8001F774 8CA20010 */  lw         $v0, 0x10($a1)
/* 20378 8001F778 90440027 */  lbu        $a0, 0x27($v0)
/* 2037C 8001F77C 28810032 */  slti       $at, $a0, 0x32
/* 20380 8001F780 10200009 */  beqz       $at, .L8001F7A8
/* 20384 8001F784 248F0001 */   addiu     $t7, $a0, 0x1
/* 20388 8001F788 3C038008 */  lui        $v1, %hi(D_8007B2E4)
/* 2038C 8001F78C 2463B2E4 */  addiu      $v1, $v1, %lo(D_8007B2E4)
/* 20390 8001F790 A04F0027 */  sb         $t7, 0x27($v0)
/* 20394 8001F794 8C780000 */  lw         $t8, 0x0($v1)
/* 20398 8001F798 2401FFF7 */  addiu      $at, $zero, -0x9
/* 2039C 8001F79C 0301C824 */  and        $t9, $t8, $at
/* 203A0 8001F7A0 10000010 */  b          .L8001F7E4
/* 203A4 8001F7A4 AC790000 */   sw        $t9, 0x0($v1)
.L8001F7A8:
/* 203A8 8001F7A8 306E0002 */  andi       $t6, $v1, 0x2
.L8001F7AC:
/* 203AC 8001F7AC 11C0000D */  beqz       $t6, .L8001F7E4
/* 203B0 8001F7B0 00000000 */   nop
/* 203B4 8001F7B4 8CA20010 */  lw         $v0, 0x10($a1)
/* 203B8 8001F7B8 3C038008 */  lui        $v1, %hi(D_8007B2E4)
/* 203BC 8001F7BC 2463B2E4 */  addiu      $v1, $v1, %lo(D_8007B2E4)
/* 203C0 8001F7C0 90440025 */  lbu        $a0, 0x25($v0)
/* 203C4 8001F7C4 28810032 */  slti       $at, $a0, 0x32
/* 203C8 8001F7C8 10200006 */  beqz       $at, .L8001F7E4
/* 203CC 8001F7CC 248F0001 */   addiu     $t7, $a0, 0x1
/* 203D0 8001F7D0 A04F0025 */  sb         $t7, 0x25($v0)
/* 203D4 8001F7D4 8C780000 */  lw         $t8, 0x0($v1)
/* 203D8 8001F7D8 2401FFF7 */  addiu      $at, $zero, -0x9
/* 203DC 8001F7DC 0301C824 */  and        $t9, $t8, $at
/* 203E0 8001F7E0 AC790000 */  sw         $t9, 0x0($v1)
.L8001F7E4:
/* 203E4 8001F7E4 3C038008 */  lui        $v1, %hi(D_8007B2E4)
/* 203E8 8001F7E8 2463B2E4 */  addiu      $v1, $v1, %lo(D_8007B2E4)
/* 203EC 8001F7EC 8C6E0000 */  lw         $t6, 0x0($v1)
/* 203F0 8001F7F0 31CF0008 */  andi       $t7, $t6, 0x8
/* 203F4 8001F7F4 15E00004 */  bnez       $t7, .L8001F808
/* 203F8 8001F7F8 00002025 */   or        $a0, $zero, $zero
/* 203FC 8001F7FC 24050004 */  addiu      $a1, $zero, 0x4
/* 20400 8001F800 0C009A35 */  jal        func_800268D4
/* 20404 8001F804 240600FF */   addiu     $a2, $zero, 0xFF
.L8001F808:
/* 20408 8001F808 8FBF002C */  lw         $ra, 0x2C($sp)
/* 2040C 8001F80C 27BD0030 */  addiu      $sp, $sp, 0x30
/* 20410 8001F810 03E00008 */  jr         $ra
/* 20414 8001F814 00000000 */   nop

glabel func_8001F818
/* 20418 8001F818 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 2041C 8001F81C AFBF0024 */  sw         $ra, 0x24($sp)
/* 20420 8001F820 3C0E8008 */  lui        $t6, %hi(D_8007BA74)
/* 20424 8001F824 8DCEBA74 */  lw         $t6, %lo(D_8007BA74)($t6)
/* 20428 8001F828 3C198008 */  lui        $t9, %hi(D_8007BD30)
/* 2042C 8001F82C 2739BD30 */  addiu      $t9, $t9, %lo(D_8007BD30)
/* 20430 8001F830 000E7940 */  sll        $t7, $t6, 5
/* 20434 8001F834 01EE7821 */  addu       $t7, $t7, $t6
/* 20438 8001F838 000F7880 */  sll        $t7, $t7, 2
/* 2043C 8001F83C 25F8FF90 */  addiu      $t8, $t7, -0x70
/* 20440 8001F840 03191021 */  addu       $v0, $t8, $t9
/* 20444 8001F844 C4440004 */  lwc1       $f4, 0x4($v0)
/* 20448 8001F848 3C01402C */  lui        $at, (0x402C0000 >> 16)
/* 2044C 8001F84C 44814800 */  mtc1       $at, $f9
/* 20450 8001F850 44804000 */  mtc1       $zero, $f8
/* 20454 8001F854 460021A1 */  cvt.d.s    $f6, $f4
/* 20458 8001F858 3C0A8009 */  lui        $t2, %hi(D_8008C644)
/* 2045C 8001F85C 46283280 */  add.d      $f10, $f6, $f8
/* 20460 8001F860 254AC644 */  addiu      $t2, $t2, %lo(D_8008C644)
/* 20464 8001F864 C44C0000 */  lwc1       $f12, 0x0($v0)
/* 20468 8001F868 8C460008 */  lw         $a2, 0x8($v0)
/* 2046C 8001F86C AFAA0010 */  sw         $t2, 0x10($sp)
/* 20470 8001F870 462053A0 */  cvt.s.d    $f14, $f10
/* 20474 8001F874 0C00904F */  jal        func_8002413C
/* 20478 8001F878 27A70034 */   addiu     $a3, $sp, 0x34
/* 2047C 8001F87C 3C098009 */  lui        $t1, %hi(D_8008C644)
/* 20480 8001F880 10400019 */  beqz       $v0, .L8001F8E8
/* 20484 8001F884 2529C644 */   addiu     $t1, $t1, %lo(D_8008C644)
/* 20488 8001F888 3C088008 */  lui        $t0, %hi(gMasterGfxPos)
/* 2048C 8001F88C 2508B2FC */  addiu      $t0, $t0, %lo(gMasterGfxPos)
/* 20490 8001F890 8D030000 */  lw         $v1, 0x0($t0)
/* 20494 8001F894 3C0D803B */  lui        $t5, %hi(D_803A8B90)
/* 20498 8001F898 25AD8B90 */  addiu      $t5, $t5, %lo(D_803A8B90)
/* 2049C 8001F89C 246B0008 */  addiu      $t3, $v1, 0x8
/* 204A0 8001F8A0 AD0B0000 */  sw         $t3, 0x0($t0)
/* 204A4 8001F8A4 3C0C0600 */  lui        $t4, (0x6000000 >> 16)
/* 204A8 8001F8A8 AC6C0000 */  sw         $t4, 0x0($v1)
/* 204AC 8001F8AC AC6D0004 */  sw         $t5, 0x4($v1)
/* 204B0 8001F8B0 8D250000 */  lw         $a1, 0x0($t1)
/* 204B4 8001F8B4 240E0400 */  addiu      $t6, $zero, 0x400
/* 204B8 8001F8B8 240F0400 */  addiu      $t7, $zero, 0x400
/* 204BC 8001F8BC AFAF001C */  sw         $t7, 0x1C($sp)
/* 204C0 8001F8C0 AFAE0018 */  sw         $t6, 0x18($sp)
/* 204C4 8001F8C4 8FA40034 */  lw         $a0, 0x34($sp)
/* 204C8 8001F8C8 24060040 */  addiu      $a2, $zero, 0x40
/* 204CC 8001F8CC 2407001D */  addiu      $a3, $zero, 0x1D
/* 204D0 8001F8D0 AFA00010 */  sw         $zero, 0x10($sp)
/* 204D4 8001F8D4 AFA00014 */  sw         $zero, 0x14($sp)
/* 204D8 8001F8D8 0C0083E3 */  jal        func_80020F8C
/* 204DC 8001F8DC 24A5FFE2 */   addiu     $a1, $a1, -0x1E
/* 204E0 8001F8E0 10000004 */  b          .L8001F8F4
/* 204E4 8001F8E4 8FBF0024 */   lw        $ra, 0x24($sp)
.L8001F8E8:
/* 204E8 8001F8E8 241800F0 */  addiu      $t8, $zero, 0xF0
/* 204EC 8001F8EC AD380000 */  sw         $t8, 0x0($t1)
/* 204F0 8001F8F0 8FBF0024 */  lw         $ra, 0x24($sp)
.L8001F8F4:
/* 204F4 8001F8F4 27BD0038 */  addiu      $sp, $sp, 0x38
/* 204F8 8001F8F8 03E00008 */  jr         $ra
/* 204FC 8001F8FC 00000000 */   nop

glabel func_8001F900
/* 20500 8001F900 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 20504 8001F904 3C028008 */  lui        $v0, %hi(D_8007BAB8)
/* 20508 8001F908 2442BAB8 */  addiu      $v0, $v0, %lo(D_8007BAB8)
/* 2050C 8001F90C AFBF0024 */  sw         $ra, 0x24($sp)
/* 20510 8001F910 C4440018 */  lwc1       $f4, 0x18($v0)
/* 20514 8001F914 3C014026 */  lui        $at, (0x40260000 >> 16)
/* 20518 8001F918 44814800 */  mtc1       $at, $f9
/* 2051C 8001F91C 44804000 */  mtc1       $zero, $f8
/* 20520 8001F920 460021A1 */  cvt.d.s    $f6, $f4
/* 20524 8001F924 27AE0030 */  addiu      $t6, $sp, 0x30
/* 20528 8001F928 46283280 */  add.d      $f10, $f6, $f8
/* 2052C 8001F92C AFAE0010 */  sw         $t6, 0x10($sp)
/* 20530 8001F930 C44C0014 */  lwc1       $f12, 0x14($v0)
/* 20534 8001F934 8C46001C */  lw         $a2, 0x1C($v0)
/* 20538 8001F938 462053A0 */  cvt.s.d    $f14, $f10
/* 2053C 8001F93C 0C00904F */  jal        func_8002413C
/* 20540 8001F940 27A70034 */   addiu     $a3, $sp, 0x34
/* 20544 8001F944 10400016 */  beqz       $v0, .L8001F9A0
/* 20548 8001F948 3C088008 */   lui       $t0, %hi(gMasterGfxPos)
/* 2054C 8001F94C 2508B2FC */  addiu      $t0, $t0, %lo(gMasterGfxPos)
/* 20550 8001F950 8D030000 */  lw         $v1, 0x0($t0)
/* 20554 8001F954 3C19803B */  lui        $t9, %hi(D_803A8C80)
/* 20558 8001F958 27398C80 */  addiu      $t9, $t9, %lo(D_803A8C80)
/* 2055C 8001F95C 246F0008 */  addiu      $t7, $v1, 0x8
/* 20560 8001F960 AD0F0000 */  sw         $t7, 0x0($t0)
/* 20564 8001F964 3C180600 */  lui        $t8, (0x6000000 >> 16)
/* 20568 8001F968 AC780000 */  sw         $t8, 0x0($v1)
/* 2056C 8001F96C AC790004 */  sw         $t9, 0x4($v1)
/* 20570 8001F970 8FA50030 */  lw         $a1, 0x30($sp)
/* 20574 8001F974 24090400 */  addiu      $t1, $zero, 0x400
/* 20578 8001F978 240A0400 */  addiu      $t2, $zero, 0x400
/* 2057C 8001F97C AFAA001C */  sw         $t2, 0x1C($sp)
/* 20580 8001F980 AFA90018 */  sw         $t1, 0x18($sp)
/* 20584 8001F984 8FA40034 */  lw         $a0, 0x34($sp)
/* 20588 8001F988 24060018 */  addiu      $a2, $zero, 0x18
/* 2058C 8001F98C 2407001E */  addiu      $a3, $zero, 0x1E
/* 20590 8001F990 AFA00010 */  sw         $zero, 0x10($sp)
/* 20594 8001F994 AFA00014 */  sw         $zero, 0x14($sp)
/* 20598 8001F998 0C0083E3 */  jal        func_80020F8C
/* 2059C 8001F99C 24A5FFE2 */   addiu     $a1, $a1, -0x1E
.L8001F9A0:
/* 205A0 8001F9A0 8FBF0024 */  lw         $ra, 0x24($sp)
/* 205A4 8001F9A4 27BD0038 */  addiu      $sp, $sp, 0x38
/* 205A8 8001F9A8 03E00008 */  jr         $ra
/* 205AC 8001F9AC 00000000 */   nop

glabel func_8001F9B0
/* 205B0 8001F9B0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 205B4 8001F9B4 3C028008 */  lui        $v0, %hi(D_8007BAB8)
/* 205B8 8001F9B8 2442BAB8 */  addiu      $v0, $v0, %lo(D_8007BAB8)
/* 205BC 8001F9BC AFBF0024 */  sw         $ra, 0x24($sp)
/* 205C0 8001F9C0 C4440018 */  lwc1       $f4, 0x18($v0)
/* 205C4 8001F9C4 3C014026 */  lui        $at, (0x40260000 >> 16)
/* 205C8 8001F9C8 44814800 */  mtc1       $at, $f9
/* 205CC 8001F9CC 44804000 */  mtc1       $zero, $f8
/* 205D0 8001F9D0 460021A1 */  cvt.d.s    $f6, $f4
/* 205D4 8001F9D4 27AE0030 */  addiu      $t6, $sp, 0x30
/* 205D8 8001F9D8 46283280 */  add.d      $f10, $f6, $f8
/* 205DC 8001F9DC AFAE0010 */  sw         $t6, 0x10($sp)
/* 205E0 8001F9E0 C44C0014 */  lwc1       $f12, 0x14($v0)
/* 205E4 8001F9E4 8C46001C */  lw         $a2, 0x1C($v0)
/* 205E8 8001F9E8 462053A0 */  cvt.s.d    $f14, $f10
/* 205EC 8001F9EC 0C00904F */  jal        func_8002413C
/* 205F0 8001F9F0 27A70034 */   addiu     $a3, $sp, 0x34
/* 205F4 8001F9F4 10400016 */  beqz       $v0, .L8001FA50
/* 205F8 8001F9F8 3C088008 */   lui       $t0, %hi(gMasterGfxPos)
/* 205FC 8001F9FC 2508B2FC */  addiu      $t0, $t0, %lo(gMasterGfxPos)
/* 20600 8001FA00 8D030000 */  lw         $v1, 0x0($t0)
/* 20604 8001FA04 3C19803B */  lui        $t9, %hi(D_803A8C08)
/* 20608 8001FA08 27398C08 */  addiu      $t9, $t9, %lo(D_803A8C08)
/* 2060C 8001FA0C 246F0008 */  addiu      $t7, $v1, 0x8
/* 20610 8001FA10 AD0F0000 */  sw         $t7, 0x0($t0)
/* 20614 8001FA14 3C180600 */  lui        $t8, (0x6000000 >> 16)
/* 20618 8001FA18 AC780000 */  sw         $t8, 0x0($v1)
/* 2061C 8001FA1C AC790004 */  sw         $t9, 0x4($v1)
/* 20620 8001FA20 8FA50030 */  lw         $a1, 0x30($sp)
/* 20624 8001FA24 24090400 */  addiu      $t1, $zero, 0x400
/* 20628 8001FA28 240A0400 */  addiu      $t2, $zero, 0x400
/* 2062C 8001FA2C AFAA001C */  sw         $t2, 0x1C($sp)
/* 20630 8001FA30 AFA90018 */  sw         $t1, 0x18($sp)
/* 20634 8001FA34 8FA40034 */  lw         $a0, 0x34($sp)
/* 20638 8001FA38 24060010 */  addiu      $a2, $zero, 0x10
/* 2063C 8001FA3C 2407001E */  addiu      $a3, $zero, 0x1E
/* 20640 8001FA40 AFA00010 */  sw         $zero, 0x10($sp)
/* 20644 8001FA44 AFA00014 */  sw         $zero, 0x14($sp)
/* 20648 8001FA48 0C0083E3 */  jal        func_80020F8C
/* 2064C 8001FA4C 24A5FFE2 */   addiu     $a1, $a1, -0x1E
.L8001FA50:
/* 20650 8001FA50 8FBF0024 */  lw         $ra, 0x24($sp)
/* 20654 8001FA54 27BD0038 */  addiu      $sp, $sp, 0x38
/* 20658 8001FA58 03E00008 */  jr         $ra
/* 2065C 8001FA5C 00000000 */   nop

glabel func_8001FA60
/* 20660 8001FA60 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 20664 8001FA64 AFA40048 */  sw         $a0, 0x48($sp)
/* 20668 8001FA68 308EFFFF */  andi       $t6, $a0, 0xFFFF
/* 2066C 8001FA6C 01C02025 */  or         $a0, $t6, $zero
/* 20670 8001FA70 AFBF0024 */  sw         $ra, 0x24($sp)
/* 20674 8001FA74 000478C0 */  sll        $t7, $a0, 3
/* 20678 8001FA78 01E47821 */  addu       $t7, $t7, $a0
/* 2067C 8001FA7C 000F7880 */  sll        $t7, $t7, 2
/* 20680 8001FA80 01E47821 */  addu       $t7, $t7, $a0
/* 20684 8001FA84 3C188008 */  lui        $t8, %hi(D_8007C998)
/* 20688 8001FA88 2718C998 */  addiu      $t8, $t8, %lo(D_8007C998)
/* 2068C 8001FA8C 000F78C0 */  sll        $t7, $t7, 3
/* 20690 8001FA90 01F81821 */  addu       $v1, $t7, $t8
/* 20694 8001FA94 8C790088 */  lw         $t9, 0x88($v1)
/* 20698 8001FA98 24010001 */  addiu      $at, $zero, 0x1
/* 2069C 8001FA9C 24620024 */  addiu      $v0, $v1, 0x24
/* 206A0 8001FAA0 97290000 */  lhu        $t1, 0x0($t9)
/* 206A4 8001FAA4 27A70044 */  addiu      $a3, $sp, 0x44
/* 206A8 8001FAA8 27AC0040 */  addiu      $t4, $sp, 0x40
/* 206AC 8001FAAC 55210006 */  bnel       $t1, $at, .L8001FAC8
/* 206B0 8001FAB0 8C440064 */   lw        $a0, 0x64($v0)
/* 206B4 8001FAB4 24620024 */  addiu      $v0, $v1, 0x24
/* 206B8 8001FAB8 8C4A0068 */  lw         $t2, 0x68($v0)
/* 206BC 8001FABC 10000015 */  b          .L8001FB14
/* 206C0 8001FAC0 C54E0094 */   lwc1      $f14, 0x94($t2)
/* 206C4 8001FAC4 8C440064 */  lw         $a0, 0x64($v0)
.L8001FAC8:
/* 206C8 8001FAC8 24010002 */  addiu      $at, $zero, 0x2
/* 206CC 8001FACC 948B0000 */  lhu        $t3, 0x0($a0)
/* 206D0 8001FAD0 5561000C */  bnel       $t3, $at, .L8001FB04
/* 206D4 8001FAD4 C484001C */   lwc1      $f4, 0x1C($a0)
/* 206D8 8001FAD8 C4460024 */  lwc1       $f6, 0x24($v0)
/* 206DC 8001FADC 3C018007 */  lui        $at, %hi(D_800716C0)
/* 206E0 8001FAE0 D42416C0 */  ldc1       $f4, %lo(D_800716C0)($at)
/* 206E4 8001FAE4 46003221 */  cvt.d.s    $f8, $f6
/* 206E8 8001FAE8 C4500004 */  lwc1       $f16, 0x4($v0)
/* 206EC 8001FAEC 46282282 */  mul.d      $f10, $f4, $f8
/* 206F0 8001FAF0 460084A1 */  cvt.d.s    $f18, $f16
/* 206F4 8001FAF4 462A9180 */  add.d      $f6, $f18, $f10
/* 206F8 8001FAF8 10000006 */  b          .L8001FB14
/* 206FC 8001FAFC 462033A0 */   cvt.s.d   $f14, $f6
/* 20700 8001FB00 C484001C */  lwc1       $f4, 0x1C($a0)
.L8001FB04:
/* 20704 8001FB04 C4480024 */  lwc1       $f8, 0x24($v0)
/* 20708 8001FB08 C4520004 */  lwc1       $f18, 0x4($v0)
/* 2070C 8001FB0C 46082402 */  mul.s      $f16, $f4, $f8
/* 20710 8001FB10 46109380 */  add.s      $f14, $f18, $f16
.L8001FB14:
/* 20714 8001FB14 C44C0000 */  lwc1       $f12, 0x0($v0)
/* 20718 8001FB18 8C460008 */  lw         $a2, 0x8($v0)
/* 2071C 8001FB1C 0C00904F */  jal        func_8002413C
/* 20720 8001FB20 AFAC0010 */   sw        $t4, 0x10($sp)
/* 20724 8001FB24 10400017 */  beqz       $v0, .L8001FB84
/* 20728 8001FB28 3C088008 */   lui       $t0, %hi(gMasterGfxPos)
/* 2072C 8001FB2C 2508B2FC */  addiu      $t0, $t0, %lo(gMasterGfxPos)
/* 20730 8001FB30 8D030000 */  lw         $v1, 0x0($t0)
/* 20734 8001FB34 3C0F803B */  lui        $t7, %hi(D_803A8CF8)
/* 20738 8001FB38 25EF8CF8 */  addiu      $t7, $t7, %lo(D_803A8CF8)
/* 2073C 8001FB3C 246D0008 */  addiu      $t5, $v1, 0x8
/* 20740 8001FB40 AD0D0000 */  sw         $t5, 0x0($t0)
/* 20744 8001FB44 3C0E0600 */  lui        $t6, (0x6000000 >> 16)
/* 20748 8001FB48 AC6E0000 */  sw         $t6, 0x0($v1)
/* 2074C 8001FB4C AC6F0004 */  sw         $t7, 0x4($v1)
/* 20750 8001FB50 8FA40044 */  lw         $a0, 0x44($sp)
/* 20754 8001FB54 8FA50040 */  lw         $a1, 0x40($sp)
/* 20758 8001FB58 24180400 */  addiu      $t8, $zero, 0x400
/* 2075C 8001FB5C 24190400 */  addiu      $t9, $zero, 0x400
/* 20760 8001FB60 AFB9001C */  sw         $t9, 0x1C($sp)
/* 20764 8001FB64 AFB80018 */  sw         $t8, 0x18($sp)
/* 20768 8001FB68 24060018 */  addiu      $a2, $zero, 0x18
/* 2076C 8001FB6C 2407002A */  addiu      $a3, $zero, 0x2A
/* 20770 8001FB70 AFA00010 */  sw         $zero, 0x10($sp)
/* 20774 8001FB74 AFA00014 */  sw         $zero, 0x14($sp)
/* 20778 8001FB78 2484FFFC */  addiu      $a0, $a0, -0x4
/* 2077C 8001FB7C 0C0083E3 */  jal        func_80020F8C
/* 20780 8001FB80 24A5FFD6 */   addiu     $a1, $a1, -0x2A
.L8001FB84:
/* 20784 8001FB84 8FBF0024 */  lw         $ra, 0x24($sp)
/* 20788 8001FB88 27BD0048 */  addiu      $sp, $sp, 0x48
/* 2078C 8001FB8C 03E00008 */  jr         $ra
/* 20790 8001FB90 00000000 */   nop

glabel func_8001FB94
/* 20794 8001FB94 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 20798 8001FB98 3C028008 */  lui        $v0, %hi(D_8007BAB8)
/* 2079C 8001FB9C 2442BAB8 */  addiu      $v0, $v0, %lo(D_8007BAB8)
/* 207A0 8001FBA0 AFBF002C */  sw         $ra, 0x2C($sp)
/* 207A4 8001FBA4 8C4E0078 */  lw         $t6, 0x78($v0)
/* 207A8 8001FBA8 C4460038 */  lwc1       $f6, 0x38($v0)
/* 207AC 8001FBAC C4480018 */  lwc1       $f8, 0x18($v0)
/* 207B0 8001FBB0 C5C4001C */  lwc1       $f4, 0x1C($t6)
/* 207B4 8001FBB4 27AF0058 */  addiu      $t7, $sp, 0x58
/* 207B8 8001FBB8 AFAF0010 */  sw         $t7, 0x10($sp)
/* 207BC 8001FBBC 46062002 */  mul.s      $f0, $f4, $f6
/* 207C0 8001FBC0 C44C0014 */  lwc1       $f12, 0x14($v0)
/* 207C4 8001FBC4 8C46001C */  lw         $a2, 0x1C($v0)
/* 207C8 8001FBC8 27A7005C */  addiu      $a3, $sp, 0x5C
/* 207CC 8001FBCC 0C00904F */  jal        func_8002413C
/* 207D0 8001FBD0 46004380 */   add.s     $f14, $f8, $f0
/* 207D4 8001FBD4 10400044 */  beqz       $v0, .L8001FCE8
/* 207D8 8001FBD8 3C038008 */   lui       $v1, %hi(gMasterGfxPos)
/* 207DC 8001FBDC 2463B2FC */  addiu      $v1, $v1, %lo(gMasterGfxPos)
/* 207E0 8001FBE0 8C620000 */  lw         $v0, 0x0($v1)
/* 207E4 8001FBE4 3C19E700 */  lui        $t9, (0xE7000000 >> 16)
/* 207E8 8001FBE8 3C0FFD10 */  lui        $t7, (0xFD100000 >> 16)
/* 207EC 8001FBEC 24580008 */  addiu      $t8, $v0, 0x8
/* 207F0 8001FBF0 AC780000 */  sw         $t8, 0x0($v1)
/* 207F4 8001FBF4 AC400004 */  sw         $zero, 0x4($v0)
/* 207F8 8001FBF8 AC590000 */  sw         $t9, 0x0($v0)
/* 207FC 8001FBFC 8C620000 */  lw         $v0, 0x0($v1)
/* 20800 8001FC00 3C18803A */  lui        $t8, %hi(D_803A2960)
/* 20804 8001FC04 27182960 */  addiu      $t8, $t8, %lo(D_803A2960)
/* 20808 8001FC08 244E0008 */  addiu      $t6, $v0, 0x8
/* 2080C 8001FC0C AC6E0000 */  sw         $t6, 0x0($v1)
/* 20810 8001FC10 AC580004 */  sw         $t8, 0x4($v0)
/* 20814 8001FC14 AC4F0000 */  sw         $t7, 0x0($v0)
/* 20818 8001FC18 8C620000 */  lw         $v0, 0x0($v1)
/* 2081C 8001FC1C 3C0EE800 */  lui        $t6, (0xE8000000 >> 16)
/* 20820 8001FC20 3C18F500 */  lui        $t8, (0xF5000100 >> 16)
/* 20824 8001FC24 24590008 */  addiu      $t9, $v0, 0x8
/* 20828 8001FC28 AC790000 */  sw         $t9, 0x0($v1)
/* 2082C 8001FC2C AC400004 */  sw         $zero, 0x4($v0)
/* 20830 8001FC30 AC4E0000 */  sw         $t6, 0x0($v0)
/* 20834 8001FC34 8C620000 */  lw         $v0, 0x0($v1)
/* 20838 8001FC38 37180100 */  ori        $t8, $t8, (0xF5000100 & 0xFFFF)
/* 2083C 8001FC3C 3C190700 */  lui        $t9, (0x7000000 >> 16)
/* 20840 8001FC40 244F0008 */  addiu      $t7, $v0, 0x8
/* 20844 8001FC44 AC6F0000 */  sw         $t7, 0x0($v1)
/* 20848 8001FC48 AC590004 */  sw         $t9, 0x4($v0)
/* 2084C 8001FC4C AC580000 */  sw         $t8, 0x0($v0)
/* 20850 8001FC50 8C620000 */  lw         $v0, 0x0($v1)
/* 20854 8001FC54 3C0FE600 */  lui        $t7, (0xE6000000 >> 16)
/* 20858 8001FC58 3C19F000 */  lui        $t9, (0xF0000000 >> 16)
/* 2085C 8001FC5C 244E0008 */  addiu      $t6, $v0, 0x8
/* 20860 8001FC60 AC6E0000 */  sw         $t6, 0x0($v1)
/* 20864 8001FC64 AC400004 */  sw         $zero, 0x4($v0)
/* 20868 8001FC68 AC4F0000 */  sw         $t7, 0x0($v0)
/* 2086C 8001FC6C 8C620000 */  lw         $v0, 0x0($v1)
/* 20870 8001FC70 3C0E073F */  lui        $t6, (0x73FC000 >> 16)
/* 20874 8001FC74 35CEC000 */  ori        $t6, $t6, (0x73FC000 & 0xFFFF)
/* 20878 8001FC78 24580008 */  addiu      $t8, $v0, 0x8
/* 2087C 8001FC7C AC780000 */  sw         $t8, 0x0($v1)
/* 20880 8001FC80 AC4E0004 */  sw         $t6, 0x4($v0)
/* 20884 8001FC84 AC590000 */  sw         $t9, 0x0($v0)
/* 20888 8001FC88 8C620000 */  lw         $v0, 0x0($v1)
/* 2088C 8001FC8C 3C18E700 */  lui        $t8, (0xE7000000 >> 16)
/* 20890 8001FC90 3C04803A */  lui        $a0, %hi(D_803A6F70)
/* 20894 8001FC94 244F0008 */  addiu      $t7, $v0, 0x8
/* 20898 8001FC98 AC6F0000 */  sw         $t7, 0x0($v1)
/* 2089C 8001FC9C AC400004 */  sw         $zero, 0x4($v0)
/* 208A0 8001FCA0 AC580000 */  sw         $t8, 0x0($v0)
/* 208A4 8001FCA4 2419000F */  addiu      $t9, $zero, 0xF
/* 208A8 8001FCA8 8FA5005C */  lw         $a1, 0x5C($sp)
/* 208AC 8001FCAC 8FA60058 */  lw         $a2, 0x58($sp)
/* 208B0 8001FCB0 AFB90010 */  sw         $t9, 0x10($sp)
/* 208B4 8001FCB4 24190400 */  addiu      $t9, $zero, 0x400
/* 208B8 8001FCB8 240E0051 */  addiu      $t6, $zero, 0x51
/* 208BC 8001FCBC 240F0031 */  addiu      $t7, $zero, 0x31
/* 208C0 8001FCC0 24180400 */  addiu      $t8, $zero, 0x400
/* 208C4 8001FCC4 AFB8001C */  sw         $t8, 0x1C($sp)
/* 208C8 8001FCC8 AFAF0018 */  sw         $t7, 0x18($sp)
/* 208CC 8001FCCC AFAE0014 */  sw         $t6, 0x14($sp)
/* 208D0 8001FCD0 AFB90020 */  sw         $t9, 0x20($sp)
/* 208D4 8001FCD4 24846F70 */  addiu      $a0, $a0, %lo(D_803A6F70)
/* 208D8 8001FCD8 2407002E */  addiu      $a3, $zero, 0x2E
/* 208DC 8001FCDC 24A5FFE9 */  addiu      $a1, $a1, -0x17
/* 208E0 8001FCE0 0C00843F */  jal        func_800210FC
/* 208E4 8001FCE4 24C6FFF1 */   addiu     $a2, $a2, -0xF
.L8001FCE8:
/* 208E8 8001FCE8 8FBF002C */  lw         $ra, 0x2C($sp)
/* 208EC 8001FCEC 27BD0060 */  addiu      $sp, $sp, 0x60
/* 208F0 8001FCF0 03E00008 */  jr         $ra
/* 208F4 8001FCF4 00000000 */   nop

glabel func_8001FCF8
/* 208F8 8001FCF8 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 208FC 8001FCFC AFB00030 */  sw         $s0, 0x30($sp)
/* 20900 8001FD00 AFA5005C */  sw         $a1, 0x5C($sp)
/* 20904 8001FD04 AFA60060 */  sw         $a2, 0x60($sp)
/* 20908 8001FD08 AFA70064 */  sw         $a3, 0x64($sp)
/* 2090C 8001FD0C 30AEFFFF */  andi       $t6, $a1, 0xFFFF
/* 20910 8001FD10 30CFFFFF */  andi       $t7, $a2, 0xFFFF
/* 20914 8001FD14 0007C400 */  sll        $t8, $a3, 16
/* 20918 8001FD18 00183C03 */  sra        $a3, $t8, 16
/* 2091C 8001FD1C 01E03025 */  or         $a2, $t7, $zero
/* 20920 8001FD20 01C02825 */  or         $a1, $t6, $zero
/* 20924 8001FD24 00808025 */  or         $s0, $a0, $zero
/* 20928 8001FD28 AFBF0034 */  sw         $ra, 0x34($sp)
/* 2092C 8001FD2C 3C038005 */  lui        $v1, %hi(D_8004D2CC)
/* 20930 8001FD30 8E0A0068 */  lw         $t2, 0x68($s0)
/* 20934 8001FD34 2463D2CC */  addiu      $v1, $v1, %lo(D_8004D2CC)
/* 20938 8001FD38 00001025 */  or         $v0, $zero, $zero
/* 2093C 8001FD3C 00A04025 */  or         $t0, $a1, $zero
.L8001FD40:
/* 20940 8001FD40 946C0000 */  lhu        $t4, 0x0($v1)
/* 20944 8001FD44 01886824 */  and        $t5, $t4, $t0
/* 20948 8001FD48 51A00007 */  beql       $t5, $zero, .L8001FD68
/* 2094C 8001FD4C 24420001 */   addiu     $v0, $v0, 0x1
/* 20950 8001FD50 01421821 */  addu       $v1, $t2, $v0
/* 20954 8001FD54 A0660012 */  sb         $a2, 0x12($v1)
/* 20958 8001FD58 A0670022 */  sb         $a3, 0x22($v1)
/* 2095C 8001FD5C 10000006 */  b          .L8001FD78
/* 20960 8001FD60 00001025 */   or        $v0, $zero, $zero
/* 20964 8001FD64 24420001 */  addiu      $v0, $v0, 0x1
.L8001FD68:
/* 20968 8001FD68 2C410007 */  sltiu      $at, $v0, 0x7
/* 2096C 8001FD6C 1420FFF4 */  bnez       $at, .L8001FD40
/* 20970 8001FD70 24630002 */   addiu     $v1, $v1, 0x2
/* 20974 8001FD74 00001025 */  or         $v0, $zero, $zero
.L8001FD78:
/* 20978 8001FD78 3C038005 */  lui        $v1, %hi(D_8004D2DC)
/* 2097C 8001FD7C 2463D2DC */  addiu      $v1, $v1, %lo(D_8004D2DC)
/* 20980 8001FD80 24040004 */  addiu      $a0, $zero, 0x4
.L8001FD84:
/* 20984 8001FD84 946E0000 */  lhu        $t6, 0x0($v1)
/* 20988 8001FD88 0002C080 */  sll        $t8, $v0, 2
/* 2098C 8001FD8C 01584821 */  addu       $t1, $t2, $t8
/* 20990 8001FD90 01C87824 */  and        $t7, $t6, $t0
/* 20994 8001FD94 51E0004E */  beql       $t7, $zero, .L8001FED0
/* 20998 8001FD98 24420001 */   addiu     $v0, $v0, 0x1
/* 2099C 8001FD9C 8D390044 */  lw         $t9, 0x44($t1)
/* 209A0 8001FDA0 1720004A */  bnez       $t9, .L8001FECC
/* 209A4 8001FDA4 01426021 */   addu      $t4, $t2, $v0
/* 209A8 8001FDA8 3C0E803B */  lui        $t6, %hi(D_803A8E0C)
/* 209AC 8001FDAC A1870032 */  sb         $a3, 0x32($t4)
/* 209B0 8001FDB0 25CE8E0C */  addiu      $t6, $t6, %lo(D_803A8E0C)
/* 209B4 8001FDB4 00066900 */  sll        $t5, $a2, 4
/* 209B8 8001FDB8 01AE1821 */  addu       $v1, $t5, $t6
/* 209BC 8001FDBC 3C088009 */  lui        $t0, %hi(D_8008C748)
/* 209C0 8001FDC0 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 209C4 8001FDC4 C4640008 */  lwc1       $f4, 0x8($v1)
/* 209C8 8001FDC8 C466000C */  lwc1       $f6, 0xC($v1)
/* 209CC 8001FDCC 44814000 */  mtc1       $at, $f8
/* 209D0 8001FDD0 2508C748 */  addiu      $t0, $t0, %lo(D_8008C748)
/* 209D4 8001FDD4 E5040000 */  swc1       $f4, 0x0($t0)
/* 209D8 8001FDD8 E5060004 */  swc1       $f6, 0x4($t0)
/* 209DC 8001FDDC E5080008 */  swc1       $f8, 0x8($t0)
/* 209E0 8001FDE0 846F0000 */  lh         $t7, 0x0($v1)
/* 209E4 8001FDE4 8E040064 */  lw         $a0, 0x64($s0)
/* 209E8 8001FDE8 3C19803B */  lui        $t9, %hi(D_803A8DD8)
/* 209EC 8001FDEC 000FC080 */  sll        $t8, $t7, 2
/* 209F0 8001FDF0 948C0000 */  lhu        $t4, 0x0($a0)
/* 209F4 8001FDF4 030FC021 */  addu       $t8, $t8, $t7
/* 209F8 8001FDF8 0018C040 */  sll        $t8, $t8, 1
/* 209FC 8001FDFC 27398DD8 */  addiu      $t9, $t9, %lo(D_803A8DD8)
/* 20A00 8001FE00 24010001 */  addiu      $at, $zero, 0x1
/* 20A04 8001FE04 1581000F */  bne        $t4, $at, .L8001FE44
/* 20A08 8001FE08 03195821 */   addu      $t3, $t8, $t9
/* 20A0C 8001FE0C 94650004 */  lhu        $a1, 0x4($v1)
/* 20A10 8001FE10 30AD0100 */  andi       $t5, $a1, 0x100
/* 20A14 8001FE14 51A00005 */  beql       $t5, $zero, .L8001FE2C
/* 20A18 8001FE18 C48A0018 */   lwc1      $f10, 0x18($a0)
/* 20A1C 8001FE1C 8E0E0068 */  lw         $t6, 0x68($s0)
/* 20A20 8001FE20 1000001B */  b          .L8001FE90
/* 20A24 8001FE24 C5C00094 */   lwc1      $f0, 0x94($t6)
/* 20A28 8001FE28 C48A0018 */  lwc1       $f10, 0x18($a0)
.L8001FE2C:
/* 20A2C 8001FE2C C6100024 */  lwc1       $f16, 0x24($s0)
/* 20A30 8001FE30 8E0F0068 */  lw         $t7, 0x68($s0)
/* 20A34 8001FE34 46105482 */  mul.s      $f18, $f10, $f16
/* 20A38 8001FE38 C5E40094 */  lwc1       $f4, 0x94($t7)
/* 20A3C 8001FE3C 10000014 */  b          .L8001FE90
/* 20A40 8001FE40 46122001 */   sub.s     $f0, $f4, $f18
.L8001FE44:
/* 20A44 8001FE44 94650004 */  lhu        $a1, 0x4($v1)
/* 20A48 8001FE48 3C013FE0 */  lui        $at, (0x3FE00000 >> 16)
/* 20A4C 8001FE4C 30B80100 */  andi       $t8, $a1, 0x100
/* 20A50 8001FE50 5300000F */  beql       $t8, $zero, .L8001FE90
/* 20A54 8001FE54 C6000004 */   lwc1      $f0, 0x4($s0)
/* 20A58 8001FE58 C486001C */  lwc1       $f6, 0x1C($a0)
/* 20A5C 8001FE5C 44815800 */  mtc1       $at, $f11
/* 20A60 8001FE60 44805000 */  mtc1       $zero, $f10
/* 20A64 8001FE64 46003221 */  cvt.d.s    $f8, $f6
/* 20A68 8001FE68 C6040024 */  lwc1       $f4, 0x24($s0)
/* 20A6C 8001FE6C 462A4402 */  mul.d      $f16, $f8, $f10
/* 20A70 8001FE70 C6080004 */  lwc1       $f8, 0x4($s0)
/* 20A74 8001FE74 460024A1 */  cvt.d.s    $f18, $f4
/* 20A78 8001FE78 460042A1 */  cvt.d.s    $f10, $f8
/* 20A7C 8001FE7C 46328182 */  mul.d      $f6, $f16, $f18
/* 20A80 8001FE80 46265100 */  add.d      $f4, $f10, $f6
/* 20A84 8001FE84 10000002 */  b          .L8001FE90
/* 20A88 8001FE88 46202020 */   cvt.s.d   $f0, $f4
/* 20A8C 8001FE8C C6000004 */  lwc1       $f0, 0x4($s0)
.L8001FE90:
/* 20A90 8001FE90 C6100008 */  lwc1       $f16, 0x8($s0)
/* 20A94 8001FE94 8E060000 */  lw         $a2, 0x0($s0)
/* 20A98 8001FE98 44809000 */  mtc1       $zero, $f18
/* 20A9C 8001FE9C 44070000 */  mfc1       $a3, $f0
/* 20AA0 8001FEA0 AFA90038 */  sw         $t1, 0x38($sp)
/* 20AA4 8001FEA4 AFB00020 */  sw         $s0, 0x20($sp)
/* 20AA8 8001FEA8 AFA8001C */  sw         $t0, 0x1C($sp)
/* 20AAC 8001FEAC AFAB0018 */  sw         $t3, 0x18($sp)
/* 20AB0 8001FEB0 94640002 */  lhu        $a0, 0x2($v1)
/* 20AB4 8001FEB4 E7B00010 */  swc1       $f16, 0x10($sp)
/* 20AB8 8001FEB8 0C005DFE */  jal        func_800177F8
/* 20ABC 8001FEBC E7B20014 */   swc1      $f18, 0x14($sp)
/* 20AC0 8001FEC0 8FA90038 */  lw         $t1, 0x38($sp)
/* 20AC4 8001FEC4 10000004 */  b          .L8001FED8
/* 20AC8 8001FEC8 AD220044 */   sw        $v0, 0x44($t1)
.L8001FECC:
/* 20ACC 8001FECC 24420001 */  addiu      $v0, $v0, 0x1
.L8001FED0:
/* 20AD0 8001FED0 1444FFAC */  bne        $v0, $a0, .L8001FD84
/* 20AD4 8001FED4 24630002 */   addiu     $v1, $v1, 0x2
.L8001FED8:
/* 20AD8 8001FED8 8FBF0034 */  lw         $ra, 0x34($sp)
/* 20ADC 8001FEDC 8FB00030 */  lw         $s0, 0x30($sp)
/* 20AE0 8001FEE0 27BD0058 */  addiu      $sp, $sp, 0x58
/* 20AE4 8001FEE4 03E00008 */  jr         $ra
/* 20AE8 8001FEE8 00000000 */   nop

glabel func_8001FEEC
/* 20AEC 8001FEEC 27BDFF40 */  addiu      $sp, $sp, -0xC0
/* 20AF0 8001FEF0 AFB3003C */  sw         $s3, 0x3C($sp)
/* 20AF4 8001FEF4 00809825 */  or         $s3, $a0, $zero
/* 20AF8 8001FEF8 AFBF0054 */  sw         $ra, 0x54($sp)
/* 20AFC 8001FEFC AFBE0050 */  sw         $fp, 0x50($sp)
/* 20B00 8001FF00 AFB7004C */  sw         $s7, 0x4C($sp)
/* 20B04 8001FF04 AFB60048 */  sw         $s6, 0x48($sp)
/* 20B08 8001FF08 AFB50044 */  sw         $s5, 0x44($sp)
/* 20B0C 8001FF0C AFB40040 */  sw         $s4, 0x40($sp)
/* 20B10 8001FF10 AFB20038 */  sw         $s2, 0x38($sp)
/* 20B14 8001FF14 AFB10034 */  sw         $s1, 0x34($sp)
/* 20B18 8001FF18 AFB00030 */  sw         $s0, 0x30($sp)
/* 20B1C 8001FF1C 3C0E8008 */  lui        $t6, %hi(D_8007B2E4)
/* 20B20 8001FF20 8DCEB2E4 */  lw         $t6, %lo(D_8007B2E4)($t6)
/* 20B24 8001FF24 8E620068 */  lw         $v0, 0x68($s3)
/* 20B28 8001FF28 27A700B0 */  addiu      $a3, $sp, 0xB0
/* 20B2C 8001FF2C 31CF0800 */  andi       $t7, $t6, 0x800
/* 20B30 8001FF30 15E00082 */  bnez       $t7, .L8002013C
/* 20B34 8001FF34 0040F025 */   or        $fp, $v0, $zero
/* 20B38 8001FF38 8E630064 */  lw         $v1, 0x64($s3)
/* 20B3C 8001FF3C 24010001 */  addiu      $at, $zero, 0x1
/* 20B40 8001FF40 27B900AC */  addiu      $t9, $sp, 0xAC
/* 20B44 8001FF44 94780000 */  lhu        $t8, 0x0($v1)
/* 20B48 8001FF48 57010004 */  bnel       $t8, $at, .L8001FF5C
/* 20B4C 8001FF4C C464001C */   lwc1      $f4, 0x1C($v1)
/* 20B50 8001FF50 10000006 */  b          .L8001FF6C
/* 20B54 8001FF54 C44E0094 */   lwc1      $f14, 0x94($v0)
/* 20B58 8001FF58 C464001C */  lwc1       $f4, 0x1C($v1)
.L8001FF5C:
/* 20B5C 8001FF5C C6660024 */  lwc1       $f6, 0x24($s3)
/* 20B60 8001FF60 C66A0004 */  lwc1       $f10, 0x4($s3)
/* 20B64 8001FF64 46062202 */  mul.s      $f8, $f4, $f6
/* 20B68 8001FF68 46085380 */  add.s      $f14, $f10, $f8
.L8001FF6C:
/* 20B6C 8001FF6C C66C0000 */  lwc1       $f12, 0x0($s3)
/* 20B70 8001FF70 8E660008 */  lw         $a2, 0x8($s3)
/* 20B74 8001FF74 0C00904F */  jal        func_8002413C
/* 20B78 8001FF78 AFB90010 */   sw        $t9, 0x10($sp)
/* 20B7C 8001FF7C 3C048008 */  lui        $a0, %hi(gMasterGfxPos)
/* 20B80 8001FF80 2484B2FC */  addiu      $a0, $a0, %lo(gMasterGfxPos)
/* 20B84 8001FF84 3C0DE700 */  lui        $t5, (0xE7000000 >> 16)
/* 20B88 8001FF88 00406025 */  or         $t4, $v0, $zero
/* 20B8C 8001FF8C 8C830000 */  lw         $v1, 0x0($a0)
/* 20B90 8001FF90 3C18FD10 */  lui        $t8, (0xFD100000 >> 16)
/* 20B94 8001FF94 0000B025 */  or         $s6, $zero, $zero
/* 20B98 8001FF98 246E0008 */  addiu      $t6, $v1, 0x8
/* 20B9C 8001FF9C AC8E0000 */  sw         $t6, 0x0($a0)
/* 20BA0 8001FFA0 AC600004 */  sw         $zero, 0x4($v1)
/* 20BA4 8001FFA4 AC6D0000 */  sw         $t5, 0x0($v1)
/* 20BA8 8001FFA8 8C830000 */  lw         $v1, 0x0($a0)
/* 20BAC 8001FFAC 3C19803A */  lui        $t9, %hi(D_803A2960)
/* 20BB0 8001FFB0 27392960 */  addiu      $t9, $t9, %lo(D_803A2960)
/* 20BB4 8001FFB4 246F0008 */  addiu      $t7, $v1, 0x8
/* 20BB8 8001FFB8 AC8F0000 */  sw         $t7, 0x0($a0)
/* 20BBC 8001FFBC AC790004 */  sw         $t9, 0x4($v1)
/* 20BC0 8001FFC0 AC780000 */  sw         $t8, 0x0($v1)
/* 20BC4 8001FFC4 8C830000 */  lw         $v1, 0x0($a0)
/* 20BC8 8001FFC8 3C0FE800 */  lui        $t7, (0xE8000000 >> 16)
/* 20BCC 8001FFCC 3C19F500 */  lui        $t9, (0xF5000100 >> 16)
/* 20BD0 8001FFD0 246E0008 */  addiu      $t6, $v1, 0x8
/* 20BD4 8001FFD4 AC8E0000 */  sw         $t6, 0x0($a0)
/* 20BD8 8001FFD8 AC600004 */  sw         $zero, 0x4($v1)
/* 20BDC 8001FFDC AC6F0000 */  sw         $t7, 0x0($v1)
/* 20BE0 8001FFE0 8C830000 */  lw         $v1, 0x0($a0)
/* 20BE4 8001FFE4 37390100 */  ori        $t9, $t9, (0xF5000100 & 0xFFFF)
/* 20BE8 8001FFE8 3C0E0700 */  lui        $t6, (0x7000000 >> 16)
/* 20BEC 8001FFEC 24780008 */  addiu      $t8, $v1, 0x8
/* 20BF0 8001FFF0 AC980000 */  sw         $t8, 0x0($a0)
/* 20BF4 8001FFF4 AC6E0004 */  sw         $t6, 0x4($v1)
/* 20BF8 8001FFF8 AC790000 */  sw         $t9, 0x0($v1)
/* 20BFC 8001FFFC 8C830000 */  lw         $v1, 0x0($a0)
/* 20C00 80020000 3C18E600 */  lui        $t8, (0xE6000000 >> 16)
/* 20C04 80020004 3C0EF000 */  lui        $t6, (0xF0000000 >> 16)
/* 20C08 80020008 246F0008 */  addiu      $t7, $v1, 0x8
/* 20C0C 8002000C AC8F0000 */  sw         $t7, 0x0($a0)
/* 20C10 80020010 AC600004 */  sw         $zero, 0x4($v1)
/* 20C14 80020014 AC780000 */  sw         $t8, 0x0($v1)
/* 20C18 80020018 8C830000 */  lw         $v1, 0x0($a0)
/* 20C1C 8002001C 3C0F073F */  lui        $t7, (0x73FC000 >> 16)
/* 20C20 80020020 35EFC000 */  ori        $t7, $t7, (0x73FC000 & 0xFFFF)
/* 20C24 80020024 24790008 */  addiu      $t9, $v1, 0x8
/* 20C28 80020028 AC990000 */  sw         $t9, 0x0($a0)
/* 20C2C 8002002C AC6F0004 */  sw         $t7, 0x4($v1)
/* 20C30 80020030 AC6E0000 */  sw         $t6, 0x0($v1)
/* 20C34 80020034 8C830000 */  lw         $v1, 0x0($a0)
/* 20C38 80020038 0000B825 */  or         $s7, $zero, $zero
/* 20C3C 8002003C 0000A025 */  or         $s4, $zero, $zero
/* 20C40 80020040 24780008 */  addiu      $t8, $v1, 0x8
/* 20C44 80020044 AC980000 */  sw         $t8, 0x0($a0)
/* 20C48 80020048 AC600004 */  sw         $zero, 0x4($v1)
/* 20C4C 8002004C AC6D0000 */  sw         $t5, 0x0($v1)
/* 20C50 80020050 03C08025 */  or         $s0, $fp, $zero
.L80020054:
/* 20C54 80020054 92030012 */  lbu        $v1, 0x12($s0)
/* 20C58 80020058 3C0E803B */  lui        $t6, %hi(D_803A8D70)
/* 20C5C 8002005C 25CE8D70 */  addiu      $t6, $t6, %lo(D_803A8D70)
/* 20C60 80020060 10600032 */  beqz       $v1, .L8002012C
/* 20C64 80020064 0003C8C0 */   sll       $t9, $v1, 3
/* 20C68 80020068 032E1021 */  addu       $v0, $t9, $t6
/* 20C6C 8002006C 3C188005 */  lui        $t8, %hi(D_8004D2CC)
/* 20C70 80020070 2718D2CC */  addiu      $t8, $t8, %lo(D_8004D2CC)
/* 20C74 80020074 00147840 */  sll        $t7, $s4, 1
/* 20C78 80020078 84480000 */  lh         $t0, 0x0($v0)
/* 20C7C 8002007C 84490002 */  lh         $t1, 0x2($v0)
/* 20C80 80020080 94510004 */  lhu        $s1, 0x4($v0)
/* 20C84 80020084 94520006 */  lhu        $s2, 0x6($v0)
/* 20C88 80020088 11800016 */  beqz       $t4, .L800200E4
/* 20C8C 8002008C 01F8A821 */   addu      $s5, $t7, $t8
/* 20C90 80020090 8FB900B0 */  lw         $t9, 0xB0($sp)
/* 20C94 80020094 8FB800AC */  lw         $t8, 0xAC($sp)
/* 20C98 80020098 00117843 */  sra        $t7, $s1, 1
/* 20C9C 8002009C 03377021 */  addu       $t6, $t9, $s7
/* 20CA0 800200A0 01CF2823 */  subu       $a1, $t6, $t7
/* 20CA4 800200A4 0316C821 */  addu       $t9, $t8, $s6
/* 20CA8 800200A8 24180400 */  addiu      $t8, $zero, 0x400
/* 20CAC 800200AC 240F0400 */  addiu      $t7, $zero, 0x400
/* 20CB0 800200B0 00127043 */  sra        $t6, $s2, 1
/* 20CB4 800200B4 3C04803A */  lui        $a0, %hi(D_803A6F70)
/* 20CB8 800200B8 24846F70 */  addiu      $a0, $a0, %lo(D_803A6F70)
/* 20CBC 800200BC 032E3023 */  subu       $a2, $t9, $t6
/* 20CC0 800200C0 AFAF001C */  sw         $t7, 0x1C($sp)
/* 20CC4 800200C4 AFB80020 */  sw         $t8, 0x20($sp)
/* 20CC8 800200C8 02203825 */  or         $a3, $s1, $zero
/* 20CCC 800200CC AFB20010 */  sw         $s2, 0x10($sp)
/* 20CD0 800200D0 AFA80014 */  sw         $t0, 0x14($sp)
/* 20CD4 800200D4 AFA90018 */  sw         $t1, 0x18($sp)
/* 20CD8 800200D8 0C00843F */  jal        func_800210FC
/* 20CDC 800200DC AFAC00B4 */   sw        $t4, 0xB4($sp)
/* 20CE0 800200E0 8FAC00B4 */  lw         $t4, 0xB4($sp)
.L800200E4:
/* 20CE4 800200E4 96B90000 */  lhu        $t9, 0x0($s5)
/* 20CE8 800200E8 97CE0000 */  lhu        $t6, 0x0($fp)
/* 20CEC 800200EC 00111843 */  sra        $v1, $s1, 1
/* 20CF0 800200F0 00122043 */  sra        $a0, $s2, 1
/* 20CF4 800200F4 032E7824 */  and        $t7, $t9, $t6
/* 20CF8 800200F8 15E00003 */  bnez       $t7, .L80020108
/* 20CFC 800200FC 02E3B821 */   addu      $s7, $s7, $v1
/* 20D00 80020100 10000009 */  b          .L80020128
/* 20D04 80020104 A2000012 */   sb        $zero, 0x12($s0)
.L80020108:
/* 20D08 80020108 82020022 */  lb         $v0, 0x22($s0)
/* 20D0C 8002010C 18400006 */  blez       $v0, .L80020128
/* 20D10 80020110 2458FFFF */   addiu     $t8, $v0, -0x1
/* 20D14 80020114 A2180022 */  sb         $t8, 0x22($s0)
/* 20D18 80020118 82190022 */  lb         $t9, 0x22($s0)
/* 20D1C 8002011C 57200003 */  bnel       $t9, $zero, .L8002012C
/* 20D20 80020120 02C4B023 */   subu      $s6, $s6, $a0
/* 20D24 80020124 A2000012 */  sb         $zero, 0x12($s0)
.L80020128:
/* 20D28 80020128 02C4B023 */  subu       $s6, $s6, $a0
.L8002012C:
/* 20D2C 8002012C 26940001 */  addiu      $s4, $s4, 0x1
/* 20D30 80020130 24010007 */  addiu      $at, $zero, 0x7
/* 20D34 80020134 1681FFC7 */  bne        $s4, $at, .L80020054
/* 20D38 80020138 26100001 */   addiu     $s0, $s0, 0x1
.L8002013C:
/* 20D3C 8002013C 3C013FE0 */  lui        $at, (0x3FE00000 >> 16)
/* 20D40 80020140 44810800 */  mtc1       $at, $f1
/* 20D44 80020144 44800000 */  mtc1       $zero, $f0
/* 20D48 80020148 0000A025 */  or         $s4, $zero, $zero
/* 20D4C 8002014C 00003025 */  or         $a2, $zero, $zero
/* 20D50 80020150 03C02025 */  or         $a0, $fp, $zero
/* 20D54 80020154 240A0001 */  addiu      $t2, $zero, 0x1
/* 20D58 80020158 24090004 */  addiu      $t1, $zero, 0x4
/* 20D5C 8002015C 24080008 */  addiu      $t0, $zero, 0x8
/* 20D60 80020160 2407FFFE */  addiu      $a3, $zero, -0x2
.L80020164:
/* 20D64 80020164 8C8E0044 */  lw         $t6, 0x44($a0)
/* 20D68 80020168 51C0004F */  beql       $t6, $zero, .L800202A8
/* 20D6C 8002016C 26940001 */   addiu     $s4, $s4, 0x1
/* 20D70 80020170 8E6F0068 */  lw         $t7, 0x68($s3)
/* 20D74 80020174 C6700000 */  lwc1       $f16, 0x0($s3)
/* 20D78 80020178 3C0E8005 */  lui        $t6, %hi(D_8004D2DC)
/* 20D7C 8002017C 01E6C021 */  addu       $t8, $t7, $a2
/* 20D80 80020180 8F020044 */  lw         $v0, 0x44($t8)
/* 20D84 80020184 25CED2DC */  addiu      $t6, $t6, %lo(D_8004D2DC)
/* 20D88 80020188 0014C840 */  sll        $t9, $s4, 1
/* 20D8C 8002018C E450000C */  swc1       $f16, 0xC($v0)
/* 20D90 80020190 C6720008 */  lwc1       $f18, 0x8($s3)
/* 20D94 80020194 032E2821 */  addu       $a1, $t9, $t6
/* 20D98 80020198 03D48021 */  addu       $s0, $fp, $s4
/* 20D9C 8002019C E4520014 */  swc1       $f18, 0x14($v0)
/* 20DA0 800201A0 8E630064 */  lw         $v1, 0x64($s3)
/* 20DA4 800201A4 946F0000 */  lhu        $t7, 0x0($v1)
/* 20DA8 800201A8 554F0012 */  bnel       $t2, $t7, .L800201F4
/* 20DAC 800201AC 94580008 */   lhu       $t8, 0x8($v0)
/* 20DB0 800201B0 94580008 */  lhu        $t8, 0x8($v0)
/* 20DB4 800201B4 33190100 */  andi       $t9, $t8, 0x100
/* 20DB8 800201B8 53200006 */  beql       $t9, $zero, .L800201D4
/* 20DBC 800201BC C4660018 */   lwc1      $f6, 0x18($v1)
/* 20DC0 800201C0 8E6E0068 */  lw         $t6, 0x68($s3)
/* 20DC4 800201C4 C5C40094 */  lwc1       $f4, 0x94($t6)
/* 20DC8 800201C8 1000001B */  b          .L80020238
/* 20DCC 800201CC E4440010 */   swc1      $f4, 0x10($v0)
/* 20DD0 800201D0 C4660018 */  lwc1       $f6, 0x18($v1)
.L800201D4:
/* 20DD4 800201D4 C66A0024 */  lwc1       $f10, 0x24($s3)
/* 20DD8 800201D8 8E6F0068 */  lw         $t7, 0x68($s3)
/* 20DDC 800201DC 460A3202 */  mul.s      $f8, $f6, $f10
/* 20DE0 800201E0 C5F00094 */  lwc1       $f16, 0x94($t7)
/* 20DE4 800201E4 46088481 */  sub.s      $f18, $f16, $f8
/* 20DE8 800201E8 10000013 */  b          .L80020238
/* 20DEC 800201EC E4520010 */   swc1      $f18, 0x10($v0)
/* 20DF0 800201F0 94580008 */  lhu        $t8, 0x8($v0)
.L800201F4:
/* 20DF4 800201F4 33190100 */  andi       $t9, $t8, 0x100
/* 20DF8 800201F8 5320000E */  beql       $t9, $zero, .L80020234
/* 20DFC 800201FC C6680004 */   lwc1      $f8, 0x4($s3)
/* 20E00 80020200 C464001C */  lwc1       $f4, 0x1C($v1)
/* 20E04 80020204 C6700024 */  lwc1       $f16, 0x24($s3)
/* 20E08 80020208 460021A1 */  cvt.d.s    $f6, $f4
/* 20E0C 8002020C 46008221 */  cvt.d.s    $f8, $f16
/* 20E10 80020210 46203282 */  mul.d      $f10, $f6, $f0
/* 20E14 80020214 C6640004 */  lwc1       $f4, 0x4($s3)
/* 20E18 80020218 460021A1 */  cvt.d.s    $f6, $f4
/* 20E1C 8002021C 46285482 */  mul.d      $f18, $f10, $f8
/* 20E20 80020220 46323400 */  add.d      $f16, $f6, $f18
/* 20E24 80020224 462082A0 */  cvt.s.d    $f10, $f16
/* 20E28 80020228 10000003 */  b          .L80020238
/* 20E2C 8002022C E44A0010 */   swc1      $f10, 0x10($v0)
/* 20E30 80020230 C6680004 */  lwc1       $f8, 0x4($s3)
.L80020234:
/* 20E34 80020234 E4480010 */  swc1       $f8, 0x10($v0)
.L80020238:
/* 20E38 80020238 94AE0000 */  lhu        $t6, 0x0($a1)
/* 20E3C 8002023C 97CF0000 */  lhu        $t7, 0x0($fp)
/* 20E40 80020240 01CFC024 */  and        $t8, $t6, $t7
/* 20E44 80020244 5700000A */  bnel       $t8, $zero, .L80020270
/* 20E48 80020248 82030032 */   lb        $v1, 0x32($s0)
/* 20E4C 8002024C AC800044 */  sw         $zero, 0x44($a0)
/* 20E50 80020250 94430008 */  lhu        $v1, 0x8($v0)
/* 20E54 80020254 30790001 */  andi       $t9, $v1, 0x1
/* 20E58 80020258 13200012 */  beqz       $t9, .L800202A4
/* 20E5C 8002025C 00677024 */   and       $t6, $v1, $a3
/* 20E60 80020260 A44E0008 */  sh         $t6, 0x8($v0)
/* 20E64 80020264 1000000F */  b          .L800202A4
/* 20E68 80020268 A4480000 */   sh        $t0, 0x0($v0)
/* 20E6C 8002026C 82030032 */  lb         $v1, 0x32($s0)
.L80020270:
/* 20E70 80020270 1860000C */  blez       $v1, .L800202A4
/* 20E74 80020274 246FFFFF */   addiu     $t7, $v1, -0x1
/* 20E78 80020278 A20F0032 */  sb         $t7, 0x32($s0)
/* 20E7C 8002027C 82180032 */  lb         $t8, 0x32($s0)
/* 20E80 80020280 57000009 */  bnel       $t8, $zero, .L800202A8
/* 20E84 80020284 26940001 */   addiu     $s4, $s4, 0x1
/* 20E88 80020288 AC800044 */  sw         $zero, 0x44($a0)
/* 20E8C 8002028C 94430008 */  lhu        $v1, 0x8($v0)
/* 20E90 80020290 30790001 */  andi       $t9, $v1, 0x1
/* 20E94 80020294 13200003 */  beqz       $t9, .L800202A4
/* 20E98 80020298 00677024 */   and       $t6, $v1, $a3
/* 20E9C 8002029C A44E0008 */  sh         $t6, 0x8($v0)
/* 20EA0 800202A0 A4480000 */  sh         $t0, 0x0($v0)
.L800202A4:
/* 20EA4 800202A4 26940001 */  addiu      $s4, $s4, 0x1
.L800202A8:
/* 20EA8 800202A8 24C60004 */  addiu      $a2, $a2, 0x4
/* 20EAC 800202AC 1689FFAD */  bne        $s4, $t1, .L80020164
/* 20EB0 800202B0 24840004 */   addiu     $a0, $a0, 0x4
/* 20EB4 800202B4 8FBF0054 */  lw         $ra, 0x54($sp)
/* 20EB8 800202B8 8FB00030 */  lw         $s0, 0x30($sp)
/* 20EBC 800202BC 8FB10034 */  lw         $s1, 0x34($sp)
/* 20EC0 800202C0 8FB20038 */  lw         $s2, 0x38($sp)
/* 20EC4 800202C4 8FB3003C */  lw         $s3, 0x3C($sp)
/* 20EC8 800202C8 8FB40040 */  lw         $s4, 0x40($sp)
/* 20ECC 800202CC 8FB50044 */  lw         $s5, 0x44($sp)
/* 20ED0 800202D0 8FB60048 */  lw         $s6, 0x48($sp)
/* 20ED4 800202D4 8FB7004C */  lw         $s7, 0x4C($sp)
/* 20ED8 800202D8 8FBE0050 */  lw         $fp, 0x50($sp)
/* 20EDC 800202DC 03E00008 */  jr         $ra
/* 20EE0 800202E0 27BD00C0 */   addiu     $sp, $sp, 0xC0

glabel func_800202E4
/* 20EE4 800202E4 8C820068 */  lw         $v0, 0x68($a0)
/* 20EE8 800202E8 00001825 */  or         $v1, $zero, $zero
/* 20EEC 800202EC 00402825 */  or         $a1, $v0, $zero
.L800202F0:
/* 20EF0 800202F0 90AE0012 */  lbu        $t6, 0x12($a1)
/* 20EF4 800202F4 24630001 */  addiu      $v1, $v1, 0x1
/* 20EF8 800202F8 2C610007 */  sltiu      $at, $v1, 0x7
/* 20EFC 800202FC 11C00002 */  beqz       $t6, .L80020308
/* 20F00 80020300 00000000 */   nop
/* 20F04 80020304 A0A00012 */  sb         $zero, 0x12($a1)
.L80020308:
/* 20F08 80020308 1420FFF9 */  bnez       $at, .L800202F0
/* 20F0C 8002030C 24A50001 */   addiu     $a1, $a1, 0x1
/* 20F10 80020310 8C440044 */  lw         $a0, 0x44($v0)
/* 20F14 80020314 00401825 */  or         $v1, $v0, $zero
/* 20F18 80020318 50800008 */  beql       $a0, $zero, .L8002033C
/* 20F1C 8002031C 8C640048 */   lw        $a0, 0x48($v1)
/* 20F20 80020320 948F0008 */  lhu        $t7, 0x8($a0)
/* 20F24 80020324 24050008 */  addiu      $a1, $zero, 0x8
/* 20F28 80020328 A4850000 */  sh         $a1, 0x0($a0)
/* 20F2C 8002032C 31F8FFFE */  andi       $t8, $t7, 0xFFFE
/* 20F30 80020330 A4980008 */  sh         $t8, 0x8($a0)
/* 20F34 80020334 AC600044 */  sw         $zero, 0x44($v1)
/* 20F38 80020338 8C640048 */  lw         $a0, 0x48($v1)
.L8002033C:
/* 20F3C 8002033C 24050008 */  addiu      $a1, $zero, 0x8
/* 20F40 80020340 2406FFFE */  addiu      $a2, $zero, -0x2
/* 20F44 80020344 50800007 */  beql       $a0, $zero, .L80020364
/* 20F48 80020348 8C64004C */   lw        $a0, 0x4C($v1)
/* 20F4C 8002034C 94990008 */  lhu        $t9, 0x8($a0)
/* 20F50 80020350 A4850000 */  sh         $a1, 0x0($a0)
/* 20F54 80020354 03264024 */  and        $t0, $t9, $a2
/* 20F58 80020358 A4880008 */  sh         $t0, 0x8($a0)
/* 20F5C 8002035C AC600048 */  sw         $zero, 0x48($v1)
/* 20F60 80020360 8C64004C */  lw         $a0, 0x4C($v1)
.L80020364:
/* 20F64 80020364 50800007 */  beql       $a0, $zero, .L80020384
/* 20F68 80020368 8C640050 */   lw        $a0, 0x50($v1)
/* 20F6C 8002036C 94890008 */  lhu        $t1, 0x8($a0)
/* 20F70 80020370 A4850000 */  sh         $a1, 0x0($a0)
/* 20F74 80020374 01265024 */  and        $t2, $t1, $a2
/* 20F78 80020378 A48A0008 */  sh         $t2, 0x8($a0)
/* 20F7C 8002037C AC60004C */  sw         $zero, 0x4C($v1)
/* 20F80 80020380 8C640050 */  lw         $a0, 0x50($v1)
.L80020384:
/* 20F84 80020384 10800006 */  beqz       $a0, .L800203A0
/* 20F88 80020388 00000000 */   nop
/* 20F8C 8002038C 948B0008 */  lhu        $t3, 0x8($a0)
/* 20F90 80020390 A4850000 */  sh         $a1, 0x0($a0)
/* 20F94 80020394 01666024 */  and        $t4, $t3, $a2
/* 20F98 80020398 A48C0008 */  sh         $t4, 0x8($a0)
/* 20F9C 8002039C AC600050 */  sw         $zero, 0x50($v1)
.L800203A0:
/* 20FA0 800203A0 03E00008 */  jr         $ra
/* 20FA4 800203A4 00000000 */   nop

glabel func_800203A8
/* 20FA8 800203A8 03E00008 */  jr         $ra
/* 20FAC 800203AC 00000000 */   nop

glabel func_800203B0
/* 20FB0 800203B0 03E00008 */  jr         $ra
/* 20FB4 800203B4 00000000 */   nop

glabel func_800203B8
/* 20FB8 800203B8 03E00008 */  jr         $ra
/* 20FBC 800203BC 00000000 */   nop

glabel func_800203C0
/* 20FC0 800203C0 03E00008 */  jr         $ra
/* 20FC4 800203C4 00000000 */   nop

glabel func_800203C8
/* 20FC8 800203C8 03E00008 */  jr         $ra
/* 20FCC 800203CC 00000000 */   nop

glabel func_800203D0
/* 20FD0 800203D0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 20FD4 800203D4 AFB10030 */  sw         $s1, 0x30($sp)
/* 20FD8 800203D8 AFB0002C */  sw         $s0, 0x2C($sp)
/* 20FDC 800203DC 3C108008 */  lui        $s0, %hi(gMasterGfxPos)
/* 20FE0 800203E0 3C118008 */  lui        $s1, %hi(D_8007D088)
/* 20FE4 800203E4 2631D088 */  addiu      $s1, $s1, %lo(D_8007D088)
/* 20FE8 800203E8 2610B2FC */  addiu      $s0, $s0, %lo(gMasterGfxPos)
/* 20FEC 800203EC AFBF0034 */  sw         $ra, 0x34($sp)
/* 20FF0 800203F0 3C0AE700 */  lui        $t2, (0xE7000000 >> 16)
/* 20FF4 800203F4 240E00B5 */  addiu      $t6, $zero, 0xB5
/* 20FF8 800203F8 3C018009 */  lui        $at, %hi(D_8008C648)
/* 20FFC 800203FC AC2EC648 */  sw         $t6, %lo(D_8008C648)($at)
/* 21000 80020400 3C018009 */  lui        $at, %hi(D_8008C64C)
/* 21004 80020404 240F001A */  addiu      $t7, $zero, 0x1A
/* 21008 80020408 AC2FC64C */  sw         $t7, %lo(D_8008C64C)($at)
/* 2100C 8002040C 8E020000 */  lw         $v0, 0x0($s0)
/* 21010 80020410 3C0BFD10 */  lui        $t3, (0xFD100000 >> 16)
/* 21014 80020414 24580008 */  addiu      $t8, $v0, 0x8
/* 21018 80020418 AE180000 */  sw         $t8, 0x0($s0)
/* 2101C 8002041C AC400004 */  sw         $zero, 0x4($v0)
/* 21020 80020420 AC4A0000 */  sw         $t2, 0x0($v0)
/* 21024 80020424 8E020000 */  lw         $v0, 0x0($s0)
/* 21028 80020428 3C0C803A */  lui        $t4, %hi(D_8039D990)
/* 2102C 8002042C 258CD990 */  addiu      $t4, $t4, %lo(D_8039D990)
/* 21030 80020430 24590008 */  addiu      $t9, $v0, 0x8
/* 21034 80020434 AE190000 */  sw         $t9, 0x0($s0)
/* 21038 80020438 AC4C0004 */  sw         $t4, 0x4($v0)
/* 2103C 8002043C AC4B0000 */  sw         $t3, 0x0($v0)
/* 21040 80020440 8E020000 */  lw         $v0, 0x0($s0)
/* 21044 80020444 3C0EE800 */  lui        $t6, (0xE8000000 >> 16)
/* 21048 80020448 3C18F500 */  lui        $t8, (0xF5000100 >> 16)
/* 2104C 8002044C 244D0008 */  addiu      $t5, $v0, 0x8
/* 21050 80020450 AE0D0000 */  sw         $t5, 0x0($s0)
/* 21054 80020454 AC400004 */  sw         $zero, 0x4($v0)
/* 21058 80020458 AC4E0000 */  sw         $t6, 0x0($v0)
/* 2105C 8002045C 8E020000 */  lw         $v0, 0x0($s0)
/* 21060 80020460 37180100 */  ori        $t8, $t8, (0xF5000100 & 0xFFFF)
/* 21064 80020464 3C190700 */  lui        $t9, (0x7000000 >> 16)
/* 21068 80020468 244F0008 */  addiu      $t7, $v0, 0x8
/* 2106C 8002046C AE0F0000 */  sw         $t7, 0x0($s0)
/* 21070 80020470 AC590004 */  sw         $t9, 0x4($v0)
/* 21074 80020474 AC580000 */  sw         $t8, 0x0($v0)
/* 21078 80020478 8E020000 */  lw         $v0, 0x0($s0)
/* 2107C 8002047C 3C0CE600 */  lui        $t4, (0xE6000000 >> 16)
/* 21080 80020480 3C0EF000 */  lui        $t6, (0xF0000000 >> 16)
/* 21084 80020484 244B0008 */  addiu      $t3, $v0, 0x8
/* 21088 80020488 AE0B0000 */  sw         $t3, 0x0($s0)
/* 2108C 8002048C AC400004 */  sw         $zero, 0x4($v0)
/* 21090 80020490 AC4C0000 */  sw         $t4, 0x0($v0)
/* 21094 80020494 8E020000 */  lw         $v0, 0x0($s0)
/* 21098 80020498 3C0F073F */  lui        $t7, (0x73FC000 >> 16)
/* 2109C 8002049C 35EFC000 */  ori        $t7, $t7, (0x73FC000 & 0xFFFF)
/* 210A0 800204A0 244D0008 */  addiu      $t5, $v0, 0x8
/* 210A4 800204A4 AE0D0000 */  sw         $t5, 0x0($s0)
/* 210A8 800204A8 AC4F0004 */  sw         $t7, 0x4($v0)
/* 210AC 800204AC AC4E0000 */  sw         $t6, 0x0($v0)
/* 210B0 800204B0 8E020000 */  lw         $v0, 0x0($s0)
/* 210B4 800204B4 24580008 */  addiu      $t8, $v0, 0x8
/* 210B8 800204B8 AE180000 */  sw         $t8, 0x0($s0)
/* 210BC 800204BC AC400004 */  sw         $zero, 0x4($v0)
/* 210C0 800204C0 AC4A0000 */  sw         $t2, 0x0($v0)
/* 210C4 800204C4 8E390000 */  lw         $t9, 0x0($s1)
/* 210C8 800204C8 3C04803A */  lui        $a0, %hi(D_803A6F60)
/* 210CC 800204CC 24846F60 */  addiu      $a0, $a0, %lo(D_803A6F60)
/* 210D0 800204D0 972B0090 */  lhu        $t3, 0x90($t9)
/* 210D4 800204D4 00002825 */  or         $a1, $zero, $zero
/* 210D8 800204D8 00003025 */  or         $a2, $zero, $zero
/* 210DC 800204DC 316C0080 */  andi       $t4, $t3, 0x80
/* 210E0 800204E0 11800043 */  beqz       $t4, .L800205F0
/* 210E4 800204E4 2407006E */   addiu     $a3, $zero, 0x6E
/* 210E8 800204E8 3C04803A */  lui        $a0, %hi(D_803A6F60)
/* 210EC 800204EC 240D0010 */  addiu      $t5, $zero, 0x10
/* 210F0 800204F0 240E0064 */  addiu      $t6, $zero, 0x64
/* 210F4 800204F4 240F001C */  addiu      $t7, $zero, 0x1C
/* 210F8 800204F8 24180400 */  addiu      $t8, $zero, 0x400
/* 210FC 800204FC 24190400 */  addiu      $t9, $zero, 0x400
/* 21100 80020500 AFB90020 */  sw         $t9, 0x20($sp)
/* 21104 80020504 AFB8001C */  sw         $t8, 0x1C($sp)
/* 21108 80020508 AFAF0018 */  sw         $t7, 0x18($sp)
/* 2110C 8002050C AFAE0014 */  sw         $t6, 0x14($sp)
/* 21110 80020510 AFAD0010 */  sw         $t5, 0x10($sp)
/* 21114 80020514 24846F60 */  addiu      $a0, $a0, %lo(D_803A6F60)
/* 21118 80020518 00002825 */  or         $a1, $zero, $zero
/* 2111C 8002051C 00003025 */  or         $a2, $zero, $zero
/* 21120 80020520 0C00843F */  jal        func_800210FC
/* 21124 80020524 2407006E */   addiu     $a3, $zero, 0x6E
/* 21128 80020528 3C04803A */  lui        $a0, %hi(D_803A6F60)
/* 2112C 8002052C 240B0010 */  addiu      $t3, $zero, 0x10
/* 21130 80020530 240C0064 */  addiu      $t4, $zero, 0x64
/* 21134 80020534 240D002C */  addiu      $t5, $zero, 0x2C
/* 21138 80020538 240E0400 */  addiu      $t6, $zero, 0x400
/* 2113C 8002053C 240F0400 */  addiu      $t7, $zero, 0x400
/* 21140 80020540 AFAF0020 */  sw         $t7, 0x20($sp)
/* 21144 80020544 AFAE001C */  sw         $t6, 0x1C($sp)
/* 21148 80020548 AFAD0018 */  sw         $t5, 0x18($sp)
/* 2114C 8002054C AFAC0014 */  sw         $t4, 0x14($sp)
/* 21150 80020550 AFAB0010 */  sw         $t3, 0x10($sp)
/* 21154 80020554 24846F60 */  addiu      $a0, $a0, %lo(D_803A6F60)
/* 21158 80020558 00002825 */  or         $a1, $zero, $zero
/* 2115C 8002055C 24060010 */  addiu      $a2, $zero, 0x10
/* 21160 80020560 0C00843F */  jal        func_800210FC
/* 21164 80020564 2407006E */   addiu     $a3, $zero, 0x6E
/* 21168 80020568 3C04803A */  lui        $a0, %hi(D_803A6F60)
/* 2116C 8002056C 24180010 */  addiu      $t8, $zero, 0x10
/* 21170 80020570 24190064 */  addiu      $t9, $zero, 0x64
/* 21174 80020574 240B003C */  addiu      $t3, $zero, 0x3C
/* 21178 80020578 240C0400 */  addiu      $t4, $zero, 0x400
/* 2117C 8002057C 240D0400 */  addiu      $t5, $zero, 0x400
/* 21180 80020580 AFAD0020 */  sw         $t5, 0x20($sp)
/* 21184 80020584 AFAC001C */  sw         $t4, 0x1C($sp)
/* 21188 80020588 AFAB0018 */  sw         $t3, 0x18($sp)
/* 2118C 8002058C AFB90014 */  sw         $t9, 0x14($sp)
/* 21190 80020590 AFB80010 */  sw         $t8, 0x10($sp)
/* 21194 80020594 24846F60 */  addiu      $a0, $a0, %lo(D_803A6F60)
/* 21198 80020598 00002825 */  or         $a1, $zero, $zero
/* 2119C 8002059C 24060020 */  addiu      $a2, $zero, 0x20
/* 211A0 800205A0 0C00843F */  jal        func_800210FC
/* 211A4 800205A4 2407006E */   addiu     $a3, $zero, 0x6E
/* 211A8 800205A8 3C04803A */  lui        $a0, %hi(D_803A6F60)
/* 211AC 800205AC 240E0004 */  addiu      $t6, $zero, 0x4
/* 211B0 800205B0 240F0064 */  addiu      $t7, $zero, 0x64
/* 211B4 800205B4 2418004C */  addiu      $t8, $zero, 0x4C
/* 211B8 800205B8 24190400 */  addiu      $t9, $zero, 0x400
/* 211BC 800205BC 240B0400 */  addiu      $t3, $zero, 0x400
/* 211C0 800205C0 AFAB0020 */  sw         $t3, 0x20($sp)
/* 211C4 800205C4 AFB9001C */  sw         $t9, 0x1C($sp)
/* 211C8 800205C8 AFB80018 */  sw         $t8, 0x18($sp)
/* 211CC 800205CC AFAF0014 */  sw         $t7, 0x14($sp)
/* 211D0 800205D0 AFAE0010 */  sw         $t6, 0x10($sp)
/* 211D4 800205D4 24846F60 */  addiu      $a0, $a0, %lo(D_803A6F60)
/* 211D8 800205D8 00002825 */  or         $a1, $zero, $zero
/* 211DC 800205DC 24060030 */  addiu      $a2, $zero, 0x30
/* 211E0 800205E0 0C00843F */  jal        func_800210FC
/* 211E4 800205E4 2407006E */   addiu     $a3, $zero, 0x6E
/* 211E8 800205E8 1000002D */  b          .L800206A0
/* 211EC 800205EC 8E2E0000 */   lw        $t6, 0x0($s1)
.L800205F0:
/* 211F0 800205F0 240C0010 */  addiu      $t4, $zero, 0x10
/* 211F4 800205F4 240D0064 */  addiu      $t5, $zero, 0x64
/* 211F8 800205F8 240E001C */  addiu      $t6, $zero, 0x1C
/* 211FC 800205FC 240F0400 */  addiu      $t7, $zero, 0x400
/* 21200 80020600 24180400 */  addiu      $t8, $zero, 0x400
/* 21204 80020604 AFB80020 */  sw         $t8, 0x20($sp)
/* 21208 80020608 AFAF001C */  sw         $t7, 0x1C($sp)
/* 2120C 8002060C AFAE0018 */  sw         $t6, 0x18($sp)
/* 21210 80020610 AFAD0014 */  sw         $t5, 0x14($sp)
/* 21214 80020614 0C00843F */  jal        func_800210FC
/* 21218 80020618 AFAC0010 */   sw        $t4, 0x10($sp)
/* 2121C 8002061C 3C04803A */  lui        $a0, %hi(D_803A6F60)
/* 21220 80020620 2419000A */  addiu      $t9, $zero, 0xA
/* 21224 80020624 240B0064 */  addiu      $t3, $zero, 0x64
/* 21228 80020628 240C002C */  addiu      $t4, $zero, 0x2C
/* 2122C 8002062C 240D0400 */  addiu      $t5, $zero, 0x400
/* 21230 80020630 240E0400 */  addiu      $t6, $zero, 0x400
/* 21234 80020634 AFAE0020 */  sw         $t6, 0x20($sp)
/* 21238 80020638 AFAD001C */  sw         $t5, 0x1C($sp)
/* 2123C 8002063C AFAC0018 */  sw         $t4, 0x18($sp)
/* 21240 80020640 AFAB0014 */  sw         $t3, 0x14($sp)
/* 21244 80020644 AFB90010 */  sw         $t9, 0x10($sp)
/* 21248 80020648 24846F60 */  addiu      $a0, $a0, %lo(D_803A6F60)
/* 2124C 8002064C 00002825 */  or         $a1, $zero, $zero
/* 21250 80020650 24060010 */  addiu      $a2, $zero, 0x10
/* 21254 80020654 0C00843F */  jal        func_800210FC
/* 21258 80020658 2407006E */   addiu     $a3, $zero, 0x6E
/* 2125C 8002065C 3C04803A */  lui        $a0, %hi(D_803A6F60)
/* 21260 80020660 240F0002 */  addiu      $t7, $zero, 0x2
/* 21264 80020664 24180064 */  addiu      $t8, $zero, 0x64
/* 21268 80020668 2419004E */  addiu      $t9, $zero, 0x4E
/* 2126C 8002066C 240B0400 */  addiu      $t3, $zero, 0x400
/* 21270 80020670 240C0400 */  addiu      $t4, $zero, 0x400
/* 21274 80020674 AFAC0020 */  sw         $t4, 0x20($sp)
/* 21278 80020678 AFAB001C */  sw         $t3, 0x1C($sp)
/* 2127C 8002067C AFB90018 */  sw         $t9, 0x18($sp)
/* 21280 80020680 AFB80014 */  sw         $t8, 0x14($sp)
/* 21284 80020684 AFAF0010 */  sw         $t7, 0x10($sp)
/* 21288 80020688 24846F60 */  addiu      $a0, $a0, %lo(D_803A6F60)
/* 2128C 8002068C 00002825 */  or         $a1, $zero, $zero
/* 21290 80020690 2406001A */  addiu      $a2, $zero, 0x1A
/* 21294 80020694 0C00843F */  jal        func_800210FC
/* 21298 80020698 2407006E */   addiu     $a3, $zero, 0x6E
/* 2129C 8002069C 8E2E0000 */  lw         $t6, 0x0($s1)
.L800206A0:
/* 212A0 800206A0 3C0D8008 */  lui        $t5, %hi(D_8007D0AC)
/* 212A4 800206A4 8DADD0AC */  lw         $t5, %lo(D_8007D0AC)($t5)
/* 212A8 800206A8 8DCF0020 */  lw         $t7, 0x20($t6)
/* 212AC 800206AC 24040004 */  addiu      $a0, $zero, 0x4
/* 212B0 800206B0 24050011 */  addiu      $a1, $zero, 0x11
/* 212B4 800206B4 85F80002 */  lh         $t8, 0x2($t7)
/* 212B8 800206B8 00003025 */  or         $a2, $zero, $zero
/* 212BC 800206BC 0018C880 */  sll        $t9, $t8, 2
/* 212C0 800206C0 01B95821 */  addu       $t3, $t5, $t9
/* 212C4 800206C4 0C0082D3 */  jal        func_80020B4C
/* 212C8 800206C8 8D670000 */   lw        $a3, 0x0($t3)
/* 212CC 800206CC 3C04803A */  lui        $a0, %hi(D_803A6F40)
/* 212D0 800206D0 240C000A */  addiu      $t4, $zero, 0xA
/* 212D4 800206D4 AFAC0010 */  sw         $t4, 0x10($sp)
/* 212D8 800206D8 24846F40 */  addiu      $a0, $a0, %lo(D_803A6F40)
/* 212DC 800206DC 24050020 */  addiu      $a1, $zero, 0x20
/* 212E0 800206E0 2406001D */  addiu      $a2, $zero, 0x1D
/* 212E4 800206E4 0C00838B */  jal        func_80020E2C
/* 212E8 800206E8 24070080 */   addiu     $a3, $zero, 0x80
/* 212EC 800206EC 8E020000 */  lw         $v0, 0x0($s0)
/* 212F0 800206F0 3C18803A */  lui        $t8, %hi(D_80399AB0)
/* 212F4 800206F4 27189AB0 */  addiu      $t8, $t8, %lo(D_80399AB0)
/* 212F8 800206F8 244E0008 */  addiu      $t6, $v0, 0x8
/* 212FC 800206FC AE0E0000 */  sw         $t6, 0x0($s0)
/* 21300 80020700 3C0FFD10 */  lui        $t7, (0xFD100000 >> 16)
/* 21304 80020704 AC4F0000 */  sw         $t7, 0x0($v0)
/* 21308 80020708 AC580004 */  sw         $t8, 0x4($v0)
/* 2130C 8002070C 8E020000 */  lw         $v0, 0x0($s0)
/* 21310 80020710 3C19E800 */  lui        $t9, (0xE8000000 >> 16)
/* 21314 80020714 3C0CF500 */  lui        $t4, (0xF5000100 >> 16)
/* 21318 80020718 244D0008 */  addiu      $t5, $v0, 0x8
/* 2131C 8002071C AE0D0000 */  sw         $t5, 0x0($s0)
/* 21320 80020720 AC400004 */  sw         $zero, 0x4($v0)
/* 21324 80020724 AC590000 */  sw         $t9, 0x0($v0)
/* 21328 80020728 8E020000 */  lw         $v0, 0x0($s0)
/* 2132C 8002072C 358C0100 */  ori        $t4, $t4, (0xF5000100 & 0xFFFF)
/* 21330 80020730 3C0E0700 */  lui        $t6, (0x7000000 >> 16)
/* 21334 80020734 244B0008 */  addiu      $t3, $v0, 0x8
/* 21338 80020738 AE0B0000 */  sw         $t3, 0x0($s0)
/* 2133C 8002073C AC4E0004 */  sw         $t6, 0x4($v0)
/* 21340 80020740 AC4C0000 */  sw         $t4, 0x0($v0)
/* 21344 80020744 8E020000 */  lw         $v0, 0x0($s0)
/* 21348 80020748 3C18E600 */  lui        $t8, (0xE6000000 >> 16)
/* 2134C 8002074C 3C19F000 */  lui        $t9, (0xF0000000 >> 16)
/* 21350 80020750 244F0008 */  addiu      $t7, $v0, 0x8
/* 21354 80020754 AE0F0000 */  sw         $t7, 0x0($s0)
/* 21358 80020758 AC400004 */  sw         $zero, 0x4($v0)
/* 2135C 8002075C AC580000 */  sw         $t8, 0x0($v0)
/* 21360 80020760 8E020000 */  lw         $v0, 0x0($s0)
/* 21364 80020764 3C0B073F */  lui        $t3, (0x73FC000 >> 16)
/* 21368 80020768 356BC000 */  ori        $t3, $t3, (0x73FC000 & 0xFFFF)
/* 2136C 8002076C 244D0008 */  addiu      $t5, $v0, 0x8
/* 21370 80020770 AE0D0000 */  sw         $t5, 0x0($s0)
/* 21374 80020774 AC4B0004 */  sw         $t3, 0x4($v0)
/* 21378 80020778 AC590000 */  sw         $t9, 0x0($v0)
/* 2137C 8002077C 8E020000 */  lw         $v0, 0x0($s0)
/* 21380 80020780 3C0EE700 */  lui        $t6, (0xE7000000 >> 16)
/* 21384 80020784 24040003 */  addiu      $a0, $zero, 0x3
/* 21388 80020788 244C0008 */  addiu      $t4, $v0, 0x8
/* 2138C 8002078C AE0C0000 */  sw         $t4, 0x0($s0)
/* 21390 80020790 AC400004 */  sw         $zero, 0x4($v0)
/* 21394 80020794 AC4E0000 */  sw         $t6, 0x0($v0)
/* 21398 80020798 8E290000 */  lw         $t1, 0x0($s1)
/* 2139C 8002079C 24050010 */  addiu      $a1, $zero, 0x10
/* 213A0 800207A0 952F0090 */  lhu        $t7, 0x90($t1)
/* 213A4 800207A4 31F80080 */  andi       $t8, $t7, 0x80
/* 213A8 800207A8 53000033 */  beql       $t8, $zero, .L80020878
/* 213AC 800207AC 8FBF0034 */   lw        $ra, 0x34($sp)
/* 213B0 800207B0 8D2D0020 */  lw         $t5, 0x20($t1)
/* 213B4 800207B4 2406001C */  addiu      $a2, $zero, 0x1C
/* 213B8 800207B8 0C008353 */  jal        func_80020D4C
/* 213BC 800207BC 95A70006 */   lhu       $a3, 0x6($t5)
/* 213C0 800207C0 8E390000 */  lw         $t9, 0x0($s1)
/* 213C4 800207C4 24040003 */  addiu      $a0, $zero, 0x3
/* 213C8 800207C8 24050010 */  addiu      $a1, $zero, 0x10
/* 213CC 800207CC 8F2B0020 */  lw         $t3, 0x20($t9)
/* 213D0 800207D0 24060026 */  addiu      $a2, $zero, 0x26
/* 213D4 800207D4 0C008353 */  jal        func_80020D4C
/* 213D8 800207D8 9567000E */   lhu       $a3, 0xE($t3)
/* 213DC 800207DC 8E2C0000 */  lw         $t4, 0x0($s1)
/* 213E0 800207E0 24040003 */  addiu      $a0, $zero, 0x3
/* 213E4 800207E4 24050046 */  addiu      $a1, $zero, 0x46
/* 213E8 800207E8 8D8E0020 */  lw         $t6, 0x20($t4)
/* 213EC 800207EC 2406001C */  addiu      $a2, $zero, 0x1C
/* 213F0 800207F0 0C008353 */  jal        func_80020D4C
/* 213F4 800207F4 95C7002A */   lhu       $a3, 0x2A($t6)
/* 213F8 800207F8 8E2F0000 */  lw         $t7, 0x0($s1)
/* 213FC 800207FC 24040003 */  addiu      $a0, $zero, 0x3
/* 21400 80020800 24050046 */  addiu      $a1, $zero, 0x46
/* 21404 80020804 8DF80020 */  lw         $t8, 0x20($t7)
/* 21408 80020808 24060026 */  addiu      $a2, $zero, 0x26
/* 2140C 8002080C 0C008353 */  jal        func_80020D4C
/* 21410 80020810 9707000C */   lhu       $a3, 0xC($t8)
/* 21414 80020814 8E2D0000 */  lw         $t5, 0x0($s1)
/* 21418 80020818 24010004 */  addiu      $at, $zero, 0x4
/* 2141C 8002081C 3C04803A */  lui        $a0, %hi(D_803A6F40)
/* 21420 80020820 8DB90020 */  lw         $t9, 0x20($t5)
/* 21424 80020824 24846F40 */  addiu      $a0, $a0, %lo(D_803A6F40)
/* 21428 80020828 2405005B */  addiu      $a1, $zero, 0x5B
/* 2142C 8002082C 97220026 */  lhu        $v0, 0x26($t9)
/* 21430 80020830 24060003 */  addiu      $a2, $zero, 0x3
/* 21434 80020834 2407000C */  addiu      $a3, $zero, 0xC
/* 21438 80020838 1041000E */  beq        $v0, $at, .L80020874
/* 2143C 8002083C 240B000C */   addiu     $t3, $zero, 0xC
/* 21440 80020840 00026080 */  sll        $t4, $v0, 2
/* 21444 80020844 01826023 */  subu       $t4, $t4, $v0
/* 21448 80020848 000C6080 */  sll        $t4, $t4, 2
/* 2144C 8002084C 258E0020 */  addiu      $t6, $t4, 0x20
/* 21450 80020850 240F0010 */  addiu      $t7, $zero, 0x10
/* 21454 80020854 24180400 */  addiu      $t8, $zero, 0x400
/* 21458 80020858 240D0400 */  addiu      $t5, $zero, 0x400
/* 2145C 8002085C AFAD0020 */  sw         $t5, 0x20($sp)
/* 21460 80020860 AFB8001C */  sw         $t8, 0x1C($sp)
/* 21464 80020864 AFAF0018 */  sw         $t7, 0x18($sp)
/* 21468 80020868 AFAE0014 */  sw         $t6, 0x14($sp)
/* 2146C 8002086C 0C00843F */  jal        func_800210FC
/* 21470 80020870 AFAB0010 */   sw        $t3, 0x10($sp)
.L80020874:
/* 21474 80020874 8FBF0034 */  lw         $ra, 0x34($sp)
.L80020878:
/* 21478 80020878 8FB0002C */  lw         $s0, 0x2C($sp)
/* 2147C 8002087C 8FB10030 */  lw         $s1, 0x30($sp)
/* 21480 80020880 03E00008 */  jr         $ra
/* 21484 80020884 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_80020888
/* 21488 80020888 3C028009 */  lui        $v0, %hi(D_8008C668)
/* 2148C 8002088C 2442C668 */  addiu      $v0, $v0, %lo(D_8008C668)
/* 21490 80020890 24030008 */  addiu      $v1, $zero, 0x8
.L80020894:
/* 21494 80020894 2463FFFC */  addiu      $v1, $v1, -0x4
/* 21498 80020898 A4400000 */  sh         $zero, 0x0($v0)
/* 2149C 8002089C A440001C */  sh         $zero, 0x1C($v0)
/* 214A0 800208A0 A4400038 */  sh         $zero, 0x38($v0)
/* 214A4 800208A4 A4400054 */  sh         $zero, 0x54($v0)
/* 214A8 800208A8 1460FFFA */  bnez       $v1, .L80020894
/* 214AC 800208AC 24420070 */   addiu     $v0, $v0, 0x70
/* 214B0 800208B0 03E00008 */  jr         $ra
/* 214B4 800208B4 00000000 */   nop

glabel func_800208B8
/* 214B8 800208B8 3C0E8009 */  lui        $t6, %hi(D_8008C668)
/* 214BC 800208BC 95CEC668 */  lhu        $t6, %lo(D_8008C668)($t6)
/* 214C0 800208C0 3C028009 */  lui        $v0, %hi(D_8008C668)
/* 214C4 800208C4 2442C668 */  addiu      $v0, $v0, %lo(D_8008C668)
/* 214C8 800208C8 11C00007 */  beqz       $t6, .L800208E8
/* 214CC 800208CC 24030007 */   addiu     $v1, $zero, 0x7
/* 214D0 800208D0 2463FFFF */  addiu      $v1, $v1, -0x1
.L800208D4:
/* 214D4 800208D4 10600004 */  beqz       $v1, .L800208E8
/* 214D8 800208D8 2442001C */   addiu     $v0, $v0, 0x1C
/* 214DC 800208DC 944F0000 */  lhu        $t7, 0x0($v0)
/* 214E0 800208E0 55E0FFFC */  bnel       $t7, $zero, .L800208D4
/* 214E4 800208E4 2463FFFF */   addiu     $v1, $v1, -0x1
.L800208E8:
/* 214E8 800208E8 44800000 */  mtc1       $zero, $f0
/* 214EC 800208EC 2418002D */  addiu      $t8, $zero, 0x2D
/* 214F0 800208F0 A4580000 */  sh         $t8, 0x0($v0)
/* 214F4 800208F4 AC440004 */  sw         $a0, 0x4($v0)
/* 214F8 800208F8 E4400010 */  swc1       $f0, 0x10($v0)
/* 214FC 800208FC E4400008 */  swc1       $f0, 0x8($v0)
/* 21500 80020900 8C830064 */  lw         $v1, 0x64($a0)
/* 21504 80020904 24010001 */  addiu      $at, $zero, 0x1
/* 21508 80020908 24080023 */  addiu      $t0, $zero, 0x23
/* 2150C 8002090C 94650000 */  lhu        $a1, 0x0($v1)
/* 21510 80020910 24090031 */  addiu      $t1, $zero, 0x31
/* 21514 80020914 240A0029 */  addiu      $t2, $zero, 0x29
/* 21518 80020918 14A00006 */  bnez       $a1, .L80020934
/* 2151C 8002091C 240B000E */   addiu     $t3, $zero, 0xE
/* 21520 80020920 C464001C */  lwc1       $f4, 0x1C($v1)
/* 21524 80020924 C4860024 */  lwc1       $f6, 0x24($a0)
/* 21528 80020928 46062202 */  mul.s      $f8, $f4, $f6
/* 2152C 8002092C 10000010 */  b          .L80020970
/* 21530 80020930 E448000C */   swc1      $f8, 0xC($v0)
.L80020934:
/* 21534 80020934 54A10008 */  bnel       $a1, $at, .L80020958
/* 21538 80020938 C4840024 */   lwc1      $f4, 0x24($a0)
/* 2153C 8002093C 8C990068 */  lw         $t9, 0x68($a0)
/* 21540 80020940 C4900004 */  lwc1       $f16, 0x4($a0)
/* 21544 80020944 C72A0094 */  lwc1       $f10, 0x94($t9)
/* 21548 80020948 46105481 */  sub.s      $f18, $f10, $f16
/* 2154C 8002094C 10000008 */  b          .L80020970
/* 21550 80020950 E452000C */   swc1      $f18, 0xC($v0)
/* 21554 80020954 C4840024 */  lwc1       $f4, 0x24($a0)
.L80020958:
/* 21558 80020958 3C018007 */  lui        $at, %hi(D_800716C8)
/* 2155C 8002095C D42816C8 */  ldc1       $f8, %lo(D_800716C8)($at)
/* 21560 80020960 460021A1 */  cvt.d.s    $f6, $f4
/* 21564 80020964 46283282 */  mul.d      $f10, $f6, $f8
/* 21568 80020968 46205420 */  cvt.s.d    $f16, $f10
/* 2156C 8002096C E450000C */  swc1       $f16, 0xC($v0)
.L80020970:
/* 21570 80020970 A4480014 */  sh         $t0, 0x14($v0)
/* 21574 80020974 A4490016 */  sh         $t1, 0x16($v0)
/* 21578 80020978 A44A0018 */  sh         $t2, 0x18($v0)
/* 2157C 8002097C A44B001A */  sh         $t3, 0x1A($v0)
/* 21580 80020980 03E00008 */  jr         $ra
/* 21584 80020984 00000000 */   nop

glabel func_80020988
/* 21588 80020988 27BDFF78 */  addiu      $sp, $sp, -0x88
/* 2158C 8002098C 3C038008 */  lui        $v1, %hi(gMasterGfxPos)
/* 21590 80020990 2463B2FC */  addiu      $v1, $v1, %lo(gMasterGfxPos)
/* 21594 80020994 AFBF0044 */  sw         $ra, 0x44($sp)
/* 21598 80020998 AFB40040 */  sw         $s4, 0x40($sp)
/* 2159C 8002099C AFB3003C */  sw         $s3, 0x3C($sp)
/* 215A0 800209A0 AFB20038 */  sw         $s2, 0x38($sp)
/* 215A4 800209A4 AFB10034 */  sw         $s1, 0x34($sp)
/* 215A8 800209A8 AFB00030 */  sw         $s0, 0x30($sp)
/* 215AC 800209AC 3C0BE700 */  lui        $t3, (0xE7000000 >> 16)
/* 215B0 800209B0 8C620000 */  lw         $v0, 0x0($v1)
/* 215B4 800209B4 3C18FD10 */  lui        $t8, (0xFD100000 >> 16)
/* 215B8 800209B8 3C108009 */  lui        $s0, %hi(D_8008C668)
/* 215BC 800209BC 244E0008 */  addiu      $t6, $v0, 0x8
/* 215C0 800209C0 AC6E0000 */  sw         $t6, 0x0($v1)
/* 215C4 800209C4 AC400004 */  sw         $zero, 0x4($v0)
/* 215C8 800209C8 AC4B0000 */  sw         $t3, 0x0($v0)
/* 215CC 800209CC 8C620000 */  lw         $v0, 0x0($v1)
/* 215D0 800209D0 3C19803A */  lui        $t9, %hi(D_803A2960)
/* 215D4 800209D4 27392960 */  addiu      $t9, $t9, %lo(D_803A2960)
/* 215D8 800209D8 244F0008 */  addiu      $t7, $v0, 0x8
/* 215DC 800209DC AC6F0000 */  sw         $t7, 0x0($v1)
/* 215E0 800209E0 AC590004 */  sw         $t9, 0x4($v0)
/* 215E4 800209E4 AC580000 */  sw         $t8, 0x0($v0)
/* 215E8 800209E8 8C620000 */  lw         $v0, 0x0($v1)
/* 215EC 800209EC 3C0DE800 */  lui        $t5, (0xE8000000 >> 16)
/* 215F0 800209F0 3C0FF500 */  lui        $t7, (0xF5000100 >> 16)
/* 215F4 800209F4 244C0008 */  addiu      $t4, $v0, 0x8
/* 215F8 800209F8 AC6C0000 */  sw         $t4, 0x0($v1)
/* 215FC 800209FC AC400004 */  sw         $zero, 0x4($v0)
/* 21600 80020A00 AC4D0000 */  sw         $t5, 0x0($v0)
/* 21604 80020A04 8C620000 */  lw         $v0, 0x0($v1)
/* 21608 80020A08 35EF0100 */  ori        $t7, $t7, (0xF5000100 & 0xFFFF)
/* 2160C 80020A0C 3C180700 */  lui        $t8, (0x7000000 >> 16)
/* 21610 80020A10 244E0008 */  addiu      $t6, $v0, 0x8
/* 21614 80020A14 AC6E0000 */  sw         $t6, 0x0($v1)
/* 21618 80020A18 AC580004 */  sw         $t8, 0x4($v0)
/* 2161C 80020A1C AC4F0000 */  sw         $t7, 0x0($v0)
/* 21620 80020A20 8C620000 */  lw         $v0, 0x0($v1)
/* 21624 80020A24 3C0CE600 */  lui        $t4, (0xE6000000 >> 16)
/* 21628 80020A28 3C0EF000 */  lui        $t6, (0xF0000000 >> 16)
/* 2162C 80020A2C 24590008 */  addiu      $t9, $v0, 0x8
/* 21630 80020A30 AC790000 */  sw         $t9, 0x0($v1)
/* 21634 80020A34 AC400004 */  sw         $zero, 0x4($v0)
/* 21638 80020A38 AC4C0000 */  sw         $t4, 0x0($v0)
/* 2163C 80020A3C 8C620000 */  lw         $v0, 0x0($v1)
/* 21640 80020A40 3C0F073F */  lui        $t7, (0x73FC000 >> 16)
/* 21644 80020A44 35EFC000 */  ori        $t7, $t7, (0x73FC000 & 0xFFFF)
/* 21648 80020A48 244D0008 */  addiu      $t5, $v0, 0x8
/* 2164C 80020A4C AC6D0000 */  sw         $t5, 0x0($v1)
/* 21650 80020A50 AC4F0004 */  sw         $t7, 0x4($v0)
/* 21654 80020A54 AC4E0000 */  sw         $t6, 0x0($v0)
/* 21658 80020A58 8C620000 */  lw         $v0, 0x0($v1)
/* 2165C 80020A5C 2610C668 */  addiu      $s0, $s0, %lo(D_8008C668)
/* 21660 80020A60 24110008 */  addiu      $s1, $zero, 0x8
/* 21664 80020A64 24580008 */  addiu      $t8, $v0, 0x8
/* 21668 80020A68 AC780000 */  sw         $t8, 0x0($v1)
/* 2166C 80020A6C AC400004 */  sw         $zero, 0x4($v0)
/* 21670 80020A70 AC4B0000 */  sw         $t3, 0x0($v0)
/* 21674 80020A74 3C14803A */  lui        $s4, %hi(D_803A6F70)
/* 21678 80020A78 26946F70 */  addiu      $s4, $s4, %lo(D_803A6F70)
/* 2167C 80020A7C 27B30070 */  addiu      $s3, $sp, 0x70
/* 21680 80020A80 27B20074 */  addiu      $s2, $sp, 0x74
.L80020A84:
/* 21684 80020A84 96190000 */  lhu        $t9, 0x0($s0)
/* 21688 80020A88 02403825 */  or         $a3, $s2, $zero
/* 2168C 80020A8C 53200025 */  beql       $t9, $zero, .L80020B24
/* 21690 80020A90 2631FFFF */   addiu     $s1, $s1, -0x1
/* 21694 80020A94 8E020004 */  lw         $v0, 0x4($s0)
/* 21698 80020A98 C60C0008 */  lwc1       $f12, 0x8($s0)
/* 2169C 80020A9C C60E000C */  lwc1       $f14, 0xC($s0)
/* 216A0 80020AA0 10400007 */  beqz       $v0, .L80020AC0
/* 216A4 80020AA4 C6000010 */   lwc1      $f0, 0x10($s0)
/* 216A8 80020AA8 C4440000 */  lwc1       $f4, 0x0($v0)
/* 216AC 80020AAC C4460004 */  lwc1       $f6, 0x4($v0)
/* 216B0 80020AB0 C4480008 */  lwc1       $f8, 0x8($v0)
/* 216B4 80020AB4 46046300 */  add.s      $f12, $f12, $f4
/* 216B8 80020AB8 46067380 */  add.s      $f14, $f14, $f6
/* 216BC 80020ABC 46080000 */  add.s      $f0, $f0, $f8
.L80020AC0:
/* 216C0 80020AC0 44060000 */  mfc1       $a2, $f0
/* 216C4 80020AC4 0C00904F */  jal        func_8002413C
/* 216C8 80020AC8 AFB30010 */   sw        $s3, 0x10($sp)
/* 216CC 80020ACC 9602001A */  lhu        $v0, 0x1A($s0)
/* 216D0 80020AD0 96070018 */  lhu        $a3, 0x18($s0)
/* 216D4 80020AD4 8FAC0074 */  lw         $t4, 0x74($sp)
/* 216D8 80020AD8 AFA20010 */  sw         $v0, 0x10($sp)
/* 216DC 80020ADC 960F0014 */  lhu        $t7, 0x14($s0)
/* 216E0 80020AE0 00076843 */  sra        $t5, $a3, 1
/* 216E4 80020AE4 8FAE0070 */  lw         $t6, 0x70($sp)
/* 216E8 80020AE8 AFAF0014 */  sw         $t7, 0x14($sp)
/* 216EC 80020AEC 96180016 */  lhu        $t8, 0x16($s0)
/* 216F0 80020AF0 018D2823 */  subu       $a1, $t4, $t5
/* 216F4 80020AF4 240C0400 */  addiu      $t4, $zero, 0x400
/* 216F8 80020AF8 24190400 */  addiu      $t9, $zero, 0x400
/* 216FC 80020AFC AFB9001C */  sw         $t9, 0x1C($sp)
/* 21700 80020B00 AFAC0020 */  sw         $t4, 0x20($sp)
/* 21704 80020B04 02802025 */  or         $a0, $s4, $zero
/* 21708 80020B08 01C23023 */  subu       $a2, $t6, $v0
/* 2170C 80020B0C 0C00843F */  jal        func_800210FC
/* 21710 80020B10 AFB80018 */   sw        $t8, 0x18($sp)
/* 21714 80020B14 960D0000 */  lhu        $t5, 0x0($s0)
/* 21718 80020B18 25AEFFFF */  addiu      $t6, $t5, -0x1
/* 2171C 80020B1C A60E0000 */  sh         $t6, 0x0($s0)
/* 21720 80020B20 2631FFFF */  addiu      $s1, $s1, -0x1
.L80020B24:
/* 21724 80020B24 1620FFD7 */  bnez       $s1, .L80020A84
/* 21728 80020B28 2610001C */   addiu     $s0, $s0, 0x1C
/* 2172C 80020B2C 8FBF0044 */  lw         $ra, 0x44($sp)
/* 21730 80020B30 8FB00030 */  lw         $s0, 0x30($sp)
/* 21734 80020B34 8FB10034 */  lw         $s1, 0x34($sp)
/* 21738 80020B38 8FB20038 */  lw         $s2, 0x38($sp)
/* 2173C 80020B3C 8FB3003C */  lw         $s3, 0x3C($sp)
/* 21740 80020B40 8FB40040 */  lw         $s4, 0x40($sp)
/* 21744 80020B44 03E00008 */  jr         $ra
/* 21748 80020B48 27BD0088 */   addiu     $sp, $sp, 0x88

glabel func_80020B4C
/* 2174C 80020B4C 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 21750 80020B50 AFB40040 */  sw         $s4, 0x40($sp)
/* 21754 80020B54 AFB3003C */  sw         $s3, 0x3C($sp)
/* 21758 80020B58 AFB20038 */  sw         $s2, 0x38($sp)
/* 2175C 80020B5C AFB10034 */  sw         $s1, 0x34($sp)
/* 21760 80020B60 3C088008 */  lui        $t0, %hi(gMasterGfxPos)
/* 21764 80020B64 2508B2FC */  addiu      $t0, $t0, %lo(gMasterGfxPos)
/* 21768 80020B68 00E08825 */  or         $s1, $a3, $zero
/* 2176C 80020B6C 00809025 */  or         $s2, $a0, $zero
/* 21770 80020B70 00A09825 */  or         $s3, $a1, $zero
/* 21774 80020B74 3C14E700 */  lui        $s4, (0xE7000000 >> 16)
/* 21778 80020B78 AFBF004C */  sw         $ra, 0x4C($sp)
/* 2177C 80020B7C AFB60048 */  sw         $s6, 0x48($sp)
/* 21780 80020B80 AFB50044 */  sw         $s5, 0x44($sp)
/* 21784 80020B84 AFB00030 */  sw         $s0, 0x30($sp)
/* 21788 80020B88 8D020000 */  lw         $v0, 0x0($t0)
/* 2178C 80020B8C 3C18FD10 */  lui        $t8, (0xFD100000 >> 16)
/* 21790 80020B90 0006C880 */  sll        $t9, $a2, 2
/* 21794 80020B94 244E0008 */  addiu      $t6, $v0, 0x8
/* 21798 80020B98 AD0E0000 */  sw         $t6, 0x0($t0)
/* 2179C 80020B9C AC400004 */  sw         $zero, 0x4($v0)
/* 217A0 80020BA0 AC540000 */  sw         $s4, 0x0($v0)
/* 217A4 80020BA4 8D020000 */  lw         $v0, 0x0($t0)
/* 217A8 80020BA8 3C0E803A */  lui        $t6, %hi(D_803A6FB0)
/* 217AC 80020BAC 01D97021 */  addu       $t6, $t6, $t9
/* 217B0 80020BB0 244F0008 */  addiu      $t7, $v0, 0x8
/* 217B4 80020BB4 AD0F0000 */  sw         $t7, 0x0($t0)
/* 217B8 80020BB8 AC580000 */  sw         $t8, 0x0($v0)
/* 217BC 80020BBC 8DCE6FB0 */  lw         $t6, %lo(D_803A6FB0)($t6)
/* 217C0 80020BC0 24160006 */  addiu      $s6, $zero, 0x6
/* 217C4 80020BC4 3C15803A */  lui        $s5, %hi(D_803A6F80)
/* 217C8 80020BC8 AC4E0004 */  sw         $t6, 0x4($v0)
/* 217CC 80020BCC 8D020000 */  lw         $v0, 0x0($t0)
/* 217D0 80020BD0 3C18E800 */  lui        $t8, (0xE8000000 >> 16)
/* 217D4 80020BD4 3C0EF500 */  lui        $t6, (0xF5000100 >> 16)
/* 217D8 80020BD8 244F0008 */  addiu      $t7, $v0, 0x8
/* 217DC 80020BDC AD0F0000 */  sw         $t7, 0x0($t0)
/* 217E0 80020BE0 AC400004 */  sw         $zero, 0x4($v0)
/* 217E4 80020BE4 AC580000 */  sw         $t8, 0x0($v0)
/* 217E8 80020BE8 8D020000 */  lw         $v0, 0x0($t0)
/* 217EC 80020BEC 35CE0100 */  ori        $t6, $t6, (0xF5000100 & 0xFFFF)
/* 217F0 80020BF0 3C0F0700 */  lui        $t7, (0x7000000 >> 16)
/* 217F4 80020BF4 24590008 */  addiu      $t9, $v0, 0x8
/* 217F8 80020BF8 AD190000 */  sw         $t9, 0x0($t0)
/* 217FC 80020BFC AC4F0004 */  sw         $t7, 0x4($v0)
/* 21800 80020C00 AC4E0000 */  sw         $t6, 0x0($v0)
/* 21804 80020C04 8D020000 */  lw         $v0, 0x0($t0)
/* 21808 80020C08 3C19E600 */  lui        $t9, (0xE6000000 >> 16)
/* 2180C 80020C0C 3C0FF000 */  lui        $t7, (0xF0000000 >> 16)
/* 21810 80020C10 24580008 */  addiu      $t8, $v0, 0x8
/* 21814 80020C14 AD180000 */  sw         $t8, 0x0($t0)
/* 21818 80020C18 AC400004 */  sw         $zero, 0x4($v0)
/* 2181C 80020C1C AC590000 */  sw         $t9, 0x0($v0)
/* 21820 80020C20 8D020000 */  lw         $v0, 0x0($t0)
/* 21824 80020C24 3C180703 */  lui        $t8, (0x703C000 >> 16)
/* 21828 80020C28 3718C000 */  ori        $t8, $t8, (0x703C000 & 0xFFFF)
/* 2182C 80020C2C 244E0008 */  addiu      $t6, $v0, 0x8
/* 21830 80020C30 AD0E0000 */  sw         $t6, 0x0($t0)
/* 21834 80020C34 AC580004 */  sw         $t8, 0x4($v0)
/* 21838 80020C38 AC4F0000 */  sw         $t7, 0x0($v0)
/* 2183C 80020C3C 8D020000 */  lw         $v0, 0x0($t0)
/* 21840 80020C40 26B56F80 */  addiu      $s5, $s5, %lo(D_803A6F80)
/* 21844 80020C44 2410002C */  addiu      $s0, $zero, 0x2C
/* 21848 80020C48 24590008 */  addiu      $t9, $v0, 0x8
/* 2184C 80020C4C AD190000 */  sw         $t9, 0x0($t0)
/* 21850 80020C50 AC400004 */  sw         $zero, 0x4($v0)
/* 21854 80020C54 AC540000 */  sw         $s4, 0x0($v0)
/* 21858 80020C58 92230000 */  lbu        $v1, 0x0($s1)
/* 2185C 80020C5C 24140020 */  addiu      $s4, $zero, 0x20
/* 21860 80020C60 50600024 */  beql       $v1, $zero, .L80020CF4
/* 21864 80020C64 8FBF004C */   lw        $ra, 0x4C($sp)
.L80020C68:
/* 21868 80020C68 16830004 */  bne        $s4, $v1, .L80020C7C
/* 2186C 80020C6C 00602025 */   or        $a0, $v1, $zero
/* 21870 80020C70 26310001 */  addiu      $s1, $s1, 0x1
/* 21874 80020C74 1000001B */  b          .L80020CE4
/* 21878 80020C78 26520006 */   addiu     $s2, $s2, 0x6
.L80020C7C:
/* 2187C 80020C7C 3C028005 */  lui        $v0, %hi(D_8004D44C)
/* 21880 80020C80 2442D44C */  addiu      $v0, $v0, %lo(D_8004D44C)
/* 21884 80020C84 00001825 */  or         $v1, $zero, $zero
.L80020C88:
/* 21888 80020C88 904E0000 */  lbu        $t6, 0x0($v0)
/* 2188C 80020C8C 11C40004 */  beq        $t6, $a0, .L80020CA0
/* 21890 80020C90 00000000 */   nop
/* 21894 80020C94 24630001 */  addiu      $v1, $v1, 0x1
/* 21898 80020C98 1470FFFB */  bne        $v1, $s0, .L80020C88
/* 2189C 80020C9C 24420001 */   addiu     $v0, $v0, 0x1
.L80020CA0:
/* 218A0 80020CA0 00760019 */  multu      $v1, $s6
/* 218A4 80020CA4 240F0008 */  addiu      $t7, $zero, 0x8
/* 218A8 80020CA8 24190400 */  addiu      $t9, $zero, 0x400
/* 218AC 80020CAC 240E0400 */  addiu      $t6, $zero, 0x400
/* 218B0 80020CB0 AFAE0020 */  sw         $t6, 0x20($sp)
/* 218B4 80020CB4 AFB9001C */  sw         $t9, 0x1C($sp)
/* 218B8 80020CB8 AFAF0010 */  sw         $t7, 0x10($sp)
/* 218BC 80020CBC 02A02025 */  or         $a0, $s5, $zero
/* 218C0 80020CC0 02402825 */  or         $a1, $s2, $zero
/* 218C4 80020CC4 02603025 */  or         $a2, $s3, $zero
/* 218C8 80020CC8 0000C012 */  mflo       $t8
/* 218CC 80020CCC AFB80014 */  sw         $t8, 0x14($sp)
/* 218D0 80020CD0 24070006 */  addiu      $a3, $zero, 0x6
/* 218D4 80020CD4 0C00843F */  jal        func_800210FC
/* 218D8 80020CD8 AFA00018 */   sw        $zero, 0x18($sp)
/* 218DC 80020CDC 26520006 */  addiu      $s2, $s2, 0x6
/* 218E0 80020CE0 26310001 */  addiu      $s1, $s1, 0x1
.L80020CE4:
/* 218E4 80020CE4 92230000 */  lbu        $v1, 0x0($s1)
/* 218E8 80020CE8 1460FFDF */  bnez       $v1, .L80020C68
/* 218EC 80020CEC 00000000 */   nop
/* 218F0 80020CF0 8FBF004C */  lw         $ra, 0x4C($sp)
.L80020CF4:
/* 218F4 80020CF4 8FB00030 */  lw         $s0, 0x30($sp)
/* 218F8 80020CF8 8FB10034 */  lw         $s1, 0x34($sp)
/* 218FC 80020CFC 8FB20038 */  lw         $s2, 0x38($sp)
/* 21900 80020D00 8FB3003C */  lw         $s3, 0x3C($sp)
/* 21904 80020D04 8FB40040 */  lw         $s4, 0x40($sp)
/* 21908 80020D08 8FB50044 */  lw         $s5, 0x44($sp)
/* 2190C 80020D0C 8FB60048 */  lw         $s6, 0x48($sp)
/* 21910 80020D10 03E00008 */  jr         $ra
/* 21914 80020D14 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_80020D18
/* 21918 80020D18 90820000 */  lbu        $v0, 0x0($a0)
/* 2191C 80020D1C 00001825 */  or         $v1, $zero, $zero
/* 21920 80020D20 24840001 */  addiu      $a0, $a0, 0x1
/* 21924 80020D24 50400007 */  beql       $v0, $zero, .L80020D44
/* 21928 80020D28 00601025 */   or        $v0, $v1, $zero
/* 2192C 80020D2C 90820000 */  lbu        $v0, 0x0($a0)
.L80020D30:
/* 21930 80020D30 24630001 */  addiu      $v1, $v1, 0x1
/* 21934 80020D34 24840001 */  addiu      $a0, $a0, 0x1
/* 21938 80020D38 5440FFFD */  bnel       $v0, $zero, .L80020D30
/* 2193C 80020D3C 90820000 */   lbu       $v0, 0x0($a0)
/* 21940 80020D40 00601025 */  or         $v0, $v1, $zero
.L80020D44:
/* 21944 80020D44 03E00008 */  jr         $ra
/* 21948 80020D48 00000000 */   nop

glabel func_80020D4C
/* 2194C 80020D4C 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 21950 80020D50 AFB00024 */  sw         $s0, 0x24($sp)
/* 21954 80020D54 00A08025 */  or         $s0, $a1, $zero
/* 21958 80020D58 AFB40034 */  sw         $s4, 0x34($sp)
/* 2195C 80020D5C AFB30030 */  sw         $s3, 0x30($sp)
/* 21960 80020D60 3093FFFF */  andi       $s3, $a0, 0xFFFF
/* 21964 80020D64 00C0A025 */  or         $s4, $a2, $zero
/* 21968 80020D68 27A50048 */  addiu      $a1, $sp, 0x48
/* 2196C 80020D6C AFBF003C */  sw         $ra, 0x3C($sp)
/* 21970 80020D70 AFB50038 */  sw         $s5, 0x38($sp)
/* 21974 80020D74 AFB2002C */  sw         $s2, 0x2C($sp)
/* 21978 80020D78 AFB10028 */  sw         $s1, 0x28($sp)
/* 2197C 80020D7C AFA40058 */  sw         $a0, 0x58($sp)
/* 21980 80020D80 00A08825 */  or         $s1, $a1, $zero
/* 21984 80020D84 00E02025 */  or         $a0, $a3, $zero
/* 21988 80020D88 0C0090CC */  jal        func_80024330
/* 2198C 80020D8C 3266FFFF */   andi      $a2, $s3, 0xFFFF
/* 21990 80020D90 1040001B */  beqz       $v0, .L80020E00
/* 21994 80020D94 00409025 */   or        $s2, $v0, $zero
/* 21998 80020D98 24150020 */  addiu      $s5, $zero, 0x20
.L80020D9C:
/* 2199C 80020D9C 92220000 */  lbu        $v0, 0x0($s1)
/* 219A0 80020DA0 02002025 */  or         $a0, $s0, $zero
/* 219A4 80020DA4 02802825 */  or         $a1, $s4, $zero
/* 219A8 80020DA8 12A2000F */  beq        $s5, $v0, .L80020DE8
/* 219AC 80020DAC 32690006 */   andi      $t1, $s3, 0x6
/* 219B0 80020DB0 000270C0 */  sll        $t6, $v0, 3
/* 219B4 80020DB4 25CF0020 */  addiu      $t7, $t6, 0x20
/* 219B8 80020DB8 2418001D */  addiu      $t8, $zero, 0x1D
/* 219BC 80020DBC 24190400 */  addiu      $t9, $zero, 0x400
/* 219C0 80020DC0 24080400 */  addiu      $t0, $zero, 0x400
/* 219C4 80020DC4 AFA8001C */  sw         $t0, 0x1C($sp)
/* 219C8 80020DC8 AFB90018 */  sw         $t9, 0x18($sp)
/* 219CC 80020DCC AFB80014 */  sw         $t8, 0x14($sp)
/* 219D0 80020DD0 AFAF0010 */  sw         $t7, 0x10($sp)
/* 219D4 80020DD4 24060008 */  addiu      $a2, $zero, 0x8
/* 219D8 80020DD8 0C0083E3 */  jal        func_80020F8C
/* 219DC 80020DDC 2407000A */   addiu     $a3, $zero, 0xA
/* 219E0 80020DE0 10000004 */  b          .L80020DF4
/* 219E4 80020DE4 26100007 */   addiu     $s0, $s0, 0x7
.L80020DE8:
/* 219E8 80020DE8 51200003 */  beql       $t1, $zero, .L80020DF8
/* 219EC 80020DEC 2652FFFF */   addiu     $s2, $s2, -0x1
/* 219F0 80020DF0 26100007 */  addiu      $s0, $s0, 0x7
.L80020DF4:
/* 219F4 80020DF4 2652FFFF */  addiu      $s2, $s2, -0x1
.L80020DF8:
/* 219F8 80020DF8 1640FFE8 */  bnez       $s2, .L80020D9C
/* 219FC 80020DFC 26310001 */   addiu     $s1, $s1, 0x1
.L80020E00:
/* 21A00 80020E00 8FBF003C */  lw         $ra, 0x3C($sp)
/* 21A04 80020E04 8FB00024 */  lw         $s0, 0x24($sp)
/* 21A08 80020E08 8FB10028 */  lw         $s1, 0x28($sp)
/* 21A0C 80020E0C 8FB2002C */  lw         $s2, 0x2C($sp)
/* 21A10 80020E10 8FB30030 */  lw         $s3, 0x30($sp)
/* 21A14 80020E14 8FB40034 */  lw         $s4, 0x34($sp)
/* 21A18 80020E18 8FB50038 */  lw         $s5, 0x38($sp)
/* 21A1C 80020E1C 03E00008 */  jr         $ra
/* 21A20 80020E20 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_80020E24
/* 21A24 80020E24 03E00008 */  jr         $ra
/* 21A28 80020E28 00000000 */   nop

glabel func_80020E2C
/* 21A2C 80020E2C 3C038008 */  lui        $v1, %hi(gMasterGfxPos)
/* 21A30 80020E30 2463B2FC */  addiu      $v1, $v1, %lo(gMasterGfxPos)
/* 21A34 80020E34 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 21A38 80020E38 8C620000 */  lw         $v0, 0x0($v1)
/* 21A3C 80020E3C 3C01FD48 */  lui        $at, (0xFD480000 >> 16)
/* 21A40 80020E40 00A75021 */  addu       $t2, $a1, $a3
/* 21A44 80020E44 244E0008 */  addiu      $t6, $v0, 0x8
/* 21A48 80020E48 AC6E0000 */  sw         $t6, 0x0($v1)
/* 21A4C 80020E4C 8C8F0008 */  lw         $t7, 0x8($a0)
/* 21A50 80020E50 01456823 */  subu       $t5, $t2, $a1
/* 21A54 80020E54 25AD0008 */  addiu      $t5, $t5, 0x8
/* 21A58 80020E58 25F8FFFF */  addiu      $t8, $t7, -0x1
/* 21A5C 80020E5C 33190FFF */  andi       $t9, $t8, 0xFFF
/* 21A60 80020E60 03217025 */  or         $t6, $t9, $at
/* 21A64 80020E64 AC4E0000 */  sw         $t6, 0x0($v0)
/* 21A68 80020E68 8C8F0000 */  lw         $t7, 0x0($a0)
/* 21A6C 80020E6C 000DC8C3 */  sra        $t9, $t5, 3
/* 21A70 80020E70 332E01FF */  andi       $t6, $t9, 0x1FF
/* 21A74 80020E74 AC4F0004 */  sw         $t7, 0x4($v0)
/* 21A78 80020E78 8C620000 */  lw         $v0, 0x0($v1)
/* 21A7C 80020E7C 000E7A40 */  sll        $t7, $t6, 9
/* 21A80 80020E80 3C01F548 */  lui        $at, (0xF5480000 >> 16)
/* 21A84 80020E84 24580008 */  addiu      $t8, $v0, 0x8
/* 21A88 80020E88 AC780000 */  sw         $t8, 0x0($v1)
/* 21A8C 80020E8C 01E16825 */  or         $t5, $t7, $at
/* 21A90 80020E90 3C190700 */  lui        $t9, (0x7000000 >> 16)
/* 21A94 80020E94 AC590004 */  sw         $t9, 0x4($v0)
/* 21A98 80020E98 AC4D0000 */  sw         $t5, 0x0($v0)
/* 21A9C 80020E9C 8C620000 */  lw         $v0, 0x0($v1)
/* 21AA0 80020EA0 3C0FE600 */  lui        $t7, (0xE6000000 >> 16)
/* 21AA4 80020EA4 0005C880 */  sll        $t9, $a1, 2
/* 21AA8 80020EA8 244E0008 */  addiu      $t6, $v0, 0x8
/* 21AAC 80020EAC AC6E0000 */  sw         $t6, 0x0($v1)
/* 21AB0 80020EB0 AC400004 */  sw         $zero, 0x4($v0)
/* 21AB4 80020EB4 AC4F0000 */  sw         $t7, 0x0($v0)
/* 21AB8 80020EB8 8C620000 */  lw         $v0, 0x0($v1)
/* 21ABC 80020EBC 332E0FFF */  andi       $t6, $t9, 0xFFF
/* 21AC0 80020EC0 000E7B00 */  sll        $t7, $t6, 12
/* 21AC4 80020EC4 24580008 */  addiu      $t8, $v0, 0x8
/* 21AC8 80020EC8 AC780000 */  sw         $t8, 0x0($v1)
/* 21ACC 80020ECC 0006C080 */  sll        $t8, $a2, 2
/* 21AD0 80020ED0 33190FFF */  andi       $t9, $t8, 0xFFF
/* 21AD4 80020ED4 3C01F400 */  lui        $at, (0xF4000000 >> 16)
/* 21AD8 80020ED8 01E17025 */  or         $t6, $t7, $at
/* 21ADC 80020EDC 01D9C025 */  or         $t8, $t6, $t9
/* 21AE0 80020EE0 AFB90008 */  sw         $t9, 0x8($sp)
/* 21AE4 80020EE4 AFAF000C */  sw         $t7, 0xC($sp)
/* 21AE8 80020EE8 AC580000 */  sw         $t8, 0x0($v0)
/* 21AEC 80020EEC 8FB80040 */  lw         $t8, 0x40($sp)
/* 21AF0 80020EF0 000A7880 */  sll        $t7, $t2, 2
/* 21AF4 80020EF4 31EE0FFF */  andi       $t6, $t7, 0xFFF
/* 21AF8 80020EF8 000ECB00 */  sll        $t9, $t6, 12
/* 21AFC 80020EFC 00D87821 */  addu       $t7, $a2, $t8
/* 21B00 80020F00 000F7080 */  sll        $t6, $t7, 2
/* 21B04 80020F04 31D80FFF */  andi       $t8, $t6, 0xFFF
/* 21B08 80020F08 3C010700 */  lui        $at, (0x7000000 >> 16)
/* 21B0C 80020F0C 03217825 */  or         $t7, $t9, $at
/* 21B10 80020F10 01F87025 */  or         $t6, $t7, $t8
/* 21B14 80020F14 AFB80000 */  sw         $t8, 0x0($sp)
/* 21B18 80020F18 AFB90004 */  sw         $t9, 0x4($sp)
/* 21B1C 80020F1C AC4E0004 */  sw         $t6, 0x4($v0)
/* 21B20 80020F20 8C620000 */  lw         $v0, 0x0($v1)
/* 21B24 80020F24 3C0FE700 */  lui        $t7, (0xE7000000 >> 16)
/* 21B28 80020F28 3C01F200 */  lui        $at, (0xF2000000 >> 16)
/* 21B2C 80020F2C 24590008 */  addiu      $t9, $v0, 0x8
/* 21B30 80020F30 AC790000 */  sw         $t9, 0x0($v1)
/* 21B34 80020F34 AFA2001C */  sw         $v0, 0x1C($sp)
/* 21B38 80020F38 AC400004 */  sw         $zero, 0x4($v0)
/* 21B3C 80020F3C AC4F0000 */  sw         $t7, 0x0($v0)
/* 21B40 80020F40 8C620000 */  lw         $v0, 0x0($v1)
/* 21B44 80020F44 244E0008 */  addiu      $t6, $v0, 0x8
/* 21B48 80020F48 AC6E0000 */  sw         $t6, 0x0($v1)
/* 21B4C 80020F4C AC400004 */  sw         $zero, 0x4($v0)
/* 21B50 80020F50 AC4D0000 */  sw         $t5, 0x0($v0)
/* 21B54 80020F54 8C620000 */  lw         $v0, 0x0($v1)
/* 21B58 80020F58 8FAF000C */  lw         $t7, 0xC($sp)
/* 21B5C 80020F5C 8FAE0008 */  lw         $t6, 0x8($sp)
/* 21B60 80020F60 24590008 */  addiu      $t9, $v0, 0x8
/* 21B64 80020F64 AC790000 */  sw         $t9, 0x0($v1)
/* 21B68 80020F68 01E1C025 */  or         $t8, $t7, $at
/* 21B6C 80020F6C 030EC825 */  or         $t9, $t8, $t6
/* 21B70 80020F70 AC590000 */  sw         $t9, 0x0($v0)
/* 21B74 80020F74 8FB80000 */  lw         $t8, 0x0($sp)
/* 21B78 80020F78 8FAF0004 */  lw         $t7, 0x4($sp)
/* 21B7C 80020F7C 01F87025 */  or         $t6, $t7, $t8
/* 21B80 80020F80 AC4E0004 */  sw         $t6, 0x4($v0)
/* 21B84 80020F84 03E00008 */  jr         $ra
/* 21B88 80020F88 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_80020F8C
/* 21B8C 80020F8C 3C0E8009 */  lui        $t6, %hi(D_8008C648)
/* 21B90 80020F90 8DCEC648 */  lw         $t6, %lo(D_8008C648)($t6)
/* 21B94 80020F94 3C028009 */  lui        $v0, %hi(D_8008C650)
/* 21B98 80020F98 8C42C650 */  lw         $v0, %lo(D_8008C650)($v0)
/* 21B9C 80020F9C 3C0F8009 */  lui        $t7, %hi(D_8008C64C)
/* 21BA0 80020FA0 008E2021 */  addu       $a0, $a0, $t6
/* 21BA4 80020FA4 8DEFC64C */  lw         $t7, %lo(D_8008C64C)($t7)
/* 21BA8 80020FA8 00C43021 */  addu       $a2, $a2, $a0
/* 21BAC 80020FAC 00C2082A */  slt        $at, $a2, $v0
/* 21BB0 80020FB0 14200050 */  bnez       $at, .L800210F4
/* 21BB4 80020FB4 00AF2821 */   addu      $a1, $a1, $t7
/* 21BB8 80020FB8 3C038009 */  lui        $v1, %hi(D_8008C654)
/* 21BBC 80020FBC 8C63C654 */  lw         $v1, %lo(D_8008C654)($v1)
/* 21BC0 80020FC0 00E53821 */  addu       $a3, $a3, $a1
/* 21BC4 80020FC4 3C088009 */  lui        $t0, %hi(D_8008C658)
/* 21BC8 80020FC8 00E3082A */  slt        $at, $a3, $v1
/* 21BCC 80020FCC 14200049 */  bnez       $at, .L800210F4
/* 21BD0 80020FD0 00000000 */   nop
/* 21BD4 80020FD4 8D08C658 */  lw         $t0, %lo(D_8008C658)($t0)
/* 21BD8 80020FD8 3C098009 */  lui        $t1, %hi(D_8008C65C)
/* 21BDC 80020FDC 0104082A */  slt        $at, $t0, $a0
/* 21BE0 80020FE0 14200044 */  bnez       $at, .L800210F4
/* 21BE4 80020FE4 00000000 */   nop
/* 21BE8 80020FE8 8D29C65C */  lw         $t1, %lo(D_8008C65C)($t1)
/* 21BEC 80020FEC 3C0A8008 */  lui        $t2, %hi(gMasterGfxPos)
/* 21BF0 80020FF0 254AB2FC */  addiu      $t2, $t2, %lo(gMasterGfxPos)
/* 21BF4 80020FF4 0125082A */  slt        $at, $t1, $a1
/* 21BF8 80020FF8 1420003E */  bnez       $at, .L800210F4
/* 21BFC 80020FFC 0106082A */   slt       $at, $t0, $a2
/* 21C00 80021000 10200002 */  beqz       $at, .L8002100C
/* 21C04 80021004 8FB80010 */   lw        $t8, 0x10($sp)
/* 21C08 80021008 01003025 */  or         $a2, $t0, $zero
.L8002100C:
/* 21C0C 8002100C 0127082A */  slt        $at, $t1, $a3
/* 21C10 80021010 10200002 */  beqz       $at, .L8002101C
/* 21C14 80021014 0304C823 */   subu      $t9, $t8, $a0
/* 21C18 80021018 01203825 */  or         $a3, $t1, $zero
.L8002101C:
/* 21C1C 8002101C 0082082A */  slt        $at, $a0, $v0
/* 21C20 80021020 10200004 */  beqz       $at, .L80021034
/* 21C24 80021024 0006C080 */   sll       $t8, $a2, 2
/* 21C28 80021028 03225821 */  addu       $t3, $t9, $v0
/* 21C2C 8002102C AFAB0010 */  sw         $t3, 0x10($sp)
/* 21C30 80021030 00402025 */  or         $a0, $v0, $zero
.L80021034:
/* 21C34 80021034 00A3082A */  slt        $at, $a1, $v1
/* 21C38 80021038 10200006 */  beqz       $at, .L80021054
/* 21C3C 8002103C 33190FFF */   andi      $t9, $t8, 0xFFF
/* 21C40 80021040 8FAC0014 */  lw         $t4, 0x14($sp)
/* 21C44 80021044 01856823 */  subu       $t5, $t4, $a1
/* 21C48 80021048 01A37021 */  addu       $t6, $t5, $v1
/* 21C4C 8002104C AFAE0014 */  sw         $t6, 0x14($sp)
/* 21C50 80021050 00602825 */  or         $a1, $v1, $zero
.L80021054:
/* 21C54 80021054 8D430000 */  lw         $v1, 0x0($t2)
/* 21C58 80021058 00195B00 */  sll        $t3, $t9, 12
/* 21C5C 8002105C 3C01E400 */  lui        $at, (0xE4000000 >> 16)
/* 21C60 80021060 00076880 */  sll        $t5, $a3, 2
/* 21C64 80021064 31AE0FFF */  andi       $t6, $t5, 0xFFF
/* 21C68 80021068 01616025 */  or         $t4, $t3, $at
/* 21C6C 8002106C 246F0008 */  addiu      $t7, $v1, 0x8
/* 21C70 80021070 AD4F0000 */  sw         $t7, 0x0($t2)
/* 21C74 80021074 0004C080 */  sll        $t8, $a0, 2
/* 21C78 80021078 33190FFF */  andi       $t9, $t8, 0xFFF
/* 21C7C 8002107C 018E7825 */  or         $t7, $t4, $t6
/* 21C80 80021080 00056880 */  sll        $t5, $a1, 2
/* 21C84 80021084 31AC0FFF */  andi       $t4, $t5, 0xFFF
/* 21C88 80021088 00195B00 */  sll        $t3, $t9, 12
/* 21C8C 8002108C 016C7025 */  or         $t6, $t3, $t4
/* 21C90 80021090 AC6E0004 */  sw         $t6, 0x4($v1)
/* 21C94 80021094 AC6F0000 */  sw         $t7, 0x0($v1)
/* 21C98 80021098 8D430000 */  lw         $v1, 0x0($t2)
/* 21C9C 8002109C 3C18B400 */  lui        $t8, (0xB4000000 >> 16)
/* 21CA0 800210A0 246F0008 */  addiu      $t7, $v1, 0x8
/* 21CA4 800210A4 AD4F0000 */  sw         $t7, 0x0($t2)
/* 21CA8 800210A8 AC780000 */  sw         $t8, 0x0($v1)
/* 21CAC 800210AC 8FAE0014 */  lw         $t6, 0x14($sp)
/* 21CB0 800210B0 8FAB0010 */  lw         $t3, 0x10($sp)
/* 21CB4 800210B4 000E7940 */  sll        $t7, $t6, 5
/* 21CB8 800210B8 31F8FFFF */  andi       $t8, $t7, 0xFFFF
/* 21CBC 800210BC 000B6540 */  sll        $t4, $t3, 21
/* 21CC0 800210C0 0198C825 */  or         $t9, $t4, $t8
/* 21CC4 800210C4 AC790004 */  sw         $t9, 0x4($v1)
/* 21CC8 800210C8 8D430000 */  lw         $v1, 0x0($t2)
/* 21CCC 800210CC 3C0BB300 */  lui        $t3, (0xB3000000 >> 16)
/* 21CD0 800210D0 246D0008 */  addiu      $t5, $v1, 0x8
/* 21CD4 800210D4 AD4D0000 */  sw         $t5, 0x0($t2)
/* 21CD8 800210D8 AC6B0000 */  sw         $t3, 0x0($v1)
/* 21CDC 800210DC 8FB8001C */  lw         $t8, 0x1C($sp)
/* 21CE0 800210E0 8FAF0018 */  lw         $t7, 0x18($sp)
/* 21CE4 800210E4 3319FFFF */  andi       $t9, $t8, 0xFFFF
/* 21CE8 800210E8 000F6400 */  sll        $t4, $t7, 16
/* 21CEC 800210EC 01996825 */  or         $t5, $t4, $t9
/* 21CF0 800210F0 AC6D0004 */  sw         $t5, 0x4($v1)
.L800210F4:
/* 21CF4 800210F4 03E00008 */  jr         $ra
/* 21CF8 800210F8 00000000 */   nop

glabel func_800210FC
/* 21CFC 800210FC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 21D00 80021100 AFBF0024 */  sw         $ra, 0x24($sp)
/* 21D04 80021104 AFA5002C */  sw         $a1, 0x2C($sp)
/* 21D08 80021108 AFA60030 */  sw         $a2, 0x30($sp)
/* 21D0C 8002110C AFA70034 */  sw         $a3, 0x34($sp)
/* 21D10 80021110 8FAE0038 */  lw         $t6, 0x38($sp)
/* 21D14 80021114 8FA5003C */  lw         $a1, 0x3C($sp)
/* 21D18 80021118 8FA60040 */  lw         $a2, 0x40($sp)
/* 21D1C 8002111C 8FA70034 */  lw         $a3, 0x34($sp)
/* 21D20 80021120 0C00838B */  jal        func_80020E2C
/* 21D24 80021124 AFAE0010 */   sw        $t6, 0x10($sp)
/* 21D28 80021128 8FAF003C */  lw         $t7, 0x3C($sp)
/* 21D2C 8002112C 8FB80040 */  lw         $t8, 0x40($sp)
/* 21D30 80021130 8FB90044 */  lw         $t9, 0x44($sp)
/* 21D34 80021134 8FA80048 */  lw         $t0, 0x48($sp)
/* 21D38 80021138 8FA4002C */  lw         $a0, 0x2C($sp)
/* 21D3C 8002113C 8FA50030 */  lw         $a1, 0x30($sp)
/* 21D40 80021140 8FA60034 */  lw         $a2, 0x34($sp)
/* 21D44 80021144 8FA70038 */  lw         $a3, 0x38($sp)
/* 21D48 80021148 AFAF0010 */  sw         $t7, 0x10($sp)
/* 21D4C 8002114C AFB80014 */  sw         $t8, 0x14($sp)
/* 21D50 80021150 AFB90018 */  sw         $t9, 0x18($sp)
/* 21D54 80021154 0C0083E3 */  jal        func_80020F8C
/* 21D58 80021158 AFA8001C */   sw        $t0, 0x1C($sp)
/* 21D5C 8002115C 8FBF0024 */  lw         $ra, 0x24($sp)
/* 21D60 80021160 27BD0028 */  addiu      $sp, $sp, 0x28
/* 21D64 80021164 03E00008 */  jr         $ra
/* 21D68 80021168 00000000 */   nop
/* 21D6C 8002116C 00000000 */  nop
