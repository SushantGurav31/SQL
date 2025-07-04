CREATE DATABASE BasicQueriesThree;

USE BasicQueriesThree;

create table SalseData(
Product_name VARCHAR(100),
category VARCHAR(100),
Price DECIMAL(10,2),
Quantity INT 

);

insert into SalseData(product_name,category,price,quantity) VALUES ("pen","stationery","10.00",100);


insert into SalseData(product_name,category,price,quantity) VALUES ("Notebook","stationery","50.00",200);


insert into SalseData(product_name,category,price,quantity) VALUES ("mouse","electronics","400.00",50);


insert into SalseData(product_name,category,price,quantity) VALUES ("Keyboard","electronics",800.00,30);


insert into SalseData(product_name,category,price,quantity) VALUES ("chair","Furniture","1500.00",10);


insert into SalseData(product_name,category,price,quantity) VALUES ("desk","Furniture","3000.00",5);


insert into SalseData(product_name,category,price,quantity) VALUES ("pen","stationery","10.00",50);


select * from SalseData;


           -- Minimum price
select MIN(price) as min_price from SalseData;


           -- maximum price
select max(price) as max_price from SalseData;


 
 select sum(Quantity) as total_quentity from salsedata;
 
 
 
 select avg(price) as average_price from salsedata;
 
 
 
 select count(*) as total_rows from salsedata;
 
 
 
 SELECT 
 category,
     MIN(price) AS min_price,
     MAX(price) AS max_price,
	 SUM(quantity) AS total_quantity,
	 AVG(price) AS average_price,
	 COUNT(*) AS record_count
 FROM SalseData
 GROUP BY category;
    
    
    