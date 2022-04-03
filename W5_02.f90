IMPLICIT NONE
REAL A1 ! 4 bytes
integer*2 B1 ! 2 bytes

OPEN(30,file='FT_1102_Ch0304_2.dat',access='direct',recl=4,status='unknown')
a1 = 100.0
b1 = 125
write(30,rec=1) A1
write(30,rec=2) B1
write(30,rec=3) 20
b1 = 257
write(30,rec=4) b1
CLOSE(30)
end
