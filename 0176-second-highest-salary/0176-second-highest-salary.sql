# Write your MySQL query statement below
SELECT
    (SELECT salary 
     FROM
        (SELECT salary, rank() over(order by salary desc) as rnk
         FROM(
              SELECT distinct salary
              FROM employee) t1
            ) t2
     WHERE rnk = 2)
as SecondHighestSalary
