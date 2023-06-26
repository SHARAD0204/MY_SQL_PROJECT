-- CREATING_DATABASE

create database BMS_DB1 ;

-- USING_DATABASE

use BMS_DB1 ;

show databases ;

-- CUSTOMER_INFROMATION

create table CUSTOMER_PERSONAL_INFORMATION
(
	CUSTOMER_ID varchar(5) ,
    CUSTOMER_NAME varchar(30) ,
    DATE_OF_BIRTH date , 
    GUARDIAN_NAME varchar(30) , 
    ADDRESS varchar(50) ,
    CONTACT_NO bigint(10) ,
    MAIL_ID varchar(30) , 
    GENDER char(1) , 
    MARITIAL_STATUS varchar(10) ,
    IDENTIFICATION_DOC_TYPE varchar(20) , 
    ID_DOC_NO varchar(20) ,
    CITIZENSHIP varchar(10) , 
    constraint CUST_PERS_INFO_PK primary key (CUSTOMER_ID)
);

show tables ;

-- CREATING_FEW_MORE_TABLES

create  table CUSTOMER_REFERENCE_INFO
(
	CUSTOMER_ID varchar(5) ,
    REFERENCE_ACC_NAME varchar(20) ,
    REFERENCE_ACC_NO bigint(16) ,
    REFERENCE_ACC_ADDRESS varchar(50) ,
    RELATION varchar(25) ,
    constraint 	CUST_REFE_INFO_PK primary key (CUSTOMER_ID) ,
    constraint CUST_REFE_INFO_FK foreign key (CUSTOMER_ID) references CUSTOMER_PERSONAL_INFORMATION(CUSTOMER_ID)
);

show tables ;

-- BANK_INFO

create table BANK_INFO
(
	IFSC_CODE varchar(15) ,
    BANK_NAME varchar(25) ,
    BRANCH_NAME varchar(25) ,
    constraint BANK_INFO_PK primary key (IFSC_CODE)
);

-- ACCOUNT_INFO

create table ACCOUNT_INFO
(
	ACCOUNT_NO bigint(16) ,
    CUSTOMER_ID varchar(5) ,
    ACCOUNT_TYPE varchar(10) , 
    REGISTRATION_DATE date , 
    ACTIVATATION_DATE date ,
    IFSC_CODE varchar(10) ,
    INTREST decimal(7,2) , 
    INITIAL_DEPOSIT bigint(10) ,
    constraint ACC_INFO_PK primary key(ACCOUNT_NO) ,
    constraint ACC_INFO_PERS_FK foreign key(CUSTOMER_ID) references CUSTOMER_PERSONAL_INFORMATION(CUSTOMER_ID) ,
    constraint 	ACC_INFO_BANK_FK foreign key(IFSC_CODE) references BANK_INFO(IFSC_CODE)
);

show tables ;

-- CUSTOMER_PERSONAL_INFORMATION

insert into CUSTOMER_PERSONAL_INFORMATION (CUSTOMER_ID , CUSTOMER_NAME , DATE_OF_BIRTH , GUARDIAN_NAME , ADDRESS , CONTACT_NO , MAIL_ID , MARITIAL_STATUS , IDENTIFICATION_DOC_TYPE , ID_DOC_NO , CITIZENSHIP)
values (101 , 'Olivia Johnson ' , '1990-05-12' , 'James Johnson' , '123 Main Street' , 123-456-7890 , 'oliviajohnson@example.com' , 'Married' , 'Passport', 'AB123456' , 'USA' );

insert into CUSTOMER_PERSONAL_INFORMATION 
values (102 , 'Ethan Smith' , '1988-09-27' , 'Emily Smith' , '456 Elm Avenue' , 987-654-3210 , 'ethansmith@example.com' , 'M' , 'Single' , 'Driver s License' , 'XY789012' , 'UK');

insert into CUSTOMER_PERSONAL_INFORMATION
values (103 , 'Ava Wilson' , '1995-02-08' , 'Michael Wilson' , '789 Oak Road' , 555-123-4567 , 'avawilson@example.com' , 'F' , 'Single' , 'National ID Card' , 'ZA345678' , 'Canada');

