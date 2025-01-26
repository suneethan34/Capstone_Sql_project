

-- 23.Determine the predominant gender among customers.
SELECT 
    gender, COUNT(*) AS frequency
FROM
    amazon
GROUP BY gender
ORDER BY frequency DESC
LIMIT 1;
