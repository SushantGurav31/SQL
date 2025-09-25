create database carshowroom;

use carshowroom;


-- Customers Table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(50),
    Phone VARCHAR(15),
    City VARCHAR(30)
);

-- Cars Table
CREATE TABLE Cars (
    CarID INT PRIMARY KEY,
    Brand VARCHAR(30),
    Model VARCHAR(30),
    Price DECIMAL(10,2),
    Year INT
);

-- Sales Table
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    CustomerID INT,
    CarID INT,
    SaleDate DATE,
    Salesperson VARCHAR(50),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (CarID) REFERENCES Cars(CarID)
);


-- Customers 
INSERT INTO Customers VALUES 
(1, 'Amit Sharma', '9876543210', 'Mumbai'),
(2, 'Priya Verma', '9076501234', 'Delhi'),
(3, 'Rahul Mehta', '9123456789', 'Bangalore'),
(4, 'Sneha Kulkarni', '9988776655', 'Pune'),
(5, 'Vikram Singh', '9112233445', 'Chennai');

-- Cars 
INSERT INTO Cars VALUES
(101, 'Toyota', 'Fortuner', 3500000,2022),
(102, 'Hyundai', 'Creta', 1700000,2021),
(103, 'Maruti', 'Swift', 800000,2020),
(104, 'Honda', 'City', 1200000,2022),
(105, 'Mahindra', 'Thar', 1500000,2023);

-- Sales
INSERT INTO Sales VALUES
(1001, 1, 101, '2023-02-10', 'Ravi Kumar'),
(1002, 2, 102, '2023-03-15', 'Anita Singh'),
(1003, 3, 103, '2023-04-20', 'Ravi Kumar'),
(1004, 4, 104, '2023-06-05', 'Sunil Joshi'),
(1005, 5, 105, '2023-07-18', 'Anita Singh'),
(1006, 1, 103, '2023-09-10', 'Ravi Kumar');

select * from Customers;
select * from Cars;
select * from Sales;

-- 1)List all customers who live in Mumbai.
select * from Customers where City = 'Mumbai';

-- 2)Show all cars with a price above 15 lakhs.
select * from Cars where Price > 1500000;

-- 3)Find the total number of cars sold.
select count(*) as count_SaleID from Cars;

-- 4) Get the most expensive car in the Cars table.
select * from Cars order by Price desc limit 1; 

-- 5) Find the sales made by Salesperson ‘Ravi Kumar’.
select * from Sales where Salesperson = 'Ravi Kumar';

-- 6) Show the customer name and car model for each sale.
SELECT 
    s.SaleID,
    c.Name AS CustomerName,
    ca.Brand,
    ca.Model,
    s.SaleDate,
    s.Salesperson
FROM Sales s
JOIN Customers c ON s.CustomerID = c.CustomerID
JOIN Cars ca ON s.CarID = ca.CarID;

-- 7)Find the total revenue from all sales.
SELECT SUM(c.Price) AS TotalRevenue
FROM Sales s
JOIN Cars c ON s.CarID = c.CarID;

