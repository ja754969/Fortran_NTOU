IMPLICIT NONE
INTEGER I1,MN,K1
REAL A
A = 100.5;
I1 = 200.5;
MN = 35.6
K1 = I1/MN + A
write(*,*) 'A=',A
write(*,*) 'I1=',I1
write(*,*) 'MN=',MN
write(*,*) 'K1=',K1
write(*,*) 'FLOAT(I1)/FLOAT(MN)=',FLOAT(I1)/FLOAT(MN)
end
