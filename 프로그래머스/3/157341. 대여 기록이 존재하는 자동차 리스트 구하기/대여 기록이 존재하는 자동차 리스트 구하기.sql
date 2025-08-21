-- 코드를 입력하세요
SELECT distinct c.car_id
FROM car_rental_company_car c
     join car_rental_company_rental_history h
     on c.car_id = h.car_id
where c.car_type = "세단" and substr(h.start_date,6,2) = '10'
order by c.car_id desc