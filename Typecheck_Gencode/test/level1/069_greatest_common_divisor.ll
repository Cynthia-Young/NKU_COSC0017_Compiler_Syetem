declare i32 @getint()
declare void @putint(i32)
define i32 @fun(i32 %t0, i32 %t1){
B31:
  %t34 = alloca i32, align 4
  %t33 = alloca i32, align 4
  %t32 = alloca i32, align 4
  store i32 %t0, i32* %t32, align 4
  store i32 %t1, i32* %t33, align 4
  br label %B35
B35:                               	; preds = %B31, %B36
  %t3 = load i32, i32* %t33, align 4
  %t4 = icmp sgt i32 %t3, 0
  br i1 %t4, label %B36, label %B39
B36:                               	; preds = %B35
  %t6 = load i32, i32* %t32, align 4
  %t7 = load i32, i32* %t33, align 4
  %t8 = srem i32 %t6, %t7
  store i32 %t8, i32* %t34, align 4
  %t10 = load i32, i32* %t33, align 4
  store i32 %t10, i32* %t32, align 4
  %t12 = load i32, i32* %t34, align 4
  store i32 %t12, i32* %t33, align 4
  br label %B35
B39:                               	; preds = %B35
  br label %B37
B37:                               	; preds = %B39
  %t13 = load i32, i32* %t32, align 4
  ret i32 %t13
}
define i32 @main(){
B41:
  %t44 = alloca i32, align 4
  %t43 = alloca i32, align 4
  %t42 = alloca i32, align 4
  %t18 =  call i32 @getint()
  store i32 %t18, i32* %t42, align 4
  %t21 =  call i32 @getint()
  store i32 %t21, i32* %t43, align 4
  %t24 = load i32, i32* %t42, align 4
  %t25 = load i32, i32* %t43, align 4
  %t26 =  call i32 @fun(i32 %t24, i32 %t25)
  store i32 %t26, i32* %t44, align 4
  %t28 = load i32, i32* %t44, align 4
  call void @putint(i32 %t28)
  ret i32 0
}
