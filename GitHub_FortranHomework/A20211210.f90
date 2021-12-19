program Matrix_Transpose
implicit none
    integer,parameter :: rows1 = 2 , columns1 = 3
    integer,parameter :: rows2 = 3 , columns2 = 2
    integer :: matrix1(rows1,columns1),matrix2(rows2,columns2)
    integer :: r,c

    read*,((matrix1(r,c),c=1,columns1),r=1,rows1)

    do r=1 , rows1
        do c=1 , columns1
            matrix2(c,r) = matrix1(r,c)
        end do
    end do


    write(*,"(3(2I4,/))")((matrix2(c,r),r=1,columns2),c=1,rows2)


end program
