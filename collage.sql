CREATE DATABASE Collage;
USE Collage;
CREATE TABLE Student (
id int,
Name VARCHAR(255),
Roll_no int,
DEPARTMENT VARCHAR(255),
MARKS int
);


INSERT INTO Student(id, Name, Roll_no, Department, Marks) Values (1,"Sushant Gurav", 001, "BCA", 75);
INSERT INTO Student(id, NAME, Roll_no, Department, Marks) Values (2,"Rahul Patil", 002, "BCA", 77);
INSERT INTO Student(id, NAME, Roll_no, Department, Marks) Values (3,"Rohan sutar",003,"BCA", 65);
INSERT INTO Student (id, NAME, Roll_no, Department, Marks) Values (4,"Raj Kumbhar",004,'BCA', 88);
INSERT INTO Student (id, NAME,Roll_no ,Department,Marks) Values(5,"Deepak Kadam",005,"BCA",78);

Select * from Student;