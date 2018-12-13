program Operations_tableaux
implicit none

integer :: i, n=10
integer, dimension (10) :: a=(/(i, i=1,10)/)
integer, dimension (10) :: b=(/(i, i=1,10)/)

write(*,*)"--------------------------------------------"
write(*,*) "Le tableau a, apres initialisation, est :"
write(*,'(10i5)') (a(i), i=1,10)

write(*,*)"On effectue l operation suivante a(i) = a(i-1)*2"

do i=2,n
	a(i)=a(i-1)*2
end do

write (*,*)"Le tableau a, apres calcul, est :"
write(*,'(10i5)') (a(i), i=1,10)
write(*,*)"--------------------------------------------"

write(*,*)"--------------------------------------------"
write (*,*) "Le tableau b, apres initialisation, est :"
write(*,'(10i5)') (b(i), i=1,10)

write(*,*)"On effectue l operation suivante b(2:n) = b(1:n-1)*2"

b(2:n)=b(1:n-1)*2

write (*,*) "Le tableau b, apres calcul, est :"
write(*,'(10i5)') (b(i), i=1,10)
write(*,*)"--------------------------------------------"

end program
