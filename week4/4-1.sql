SELECT l.Language, SUM(DISTINCT c.Population) AS Total 
FROM CountryLanguage l, Country c 
WHERE l.CountryCode = c.Code 
GROUP BY l.Language 
ORDER BY Total DESC;