-- How many customers are living in USA or Ireland?

SELECT COUNT(customerNumber) 
FROM customers 
WHERE country = "USA" OR "Ireland";
