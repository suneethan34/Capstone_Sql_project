
-- 7.In which month did the cost of goods sold reach its peak?
SELECT 
    MONTHNAME(date) AS month, SUM(cogs) AS total_cogs
FROM
    amazon
GROUP BY month
ORDER BY month DESC
LIMIT 1;
