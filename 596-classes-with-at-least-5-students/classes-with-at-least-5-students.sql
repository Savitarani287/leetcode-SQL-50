# Write your MySQL query statement below
select class
from
(select class,count(student) as cnt  from Courses  group by class)as new_table
where cnt>=5;