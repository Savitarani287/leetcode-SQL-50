# Write your MySQL query statement below
select 
round(sum(next_login)/count(distinct(player_id)),2)as fraction
from 
(select 
player_id,
datediff(event_date,min(event_date) over( partition by player_id)) =1 as next_login
from Activity)as new_table