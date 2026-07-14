# Write your MySQL query statement below
select S.student_id , S.student_name, SUB.subject_name,
count(EX.student_id) as attended_exams
from Students S
cross join Subjects SUB
left join  Examinations  EX 
on S.student_id = EX.student_id and SUB.subject_name=EX.subject_name
group by S.student_id ,S.student_name, SUB.subject_name
order by S.student_id , SUB.subject_name
