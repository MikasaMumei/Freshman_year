program Two_Digit_Inversion   !��λ������
implicit none
    real :: a , b 
    read(*,*) a
    
    b = 10 * mod(a,10.) + (a / 10 )
    
    write(*,"(I2)") int(b)
end