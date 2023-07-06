-- % = any no of characters
--  _ = one character

-- FIND ANY CLIENT WHOSE NAME ENDS IN LLC

SELECT *
FROM client
WHERE client_name LIKE '%LLC';

--FIND ANY EMPLOYEES BORN IN FEBRUARY
SELECT *
FROM employee
WHERE birth_day LIKE '____-02%';

      -------UNIONS------


SELECT first_name AS employees_and_branches 
FROM employee
UNION
SELECT branch_name
FROM branch;
