-- 코드를 입력하세요
SELECT year(o.sales_date) as year,
       month(o.sales_date) as month,
       count(distinct o.user_id) as purchased_users,
       ROUND(COUNT(DISTINCT o.user_id) * 1.0 / 
          (SELECT COUNT(*) FROM user_info WHERE YEAR(joined) = 2021), 1) AS purchased_ratio
FROM user_info u
JOIN online_sale o
ON u.user_id = o.user_id
WHERE year(u.joined) = '2021'
GROUP BY year(o.sales_date), month(o.sales_date)
ORDER BY year, month