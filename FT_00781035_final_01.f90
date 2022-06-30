! 00781035
IMPLICIT NONE
INTEGER X1,Y1,X2,Y2
REAL DIST,DIST_data
OPEN(10,FILE = 'FT_1102_Final_P01_inp.DAT',Access='SEQUENTIAL',FORM='FORMATTED')

DO WHILE (.TRUE.)
    READ(10,100) X1,Y1,X2,Y2
    DIST_data = DIST(X1,Y1,X2,Y2)
    OPEN(11,FILE = 'FT_00781035_final_p01_out.dat',Access='SEQUENTIAL',FORM='FORMATTED')
    WRITE(11,200) 'P1(',X1,',',Y1,') , P2(',X2,',',Y2,') ==> ',DIST_data
END DO
100 FORMAT(4I5)
200 FORMAT(A3,I2,A1,I2,A7,I2,A1,I2,A6,F6.2)
CLOSE(10)
CLOSE(11)
END


REAL FUNCTION DIST(X1,Y1,X2,Y2)
IMPLICIT NONE
INTEGER X1,Y1,X2,Y2
DIST = SQRT((FLOAT(X1)-FLOAT(X2))**2+(FLOAT(Y1)-FLOAT(Y2))**2)
RETURN
END FUNCTION