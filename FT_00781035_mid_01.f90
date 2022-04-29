! 00781035
IMPLICIT NONE
!REAL normal_year,year_366
INTEGER year
CHARACTER*50 RESULT1,RESULT2
RESULT1 = ' : This year is a normal year and it has 365 days.'
RESULT2 = ' : This year is a leap year and it has 366 days.'
WRITE(*,*) 'Input a year >>'
READ(*,*),year
OPEN(11,FILE='FT_00781035_mid_1_out.out',Access='SEQUENTIAL',FORM='FORMATTED')
IF (MOD(year,4).EQ.0) THEN
    WRITE(11,100) year,RESULT2
ELSEIF (MOD(year,100).EQ.0) THEN
    IF (MOD(year,400).EQ.0) THEN
        WRITE(11,100) year,RESULT2
    ELSEIF (MOD(year,400).NE.0) THEN
        WRITE(11,100) year,RESULT1
    END IF
ELSE
    WRITE(11,100) year,RESULT1
END IF
100 FORMAT(I4,A)
CLOSE(11)
END
