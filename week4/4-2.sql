-- Print out the first and last name of the actor who starred
-- in the most action films.

SELECT a.first_name, a.last_name
FROM actor a, film_actor f, film_category c
WHERE a.actor_id = f.actor_id and f.film_id = c.film_id
ORDER BY (SELECT COUNT(category_id) FROM category WHERE category_id = 1) DESC
LIMIT 1;
