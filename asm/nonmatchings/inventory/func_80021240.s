glabel func_80021240
/* 21E40 80021240 AFA40000 */  sw         $a0, 0x0($sp)
/* 21E44 80021244 308E00FF */  andi       $t6, $a0, 0xFF
/* 21E48 80021248 01C02025 */  or         $a0, $t6, $zero
/* 21E4C 8002124C 00001025 */  or         $v0, $zero, $zero
/* 21E50 80021250 244F0095 */  addiu      $t7, $v0, 0x95
/* 21E54 80021254 3C188009 */  lui        $t8, %hi(gInventory)
/* 21E58 80021258 2718CF78 */  addiu      $t8, $t8, %lo(gInventory)
/* 21E5C 8002125C 3C028009 */  lui        $v0, %hi(D_8008CF77)
/* 21E60 80021260 00001825 */  or         $v1, $zero, $zero
/* 21E64 80021264 2442CF77 */  addiu      $v0, $v0, %lo(D_8008CF77)
/* 21E68 80021268 01F83021 */  addu       $a2, $t7, $t8
/* 21E6C 8002126C 00802825 */  or         $a1, $a0, $zero
/* 21E70 80021270 90D90000 */  lbu        $t9, 0x0($a2)
.L80021274:
/* 21E74 80021274 24C6FFFF */  addiu      $a2, $a2, -0x1
/* 21E78 80021278 14B90002 */  bne        $a1, $t9, .L80021284
/* 21E7C 8002127C 00000000 */   nop
/* 21E80 80021280 24630001 */  addiu      $v1, $v1, 0x1
.L80021284:
/* 21E84 80021284 50C20004 */  beql       $a2, $v0, .L80021298
/* 21E88 80021288 00601025 */   or        $v0, $v1, $zero
/* 21E8C 8002128C 5060FFF9 */  beql       $v1, $zero, .L80021274
/* 21E90 80021290 90D90000 */   lbu       $t9, 0x0($a2)
/* 21E94 80021294 00601025 */  or         $v0, $v1, $zero
.L80021298:
/* 21E98 80021298 03E00008 */  jr         $ra
/* 21E9C 8002129C 00000000 */   nop
