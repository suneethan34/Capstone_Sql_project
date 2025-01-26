

-- 16.Identify the customer type contributing the highest revenue.
SELECT 
    customer_type, SUM(total) AS total_revenue
FROM
    amazon
GROUP BY customer_type
ORDER BY total_revenue DESC
LIMIT 1;

