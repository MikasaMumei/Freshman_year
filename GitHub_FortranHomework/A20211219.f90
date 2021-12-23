program Define_Accumulation_Function
implicit none
    integer::n
    real::y
    real,external:: ac
    y = (ac(3)+ac(4)+ac(5))/(ac(6)+ac(8)+ac(9))
    write(*,"('y=',F6.2)") y
end program

real function ac(n)
    integer,intent(in)::n
    integer::i,b
    b=0                   !*****该b不能在声明中赋值，会有save属性*****
    do i=1,n
        ac = b + i
        b = ac
    end do
    return
end function
