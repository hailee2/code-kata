-- 코드를 입력하세요
SELECT HISTORY_ID,
       CAR_ID,
       DATE_FORMAT(start_date, '%Y-%m-%d') AS START_DATE,
       DATE_FORMAT(end_date, '%Y-%m-%d') AS END_DATE,
       CASE WHEN DATEDIFF(end_date, start_date) + 1 >= 30 THEN '장기 대여'
            ELSE '단기 대여'
       END AS RENT_TYPE
FROM car_rental_company_rental_history
WHERE start_date >= '2022-09-01'
  AND start_date < '2022-10-01'
ORDER BY HISTORY_ID DESC;