program Calculate_a_plus_b
implicit none

integer:: a,b,c,d
read*,c,d
    if (c >= 0 .and. d <= 10) then
    a = c
    b = d
    else
        print*,'Invalid Numbers'
    end if

write(*,"(I0)")a+b

end