.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.8.2 */

# Handwritten function
glabel func_8003CA60
/* 3D660 8003CA60 3C1A8004 */  lui        $k0, %hi(D_8003CA70)
/* 3D664 8003CA64 275ACA70 */  addiu      $k0, $k0, %lo(D_8003CA70)
/* 3D668 8003CA68 03400008 */  jr         $k0
/* 3D66C 8003CA6C 00000000 */   nop
D_8003CA70:
/* 3D670 8003CA70 3C1A8009 */  lui        $k0, %hi(D_800956A0)
/* 3D674 8003CA74 275A56A0 */  addiu      $k0, $k0, %lo(D_800956A0)
/* 3D678 8003CA78 FF410020 */  sd         $at, 0x20($k0)
/* 3D67C 8003CA7C 401B6000 */  mfc0       $k1, $12
/* 3D680 8003CA80 AF5B0118 */  sw         $k1, 0x118($k0)
/* 3D684 8003CA84 2401FFFC */  addiu      $at, $zero, -0x4
/* 3D688 8003CA88 0361D824 */  and        $k1, $k1, $at
/* 3D68C 8003CA8C 409B6000 */  mtc0       $k1, $12
/* 3D690 8003CA90 FF480058 */  sd         $t0, 0x58($k0)
/* 3D694 8003CA94 FF490060 */  sd         $t1, 0x60($k0)
/* 3D698 8003CA98 FF4A0068 */  sd         $t2, 0x68($k0)
/* 3D69C 8003CA9C AF400018 */  sw         $zero, 0x18($k0)
/* 3D6A0 8003CAA0 40086800 */  mfc0       $t0, $13
/* 3D6A4 8003CAA4 03404025 */  or         $t0, $k0, $zero
/* 3D6A8 8003CAA8 3C1A8007 */  lui        $k0, %hi(D_80070A00)
/* 3D6AC 8003CAAC 8F5A0A00 */  lw         $k0, %lo(D_80070A00)($k0)
/* 3D6B0 8003CAB0 DD090020 */  ld         $t1, 0x20($t0)
/* 3D6B4 8003CAB4 FF490020 */  sd         $t1, 0x20($k0)
/* 3D6B8 8003CAB8 DD090118 */  ld         $t1, 0x118($t0)
/* 3D6BC 8003CABC FF490118 */  sd         $t1, 0x118($k0)
/* 3D6C0 8003CAC0 DD090058 */  ld         $t1, 0x58($t0)
/* 3D6C4 8003CAC4 FF490058 */  sd         $t1, 0x58($k0)
/* 3D6C8 8003CAC8 DD090060 */  ld         $t1, 0x60($t0)
/* 3D6CC 8003CACC FF490060 */  sd         $t1, 0x60($k0)
/* 3D6D0 8003CAD0 DD090068 */  ld         $t1, 0x68($t0)
/* 3D6D4 8003CAD4 FF490068 */  sd         $t1, 0x68($k0)
/* 3D6D8 8003CAD8 8F5B0118 */  lw         $k1, 0x118($k0)
/* 3D6DC 8003CADC 00004012 */  mflo       $t0
/* 3D6E0 8003CAE0 FF480108 */  sd         $t0, 0x108($k0)
/* 3D6E4 8003CAE4 00004010 */  mfhi       $t0
/* 3D6E8 8003CAE8 3369FF00 */  andi       $t1, $k1, 0xFF00
/* 3D6EC 8003CAEC FF420028 */  sd         $v0, 0x28($k0)
/* 3D6F0 8003CAF0 FF430030 */  sd         $v1, 0x30($k0)
/* 3D6F4 8003CAF4 FF440038 */  sd         $a0, 0x38($k0)
/* 3D6F8 8003CAF8 FF450040 */  sd         $a1, 0x40($k0)
/* 3D6FC 8003CAFC FF460048 */  sd         $a2, 0x48($k0)
/* 3D700 8003CB00 FF470050 */  sd         $a3, 0x50($k0)
/* 3D704 8003CB04 FF4B0070 */  sd         $t3, 0x70($k0)
/* 3D708 8003CB08 FF4C0078 */  sd         $t4, 0x78($k0)
/* 3D70C 8003CB0C FF4D0080 */  sd         $t5, 0x80($k0)
/* 3D710 8003CB10 FF4E0088 */  sd         $t6, 0x88($k0)
/* 3D714 8003CB14 FF4F0090 */  sd         $t7, 0x90($k0)
/* 3D718 8003CB18 FF500098 */  sd         $s0, 0x98($k0)
/* 3D71C 8003CB1C FF5100A0 */  sd         $s1, 0xA0($k0)
/* 3D720 8003CB20 FF5200A8 */  sd         $s2, 0xA8($k0)
/* 3D724 8003CB24 FF5300B0 */  sd         $s3, 0xB0($k0)
/* 3D728 8003CB28 FF5400B8 */  sd         $s4, 0xB8($k0)
/* 3D72C 8003CB2C FF5500C0 */  sd         $s5, 0xC0($k0)
/* 3D730 8003CB30 FF5600C8 */  sd         $s6, 0xC8($k0)
/* 3D734 8003CB34 FF5700D0 */  sd         $s7, 0xD0($k0)
/* 3D738 8003CB38 FF5800D8 */  sd         $t8, 0xD8($k0)
/* 3D73C 8003CB3C FF5900E0 */  sd         $t9, 0xE0($k0)
/* 3D740 8003CB40 FF5C00E8 */  sd         $gp, 0xE8($k0)
/* 3D744 8003CB44 FF5D00F0 */  sd         $sp, 0xF0($k0)
/* 3D748 8003CB48 FF5E00F8 */  sd         $fp, 0xF8($k0)
/* 3D74C 8003CB4C FF5F0100 */  sd         $ra, 0x100($k0)
/* 3D750 8003CB50 11200011 */  beqz       $t1, .L8003CB98
/* 3D754 8003CB54 FF480110 */   sd        $t0, 0x110($k0)
/* 3D758 8003CB58 3C088007 */  lui        $t0, %hi(D_8006F410)
/* 3D75C 8003CB5C 2508F410 */  addiu      $t0, $t0, %lo(D_8006F410)
/* 3D760 8003CB60 8D080000 */  lw         $t0, 0x0($t0)
/* 3D764 8003CB64 2401FFFF */  addiu      $at, $zero, -0x1
/* 3D768 8003CB68 01015026 */  xor        $t2, $t0, $at
/* 3D76C 8003CB6C 3C01FFFF */  lui        $at, (0xFFFF00FF >> 16)
/* 3D770 8003CB70 314AFF00 */  andi       $t2, $t2, 0xFF00
/* 3D774 8003CB74 342100FF */  ori        $at, $at, (0xFFFF00FF & 0xFFFF)
/* 3D778 8003CB78 012A6025 */  or         $t4, $t1, $t2
/* 3D77C 8003CB7C 03615824 */  and        $t3, $k1, $at
/* 3D780 8003CB80 3108FF00 */  andi       $t0, $t0, 0xFF00
/* 3D784 8003CB84 016C5825 */  or         $t3, $t3, $t4
/* 3D788 8003CB88 01284824 */  and        $t1, $t1, $t0
/* 3D78C 8003CB8C 0361D824 */  and        $k1, $k1, $at
/* 3D790 8003CB90 AF4B0118 */  sw         $t3, 0x118($k0)
/* 3D794 8003CB94 0369D825 */  or         $k1, $k1, $t1
.L8003CB98:
/* 3D798 8003CB98 3C09A430 */  lui        $t1, %hi(D_A430000C)
/* 3D79C 8003CB9C 8D29000C */  lw         $t1, %lo(D_A430000C)($t1)
/* 3D7A0 8003CBA0 1120000B */  beqz       $t1, .L8003CBD0
/* 3D7A4 8003CBA4 00000000 */   nop
/* 3D7A8 8003CBA8 3C088007 */  lui        $t0, %hi(D_8006F410)
/* 3D7AC 8003CBAC 2508F410 */  addiu      $t0, $t0, %lo(D_8006F410)
/* 3D7B0 8003CBB0 8D080000 */  lw         $t0, 0x0($t0)
/* 3D7B4 8003CBB4 8F4C0128 */  lw         $t4, 0x128($k0)
/* 3D7B8 8003CBB8 2401FFFF */  addiu      $at, $zero, -0x1
/* 3D7BC 8003CBBC 00084402 */  srl        $t0, $t0, 16
/* 3D7C0 8003CBC0 01014026 */  xor        $t0, $t0, $at
/* 3D7C4 8003CBC4 3108003F */  andi       $t0, $t0, 0x3F
/* 3D7C8 8003CBC8 010C4024 */  and        $t0, $t0, $t4
/* 3D7CC 8003CBCC 01284825 */  or         $t1, $t1, $t0
.L8003CBD0:
/* 3D7D0 8003CBD0 AF490128 */  sw         $t1, 0x128($k0)
/* 3D7D4 8003CBD4 40087000 */  mfc0       $t0, $14
/* 3D7D8 8003CBD8 AF48011C */  sw         $t0, 0x11C($k0)
/* 3D7DC 8003CBDC 8F480018 */  lw         $t0, 0x18($k0)
/* 3D7E0 8003CBE0 11000014 */  beqz       $t0, .L8003CC34
/* 3D7E4 8003CBE4 00000000 */   nop
/* 3D7E8 8003CBE8 4448F800 */  cfc1       $t0, $31
/* 3D7EC 8003CBEC 00000000 */  nop
/* 3D7F0 8003CBF0 AF48012C */  sw         $t0, 0x12C($k0)
/* 3D7F4 8003CBF4 F7400130 */  sdc1       $f0, 0x130($k0)
/* 3D7F8 8003CBF8 F7420138 */  sdc1       $f2, 0x138($k0)
/* 3D7FC 8003CBFC F7440140 */  sdc1       $f4, 0x140($k0)
/* 3D800 8003CC00 F7460148 */  sdc1       $f6, 0x148($k0)
/* 3D804 8003CC04 F7480150 */  sdc1       $f8, 0x150($k0)
/* 3D808 8003CC08 F74A0158 */  sdc1       $f10, 0x158($k0)
/* 3D80C 8003CC0C F74C0160 */  sdc1       $f12, 0x160($k0)
/* 3D810 8003CC10 F74E0168 */  sdc1       $f14, 0x168($k0)
/* 3D814 8003CC14 F7500170 */  sdc1       $f16, 0x170($k0)
/* 3D818 8003CC18 F7520178 */  sdc1       $f18, 0x178($k0)
/* 3D81C 8003CC1C F7540180 */  sdc1       $f20, 0x180($k0)
/* 3D820 8003CC20 F7560188 */  sdc1       $f22, 0x188($k0)
/* 3D824 8003CC24 F7580190 */  sdc1       $f24, 0x190($k0)
/* 3D828 8003CC28 F75A0198 */  sdc1       $f26, 0x198($k0)
/* 3D82C 8003CC2C F75C01A0 */  sdc1       $f28, 0x1A0($k0)
/* 3D830 8003CC30 F75E01A8 */  sdc1       $f30, 0x1A8($k0)
.L8003CC34:
/* 3D834 8003CC34 40086800 */  mfc0       $t0, $13
/* 3D838 8003CC38 AF480120 */  sw         $t0, 0x120($k0)
/* 3D83C 8003CC3C 24090002 */  addiu      $t1, $zero, 0x2
/* 3D840 8003CC40 A7490010 */  sh         $t1, 0x10($k0)
/* 3D844 8003CC44 3109007C */  andi       $t1, $t0, 0x7C
/* 3D848 8003CC48 240A0024 */  addiu      $t2, $zero, 0x24
/* 3D84C 8003CC4C 112A00B0 */  beq        $t1, $t2, .L8003CF10
/* 3D850 8003CC50 00000000 */   nop
/* 3D854 8003CC54 240A002C */  addiu      $t2, $zero, 0x2C
/* 3D858 8003CC58 112A00FF */  beq        $t1, $t2, .L8003D058
/* 3D85C 8003CC5C 00000000 */   nop
/* 3D860 8003CC60 240A0000 */  addiu      $t2, $zero, 0x0
/* 3D864 8003CC64 152A00C3 */  bne        $t1, $t2, .L8003CF74
/* 3D868 8003CC68 00000000 */   nop
/* 3D86C 8003CC6C 03688024 */  and        $s0, $k1, $t0
.L8003CC70:
/* 3D870 8003CC70 3209FF00 */  andi       $t1, $s0, 0xFF00
/* 3D874 8003CC74 00095302 */  srl        $t2, $t1, 12
/* 3D878 8003CC78 15400003 */  bnez       $t2, .L8003CC88
/* 3D87C 8003CC7C 00000000 */   nop
/* 3D880 8003CC80 00095202 */  srl        $t2, $t1, 8
/* 3D884 8003CC84 214A0010 */  addi       $t2, $t2, 0x10
.L8003CC88:
/* 3D888 8003CC88 3C018007 */  lui        $at, %hi(D_80071EA0)
/* 3D88C 8003CC8C 002A0821 */  addu       $at, $at, $t2
/* 3D890 8003CC90 902A1EA0 */  lbu        $t2, %lo(D_80071EA0)($at)
/* 3D894 8003CC94 3C018007 */  lui        $at, %hi(jtbl_80071EC0)
/* 3D898 8003CC98 002A0821 */  addu       $at, $at, $t2
/* 3D89C 8003CC9C 8C2A1EC0 */  lw         $t2, %lo(jtbl_80071EC0)($at)
/* 3D8A0 8003CCA0 01400008 */  jr         $t2
/* 3D8A4 8003CCA4 00000000 */   nop
glabel .L8003CCA8
/* 3D8A8 8003CCA8 2401DFFF */  addiu      $at, $zero, -0x2001
/* 3D8AC 8003CCAC 1000FFF0 */  b          .L8003CC70
/* 3D8B0 8003CCB0 02018024 */   and       $s0, $s0, $at
glabel .L8003CCB4
/* 3D8B4 8003CCB4 2401BFFF */  addiu      $at, $zero, -0x4001
/* 3D8B8 8003CCB8 1000FFED */  b          .L8003CC70
/* 3D8BC 8003CCBC 02018024 */   and       $s0, $s0, $at
glabel .L8003CCC0
/* 3D8C0 8003CCC0 40095800 */  mfc0       $t1, $11
/* 3D8C4 8003CCC4 40895800 */  mtc0       $t1, $11
/* 3D8C8 8003CCC8 0C00F3E9 */  jal        send_mesg
/* 3D8CC 8003CCCC 24040018 */   addiu     $a0, $zero, 0x18
/* 3D8D0 8003CCD0 3C01FFFF */  lui        $at, (0xFFFF7FFF >> 16)
/* 3D8D4 8003CCD4 34217FFF */  ori        $at, $at, (0xFFFF7FFF & 0xFFFF)
/* 3D8D8 8003CCD8 1000FFE5 */  b          .L8003CC70
/* 3D8DC 8003CCDC 02018024 */   and       $s0, $s0, $at
glabel .L8003CCE0
/* 3D8E0 8003CCE0 2401F7FF */  addiu      $at, $zero, -0x801
/* 3D8E4 8003CCE4 02018024 */  and        $s0, $s0, $at
/* 3D8E8 8003CCE8 240A0004 */  addiu      $t2, $zero, 0x4
/* 3D8EC 8003CCEC 3C018007 */  lui        $at, %hi(D_800709D0)
/* 3D8F0 8003CCF0 002A0821 */  addu       $at, $at, $t2
/* 3D8F4 8003CCF4 8C2A09D0 */  lw         $t2, %lo(D_800709D0)($at)
/* 3D8F8 8003CCF8 3C1D8009 */  lui        $sp, %hi(D_80095850)
/* 3D8FC 8003CCFC 27BD5850 */  addiu      $sp, $sp, %lo(D_80095850)
/* 3D900 8003CD00 24040010 */  addiu      $a0, $zero, 0x10
/* 3D904 8003CD04 11400007 */  beqz       $t2, .L8003CD24
/* 3D908 8003CD08 27BD0FF0 */   addiu     $sp, $sp, 0xFF0
/* 3D90C 8003CD0C 0140F809 */  jalr       $t2
/* 3D910 8003CD10 00000000 */   nop
/* 3D914 8003CD14 10400003 */  beqz       $v0, .L8003CD24
/* 3D918 8003CD18 24040010 */   addiu     $a0, $zero, 0x10
/* 3D91C 8003CD1C 10000082 */  b          .L8003CF28
/* 3D920 8003CD20 00000000 */   nop
.L8003CD24:
/* 3D924 8003CD24 0C00F3E9 */  jal        send_mesg
/* 3D928 8003CD28 00000000 */   nop
/* 3D92C 8003CD2C 1000FFD0 */  b          .L8003CC70
/* 3D930 8003CD30 00000000 */   nop
glabel .L8003CD34
/* 3D934 8003CD34 3C088007 */  lui        $t0, %hi(D_8006F410)
/* 3D938 8003CD38 2508F410 */  addiu      $t0, $t0, %lo(D_8006F410)
/* 3D93C 8003CD3C 8D080000 */  lw         $t0, 0x0($t0)
/* 3D940 8003CD40 3C11A430 */  lui        $s1, %hi(D_A4300008)
/* 3D944 8003CD44 8E310008 */  lw         $s1, %lo(D_A4300008)($s1)
/* 3D948 8003CD48 00084402 */  srl        $t0, $t0, 16
/* 3D94C 8003CD4C 02288824 */  and        $s1, $s1, $t0
/* 3D950 8003CD50 32290001 */  andi       $t1, $s1, 0x1
/* 3D954 8003CD54 11200013 */  beqz       $t1, .L8003CDA4
/* 3D958 8003CD58 00000000 */   nop
/* 3D95C 8003CD5C 3C0CA404 */  lui        $t4, %hi(D_A4040010)
/* 3D960 8003CD60 8D8C0010 */  lw         $t4, %lo(D_A4040010)($t4)
/* 3D964 8003CD64 34098008 */  ori        $t1, $zero, 0x8008
/* 3D968 8003CD68 3C01A404 */  lui        $at, %hi(D_A4040010)
/* 3D96C 8003CD6C 318C0300 */  andi       $t4, $t4, 0x300
/* 3D970 8003CD70 3231003E */  andi       $s1, $s1, 0x3E
/* 3D974 8003CD74 11800007 */  beqz       $t4, .L8003CD94
/* 3D978 8003CD78 AC290010 */   sw        $t1, %lo(D_A4040010)($at)
/* 3D97C 8003CD7C 0C00F3E9 */  jal        send_mesg
/* 3D980 8003CD80 24040020 */   addiu     $a0, $zero, 0x20
/* 3D984 8003CD84 12200038 */  beqz       $s1, .L8003CE68
/* 3D988 8003CD88 00000000 */   nop
/* 3D98C 8003CD8C 10000005 */  b          .L8003CDA4
/* 3D990 8003CD90 00000000 */   nop
.L8003CD94:
/* 3D994 8003CD94 0C00F3E9 */  jal        send_mesg
/* 3D998 8003CD98 24040058 */   addiu     $a0, $zero, 0x58
/* 3D99C 8003CD9C 12200032 */  beqz       $s1, .L8003CE68
/* 3D9A0 8003CDA0 00000000 */   nop
.L8003CDA4:
/* 3D9A4 8003CDA4 32290008 */  andi       $t1, $s1, 0x8
/* 3D9A8 8003CDA8 11200007 */  beqz       $t1, .L8003CDC8
/* 3D9AC 8003CDAC 3C01A440 */   lui       $at, %hi(D_A4400010)
/* 3D9B0 8003CDB0 32310037 */  andi       $s1, $s1, 0x37
/* 3D9B4 8003CDB4 AC200010 */  sw         $zero, %lo(D_A4400010)($at)
/* 3D9B8 8003CDB8 0C00F3E9 */  jal        send_mesg
/* 3D9BC 8003CDBC 24040038 */   addiu     $a0, $zero, 0x38
/* 3D9C0 8003CDC0 12200029 */  beqz       $s1, .L8003CE68
/* 3D9C4 8003CDC4 00000000 */   nop
.L8003CDC8:
/* 3D9C8 8003CDC8 32290004 */  andi       $t1, $s1, 0x4
/* 3D9CC 8003CDCC 11200009 */  beqz       $t1, .L8003CDF4
/* 3D9D0 8003CDD0 00000000 */   nop
/* 3D9D4 8003CDD4 24090001 */  addiu      $t1, $zero, 0x1
/* 3D9D8 8003CDD8 3C01A450 */  lui        $at, %hi(D_A450000C)
/* 3D9DC 8003CDDC 3231003B */  andi       $s1, $s1, 0x3B
/* 3D9E0 8003CDE0 AC29000C */  sw         $t1, %lo(D_A450000C)($at)
/* 3D9E4 8003CDE4 0C00F3E9 */  jal        send_mesg
/* 3D9E8 8003CDE8 24040030 */   addiu     $a0, $zero, 0x30
/* 3D9EC 8003CDEC 1220001E */  beqz       $s1, .L8003CE68
/* 3D9F0 8003CDF0 00000000 */   nop
.L8003CDF4:
/* 3D9F4 8003CDF4 32290002 */  andi       $t1, $s1, 0x2
/* 3D9F8 8003CDF8 11200007 */  beqz       $t1, .L8003CE18
/* 3D9FC 8003CDFC 3C01A480 */   lui       $at, %hi(D_A4800018)
/* 3DA00 8003CE00 3231003D */  andi       $s1, $s1, 0x3D
/* 3DA04 8003CE04 AC200018 */  sw         $zero, %lo(D_A4800018)($at)
/* 3DA08 8003CE08 0C00F3E9 */  jal        send_mesg
/* 3DA0C 8003CE0C 24040028 */   addiu     $a0, $zero, 0x28
/* 3DA10 8003CE10 12200015 */  beqz       $s1, .L8003CE68
/* 3DA14 8003CE14 00000000 */   nop
.L8003CE18:
/* 3DA18 8003CE18 32290010 */  andi       $t1, $s1, 0x10
/* 3DA1C 8003CE1C 11200009 */  beqz       $t1, .L8003CE44
/* 3DA20 8003CE20 00000000 */   nop
/* 3DA24 8003CE24 24090002 */  addiu      $t1, $zero, 0x2
/* 3DA28 8003CE28 3C01A460 */  lui        $at, %hi(D_A4600010)
/* 3DA2C 8003CE2C 3231002F */  andi       $s1, $s1, 0x2F
/* 3DA30 8003CE30 AC290010 */  sw         $t1, %lo(D_A4600010)($at)
/* 3DA34 8003CE34 0C00F3E9 */  jal        send_mesg
/* 3DA38 8003CE38 24040040 */   addiu     $a0, $zero, 0x40
/* 3DA3C 8003CE3C 1220000A */  beqz       $s1, .L8003CE68
/* 3DA40 8003CE40 00000000 */   nop
.L8003CE44:
/* 3DA44 8003CE44 32290020 */  andi       $t1, $s1, 0x20
/* 3DA48 8003CE48 11200007 */  beqz       $t1, .L8003CE68
/* 3DA4C 8003CE4C 00000000 */   nop
/* 3DA50 8003CE50 24090800 */  addiu      $t1, $zero, 0x800
/* 3DA54 8003CE54 3C01A430 */  lui        $at, %hi(D_A4300000)
/* 3DA58 8003CE58 3231001F */  andi       $s1, $s1, 0x1F
/* 3DA5C 8003CE5C AC290000 */  sw         $t1, %lo(D_A4300000)($at)
/* 3DA60 8003CE60 0C00F3E9 */  jal        send_mesg
/* 3DA64 8003CE64 24040048 */   addiu     $a0, $zero, 0x48
.L8003CE68:
/* 3DA68 8003CE68 2401FBFF */  addiu      $at, $zero, -0x401
/* 3DA6C 8003CE6C 1000FF80 */  b          .L8003CC70
/* 3DA70 8003CE70 02018024 */   and       $s0, $s0, $at
glabel .L8003CE74
/* 3DA74 8003CE74 8F5B0118 */  lw         $k1, 0x118($k0)
/* 3DA78 8003CE78 2401EFFF */  addiu      $at, $zero, -0x1001
/* 3DA7C 8003CE7C 3C098007 */  lui        $t1, %hi(D_8006F40C)
/* 3DA80 8003CE80 0361D824 */  and        $k1, $k1, $at
/* 3DA84 8003CE84 AF5B0118 */  sw         $k1, 0x118($k0)
/* 3DA88 8003CE88 2529F40C */  addiu      $t1, $t1, %lo(D_8006F40C)
/* 3DA8C 8003CE8C 8D2A0000 */  lw         $t2, 0x0($t1)
/* 3DA90 8003CE90 11400003 */  beqz       $t2, .L8003CEA0
/* 3DA94 8003CE94 2401EFFF */   addiu     $at, $zero, -0x1001
/* 3DA98 8003CE98 10000023 */  b          .L8003CF28
/* 3DA9C 8003CE9C 02018024 */   and       $s0, $s0, $at
.L8003CEA0:
/* 3DAA0 8003CEA0 240A0001 */  addiu      $t2, $zero, 0x1
/* 3DAA4 8003CEA4 AD2A0000 */  sw         $t2, 0x0($t1)
/* 3DAA8 8003CEA8 0C00F3E9 */  jal        send_mesg
/* 3DAAC 8003CEAC 24040070 */   addiu     $a0, $zero, 0x70
/* 3DAB0 8003CEB0 3C0A8007 */  lui        $t2, %hi(D_800709F8)
/* 3DAB4 8003CEB4 8D4A09F8 */  lw         $t2, %lo(D_800709F8)($t2)
/* 3DAB8 8003CEB8 2401EFFF */  addiu      $at, $zero, -0x1001
/* 3DABC 8003CEBC 02018024 */  and        $s0, $s0, $at
/* 3DAC0 8003CEC0 8D5B0118 */  lw         $k1, 0x118($t2)
/* 3DAC4 8003CEC4 0361D824 */  and        $k1, $k1, $at
/* 3DAC8 8003CEC8 10000017 */  b          .L8003CF28
/* 3DACC 8003CECC AD5B0118 */   sw        $k1, 0x118($t2)
glabel .L8003CED0
/* 3DAD0 8003CED0 2401FDFF */  addiu      $at, $zero, -0x201
/* 3DAD4 8003CED4 01014024 */  and        $t0, $t0, $at
/* 3DAD8 8003CED8 40886800 */  mtc0       $t0, $13
/* 3DADC 8003CEDC 0C00F3E9 */  jal        send_mesg
/* 3DAE0 8003CEE0 24040008 */   addiu     $a0, $zero, 0x8
/* 3DAE4 8003CEE4 2401FDFF */  addiu      $at, $zero, -0x201
/* 3DAE8 8003CEE8 1000FF61 */  b          .L8003CC70
/* 3DAEC 8003CEEC 02018024 */   and       $s0, $s0, $at
glabel .L8003CEF0
/* 3DAF0 8003CEF0 2401FEFF */  addiu      $at, $zero, -0x101
/* 3DAF4 8003CEF4 01014024 */  and        $t0, $t0, $at
/* 3DAF8 8003CEF8 40886800 */  mtc0       $t0, $13
/* 3DAFC 8003CEFC 0C00F3E9 */  jal        send_mesg
/* 3DB00 8003CF00 24040000 */   addiu     $a0, $zero, 0x0
/* 3DB04 8003CF04 2401FEFF */  addiu      $at, $zero, -0x101
/* 3DB08 8003CF08 1000FF59 */  b          .L8003CC70
/* 3DB0C 8003CF0C 02018024 */   and       $s0, $s0, $at
.L8003CF10:
/* 3DB10 8003CF10 24090001 */  addiu      $t1, $zero, 0x1
/* 3DB14 8003CF14 A7490012 */  sh         $t1, 0x12($k0)
/* 3DB18 8003CF18 0C00F3E9 */  jal        send_mesg
/* 3DB1C 8003CF1C 24040050 */   addiu     $a0, $zero, 0x50
/* 3DB20 8003CF20 10000001 */  b          .L8003CF28
/* 3DB24 8003CF24 00000000 */   nop
glabel .L8003CF28
/* 3DB28 8003CF28 3C0A8007 */  lui        $t2, %hi(D_800709F8)
/* 3DB2C 8003CF2C 8D4A09F8 */  lw         $t2, %lo(D_800709F8)($t2)
/* 3DB30 8003CF30 8F490004 */  lw         $t1, 0x4($k0)
/* 3DB34 8003CF34 8D4B0004 */  lw         $t3, 0x4($t2)
/* 3DB38 8003CF38 012B082A */  slt        $at, $t1, $t3
/* 3DB3C 8003CF3C 10200007 */  beqz       $at, .L8003CF5C
/* 3DB40 8003CF40 00000000 */   nop
/* 3DB44 8003CF44 3C048007 */  lui        $a0, %hi(D_800709F8)
/* 3DB48 8003CF48 03402825 */  or         $a1, $k0, $zero
/* 3DB4C 8003CF4C 0C00F463 */  jal        __osEnqueueThread
/* 3DB50 8003CF50 248409F8 */   addiu     $a0, $a0, %lo(D_800709F8)
/* 3DB54 8003CF54 0800F479 */  j          __osDispatchThread
/* 3DB58 8003CF58 00000000 */   nop
.L8003CF5C:
/* 3DB5C 8003CF5C 3C098007 */  lui        $t1, %hi(D_800709F8)
/* 3DB60 8003CF60 252909F8 */  addiu      $t1, $t1, %lo(D_800709F8)
/* 3DB64 8003CF64 8D2A0000 */  lw         $t2, 0x0($t1)
/* 3DB68 8003CF68 AF4A0000 */  sw         $t2, 0x0($k0)
/* 3DB6C 8003CF6C 0800F479 */  j          __osDispatchThread
/* 3DB70 8003CF70 AD3A0000 */   sw        $k0, 0x0($t1)
.L8003CF74:
/* 3DB74 8003CF74 3C018007 */  lui        $at, %hi(D_80070A04)
/* 3DB78 8003CF78 AC3A0A04 */  sw         $k0, %lo(D_80070A04)($at)
/* 3DB7C 8003CF7C 24090001 */  addiu      $t1, $zero, 0x1
/* 3DB80 8003CF80 A7490010 */  sh         $t1, 0x10($k0)
/* 3DB84 8003CF84 24090002 */  addiu      $t1, $zero, 0x2
/* 3DB88 8003CF88 A7490012 */  sh         $t1, 0x12($k0)
/* 3DB8C 8003CF8C 400A4000 */  mfc0       $t2, $8
/* 3DB90 8003CF90 AF4A0124 */  sw         $t2, 0x124($k0)
/* 3DB94 8003CF94 0C00F3E9 */  jal        send_mesg
/* 3DB98 8003CF98 24040060 */   addiu     $a0, $zero, 0x60
/* 3DB9C 8003CF9C 0800F479 */  j          __osDispatchThread
/* 3DBA0 8003CFA0 00000000 */   nop

