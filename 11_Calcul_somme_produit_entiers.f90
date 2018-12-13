program Calcul_somme_produit_entiers
implicit none
integer :: i,j,entiers,somme_entiers = 0, produit_entiers = 1

somme: do i=1,10,1
	somme_entiers= somme_entiers+i
	write(*,*)somme_entiers
end do somme
write(*,*)"La somme des 10 premiers entiers est :", somme_entiers

produit: do j=1,10,1
	produit_entiers = j*produit_entiers
	write(*,*)produit_entiers
end do produit
write(*,*)"Le produit des 10 premiers entiers est :", produit_entiers

end program



