! 曾鈺皓 00781035 Fortran_HW6_1
IMPLICIT NONE
CHARACTER*10 Num_H,Lat_D_H,Lat_M_H,Lat_S_H,Lon_D_H,Lon_M_H,Lon_S_H,H_H
CHARACTER X_H*10,Y_H*10,Z_H*10,DIST_H*15
INTEGER Num,I
REAL Lat_D,Lat_M,Lat_S,Lon_D,Lon_M,Lon_S,H
REAL lat,lon,X,Y,Z
REAL e,a,b,f,N,DIST
REAL X_previous,Y_previous,Z_previous
OPEN(11,FILE='FT_1102_EX_06_inp.DAT',Access='SEQUENTIAL',FORM='FORMATTED')
OPEN(12,FILE='FT_00781035_EX06_1.out',Access='SEQUENTIAL',FORM='FORMATTED')
READ(11,*) Num_H,Lat_D_H,Lat_M_H,Lat_S_H,Lon_D_H,Lon_M_H,Lon_S_H,H_H
Write(*,*) Num_H,Lat_D_H,Lat_M_H,Lat_S_H,Lon_D_H,Lon_M_H,Lon_S_H,H_H
a = 6378137.0
b = 6356752.314
f = (a-b)/a
e = sqrt(2*f-f**2)
X_H='X'
Y_H='Y'
Z_H='Z'
DIST_H = 'DIST(N,N-1) [m]'
Write(12,20) Num_H,Lat_D_H,Lat_M_H,Lat_S_H,Lon_D_H,Lon_M_H,Lon_S_H,H_H,X_H,Y_H,Z_H,DIST_H
DO WHILE (.TRUE.)
    READ(11,*,END=100) Num,Lat_D,Lat_M,Lat_S,Lon_D,Lon_M,Lon_S,H
    Write(*,*) Num,Lat_D,Lat_M,Lat_S,Lon_D,Lon_M,Lon_S,H
    Lat = Lat_D+Lat_M/60.0+Lat_S/60.0/60.0
    Lon = Lon_D+Lon_M/60.0+Lon_S/60.0/60.0

    N = a/sqrt(1-(e**2)*(sin(3.14/180*Lat)**2))
    X = (N+H)*cos(3.14/180*Lat)*cos(3.14/180*Lon)
    Y = (N+H)*cos(3.14/180*Lat)*sin(3.14/180*Lon)
    Z = (N*(1-e**2)+H)*sin(3.14/180*Lat)
    IF (MOD(Num,2) .EQ. 0) THEN
        DIST = sqrt((X-X_previous)**2+(Y-Y_previous)**2+(Z-Z_previous)**2)
        WRITE(*,*) DIST
        Write(12,21) Num,Lat_D,Lat_M,Lat_S,Lon_D,Lon_M,Lon_S,H,X,Y,Z,DIST
    else
        X_previous = X
        Y_previous = Y
        Z_previous = Z
        Write(*,*) Num_H,Lat_D_H,Lat_M_H,Lat_S_H,Lon_D_H,Lon_M_H,Lon_S_H,H_H
        Write(12,22) Num,Lat_D,Lat_M,Lat_S,Lon_D,Lon_M,Lon_S,H,X,Y,Z
    END IF

END DO
20 FORMAT(A2,11A20,A15)
21 FORMAT(I2,11F20.2,F25.2)
22 FORMAT(I2,11F20.2)
100 continue
CLOSE(11)
CLOSE(12)
END
