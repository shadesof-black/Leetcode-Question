# Write your MySQL query statement below
select p1.machine_id, ROUND(AVG(p2.timestamp-p1.timestamp),3) AS processing_time
from Activity p1 
JOIN Activity p2 on p1.machine_id = p2.machine_id and p1.process_id = p2.process_id
where p1.activity_type = 'start' and p2.activity_type ='end'
GROUP BY p1.machine_id;
