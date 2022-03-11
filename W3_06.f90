IMPLICIT NONE
REAL X1,Y1,Z1,X2,Y2,Z2
REAL A,B
OPEN(UNIT=23,File= './FT_Ch0302.DAT',FORM='FORMATTED',ACCESS='SEQUENTIAL',status = 'unknown')
READ(23,*) X1,Y1,Z1
write(*,*) 'x1=',X1,' y1=',Y1,' z1=',Z1
READ(23,*) X2,Y2,Z2
write(*,*) 'x2=',X2,' y2=',Y2,' z2=',Z2
CLOSE(23)
A = X1+Y1+Z1
B = X2*Y2
Write(*,*) 'A=',A,'B=',B
end
