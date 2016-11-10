SELECT c.city, AVG(DATEDIFF(o.shippedDate, o.orderDate)) AS Average 
FROM customers c, orders o
WHERE c.customerNumber = o.customerNumber
GROUP BY c.city