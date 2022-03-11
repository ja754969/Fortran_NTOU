IMPLICIT NONE
LOGICAL A
REAL C,D
write(*,*) 'INPUT 2 digital number >'
READ(*,*) C,D
A=.TRUE.
WRITE(*,*) 'A=',A
WRITE(*,*) 'C=',C,'D=',D
IF(C.GT.D) A=.FALSE.
write(*,*) '2..A=',A
end
