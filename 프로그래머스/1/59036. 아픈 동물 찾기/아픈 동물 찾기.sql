-- 코드를 입력하세요
SELECT animal_id,
       name
from animal_ins
where intake_condition like '%sick%'
order by animal_id