
-- 13.Which product line is most frequently associated with each gender?
SELECT 
    gender, product_line, COUNT(*) AS purchase_count
FROM
    amazon
GROUP BY gender ,product_line
ORDER BY gender , purchase_count DESC;


