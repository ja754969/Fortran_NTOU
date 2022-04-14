! 曾鈺皓 00781035 Fortran_HW4_2
IMPLICIT NONE
character*15 car_mode,distance
INTEGER I,car_mode_data
REAL distance_data,fee_one,fee
fee = 0.0
OPEN(11,FILE='FT_EX04_2_inp.dat',Access='SEQUENTIAL',FORM='FORMATTED')
READ(11,12) car_mode,distance
12 FORMAT(A10,A10)
13 FORMAT(I9,F9.1,F9.1)
WRITE(*,*) car_mode,distance
OPEN(22,FILE='FT_00781035_EX04_2.out',Access='SEQUENTIAL',FORM='FORMATTED')
WRITE(22,14) car_mode,(trim(distance)//' (km) '),'charge (dollars)'
14 FORMAT(A10,2(A20))
15 FORMAT(I10,F20.1,F20.1)
DO I=1,9
    READ(11,13) car_mode_data,distance_data
    IF (distance_data .GT. 200) Then
        IF (car_mode_data .EQ. 1) Then
            fee_one = 1.2*(200-20)+0.9*(distance_data-200)
        elseif (car_mode_data .EQ. 2) Then
            fee_one = 1.5*(200-20)+1.12*(distance_data-200)
        elseif (car_mode_data .EQ. 3) Then
            fee_one = 1.8*(200-20)+1.35*(distance_data-200)
        END IF
    elseif ((distance_data .LT. 201) .AND. (distance_data .GT. 20)) THEN
        IF (car_mode_data .EQ. 1) Then
            fee_one = 1.2*(distance_data-20)
        elseif (car_mode_data .EQ. 2) Then
            fee_one = 1.5*(distance_data-20)
        elseif (car_mode_data .EQ. 3) Then
            fee_one = 1.8*(distance_data-20)
        END IF
    else
        fee_one = 0
    END IF
    fee = fee+fee_one
    WRITE(22,15) car_mode_data,distance_data,fee_one
END DO
WRITE(*,*) fee
CLOSE(11)
CLOSE(22)
END
