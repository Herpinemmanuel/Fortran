program Caclcul_exponentiel_approche
implicit none
integer :: i
real, dimension(101) :: expo,y_1,y_2,y_3,x=(/(i*0.01, i=-100,100,2)/)

y_1=1+x
y_2=1+x+x*x/2
y_3=1+x+x*x/2+x*x*x/6
expo=exp(x)

open(11,file="Exponentiel_approche.dat",status="replace")
 do i=1,101
    write(11,'(5f6.3)')x(i),y_1(i),y_2(i),y_3(i),expo(i)
 end do
 close(11)

end program
