IMPLICIT NONE
REAL salary_monthly, cost_monthly, deposit
INTEGER month_count,year,mon
deposit = 0.0
month_count = 0
WRITE(*,*) 'Input salary and cost per month >>'
READ(*,*) salary_monthly, cost_monthly
100 IF (deposit .LT. 1000000.0) then
        deposit = deposit + salary_monthly - cost_monthly
        month_count = month_count+1
        GOTO 100
    ELSE
        GOTO 200
    END IF
200 WRITE(*,300) month_count,deposit
300 FORMAT('第',I5,'個月，儲蓄總額為',F10.2)
year = INT(month_count/12)
mon = mod(month_count,12)
write(*,400) YEAR,mon
400 FORMAT('共',I5,' 年 ',I5,'個月')
END
