! FT_1102_Ch07_0201_8.f90
IMPLICIT NONE
INTEGER I,J,K
K = 0
DO I = 1,5
    DO J = 1,3
        WRITE(*,*) 'I=',I,' J=',J
        K = K+1
        ! I = 8
    END DO
END DO
WRITE(*,*) '2..I=',I,' J=',J
WRITE(*,*) 'K=',K
END

