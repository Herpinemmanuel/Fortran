program racine_carree
implicit none
integer :: i, n_rac=5
real :: valeur, rac_val

do i = 1 , n_rac
   write(*,*) "-----------------------"
   write(*,*) "Donner un nombre dont vous voulez connaitre la racine carree"
   read(*,*) valeur

   rac_val = sqrt(valeur)
   write(*,*) "La racine carree de ce nombre est :", rac_val
   write(*,*) "-----------------------"

end do
end program

