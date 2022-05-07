! 曾鈺皓 00781035 Fortran_HW5_1
IMPLICIT NONE
INTEGER num_of_incomes_members
INTEGER num_of_people,dependents,member_total,I
INTEGER is_over_70,college_students,MP_DISABLED,Long_term_care
REAL discount_1,discount_2,discount_3
INTEGER INCOME_TOTAL,INCOME_NET,TOTAL_income_one,TOTAL_income,interest_one,TAX_PAYABLE,level
REAL compare_1,compare_2
OPEN(11,FILE='FT_00781035_EX05_1.out',Access='SEQUENTIAL',FORM='FORMATTED')
12 FORMAT(A40,I15,A4)
WRITE(11,*) '***********INPUT DATA***********'
WRITE(*,*) 'How many people in your family?'
READ(*,*) member_total
WRITE(11,12) '家庭成員總數 : ',member_total,' 人'
WRITE(*,*) 'How many people in your family that having annual incomes?'
READ(*,*) num_of_incomes_members
WRITE(11,12) '薪資所得人數 : ',num_of_incomes_members,' 人'
TOTAL_income = 0 ! 總所得
DO I=1,num_of_incomes_members
    WRITE(11,*) '.'
    WRITE(11,'(A1,I2)') '#',I
    WRITE(*,*) 'How much the annual income of the number ',I,' member?'
    READ(*,*) TOTAL_income_one ! 個別年薪資
    WRITE(11,12) '個別年薪資 : ',TOTAL_income_one,' 元'
    WRITE(*,*) 'How much the annual interest of the number ',I,' member?'
    READ(*,*) interest_one ! 個別年付利息
    WRITE(11,12) '個別年付利息 : ',interest_one,' 元'
    TOTAL_income = TOTAL_income+TOTAL_income_one-interest_one
    WRITE(11,*) '.'
END DO
WRITE(11,*) '***********OUTPUT DATA***********'
WRITE(11,12) '總所得 : ',TOTAL_income,' 元'
dependents = member_total - num_of_incomes_members ! 扶養親屬人數
WRITE(11,12) '扶養親屬人數 : ',dependents,' 人'
WRITE(*,*) 'How many college students in your family?'
READ(*,*) college_students ! 就讀大專院校子女
WRITE(11,12) '就讀大專院校子女人數 : ',college_students,' 人'
WRITE(*,*) 'How many people that their age is over 70 in your family?'
READ(*,*) is_over_70
discount_1 = is_over_70*138000+(member_total-is_over_70)*92000
discount_2 = 248000

discount_3 = college_students*25000
WRITE(*,*) 'How many people are mentally and physically disabled in your family?'
READ(*,*) MP_DISABLED ! 身心障礙人數
WRITE(11,12) '身心障礙人數 : ',MP_DISABLED,' 人'
discount_3 = discount_3 + MP_DISABLED*207000
WRITE(*,*) 'How many people are long-term cared in your family?'
READ(*,*) Long_term_care ! 長期照顧人數
WRITE(11,12) '長期照顧人數 : ',Long_term_care,' 人'
discount_3 = discount_3 + Long_term_care*120000
INCOME_NET = 0 ! 綜合所得淨額
compare_1 = discount_1+discount_2 + discount_3 ! 總扣除額
compare_2 = 192000*member_total! 家庭基本生活費總額
IF (compare_1 .GE. compare_2) THEN
    INCOME_NET = TOTAL_income - (discount_1+discount_2 + discount_3)
ELSE
    INCOME_NET = TOTAL_income - compare_2
END IF
WRITE(*,*) 'INCOME_NET = ',INCOME_NET
WRITE(11,12) '綜合所得淨額 : ',INCOME_NET,' 元'
SELECT CASE (INCOME_NET)
    CASE(0:560000)
        level = 1
        TAX_PAYABLE = INCOME_NET*(5.0/100.0)-0
    CASE(560001:1260000)
        level = 2
        TAX_PAYABLE = INCOME_NET*(12.0/100.0)-39200
    CASE(1260001:2520000)
        level = 3
        TAX_PAYABLE = INCOME_NET*(20.0/100.0)-140000
    CASE (2520001:4720000)
        level = 4
        TAX_PAYABLE = INCOME_NET*(30.0/100.0)-392000
    CASE DEFAULT
        level = 5
        TAX_PAYABLE = INCOME_NET*(40.0/100.0)-864000
END SELECT
WRITE(11,12) '綜合所得稅級距 : ',level,' 級'
WRITE(*,*) 'TAX_PAYABLE = ',TAX_PAYABLE ! 應繳稅額
WRITE(11,12) '應繳稅額 : ',TAX_PAYABLE,' 元'
CLOSE(11)
END
