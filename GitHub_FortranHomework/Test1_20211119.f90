program Quadratic_Equation_of_One_Variable
implicit none
    real :: delta , x1 , x2 , a , b , c
    
    write(*,*) '��һԪ���η��̣�ax^2 + bx + c = 0'
    write(*,*) '������a:'
    read*,a
    write(*,*) '������b:'
    read*,b
    write(*,*) '������c:'
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