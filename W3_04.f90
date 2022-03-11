IMPLICIT NONE
REAL A,B,C
write(*,*) 'input 3 real numbers >>'
read(*,*) A,B,C

write(*,*) 'A=',A,'B=',B,'C=',C
OPEN(12,File= 'FT_Ch0302.DAT',FORM='FORMATTED',ACCESS='SEQUENTIAL')
write(12,*) A,B,C
Write(12,*) A,B,C
Close(12)
end
