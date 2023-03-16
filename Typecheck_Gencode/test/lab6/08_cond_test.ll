define i32 @main(){
B25:
  %t34 = alloca i32, align 4
  %t27 = alloca i32, align 4
  %t26 = alloca i32, align 4
  store i32 0, i32* %t26, align 4
  store i32 0, i32* %t27, align 4
  br label %B28
B28:                               	; preds = %B25, %B37
  %t2 = load i32, i32* %t27, align 4
  %t3 = icmp slt i32 %t2, 10
  br i1 %t3, label %B29, label %B32
B29:                               	; preds = %B28
  store i32 10, i32* %t34, align 4
  br label %B35
B32:                               	; preds = %B28
  br label %B30
B35:                               	; preds = %B29, %B42
  %t5 = load i32, i32* %t34, align 4
  %t22 = icmp ne i32 0, %t5
  br i1 %t22, label %B36, label %B39
B30:                               	; preds = %B32
  ret i32 0
B36:                               	; preds = %B35
  %t6 = load i32, i32* %t27, align 4
  %t23 = icmp ne i32 0, %t6
  br i1 %t23, label %B43, label %B45
B39:                               	; preds = %B35
  br label %B37
B43:                               	; preds = %B36
  %t7 = load i32, i32* %t34, align 4
  %t24 = icmp ne i32 0, %t7
  br i1 %t24, label %B41, label %B48
B45:                               	; preds = %B36
  br label %B42
B37:                               	; preds = %B39
  %t19 = load i32, i32* %t27, align 4
  %t20 = load i32, i32* %t27, align 4
  %t21 = add i32 %t19, %t20
  store i32 %t21, i32* %t27, align 4
  br label %B28
B41:                               	; preds = %B43
  %t10 = load i32, i32* %t26, align 4
  %t11 = load i32, i32* %t27, align 4
  %t12 = add i32 %t10, %t11
  %t13 = load i32, i32* %t34, align 4
  %t14 = add i32 %t12, %t13
  store i32 %t14, i32* %t26, align 4
  br label %B42
B48:                               	; preds = %B43
  br label %B42
B42:                               	; preds = %B41, %B45, %B48
  %t16 = load i32, i32* %t34, align 4
  %t17 = sub i32 %t16, 1
  store i32 %t17, i32* %t34, align 4
  br label %B35
}
