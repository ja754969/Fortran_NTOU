REAL TIMEB,TIMEO
INTEGER*4 TODAY(3),NOW1(3)

CALL CPU_TIME(TIMEB)
WRITE(*,*) 'TIMEB=',TIMEB
CALL IDATE(TODAY)
WRITE(*,*) 'IDATE(today)=',today
write(*,'(I2,"/",I2,"/",I4)') today(1),today(2),today(3)
CALL ITIME(now1)

write(*,*) 'now1=',now1

write(*,'(I2,":",I2,":",I2)') now1(1),now1(2),now1(3)

CALL CPU_TIME(TIMEO)

write(*,*) 'TIMEO=',TIMEO
end
