program Area_and_Volume_of_Ball   !求球的面积与体积
implicit none
    real :: x , S , V , pi = 3.1415926
    read*, x
    
    S = 4 * pi * x**2
    V = 4./3. * pi * x**3
    
    write(*,"(2F9.2)") S , V
end