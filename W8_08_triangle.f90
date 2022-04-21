! 判斷P4點與三角形P1P2P3中的三個頂點的距離何者最近、何者最遠
IMPLICIT NONE
REAL x1,y1,x2,y2,x3,y3,x4,y4
REAL S1,S2,S3,SMAX,SMID,SMIN

WRITE(*,*) 'INPUT 4 POINTS (x,y)'
READ(*,*) x1,y1,x2,y2,x3,y3,x4,y4
S1=SQRT((X4-X1)**2+(Y4-Y1)**2)
S2=SQRT((X4-X2)**2+(Y4-Y2)**2)
S3=SQRT((X4-X3)**2+(Y4-Y3)**2)
SMAX = MAX(S1,S2,S3)
SMIN = MIN(S1,S2,S3)
SMID = S1+S2+S3-SMAX-SMIN
IF (SMAX .EQ. SMIN) THEN
    WRITE(*,*) 'Max = middle = min ',SMAX
ELSE IF (SMAX .NE. SMID .AND. SMID .NE. SMIN) THEN
    WRITE(*,*) 'Max ≠ middle ≠ min ',SMAX,SMID,SMIN
ELSE IF (SMAX .EQ. SMID) THEN
    WRITE(*,*) 'Max = middle ≠ min ',SMAX,SMID,SMIN
ELSE IF (SMID .EQ. SMIN) THEN
    WRITE(*,*) 'Max ≠ middle = min ',SMAX,SMID,SMIN
END IF


END
