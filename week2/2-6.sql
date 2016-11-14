-- Return the products in products table, where their buyPrice is greater than 40, and have
-- more than 300 quantity in stock, order the results by product name in alphabetical order.

SELECT * 
FROM products 
WHERE buyPrice > 40 AND quantityInStock > 300 
ORDER BY productName;
