

-- 20.What is the count of distinct payment methods in the dataset?
SELECT 
    COUNT(DISTINCT payment) AS distinct_payment_methods
FROM
    amazon;
