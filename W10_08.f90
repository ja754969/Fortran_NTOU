IMPLICIT NONE
INTEGER FAC
INTEGER I
FAC = 1
DO I=1,10
    FAC = FAC*I
    WRITE(*,20) I,FAC
END DO
WRITE(*,*) 'FAC = ',FAC
20 FORMAT(I3,'!=',I8)
END