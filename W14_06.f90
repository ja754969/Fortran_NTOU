IMPLICIT NONE
REAL AREA,AA,X(2,3)
INTEGER I,J
DATA X/0,0,3,0,0,6/ ! 三角形的三個點
DO J = 1,3
    WRITE(*,100) (I,J,X(I,J),I = 1,2)
END DO
100 FORMAT(2I3,F8.2)
AA = 0.0
DO I = 1,2
    AA=AA+X(1,I)*X(2,I+1)-X(1,I+1)*X(2,I)
END DO
AA  =AA+X(1,3)*X(2,1)-X(1,1)*X(2,3)
AREA = 0.5*abs(AA)
WRITE(*,*) 'Area = ',area
! Area = 0.5*(SUM(X_k*Y_K+1+X_k+1*Y_K)) 多邊形的面積計算
END
