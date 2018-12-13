program Resolution_Polynome
implicit none
integer :: t, n_rac=4
real :: a,b,c,del,y,x,x1,x2

do t=1,n_rac
   
   write(*,*)"----------------------------------"
   write(*,*)"Donner les coefficients a, b, c de votre polynome telsque ax*x+bx+c=0"
   read(*,*) a, b, c
   
   del = (b**2)-4*a*c
   write(*,'("Determinant = b**2-4*a*c = ",F9.3)') del

   if (a == 0)then
      y=(-c)/b
      write(*,'("La racine reelle de cette equation lineaire est x =",F9.3)') y
   else
      if (del > 0) then
         x1=((-b+sqrt(del))/(2*a))
         x2=((-b-sqrt(del))/(2*a))
         write(*,'("Les racines reelles de ce polynome sont x1 =",F9.3)') x1
         write(*,'("et x2 = ",F9.3)')x2
      else if (del < 0) then
         z1=cmplx(-b/(2*a),sqrt(deltac)/(2*a))
         z2=cmplx(-b/(2*a),-sqrt(deltac)/(2*a))
         write(*,*) "Les racines de ce polynome sont complexes."
         write(*,*)'Racines complexes X1=',z1,'X2=',z2
      else
         x=(-b)/(2*a)
         write(*,'("La racine reelle de ce polynome est une racine double x =",F15.2)') x

      end if
   end if
   write(*,*)"----------------------------------"
   
end do
end program




