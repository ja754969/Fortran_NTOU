! 求式中 aX^2+b*X+C = 0.0 的 X 值
IMPLICIT NONE
REAL A,B,C,ROOT,SOLUTION,SOLUTION1,SOLUTION2,CONV,SROOT
CONV = 0.00001
WRITE(*,*) 'INPUT A,B,C>'
READ(*,*) A,B,C
ROOT = B*B-4.*A*C
IF (ABS(A) .LE. CONV) THEN
    IF (ABS(B) .LE. CONV) THEN
        WRITE(*,*) 'C=0.0, NO SOLUTION'
    ELSE
        SOLUTION = -C/B
        WRITE(*,*) 'X=-C/B -->',SOLUTION
    END IF
ELSEIF (ROOT .LT. 0.) THEN
    WRITE(*,*) 'NO REAL ROOT'
ELSE
    SROOT = SQRT(ROOT)
    SOLUTION1 = (-B+SROOT)/(2.*A)
    SOLUTION2 = (-B-SROOT)/(2.*A)
    WRITE(*,*) 'TWO ROOTS-->',SOLUTION1,SOLUTION2
END IF ! A<CONV
END