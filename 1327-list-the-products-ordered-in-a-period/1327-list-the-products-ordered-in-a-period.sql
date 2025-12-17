# Write your MySQL query statement below
SELECT p.product_name, t1.unit
FROM products p
JOIN
(SELECT product_id, sum(unit) as unit
FROM orders 
WHERE order_date >= '2020-02-01' and order_date <= '2020-02-29'
GROUP BY product_id
HAVING SUM(unit) >= 100) t1
ON p.product_id = t1.product_id