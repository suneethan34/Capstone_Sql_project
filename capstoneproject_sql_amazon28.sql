


-- 28.Determine the day of the week with the highest average ratings for each branch.
SELECT 
    branch,
    DAYNAME(date) AS day_of_week,
    AVG(rating) AS average_rating
FROM
    amazon
GROUP BY branch , DAYNAME(date)
ORDER BY branch , average_rating DESC;

