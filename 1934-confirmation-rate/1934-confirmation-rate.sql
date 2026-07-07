with cte as (
select s.user_id ,
sum(case when c.action="confirmed" then 1 else 0 end) as accept_count,
count(c.action) as total
from signups s
left join Confirmations c on 
c.user_id=s.user_id
group by s.user_id
)

select user_id ,
round(ifnull(accept_count/total,0),2) as confirmation_rate 
from cte









