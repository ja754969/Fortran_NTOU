IMPLICIT NONE
INTEGER,PARAMETER::LEN1=50
INTEGER I,LENGTH
CHARACTER(LEN=LEN1) TEXT
WRITE(*,*) 'Input a string (English character)'
READ(*,*) TEXT
WRITE(*,100) TEXT
100 FORMAT(A50)
LENGTH = LEN_TRIM(TEXT)
WRITE(*,200) 'LEN1=',LEN1
WRITE(*,200) 'LEN(TEXT)=',LEN(TEXT)
200 FORMAT(A,I6)
WRITE(*,200) 'LENGTH=',LENGTH
DO I=1,LENGTH
    WRITE(*,210) 'I=',I,TEXT(I:I),IACHAR(TEXT(I:I))
    IF (TEXT(I:I) .GE. 'a' .AND. TEXT(I:I) .LE. 'z') then
        TEXT(I:I) = ACHAR(IACHAR(TEXT(I:I))-32)
    END IF
END DO
210 FORMAT(A3,I3,1x,A,I4)
WRITE(*,100) TEXT
END
