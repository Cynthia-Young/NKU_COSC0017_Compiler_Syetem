@a = dso_local global i32 0
@b = dso_local global i32 0
@c = dso_local global i32 0
@d = dso_local global i32 0
@e = dso_local global i32 0
declare i32 @getint()
define i32 @main(){
B54:
  %t55 = alloca i32, align 4
  %t6 =  call i32 @getint()
  store i32 %t6, i32* @a, align 4
  %t9 =  call i32 @getint()
  store i32 %t9, i32* @b, align 4
  %t12 =  call i32 @getint()
  store i32 %t12, i32* @c, align 4
  %t15 =  call i32 @getint()
  store i32 %t15, i32* @d, align 4
  %t18 =  call i32 @getint()
  store i32 %t18, i32* @e, align 4
  store i32 0, i32* %t55, align 4
  %t21 = load i32, i32* @a, align 4
  %t22 = load i32, i32* @b, align 4
  %t23 = load i32, i32* @c, align 4
  %t24 = mul i32 %t22, %t23
  %t25 = sub i32 %t21, %t24
  %t26 = load i32, i32* @d, align 4
  %t27 = load i32, i32* @a, align 4
  %t28 = load i32, i32* @c, align 4
  %t29 = sdiv i32 %t27, %t28
  %t30 = sub i32 %t26, %t29
  %t31 = icmp ne i32 %t25, %t30
  br i1 %t31, label %B56, label %B61
B56:                               	; preds = %B54, %B58, %B59
  store i32 1, i32* %t55, align 4
  br label %B57
B61:                               	; preds = %B54
  br label %B59
B57:                               	; preds = %B56, %B67
  %t53 = load i32, i32* %t55, align 4
  ret i32 %t53
B59:                               	; preds = %B61
  %t32 = load i32, i32* @a, align 4
  %t33 = load i32, i32* @b, align 4
  %t34 = mul i32 %t32, %t33
  %t35 = load i32, i32* @c, align 4
  %t36 = sdiv i32 %t34, %t35
  %t37 = load i32, i32* @e, align 4
  %t38 = load i32, i32* @d, align 4
  %t39 = add i32 %t37, %t38
  %t40 = icmp eq i32 %t36, %t39
  br i1 %t40, label %B56, label %B64
B64:                               	; preds = %B59
  br label %B58
B58:                               	; preds = %B64
  %t42 = load i32, i32* @a, align 4
  %t43 = load i32, i32* @b, align 4
  %t44 = add i32 %t42, %t43
  %t45 = load i32, i32* @c, align 4
  %t46 = add i32 %t44, %t45
  %t47 = load i32, i32* @d, align 4
  %t48 = load i32, i32* @e, align 4
  %t49 = add i32 %t47, %t48
  %t50 = icmp eq i32 %t46, %t49
  br i1 %t50, label %B56, label %B67
B67:                               	; preds = %B58
  br label %B57
}
