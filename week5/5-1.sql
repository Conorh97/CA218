-- List the id and the title of film that been borrowed more than once by
-- customers whose first names begin with ‘D’.

SELECT f.film_id, f.title 
FROM film f, inventory i, rental r
WHERE f.film_id = i.film_id and (SELECT COUNT(r.inventory_id)
FROM rental r, customer c
WHERE r.inventory_id = i.inventory_id and r.customer_id = c.customer_id and c.first_name LIKE "D%") > 1                                                                    
GROUP BY i.film_id;
