
-- 11.For each product line, add a column indicating "Good" if its sales are above average, otherwise "Bad."
SELECT 
    product_line,
    Total,
    CASE
        WHEN
            Total > (SELECT 
                    AVG(Total)
                FROM
                    amazon)
        THEN
            'Good'
        ELSE 'Bad'
    END AS sales_status
FROM
    amazon;