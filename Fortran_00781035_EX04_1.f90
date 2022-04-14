! 曾鈺皓 00781035 Fortran_HW4_1
IMPLICIT NONE
character*15 temp_air,temp_dew,unit_air,unit_dew
REAL temp_air_data,temp_dew_data
REAL water_vapor_pressure,saturated_water_vapor_pressure,relative_humidity,a,b
INTEGER I
OPEN(11,FILE='FT_EX04_1_inp.dat',Access='SEQUENTIAL',FORM='FORMATTED')
READ(11,12) temp_air,temp_dew
READ(11,12) unit_air,unit_dew
12 FORMAT(A11,A11)

WRITE(*,*) temp_air,temp_dew
WRITE(*,*) unit_air,unit_dew
13 FORMAT(F8.1,F9.1)

OPEN(22,FILE='FT_00781035_EX04_1.out',Access='SEQUENTIAL',FORM='FORMATTED')
write(22,14) temp_air,temp_dew,'water_vapor_pressure',&
        'saturated_water_vapor_pressure','relative_humidity'
14 FORMAT(A15,A15,A25,A35,A20)
write(22,14) unit_air,unit_dew,'P_v (hPa)','P_s(hPa)','RH(%)'
15 FORMAT(F10.1,F10.1,F35.1,F35.1,F20.1)
DO I=1,10
    READ(11,13) temp_air_data,temp_dew_data
    IF (temp_air_data .LT. 0) THEN
        a = 21.845584
        b = 7.66
        saturated_water_vapor_pressure = 6.1078*exp(a*(temp_air_data+273.16-273.16)/&
                                        (temp_air_data+273.16-b))
    ELSE
        a = 17.2693882
        b = 35.86
        saturated_water_vapor_pressure = 6.1078*exp(a*(temp_air_data+273.16-273.16)/&
                                        (temp_air_data+273.16-b))
    END IF
    IF (temp_dew_data .LT. 0) THEN
        a = 21.845584
        b = 7.66
        water_vapor_pressure = 6.1078*exp(a*(temp_dew_data+273.16-273.16)/&
                                        (temp_dew_data+273.16-b))
    ELSE
        a = 17.2693882
        b = 35.86
        water_vapor_pressure = 6.1078*exp(a*(temp_dew_data+273.16-273.16)/&
                                        (temp_dew_data+273.16-b))
    END IF


    relative_humidity = water_vapor_pressure/saturated_water_vapor_pressure*100.0
    !WRITE(*,13) temp_air_data,temp_dew_data
    WRITE(22,15) temp_air_data,temp_dew_data,water_vapor_pressure,saturated_water_vapor_pressure,relative_humidity
END DO

CLOSE(11)

CLOSE(22)
END
