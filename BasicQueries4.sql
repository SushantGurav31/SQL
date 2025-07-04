CREATE DATABASE BasicQueries4;

USE BasicQueries4;

CREATE TABLE Student(
student_id int,
name VARCHAR(100),
city VARCHAR(100)

);

CREATE TABLE Results (
student_id int,
subject VARCHAR (100),
marks int 

);

INSERT INTO Student(student_id,name,city) values(1,"amit","delhi");

INSERT INTO Student(student_id,name,city) values(1,"sneha","mumbai");

INSERT INTO Student(student_id,name,city) values(3,"ravi","chenni");

INSERT INTO Student(student_id,name,city) values(4,"priya","delhi");

INSERT INTO Student(student_id,name,city) values(5,"karan","bangalore");

-- result
insert into results(student_id,subject,marks) values(1,"math",78);

insert into results(student_id,subject,marks) values(1,"science",90);

insert into results(student_id,subject,marks) values(2,"math",85);

insert into results(student_id,subject,marks) values(2,"science",75);

insert into results(student_id,subject,marks) values(3,"math",65);

insert into results(student_id,subject,marks) values(3,"science",70);

insert into results(student_id,subject,marks) values(4,"math",95);

insert into results(student_id,subject,marks) values(4,"science",99);

insert into results(student_id,subject,marks) values(5,"math",45);

insert into results(student_id,subject,marks) values(5,"science",50);


select * from student;

select * from results;


-- Get student whoes average marks are more than 80
-- GROUP BY with HAVING
select student_id, avg (marks)as avg_marks from results group by student_id having avg(marks) >80;


-- List students who have marks in at least one subject.  
-- EXISTS
select name from student s where exists (select 1 from results r where r.student_id = s.student_id);


-- Find student who record more than any marks scored by student id 5.
-- ANY
select * from results where marks > any (select marks from results where student_id =5);


-- Find student who scored more than all of the marks scored by student id 3. 
-- ALL
select * from results where marks > all (select marks from results where student_id = 3);

