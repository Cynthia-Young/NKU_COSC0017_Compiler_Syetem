@s = dso_local global i32 0
define i32 @get_ans_se(i32 %t1, i32 %t2, i32 %t3){
B206:
  %t210 = alloca i32, align 4
  %t209 = alloca i32, align 4
  %t208 = alloca i32, align 4
  %t207 = alloca i32, align 4
  store i32 %t1, i32* %t207, align 4
  store i32 %t2, i32* %t208, align 4
  store i32 %t3, i32* %t209, align 4
  store i32 0, i32* %t210, align 4
  %t5 = load i32, i32* %t208, align 4
  %t6 = load i32, i32* %t209, align 4
  %t7 = icmp eq i32 %t5, %t6
  br i1 %t7, label %B211, label %B214
B211:                               	; preds = %B206
  store i32 1, i32* %t210, align 4
  br label %B212
B214:                               	; preds = %B206
  br label %B212
B212:                               	; preds = %B211, %B214
  %t10 = load i32, i32* %t207, align 4
  %t11 = mul i32 %t10, 2
  store i32 %t11, i32* %t207, align 4
  %t13 = load i32, i32* %t207, align 4
  %t14 = load i32, i32* %t210, align 4
  %t15 = add i32 %t13, %t14
  store i32 %t15, i32* %t207, align 4
  %t17 = load i32, i32* @s, align 4
  %t18 = load i32, i32* %t207, align 4
  %t19 = add i32 %t17, %t18
  store i32 %t19, i32* @s, align 4
  %t20 = load i32, i32* %t207, align 4
  ret i32 %t20
}
define i32 @get_ans(i32 %t21, i32 %t22, i32 %t23){
B216:
  %t220 = alloca i32, align 4
  %t219 = alloca i32, align 4
  %t218 = alloca i32, align 4
  %t217 = alloca i32, align 4
  store i32 %t21, i32* %t217, align 4
  store i32 %t22, i32* %t218, align 4
  store i32 %t23, i32* %t219, align 4
  store i32 0, i32* %t220, align 4
  %t25 = load i32, i32* %t218, align 4
  %t26 = load i32, i32* %t219, align 4
  %t27 = icmp eq i32 %t25, %t26
  br i1 %t27, label %B221, label %B224
B221:                               	; preds = %B216
  store i32 1, i32* %t220, align 4
  br label %B222
B224:                               	; preds = %B216
  br label %B222
B222:                               	; preds = %B221, %B224
  %t30 = load i32, i32* %t217, align 4
  %t31 = mul i32 %t30, 2
  store i32 %t31, i32* %t217, align 4
  %t33 = load i32, i32* %t217, align 4
  %t34 = load i32, i32* %t220, align 4
  %t35 = add i32 %t33, %t34
  store i32 %t35, i32* %t217, align 4
  %t36 = load i32, i32* %t217, align 4
  ret i32 %t36
}
define i32 @main(){
B226:
  %t235 = alloca i32, align 4
  %t234 = alloca i32, align 4
  %t233 = alloca i32, align 4
  %t232 = alloca i32, align 4
  %t231 = alloca i32, align 4
  %t230 = alloca i32, align 4
  %t229 = alloca i32, align 4
  %t228 = alloca i32, align 4
  %t227 = alloca i32, align 4
  %t37 = sub i32 0, -2147483648
  store i32 %t37, i32* %t227, align 4
  store i32 -2147483648, i32* %t228, align 4
  %t40 = add i32 -2147483648, 1
  store i32 %t40, i32* %t229, align 4
  store i32 2147483647, i32* %t230, align 4
  %t43 = sub i32 2147483647, 1
  store i32 %t43, i32* %t231, align 4
  %t50 = load i32, i32* %t227, align 4
  %t51 = load i32, i32* %t228, align 4
  %t52 =  call i32 @get_ans(i32 0, i32 %t50, i32 %t51)
  store i32 %t52, i32* %t235, align 4
  %t55 = load i32, i32* %t235, align 4
  %t56 = load i32, i32* %t227, align 4
  %t57 = add i32 %t56, 1
  %t58 = load i32, i32* %t229, align 4
  %t59 =  call i32 @get_ans(i32 %t55, i32 %t57, i32 %t58)
  store i32 %t59, i32* %t235, align 4
  %t62 = load i32, i32* %t235, align 4
  %t63 = load i32, i32* %t227, align 4
  %t64 = load i32, i32* %t230, align 4
  %t65 = sub i32 0, %t64
  %t66 = sub i32 %t65, 1
  %t67 =  call i32 @get_ans(i32 %t62, i32 %t63, i32 %t66)
  store i32 %t67, i32* %t235, align 4
  %t70 = load i32, i32* %t235, align 4
  %t71 = load i32, i32* %t227, align 4
  %t72 = load i32, i32* %t231, align 4
  %t73 = add i32 %t72, 1
  %t74 =  call i32 @get_ans(i32 %t70, i32 %t71, i32 %t73)
  store i32 %t74, i32* %t235, align 4
  %t77 = load i32, i32* %t235, align 4
  %t78 = load i32, i32* %t228, align 4
  %t79 = sdiv i32 %t78, 2
  %t80 = load i32, i32* %t229, align 4
  %t81 = sdiv i32 %t80, 2
  %t82 =  call i32 @get_ans(i32 %t77, i32 %t79, i32 %t81)
  store i32 %t82, i32* %t235, align 4
  %t85 = load i32, i32* %t235, align 4
  %t86 = load i32, i32* %t228, align 4
  %t87 = load i32, i32* %t230, align 4
  %t88 = sub i32 0, %t87
  %t89 = sub i32 %t88, 1
  %t90 =  call i32 @get_ans(i32 %t85, i32 %t86, i32 %t89)
  store i32 %t90, i32* %t235, align 4
  %t93 = load i32, i32* %t235, align 4
  %t94 = load i32, i32* %t228, align 4
  %t95 = load i32, i32* %t231, align 4
  %t96 = add i32 %t95, 1
  %t97 =  call i32 @get_ans(i32 %t93, i32 %t94, i32 %t96)
  store i32 %t97, i32* %t235, align 4
  %t100 = load i32, i32* %t229, align 4
  %t101 = load i32, i32* %t230, align 4
  %t102 =  call i32 @get_ans(i32 0, i32 %t100, i32 %t101)
  store i32 %t102, i32* %t234, align 4
  %t105 = load i32, i32* %t234, align 4
  %t106 = load i32, i32* %t229, align 4
  %t107 = load i32, i32* %t231, align 4
  %t108 =  call i32 @get_ans(i32 %t105, i32 %t106, i32 %t107)
  store i32 %t108, i32* %t234, align 4
  %t111 = load i32, i32* %t234, align 4
  %t112 = load i32, i32* %t230, align 4
  %t113 = load i32, i32* %t231, align 4
  %t114 =  call i32 @get_ans(i32 %t111, i32 %t112, i32 %t113)
  store i32 %t114, i32* %t234, align 4
  %t117 = load i32, i32* %t234, align 4
  %t118 = load i32, i32* %t227, align 4
  %t119 = sdiv i32 %t118, 2
  %t120 = load i32, i32* %t228, align 4
  %t121 = sdiv i32 %t120, 2
  %t122 =  call i32 @get_ans(i32 %t117, i32 %t119, i32 %t121)
  store i32 %t122, i32* %t234, align 4
  %t125 = load i32, i32* %t227, align 4
  %t126 = load i32, i32* %t228, align 4
  %t127 =  call i32 @get_ans_se(i32 0, i32 %t125, i32 %t126)
  store i32 %t127, i32* %t233, align 4
  %t130 = load i32, i32* %t233, align 4
  %t131 = load i32, i32* %t227, align 4
  %t132 = add i32 %t131, 1
  %t133 = load i32, i32* %t229, align 4
  %t134 =  call i32 @get_ans_se(i32 %t130, i32 %t132, i32 %t133)
  store i32 %t134, i32* %t233, align 4
  %t137 = load i32, i32* %t233, align 4
  %t138 = load i32, i32* %t227, align 4
  %t139 = load i32, i32* %t230, align 4
  %t140 = sub i32 0, %t139
  %t141 = sub i32 %t140, 1
  %t142 =  call i32 @get_ans_se(i32 %t137, i32 %t138, i32 %t141)
  store i32 %t142, i32* %t233, align 4
  %t145 = load i32, i32* %t233, align 4
  %t146 = load i32, i32* %t227, align 4
  %t147 = load i32, i32* %t231, align 4
  %t148 = add i32 %t147, 1
  %t149 =  call i32 @get_ans_se(i32 %t145, i32 %t146, i32 %t148)
  store i32 %t149, i32* %t233, align 4
  %t152 = load i32, i32* %t233, align 4
  %t153 = load i32, i32* %t228, align 4
  %t154 = sdiv i32 %t153, 2
  %t155 = load i32, i32* %t229, align 4
  %t156 = sdiv i32 %t155, 2
  %t157 =  call i32 @get_ans_se(i32 %t152, i32 %t154, i32 %t156)
  store i32 %t157, i32* %t233, align 4
  %t160 = load i32, i32* %t233, align 4
  %t161 = load i32, i32* %t228, align 4
  %t162 = load i32, i32* %t230, align 4
  %t163 = sub i32 0, %t162
  %t164 = sub i32 %t163, 1
  %t165 =  call i32 @get_ans_se(i32 %t160, i32 %t161, i32 %t164)
  store i32 %t165, i32* %t233, align 4
  %t168 = load i32, i32* %t233, align 4
  %t169 = load i32, i32* %t228, align 4
  %t170 = load i32, i32* %t231, align 4
  %t171 = add i32 %t170, 1
  %t172 =  call i32 @get_ans_se(i32 %t168, i32 %t169, i32 %t171)
  store i32 %t172, i32* %t233, align 4
  %t175 = load i32, i32* %t229, align 4
  %t176 = load i32, i32* %t230, align 4
  %t177 =  call i32 @get_ans_se(i32 0, i32 %t175, i32 %t176)
  store i32 %t177, i32* %t232, align 4
  %t180 = load i32, i32* %t232, align 4
  %t181 = load i32, i32* %t229, align 4
  %t182 = load i32, i32* %t231, align 4
  %t183 =  call i32 @get_ans_se(i32 %t180, i32 %t181, i32 %t182)
  store i32 %t183, i32* %t232, align 4
  %t186 = load i32, i32* %t232, align 4
  %t187 = load i32, i32* %t230, align 4
  %t188 = load i32, i32* %t231, align 4
  %t189 =  call i32 @get_ans_se(i32 %t186, i32 %t187, i32 %t188)
  store i32 %t189, i32* %t232, align 4
  %t192 = load i32, i32* %t232, align 4
  %t193 = load i32, i32* %t227, align 4
  %t194 = sdiv i32 %t193, 2
  %t195 = load i32, i32* %t228, align 4
  %t196 = sdiv i32 %t195, 2
  %t197 =  call i32 @get_ans_se(i32 %t192, i32 %t194, i32 %t196)
  store i32 %t197, i32* %t232, align 4
  %t199 = load i32, i32* %t235, align 4
  %t200 = load i32, i32* %t234, align 4
  %t201 = add i32 %t199, %t200
  %t202 = load i32, i32* %t233, align 4
  %t203 = add i32 %t201, %t202
  %t204 = load i32, i32* %t232, align 4
  %t205 = add i32 %t203, %t204
  ret i32 %t205
}
