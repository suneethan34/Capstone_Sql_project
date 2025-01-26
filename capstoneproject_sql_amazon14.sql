
-- 14.Calculate the average rating for each product line.
SELECT 
    product_line, AVG(rating) AS avg_rating
FROM
    amazon
GROUP BY product_line;
