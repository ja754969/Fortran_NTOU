! 曾鈺皓 00781035 Fortran_HW2_2
REAL Earth_M,Moon_M,Ceres_M,Jupiter_M
REAL Earth_R,Moon_R,Ceres_R,Jupiter_R,G
REAL V_esc_Earth,V_esc_Moon,V_esc_Ceres,V_esc_Jupiter
WRITE(*,*) 'Input the mass and radius of the Earth>>'
READ(*,*) Earth_M,Earth_R
WRITE(*,*) 'Input the mass and radius of the Moon>>'
READ(*,*) Moon_M,Moon_R
WRITE(*,*) 'Input the mass and radius of the Ceres>>'
READ(*,*) Ceres_M,Ceres_R
WRITE(*,*) 'Input the mass and radius of the Jupiter>>'
READ(*,*) Jupiter_M,Jupiter_R
Earth_M = 6.0*(10.0**24.0)!6.0E24
Earth_R = 6.4*(10.0**6.0)!6.4E6
Moon_M = 7.4*(10.0**22.0)!7.4E22
Moon_R = 1.7*(10.0**6.0)!1.7E6
Ceres_M = 8.7*(10.0**20.0)!8.7E20
Ceres_R = 4.7*(10.0**5.0)!4.7E5
Jupiter_M = 1.9*(10.0**27.0)!1.9E27
Jupiter_R = 7.1*(10.0**7.0)!7.1E7
!WRITE(*,*) Earth_M,Earth_R

G = 6.673*(10.0**(-11.0)) ! m^3*sec^-2*kg^-1
!write(*,*) 'G=',G
V_esc_Earth = (2.0*G*Earth_M/Earth_R)**(0.5)
V_esc_Moon = (2.0*G*Moon_M/Moon_R)**(0.5)
V_esc_Ceres = sqrt(2.0*G*Ceres_M/Ceres_R)
V_esc_Jupiter = sqrt(2.0*G*Jupiter_M/Jupiter_R)
!write(*,*) 'V_esc_Earth = ',V_esc_Earth
OPEN(22,FILE = 'Fortran_HW2_2.OUT',FORM='FORMATTED')
write(22,'(A7,A11,A11)') 'Planet','Mass (kg)','Radius (m)'
write(22,*) '============================'
write(22,23) 'Earth',Earth_M,Earth_R
write(22,23) 'Moon',Moon_M,Moon_R
write(22,23) 'Ceres',Ceres_M,Ceres_R
write(22,23) 'Jupiter',Jupiter_M,Jupiter_R
write(22,*) '>>>>>>>>>>>>>>>>>>>>>>>>>>>>'
write(22,21) 'Escape velocity of the Earth = ',V_esc_Earth,' m/s.'
write(22,21) 'Escape velocity of the Moon = ',V_esc_Moon,' m/s.'
write(22,21) 'Escape velocity of the Ceres = ',V_esc_Ceres,' m/s.'
write(22,21) 'Escape velocity of the Jupiter = ',V_esc_Jupiter,' m/s.'
!20 FORMAT(A25,ES11.1,A6,A25,ES11.1,A6)
21 FORMAT(A35,ES11.4,A6)
23 FORMAT(A7,ES11.1,ES11.1)
CLOSE(22)
end
