-- CREATE TABLE employees (
--		id INT PRIMARY KEY,
-- 		name VARCHAR(255),
-- 		salary DECIMAL(10, 2),
-- 		department_id INT,
-- 		hire_date DATE );

--- creating a table departments

-- CREATE TABLE departments (
-- 		id INT PRIMARY KEY,
-- 		name VARCHAR(255) );

-- INSERT INTO departments (id, name) VALUES (5, 'Engineering');
-- INSERT INTO departments (id, name) VALUES (6, 'Sales');
-- INSERT INTO departments (id, name) VALUES (7, 'Marketing');
-- INSERT INTO departments (id, name) VALUES (8, 'HR');

-- INSERT INTO employees (id, name, salary, department_id, hire_date) VALUES (6, 'Alice', 60000.00, 1, '2020-01-01');
-- INSERT INTO employees (id, name, salary, department_id, hire_date) VALUES (7, 'Bob', 70000.00, 1, '2020-01-15');
-- INSERT INTO employees (id, name, salary, department_id, hire_date) VALUES (8, 'Charlie', 80000.00, 2, '2020-02-01');
-- INSERT INTO employees (id, name, salary, department_id, hire_date) VALUES (9, 'Dave', 90000.00, 3, '2020-02-15');
-- INSERT INTO employees (id, name, salary, department_id, hire_date) VALUES (10, 'Eve', 100000.00, 4, '2020-03-01');

-- a query to find the ame and salary of the highest paid emplpyee in each department
-- WITH RankedEmployees AS (
--     SELECT
--         e.name AS employee_name,
--         e.salary,
--         d.name AS department_name,
--         ROW_NUMBER() OVER (PARTITION BY e.department_id ORDER BY e.salary DESC) AS rank
--     FROM
--         employees e
--     INNER JOIN
--         departments d ON e.department_id = d.id
-- )
-- SELECT
--     employee_name,
--     salary,
--     department_name
-- FROM
--     RankedEmployees
-- WHERE
--     rank = 1;
--- a query to find the name and hire date of the oldest employee in each department
-- WITH OldestEmployees AS (
--     SELECT
--         e.name AS employee_name,
--         e.hire_date,
--         d.name AS department_name,
--         ROW_NUMBER() OVER (PARTITION BY e.department_id ORDER BY e.hire_date) AS rank
--     FROM
--         employees e
--     INNER JOIN
--         departments d ON e.department_id = d.id
-- )
-- SELECT
--     employee_name,
--     hire_date,
--     department_name
-- FROM
--     OldestEmployees
-- WHERE
--     rank = 1;


-- a query to find the name and salary of employees whose salary is greater than the average salary

SELECT e.name AS employee_name, e.salary
FROM employees e
INNER JOIN (
    SELECT department_id, AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department_id
) AS dept_avg ON e.department_id = dept_avg.department_id
WHERE e.salary > dept_avg.avg_salary;


