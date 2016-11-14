-- Return the most common weekday which people borrow films on. Also
-- print out the total number of films borrowed on that weekday.


SELECT DAYNAME(rental_date) AS Day, COUNT(rental_id) as myCount
FROM rental 
GROUP BY Day
ORDER BY myCount DESC
LIMIT 1;
