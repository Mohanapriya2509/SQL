-- FORIEGN KEY
CREATE DATABASE IF NOT EXISTS EMPLOYEE;
USE EMPLOYEE;

CREATE TABLE IF NOT EXISTS EMPLOYEE (
    ID INT PRIMARY KEY,
    NAME VARCHAR(30),
    SALARY INT,
    DEPARTMENT VARCHAR(50)
);

INSERT INTO EMPLOYEE (ID, NAME, SALARY, DEPARTMENT) VALUES
    (1, 'SHALU', 10000, 'HR'),
    (2, 'RIYA', 5000, 'MANAGER'),
    (3, 'NIRMALA', 7000, 'MANAGER'),
    (4, 'LAVU', 5000, 'MANAGER'),
    (5, 'MOHANAPRIYA', 50000, 'CEO'),
    (6, 'VANI', 20000, 'HR');

CREATE DATABASE EMP2;
USE EMP2;


CREATE TABLE IF NOT EXISTS EMP2 (
    ID INT,
    PHONE BIGINT,
    INDEX (ID), 
    CONSTRAINT FK_employeeID FOREIGN KEY (ID) REFERENCES EMPLOYEE.EMPLOYEE(ID) 
);

INSERT INTO EMP2 (ID, PHONE) VALUES 
    (1, 882971216),
    (2, 9840163331),
    (3, 888552475);
USE EMPLOYEE;
SELECT * FROM EMPLOYEE;
USE EMP2;
SELECT * FROM EMP2;

