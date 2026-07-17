# Write your MySQL query statement below
select a1.employee_id
from Employees a1
left join Employees a2 
on a2.employee_id=a1.manager_id
where a1.salary < 30000 AND a2.employee_id IS NULL AND a1.manager_id IS NOT NULL
ORDER BY employee_id;
