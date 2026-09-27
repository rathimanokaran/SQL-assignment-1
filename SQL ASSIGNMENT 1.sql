CREATE DATABASE employee;
use employe;

CREATE TABLE departments(department_id INT PRIMARY KEY, 
department_name VARCHAR(100));
SELECT*FROM Departments;

## create location table
CREATE TABLE Location(location_id INT PRIMARY KEY,
location VARCHAR(30));
SELECT*FROM Location;

##create employees table
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    gender ENUM('M','F'),
    age INT,
    hire_date DATE,
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2),
    FOREIGN KEY (department_id) REFERENCES Departments(department_id),
    FOREIGN KEY (location_id) REFERENCES Location(location_id)
);
SELECT*FROM employee;

## Add email COlumn
ALTER TABLE Employees
add email VARCHAR(100);
SELECT*FROM employees;

## drop AGE column
ALTER TABLE Employees
DROP COLUMN age;
SELECT*FROM employees;

## MODIFY designation column
ALTER TABLE Employees
MODIFY designation VARCHAR(200);
SELECT*FROM employees;

## Rename hire_date (date of joining)
ALTER TABLE Employees
RENAME COLUMN hire_date TO date_of_joining;
SELECT*FROM employees;

##departments to departments info
RENAME TABLE Departments TO `Departments Info`;
SELECT * FROM `Departments Info`;

##RENAME TABLE location TO locationS
RENAME TABLE Location TO Locations;
SELECT * FROM Location

##table Truncate
TRUNCATE TABLE Employees;

##database and table dropping
DROP table Employees;

##employee database drop
DROP DATABASE IF EXISTS Employee;
CREATE DATABASE Employee;
USE Employee;

##not null unique
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE);
    
    CREATE TABLE Employee (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    gender VARCHAR(10) CHECK (gender IN ('M', 'Male', 'Female')),
    age INT CHECK (age >= 18),
    hire_date DATE DEFAULT (CURRENT_DATE),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2),
    FOREIGN KEY (department_id) REFERENCES Departments(department_id),
    FOREIGN KEY (location_id) REFERENCES Location(location_id)
);
SELECT*FROM departments;





