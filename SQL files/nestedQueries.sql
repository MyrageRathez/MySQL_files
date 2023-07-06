--Find names of all employees who have sold over 30000 to a single client

SELECT employee.first_name,employee.last_name
FROM employee
WHERE employee.emp_id IN (
    SELECT works_with.emp_id
    FROM works_with
    WHERE works_with.total_sales > 30000 
);
--Find all the clients who are handled  by the branch that Michael Scott manages

SELECT client.client_name
FROM client
WHERE client.branch_id  = (
    SELECT employee.branch_id
    FROM employee
    WHERE employee.first_name = 'Michael' AND employee.last_name = 'Scott'
) ;
