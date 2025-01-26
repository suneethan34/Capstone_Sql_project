-- 2.For each branch, what is the corresponding city?
SELECT 
    branch, city
FROM
    amazon
GROUP BY branch , city;

