-- 코드를 입력하세요
SELECT b.author_id, a.author_name, b.category, sum(b.price*s.sales)as sales
FROM book b
JOIN author a ON b.author_id = a.author_id
JOIN book_sales s ON b.book_id = s.book_id 
WHERE s.sales_date BETWEEN '2022-01-01' AND '2022-01-31'
GROUP BY b.category,b.author_id,a.author_name
ORDER BY a.author_id, b.category desc