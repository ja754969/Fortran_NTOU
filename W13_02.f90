! FT_1102_CH08_0201_1.f90
IMPLICIT NONE
INTEGER N,I
REAL A(10)
REAL B(10)
data B/2,4,6,8,10,12,14,16,18,20/
DO I=1,10
    WRITE(*,*) 'Input a number >'
    READ(*,*) A(I)
    WRITE(*,100) I,B(I)
END DO
100 FORMAT('B(',I2,')=',F5.1)
WRITE(*,*) 'A=',(A(I),I=1,10)
WRITE(*,*) 'B=',(B(I),I=1,10)
WRITE(*,120) A
120 FORMAT(3F5.1)
END
