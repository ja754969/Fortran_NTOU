
program hello
    implicit none
    real res1,fn_plus,res2
    INTEGER N0,I,x(3)
    print *, "Hello World!"
    N0=3
    data x/5,3,9/
    WRITE(*,*) (x(i),i=1,3)
    res1 = fn_plus(N0,X)
    WRITE(*,*) 'res1=',res1
    call sub_fact(N0,X,res2)
    WRITE(*,*) 'res2=',res2
end program

REAL FUNCTION fn_plus(N,A)
    INTEGER N,A(1),I
    REAL aa
    aa = 0.0
    DO i = 1,n
        aa = aa+a(i)
    END DO
    fn_plus=aa
    WRITE(*,*) '2... fn_plus=',fn_plus
END FUNCTION
subroutine sub_fact(N,A,res1)
    real res1
    integer I,N,A(1)
    res1 = 1.0
    DO i=1,N
        res1 = res1*A(I)
    END DO
    WRITE(*,*) 'in sub res1 = ',res1

end subroutine

