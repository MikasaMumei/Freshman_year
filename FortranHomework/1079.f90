program VariableArithmetic  !��Fortran��������������
implicit none

real:: I,J
read*,I,J

I = I + 1                   !��������ֵ����1���տ�ʼ����������I��������������������ȫ��ȷ��
I = I**3 + J
write(*,"(F0.2)") I

end