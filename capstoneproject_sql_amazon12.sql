

-- 12.Identify the branch that exceeded the average number of products sold.
select branch ,total
from amazon where total>
(select avg(total) from amazon);

