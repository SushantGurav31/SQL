create database Basic_queries6;

use Basic_queries6;


create table more_employees(
name varchar (50),
department varchar (50),
salary int 
);

insert into more_employees (name,department,salary)
select name, department, salary
from employees
where salary > 52000;

select * from more_employees;
