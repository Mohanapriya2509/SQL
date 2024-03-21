-- CONSTRAINTS
CREATE DATABASE IF NOT EXISTS EMPLOYEE;
USE EMPLOYEE;

CREATE TABLE employee (
ID INT PRIMARY KEY AUTO_INCREMENT, -- id will be auto incremented for new rows
NAME VARCHAR(30) NOT NULL, -- null value cannot be inserted for the column
DEPARTMENT VARCHAR(20) DEFAULT 'unassigned', -- sets default when not mentioned
SALARY INT,
PAN VARCHAR(10) UNIQUE-- cannot contain duplicates
); 

INSERT INTO employee(ID, NAME, SALARY, DEPARTMENT, PAN) VALUES
    (1, 'AASHU', 10000, 'HR', '2463456'),
    (2, 'RIYA', 5000, 'MANAGER', '26788823'),
    (3, 'NIRMALA', 7000, 'MANAGER', '23467891'),
    (4, 'LAVU', 5000, 'MANAGER', '18762519'),
    (5, 'MOHANAPRIYA', 50000, 'CEO', '9724627'),
    (6, 'VANI', 20000, 'HR', '272849462');

SELECT * FROM employee;


