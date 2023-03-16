@n = dso_local global i32 0
declare i32 @getint()
define i32 @gcd(i32 %t1, i32 %t2){
B51:
  %t57 = alloca i32, align 4
  %t56 = alloca i32, align 4
  %t55 = alloca i32, align 4
  %t54 = alloca i32, align 4
  %t53 = alloca i32, align 4
  %t52 = alloca i32, align 4
  store i32 %t1, i32* %t52, align 4
  store i32 %t2, i32* %t53, align 4
  %t6 = load i32, i32* %t52, align 4
  store i32 %t6, i32* %t54, align 4
  %t8 = load i32, i32* %t53, align 4
  store i32 %t8, i32* %t55, align 4
  %t11 = load i32, i32* %t52, align 4
  %t12 = load i32, i32* %t53, align 4
  %t13 = icmp slt i32 %t11, %t12
  br i1 %t13, label %B58, label %B61
B58:                               	; preds = %B51
  %t15 = load i32, i32* %t52, align 4
  store i32 %t15, i32* %t56, align 4
  %t17 = load i32, i32* %t53, align 4
  store i32 %t17, i32* %t52, align 4
  %t19 = load i32, i32* %t56, align 4
  store i32 %t19, i32* %t53, align 4
  br label %B59
B61:                               	; preds = %B51
  br label %B59
B59:                               	; preds = %B58, %B61
  %t21 = load i32, i32* %t52, align 4
  %t22 = load i32, i32* %t53, align 4
  %t23 = srem i32 %t21, %t22
  store i32 %t23, i32* %t57, align 4
  br label %B63
B63:                               	; preds = %B59, %B64
  %t24 = load i32, i32* %t57, align 4
  %t25 = icmp ne i32 %t24, 0
  br i1 %t25, label %B64, label %B67
B64:                               	; preds = %B63
  %t27 = load i32, i32* %t53, align 4
  store i32 %t27, i32* %t52, align 4
  %t29 = load i32, i32* %t57, align 4
  store i32 %t29, i32* %t53, align 4
  %t31 = load i32, i32* %t52, align 4
  %t32 = load i32, i32* %t53, align 4
  %t33 = srem i32 %t31, %t32
  store i32 %t33, i32* %t57, align 4
  br label %B63
B67:                               	; preds = %B63
  br label %B65
B65:                               	; preds = %B67
  %t34 = load i32, i32* %t54, align 4
  %t35 = load i32, i32* %t55, align 4
  %t36 = mul i32 %t34, %t35
  %t37 = load i32, i32* %t53, align 4
  %t38 = sdiv i32 %t36, %t37
  ret i32 %t38
}
define i32 @main(){
B69:
  %t71 = alloca i32, align 4
  %t70 = alloca i32, align 4
  %t42 =  call i32 @getint()
  store i32 %t42, i32* %t70, align 4
  %t45 =  call i32 @getint()
  store i32 %t45, i32* %t71, align 4
  %t47 = load i32, i32* %t70, align 4
  %t48 = load i32, i32* %t71, align 4
  %t49 =  call i32 @gcd(i32 %t47, i32 %t48)
  ret i32 %t49
}
