! FT_gmt_1102_1.f90
IMPLICIT NONE
REAL x,y
INTEGER i
OPEN(30,FILE='x_cosx.dat')
DO i = 1,100
    x = float(i)/10.0
    y = cos(x)
    WRITE(30,'(2F12.6)') x,y
END DO
CLOSE(30)
OPEN(40,FILE = 'gmt_plot_cosx.bat')
WRITE(40,'(A)') 'gmt begin GMT_PT_cos_1 jpg'
WRITE(40,'(A)') 'gmt set GMT_THEME cookbook'
WRITE(40,'(A)') 'gmt plot x_cosx.dat -R0/10/-2/2 -Jx1i -B -Wthinner ^'
!WRITE(40,'(A)') 'gmt plot x_cosx.dat -R0/10/-2/2 -B -Wthinner ^'
!WRITE(40,'(A)') 'gmt plot x_cosx.dat -R0/10/-2/2 ^'
WRITE(40,'(A)') '-Bxaf+l"X-axis" -By+l"Y-axis" -B+t"Plot cosx" '
!WRITE(40,'(A)') '-Bxaf+1"X-axis" '
WRITE(40,'(A)') 'gmt end show'
CLOSE(40)
call execute_command_line('cmd')
END
