.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.8.2 */

glabel alResampleParam
/* 42170 80041570 24AEFFFF */  addiu      $t6, $a1, -0x1
/* 42174 80041574 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 42178 80041578 2DC10009 */  sltiu      $at, $t6, 0x9
/* 4217C 8004157C AFBF0014 */  sw         $ra, 0x14($sp)
/* 42180 80041580 1020002B */  beqz       $at, .L80041630
/* 42184 80041584 00803825 */   or        $a3, $a0, $zero
/* 42188 80041588 000E7080 */  sll        $t6, $t6, 2
/* 4218C 8004158C 3C018007 */  lui        $at, %hi(jtbl_80072040)
/* 42190 80041590 002E0821 */  addu       $at, $at, $t6
/* 42194 80041594 8C2E2040 */  lw         $t6, %lo(jtbl_80072040)($at)
/* 42198 80041598 01C00008 */  jr         $t6
/* 4219C 8004159C 00000000 */   nop
glabel .L800415A0
/* 421A0 800415A0 10000029 */  b          .L80041648
/* 421A4 800415A4 ACE60000 */   sw        $a2, 0x0($a3)
glabel .L800415A8
/* 421A8 800415A8 8CE40000 */  lw         $a0, 0x0($a3)
/* 421AC 800415AC 44802000 */  mtc1       $zero, $f4
/* 421B0 800415B0 240F0001 */  addiu      $t7, $zero, 0x1
/* 421B4 800415B4 ACEF0024 */  sw         $t7, 0x24($a3)
/* 421B8 800415B8 ACE00030 */  sw         $zero, 0x30($a3)
/* 421BC 800415BC ACE0001C */  sw         $zero, 0x1C($a3)
/* 421C0 800415C0 10800021 */  beqz       $a0, .L80041648
/* 421C4 800415C4 E4E40020 */   swc1      $f4, 0x20($a3)
/* 421C8 800415C8 8C990008 */  lw         $t9, 0x8($a0)
/* 421CC 800415CC 24050004 */  addiu      $a1, $zero, 0x4
/* 421D0 800415D0 00003025 */  or         $a2, $zero, $zero
/* 421D4 800415D4 0320F809 */  jalr       $t9
/* 421D8 800415D8 00000000 */   nop
/* 421DC 800415DC 1000001B */  b          .L8004164C
/* 421E0 800415E0 8FBF0014 */   lw        $ra, 0x14($sp)
glabel .L800415E4
/* 421E4 800415E4 8CE40000 */  lw         $a0, 0x0($a3)
/* 421E8 800415E8 24180001 */  addiu      $t8, $zero, 0x1
/* 421EC 800415EC ACF80030 */  sw         $t8, 0x30($a3)
/* 421F0 800415F0 50800016 */  beql       $a0, $zero, .L8004164C
/* 421F4 800415F4 8FBF0014 */   lw        $ra, 0x14($sp)
/* 421F8 800415F8 8C990008 */  lw         $t9, 0x8($a0)
/* 421FC 800415FC 24050009 */  addiu      $a1, $zero, 0x9
/* 42200 80041600 00003025 */  or         $a2, $zero, $zero
/* 42204 80041604 0320F809 */  jalr       $t9
/* 42208 80041608 00000000 */   nop
/* 4220C 8004160C 1000000F */  b          .L8004164C
/* 42210 80041610 8FBF0014 */   lw        $ra, 0x14($sp)
glabel .L80041614
/* 42214 80041614 AFA6001C */  sw         $a2, 0x1C($sp)
/* 42218 80041618 C7A6001C */  lwc1       $f6, 0x1C($sp)
/* 4221C 8004161C 1000000A */  b          .L80041648
/* 42220 80041620 E4E60018 */   swc1      $f6, 0x18($a3)
glabel .L80041624
/* 42224 80041624 24080001 */  addiu      $t0, $zero, 0x1
/* 42228 80041628 10000007 */  b          .L80041648
/* 4222C 8004162C ACE8001C */   sw        $t0, 0x1C($a3)
glabel .L80041630
/* 42230 80041630 8CE40000 */  lw         $a0, 0x0($a3)
/* 42234 80041634 50800005 */  beql       $a0, $zero, .L8004164C
/* 42238 80041638 8FBF0014 */   lw        $ra, 0x14($sp)
/* 4223C 8004163C 8C990008 */  lw         $t9, 0x8($a0)
/* 42240 80041640 0320F809 */  jalr       $t9
/* 42244 80041644 00000000 */   nop
.L80041648:
/* 42248 80041648 8FBF0014 */  lw         $ra, 0x14($sp)
.L8004164C:
/* 4224C 8004164C 27BD0028 */  addiu      $sp, $sp, 0x28
/* 42250 80041650 00001025 */  or         $v0, $zero, $zero
/* 42254 80041654 03E00008 */  jr         $ra
/* 42258 80041658 00000000 */   nop

