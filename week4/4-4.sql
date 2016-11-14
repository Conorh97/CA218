-- What are the top 10 most rented films?

SELECT f.title
FROM film f, inventory i, rental r
WHERE f.film_id = i.film_id and r.inventory_id = i.inventory_id
GROUP BY i.film_id
ORDER BY COUNT(r.inventory_id) DESC
LIMIT 10;
