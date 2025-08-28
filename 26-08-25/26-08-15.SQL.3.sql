show databases;
use sathyabama;
DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS Department;
CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
);


CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50) NOT NULL,
    salary DECIMAL(10,2),
    dept_id INT,
    
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);

INSERT INTO Department (dept_id, dept_name)
VALUES (1, 'HR'), (2, 'IT'), (3, 'Admin');


INSERT INTO Employee (emp_id, emp_name, salary, dept_id)
VALUES 
(101,'Alice', 50000, 1),
(102,'Bob', 60000, 2),
(103,'Charlie', 55000, 2),
(104, 'David', 45000, 1),
(105, 'Eve', 70000, 3);
ALTER TABLE employee ADD COLUMN dept_name varchar(25) after dept_id;
insert into EMPLOYEE( emp_id,dept_name,emp_name,salary,dept_id)
values(109,'IT','Alice', 50000, 1),
(120,'finance','Bob', 60000, 2),
(130,'HR','Charlie', 55000, 2),
(134,'Admin', 'David', 45000, 1),
(126,'BUSSINESS', 'Eve', 70000, 3);
select avg(salary)as avg_salary 
FROM EMPLOYEE;
select sum(salary) as total_salary
FROM EMPLOYEE
WHERE dept_name in ("Admin","HR");
SELECT COUNT(*) AS FIRST_NAME
FROM EMPLOYEE
WHERE EMP_NAME LIKE "V%";
SELECT sum(salary) as total_salary
from employee
where salary between 50000 and 200000