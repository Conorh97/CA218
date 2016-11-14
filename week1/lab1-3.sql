-- Show the name and address of all customers who live in the USA.

SELECT customerName, addressLine1, addressLine2, city, state, postalCode, country 
FROM customers 
WHERE country = 'USA'; 