# Handwritten function
glabel send_mesg
/* 3DBA4 8003CFA4 3C0A8009 */  lui        $t2, %hi(D_80093F20)
/* 3DBA8 8003CFA8 254A3F20 */  addiu      $t2, $t2, %lo(D_80093F20)
/* 3DBAC 8003CFAC 01445021 */  addu       $t2, $t2, $a0
/* 3DBB0 8003CFB0 8D490000 */  lw         $t1, 0x0($t2)
/* 3DBB4 8003CFB4 03E09025 */  or         $s2, $ra, $zero
/* 3DBB8 8003CFB8 11200025 */  beqz       $t1, .L8003D050
/* 3DBBC 8003CFBC 00000000 */   nop
/* 3DBC0 8003CFC0 8D2B0008 */  lw         $t3, 0x8($t1)
/* 3DBC4 8003CFC4 8D2C0010 */  lw         $t4, 0x10($t1)
/* 3DBC8 8003CFC8 016C082A */  slt        $at, $t3, $t4
/* 3DBCC 8003CFCC 10200020 */  beqz       $at, .L8003D050
/* 3DBD0 8003CFD0 00000000 */   nop
/* 3DBD4 8003CFD4 8D2D000C */  lw         $t5, 0xC($t1)
/* 3DBD8 8003CFD8 01AB6821 */  addu       $t5, $t5, $t3
/* 3DBDC 8003CFDC 01AC001A */  div        $zero, $t5, $t4
/* 3DBE0 8003CFE0 15800002 */  bnez       $t4, .L8003CFEC
/* 3DBE4 8003CFE4 00000000 */   nop
/* 3DBE8 8003CFE8 0007000D */  break      7
.L8003CFEC:
/* 3DBEC 8003CFEC 2401FFFF */  addiu      $at, $zero, -0x1
/* 3DBF0 8003CFF0 15810004 */  bne        $t4, $at, .L8003D004
/* 3DBF4 8003CFF4 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 3DBF8 8003CFF8 15A10002 */  bne        $t5, $at, .L8003D004
/* 3DBFC 8003CFFC 00000000 */   nop
/* 3DC00 8003D000 0006000D */  break      6
.L8003D004:
/* 3DC04 8003D004 8D2C0014 */  lw         $t4, 0x14($t1)
/* 3DC08 8003D008 00006810 */  mfhi       $t5
/* 3DC0C 8003D00C 000D6880 */  sll        $t5, $t5, 2
/* 3DC10 8003D010 018D6021 */  addu       $t4, $t4, $t5
/* 3DC14 8003D014 8D4D0004 */  lw         $t5, 0x4($t2)
/* 3DC18 8003D018 256A0001 */  addiu      $t2, $t3, 0x1
/* 3DC1C 8003D01C AD8D0000 */  sw         $t5, 0x0($t4)
/* 3DC20 8003D020 AD2A0008 */  sw         $t2, 0x8($t1)
/* 3DC24 8003D024 8D2A0000 */  lw         $t2, 0x0($t1)
/* 3DC28 8003D028 8D4B0000 */  lw         $t3, 0x0($t2)
/* 3DC2C 8003D02C 11600008 */  beqz       $t3, .L8003D050
/* 3DC30 8003D030 00000000 */   nop
/* 3DC34 8003D034 0C00F475 */  jal        __osPopThread
/* 3DC38 8003D038 01202025 */   or        $a0, $t1, $zero
/* 3DC3C 8003D03C 00405025 */  or         $t2, $v0, $zero
/* 3DC40 8003D040 3C048007 */  lui        $a0, %hi(D_800709F8)
/* 3DC44 8003D044 01402825 */  or         $a1, $t2, $zero
/* 3DC48 8003D048 0C00F463 */  jal        __osEnqueueThread
/* 3DC4C 8003D04C 248409F8 */   addiu     $a0, $a0, %lo(D_800709F8)
.L8003D050:
/* 3DC50 8003D050 02400008 */  jr         $s2
/* 3DC54 8003D054 00000000 */   nop
.L8003D058:
/* 3DC58 8003D058 3C013000 */  lui        $at, (0x30000000 >> 16)
/* 3DC5C 8003D05C 01014824 */  and        $t1, $t0, $at
/* 3DC60 8003D060 00094F02 */  srl        $t1, $t1, 28
/* 3DC64 8003D064 240A0001 */  addiu      $t2, $zero, 0x1
/* 3DC68 8003D068 152AFFC2 */  bne        $t1, $t2, .L8003CF74
/* 3DC6C 8003D06C 00000000 */   nop
/* 3DC70 8003D070 8F5B0118 */  lw         $k1, 0x118($k0)
/* 3DC74 8003D074 3C012000 */  lui        $at, (0x20000000 >> 16)
/* 3DC78 8003D078 24090001 */  addiu      $t1, $zero, 0x1
/* 3DC7C 8003D07C 0361D825 */  or         $k1, $k1, $at
/* 3DC80 8003D080 AF490018 */  sw         $t1, 0x18($k0)
/* 3DC84 8003D084 1000FFB5 */  b          .L8003CF5C
/* 3DC88 8003D088 AF5B0118 */   sw        $k1, 0x118($k0)

