-- 코드를 입력하세요
SELECT animal_type, count(animal_id) as count
from animal_ins
group by animal_type
ORDER BY
  CASE animal_type
    WHEN 'Cat' THEN 1
    WHEN 'Dog' THEN 2
  END