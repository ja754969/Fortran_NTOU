IMPLICIT none
INTEGER X,Y,Z
OPEN(21,File= 'FT_Ch0301.DAT')
READ(21,*) X,Y,Z
CLOSE(21)
write(*,*) 'x=',X,' y=',Y,' z=',Z
end