insert into CUSTOMER_PERSONAL_INFORMATION
values (104 , 'Noah Davis' , '1993-11-19' , 'Sarah Davis' , '987 Pine Street' , 999-888-7777 , 'noahdavis@example.com' , 'F' , 'Single' , 'Passport' , 'CD567890' , 'Australia');

insert into CUSTOMER_PERSONAL_INFORMATION
values (105 , 'Sophia Lee' , '1987-07-03' , 'David Lee' , '654 Cedar Avenue' , 111-222-3333 , 'sophialee@example.com' , 'F' , 'Married' , 'Social Security NO' , 'EF901234' , 'USA');

insert into CUSTOMER_PERSONAL_INFORMATION
values (106 , 'Jackson Brown' , '1991-12-30' , 'Emma Brown' , '321 Maple Lane' , 444-555-6666 , 'jacksonbrown@example.com' , 'M' , 'Single' , 'Passport' , 'GH345678' , 'USA');

insert into CUSTOMER_PERSONAL_INFORMATION
values (107 , 'Isabella Clark' , '1984-03-17' , 'Matthew ClarK' , '789 Walnut Street' , 777-888-9999 , 'isabellaclark@example.com' , 'F' , 'Married' , 'Driver s License' , 'IJ901234' , 'Canada');

insert into CUSTOMER_PERSONAL_INFORMATION
values (108 , 'Lucas Chen' , '1996-08-21' , 'Sophia Chen' , '987 Pineapple Drive' , 222-333-4444 , 'lucaschen@example.com' , 'M' , 'Single' , 'National ID Card' , 'KL567890' , 'Australia');

insert into CUSTOMER_PERSONAL_INFORMATION
values (109 , 'Mia Miller' , '1989-06-10' , 'Benjamin Miller' , '456 Cherry Avenu' , 555-666-7777 , 'miamiller@example.com' , 'F' , 'Divorced' , 'Passport' , 'MN789012' , 'UK');

insert into CUSTOMER_PERSONAL_INFORMATION
values (110 , 'Benjamin Nguyen' , '1994-10-05' , 'Olivia Nguyen' , '654 Oakwood Circle' , 888-999-0000 , 'benjaminnguyen@example.com' , 'M' , 'Single' , 'Social Security NO' , 'OP901234' , 'USA');


select * from CUSTOMER_PERSONAL_INFORMATION



-- CUSTOMER_REFERENCE_INFO

insert into CUSTOMER_REFERENCE_INFO (CUSTOMER_ID  , REFERENCE_ACC_NAME  , REFERENCE_ACC_NO , REFERENCE_ACC_ADDRESS , RELATION)
values (101 , 'John Smith' , '1234567890' , '456 Main Street' , 'Friend');

insert into CUSTOMER_REFERENCE_INFO
values(102 , 'Emma Johnson' , 2345678901 , '789 Elm Avenue' , 'Family');

insert into CUSTOMER_REFERENCE_INFO
values(103 , 'Michael Brown' , 3456789012 , '987 Oak Road' , 'Colleague');

insert into CUSTOMER_REFERENCE_INFO
values(104 , 'Sarah Davis' , 4567890123 , '654 Pine Street' , 'Neighbor');

insert into CUSTOMER_REFERENCE_INFO
values(105 , 'Robert Wilson' , 5678901234 , '321 Cedar Avenue' , 'Friend');

insert into CUSTOMER_REFERENCE_INFO
values(106 , 'Jennifer Lee' , 6789012345 , '456 Maple Lane' , 'Family');

insert into CUSTOMER_REFERENCE_INFO
values(107 , 'David Thompson' , 7890123456 , '789 Walnut Street' , 'Colleague');

insert into CUSTOMER_REFERENCE_INFO
values(108 , 'Emily Chen' , 8901234567 , '987 Pineapple Drive' , 'Neighbor');

