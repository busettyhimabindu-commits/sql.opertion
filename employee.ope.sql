CREATE DATABASE company;
USE company;

CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary DECIMAL(10,2),
    dept_id INT
);

CREATE TABLE department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

INSERT INTO employee
VALUES
(101, 'honey', 35000, 1),
(102, 'bindu', 45000, 2),
(103, 'sai', 50000, 3),
(104, 'teju', 40000, 2),
(105, 'reddy', 30000, 1);

INSERT INTO department
VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Finance'),
(4, 'Marketing');

SELECT * FROM employee;

SELECT * FROM department;

SELECT employee.emp_id,
       employee.emp_name,
       employee.salary,
       department.dept_name
FROM employee
RIGHT JOIN department
ON employee.dept_id = department.dept_id;

SELECT employee.emp_name,
       department.dept_name
FROM employee
CROSS JOIN department;