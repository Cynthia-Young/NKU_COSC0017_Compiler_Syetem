@g = dso_local global i32 0
@h = dso_local global i32 0
@f = dso_local global i32 0
@e = dso_local global i32 0
define i32 @EightWhile(){
B94:
  %t98 = alloca i32, align 4
  %t97 = alloca i32, align 4
  %t96 = alloca i32, align 4
  %t95 = alloca i32, align 4
  store i32 5, i32* %t95, align 4
  store i32 6, i32* %t96, align 4
  store i32 7, i32* %t97, align 4
  store i32 10, i32* %t98, align 4
  br label %B99
B99:                               	; preds = %B94, %B107
  %t12 = load i32, i32* %t95, align 4
  %t13 = icmp slt i32 %t12, 20
  br i1 %t13, label %B100, label %B103
B100:                               	; preds = %B99
  %t15 = load i32, i32* %t95, align 4
  %t16 = add i32 %t15, 3
  store i32 %t16, i32* %t95, align 4
  br label %B105
B103:                               	; preds = %B99
  br label %B101
B105:                               	; preds = %B100, %B113
  %t17 = load i32, i32* %t96, align 4
  %t18 = icmp slt i32 %t17, 10
  br i1 %t18, label %B106, label %B109
B101:                               	; preds = %B103
  %t73 = load i32, i32* %t95, align 4
  %t74 = load i32, i32* %t96, align 4
  %t75 = load i32, i32* %t98, align 4
  %t76 = add i32 %t74, %t75
  %t77 = add i32 %t73, %t76
  %t78 = load i32, i32* %t97, align 4
  %t79 = add i32 %t77, %t78
  %t80 = load i32, i32* @e, align 4
  %t81 = load i32, i32* %t98, align 4
  %t82 = add i32 %t80, %t81
  %t83 = load i32, i32* @g, align 4
  %t84 = sub i32 %t82, %t83
  %t85 = load i32, i32* @h, align 4
  %t86 = add i32 %t84, %t85
  %t87 = sub i32 %t79, %t86
  ret i32 %t87
B106:                               	; preds = %B105
  %t20 = load i32, i32* %t96, align 4
  %t21 = add i32 %t20, 1
  store i32 %t21, i32* %t96, align 4
  br label %B111
B109:                               	; preds = %B105
  br label %B107
B111:                               	; preds = %B106, %B119
  %t22 = load i32, i32* %t97, align 4
  %t23 = icmp eq i32 %t22, 7
  br i1 %t23, label %B112, label %B115
B107:                               	; preds = %B109
  %t71 = load i32, i32* %t96, align 4
  %t72 = sub i32 %t71, 2
  store i32 %t72, i32* %t96, align 4
  br label %B99
B112:                               	; preds = %B111
  %t25 = load i32, i32* %t97, align 4
  %t26 = sub i32 %t25, 1
  store i32 %t26, i32* %t97, align 4
  br label %B117
B115:                               	; preds = %B111
  br label %B113
B117:                               	; preds = %B112, %B125
  %t27 = load i32, i32* %t98, align 4
  %t28 = icmp slt i32 %t27, 20
  br i1 %t28, label %B118, label %B121
B113:                               	; preds = %B115
  %t68 = load i32, i32* %t97, align 4
  %t69 = add i32 %t68, 1
  store i32 %t69, i32* %t97, align 4
  br label %B105
B118:                               	; preds = %B117
  %t30 = load i32, i32* %t98, align 4
  %t31 = add i32 %t30, 3
  store i32 %t31, i32* %t98, align 4
  br label %B123
B121:                               	; preds = %B117
  br label %B119
B123:                               	; preds = %B118, %B131
  %t32 = load i32, i32* @e, align 4
  %t33 = icmp sgt i32 %t32, 1
  br i1 %t33, label %B124, label %B127
B119:                               	; preds = %B121
  %t65 = load i32, i32* %t98, align 4
  %t66 = sub i32 %t65, 1
  store i32 %t66, i32* %t98, align 4
  br label %B111
B124:                               	; preds = %B123
  %t35 = load i32, i32* @e, align 4
  %t36 = sub i32 %t35, 1
  store i32 %t36, i32* @e, align 4
  br label %B129
B127:                               	; preds = %B123
  br label %B125
B129:                               	; preds = %B124, %B137
  %t37 = load i32, i32* @f, align 4
  %t38 = icmp sgt i32 %t37, 2
  br i1 %t38, label %B130, label %B133
B125:                               	; preds = %B127
  %t62 = load i32, i32* @e, align 4
  %t63 = add i32 %t62, 1
  store i32 %t63, i32* @e, align 4
  br label %B117
B130:                               	; preds = %B129
  %t40 = load i32, i32* @f, align 4
  %t41 = sub i32 %t40, 2
  store i32 %t41, i32* @f, align 4
  br label %B135
B133:                               	; preds = %B129
  br label %B131
B135:                               	; preds = %B130, %B143
  %t42 = load i32, i32* @g, align 4
  %t43 = icmp slt i32 %t42, 3
  br i1 %t43, label %B136, label %B139
B131:                               	; preds = %B133
  %t59 = load i32, i32* @f, align 4
  %t60 = add i32 %t59, 1
  store i32 %t60, i32* @f, align 4
  br label %B123
B136:                               	; preds = %B135
  %t45 = load i32, i32* @g, align 4
  %t46 = add i32 %t45, 10
  store i32 %t46, i32* @g, align 4
  br label %B141
B139:                               	; preds = %B135
  br label %B137
B141:                               	; preds = %B136, %B142
  %t47 = load i32, i32* @h, align 4
  %t48 = icmp slt i32 %t47, 10
  br i1 %t48, label %B142, label %B145
B137:                               	; preds = %B139
  %t56 = load i32, i32* @g, align 4
  %t57 = sub i32 %t56, 8
  store i32 %t57, i32* @g, align 4
  br label %B129
B142:                               	; preds = %B141
  %t50 = load i32, i32* @h, align 4
  %t51 = add i32 %t50, 8
  store i32 %t51, i32* @h, align 4
  br label %B141
B145:                               	; preds = %B141
  br label %B143
B143:                               	; preds = %B145
  %t53 = load i32, i32* @h, align 4
  %t54 = sub i32 %t53, 1
  store i32 %t54, i32* @h, align 4
  br label %B135
}
define i32 @main(){
B147:
  store i32 1, i32* @g, align 4
  store i32 2, i32* @h, align 4
  store i32 4, i32* @e, align 4
  store i32 6, i32* @f, align 4
  %t92 =  call i32 @EightWhile()
  ret i32 %t92
}
