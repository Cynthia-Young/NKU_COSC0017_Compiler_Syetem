define i32 @FourWhile(){
B46:
  %t50 = alloca i32, align 4
  %t49 = alloca i32, align 4
  %t48 = alloca i32, align 4
  %t47 = alloca i32, align 4
  store i32 5, i32* %t47, align 4
  store i32 6, i32* %t48, align 4
  store i32 7, i32* %t49, align 4
  store i32 10, i32* %t50, align 4
  br label %B51
B51:                               	; preds = %B46, %B59
  %t8 = load i32, i32* %t47, align 4
  %t9 = icmp slt i32 %t8, 20
  br i1 %t9, label %B52, label %B55
B52:                               	; preds = %B51
  %t11 = load i32, i32* %t47, align 4
  %t12 = add i32 %t11, 3
  store i32 %t12, i32* %t47, align 4
  br label %B57
B55:                               	; preds = %B51
  br label %B53
B57:                               	; preds = %B52, %B65
  %t13 = load i32, i32* %t48, align 4
  %t14 = icmp slt i32 %t13, 10
  br i1 %t14, label %B58, label %B61
B53:                               	; preds = %B55
  %t37 = load i32, i32* %t47, align 4
  %t38 = load i32, i32* %t48, align 4
  %t39 = load i32, i32* %t50, align 4
  %t40 = add i32 %t38, %t39
  %t41 = add i32 %t37, %t40
  %t42 = load i32, i32* %t49, align 4
  %t43 = add i32 %t41, %t42
  ret i32 %t43
B58:                               	; preds = %B57
  %t16 = load i32, i32* %t48, align 4
  %t17 = add i32 %t16, 1
  store i32 %t17, i32* %t48, align 4
  br label %B63
B61:                               	; preds = %B57
  br label %B59
B63:                               	; preds = %B58, %B71
  %t18 = load i32, i32* %t49, align 4
  %t19 = icmp eq i32 %t18, 7
  br i1 %t19, label %B64, label %B67
B59:                               	; preds = %B61
  %t35 = load i32, i32* %t48, align 4
  %t36 = sub i32 %t35, 2
  store i32 %t36, i32* %t48, align 4
  br label %B51
B64:                               	; preds = %B63
  %t21 = load i32, i32* %t49, align 4
  %t22 = sub i32 %t21, 1
  store i32 %t22, i32* %t49, align 4
  br label %B69
B67:                               	; preds = %B63
  br label %B65
B69:                               	; preds = %B64, %B70
  %t23 = load i32, i32* %t50, align 4
  %t24 = icmp slt i32 %t23, 20
  br i1 %t24, label %B70, label %B73
B65:                               	; preds = %B67
  %t32 = load i32, i32* %t49, align 4
  %t33 = add i32 %t32, 1
  store i32 %t33, i32* %t49, align 4
  br label %B57
B70:                               	; preds = %B69
  %t26 = load i32, i32* %t50, align 4
  %t27 = add i32 %t26, 3
  store i32 %t27, i32* %t50, align 4
  br label %B69
B73:                               	; preds = %B69
  br label %B71
B71:                               	; preds = %B73
  %t29 = load i32, i32* %t50, align 4
  %t30 = sub i32 %t29, 1
  store i32 %t30, i32* %t50, align 4
  br label %B63
}
define i32 @main(){
B75:
  %t44 =  call i32 @FourWhile()
  ret i32 %t44
}
