declare void @putint(i32)
declare void @putch(i32)
define i32 @enc(i32 %t0){
B38:
  %t39 = alloca i32, align 4
  store i32 %t0, i32* %t39, align 4
  %t1 = load i32, i32* %t39, align 4
  %t2 = icmp sgt i32 %t1, 25
  br i1 %t2, label %B40, label %B44
B40:                               	; preds = %B38
  %t4 = load i32, i32* %t39, align 4
  %t5 = add i32 %t4, 60
  store i32 %t5, i32* %t39, align 4
  br label %B41
B44:                               	; preds = %B38
  br label %B42
B41:                               	; preds = %B40, %B42
  %t9 = load i32, i32* %t39, align 4
  ret i32 %t9
B42:                               	; preds = %B44
  %t7 = load i32, i32* %t39, align 4
  %t8 = sub i32 %t7, 15
  store i32 %t8, i32* %t39, align 4
  br label %B41
}
define i32 @dec(i32 %t10){
B46:
  %t47 = alloca i32, align 4
  store i32 %t10, i32* %t47, align 4
  %t11 = load i32, i32* %t47, align 4
  %t12 = icmp sgt i32 %t11, 85
  br i1 %t12, label %B48, label %B52
B48:                               	; preds = %B46
  %t14 = load i32, i32* %t47, align 4
  %t15 = sub i32 %t14, 59
  store i32 %t15, i32* %t47, align 4
  br label %B49
B52:                               	; preds = %B46
  br label %B50
B49:                               	; preds = %B48, %B50
  %t19 = load i32, i32* %t47, align 4
  ret i32 %t19
B50:                               	; preds = %B52
  %t17 = load i32, i32* %t47, align 4
  %t18 = add i32 %t17, 14
  store i32 %t18, i32* %t47, align 4
  br label %B49
}
define i32 @main(){
B54:
  %t56 = alloca i32, align 4
  %t55 = alloca i32, align 4
  store i32 400, i32* %t55, align 4
  %t24 = load i32, i32* %t55, align 4
  %t25 =  call i32 @enc(i32 %t24)
  store i32 %t25, i32* %t56, align 4
  %t28 = load i32, i32* %t56, align 4
  %t29 =  call i32 @dec(i32 %t28)
  store i32 %t29, i32* %t56, align 4
  %t31 = load i32, i32* %t56, align 4
  call void @putint(i32 %t31)
  store i32 10, i32* %t56, align 4
  %t35 = load i32, i32* %t56, align 4
  call void @putch(i32 %t35)
  ret i32 0
}
