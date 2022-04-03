IMPLICIT none
INTEGER A1,B1,C1,A2,B2,C2,A3,B3,C3
REAL sum_A,sum_B,sum_C
OPEN(30,FILE='FT_1102_EX_0302_BIN.DAT',ACCESS='sequential',FORM='FORMATTED')
READ(30,*) A1,A2,A3
READ(30,*) B1,B2,B3
READ(30,*) C1,C2,C3
!read(30,*) B1,B2,B3
!read(30,*) C1,C2,C3
!20 format(F2)
sum_A = A1+A2+A3
sum_B = B1+B2+B3
sum_C = C1+C2+C3
WRITE(*,*) sum_A
WRITE(*,*) sum_B
WRITE(*,*) sum_C
!WRITE(*,100) A1,'+',A2,'+',A3,'=',sum_A
!100 FORMAT(3(I5,A1),F8.2)
!WRITE(*,100) B1,'+',B2,'+',B3,'=',sum_B
!WRITE(*,100) C1,'+',C2,'+',C3,'=',sum_C
CLOSE(30)
END
