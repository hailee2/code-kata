# Write your MySQL query statement below
SELECT e.employee_id, e.department_id
FROM employee e
JOIN (
SELECT employee_id, COUNT(*) as dept_count
FROM employee
GROUP BY employee_id
) t
ON e.employee_id = t.employee_id
WHERE (t.dept_count = 1) OR (t.dept_count > 1 AND e.primary_flag = 'Y')