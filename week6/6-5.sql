SELECT c.name, f.title, AVG(DATEDIFF(r.return_date, r.rental_date)) AS Average  
FROM film f LEFT JOIN inventory i ON f.film_id = i.film_id LEFT JOIN film_category fc ON i.film_id = fc.film_id LEFT JOIN category c ON fc.category_id = c.category_id, rental r  
WHERE r.inventory_id = i.inventory_id 
GROUP BY f.title