program Rainfall_Intensity
implicit none
    integer:: x
    read* , x
    
    select case(x)
        case(:9)
            write(*,*) "С��"
        case(11:24)
            write(*,*) "����"
        case(25:49)
            write(*,*) "����"
        case(50:99)
            write(*,*) "����"
        case(100,250)
            write(*,*) "����"
        case(251:)
            write(*,*) "�ش���"
    end select
end