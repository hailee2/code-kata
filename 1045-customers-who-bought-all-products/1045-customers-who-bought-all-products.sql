# Write your MySQL query statement below
select customer_id 
from customer c 
left join product p 
on c.product_key = p.product_key 
group by customer_id 
having count(distinct c.product_key) = (select count(distinct product_key) from Product);