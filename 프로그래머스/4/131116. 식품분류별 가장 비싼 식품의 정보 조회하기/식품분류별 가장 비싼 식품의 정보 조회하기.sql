-- 코드를 입력하세요
SELECT category,price as max_price, product_name
FROM (SELECT category,price,product_name,
         ROW_NUMBER() OVER(PARTITION BY category ORDER BY price desc) as rn
      FROM food_product)t
WHERE category in ('과자','국','김치','식용유') and rn = 1
order by price desc