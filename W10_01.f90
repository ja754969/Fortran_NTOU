IMPLICIT NONE
CHARACTER*1 TXT
WRITE(*,*) 'enter a character>'
READ(*,'(A)') TXT
SELECT CASE (TXT)
    CASE('a':'z')
        WRITE(*,*) 'Lower case letter'
    CASE('A':'Z')
        WRITE(*,*) 'Upper case letter'
    CASE('0':'9')
        WRITE(*,*) 'Digital'
    CASE('%','$','#')
        WRITE(*,*) '% or $ or #'
    CASE DEFAULT
        WRITE(*,*) 'Special character'
END SELECT
END
