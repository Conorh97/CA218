SELECT l.Language 
FROM CountryLanguage l, Country c 
WHERE l.CountryCode = c.Code AND (c.Population * l.Percentage / 100) > 1000000 
ORDER BY (c.Population * l.Percentage / 100) DESC;
