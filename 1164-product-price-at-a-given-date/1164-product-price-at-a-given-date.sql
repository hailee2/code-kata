# Write your MySQL query statement below
SELECT
  p.product_id,
  IF(x.new_price IS NULL, 10, x.new_price) AS price
FROM (SELECT DISTINCT product_id FROM Products) p
LEFT JOIN (
  SELECT t1.product_id, t1.new_price
  FROM Products t1
  JOIN (
    SELECT product_id, MAX(change_date) AS latest_date
    FROM Products
    WHERE change_date <= '2019-08-16'
    GROUP BY product_id
  ) t2
  ON t1.product_id = t2.product_id
  AND t1.change_date = t2.latest_date
) x
ON p.product_id = x.product_id;
