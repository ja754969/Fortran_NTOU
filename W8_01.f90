! CH06_0401
IMPLICIT NONE
REAL DIST,x,y
REAL x1,y1,x2,y2,x3,y3
REAL x1x2,y1y2,x1x3,y1y3,x2x3,y2y3,D12,D13,D23,D1213,D1223,D1323
CHARACTER*20 text
DIST(X,Y)=SQRT(X*X+Y*Y)
10 WRITE(*,*) 'Enter 3 points (x1,y1),(x2,y2),(x3,y3)'
READ(*,*) x1,y1,x2,y2,x3,y3
IF ((x1 .EQ. 0).and.(y1 .EQ. 0).and.(x2 .EQ. 0).and.(y2 .EQ. 0).and.(x3 .EQ. 0).and.(y3 .EQ. 0)) GOTO 999
x1x2 = x1-x2
y1y2 = y1-y2
D12 = dist(x1x2,y1y2)
x1x3 = x1-x3
y1y3 = y1-y3
D13 = dist(x1x3,y1y3)
x2x3 = x2-x3
y2y3 = y2-y3
D12 = dist(x2x3,y2y3)


D1213 = abs(D12-D13)
D1223 = abs(D12-D23)
D1323 = abs(D13-D23)
IF ((D1213<0.0001) .and. (D1223<0.0001) .and. (D1323<0.0001)) then
    text = '正三角形 Equilateral triangle'

ELSEIF ((D1213<0.0001) .or. (D1223<0.0001) .or. (D1323<0.0001)) then
    text = '等腰三角形 Isosceles triangle'
ELSE
    text = '其他三角形 Other triangle'
endif

write(*,100) ' point 1 = ',x1,y1
write(*,100) ' point 2 = ',x2,y2
write(*,100) ' point 3 = ',x3,y3

100 format(A15,2f10.3)

write(*,100) ' D12 = ',D12
write(*,100) ' D13 = ',D13
write(*,100) ' D23 = ',D23
WRITE(*,200) text
200 format(A30)
GOTO 10
999 continue
END
