program Find_series                !求级数，其中为了精度要求定义了常数error。
implicit none
    real, parameter:: error = 1E-5
	integer:: n , i
    real:: a , y , delta
    read*, n

    a = 0
	do i = 1 , n
	delta = 1. / (i * (i + 1.))
    if ( abs(delta) <= error) exit
	y =  a + delta
	a = y
	end do
	
	write(*,"(a,F8.5)") "sum=" , y
end
