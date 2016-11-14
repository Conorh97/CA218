-- List the customerName, custmoerNumber and combined price
-- of all the customers payments. Where the combined
-- total of a customers payemts is greater than the
-- average spent by a customer. Show only the top 10
-- customers and order the results from highest spent to lowest.


SELECT c.customerName, c.customerNumber, SUM(p.amount) AS Total 
FROM customers c, payments p 
WHERE c.customerNumber = p.customerNumber and (SELECT SUM(amount) FROM payments) > (SELECT AVG(amount) FROM payments) 
GROUP BY c.customerName 
ORDER BY Total DESC 
LIMIT 10;
