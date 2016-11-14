-- List the country, city and total number of rentals made by
-- customers from that city. Order your results by the country, city and number of rentals.

SELECT country, city, COUNT(r.rental_id) AS myCount
FROM customer c LEFT JOIN address a ON c.address_id = a.address_id LEFT JOIN city ci ON a.city_id = ci.city_id LEFT JOIN country co ON ci.country_id = co.country_id, rental r
WHERE c.customer_id = r.customer_id
GROUP BY city
ORDER BY country, city, myCount
