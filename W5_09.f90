IMPLICIT NONE
REAL A,B,C,D
real*8 D1
A = 12.3
B = 1234.5678
C = 1234567.8912345
D = -123.456
D1 = 1234567.8912345D0
write(*,100) A,B,C
100 format(3F10.4)
write(*,110) A,B,C
110 format(3(F16.8,1x))
write(*,120) A,B,C,D
120 format(3(E13.4,1x))
write(*,130) A,B,C,D
130 format(4(EN13.4,1x))
write(*,140) C,D1
140 format(2(F16.8,1x,D16.8))
write(*,150) 'A=',A,'B=',B,'C=',C
150 format(A5,F16.8/A5,F16.8,1x,A5,F16.8)
write(*,160) 'A=',A,'B=',B,'C=',C
160 format(A5,F16.8//A5,F16.8,1x,A5,F16.8)
write(*,170) 'A=',A,'B=',B,'C=',C
170 format(A5,F16.8)
write(*,180) 'A=',A,'B=',B,'C=',C
180 format(A5,F16.8,A5,F16.8)
END
