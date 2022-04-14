IMPLICIT none
INTEGER A1,B1,C1,A2,B2,C2,A3,B3,C3
REAL mean_1,mean_2,mean_3
character Name1,Name2,Name3
OPEN(31,FILE='FT_1102_EX0301_B_DIR.OUT',ACCESS = 'Direct',FORM='FORMATTED',RECL=40)
READ(31,459,rec=1) Name1,A1,B1,C1,mean_1
write(*,*) Name1,A1,B1,C1,mean_1
READ(31,459,rec=2) Name2,A2,B2,C2,mean_2
write(*,*) Name2,A2,B2,C2,mean_2
READ(31,459,rec=3) Name3,A3,B3,C3,mean_3
write(*,*) Name3,A3,B3,C3,mean_3
459 FORMAT(A8,3(I8),F8.2)
CLOSE(31)
END
