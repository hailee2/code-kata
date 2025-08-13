-- 코드를 입력하세요
SELECT order_id,
       product_id,
       substr(out_date,1,10) as out_date,
       case 
       when substr(out_date,1,10) is null then "출고미정" 
       when substr(out_date,1,10) <= '2022-05-01' then "출고완료"
       else "출고대기"
       end as "출고여부"
from food_order
order by 1