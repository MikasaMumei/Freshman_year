program Formula_implementation !顺序结构上机练习2-公式实现
real :: pi=3.1415926 , x , a , alpha

read*,a
alpha = a * pi / 180               !a题干中tan()中的角度要求是弧度，需要转换
x = (1+tan(alpha)) ** 0.5          !或者(1.0/2.0)  ps：Fortran中1/2 = 0 
y = exp((pi * x)/2) + log(abs(sin(x)**2-sin(x**2)))

write(*,"(F0.2)") y

end