# Handwritten function
glabel __osEnqueueAndYield
/* 3DC8C 8003D08C 3C058007 */  lui        $a1, %hi(D_80070A00)
/* 3DC90 8003D090 8CA50A00 */  lw         $a1, %lo(D_80070A00)($a1)
/* 3DC94 8003D094 40086000 */  mfc0       $t0, $12
/* 3DC98 8003D098 8CBB0018 */  lw         $k1, 0x18($a1)
/* 3DC9C 8003D09C 35080002 */  ori        $t0, $t0, 0x2
/* 3DCA0 8003D0A0 ACA80118 */  sw         $t0, 0x118($a1)
/* 3DCA4 8003D0A4 FCB00098 */  sd         $s0, 0x98($a1)
/* 3DCA8 8003D0A8 FCB100A0 */  sd         $s1, 0xA0($a1)
/* 3DCAC 8003D0AC FCB200A8 */  sd         $s2, 0xA8($a1)
/* 3DCB0 8003D0B0 FCB300B0 */  sd         $s3, 0xB0($a1)
/* 3DCB4 8003D0B4 FCB400B8 */  sd         $s4, 0xB8($a1)
/* 3DCB8 8003D0B8 FCB500C0 */  sd         $s5, 0xC0($a1)
/* 3DCBC 8003D0BC FCB600C8 */  sd         $s6, 0xC8($a1)
/* 3DCC0 8003D0C0 FCB700D0 */  sd         $s7, 0xD0($a1)
/* 3DCC4 8003D0C4 FCBC00E8 */  sd         $gp, 0xE8($a1)
/* 3DCC8 8003D0C8 FCBD00F0 */  sd         $sp, 0xF0($a1)
/* 3DCCC 8003D0CC FCBE00F8 */  sd         $fp, 0xF8($a1)
/* 3DCD0 8003D0D0 FCBF0100 */  sd         $ra, 0x100($a1)
/* 3DCD4 8003D0D4 13600009 */  beqz       $k1, .L8003D0FC
/* 3DCD8 8003D0D8 ACBF011C */   sw        $ra, 0x11C($a1)
/* 3DCDC 8003D0DC 445BF800 */  cfc1       $k1, $31
/* 3DCE0 8003D0E0 F4B40180 */  sdc1       $f20, 0x180($a1)
/* 3DCE4 8003D0E4 F4B60188 */  sdc1       $f22, 0x188($a1)
/* 3DCE8 8003D0E8 F4B80190 */  sdc1       $f24, 0x190($a1)
/* 3DCEC 8003D0EC F4BA0198 */  sdc1       $f26, 0x198($a1)
/* 3DCF0 8003D0F0 F4BC01A0 */  sdc1       $f28, 0x1A0($a1)
/* 3DCF4 8003D0F4 F4BE01A8 */  sdc1       $f30, 0x1A8($a1)
/* 3DCF8 8003D0F8 ACBB012C */  sw         $k1, 0x12C($a1)
.L8003D0FC:
/* 3DCFC 8003D0FC 8CBB0118 */  lw         $k1, 0x118($a1)
/* 3DD00 8003D100 3369FF00 */  andi       $t1, $k1, 0xFF00
/* 3DD04 8003D104 1120000D */  beqz       $t1, .L8003D13C
/* 3DD08 8003D108 00000000 */   nop
/* 3DD0C 8003D10C 3C088007 */  lui        $t0, %hi(D_8006F410)
/* 3DD10 8003D110 2508F410 */  addiu      $t0, $t0, %lo(D_8006F410)
/* 3DD14 8003D114 8D080000 */  lw         $t0, 0x0($t0)
/* 3DD18 8003D118 2401FFFF */  addiu      $at, $zero, -0x1
/* 3DD1C 8003D11C 01014026 */  xor        $t0, $t0, $at
/* 3DD20 8003D120 3C01FFFF */  lui        $at, (0xFFFF00FF >> 16)
/* 3DD24 8003D124 3108FF00 */  andi       $t0, $t0, 0xFF00
/* 3DD28 8003D128 342100FF */  ori        $at, $at, (0xFFFF00FF & 0xFFFF)
/* 3DD2C 8003D12C 01284825 */  or         $t1, $t1, $t0
/* 3DD30 8003D130 0361D824 */  and        $k1, $k1, $at
/* 3DD34 8003D134 0369D825 */  or         $k1, $k1, $t1
/* 3DD38 8003D138 ACBB0118 */  sw         $k1, 0x118($a1)
.L8003D13C:
/* 3DD3C 8003D13C 3C1BA430 */  lui        $k1, %hi(D_A430000C)
/* 3DD40 8003D140 8F7B000C */  lw         $k1, %lo(D_A430000C)($k1)
/* 3DD44 8003D144 1360000B */  beqz       $k1, .L8003D174
/* 3DD48 8003D148 00000000 */   nop
/* 3DD4C 8003D14C 3C1A8007 */  lui        $k0, %hi(D_8006F410)
/* 3DD50 8003D150 275AF410 */  addiu      $k0, $k0, %lo(D_8006F410)
/* 3DD54 8003D154 8F5A0000 */  lw         $k0, 0x0($k0)
/* 3DD58 8003D158 8CA80128 */  lw         $t0, 0x128($a1)
/* 3DD5C 8003D15C 2401FFFF */  addiu      $at, $zero, -0x1
/* 3DD60 8003D160 001AD402 */  srl        $k0, $k0, 16
/* 3DD64 8003D164 0341D026 */  xor        $k0, $k0, $at
/* 3DD68 8003D168 335A003F */  andi       $k0, $k0, 0x3F
/* 3DD6C 8003D16C 0348D024 */  and        $k0, $k0, $t0
/* 3DD70 8003D170 037AD825 */  or         $k1, $k1, $k0
.L8003D174:
/* 3DD74 8003D174 10800003 */  beqz       $a0, .L8003D184
/* 3DD78 8003D178 ACBB0128 */   sw        $k1, 0x128($a1)
/* 3DD7C 8003D17C 0C00F463 */  jal        __osEnqueueThread
/* 3DD80 8003D180 00000000 */   nop
.L8003D184:
/* 3DD84 8003D184 0800F479 */  j          __osDispatchThread
/* 3DD88 8003D188 00000000 */   nop

