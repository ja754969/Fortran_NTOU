!FT_1102_Ch08_0201_6_bin_read_2.f90
IMPLICIT NONE
INTEGER*1 A(10)
INTEGER I,k,J
REAL TOTAL,AVG
OPEN(50,FILE='FT_1102_Ch08_bin_data.out',ACCESS='DIRECT',RECL=10,STATUS='OLD')
k = 0;total=0.0
DO I=1,10
    READ(50,rec=I) A
    WRITE(*,100) A
    DO J = 1,10
        K = K+1
        TOTAL = TOTAL+A(J)
    END DO
END DO
100 FORMAT(10I3)
CLOSE(50)
WRITE(*,*) 'No=',K,' total=',total
AVG = total/float(K)
WRITE(*,*) 'AVG = ',AVG
END

