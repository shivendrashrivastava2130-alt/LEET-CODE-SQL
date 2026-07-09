with cte as (select num 
from Mynumbers 
group by num 
having count(*)=1)

select max(num) as num from cte