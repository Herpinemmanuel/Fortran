program methode_LU
implicit none
integer :: n=3, i, j, k !declarations variables iteratives
real, allocatable, dimension(:,:) :: mat_U,mat_L,mat_A !declaration tableaux
real, allocatable, dimension(:) :: vect_B,vect_Y,vect_X !declaration vecteurs
allocate(mat_U(n,n),mat_L(n,n),mat_A(n,n))
allocate(vect_B(n),vect_Y(n),vect_X(n))

write(*,*)"Resolution du systeme A*X = Y*B avec la methode de factorisation A = L*U"

mat_U=0
	IDENTITE : do i=1,n
	mat_U(i,i)=1
	end do IDENTITE 	!matrice identite
	

mat_L=0 			!matrice L contenant que des valeurs nulles
Open(11,file='A.dat',status='old',action='read')
	do i=1,n	
	read(11,*)mat_A(i,:)
	end do
 close(11)
 
vect_B=0
vect_X=0
vect_Y=0

Open(13,file='Y.dat',status='old',action='read')
	do i=1,n	
	read(13,*)vect_Y(i)
	end do
 close(13)

print*, ' '
write(*,*)"Vecteur Y"
print'(3f15.10)',vect_Y
print*, ' '

FACTORISATION :	do j=1, n
			do i=1, n
				if (j<=i) then
				mat_L(j,i)=mat_A(j,i)-sum(mat_L(1:j-1,i)*mat_U(j,1:j-1))
				else
				mat_U(j,i)=(mat_A(j,i)-sum(mat_L(1:i-1,i)*mat_U(j,1:i-1)))/mat_L(i,i)
				end if
			end do
end do FACTORISATION

write(*,*)"Factorisation A = L*U"
print*, ' '
write(*,*)"Matrice L"
PRINT'(3f15.5)',mat_L
print*,' '
write(*,*)"Matrice U"
print'(3f15.5)',mat_U

vect_B(1)=vect_Y(1)/mat_L(1,1)
RESOLUTION_LBY :do i=2,n
		vect_B(i)=(vect_Y(i)-sum(mat_L(1:i-1,i)*vect_B(1:i-1)))/mat_L(i,i)
end do RESOLUTION_LBY

write(*,*)"Resolution L*B = Y"
print*, ' '
print*, 'Vecteur B'
print'(3f15.10)',vect_B
print*, ' '

vect_X(n)=vect_B(n)/mat_U(n,n)
REMONTEE_SOLUTION : do i=n-1,1,-1
			vect_X(i)=(vect_B(i)-sum(mat_U(i+1:n,i)*vect_X(i+1:n)))/mat_U(i,i)
end do REMONTEE_SOLUTION

write(*,*)"Determination X avec la resolution de U*X = B"
print*, ' '
print*, 'Vecteur solution X'
print'(3f15.10)',vect_X
print*, ' '

Open(12,file='X.dat',status='replace',action='write')
	do i=1,n
	write(12,*)vect_X(i)
	end do	
	close(12)
end program


