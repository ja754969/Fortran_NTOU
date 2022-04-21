IMPLICIT NONE
REAL salary_monthly, cost_monthly, deposit
INTEGER month_count
deposit = 0.0
month_count = 0
WRITE(*,*) 'Input salary and cost per month>>'
READ(*,*) salary_monthly, cost_monthly
IF (deposit .LT. 1000000.0) then
    deposit = deposit + salary_monthly - cost_monthly
    month_count = month_count+1
    WRITE(*,*) 'month_count = ',month_count
ELSE
    WRITE(*,*) 'month_count = ',month_count
END IF
END
