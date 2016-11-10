SELECT f.title, c.name, COUNT(r.rental_id) AS borrowCount
FROM rental r LEFT JOIN inventory i ON r.inventory_id = i.inventory_id, film f, film_category fc, category c
WHERE f.film_id = i.film_id and f.film_id = fc.film_id and fc.category_id = c.category_id AND i.store_id = 1 
GROUP BY f.film_id
ORDER BY c.name