glabel alResamplePull
/* 4225C 8004165C 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 42260 80041660 AFBF001C */  sw         $ra, 0x1C($sp)
/* 42264 80041664 AFA50054 */  sw         $a1, 0x54($sp)
/* 42268 80041668 8C890000 */  lw         $t1, 0x0($a0)
/* 4226C 8004166C 240E0140 */  addiu      $t6, $zero, 0x140
/* 42270 80041670 00804025 */  or         $t0, $a0, $zero
/* 42274 80041674 00C05025 */  or         $t2, $a2, $zero
/* 42278 80041678 14C00003 */  bnez       $a2, .L80041688
/* 4227C 8004167C A7AE0046 */   sh        $t6, 0x46($sp)
/* 42280 80041680 10000074 */  b          .L80041854
/* 42284 80041684 8FA20060 */   lw        $v0, 0x60($sp)
.L80041688:
/* 42288 80041688 8D0F001C */  lw         $t7, 0x1C($t0)
/* 4228C 8004168C 8FB80060 */  lw         $t8, 0x60($sp)
/* 42290 80041690 51E0001A */  beql       $t7, $zero, .L800416FC
/* 42294 80041694 C5020018 */   lwc1      $f2, 0x18($t0)
/* 42298 80041698 AFB80010 */  sw         $t8, 0x10($sp)
/* 4229C 8004169C AFAA0058 */  sw         $t2, 0x58($sp)
/* 422A0 800416A0 8D390004 */  lw         $t9, 0x4($t1)
/* 422A4 800416A4 01202025 */  or         $a0, $t1, $zero
/* 422A8 800416A8 27A50046 */  addiu      $a1, $sp, 0x46
/* 422AC 800416AC 0320F809 */  jalr       $t9
/* 422B0 800416B0 01403025 */   or        $a2, $t2, $zero
/* 422B4 800416B4 87AB0046 */  lh         $t3, 0x46($sp)
/* 422B8 800416B8 3C0100FF */  lui        $at, (0xFFFFFF >> 16)
/* 422BC 800416BC 3421FFFF */  ori        $at, $at, (0xFFFFFF & 0xFFFF)
/* 422C0 800416C0 01616024 */  and        $t4, $t3, $at
/* 422C4 800416C4 3C010A00 */  lui        $at, (0xA000000 >> 16)
/* 422C8 800416C8 8FAA0058 */  lw         $t2, 0x58($sp)
/* 422CC 800416CC 01816825 */  or         $t5, $t4, $at
/* 422D0 800416D0 AC4D0000 */  sw         $t5, 0x0($v0)
/* 422D4 800416D4 8FAE0054 */  lw         $t6, 0x54($sp)
/* 422D8 800416D8 000A5840 */  sll        $t3, $t2, 1
/* 422DC 800416DC 316CFFFF */  andi       $t4, $t3, 0xFFFF
/* 422E0 800416E0 85D80000 */  lh         $t8, 0x0($t6)
/* 422E4 800416E4 24450008 */  addiu      $a1, $v0, 0x8
/* 422E8 800416E8 0018CC00 */  sll        $t9, $t8, 16
/* 422EC 800416EC 032C6825 */  or         $t5, $t9, $t4
/* 422F0 800416F0 10000057 */  b          .L80041850
/* 422F4 800416F4 AC4D0004 */   sw        $t5, 0x4($v0)
/* 422F8 800416F8 C5020018 */  lwc1       $f2, 0x18($t0)
.L800416FC:
/* 422FC 800416FC 3C018007 */  lui        $at, %hi(D_80072068)
/* 42300 80041700 D4242068 */  ldc1       $f4, %lo(D_80072068)($at)
/* 42304 80041704 460011A1 */  cvt.d.s    $f6, $f2
/* 42308 80041708 3C018007 */  lui        $at, %hi(D_80072070)
/* 4230C 8004170C 4626203C */  c.lt.d     $f4, $f6
/* 42310 80041710 00000000 */  nop
/* 42314 80041714 45020005 */  bc1fl      .L8004172C
/* 42318 80041718 3C014700 */   lui       $at, (0x47000000 >> 16)
/* 4231C 8004171C C4282070 */  lwc1       $f8, %lo(D_80072070)($at)
/* 42320 80041720 E5080018 */  swc1       $f8, 0x18($t0)
/* 42324 80041724 C5020018 */  lwc1       $f2, 0x18($t0)
/* 42328 80041728 3C014700 */  lui        $at, (0x47000000 >> 16)
.L8004172C:
/* 4232C 8004172C 44816000 */  mtc1       $at, $f12
/* 42330 80041730 01202025 */  or         $a0, $t1, $zero
/* 42334 80041734 27A50046 */  addiu      $a1, $sp, 0x46
/* 42338 80041738 460C1282 */  mul.s      $f10, $f2, $f12
/* 4233C 8004173C 4600540D */  trunc.w.s  $f16, $f10
/* 42340 80041740 440F8000 */  mfc1       $t7, $f16
/* 42344 80041744 448A8000 */  mtc1       $t2, $f16
/* 42348 80041748 448F9000 */  mtc1       $t7, $f18
/* 4234C 8004174C 00000000 */  nop
/* 42350 80041750 46809120 */  cvt.s.w    $f4, $f18
/* 42354 80041754 468084A0 */  cvt.s.w    $f18, $f16
/* 42358 80041758 E5040018 */  swc1       $f4, 0x18($t0)
/* 4235C 8004175C C5060018 */  lwc1       $f6, 0x18($t0)
/* 42360 80041760 460C3203 */  div.s      $f8, $f6, $f12
/* 42364 80041764 C5060020 */  lwc1       $f6, 0x20($t0)
/* 42368 80041768 E5080018 */  swc1       $f8, 0x18($t0)
/* 4236C 8004176C C50A0018 */  lwc1       $f10, 0x18($t0)
/* 42370 80041770 46125102 */  mul.s      $f4, $f10, $f18
/* 42374 80041774 46043000 */  add.s      $f0, $f6, $f4
/* 42378 80041778 4600020D */  trunc.w.s  $f8, $f0
/* 4237C 8004177C 44064000 */  mfc1       $a2, $f8
/* 42380 80041780 00000000 */  nop
/* 42384 80041784 44868000 */  mtc1       $a2, $f16
/* 42388 80041788 00000000 */  nop
/* 4238C 8004178C 468082A0 */  cvt.s.w    $f10, $f16
/* 42390 80041790 460A0481 */  sub.s      $f18, $f0, $f10
/* 42394 80041794 E5120020 */  swc1       $f18, 0x20($t0)
/* 42398 80041798 8FAB0060 */  lw         $t3, 0x60($sp)
/* 4239C 8004179C AFAA0058 */  sw         $t2, 0x58($sp)
/* 423A0 800417A0 AFA80050 */  sw         $t0, 0x50($sp)
/* 423A4 800417A4 AFAB0010 */  sw         $t3, 0x10($sp)
/* 423A8 800417A8 8D390004 */  lw         $t9, 0x4($t1)
/* 423AC 800417AC 0320F809 */  jalr       $t9
/* 423B0 800417B0 00000000 */   nop
/* 423B4 800417B4 8FA80050 */  lw         $t0, 0x50($sp)
/* 423B8 800417B8 87AD0046 */  lh         $t5, 0x46($sp)
/* 423BC 800417BC 3C014700 */  lui        $at, (0x47000000 >> 16)
/* 423C0 800417C0 44812000 */  mtc1       $at, $f4
/* 423C4 800417C4 C5060018 */  lwc1       $f6, 0x18($t0)
/* 423C8 800417C8 3C010800 */  lui        $at, (0x8000000 >> 16)
/* 423CC 800417CC 31AEFFFF */  andi       $t6, $t5, 0xFFFF
/* 423D0 800417D0 8FAA0058 */  lw         $t2, 0x58($sp)
/* 423D4 800417D4 01C17825 */  or         $t7, $t6, $at
/* 423D8 800417D8 AC4F0000 */  sw         $t7, 0x0($v0)
/* 423DC 800417DC 8FB80054 */  lw         $t8, 0x54($sp)
/* 423E0 800417E0 46043202 */  mul.s      $f8, $f6, $f4
/* 423E4 800417E4 000A6840 */  sll        $t5, $t2, 1
/* 423E8 800417E8 87190000 */  lh         $t9, 0x0($t8)
/* 423EC 800417EC 31AEFFFF */  andi       $t6, $t5, 0xFFFF
/* 423F0 800417F0 24580008 */  addiu      $t8, $v0, 0x8
/* 423F4 800417F4 00196400 */  sll        $t4, $t9, 16
/* 423F8 800417F8 018E7825 */  or         $t7, $t4, $t6
/* 423FC 800417FC 4600440D */  trunc.w.s  $f16, $f8
/* 42400 80041800 AC4F0004 */  sw         $t7, 0x4($v0)
/* 42404 80041804 AFB80028 */  sw         $t8, 0x28($sp)
/* 42408 80041808 8D0B0024 */  lw         $t3, 0x24($t0)
/* 4240C 8004180C 44038000 */  mfc1       $v1, $f16
/* 42410 80041810 3C010500 */  lui        $at, (0x5000000 >> 16)
/* 42414 80041814 317900FF */  andi       $t9, $t3, 0xFF
/* 42418 80041818 00196C00 */  sll        $t5, $t9, 16
/* 4241C 8004181C 01A16025 */  or         $t4, $t5, $at
/* 42420 80041820 306EFFFF */  andi       $t6, $v1, 0xFFFF
/* 42424 80041824 018E7825 */  or         $t7, $t4, $t6
/* 42428 80041828 AC4F0008 */  sw         $t7, 0x8($v0)
/* 4242C 8004182C 24450010 */  addiu      $a1, $v0, 0x10
/* 42430 80041830 8D040014 */  lw         $a0, 0x14($t0)
/* 42434 80041834 0C00D374 */  jal        osVirtualToPhysical
/* 42438 80041838 AFA50048 */   sw        $a1, 0x48($sp)
/* 4243C 8004183C 8FB80028 */  lw         $t8, 0x28($sp)
/* 42440 80041840 8FA80050 */  lw         $t0, 0x50($sp)
/* 42444 80041844 8FA50048 */  lw         $a1, 0x48($sp)
/* 42448 80041848 AF020004 */  sw         $v0, 0x4($t8)
/* 4244C 8004184C AD000024 */  sw         $zero, 0x24($t0)
.L80041850:
/* 42450 80041850 00A01025 */  or         $v0, $a1, $zero
.L80041854:
/* 42454 80041854 8FBF001C */  lw         $ra, 0x1C($sp)
/* 42458 80041858 27BD0050 */  addiu      $sp, $sp, 0x50
/* 4245C 8004185C 03E00008 */  jr         $ra
/* 42460 80041860 00000000 */   nop
/* 42464 80041864 00000000 */  nop
/* 42468 80041868 00000000 */  nop
/* 4246C 8004186C 00000000 */  nop
