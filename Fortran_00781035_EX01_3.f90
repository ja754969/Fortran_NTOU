INTEGER a,b,c,a_output,b_output,c_output,d_output,e_output
write(*,*) 'input 3 integer numbers >>'
READ(*,*) a,b,c
a_output = a*b**c
write(*,*) 'a_output = ',a_output
b_output = a**b*c
write(*,*) 'b_output = ',b_output
c_output = a**(b*c)
write(*,*) 'c_output = ',c_output
d_output = a**b**c
write(*,*) 'd_output = ',d_output
e_output = (b/a)*c
write(*,*) 'e_output = ',e_output
end
