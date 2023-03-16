declare void @putint(i32)
define i32 @main(){
B46:
  %t51 = alloca i32, align 4
  %t50 = alloca i32, align 4
  %t49 = alloca i32, align 4
  %t48 = alloca i32, align 4
  %t47 = alloca i32, align 4
  store i32 5, i32* %t47, align 4
  store i32 5, i32* %t48, align 4
  store i32 1, i32* %t49, align 4
  %t9 = sub i32 0, 2
  store i32 %t9, i32* %t50, align 4
  %t11 = load i32, i32* %t50, align 4
  %t12 = mul i32 %t11, 1
  %t13 = sdiv i32 %t12, 2
  %t14 = load i32, i32* %t47, align 4
  %t15 = load i32, i32* %t48, align 4
  %t16 = sub i32 %t14, %t15
  %t17 = add i32 %t13, %t16
  %t18 = load i32, i32* %t49, align 4
  %t19 = add i32 %t18, 3
  %t20 = sub i32 0, %t19
  %t21 = srem i32 %t20, 2
  %t22 = sub i32 %t17, %t21
  store i32 %t22, i32* %t51, align 4
  %t23 = load i32, i32* %t51, align 4
  call void @putint(i32 %t23)
  %t27 = load i32, i32* %t50, align 4
  %t28 = srem i32 %t27, 2
  %t29 = add i32 %t28, 67
  %t30 = load i32, i32* %t47, align 4
  %t31 = load i32, i32* %t48, align 4
  %t32 = sub i32 %t30, %t31
  %t33 = sub i32 0, %t32
  %t34 = add i32 %t29, %t33
  %t35 = load i32, i32* %t49, align 4
  %t36 = add i32 %t35, 2
  %t37 = srem i32 %t36, 2
  %t38 = sub i32 0, %t37
  %t39 = sub i32 %t34, %t38
  store i32 %t39, i32* %t51, align 4
  %t41 = load i32, i32* %t51, align 4
  %t42 = add i32 %t41, 3
  store i32 %t42, i32* %t51, align 4
  %t43 = load i32, i32* %t51, align 4
  call void @putint(i32 %t43)
  ret i32 0
}
