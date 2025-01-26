-- 15.Count the sales occurrences for each time of day on every weekday.

SELECT 
    DAYNAME(Date) AS weekday,
    CASE
        WHEN TIME(Time) BETWEEN '06:00:00' AND '12:00:00' THEN 'Morning'
        WHEN TIME(Time) BETWEEN '12:00:01' AND '18:00:00' THEN 'Afternoon'
        ELSE 'Evening'
    END AS time_of_day,
    COUNT(*) AS sales_count
FROM
    amazon
GROUP BY weekday , time_of_day
ORDER BY FIELD(weekday,
        'Monday',
        'Tuesday',
        'Wednesday',
        'Thursday',
        'Friday',
        'Saturday',
        'Sunday') , time_of_day;

