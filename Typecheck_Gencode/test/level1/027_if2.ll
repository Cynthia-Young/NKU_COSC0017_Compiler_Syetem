@a = dso_local global i32 0
define i32 @main(){
B4:
  store i32 10, i32* @a, align 4
  %t2 = load i32, i32* @a, align 4
  %t3 = icmp sgt i32 %t2, 0
  br i1 %t3, label %B5, label %B9
B5:                               	; preds = %B4
  ret i32 1
B9:                               	; preds = %B4
  br label %B7
B7:                               	; preds = %B9
  ret i32 0
}
