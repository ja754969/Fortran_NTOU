IMPLICIT NONE
LOGICAL LB
CHARACTER*10 TXT2
INTEGER B2
OPEN(30,FILE='FT_CH030304_1.DAT',RECL=10,FORM='UNFORMATTED',ACCESS='DIRECT')
READ(30,rec=2) B2
WRITE(*,*) 'B2=',B2
READ(30,rec=1) TXT2
WRITE(*,*) 'TXT2=',TXT2
READ(30,rec=3) LB
WRITE(*,*) 'LB=',LB
CLOSE(30)
end
