! FT_1102_Ch07_0201_5.f90
IMPLICIT NONE
INTEGER I,J
OPEN(30,FILE = 'FT_do_write_3.out')
DO I = 1,3
    WRITE(*,*) (J,J=1,5)
END DO
100 FORMAT(I4)
WRITE(*,*) 'I=',I,' J=',J
CLOSE(30)
END

