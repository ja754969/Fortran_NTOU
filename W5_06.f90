IMPLICIT NONE
INTEGER x1,y1,u1,v1
INTEGER x2,y2,u2,v2
INTEGER x3,y3,u3,v3

OPEN(30,FILE='FT_Ch03_P02_binary.dat',RECL=16,ACCESS='DIRECT',FORM='UNFORMATTED')
READ(30,rec=1) x1,y1,u1,v1
READ(30,rec=2) x2,y2,u2,v2
READ(30,rec=3) x3,y3,u3,v3
WRITE(*,100) 'x1=',x1,'y1=',y1,'u1=',u1,'v1=',v1
100 FORMAT(4(A5,I6))
WRITE(*,100) 'x2=',x2,'y2=',y2,'u2=',u2,'v1=',v2
WRITE(*,100) 'x3=',x3,'y3=',y3,'u3=',u3,'v3=',v3

CLOSE(30)
END
