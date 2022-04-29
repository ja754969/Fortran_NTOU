! 00781035
IMPLICIT none
REAL distance,pressure,lat
REAL f,V_g
INTEGER I
OPEN(44,FILE='FT_1102_MID_P04_inp.dat',Access='SEQUENTIAL',FORM='FORMATTED')
45 FORMAT(F7.1,F6.1,F6.1)
46 FORMAT(F6.1,F4.1,F5.1,F11.2,F6.3)
48 FORMAT(A,F6.1,A,F4.1,A,F5.1,A,F11.2,A,F6.3,A)
OPEN(47,FILE='FT_00781035_mid_4_out.out',Access='SEQUENTIAL',FORM='FORMATTED')
DO I=1,9
    READ(44,45) distance,pressure,lat

    V_g = 100.*pressure/(1.46*(10.**(-5.))*sin(lat*3.1415*180.)*0.7*distance)
    f = 1.46*(10.**(-5.))*V_g*sin(lat*3.1415*180.)
    WRITE(*,45) distance,pressure,lat
    WRITE(*,46) distance,pressure,lat,V_g,f
    WRITE(47,48) 'd=',distance,'km, dp=',pressure,'hPa, lat',lat,' degree, Vg=',V_g,'m/sec, f=',f,'m/(sec^2)'
END DO

CLOSE(44)
END
