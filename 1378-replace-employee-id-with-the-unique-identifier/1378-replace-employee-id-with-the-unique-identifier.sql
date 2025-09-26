# Write your MySQL query statement below
SELECT COALESCE(u.unique_id,null) as unique_id,e.name
FROM employees e
LEFT JOIN employeeUNI u
ON e.id = u.id