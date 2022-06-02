! 曾鈺皓 00781035 Fortran_HW8_1
IMPLICIT NONE
INTEGER Press_sf,Ta
REAL C
OPEN(10,FILE = 'FT_1102_EX08_Ta_inp.dat',)
OPEN(20,FILE = 'FT_1102_EX08_Press_inp.dat',)
DO WHILE (.TRUE.)
    READ(10,*,END=100) Press_sf
    READ(10,*,END=100) Press_sf
    READ(10,*,END=100) Press_sf
    Write(*,*) Press_sf
end do
100 continue
CLOSE(10)
CLOSE(20)
END
