-- 코드를 입력하세요
SELECT ANIMAL_ID,
       NAME,
       substr(datetime,1,10) as '날짜'
from animal_ins
order by animal_id