Program q1106   !Trapezoidal method for definite integral
implicit none
    integer n, i
    real S, dx, a, b
    real ubound, lbound
    real, external ::trapezoid, f

    read(*,*)a, b, n
        dx = (b-a)/n
        S = 0
    do i = 1, n
       ubound = f((a+(i-1))*dx)
	   lbound = f(b-(n-i)*dx)
	   S = S + trapezoid(ubound,lbound,dx)
    end do
    write(*,"(F0.2)")S
end program q1106

real function trapezoid(ubound,lbound,dx)
implicit none
    real,intent(in)::ubound,lbound,dx
        trapezoid = (ubound+lbound)*dx/2.
    return
end function trapezoid

real function f(x)
implicit none
    real,intent(in) :: x
	    f=x**2
    return
end function f
