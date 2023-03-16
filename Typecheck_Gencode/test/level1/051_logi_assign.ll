@a = dso_local global i32 0
@b = dso_local global i32 0
declare i32 @getint()
define i32 @main(){
B18:
  %t19 = alloca i32, align 4
  %t3 =  call i32 @getint()
  store i32 %t3, i32* @a, align 4
  %t6 =  call i32 @getint()
  store i32 %t6, i32* @b, align 4
  %t9 = load i32, i32* @a, align 4
  %t10 = load i32, i32* @b, align 4
  %t11 = icmp eq i32 %t9, %t10
  br i1 %t11, label %B23, label %B25
B23:                               	; preds = %B18
  %t12 = load i32, i32* @a, align 4
  %t13 = icmp ne i32 %t12, 3
  br i1 %t13, label %B20, label %B28
B25:                               	; preds = %B18
  br label %B22
B20:                               	; preds = %B23
  store i32 1, i32* %t19, align 4
  br label %B21
B28:                               	; preds = %B23
  br label %B22
B22:                               	; preds = %B25, %B28
  store i32 0, i32* %t19, align 4
  br label %B21
B21:                               	; preds = %B20, %B22
  %t17 = load i32, i32* %t19, align 4
  ret i32 %t17
}
