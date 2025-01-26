
-- 25.Identify the time of day when customers provide the most ratings.
SELECT 
    HOUR(time) AS Hour_of_day, COUNT(rating) AS rating_count
FROM
    amazon
GROUP BY Hour_of_day
ORDER BY rating_count DESC
LIMIT 1;
