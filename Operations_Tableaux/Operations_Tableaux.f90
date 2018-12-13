program Operations_Tableaux
  
implicit none

integer, parameter :: dim = 10
integer :: i
real, dimension(dim) :: xi = (/(i, i = 1, 10)/), &
                        yi = (/ 1.3, 3.5, 4.2, 5.0, 7.0, 8.8, 10.1, 12.5, 13.0, 15.6/), &
			y
real :: m, b, xm, ym

write(*,*)"--------------------------------------"

write(*,*) "Le tableau x initial est :"
write(*,'(10f7.2)') (xi(i), i=1,dim)

xm=sum(xi)/size(xi)
write (*,*) "La moyenne du tableau initial x est :"
write (*,'(1f4.2)') xm

write(*,*)"--------------------------------------"

write (*,*) "Le tableau y initial est :"
write (*,'(10f7.2)') (yi(i), i=1,dim)

ym=sum(yi)/size(yi)
write (*,*) "La moyenne du tableau initial y est :"
write (*,'(1f4.2)') ym

write(*,*)"--------------------------------------"

m=(sum(xi*yi)-(sum(xi)*ym))/(sum(xi*xi)-(sum(xi)*xm))
write (*,*) 'Le coefficient m de y = m*x + b est :'
write (*,'(1f4.2)') m

b=ym-(m*xm)
write (*,*) 'Le coefficient b = y_moy - (m*x_moy) de y = m*x + b est :'
write (*,'(1f4.2)') b

y=m*xi+b
write (*,*) "Le tableau y = m*x_init + b  est :"
write (*,'(10f7.2)') (y(i), i=1,dim)
write(*,*)"--------------------------------------"

open(11, file='Resulat.dat')
do i=1,dim
write (11,'(3f7.2)') xi(i), yi(i), y(i)
end do

end program


