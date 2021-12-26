program C20211219 !Solving definite integral by rectangular method
implicit none
    integer n , i
    real S,dx,a,b
    real h
    real, external :: rectangle,f,f1,f2,f3,f4,f5,f6

    read(*,*)a,b,n
        dx = (b - a) / n
        S = 0
    do i=1, n
        h = f(a+(i-0.5)*dx)
        S = S + rectangle(h,dx)
    end do
    write(*,"('y=',F8.1)") S

end program

real function rectangle(h,dx)
implicit none
    real,intent(in):: h,dx
    rectangle = h * dx
    return
end function

real function f(x)
implicit none
    real,intent(in):: x
    real, external :: f1,f2,f3,f4,f5,f6
    if(x<0) then
        f = f1(x)
    else if(x>=0 .and. x<1) then
        f = f2(x)
    else if(x>=1 .and. x<4) then
        f = f3(x)
    else if(x>=4 .and. x<16) then
        f = f4(x)
    else if(x>=16 .and. x<64) then
        f = f5(x)
    else if(x>=64) then
        f = f6(x)
    end if

    return
end function

real function f1(x)!x<0
implicit none
    real,intent(in):: x
    f1 = 1 - exp(x)
    return
end function

real function f2(x)!x>=0 .and. x<1
implicit none
    real,intent(in):: x
    f2 = x**4
    return
end function

real function f3(x)!x>=1 .and. x<4
implicit none
    real,intent(in):: x
    f3 = x**3
    return
end function

real function f4(x)!x>=4 .and. x<16
implicit none
    real,intent(in):: x
    f4 = x**2 + 48
    return
end function

real function f5(x)!x>=16 .and. x<64
implicit none
    real,intent(in):: x
    f5 = x + 288
    return
end function

real function f6(x)!x>=64
implicit none
    real,intent(in):: x
    f6 = x**0.5 + 344
    return
end function




