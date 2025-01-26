


-- 27.Identify the day of the week with the highest average ratings.
SELECT 
    DAYNAME(date) AS day_of_week, AVG(rating) AS average_rating
FROM
    amazon
GROUP BY DAYNAME(date)
ORDER BY average_rating DESC
LIMIT 1;
