-- 코드를 입력하세요
select f.flavor
from first_half f
join
(select flavor, sum(total_order) as total_order
from july 
group by flavor) a
ON f.flavor = a.flavor
ORDER BY (f.total_order+ a.total_order) desc limit 3
