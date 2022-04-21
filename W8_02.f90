! CH06_0401_1
IMPLICIT NONE
REAL D1,D2,D3
REAL d_D1D2,d_D1D3,d_D2D3
CHARACTER*20 text
WRITE(*,*) 'INPUT 3 distance >> '
READ(*,*) D1,D2,D3
d_D1D2 = abs(D1-D2)
d_D1D3 = abs(D1-D3)
d_D2D3 = abs(D2-D3)
text = 'Other triangle'
IF (d_D1D2 .LE. 0.0001) then
    write(*,*) 'd_D1D2=',d_D1D2
    text = 'd_D1D2=0'
    if(d_D1D3 .LE. 0.0001) then
        text = 'Equilateral triangle'
    end if
ELSE
    if(d_D2D3 .LE. 0.0001) then
        text = 'd_D2D3=0'
    end if
    if(d_D1D3 .LE. 0.0001) then
        text = 'd_D1D3=0'
    end if
END IF
WRITE(*,*) 'text=',text
END
