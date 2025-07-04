CREATE DATABASE Company;
USE Company;
Create Table Emp(
id int,
Name VARCHAR(255),
Salary int,
Department VARCHAR(255),
Post VARCHAR(255)
);

INSERT INTO Emp(id,Name,Salary,Department,post)Values (1,"Sushant Gurav",30000,"IT",'Manager');

INSERT INTO emp(id,Name,Salary,Department,Post)Values(2,"Vikas Sutar",25000,"sales",'Clerk');

INSERT INTO emp(id,Name,Salary,Department,post)Values(3,"Sahil Tendulkar",45000,"Store","keeper");

INSERT INTO emp(id,name,Salary,Department,post)Values(4,"Suraj Gavade",18000,'Production',"Team Leader");

INSERT INTO emp(id,name,Salary,Department,post)Values(5,"Pankaj Jadhav",23000,'testing',"QA");

select * from emp;

-- Salary more than 30000;
select * from emp where Salary > 30000;

select * from emp where post="Manager";

select * from emp where Salary between 10000 AND 30000;

select * from emp where post between "Team Leader" and "QA"; 

select * from emp where post between "Manager" and "QA";