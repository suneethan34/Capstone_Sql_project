
-- 9.In which city was the highest revenue recorded?
SELECT 
    city, SUM(total) AS highest_revenue
FROM
    amazon
GROUP BY city
ORDER BY highest_revenue DESC
LIMIT 1;

