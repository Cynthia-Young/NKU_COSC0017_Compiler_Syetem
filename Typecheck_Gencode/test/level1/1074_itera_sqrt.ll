declare void @putint(i32)
declare void @putch(i32)
define i32 @fsqrt(i32 %t0){
B36:
  %t39 = alloca i32, align 4
  %t38 = alloca i32, align 4
  %t37 = alloca i32, align 4
  store i32 %t0, i32* %t37, align 4
  store i32 0, i32* %t38, align 4
  %t4 = load i32, i32* %t37, align 4
  %t5 = sdiv i32 %t4, 2
  store i32 %t5, i32* %t39, align 4
  br label %B40
B40:                               	; preds = %B36, %B41
  %t6 = load i32, i32* %t38, align 4
  %t7 = load i32, i32* %t39, align 4
  %t8 = sub i32 %t6, %t7
  %t9 = icmp ne i32 %t8, 0
  br i1 %t9, label %B41, label %B44
B41:                               	; preds = %B40
  %t11 = load i32, i32* %t39, align 4
  store i32 %t11, i32* %t38, align 4
  %t13 = load i32, i32* %t38, align 4
  %t14 = load i32, i32* %t37, align 4
  %t15 = load i32, i32* %t38, align 4
  %t16 = sdiv i32 %t14, %t15
  %t17 = add i32 %t13, %t16
  store i32 %t17, i32* %t39, align 4
  %t19 = load i32, i32* %t39, align 4
  %t20 = sdiv i32 %t19, 2
  store i32 %t20, i32* %t39, align 4
  br label %B40
B44:                               	; preds = %B40
  br label %B42
B42:                               	; preds = %B44
  %t21 = load i32, i32* %t39, align 4
  ret i32 %t21
}
define i32 @main(){
B46:
  %t48 = alloca i32, align 4
  %t47 = alloca i32, align 4
  store i32 400, i32* %t47, align 4
  %t26 = load i32, i32* %t47, align 4
  %t27 =  call i32 @fsqrt(i32 %t26)
  store i32 %t27, i32* %t48, align 4
  %t29 = load i32, i32* %t48, align 4
  call void @putint(i32 %t29)
  store i32 10, i32* %t48, align 4
  %t33 = load i32, i32* %t48, align 4
  call void @putch(i32 %t33)
  ret i32 0
}
