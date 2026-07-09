with cte as ( select person_name,turn, 
            sum(weight) over(order by turn asc) as trn
            from Queue)
select person_name from cte 
where trn<=1000
order by turn desc
limit 1;
        
