# Write your MySQL query statement below
-- select q1.person_name
-- from Queue q1
-- inner join 
-- Queue q2 on q1.turn >= q2.turn
-- group by q1.turn
-- having sum(q2.Weight)<=1000
-- order by q1.turn desc  limit  1;

# Write your MySQL query statement below

SELECT person_name
FROM Queue
WHERE turn = (
    SELECT max(turn)
    FROM (
        SELECT turn, person_id, person_name, weight, SUM(weight) OVER (ORDER BY turn) AS total_weight
        FROM Queue
    ) main
    WHERE total_weight <= 1000 
)






