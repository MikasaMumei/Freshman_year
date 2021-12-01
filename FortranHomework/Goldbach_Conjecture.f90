program Goldbach_Conjecture_100
implicit none
    integer :: i1 , j1 , o , i2 , j2 , n ,x=6
    
do while (x <= 100)
    do n = 2 , x/2
        j1 = sqrt(real(n))
        i1 = 2
        do while(i1<=j1 .and. mod(n,i1)/=0)
            i1 = i1 + 1
        end do

        if (i1>j1) then
            o = x - n
            j2 = sqrt(real(o))
            i2 = 2
            do while(i2<=j2 .and. mod(o,i2)/=0)
                i2 = i2 + 1
            end do

            if (i2>j2) then
                write(*,*) x,'=',n,'+',o
            end if
        end if
    end do
    x = x + 2
end do
end