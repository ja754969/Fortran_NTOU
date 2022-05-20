! FT_1102_CH08_0201_4.f90
IMPLICIT NONE
INTEGER B(4),C(4),D(4),E(4),F(6),G(4)
INTEGER K
B = [1,2,3,4]
C = (/5,6,7,8/)
D = (/B(1:4)+1/)
E = (/(K+1,K=1,7,2)/)
F = (/1,B(1:2),(K,K=10,12)/)
WRITE(*,100) 'B=',B
WRITE(*,100) 'C=',C
WRITE(*,100) 'D=',D
WRITE(*,100) 'E=',E
WRITE(*,'(A4,6I5)') 'F=',F
100 FORMAT(A4,4I5)

END

