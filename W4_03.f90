IMPLICIT NONE
REAL A,B,C
WRITE(*,*) 'INPUT FOR A,B,C>'
READ(*,*) A,B,C
OPEN(23,FILE='FT_CH030303.DAT')
WRITE(23,50) A,B,C
50 FORMAT(3F5.2)
CLOSE(23)
END
