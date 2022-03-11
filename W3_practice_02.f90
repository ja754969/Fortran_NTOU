REAL radius, area, circumference, pi
pi = 3.14159
write(*,*) 'INPUT radius >>'
READ(*,*) radius

area = pi*radius**2

circumference = 2*pi*radius

write(*,*) 'area = ',area
write(*,*) 'circumference = ',circumference
end
