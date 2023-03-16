declare void @putint(i32)
declare void @putch(i32)
define i32 @main(){
B46:
  %t50 = alloca i32, align 4
  %t49 = alloca i32, align 4
  %t48 = alloca i32, align 4
  %t47 = alloca i32, align 4
  store i32 0, i32* %t47, align 4
  store i32 0, i32* %t48, align 4
  store i32 0, i32* %t49, align 4
  br label %B51
B51:                               	; preds = %B46, %B59
  %t7 = load i32, i32* %t47, align 4
  %t8 = icmp slt i32 %t7, 21
  br i1 %t8, label %B52, label %B55
B52:                               	; preds = %B51
  br label %B57
B55:                               	; preds = %B51
  br label %B53
B57:                               	; preds = %B52, %B64
  %t9 = load i32, i32* %t48, align 4
  %t10 = load i32, i32* %t47, align 4
  %t11 = sub i32 101, %t10
  %t12 = icmp slt i32 %t9, %t11
  br i1 %t12, label %B58, label %B61
B53:                               	; preds = %B55
  ret i32 0
B58:                               	; preds = %B57
  %t14 = load i32, i32* %t47, align 4
  %t15 = sub i32 100, %t14
  %t16 = load i32, i32* %t48, align 4
  %t17 = sub i32 %t15, %t16
  store i32 %t17, i32* %t49, align 4
  %t18 = load i32, i32* %t47, align 4
  %t19 = mul i32 5, %t18
  %t20 = load i32, i32* %t48, align 4
  %t21 = mul i32 1, %t20
  %t22 = add i32 %t19, %t21
  %t23 = load i32, i32* %t49, align 4
  %t24 = sdiv i32 %t23, 2
  %t25 = add i32 %t22, %t24
  %t26 = icmp eq i32 %t25, 100
  br i1 %t26, label %B63, label %B66
B61:                               	; preds = %B57
  br label %B59
B63:                               	; preds = %B58
  %t27 = load i32, i32* %t47, align 4
  call void @putint(i32 %t27)
  %t30 = load i32, i32* %t48, align 4
  call void @putint(i32 %t30)
  %t33 = load i32, i32* %t49, align 4
  call void @putint(i32 %t33)
  store i32 10, i32* %t50, align 4
  %t37 = load i32, i32* %t50, align 4
  call void @putch(i32 %t37)
  br label %B64
B66:                               	; preds = %B58
  br label %B64
B59:                               	; preds = %B61
  %t44 = load i32, i32* %t47, align 4
  %t45 = add i32 %t44, 1
  store i32 %t45, i32* %t47, align 4
  br label %B51
B64:                               	; preds = %B63, %B66
  %t41 = load i32, i32* %t48, align 4
  %t42 = add i32 %t41, 1
  store i32 %t42, i32* %t48, align 4
  br label %B57
}
