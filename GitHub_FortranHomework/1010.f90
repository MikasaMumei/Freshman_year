program I_O_Practice !从键盘输入三个字符BOY，然后把他们输出到屏幕上
implicit none

character(len=3) :: a
read*,a

write(*,"(A3)") a !输出结果顶格，符合判题程序条件
print*,a          !输出结果空格，不符合判题程序条件，改"(A3)"也无效

end
