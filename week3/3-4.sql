SELECT c.customerName, c.customerNumber, SUM(p.amount) AS Total 
FROM customers c, payments p 
WHERE c.customerNumber = p.customerNumber and (SELECT SUM(amount) FROM payments) > (SELECT AVG(amount) FROM payments) 
GROUP BY c.customerName 
ORDER BY Total DESC 
LIMIT 10;