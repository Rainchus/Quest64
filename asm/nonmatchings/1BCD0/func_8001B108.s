glabel func_8001B108
/* 1BD08 8001B108 3C0E8009 */  lui        $t6, %hi(D_80088428)
/* 1BD0C 8001B10C 95CE8428 */  lhu        $t6, %lo(D_80088428)($t6)
/* 1BD10 8001B110 3C038009 */  lui        $v1, %hi(D_80088428)
/* 1BD14 8001B114 24638428 */  addiu      $v1, $v1, %lo(D_80088428)
/* 1BD18 8001B118 11C00007 */  beqz       $t6, .L8001B138
/* 1BD1C 8001B11C 24020100 */   addiu     $v0, $zero, 0x100
/* 1BD20 8001B120 2442FFFF */  addiu      $v0, $v0, -0x1
.L8001B124:
/* 1BD24 8001B124 10400004 */  beqz       $v0, .L8001B138
/* 1BD28 8001B128 24630040 */   addiu     $v1, $v1, 0x40
/* 1BD2C 8001B12C 946F0000 */  lhu        $t7, 0x0($v1)
/* 1BD30 8001B130 55E0FFFC */  bnel       $t7, $zero, .L8001B124
/* 1BD34 8001B134 2442FFFF */   addiu     $v0, $v0, -0x1
.L8001B138:
/* 1BD38 8001B138 10400014 */  beqz       $v0, .L8001B18C
/* 1BD3C 8001B13C 00804025 */   or        $t0, $a0, $zero
/* 1BD40 8001B140 3C028009 */  lui        $v0, %hi(D_80088420)
/* 1BD44 8001B144 24428420 */  addiu      $v0, $v0, %lo(D_80088420)
/* 1BD48 8001B148 00604825 */  or         $t1, $v1, $zero
/* 1BD4C 8001B14C 2499003C */  addiu      $t9, $a0, 0x3C
.L8001B150:
/* 1BD50 8001B150 8D010000 */  lw         $at, 0x0($t0)
/* 1BD54 8001B154 2508000C */  addiu      $t0, $t0, 0xC
/* 1BD58 8001B158 2529000C */  addiu      $t1, $t1, 0xC
/* 1BD5C 8001B15C AD21FFF4 */  sw         $at, -0xC($t1)
/* 1BD60 8001B160 8D01FFF8 */  lw         $at, -0x8($t0)
/* 1BD64 8001B164 AD21FFF8 */  sw         $at, -0x8($t1)
/* 1BD68 8001B168 8D01FFFC */  lw         $at, -0x4($t0)
/* 1BD6C 8001B16C 1519FFF8 */  bne        $t0, $t9, .L8001B150
/* 1BD70 8001B170 AD21FFFC */   sw        $at, -0x4($t1)
/* 1BD74 8001B174 8D010000 */  lw         $at, 0x0($t0)
/* 1BD78 8001B178 AD210000 */  sw         $at, 0x0($t1)
/* 1BD7C 8001B17C 8C4A0000 */  lw         $t2, 0x0($v0)
/* 1BD80 8001B180 254B0001 */  addiu      $t3, $t2, 0x1
/* 1BD84 8001B184 10000002 */  b          .L8001B190
/* 1BD88 8001B188 AC4B0000 */   sw        $t3, 0x0($v0)
.L8001B18C:
/* 1BD8C 8001B18C 00001825 */  or         $v1, $zero, $zero
.L8001B190:
/* 1BD90 8001B190 00601025 */  or         $v0, $v1, $zero
/* 1BD94 8001B194 03E00008 */  jr         $ra
/* 1BD98 8001B198 00000000 */   nop
