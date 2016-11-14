-- Show the officeCode, city and address from all offices which are NOT in the USA.

SELECT officeCode, city, addressLine1, addressLine2 
FROM offices 
WHERE country != "USA";
