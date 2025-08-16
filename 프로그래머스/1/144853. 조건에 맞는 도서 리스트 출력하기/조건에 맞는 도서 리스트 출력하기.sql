-- 코드를 입력하세요
SELECT book_id,
       substr(published_date,1,10) as publcished_date
from book
where published_date like "%2021%" and category like "%인문%"
order by 2