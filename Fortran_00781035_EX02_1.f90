! 曾鈺皓 00781035 Fortran_HW2_1
REAL Temp_water_F,Temp_CO2_F,Temp_water_K,Temp_CO2_K,Temp_water_C,Temp_CO2_C
write(*,*) 'input the boiling point of the water (in Fahrenheit)>>'
READ(*,*) Temp_water_F
write(*,*) 'input the sublimation point of the dry ice (in Fahrenheit)>>'
READ(*,*) Temp_CO2_F
Temp_water_C = (Temp_water_F-32)*5.0/9.0
Temp_CO2_C = (Temp_CO2_F-32)*5.0/9.0
Temp_water_K = Temp_water_C+273
Temp_CO2_K = Temp_CO2_C+273
OPEN(11,FILE = 'Fortran_HW2_1.OUT',FORM='FORMATTED')
write(11,12) 'Temp_water_K = ',Temp_water_K,' Kelvins.'
write(11,12) 'Temp_CO2_K = ',Temp_CO2_K,' Kelvins.'
write(11,12) 'Temp_water_C = ',Temp_water_C,' degree Celsius.'
write(11,12) 'Temp_CO2_C = ',Temp_CO2_C,' degree Celsius.'
12 FORMAT(A15,F6.2,A20)
CLOSE(11)
end
