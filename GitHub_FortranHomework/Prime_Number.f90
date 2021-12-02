program Prime_Number_Judgement
implicit none
    logical :: Judge = .false.
    integer :: n , i
    
    do n = 2 , 100
        do i = 2 , n-1
            if(mod(n,i) == 0) then
                Judge = .true.
                print*, n , '=', i, '*', n/i
                exit
            else
                continue
            end if
            Judge = .false.
        end do
        
        if (.not.Judge) then
            print*, n, 'is a prime number'
        end if
    end do

end