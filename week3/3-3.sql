-- For each country, print out the name of the country and the number of
-- districts that country has. Order the results by the
-- number of districts from highest to lowest.

SELECT co.Name, COUNT(DISTINCT(ci.District)) 
FROM Country co, City ci 
WHERE co.Code = ci.CountryCode 
GROUP BY co.Name 
ORDER BY COUNT(DISTINCT(ci.District)) DESC;
