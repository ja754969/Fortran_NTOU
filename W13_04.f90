! FT_1102_CH08_0201_3_read.f90
IMPLICIT NONE
INTEGER N,B(9)

OPEN(30,FILE = 'FT_Ch08_02_1.DAT')
READ(30,*) N
WRITE(*,*) 'N=',N
READ(30,*) B
WRITE(*,100) B
100 FORMAT(3I4)

CLOSE(30)
END
