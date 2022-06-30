! 00781035
IMPLICIT NONE
CHARACTER*15 YY_title,MM_title,DD_title,TT_title,Pre_title,Ta_title
INTEGER YY,MM,DD,TT,I,k,k2
REAL Pressure,Ta
REAL Pressure_day(24),Ta_day(24)
REAL Pressure_total(10),Ta_total(10)
REAL Pressure_avg_day,Ta_avg_day,Pressure_std_day,Ta_std_day
REAL Pressure_avg(10),Ta_avg(10),Pressure_std(10),Ta_std(10)
OPEN(30,FILE = 'FT_1102_Final_P03_inp.csv',Access='SEQUENTIAL',FORM='FORMATTED')
READ(30,*) YY_title,MM_title,DD_title,TT_title,Pre_title,Ta_title
WRITE(*,*) YY_title,MM_title,DD_title,TT_title,Pre_title,Ta_title
k = 1
k2 = 0
DO WHILE (.TRUE.)
    READ(30,*) YY,MM,DD,TT,Pressure,Ta
    WRITE(*,*) YY,MM,DD,TT,Pressure,Ta
    IF (TT .NE. 1) THEN
        k = k+1
        Pressure_day(k) = Pressure
        Ta_day(k) = Ta
        IF (TT .EQ. 24) THEN
            k2 = k2+1
            CALL FT_00781035_sub_avg_std_p03(Pressure_avg_day,Ta_avg_day,Pressure_std_day,Ta_std_day,Pressure_day,Ta_day)
            Pressure_avg(k2) = Pressure_avg_day
            Ta_avg(k2) = Ta_avg_day
            Pressure_std(k2) = Pressure_std_day
            Ta_std(k2) = Ta_std_day
        END IF
    ELSE
        k = 1
        Pressure_day(k) = Pressure
        Ta_day(k) = Ta
    END IF
END DO
CLOSE(30)
END

!SUBROUTINE FT_00781035_sub_avg_std_p03(Pressure_avg_day,Ta_avg_day,Pressure_std_day,Ta_std_day,Pressure_day,Ta_day)
    !IMPLICIT none
    !REAL Pressure_avg_day,Ta_avg_day,Pressure_std_day,Ta_std_day,Pressure_day,Ta_day
    !Pressure_avg_day = SUM(Pressure_day)/13.0
    !Ta_avg_day = SUM(Ta_day)/13.0
    !Pressure_std_day = SQRT(SUM((Pressure_day-Pressure_avg_day)**2)/(13.0-1))
    !Ta_std_day = SQRT(SUM((Ta_day-Ta_avg_day)**2)/(13.0-1))
    !RETURN
!END SUBROUTINE
