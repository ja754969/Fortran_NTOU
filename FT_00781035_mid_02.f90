! 00781035
IMPLICIT none
INTEGER radius,water_amount
INTEGER I
REAL price_per_amout,BASE,TOTAL
OPEN(22,FILE='FT_1102_MID_P02_inp.dat',Access='SEQUENTIAL',FORM='FORMATTED')
23 FORMAT(I5,I6)

!OPEN(24,FILE='FT_00781035_mid_2_out.out',Access='SEQUENTIAL',FORM='FORMATTED')
25 FORMAT(I5,I6,F7.1)
DO I=1,7
    READ(22,23) radius,water_amount

    WRITE(*,23) radius,water_amount

    ! 13 20 25 40 50 75 100
    IF (radius .EQ. 13) then
        BASE = 35.7
    ELSEIF (radius .EQ. 20) then
        BASE = 71.4
    ELSEIF (radius .EQ. 25) then
        BASE = 132.3
    ELSEIF (radius .EQ. 40) then
        BASE = 392.7
    ELSEIF (radius .EQ. 50) then
        BASE = 714
    ELSEIF (radius .EQ. 75) then
        BASE = 1927.8
    ELSEIF (radius .EQ. 100) then
        BASE = 3819.9
    ELSE
        BASE = 3819.9
    END IF

    IF (water_amount .LE. 20) then
        price_per_amout = 7.35
        TOTAL = BASE + (price_per_amout*water_amount - 0)
    ELSEIF (water_amount .GE. 21) .and. (water_amount .LE. 60) then
        price_per_amout = 9.45
        TOTAL = BASE + (price_per_amout*water_amount -42)
    ELSEIF (water_amount .GE. 61) .and. (water_amount .LE. 100) then
        price_per_amout = 11.55
        TOTAL = BASE + (price_per_amout*water_amount -168)
    ELSEIF (water_amount .GE. 101) then
        price_per_amout = 12.075
        TOTAL = BASE + (price_per_amout*water_amount -220.5)
    ELSE
        price_per_amout = 12.075
        TOTAL = BASE + (price_per_amout*water_amount -220.5)
    END IF

    !WRITE(24,25) radius,water_amount,TOTAL
END DO
!CLOSE(24)
CLOSE(22)
END
