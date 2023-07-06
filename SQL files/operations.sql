--Find out the no of branches
SELECT DISTINCT branch_id 
FROM employee;

--Count the no of employees in the schema
SELECT COUNT (emp_id)
FROM employee;
--ans = 9 
--AVERAGE OF EMPLOYEES SALARIES

SELECT AVG (salary)
FROM employee;

--AVERAGE OF male EMPLOYEES SALARIES

SELECT AVG (salary)
FROM employee
WHERE sex = 'M' ;

--FINDING OUT THE NO OF EMPLOYEES OF EACH SEX

SELECT COUNT(sex),sex
FROM employee
GROUP BY sex;

--GETTING THE TOTAL SALES OF EACH EMPLOYEE

SELECT SUM(total_sales),emp_id,
FROM works_with
GROUP BY emp_id;