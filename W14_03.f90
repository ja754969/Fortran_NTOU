IMPLICIT NONE
INTEGER I,J,A(2,2)
!DO I = 1,2
    !DO J = 1,2
        !WRITE(*,*) 'Input a number>'
        !READ(*,*) A(I,J)
    !END DO
    !WRITE(*,*) 'ENTER 2 number>'
    !READ(*,*) (A(I,J),J=1,2)
    !WRITE(*,100) I,(A(I,J),J=1,2)
!END DO
WRITE(*,*) 'Input 4 number>'
READ(*,*) ((A(I,J),J=1,2),I=1,2)
WRITE(*,100) A
100 FORMAT(2I5)
DO I = 1,2
    DO J = 1,2
        WRITE(*,110) 'A(',I,',',J,')=',A(I,J)
    END DO
END DO
110 FORMAT(A2,I2,A1,I2,A2,I5)
END
