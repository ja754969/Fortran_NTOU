IMPLICIT NONE
REAL X(10),Y(10),XX,YY,XY,SX,SY,AX,AY,X2,Y2,B1,B0,SORT
INTEGER I,N
N = 10
X = (/1,2,3,4,5,6,7,8,9,10/)
Y = (/2.1,2.8,5.7,7.5,8.0,9.0,9.6,11.2,13.8,14.1/)
XX = 0.0
YY = 0.0
XY = 0.0
SX = 0.0
SY = 0.0
DO I=1,N
    XX = XX+X(I)*X(I)
    YY = YY+Y(I)*Y(I)
    XY = XY+X(I)*Y(I)
    SX = SX+X(I)
    SY = SY+Y(I)
END DO
AX = SX/n;AY = SY/n
X2 = XX-SX*SX/N
Y2 = YY-SY*SY/N
XY = XY - SX*SY/N
B1 = XY/X2
B0 = SY/N-B1*SX/N
WRITE(*,*) 'B0=',B0,' B1=',B1
WRITE(*,*) '5..>',B0+B1*5
END
