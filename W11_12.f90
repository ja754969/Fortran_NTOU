! FT_1102_Ch07_0401_1.f90
IMPLICIT NONE
INTEGER X,IEND
DO
    READ(*,*,END = 100,ERR = 200,IOSTAT = IEND) X
    IF(IEND .EQ. 0) THEN
        WRITE(*,*) IEND,X
    ELSE
        CYCLE
    END IF
    100 WRITE(*,*) 'IEND = ',IEND
    200 WRITE(*,*) 'IEND 2 = ',IEND
    IF(X .EQ. 99) EXIT
    IF(X .LT. 10) CYCLE
    WRITE(*,*) 'X = ',X
END DO
WRITE(*,*) 'Outside loop, X=',X
END
