program Modifications_tableaux
implicit none
integer :: n=3, i, j, k
integer, dimension(20) :: t
integer, dimension(5,4) :: tab
integer, dimension(4) :: tab_1 = 0
integer, dimension(2,4) :: tab_2 = 0
integer, dimension(5) :: tab_3 = 0
integer, dimension(5,2) :: tab_4 = 0
integer, dimension(2,4) :: tab_5 = 0
integer, dimension(5,4) :: tab_6 = 0
integer, dimension(4) :: vect=(/(i,i=1,4)/)
integer, dimension(3) :: tab_7

write(*,*)"Tableau initial :"
t=(/(i,i=1,20)/)
tab=reshape(t,(/5,4/))
write(*,'(4i5)')((tab(i,j),j=1,4),i=1,5)
write(*,*) ' '

write(*,*)"Premiere ligne du Tableau initial :"
tab_1=tab(1,:)
write(*,'(4i3)')tab_1
write(*,*)' '

write(*,*)"Deux premieres lignes du Tableau initial :"
tab_2=tab(1:2,:)
write(*,'(4i3)')((tab_2(i,j),j=1,4),i=1,2)
write(*,*)' '

write(*,*)"Derniere colonne du Tableau initial :"
tab_3=tab(:,4)
write(*,'(1i3)')tab_3
write(*,*)' '

write(*,*)"Colonnes 2 et 4 du Tableau initial :"
tab_4=tab(:,2:4:2)
write(*,'(2i3)')tab_4
write(*,*)' '

write(*,*)"Lignes 2 et 4 du Tableau initial :"
tab_5=tab(2::2,:)
write(*,'(4i4)')((tab_5(i,j),j=1,4),i=1,2)
write(*,*)' '

write(*,*)"Ligne 1 et 3 du Tableau initial additionnee :"
tab_6=tab
tab_6(1,:)=tab(1,:)+tab(3,:)
write(*,'(4i5)')((tab_6(i,j),j=1,4),i=1,5)
write(*,*)' '

write(*,*)"Vecteur :"
write(*,*)vect
write(*,*)' '

write(*,*)"Multiplication matricielle de 2 tableaux :"
tab_7=matmul(tab(1:3,:),vect)
write(*,'(1i4)')tab_7

end program
