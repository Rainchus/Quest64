.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.8.2 */

glabel osAiSetFrequency
/* 372C0 800366C0 3C0E8007 */  lui        $t6, %hi(D_8006F408)
/* 372C4 800366C4 8DCEF408 */  lw         $t6, %lo(D_8006F408)($t6)
/* 372C8 800366C8 44844000 */  mtc1       $a0, $f8
/* 372CC 800366CC 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 372D0 800366D0 448E2000 */  mtc1       $t6, $f4
/* 372D4 800366D4 468042A0 */  cvt.s.w    $f10, $f8
/* 372D8 800366D8 04810005 */  bgez       $a0, .L800366F0
/* 372DC 800366DC 468021A0 */   cvt.s.w   $f6, $f4
/* 372E0 800366E0 3C014F80 */  lui        $at, (0x4F800000 >> 16)
/* 372E4 800366E4 44818000 */  mtc1       $at, $f16
/* 372E8 800366E8 00000000 */  nop
/* 372EC 800366EC 46105280 */  add.s      $f10, $f10, $f16
.L800366F0:
/* 372F0 800366F0 460A3483 */  div.s      $f18, $f6, $f10
/* 372F4 800366F4 3C013F00 */  lui        $at, (0x3F000000 >> 16)
/* 372F8 800366F8 44812000 */  mtc1       $at, $f4
/* 372FC 800366FC 24050001 */  addiu      $a1, $zero, 0x1
/* 37300 80036700 46049300 */  add.s      $f12, $f18, $f4
/* 37304 80036704 444FF800 */  cfc1       $t7, $31
/* 37308 80036708 44C5F800 */  ctc1       $a1, $31
/* 3730C 8003670C 00000000 */  nop
/* 37310 80036710 46006224 */  cvt.w.s    $f8, $f12
/* 37314 80036714 4445F800 */  cfc1       $a1, $31
/* 37318 80036718 00000000 */  nop
/* 3731C 8003671C 30A10004 */  andi       $at, $a1, 0x4
/* 37320 80036720 30A50078 */  andi       $a1, $a1, 0x78
/* 37324 80036724 10A00013 */  beqz       $a1, .L80036774
/* 37328 80036728 3C014F00 */   lui       $at, (0x4F000000 >> 16)
/* 3732C 8003672C 44814000 */  mtc1       $at, $f8
/* 37330 80036730 24050001 */  addiu      $a1, $zero, 0x1
/* 37334 80036734 46086201 */  sub.s      $f8, $f12, $f8
/* 37338 80036738 44C5F800 */  ctc1       $a1, $31
/* 3733C 8003673C 00000000 */  nop
/* 37340 80036740 46004224 */  cvt.w.s    $f8, $f8
/* 37344 80036744 4445F800 */  cfc1       $a1, $31
/* 37348 80036748 00000000 */  nop
/* 3734C 8003674C 30A10004 */  andi       $at, $a1, 0x4
/* 37350 80036750 30A50078 */  andi       $a1, $a1, 0x78
/* 37354 80036754 14A00005 */  bnez       $a1, .L8003676C
/* 37358 80036758 00000000 */   nop
/* 3735C 8003675C 44054000 */  mfc1       $a1, $f8
/* 37360 80036760 3C018000 */  lui        $at, (0x80000000 >> 16)
/* 37364 80036764 10000007 */  b          .L80036784
/* 37368 80036768 00A12825 */   or        $a1, $a1, $at
.L8003676C:
/* 3736C 8003676C 10000005 */  b          .L80036784
/* 37370 80036770 2405FFFF */   addiu     $a1, $zero, -0x1
.L80036774:
/* 37374 80036774 44054000 */  mfc1       $a1, $f8
/* 37378 80036778 00000000 */  nop
/* 3737C 8003677C 04A0FFFB */  bltz       $a1, .L8003676C
/* 37380 80036780 00000000 */   nop
.L80036784:
/* 37384 80036784 44CFF800 */  ctc1       $t7, $31
/* 37388 80036788 2CA10084 */  sltiu      $at, $a1, 0x84
/* 3738C 8003678C 10200003 */  beqz       $at, .L8003679C
/* 37390 80036790 00000000 */   nop
/* 37394 80036794 10000020 */  b          .L80036818
/* 37398 80036798 2402FFFF */   addiu     $v0, $zero, -0x1
.L8003679C:
/* 3739C 8003679C 24010042 */  addiu      $at, $zero, 0x42
/* 373A0 800367A0 00A1001B */  divu       $zero, $a1, $at
/* 373A4 800367A4 00003012 */  mflo       $a2
/* 373A8 800367A8 30D800FF */  andi       $t8, $a2, 0xFF
/* 373AC 800367AC 03003025 */  or         $a2, $t8, $zero
/* 373B0 800367B0 28C10011 */  slti       $at, $a2, 0x11
/* 373B4 800367B4 14200002 */  bnez       $at, .L800367C0
/* 373B8 800367B8 00000000 */   nop
/* 373BC 800367BC 24060010 */  addiu      $a2, $zero, 0x10
.L800367C0:
/* 373C0 800367C0 24B9FFFF */  addiu      $t9, $a1, -0x1
/* 373C4 800367C4 3C08A450 */  lui        $t0, %hi(D_A4500010)
/* 373C8 800367C8 AD190010 */  sw         $t9, %lo(D_A4500010)($t0)
/* 373CC 800367CC 24C9FFFF */  addiu      $t1, $a2, -0x1
/* 373D0 800367D0 3C0AA450 */  lui        $t2, %hi(D_A4500014)
/* 373D4 800367D4 AD490014 */  sw         $t1, %lo(D_A4500014)($t2)
/* 373D8 800367D8 240B0001 */  addiu      $t3, $zero, 0x1
/* 373DC 800367DC 3C0CA450 */  lui        $t4, %hi(D_A4500008)
/* 373E0 800367E0 AD8B0008 */  sw         $t3, %lo(D_A4500008)($t4)
/* 373E4 800367E4 3C0D8007 */  lui        $t5, %hi(D_8006F408)
/* 373E8 800367E8 8DADF408 */  lw         $t5, %lo(D_8006F408)($t5)
/* 373EC 800367EC 01A5001A */  div        $zero, $t5, $a1
/* 373F0 800367F0 00001012 */  mflo       $v0
/* 373F4 800367F4 14A00002 */  bnez       $a1, .L80036800
/* 373F8 800367F8 00000000 */   nop
/* 373FC 800367FC 0007000D */  break      7
.L80036800:
/* 37400 80036800 2401FFFF */  addiu      $at, $zero, -0x1
/* 37404 80036804 14A10004 */  bne        $a1, $at, .L80036818
/* 37408 80036808 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 3740C 8003680C 15A10002 */  bne        $t5, $at, .L80036818
/* 37410 80036810 00000000 */   nop
/* 37414 80036814 0006000D */  break      6
.L80036818:
/* 37418 80036818 03E00008 */  jr         $ra
/* 3741C 8003681C 27BD0010 */   addiu     $sp, $sp, 0x10

