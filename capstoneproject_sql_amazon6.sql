
-- 6.How much revenue is generated each month?
SELECT 
    MONTHNAME(date) AS month, SUM(total) AS totatl_revenue
FROM
    amazon
GROUP BY month
ORDER BY month;
