# Write your MySQL query statement below
SELECT t.department, t.employee, t.salary
FROM (SELECT d.name as department,
       e.name as employee, 
       e.salary,
       DENSE_RANK() OVER (PARTITION BY e.departmentId ORDER BY e.salary DESC) as rnk_salary 
FROM employee e
JOIN department d
ON e.departmentId = d.id
) t
WHERE t.rnk_salary<=3