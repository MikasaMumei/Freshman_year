program Formula_implementation !˳��ṹ�ϻ���ϰ2-��ʽʵ��
real :: pi=3.1415926 , x , a , alpha

read*,a
alpha = a * pi / 180               !a�����tan()�еĽǶ�Ҫ���ǻ��ȣ���Ҫת��
x = (1+tan(alpha)) ** 0.5          !����(1.0/2.0)  ps��Fortran��1/2 = 0 
y = exp((pi * x)/2) + log(abs(sin(x)**2-sin(x**2)))

write(*,"(F0.2)") y

end