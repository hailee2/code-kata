-- 코드를 입력하세요
SELECT 
    MONTH(start_date) as MONTH,
    CAR_ID, count(*) as RECORDS
FROM car_rental_company_rental_history
WHERE date(start_date) between '2022-08-01' and '2022-10-31'
    AND CAR_ID IN (
      SELECT CAR_ID
      FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
      WHERE date(START_DATE) BETWEEN '2022-08-01' AND '2022-10-31'
      GROUP BY CAR_ID
      HAVING COUNT(*) >= 5
  )
GROUP BY MONTH(start_date), car_id
ORDER BY MONTH(start_date), car_id desc