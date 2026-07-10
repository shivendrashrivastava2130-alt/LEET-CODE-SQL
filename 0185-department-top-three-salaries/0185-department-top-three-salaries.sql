with cte as (select d.name as Department ,e.name as Employee , e.salary as salary ,
             dense_rank() over(partition by d.id order by e.salary desc) as rnk 
             from Employee e 
             join Department d 
             on d.id=e.departmentId)

  select Department,Employee,salary from cte 
  where rnk<=3  
  order by salary desc   
