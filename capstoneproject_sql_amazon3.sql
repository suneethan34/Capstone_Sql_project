
-- 3.What is the count of distinct product lines in the dataset?
SELECT 
    COUNT(DISTINCT product_line) AS dist_product_line
FROM
    amazon;
