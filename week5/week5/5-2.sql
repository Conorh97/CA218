SELECT DAYNAME(rental_date) AS Day, COUNT(rental_id) as myCount
FROM rental 
GROUP BY Day
ORDER BY myCount DESC
LIMIT 1;