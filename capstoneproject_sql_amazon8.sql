
-- 8.Which product line generated the highest revenue?
SELECT 
    product_line, SUM(total) AS total_revenue
FROM
    amazon
GROUP BY product_line
ORDER BY total_revenue DESC
LIMIT 1;
