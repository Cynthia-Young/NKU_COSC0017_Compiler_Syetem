define i32 @deepWhileBr(i32 %t0, i32 %t1){
B34:
  %t55 = alloca i32, align 4
  %t44 = alloca i32, align 4
  %t37 = alloca i32, align 4
  %t36 = alloca i32, align 4
  %t35 = alloca i32, align 4
  store i32 %t0, i32* %t35, align 4
  store i32 %t1, i32* %t36, align 4
  %t4 = load i32, i32* %t35, align 4
  %t5 = load i32, i32* %t36, align 4
  %t6 = add i32 %t4, %t5
  store i32 %t6, i32* %t37, align 4
  br label %B38
B38:                               	; preds = %B34, %B46
  %t7 = load i32, i32* %t37, align 4
  %t8 = icmp slt i32 %t7, 75
  br i1 %t8, label %B39, label %B42
B39:                               	; preds = %B38
  store i32 42, i32* %t44, align 4
  %t11 = load i32, i32* %t37, align 4
  %t12 = icmp slt i32 %t11, 100
  br i1 %t12, label %B45, label %B48
B42:                               	; preds = %B38
  br label %B40
B45:                               	; preds = %B39
  %t14 = load i32, i32* %t37, align 4
  %t15 = load i32, i32* %t44, align 4
  %t16 = add i32 %t14, %t15
  store i32 %t16, i32* %t37, align 4
  %t17 = load i32, i32* %t37, align 4
  %t18 = icmp sgt i32 %t17, 99
  br i1 %t18, label %B50, label %B53
B48:                               	; preds = %B39
  br label %B46
B40:                               	; preds = %B42
  %t27 = load i32, i32* %t37, align 4
  ret i32 %t27
B50:                               	; preds = %B45
  %t21 = load i32, i32* %t44, align 4
  %t22 = mul i32 %t21, 2
  store i32 %t22, i32* %t55, align 4
  %t23 = icmp eq i32 1, 1
  br i1 %t23, label %B56, label %B59
B53:                               	; preds = %B45
  br label %B51
B46:                               	; preds = %B48, %B51
  br label %B38
B56:                               	; preds = %B50
  %t25 = load i32, i32* %t55, align 4
  %t26 = mul i32 %t25, 2
  store i32 %t26, i32* %t37, align 4
  br label %B57
B59:                               	; preds = %B50
  br label %B57
B51:                               	; preds = %B53, %B57
  br label %B46
B57:                               	; preds = %B56, %B59
  br label %B51
}
define i32 @main(){
B61:
  %t62 = alloca i32, align 4
  store i32 2, i32* %t62, align 4
  %t30 = load i32, i32* %t62, align 4
  %t31 = load i32, i32* %t62, align 4
  %t32 =  call i32 @deepWhileBr(i32 %t30, i32 %t31)
  ret i32 %t32
}
