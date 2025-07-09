-- 코드를 입력하세요
SELECT count(distinct name) as count_name
from animal_ins
where not name = 'null'