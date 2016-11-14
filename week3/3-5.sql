-- List the customer name the order number and the
-- price of the order for all customers who have placed a
-- successful order where the price of their order is
-- greater than the average price of an order.

SELECT c.customerName, o.orderNumber, p.amount 
FROM customers c, orders o, payments p 
WHERE c.customerNumber = p.customerNumber AND c.customerNumber = o.customerNumber AND status = "shipped" AND p.amount > (SELECT AVG(amount) FROM payments) 
GROUP BY c.customerName;
