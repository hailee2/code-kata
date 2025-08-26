-- 코드를 입력하세요
SELECT p.product_id,
       p.product_name,
       SUM(price*amount) AS total_sales
FROM food_product p
JOIN food_order o
ON p.product_id = o.product_id
WHERE o.produce_date BETWEEN '2022-05-01' AND '2022-05-31'
GROUP BY p.product_id, p.product_name
ORDER BY total_sales DESC, p.product_id 