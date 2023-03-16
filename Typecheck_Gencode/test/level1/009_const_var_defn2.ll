@b = dso_local global i32 5
@a = dso_local global i32 10
define i32 @main(){
B3:
  %t2 = load i32, i32* @b, align 4
  ret i32 %t2
}
