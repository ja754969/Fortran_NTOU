IMPLICIT NONE
REAL A,B,IA
INTEGER I,K
WRITE(*,*) 'Input a number>>'
READ(*,*) A
K=0
WRITE(*,100) A
100 FORMAT(F8.2)
WRITE(*,*) 'sqrt(A)=',sqrt(A)
WRITE(*,*) 'A/2=',A/2
DO IA=1,A
    B = MOD(A,IA)
    IF(B .LE. 0.000001) THEN
        K = K+1
        WRITE(*,120) K,IA
    END IF
END DO
120 FORMAT(I6,F8.1)
END
