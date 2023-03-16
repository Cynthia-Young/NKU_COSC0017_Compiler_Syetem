define i32 @defn(){
B4:
  ret i32 4
}
define i32 @main(){
B5:
  %t6 = alloca i32, align 4
  %t0 =  call i32 @defn()
  store i32 %t0, i32* %t6, align 4
  %t3 = load i32, i32* %t6, align 4
  ret i32 %t3
}
