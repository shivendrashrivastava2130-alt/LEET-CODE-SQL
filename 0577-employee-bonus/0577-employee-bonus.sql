select e.name,b.bonus from 
Employee e 
left join Bonus b on 
b.empID=e.empID
where b.bonus is null 
or b.bonus < 1000
