program Ecriture_fichier_texte
	implicit none
	real :: dt, c, alpha
	integer :: Nx, Nb_iter
	open(UNIT=10,FILE='param.dat',STATUS="unknown",POSITION="append")
	write(*,*) 'Donner la valeur de Nx'
	read(*,*) Nx
	write(10,*) Nx
	write(*,*) 'Donner la valeur de dt'
	read (*,*) dt
	write(10,*) dt
	write(*,*) 'Donner la valeur de c'
	read (*,*) c
	write(10,*) c
	write(*,*) 'Donner la valeur de alpha'
	read (*,*) alpha
	write(10,*) alpha
	write(*,*) 'Donner la valeur de Nb_iter'
	read (*,*) Nb_iter
	write(10,*) Nb_iter

end program
