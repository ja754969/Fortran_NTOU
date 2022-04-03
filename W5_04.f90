IMPLICIT NONE
LOGICAL EX,OP
character*20 F_name
INTEGER numl ! 檔案代號
!OPEN(50,file='FT_1102_Ch0304_2.dat')
READ(*,'(A)') F_name
INQUIRE(FILE=F_name,exist=EX,OPENED=op,number=numl)
write(*,*) 'EX = ',EX,' op = ',op,' numl = ',numl
!CLOSE(50)
END