insert into CUSTOMER_REFERENCE_INFO
values(109 , 'Andrew Miller' , 9012345678 , '654 Cherry Avenue' , 'Friend');

insert into CUSTOMER_REFERENCE_INFO
values(110 , 'Sophia Nguyen' , 0123456789 , '321 Oakwood Circle' , 'Family');


select * from CUSTOMER_REFERENCE_INFO


-- BANK_INFO


insert into BANK_INFO (IFSC_CODE , BANK_NAME  , BRANCH_NAME)
values ('ABCD1234' , 'ABC Bank' , 'Main Branch');

insert into BANK_INFO
values('EFGH5678' , 'XYZ Bank' , 'Downtown Branch');

insert into BANK_INFO
values('IJKL9012' , 'PQR Bank' , 'Central Branch');

insert into BANK_INFO
values('MNOP3456' , 'DEF Bank' , 'City Center Branch');

insert into BANK_INFO
values('QRST7890' , 'UVW Bank' , 'Park Street Branch');

insert into BANK_INFO
values('XYZA2345' , 'MNO Bank' , 'West End Branch');

insert into BANK_INFO
values('BCDE6789' , 'STU Bank' , 'East Side Branch');

insert into BANK_INFO
values('FGHI0123' , 'JKL Bank' , 'North Avenue Branch');

insert into BANK_INFO
values('JKLM4567' , 'GHI Bank' , 'South Street Branch');

insert into BANK_INFO
values('NOPQ8901' , 'RST Bank' , 'Riverside Branch');


select * from BANK_INFO


-- ACCOUNT_INFO

insert into ACCOUNT_INFO (ACCOUNT_NO ,  CUSTOMER_ID , ACCOUNT_TYPE  ,  REGISTRATION_DATE  ,  ACTIVATATION_DATE , IFSC_CODE  , INTREST  , INITIAL_DEPOSIT)
values (9876543210 , 101 , 'Savings' , '2022-01-15' , '2022-01-20' , 'ABCD1234' , 3.5 , 5000);

insert into ACCOUNT_INFO 
values (8765432109 , 102 , 'Current' , '2021-09-25' , '2021-09-30' , 'EFGH5678' , 2.8 , 10000);

insert into ACCOUNT_INFO 
values (7654321098 , 103 , 'Savings' , '2023-03-18' , '2023-03-25' , 'IJKL9012' , 4.2 , 2500);

insert into ACCOUNT_INFO 
values (6543210987 , 104 , 'Current' , '2022-08-02' , '2022-08-05' , 'MNOP3456' , 3.1 , 15000);

insert into ACCOUNT_INFO 
values (5432109876 , 105 , 'Savings' , '2022-04-22' , '2022-04-25' , 'QRST7890' , 3.8 , 500);

insert into ACCOUNT_INFO 
values (4321098765 , 106 , 'Current' , '2023-01-07' , '2023-01-10' , 'XYZA2345' , 2.5 , 20000);

insert into ACCOUNT_INFO 
values (3210987654 , 107 , 'Savings' , '2022-09-25' , '2022-09-30' , 'BCDE6789' , 3.2 , 1000);

insert into ACCOUNT_INFO 
values (2109876543 , 108 , 'Current' , '2023-04-10' , '2023-04-15' , 'FGHI0123' , 2.9 , 12000);

insert into ACCOUNT_INFO 
values (1098765432 , 109 , 'Savings' , '2022-11-16' , '2022-11-20' , 'JKLM4567' , 3.6 , 3000);

insert into ACCOUNT_INFO 
values (0987654321 , 110 , 'Current' , '2023-03-05' , '2023-03-10' , 'NOPQ8901' , 2.7 , 18000);


select * from ACCOUNT_INFO

-- WHERE_CLAUSE

select * from ACCOUNT_INFO
where CUSTOMER_ID = 110

select CUSTOMER_ID , CUSTOMER_NAME , GENDER
from CUSTOMER_PERSONAL_INFORMATION
where GENDER = 'M' ; 

