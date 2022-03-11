program test01
    implicit none
    integer i
! write(*,*) 'Oceanography'
do i=1,10
    write(*,*) 'i=', I, I/3, &
    float(i)/3.0
end do
write(*,*) 'i=', i
write(*,*) 'i/0=', float(i)/0.0
end
