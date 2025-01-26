-- 4.Which payment method occurs most frequently?
SELECT 
    payment, COUNT(*) AS frequency
FROM
    amazon
GROUP BY payment
ORDER BY frequency DESC
LIMIT 1;