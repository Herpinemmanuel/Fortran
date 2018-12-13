program Calcul_polynome
implicit none
integer :: i, n_rac=3
real :: x, y, a, b, c

do i=1,n_rac
   
   write(*,*)"----------------------------------"
   write(*,*) "On veut calculer : y = a*x2+b*x+c"
   write(*,*) "Donner la valeur de x"
   read(*,*) x
   write(*,*) "Donner la valeur de a"
   read(*,*) a
   write(*,*) "Donner la valeur de b"
   read(*,*) b
   write(*,*) "Donner la valeur de c"
   read(*,*) c

   y=a*(x**2)+b*x+c

   write(*,*) "La valeur de y est :", y
   write(*,*)"----------------------------------"

end do
end program




