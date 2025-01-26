

-- 18.Identify the customer type with the highest VAT payments.
SELECT 
    customer_type, SUM(Tax_5%) AS total_vat_payment
FROM
    amazon
GROUP BY customer_type
ORDER BY total_vat_payment DESC
LIMIT 1;
