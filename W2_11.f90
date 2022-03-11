IMPLICIT NONE
REAL*8 X,A,B,Y,PI
write(*,*) 'input a number>'
READ(*,*) A
X = sin(A)
write(*,*) 'A=',A,'X=',X
write(*,*) 'asin(X)=',asin(X),'DEGREE ASIN(X)=',ASIN(X)*180.0/3.141592
Y=cos(A)
write(*,*) 'Y=',Y
write(*,*) 'ACOS(Y)=',ACOS(Y)
write(*,*) 'TAN(A)=',TAN(A),' X/Y=',SIN(A)/COS(A)
PI = 3.141592
B=30
X=SIN(B*PI/180.0)
WRITE(*,*) 'X=',X, 'ASIN(X)=',ASIN(X),ASIN(X)*180.0/PI
end
