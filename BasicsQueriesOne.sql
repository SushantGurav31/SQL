CREATE DATABASE BasicQueriesOne ;

use BasicQueriesOne;

Create Table Employees(

emp_id INT,

name VARCHAR(100),

department VARCHAR(100),

salary INT,

city VARCHAR(50)

);

INSERT INTO employees (emp_id,name,department,salary,city) VALUES (101,"Sushant","HR",50000,"delhi");
INSERT INTO employees (emp_id,name,depaetment,salary,city) VALUES (102,"Pankaj","Finance",60000,"Mumbai");
INSERT INTO employees (emp_id,name,department,salary,city) VALUES (103,"Vikas","IT",70000,"Bangalore");
INSERT INTO employees (emp_id,name,department,salary,city) VALUES (104,"Rohan","IT",55000,"Delhi");
INSERT INTO employees (emp_id,name,department,salary,city) VALUES (105,"suraj","Finance",65000,"chennai");
INSERT INTO employees (emp_id,name,department,salary,city) VALUES (106,"Rahul","HR",52000,"Mumbai");

select * from  employees;

select * from employees WHERE department = "IT";

select * from employees where department = "finance" and salary > 60000;

select * from employees where department = "HR" or city = "delhi";

select * from employees where not (department = "HR"); 

select * from employees where (department = "IT" or department = "Finance") and not (city = "mumbai");


