IMPLICIT NONE
INTEGER A1
OPEN(20,FILE='FT_CH030302_1.DAT',RECL=10,ACCESS='DIRECT',FORM='FORMATTED')
A1=123
write(20,'(A)',REC=1) 'RECORD ONE'
write(20,'(I5)',REC=3) A1
WRITE(20,'(I5)',REC=2) 789
CLOSE(20)
END
