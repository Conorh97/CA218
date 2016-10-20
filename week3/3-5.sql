SELECT c.customerName, o.orderNumber, p.amount 
FROM customers c, orders o, payments p 
WHERE c.customerNumber = p.customerNumber AND c.customerNumber = o.customerNumber AND status = "shipped" AND p.amount > (SELECT AVG(amount) FROM payments) 
GROUP BY c.customerName;