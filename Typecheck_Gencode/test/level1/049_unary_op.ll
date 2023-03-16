define i32 @main(){
B14:
  %t15 = alloca i32, align 4
  store i32 10, i32* %t15, align 4
  %t2 = load i32, i32* %t15, align 4
  %t3 = icmp eq i32 0, %t2
  %t19 = zext i1 %t3 to i32
  %t4 = icmp eq i32 0, %t19
  %t20 = zext i1 %t4 to i32
  %t5 = icmp eq i32 0, %t20
  %t21 = zext i1 %t5 to i32
  %t6 = sub i32 0, %t21
  %t13 = icmp ne i32 0, %t6
  br i1 %t13, label %B16, label %B23
B16:                               	; preds = %B14
  %t8 = sub i32 0, 1
  %t9 = sub i32 0, %t8
  %t10 = sub i32 0, %t9
  store i32 %t10, i32* %t15, align 4
  br label %B17
B23:                               	; preds = %B14
  br label %B18
B17:                               	; preds = %B16, %B18
  %t12 = load i32, i32* %t15, align 4
  ret i32 %t12
B18:                               	; preds = %B23
  store i32 0, i32* %t15, align 4
  br label %B17
}
