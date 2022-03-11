CHARACTER*4 AB,CD
CHARACTER*4 AR,CR*8,DR*12
AB='A12'
CD='WXYZ'
CR=AB//CD !Concatenate the characters
write(*,*) 'AB=',AB,'CD=',CD
write(*,*) 'AR=',CR
DR = AB//CD//AB
write(*,*) 'DR=',DR
DR = AB//CD(2:3)
write(*,*) '2 DR=',DR
end
