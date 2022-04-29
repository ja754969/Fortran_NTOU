! 00781035
! 計算手續費及依循環利率計算每個月所繳金額、
! 累計繳款金額、當月尚欠總金額，
! 共需還清時間(單位：年、月)及
! 總繳款金額比實際取得金額的差值
IMPLICIT none
real rate_year,rate_mon
real rent_money,money_add,real_money,return_mon,TOTAL,real_money_original,res,diff
INTEGER MON,YEAR,MON_in_year
rate_year = 0.15
rate_mon = 0.15/12.
TOTAL = 0.
MON = 0
WRITE(*,*) 'INPUT an account >>'
READ(*,*),rent_money
money_add = rent_money*0.035 + 100
real_money = rent_money - money_add
real_money_original = real_money
return_mon = real_money*0.1! 每個月所繳金額
OPEN(33,FILE='FT_00781035_mid_3_out.out',Access='SEQUENTIAL',FORM='FORMATTED')
WRITE(33,*) '手續費 = ',money_add
WRITE(33,*) '依循環利率計算每個月所繳金額 = ',return_mon
100 IF (real_money .GE. 1000) then
        real_money = real_money - return_mon
        !return_mon = real_money*0.1
        TOTAL = TOTAL + return_mon
        MON = MON + 1
        IF (MON .GT. 12) THEN
            YEAR = INT(MON/12)
            MON_in_year = MON - YEAR*12
        END IF
        res = real_money_original-TOTAL
        WRITE(33,*) '月份 = ',MON
        WRITE(33,*) '累計繳款金額 = ',TOTAL
        WRITE(33,*) '當月尚欠總金額 = ',res
        WRITE(33,*) '共需還清時間(單位：年、月) = ',YEAR,MON
        GOTO 100
    ELSE
        TOTAL = TOTAL + real_money
        real_money = 0
        MON = MON + 1
        IF (MON .GT. 12) THEN
            YEAR = INT(MON/12)
            MON_in_year = MON - YEAR*12
        END IF
        WRITE(33,*) '月份 = ',MON
        WRITE(33,*) '累計繳款金額 = ',TOTAL
        WRITE(33,*) '當月尚欠總金額 = ',res
        WRITE(33,*) '共需還清時間(單位：年、月) = ',YEAR,MON
        GOTO 200
    END IF
200 WRITE(*,*) real_money

diff = TOTAL - real_money


WRITE(33,*) '總繳款金額比實際取得金額的差值',diff
!及、
! 、當月尚欠總金額，
! 共需還清時間(單位：年、月)及
! 總繳款金額比實際取得金額的差值)
CLOSE(33)
END
