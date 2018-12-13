program Traitement_donnees_temperature
implicit none

real, parameter , dimension (12):: &
        t1 = (/9.3, 9.8, 8.9, 7.4, 10.2, 10.4, 10.5, 9.2, 8.9, 9.0, 9.1, 8.3/) , &
        t2 = (/18.1, 18.8, 17.4, 17.3, 21.2, 22.3, 22.3, 21.5, 20.0, 20.6, 20.8, 19.8/)

real,dimension(4,3,2) :: temp	!(jours,stations,min/max)
integer,dimension(3) :: pos_max,pos_min
real,dimension(3) :: t_moy_min_stat
real,dimension(4) :: t_moy_max_jour,t_moy_min_jour,t_max_max_jour
integer :: nbr_max_sup_moy,i,j
real :: t_moyenne,t_max,t_min,t_moyenne_max, t_moyenne_min,t_min_sup_moyenne
logical,dimension(4,3) :: masque_logique
logical,dimension(3) :: all_max_moy

temp(:,:,1) = reshape(t1,(/4,3/))
temp(:,:,2) = reshape(t2,(/4,3/))
write (*,*) "Tableau temp"
write (*,'(10f8.2)') temp
!**********************************************************************************************
t_moyenne=0
t_moyenne=sum(temp)/size(temp)
write(*,*) "Temperature moyenne"
write(*,'(f8.2)') t_moyenne
!***********************************************************************************************
t_min=0
t_max=0
t_min=minval(temp)
t_max=maxval(temp)
write(*,*) "Temperature maximum"
write(*,'(f8.2)')t_max
write(*,*) "Temperature minimum"
write(*,'(f8.2)')t_min
!************************************************************************************************
pos_max=maxloc(temp)
pos_min=minloc(temp)
write(*,*) "Station avec la temperature la plus haute"
write(*,'(3i5)')pos_max(2)
write(*,*) "Station avec la temperature la plus basse"
write(*,'(3i5)')pos_min(2)
write(*,*) "Jour avec la temperature la plus basse"
write(*,'(3i5)')pos_min(1)
!*************************************************************************************************
t_moyenne_min=0
t_moyenne_max=0
t_moyenne_min=sum(temp(:,:,1))/size(temp(:,:,1))
t_moyenne_max=sum(temp(:,:,2))/size(temp(:,:,2))
write(*,*) "Moyenne des maximums"
write(*,'(f8.2)')t_moyenne_max
write(*,*) "Moyenne des minimums"
write(*,'(f8.2)')t_moyenne_min
!************************************************************************************************
t_moy_min_stat=0
t_moy_min_stat=sum(temp(:,:,1),dim=1)/size(temp(:,:,1),dim=1)
write(*,*) "Moyenne des minimums par stations"
write(*,'(3f8.2)')t_moy_min_stat
!***********************************************************************************************
t_moy_max_jour=0
t_moy_min_jour=0
t_moy_max_jour=sum(temp(:,:,2),dim=2)/size(temp(:,:,2),dim=2)
t_moy_min_jour=sum(temp(:,:,1),dim=2)/size(temp(:,:,1),dim=2)
write(*,*) "Moyenne des maximums par jours"
write(*,'(4f8.2)')t_moy_max_jour
write(*,*) "Moyenne des minimums par jours"
write(*,'(4f8.2)')t_moy_min_jour
!***********************************************************************************************
t_max_max_jour=0
t_max_max_jour=maxval(temp(:,:,2),dim=2)
write(*,*) "Maximums des maximums par jours"
write(*,'(4f8.2)')t_max_max_jour
!***********************************************************************************************
nbr_max_sup_moy=0
nbr_max_sup_moy=count(temp(:,:,2)>t_moyenne_max)
write(*,*) "Nombre de temperatures maximales superieures a la moyenne des temperatures maximales"
write(*,'(i8.2)')nbr_max_sup_moy
!***********************************************************************************************
masque_logique=temp(:,:,2)>t_moyenne_max
write(*,*) "Masque logique"
write(*,'(3l4)')((masque_logique(i,j),j=1,3),i=1,4)
!***********************************************************************************************
t_min_sup_moyenne=0
t_min_sup_moyenne=minval(temp(:,:,2),masque_logique)
write(*,*) "Minimum des temperatures superieures a leur moyenne"
write(*,'(f8.2)')t_min_sup_moyenne
!**********************************************************************************************

all_max_moy=all(temp(:,:,2)>t_moyenne_max,dim=1)
write(*,*) "Tableau logique"
write(*,'(3l4)')(all_max_moy(i),i=1,3)
write(*,'(3l4)')any(all_max_moy)

end program
