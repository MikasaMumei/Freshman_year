program main
implicit none
    real f
    character(10) i
    read*,f

    if (f>250) then
        i='�ش���'
    else if (f>=100 .and. f<=250) then
        i='����'
    else if(f>=50 .and. f<100) then
        i='����'                      
    else if(f>=25 .and. f<50) then
        i='����'
    else if(f>=10 .and. f<25) then
        i='����'
    else if(f<10 .and. f>=0) then
        i='С��'
    end if

write(*,*) i

end