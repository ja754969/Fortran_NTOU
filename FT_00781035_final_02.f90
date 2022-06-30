! 00781035
IMPLICIT NONE
REAL T(13),T_c(13),T_f(13),E(13),FT_00781035_func_Stefan_p02,T_data,Energy(13),lambda(13)
character*8 Spectrum
INTEGER I
data T/500,1000,1500,2000,2500,3000,3500,4000,4500,5000,5500,6000,6500/
!WRITE(*,*) T
CALL FT_00781035_sub_temp_p02(T_c,T_f,T)
!WRITE(*,*) T_C
!WRITE(*,*) T_F
DO I = 1,13
    Energy(I) =  FT_00781035_func_Stefan_p02(T(I))
END DO
!WRITE(*,*) 'E = ',Energy
!WRITE(*,*) SUM(Energy)
CALL FT_00781035_sub_Wen_p02(lambda,T)
OPEN(20,FILE = 'FT_00781035_final_p02_out.dat',Access='SEQUENTIAL',FORM='FORMATTED')
WRITE(20,*) 'T [K]','T_c [C]','T_f [F]','E [W/m^2]','Lambda [m]','Spectrum'
DO I = 1,13
    IF ((lambda(I) .GE. 0.38) .AND. (lambda(I) .LT. 0.45)) THEN
        Spectrum = '  violet'
    ELSEIF ((lambda(I) .GE. 0.45) .AND. (lambda(I) .LT. 0.495)) THEN
        Spectrum = '  blue'
    ELSEIF ((lambda(I) .GE. 0.495) .AND. (lambda(I) .LT. 0.570)) THEN
        Spectrum = '  green'
    ELSEIF ((lambda(I) .GE. 0.570) .AND. (lambda(I) .LT. 0.590)) THEN
        Spectrum = '  yellow'
    ELSEIF ((lambda(I) .GE. 0.590) .AND. (lambda(I) .LT. 0.620)) THEN
        Spectrum = '  orange'
    ELSEIF ((lambda(I) .GE. 0.620) .AND. (lambda(I) .LT. 0.750)) THEN
        Spectrum = '  red'
    ELSEIF ((lambda(I) .GE. 0.750) .AND. (lambda(I) .LT. 2.5)) THEN
        Spectrum = '  NIR'
    ELSEIF ((lambda(I) .GE. 2.5) .AND. (lambda(I) .LT. 25.0)) THEN
        Spectrum = '  MIR'
    ELSEIF ((lambda(I) .GE. 25.0) .AND. (lambda(I) .LT. 1000.0)) THEN
        Spectrum = '  IR'
    ELSE
        Spectrum = '  IR'
    END IF
    WRITE(20,200) T(I),T_c(I),T_f(I),Energy(I),lambda(I),Spectrum

END DO
100 FORMAT(15A)
200 FORMAT(5F20.2,A8)
WRITE(*,*) lambda
!OPEN(50,FILE = 'FT_00781035_Final_gmt_P01.bat')
!WRITE(50,'(A)') 'gmt begin FT_00781035_Final_jpg_p01 jpg'
!WRITE(50,'(A)') 'gmt set GMT_THEME cookbook'
!WRITE(50,'(A)') 'gmt plot FT_00781035_final_p02_out.dat -R -JX15c/7c -Bxa500+l"temp [K]" ^'
!WRITE(50,'(A)') '-Bya50000000f100000+l"Stefan-Boltz [W/M^2]" -BWS+t"00781035" -Wthicker'
!WRITE(50,'(A)') 'gmt pstext EX09_1.txt'
!WRITE(50,'(A)') 'gmt plot FT_00781035_final_p02_out.dat -R -JX15c/7c -Bya2f2+l"Wave [um]" -BnE'
!WRITE(50,'(A)') 'gmt pstext EX09_2.txt'
!WRITE(50,'(A)') 'gmt end show'

!CLOSE(50)
!call execute_command_line('cmd')

END

SUBROUTINE FT_00781035_sub_temp_p02(T_c,T_f,T)
    IMPLICIT none
    REAL T(13),T_c(13),T_f(13)
    T_c = T-273.16
    T_f = 9.0/5.0*(T_c)+32
    RETURN
END SUBROUTINE

REAL FUNCTION FT_00781035_func_Stefan_p02(T)
    IMPLICIT none
    REAL T
    FT_00781035_func_Stefan_p02 = (0.0000000567)*(T**4)
    RETURN
END FUNCTION

SUBROUTINE FT_00781035_sub_Wen_p02(lambda,T)
    IMPLICIT none
    REAL T(13),lambda(13)
    lambda = 2897.0/T
    RETURN
END SUBROUTINE
