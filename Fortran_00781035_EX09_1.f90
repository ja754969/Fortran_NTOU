! 曾鈺皓 00781035 Fortran_HW9_1
IMPLICIT NONE
REAL Press_sf(24),Ta(24),Press_sf_day_mean(10),Ta_day_mean(10)
REAL Press_sf_total(10),Ta_total(10),Press_sf_total_mean,Ta_total_mean
INTEGER I,K
CHARACTER DATE_data*10,Data_name*10,DATE_data_k(10)*10,Data_name_k(10)*10
OPEN(10,FILE = 'FT_1102_EX08_Ta_inp.dat',Access='SEQUENTIAL',FORM='FORMATTED')
OPEN(20,FILE = 'FT_1102_EX08_Press_inp.dat',Access='SEQUENTIAL',FORM='FORMATTED')
OPEN(30,FILE = 'FT_00781035_EX09_1.out',Access='SEQUENTIAL',FORM='FORMATTED')
OPEN(40,FILE = 'FT_00781035_EX09_2.out',Access='SEQUENTIAL',FORM='FORMATTED')
K = 0
Ta_total_mean = 0.0
Press_sf_total_mean = 0.0
DO WHILE (.TRUE.)
    READ(10,101,END=100) DATE_data,Data_name,Ta
    READ(20,201,END=100) DATE_data,Data_name,Press_sf
    k = k+1
    DATE_data_k(k) = DATE_data
    Ta_total(k) = 0.0
    Press_sf_total(k) = 0.0
    DO I = 1,size(Press_sf)
        Ta_total(k) = Ta_total(k)+Ta(I)
        Press_sf_total(k) = Press_sf_total(k)+Press_sf(I)
    END DO
    Ta_day_mean(k) = Ta_total(k)/(size(Press_sf)*1.0)
    Press_sf_day_mean(k) = Press_sf_total(k)/(size(Press_sf)*1.0)
    Ta_total_mean = Ta_total_mean+Ta_total(k)
    Press_sf_total_mean = Press_sf_total_mean+Press_sf_total(k)

end do
101 FORMAT(2A10,24F8.1)
201 FORMAT(2A10,24F8.1)
100 continue
Ta_total_mean = Ta_total_mean/(K*size(Press_sf)*1.0)
Press_sf_total_mean = Press_sf_total_mean/(K*size(Press_sf)*1.0)
DO I=1,K
    WRITE(30,301) I,Press_sf_day_mean(I)
    WRITE(40,301) I,Ta_day_mean(I)
END DO
301 FORMAT(I2,F8.1)
302 FORMAT(2F8.1)
CLOSE(10)
CLOSE(20)
CLOSE(30)
CLOSE(40)
OPEN(50,FILE = 'gmt_00781035_EX09.bat')
WRITE(50,'(A)') 'gmt begin FT_00781035_EX09_jpg jpg'
WRITE(50,'(A)') 'gmt set GMT_THEME cookbook'
WRITE(50,'(A)') 'gmt plot FT_00781035_EX09_1.out -R0/11/1000/1020 -JX15c/7c -Bxa2+l"date" ^'
WRITE(50,'(A)') '-Bya5f1+l"Pressure [hPa]" -BWS+t"00781035" -Wthicker'
WRITE(50,'(A)') 'gmt pstext EX09_1.txt'
WRITE(50,'(A)') 'gmt plot FT_00781035_EX09_2.out -R0/11/15/25 -JX15c/7c -Bya2f2+l"Ta [^oC]" -BnE'
WRITE(50,'(A)') 'gmt pstext EX09_2.txt'
WRITE(50,'(A)') 'gmt end show'

CLOSE(50)
call execute_command_line('cmd')
END
