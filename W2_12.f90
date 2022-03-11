IMPLICIT NONE
COMPLEX A,B
REAL X,Y
CHARACTER*8 T1,T2
A = (3.0,4.0); B = (3.0,-4.0)
WRITE(*,*) 'ABS(-7,8)=',ABS(-7.8)
WRITE(*,*) 'ABS(A)=',ABS(A),' ABS(B)=',ABS(B)
WRITE(*,*) 'REAL(A)=',REAL(A), ' IMAG(A)=',IMAG(A)
WRITE(*,*) 'REAL(B)=',REAL(B), ' IMAG(B)=',IMAG(B)
WRITE(*,*) 'INT(4.2)=',INT(4.2), ' INT(4.6)=',INT(4.6)
WRITE(*,*) 'INT(-4.2)=',INT(-4.2), ' INT(-4.6)=',INT(-4.6)
WRITE(*,*) 'INT(4.2)=',NINT(4.2), ' INT(4.6)=',NINT(4.6)
WRITE(*,*) 'INT(-4.2)=',NINT(-4.2), ' INT(-4.6)=',NINT(-4.6)
WRITE(*,*) 'MOD(5,3)=',MOD(5,3)
X = EXP(2.0)
WRITE(*,*) 'X=',X,'LOG(X)=',LOG(X)
Y = 100
WRITE(*,*) 'LOG10(Y)',LOG10(Y)
Y = 25.0
WRITE(*,*) LOG(Y)/LOG(5.0)
WRITE(*,*) LOG10(Y)/LOG10(5.0)
WRITE(*,*) 'ACHAR(72)=',ACHAR(72)
WRITE(*,*) 'CHAR("A")=',ICHAR('A')
T1 = 'AB';T2 = 'XY'
WRITE(*,*) 'T1=',T1,' T2=',T2,' T1//T2=',T1//T2
END
