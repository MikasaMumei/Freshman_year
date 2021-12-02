program Judgment_of_Normal_And_Leap_Years
implicit none
    integer :: year 
    logical :: MOD_4 , MOD_100 , MOD_400
    
    write(*,*) '请输入一个公历年份'
    read*,year
    
    mod_4 = mod(year,4) == 0
    mod_100 = mod(year,100) == 0
    mod_400 = mod(year,400) == 0
    
    if (mod_4 .eqv. .true.) then                !能被4整除
        if (mod_100 .eqv. .TRUE.) then          !能被100整除
            if (mod_400 .eqv. .TRUE.) then      !能被400整除
                write(*,*) '闰年(366天)'
            else
                write(*,*) '平年(365天)'
            end if
        else
            write(*,*) '闰年(366天)'
        end if
    else
        write(*,*) '平年(365天)'
    end if
END