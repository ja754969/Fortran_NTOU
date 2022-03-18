! 曾鈺皓 00781035 Fortran_HW1_5
IMPLICIT NONE
REAL*8 A, B, A5
INTEGER I, J, K
INTEGER*1 L
A5 = 7.0-1.5
I = 3*(3/2)+5
J=7+5
K = (1./3.)*10 + 4
L = 10-8**(1./3.)
A = (1./7+5)*10.D0
B = 1000.0 + 10*A

write(*,*) 'A=',A
write(*,*) 'B=',B
write(*,*) 'A5=',A5
write(*,*) 'I=',I
write(*,*) 'J=',J
write(*,*) 'K=',K
write(*,*) 'L=',L
END
