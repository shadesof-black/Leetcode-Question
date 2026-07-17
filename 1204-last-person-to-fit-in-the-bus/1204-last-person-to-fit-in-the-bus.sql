# Write your MySQL query statement below
SELECT person_name
FROM (
    SELECT 
        person_name,
        turn,
        SUM(weight) OVER (ORDER BY turn) AS t
    FROM Queue
) q
WHERE t <= 1000
ORDER BY t DESC
LIMIT 1;
