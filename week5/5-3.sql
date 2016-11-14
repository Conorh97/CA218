-- List the name, title and category of films and the number of times they
-- have have been borrowed from the store with id 1. Order your results
-- alphabetically by category name.

SELECT f.title, c.name, COUNT(r.rental_id) AS borrowCount
FROM rental r LEFT JOIN inventory i ON r.inventory_id = i.inventory_id, film f, film_category fc, category c
WHERE f.film_id = i.film_id and f.film_id = fc.film_id and fc.category_id = c.category_id AND i.store_id = 1 
GROUP BY f.film_id
ORDER BY c.name
