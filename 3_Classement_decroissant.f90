program classement_decroissant
implicit none
integer :: i, n_rac=4
real :: a, b, c


do i=1,n_rac
   
write(*,*)"----------------------------------"
write(*,*)"Donner le premier nombre a etudier "
read(*,*) a
write(*,*)"Donner le second nombre a etudier "
read(*,*) b
write(*,*)"Donner le troisieme nombre a etudier "
read(*,*) c


if (a>b) then
   if (b>c)then
      write(*,*) "Dans l'ordre decroissant ", a, ">", b, ">", c
   else if ((c>b).and.(a>c)) then
      write(*,*) "Dans l'ordre decroissant ", a, ">", c, ">", b
   else
      write(*,*) "Dans l'ordre decroissant ", c, ">", a, ">", b
   end if
else if (b>a)then
   if (a>c)then
      write(*,*) "Dans l'ordre decroissant ", b, ">", a, ">", c
   else if ((c>a).and.(b>c)) then
      write(*,*) "Dans l'ordre decroissant ", b, ">", c, ">", a
   else
      write(*,*) "Dans l'ordre decroissant ", c, ">", b, ">", a
   end if
else if (a>c)then
   if (c>b) then
      write(*,*)"Dans l'ordre decroissant ", a, ">", c, ">", b
   else if ((b>c) .and. (b>a)) then
      write(*,*) "Dans l'ordre decroissant ", b, ">", a, ">", c
   else
      write(*,*) "Dans l'ordre decroissant ", a, ">", c, ">", b
   end if
end if
write(*,*)"----------------------------------"

end do
end program
