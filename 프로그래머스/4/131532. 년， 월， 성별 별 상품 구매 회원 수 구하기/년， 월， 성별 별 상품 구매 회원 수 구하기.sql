-- 코드를 입력하세요
SELECT substr(sales_date,1,4)as YEAR, substr(sales_date,6,2)as MONTH, u.gender, count(distinct u.user_id)as users
FROM user_info u
JOIN online_sale s
ON u.user_id = s.user_id
WHERE u.gender is not null
GROUP BY month,gender
ORDER BY substr(sales_date,1,4),substr(sales_date,6,2),u.gender