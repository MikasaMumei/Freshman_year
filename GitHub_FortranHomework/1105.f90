program Select_Sort                   !一组数的选择排序法。
implicit none
    integer,parameter ::i=10          !i为数的数量
    integer :: a(i),m(1)              !定义数组
    integer :: o,t                    !数组中的位置

    read(*,*) a                       !读入一组数
    do o=1,i-1                        !选择排序法核心循环代码
        m = minloc(a(o:)) + o - 1     !minloc()返回数组中最小数的位置+待排位-1
        t = a(o)
        a(o)=a(m(1))                  !待排数与最小值交换
        a(m)=t                        !最小值原位与待排数交换
    end do

    write(*,"(10I4)") a
end program
