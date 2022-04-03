IMPLICIT NONE
INTEGER A,B
A=12;B=1234
WRITE(*,'(2I5)') A,B
WRITE(*,100) A,B
100 format(I5.5,1x,I7.7)
write(*,110) A,A
110 format(B8,1x,B8.8) ! B : 2進位
write(*,120) A,A
120 format(O4,1x,O4.4) ! O : 8進位
write(*,130) A,A
130 format(Z4,1x,Z4.4) ! Z : 16進位
write(*,140) A,B
140 format(2I7) ! Z : 16進位
END
