-- Select the name, region and population of all countries with a
-- population greater than 1000000.

SELECT name, region, population 
FROM Country 
WHERE population > 1000000;
