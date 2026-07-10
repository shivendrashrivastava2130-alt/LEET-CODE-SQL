with daily as (select visited_on,sum(amount) as amount 
              from Customer
              group by visited_on)

select visited_on,
       amount as amount,
       round(amount/7,2) as average_amount
from
(select visited_on,
        sum(amount) over(order by visited_on rows between 6 preceding and current row) as amount ,
        count(*) over(order by visited_on  rows between 6 preceding and current row ) as cnt 
        from daily 
         ) t
where cnt =7




































