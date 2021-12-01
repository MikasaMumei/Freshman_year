program prime
implicit none
    integer :: a,i
    logical :: x
    read*,a

    do i=2 , a-1
        if (mod(a,i)==0) then
            x = .false.                           !有问题
            print*,a,'is NOT prime number'
            exit                                  !有问题
        else
            print*,a,'is prime number'
            exit                                  !有问题
        end if
    end do
end