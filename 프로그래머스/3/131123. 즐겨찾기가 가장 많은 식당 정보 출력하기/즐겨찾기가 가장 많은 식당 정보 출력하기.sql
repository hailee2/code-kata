-- 코드를 입력하세요
select food_type, rest_id, rest_name,favorites
from (SELECT food_type, rest_id, rest_name, favorites,row_number() over(partition by food_type order by favorites desc) as rn
FROM rest_info) t
where rn=1
order by food_type desc