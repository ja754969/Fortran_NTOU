! 曾鈺皓 00781035 Fortran_HW7_1
IMPLICIT NONE
INTEGER N,J,N_I,J_I,cal
REAL C(8),N_factorial(8),J_factorial(8)
OPEN(10,FILE = 'FT_00781035_EX07_1.out',Access='SEQUENTIAL',FORM='FORMATTED')
WRITE(*,*) 'Input N='
read(*,*) N
WRITE(10,*),'THE BINOMIAL COEFFICIENTS FOR N=8'
WRITE(10,101),'N','J','COEFFICIENTS'
101 FORMAT(3A15)
N_factorial = (/(N_I*1.0,N_I=1,N)/)
J_factorial = (/(N_factorial(N+1-N_I)*1.0,N_I=1,N)/)
C = (/(N_I/N_I*1.0,N_I=1,N)/)
DO J = 1,N
    DO cal = 1,J
        C(J) = C(J)*J_factorial(cal)/N_factorial(cal)
    END DO
    WRITE(10,102) N,J,C(J)
END DO
102 FORMAT(2I15,F15.0)
!WRITE(*,*) J_factorial(6:8)
!WRITE(*,*) size(C)
CLOSE(10)
END
