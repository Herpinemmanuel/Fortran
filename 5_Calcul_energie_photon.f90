program Calcul_energie_photon
implicit none
integer :: i, n_rac=5
real :: longueur_onde , energie_j , energie_ev , planck=6.626176E-34 , vitesse_lumiere=2.9979E+8 

do i = 1 , n_rac
   
   write(*,*)"----------------------------------"
   write(*,*) "Donner la longueur d'onde de votre photon en metres"
   read(*,*) longueur_onde

   energie_j=(planck*vitesse_lumiere)/longueur_onde
   write(*,*) "L'energie de ce photon est de :", energie_j , "Joules"

   energie_ev=energie_j/(1.602E-19)
   write(*,*) "L'energie de ce photon est de :", energie_ev, "eV"
   write(*,*)"----------------------------------"
   
end do
end program
