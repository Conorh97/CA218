-- Print the first name, lastname and job title of all employees
-- who work in sales.

SELECT firstName, lastName, jobTitle 
FROM employees 
WHERE jobTitle LIKE '%Sales%';
