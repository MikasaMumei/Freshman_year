program Find_Medium
implicit none
    integer,allocatable :: row(:)
    integer::m(1)
    integer::N,o,t,medium

    do while (.true.)
        read(*,*)N                       !设定可变数组
        if (N<1 .or. N>10000) exit
        allocate(row(N))

        read(*,*) row

        if (N==1) then                   !选择排序
            continue
        else
            do o=1,N-1
            m = minloc(row(o:)) + o - 1
            t = row(o)
            row(o)=row(m(1))
            row(m)=t
            end do
        end if

        if (mod(N,2)==0) then            !找中位数
            medium = floor((row(N/2)+row(N/2+1))/2.)
        else
            medium = row(N/2+1)
        end if

        write(*,"(I0)") medium           !输出中位数
        deallocate(row)                  !释放内存
    end do
end program
