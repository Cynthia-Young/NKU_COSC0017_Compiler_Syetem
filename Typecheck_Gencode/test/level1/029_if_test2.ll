declare void @putint(i32)
define i32 @ifElseIf(){
B33:
  %t35 = alloca i32, align 4
  %t34 = alloca i32, align 4
  store i32 5, i32* %t34, align 4
  store i32 10, i32* %t35, align 4
  %t4 = load i32, i32* %t34, align 4
  %t5 = icmp eq i32 %t4, 6
  br i1 %t5, label %B36, label %B41
B36:                               	; preds = %B33, %B39
  %t9 = load i32, i32* %t34, align 4
  ret i32 %t9
B41:                               	; preds = %B33
  br label %B39
B39:                               	; preds = %B41
  %t6 = load i32, i32* %t35, align 4
  %t7 = icmp eq i32 %t6, 11
  br i1 %t7, label %B36, label %B44
B44:                               	; preds = %B39
  br label %B38
B38:                               	; preds = %B44
  %t10 = load i32, i32* %t35, align 4
  %t11 = icmp eq i32 %t10, 10
  br i1 %t11, label %B49, label %B51
B49:                               	; preds = %B38
  %t12 = load i32, i32* %t34, align 4
  %t13 = icmp eq i32 %t12, 1
  br i1 %t13, label %B46, label %B54
B51:                               	; preds = %B38
  br label %B48
B46:                               	; preds = %B49
  store i32 25, i32* %t34, align 4
  br label %B47
B54:                               	; preds = %B49
  br label %B48
B48:                               	; preds = %B51, %B54
  %t16 = load i32, i32* %t35, align 4
  %t17 = icmp eq i32 %t16, 10
  br i1 %t17, label %B59, label %B61
B47:                               	; preds = %B46, %B57
  br label %B37
B59:                               	; preds = %B48
  %t18 = load i32, i32* %t34, align 4
  %t19 = sub i32 0, 5
  %t20 = icmp eq i32 %t18, %t19
  br i1 %t20, label %B56, label %B64
B61:                               	; preds = %B48
  br label %B58
B37:                               	; preds = %B47
  %t28 = load i32, i32* %t34, align 4
  ret i32 %t28
B56:                               	; preds = %B59
  %t23 = load i32, i32* %t34, align 4
  %t24 = add i32 %t23, 15
  store i32 %t24, i32* %t34, align 4
  br label %B57
B64:                               	; preds = %B59
  br label %B58
B58:                               	; preds = %B61, %B64
  %t26 = load i32, i32* %t34, align 4
  %t27 = sub i32 0, %t26
  store i32 %t27, i32* %t34, align 4
  br label %B57
B57:                               	; preds = %B56, %B58
  br label %B47
}
define i32 @main(){
B66:
  %t29 =  call i32 @ifElseIf()
  call void @putint(i32 %t29)
  ret i32 0
}
