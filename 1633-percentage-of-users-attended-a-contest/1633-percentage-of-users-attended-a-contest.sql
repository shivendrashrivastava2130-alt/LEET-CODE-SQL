with cte as (select contest_id,count(user_id) as attended 
            from Register 
            group by contest_id ) 

--  cte2 as (select count(*) as total from Users)
  
select contest_id,round( attended*100/(select count(*) from Users) ,2)as percentage 
from cte 
order by percentage desc,contest_id asc;

