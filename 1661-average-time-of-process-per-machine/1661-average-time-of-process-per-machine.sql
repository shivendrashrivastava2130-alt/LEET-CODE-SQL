select e.machine_id ,round(avg(m.timestamp-e.timestamp),3) as processing_time
from Activity e 
join Activity m 
on e.machine_id=m.machine_id
and e.process_id=m.process_id
and e.activity_type="start" and m.activity_type='end'
group by e.machine_id
