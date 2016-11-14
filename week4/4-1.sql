-- Print out the names of all spoken languages which have more than 1,000,000 speakers. 
-- Ordered by the number of people who speak them, from most to least.

SELECT l.Language 
FROM CountryLanguage l, Country c 
WHERE l.CountryCode = c.Code AND (c.Population * l.Percentage / 100) > 1000000 
ORDER BY (c.Population * l.Percentage / 100) DESC;
