Program Quadratic_Equation_of_One_Variable_Simple   !一段简单的解一元二次方程的代码，没有考虑非一元二次方程的情况。
implicit none
    real(8):: delta , x1 , x2 , a , b , c
    
    read*, a!=0 , b , c
    delta = b**2 - 4*a*c
    if (delta > 0) then
        x1 = (-b + sqrt(delta))/2.* a
        x2 = (-b - sqrt(delta))/2.* a
        write(*,100) 'r1=' , x1 , 'r2=' , x2
     else if (delta == 0 ) then
        x1 = -b / 2.*a
        write(*,100) 'r1=' , x1 , 'r2=' , x1
100 format('' , A3 , F7.2 , / , A3 , F7.2)        !一种格式化输出
    else 
        write(*,200)'No real roots!'
200 format('' , A14)
    end if
end
