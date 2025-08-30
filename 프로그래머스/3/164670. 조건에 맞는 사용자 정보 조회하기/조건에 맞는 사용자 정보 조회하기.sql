-- 코드를 입력하세요
SELECT u.user_id,
       u.nickname,
       concat(u.city,' ',u.street_address1,' ',u.street_address2) as "전체주소",
       concat(substring(u.tlno,1,3),'-',substring(u.tlno,4,4),'-',substring(u.tlno,8)) as "전화번호"
FROM used_goods_board b
JOIN used_goods_user u
ON b.writer_id = u.user_id
GROUP BY u.user_id,u.nickname,u.city,u.street_address1,u.street_address2,u.tlno
HAVING count(b.board_id)>2
ORDER BY u.user_id desc