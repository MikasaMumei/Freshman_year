program Test1
implicit none
    integer::x,y,n,W
    y=11
    call Judge_Prime(x,W)
    print*,W
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
