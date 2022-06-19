IMPLICIT NONE
REAL AREA0,X(100),Y(100)
INTEGER I,N
READ(*,*) N,(X(I),Y(I),I=1,N)
CALL sub_AREA(area0,N,X,Y)
WRITE(*,*) 'area0=',area0
END

SUBROUTINE SUB_AREA(area,N,X,Y)
    IMPLICIT NONE
    REAL AA,AREA,X(1),Y(1)
    INTEGER N,I
    AA = 0.0
    DO I = 1,N-1
        AA=AA+X(I)*Y(I+1)-X(I+1)*Y(I)
    END DO
    AA = AA+X(N)*Y(1)-X(1)*Y(N)
    AREA = 0.5*abs(AA)
    WRITE(*,*) 'AREA = ',area
    RETURN
END SUBROUTINE
