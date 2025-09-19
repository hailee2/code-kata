-- 코드를 입력하세요
SELECT h.history_id,
       TRUNCATE(h.rental_days * c.daily_fee*(1 - COALESCE(p.discount_rate,0)*0.01),0) as fee
FROM car_rental_company_car c
JOIN (
    SELECT history_id, car_id, start_date, end_date,
           datediff(end_date, start_date) +1 as rental_days
    FROM car_rental_company_rental_history) h
ON c.car_id = h.car_id
LEFT JOIN car_rental_company_discount_plan p
ON c.car_type = p.car_type
AND (
    (h.rental_days BETWEEN 7 AND 29 AND p.duration_type = "7일 이상")
    OR (h.rental_days BETWEEN 30 AND 89 AND p.duration_type = "30일 이상")
    OR (h.rental_days >= 90 AND p.duration_type = "90일 이상")
)
WHERE c.car_type = "트럭"
ORDER BY fee desc, h.history_id desc