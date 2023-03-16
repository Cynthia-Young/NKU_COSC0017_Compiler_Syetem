declare void @putint(i32)
declare void @putch(i32)
define i32 @dec2bin(i32 %t0){
B41:
  %t46 = alloca i32, align 4
  %t45 = alloca i32, align 4
  %t44 = alloca i32, align 4
  %t43 = alloca i32, align 4
  %t42 = alloca i32, align 4
  store i32 %t0, i32* %t42, align 4
  store i32 0, i32* %t43, align 4
  store i32 1, i32* %t44, align 4
  %t8 = load i32, i32* %t42, align 4
  store i32 %t8, i32* %t46, align 4
  br label %B47
B47:                               	; preds = %B41, %B48
  %t9 = load i32, i32* %t46, align 4
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %B48, label %B51
B48:                               	; preds = %B47
  %t12 = load i32, i32* %t46, align 4
  %t13 = srem i32 %t12, 2
  store i32 %t13, i32* %t45, align 4
  %t15 = load i32, i32* %t44, align 4
  %t16 = load i32, i32* %t45, align 4
  %t17 = mul i32 %t15, %t16
  %t18 = load i32, i32* %t43, align 4
  %t19 = add i32 %t17, %t18
  store i32 %t19, i32* %t43, align 4
  %t21 = load i32, i32* %t44, align 4
  %t22 = mul i32 %t21, 10
  store i32 %t22, i32* %t44, align 4
  %t24 = load i32, i32* %t46, align 4
  %t25 = sdiv i32 %t24, 2
  store i32 %t25, i32* %t46, align 4
  br label %B47
B51:                               	; preds = %B47
  br label %B49
B49:                               	; preds = %B51
  %t26 = load i32, i32* %t43, align 4
  ret i32 %t26
}
define i32 @main(){
B53:
  %t55 = alloca i32, align 4
  %t54 = alloca i32, align 4
  store i32 400, i32* %t54, align 4
  %t31 = load i32, i32* %t54, align 4
  %t32 =  call i32 @dec2bin(i32 %t31)
  store i32 %t32, i32* %t55, align 4
  %t34 = load i32, i32* %t55, align 4
  call void @putint(i32 %t34)
  store i32 10, i32* %t55, align 4
  %t38 = load i32, i32* %t55, align 4
  call void @putch(i32 %t38)
  ret i32 0
}
