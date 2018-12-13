program Salutations
implicit none
integer :: i, n_rac=5, age
character(len=30) :: nom , prenom

do i = 1 , n_rac
   write(*,*) "-----------------------"
   write(*,*) "Bonjour"
   write(*,*) "Quel est votre nom ?"
   read(*,*) nom

   write(*,*) "Votre prenom ?"
   read(*,*) prenom

   write(*,*) "Votre age ?"
   read(*,*) age

   write(*,*) "Recapitulatif :"
   write(*,*) nom
   write(*,*) prenom
   write(*,*) age
   write(*,*) "-----------------------"

end do
end program

