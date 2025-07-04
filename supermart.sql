CREATE DATABASE supermart;

use supermart;

CREATE TABLE products (
productname VARCHAR (50),
category VARCHAR (50),
brand VARCHAR (50),
quantity int,
price DECIMAL(10,2)

);

insert into products (productname, category, brand, quantity, price) values ("milk 1L", "dairy", "amul", 50,55.00); 

insert into products (productname, category, brand, quantity, price) values ("bread Loaf", "bakery", "britannia", 40,35.00);

insert into products (productname, category, brand, quantity, price) values ("basmiti rice 1kg", "grocery", "dawat", 30, 120.00);

insert into products (productname, category, brand, quantity, price) values ("toothpaste 100g", "personal care", "dove", 35,180.00);

insert into products (productname, category, brand, quantity, price) values ("shampoo 200ml", "personal care", "dove",60, 45.00);

insert into products (productname, category, brand, quantity, price) values ("eggs pack of 6", "poultry", "localfarm", 25, 65.00);

insert into products (productname, category, brand, quantity, price) values ("butter 500g", "dairy", "amul", 20,250.00);

insert into products (productname, category, brand, quantity, price) values ("detergent 1kg", "household", "surf excel", 45, 210.00);

insert into products (productname, category, brand, quantity, price) values ("tomato ketchup", "grocery", "kisan", 55, 95.00);

insert into products (productname, category, brand, quantity, price) values ("mineral water 1L", "beverages", "bisleri", 80, 20.00);


select * from products;


select min(price) as min_price from products;

select max(price) as max_price from products;

select sum(price) as sum_price from products;

select * from products order by price asc limit 5;

select * from products order by price desc limit 7;

select * from products where brand = "dove";

select * from products order by price asc;

select * from products order by price desc;

update products set price = 40 where quantity = 80;

delete from products where brand = "dove";

select * from products where price between 20 and 200;
