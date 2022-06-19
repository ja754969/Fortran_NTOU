IMPLICIT NONE
REAL x,y,wd(4),ws(4)
INTEGER i
data wd /0,90,180,270/
data ws/1,3,2,4/
OPEN(30,file='wind_1.dat')
DO i = 1,4
    WRITE(30,'(2I5,2F5.1)') I,1,wd(i),ws(i)
END DO
CLOSE(30)
! GMT
OPEN(50,file='ft_gmt_plt_arr_1.bat')
100 format(A)
WRITE(50,100) 'gmt begin gmt_wind_1 jpg'
WRITE(50,100) 'gmt set GMT_THEME cookbook'
WRITE(50,100) 'psbasemap -JX20/5 -R0/5/0/2 -Bxaf1 -BWS'
!WRITE(50,100) 'psxy wind_sp_dir.dat -SV0.1c/0.4c/0.2c -Gblue -Wthinnest'
WRITE(50,100) 'psxy wind_1.dat -SV0.1c/0.4c/0.2c -Gred -Wthinnest ^'
WRITE(50,100) '-Bxf30+l"time" -B+t"Plot Quivers"'
WRITE(50,100) 'gmt end show'
CLOSE(50)
call execute_command_line('cmd')
END
