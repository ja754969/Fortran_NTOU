implicit none
integer i,j,k
real r
i = 2
j = 3
k = i+j
write(*,*) k
k = i**j
write(*,*) 'K=I**J', K
R = FLOAT(I)/FLOAT(J)
write(*,*) 'R=',R
end
