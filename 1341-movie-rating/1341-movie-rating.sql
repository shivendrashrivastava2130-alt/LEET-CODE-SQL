(select u.name as results from Users u 
join MovieRating m on u.user_id=m.user_id
group by u.name
order by count(*) desc,u.name asc limit 1)

union all

(select u.title from Movies u
join MovieRating r on 
r.movie_id=u.movie_id
WHERE r.created_at >= '2020-02-01'
  AND r.created_at < '2020-03-01'
group by u.title 
order by avg(r.rating) desc ,u.title asc limit 1);

