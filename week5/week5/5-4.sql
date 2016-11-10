SELECT COUNT(*)
FROM (
    SELECT customer_id
    FROM payment
    GROUP BY customer_id
    HAVING SUM(amount) > 100
    ) c