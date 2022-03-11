REAL price, dist, pay
write(*,*) 'INPUT price (dollars per km)>'
READ(*,*) price
write(*,*) 'INPUT dist (km)>'
READ(*,*) dist
write(*,*) 'price=',price,' dollars per km'
write(*,*) 'dist=',dist,' km'
pay = price*dist
write(*,*) 'pay=',pay, ' dollars'
end
