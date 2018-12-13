program Convertisseur_angle_radian_degre
implicit none
integer :: i, n_rac=5, x, y
real :: angle_rad, angle_degre, minute_angle, seconde_angle

do i=1,n_rac
   write(*,*) "-----------------------"
   write (*,*)"Donner la valeur de votre angle en radians "
   read (*,*)angle_rad

   angle_degre=angle_rad*180/3.1415
   write (*,'("L angle est de ",F100.2," degres")') angle_degre

   minute_angle=angle_degre*60
   x=nint(minute_angle)
   write (*,'("L angle est de ", i100," minutes d arc")') x

   seconde_angle=minute_angle*60
   y=nint(seconde_angle)
   write (*,'("L angle est de ", i100," secondes d arc")') y
   write(*,*) "-----------------------"

end do
end program




