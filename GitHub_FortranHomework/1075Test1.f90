program Test1075_1        !为试验1075.f90中的功能而编写的代码
integer :: x
x = 4 ** 1/2              !该处应该用**0.5或者**1./2或者**1/2.否则为整型
write(*,*) x
end
