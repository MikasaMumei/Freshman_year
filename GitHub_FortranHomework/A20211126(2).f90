program main
implicit none
    real f
    character(10) i
    read*,f

    if (f>250) then
        i='ÌØ´ó±©Óê'
    else if (f>=100 .and. f<=250) then
        i='´ó±©Óê'
    else if(f>=50 .and. f<100) then
        i='±©Óê'                      
    else if(f>=25 .and. f<50) then
        i='´óÓê'
    else if(f>=10 .and. f<25) then
        i='ÖĞÓê'
    else if(f<10 .and. f>=0) then
        i='Ğ¡Óê'
    end if

write(*,*) i

end