glabel __osEnqueueThread
/* 3DD8C 8003D18C 8C980000 */  lw         $t8, 0x0($a0)
/* 3DD90 8003D190 8CAF0004 */  lw         $t7, 0x4($a1)
/* 3DD94 8003D194 0080C825 */  or         $t9, $a0, $zero
/* 3DD98 8003D198 8F0E0004 */  lw         $t6, 0x4($t8)
/* 3DD9C 8003D19C 01CF082A */  slt        $at, $t6, $t7
/* 3DDA0 8003D1A0 14200007 */  bnez       $at, .L8003D1C0
/* 3DDA4 8003D1A4 00000000 */   nop
.L8003D1A8:
/* 3DDA8 8003D1A8 0300C825 */  or         $t9, $t8, $zero
/* 3DDAC 8003D1AC 8F180000 */  lw         $t8, 0x0($t8)
/* 3DDB0 8003D1B0 8F0E0004 */  lw         $t6, 0x4($t8)
/* 3DDB4 8003D1B4 01CF082A */  slt        $at, $t6, $t7
/* 3DDB8 8003D1B8 1020FFFB */  beqz       $at, .L8003D1A8
/* 3DDBC 8003D1BC 00000000 */   nop
.L8003D1C0:
/* 3DDC0 8003D1C0 8F380000 */  lw         $t8, 0x0($t9)
/* 3DDC4 8003D1C4 ACB80000 */  sw         $t8, 0x0($a1)
/* 3DDC8 8003D1C8 AF250000 */  sw         $a1, 0x0($t9)
/* 3DDCC 8003D1CC 03E00008 */  jr         $ra
/* 3DDD0 8003D1D0 ACA40008 */   sw        $a0, 0x8($a1)

