IMPLICIT NONE
REAL A,B,C,S,AREA,AREA_Valid
A = 3
B = 4
C = 5
S = (A+B+C)/2.0 ! half  of the sum
AREA = sqrt(S*(S-A)*(S-B)*(S-C)) ! area of a triangle
write(*,*) 'AREA=',AREA
AREA_Valid = A*B/2.0
write(*,*) 'AREA_Valid=',AREA_Valid


end
