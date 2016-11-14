-- List all the information for customer that is either from the USA or Ireland, order the
-- results by customerName alphabetical order.

SELECT * 
FROM customers 
WHERE country = "USA" OR "Ireland" 
ORDER BY customerName;
