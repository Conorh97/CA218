-- List the name of the city and the average time in days it takes
-- between an order being placed and an order being shipped.

SELECT c.city, AVG(DATEDIFF(o.shippedDate, o.orderDate)) AS Average 
FROM customers c, orders o
WHERE c.customerNumber = o.customerNumber
GROUP BY c.city
