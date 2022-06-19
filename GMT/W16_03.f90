! FT_gmt_hist_1.f90
IMPLICIT NONE
OPEN(30,FILE = 'gmt_hist_01.bat')
WRITE(30,'(A)') 'gmt begin GMT_HIST_01 jpg'
WRITE(30,'(A)') 'gmt set GMT_THEME cookbook'
WRITE(30,'(A)') 'gmt histogram eq.dat -R0/35/0/600 -B -JX8c/5c ^'
WRITE(30,'(A)') '-Bxa7+l"Depth/km" -Bya100f50+l"Counts" ^'
WRITE(30,'(A)') '-BWSne -D+f10p,4+o8p -W5+b -L2p -i2'
WRITE(30,'(A)') 'gmt end show'
CLOSE(30)
call execute_command_line('cmd')
END
