program Calcul_exponentiel
implicit none
integer :: i=1
real :: terme, x, eps = 0.00001, somme = 1.0, erreur

write(*,*)"Donner la valeur de x pour exp(x) a calculer"
read(*,*)x

terme=abs(x)

do
   if (abs(eps)>=terme) exit
   i= i+1
   somme = somme+terme
   terme = terme*(x/i)
   write(*,*)i, somme

end do

write(*,*)"---------------------------"
write(*,*)"Avec x = ",x
write(*,*)"Valeur exp(x) avec la fonction fortran =", exp(x)
write(*,*)"Valeur exp(x) = ",somme
write(*,*)"En ",i,"iterations"
erreur = abs(exp(x) - somme)
write(*,*)"Erreur faite par la fonction fortran =",erreur
write(*,*)"---------------------------"

end program



