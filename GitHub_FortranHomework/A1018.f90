program ReturnMaxAndMin !求输入三个实数求最大值最小值
real :: a,b,c,d,e
read*, a,b,c
d = max(a,b,c)
e = min(a,b,c)
print*,d,e
end