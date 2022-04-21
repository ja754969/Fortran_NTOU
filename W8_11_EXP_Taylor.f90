! 計算EXP(x)的Taylor展開式
! 輸入一x值及欲計算的項次，求出收斂值 EXP(X)
IMPLICIT none
REAL X,CONV,RESULT1,ACCUM,XX
INTEGER N,N_COUNT
WRITE(*,*) 'X, N>'
READ(*,*) X,N
RESULT1 = 1.0
N_COUNT = 1
ACCUM = 1.0
XX = 1.
100 IF (N .GT. N_COUNT) then
        XX = XX*X
        ACCUM = ACCUM*N_COUNT
        RESULT1 = RESULT1 + XX/ACCUM
        N_COUNT = N_COUNT + 1
        GO TO 100
    END IF ! N>=N_COUNT
WRITE(*,*) 'X, X_COUNT, RESULT = ',X,N_COUNT,RESULT1
end
