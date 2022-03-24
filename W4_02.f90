IMPLICIT NONE
REAL A,B,C
OPEN(21,FILE='FT_CH030302.DAT',STATUS='OLD')
READ(21,*) A,B ! read the first line
WRITE(*,*) 'A=',A,' B=',B
READ(21,*) C ! read the second line
WRITE(*,*) 'C=',C
BACKSPACE(21)
READ(21,'(F4.1)') A,B ! read the second line
WRITE(*,*) 'A=',A, 'B=',B
REWIND(21) ! Back to the first line
READ(21,'(F4.1)') A,B,C ! read the 3 lines
WRITE(*,*) 'A=',A, 'B=',B, 'C=',C
REWIND(21) ! Back to the first line
READ(21,'(F4.1,F4.1,F4.1)') A,B,C ! read the first line
WRITE(*,50) 'A=',A, 'B=',B, 'C=',C
50 FORMAT(3(A5,F4.2))
CLOSE(21)
END
