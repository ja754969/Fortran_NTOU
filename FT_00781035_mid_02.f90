! 00781035
IMPLICIT none
INTEGER radius,water_amount
INTEGER I
REAL price_per_amount,BASE,TOTAL,diff_money
OPEN(22,FILE='FT_1102_MID_P02_inp.dat',Access='SEQUENTIAL',FORM='FORMATTED')
23 FORMAT(I5,I6)

OPEN(24,FILE='FT_00781035_mid_2_out.out',Access='SEQUENTIAL',FORM='FORMATTED')
25 FORMAT(I5,I6,F7.1)
26 FORMAT(A,I5,A,I6,A,F7.1,A,I6,A,F7.2,A,F7.1,A,F7.1)
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
        price_per_amount = 7.35
        diff_money = 0
        TOTAL = BASE + (price_per_amount*water_amount - diff_money)
    ELSEIF ((water_amount .GE. 21) .and. (water_amount .LE. 60)) then
        price_per_amount = 9.45
        diff_money = 42
        TOTAL = BASE + (price_per_amount*water_amount - diff_money)
    ELSEIF ((water_amount .GE. 61) .and. (water_amount .LE. 100)) then
        price_per_amount = 11.55
        diff_money = 168
        TOTAL = BASE + (price_per_amount*water_amount - diff_money)
    ELSEIF (water_amount .GE. 101) then
        price_per_amount = 12.075
        diff_money = 220.5
        TOTAL = BASE + (price_per_amount*water_amount - diff_money)
    ELSE
        price_per_amount = 12.075
        diff_money = 220.5
        TOTAL = BASE + (price_per_amount*water_amount - diff_money)
    END IF

    WRITE(*,25) radius,water_amount,TOTAL
    WRITE(24,26) '水表口徑為 ',radius,'mm，用水度數為 ',water_amount,&
        '度，則應繳水費=',BASE,'+',water_amount,'*',price_per_amount,' – ',diff_money,' = ',TOTAL
END DO
CLOSE(24)
CLOSE(22)
END
