-- 코드를 입력하세요
SELECT animal_id,
       name,
       if(sex_upon_intake like '%Neutered%'OR sex_upon_intake LIKE '%Spayed%','O','X') as "중성화"
from animal_ins
order by animal_id