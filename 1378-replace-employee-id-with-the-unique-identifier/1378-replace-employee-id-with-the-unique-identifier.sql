# Write your MySQL query statement below
select r.unique_id , e.name
from Employees e 
left join EmployeeUNI r
on e.id = r.id 