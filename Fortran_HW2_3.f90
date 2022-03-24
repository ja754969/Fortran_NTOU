! 曾鈺皓 00781035 Fortran_HW2_3

REAL g,r_A, r_B, v_A,v_B,a_A,a_B
g=9.81
v_A = 340.0*0.85
a_A = 2.0*g
r_A = (v_A**2.0)/a_A
v_B = 340.0*1.5
a_B = 7.0*g
r_B = (v_B**2.0)/a_B
OPEN(33,FILE = 'Fortran_HW2_3.OUT',FORM='FORMATTED')
write(33,31) '(A) V = ',v_A,' m/s, ','a =',a_A,' m(s^-2), ','r = ',r_A,' m.'
31 FORMAT(A,F8.2,A,A,F8.2,A,A,F8.2,A)
write(33,31) '(B) V = ',v_B,' m/s, ','a =',a_B,' m(s^-2), ','r = ',r_B,' m.'
CLOSE(33)
end
