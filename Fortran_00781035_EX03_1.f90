! 曾鈺皓 00781035 Fortran_HW3_1
IMPLICIT NONE
INTEGER A1,B1,C1,A2,B2,C2,A3,B3,C3
REAL mean_1,mean_2,mean_3
CHARACTER*10 NAME1,NAME2,NAME3
!!
!! Create formatted 'FT_1102_EX0301_TXT.TXT' with record length 40.
OPEN(10,FILE='FT_1102_EX0301_TXT.TXT',FORM='FORMATTED',RECL = 40)
WRITE(*,*) 'INPUT the first name>>>'
READ(*,*) name1
WRITE(*,*) 'INPUT the second name>>>'
READ(*,*) name2
WRITE(*,*) 'INPUT the third name>>>'
READ(*,*) name3
A1 = 80;B1 = 90;C1 = 95
A2 = 75;B2 = 79;C2 = 90
A3 = 89;B3 = 99;C3 = 85
WRITE(10,150) 'Name',Name1,Name2,Name3
WRITE(10,200) 'English',A1,A2,A3
WRITE(10,200) 'Math',B1,B2,B3
WRITE(10,200) 'Physics',C1,C2,C3
150 FORMAT(4(A8,1x))
200 FORMAT((A8,3(I8)))
CLOSE(10)
!!
!! Save the variables sequentially into formatted file 'FT_1102_EX03_A_SEQ.OUT'
mean_1 = (A1+B1+C1)/3.0
mean_2 = (A2+B2+C2)/3.0
mean_3 = (A3+B3+C3)/3.0
OPEN(20,FILE='FT_1102_EX03_A_SEQ.OUT',ACCESS = 'Sequential',FORM='FORMATTED')
WRITE(20,150) 'Name',Name1,Name2,Name3
WRITE(20,200) 'English',A1,A2,A3
WRITE(20,200) 'Math',B1,B2,B3
WRITE(20,200) 'Physics',C1,C2,C3
WRITE(20,250) 'Mean',mean_1,mean_2,mean_3
250 FORMAT((A8,3(F8.2)))
CLOSE(20)
!!
!! Save the variables into formatted 'FT_1102_EX0301_B_DIR.OUT' directly.
OPEN(30,FILE='FT_1102_EX0301_B_DIR.OUT',ACCESS = 'Direct',FORM='FORMATTED',RECL=40)
WRITE(30,450,rec=1) Name1,A1,B1,C1,mean_1
WRITE(30,450,rec=2) Name2,A2,B2,C2,mean_2
WRITE(30,450,rec=3) Name3,A3,B3,C3,mean_3
450 FORMAT(A8,3(I8),F8.2)
CLOSE(30)
!!
!! Read formatted 'FT_1102_EX0301_B_DIR.OUT' directly.
!OPEN(31,FILE='FT_1102_EX0301_B_DIR.OUT',ACCESS = 'Direct',FORM='FORMATTED',RECL=40)
!READ(31,459,rec=1) Name1,A1,B1,C1,mean_1
!write(*,*) Name1,A1,B1,C1,mean_1
!READ(31,459,rec=2) Name2,A2,B2,C2,mean_2
!write(*,*) Name2,A2,B2,C2,mean_2
!READ(31,459,rec=3) Name3,A3,B3,C3,mean_3
!write(*,*) Name3,A3,B3,C3,mean_3
!459 FORMAT(A8,3(I8),F8.2)
!CLOSE(31)
!!
END
