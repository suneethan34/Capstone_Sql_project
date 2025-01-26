-- 5.Which product line has the highest sales?
SELECT 
    product_line, SUM(total) AS total_sales
FROM
    amazon
GROUP BY product_line
ORDER BY total_sales DESC
LIMIT 1;

