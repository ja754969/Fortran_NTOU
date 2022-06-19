! FT_gmt_1102_2.f90
IMPLICIT NONE
REAL x,y,y2
INTEGER i
OPEN(30,FILE='x_sinx_y1.dat')
OPEN(35,FILE='x_sinx_y2.dat')
DO i = 1,100
    x = FLOAT(i)/10.0
    y = sin(x)
    y2 = x**2
    WRITE(30,'(2F12.6)') x,y
    WRITE(35,'(2F12.6)') x,y2
END DO
CLOSE(30)
CLOSE(35)
OPEN(40,FILE = 'gmt_plot_2y.bat')
WRITE(40,'(A)') 'gmt begin GMT_PLOT_2y jpg'
!WRITE(40,'(A)') 'gmt set GMT_THEME cookbook'
!WRITE(40,'(A)') 'gmt psbasemap -R20/50/-3/8 -JX5i/4i -B10:."time(hr)":/1:temperature: -P > plot.ps'
!WRITE(40,'(A)') 'gmt plot x_sinx_y1.dat -R0/10/-2/2 -Jx1i -B -Wthicker ^'
WRITE(40,'(A)') 'gmt plot x_sinx_y1.dat -R0/10/-2/2 -JX15c/7c -BWeSn -Wthinner ^'
WRITE(40,'(A)') '-Bxa2+l"X-axis" -By+l"Y-axis" -B+t"Plot double Y"'
!WRITE(40,'(A)') 'gmt plot x_sinx_y1.dat -R0/10/-2/2 -JX15c/7c -Bxa2+l"X-axis" -By+l"Y-axis" -B+t"Plot_double_Y" -Wthinner -BWNse'
WRITE(40,'(A)') 'gmt plot x_sinx_y2.dat -R0/10/0/100 -JX15c/7c -Bya20f20+l"Y2-axis" -BwEsn'
!WRITE(40,'(A)') 'gmt pstext txt1.txt'
WRITE(40,'(A)') 'gmt end show'
CLOSE(40)
call execute_command_line('cmd')
END
