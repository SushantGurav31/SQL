CREATE DATABASE BasicQueriesTwo;

use BasicQueriesTwo;

CREATE TABLE Books (
Books_id INT,
title VARCHAR (100),
another VARCHAR (100),
price DECIMAL (6,2),
quantity INT 

);

INSERT INTO books (book_id,title,another,price,quantity) VALUES (101,"The Scilent Sea","Clive Cussler",399.99,10);
INSERT INTO books (book_id,title,another,price,quantity) VALUES (102,"Digital Fortrees","Dan Brown",299.50,5);
INSERT INTO books (book_id,title,another,price,quantity) VALUES (103,"Zero to One","Peter Thiel",250.00,15);
INSERT INTO books (book_id,title,another,price,quantity) VALUES (104,"The Alchemist","paulo Coelho",199.00,15);
INSERT INTO books (book_id,title,another,price,quantity) VALUES (105,"Inferno","Dan Brown",349.99,3);

select * from books;

select * from books order by price asc;

select * from books order by quantity desc;

update books set price =320.00 where title ="Digital Fortrees";

update books set quantity = quantity + 2 where title = "zero to One";

delete from books where another = "Dan Brown";

delete from books where quantity <5;

select * from books order by price asc limit 2;

select * from books order by price desc limit 1,2;



