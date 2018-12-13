program fibonacci
implicit none
integer :: n=3,x,x1=1,x2=1

do while (n<=50)

   x = x1+ x2
   x2 = x1
   x1 = x
   write(*,*)x
   
   n=n+1


end do
end program



