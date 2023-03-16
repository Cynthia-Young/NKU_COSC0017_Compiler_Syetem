@N = dso_local global i32 0
@newline = dso_local global i32 0
define i32 @factor(i32 %t2){
B32:
  %t35 = alloca i32, align 4
  %t34 = alloca i32, align 4
  %t33 = alloca i32, align 4
  store i32 %t2, i32* %t33, align 4
  store i32 0, i32* %t35, align 4
  store i32 1, i32* %t34, align 4
  br label %B36
B36:                               	; preds = %B32, %B43
  %t7 = load i32, i32* %t34, align 4
  %t8 = load i32, i32* %t33, align 4
  %t9 = add i32 %t8, 1
  %t10 = icmp slt i32 %t7, %t9
  br i1 %t10, label %B37, label %B40
B37:                               	; preds = %B36
  %t11 = load i32, i32* %t33, align 4
  %t12 = load i32, i32* %t34, align 4
  %t13 = srem i32 %t11, %t12
  %t14 = icmp eq i32 %t13, 0
  br i1 %t14, label %B42, label %B45
B40:                               	; preds = %B36
  br label %B38
B42:                               	; preds = %B37
  %t16 = load i32, i32* %t35, align 4
  %t17 = load i32, i32* %t34, align 4
  %t18 = add i32 %t16, %t17
  store i32 %t18, i32* %t35, align 4
  br label %B43
B45:                               	; preds = %B37
  br label %B43
B38:                               	; preds = %B40
  %t22 = load i32, i32* %t35, align 4
  ret i32 %t22
B43:                               	; preds = %B42, %B45
  %t20 = load i32, i32* %t34, align 4
  %t21 = add i32 %t20, 1
  store i32 %t21, i32* %t34, align 4
  br label %B36
}
define i32 @main(){
B47:
  %t50 = alloca i32, align 4
  %t49 = alloca i32, align 4
  %t48 = alloca i32, align 4
  store i32 4, i32* @N, align 4
  store i32 10, i32* @newline, align 4
  store i32 1478, i32* %t49, align 4
  %t29 = load i32, i32* %t49, align 4
  %t30 =  call i32 @factor(i32 %t29)
  ret i32 %t30
}
