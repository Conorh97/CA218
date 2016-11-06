SELECT f.title, c.name, (SELECT COUNT(r.rental_id)
FROM rental r 
WHERE r.inventory_id = i.inventory_id and i.store_id = 1) as borrowCount                        
FROM film f, film_category fc, category c, inventory i
WHERE f.film_id = i.film_id and f.film_id = fc.film_id and fc.category_id = c.category_id 
GROUP BY f.film_id
ORDER BY f.title;