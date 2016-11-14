-- How many people have spent more than €100 in total renting films?

SELECT COUNT(*)
FROM (
    SELECT customer_id
    FROM payment
    GROUP BY customer_id
    HAVING SUM(amount) > 100
    ) c
