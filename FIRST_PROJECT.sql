
use on_trackdb ;

create table COLLECTION 
(
	SR_NO int ,
    BRAND varchar(20),
    MODEL varchar(20),
	CAR_TYPE varchar(30),
    FUEL_TYPE varchar(10),
    COLOR varchar(10),
	RE_YEAR int,
    STATE VARCHAR(20),
    KM_DONE int
);

alter table COLLECTION
add column CURRENT_PRICE int ;

select * from COLLECTION

insert COLLECTION (SR_NO , BRAND , MODEL , CAR_TYPE , FUEL_TYPE , COLOR , RE_YEAR , STATE )
values (1 , 'JAGUAR' , 'F TYPE S' , 'SPORTS CONVERTIBLE' , 'PETROL' , 'RED' , 2016 , 'MAHARASHTR' )

insert into COLLECTION
values (2 , 'VOLVO' , 'S90 D4 INSCRIPTION' , 'SEDAN' , 'DIESEL' , 'BLACK' , 2019 , 'CHHATTISGARH' , 32000 , 4200000)

insert into COLLECTION
values (3 , 'MINI-COOPER' , 'JCW PRO TUNE' , 'HATCHBACK' , 'PETROL' , 'SILVER' , 2021 , 'GUJARAT' , 15000 , 4500000)

insert into COLLECTION 
values (4 , 'BENTLEY' , 'CONTINENTAL GTC V8' , 'SPORTS CONVERTIBLE' , 'PETROL' , 'BLACK' , 2015 , 'DELHI' , 13800 , 17500000)

insert into COLLECTION
values (5 , 'TOYOTA' , 'LAND CRUISER LC300' , 'SUV' , 'DIESEL' , 'WHITE' , 2023 , 'BHARAT' , 7500 , 26500000)

insert into COLLECTION
values (6 , 'MERCEDES BENZ' , 'V220 D EXCLUSIVE' , 'MUV MPV' , 'DIESEL' , 'SILVER' , 2019 , 'HARYANA' , 36500 , 6700000)

insert into COLLECTION 
values (7 , 'LEXUS' , 'RX450H F SPORT' , 'SUV' , 'HYBRIDE' , 'BLACK' , 2017 , 'JHARKHAND' , 500000 , 5200000)

insert into COLLECTION 
values (8 , 'BMW' , 'Z4 M40I' , 'SPORTS CONVERTIBLE' , 'PETROL' , 'RED' , 2021 , 'HARYANA' , 9000 , 8900000)

insert into COLLECTION
values (9 , 'PORSCHE' , '911CARRERA' , 'SPORTS' , 'PETROL' , 'BLUE' , 2023 , 'CHANDIGARH' , 3500 , 18500000) 

insert into COLLECTION 
values (10 , 'LAMBORGHINI' , 'CONTACH' , 'SPORTS' , 'PETROL' , 'YELLOW' , 2022 , 'GUJARAT' , 2000 , 119500000)

insert into COLLECTION 
values (11 , 'DUCATI' , 'SCRAMBLER' , 'SPORTS' , 'PETROL' , 'RED' , 2022 , 'GUJARAT' , 15000 , 500000)

select * from COLLECTION 

update COLLECTION 
set KM_DONE = 10500 , CURRENT_PRICE = 6900000
where SR_NO = 1

delete from COLLECTION 
where SR_NO = 11

select BRAND , MODEL , FUEL_TYPE , RE_YEAR , KM_DONE , CURRENT_PRICE 
from  COLLECTION

select * from COLLECTION
where CURRENT_PRICE < 7000000

select * from COLLECTION 
order by CURRENT_PRICE

select * from COLLECTION
order by CURRENT_PRICE desc

update COLLECTION 
set COLOR = 'BLACK' 
where BRAND = 'LAMBORGHINI'

select * from COLLECTION 