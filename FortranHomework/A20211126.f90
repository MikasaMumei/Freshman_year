program Rainfall_Intensity
implicit none
    integer:: x
    read* , x
    
    select case(x)
        case(:9)
            write(*,*) "小雨"
        case(11:24)
            write(*,*) "中雨"
        case(25:49)
            write(*,*) "大雨"
        case(50:99)
            write(*,*) "暴雨"
        case(100,250)
            write(*,*) "大暴雨"
        case(251:)
            write(*,*) "特大暴雨"
    end select
end