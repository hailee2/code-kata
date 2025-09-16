-- 코드를 입력하세요
SELECT b.title, b.board_id, r.reply_id, r.writer_id,r.contents, substr(r.created_date,1,10)as created_date
FROM used_goods_board b
JOIN used_goods_reply r
ON b.board_id = r.board_id
WHERE b.created_date BETWEEN "2022-10-01" AND "2022-10-31"
ORDER BY r.created_date, b.title