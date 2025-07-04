CREATE DATABASE IN_Between;

use in_between;


CREATE TABLE orders (
order_id int,
customer_name VARCHAR(50),
order_amount decimal(10,2),
order_date date 

);


insert into orders (order_id, customer_name, order_amount, order_date) values(201, "Alice", 1200.50, "2024-01-15");

insert into orders (order_id, customer_name, order_amount, order_date) values(202, "Bob", 800.00, "2024-01-18");

insert into orders (order_id, customer_name, order_amount, order_date) values(203, "Charlie", 1500.00, "2024-02-01");

insert into orders (order_id, customer_name, order_amount, order_date) values(204, "David", 2500.75,"2024-02-10");

insert into orders (order_id, customer_name, order_amount, order_date) values(205, "Eve", 950.00, "2024-03-05");

insert into orders (order_id, customer_name, order_amount, order_date) values(206, "Alice", 1100.25, "2024-03-10");

select * from orders;


-- 
select * from orders where customer_name in ("Alice","Eve");


-- 
select * from orders where order_amount between 1000 and 2000;


-- 
select * from orders where order_date between "2024-02-01" and "2024-02-29";



