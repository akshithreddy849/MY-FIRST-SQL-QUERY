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
(101, 'Alice', 50000, 1),
(102, 'Bob', 60000, 2),
(103, 'Charlie', 55000, 2),
(104, 'David', 45000, 1),
(105, 'Eve', 70000, 3);
SELECT *
FROM employee
where salary>45000 and dept_id>=1 ;
select *  from employee
WHERE dept_id not in (1,2);
select *
from department 
where dept_name in("HR");
 select *
 from employee
 where emp_id in  (101,102,103) and salary between 10000 AND 50000;