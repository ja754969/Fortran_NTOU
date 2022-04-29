IMPLICIT NONE
REAL A,B
A=0.0
DO 10 B = 0.3,0.9,0.3
    A = A+B
    WRITE(*,*) 'A=',A,' B=',B
10 CONTINUE
WRITE(*,*) '2.. A=',A,' B=',B
END
