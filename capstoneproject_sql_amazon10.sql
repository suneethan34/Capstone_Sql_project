


-- 10.Which product line incurred the highest Value Added Tax?
SELECT 
    product_line, SUM(Tax_5%) AS total_vat
FROM
    amazon
GROUP BY product_line
ORDER BY total_vat DESC
LIMIT 1;
