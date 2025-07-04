CREATE DATABASE Practice_one;

USE Practice_one;

CREATE TABLE OnlineOrders(
customer_name VARCHAR(100),
product_name VARCHAR(100),
category VARCHAR(100),
order_amount DECIMAL(10,2),
order_quantity int,
order_date date
 
);

insert into onlineOrders(customer_name,product_name,category,order_amount,order_quantity,order_date) values('alice','t-shirt','clothing',500.00,2,'2024-10-01');

insert into onlineOrders(customer_name,product_name,category,order_amount,order_quantity,order_date) values('bob','laptop','electronics',55000.00,1,'2024-10-02');

insert into onlineOrders(customer_name,product_name,category,order_amount,order_quantity,order_date) values('Charlie','shoes','footwear',2000.00,1,'2024-10-03');

insert into onlineOrders(customer_name,product_name,category,order_amount,order_quantity,order_date) values('alice','shoes','footwear',1800.00,1,'2024-10-04');

insert into onlineOrders(customer_name,product_name,category,order_amount,order_quantity,order_date) values('eve','headphone','electronics',3000.00,2,'2024-10-04');

insert into onlineOrders(customer_name,product_name,category,order_amount,order_quantity,order_date) values('bob','t-shirt','clothing',500.00,1,'2024-10-05');

insert into onlineOrders(customer_name,product_name,category,order_amount,order_quantity,order_date) values('charlie','mouse','electronics',1500.00,3,'2024-10-06');



select * from OnlineOrders; 

-- 1 Find the minimum and maximum order_amount in the table.
select min(order_amount) AS min_order_amount, max(order_amount) AS max_order_amount from OnlineOrders;


-- 2 Find the total number of orders made.
select sum(order_quantity) from OnlineOrders;

-- 3 Calculate the total revenue generated (order_amount) from all orders.
select sum(order_amount) as total_revenue from onlineorders;

-- 4 What is the average order_amount per order *
select avg(order_amount) as average_order_amount from onlineorders;


-- 5
select sum(order_quantity) from onlineorders;


-- 6 *
select sum(order_amount) as sum_order_amount from onlineorders group by category;


-- 7 Show the average order_amount by customer_name.
select avg(order_amount) as avg_order_amount from onlineorders group by customer_name;


-- 8 Count how many orders each customer has placed.
select 


