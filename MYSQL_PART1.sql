use Library;
create database Library;
create table library_users
(
Library_users_ID int auto_increment primary key,
First_name varchar(50) not null,
Last_name varchar(50) not null,
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

INSERT into Library_users (First_name, Last_name, Address, Postcode,DOB, Date_joined, Active_user)
VALUES ('Amber', 'Shand', '150 Buckingham Palace', 'SW1 2BC', '1997-03-19','2021-03-21','YES');

ALTER TABLE Library_users
MODIFY COLUMN DOB date;

UPDATE Library_users
SET Date_joined = '2021-03-21 12:23:51'
WHERE Library_users_ID = 1;

INSERT into Library_users (First_name, Last_name, Address, Postcode,DOB, Date_joined, Active_user)
VALUES ('Melissa', 'Beckham', '25 Dulwhich House', 'SE22 9DS', '1964-10-05','2020-11-02','NO'), 
('Beyonce', 'Knowles', '33 LA Street', 'EC2 9AS', '1981-09-04', '1999-08-05', 'NO'),
('Robyn', 'Fenty', '49 Bridge Town', 'NW9 2LG', '1988-02-20', '2020-03-19', 'YES'),
('Boris', 'Johnson', '10 Downing Street', 'SW1A 2AB', '1964-06-19','2005-10-02', 'NO'),
('Angelina', 'Jolie', 'Columbia Road', 'W8 SN7', '1975-06-04','2021-01-01', 'YES'),
('Bilbo', 'Baggins', 'The Shire', 'P20 7RP', '1976-09-22', '1980-09-22', 'YES');

INSERT into Library_users (First_name, Last_name, Address, Postcode,DOB, Date_joined, Active_user)
VALUES ('Ahmed', 'Rash', '12 Marcus Road', 'SE18 2ST', '2010-11-12', '2021-03-28', 'YES'),
('Bambi', 'Halo', '45 Waterloo Road', 'SE10 6HD', '2020-01-19','2020-01-19', 'YES'),
('Harry', 'Potter', 'Number 4 Pivet Drive', 'RG5 6XP', '2010-10-21', '2020-11-03', 'NO'),
('Mac', 'Downs', '34 Book House', 'MA12 5ZA', '2007-05-01', '2017-04-30', 'YES'),
('Leo', 'Maga', '67 Whitehorse Lane', 'CR4 7HA', '2005-09-11', '2020-12-10', 'NO');



-- DROP TABLE Library_users;

ALTER TABLE Library_users
MODIFY COLUMN Date_joined date;


SELECT *, YEAR(CURDATE()) - YEAR(DOB) AS Age FROM Library_users;


ALTER TABLE library_users -- tried to put age in a column, curdate is a disallowed function
ADD COLUMN AGE DOUBLE 
GENERATED ALWAYS AS (year(curdate())-year(DOB)) STORED;

-- ALTER TABLE Library_users
-- ADD COLUMN AGE int AFTER DOB;

-- ALTER TABLE library_users
-- MODIFY AGE varchar(3) generated always as (YEAR(current_date()) - YEAR(DOB));
