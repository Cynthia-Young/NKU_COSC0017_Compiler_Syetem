declare void @putint(i32)
define i32 @main(){
B16:
  %t18 = alloca i32, align 4
  %t17 = alloca i32, align 4
  store i32 0, i32* %t18, align 4
  store i32 0, i32* %t17, align 4
  br label %B19
B19:                               	; preds = %B16, %B20
  %t4 = load i32, i32* %t17, align 4
  %t5 = icmp slt i32 %t4, 21
  br i1 %t5, label %B20, label %B23
B20:                               	; preds = %B19
  %t7 = load i32, i32* %t18, align 4
  %t8 = load i32, i32* %t17, align 4
  %t9 = add i32 %t7, %t8
  store i32 %t9, i32* %t18, align 4
  %t11 = load i32, i32* %t17, align 4
  %t12 = add i32 %t11, 1
  store i32 %t12, i32* %t17, align 4
  br label %B19
B23:                               	; preds = %B19
  br label %B21
B21:                               	; preds = %B23
  %t13 = load i32, i32* %t18, align 4
  call void @putint(i32 %t13)
  ret i32 0
}
