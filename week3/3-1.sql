-- For each order,
-- print out the orderDate, the status of the order and the
-- name of the customer who placed the order.

SELECT c.customerName, orderDate, status 
FROM customers c, orders o;
