a = 3;
b = 5;
c=a-b
write(*,*) 'c=',c
write(*,*) 'a>b=',a.GT.b
write(*,*) 'a>c=',a.GT.c
write(*,*) 'a>b and a>c =',a.GT.b .AND. a.GT.c
write(*,*) 'a>b or a>c =',a.GT.b .OR. a.GT.c
write(*,*) '(a>b or a>c) and b<c =',(a.GT.b .OR. a.GT.c) &
    .AND. (b.LT.c)
write(*,*) 'a>b or (a>c and b<c) =',a.GT.b .OR. (a.GT.c &
    .AND. b.LT.c)
end
