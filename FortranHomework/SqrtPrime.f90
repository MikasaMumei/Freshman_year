program SqrtPrime
implicit none
    
    integer:: i,j,n
    read*, n
    
    j = sqrt(real(n))
    i = 2
    do while(i<=j .and. mod(n,i)/=0)
        i = i + 1
    end do
    
    if (i>j) then
    print*,n, 'is a prime number'
    else
    print*,n, 'is NOT a prime number'
    end if
end