select CUSTOMER_NAME , CITIZENSHIP 
from CUSTOMER_PERSONAL_INFORMATION
where CITIZENSHIP = 'Canada' ;

select ACCOUNT_TYPE , CUSTOMER_ID
from ACCOUNT_INFO
where INTREST > 2.8 ;

-- ORDER_BY

select * from ACCOUNT_INFO
order by REGISTRATION_DATE ;

select * from ACCOUNT_INFO
order by INITIAL_DEPOSIT desc ;

select max(INITIAL_DEPOSIT)
from ACCOUNT_INFO ;

select CUSTOMER_ID
from ACCOUNT_INFO 
where INITIAL_DEPOSIT < 15000 ;

select count(*) from BANK_INFO ;

-- GROUP_BY

select count(*) , INTREST
from ACCOUNT_INFO 
group by INTREST ;
 
select count(CUSTOMER_ID) , CITIZENSHIP
from CUSTOMER_PERSONAL_INFORMATION
group by CITIZENSHIP ;

-- HAVING_CLAUSE

select count(CUSTOMER_NAME) , CITIZENSHIP
from CUSTOMER_PERSONAL_INFORMATION
group by CITIZENSHIP
having count(CITIZENSHIP) < 4 ;

-- INNER_JOIN

select c . CUSTOMER_ID , c . CUSTOMER_NAME , c . ADDRESS , c . CONTACT_NO , c . CITIZENSHIP , a . ACCOUNT_NO , a . ACCOUNT_TYPE , a . IFSC_CODE 
from CUSTOMER_PERSONAL_INFORMATION c
inner join ACCOUNT_INFO a
on  c . CUSTOMER_ID = a . CUSTOMER_ID ;

select a . CUSTOMER_ID , a . ACCOUNT_NO , a . IFSC_CODE , a . INTREST , b . BANK_NAME , b . BRANCH_NAME
from ACCOUNT_INFO a 
inner join BANK_INFO b
on  a . IFSC_CODE = b . IFSC_CODE ;

-- LEFT_JOIN

select c . CUSTOMER_ID , c . CUSTOMER_NAME , c . ADDRESS , c . CONTACT_NO , c . CITIZENSHIP , a . ACCOUNT_NO , a . ACCOUNT_TYPE , a . IFSC_CODE 
from CUSTOMER_PERSONAL_INFORMATION c
left outer join ACCOUNT_INFO a
on  c . CUSTOMER_ID = a . CUSTOMER_ID ;

-- RIGHT_JOIN

select c . CUSTOMER_ID , c . CUSTOMER_NAME , c . ADDRESS , c . CONTACT_NO , c . CITIZENSHIP , a . ACCOUNT_NO , a . ACCOUNT_TYPE , a . IFSC_CODE 
from CUSTOMER_PERSONAL_INFORMATION c
right outer join ACCOUNT_INFO a
on  c . CUSTOMER_ID = a . CUSTOMER_ID ;

-- FULL_OUTER_JOIN

select c . CUSTOMER_ID , c . CUSTOMER_NAME , c . ADDRESS , c . CONTACT_NO , c . MAIL_ID , c . GENDER , c . CITIZENSHIP , a . ACCOUNT_NO , a . ACCOUNT_TYPE , a . IFSC_CODE , a . INTREST , a . INITIAL_DEPOSIT
from CUSTOMER_PERSONAL_INFORMATION c
left outer join ACCOUNT_INFO a
on  c . CUSTOMER_ID = a . CUSTOMER_ID 
union
select c . CUSTOMER_ID , c . CUSTOMER_NAME , c . ADDRESS , c . CONTACT_NO , c . MAIL_ID , c . GENDER , c . CITIZENSHIP , a . ACCOUNT_NO , a . ACCOUNT_TYPE , a . IFSC_CODE ,  a . INTREST , a . INITIAL_DEPOSIT
from CUSTOMER_PERSONAL_INFORMATION c
right outer join ACCOUNT_INFO a
on  c . CUSTOMER_ID = a . CUSTOMER_ID ;
