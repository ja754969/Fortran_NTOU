REAL A,B,C,THETA,Area
WRITE(*,*) 'INPUT the slope length C >>'
READ(*,*) C
WRITE(*,*) 'INPUT the theta >>'
READ(*,*) theta
A = C*cos(theta*3.14159/180.0)
B = C*sin(theta*3.14159/180.0)
AREA = A*B*0.5
WRITE(*,*) 'A = ',A
WRITE(*,*) 'B = ',B
WRITE(*,*) 'Area = ',Area

END
