define i32 @ifElse(){
B11:
  %t12 = alloca i32, align 4
  store i32 5, i32* %t12, align 4
  %t2 = load i32, i32* %t12, align 4
  %t3 = icmp eq i32 %t2, 5
  br i1 %t3, label %B13, label %B17
B13:                               	; preds = %B11
  store i32 25, i32* %t12, align 4
  br label %B14
B17:                               	; preds = %B11
  br label %B15
B14:                               	; preds = %B13, %B15
  %t8 = load i32, i32* %t12, align 4
  ret i32 %t8
B15:                               	; preds = %B17
  %t6 = load i32, i32* %t12, align 4
  %t7 = mul i32 %t6, 2
  store i32 %t7, i32* %t12, align 4
  br label %B14
}
define i32 @main(){
B19:
  %t9 =  call i32 @ifElse()
  ret i32 %t9
}
