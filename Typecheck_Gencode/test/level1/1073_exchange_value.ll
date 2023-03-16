@n = dso_local global i32 0
declare i32 @getint()
declare void @putint(i32)
declare void @putch(i32)
define i32 @main(){
B30:
  %t33 = alloca i32, align 4
  %t32 = alloca i32, align 4
  %t31 = alloca i32, align 4
  %t4 =  call i32 @getint()
  store i32 %t4, i32* %t31, align 4
  %t7 =  call i32 @getint()
  store i32 %t7, i32* %t32, align 4
  %t11 = load i32, i32* %t31, align 4
  store i32 %t11, i32* %t33, align 4
  %t13 = load i32, i32* %t32, align 4
  store i32 %t13, i32* %t31, align 4
  %t15 = load i32, i32* %t33, align 4
  store i32 %t15, i32* %t32, align 4
  %t16 = load i32, i32* %t31, align 4
  call void @putint(i32 %t16)
  store i32 10, i32* %t33, align 4
  %t20 = load i32, i32* %t33, align 4
  call void @putch(i32 %t20)
  %t23 = load i32, i32* %t32, align 4
  call void @putint(i32 %t23)
  store i32 10, i32* %t33, align 4
  %t27 = load i32, i32* %t33, align 4
  call void @putch(i32 %t27)
  ret i32 0
}
