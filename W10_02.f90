IMPLICIT NONE
INTEGER MONTH
100 WRITE(*,*) 'Input a month >> '
READ(*,*) MONTH
SELECT CASE (MONTH)
    CASE(3:5)
        WRITE(*,*) 'Spring'
    CASE(6:8)
        WRITE(*,*) 'Summer'
    CASE(9,10,11)
        WRITE(*,*) 'Autumn'
    CASE (12,1,2)
        WRITE(*,*) 'Winter'
    CASE DEFAULT
        WRITE(*,*) 'Not a month'
END SELECT
END
