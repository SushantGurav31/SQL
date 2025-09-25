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

select * from products where price = 100;

select price,quality from products;

select * from products order by price asc;

select * from products order by price desc;

select * from products order by price = 70 ;

select * from products where price=70 or quality = "best";

select * from products where name = "coffee" and id = 133;

update products set Availability = "yes" where Availability="no";

delete from products where name="face wash";

select max(price) as max_price from products;

select min(price) as min_price from products;





