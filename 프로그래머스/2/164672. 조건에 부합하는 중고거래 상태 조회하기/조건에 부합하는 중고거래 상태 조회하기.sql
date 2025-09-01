-- 코드를 입력하세요
SELECT board_id,
       writer_id,
       title,
       price,
       CASE WHEN STATUS = 'DONE' then '거래완료'
            WHEN STATUS = 'SALE' then '판매중'
            WHEN STATUS = 'RESERVED' then '예약중'
            end as STATUS
FROM used_goods_board
WHERE created_date like '%2022-10-05%'
ORDER BY board_id desc