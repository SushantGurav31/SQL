create database MySQL_Exists;

use MySQL_Exists;


create table Customers (
customer_id int,
name varchar (50),
city varchar (50)
);



create table Orders (
order_id int,
customer_id int,
product varchar (501),
amount decimal (10,2)
);


-- Customers
insert into Customers values
(1, "Amit", "Pune"),
(2, "Sneha", "Mumbai"),
(3, "Rahul", "Delhi"),
(4, "Priya", "Bangalore");



-- Orders 
insert into Orders Values
(101, 1, "Laptop", 55000),
(102, 1, "Mouse", 500),
(103, 2, "Mobile", 20000),
(104, 4, "Table", 15000);

select * from Customers;

select * from Orders;


-- Find customers who have placed at least one order
select name,city
from Customers c 
where exists (select 1 from Orders o where o.customer_id = c.customer_id);


-- Find customers who have not placed any order
select name, city 
from Customer c 
where not exists (select 1 from Orders o where o.customer_id = c.customer_id);



create table Students(
id int,
Name varchar (50),
department varchar(50)
);


INSERT INTO Students VALUES
(1, 'Amit', 'Computer Science'),
(2, 'Sneha', 'Electronics'),
(3, 'Rahul', 'Mechanical'),
(4, 'Priya', 'Computer Science'),
(5, 'Karan', 'Civil');

select * from Students;
CREATE TABLE Enrollments (
    enroll_id INT,
    student_id INT,
    course VARCHAR(50)
);

INSERT INTO Enrollments VALUES
(101, 1, 'Database Systems'),
(102, 1, 'Operating Systems'),
(103, 2, 'Microprocessors'),
(104, 4, 'Artificial Intelligence');

select * from Enrollments;


-- Find all students who are enrolled in at least one course.
SELECT name, department
FROM Students s
WHERE EXISTS (
    SELECT 1 
    FROM Enrollments e
    WHERE e.student_id = s.id
);


-- Find all students who are not enrolled in any course.
select name, department
from Students s 
where not exists (
select 1 
from Enrollments e
where e.student_id = s.id);



-- Find all students from Computer Science who are enrolled in at least one course. 
select name,department 
from Students s 
where department = "Computer Science"
and exists (
select 1 
from Enrollments e 
where e.student_id = s.id);


-- Find all students who are enrolled in a course named "Database Systems".
select name
from Students s
where exists (
select 1
from Enrollments e
where e.student_id = s.id
and e.course = "Database Systems"); 



-- Find all students from Electronics department who are not enrolled in any course.
select name 
from Students s 
where department = "Electronics"
and not exists (
select 1
from Enrollments e 
where e.student_id = S.id);







