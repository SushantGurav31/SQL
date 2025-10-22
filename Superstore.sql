CREATE DATABASE Superstore;

USE Superstore;

CREATE TABLE Products(
id int,
Name VARCHAR(255),
Price int,
Availability VARCHAR(255),
Quality VARCHAR(255)
);

INSERT INTO Products(id,Name,Price,Availability,Quality) Values(101,"Medimix",30,"yes","good");
INSERT INTO Products(id,name,Price,Availability,Quality) Values(133,"Coffee",50,"yes","Best");
INSERT INTO Products(id,name,Price,Availability,Quality) Values(105,"Pasta",100,"yes","Better");
INSERT INTO Products(id,name,Price,Availability,Quality) Values(13,"hotel king",120,"yes","Best");
INSERT INTO Products(id,name,Price,Availability,Quality) Values(96,"facewash",70,"no","good");

select * from products;

select * from products where price =70;

select * from products where name = "Pasta" and id = 105;

select id,name from products; 

update products set id=111 where id = 96;

delete from products where name="Pasta";

-- drop table products;

select sum(price) as sum_price from products;

select max(price) as max_price from products;

select count(price) as total_price from products;

select min(price) as min_price from products;

select avg(price) as avg_price from products;


select * from products order by price asc;

select * from products order by price desc;









    SELECT columns
    FROM table1
    LEFT JOIN table2 ON table1.common_column = table2.common_column
    UNION
    SELECT columns
    FROM table1
    RIGHT JOIN table2 ON table1.common_column = table2.common_column
    WHERE table1.common_column IS NULL; -- Exclude rows already included by LEFT JOIN



