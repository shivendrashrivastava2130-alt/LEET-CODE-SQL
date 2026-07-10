select user_id, max(time_stamp)  as last_stamp
from (select user_id ,time_stamp from Logins 
where year(time_stamp)=2020)t
group by user_id
