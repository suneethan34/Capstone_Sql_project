
-- 21.Which customer type occurs most frequently?
SELECT 
    customer_type, COUNT(*) AS frequency
FROM
    amazon
GROUP BY customer_type
ORDER BY frequency DESC
LIMIT 1;