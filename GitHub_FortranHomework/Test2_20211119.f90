program Judgment_of_Normal_And_Leap_Years
implicit none
    integer :: year 
    logical :: MOD_4 , MOD_100 , MOD_400
    
    write(*,*) '������һ���������'
    read*,year
    
    mod_4 = mod(year,4) == 0
    mod_100 = mod(year,100) == 0
    mod_400 = mod(year,400) == 0
    
    if (mod_4 .eqv. .true.) then                !�ܱ�4����
        if (mod_100 .eqv. .TRUE.) then          !�ܱ�100����
            if (mod_400 .eqv. .TRUE.) then      !�ܱ�400����
                write(*,*) '����(366��)'
            else
                write(*,*) 'ƽ��(365��)'
            end if
        else
            write(*,*) '����(366��)'
        end if
    else
        write(*,*) 'ƽ��(365��)'
    end if
END