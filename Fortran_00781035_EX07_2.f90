! 曾鈺皓 00781035 Fortran_HW7_2
IMPLICIT NONE
INTEGER N1,J1,N2,J2,N3,J3,N_I,J_I,cal,x,Numbers(4)
REAL C1(4),C2(4),C3,Probabilities(4),N1_factorial(49),J1_factorial(49)
REAL N2_factorial(49),J2_factorial(49),N3_factorial(49),J3_factorial(49)
OPEN(20,FILE = 'FT_00781035_EX07_2.out',Access='SEQUENTIAL',FORM='FORMATTED')
WRITE(20,101),'Numbers','Probability'
101 FORMAT(2A15)
Numbers = (/3,4,5,6/)
C1 = (/(N_I/N_I*1.0,N_I=1,size(Numbers))/)
C2 = (/(N_I/N_I*1.0,N_I=1,size(Numbers))/)
C3 = 1.0
N3 = 49
N1 = 6
N2 = N3-N1

N3_factorial = (/(N_I*1.0,N_I=1,N1)/)
J3_factorial = (/((N3+1-N_I)*1.0,N_I=1,N1)/)
!WRITE(*,*) J3_factorial
DO cal = 1,N1
    C3 = C3*J3_factorial(cal)/N3_factorial(cal)
END DO
DO x = 1,size(Numbers)
    N1_factorial = (/(N_I*1.0,N_I=1,Numbers(x))/)
    J1_factorial = (/((N1+1-N_I)*1.0,N_I=1,Numbers(x))/)
    DO cal = 1,Numbers(x)
        C1(x) = C1(x)*J1_factorial(cal)/N1_factorial(cal)
    END DO
    IF ((N1-Numbers(x)) .EQ. 0) THEN
        C2(x) = 1.0
    ELSE
        N2_factorial = (/(N_I*1.0,N_I=1,N1-Numbers(x))/)
        J2_factorial = (/((N2+1-N_I)*1.0,N_I=1,N1-Numbers(x))/)
        DO cal = 1,Numbers(x)
            C2(x) = C2(x)*J2_factorial(cal)/N2_factorial(cal)
        END DO
    END IF

    Probabilities(x) = C1(x)*C2(x)/C3
    WRITE(20,102) Numbers(x),Probabilities(x)
END DO
102 FORMAT(I15,ES15.1)
!WRITE(*,*) J_factorial(6:8)
!RITE(*,*) C1
!WRITE(*,*) C2
WRITE(*,*) C3
WRITE(*,'(4ES15.1)') Probabilities
CLOSE(20)
END
