! FT_1102_Ch.f90
IMPLICIT NONE
REAL X(5),Y(5),XM,YM,DIST(5),AMAXXY
INTEGER I,IPT
WRITE(*,*) 'Input 5 (x,y) >'
READ(*,*) (X(I),Y(I),I = 1,5)
XM = 0.0;YM = 0.0
DO I = 1,5
    XM = XM + X(I)
    YM = YM + Y(I)
END DO
XM = XM/5.0
YM = YM/5.0
WRITE(*,*) 'XM, YM = ',xm,ym
DO I = 1,5
    DIST(I) = sqrt((X(I)-XM)**2+(Y(I)-YM)**2)
END DO
IPT = 1
AMAXXY = DIST(1)
DO I = 2,5
    IF(DIST(I) .GT. AMAXXY) THEN
        AMAXXY = DIST(I)
        IPT = I
    END IF
END DO
WRITE(*,200) 'max IPT = ',IPT,X(IPT),Y(IPT),DIST(IPT)
200 FORMAT(A10,I4,3F10.2)
END
