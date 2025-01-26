

-- 26.Determine the time of day with the highest customer ratings for each branch.
SELECT 
    branch,
    HOUR(time) AS hour_of_day,
    AVG(rating) AS average_rating
FROM
    amazon
GROUP BY branch , HOUR(time)
ORDER BY branch , average_rating DESC;
