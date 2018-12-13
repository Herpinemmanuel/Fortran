program signe_nombre_reel
  implicit none
  integer :: i , n_rac=4
  real :: a

  do i=1,n_rac
     
     write(*,*)"----------------------------------"
     write(*,*) "Donnez un nombre appartenant a l'ensemble des reels"
     read(*,*) a

     if (a<0) then
        write(*,*)a,": est negatif"
     else if (a>0) then
        write(*,*)a,": est positif."
     else
        write(*,*)a,": est nul."
     end if
     write(*,*)"----------------------------------"
     
  end do
  
end program

  
