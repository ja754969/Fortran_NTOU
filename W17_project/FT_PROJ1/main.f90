
program hello
    implicit none
    integer i

    print *, "Hello World!"
    DO i = 1,10
        WRITE(*,*) 'i=',i,float(i)/3.0
    END DO
end program

