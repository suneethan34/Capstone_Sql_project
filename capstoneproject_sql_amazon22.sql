
-- 22.Identify the customer type with the highest purchase frequency.
SELECT 
    customer_type, COUNT(*) AS purchase_frequency
FROM
    amazon
GROUP BY customer_type
ORDER BY purchase_frequency DESC
LIMIT 1;
