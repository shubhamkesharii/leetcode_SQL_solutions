# Write your MySQL query statement below
SELECT product_name,unit FROM Products JOIN (SELECT product_id,sum(unit) AS 'unit' 
FROM Orders
WHERE month(order_date) = 2 AND year(order_date) = 2020
GROUP BY product_id
HAVING sum(unit) >=100)T ON Products.product_id = T.product_id