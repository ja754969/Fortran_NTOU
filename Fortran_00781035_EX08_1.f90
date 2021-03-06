! 曾鈺皓 00781035 Fortran_HW8_1
IMPLICIT NONE
REAL Press_sf(24),Ta(24),Press_sf_day_mean(10),Ta_day_mean(10)
REAL Press_sf_total(10),Ta_total(10),Press_sf_total_mean,Ta_total_mean
INTEGER I,K
CHARACTER DATE_data*10,Data_name*10,DATE_data_k(10)*10,Data_name_k(10)*10
OPEN(10,FILE = 'FT_1102_EX08_Ta_inp.dat',Access='SEQUENTIAL',FORM='FORMATTED')
OPEN(20,FILE = 'FT_1102_EX08_Press_inp.dat',Access='SEQUENTIAL',FORM='FORMATTED')
OPEN(30,FILE = 'FT_00781035_EX08_1.out',Access='SEQUENTIAL',FORM='FORMATTED')
K = 0
Ta_total_mean = 0.0
Press_sf_total_mean = 0.0
DO WHILE (.TRUE.)

    READ(10,101,END=100) DATE_data,Data_name,Ta
    !WRITE(*,101) DATE_data,Data_name,Ta
    READ(20,201,END=100) DATE_data,Data_name,Press_sf
    !WRITE(*,201) DATE_data,Data_name,Press_sf
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
WRITE(*,*) Ta_day_mean
WRITE(*,*) Press_sf_day_mean
WRITE(*,*) Ta_total_mean
WRITE(*,*) Press_sf_total_mean
WRITE(30,'(3A10)') 'YYYY_MMDD','P_sf(hPa)','Ta(^oC)'
DO I=1,K
    WRITE(30,301) DATE_data_k(I),Press_sf_day_mean(I),Ta_day_mean(I)
END DO
301 FORMAT(A10,2F8.1)
WRITE(30,'(3A10)') '---','---','---'
WRITE(30,301) 'Total mean',Press_sf_total_mean,Ta_total_mean
CLOSE(10)
CLOSE(20)
END
