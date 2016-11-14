-- List the names of all managers and the number of customers
-- who the managers’ employees represent.

SELECT e.firstName, e.lastName, k.customerCount
FROM(
    SELECT e.reportsTo, COUNT(c.customerNumber) AS customerCount
    FROM customers c, employees e
    WHERE c.salesRepEmployeeNumber = e.employeeNumber
    GROUP BY e.reportsTo
    ) k, employees e
WHERE e.jobTitle LIKE "%Manager%" and e.employeeNumber = k.reportsTo
