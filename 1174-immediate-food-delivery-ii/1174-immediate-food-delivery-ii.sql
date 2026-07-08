with first_order as ( select customer_id,
                      min(order_date) as first 
                      from Delivery 
                      group by customer_id)

select round(avg(case when d.order_date=d.customer_pref_delivery_date then 1 else 0 end )*100 ,2)as immediate_percentage 
from first_order f 
join Delivery d on 
d.order_date=f.first
and f.customer_id=d.customer_id








