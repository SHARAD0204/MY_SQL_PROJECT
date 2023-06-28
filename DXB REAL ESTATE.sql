create database Dubai_Real_Estate_Transactions ;

use Dubai_Real_Estate_Transactions ;

-- SHOW THE TABLE ? 
select * from Transactions ;

-- SHOW TRANSACTION ID , TRANSACTION GROUP , PROPERTY TYPE , ACTUAL WORTH OF REAL ESTATE ?
select transaction_id , trans_group_en , property_type_en , actual_worth
from  transactions  ;

-- SHOW UNIQUE REG TYPE FROM THE TABLE ?
select distinct reg_type_en from transactions ;

-- ADD NEW COLUMN IN TABLE ?
alter table transactions 
add column Id int ;

-- DELETE A COLUMN IN TABLE ?
alter table transactions
drop column Id ;

-- SHOW TRANSECTION ID , TRANSACTION GROUP , PROPERTY TYPE , AREA ID , ACTUAL WORTH ABD SHOW THE ACTUAL WORTH A PROPERTY MORE THAN 5000000 ?
select transaction_id , trans_group_en , property_type_en , area_id , actual_worth 
from transactions
where actual_worth > 5000000 ;

-- SHOW TRANSECTION GROUP WHERE VALUE IS NULL ?
select trans_group_en 
from transactions 
where area_name_en is null ;

-- SHOW MAXIMUM WORTH FO THE PROPERTY ?
select max(actual_worth) 
from transactions ;

-- SHOW MAXIMUM WORTH OF PROPERTY NEAR BURJ KHALIFA ? 
select max(actual_worth) , nearest_landmark_en
from transactions
where nearest_landmark_en = 'Burj Khalifa' ;

-- SHOW A TABLE IN ASSECNDING ORDER BY AREA ID  ?
select * from transactions 
order by area_id ;

-- SHOW TABLE IN DESCNDING ORDER BY WORTH OF A PROPERTY ?
select * from transactions 
order by actual_worth desc ;

-- SHOW TRANSACTION GROUP IS 'GIFTS' IN DESCNDING ORDER BY WORTH OF A PROPERTY ?
select * from transactions
where trans_group_en = 'Gifts'
order by actual_worth desc ;

-- COUNT THE TABLE DATA ? 
select count(*) from transactions ;

-- COUNT PROPERTY TYPE AND GROUP IT BY LANDMARK ?
select count(property_type_en) from transactions group by nearest_landmark_en ;

-- FIND THE AVERAGE WORTH OF PROPERTY IN DUBAI ? 
select avg(actual_worth) from transactions  ;

-- FIND THE AVERAGE WORTH OF PROPERTY IN DUBAI WHERE AREA ID IS GREATER THEN OR EQUAL TO 350 AND GROUP BY AREAD ID ?
select avg(actual_worth) , area_id 
from transactions 
group by area_id
having count(area_id) >= 350 ;

-- SHOW TRANSECTIN ID , PROCEDURE NAME , PROPERTY TYPE AND AREA NAME WHOSE WORTH IS MORE THEN AVERAGE WORTH OF PROPERTIES IN DUBAI ?
select transaction_id , procedure_name_en , property_type_en , area_name_en
from transactions
where actual_worth > (select avg(actual_worth) from transactions ) ;

-- SHOW LANDMARK NAME ENDS WITH 'T' ?
select * from transactions
where nearest_landmark_en like '%t' ;

-- COUNT LANDMARK NAME WHOSE MIDDLE LETTRE IS 'D' ? 
select count(nearest_landmark_en) from transactions
where nearest_landmark_en like '%d%' ;

-- SHOW THE AVERAGE VALUE OF PROPERTIES WHOSE NAME START WITH 'D' ?
select avg(actual_worth) 
from transactions
where nearest_landmark_en like 'D%' ;

-- SHOW THE AREA NAME DOSE NOT ENDS WITH 'T' ?
select * from transactions 
where area_name_en not like '%t' ;

-- COUNT THE PROPERTY TYPE AND GROUP IT ?
select count(*) , property_type_en from transactions group by property_type_en ;

-- HOW MANY PROPERTIES ARE THERE IN AREA OF 364 , 271 , 390 , 434 AND GROUP IT ?
select count(*) , area_id from transactions where area_id in (364 , 271 , 390 , 434) group by area_id ;

-- HOW MANY BUILDING ARE THERE IN AREA 388 ?
select count(*) from transactions where property_type_en = 'Building' and area_id = 388 ;