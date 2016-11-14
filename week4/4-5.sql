-- Print out the name, release year and category for all films which 
-- have the word “Moose” in their description.

SELECT f.title, f.release_year, c.name  
FROM film f, film_category fc, category c
WHERE f.film_id = fc.film_id and fc.category_id = c.category_id and f.description LIKE "%Moose%";
