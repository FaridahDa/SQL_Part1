-- create database Library;
use Library;
create table library_users
(
Library_users_ID int auto_increment primary key,
Full_name varchar(50) not null,
Address varchar(100) not null,
Postcode varchar(10) not null,
DOB date not null,
-- now()
-- Age (now - DOB)
Date_joined datetime not null,
Active_user varchar(3) not null 
);

select *
from Library_users;

INSERT into Library_users (Full_name, Address, Postcode,DOB, Date_joined, Active_user)
VALUES ('Amber Shand', '150 Buckingham Palace', 'SW1 2BC', '1997-03-19','2021-03-21','YES');

ALTER TABLE Library_users
MODIFY COLUMN DOB date;

UPDATE Library_users
SET Date_joined = '2021-03-21 12:23:51'
WHERE Library_users_ID = 1;

INSERT into Library_users (Full_name, Address, Postcode,DOB, Date_joined, Active_user)
VALUES ('Melissa Beckham', '25 Dulwhich House', 'SE22 9DS', '1964-10-05','2020-11-02','NO'), 
('Beyonce Knowles', '33 LA Street', 'EC2 9AS', '1981-09-04', '1999-08-05', 'NO'),
('Robyn Fenty', '49 Bridge Town', 'NW9 2LG', '1988-02-20', '2020-03-19', 'YES'),
('Boris Johnson', '10 Downing Street', 'SW1A 2AB', '1964-06-19','2005-10-02', 'NO'),
('Angelina Joile', 'Columbia Road', 'W8 SN7', '1975-06-04','2021-01-01', 'YES'),
('Bilbo Baggins', 'The Shire', 'P20 7RP', '1976-09-22', '1980-09-22', 'YES');



