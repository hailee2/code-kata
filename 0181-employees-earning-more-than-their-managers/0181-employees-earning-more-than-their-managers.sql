# Write your MySQL query statement below
SELECT t1.name as employee
FROM employee t1
JOIN employee t2
ON t1.managerId = t2.id
WHERE t1.salary > t2.salary