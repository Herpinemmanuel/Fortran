program Calcul_volume_sphere
implicit none
integer :: i, n_rac=5
real :: valeur_r , volume, pi=3.14

do i = 1 , n_rac
   
   write(*,*)"----------------------------------"
   write(*,*) "Donner le rayon de votre sphere en metres"
   read(*,*) valeur_r

   volume = (4/3)*pi*(valeur_r**3)
   write(*,*) "Le volume de votre sphere est :",volume,"m3"
   write(*,*)"----------------------------------"
   
end do
end program
