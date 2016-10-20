SELECT orderDate, status, amount 
FROM orders o, payments p 
WHERE o.customerNumber = p.customerNumber 
ORDER BY amount DESC;
