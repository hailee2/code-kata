-- 코드를 입력하세요
SELECT r.car_id, 
       r.car_type, 
       TRUNCATE(30 * r.daily_fee * (1 - p.discount_rate * 0.01) , 0) as FEE
FROM car_rental_company_car r
JOIN car_rental_company_discount_plan p
ON r.car_type = p.car_type 
AND p.duration_type = "30일 이상"
WHERE r.car_type IN ('세단','SUV')
      AND NOT EXISTS (
        SELECT 1
        FROM car_rental_company_rental_history h
        WHERE h.car_id = r.car_id
        AND h.start_date <= '2022-11-30'
        AND h.end_date   >= '2022-11-01'
    )
    AND (30 * r.daily_fee * (1 - p.discount_rate * 0.01)) BETWEEN 500000 AND 1999999
ORDER BY FEE desc, r.car_type, r.car_id desc
