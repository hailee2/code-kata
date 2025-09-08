-- 코드를 입력하세요
select p.id, p.name,p.host_id
from places p
JOIN (SELECT *
FROM places
group by host_id
having count(*) >1) d
ON p.host_id = d.host_id
order by p.id