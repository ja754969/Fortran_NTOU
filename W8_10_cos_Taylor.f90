! 計算cos(x)的Taylor展開式，輸入一x值及收斂值
IMPLICIT none
REAL XX,X,Y,CONV,CURRENT,ACCUM,FINAL,AX
INTEGER N,IFLAG
DATA AX,ACCUM,FINAL,IFLAG,N/1.0,1.0,1.0,1,1/
WRITE(*,*) 'Y (degree),CONV>'
READ(*,*) Y,CONV
X = Y*3.14/180.
WRITE(*,*) 'X=',X
AX = 1;ACCUM = 1;N = 1;IFLAG = 1
XX=X*X
CURRENT = 1
100 IF (ABS(CURRENT) .GT. CONV) then
        AX = AX*XX
        ACCUM = ACCUM*(2*N)*(2*N-1)
        CURRENT = AX/ACCUM
        IF (IFLAG .GE. 0) THEN
            CURRENT = -CURRENT
            IFLAG = -1
        ELSE
            IFLAG = 1
        END IF ! IFLAG >= 0
        FINAL = FINAL + CURRENT
        N = N+1
        IF (N>1000) GO TO 200 ! 避免無窮迴路
        GO TO 100
    END IF !CURRENT>=CONV
200 WRITE(*,*) 'N = ',N,'FINAL RESULT = ',FINAL
end
