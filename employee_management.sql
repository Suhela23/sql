-- Create the Employee Management Database
CREATE DATABASE EmployeeManagement;
USE EmployeeManagement;

-- Create Employees Table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Department VARCHAR(50),
    Salary DECIMAL(10,2),
    JoiningDate DATE
);

-- Insert Sample Data
INSERT INTO Employees (Name, Department, Salary, JoiningDate) VALUES
('John Doe', 'IT', 60000, '2022-06-15'),
('Jane Smith', 'HR', 55000, '2021-08-22'),
('Mike Johnson', 'Finance', 70000, '2020-11-10');

-- Retrieve All Employees
SELECT * FROM Employees;

-- Retrieve Employees in a Specific Department
SELECT * FROM Employees WHERE Department = 'IT';

-- Update an Employee's Salary
UPDATE Employees SET Salary = 75000 WHERE EmployeeID = 3;

-- Delete an Employee Record
DELETE FROM Employees WHERE EmployeeID = 2;

-- Count Total Employees
SELECT COUNT(*) AS TotalEmployees FROM Employees;

-- Calculate Average Salary
SELECT Department, AVG(Salary) AS AverageSalary FROM Employees GROUP BY Department;
