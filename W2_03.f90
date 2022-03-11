IMPLICIT NONE ! No default declared variable
REAL*8 A,B,C,D,E
A = 1234567890.0
B = 1234567543.2D0
C = 1234567432.1D0
D = 1234567109.8D0
E = B-D
write(*,*) A,B,C
write(*,*) D,E
END

