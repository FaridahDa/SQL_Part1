-- will recreated using joined table in part 4

use Library;
create table Book_Loans
(
Loan_Transaction_ID int auto_increment primary key,
-- Library_users_ID int not null,
-- Books_ID int not null,
-- Book_title varchar(50) not null,
-- Book_Loan_Date date not null,
-- Book_Return_Date date not null,
Late_fees int null, 
-- foreign key (library_users_ID) references library_users (library_users_ID),
-- foreign key (Books_ID) references library_books (Books_ID),
-- foreign key (Book_title) references library_books (Book_title),
foreign
 );

-- select * from Book_Loans

-- -- drop table Book_Loans

-- DROP table Book_Loans