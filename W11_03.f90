! 計算投鉛球最遠的角度
IMPLICIT NONE
REAL V_0,V_x0,V_y0
REAL Theta,Gravity
REAL DEGREE,Range1,DEG_2_RAD
DEG_2_RAD = 3.141592/180.0
Gravity = -9.81
WRITE(*,*) 'Input V_0>>'
READ(*,*) V_0
DO Degree = 0,90,10
    Theta = Degree*DEG_2_RAD
    RANGE1 = -2.0*V_0*V_0*COS(THETA)*SIN(THETA)/Gravity
    WRITE(*,100) DEGREE,Theta,Range1
END DO
100 FORMAT('DEGREE=',F8.2,' Theta=',F8.5,' Range=',F10.5,' meters')
END
