select * from Cricket_1 
union
select * from cricket_2 ;

select ï»¿Player_id , Player_Name from cricket_1
union 
select ï»¿Player_id , Player_Name from cricket_2 ;

select Player_Name , Popularity 
from cricket_1 
where Popularity > (select avg(Popularity) from cricket_1 ) ; 

select Player_Name , Runs
from cricket_2
where Runs > (select avg(Runs) from cricket_2 );

select ï»¿Player_id , Player_Name 
from cricket_1
where cricket_1 . ï»¿Player_id in (select ï»¿Player_id from cricket_2 ) ;

select ï»¿Player_id , Player_Name , Runs 
from cricket_1
where Runs > (select avg(Runs) from cricket_1) ;

select ï»¿Player_id , Player_Name , Runs
from cricket_1
where Runs > 50 ;

select * from cricket_1
where Player_Name like 'y%v' ;

select * from cricket_1
where Player_Name not like '%t' ;

