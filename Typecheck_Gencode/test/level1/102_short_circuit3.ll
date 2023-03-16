@d = dso_local global i32 0
@b = dso_local global i32 0
@a = dso_local global i32 0
declare void @putint(i32)
declare void @putch(i32)
define i32 @set_a(i32 %t3){
B176:
  %t177 = alloca i32, align 4
  store i32 %t3, i32* %t177, align 4
  %t5 = load i32, i32* %t177, align 4
  store i32 %t5, i32* @a, align 4
  %t6 = load i32, i32* @a, align 4
  ret i32 %t6
}
define i32 @set_b(i32 %t7){
B178:
  %t179 = alloca i32, align 4
  store i32 %t7, i32* %t179, align 4
  %t9 = load i32, i32* %t179, align 4
  store i32 %t9, i32* @b, align 4
  %t10 = load i32, i32* @b, align 4
  ret i32 %t10
}
define i32 @set_d(i32 %t11){
B180:
  %t181 = alloca i32, align 4
  store i32 %t11, i32* %t181, align 4
  %t13 = load i32, i32* %t181, align 4
  store i32 %t13, i32* @d, align 4
  %t14 = load i32, i32* @d, align 4
  ret i32 %t14
}
define i32 @main(){
B182:
  %t258 = alloca i32, align 4
  %t257 = alloca i32, align 4
  %t256 = alloca i32, align 4
  %t255 = alloca i32, align 4
  %t254 = alloca i32, align 4
  %t201 = alloca i32, align 4
  store i32 2, i32* @a, align 4
  store i32 3, i32* @b, align 4
  %t17 =  call i32 @set_a(i32 0)
  %t166 = icmp ne i32 0, %t17
  br i1 %t166, label %B185, label %B187
B185:                               	; preds = %B182
  %t19 =  call i32 @set_b(i32 1)
  %t167 = icmp ne i32 0, %t19
  br i1 %t167, label %B183, label %B190
B187:                               	; preds = %B182
  br label %B184
B183:                               	; preds = %B185
  br label %B184
B190:                               	; preds = %B185
  br label %B184
B184:                               	; preds = %B183, %B187, %B190
  %t22 = load i32, i32* @a, align 4
  call void @putint(i32 %t22)
  call void @putch(i32 32)
  %t27 = load i32, i32* @b, align 4
  call void @putint(i32 %t27)
  call void @putch(i32 32)
  store i32 2, i32* @a, align 4
  store i32 3, i32* @b, align 4
  %t34 =  call i32 @set_a(i32 0)
  %t168 = icmp ne i32 0, %t34
  br i1 %t168, label %B194, label %B196
B194:                               	; preds = %B184
  %t36 =  call i32 @set_b(i32 1)
  %t169 = icmp ne i32 0, %t36
  br i1 %t169, label %B192, label %B199
B196:                               	; preds = %B184
  br label %B193
B192:                               	; preds = %B194
  br label %B193
B199:                               	; preds = %B194
  br label %B193
B193:                               	; preds = %B192, %B196, %B199
  %t39 = load i32, i32* @a, align 4
  call void @putint(i32 %t39)
  call void @putch(i32 32)
  %t44 = load i32, i32* @b, align 4
  call void @putint(i32 %t44)
  call void @putch(i32 10)
  store i32 1, i32* %t201, align 4
  store i32 2, i32* @d, align 4
  %t51 = load i32, i32* %t201, align 4
  %t52 = icmp sge i32 %t51, 1
  br i1 %t52, label %B204, label %B206
B204:                               	; preds = %B193
  %t53 =  call i32 @set_d(i32 3)
  %t170 = icmp ne i32 0, %t53
  br i1 %t170, label %B202, label %B209
B206:                               	; preds = %B193
  br label %B203
B202:                               	; preds = %B204
  br label %B203
B209:                               	; preds = %B204
  br label %B203
B203:                               	; preds = %B202, %B206, %B209
  %t56 = load i32, i32* @d, align 4
  call void @putint(i32 %t56)
  call void @putch(i32 32)
  %t61 = load i32, i32* %t201, align 4
  %t62 = icmp sle i32 %t61, 1
  br i1 %t62, label %B211, label %B215
B211:                               	; preds = %B203, %B213
  br label %B212
B215:                               	; preds = %B203
  br label %B213
B212:                               	; preds = %B211, %B218
  %t66 = load i32, i32* @d, align 4
  call void @putint(i32 %t66)
  call void @putch(i32 10)
  %t71 = add i32 2, 1
  %t72 = sub i32 3, %t71
  %t73 = icmp sge i32 16, %t72
  br i1 %t73, label %B220, label %B223
B213:                               	; preds = %B215
  %t63 =  call i32 @set_d(i32 4)
  %t171 = icmp ne i32 0, %t63
  br i1 %t171, label %B211, label %B218
B220:                               	; preds = %B212
  call void @putch(i32 65)
  br label %B221
B223:                               	; preds = %B212
  br label %B221
B218:                               	; preds = %B213
  br label %B212
B221:                               	; preds = %B220, %B223
  %t76 = sub i32 25, 7
  %t77 = mul i32 6, 3
  %t78 = sub i32 36, %t77
  %t79 = icmp ne i32 %t76, %t78
  br i1 %t79, label %B225, label %B228
B225:                               	; preds = %B221
  call void @putch(i32 66)
  br label %B226
B228:                               	; preds = %B221
  br label %B226
B226:                               	; preds = %B225, %B228
  %t82 = icmp slt i32 1, 8
  %t83 = srem i32 7, 2
  %t232 = zext i1 %t82 to i32
  %t84 = icmp ne i32 %t232, %t83
  br i1 %t84, label %B230, label %B234
B230:                               	; preds = %B226
  call void @putch(i32 67)
  br label %B231
B234:                               	; preds = %B226
  br label %B231
B231:                               	; preds = %B230, %B234
  %t87 = icmp sgt i32 3, 4
  %t238 = zext i1 %t87 to i32
  %t88 = icmp eq i32 %t238, 0
  br i1 %t88, label %B236, label %B240
B236:                               	; preds = %B231
  call void @putch(i32 68)
  br label %B237
B240:                               	; preds = %B231
  br label %B237
B237:                               	; preds = %B236, %B240
  %t91 = icmp sle i32 102, 63
  %t244 = zext i1 %t91 to i32
  %t92 = icmp eq i32 1, %t244
  br i1 %t92, label %B242, label %B246
B242:                               	; preds = %B237
  call void @putch(i32 69)
  br label %B243
B246:                               	; preds = %B237
  br label %B243
B243:                               	; preds = %B242, %B246
  %t95 = sub i32 5, 6
  %t96 = icmp eq i32 0, 0
  %t250 = zext i1 %t96 to i32
  %t97 = sub i32 0, %t250
  %t98 = icmp eq i32 %t95, %t97
  br i1 %t98, label %B248, label %B252
B248:                               	; preds = %B243
  call void @putch(i32 70)
  br label %B249
B252:                               	; preds = %B243
  br label %B249
B249:                               	; preds = %B248, %B252
  call void @putch(i32 10)
  store i32 4, i32* %t254, align 4
  store i32 3, i32* %t255, align 4
  store i32 2, i32* %t256, align 4
  store i32 1, i32* %t257, align 4
  store i32 0, i32* %t258, align 4
  br label %B259
B259:                               	; preds = %B249, %B260
  %t108 = load i32, i32* %t258, align 4
  %t172 = icmp ne i32 0, %t108
  br i1 %t172, label %B262, label %B264
B262:                               	; preds = %B259
  %t109 = load i32, i32* %t257, align 4
  %t173 = icmp ne i32 0, %t109
  br i1 %t173, label %B260, label %B267
B264:                               	; preds = %B259
  br label %B261
B260:                               	; preds = %B262
  call void @putch(i32 32)
  br label %B259
B267:                               	; preds = %B262
  br label %B261
B261:                               	; preds = %B264, %B267
  %t113 = load i32, i32* %t258, align 4
  %t174 = icmp ne i32 0, %t113
  br i1 %t174, label %B269, label %B273
B269:                               	; preds = %B261, %B271
  call void @putch(i32 67)
  br label %B270
B273:                               	; preds = %B261
  br label %B271
B270:                               	; preds = %B269, %B276
  %t118 = load i32, i32* %t258, align 4
  %t119 = load i32, i32* %t257, align 4
  %t120 = icmp sge i32 %t118, %t119
  br i1 %t120, label %B278, label %B282
B271:                               	; preds = %B273
  %t114 = load i32, i32* %t257, align 4
  %t175 = icmp ne i32 0, %t114
  br i1 %t175, label %B269, label %B276
B278:                               	; preds = %B270, %B280
  call void @putch(i32 72)
  br label %B279
B282:                               	; preds = %B270
  br label %B280
B276:                               	; preds = %B271
  br label %B270
B279:                               	; preds = %B278, %B285
  %t127 = load i32, i32* %t256, align 4
  %t128 = load i32, i32* %t257, align 4
  %t129 = icmp sge i32 %t127, %t128
  br i1 %t129, label %B289, label %B291
B280:                               	; preds = %B282
  %t121 = load i32, i32* %t257, align 4
  %t122 = load i32, i32* %t258, align 4
  %t123 = icmp sle i32 %t121, %t122
  br i1 %t123, label %B278, label %B285
B289:                               	; preds = %B279
  %t130 = load i32, i32* %t254, align 4
  %t131 = load i32, i32* %t255, align 4
  %t132 = icmp ne i32 %t130, %t131
  br i1 %t132, label %B287, label %B294
B291:                               	; preds = %B279
  br label %B288
B285:                               	; preds = %B280
  br label %B279
B287:                               	; preds = %B289
  call void @putch(i32 73)
  br label %B288
B294:                               	; preds = %B289
  br label %B288
B288:                               	; preds = %B287, %B291, %B294
  %t136 = load i32, i32* %t258, align 4
  %t137 = load i32, i32* %t257, align 4
  %t138 = icmp eq i32 0, %t137
  %t300 = zext i1 %t138 to i32
  %t139 = icmp eq i32 %t136, %t300
  br i1 %t139, label %B299, label %B302
B299:                               	; preds = %B288
  %t140 = load i32, i32* %t255, align 4
  %t141 = load i32, i32* %t255, align 4
  %t142 = icmp slt i32 %t140, %t141
  br i1 %t142, label %B296, label %B305
B302:                               	; preds = %B288
  br label %B298
B296:                               	; preds = %B298, %B299
  call void @putch(i32 74)
  br label %B297
B305:                               	; preds = %B299
  br label %B298
B298:                               	; preds = %B302, %B305
  %t144 = load i32, i32* %t254, align 4
  %t145 = load i32, i32* %t254, align 4
  %t146 = icmp sge i32 %t144, %t145
  br i1 %t146, label %B296, label %B308
B297:                               	; preds = %B296, %B308
  %t150 = load i32, i32* %t258, align 4
  %t151 = load i32, i32* %t257, align 4
  %t152 = icmp eq i32 0, %t151
  %t313 = zext i1 %t152 to i32
  %t153 = icmp eq i32 %t150, %t313
  br i1 %t153, label %B310, label %B315
B308:                               	; preds = %B298
  br label %B297
B310:                               	; preds = %B297, %B317
  call void @putch(i32 75)
  br label %B311
B315:                               	; preds = %B297
  br label %B312
B311:                               	; preds = %B310, %B319, %B322
  call void @putch(i32 10)
  ret i32 0
B312:                               	; preds = %B315
  %t154 = load i32, i32* %t255, align 4
  %t155 = load i32, i32* %t255, align 4
  %t156 = icmp slt i32 %t154, %t155
  br i1 %t156, label %B317, label %B319
B317:                               	; preds = %B312
  %t157 = load i32, i32* %t254, align 4
  %t158 = load i32, i32* %t254, align 4
  %t159 = icmp sge i32 %t157, %t158
  br i1 %t159, label %B310, label %B322
B319:                               	; preds = %B312
  br label %B311
B322:                               	; preds = %B317
  br label %B311
}
