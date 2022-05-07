! 00781035
! 計算手續費及依循環利率計算每個月所繳金額、
! 累計繳款金額、當月尚欠總金額，
! 共需還清時間(單位：年、月)及
! 總繳款金額比實際取得金額的差值
IMPLICIT none
real rate_year,rate_monthly
real handling_fee
REAL rent_money,return_monthly,real_money,TOTAL,real_money_original,res,diff
INTEGER MON,YEAR,MON_in_year
rate_year = 0.15
rate_monthly = 0.15/12.
TOTAL = 0.
MON = 0
WRITE(*,*) 'INPUT how much the money want to rent>>'
READ(*,*),rent_money
handling_fee = rent_money*0.035 + 100
real_money_original = rent_money
real_money = rent_money - handling_fee
!return_monthly = real_money_original*(1.0+rate_monthly)*0.1! 每個月所繳金額
res = real_money_original
OPEN(33,FILE='FT_00781035_mid_3_out.out',Access='SEQUENTIAL',FORM='FORMATTED')
WRITE(33,*) '實際取得金額 = ',real_money
WRITE(33,*) '手續費 = ',handling_fee
!WRITE(33,*) '依循環利率計算每個月所繳金額 = ',return_monthly
100 IF (res .GE. 1000) then
        return_monthly = res*(1.0+rate_monthly)*0.1! 每個月所繳金額
        !real_money_original = real_money_original - return_monthly
        !return_monthly = real_money*0.1
        TOTAL = TOTAL + return_monthly
        res = res*(1.0+rate_monthly)-return_monthly

        MON = MON + 1
        IF (MON .GT. 12) THEN
            YEAR = MON/12
            MON_in_year = MOD(MON,12)
        else
            YEAR = 0
            MON_in_year = MON
        END IF

        WRITE(33,*) '------------------------------------------'
        WRITE(33,*) '月份 = ',MON
        WRITE(33,*) '當月繳款金額 = ',return_monthly
        WRITE(33,*) '累計繳款金額 = ',TOTAL
        WRITE(33,*) '當月尚欠總金額 = ',res
        WRITE(33,*) '共需還清時間(單位：年、月) = ',YEAR,MON_in_year

        GOTO 100
    ELSE
        return_monthly = res
        TOTAL = TOTAL + return_monthly
        res = 0

        MON = MON + 1
        WRITE(*,*) 'Residual = ',res
        IF (MON .GT. 12) THEN
            YEAR = MON/12
            MON_in_year = MOD(MON,12)
        else
            YEAR = 0
            MON_in_year = MON
        END IF
        WRITE(33,*) '------------------------------------------'
        WRITE(33,*) '月份 = ',MON
        WRITE(33,*) '當月繳款金額 = ',return_monthly
        WRITE(33,*) '累計繳款金額 = ',TOTAL
        WRITE(33,*) '當月尚欠總金額 = ',res
        WRITE(33,*) '共需還清時間(單位：年、月) = ',YEAR,MON_in_year

        GOTO 200

    END IF
200 WRITE(*,*) '總繳款金額 = ',TOTAL

diff = TOTAL - real_money

WRITE(33,*) '------------------------------------------'
WRITE(33,*) '總繳款金額 ',TOTAL
WRITE(33,*) '總繳款金額比實際取得金額的差值 ',diff
!及、
! 、當月尚欠總金額，
! 共需還清時間(單位：年、月)及
! 總繳款金額比實際取得金額的差值)
CLOSE(33)
END
