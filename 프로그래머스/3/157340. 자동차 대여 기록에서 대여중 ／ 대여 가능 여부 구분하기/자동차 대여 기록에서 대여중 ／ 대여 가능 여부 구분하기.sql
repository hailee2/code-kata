-- 코드를 입력하세요
SELECT car_id,
       CASE WHEN MAX(CASE WHEN start_date <= date('2022-10-16')
       AND end_date >= date('2022-10-16') then 1 else 0 end) =1
       THEN '대여중'
       ELSE '대여 가능'
       END AS AVAILABILITY
FROM car_rental_company_rental_history
GROUP BY car_id
ORDER BY car_id desc