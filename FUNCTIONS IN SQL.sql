-- FUNCTIONS IN SQL
CREATE DATABASE IF NOT EXISTS EMPLOYEE;
USE EMPLOYEE;
CREATE TABLE IF NOT EXISTS EMPLOYEE(
    ID INT PRIMARY KEY,
    NAME VARCHAR(30),
    SALARY INT,
    DEPARTMENT VARCHAR(50)
);

INSERT INTO EMPLOYEE(ID, NAME, SALARY, DEPARTMENT) VALUES
    (1, 'SHALU', 10000, 'HR'),
    (2, 'RIYA', 5000, 'MANAGER'),
    (3, 'NIRMALA', 7000, 'MANAGER'),
    (4, 'LAVU', 5000, 'MANAGER'),
    (5, 'MOHANAPRIYA', 50000, 'CEO'),
    (6, 'VANI', 20000, 'HR');

SELECT * FROM EMPLOYEE;

SELECT COUNT(*) AS total_employees FROM EMPLOYEE;
SELECT AVG(SALARY) FROM EMPLOYEE;
SELECT AVG(SALARY) FROM EMPLOYEE 
WHERE DEPARTMENT = "MANAGER";
SELECT SUM(SALARY) FROM EMPLOYEE
WHERE DEPARTMENT = "MANAGER";
SELECT UCASE(NAME) FROM EMPLOYEE;
SELECT NAME,CHAR_LENGTH(NAME)
FROM employee;
SELECT NAME,CONCAT("Rs.",salary)
FROM EMPLOYEE;
SELECT CONCAT("RS.",FORMAT(SALARY,0))
FROM EMPLOYEE;
SELECT NAME,LEFT(DEPARTMENT,4)
FROM employee;