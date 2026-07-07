with cte as 
           (  select p.product_id,sum(p.price*u.units) as qty ,
              sum(u.units) as tot 
              from Prices p 
              left join UnitsSold u on
              u.product_id=p.product_id
              and u.purchase_date between p.start_date and p.end_date
              group by p.product_id
           )

select product_id ,ifnull(round(qty/tot ,2),0)as average_price 
from cte 


           

