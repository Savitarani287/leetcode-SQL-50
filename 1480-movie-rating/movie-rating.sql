# Write your MySQL query statement below
(select u.name as results
from users u
left join MovieRating r
on u.user_id = r.user_id
group by u.user_id 
order by  count(r.user_id) desc , u.name 
limit 1)
union  all
(select m.title as results
from Movies m
left join MovieRating r
on m.movie_id = r.movie_id
where extract(year_month from created_at) = 202002
group by m.movie_id
order by avg(r.rating) desc ,  m.title 
limit 1 )
