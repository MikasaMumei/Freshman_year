program Quadratic_Equation_of_One_Variable
implicit none
    real :: delta , x1 , x2 , a , b , c
    
    write(*,*) '解一元二次方程：ax^2 + bx + c = 0'
    write(*,*) '请输入a:'
    read*,a
    write(*,*) '请输入b:'
    read*,b
    write(*,*) '请输入c:'
    read*,c
    
    delta = b**2 - 4*a*c
    if (delta > 0) then
        x1 = (-b + sqrt(delta))/2.* a
        x2 = (-b - sqrt(delta))/2.* a
        write(*,*) 'x1 = ' , x1 ,'x2 = ' , x2
    
    else if (delta == 0) then
        x1 = (-b) / 2 * a
        write(*,*) 'x1 = x2 = ' , x1
    
    else 
        write(*,*) 'The equation has no real roots.'
    end if
end