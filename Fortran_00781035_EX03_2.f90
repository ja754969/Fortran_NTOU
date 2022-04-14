! 曾鈺皓 00781035 Fortran_HW3_2
IMPLICIT NONE
INTEGER A1,B1,C1,A2,B2,C2,A3,B3,C3
REAL sum_A,sum_B,sum_C
!! Create unformatted 'FT_1102_EX_0302_BIN.DAT' with the length 12 bytes (per record).
OPEN(11,FILE='FT_1102_EX_0302_BIN.DAT',Access='DIRECT',FORM='UNFORMATTED',RECL = 12)
A1 = 10;B1 = 90;C1 = 95
A2 = 20;B2 = 79;C2 = 90
A3 = 30;B3 = 99;C3 = 85
WRITE(11,rec=1) A1,A2,A3
WRITE(11,rec=2) B1,B2,B3
WRITE(11,rec=3) C1,C2,C3
CLOSE(11)
!!
!! Directly read the variables of 'FT_1102_EX_0302_BIN.DAT' in unformatted.
OPEN(22,FILE='FT_1102_EX_0302_BIN.DAT',Access='DIRECT',FORM='UNFORMATTED',RECL = 12)
READ(22,rec=1) A1,A2,A3
READ(22,rec=2) B1,B2,B3
READ(22,rec=3) C1,C2,C3
write(*,*) A1,A2,A3
write(*,*) B1,B2,B3
write(*,*) C1,C2,C3
sum_A = A1+A2+A3
sum_B = B1+B2+B3
sum_C = C1+C2+C3
WRITE(*,100) A1,'+',A2,'+',A3,'=',sum_A
100 FORMAT(3(I5,A1),F8.2)
WRITE(*,100) B1,'+',B2,'+',B3,'=',sum_B
WRITE(*,100) C1,'+',C2,'+',C3,'=',sum_C
CLOSE(22)
!!
!! Sequentially access the file 'Fortran_HW3_2.OUT' in formatted.
OPEN(33,FILE='Fortran_HW3_2.OUT',ACCESS='sequential',FORM='FORMATTED')
WRITE(33,110) A1,'+',A2,'+',A3,'=',sum_A
110 FORMAT(3(I5,A1),F8.2)
WRITE(33,110) B1,'+',B2,'+',B3,'=',sum_B
WRITE(33,110) C1,'+',C2,'+',C3,'=',sum_C
CLOSE(33)
!!
END
