
program calcul_multiplication_matrice
implicit none

real(kind=8),dimension(3,4):: matrice_A !declaration matrices
real(kind=8),dimension(4,3):: matrice_B
real(kind=8),dimension(3,3):: matrice_C
real(kind=8),dimension(3,3):: matrice_C_matmul

interface
	subroutine mat_prod(matrice_A,matrice_B,matrice_C)
	implicit none
	real(kind=8),dimension(:,:),intent(in):: matrice_A  
	real(kind=8),dimension(:,:),intent(in):: matrice_B
	real(kind=8),dimension(:,:),intent(out):: matrice_C
	end subroutine mat_prod
end interface

Call ouverture_stockage(matrice_B,matrice_A)
matrice_C_matmul=matmul(matrice_A,matrice_B)

write(*,*)"La matrice C calculee avec la fonction fortran matmul() est:"
write(*,'(3f15.5)')matrice_C_matmul

call mat_prod(matrice_A,matrice_B,matrice_C)
write(*,*)"La matrice C calculee avec le sous programme de calcul est:"
write(*,'(3f15.5)')matrice_C

Open(13,file='C.dat', status='replace',action='write')
write(13,*)matrice_C

Contains
subroutine ouverture_stockage(matrice_A,matrice_B)
	implicit none
	real(kind=8),dimension(3,4),Intent(inout):: matrice_A 
	real(kind=8),dimension(4,3),Intent(inout):: matrice_B
	Open(11,file='A.dat',status='old',action='read')
	read(11,*)matrice_A
	Open(12,file='B.dat',status='old',action='read')
	read(12,*)matrice_B	
end subroutine ouverture_stockage

end program


subroutine mat_prod(matrice_A,matrice_B,matrice_C)
  implicit none
  real(kind=8),dimension(:,:),intent(in):: matrice_A !declaration matrices
  real(kind=8),dimension(:,:),intent(in):: matrice_B
  real(kind=8),dimension(:,:),intent(out):: matrice_C
  integer :: i,j,k

  do i=1,size(matrice_C,dim=1)  !nombre de lignes
     do k=1,size(matrice_C,dim=2) ! nombre de colonnes
        matrice_C(i,k)=0
        do j=1,size(matrice_A,dim=2)
           matrice_C(i,k)=matrice_C(i,k)+matrice_A(i,j)*matrice_B(j,k)
        end do
     end do
end do
end subroutine mat_prod

