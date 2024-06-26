-- GROUP BY AND HAVING
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
SELECT DEPARTMENT,FORMAT(AVG(salary),0) avg_sal
FROM employee
GROUP BY DEPARTMENT;
SELECT DEPARTMENT,COUNT(ID) AS count 
FROM employee
GROUP BY DEPARTMENT
HAVING COUNT(ID)>3;
SELECT DEPARTMENT,COUNT(ID) AS count
FROM employee
GROUP BY DEPARTMENT
HAVING COUNT(ID)>1
ORDER BY COUNT(ID) DESC
SELECT DEPARTMENT,COUNT(ID) AS count
FROM employee
WHERE salary > 10000
GROUP BY DEPARTMENT
HAVING COUNT(ID) > 1
ORDER BY COUNT(ID) DESC;
