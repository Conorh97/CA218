-- For each order.
-- Print the orderDate, the status and the total price of
-- the order. Order your results from highest price to lowest.

SELECT orderDate, status, amount 
FROM orders o, payments p 
WHERE o.customerNumber = p.customerNumber 
ORDER BY amount DESC;
