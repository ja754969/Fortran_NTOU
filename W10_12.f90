IMPLICIT NONE
REAL AMOUNT,PAY,T_PAY
INTEGER MONTH,I
WRITE(*,*) 'INPUT Loan money>'
READ(*,*) AMOUNT
MONTH = 0;T_PAY=0.0
WRITE(*,100)
100 FORMAT(2x,'MM.',7X,'PAY',4x,'AMOUNT',5X,'T_Pay')
200 FORMAT(I6,3F10.3)
IFLBK: DO I = 1,1000
            AMOUNT = AMOUNT*1.01
            IF (AMOUNT .GT. 1000.0) THEN
                MONTH = MONTH+1
                PAY = AMOUNT*0.3
                AMOUNT = AMOUNT - PAY
                T_Pay = T_Pay+Pay
                WRITE(*,200) MONTH,PAY,AMOUNT,T_PAY
            ELSE
                MONTH = MONTH+1
                PAY = AMOUNT
                EXIT IFLBK
            END IF
       END DO IFLBK
WRITE(*,*) 'MONTH ->',MONTH,' PAY=',PAY
T_PAY = T_PAY+PAY
WRITE(*,*) 'T_PAY=',T_PAY

END
