-- Show the name, country code and population of all cities whose
-- country code begins with “G” and have a population of more than 100000.

SELECT Name, CountryCode, Population 
FROM City 
WHERE CountryCode LIKE 'G%' AND Population > 100000;
