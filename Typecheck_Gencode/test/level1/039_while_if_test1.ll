define i32 @whileIf(){
B21:
  %t23 = alloca i32, align 4
  %t22 = alloca i32, align 4
  store i32 0, i32* %t22, align 4
  store i32 0, i32* %t23, align 4
  br label %B24
B24:                               	; preds = %B21, %B31
  %t4 = load i32, i32* %t22, align 4
  %t5 = icmp slt i32 %t4, 100
  br i1 %t5, label %B25, label %B28
B25:                               	; preds = %B24
  %t6 = load i32, i32* %t22, align 4
  %t7 = icmp eq i32 %t6, 5
  br i1 %t7, label %B30, label %B34
B28:                               	; preds = %B24
  br label %B26
B30:                               	; preds = %B25
  store i32 25, i32* %t23, align 4
  br label %B31
B34:                               	; preds = %B25
  br label %B32
B26:                               	; preds = %B28
  %t18 = load i32, i32* %t23, align 4
  ret i32 %t18
B31:                               	; preds = %B30, %B37
  %t16 = load i32, i32* %t22, align 4
  %t17 = add i32 %t16, 1
  store i32 %t17, i32* %t22, align 4
  br label %B24
B32:                               	; preds = %B34
  %t9 = load i32, i32* %t22, align 4
  %t10 = icmp eq i32 %t9, 10
  br i1 %t10, label %B36, label %B40
B36:                               	; preds = %B32
  store i32 42, i32* %t23, align 4
  br label %B37
B40:                               	; preds = %B32
  br label %B38
B37:                               	; preds = %B36, %B38
  br label %B31
B38:                               	; preds = %B40
  %t13 = load i32, i32* %t22, align 4
  %t14 = mul i32 %t13, 2
  store i32 %t14, i32* %t23, align 4
  br label %B37
}
define i32 @main(){
B42:
  %t19 =  call i32 @whileIf()
  ret i32 %t19
}
