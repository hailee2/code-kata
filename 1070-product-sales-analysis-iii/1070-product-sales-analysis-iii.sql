# Write your MySQL query statement below
select s.product_id, f.first_year, quantity,price
from sales s
JOIN (select product_id , min(year) as first_year
from sales
group by product_id) f
ON s.product_id = f.product_id AND s.year = f.first_year