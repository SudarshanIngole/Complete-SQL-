use Sudarshan ;
Create Table employees
(   id varchar(20),
    name varchar(20),
    department varchar(50),
    salary int 

);

INSERT INTO employees (id, name, department, salary)
VALUES (1, 'John Doe', 'HR', 50000),
      ( 2, 'The Rock', "Wresteler", 10000);

select * from employees;

UPDATE employees
SET salary = 55000
WHERE department = 'HR';

DELETE FROM employees
WHERE id = 1;

INSERT INTO employees (id, name, department, salary)
VALUES 
  (2, 'Jane Smith', 'Finance', 60000),
  (3, 'Michael Johnson', 'Marketing', 55000),
  (4, 'Emily Brown', 'IT', 65000);

INSERT INTO high_earners (id, name, department, salary)
SELECT id, name, department, salary
FROM employees
WHERE salary > 60000;

select * from employees;

UPDATE employees
SET department = 'Management';

delete from employees
where id = 2;
