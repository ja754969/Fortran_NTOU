! FT_1102_Ch07_0401_1.f90
IMPLICIT NONE
REAL X,Y,X1,Y1,DIST
INTEGER I,IEND
I = 1;DIST = 0.0
READ(*,*,IOSTAT = IEND) x,Y
IBK: DO WHILE (IEND .EQ. 0)
        READ(*,*,IOSTAT=IEND) X1,Y1
        IF(IEND .EQ. 0) THEN
            I = I +1
            DIST = DIST + SQRT((X1-X)**2+(Y1-Y)**2)
            X = X1;Y = Y1
        else
            EXIT IBK
        END IF
     END DO IBK
     WRITE(*,*) 'Number of Lines >',I,' Distance=',DIST
END

