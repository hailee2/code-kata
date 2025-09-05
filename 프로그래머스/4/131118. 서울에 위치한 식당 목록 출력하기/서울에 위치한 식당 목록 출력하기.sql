-- 코드를 입력하세요
SELECT i.rest_id,
       i.rest_name,
       i.food_type,
       i.favorites,
       i.address,
       ROUND (avg(review_score),2) as score
FROM rest_info i
JOIN rest_review r
ON i.rest_id = r.rest_id
WHERE i.address like '서울%'
GROUP BY i.rest_id
ORDER BY ROUND (avg(review_score),2) desc, i.favorites desc