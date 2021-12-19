program YH_Triangles
implicit none
    integer,parameter::max=10
    integer::tri(max,max)
    integer::n,i,j,k

    tri(1:,1) = 1
    tri(1,2:) = 0
    read(*,*) n

    do k=1 , n
        if (n==1) then
            continue
        else
            do i=2, k
                do j=2 ,k
                tri(i,j)=tri(i-1,j-1)+tri(i-1,j)
                end do
            end do
        end if

        write(*,"(*(I0,1X))") tri(k,1:k)
    end do

end program
