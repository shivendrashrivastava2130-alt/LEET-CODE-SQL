select round(count(distinct a2.player_id)/count(distinct a1.player_id),2) as fraction 
from 
(select player_id,min(event_date) as first_login 
from Activity 
group by player_id) a1
left join Activity a2
on a1.player_id=a2.player_id
and a2.event_date=a1.first_login + interval 1 day ;