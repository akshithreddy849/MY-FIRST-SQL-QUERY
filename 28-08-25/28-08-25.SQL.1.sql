show databases;
use sathyabama;
DROP TABLE IF exists EMPLOYEES;
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    salary INT
);
INSERT INTO employees (emp_id, emp_name, department, salary)
VALUES
(1, 'Ravi Kumar', 'HR', 45000),
(2, 'Anita Sharma', 'Admin', 52000),
(3, 'Vikram Singh', 'IT', 60000),
(4, 'Pooja Reddy', 'Finance', 75000),
(5, 'Rahul Mehta', 'IT', 68000);
SELECT max(salary)as highest_salary,department
from employees
group by department
order by highest_salary desc;
select count(*)as count_of_employees
from employees
where  department not in ('HR','ADMIN');
select upper(emp_name)as emp_upper
from employees;
select lower(emp_name) as emp_lower
from employees;