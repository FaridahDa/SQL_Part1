select *
from library_books;

use Library;
create table library_books
(
Books_ID int auto_increment primary key,
Book_title varchar(50) not null,
Author varchar(100) not null,
ISBN varchar(30) not null,
Genre varchar(30) not null
);

INSERT INTO library_books (Book_title, Author, ISBN, Genre)
VALUES('The Cat I Never Named', 'Amra', '8689-95859', 'Fiction'),
('The Hobbit','J.R.R Tolkien','9485-02385', 'Fiction'),
('Atomatic Habits', 'James Clear', '1234-56789', 'Non-Fiction'),
('Promised Land', 'Barack Obama', '8475-06957', 'Non-Fiction'),
('Autobiography of Malcolm X', 'Alex Haley', '7564-74647', 'Non-Fiction'),
('Think Like A Monk', 'Jay Shetty', '8595-74636', 'Non-Fiction')

use Library;
create table Book_status 
(
Book_Status_ID int not null,
Book_Format varchar(30) not null,
Book_Quantity int not null,


foreign key (Books_Status_ID) REFERENCES library_books (Books_ID)
);