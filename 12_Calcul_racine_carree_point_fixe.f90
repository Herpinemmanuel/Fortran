program Calcul_racine_point_fixe
implicit none
integer :: i=1
real :: x, xn, x0, erreur

Write(*,*)"Donner la valeur de x pour sqrt(x) a calculer :"
read(*,*) x

x0=x
racine_iterative : do
   i = i+1
   xn = 0.5*(x0+x/x0)
   if (abs(x0-xn)<1.0e-6) exit racine_iterative
   x0 = xn
   write(*,*)i, x, xn
end do racine_iterative

write(*,*)"---------------------------"
write(*,*)"Avec x = ",x
write(*,*)"Valeur sqrt(x) avec la fonction fortran =", sqrt(x)
write(*,*)"Valeur sqrt(x) =",xn
write(*,*)"En ",i,"iterations"
erreur = abs(sqrt(x)-xn)
write(*,*)"Erreur commise par la fonction fortran =", erreur
write(*,*)"---------------------------"

end program



