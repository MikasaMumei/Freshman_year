program Verifying_Goldbach_Conjecture_With_Subroutine
implicit none
    integer::x,y,n,W

    do n=6,100,2
        do x = 2 , n/2
        call Judge_Prime(x,W)
            if (W==0) then
                y = n - x
                call Judge_Prime(y,W)
                if (W==0) then
                    write(*,*) n,'=',x,'+',y
                end if
            end if
        end do
    end do
end program

subroutine Judge_Prime(x,W)
    integer,intent(in)::x
    integer,intent(out)::W
    integer::i,j

        i = sqrt(real(x))
        j = 2
        do while(j<=i .and. mod(x,j)/=0)
            j = j + 1
        end do

        if (j>i) then
            W=0
        else
            W=1
        end if

end subroutine
