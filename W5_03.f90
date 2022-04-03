IMPLICIT NONE
REAL A2 ! 4 bytes
integer*2 B2,B3,B4 ! 2 bytes
OPEN(40,file='FT_1102_Ch0304_2.dat',access='direct',recl=4,status='unknown')
READ(40,rec=1) A2
WRITE(*,*) 'A2=',A2
READ(40,rec=2) B2
WRITE(*,*) 'B2=',B2
READ(40,rec=3) B3
WRITE(*,*) 'B3=',B3
READ(40,rec=4) B4
WRITE(*,*) 'B4=',B4
CLOSE(40)
end
