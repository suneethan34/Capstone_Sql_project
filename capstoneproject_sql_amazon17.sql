
-- 17.Determine the city with the highest VAT percentage.
SELECT 
    city, MAX(Tax_5%) AS highest_vat_percentage
FROM
    amazon
GROUP BY city;

