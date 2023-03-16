define i32 @ifWhile(){
B25:
  %t27 = alloca i32, align 4
  %t26 = alloca i32, align 4
  store i32 0, i32* %t26, align 4
  store i32 3, i32* %t27, align 4
  %t4 = load i32, i32* %t26, align 4
  %t5 = icmp eq i32 %t4, 5
  br i1 %t5, label %B28, label %B32
B28:                               	; preds = %B25
  br label %B34
B32:                               	; preds = %B25
  br label %B30
B34:                               	; preds = %B28, %B35
  %t6 = load i32, i32* %t27, align 4
  %t7 = icmp eq i32 %t6, 2
  br i1 %t7, label %B35, label %B38
B30:                               	; preds = %B32
  br label %B40
B35:                               	; preds = %B34
  %t9 = load i32, i32* %t27, align 4
  %t10 = add i32 %t9, 2
  store i32 %t10, i32* %t27, align 4
  br label %B34
B38:                               	; preds = %B34
  br label %B36
B40:                               	; preds = %B30, %B41
  %t14 = load i32, i32* %t26, align 4
  %t15 = icmp slt i32 %t14, 5
  br i1 %t15, label %B41, label %B44
B36:                               	; preds = %B38
  %t12 = load i32, i32* %t27, align 4
  %t13 = add i32 %t12, 25
  store i32 %t13, i32* %t27, align 4
  br label %B29
B41:                               	; preds = %B40
  %t17 = load i32, i32* %t27, align 4
  %t18 = mul i32 %t17, 2
  store i32 %t18, i32* %t27, align 4
  %t20 = load i32, i32* %t26, align 4
  %t21 = add i32 %t20, 1
  store i32 %t21, i32* %t26, align 4
  br label %B40
B44:                               	; preds = %B40
  br label %B42
B29:                               	; preds = %B36, %B42
  %t22 = load i32, i32* %t27, align 4
  ret i32 %t22
B42:                               	; preds = %B44
  br label %B29
}
define i32 @main(){
B46:
  %t23 =  call i32 @ifWhile()
  ret i32 %t23
}
