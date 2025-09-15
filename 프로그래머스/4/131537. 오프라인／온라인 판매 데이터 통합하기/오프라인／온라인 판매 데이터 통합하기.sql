-- 코드를 입력하세요
(SELECT substr(sales_date,1,10) as sales_date, product_id, user_id, sales_amount
FROM online_sale
WHERE sales_date BETWEEN "2022-03-01" AND "2022-03-31")
UNION ALL
(SELECT substr(sales_date,1,10) as sales_date, product_id, NULL as user_id, sales_amount
FROM offline_sale
WHERE sales_date BETWEEN "2022-03-01" AND "2022-03-31")
ORDER BY sales_date, product_id, user_id