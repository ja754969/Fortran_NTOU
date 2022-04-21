! CH06_0401_3
! 由大到小排列三個數字
IMPLICIT none
REAL T1,T2,T3,R1,R2,R3
WRITE(*,*) 'input 3 num >>'
READ(*,*) T1,T2,T3
IF (T1 .GE. T2 .AND. T1 .GE. T3) then
    IF (T2 .GE. T3) then
        R1=T1;R2=T2;R3=T3
    ELSE
        R1=T1;R2=T3;R3=T2
    END IF
ELSE IF (T2 .GE. T1 .AND. T2 .GE. T3) then
    IF (T1 .GE. T3) then
        R1=T2;R2=T1;R3=T3
    ELSE
        R1=T2;R2=T3;R3=T1
    END IF
ELSE
    IF (T1 .GE. T2) THEN
        R1=T3;R2=T1;R3=T2
    ELSE
        R1=T3;R2=T2;R3=T1
    END IF
END IF
WRITE(*,*) 'R1,R2,R3=',R1,R2,R3
end
