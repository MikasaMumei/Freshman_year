program Function_Value   !���㺯��ֵ
implicit none
    real :: y , x
    read*, x
    
    y = x**3 + sin(x)**2 + log(x**4+1)
    write(*,"(F0.2)") y
end