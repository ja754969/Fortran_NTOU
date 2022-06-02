IMPLICIT NONE
INTEGER I,J,A(2,2)
DO I = 1,2
    DO J = 1,2
        WRITE(*,*) 'Input a number>'
        READ(*,*) A(I,J)
    END DO
    WRITE(*,100) I,(A(I,J),J=1,2)
END DO
100 FORMAT(I2,2I5)
END
