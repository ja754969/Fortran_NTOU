! FT_1102_Ch07_0601_3.f90
IMPLICIT NONE
CHARACTER DD*8,TT*10,Z*5
INTEGER V(8)
REAL T,RAN,T1
INTEGER L,N,M,J
L = 1;N = 0;J = 0
CALL DATE_AND_TIME(DD,TT,Z,V)
WRITE(*,'(8I6)') V(1:8)
WRITE(*,*) 'DD=',DD
WRITE(*,*) 'TT=',TT
WRITE(*,*) 'Z=',Z
M = INT(RAN(V(8))*100000.)
DO WHILE (L .EQ. 1)
    J = J+1
    T = RAN(M)
    N = INT(T*2000.)
    IF((N.GE.1) .AND. (N.LE.6)) L=2
    IF(N.LE.1) M=N
END DO
WRITE(*,*) 'J=',J,'T=',T,'N=',N
END