
-- 24.Examine the distribution of genders within each branch.
SELECT 
    gender, branch, COUNT(*) AS gender_count
FROM
    amazon
GROUP BY branch , gender
ORDER BY branch , gender;

