program Celsius_into_Fahrenheit !摄氏温度向华氏温度的转换
implicit none

real :: c,f
read*,c

f = 9*c/5+32

write(*,"(F0.2)") f

end