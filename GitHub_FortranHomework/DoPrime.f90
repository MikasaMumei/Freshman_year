program prime
implicit none
    integer :: a,i
    logical :: x
    read*,a

    do i=2 , a-1
        if (mod(a,i)==0) then
            x = .false.                           !������
            print*,a,'is NOT prime number'
            exit                                  !������
        else
            print*,a,'is prime number'
            exit                                  !������
        end if
    end do
end