program VariableArithmetic  !用Fortran语句完成两个操作
implicit none

real:: I,J
read*,I,J

I = I + 1                   !将变量的值增加1（刚开始被看成增加I）答案满足样例，但不完全正确。
I = I**3 + J
write(*,"(F0.2)") I

end