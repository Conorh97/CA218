-- Check total amount that each customer paid, order the result by
-- the total amount from highest to lowest.

SELECT amount 
FROM payments 
ORDER BY amount DESC;