glabel alUnlink
/* 37420 80036820 8C820000 */  lw         $v0, 0x0($a0)
/* 37424 80036824 50400004 */  beql       $v0, $zero, .L80036838
/* 37428 80036828 8C820004 */   lw        $v0, 0x4($a0)
/* 3742C 8003682C 8C8E0004 */  lw         $t6, 0x4($a0)
/* 37430 80036830 AC4E0004 */  sw         $t6, 0x4($v0)
/* 37434 80036834 8C820004 */  lw         $v0, 0x4($a0)
.L80036838:
/* 37438 80036838 10400003 */  beqz       $v0, .L80036848
/* 3743C 8003683C 00000000 */   nop
/* 37440 80036840 8C8F0000 */  lw         $t7, 0x0($a0)
/* 37444 80036844 AC4F0000 */  sw         $t7, 0x0($v0)
.L80036848:
/* 37448 80036848 03E00008 */  jr         $ra
/* 3744C 8003684C 00000000 */   nop

glabel alLink
/* 37450 80036850 8CAE0000 */  lw         $t6, 0x0($a1)
/* 37454 80036854 AC850004 */  sw         $a1, 0x4($a0)
/* 37458 80036858 AC8E0000 */  sw         $t6, 0x0($a0)
/* 3745C 8003685C 8CA20000 */  lw         $v0, 0x0($a1)
/* 37460 80036860 10400002 */  beqz       $v0, .L8003686C
/* 37464 80036864 00000000 */   nop
/* 37468 80036868 AC440004 */  sw         $a0, 0x4($v0)
.L8003686C:
/* 3746C 8003686C 03E00008 */  jr         $ra
/* 37470 80036870 ACA40000 */   sw        $a0, 0x0($a1)

glabel alClose
/* 37474 80036874 3C0E8007 */  lui        $t6, %hi(D_80070990)
/* 37478 80036878 8DCE0990 */  lw         $t6, %lo(D_80070990)($t6)
/* 3747C 8003687C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 37480 80036880 AFBF0014 */  sw         $ra, 0x14($sp)
/* 37484 80036884 51C00006 */  beql       $t6, $zero, .L800368A0
/* 37488 80036888 8FBF0014 */   lw        $ra, 0x14($sp)
/* 3748C 8003688C 0C00FF50 */  jal        alSynDelete
/* 37490 80036890 00000000 */   nop
/* 37494 80036894 3C018007 */  lui        $at, %hi(D_80070990)
/* 37498 80036898 AC200990 */  sw         $zero, %lo(D_80070990)($at)
/* 3749C 8003689C 8FBF0014 */  lw         $ra, 0x14($sp)
.L800368A0:
/* 374A0 800368A0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 374A4 800368A4 03E00008 */  jr         $ra
/* 374A8 800368A8 00000000 */   nop

glabel alInit
/* 374AC 800368AC 3C028007 */  lui        $v0, %hi(D_80070990)
/* 374B0 800368B0 24420990 */  addiu      $v0, $v0, %lo(D_80070990)
/* 374B4 800368B4 8C4E0000 */  lw         $t6, 0x0($v0)
/* 374B8 800368B8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 374BC 800368BC AFBF0014 */  sw         $ra, 0x14($sp)
/* 374C0 800368C0 55C00004 */  bnel       $t6, $zero, .L800368D4
/* 374C4 800368C4 8FBF0014 */   lw        $ra, 0x14($sp)
/* 374C8 800368C8 0C00DB40 */  jal        alSynNew
/* 374CC 800368CC AC440000 */   sw        $a0, 0x0($v0)
/* 374D0 800368D0 8FBF0014 */  lw         $ra, 0x14($sp)
.L800368D4:
/* 374D4 800368D4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 374D8 800368D8 03E00008 */  jr         $ra
/* 374DC 800368DC 00000000 */   nop
