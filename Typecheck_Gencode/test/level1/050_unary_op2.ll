declare void @putint(i32)
define i32 @main(){
B26:
  %t28 = alloca i32, align 4
  %t27 = alloca i32, align 4
  store i32 56, i32* %t28, align 4
  store i32 4, i32* %t27, align 4
  %t5 = load i32, i32* %t28, align 4
  %t6 = sub i32 0, 4
  %t7 = sub i32 %t5, %t6
  %t8 = load i32, i32* %t27, align 4
  %t9 = add i32 %t7, %t8
  store i32 %t9, i32* %t28, align 4
  %t10 = load i32, i32* %t28, align 4
  %t11 = icmp eq i32 0, %t10
  %t32 = zext i1 %t11 to i32
  %t12 = icmp eq i32 0, %t32
  %t33 = zext i1 %t12 to i32
  %t13 = icmp eq i32 0, %t33
  %t34 = zext i1 %t13 to i32
  %t14 = sub i32 0, %t34
  %t25 = icmp ne i32 0, %t14
  br i1 %t25, label %B29, label %B36
B29:                               	; preds = %B26
  %t16 = sub i32 0, 1
  %t17 = sub i32 0, %t16
  %t18 = sub i32 0, %t17
  store i32 %t18, i32* %t28, align 4
  br label %B30
B36:                               	; preds = %B26
  br label %B31
B30:                               	; preds = %B29, %B31
  %t22 = load i32, i32* %t28, align 4
  call void @putint(i32 %t22)
  ret i32 0
B31:                               	; preds = %B36
  %t20 = load i32, i32* %t27, align 4
  %t21 = add i32 0, %t20
  store i32 %t21, i32* %t28, align 4
  br label %B30
}
