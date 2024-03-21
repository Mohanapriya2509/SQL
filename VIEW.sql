-- VIEW
CREATE DATABASE branch1;
use branch1;
DROP DATABASE BRANCH1;
CREATE DATABASE employee1;
use employee1;
DROP DATABASE EMPLOYEE1;

 -- drop and freshly create

CREATE TABLE branch1 (
branch_id INT PRIMARY KEY AUTO_INCREMENT,
br_name VARCHAR(30) NOT NULL,
addr VARCHAR(200) );

CREATE TABLE employee1 (
emp_id INT PRIMARY KEY AUTO_INCREMENT,
ename VARCHAR(30) NOT NULL,
job_desc VARCHAR(20),
salary INT,
branch_id INT,
CONSTRAINT FK_branchId FOREIGN KEY(branch_id) REFERENCES branch1(branch_id)
);

INSERT INTO branch1  VALUES(1,"Chennai","16 ABC Road");
INSERT INTO branch1 VALUES(2,"Coimbatore","120 15th Block");
INSERT INTO branch1 VALUES(3,"Mumbai","25 XYZ Road");
INSERT INTO branch1 VALUES(4,"Hydrabad","32 10th Street");

INSERT INTO employee1 VALUES(1,'Ram','ADMIN',1000000,2);
INSERT INTO employee1 VALUES(2,'Harini','MANAGER',2500000,2);
INSERT INTO employee1 VALUES(3,'George','SALES',2000000,1);
INSERT INTO employee1 VALUES(5,'Meena','HR',2000000,3);
INSERT INTO employee1 VALUES(6,'Ashok','MANAGER',3000000,1);
INSERT INTO employee1 VALUES(7,'Abdul','HR',2000000,1);
INSERT INTO employee1 VALUES(8,'Ramya','ENGINEER',1000000,2);
INSERT INTO employee1 VALUES(9,'Raghu','CEO',8000000,3);
INSERT INTO employee1 VALUES(10,'Arvind','MANAGER',2800000,3);
INSERT INTO employee1 VALUES(11,'Akshay','ENGINEER',1000000,1);
INSERT INTO employee1 VALUES(12,'John','ADMIN',2200000,1);
INSERT INTO employee1 VALUES(13,'Abinaya','ENGINEER',2100000,2);
INSERT INTO employee1 VALUES(14,'Vidya','ADMIN',2200000,NULL);
INSERT INTO employee1 VALUES(15,'Ranjani','ENGINEER',2100000,NULL);
CREATE VIEW emp_br
AS
SELECT employee1.emp_id,employee1.ename,employee1.job_desc,branch1.br_name
FROM employee1
INNER JOIN branch1
ON employee1.branch_id=branch1.branch_id
ORDER BY emp_id;

SELECT * FROM emp_br; -- selecting all rows from view

DROP VIEW emp_br; -- delete view

CREATE OR REPLACE VIEW emp_br  -- modify view
AS 
SELECT employee1.emp_id,employee1.ename,employee1.job_desc,branch1.br_name
FROM employee1
INNER JOIN branch1
ON employee1.branch_id=branch1.branch_id;
SELECT * FROM EMP_BR;