SELECT co.Name, COUNT(DISTINCT(ci.District)) 
FROM Country co, City ci 
WHERE co.Code = ci.CountryCode 
GROUP BY co.Name 
ORDER BY COUNT(DISTINCT(ci.District)) DESC;
