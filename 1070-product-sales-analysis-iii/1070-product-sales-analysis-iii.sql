select s.product_id,
       s.year as first_year, 
       s.quantity,
       s.price 
from Sales s 
join (select product_id ,min(year) as first_year1 
     from Sales 
     group by product_id) fy 
on s.product_id=fy.product_id
and s.year=fy.first_year1
