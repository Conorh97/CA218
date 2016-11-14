-- Which office processes the most orders?

SELECT oc.city 
FROM orders o LEFT JOIN customers c ON o.customerNumber = c.customerNumber LEFT JOIN employees e ON c.salesRepEmployeeNumber = e.employeeNumber, offices oc 
WHERE e.officeCode = oc.officeCode
GROUP BY oc.officeCode
ORDER BY COUNT(o.orderNumber) DESC
LIMIT 1
