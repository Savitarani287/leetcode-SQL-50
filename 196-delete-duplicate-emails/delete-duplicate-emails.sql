# Write your MySQL query statement below
delete from person
where id not in(
    select id from(
        select min(id) id from person
    group by email  
)new_table);








