IMPLICIT NONE
INTEGER I,J
OPEN(30,FILE = 'FT_do_write.out')
DO I = 1,3
    DO J=1,5
        WRITE(30,100) J
    END DO
    WRITE(*,*) 'J = ',J
    !WRITE(30,100) I
END DO
100 FORMAT(I4)
WRITE(*,*) 'I=',I,' J=',J
CLOSE(30)
END
