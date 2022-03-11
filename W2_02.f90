integer*1 a
write(*,*) '2^7=', 2**7
write(*,'(A5,I4,1x,B8)') '2^7=', 2**7, 2**7
write(*,'(A10,I5,1x,B8)') '2^7+1=', 2**7+1, 2**7+1
a=2**6
write(*,'(A10,I5,1x,B8)') 'a=',a,a
a=127
write(*,'(A10,1x,B8)') 'a=',a
a=-3
write(*,'(A10,I5,1x,B8)') 'a=',a,a
end
