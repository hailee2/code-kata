-- 코드를 입력하세요
SELECT member_id, 
       member_name,
       gender,
       substr(date_of_birth,1,10) as date_of_birth
from member_profile
where substr(date_of_birth,6,2) = '03' and tlno is not null and gender = 'W'
order by 1
      