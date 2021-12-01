program Approximate_pi
implicit none
    real :: a , b = 0 , delta , pi
    integer:: n , i
    read* , n
    
    do i = 1 , n
        delta = 1. / i**2
        a = b + delta
        b = a
    end do
    pi = sqrt(6*b)
    write(*,"(a,f5.2)") 'pi=',pi
    
end