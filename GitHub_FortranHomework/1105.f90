program Select_Sort
implicit none
    integer,parameter ::i=10
    integer :: a(i),m(1)
    integer :: o,t

    read(*,*) a
    do o=1,i-1
        m = minloc(a(o:)) + o - 1
        t = a(o)
        a(o)=a(m(1))
        a(m)=t
    end do

    write(*,"(10I4)") a
end program
