! FT_1102_CH08_0101_1.f90
IMPLICIT none
INTEGER(KIND=1), Dimension(100):: A,B
INTEGER A1(10)
REAL C(10)
REAL*8 D(10)
! Size : 陣列長度
! Size of : 陣列在記憶體裡的大小
WRITE(*,*) 'size of A & sizeof A = ',size(A),sizeof (A)
WRITE(*,*) 'size of B & sizeof B = ',size(B),sizeof (B)
WRITE(*,*) 'size of A1 & sizeof A1 = ',size(A1),sizeof(A1)
WRITE(*,*) 'szie of C & size of C = ',size(C),sizeof(C)
WRITE(*,*) 'szie of D & size of D = ',size(D),sizeof(D)
END