glabel __osPopThread
/* 3DDD4 8003D1D4 8C820000 */  lw         $v0, 0x0($a0)
/* 3DDD8 8003D1D8 8C590000 */  lw         $t9, 0x0($v0)
/* 3DDDC 8003D1DC 03E00008 */  jr         $ra
/* 3DDE0 8003D1E0 AC990000 */   sw        $t9, 0x0($a0)

# Handwritten function
glabel __osDispatchThread
/* 3DDE4 8003D1E4 3C048007 */  lui        $a0, %hi(D_800709F8)
/* 3DDE8 8003D1E8 0C00F475 */  jal        __osPopThread
/* 3DDEC 8003D1EC 248409F8 */   addiu     $a0, $a0, %lo(D_800709F8)
/* 3DDF0 8003D1F0 3C018007 */  lui        $at, %hi(D_80070A00)
/* 3DDF4 8003D1F4 AC220A00 */  sw         $v0, %lo(D_80070A00)($at)
/* 3DDF8 8003D1F8 24080004 */  addiu      $t0, $zero, 0x4
/* 3DDFC 8003D1FC A4480010 */  sh         $t0, 0x10($v0)
/* 3DE00 8003D200 0040D025 */  or         $k0, $v0, $zero
/* 3DE04 8003D204 3C088007 */  lui        $t0, %hi(D_8006F410)
/* 3DE08 8003D208 8F5B0118 */  lw         $k1, 0x118($k0)
/* 3DE0C 8003D20C 2508F410 */  addiu      $t0, $t0, %lo(D_8006F410)
/* 3DE10 8003D210 8D080000 */  lw         $t0, 0x0($t0)
/* 3DE14 8003D214 3C01FFFF */  lui        $at, (0xFFFF00FF >> 16)
/* 3DE18 8003D218 3369FF00 */  andi       $t1, $k1, 0xFF00
/* 3DE1C 8003D21C 342100FF */  ori        $at, $at, (0xFFFF00FF & 0xFFFF)
/* 3DE20 8003D220 3108FF00 */  andi       $t0, $t0, 0xFF00
/* 3DE24 8003D224 01284824 */  and        $t1, $t1, $t0
/* 3DE28 8003D228 0361D824 */  and        $k1, $k1, $at
/* 3DE2C 8003D22C 0369D825 */  or         $k1, $k1, $t1
/* 3DE30 8003D230 409B6000 */  mtc0       $k1, $12
/* 3DE34 8003D234 DF5B0108 */  ld         $k1, 0x108($k0)
/* 3DE38 8003D238 DF410020 */  ld         $at, 0x20($k0)
/* 3DE3C 8003D23C DF420028 */  ld         $v0, 0x28($k0)
/* 3DE40 8003D240 03600013 */  mtlo       $k1
/* 3DE44 8003D244 DF5B0110 */  ld         $k1, 0x110($k0)
/* 3DE48 8003D248 DF430030 */  ld         $v1, 0x30($k0)
/* 3DE4C 8003D24C DF440038 */  ld         $a0, 0x38($k0)
/* 3DE50 8003D250 DF450040 */  ld         $a1, 0x40($k0)
/* 3DE54 8003D254 DF460048 */  ld         $a2, 0x48($k0)
/* 3DE58 8003D258 DF470050 */  ld         $a3, 0x50($k0)
/* 3DE5C 8003D25C DF480058 */  ld         $t0, 0x58($k0)
/* 3DE60 8003D260 DF490060 */  ld         $t1, 0x60($k0)
/* 3DE64 8003D264 DF4A0068 */  ld         $t2, 0x68($k0)
/* 3DE68 8003D268 DF4B0070 */  ld         $t3, 0x70($k0)
/* 3DE6C 8003D26C DF4C0078 */  ld         $t4, 0x78($k0)
/* 3DE70 8003D270 DF4D0080 */  ld         $t5, 0x80($k0)
/* 3DE74 8003D274 DF4E0088 */  ld         $t6, 0x88($k0)
/* 3DE78 8003D278 DF4F0090 */  ld         $t7, 0x90($k0)
/* 3DE7C 8003D27C DF500098 */  ld         $s0, 0x98($k0)
/* 3DE80 8003D280 DF5100A0 */  ld         $s1, 0xA0($k0)
/* 3DE84 8003D284 DF5200A8 */  ld         $s2, 0xA8($k0)
/* 3DE88 8003D288 DF5300B0 */  ld         $s3, 0xB0($k0)
/* 3DE8C 8003D28C DF5400B8 */  ld         $s4, 0xB8($k0)
/* 3DE90 8003D290 DF5500C0 */  ld         $s5, 0xC0($k0)
/* 3DE94 8003D294 DF5600C8 */  ld         $s6, 0xC8($k0)
/* 3DE98 8003D298 DF5700D0 */  ld         $s7, 0xD0($k0)
/* 3DE9C 8003D29C DF5800D8 */  ld         $t8, 0xD8($k0)
/* 3DEA0 8003D2A0 DF5900E0 */  ld         $t9, 0xE0($k0)
/* 3DEA4 8003D2A4 DF5C00E8 */  ld         $gp, 0xE8($k0)
/* 3DEA8 8003D2A8 03600011 */  mthi       $k1
/* 3DEAC 8003D2AC DF5D00F0 */  ld         $sp, 0xF0($k0)
/* 3DEB0 8003D2B0 DF5E00F8 */  ld         $fp, 0xF8($k0)
/* 3DEB4 8003D2B4 DF5F0100 */  ld         $ra, 0x100($k0)
/* 3DEB8 8003D2B8 8F5B011C */  lw         $k1, 0x11C($k0)
/* 3DEBC 8003D2BC 409B7000 */  mtc0       $k1, $14
/* 3DEC0 8003D2C0 8F5B0018 */  lw         $k1, 0x18($k0)
/* 3DEC4 8003D2C4 13600013 */  beqz       $k1, .L8003D314
/* 3DEC8 8003D2C8 00000000 */   nop
/* 3DECC 8003D2CC 8F5B012C */  lw         $k1, 0x12C($k0)
/* 3DED0 8003D2D0 44DBF800 */  ctc1       $k1, $31
/* 3DED4 8003D2D4 D7400130 */  ldc1       $f0, 0x130($k0)
/* 3DED8 8003D2D8 D7420138 */  ldc1       $f2, 0x138($k0)
/* 3DEDC 8003D2DC D7440140 */  ldc1       $f4, 0x140($k0)
/* 3DEE0 8003D2E0 D7460148 */  ldc1       $f6, 0x148($k0)
/* 3DEE4 8003D2E4 D7480150 */  ldc1       $f8, 0x150($k0)
/* 3DEE8 8003D2E8 D74A0158 */  ldc1       $f10, 0x158($k0)
/* 3DEEC 8003D2EC D74C0160 */  ldc1       $f12, 0x160($k0)
/* 3DEF0 8003D2F0 D74E0168 */  ldc1       $f14, 0x168($k0)
/* 3DEF4 8003D2F4 D7500170 */  ldc1       $f16, 0x170($k0)
/* 3DEF8 8003D2F8 D7520178 */  ldc1       $f18, 0x178($k0)
/* 3DEFC 8003D2FC D7540180 */  ldc1       $f20, 0x180($k0)
/* 3DF00 8003D300 D7560188 */  ldc1       $f22, 0x188($k0)
/* 3DF04 8003D304 D7580190 */  ldc1       $f24, 0x190($k0)
/* 3DF08 8003D308 D75A0198 */  ldc1       $f26, 0x198($k0)
/* 3DF0C 8003D30C D75C01A0 */  ldc1       $f28, 0x1A0($k0)
/* 3DF10 8003D310 D75E01A8 */  ldc1       $f30, 0x1A8($k0)
.L8003D314:
/* 3DF14 8003D314 8F5B0128 */  lw         $k1, 0x128($k0)
/* 3DF18 8003D318 3C1A8007 */  lui        $k0, %hi(D_8006F410)
/* 3DF1C 8003D31C 275AF410 */  addiu      $k0, $k0, %lo(D_8006F410)
/* 3DF20 8003D320 8F5A0000 */  lw         $k0, 0x0($k0)
/* 3DF24 8003D324 001AD402 */  srl        $k0, $k0, 16
/* 3DF28 8003D328 037AD824 */  and        $k1, $k1, $k0
/* 3DF2C 8003D32C 001BD840 */  sll        $k1, $k1, 1
/* 3DF30 8003D330 3C1A8007 */  lui        $k0, %hi(D_80071AB0)
/* 3DF34 8003D334 275A1AB0 */  addiu      $k0, $k0, %lo(D_80071AB0)
/* 3DF38 8003D338 037AD821 */  addu       $k1, $k1, $k0
/* 3DF3C 8003D33C 977B0000 */  lhu        $k1, 0x0($k1)
/* 3DF40 8003D340 3C1AA430 */  lui        $k0, %hi(D_A430000C)
/* 3DF44 8003D344 275A000C */  addiu      $k0, $k0, %lo(D_A430000C)
/* 3DF48 8003D348 AF5B0000 */  sw         $k1, 0x0($k0)
/* 3DF4C 8003D34C 00000000 */  nop
/* 3DF50 8003D350 00000000 */  nop
/* 3DF54 8003D354 00000000 */  nop
/* 3DF58 8003D358 00000000 */  nop
/* 3DF5C 8003D35C 42000018 */  eret
D_8003D360:
/* 3DF60 8003D360 0C011E8C */  jal        osDestroyThread
/* 3DF64 8003D364 00002025 */   or        $a0, $zero, $zero
/* 3DF68 8003D368 00000000 */  nop
/* 3DF6C 8003D36C 00000000 */  nop
